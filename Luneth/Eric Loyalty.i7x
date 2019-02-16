Version 1 of Eric Loyalty by Luneth begins here.
[Version 1: added loyalty variable and Mpreg route - Luneth]

[ Loyalty of Eric                                                     ]
[   0: No loyalty has been earned                                     ]
[   1: Recruited Eric                                                 ]
[   2: Gained a loyalty point                                         ]
[   3: Continuation                                                   ]

[ EricOrcPillMpreg                                                ]
[   0: Eric knows nothing of the pills and has not been dosed         ]
[   1: Eric knows about the orc pills                                 ]
[   2: Eric has taken a romantic orc pill                             ]
[   3: Eric has taken a casual orc pill                               ]
[  11: Eric was dosed with orc pills                                  ]


[ EricPregTimer                                                   ]
[     0: not pregnant                                                 ]
[  1-12: visibly pregnant by the player                               ]
[ 13-24: invisibly pregnant by the player                             ]

Section 1 - Eric Loyalty Convos

to say EricTalk20:
	say "[EricOfferingMenu]";

to say EricOfferingMenu:
	LineBreak;
	if HP of Eric < 99:
		project the figure of Eric_face_icon;
	say "     What kind of item should you offer to Eric?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if water bottle is owned:
		choose a blank row in table of fucking options;
		now title entry is "Water Bottle";
		now sortorder entry is 1;
		now description entry is "Offer a water bottle to Eric";
	[]
	if soda is owned:
		choose a blank row in table of fucking options;
		now title entry is "Soda";
		now sortorder entry is 2;
		now description entry is "Offer a soda to Eric";
	[]
	if food is owned:
		choose a blank row in table of fucking options;
		now title entry is "Food";
		now sortorder entry is 3;
		now description entry is "Offer some food to Eric";
	[]
	if chips is owned:
		choose a blank row in table of fucking options;
		now title entry is "Chips";
		now sortorder entry is 4;
		now description entry is "Offer a bag of chips to Eric";
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
				if (nam is "Water Bottle"):
					say "[EricOfferingTalk1]";
				if (nam is "Soda"):
					say "[EricOfferingTalk2]";
				if (nam is "Food"):
					say "[EricOfferingTalk3]";
				if (nam is "Chips"):
					say "[EricOfferingTalk4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide to keep the supplies you have to yourself, at least for now.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say EricOfferingTalk1:
	say "     Pulling a water bottle out of your pack, you hand it to Eric. The young athlete takes it with a thankful smile on his lips, and he quickly chugs the refreshing drink down, showing just how thirsty he is. Eric lets out a happy sigh after finishing the beverage. 'Thanks[if player is not defaultnamed], [name of player][end if], I really needed that.'";
	delete water bottle;
	increase Loyalty of Eric by 1;

to say EricOfferingTalk2:
	say "     Pulling a soda out of your pack you hand it to Eric. The young athlete takes it with a thankful smile on his lips, and he quickly chugs the fizzy drink down, showing just how thirsty he is. Eric lets out a happy sigh after finishing the beverage. 'Thanks[if player is not defaultnamed], [name of player][end if], I really needed that.'";
	delete soda;
	increase Loyalty of Eric by 1;

to say EricOfferingTalk3:
	say "     Pulling some food out of your pack you hand it to Eric. The young athlete takes it with a thankful smile on his lips, and he quickly digs into the tasty morsel, showing just how hungry he is. Eric lets out a happy sigh after finishing the small meal. 'Thanks[if player is not defaultnamed], [name of player][end if], I really needed that.'";
	delete food;
	increase Loyalty of Eric by 1;

to say EricOfferingTalk4:
	say "     Pulling a bag of chips out of your pack, you hand it to Eric. The young athlete takes it with a thankful smile on his lips, and he quickly reaches a hand in and shovels the chips into his mouth, showing just how hungry he is. Eric lets out a happy sigh after finishing the snack. 'Thanks[if player is not defaultnamed], [name of player][end if], I really needed that.'";
	delete chips;
	increase Loyalty of Eric by 1;

Section 2 - Eric Orc Pill Content

