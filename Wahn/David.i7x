Version 1 of David by Wahn begins here.
[Version 1 - Put into its own file]

Section 1 - Events

Captured Demon is a situation.
The sarea of Captured Demon is "Red";
when play begins:
	add Captured Demon to badspots of guy;            [male soldier, demon brute]
	add Captured Demon to badspots of hellspawn;      [demon brute]

Instead of resolving a Captured Demon:
	say "     Moving through an alley in the seedier part of town, you hear voices from the smashed window of a nearby bar. Careful not to step on anything and make a sound, you slowly walk closer and listen.";
	say "     'The brute smashed our only working radio. Now we got the mission objective locked down, but can't call in the retrieval team. Anderson's dead and that claw-slash on Kowalski's leg doesn't look good.' You peek over the window-still and see a mid-sized bar, its interior devastated by a fight. In the midst of bullet-holed walls and smashed furniture, there is a demon brute slumped down on a chair, bound with leather straps and chains. Near him, there are four soldiers, one of them just being bandaged on the thigh.";
	say "     The apparent leader watches the wounded man being patched up, then says 'It can't be helped. No way a man supporting a wounded comrade can make it through the streets alone. I'll have to go with them. Private Jackson, guard the captive until the retrieval team arrives. If need be, give him more sedatives.' He nods to a young-looking soldier, who salutes and says 'Yes sir!' You don't want to get shot by stressed out soldiers, so you have to hurry down the alley a bit to hide behind a dumpster not to get spotted as they move out.";
	say "     [WaitLineBreak]";
	say "     After waiting some minutes so be sure they're gone, you go back to the window and look in. Now there's only that one soldier in there, looking from the demon to the entrance door and back again. He looks rather nice, slender but muscular and with a handsome face. While you're still wondering if you could perhaps go in and talk to him, the demon brute makes a snorting sound, startling the soldier and you as a slight movement runs through his bound body. Private Jackson raises his weapon and steps closer, poking the demon in the chest to check if he's still unconscious.";
	say "     ...which is exactly what the brute has been waiting for. With a metallic screech the chains holding him rip apart as he flexes his muscles, then grips the barrel of the rifle and bends it to a right angle. His other hand quickly grabs the young soldier around the throat and stops any attempt to escape.";
	say "     Chuckling in a deep gravelly voice, the demon says 'Did you really think it'd be that easy to capture a soldier of the infernal legion? You'll pay for your insolence!' and rips the soldier's uniform off his body. With an evil chuckle, the brutish demon uses his sharp nails to give him some shallow, bleeding scratches, then murmurs something you can't quite make out and there is a short purple flash between them. Carrying his captive to the bar, the creature then bends him over it and gives his ass a hard slap, leaving a reddening hand-print on the pale flesh of the young soldier's right bun. 'If you try running, I'll disembowel you. But feel free to struggle and scream - I like it.' the demon says, then grabs his massive erection and strokes it.";
	say "     [WaitLineBreak]";
	say "     Seeing the demon prepare to rape the young soldier, you wonder if you should step in and stop him. The safer option would be to just watch it happen, but can you just leave Private Jackson to his fate? ";
	if player consents:   [just watch]
		say "     The demon smacks his manhood against the human's ass several times, creating slapping noises and making him grunt in pain. Looking down at the reddened cheeks and the deeper red hand-print on them, the demon aims his cock at Private Jackson's virgin pucker and plunges it right in. His victim whimpers in pain as the infernal cock forces his asshole to open and the thick shaft of the demon's cock sinks inside his body. You watch the otherworldly beast fuck the poor man without restraint, slamming in and out and just getting more and more aroused as the soldier begs and struggles weakly to push him off.";
		say "     Then finally, the demon brute slams his whole shaft inside, roaring in satisfaction as the contents of his balls erupt into his human captive. He keeps pumping blast after blast of cum into the young man, pumping slowly in and out of his hole with squishy noises as cum starts to squirt out around his shaft from the overfilled ass. Pulling Private Jackson's head up by the hair, the demon licks his cheek slowly, then says 'Feel my infernal seed fill your innermost being, little man. You're mine now - now and forever!' With that, he pulls the soldier up against his chest, holding him against his body with his cock still inside the man. Then black-purple smoke starts forming around them both, obscuring them from sight. When it spreads out in the room and slowly blows away, there's nothing to be seen of the demon or his newest slave.";
	otherwise:            [fight]
		say "     Your decision to rush into the bar almost comes too late. The demon already has the tip of his cock poised at the soldier's virgin pucker as you throw the nearest item - a cracked beer glass - at his back to distract him. He turns with an annoyed grunt, growling 'Another mortal who wants to ride my shaft? Bring it on, weakling.'";
		now inasituation is true;
		challenge "Demon Brute";
		now inasituation is false;
		if fightoutcome >= 20 and fightoutcome <= 29:			[lost]
			say "     Having dealt with you, the demon turns back to Private Jackson, who's tried to crawl off in the meantime. He picks the man up by his neck, choking him a bit and runs a clawed hand down his side, leaving shallow but long lines bloody in his pale flesh. 'Don't try to flee again. You're taxing my patience.' With that, he throws his captive back on the bar, bent over and his rear sticking out at the right height.";
			say "     The demon smacks his manhood against the human's ass several times, creating slapping noises and making him grunt in pain. Looking down at the reddened cheeks and the deeper red hand-print on them, he aims his cock at Private Jackson's virgin pucker and plunges it right in. His victim whimpers in pain as the infernal cock forces his asshole to open and the thick shaft of the demon's cock sinks inside his body. You watch the otherworldly beast fuck the poor man without restraint, slamming in and out and just getting more and more aroused as the soldier begs and struggles weakly to push him off.";
			say "     Then finally, the demon brute slams his whole shaft inside, roaring in satisfaction as the contents of his balls erupt into his human captive. He keeps pumping blast after blast of cum into the young man, pumping slowly in and out of his hole with squishy noises as cum starts to squirt out around his shaft from the overfilled ass. Pulling Private Jackson's head up by the hair, the demon licks his cheek slowly, then says 'Feel my infernal seed fill your innermost being, little man. You're mine now - now and forever!' With that, he pulls the soldier up against his chest, holding him against his body with his cock still inside the man. Then black-purple smoke starts forming around them both, obscuring them from sight. When it spreads out in the room and slowly blows away, there's nothing to be seen of the demon or his newest slave.";
		otherwise if fightoutcome >= 30:			[fled]
			say "     Recognizing a lost fight, you just take your legs under your arms and run as fast as you can. You can only guess what happened to the young soldier you left behind with the demon brute. Nothing good, you're sure...";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:  [won]
			say "     After the demon vanishes, you take care of Private Jackson, who's still rather groggy from being choked and manhandled like that. You help him by tying the shreds of his shirt around his wounded chest as an improvised bandage and also to get his now ragged pants back on. With all the naked skin he's showing, the realization how handsome he is prods awake your libido, but since his thoughts are anywhere but at sex right now, you wish him the best as he moves out to rejoin his unit.";
			say "     [line break]";
			say "     Something tells you this might not be the last time you'll see this young man. Maybe you should go looking for the handsome [bold type]soldier[roman type] sometime... out in the city, as you doubt he'll be back in the red light district anytime soon.";
			Now Thankful Soldier is unresolved;
			increase score by 5;
	now Captured Demon is resolved;


Thankful Soldier is a situation. Thankful Soldier is resolved.  [meeting the guy from 'Captured Demon' again - if you saved him]
The sarea of Thankful Soldier is "Outside";
when play begins:
	add Thankful Soldier to badspots of guy;            [male soldier]
	
TSEventCounter is a number that varies.  TSEventCounter is normally 0.
LastTSEvent is a number that varies.  LastTSEvent is normally 555.