to say EricTalk21:
	say "     You take a moment to consider the orc pills that you collected earlier. Your eyes are drawn back to Eric as the thought of using them on him seems to stick in your mind. While you did help him regain his manhood, you can't help but think how good he would look pregnant with your offspring. Apparently, you have been staring too long, judging by the look Eric is giving you. Now that he's noticed your gaze, you should probably say something to him.";
	LineBreak;
	say "     [bold type]Do you want to offer Eric an orc pill?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Approach him about the idea."; [good]
	say "     [link](2)[as]2[end link] - You'd rather dose Eric without him knowing."; [evil]
	say "     [link](3)[as]3[end link] - No, you don't think it's a good idea."; [bye]
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] yes, [link]2[end link] dose or [link]3[end link] no.";
	if calcnumber is 1:
		LineBreak;
		say "     Waving over to Eric as you walk closer to him, your hand slips into your bag and grasps the case that holds the orc pills within. Once you're right in front of the young athlete, you pull out the pill case and he asks, 'What is that[if player is not defaultnamed], [name of player][end if]?' Handing the case to the red-headed young man and watching as he examines it, you explain how you came to have the orc pills in your possession. Just as you are about to tell Eric what exactly the pills are for, he finds the clip that snaps the case open, revealing a huge collection of white and mint-green tablets. 'Huh, these are actually sorta pretty. Are they some sort of vitamins?' Stepping even closer to Eric, you tell him in a soft voice what exactly they can do to males.";
		say "     The first thing that Eric does is start to laugh, even snorting a few times in the process. 'Yeah, right. So what's the punchline of this joke? I'm supposed to be shocked and then what? Are these candy that fizzes on your tongue?' You can't help but laugh a little yourself at hearing that Eric think you are attempting to pull a prank on him. Once you finally calm down a bit, which the slight glare that the young man is giving you helps, you explain to him that you're not joking at all. 'Oh... alright, so why would you show these to me? Or is this one of those [italic type]Hey, look at what I found![roman type] sort of moments?' You tell him that you are showing these to him because you wanted to see how he felt about them, and if he would ever be interested in possibly taking one. 'Take one? You mean like take a pill that would allow guys to knock me up?' You nod your head in the affirmative.";
		WaitLineBreak;
		if Loyalty of Eric < 10: [he doesn't trust you yet]
			say "     'Are you crazy[if player is not defaultnamed], [name of player][end if]? I finally get my manhood back and now you want me to start popping out babies? The answer is no, a million times no! Now I'm starting to wonder if maybe the only reason you even helped before was for some sort of ulterior motive.' The look on Eric's handsome face makes your heart drop a little, it's the look of betrayal. You quickly explain to him that he doesn't have to take one of the pills and that you weren't trying to pressure him. You were only asking if he was interested. Eventually, you are able to calm him down and get him to smile, even if it's only a small one, but you'll take what you can get. 'Ok, I get it, you were only offering, but please see it from my point of view. I was scared that I would be stuck with a vagina for life and now I'm finally a man again. The idea that something could take all of that away from me terrifies me. So the answer is no, at least not right now. I mean, I'm not going to try and say never since I'm not psychic but...' You nod your head and tell him that you're sorry that you upset him. Eric looks you in the eyes and offers you a gentle smile. 'No harm, no foul right? As long as you respect my wishes, we're fine.'";
		else: [he trusts you]
			say "     'Are you serious[if player is not defaultnamed], [name of player][end if]?' With a nod of your head, Eric looks deep into your eyes, apparently attempting to figure out your reasoning. Finally with a shake of his head, he once again graces you with one of his sweet smiles. 'Alright, so I might believe that you're being serious. I have to ask though, why are you asking me if I would like to take one? I know that you could just be offering... but most people consider an offering to be something simple like a pack of gum, not some magical pills that can make a guy become pregnant haha.' The question catches you off guard at first. Truth be told, you weren't expecting Eric to be quite so blunt. Then again, the two of you have been becoming closer, so maybe it's just a sign that he's comfortable around you now.";
			LineBreak;
			say "     [bold type]How should you handle this though?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Attempt to be romantic. -Warning: Long Scene-";
			say "     ([link]N[as]n[end link]) - Let's keep everything casual.";
			if player consents: [romantic]
				LineBreak;
				say "     Without a second thought, you grab hold of one his slender hands, pulling him closer to you. Eric seems a little startled by your actions but allows you continue holding his hand. Staring deep into the young athlete's cerulean eyes is almost like looking out at the sea, evoking a feeling of peace and safety. Raising your one free hand up, you brush Eric's soft hair to the side, feeling it beneath your fingertips, and you can't help but compare its color to open flames, giving him a wild and passionate appearance. 'Flames and the sea, huh? Heh, you make me sound more like a poem than a person.' Eric's voice comes out as a soft whisper, and as you glance back down from his eyes, you can make out a light blush forming on his creamy skin. At that moment, you also realize that you must have spoken all of that out loud rather than just inside your head. You know that you should feel embarrassed for being busted, but at that exact moment, you can't really bring yourself to care.";
				say "     Your hand slowly caresses down the side of his angelic face, eventually cupping his narrow jaw. You know that it may sound cheesy, but you still whisper to him that maybe he's both. Eric's eyes widen in shock, but before he can say a word in response, you lean forward, placing your mouth over his own. His lips are warm and soft, though at first, he is rigid, more than likely in shock, but eventually, the young man melts into your embrace. Opening his mouth in welcome, you surge forward, driving your tongue inside to taste him and causing a soft moan to escape from Eric's graceful throat. While still holding his jaw, you release his hand, instead deciding to wrap your arm around the athlete's trim waist and holding him tight to your body. As you continue to kiss the handsome redhead, you are able to feel the effect it has on the both of you, and you thrust your hard cock against his own through the fabric of his shorts.";
				WaitLineBreak;
				say "     A deep groan erupts from the both of you. While a part of you would love to continue kissing and grinding against Eric, you can't allow yourself to become sidetracked, at least not yet. Pulling back from the passionate kiss, your lover attempts to follow your lips, but you know that you have to finish your conversation before anything else happens. The two of you take deep breaths, attempting to rein yourselves in, and Eric is the first to recover. 'So I guess that you're not just offering me the pill as a buddy type thing then?' Both of you share a brief but happy laugh at the silly comment before you tell him that this isn't just a buddy type thing. 'Jeez, first you call me a poem, then kiss me like that, and now you want me to answer a serious question like this? I don't think that's very fair, do you?' You can see the happy sparkle in his eyes. You simply ask him if you should try again later then while at the same time taking a small step backwards.";
				say "     The athlete quickly rushes forward and wraps his arms around you. 'Oh no you don't!' Eric is quiet for a few moments, likely thinking hard about what you asked him. 'Alright, I have one last question?' You brace yourself for what he may want to know and nod for him to continue. 'If you wanted me to be able to carry kids then why... why did you help me become fully male again?' Without skipping a beat, you answer simply and honestly, telling him that you just wanted to make him happy. The man holding you tightens his grip for a moment before pulling back to look you in the eye. 'You know, with the way the city is now, most people are really only out for themselves. I was actually shocked when you agreed to help me with Stacy, but then you went even further and helped me to become a regular guy again, well close to regular at least heh. I'll agree to take the pill, but only on one condition. I want you to promise me that no matter what you will stay by my side, ok?'";
				WaitLineBreak;
				say "     A huge smile forms on your face, and you quickly grab Eric around the waist, hoisting him over your shoulder and informing him that he should be more careful what he wishes for! 'Yeah I'm starting to regret it already!' Unfortunately for him, he can't keep the happiness out of his voice, betraying his own statement. Your only response is to give him a playful swat on his ass, causing the track runner to giggle as you bring Eric over to his bunk and set him down. Reaching inside of your bag, you grab the orc pills once again, taking a single pill out of the case before putting it away again. Turning to Eric, you see that he has grabbed a bottle of water and is glancing at the pill with a certain level of anxiety. Gently, you begin to rub his thigh, telling him that it will be ok and that you will be here the whole time to take care of him.";
				say "     Handing the young man the pill, he quickly pops it into his mouth and takes a few gulps of the water he has. 'So what happens now? I mean, I feel a little warm but other than that, I don't feel any different.' Before Eric can mutter another word, a deep moan spills from his lips, and the both of you freeze for a moment, looking into each other's eyes. 'Ok, I think it started working right away! My body is starting to get really hot. I have to get these clothes off right now!' Every word comes out breathless and impatient, and you quickly begin to help him get out of his gray t-shirt and green shorts, every piece of removed clothing revealing more of his flushed skin. After his shorts have been removed, your eyes come face to face with his cock, already hard and leaking copious amounts of precum. Reaching your hand out, you feel the [if (HP of Eric is 21 or HP of Eric is 22)]long, silky-smooth equine shaft[else if (HP of Eric is 31 or HP of Eric is 32)]thick, tapered goat shaft[else if (HP of Eric is 41 or HP of Eric is 42)]veiny, green orc shaft[end if] in your palm and start to stroke it slowly but firmly.";
				WaitLineBreak;
				say "     'No, not there, go lower. I feel so hot, it's like my hole won't stop aching. I just need you touch me down there, please!' Eric sounds almost like he's going crazy with lust, but you calmly explain to him to trust you and that you will make sure to take care of him completely. His eyes bore into you for a moment until he finally nods his head. You go back to stroking the redhead's [if (HP of Eric is 21 or HP of Eric is 22)]dark equine dick. The overall size of it is huge, in both the length and girth. Watching as his cock continues to leak from its flared head[else if (HP of Eric is 31 or HP of Eric is 32)]pink caprine dick. The overall size of it is pretty decent, and while it is not the longest cock you have ever seen, the thickness of his prick is impressive. Watching as his cock continues to leak from its tapered head[else if (HP of Eric is 41 or HP of Eric is 42)]emerald orcish dick. The overall size of it is pretty large, and while it is not the longest cock you have ever seen, the thickness of his prick is massive. Watching as his cock continues to leak from its uncut head[end if], you lean forward, swiping your tongue over his glans, causing the turned on man beneath you to rise up and arch his back. More unintelligible sounds escape from his throat as you take the head into your mouth, sucking it gently and swirling your tongue along the slit, taking in his rich flavor.";
				if "more anal" is listed in feats of the player: [rimjob]
					say "     Reluctantly, you pull your mouth away from his cock and begin to kiss and lick the sides of Eric's prick, slowly going lower and lower down his shaft. Once you reach his [if (HP of Eric is 21 or HP of Eric is 22)]heavy horse balls[else if (HP of Eric is 31 or HP of Eric is 32)]furry goat balls[else if (HP of Eric is 41 or HP of Eric is 42)]full orc balls[end if], you massage both with your tongue and frustrated groans can be heard from the head of the bunk. You can't help but smile at the thought of how your lover will react to what you have planned. Finally finished tasting his huge balls, you raise Eric's legs in the air and ask him to hold them there, the only answer he gives you in reply is a frantic nod. Looking down you are finally able to view your prize, the athletes tight pink pucker. You lean down, blowing air over his hole, making it spasm, almost like it's begging for more. Deciding to tease the athlete further, you move in closer and swipe your tongue over his hole just once and are rewarded with a full body shudder along with a needy whine.";
					WaitLineBreak;
					say "     Unfortunately for you, your attempt at teasing has an unknown effect, and you notice too late a clear fluid leaking from Eric's hole... orc breeder aphrodisiac. Pretty soon, your body becomes hot as well, and you can't hold yourself back any longer from lunging forward to lick and slurp at the redhead's drug-like hole. As you dive in and start to eat him out, you can hear your lover gasp and squeal beneath you, begging for you to keep going, and you're only too happy to oblige. Leaning back slightly, you spit on the pink hole before attempting to thrust your tongue further inside. After tongue fucking Eric for quite a while, you are finally able to get your head back into the game. The fact that you fell right into the orc pill's trap is mildly embarrassing since this was supposed to be all about Eric and not about you using him for your own needs, but then again, he doesn't seem to mind at the moment, if the moaning is anything to go by.";
				else: [fingering]
					say "     Reluctantly, you pull your mouth away from his cock and debate whether to use your spit or his precum to lube your fingers. You decide to use your spit since who knows what could happen if you use his own pre after having him take that pill. With one hand still stroking him firmly, you make a show of sucking two of your fingers into your mouth, allowing your tongue to poke out from your lips on occasion. Eric's glazed over blue eyes watch your mouth intently, almost as if your actions are hypnotizing him. Once you're sure that your fingers are suitably wet, you pop them out of your mouth and lower your hand towards his quivering pucker, gently rubbing your fingers back and forth over the tight ring of muscle. Eric eventually relaxes enough that you can finally begin to get one finger inside of his tight hole, and just as your digit begins to penetrate him, he lets out a guttural moan, thrashing back and forth on the pillow underneath his head.";
					WaitLineBreak;
					say "     You decide to up the ante and pleasure the athlete as much as you can. With your free hand, you point his cock straight up and then slide your mouth down as far as you can. Effectively deepthroating your lover, you begin to hum in the back of your throat, causing vibrations to assault his cock, accompanied by the slick suction of your mouth. Now that the redhead is properly relaxed and enjoying his blowjob, you begin to pump your finger in and out of his hole faster, with each thrust making Eric squeal in pleasure, urging you on. With a second finger joining the first inside of him, you quickly continue to pump both digits as fast as you can, making sure that you hit his prostate as often as possible[if (HP of Eric is 21 or HP of Eric is 22)]. The flared head of his horse prick is now spewing forth so much precum that if it hadn't been down your throat, you doubt that you would have swallowed it fast enough to keep up[else if (HP of Eric is 31 or HP of Eric is 32)]. Paying special attention to his furry balls, you begin to roll them in your hands as you continue to suck him off[else if (HP of Eric is 41 or HP of Eric is 42)]. Dipping your tongue inside of his pulled back foreskin, you attempt to reach the parts of his cock head that are rarely touched[end if].";
				say "     Pulling back, you take a moment to look over your handiwork. With Eric's hole shiny with your saliva and his thick cock standing tall and proud, leaking a considerable amount of precum, you can't help but feel a little proud of the state that you have him in. 'Please! [if player is not defaultnamed][name of player], [end if]I need you inside of me, hurry!' Looking into the redhead's glazed-over blue eyes and flushed face while he begs makes your dick harden even more. You line up your cock up to his split-slicked hole and begin the slow descent into Eric's tight heat. You can't believe how hot your lover feels on the inside, the feel of it completely unnatural. Then it hits you. The pill must have gone way past just allowing him to become pregnant, it threw him into his first heat!";
				WaitLineBreak;
				say "     You decide to keep this information to yourself. The last thing that is needed at the moment is for Eric to have a freak out. Making sure that you keep your thrusts at a gentle pace, you lean over your lover and try to comfort him as much as possible. The young athlete is breathing heavy and can barely focus on you as each time you thrust inside of him, his eyes roll back into his head. Leaning down, you softly capture his lips with your own, however you hear Eric plead when you pull back to breathe, 'Please, I need you to go faster, harder!' Straightening up your arms, you give a single rough thrust into your heat mate, causing him to moan deeply. Pulling out till only the head of your cock is inside of him, you wait curiously as to what he will do. It takes only a matter of seconds before the redhead is attempting to push himself further onto your prick, but each time, you merely pull away, much to his frustration.";
				say "     You finally decide to have mercy on the poor guy and give him one final kiss, however, while you caress his tongue with your own, you reach out and wrap up both of his wrists in one of your hands. Pulling back, you place your free hand around his hip, holding him steady, and once you are sure that your lover is comfortable, you decide to give him what he needs and slam into him full force. Eric's eyes roll into the back of his head while deep guttural moans spill past his lips. As you continue to hammer his hole at a furious pace, you keep your eyes focused on the redhead's face, and judging by his eyes, it almost appears as if he's not even inside of his head anymore, like he has been completely taken over by the pleasure his body is feeling.";
				WaitLineBreak;
				say "     Sweat pours off of the young athletes body, making his skin glisten in the yellow lights of the bunker. You can feel yourself getting close to shooting your load inside of the willing body in heat, but when you attempt to mention this to Eric, his only response is to groan out how good he feels. Quickening the pace of your thrusts, you take the redhead's [if (HP of Eric is 21 or HP of Eric is 22)]centaur cock[else if (HP of Eric is 31 or HP of Eric is 32)]satyr cock[else if (HP of Eric is 41 or HP of Eric is 42)]orc cock[end if] in one hand and begin to pump him at a furious speed. The sounds coming from your lover mixed with the tightness of his hole is too much for you to bear, and your orgasm hits you hard, your cum filling up the college guy's ass in heavy, forceful bursts. While still in the throes of your own orgasm, you feel Eric's hole tighten around even further, a surefire sign that he is fast approaching his own.";
				say "     As you continue to stroke Eric's [if (HP of Eric is 21 or HP of Eric is 22)]horse dick, you make sure to pay special attention to his medial ring and watch as the head of his prick flares out further[else if (HP of Eric is 31 or HP of Eric is 32)]goat dick, you make sure to pay special attention to his tapered tip and low hanging furry balls[else if (HP of Eric is 41 or HP of Eric is 42)]orc dick, you make sure to pay special attention to his thick veiny shaft and fully swaying balls[end if]. Finally, the redhead's cock explodes, blasting his chest with his own thick load, and every shot of cum that leaves his body causes his ass to tighten around your cock, milking you like a sultry vice. As both of your orgasms start to die down, you slowly begin to pull your cock out of Eric's hole. Afterwards, you take a seat on the edge of the young athlete's bed, in an attempt to catch your breath. Your attention is brought back to your lover as you hear soft snoring coming from him, and you chuckle a bit to yourself before getting up and pulling the blanket up around Eric, making sure he is kept warm. You gently run your fingers through his short red hair before leaning forward and placing a soft kiss on his lips. You get dressed and head back out into the city, a smile on your face as you leave.";
				now EricOrcPillMpreg is 2;
			else: [casual]
				say "     You explain to Eric that you honestly are just making an offer to him. Now that he is fully male again, certain options have become closed off to him, and the two of you had never discussed the pros and cons of some of the choices that have been made. 'You're talking about the fact that I could get pregnant before but now I can't? I mean, to be completely honest, I never really put any thought into that part of the change.' You explain to Eric that the world has changed after the incident and that more than likely, it will never be the same again, it might be best to keep his options open. Even if he never makes full use of the pills, they are still something to consider.";
				say "     'I guess that I can understand your point of view. Ever since my body went through the change that it did, I have been thinking about guys a lot. I mean like [italic type]a lot[roman type]. I thought that becoming part girl was the main reason for it, but I'm still having those thoughts even after you helped fix my problem. Don't get me wrong, I still love women, but with the way my thoughts have been working lately, I'm starting to think that I may have been limiting myself.' You and Eric continue to talk about the changes he has gone through both physically and emotionally, and the redhead seems to really appreciate you listening to his worries. 'Alright, hand over one of those pills. I can't guarantee that I will take it, but you're right that I should try to keep my options open!' After handing Eric one of the small pills, you are rewarded with another of his trademark smiles.";
				now EricOrcPillMpreg is 3;
				say "[EricTalkMenu]"; [looping back into the menu]
	else if calcnumber is 2:
		LineBreak;
		say "     You decide that you don't really have time for the whole [italic type]ask and hope for the best[roman type] type of approach. Instead, your eyes follow the young athlete's routine as he moves around the library. This quickly becomes slightly boring as Eric jogs around the whole building, but thankfully this leads to the opening you have been waiting for. While the redhead's back is too you, a familiar clicking sound can be heard as he pops open a can of soda to cool down. Standing behind one of the wooden beams, you wait for your chance to strike. Eric places the can on a nearby table and moves a few feet away, inspecting his own bag of supplies.";
		if "Stealthy" is listed in feats of player: [success]
			say "     WIP This will not lock you out at the moment. You can go back through and choose to offer Eric the orc pill instead, until the drugging scene is finished.";
		else: [failure]
			say "     With the young college guy's attention diverted, you realize that this is the perfect chance to make your move. You slowly make your way closer to the table that the redhead set his can of soda down on, attempting to be as silent as possible. Unfortunately, just as you are about to get within arm's reach, Eric looks over your way. 'Hey[if player is not defaultnamed] [name of player][end if], how are things going?' Freezing in your tracks, you try to act as if you were just coming over to check up on him, instead of attempting to drug him with something that would change his life forever. Thankfully, the dumb redhead has no idea what you had in store and actually thanks you for your concern, and afterwards, you begin to make your way back to the front of the library to rethink your plan. After what Eric has been through, he apparently is now on edge at all times, which will make sneaking up on him much more difficult. If only you were a bit more [bold type]stealthy[roman type]!";
	else:
		LineBreak;
		say "     Eric has been through a lot lately, with what happened to his girlfriend and then his recent gender problems. This seems like way too much to ask of him, at least for right now.";
		say "[EricTalkMenu]"; [looping back into the menu]

Section 3 - Pregnancy and Offspring

To impregEricChance with (x - text):
	if debugactive is 1:
		say "     DEBUG: Mpreg Chance for Eric, base chance 40%, ";
		say "Father: [x]";
		LineBreak;
		if EricPregTimer > 0:
			say "     ERROR - Already pregnant!";
	let EricPregChance be 4; [40% base chance]
	if "Contraception" is not listed in Traits of Eric and EricPregTimer is 0 and a random chance of EricPregChance in 10 succeeds:
		if debugactive is 1:
			say "     Impregnation successful! A new baby is growing in Eric now!";
		now EricPregTimer is 1; [starts the pregnancy timer]
		now EricCurrentBabyDaddy is x;
	else:
		if debugactive is 1:
			say "     Impregnation fail! A chance of [EricPregChance] in 10 didn't succeed.";

an everyturn rule:
	if Eric is bunkered and EricOrcPillMpreg > 1:
		if EricPregTimer > 0: [Eric is pregnant]
			increase EricPregTimer by 1; [counting up towards 24]
			if debugactive is 1:
				say "     DEBUG: Eric's pregnancy advanced one turn. Current Turn: [EricPregTimer], Target Value: 24";
			if EricPregTimer >= 24 and skipturnblocker is 0: [birthing time]
				if Eric is not visible: [player isn't anywhere near him]
					say "     [bold type]Your thoughts wander back to Eric, and you feel a need to go check in on him.[roman type][line break]";
				else: [player is next to Eric]
					say "     [bold type]<WRITER'S NOTE>: This scene is still WIP, please have some patience. A general outline has been put down for now and will be expanded upon eventually.[roman type][line break]";
					say "     From one moment to the next, the expression on your <slave/friend/companion> Eric's face changes, and he brings a hand to his bulging stomach. 'Oooh! That was a hard contraction! I think that I'm getting really close here!' The college athlete opens his mouth to say something else, but the next thing that comes out of it is just a strangled groan. A glance down makes it fairly obvious what's going on, as Eric's shorts suddenly develop a large wet patch that keeps spreading down the insides of his legs: His water just broke! You quickly rush to his side and help the young man lie down in a halfway comfortable position. His shorts aren't buttoned, not with the bulge of his belly in the way for that, so you thankfully don't have too hard of a time peeling them off of his resting form.";
					say "     Flinging the soaked garment aside, you turn back to Eric a second later. He is panting rapidly by now, his hands clawing at the ground as a fairly strong contraction hits. While pregnancy and birth may be a lot quicker these days, it doesn't look like they are all that much easier than before. The curve of your <slave/friend/companion>'s' belly heaves with another contraction, followed by a breathless groan from him, and you can see his pucker stretching around something pushing from the inside, opening up more and more. In the heat of the moment, you don't spare a second thought before rushing forward to take position between his legs, hands outstretched. Then the next contraction hits, this time bringing with it a flexible egg-sack that pops past the strained opening in a rush of natural lube. You catch it and see the tiny shape moving on the inside, soon after tearing its way into the world and taking its first breath of air. It is a <orc/centaur/satyr>, looking terribly cute, even though it may be dripping with the fluids that filled the egg.";
					WaitLineBreak;
					say "     The tiny <orc/centaur/satyr> lets out a whimper at finding itself in a strange new world outside of its parent, then starts to weakly move its limbs as if to try them out for the first time. Focused on the miracle of life in your hands, you are only shaken out of watching the baby when Eric calls out to you tiredly, 'I want to see it too. A little help here, please?' Reaching out to take his weakly grasping hand, you pull the worn-out young man up into a sitting position, then lay the child into his arms, drawing a happy sigh from your  <slave/friend/companion>. He guides the <orc/centaur/satyr>'s little mouth to a nipple on his flat chest, around which the newborn happily closes their lips. As the tiny being greedily gulps down what they can drink from Eric's breast, <he/she> grows noticeably larger with each passing second. Tiny as the <orc/centaur/satyr> may have been, <he/she> seems in a rush to catch up now, growing so fast that <he/she> skips the stages of toddler, child, and young teen entirely.";
					if EricCurrentBabyDaddy is "player": [player's kid]
						say "     Now that the <orc/centaur/satyr> is growing up right before your eyes, you do recognize a bit of yourself in <him/her>. They are definitely still <orc/centaur/satyr> through and through, but there's just something about the way they look and act that makes it more than clear in your mind that they're yours. Soon having finished with their drinking from Eric, creating the strange sight of an eighteen-year-old curled against Eric's side and suckling from him, the young <man/woman> seems sated for now and raises <his/her> head, intelligent eyes taking in the whole new world around <him/her>. Reaching out with a fully grown arm for the first time, Eric's offspring gives your arm a squeeze, saying hello to the person who greeted <him/her> into the world. <...detailed accounting where the young adult ends up>";
					else if EricCurrentBabyDaddy is "Urik": [Urik's kid]
						say "     ...";
				increase EricOffspringCount by 1;
				increase EricPregCount by 1; [number of previous pregnancies]
				now EricPregTimer is 0; [resets pregnancy]

Eric Loyalty ends here.