Instead of resolving a Thankful Soldier:
	if (LastTSEvent - turns < 4):
		say "     You walk through the alley where you last met David and check the surrounding area - no luck. Seems like your soldier-friend is patrolling or scouting somewhere else right now. Maybe you should try a bit later again...";
	otherwise:
		if TSEventCounter is 0: [first meeting]
			say "     Moving through the city, you run into a lone soldier patrolling an alley near a small military encampment. It's Private Jackson, the young soldier you saved from that demon brute in the red light district. He's got a slender but still muscular build and a nice-looking face with a boyish charm.";
			say "     At first raising his weapon in alarm, he then lowers it again as he recognizes you in turn. 'Hello there. You saved me from that hellish thing in the bar. Thanks a lot for that - sorry I didn't say anything then, but I was pretty groggy after that beating. I'm David, by the way.' He pulls his backpack off and digs around in it for a moment, then turns to you holding three MREs and a water bottle. 'Please accept these as thanks.'";
			say "     [line break]";
			say "     Do you graciously accept the supplies (Y) ...or would you rather take the handsome Private as your reward? (N) ";
			if player consents:   [accept supplies]
				say "     [line break]";
				say "     You take the items he offers you and stash them in your pack. 'Hope that'll help you a bit. Stay safe - help is coming, it's just a question of time till more troops arrive and the scientists figure out this whole mess.' He nods to you, then continues his patrol route. You memorize where the alley is in the city, hoping you can catch him on patrol again sometime later.";
				say "     Food x3, Water x1 obtained.";
				increase carried of food by 3;
				increase carried of water bottle by 1;
			otherwise:            [fuck the soldier]
				say "     Stepping closer to the good-looking young soldier, you pull him tight against your body and give him a deep kiss before he can react. The initial look of alarm in his eyes quickly fades as you make out with him, exploring his mouth with your tongue as you run a hand through his hair and goose his bubble butt with the other one.";
				say "     As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but he moans as you squeeze his ass and his bulge pressing against your body show that he's quite ready for some action. Not getting any relief except rushed masturbation in the weeks and months since the outbreak started, Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.";
				if (cocks of player > 0 and cunts of player > 0):
					say "     [line break]";
					say "     Being dual-gendered, which way do you want to enjoy your new soldier friend? (Y = Fuck his Ass, N = Take him in your Pussy) ";
					if player consents:   [fuck his ass]
						say "[DavidPatrolAnal]";
					otherwise:    [let him fuck your pussy]
						say "[DavidPatrolVaginal]";
				otherwise if(cocks of player > 0):
					say "[DavidPatrolAnal]";
				otherwise if(cunts of player > 0):
					say "[DavidPatrolVaginal]";
				otherwise:
					say "[DavidPatrolRubbing]";
				say "     [line break]";
				say "     For now, you leave your handsome soldier boy to gather up his clothes and continue with his patrol. Hopefully you can catch him here again on his next patrol...";
				now thirst of David is 1;
			wait for any key;
			increase score by 5;
			now LastTSEvent is turns;
			increase TSEventCounter by 1;
		otherwise if TSEventCounter > 3:   [all good things come to an end - he's ordered to Camp Bravo]
			say "     Moving through the city, you run into a lone soldier walking down a street. It's Private Jackson, the young soldier you saved from that demon brute in the red light district. He's got a slender but still muscular build and a nice-looking face with a boyish charm. Currently he's pretty loaded with equipment, a large backpack full and all kinds of stuff hanging on straps and his belt.";
			say "     As he recognizes you, he gives you a little wave and walks up to talk. He says [if thirst of David < 2]'Hello and goodbye I guess. I got new order to report to one of the larger beachhead camps in the city for some special duties, so I'm afraid we won't be seeing each other again for now.' You ask him if he knows what he's supposed to do there and he shrugs, saying that he just got ordered to report there.[otherwise] with a bit of a sad expression 'I got ordered to report to one of the larger beachhead camps in the city for some other duties. So I guess that's it for our little meetings in that alley... I'll miss you.' After pulling you in for a goodbye-kiss, he walks away, looking back after a while and waving, then continuing on his way.[end if]";
			now hp of David is 1;
			move David to Parade Ground;
			now Thankful Soldier is resolved;
		otherwise:           [meeting him in the alley to chat or fuck]
			say "     Moving through the city, you run into a lone soldier patrolling an alley near a small military encampment. It's Private Jackson, the young soldier you saved from that demon brute in the red light district. He's got a slender but still muscular build and a nice-looking face with a boyish charm.";
			say "     As he recognizes you in turn, he gives you a little wave and walks up to you after a last vigilant look up and down the alley. He says [if thirst of David is 0]'Hello again. It's nice to see you're okay. Sadly, I can't share any more supplies...'[otherwise if thirst of David is 1]'Hello. It's... nice to see you again,' his face getting a bit red in embarrassment as he remembers what you did with him last time.[otherwise if thirst of David > 1]'Hi there - I've missed you.'[end if]";
			say "     [line break]";
			say "     What now? Do you want to talk to him (Y), or rather have some hot and sexy action (N)?";
			if player consents:   [just talking]
				say "     You chat a bit with David about life before the nanite plague and now and what's going on in the city. Speaking to a regular human about these things calms your mind and strengthens your human self-image a bit. After a while, you say your goodbyes and he goes on walking his patrol. Maybe you'll see him again the next time he comes through here...";
				increase humanity of player by 10;
			otherwise:            [sex]
				if thirst of David is 0:
					say "     Stepping closer to the good-looking young soldier, you pull him tight against your body and give him a deep kiss before he can react. The initial look of alarm in his eyes quickly fades as you make out with him, exploring his mouth with your tongue as you run a hand through his hair and goose his bubble butt with the other one.";
					say "     As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but he moans as you squeeze his ass and his bulge pressing against your body show that he's quite ready for some action. Not getting any relief except rushed masturbation in the weeks and months since the outbreak started, Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.";
				otherwise:
					say "     Stepping closer to the good-looking young soldier, you pull him tight against your body and give him a deep kiss. [if thirst of David is 1]After a moment of hesitation, he replies in kind and you make out with each other, exploring each other's mouths with your tongues[otherwise if thirst of David > 1]He eagerly complies, hungrily making out with you and exploring your mouth with his tongue[end if]. Meanwhile, you run a hand through his hair and goose his bubble butt with the other one.";
					say "     As you come back up for air, he [if thirst of David is 1]stammers 'I... just can't resist. So ... good.', moaning as you squeeze his ass and feel his bulge pressing against your body. Not getting any relief except rushed masturbation in the weeks and months since the outbreak started, Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.[otherwise if thirst of David > 1]says 'I'm so horny right now. You're amazing...', moaning as you squeeze his ass and feel his bulge pressing against your body. Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.[end if]";
				if(cocks of player > 0 and cunts of player > 0):
					say "     [line break]";
					say "     Being dual-gendered, which way do you want to enjoy your soldier friend? (Y = Fuck his Ass, N = Take him in your Pussy) ";
					if player consents:   [fuck his ass]
						say "[DavidPatrolAnal]";
					otherwise:    [let him fuck your pussy]
						say "[DavidPatrolVaginal]";
				otherwise if(cocks of player > 0):
					say "[DavidPatrolAnal]";
				otherwise if(cunts of player > 0):
					say "[DavidPatrolVaginal]";
				otherwise:
					say "[DavidPatrolRubbing]";
				say "     [line break]";
				say "     For now, you leave your handsome soldier boy to gather up his clothes and continue with his patrol. Hopefully you can catch him here again in a little while...";
				wait for any key;
				if thirst of David < 5:
					increase thirst of David by 1;
			now LastTSEvent is turns;
			increase TSEventCounter by 1;

to say DavidPatrolAnal:
	if lust of David is 0: 								[anal virgin]
		say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you give him another quick kiss on the lips, then spin him around, your arms around his chest from behind and walk him over to the nearest wall of a building.";
		say "     [WaitLineBreak]";
		say "     With a moaned 'Stand like this.', you lift his arms up and put them against the wall, then pull his ass towards you a bit. You rub your rock-hard [cock of player] cock up and down between the round buns of his bubble butt, then bring its tip to the tight opening between them. Pushing forward with increasing pressure, David's pucker resists you for a moment, then opens up and allows your cockhead to slide into the tight embrace of his ass. It's virgin territory for sure you're exploring here - and from his lust-filled groans as you slowly slide deeper into him, you're being very well received.";
		say "     As you bottom out inside his ass, you give his cock a few strokes, then move your hands back to his hips. Holding on tightly, you start pulling out almost all the way and hammering your shaft back inside him in quick deep strokes, filling the alley with slapping noises as your hips meet his butt. His tightly gripping hole feels just amazing around your thrusting member, filling you with ecstasy as you very thoroughly take his virginity.";
		say "     Getting shafted like this soon drives your handsome Private over the edge, his cock spraying a huge load of cum all over the stones of the wall he's standing against. David's ass muscles quiver and flex with each shot of seed erupting from his cock, giving you all new sensations as you move in and out of him. Then it's your turn, and with one final deep thrust you push inside David all the way and fill his insides with spurt after spurt of warm seed.";
		say "     [WaitLineBreak]";
		say "     You keep standing like that for a moment, with your arms around his chest from behind and still connected through your dick in his ass. As both of you come down from the rush of sex and David's brain starts working again, he looks over his shoulder at you with a questioning expression. 'I like... this,' he says and you feel his asshole tighten for a second around your member. 'Does that mean I'm gay?' With a worried look he adds 'I got a girlfriend back home, you know.'";
		say "     After giving him a playful slap on his firm buttocks as you pull out, you calm him down a bit by telling that he just might be bisexual and that he should use the opportunity to try out the whole spectrum of possible partners. The girlfriend situation will surely work itself out once he knows what he really wants. Although judging from his load all over the wall, you're pretty certain you left a lasting impression on him, opening him up more man-on-man action...";
		now lust of David is 1;
	otherwise:             								[repeat assfucking]
		say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you give him another quick kiss on the lips, then spin him around, your arms around his chest from behind and walk him over to the nearest wall of a building.";
		say "     [WaitLineBreak]";
		say "     Knowing what's coming, he lifts his arms up and puts them against the wall, bending forward a bit and offering his ass. You rub your rock-hard [cock of player] cock up and down between the round buns of his bubble butt, then bring its tip to the tight opening between them. Pushing forward with increasing pressure, David's pucker resists you for a moment, then opens up and allows your cockhead to slide into the tight embrace of his ass. He's still tight as he was when you took his virginity and giving lust-filled groans as you slowly slide deeper into him.";
		say "     As you bottom out inside his ass, you give his cock a few strokes, then move your hands back to his hips. Holding on tightly, you start pulling out almost all the way and hammering your shaft back inside him in quick deep strokes, filling the alley with slapping noises as your hips meet his butt. His tightly gripping hole feels just amazing around your thrusting member, filling you with ecstasy as you give him a good fucking.";
		say "     Getting shafted like this soon drives your handsome Private over the edge, his cock spraying a huge load of cum all over the stones of the wall he's standing against. David's ass muscles quiver and flex with each shot of seed erupting from his cock, giving you all new sensations as you move in and out of him. Then it's your turn, and with one final deep thrust you push inside David all the way and fill his insides with spurt after spurt of warm seed.";
		say "     [WaitLineBreak]";
		say "     You keep standing like that for a moment, with your arms around his chest from behind and still connected through your dick in his ass. As both of you come down from the rush of sex, he says 'I still can't believe how good you feel inside me,' he says and you feel his asshole tighten for a second around your member. 'I guess I really am bi, like you said.' With a worried look he adds 'What will Ann say about that when I get back home?'";
		say "     After giving him a playful slap on his firm buttocks as you pull out, you calm him down a bit by telling that his girlfriend surely won't learn about you two once he goes back to her when this is all over. What happens in this city stays in the city. Unless of course you can make him fully yours to keep, you think to yourself...";

to say DavidPatrolVaginal:
	setmonster "human";
	choose row monster from the table of random critters;
	say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
	say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes and putting them down as an improvised blanket, you give him another quick kiss on the lips and lie down on it, pulling him with you by the hand so he ends up on top of you.";
	say "     [WaitLineBreak]";
	say "     It only takes a helping hand guiding his rod to your pussy lips for the young man's instincts to kick in and his hips plunge downward, thrusting his hard manhood deep into your vagina. He fucks you with smooth strokes, making you moan with the feelings as his shaft hits just the right spots inside you. You run your hands over his chest, feeling his muscles while your legs wrap around his hips to pull him even deeper with each of his thrusts. Soon he speeds up even more, groaning louder and louder as he gets closer to orgasm.";
	say "     Then he shouts 'I'm coming!' and you feel a shudder run through his body as the first blast of his human cum shoots deep inside your body. You pull him down on top of you, hugging him close and kissing him as his cock twitches again and again, filling you to the brink with his fertile seed.[fimpregchance]";
	say "     You lay there for a while, entwined and kissing, with his slowly softening cock still inside you. As both of you come down from the rush of sex and David's brain starts working again, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. Then a worried look comes over his face and he adds 'But... oh no, I just cheated on my girlfriend. What will she say when I get back home. I - you...'";
	say "     Pulling his mouth to yours for a quick kiss, you tell him to calm down and that his girlfriend surely won't learn about you two once he goes back to her when this is all over. What happens in this city stays in the city. Unless of course you can make him fully yours to keep, you think to yourself...";

to say DavidPatrolRubbing:
	say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the something more.";
	say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you give him another quick kiss on the lips, then start rubbing your naked body against his. Grasping his hard manhood in your hand, you jerk a few times up and down on it, then and stroke the sensitive skin of your flat crotch with its tip. Even though you don't have anything there as a neuter, it still gives you a warm and pleasant feeling to feel the warmth of his shaft against you and hear his lustful moans.";
	say "     You switch between grinding against David, fondling his body and making out with him, filling the alley with both of your moans and groans. Not being able to cum yourself, you could keep this up forever, but your horny soldier's urges all too soon have him gasping faster and faster as he gets closer to orgasm. Then it's time - his thick shaft pules in your hand as blasts of cum jet out of its head to splat all over your crotch and stomach.";
	say "     [WaitLineBreak]";
	say "     Gathering up some cum with your finger, you lick it off, then give your handsome Private a kiss, making him taste his own cum on your lips. You keep standing like that for a moment, your arms around his chest and slowly making out. As both of you come down from the rush of sex and David's brain starts working again, he says 'That felt amazing - but... what exactly are you?' with a nod to your genderless nether region. With a worried look he adds 'Anyways... maybe this was wrong. We didn't really have sex, but you made me cum. Feels like I'm cheating on my girlfriend Ann back home.'";
	say "     Stroking his cheek, you tell him to calm down and that his girlfriend surely won't learn about you two once he goes back to her when this is all over. What happens in this city stays in the city. Unless of course you can make him fully yours to keep, you think to yourself...";

Section 2 - NPC

[ David, the npc:                                                       ]
[                                                                       ]
[ thirst states of David - Relationship with the Player                 ]
[   0: had no sex of any kind with the player                           ]
[   1: had some sort of intimate contact with the player - once         ]
[   2: had some sort of intimate contact with the player - often        ]
[   5: the point at which he'll ask the player to be his girl/boyfriend ]
[  10: is the player's fuck-buddy                                       ]
[  20: player is his girl/boyfriend                                     ]
[                                                                       ]
[ lust states of David - Gay Sex Variable                               ]
[   0: anal virgin                                                      ]
[   1: got fucked in the ass                                            ]
[   2: got fucked in the ass + sucked player cock                       ]
[  51: de-virginized by Brutus                                          ]
[  51: de-virginized by Carl                                            ]
[                                                                       ]
[ libido states of David - Demon Brute Pet Interaction                  ]
[   0: hasn't seen the player with Brutus yet                           ]
[   1: got frightened as he saw evil Brutus, no special sex prepped     ]
[  50: talked to a 'cleansed' Brutus, noticed Brutus staring            ]
[  51: player asked Brutus about why he stares at David                 ]
[  52: Brutus removed the enslavement mark from David (hurting himself) ]
[  53: David thanked Brutus for helping him                             ]
[  54: David & Brutus had fun together                                  ]
[  55: had the after-sex talk with Brutus (not David)                   ]
[  56: had the after-sex talk with David (not Brutus)                   ]
[  57: had the after-sex talk with David and Brutus                     ]
[  89: revenge fuck option enabled when talking to him                  ]
[  90: fucked the demon, lost his fear                                  ]
[  99: player agreed to have the demon brute fuck him                   ]
[ 100: got fucked & enslaved by the demon brute                         ]
[                                                                       ]
[ Dexterity of David - Sven Interaction                                 ]
[   0: nothing yet                                                      ]
[   1: got blown by Sven                                                ]
[  99: player didn't give Sven the go-ahead to blow him                 ]
[                                                                       ]
[ hp states of David - Location                                         ]
[   0: on patrol                                                        ]
[   1: got called in to Camp Bravo                                      ]
[   2: met the player in Camp Bravo                                     ]
[   3: liaison to the player - in Camp Bravo                            ]
[   4: liaison to the player - in the Bunker                            ]
[ 100: demon brute pet's slave - in the amulet                          ]

David is a man.
The description of David is "     David Jackson is a young soldier, pretty friendly if a bit shy. He has a slender but still muscular build, a handsome face and short-cut brown hair. [if debugactive is 1][line break]DEBUG -> Dexterity: [Dexterity of David], HP: [hp of David], Libido: [libido of David], Lust: [lust of David], Thirst: [thirst of David] <- DEBUG[end if]";
The conversation of David is { "Oh, hello." };
lastfuck of David is usually 555.
The icon of David is Figure of David_icon.
DavidBunkerEntry is a number that varies.

The scent of David is "     David has a nice masculine human smell.";

Instead of fucking David:
	if(lastfuck of David - turns < 5):
		say "     David says 'I'd love to, but I'm still pretty worn out from the last time...'";
	otherwise:
		if David is in Parade Ground:
			say "     You walk up to David and tell him you want to 'talk' to him - alone. [if thirst of David < 2]He salutes and leads you to a nearby tent. Soon you're standing between several bunk beds, alone in the tent with the handsome soldier..[otherwise]He gives you a knowing wink and leads you to a nearby tent. Soon you're standing between several bunk beds, alone in the tent with the handsome soldier...[end if]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Suck David's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		if (lust of David > 0 and cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let David fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the young soldier breed you.";
		if (lust of David > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let David fuck your ass";
			now sortorder entry is 4;
			now description entry is "Let the young soldier fill your ass with his seed.";
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take David's ass";
			now sortorder entry is 5;
			now description entry is "Fill the young soldier's ass with your cock.";
		sort the table of fucking options in sortorder order;
		if (Dexterity of David is 2 and David is in bunker and Sven is in bunker):
			choose a blank row in table of fucking options;
			now title entry is "Threesome with Sven";
			now sortorder entry is 6;
			now description entry is "Let the young soldier fuck Sven's ass.";
		if (libido of David is 57 and David is in bunker and DBCaptureQuestVar is 7):
			choose a blank row in table of fucking options;
			now title entry is "Brutus & David Scene (David gives oral)";
			now sortorder entry is 7;
			now description entry is "Give them some time to have fun with each other. (David goes down on Brutus)";
		if (libido of David is 57 and David is in bunker and DBCaptureQuestVar is 7):
			choose a blank row in table of fucking options;
			now title entry is "Brutus & David Scene (BJ by Brutus)";
			now sortorder entry is 8;
			now description entry is "Give them some time to have fun with each other. (Brutus blows David)";
		if (libido of David is 57 and David is in bunker and DBCaptureQuestVar is 7):
			choose a blank row in table of fucking options;
			now title entry is "Brutus & David Scene (Brutus gets fucked)";
			now sortorder entry is 9;
			now description entry is "Give them some time to have fun with each other. (David fucks Brutus)";
		if (libido of David is 57 and David is in bunker and DBCaptureQuestVar is 7 and DemonBruteStatus < 2):
			choose a blank row in table of fucking options;
			now title entry is "Brutus & David Scene (David gets fucked)";
			now sortorder entry is 10;
			now description entry is "Give them some time to have fun with each other. (Brutus fucks David)";
		if (libido of David is 57 and David is in bunker and DBCaptureQuestVar is 7 and DemonBruteStatus < 2):
			choose a blank row in table of fucking options;
			now title entry is "Threesome with Brutus & David (DP Brutus)";
			now sortorder entry is 11;
			now description entry is "Fuck Brutus together with David.";			
		sort the table of fucking options in sortorder order;		
		while sextablerun is 0:
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck David's cock":
						say "[DavidSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[DavidSex2]";
					otherwise if (nam is "Let David fuck your pussy"):
						say "[DavidSex3]";
					otherwise if (nam is "Let David fuck your ass"):
						say "[DavidSex4]";
					otherwise if (nam is "Take David's ass"):
						say "[DavidSex5]";
					otherwise if (nam is "Threesome with Sven"):
						say "[DavidSex6]";
					otherwise if (nam is "Brutus & David Scene (David gives oral)"):
						say "[DavidSex7]";
					otherwise if (nam is "Brutus & David Scene (BJ by Brutus)"):
						say "[DavidSex8]";
					otherwise if (nam is "Brutus & David Scene (Brutus gets fucked)"):
						say "[DavidSex9]";
					otherwise if (nam is "Brutus & David Scene (David gets fucked)"):
						say "[DavidSex10]";
					otherwise if (nam is "Threesome with Brutus & David (DP Brutus)"):
						say "[DavidSex11]";
		if thirst of David < 5:
			increase thirst of David by 1;
		now lastfuck of David is turns;

instead of conversing David:
	if hp of David < 2:
		say "     Error! He shouldn't be talking yet - please report on the forum how you saw this.";
	if hp of David is 2:
		say "     David says 'I'm still waiting for my number to come up. Doesn't seem as frightening as before though - maybe it's the strange smell in the air here...'";
	otherwise if hp of David > 2:	
		if libido of David > 50 and libido of David < 80:  [talking about the cleansed Brutus included]
			say "     So what do you want? Just chat a bit [link](1)[as]1[end link], send him to the [if hp of David is 3]bunker[otherwise]camp[end if] [link](2)[as]2[end link], talk to him about Brutus [link](3)[as]3[end link], or not say anything after all [link](4)[as]4[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat, [link]2[end link] to send him to the [if hp of David is 3]bunker[otherwise]camp[end if] or [link]3[end link] to break off talking.";
			if calcnumber is 1:								[chat]
				if hp of David is 3: 						[in the camp]
					say "     David says 'As you can see, the sample gathering is still going well. It's unbelievable how much stamina Tiny Tim has. [if CampBravoWomenAllowed is 1]Several of the female soldiers got sent out as well by now, their bellies already swelling with minotaur calves.' [end if][if Adam is in Quartermaster's Tent]The quartermaster had a half-minotaur son too - he's in her tent helping her out.' [end if]";
				if hp of David is 4:						[in the bunker]
					if Sarahpups > 3:
						say "     David says 'Sarah's puppies keep trying to chew up my boots. They're sweet and all, but sometimes they get on my nerves. I've been going up into the library to get some peace and quiet and read[if Fang is in the Grey Abbey Library]. Of course, there your wolf keeps staring at me like he wants to mount me[end if].'";
					otherwise:
						say "     David says 'Pretty quiet down here in the bunker. I've been going up into the library to grab a book or two to read[if Fang is in the Grey Abbey Library]. And your wolf kept looking at me all the time like he wanted to mount me[end if].'";
			otherwise if calcnumber is 2:			[send him to the bunker/camp bravo]
				if hp of David is 3:						[in the camp]
					say "     David gives you a salute and says [if thirst of David is 20]'See you there, baby.' [otherwise]'As you wish, sir.' [end if]before going to collect his clothes and equipment.";
					if DavidBunkerEntry is 0:
						now DavidBunkerEntry is turns;
					move David to Bunker;
					now hp of David is 4;
				otherwise if hp of David is 4:	[in the bunker]
					say "     David gives you a salute and says [if thirst of David is 20]'See you there, baby.' [otherwise]'As you wish, sir.' [end if]before going to collect his clothes and equipment.";
					move David to Parade Ground;
					now hp of David is 3;
			otherwise if calcnumber is 3:
				if libido of David is 51:
					say "     Bringing up the topic of Brutus, you explain that your demon companion thinks that the demon who attacked him did something, possibly leaving what Brutus called a 'seal of enslavement'. Continuing with the offer by Brutus to have a look for it, you see David become rather uncomfortable as he imagines stripping before the demon. Still, he might be in real danger from it, if he actually has the seal on him and it draws other demons like it seems to be affecting Brutus. You do your best to convince David to agree to Brutus examining him, and...";
					say "     [line break]";
					let bonus be (( the Charisma of the player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] in a Charisma-Check.";
					increase diceroll by bonus;
					if diceroll is greater than 12:
						say "     ...manage to convince David to do it.";
						say "     [line break]";
						if DemonBruteStatus is 2: [female]
							say "     [if hp of David is 3]After moving over to an empty tent a bit out of the way from the parade ground,[otherwise if hp of David is 4]After moving to the far corner of the bunker,[end if] you give the young soldier a squeeze on the shoulder and an encouraging nod. With a look up at the demon waiting besides you, and another at Brutus (again) moist and swollen pussy, David gives himself a small shake, then pulls his shirt over his head and strips down. As the young man slides the last bit of fabric off and stands completely naked before you. He trembles uncontrollably as Brutus steps up to him. Brutus looks down on the naked human, then carefully puts a hand on David's shoulder. 'I'm... sorry about what was done to you. And that I make you feel like this.' David looks up, meeting Brutus eyes, and after a moment you see him slowly relax a bit as he sees the concern and apology in the demon's large, slitted pupils.";
						otherwise:		[male+herm]
							say "     [if hp of David is 3]After moving over to an empty tent a bit out of the way from the parade ground,[otherwise if hp of David is 4]After moving to the far corner of the bunker,[end if] you give the young soldier a squeeze on the shoulder and an encouraging nod. With a look up at the demon waiting besides you, and another at Brutus (again) hardening cock, David gives himself a small shake, then pulls his shirt over his head and strips down. As the young man slides the last bit of fabric off and stands completely naked before you. He trembles uncontrollably as Brutus steps up to him. Brutus looks down on the naked human, then carefully puts a hand on David's shoulder. 'I'm... sorry about what was done to you. And that I make you feel like this.' David looks up, meeting Brutus eyes, and after a moment you see him slowly relax a bit as he sees the concern and apology in the demon's large, slitted pupils.";
						say "     [WaitLineBreak]";
						say "     Slowly stepping around David, Brutus looks closely at him, lightly touching the scars the other demon left. Then he has the young man raise his right arm, and brushes his clawed fingers over a bit of scar tissue there. 'This is it - the seal. This will make you amplify your fear, almost paralyze you with it, while at the same time craving serving, being degraded, everything like that. You would follow your master everywhere, even to hell.'";
						say "     Concentrating, murmuring a chain words that you couldn't even pronounce while holding his hand in place over David, Brutus draws some purple smoke out of the young soldier. It coalesces into a faintly glowing, eye-twisting rune in the air above David's skin. You notice that there seems to be quite a bit of effort involved - judging from the beads of sweat forming on Brutus skin and dripping off the demon's brow. In an earnest tone, he says 'I'm sorry for all the innocents I too bound like this. You, at least, will be free.' then slashes his claws through the glowing symbol.";
						say "     [WaitLineBreak]";
						say "     With a loud crack of power, Brutus is thrown several feet backwards, where he crumples to the ground. The smell of burned flesh rises in the air. For a second of shocked silence, no one moves - not you, and not David, who stands where he was, not affected or hurt at all by what happened. Then both of you rush forward to kneel besides the fallen demon brute. Thankfully, he's okay - mostly. With a groan, Brutus starts moving again and opens his eyes. He lifts his head a bit so he can look at his hand as he raises it with a pained hiss, grunting at the view of blistered, burned skin. 'Mh - it will heal.' he says, his head slumping back as he takes a deep breath.";
						say "     Next, Brutus eyes focus on David, mostly on his face but wandering down to gaze at the young man's naked body too. 'It is done. You should be  free. Do you still fear me, human?' David looks down at the demon's prone form, meeting his eyes for a moment before replying 'No', a thoughtful expression on his face. Brutus lips form what can be called a smile, even if it looks rather frightening with all the teeth it shows. He turns his head to you, not quite suppressing a pained wince as he tries lowering his hand to rest on the ground at the same time. 'Master, may I rest?' Not wanting to see your companion suffer any longer, you immediately intone the magic words to send him back into the amulet.";
						if companion of player is demon brute:
							now companion of player is nullpet;
						now libido of David is 52;
					otherwise:
						say "     ...get an answer of 'Sorry, I just can't. Be close to one of those things...' David shudders.";
				otherwise if libido of David is 52:	[Brutus helped David, got hurt - first meeting after]
					if companion of player is demon brute:		[is the active pet]
						say "     David inquires how Brutus is now and is visibly relieved when the demon shows him his fully healed hand. Turning into smoke and back regularly means that he has lots of practice in reassembling himself after all. David nods, then falls silent for a moment, thinking. He pulls you aside out of earshot of your demon companion before asking 'Did you order him to do it? Did you... know it would hurt him?' Both of those questions you truthfully say no to, recounting Brutus shameful admission of certain... urges, then him pleading to look at David. 'So it was all him? That's... quite something. For a demon.' He rubs his side where the demonic seal once was hidden, biting his lip before he continues. 'Could I... talk to him sometime?'";
						say "     [WaitLineBreak]";
						say "     Why wait - you call Brutus over. David walks up to him, putting a hand on his muscled arm. 'I wanted to thank you again for dealing with that evil symbol. It was... unexpected, for you to take such a risk for me.' Then he holds out his hand to Brutus, offering it to him. 'So... friends?' The demon looks down at him nonplussed for a second as he tries to come up with a response to a topic that hasn't been part of his life for eons - then he exuberantly shakes the smaller human's hand and pulls him into an embrace.";
					otherwise:
						say "     As you bring up Brutus again, David inquires how he is now and is visibly relieved when you tell him he came out alright. Turning into smoke and back regularly means that he has lots of practice in reassembling himself after all. David nods, then falls silent for a moment, thinking, before asking 'Did you order him to do it? Did you... know it would hurt him?' Both of those questions you truthfully say no to, recounting Brutus shameful admission of certain... urges, then him pleading to look at David. 'So it was all him? That's... quite something. For a demon.' He rubs his side where the demonic seal once was hidden, biting his lip before he continues. 'Could I... talk to him sometime?'";
						say "     [WaitLineBreak]";
						say "     Why wait - you murmur the magic words to summon Brutus, making him appear from a cloud of purple smoke. The demon bows his head to you, saying 'Master', then turns to the soldier besides you and says 'Hello, David'. David walks up to him, putting a hand on his muscled arm. 'I wanted to thank you again for dealing with that evil symbol. It was... unexpected, for you to take such a risk for me.' Then he holds out his hand to Brutus, offering it to him. 'So... friends?' The demon looks down at him nonplussed for a second as he tries to come up with a response to a topic that hasn't been part of his life for eons -then he exuberantly shakes the smaller human's hand and pulls him into an embrace.";
					if DemonBruteStatus is 2: [female]
						say "     They stay in that tight hug for a moment, David pressed against Brutus chest, his arms not even close long enough to reach around the demon's wide chest. Then suddenly, Brutus clears his throat, his face taking on an interesting shade of embarrassed purple as he lets the young soldier in his arms go. As David steps away, you see the pussy in a quite aroused state, its lips swollen, a wet spot on David's clothing where he must have been pressed right against it. With you standing right next to them, both the soldier and the demon seem to come to the decision to ignore the last bit at the same time, resulting in a somewhat awkward 'See ya.' and 'Sure, friend.'";
					otherwise:   [male+herm]	
						say "     They stay in that tight hug for a moment, David pressed against Brutus chest, his arms not even close long enough to reach around the demon's wide chest. Then suddenly, Brutus clears his throat, his face taking on an interesting shade of embarrassed purple as he lets the young soldier in his arms go. As David steps away, you see the demon's cock in a quite aroused state, hanging where it must have pressed right against David. With you standing right next to them, both the soldier and the demon seem to come to the decision to ignore the last bit at the same time, resulting in a somewhat awkward 'See ya.' and 'Sure, friend.'";
					now libido of David is 53;
				otherwise if libido of David is 53:   [talking after they've become friends]
					say "     As you bring your demon companion up, David says 'I still can't quite believe that Brutus is so... nice. No, that's the wrong word. Normal. After seeing that big beast in the bar you had to save me from, I'd never have believed one of them could be like a normal guy. Ever.' He rubs the claw-marks on his side, then shakes off the memory again, continuing with 'Now Brutus is a friend, and couldn't be more different than that other demon. Well - except his strength. Awesome muscles on him. He really had me tight with that hug, and right against his... er' David's face turns a bit red as he stops talking, then quickly continues with 'Anyways, we're both lucky you came along when you did. Saving me and saving him, from himself.'";
					say "     [line break]";
					say "     Despite David's attempt of changing the topic, it seems pretty obvious to you that there's some... interest for each other between your two friends. The thought comes up from somewhere inside your head that it might be a good idea to just get the two of them alone for a while and see what develops. Do you want to follow it?";
					if player consents:  [arrange for them to be alone together]
						say "     [line break]";
						say "     Your decision made, you mull over how to arrange things for a moment, then turn back to your soldier friend and suggest that he check the contents of the piles of crates stacked up in a storeroom at the back of the library. In all likelihood just books, but since there was a tiny store at the entrance, selling various small stuff, there might just be something interesting there. 'Good idea' David says with a nod, then starts out towards the stairs up to the library.";
						say "     Before he can make more than two steps, you continue to say that he should take Brutus along, to help with carrying stuff and so on. The young soldier turns, his eyes immediately seeking out your demon companion's muscular chest and arms, then dropping lower to pass over his... other endowments. His cheeks slightly red as he tears his eyes away and looks back to you, David says 'Err... of course.' Then the soldier and demon walk off together, on their way to the library storeroom.";
						say "     [WaitLineBreak]";
						say "     You're certainly curious what will come of this. Maybe you should follow them unobtrusively and have a look (Y) - or do you want to give them real privacy to deal with their issues after all (N)?";
						if player consents:  [follow them]
							say "     [line break]";
							say "     Waiting a few minutes to give them enough time to get where they are going, you then make your way to the stairs and walk in the direction of the storeroom when you get up into the library. As you silently walk along the hallway towards its open door, you can hear voices from within. David says '...and some more books. Could you please move these two crates over to that corner. We need them out of the way.'";
							say "     Then you're at the door and carefully peek inside the room. There are quite a few crates, large and small, in it, and in the midst of those stand David and Brutus. As you watch, the demon brute puts the lid of a large wooden crate that he was holding back on it, then bends to effortlessly pick up the heavy crate. From the looks of it and the pallet it stood on, no human could have moved it without a pallet jack. Impressed by that feat of superhuman strength, David can't suppress a 'Whoa' as he watches Brutus carry the heavy load and set it down where it was supposed to go, followed by the second crate. Grinning widely as he walks back, Brutus comes to stand before the young man, flexing his chest and arms demonstratively. David reaches out to run his fingers over Brutus chest, then stops himself, clearing his throat as he says 'Lets check out the next crate.'";
							say "     [WaitLineBreak]";
							say "     As the two of them continue to open and move aside box after heavy box of books, you overhear them chatting a bit about this and that and observe David slowly losing his reflexive inhibition at watching Brutus body - all of his body. The demon just eats up the admiration for his physique, often flexing and stretching to show off, grinning happily when David compliments him.";
							say "     Finishing with the first row of pallets and the crates on them, they come to a pallet laden with a bit smaller carton boxes. 'This could be something' David says, pulling one of the top ones off and setting it on the ground with a thump. He leans over it, opening up its lid, then grumbles 'Oh great, pencils.' Brutus doesn't react to the disappointing contents of the box, his whole attention riveted to the curve of David's ass, looking very nice in the bent over young soldier's pants. With a lustful grunt, the aroused demon steps forward, his purple dick having quickly reached its full hardness. Putting his clawed hands on David's body, he cups the cheeks of the young man's ass and gives them a squeeze. 'Oh? Ooh..' David says breathlessly as he stands up again and turns, looking at Brutus chest, then quickly down to his crotch, then up into his azure blue eyes. After just a moment more of hesitation, the floodgates break, with the young soldier being pulled into a tight embrace against the demon's chest, eagerly meeting his lips as they start making out. In between the hungry kisses, moans fill the storeroom, coupled with pleased rumbles out of Brutus chest.";
							say "     [WaitLineBreak]";
							say "     Then, as David gets lowered back to the ground, Brutus says in his deep voice 'I want you - now!', his hands moving to pull off David's shirt, accidentally tearing it to shreds in his haste. With eager, hurried movements, the young soldier kicks off his boots, almost falls over as he stands on one leg, then the other, to pull off and throw aside his socks and finally manages to undo his belt and pants, letting them drop to the ground. His boxer briefs end up cleanly sliced off his body by one of Brutus sharp claws, leaving David standing in the buff before the equally naked Brutus.";
							if DemonBruteStatus is 0 or DemonBruteStatus is 1: [male+herm]
								say "     Leaning forward to lick his forked tongue over the young soldier's chest, then along his neck, Brutus gives a lust-filled grunt, the veins on his hard shaft throbbing in anticipation. He picks up David, one hand cupping his ass, the other guiding the human's head to his own so they can kiss, then carries him over to a crate that's hip-height for himself and covered in some soft plastic wrap. As he lowers David onto it softly, the demon says 'I wanted you since I first saw you - and now that you're my friend, I want you even more.' His large hand strokes over David's chest, stops to jerk the man's cock a few times before moving even lower, rubbing over his butthole, pulling a breathless pant from the soldier.";
								say "     [WaitLineBreak]";
								if lust of David is 0:  [anal virgin]
									say "     David moans 'I - I haven't had anyone... go there before', still somewhat hesitant even though deeply in the grasp of his own lust. With surprising gentleness, Brutus replies 'Don't worry my friend, I'll go slow, at first. Make it good.' then leans forward to kiss David on the lips before crouching down and bringing his tongue to lick the man's buttcheeks. Then he moves it along David's crack, playing over his pucker several times before pushing it inside, probing and licking him. After several minutes of this during which David's hole is carefully teased and spread, lubed with Brutus spit as David moans and writhes in pleasure, your demon companion stands up again, now bringing his hard shaft up against David with a guiding hand. Looking down with clear concern for the human, Brutus caresses his chest again, then says 'Tell me how fast I can go, ok?' and gets a nod from the lying human.";
									say "     After nudging the tip of his shaft against David's pucker several times to prepare him for what's coming, Brutus presses in, giving a deep grunt of pleasure as his head pops into the soldier's body. David's reaction is a short, pained gasp, as he loses his virginity to a very large male indeed and Brutus stops immediately, holding still inside him. After a few deep breaths, David pants 'Keep going', and the demon brute takes up sinking his manhood into him slowly again, bit by bit spreading the freshly deflowered human's passage around his shaft. At some point, the pleasurable feelings of having the bumps on Brutus cock rub his insides outweigh the discomfort and David's utterances turn from gasps and pants to moans, coupled with demands to take him deeper. Finally, the demon bottoms out inside him and leans in for another long kiss.";
									now lust of David is 51;  [de-virginized by Brutus]
								otherwise:
									say "     David moans 'I'm still a bit new to this, never did it with men before... [if lust of David < 50]you know, your master[otherwise]you know, getting here[end if]', still somewhat hesitant even though deeply in the grasp of his own lust. With surprising gentleness, Brutus replies 'Don't worry my friend, I'll go slow, at first. Make it good.' then leans forward to kiss David on the lips before crouching down and bringing his tongue to lick the man's buttcheeks. Then he moves it along David's crack, playing over his pucker several times before pushing it inside, probing and licking him. After several minutes of this during which David's hole is carefully teased and spread, lubed with Brutus spit as David moans and writhes in pleasure, your demon companion stands up again, now bringing his hard shaft up against David with a guiding hand. Looking down with clear concern for the human, Brutus caresses his chest again, then says 'Tell me how fast I can go, ok?' and gets a nod from the lying human.";
									say "     After nudging the tip of his shaft against David's pucker several times to prepare him for what's coming, Brutus presses in, giving a deep grunt of pleasure as his head pops into the soldier's body. Thankfully being prepared to taking a dick through your own intimate encounters with him as well as Brutus oral attention, David is relaxed about taking him, reacting only with a short gasp, then says 'I'm okay, keep going.' After a few moment of hesitation, the demon brute takes up sinking his manhood into him slowly again, bit by bit spreading the human's passage around his shaft. David pants and moans in lust, and after a while even calls out for Brutus to go faster, deeper. Finally, the demon bottoms out inside him and leans in for another long kiss.";
								say "     [WaitLineBreak]";
								say "     Raising his upper body back up, the horny demon puts his hands on David's shoulders to hold him from sliding back on his padded crate, then slowly pulls out of him before thrusting back in with a lusty grunt, his massive balls hitting David's ass with a meaty slap. He goes slow at first, then speeds up bit by bit as the young soldier's inner muscles are stretched out and get used to the thick invading member moving in and out of David's body. Before long, their loud moans and gasps are joined by scraping sounds as the crate David is lying on gets shifted further and further back when Brutus harder thrusts hit it. Which means that you can relax your self-control finally, no longer having to suppress your own noises with all the racket they're making. Having been thoroughly turned on by spying on your friend's coupling, you bring your hand to your crotch, [if cocks of player > 0]stroking your manhood[otherwise]stroking yourself[end if] in rhythm with Brutus thrusts.";
								say "     The hot sex between the two very different partners continues for some more time, with the moans, pants and slapping noises of Brutus balls against David's ass getting ever faster and louder. Their coupling builds up to an impressive - and pretty noisy - climax. David is the first to go, shouting 'Oooh fuck... oh, oh... god... I'm gonna cummmMM...' as his hard cock pulses, shooting long streaks of cum over his chest and even hitting him in the face. With the human's inner muscles gripping him tightly, flexing around Brutus shaft as David rides out his orgasm, it doesn't take much longer for the demon to join him too. With a long and very satisfied grunt, Brutus slams into David one last time, bottoming out as he unloads a veritable flood of cum into him. As he pumps more and more seed into David, the human's belly bulges slightly, as if he was in the early stages of pregnancy, with even more cum squirting around his thick shaft and running down over the crate. Eager to join the two of them in their satisfaction, you speed up your own efforts, only moments later [if cocks of player > 0]shooting a load all over the wall at the storeroom's entrance[otherwise if cunts of player > 0]squirting femcum on the floor to form a small wet patch[otherwise]feeling a pleasant tingle fill your whole body[end if].";
								say "     [WaitLineBreak]";
								say "     Picking up the exhausted human still impaled on his cock, Brutus holds David against his chest as he himself staggers a few steps to another  crate and sits on it. Stroking the naked soldier's back slowly and affectionately, he rumbles 'I love fucking you. And even just holding you. Best friend ever.' David raises his head from where it leaned against Brutus broad chest, reaching up to caress the demon's cheek. 'I like you too, big guy. A whole lot.' He chuckles, saying 'If someone had told me six months ago I'd be doing... this' *he rocks back on the demon's slowly softening shaft in his ass* 'I'd have told them they were bonkers. Crazy, how times change.'";
								say "     [line break]";
								say "     Looks like they'll stay like that for a while yet, just holding each other and being close together, so you make your exit from the scene  before they might spot you after all. Moving back down into the bunker, you busy yourself with some work so it doesn't see, that you were waiting on them. Some time later, David and Brutus also come back down from above. With it having been ripped up, the young man is now shirtless and his hair is a bit dishevelled, while the large demon following him has a pretty self-satisfied grin on his face. As the two of them walk up to you, David says 'Just a lot of books, writing supplies and other useless crap, sorry. We moved them to block the back door though, that should help a bit at least to keep the building safer.' Noticing you looking at his bare chest, David's cheeks get a slight tinge of redness and he quickly says 'I caught my shirt on a crate's splintered edge and ripped it. That's all. Nothing else.' He quickly moves over to his bed, grabbing a new shirt to put on.";
							otherwise:  [female]
								say "     <Sex scene with David + cuntboy Brutus here>";
						otherwise:		[give them privacy]
							say "     [line break]";
							say "     Nah, you decide to let them deal with what they'll do in private, without you following them around and snooping in. Though with your curiosity still burning, almost making you go back on your choice, you start various time-consuming tasks in the bunker to distract yourself.";
							say "     [line break]";
							say "     Quite a while later, David and Brutus come back down from above. Interestingly, the young man is now shirtless and his hair a bit dishevelled, while the large demon following him has a pretty self-satisfied grin on his face. As the two of them walk up to you, David says 'Just a lot of books, writing supplies and other useless crap, sorry. We moved them to block the back door though, that should help a bit at least to keep the building safer.' Noticing you looking at his bare chest, David's cheeks get a slight tinge of redness and he quickly says 'I caught my shirt on a crate's splintered edge and ripped it. That's all. Nothing else.' He quickly moves over to his bed, grabbing a new shirt to put on.";
						now libido of David is 54;
					otherwise:
						say "     [line break]";
						say "     Maybe it's not such a great idea after all. David might not like you arranging things, manipulating him and Brutus...";
				otherwise if libido of David is 54 or libido of David is 55:   [talking after they had sex]
					say "     As you bring your demon companion up, David gets a bit red in the face then hastily says 'Err - he was a great help in the storeroom. Too bad we didn't find anything usef-' Stopping himself, the handsome soldier bites his lip for a second, then bursts out 'Ah, what the hell - I'll just admit it - we had sex with each other. And it was awesome! Brutus is a really great guy - so big and strong, but nevertheless so gentle when it counts, and so nice even though he's a demon and...' Then suddenly his stream of words abates and he really takes in your knowing expression throughout all this in for the first time. 'Wait - why are you grinning like that? Did you... know?' As the light of realization goes on in his eyes, David continues 'You arranged it, didn't you? Thank you! Thank you for helping me get over the... demon thing ...and letting me get to know him.' He throws his arms around you and gives you a hug, just holding on to you for a while and giving a happy sigh.";
					if libido of David is 55:   [only talked with Brutus]
						now libido of David is 57;  [both talks done]
					otherwise:
						now libido of David is 56;  [only talked with David]
				otherwise if libido of David is 56 or libido of David is 57:   [after having talked with David about him and Brutus having sex]
					say "     As you bring your demon companion up, David gets dreamy look in his eyes for a moment, then gives a happy little sigh and focuses back on you. 'I can't believe how much I care about Brutus. I know he was a demon but he's so nice and... gentle when he wants to be. And that body is hot - nice and tall, with those muscles and... you know.' *he does a little wave to his own crotch area and gives you a knowing nod* 'Thank you for redeeming him from his evil ways and letting me get to know him!'";
			otherwise:    [break off]
				say "     You wave David off and turn away.";
		otherwise:
			say "     So what do you want? Just chat a bit [link](1)[as]1[end link], send him to the [if hp of David is 3]bunker[otherwise]camp[end if] [link](2)[as]2[end link] or not say anything after all [link](3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat, [link]2[end link] to send him to the [if hp of David is 3]bunker[otherwise]camp[end if] or [link]3[end link] to break off talking.";
			if calcnumber is 1:								[chat]
				if hp of David is 3: 						[in the camp]
					say "     David says 'As you can see, the sample gathering is still going well. It's unbelievable how much stamina Tiny Tim has. [if CampBravoWomenAllowed is 1]Several of the female soldiers got sent out as well by now, their bellies already swelling with minotaur calves.' [end if][if Adam is in Quartermaster's Tent]The quartermaster had a half-minotaur son too - he's in her tent helping her out.' [end if]";
				if hp of David is 4:						[in the bunker]
					if Sarahpups > 3:
						say "     David says 'Sarah's puppies keep trying to chew up my boots. They're sweet and all, but sometimes they get on my nerves. I've been going up into the library to get some peace and quiet and read[if Fang is in the Grey Abbey Library]. Of course, there your wolf keeps staring at me like he wants to mount me[end if].'";
					otherwise:
						say "     David says 'Pretty quiet down here in the bunker. I've been going up into the library to grab a book or two to read[if Fang is in the Grey Abbey Library]. And your wolf kept looking at me all the time like he wanted to mount me[end if].'";
			otherwise if calcnumber is 2:			[send him to the bunker/camp bravo]
				if hp of David is 3:						[in the camp]
					say "     David gives you a salute and says [if thirst of David is 20]'See you there, baby.' [otherwise]'As you wish, sir.' [end if]before going to collect his clothes and equipment.";
					move David to Bunker;
					now hp of David is 4;
				otherwise if hp of David is 4:	[in the bunker]
					say "     David gives you a salute and says [if thirst of David is 20]'See you there, baby.' [otherwise]'As you wish, sir.' [end if]before going to collect his clothes and equipment.";
					move David to Parade Ground;
					now hp of David is 3;
			otherwise:												[break off]
				say "     You wave David off and turn away.";
	
after of going to Parade Ground while hp of David is 1:
	now hp of David is 2;
	say "     As you enter Camp Bravo, you see a familiar face standing on the parade ground - it's David Jackson, your handsome Private from out in the city. He's watching the minotaur with a bit of a wide-eyed expression. Moving up to him, you say hello.";
	say "     [line break]";
	say "     'Hello again. I was told there might be a special agent coming to talk to us, but I never thought it'd be you. You never told me you're with the government...' You apologize, giving him some airy explanation about needed secrecy and gathering unbiased information. Quickly leading over to another topic, you ask him about what he thinks about the Camp.";
	say "     David points over at the minotaur, saying 'Just look at the thing - it's huge. Almost couldn't believe it when the first group of men came out and it stuck its cock up their asses and fucked them. And the whole story about why we're doing this sounds a bit fishy to me... but orders are orders.' He gives the minotaur another look and rubs his ass. 'I worry a bit that it'll be my turn soon...'";

after of going to Parade Ground while thirst of David is 5 and hp of David is 3:
	say "     As you step on the parade ground of Camp Bravo, David walks up to you and pulls you aside, saying he has something important to talk to you about. He looks a bit embarrassed about it, hesitating before he says 'Listen, you saved me from minotaur duty, and I like being with you and... you know. I wanted to ask how you see - you and me - us.'";
	say "     He looks at you with an earnest and hopeful expression. What do you tell him? Y = 'I like you too - come be my boyfriend.' ; N = 'We're just fuck-buddies, blowing off some steam.'";
	if player consents:
		now thirst of David is 20;                [boyfriend]
		say "     He smiles and gives you a kiss and a tight embrace.";
	otherwise:
		now thirst of David is 10;                [fuck-buddy]
		say "     'Oh, ok - just buddies, you say. I'll go back to Ann then when all this is over.";

after of going to Bunker while Dexterity of David is 0 and hp of David is 4 and (DavidBunkerEntry - turns > 8) and Sven is in bunker and hp of Sven >= 8 and hp of Sven < 50:
	if debugactive is 1:
		say "    DEBUG: DAVID/SVEN (DEXTERITY 0) WALKIN[line break]";
	say "     As you enter the bunker, you swing by the rows of beds set up in the room and find David in one of them, stretched out on his back and sleeping. The thin blanket he's under is showing a large tent over his crotch, making it pretty obvious that he's got a boner right now. That must be one nice dream he's having. And you're not the only one who noticed that - not far away, Sven is sitting cross-legged on his own bed, stealing glances at the sleeping man. The snowmeow shyly lowers his gaze and flirts his long tail through the air in front of himself as he notices your attention. It's clear that he's... interested in David, though he'd never make a first move, being as shy and submissive as he is - and your pet on top of that.";
	say "     [line break]";
	say "     Do you want to tell Sven that he should... give David's dream a happy ending (Y), or do you let things stand as they are, with him just looking (N)? ";
	if player consents:
		now Dexterity of David is 1;   [he gets a blowjob]
		say "     [line break]";
		say "     Walking over to the snow leopard, you sit down beside him and stroke his fur, getting a pleased sigh and rumbling purr from him. Your affectionate snowmeow pet snuggles up to your touch, purring a bit louder as you rub his soft-furred belly, then gives a slight moan as your hand reaches down to cup his balls and fondles them. After petting him some more till he's pretty aroused and about half-hard, you whisper in Sven's ear what you'd like him to do next. Sven quickly looks over to David again and blushes brightly in his ears. 'While he's sleeping? I... I could not. It would be so forward,' he says as his cock throbs hard in your hand, your kitty clearly aroused at the thought of doing something so naughty as that.";
		say "     'Do it, my pet.  You know you want to,' you tell him, giving him a pat on his rear in the right direction for added encouragement.  There is a last little moment of hesitation as he looks back to you, then David, and back again, followed by a happy kiss on your cheek. Then your horny little kitty almost flows out of the bed, silently stalking over to the soldier's bed in all his feline grace. Carefully taking hold of David's blanket, he slowly pulls it off, grinning wider and wider as more and more of the sleeping man's naked body comes into sight.";
		say "     [WaitLineBreak]";
		say "     Soon, the blanket is in a small heap at the foot of the bed, with David's naked body in full view of everyone and his hard cock standing up like a flagpole. Sven almost pounces on it in his eagerness, taking the young soldier's cock in a hand-paw and licking up and down its side before giving its head a little peck and then sliding his muzzle down over David's shaft. As the snowmeow goes down on him, soft moans start coming from the still sleeping David, his dream seemingly going into a more active phase to follow his body's impressions. In between the moans, he mumbles a bit, slowly getting more coherent while getting the blowjob, until there finally is an understandable 'Yeah, suck it baby.' and one of David's hands grabs Sven's head to pull him down against his crotch.";
		say "     It's pretty obvious that he's mostly awake now, though he still has his eyes closed and thinks this is all still part of his dream. Moving his other hand to grab Sven's head too, David pulls him down on his shaft with quickly growing urgency, then thrusts his hips upwards with a grunt as he orgasms, blowing his load into the eager kitty's mouth. His whole body twitches with each blast of cum and the soldier is panting audibly by the time he's done shooting.";
		say "     His climax over, the satisfied soldier raises his head and looks down with a sleepy expression at the kitty - who grins shyly and dips his ears nervously, fretting he might be in trouble. But David only smiles groggily and says 'Huh? *pant* Sven? That felt *pant* amazingly *pant* good.' Sven purrs in relief and David continues 'Pretty kzzzZZZ...', falling asleep again, rather worn out by the climax after his sudden awakening. Sven dutifully puts the blanket back on him, then bounces back to you to thanks you for being such a great [if cunts of player > 0 and cocks of player is 0]mistress[otherwise]master[end if] by encouraging your kitty pet.";
	otherwise:
		now Dexterity of David is 99;   [no blowjob from Sven]
		say "     [line break]";
		say "     Walking over to the snow leopard, you sit down beside him and stroke his fur, getting a pleased sigh and rumbling purr from him. After a few minutes with your affectionate snowmeow pet, relaxing as you rub his soft belly-fur and he snuggles up to your touch, you stand up and turn your attention back to the task of surviving in this changed city.";

after of going to Bunker while Dexterity of David is 1 and hp of David is 4 and Sven is in bunker and hp of Sven >= 8 and hp of Sven < 50:
	if debugactive is 1:
		say "    DEBUG: DAVID/SVEN (DEXTERITY 1) WALKIN[line break]";
	if cunts of player > 0 and cocks of player is 0:   [female player]
		say "     As you enter the bunker, you see David sitting on one of the closer beds, right next to Sven. They're talking and you overhear David say '...so let me get this straight, you're -' 'Her pet, yes. She saved me and brought me here, takes care of me - the best and strongest and bravest mistress one can have. She even gave me this nice collar. I love her and am hers.' Sven happily replies, smiling at the young soldier as he praises you. David looks slightly nonplussed at the transformed student's so totally submissive behaviour, then shrugs to himself and says 'Well, if that's what you want.' After a quick look down at his crotch and with his cheeks reddening slightly, he continues 'Err - about what you did earlier... thanks? That was... pretty amazing. I thought I was dreaming till after I came and realized you felt pretty furry.'";
		say "     Sven blushes at the hesitant compliment and ducks momentarily behind his fluffy tail.  'Anything for my mistress['] friends,' he says softly.  Releasing his furry appendage, he lets it wind around David's waist as he slips up beside him, nuzzling against the young man's shoulder.  'And... and I like you too - you are very nice and very attractive,' he adds quietly as he snuggles all the closer.  Confronted with such a soft-spoken and cuddly snowmeow, David can't help himself but stroke Sven's fur too, accepting this strange bunker-mate for what he is.";
	otherwise:   [male/herm/neuter player]
		say "     As you enter the bunker, you see David sitting on one of the closer beds, right next to Sven. They're talking and you overhear David say '...so let me get this straight, you're -' 'His pet, yes. He saved me and brought me here, takes care of me - the best and strongest and bravest master one can have. He even gave me this nice collar. I love him and am his.' Sven happily replies, smiling at the young soldier as he praises you. David looks slightly nonplussed at the transformed student's so totally submissive behaviour, then shrugs to himself and says 'Well, if that's what you want.' After a quick look down at his crotch and with his cheeks reddening slightly, he continues 'Err - about what you did earlier... thanks? That was... pretty amazing. I thought I was dreaming till after I came and realized you felt pretty furry.'";
		say "     Sven blushes at the hesitant compliment and ducks momentarily behind his fluffy tail.  'Anything for my master's friends,' he says softly.  Releasing his furry appendage, he lets it wind around David's waist as he slips up beside him, nuzzling against the young man's shoulder.  'And... and I like you too - you are very nice and very attractive,' he adds quietly as he snuggles all the closer.  Confronted with such a soft-spoken and cuddly snowmeow, David can't help himself but stroke Sven's fur too, accepting this strange bunker-mate for what he is.";
	now Dexterity of David is 2;
	
after of going to Bunker while thirst of David is 5 and hp of David is 4:
	if debugactive is 1:
		say "    DEBUG: DAVID (THIRST 5) RELATIONSHIP WALKIN[line break]";	
	say "     As you enter the bunker, David walks up to you and says he has something important to talk to you about. He looks a bit embarrassed about it, hesitating before he says 'Listen, you saved me from minotaur duty, and I like being with you and... you know. I wanted to ask how you see - you and me - us.'";
	say "     He looks at you with an earnest and hopeful expression. What do you tell him? Y = 'I like you too - come be my boyfriend.' ; N = 'We're just fuck-buddies, blowing off some steam.'";
	if player consents:
		now thirst of David is 20;                [boyfriend]
		say "     He smiles and gives you a kiss and a tight embrace.";
	otherwise:
		now thirst of David is 10;                [fuck-buddy]
		say "     'Oh, ok - just buddies, you say. I'll go back to Ann then when all this is over.";

after of going to Bunker while thirst of David > 5 and hp of David is 4 and hp of Eric > 0 and lust of Eric is 0:  [David spots Eric's genitals and wants to talk about them]
	if debugactive is 1:
		say "     DEBUG: DAVID/ERIC (LUST [lust of DAVID]) 1 WALKIN[line break]";
	say "     As you enter the bunker, David walks up to you and pulls you to the side, whispering he has something talk to you about. He looks a bit embarrassed about it, and you notice his eyes straying over to where Eric sits on his bunk (reading something with his back to you) before he continues. 'I - I accidentally saw Eric when he changed his clothes. I didn't spy on him or anything, it just happened, and... he's...'";
	if hp of Eric is 1:
		say "     '...a woman, down below. I didn't know the infections could do that - change only your gender and nothing else. It must be very strange for him.'";
		say "     [line break]";
		say "     You say 'Yeah, he was bitten and got that rather surprising transformation out of it. I'll have to talk to him about that - he can't just deny that the change happened. Either he has to accept his new form, or maybe I can find a cure somewhere...' David looks over to Eric and opens his mouth to ask another question, but you put a hand on his arm and shake your head. 'I'd rather not talk more about things Eric might not want other people to know. Why don't you ask him about it yourself and he'll tell you what he's ready for. But... be nice, ok? He's been through a lot.'";
		now lust of Eric is 1;
	otherwise if hp of Eric is 10 or hp of Eric is 11:
		say "     '...a woman, down below. I didn't know the infections could do that - change only your gender and nothing else. It must be very strange for him.'";
		say "     [line break]";
		say "     You say 'Yeah, he was bitten and got that rather surprising transformation out of it. Hopefully he'll learn to accept his new body fully...' David looks over to Eric and opens his mouth to ask another question, but you put a hand on his arm and shake your head. 'I'd rather not talk more about things Eric might not want other people to know. Why don't you ask him about it yourself and he'll tell you what he's ready for. But... be nice, ok? He's been through a lot.'";
		now lust of Eric is 1;
	otherwise if hp of Eric is 20:
		say "     '...a woman, down below. I didn't know the infections could do that - change only your gender and nothing else. It must be very strange for him.'";
		say "     [line break]";
		say "     You say 'Yeah, he was bitten and got that rather surprising transformation out of it. But I'm working on fixing that...' David looks over to Eric and opens his mouth to ask another question, but you put a hand on his arm and shake your head. 'I'd rather not talk more about things Eric might not want other people to know. Why don't you ask him about it yourself and he'll tell you what he's ready for. But... be nice, ok? He's been through a lot.'";
		now lust of Eric is 1;
	otherwise if hp of Eric is 21 or hp of Eric is 22:
		say "     '...got a horse's penis. But he's human everywhere else. I didn't know the infections could do that - change only your genitals without the rest. It must be very strange for him.'";
		say "     You say 'You should have seen him before I... ah, maybe it'd be better if I didn't tell you that. I don't want to gossip about something that might still be a sore point with him.' David looks over to Eric and opens his mouth to ask another question, but you put a hand on his arm and shake your head. 'Why don't you ask him about it yourself and he'll tell you what he's ready for. But... be nice, ok? He's been through a lot.'";
		now lust of Eric is 1;
	otherwise if hp of Eric is 31 or hp of Eric is 32:
		say "     '...got a goat's penis. But he's human everywhere else. I didn't know the infections could do that - change only your genitals without the rest. It must be very strange for him.'";
		say "     You say 'You should have seen him before I... ah, maybe it'd be better if I didn't tell you that. I don't want to gossip about something that might still be a sore point with him.' David looks over to Eric and opens his mouth to ask another question, but you put a hand on his arm and shake your head. 'Why don't you ask him about it yourself and he'll tell you what he's ready for. But... be nice, ok? He's been through a lot.'";
		now lust of Eric is 1;
	otherwise if hp of Eric is 99:
		say "     '...a woman, down below. I didn't know the infections could do that - change only your gender and nothing else. It must be very strange for him.'";
		say "     [line break]";
		say "     You say 'Don't worry about that - he's got a pussy now and needs to be fucked, that's just how things are these days. Want to take him for a ride?' David opens his mouth as if to say something, then stops and shakes his head 'I couldn't just take advantage of him - we're supposed to help people.'";
		say "     [line break]";
		say "     His moment of hesitation tells you that David wouldn't be completely adverse to fucking your submissive cuntboy. If you could get him over the initial hangup and into that juicy pussy... maybe you should talk to Eric about making that happen.";
		now lust of Eric is 2;
	otherwise:
		say "ERROR-Eric-[hp of Eric]C: He isn't in one of the states he should be in! Please report how you got to this message.";

after of going to Bunker while thirst of David > 5 and hp of David is 4 and hp of Eric > 0 and lust of Eric is 1:  [David talks with Eric about his gender and they exchange stories]
	if debugactive is 1:
		say "     DEBUG: DAVID/ERIC TALK WALKIN[line break]";
	say "     As you enter the bunker, you see David and Eric sitting together on one of the far bunks, talking. Curious about what's going on, you unobtrusively walk closer and overhear:";
	say "     [line break]";
	say "			[DavidEricTalk]";

An everyturn rule:			[you can just wait for them to talk too]
	if player is in bunker and thirst of David > 5 and hp of David is 4 and hp of Eric > 0 and lust of Eric is 1:
		say "     As you spend some time in the bunker, you notice David and Eric sitting together on one of the far bunks, talking. Curious about what's going on, you unobtrusively walk closer and overhear:";
		say "     [line break]";
		say "			[DavidEricTalk]";
	
instead of going to Bunker while hp of David is 4 and libido of David < 53 and companion of player is demon brute:  [David reacts when the player comes in with the demon brute pet]
	move player to Bunker;
	if debugactive is 1:
		say "     DAVID/BRUTUS INTERACTION 1";
	if libido of David is 0:  [first time David sees the player with a demon brute]
		if DBCaptureQuestVar is 5: [original, evil Brutus]
			say "     As you enter the bunker with your demon brute pet in tow and David spots it, he jumps up from where he was sitting on one of the many cots and shouts 'Watch out, there's a dem...', then suddenly falls silent as he realizes the big creature is following you and controlled. 'What the fuck?' he says, still a bit shocked and wide-eyed. Explaining that you've got him tightly controlled and the demon can't hurt him, you assure David that he can calm down. The young soldier accepts your word on it, but still moves to distance himself from the demon brute as far as possible.";
			if (DemonBruteStatus is 0 or DemonBruteStatus is 1):  [male/herm]
				say "     Watching David move to the far side of the underground room, you feel some heat against your arm that wasn't there before. Turning, you see the massive cock of the demon brute besides you, hanging down between his legs fully engorged, radiating a fair amount of warmth as it pulses in anticipation. Your pet's eyes follow David and he sniffs the air through his slit-like nostrils, a pleased rumble going through his chest. Quite a reaction... curious what prompted it so instantly, you ask the brute to explain himself.";
				say "     Looking over to you, the demon gives an evil grin. 'That one has felt the touch of the Infernal Legion - I can smell his fear.' At that, he pulls in another lungful of air through his nose and precum starts dripping from his erection. He moves his claws over his chest, at the approximate positions where David had bloody slashes from the other demon on your first meeting 'He is marked to be a Bal'ssh'avizatz'gul's slave, but can still walk without hobbling, so he hasn't been taken properly. I WANT him as mine!' His eyes flash brightly and his gaze bores into yours. 'Give him to me and I won't rip your arms off when I finally get free.'";
				say "     [line break]";
				say "     Chuckling at the demon brute making demands even though he's yours to command, you grasp your demontooth amulet and whisper the command word, banishing him inside. Enough of this, for now.";
				now libido of David is 1;   [first-time fright scene resolved]
				[
				say "			The things you had to do to survive in this city certainly has some effect on your morality - or is it the ritual with which you bound the demon to you causing some of his evil to leak into you? No matter what, you imagine seeing your demon brute pet shoving his thick shaft into David's ass for a second, a hot flash of lust running through you at the same time.";
				say "     Shaking your head softly to shake off the vision, your answer to the demon brute is...";
				if player consents:	[let's be evil]
					say "     Willing to indulge your pet, you tell him he'll get to mount the soldier - but not here in the bunker. An alley out in the city seems much more appropriate, and you can arrange David being out there alone when you send him towards Camp Bravo again...";
					now libido of David is 99;  [open up the 'lure out and fuck' in David's code]
				otherwise:  [nope, David won't be raped by the demon in an alley]
					say "     Chuckling at the demon brute making demands even though he's yours to command, you grasp your demontooth amulet and whisper the command word, banishing him inside. Enough of this, for now.";
					now libido of David is 1;   [first-time fright scene resolved]
				]
			otherwise if DemonBruteStatus is 2:  [cuntboy demon brute]
				say "     Watching David move to the far side of the underground room, you notice the demon brute fidgeting besides you. Turning, you see the pussy between his legs, its lips open and swollen in arousal, moisture glistening on them. Your pet's eyes follow David and he sniffs the air through his slit-like nostrils, a pleased rumble going through his chest. His left hand moves to his crotch as if to grab his nonexistent cock and he snarls as he is reminded of you modifying his body. Quite a reaction... curious what prompted it so instantly, you ask the brute to explain himself.";
				say "     Looking over to you, the demon grumbles. 'That one has felt the touch of the Infernal Legion - I can smell his fear.' At that, he pulls in another lungful of air through his nose and you can see droplets of female juices drip out of his pussy - much to the demon's chagrin as he looks down at his crotch. He moves his claws over his chest, at the approximate positions where David had bloody slashes from the other demon on your first meeting 'He is marked to be a Bal'ssh'avizatz'gul's slave, but can still walk without hobbling, so he hasn't been taken properly. I WANT him as mine!' His eyes flash brightly and his gaze bores into yours. 'I'll flay you alive for gelding me and taking this chance away when I finally get free.'";
				say "     [line break]";
				say "     Chuckling at the demon brute making threats even though he's yours to command, you grasp your demontooth amulet and whisper the command word, banishing him inside. Enough of this, for now.";
				now libido of David is 1;  [first-time fright scene resolved]
				[ 
				Revenge fuck path: 
				"- though a new image appears before your mental eye... seeing your demon brute pet on the ground, David pounding into his pussy in a revenge-fuck. That would surely show the demon his place and get David over his fear.";
				say "     Shaking your head softly to shake off the vision, you wonder if that's really such a good idea.";
				if player consents:	[prep the revenge fuck by David]
					say "     Well, the demon brute certainly deserves it. You decide to bring it up with David later when you talk to him again.";
					now libido of David is 89;  [open up the 'revenge fuck' in David's code]
				otherwise:  [nope]
					say "     Better not - who knows how David would react if you suggested this to him.";
					now libido of David is 1;   [first-time fright scene resolved]
				]
		otherwise if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99:	[cleansed brute]
			say "     As you enter the bunker with your demon brute pet in tow and David spots it, he jumps up from where he was sitting on one of the many cots and shouts 'Watch out, there's a dem...', then suddenly falls silent as he realizes the big creature is following you obediently. 'What the fuck?' he says, still a bit shocked and wide-eyed. Introducing Brutus to him, you explain that while he is a demon, you cleansed him of his inner evil.";
			if DemonBruteStatus is 2:		[female]
				say "     A somewhat doubtful expression on his face, David nods to you, then looks up as he notices the demon's eyes fixed on him in an intense stare. 'Why is he looking at me like that?' he asks, followed by him dropping his gaze down to Brutus crotch, where the demon's pussy looks pretty aroused and moist at the moment. Shaking his head vehemently and looking back to you, David says 'Just keep him away from me please. I don't want to be reminded of what happened in that bar.' With that, David grips his books tightly and goes up into the library for a while. Brutus follows him with a curious, interested gaze. When he looks down to his crotch afterwards, an uncomfortable, even ashamed, look comes over his face.";
			otherwise:  [male+herm]
				say "     A somewhat doubtful expression on his face, David nods to you, then looks up as he notices the demon's eyes fixed on him in an intense stare. 'Why is he looking at me like that?' he asks, followed by him dropping his gaze down to Brutus crotch, where the demon's massive, veined shaft gives a small, but noticeable throb. Shaking his head vehemently and looking back to you, David says 'Just keep him away from me please. I don't want to be reminded of what happened in that bar.' With that, David grips his books tightly and goes up into the library for a while. Brutus follows him with a curious, interested gaze. When he looks down to his cock, partly erect now, an uncomfortable, even ashamed, look comes over his face.";
			say "     What is this about? Maybe you should ask Brutus about it sometime...";
			now libido of David is 50;  [met the cleansed Brutus, noticed him staring]
	otherwise if libido of David is 1:  [saw the evil brute with the player before]
		if DBCaptureQuestVar is 5 and a random chance of 4 in 10 succeeds: [repeat for the original, evil Brutus]
			say "     As you enter the bunker with your demon brute pet in tow, you run into David who was just on his way up into the library with a stack of books in his hands. The demon growls at David, chuckling as the young soldier flinches away from him and drops several of the books - at least until you order the enslaved demon to shut up. Eying the large creature with a frightened expression, David says to you 'Why do you keep that thing around all the time? Can't you... have it wait for you outside the library or something?' Then he picks up his books and quickly climbs the stairs, only returning about twenty minutes later with some new ones.";
		otherwise if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99:	[first meeting with the cleansed brute]
			say "     As you enter the bunker with Brutus in tow, you run into David who was just on his way up into the library with a stack of books in his hands. The young soldier stops in his tracks, eyes widening as he takes in the demon standing obediently behind you. Seeing that Brutus is under control and not about to attack or anything, David asks 'Is that the same thing you brought with you before? It looks... different, doesn't it? No longer snarling all the time too.' You tell him that your companion now has a name - Brutus - and that he is indeed the same demon, which you cleansed of his inner evil.";
			if DemonBruteStatus is 2:		[female]
				say "     A somewhat doubtful expression on his face, David nods to you, then looks up as he notices the demon's eyes fixed on him in an intense stare. 'Why is he looking at me like that?' he asks, followed by him dropping his gaze down to Brutus crotch, where the demon's pussy looks pretty aroused and moist at the moment. Shaking his head vehemently and looking back to you, David says 'Just keep him away from me please. I don't want to be reminded of what happened in that bar.' With that, David grips his books tightly and goes up into the library for a while. Brutus follows him with a curious, interested gaze. When he looks down to his crotch afterwards, an uncomfortable, even ashamed, look comes over his face.";
			otherwise:  [male+herm]
				say "     A somewhat doubtful expression on his face, David nods to you, then looks up as he notices the demon's eyes fixed on him in an intense stare. 'Why is he looking at me like that?' he asks, followed by him dropping his gaze down to Brutus crotch, where the demon's massive, veined shaft gives a small, but noticeable throb. Shaking his head vehemently and looking back to you, David says 'Just keep him away from me please. I don't want to be reminded of what happened in that bar.' With that, David grips his books tightly and goes up into the library for a while. Brutus follows him with a curious, interested gaze. When he looks down to his cock, partly erect now, an uncomfortable, even ashamed, look comes over his face.";
			say "     What is this about? Maybe you should ask Brutus about it sometime...";
			now libido of David is 50;  [met the cleansed Brutus, noticed him staring]
	otherwise if libido of David is 50:		[saw the cleansed Brutus with the player before]
		if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99 and a random chance of 4 in 10 succeeds:	[repeat meeting with the cleansed brute]
			if DemonBruteStatus is 2:		[female]
				say "     As you enter the bunker with your demon brute companion in tow, you run into David who was just on his way up into the library with a stack of books in his hands. After flinching slightly in the first moment he sees the large creature, David grips his books tightly, quickly passing you as he continues going up into the library for a while. Brutus follows him with a curious, interested gaze. When he looks down to his crotch afterwards, which shows his pussy being pretty moist and aroused, an uncomfortable, even ashamed, look comes over his face.";
			otherwise:  [male+herm]
				say "     As you enter the bunker with your demon brute companion in tow, you run into David who was just on his way up into the library with a stack of books in his hands. After flinching slightly in the first moment he sees the large creature, David grips his books tightly, quickly passing you as he continues going up into the library for a while. Brutus follows him with a curious, interested gaze. When he looks down to his cock afterwards, which went slightly hard, an uncomfortable, even ashamed, look comes over his face.";
			say "     What is this about? Maybe you should ask Brutus about it sometime...";
	otherwise if libido of David is 51:  [Brutus wants to check David out, told the player]
		if a random chance of 4 in 10 succeeds:  [repeat urging to look at David]
			say "     As you enter the bunker with your demon brute companion in tow, you see David, sitting on his bed as he so often does, reading. Brutus gives him an intense look, then turns to you. 'I must see his scars, please Master. There is a possibility that his attacker has put the seal of enslavement on his body.' Looking down again, he continues silently '...if that's the case, I'm not shaming my Master after all.' and goes back to his usual tone 'But the soldier would be in danger!'";
	otherwise if libido of David is 52:	 [Brutus hurt himself when removing the enslavement mark - first meeting afterwards]
		say "     As you enter the bunker with your demon brute companion in tow, David immediately comes over to ask how Brutus is doing. He is visibly relieved when the demon shows him his fully healed hand. Turning into smoke and back regularly means that he has lots of practice in reassembling himself after all. David nods, then falls silent for a moment, thinking. He pulls you aside out of earshot of your demon companion before asking 'Did you order him to do it? Did you... know it would hurt him?' Both of those questions you truthfully say no to, recounting Brutus shameful admission of certain... urges, then him pleading to look at David. 'So it was all him? That's... quite something. For a demon.' He rubs his side where the demonic seal once was hidden, biting his lip before he continues. 'Could I... talk to him sometime?'";
		say "     [WaitLineBreak]";
		say "     Why wait - you call Brutus over. David walks up to him, putting a hand on his muscled arm. 'I wanted to thank you again for dealing with that evil symbol. It was... unexpected, for you to take such a risk for me.' Then he holds out his hand to Brutus, offering it to him. 'So... friends?' The demon looks down at him nonplussed for a second as he tries to come up with a response to a topic that hasn't been part of his life for eons - then he exuberantly shakes the smaller human's hand and pulls him into an embrace.";
		if DemonBruteStatus is 2: [female]
			say "     They stay in that tight hug for a moment, David pressed against Brutus chest, his arms not even close long enough to reach around the demon's wide chest. Then suddenly, Brutus clears his throat, his face taking on an interesting shade of embarrassed purple as he lets the young soldier in his arms go. As David steps away, you see the demon's pussy in a quite aroused state, its lips swollen, a wet spot on David's clothing where he must have been pressed right against it. With you standing right next to them, both the soldier and the demon seem to come to the decision to ignore the last bit at the same time, resulting in a somewhat awkward 'See ya.' and 'Sure, friend.'";
		otherwise:   [male+herm]	
			say "     They stay in that tight hug for a moment, David pressed against Brutus chest, his arms not even close long enough to reach around the demon's wide chest. Then suddenly, Brutus clears his throat, his face taking on an interesting shade of embarrassed purple as he lets the young soldier in his arms go. As David steps away, you see the demon's cock in a quite aroused state, hanging where it must have pressed right against David. With you standing right next to them, both the soldier and the demon seem to come to the decision to ignore the last bit at the same time, resulting in a somewhat awkward 'See ya.' and 'Sure, friend.'";
		now libido of David is 53;
	
instead of going to Bunker while hp of David is 4 and companion of player is demon brute and libido of David > 52 and a random chance of 1 in 3 succeeds:  [David reacts when the player comes in with the demon brute pet]
	move player to Bunker;	
	if debugactive is 1:
		say "     DAVID/BRUTUS INTERACTION 2";
	if libido of David is 53:  [David thanked Brutus after he got hurt - some attraction here]
		if a random chance of 4 in 10 succeeds: [40% chance]
			let bonus be (( the Perception of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			increase diceroll by bonus;
			if a random chance of 1 in 2 succeeds:  [David watches Brutus - perceptive players notice his looks linger on Brutus naked body]
				say "     As you walk into the bunker with Brutus in tow, you see David [one of]sitting on his bed, reading[or]sorting through his supplies[or]writing in a notebook[at random]. The young soldier looks up as he notices you, greeting you and your demon companion with a smile and a wave. [if diceroll > 15]Perceptive as you are, you notice that David's gaze lingering on Brutus muscular chest, then wandering lower to the large demon's crotch. The young man bites his lip, then suddenly realizes you're watching him stare at Brutus and looks back down, embarrassment giving him reddened cheeks.[end if]";
			otherwise:   [Brutus is more obvious - just stands and stares]
				say "     As you walk into the bunker with Brutus in tow, you see David [one of]just getting up after taking a rest[or]pull out some clean clothes out of his bag[or]walk to his bed half-dressed after freshening up[at random], his back turned to you. Walking along to the open area in the middle of the bunker, you notice the presence of Brutus missing from where he always walks along - behind your shoulder on the right side. Turning around, you find the demon still standing at the entrance, busy watching the young soldier pulling on a new pair of pants. There seems to be some interest for David in him, judging from [if DemonBruteStatus is 0 or DemonBruteStatus is 1]his semi-hard and throbbing member[otherwise]soon drippingly wet pussy[end if]. As you're still deciding if you should say something, Brutus notices you looking at him and hurries after you, taking his usual place with a murmured 'Sorry, master.'";
	otherwise if libido of David > 53 and libido of David < 57:  [they had some fun together]
		if a random chance of 1 in 2 succeeds:  [David greets the player and Brutus]
			say "     As you walk into the bunker with Brutus in tow, you run into David just on his way up to the library to return a book and grab a new one. He gives the both of you a friendly smile, greeting you and giving Brutus a clap on the arm, squeezing it affectionately as he says 'Nice to see you, big guy.' Then he moves on, walking up the stairs and returning some time later with something new to read.";
		otherwise:   [Brutus is rather more obvious]
			say "     As you walk into the bunker with Brutus in tow, the large demon makes a beeline for David, who was just [one of]reading a book[or]sorting through his supplies[or]cleaning his weapon[or]making his bed[or]folding his clothes[at random]. With a loud 'Hello, my friend!' he pulls the young soldier into a tight embrace, the smaller human pressed against his muscled chest. Watching them, you notice the demon's hand cupping David's ass as he holds him. Putting the man down a moment later, Brutus walks back to you and takes his usual place - behind your shoulder on the right side.";
	otherwise if libido of David is 57:  [the player talked with them both about each other]
		if a random chance of 1 in 2 succeeds:  [David greets the player and Brutus]
			say "     As you walk into the bunker with Brutus in tow, you run into David just on his way up to the library to return a book and grab a new one. He gives the both of you a friendly smile, greeting you and giving Brutus a clap on the arm, squeezing it affectionately as he says 'Nice to see you, big guy.' Though David doesn't stop with that and proceeds to stroke his hand over Brutus wide and muscular chest, finally reaching up for his shoulder to pull the tall demon down a bit and give him a kiss. With a flirty 'See you later' and a slap on your infernal companion's ass, David then moves on, walking up the stairs and returning some time later with something new to read.";
		otherwise:   [Brutus is rather more obvious]
			say "     As you walk into the bunker with Brutus in tow, the large demon makes a beeline for David, who was just [one of]reading a book[or]sorting through his supplies[or]cleaning his weapon[or]making his bed[or]folding his clothes[at random]. With a loud 'Hey there, David!' he pulls the young soldier into a tight embrace, the smaller human pressed against his muscled chest. Then he lowers his head and runs his forked tongue along his friend's neck before giving him a lust-filled kiss that is eagerly returned. Watching them make out, you notice the demon's hand cupping David's ass as he holds him, giving it an appreciative squeeze. Putting the man down some short while later, Brutus walks back to you and takes his usual place - behind your shoulder on the right side.";
				
to say DavidEricTalk:
	if hp of Eric is 1 or hp of Eric is 20:		[gender not addressed yet, or Eric waiting for a cure]
		say "     '...and then, as I was bandaging my arm, I felt this wrenching pain in my gut and passed out. When I came back to I was...' Eric waves a hand at his crotch. 'You know. Different.' David nods in silent understanding and puts a hand on Eric's shoulder. 'I don't believe I can understand what you went through, but... look at it from this point - you're still a human, good-looking guy and above all still have your own mind. You should see some of the infected out there, behaving like beasts. So what if you're female down below now - that's not all that defines you...' Eric gets a thoughtful expression, then bites his lip before... whispering something.";
		say "     Standing there, craning your head to maybe catch his words, you suddenly realize how ridiculous you must look - and that it's not a good thing to spy on friends. Not wanting to listen in any more than you already have, you go to the other side of the room and busy yourself by counting and sorting your supplies.";
		say "     [WaitLineBreak]";
		say "     Quite a while later, now knowing exactly how many blankets and other things are in the bunker, you turn back to the bunks and see that your two friends are still sitting there, now seemingly in much higher spirits. David gestures wildly and says '...it really was this big, a massive brute of a thing. I had no chance, until...' he spots you and smiles, waving you closer to them 'Hi there, we're just regaling each other with tales of your heroics - kicking demon butt and taking down green cheerleaders. Thanks to your timely intervention, both of us are hanging around here now in nice company, instead of getting buggered by who knows what.' Both of them smile at you and invite you to sit with - or rather between - them. Then Eric starts another story, this time about fight against the incubus and succubus you two met while on the campus...";
		say "     [line break]";
		say "     Being on a bunk with David on one side and Eric on the other makes your thoughts wander a bit, imagining what it would be like to do... other things on a bed together. From what you can see, they like each other and might possibly be down for it... though you should surely first sort out Eric's gender issues. Bringing up fun with David up before he's really comfortable in his skin wouldn't be a good idea.";
	if hp of Eric is 10 or hp of Eric is 11:	[Eric talked into accepting his female parts or already fucked]
		say "     '...and then, as I was bandaging my arm, I felt this wrenching pain in my gut and passed out. When I came back to I was...' Eric waves a hand at his crotch. 'You know. Different.' David nods in silent understanding and puts a hand on Eric's shoulder. 'I don't believe I can understand what you went through, but... look at it from this point - you're still a human, good-looking guy and above all still have your own mind. You should see some of the infected out there, behaving like beasts. So what if you're female down below now - that's not all that defines you...' Eric gets a thoughtful expression, then bites his lip before... whispering something.";
		say "     Standing there, craning your head to maybe catch his words, you suddenly realize how ridiculous you must look - and that it's not a good thing to spy on friends. Not wanting to listen in any more than you already have, you go to the other side of the room and busy yourself by counting and sorting your supplies.";
		say "     [WaitLineBreak]";
		say "     Quite a while later, now knowing exactly how many blankets and other things are in the bunker, you turn back to the bunks and see that your two friends are still sitting there, now seemingly in much higher spirits. David gestures wildly and says '...it really was this big, a massive brute of a thing. I had no chance, until...' he spots you and smiles, waving you closer to them 'Hi there, we're just regaling each other with tales of your heroics - kicking demon butt and taking down green cheerleaders. Thanks to your timely intervention, both of us are hanging around here now in nice company, instead of getting buggered by who knows what.' Both of them smile at you and invite you to sit with - or rather between - them. Then Eric starts another story, this time about fight against the incubus and succubus you two met while on the campus...";
		say "     [line break]";
		say "     Being on a bunk with David on one side and Eric on the other makes your thoughts wander a bit, imagining what it would be like to do... other things on a bed together. From what you can see, they like each other and might possibly be down for it... [if hp of Eric is 10]though for now, it would be best if you spent some time with Eric first and took his virginity. Pushing sex with someone he barely knows on Eric might otherwise put him back into denying his new gender.[otherwise if hp of Eric is 11]Eric should be comfortable enough with sex now to be open for some fun - as long as you're part of it. It's worth a try to talk to him about it.[end if]";
	otherwise if hp of Eric is 21 or hp of Eric is 22 or hp of Eric is 31 or hp of Eric is 32:	[horse/satyr hung Eric]
		say "     '...and then, as I was bandaging my arm, I felt this wrenching pain in my gut and passed out. When I came back to I was...' Eric waves a hand at his crotch. 'You know. Different. And when we tried to fix me later, it made me part [if hp of Eric is 21 or hp of Eric is 22]horse[otherwise if hp of Eric is 31 or hp of Eric is 32]goat-man[end if].' David nods in silent understanding and puts a hand on Eric's shoulder. 'I don't believe I can understand what you went through, but... look at it from this point - you're still a human, good-looking guy and above all still have your own mind. You should see some of the infected out there, behaving like beasts. So what if you're different now down below - that's not all that defines you...' Eric gets a thoughtful expression, then bites his lip before... whispering something.";
		say "     Standing there, craning your head to maybe catch his words, you suddenly realize how ridiculous you must look - and that it's not a good thing to spy on friends. Not wanting to listen in any more than you already have, you go to the other side of the room and busy yourself by counting and sorting your supplies.";
		say "     [WaitLineBreak]";
		say "     Quite a while later, now knowing exactly how many blankets and other things are in the bunker, you turn back to the bunks and see that your two friends are still sitting there, now seemingly in much higher spirits. David gestures wildly and says '...it really was this big, a massive brute of a thing. I had no chance, until...' he spots you and smiles, waving you closer to them 'Hi there, we're just regaling each other with tales of your heroics - kicking demon butt and taking down green cheerleaders. Thanks to your timely intervention, both of us are hanging around here now in nice company, instead of getting buggered by who knows what.' Both of them smile at you and invite you to sit with - between - them. Then Eric starts another story, this time about fight against the incubus and succubus you two met while on the campus...";
		say "     [line break]";
		say "     Being on a bunk with David on one side and Eric on the other makes your thoughts wander a bit, imagining what it would be like to do... other things on a bed together. From what you can see, they like each other and might possibly be down for it... [if lust of David is 0]though you should break David's ass in first. You'll have to get the soldier used to taking it up the rear end, otherwise he'll refuse to even consider Eric's enlarged meat. [otherwise if lust of David > 0]with the pleasure he had from getting shafted in the ass before, David would surely like it. [end if][if hp of Eric is 21]And Eric - it'd likely be best if you broke in the newly virgin shaft yourself first...[otherwise if hp of Eric is 22]And Eric - with how much he enjoys his new cock, you're sure he'll jump at the opportunity. You really should talk to him about it.[end if]";
	now lust of Eric is 2;

to say DavidSex1:												[player sucks him]
	if thirst of David is 0:
		if David is in Parade Ground:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss before he can react. There's a look of alarm in his eyes for a second, then he accepts your tongue exploring his mouth and gives in. As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but quickly falls silent as you reach down and stroke the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard and pretty pliable.";
		otherwise:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss before he can react. There's a look of alarm in his eyes for a second, then he accepts your tongue exploring his mouth and gives in. As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but quickly falls silent as you reach down and stroke his crotch, a bulge quickly forming in his pants. Not getting any relief except rushed masturbation in the weeks and months since the outbreak started, Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.";
		say "     Kneeling down in front of him, you undo David's zipper and pull out his cock, making the man moan as you handle his erect manhood. Stroking up and down on his shaft, you have him rock-hard in no time, then move your head forward a bit and lick over the tip. Next you take his cock into your mouth, and start bobbing up and down on it, while David groans and murmurs things like 'So good...' and 'You're a lot better than...'";
		say "     You give the young soldier a long and amazing blow-job, keeping at it until he suddenly shouts 'I'm coming!' and starts to shoot strings of cum into your mouth. You wait till he stops twitching and the last spurt of semen leaves his cock, then stand up and start making out with him, smiling inwardly as you push some of his own cum in David's mouth with your tongue to give him a taste.'";
		say "     [WaitLineBreak]";
		say "     As he comes down from the rush of orgasm a while later and David's brain starts working again, he pants 'Wow, you're better than... Oh!' with a guilty expression suddenly shadowing his face. 'I got a girlfriend - and now I've cheated on her having oral sex! What will she say when I get back home? I - you...'";
		say "     Pulling his mouth to yours for another quick kiss, you tell him to calm down and that his girlfriend surely won't learn about you two once he goes back to her when this is all over. What happens in this city stays in the city. Unless of course you can make him fully yours to keep, you think to yourself...";
	otherwise:
		if David is in Parade Ground:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then feel the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard. As you pull away to get some air, you moan 'Let me take care of that for you.', getting an eager nod from David as answer.";
		otherwise:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the fabric you feel his manhood already filling out, as his body reacts to you kiss and touch.";
		say "     Kneeling down in front of him, you undo David's zipper and pull out his cock, making the man moan as you handle his erect manhood. Stroking up and down on his shaft, you have him rock-hard in no time, then move your head forward a bit and lick over the tip. Next you take his cock into your mouth, and start bobbing up and down on it, while David groans and murmurs things like 'So good...' and 'You're a lot better than...'";
		say "     You give the young soldier a long and amazing blow-job, keeping at it until he suddenly shouts 'I'm coming!' and starts to shoot strings of cum into your mouth. You wait till he stops twitching and the last spurt of semen leaves his cock, then stand up and start making out with him, smiling inwardly as you push some of his own cum in David's mouth with your tongue to give him a taste.'";
		say "     [WaitLineBreak]";
		if thirst of David is 10:						[fuck buddy]
			say "     As he comes down from the rush of orgasm a while later and David's brain starts working again, he pants 'Wow, you're better than Ann. Best fuck-buddy ever. I'll miss you when I'm back with her.'";
		otherwise if thirst of David is 20:	[boy/girlfriend]
			say "     As he comes down from the rush of orgasm a while later and David's brain starts working again, he pants 'You're better than Ann ever was. I love having you as my [if cocks of player > 0]boyfriend[otherwise]girlfriend[end if].'";
		otherwise:   												[worrying about cheating on his girlfriend]
			say "     As he comes down from the rush of orgasm a while later and David's brain starts working again, he pants 'Wow, you're better than Ann.' with a somewhat guilty expression. 'And I've just cheated on her - again!'";

to say DavidSex2:							[he sucks the player]
	if David is in Parade Ground:
		say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then feel the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard.";
	otherwise:
		say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the fabric you feel his manhood already filling out, as his body reacts to you kiss and touch.";
		say "     Pulling back from David, you quickly strip off your clothes and sit at the edge of one of the nearby bunk beds. Holding out your hard [cock of player] manhood, you wave him closer and tell the young soldier to suck you off. [if lust of David is 1 or lust of David is 51 or lust of David is 52]He just stands there for a moment, staring at your cock until you say 'Come on, you liked getting fucked with it, didn't you? Just give it a try...' then steps up and kneels between your legs.[otherwise]He smiles at you, licking his lips, then steps up and kneels between your legs.[end if]";
	say "     Taking hold of your cock, the young soldier holds it up and licks along the shaft before taking the tip in his mouth. You put your hands on his head and softly push it down on your cock, helping him to get into sucking on it. Soon you have him bobbing up and down on your manhood, with his lips tight around the shaft. [if lust of David is 1]Even though it's his first blow-job, he's pretty good at it, knowing how to handle a cock from being a man himself.[otherwise]He's very eager to please you, even trying to deep-throat you once or twice.[end if]";
	say "     Before too much longer, you feel the need to cum rise in your balls and say 'I'm close, suck me harder.' [if lust of David is 0]You pull his head against your crotch as you start shooting, spurt after spurt of your seed filling his hot mouth.[otherwise]He pushes your cock into his mouth all the way as you orgasm, making you shoot directly down his throat and into his stomach.";
	say "     [WaitLineBreak]";
	if thirst of David is 10:							[fuck buddy]
		say "     After softly sucking on your cock a bit more, David pulls it out of his mouth and looks up at you, saying 'How was that, fuck-buddy?'";
	otherwise if thirst of David is 20:		[boy/girlfriend]
		say "     After softly sucking on your cock a bit more, David pulls it out of his mouth and looks up at you with a smile. Then he moves up and pushes you back to lie on the bunk so you can make out. 'You're amazing. I love having you as my boyfriend.'";
	otherwise:    												[worrying about cheating on his girlfriend]
		say "     After softly sucking on your cock a bit more, David pulls it out of his mouth and looks up at you, saying 'Cock-sucking isn't so bad - I somehow even like the taste of cum. Ann always said it tastes horrible.' with a somewhat guilty expression.";
	now lust of David is 2;

to say DavidSex3:												[player pussy fucked]
	setmonster "human";
	choose row monster from the table of random critters;
	if thirst of David is 0:							[first time]
		if David is in Parade Ground:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss before he can react. There's a look of alarm in his eyes for a second, then he accepts your tongue exploring his mouth and gives in. As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but quickly falls silent as you reach down and stroke the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard and pretty pliable.";
		otherwise:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss before he can react. There's a look of alarm in his eyes for a second, then he accepts your tongue exploring his mouth and gives in. As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but quickly falls silent as you reach down and stroke his crotch, a bulge quickly forming in his pants. Not getting any relief except rushed masturbation in the weeks and months since the outbreak started, Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.";
		say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you grab David and pull him with you to one of the nearby bunks, lying down with him on top of you.";
		say "     [WaitLineBreak]";
		say "     It only takes a helping hand guiding his rod to your pussy lips for the young man's instincts to kick in and his hips plunge downward, thrusting his hard manhood deep into your vagina. He fucks you with smooth strokes, making you moan with the feelings as his shaft hits just the right spots inside you. You run your hands over his chest, feeling his muscles while your legs wrap around his hips to pull him even deeper with each of his thrusts. Soon he speeds up even more, groaning louder and louder as he gets closer to orgasm.";
		say "     Then he shouts 'I'm coming!' and you feel a shudder run through his body as the first blast of his human cum shoots deep inside your body. You pull him down on top of you, hugging him close and kissing him as his cock twitches again and again, filling you to the brink with his fertile seed.[fimpregchance]";
		say "     [line break]";
		say "     You lay there for a while, entwined and kissing, with his slowly softening cock still inside you. As both of you come down from the rush of sex and David's brain starts working again, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. Then a worried look comes over his face and he adds 'But... oh no, I just cheated on my girlfriend. What will she say when I get back home. I - you...'";
		say "     Pulling his mouth to yours for a quick kiss, you tell him to calm down and that his girlfriend surely won't learn about you two once he goes back to her when this is all over. What happens in this city stays in the city. Unless of course you can make him fully yours to keep, you think to yourself...";
	otherwise:
		if David is in Parade Ground:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then feel the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard.";
		otherwise:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the fabric you feel his manhood already filling out, as his body reacts to your kiss and touch.";
		say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you grab David and pull him with you to one of the nearby bunks, lying down with him on top of you.";
		say "     [WaitLineBreak]";
		say "     It only takes a helping hand guiding his rod to your pussy lips for the young man's instincts to kick in and his hips plunge downward, thrusting his hard manhood deep into your vagina. He fucks you with smooth strokes, making you moan with the feelings as his shaft hits just the right spots inside you. You run your hands over his chest, feeling his muscles while your legs wrap around his hips to pull him even deeper with each of his thrusts. Soon he speeds up even more, groaning louder and louder as he gets closer to orgasm.";
		say "     Then he shouts 'I'm coming!' and you feel a shudder run through his body as the first blast of his human cum shoots deep inside your body. You pull him down on top of you, hugging him close and kissing him as his cock twitches again and again, filling you to the brink with his fertile seed.[fimpregchance]";
		say "     [line break]";
		if thirst of David is 10:  						[fuck buddy]
			say "     You lay there for a while, entwined and kissing, with his slowly softening cock still inside you. As both of you come down from the rush of sex, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. 'You're an amazing fuck-buddy, you know. I'll miss you after all this is over.'";
		otherwise if thirst of David is 20:  	[boy/girlfriend]
			say "     You lay there for a while, entwined and kissing, with his slowly softening cock still inside you. As both of you come down from the rush of sex, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. 'I love having you as my [if cocks of player > 0]boyfriend[otherwise]girlfriend[end if]. You're just amazing.' he says and gives you another deep kiss.";
		otherwise:    												[worrying about cheating on his girlfriend]
			say "     You lay there for a while, entwined and kissing, with his slowly softening cock still inside you. As both of you come down from the rush of sex and David's brain starts working again, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. Then a worried look comes over his face and he adds 'But... I just cheated on Ann - again!'";

to say DavidSex4:												[player ass fucked]
	setmonster "human";
	choose row monster from the table of random critters;
	if David is in Parade Ground:
		say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then feel the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard.";
	otherwise:
		say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the fabric you feel his manhood already filling out, as his body reacts to your kiss and touch.";
	say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
	say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you push David to lie on one of the nearby bunks, then climb on top of him, straddling his hips.";
	say "     [WaitLineBreak]";
	say "     Reaching back to hold his hard cock up, you push it against your hole, then slowly sink your ass down, impaling yourself on his manhood. David moans 'So tight.' as his shaft goes deeper into your tightly gripping asshole, his hands holding on to and stroking your hips. Then he bottoms out in you and you can feel a pleasant fullness and the warmth of his crotch against your buns. You stay still for a moment to revel in the feeling, then start sliding up and down on the hard shaft.";
	say "     Fucking yourself on his cock, you make David moan and gasp under you, holding on tight to sides of the bunk. Then, after a while, you pull off him with a slight *plop* and say 'Your turn on top - fuck me hard and deep.' Laying down next to him, you give him a quick kiss, then spread your legs and wiggle your ass invitingly.";
	say "     Without hesitation, he moves to kneel behind you, then sets the tip of his hard cock against your pucker and plunges in. The young soldier fucks you hard and fast, grinding his hips against your ass and moaning into your ear with his arms around your chest. With each frenzied thrust you move closer to orgasm, and soon you're pushed over the brink, spraying your seed into the bedsheets below you. Your anal muscles twitching and tightening around his cock with each burst of your cum, David joins you in orgasm, flooding your insides with his human seed.[mimpregchance]";
	say "     [line break]";
	if thirst of David is 10:  						[fuck buddy]
		say "     You lay there for a while, with him resting on your back and his slowly softening cock still inside you. As both of you come down from the rush of sex, he pants 'Nice ass, it's really tight' and you feel his manhood twitch inside you once. 'You're an amazing fuck-buddy, you know. I'll miss you after all this is over.'";
	otherwise if thirst of David is 20:  	[boy/girlfriend]
		say "     You lay there for a while, with him resting on your back and his slowly softening cock still inside you. As both of you come down from the rush of sex, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. 'I love having you as my [if cocks of player > 0]boyfriend[otherwise]girlfriend[end if]. You're just amazing.' he says and slides over to lie beside you, giving you another deep kiss.";
	otherwise:    												[worrying about cheating on his girlfriend]
		say "     You lay there for a while, with him resting on your back and his slowly softening cock still inside you. As both of you come down from the rush of sex and David's brain starts working again, he pants 'Wow, that was... just wow.' and you feel his manhood twitch inside you once. Then a worried look comes over his face and he adds 'But... I just cheated on Ann - again!'";

to say DavidSex5:												[David ass fucked]
	if thirst of David is 0:							[first time]
		if David is in Parade Ground:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss before he can react. There's a look of alarm in his eyes for a second, then he accepts your tongue exploring his mouth and gives in. As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but quickly falls silent as you reach down and stroke the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard and pretty pliable.";
		otherwise:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss before he can react. There's a look of alarm in his eyes for a second, then he accepts your tongue exploring his mouth and gives in. As you come back up for air, he stammers 'I - I shouldn't... we're not supposed to...', but quickly falls silent as you reach down and stroke his crotch, a bulge quickly forming in his pants. Not getting any relief except rushed masturbation in the weeks and months since the outbreak started, Private Jackson is like putty in your hands, his horny body telling him to go along with anything you want.";
	otherwise:														[already had some sex]
		if David is in Parade Ground:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then feel the bulge in his pants. With all the minotaur pheromones in the air here, he's already half hard.";
		otherwise:
			say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the fabric you feel his manhood already filling out, as his body reacts to your kiss and touch.";
	say "     As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's lustful moans, he's ready for the real thing.";
	if lust of David is 0:								[anal virgin]
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you give him another quick kiss on the lips, then spin him around and push him towards one of the nearby bunks.";
		say "     [WaitLineBreak]";
		say "     With a moaned 'On all fours', you guide him onto the mattress, then pull his ass up a bit as you kneel behind him. You rub your rock-hard [cock of player] cock up and down between the round buns of his bubble butt, then lean over him and whisper 'I'm gonna fuck you now' in his ear. As horny as you've gotten him, he doesn't protest and just moans as you bring the tip of your cock to his tight opening. Pushing forward with increasing pressure, David's pucker resists you for a moment, then opens up and allows your cockhead to slide into the tight embrace of his ass. It's virgin territory for sure you're exploring here - and from his lust-filled groans as you slowly slide deeper into him, you're being very well received.";
		say "     As you bottom out inside his ass, you give his cock a few strokes, then move your hands back to his hips. Holding on tightly, you start pulling out almost all the way and hammering your shaft back inside him in quick deep strokes, filling the [if David is in Bunker]room [otherwise]tent [end if]with slapping noises as your hips meet his butt. His tightly gripping hole feels just amazing around your thrusting member, filling you with ecstasy as you very thoroughly take his virginity.";
		say "     Getting shafted like this soon drives your handsome Private over the edge, his cock spraying a huge load of cum all over the bedsheets under him. David's ass muscles quiver and flex with each shot of seed erupting from his cock, giving you all new sensations as you move in and out of him. Then it's your turn, and with one final deep thrust you push inside David all the way and fill his insides with spurt after spurt of warm seed.";
		now lust of David is 1;
	otherwise:														[repeat anal]
		say "     Opening up the zipper of his pants and letting them drop down, you free his raging hard-on, standing proudly erect in your direction. Quickly stripping off your own clothes, you give him another quick kiss on the lips and say 'Let's fuck.'";
		say "     [WaitLineBreak]";
		say "     Eager to get fucked, David gets on the next bunk on all fours, invitingly wiggling his ass at you. You kneel behind him and rub your rock-hard [cock of player] cock up and down between the round buns of his bubble butt, then lean over him and kiss is neck. He moans as you bring the tip of your cock to his tight opening and tease him a bit with it. Pushing forward with increasing pressure, David's pucker resists you for a moment, then opens up and allows your cockhead to slide into the tight embrace of his ass. He's still tight as he was when you took his virginity and giving lust-filled groans as you slowly slide deeper into him.";
		say "     As you bottom out inside his ass, you give his cock a few strokes, then move your hands back to his hips. Holding on tightly, you start pulling out almost all the way and hammering your shaft back inside him in quick deep strokes, filling the [if David is in Bunker]room [otherwise]tent [end if]with slapping noises as your hips meet his butt. His tightly gripping hole feels just amazing around your thrusting member, filling you with ecstasy as you give him a good fucking.";
		say "     Getting shafted like this soon drives your handsome Private over the edge, his cock spraying a huge load of cum all over the bedsheets under him. David's ass muscles quiver and flex with each shot of seed erupting from his cock, giving you all new sensations as you move in and out of him. Then it's your turn, and with one final deep thrust you push inside David all the way and fill his insides with spurt after spurt of warm seed.";
	say "     [WaitLineBreak]";
	if thirst of David is 10:  						[fuck buddy]
		say "     You keep kneeling like that for a moment, with your arms around his chest from behind and still connected through your dick in his ass. As both of you come down from the rush of sex, he pulls off your cock and sits next to you on the bed. 'Incredible how good having something up my ass feels. I'll have to talk Ann into getting some toys...'";
	otherwise if thirst of David is 20:  	[boy/girlfriend]
		say "     You keep kneeling like that for a moment, with your arms around his chest from behind and still connected through your dick in his ass. As both of you come down from the rush of sex, you pull out and lie on the bed with David, face to face. He smiles at you, cuddling close and gives you a kiss. 'That was amazing. You're an incredible boyfriend, you know.'";
	otherwise if thirst of David is 0:    [first time worrying]
		say "     You keep kneeling like that for a moment, with your arms around his chest from behind and still connected through your dick in his ass. As both of you come down from the rush of sex and David's brain starts working again, he looks over his shoulder at you with a questioning expression. 'I like... this,' he says and you feel his asshole tighten for a second around your member. 'Does that mean I'm gay?' With a worried look he adds 'I got a girlfriend back home, you know.'";
		say "     After giving him a playful slap on his firm buttocks as you pull out, you calm him down a bit by telling that he just might be bisexual and that he should use the opportunity to try out the whole spectrum of possible partners. The girlfriend situation will surely work itself out once he knows what he really wants. Although judging from his load all over the wall, you're pretty certain you left a lasting impression on him, opening him up more man-on-man action...";
	otherwise:    												[worrying about cheating on his girlfriend]
		say "     You keep kneeling like that for a moment, with your arms around his chest from behind and still connected through your dick in his ass. As both of you come down from the rush of sex and David's brain starts working again, he looks over his shoulder at you with a questioning expression. 'I like... this,' he says and you feel his asshole tighten for a second around your member. 'But even if I'm just Bi as you say - this is till cheating on Ann.'";

to say DavidSex6:												[Sven's ass gets fucked by David]
	setmonster "human";
	choose row monster from the table of random critters;
	say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the material of his pants you feel his manhood already filling out, as his body reacts to your kiss and touch. As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's urgent moans, he's ready for some action.";
	say "     Smiling, you whirl David around and wrap your arms around his chest from behind, then move a hand down to his crotch. Sliding it under the band of his pants, you fondle your soldier boy's cock and balls, making him pant and groan in lust some more, then whisper in his ear to look over to one of the farther-away beds in the bunker. There, your snowmeow kitty Sven is lying on his stomach, reading a book, tail waving in the air above his enticing furry butt. As wound-up as you already have David, it doesn't take much more than describing how Sven's tight and ready hole would feel around his cock to get him interested. After undoing the soldier's pants and letting them drop, you quickly get rid of your own clothes and the two of you walk over towards Sven naked.";
	say "     [WaitLineBreak]";
	say "     You're almost at the bed before Sven notices you and turns his head, eyes going wide as he sees [if cunts of player > 0 and cocks of player is 0]his mistress and her human friend [otherwise]his master and his human friend [end if]walk towards him in the nude - and quite obviously horny. A shy but eager smile spreads over his face, then you're with him and start softly scritching behind his ears, which has Sven close his eyes and purr in contentment. David meanwhile runs a hand along the snow leopard's tail flirting in the air before him and asks 'I - can I fuck you?' Sven just keeps purring loudly, then stretches his body and raises his furry butt in unmistakable eagerness.";
	say "     Taking a kneeling position behind the sexy kitty, David grabs his hard cock and rubs it teasingly over Sven's pucker and making it wet with his precum. Your feline pet's tail meanwhile strokes against David's naked chest, its end curling around his back almost as if to pull him closer. You can hear David mutter 'Such soft  fur you have, pretty kitty' under his breath, then he's pressing forward against Sven, his hard cock spreading open the snowmeow's tailhole. 'Yes! Fuck me, please!' Sven mrowls in delight, grinding his ass backwards to meet each thrust as David starts pounding into him.";
	say "     [WaitLineBreak]";
	if cocks of player > 0:
		say "     With your two friends already enjoying each other's bodies, it's for you to decide where and how you want to join in. Do you present your cock to Sven and have him lick it (Y), or will you move in behind David and fuck his ass (N)? ";
		if player consents:
			say "     [line break]";
			say "     Getting on the bed at its head end, you sit right in front of Sven and spread your legs wide, then pull his head down on your crotch. The eager feline licks and sucks at your cock, getting it fully hard before taking it into his muzzle[if cunts of player > 0] while his paws stroke and tease at your pussy[end if]. He's gotten quite good at this now in just a short time - amazingly so, in fact, as your feline sex pet can still do it while distracted by a hard cock fucking his ass. You continue to stroke his head and ears as you moan compliments to Sven and he bobs his head steadily over your cock while his raspy tongue slides all over it, focusing on every sensitive spot he's learned.";
			say "     His softly furred paws travel over your rear, caressing your hips and thighs[if cunts of player > 0] before sinking a pair of fingers into your cunt[end if]. He makes sure to pace his licking and sucking, letting you build increasingly to greater heights.  When finally your climax does come, you blast your cum down his throat as you drain your aching balls with a loud groan of ecstasy. Smiling around your cock, he makes sure to swallow it all down. Just moments later, the satisfaction of getting his mistress off pushes your kitty over the edge too and with a yowl, he starts blasting his ample load onto the blanket below. And not long after that, David joins the two of you in orgasm, slamming deep into the snowmeow's ass and sending shot after shot into the feline's furry butt. After taking a moment to catch his breath, David eases his cock out of Sven's freshly creamed hole and moves over to give you a kiss. Then he says 'Thanks little buddy, you were amazing.' to Sven and starts petting and stroking your pet's furry body all over.";					
		otherwise:
			say "     [line break]";
			if lust of David is 0: 	[anal virgin]
				say "     Your eyes on the shapely form of David's bubble butt, you get on the bed behind him. Then you move a bit closer and cup his firm cheeks, spreading them a bit as your hard [cock of player] cock bumps against his virgin hole. This is such a nice opportunity to break David in for some good fucking that you just can't wait to get into him. Taking hold of your shaft with one hand, you line it up with his pucker, then push in against the soldier's body. Soon the muscle yields and you pop in, becoming the first man to explore his delightfully tight depths. David gasps as his hole is spread for the first time by your invading member, but soon starts moaning even louder than before as you sink yourself deeper and deeper, rubbing against his prostrate.";
				now lust of David is 1; 	[anally de-virginized]
			otherwise:
				say "     Your eyes on the shapely form of David's bubble butt, you get on the bed behind him. Then you move a bit closer and cup his firm cheeks, spreading them a bit as your hard [cock of player] cock bumps against his hole. You can't wait to get back into his nice and tight soldier ass. Taking hold of your shaft with one hand, you line it up with his pucker, then push in against the soldier's body. David gasps in lust as his hole is spread by your invading member, then starts moaning even louder than before as you sink yourself deeper and deeper, rubbing against his prostrate.";
			say "     Pounding David's ass with deep thrusts, you revel in the moans, gasps and slapping noises of your hips against his ass filling the whole bunker. Who'd have thought that post-apocalyptic survival would be like this? Fucking the tight hole of a handsome man while he himself is balls deep in a hot little catboy who's your pet - hell yeah, you'd pick this any day against your 'normal' life before. But moving your thoughts back to the thing at hand - or rather the hole you're balls deep in - you decide to change your rhythm of thrusts to match David's, moving in unison as the three of you fuck.";
			say "     [WaitLineBreak]";
			say "     Being penetrated at the same time as fucking Sven's furry ass has David pretty hot and bothered, and before too much longer, he moans 'I'm gonna... cummMMM!' He grabs the snow leopard's hips to pull him tight against his crotch as his whole body shudders when spurt after spurt of cum shoot out of his cock and deep into Sven's body. Getting bred by the young man, his body being filled with spurt after spurt of cum, drives your feline pet over the edge right with him, and with a lust-filled yowl, Sven starts blasting his ample load onto the blanket below. Meanwhile, your thrusting member being gripped by David's twitching anal muscles soon gives you the last bit of stimulation you need. Shoving your cock in all the way as you feel the need to cum rise inside your balls, a massive load of cum blasts through your shaft and into David's hole.";
			say "     Exhausted by the hot fuck, you wrap your arms around David from the back and just hold on to him, your slowly softening shaft still inside his asshole. After catching your breath, you pull out and give your human friend a deep kiss, then go grab a towel and clean yourself up a bit. David eases his cock out of Sven's freshly creamed hole, then says 'Thanks little buddy, you were amazing.' to the still purring kitty and starts petting and stroking your pet's furry body all over.";
	otherwise if cunts of player > 0:
		say "     Getting on the bed at its head end, you sit right in front of Sven and spread your legs wide, then pull his head down on your crotch. The eager feline licks and fingers your pussy, getting you quite excited before alternating between diving his tongue and sliding [if cunt width of player > 5]a paw into your wide pussy[otherwise if cunt width of player > 2]three fingers into your ample pussy[otherwise]a pair of fingers into your wet pussy[end if]. He's gotten quite good at this now in just a short time - amazingly so, in fact, as your feline sex pet can still do it while distracted by a hard cock fucking his ass. He tweaks your clit while his raspy tongue slides everywhere it can get, focusing on every sensitive spot he's learned.";
		say "     Sven makes sure to pace his licking and fingering, letting you build increasingly to greater heights. When finally your climax does come, you spray your hot juices over his tongue and paw with a loud groan of ecstasy. Just moments later, the satisfaction of getting his mistress off pushes your kitty over the edge too and with a yowl, he starts blasting his ample load onto the blanket below. And not long after that, David joins the two of you in orgasm, slamming deep into the snowmeow's ass and sending shot after shot into the feline's furry butt. After taking a moment to catch his breath, David eases his cock out of Sven's freshly creamed hole and moves over to give you a kiss. Then he says 'Thanks little buddy, you were amazing.' to Sven and starts petting and stroking your pet's furry body all over.";
	otherwise:
		say "     Not having any genitals of your own, you just get on the bed at the head end and sit right in front of Sven, your hands still rubbing and stroking him affectionately. Purring loudly, he replies in kind, caressing your body and lapping at your bare but nevertheless sensitive crotch to give you pleasure. Sven makes sure to pace his licking and fingering, letting you build increasingly to greater heights. When finally your climax does come, a tingling feeling of fulfillment spreads out through your body, making you groan loudly in ecstasy. Just moments later, the satisfaction of getting his master off pushes your kitty over the edge too and with a yowl, he starts blasting his ample load onto the blanket below. And not long after that, David joins the two of you in orgasm, slamming deep into the snowmeow's ass and sending shot after shot into the feline's furry butt. After taking a moment to catch his breath, David eases his cock out of Sven's freshly creamed hole and moves over to give you a kiss. Then he says 'Thanks little buddy, you were amazing.' to Sven and starts petting and stroking your pet's furry body all over.";

to say DavidSex7:												[Brutus & David Scene (David gives oral)]
	say "     Stepping up close to the young soldier, you... casually mention that you won't be needing Brutus assistance for a while. [if companion of player is demon brute]Perking up visibly at your announcement, David's eyes immediately are drawn to the demon's muscular form, standing not too far away in all his naked glory. With a chuckle, you tell the man to just go for it and spend some time with his friend. [otherwise]Perking up visibly at your announcement, David's eyes immediately are drawn to the demontooth amulet around your neck. With a chuckle at the mixed expression of hope and lust in his gaze, you give him a nod and intone the magic words to summon Brutus. While the cloud of purple smoke starts to swirl out of the amulet to coalescence into Brutus form, you tell David to have fun as he spends some time with his friend. [end if]Not wasting a second, David immediately moves over to Brutus and puts a hand on his arm, giving it an affectionate squeeze, and says 'Hey there, big guy. Looks like you've got some time off, so how about we...' And that's as far as he gets, as your demon companion just leans down with a rumbling purr and gives him a hungry kiss, then bodily picks up his human friend and gently gropes his ass with a clawed hand.";
	say "     With David still held tight against his broad chest, Brutus walks over to the soldier's bed and sits down on it, then proceeds to make out passionately with the young man. For now, you just watch your two friends kiss and touch each other, staying far enough away to give them at least some privacy. The demon and human whisper a bit back and forth in between kisses, then after a while, David stands up from his position on Brutus lap and starts to undress. His boots are quickly pulled off and thrown aside, followed by socks and his pants. Then the young man pulls his shirt up over his head, revealing a fit chest and nicely sculpted abs. With a wide smile on his face, he finishes up by turning around, then bending over to push down his underwear, giving Brutus a very nice and close view of his firm butt.";
	say "     [WaitLineBreak]";
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:   [male+herm Brutus]
		say "     After his little strip-show, David kneels down between the legs of a now - very - obviously aroused Brutus and reaches out to touch the demon's massive cock. Your infernal companion lets out a lust-filled groan as David fondles his weighty balls for a moment, then proceeds to stroke Brutus erection. Holding the thick shaft up, David runs his tongue up the underside until he gets to the tip and licks up the big drop of precum forming at its slit. 'Mmmmh!' the young man hums loudly, then slides his lips over Brutus cockhead, suckling on it and teasing it with his tongue. With that being the maximum he can fit into his mouth, David puts both hands on Brutus shaft, jerking him off while giving him a blowjob.";
		say "     When the redeemed demon's lustful grunts become louder and more urgent pretty quickly, David slows down a bit, not wanting to get Brutus off too quickly. Pulling off the thick shaft, he lets his hands wander over Brutus body for a moment, stroking and caressing the curves of his muscular physique before getting back to slowly stroking the demon's erection. He keeps going on like that for some time, jerking and touching Brutus, as well as giving him some teasing licks with his tongue, keeping his infernal friend just at the edge of orgasm. Brutus moans take on an almost pleading tone after a while and his hands[apostrophe] grip on the metal frame of the bed gets tighter and tighter, but no matter what, he keeps sitting still, having surrendered control over him getting off to David.";
		say "     [WaitLineBreak]";
		say "     Finally, the soldier decides that he's teased Brutus enough and gets back to all-out sucking on the demon's massive cock, jerking its shaft with both hands. Having been so close to orgasm for some time now, it doesn't take more than a moment until Brutus reaches his climax with a loud roar and the first of many big spurts of cum shoots into David's mouth. He does his best to swallow it all, but before he can manage that, the next blast and the next force David to pull off the demon's shaft, making further blasts splash all over his neck and chest. When Brutus finally winds down from his orgasm, his human friend is literally dripping with cum and there is an off-white puddle on the bunker floor under him.";
		say "     'That was great. Thanks, baby.' Brutus rumbles to David and gives him a kiss, then lifts the smaller human on his lap and starts to lap at his chest, slurping up his own cum and playing a long forked tongue over David's muscles. After the hot make-out session that Brutus method of 'cleaning up' soon escalates into, the two of them get on the bed together and rest, with David half draped over Brutus large form. They continue to silently talk and whisper to each other for some time, then eventually doze off.";
	otherwise if DemonBruteStatus is 2:    [female Brutus]
		say "     After his little strip-show, David kneels down between the legs of a now - very - obviously aroused Brutus and reaches out to touch the demon's pubic mound. Your infernal companion lets out a lust-filled groan as David brushes his fingers over his sensitive pussy lips for a moment, then proceeds to push Brutus legs a bit further apart. Leaning forward, David licks over Brutus now spread folds, making the demon shiver and pant as he teases his clit with the tip of his tongue. After giving him some oral attention for a while, David then proceeds to stick to fingers in between Brutus nether lips, pushing them in and out of the gender-shifted demon.";
		say "     With David switching up between licking and teasing as well as finger-fucking Brutus, the redeemed demon's lustful grunts become louder and more urgent pretty quickly, so David slows down a bit, not wanting to get Brutus off too quickly. Pulling back from Brutus crotch, he lets his hands wander over the demon's body for a moment, stroking and caressing the curves of his muscular physique before getting back to gently brushing over his pussy lip. David keeps going on like that for some time, stroking and licking Brutus, keeping his infernal friend just at the edge of orgasm. Brutus moans take on an almost pleading tone after a while and his hands[apostrophe] grip on the metal frame of the bed gets tighter and tighter, but no matter what, he keeps sitting still, having surrendered control over him getting off to David.";
		say "     [WaitLineBreak]";
		say "     Finally, the soldier decides that he's teased Brutus enough and gets back to all-out pleasing the demon, licking at his clit while pumping his fingers in and out of Brutus pussy. Having been so close to orgasm for some time now, it doesn't take more than a moment until Brutus reaches his climax with a loud roar and twitching and bucking as femcum gushes out of his vagina and splashes all over David. When Brutus finally winds down, his human friend is literally dripping, with a puddle on the bunker floor at his feet.";
		say "     'That was great. Thanks, baby.' Brutus rumbles to David and gives him a kiss, then lifts the smaller human on his lap and starts to lap at his chest, slurping up his own femcum and playing a long forked tongue over David's muscles. After the hot make-out session that Brutus method of 'cleaning up' soon escalates into, the two of them get on the bed together and rest, with David half draped over Brutus large form. They continue to silently talk and whisper to each other for some time, then eventually doze off.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";			

to say DavidSex8:												[Brutus & David Scene (BJ by Brutus)]
	say "     Stepping up close to the young soldier, you... casually mention that you won't be needing Brutus assistance for a while. [if companion of player is demon brute]Perking up visibly at your announcement, David's eyes immediately are drawn to the demon's muscular form, standing not too far away in all his naked glory. With a chuckle, you tell the man to just go for it and spend some time with his friend. [otherwise]Perking up visibly at your announcement, David's eyes immediately are drawn to the demontooth amulet around your neck. With a chuckle at the mixed expression of hope and lust in his gaze, you give him a nod and intone the magic words to summon Brutus. While the cloud of purple smoke starts to swirl out of the amulet to coalescence into Brutus form, you tell David to have fun as he spends some time with his friend. [end if]Not wasting a second, David immediately moves over to Brutus and puts a hand on his arm, giving it an affectionate squeeze, and says 'Hey there, big guy. Looks like you've got some time off, so how about we...' And that's as far as he gets, as your demon companion just leans down with a rumbling purr and gives him a hungry kiss, then bodily picks up his human friend and gently gropes his ass with a clawed hand.";
	say "     With David still held tight against his broad chest, Brutus walks over to the soldier's bed and sits down on it, then proceeds to make out passionately with the young man. For now, you just watch your two friends kiss and touch each other, staying far enough away to give them at least some privacy. The demon and human whisper a bit back and forth in between kisses, then after a while, David stands up from his position on Brutus lap and starts to undress. His boots are quickly pulled off and thrown aside, followed by socks and his pants. Then the young man pulls his shirt up over his head, revealing a fit chest and nicely sculpted abs. With a wide smile on his face, he finishes up by turning around, then bending over to push down his underwear, giving Brutus a very nice and close view of his firm butt.";
	say "     [WaitLineBreak]";
	say "     Not being able to keep his hands to himself during such an enticing show, Brutus reaches out and caresses the young man's cheeks, then pulls him closer to himself. Reaching around David, the large demon takes hold of his human lover's cock and slowly strokes it, making him pant and moan in lust. The soldier just enjoys getting touched for a moment, then gently takes hold of Brutus large hands and pulls them away, turning and stepping up on the bed in the progress. Coming to stand with his feet left and right of the demon's legs, David's hips now being at just about the right height for Brutus to suck his cock. The human and demon share an intense, lust-filled gaze into each other's eyes for a moment, then David takes hold of Brutus front horns and pulls his head towards his crotch.";
	say "     Following his partner's guidance, Brutus doesn't hesitate to bring his long forked tongue into play, running it over David's crotch, licking his balls, even snaking it between his legs to poke the young soldier's asshole for a second, before he wraps it around his cock. His large hands reach up to hold on to David's hips, fingers softly squeezing his buttcheeks while his tongue plays over the human's manhood, licking and squeezing. After some more teasing, he gently takes hold of it with his lips and goes down on it, taking care to keep the precious piece away from all the sharp teeth filling his mouth as he bobs up and down. Judging from David's groans and urgent panting, it's pretty obvious that he's doing an amazing job at giving oral sex.";
	say "     [WaitLineBreak]";
	say "     As good as the blowjob is making him feel, David still doesn't forget about Brutus pleasure. You can see him look over his shoulder and down at Brutus massive, hard cock, then he tells the demon to stop for a moment and pulls his own cock out of Brutus mouth. Holding on to his partner's wide shoulders, David then lowers himself to kneel over Brutus lap, allowing the demon's hot shaft to rub against his body. Having David slide his crack up and down on his infernal pole makes Brutus give an aroused groan, just panting loudly for a moment before he leans forward and down and starts up with the blowjob again.";
	say "     With the two of them pretty wound up and close, it doesn't take too much longer until David shouts 'I'm gonna cuummmMMM!' and thrusts his hips forward, holding on tight to Brutus horns as he blasts his load down in the demon's mouth. His whole body shakes and twitches with each spurt that Brutus eagerly swallows. When David finally winds down some short while after, he sinks down to fully sit on Brutus lap and seeks out his lips for a long and deep kiss, followed by another and another. While still tongue-wrestling with his demon friend, he starts sliding himself back and forth on top of Brutus still massively erect cock, driving him to his own orgasm just moments later. The thick member starts pulsing as squirt after massive squirt of cum blasts out of it, shooting as far as the bed two rows over, almost reaching the third and creating a long line of white splatters.";		
	say "     [WaitLineBreak]";	
	say "     'That was great. Thanks, baby.' Brutus rumbles to David and gives him a quick kiss, then pulls him close to his chest as he lies down on the bed. Worn out from sex, the two of them end up resting together, with David half draped over Brutus large form. They continue to silently talk and whisper to each other for some time, then eventually doze off.";	

to say DavidSex9:												[Brutus & David Scene (Brutus gets fucked)]
	say "     Stepping up close to the young soldier, you... casually mention that you won't be needing Brutus assistance for a while. [if companion of player is demon brute]Perking up visibly at your announcement, David's eyes immediately are drawn to the demon's muscular form, standing not too far away in all his naked glory. With a chuckle, you tell the man to just go for it and spend some time with his friend. [otherwise]Perking up visibly at your announcement, David's eyes immediately are drawn to the demontooth amulet around your neck. With a chuckle at the mixed expression of hope and lust in his gaze, you give him a nod and intone the magic words to summon Brutus. While the cloud of purple smoke starts to swirl out of the amulet to coalescence into Brutus form, you tell David to have fun as he spends some time with his friend. [end if]Not wasting a second, David immediately moves over to Brutus and puts a hand on his arm, giving it an affectionate squeeze, and says 'Hey there, big guy. Looks like you've got some time off, so how about we...' And that's as far as he gets, as your demon companion just leans down with a rumbling purr and gives him a hungry kiss, then bodily picks up his human friend and gently gropes his ass with a clawed hand.";
	say "     With David still held tight against his broad chest, Brutus walks over to the soldier's bed and sits down on it, then proceeds to make out passionately with the young man. For now, you just watch your two friends kiss and touch each other, staying far enough away to give them at least some privacy. The demon and human whisper a bit back and forth in between kisses, then after a while, David stands up from his position on Brutus lap and starts to undress. His boots are quickly pulled off and thrown aside, followed by socks and his pants. Then the young man pulls his shirt up over his head, revealing a fit chest and nicely sculpted abs. With a wide smile on his face, he finishes up by turning around, then bending over to push down his underwear, giving Brutus a very nice and close view of his firm butt.";
	say "     [WaitLineBreak]";
	if DemonBruteStatus is 2 or DemonBruteStatus is 1:   [female+herm Brutus]
		say "     Not being able to keep his hands to himself during such an enticing show, Brutus reaches out and caresses the young man's cheeks, then takes hold of his erect manhood. The demon slowly jerks his friend off for a moment, then his deep voice rumbles 'I want to feel you inside me...' Leaning back on the bed Brutus pulls up his legs, holding them with both hands in a spread position that bares his wet pussy for David. Spinning to face his demon lover, the soldier eagerly steps forward and rubs his cock over Brutus[apostrophe] swollen nether lips, then nudges them apart with the tip of his shaft. Both of them moan in arousal as David's invading member sinks deeper into his infernal partner's warm depths. When he finally bottoms out inside him, David's balls resting against Brutus crotch, he takes a moment to savour the feeling, taking deep breaths and stroking Brutus legs.";
		say "     After a short while of having his human partner just stay still with his cock buried in his vagina, Brutus gets a bit impatient and starts to flex his inner muscles around David's shaft. In a tone that betrays his deep-seated need, he groans 'Fuck me. Now!' - prompting David to immediately pull back till only the head of his cock is left inside him, then start thrusting in and out. The demon moans loudly each time his human partner bottoms out inside him and quickly starts to pant 'Harder! Faster!' Speeding up more and more oblige Brutus, soon David is really pounding the demon, his hips slapping against Brutus muscular buttcheeks with each thrust. While he's getting fucked hard and deep, Brutus long tail rubs up against David, sometimes wrapping around his chest or leg.";
		say "     [WaitLineBreak]";
		say "     The demon brute is the first one to cum from their coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against David [if DemonBruteStatus is 1]and starts spraying long ropes of cum all over himself while gushing gushing femcum out of his vagina[otherwise]and his pussy gets wet with femcum gushing out of it[end if]. With Brutus inner muscles twitching around his cock, David isn't far behind, his arousal quickly mounting to a breathtaking orgasm after just a few more thrusts. Bringing out a loud gasp, he slams into Brutus one last time, his shaft buried deeply as it starts unloading spurt after spurt of cum. Holding on to the demon's legs as his own knees get a bit weak, the young man fills Brutus womb with his human seed.";
		say "     As he finishes coming, David gently pulls his softening cock out, then climbs on the bed to give Brutus a kiss. After a bit of moving around, the two of them end up stretched out on the bed together, with David half draped over Brutus large form. They continue to silently talk and whisper to each other for some time, then eventually doze off.";				
	otherwise if DemonBruteStatus is 0:    [male Brutus]
		say "     Not being able to keep his hands to himself during such an enticing show, Brutus reaches out and caresses the young man's cheeks, then takes hold of his erect manhood. The demon slowly jerks his friend off for a moment, then his deep voice rumbles 'I want to feel you inside me...' Leaning back on the bed Brutus pulls up his legs, holding them with both hands in a spread position that bares his asshole for David. Spinning to face his demon lover, the soldier eagerly steps forward and rubs his cock over Brutus[apostrophe] pucker, then slowly pushes forward until his shaft pops inside. Both of them moan in arousal as David's invading member sinks deeper into his infernal partner's warm depths. When he finally bottoms out inside him, David's balls resting against Brutus muscled cheeks, he takes a moment to savour the feeling, taking deep breaths and stroking Brutus legs.";
		say "     After a short while of having his human partner just stay still with his cock buried in his ass, Brutus gets a bit impatient and starts to flex his inner muscles around David's shaft. In a tone that betrays his deep-seated need, he groans 'Fuck me. Now!' - prompting David to immediately pull back till only the head of his cock is left inside him, then start thrusting in and out. The demon moans loudly each time his human partner bottoms out inside him and quickly starts to pant 'Harder! Faster!' Speeding up more and more oblige Brutus, soon David is really pounding the demon's ass, his hips slapping against Brutus muscular buttcheeks with each thrust. While he's getting fucked hard and deep, Brutus long tail rubs up against David, sometimes wrapping around his chest or leg.";
		say "     [WaitLineBreak]";
		say "     The demon brute is the first one to cum from their coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against David and cum starts gushing out of his thick shaft. Spurt after massive spurt jets up into the air, most landing on his chest and a few even hitting Brutus in the face, to be quickly licked up by his long forked tongue. With Brutus anal muscles twitching around his cock with each burst of the demon's cum, David isn't far behind, his arousal quickly mounting to a breathtaking orgasm after just a few more thrusts. Bringing out a loud gasp, he slams into Brutus one last time, his shaft buried deeply as it starts unloading spurt after spurt of cum. Holding on to the demon's legs as his own knees get a bit weak, the young man fills Brutus insides with his human seed.";
		say "     As he finishes coming, David gently pulls his softening cock out, then climbs on the bed to give Brutus a kiss. After a bit of moving around, the two of them end up stretched out on the bed together, with David half draped over Brutus large form. They continue to silently talk and whisper to each other for some time, then eventually doze off.";		
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";			

to say DavidSex10:											[Brutus & David Scene (David gets fucked)]
	say "     Stepping up close to the young soldier, you... casually mention that you won't be needing Brutus assistance for a while. [if companion of player is demon brute]Perking up visibly at your announcement, David's eyes immediately are drawn to the demon's muscular form, standing not too far away in all his naked glory. With a chuckle, you tell the man to just go for it and spend some time with his friend. [otherwise]Perking up visibly at your announcement, David's eyes immediately are drawn to the demontooth amulet around your neck. With a chuckle at the mixed expression of hope and lust in his gaze, you give him a nod and intone the magic words to summon Brutus. While the cloud of purple smoke starts to swirl out of the amulet to coalescence into Brutus form, you tell David to have fun as he spends some time with his friend. [end if]Not wasting a second, David immediately moves over to Brutus and puts a hand on his arm, giving it an affectionate squeeze, and says 'Hey there, big guy. Looks like you've got some time off, so how about we...' And that's as far as he gets, as your demon companion just leans down with a rumbling purr and gives him a hungry kiss, then bodily picks up his human friend and gently gropes his ass with a clawed hand.";
	say "     With David still held tight against his broad chest, Brutus walks over to the soldier's bed and sits down on it, then proceeds to make out passionately with the young man. For now, you just watch your two friends kiss and touch each other, staying far enough away to give them at least some privacy. The demon and human whisper a bit back and forth in between kisses, then after a while, David stands up from his position on Brutus lap and starts to undress. His boots are quickly pulled off and thrown aside, followed by socks and his pants. Then the young man pulls his shirt up over his head, revealing a fit chest and nicely sculpted abs. With a wide smile on his face, he finishes up by turning around, then bending over to push down his underwear, giving Brutus a very nice and close view of his firm butt.";
	say "     [WaitLineBreak]";
	say "     Not being able to keep his hands to himself during such an enticing show, Brutus reaches out and caresses the young man's cheeks, then pulls him closer to himself and leans forward. Bringing his long forked tongue into play, the demon runs it up and down David's crack, teasing his pucker with the tip, then even snakes it between his legs to lick the soldier's balls and cock for a second, before coming back to his asshole. With a gentle push, it slips in, wiggling deep into David's body and teasing him in spots that make the young man shiver and gasp in arousal. While expertly eating out David's hole, Brutus strokes his massive erection with one hand spreading his precum all over it to get it nice and slippery, making very clear what he wants to do next. After some moments more of this, the demon suddenly stands and sweeps up David in his muscular arms, then lowers him on the bed to lie under him.";	
	say "     In a deep voice full of lust and need, Brutus says 'I want to fuck you. Now. Hard.' and David just moans yes and pulls his head down for a kiss. After coming back up for air, Brutus lifts and spreads his human lover's legs, then he moves forward, his massive member slowly increasing its pressure against David's asshole until the head pushes open his pucker, stretching it wide as he enters the soldier's body with his hard shaft. Knowing how big your infernal companion's manhood his, you're not surprised at all to hear David gasp from the initial penetration. But then, as it sinks deeper into his body, pleasant feelings prevail as the bumps on Brutus[apostrophe] shaft rub his inner walls. Even as relaxed as his muscles got during the thorough eating out the demon gave him it's still quite a lot to take. Thankfully, Brutus seems to know what very well, only slowly moving deeper and often stopping to just hold David so he can get used to it. Finally he bottoms out inside the human, hard shaft buried all the way and his two large cum-factories resting against his skin. Panting deeply, they find each other's lips and share kiss after kiss. It's pretty amazing if one thinks about it - this huge, muscular creature who was a ravening beast not too long ago, now together with a human on a bed, being as gentle as he can be with his equipment.";
	say "     [WaitLineBreak]";
	say "     A few minutes of making out with Brutus later, David tells him to continue - slowly. Moving in and out, the bumps on Brutus[apostrophe] cock rub against David's stretched insides, making him shudder with rising lust. From the looks of it, it becomes easier to have Brutus inside over time, with the demon leaking more and more precum and David's muscles being stretched out and getting used to it. Which allows your infernal companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against David's hips now coming in rapid succession. Soon, this drives the human's arousal over the edge and with a loud moan, his cock sprays cum all over his chest.";
	say "     Obviously very pleased at getting his friend off, and with David's asshole twitching around his cock as he orgasms, Brutus joins the young soldier in climax just moments later. With a satisfied roar, he slams his massive cock all the way into David and begins to pump his bowels full of his demonic seed. Easily filling David's asshole and intestines, the remaining cum starts squirting out around the demon's thick cock as he thrusts into him a few more times. As he finally removes his cock with a lout *pop*, David's stomach looks distended from the sheer amount of cum that was injected into him, with more of it leaking from his hole to soak into the sheets."; 	
	say "     [WaitLineBreak]";	
	say "     'That was great. Thanks, baby.' Brutus rumbles to David and gives him a quick kiss, then pulls him close to his chest as he rolls them over. Worn out from sex, the two of them end up resting together, with David half draped over Brutus large form. They continue to silently talk and whisper to each other for some time, then eventually doze off.";		
	
to say DavidSex11:											[Brutus & David Threesome (Brutus gets DP'd)]
	say "     Stepping up close to the young soldier, you put your arms around him and pull him in for a deep kiss, then let your hands wander down to his crotch. Through the material of his pants you feel his manhood already filling out, as his body reacts to your kiss and touch. As you make out with him some more, you slide your hands under his shirt and feel your way up his hard-muscled chest, then pull the fabric up and over his head. Leaning down a bit you run your tongue over his nipples, playfully sucking on first one, then the other. From David's urgent moans, he's ready for some action.";
	say "     Smiling, you whirl David around and wrap your arms around his chest from behind, then move a hand down to his crotch. Sliding it under the band of his pants, you fondle your soldier boy's cock and balls, making him pant and groan in lust some more, then ask him if he'd like to make this a threesome. [if companion of player is demon brute]Following a little nod of your head with his gaze, David's eyes get wide as he sees Brutus standing not too far away, already sporting a massive erection from just watching you fondle David. With a boyish grin, the young soldier tells you 'Sure, let's have some fun together', then waves Brutus closer with an eager expression. [otherwise] Following a little nod of your head with his gaze, David's eyes get wide as he focuses on the demontooth amulet around your neck. He runs a finger along the leather band and over the blackened tooth, then tells you with a boyish grin 'Sure, let's have some fun together.' Smiling at the eagerness of the young soldier, you intone the magic words to summon Brutus, who materializes in his full naked glory moments later. [end if]The three of you end up touching, kissing and undressing each other, which is so much fun that you almost have to force yourself to stop and guide your two friends over to David's bed.";
	say "     [WaitLineBreak]"; 
	say "     Sliding a hand down Brutus back, you give his left buttcheek an appreciative squeeze, then playfully brush your fingers over his pucker and tell the demon that you want to fuck his ass - together with David. With a pleased rumble, he answers 'Of course, Master', his cock twitching a bit in anticipation. 'Anything for you - and for you too' he says, the last bit directed to David and immediately followed by a deep kiss with the young soldier. Leaning down, Brutus picks David up bodily, then gently lowers him on his bed and climbs on it himself, moving into position on all fours over him. Brutus slides his hips down a bit, then a bit more until he feels David's hard cock against himself. Without any hesitation, he sinks his hole down over the human's erection, groaning in pleasure as it fills his tight hole.";
	say "     Watching your infernal companion fuck himself on David's manhood has you spellbound for a moment - such a big creature so eagerly riding a smaller male - until your throbbing erection reminds you to get involved yourself. Stepping up on the bed, you move into position behind Brutus and kneel down, taking hold of the base of his tail to get him to hold still for a moment. Then you line up your cock with his pucker and press in besides David's hard shaft. There is a groan from Brutus as you pop in and force his already stretched pucker to open even wider, though as you hold still for a moment and ask if he's okay, the demon just grunts 'Yes. Just fuck me. Hard. Now!' Oblieging the urgent request, you go on and thrust in, stuffing Brutus ass with your cock.";
	say "     [WaitLineBreak]"; 
	say "     The demon's hole is hot and tight around your [cock of player] manhood and the pulsing and grinding of your friend David's cock against your own only makes it even better[if cock length of player < 6]. When compared to David's nicely long shaft, your own his a bit shorter, but it still adds more to a well-stuffed hole. Brutus pants and moans loudly as his two favorite persons fuck him, really enjoying the full feeling it gives him.[otherwise if cock length of player < 11].  Further adding your [cock length of player] inch shaft alongside David's further stretches an already well-stuffed hole. The two of you are roughly the same length and you vie with him for who can thrust deeper into Brutus. The demon himself just pants and moans loudly as his two favorite persons fuck him, really enjoying the full feeling it gives him.[otherwise]. The addition of your cock, even longer than David's well-sized one, further stretches an already well-stuffed hole. Being the shorter one of you two just animates David to thrust even harder into Brutus ass, while the demon himself just pants and moans loudly as his two favorite persons fuck him, really enjoying the full feeling it gives him.[end if]";
	say "     Getting fucked in his muscled ass from below and behind drives Brutus further and further into a state of uncontrolled arousal. His moans and grunts get louder and wilder, gaining a beast-like intensity as he nears the point of no return. Then finally, he gives a loud roar and comes, hot demon seed spurting from his shaft and all over David's chest and face. The way the Brutus[apostrophe] ass clamps down around your poles and twitches with each blast of his cum shooting out sets the David and yourself off as well, blasting your loads deep into the demon's bowels. Your [cum load size of player] output mixes with the soldier's heavy load, filling the demon's ass with cream.";
	say "     [WaitLineBreak]"; 
	say "     Looking back over his shoulder, Brutus says 'Thank you, master', then he turns back to David ands tarts to lap at his chest and face, slurping up his own cum and playing a long forked tongue over David's muscles. Brutus method of 'cleaning up' soon escalates into a hot make-out session, and after a while the two of them move around a bit so they can stretch out on the bed together, with David half draped over Brutus large form.";
		
Section 3 - Endings

David ends here.