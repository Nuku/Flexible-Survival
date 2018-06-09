Version 1 of Sex Ed by Prometheus begins here.

[   AnatomyCourse                                                               ]
[   0: Has not enrolled in class                                                ]
[   1: Is enrolled in class (Humanoids)                             	          ]
[   2: Has had introductory lesson on Humanoids (Canines, Felines, and Equines) ]

[   BehaviorandCustoms                                                          ]
[   0: Has not enrolled in class                                                ]
[   1: Is enrolled in class (Canines, Felines, and Equines)                     ]
[   ...:                                                                        ]

[   KinksandFetishes  (Bondage, Vore, Dominance, Roleplay etc                   ]
[   0: Has not enrolled in class                                                ]
[   1: Is enrolled in class (Roleplay)                                          ]
[   2: Has had introductory lesson on Roleplay (Dominance)                      ]
[   3: Has had introductory lesson on Dominance (Bondage)                       ]
[   4: Has had introductory lesson on Bondage (Vore)                            ]
[   ...:                                                                        ]

[   LectureCheck                                                                ]
[   0: Not enrolled in any lectures                                             ]
[   1: Enrolled, but no lectures attended yet                                   ]
[   2: Attended at least one lecture                                            ]


AnatomyCourse is a number that varies. AnatomyCourse is usually 0.
BehaviorandCustoms is a number that varies. BehaviorandCustoms is usually 0.
KinksandFetishes is a number that varies. KinksandFetishes is usually 0.
LectureCheck is a number that varies. LectureCheck is usually 0.

[ LECTURES   LECTURES   LECTURES ]

instead of going north from Lecture Street while LectureCheck is 0:
	FirstLectureEvent;

to FirstLectureEvent: [Unlocks lecture hall]
	say "     You walk along the path, trying to figure out which lecture theater has something interesting to listen to. Sadly, there are only numbers above the doors, and nothing much else. You're so focused on rubbernecking for any sign of where to go that you fail to notice a student ahead of you, and the frail-looking female harpy is sent sprawling with a squeak of shock as you bump into her. You desperately apologize, hoping that you haven't hurt her, and saying that you didn't see her. 'I realize that I'm small, but sheesh the number of times that I get walked into,' the young woman says good-naturedly, rubbing an elbow and turning to face you. She is wearing a short, backless blue dress, giving her wings freedom to move while maintaining a modicum of modesty. You are relieved to see that she appears unhurt and hasn't taken your accident personally. You explain that you were looking for a lecture to join.";
	say " 	'Oh you're taking a course are you?' the petite harpy exclaims. 'You might be in one of my classes. I'm doing the Sexual Behavior and Customs Among Sentient Species course. What are you taking?' As you answer that you haven't picked a course yet, she lets out a cute squawk after looking at her watch. 'Sorry, I'm going to be late. If you want to enroll, just go to the registrar over there and hand him your enrollment token. But now I really gotta go. Good luck,' she shouts and hurries off towards a modern structure made primarily of glass. Glancing over where she pointed, you soon find your way to a desk behind which an elderly woman is sitting. She looks at you over the rim of her glasses, then says in a no-nonsense tone, 'New Student? Or just trying to figure out where you have to go? And yes, we know it is confusing that classes get moved around so much, but there has been an increased need for [italic type]thorough[roman type] cleaning after some lectures. You wouldn't want to get into those rooms before they are scrubbed.'";
	WaitLineBreak;
	LectureChoiceEvent;
	now LectureCheck is 1; [Lecture Intro Done]

instead of going north from Lecture Street while LectureCheck is 1:
	say "     This time, you know to go straight to the registrar. Stepping up to her desk, you are inspected by the elderly woman, glancing at you over the rim of her glasses. Then she says in a no-nonsense tone, 'New Student? Or just trying to figure out where you have to go? And yes, we know it is confusing that classes get moved around so much, but there has been an increased need for [italic type]thorough[roman type] cleaning after some lectures. You wouldn't want to get into those rooms before they are scrubbed.' It doesn't look like she recognizes you at all - but then, with how many people come through here every day, and the shifting nature of their bodies, it kinda makes sense that she just stopped trying.";
	LectureChoiceEvent;

to LectureChoiceEvent: [Choose Lecture to attend]
	LineBreak;
	say "     What do you want to say to the registrar?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask her how to enroll";
	now sortorder entry is 0;
	now description entry is "Learn how to enroll from the old woman";
	[]
	if EnrollmentTokens > 0 and AnatomyCourse is 0:
		choose a blank row in table of fucking options;
		now title entry is "Enroll in the Anatomy Lecture";
		now sortorder entry is 1;
		now description entry is "Spend an enrollment token to join the Comparative Anatomy Lecture";
	[]
	if AnatomyCourse > 0 and AnatomyCourse < 99:
		choose a blank row in table of fucking options;
		now title entry is "Get current directions to the Anatomy Lecture";
		now sortorder entry is 2;
		now description entry is "Listen to a Comparative Anatomy Lecture";
	[]
	if EnrollmentTokens > 0 and BehaviorandCustoms is 0 and 2 > 3: [disabled for now]
		choose a blank row in table of fucking options;
		now title entry is "Enroll in the Behavior and Customs Lecture";
		now sortorder entry is 3;
		now description entry is "Spend an enrollment token to join the Sexual Behavior and Customs Among Sentient Species Lecture";
	[]
	if BehaviorandCustoms > 0 and BehaviorandCustoms < 99:
		choose a blank row in table of fucking options;
		now title entry is "Get current directions to the Behavior and Customs Lecture";
		now sortorder entry is 4;
		now description entry is "Listen to a Sexual Behavior and Customs Among Sentient Species Lecture";
	[]
	if EnrollmentTokens > 0 and KinksandFetishes is 0 and 2 > 3: [disabled for now]
		choose a blank row in table of fucking options;
		now title entry is "Enroll in the Kinks and Fetishes Lecture";
		now sortorder entry is 5;
		now description entry is "Spend an enrollment token to join the Kinks and Fetishes Lecture";
	[]
	if KinksandFetishes > 0 and KinksandFetishes < 99:
		choose a blank row in table of fucking options;
		now title entry is "Kinks and Fetishes";
		now sortorder entry is 6;
		now description entry is "Search for the lecture on Kinks and Fetishes.";
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
				if (nam is "Ask her how to enroll"):
					say "[LectureEnrollmentInfo]";
				if (nam is "Enroll in the Anatomy Lecture"):
					say "[AnatomyLectureEnrollment]";
				if (nam is "Get current directions to the Anatomy Lecture"):
					say "[AnatomyLectures]";
				if (nam is "Enroll in the Behavior and Customs Lecture"):
					say "[BehaviorLecturesEnrollment]";
				if (nam is "Get current directions to the Behavior and Customs Lecture"):
					say "[BehaviorLectures]";
				if (nam is "Enroll in the Kinks and Fetishes"):
					say "[KinksLecturesEnrollment]";
				if (nam is "Get current directions to the Kinks and Fetishes"):
					say "[KinksLectures]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You excuse yourself and leave after earning a disapproving glance for wasting the registrar's time.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say LectureEnrollmentInfo:
	say "     Stepping up to her desk and asking where to enroll, you are inspected by the elderly woman, glancing at you over the rim of her glasses. Then she replies, 'Go visit the Dean in the administration building. He will give you a token that shows that you have paid the tuition for a course. Bring one to me and we can see what courses still have openings for new students.'";

to say AnatomyLectures:
	if AnatomyCourse is 1:
		say "[AnatomyLectureOne]";
	else if AnatomyCourse is 2:
		say "[AnatomyLectureTwo]";
	else if AnatomyCourse is 3:
		say "[AnatomyLectureThree]";
	else if AnatomyCourse is 4:
		say "[AnatomyLectureFour]";
	else if AnatomyCourse is 5:
		say "[AnatomyLectureFive]";

to say BehaviorLectures:
	if BehaviorandCustoms is 1:
		say "[BehaviorLectureOne]";
	else if BehaviorandCustoms is 2:
		say "[BehaviorLectureTwo]";
	else if BehaviorandCustoms is 3:
		say "[BehaviorLectureThree]";
	else if BehaviorandCustoms is 4:
		say "[BehaviorLectureFour]";
	else if BehaviorandCustoms is 5:
		say "[BehaviorLectureFive]";

to say KinksLectures:
	if KinksandFetishes is 1:
		say "[KinksLectureOne]";
	else if KinksandFetishes is 2:
		say "[KinksLectureTwo]";
	else if KinksandFetishes is 3:
		say "[KinksLectureThree]";
	else if KinksandFetishes is 4:
		say "[KinksLectureFour]";


[ ANATOMY LECTURES ANATOMY LECTURES ANATOMY LECTURES ]

to say AnatomyLectureEnrollment:
	say "     As you say that you want to enroll in the course, the registrar checks a list and says, 'So you're interested in the Anatomy Lecture? We do have some openings for that, yes. Apparently some students dropped out since they couldn't handle the nudity and the lecturer's hands-on approach. You do understand that this is a comprehensive course, with mixed genders and species?' She glances over her glasses, as if expecting you to object and withdraw your interest.";
	say "     [bold type]Do you really want to enroll in the Anatomy Lecture?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure! What's a little nudity these days?";
	say "     ([link]N[as]n[end link]) - Hmm, maybe not...";
	if player consents:
		LineBreak;
		say "     Holding out her hand, the registrar accepts your paper token from Azrael and sets it on a stack of similar markers, then gives you directions. As you start to turn away afterwards, she adds, 'Remember that the lecture hall assignments change constantly, due to the frequent need for cleanup after. Come here to learn where you have to go on any given day.' With that, you're dismissed and quickly hurry to the right lecture hall.";
		WaitLineBreak;
		now AnatomyCourse is 1;
		say "[AnatomyLectures]";
		decrease EnrollmentTokens by 1;
	else:
		LineBreak;
		say "     'Thought so,' the old woman says with a curt nod, then turns her gaze to the side and calls out, 'Next!'";

to say AnatomyLectureOne:
	say "     You slip through the side door of the lecture theater quietly. The lecturer taps the desk to request silence in preparation for the start of the lecture, the fifty or so students slowly complying. As you take your seat a few rows from the front, you take a quick glance at the lecturer in order to remember them for the future. Surprisingly, she is a pure human woman in her late twenties to early thirties, judging from her face, though with the nanites, who can tell properly anymore. Brown hair with a red streak is brushed over her ears into a loose ponytail. She catches you staring at her and smirks, winking one of her blue-green eyes. You blush and force your gaze away, noticing that she seems to have an assistant lecturer. He too looks fully human and of similar age, his brown hair cut short and is clean shaven. He also grins at your observation of him, and your blush deepens at being caught ogling again.";
	say "     The class simmers down to near silence as the lecturer begins to speak. 'First of all, I'd like to welcome the new faces that weren't taking this course before the changes to the city. While much of the content is now different in order to cover the bodies of a greater variety of the city residents, I thought that we could start off with a focus on our original subject animal, the human. I'm Doctor Vayne. I used to specialise in comparative biology, and my co-lecturer is my husband, Clyde.' He gives a small wave and stands beside her as she continues speaking. 'If you have any questions, please raise your hand, and we'll try and get to you when we can, otherwise once the lecture concludes, we'll stay and answer questions for a few minutes. We would prefer privacy outside of lectures, so we won't give you our contact details if you don't mind. But anyway, onto the lecture!'";
	LineBreak;
	say "     [bold type]The screen at the front illuminates with a message. This course will deal with first hand experiences of all genders and many species - last chance to leave now, for anyone squeamish about that. Do you want to stay?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay. You have enough interest to endure anything you may find distasteful.";
	say "     ([link]N[as]n[end link]) - Leave. While you may have been initially interested, you aren't comfortable with everything involved.";
	if player consents: [stay]
		say "     'With current affairs, humans may seem to be the blandest creature wandering around the city and the college when compared to the mythical beasts that have developed recently. But even within humans, there is variety. Some have remained unaltered, either through isolation or care, while others appear human but have changed in other ways. Examples of this are the Spartans that are part of the college and the Vikings that some of you may have seen around the beach. As far as I am aware, these people still display normal human anatomy, though some may have swapped sex or had increased muscle mass and genital growth. But I'm getting ahead of myself as some of you may not have an advanced knowledge of the human anatomy, so I shall start there. Bear in mind that this is anatomy, not physiology, so most of the focus goes into appearance rather than function. I will however give a brief overview of some parts. For the purpose of education of course.'";
		say "     'I hope that this won't make any of you uncomfortable, but we will be teaching this class naked in order to use our bodies as the anatomical models. This is your chance to leave if you don't feel comfortable with this, but the dean will not be giving you a refund.' Unsurprisingly, no one moves, their attention still focused on the lecturers at the front. However, one hand goes up, quickly noticed by Dr. Vayne, who indicates for them to ask their question. The young male student hesitantly speaks, 'Would it be helpful if some of the human students unclothed and mirrored your demonstration so that those further from the front can see what you are doing more clearly?' The lecturer beams at this show of student participation, nodding her approval. A few people throughout the class strip, appreciative hoots and whistles accompanying their actions.";
		WaitLineBreak;
		say "     'We shall start with the circulatory system, considering that it is one of the most well known. The heart is the center of this system, pumping the blood throughout the body. The human heart has four chambers with two on each side. The upper two are referred to as the atriums and are where the blood enters from either the lungs or the rest of the body. This distinction is important as the blood cycles past the lungs to be oxygenated before returning to the heart to be pumped through the rest of the body. The heart should be beating in a regular rhythm that you can feel by holding your fingers to your neck or wrist. If you're feeling particularly bold and your partner is willing, you can probably also feel it through the chest here,' she informs the class, holding her hand over her left breast before demonstrating the same area on her husband. Some of the class does the same on the volunteers in the room, with a few stifled giggles.";
		say "     'It is important that you keep your hand still while doing this and keep your thumb away as it has a slightly different pulse. This means no kneading, massaging, or rubbing,' she says good-naturedly as she observes some of the more inventive ways of finding a pulse on the chest. 'Though doing so may allow you to notice the difference between a resting heartbeat and an excited one, but back to the lesson. The blood, after being oxygenated, is pumped through the body. The finer details aren't important for this course, but this blood goes everywhere from limbs to organs. The blood is also used when we get aroused, whether you possess male or female genitalia. In males, it allows the penis to get erect when aroused, as the blood flows into the vessels along the shaft, causing an erection, and the glans to widen. In females, the blood engorges the tissue around the vaginal passage and causes the clitoris to become more erect. These developments allow for sexual intercourse to be more comfortable and pleasurable. But we'll come back to this later.";
		WaitLineBreak;
		say "     She goes onto talking about the respiratory system, breathing heavily to demonstrate the lungs taking in air to have the oxygen extracted. Many of the students watch her avidly, while those with volunteers nearby watch them instead. 'We shall move onto the digestive system, but don't worry, once we cover all of the systems that I feel are necessary, we'll take a more relaxed approach. This is mainly so that much of the knowledge can be applied to those of different forms. The digestive system begins at the mouth where humans usually insert food. From there, food goes down the esophagus, being rolled into a ball called a bolus and transferred down to the stomach through a process referred to as peristalsis. The stomach begins the process of digestion which continues in the intestines where the nutrients from inside of the food are extracted through the walls. The digestive system ends at the anus, where the food waste is expelled through the rectum.'";
		say "     'Similar to this is the urinary system which focuses more on liquid waste. The liquid that we drink is filtered through the kidneys for what is useful, with the rest being stored in the bladder as urine. Because some if this may be distasteful to some of the class, we won't go any further into it or discuss the excretory system. For those with an interest in this, the Kinks and Fetishes lectures may cover it later on in the course. Many of the systems overlap, allowing for some organs to fulfil multiple roles, depending on which process is taking place at that time.' She then briefly discusses the muscles of the body, her husband tensing different areas as she points to and names them. They both have toned bodies, with many in the class appreciatively ogling them as they teach.";
		WaitLineBreak;
		say "     'It is through the muscular system and our next subject, the skeletal system, that the body gets its shape. Once again, I apologize to those who thought there would be more sex involved. This is the framework upon which we shall build that. Without the bones and muscle that surrounds them, humans and other mundane vertebrates would lack structure and be more similar to octopi or slugs. For humans, the ability to walk upright on two legs gave us a major advantage over the development of quadrupeds, as we were able to see further and use our hands to defend ourselves. From the sexual viewpoint, to humor those of you in the audience for whom I am boring, this upright position has given us the ability to have many more inventive positions for sexual intercourse. I conclude this from having never seen a rhinoceros pressing his partner's back against a tree and breeding with her that way, or pile-driving her into the ground. Though with the current condition of the city, I imagine that such an event can't be too far away.'";
		say "     'Onto the reproductive system,' Dr. Vayne announces to the applause of the hall, causing she and her husband to smile. 'Anyone would think that students had sex on the brain near constantly,' she says teasingly as the class quietens down. 'The primary male sexual organs are the penis and the testes. The testes are held in the scrotum to maintain a stable temperature and protect them from physical harm. The female primary sexual organs are the vagina, and arguably, the breasts. We covered a bit on arousal during the circulatory system, so I won't repeat myself on that.' She gets her husband to seat himself on the edge of her desk, his erect shaft bobbing about as he moves. 'As you are unlikely to all be able to see the front, could some of you stimulate the male audience volunteers please? Not too much, we want to observe the erection before orgasm.' Charged by the lecture, the eager class complies, wrapping hands, paws, and mouths around the willing subjects.";
		WaitLineBreak;
		say "     When every [']anatomical model['] is prepared, the lecturer continues with the class. 'Some of you may have noticed the change in size from flaccid to erect penis. This is due to the blood flowing into the shaft. A few of you may even have been observant enough to see the scrotum become tighter against the man's body. This becomes more pronounced as he gets closer to orgasm.' She wraps her hand around her husband's cock and begins to rub it up and down. 'While masturbation may be enjoyable, many people find it more thrilling for someone else to be the one stimulating them. This may be because they don't know exactly what is coming next,' she says squeezing the base, a groan breaking from her partner's mouth. 'So that those at the front can see this clearly, I shall continue with the handjob rather than switching to giving him oral sex. If the audience could do so too so that those around them can see.'";
		say "     'Some have the misguided idea that sex follows the order of hand, to mouth, before the more conventional vaginal or anal penetration. This doesn't always have to be the case.' Her hand is still moving, bringing her husband closer and closer to release. 'This is because lubrication is important; no one wants anything to [italic type]tear [roman type]do they? If you use a bottle of lube then there is little reason that you can't start with penetrative sex and even finish them off by hand or mouth.' Clyde taps the top of the desk, signaling his nearing climax. 'I want those at the front to watch carefully. See how different parts tense up as he orgasms. Those whom are watching the student volunteers, do the same for them when they climax.' Her hand movement accelerates, speeding towards a satisfying finish. With an ecstatic outburst, her partner begins to cum, semen splattering over his body, the lecturer's hand, and the desk.";
		WaitLineBreak;
		say "     Around the class, progressively more volunteers are brought to a similar finish, cum collecting on students and chairs. The scent of fresh sperm permeates throughout the room, accompanied by the relieved sighs of those who have orgasmed. It would seem that some of those watching couldn't help themselves either and have been masturbating as they observe the lesson. The lecturer's voice cuts through the collective euphoria, 'If everyone could listen to me again just for a moment while I discuss the female genitalia. Thank you. While the clitoris is often discussed when talking about female sexual pleasure, there is much more to arousing us than just tweaking the clit. Stimulation of the breasts, the vulva, and the vagina are important too.'";
		say "     Her husband allows her to sit on the edge of the desk, residual semen dripping from the tip of his cock. 'Once again, if volunteers could allow those near them to observe if they can't see the front clearly,' Clyde requests, taking over the lesson. 'To those of you with a clear view, my wife is obviously in a state of high arousal. This can be seen by the engorgement of the external lips of the vulva and the copious lubrication that is leaking in preparation for sexual intercourse. Some of the students in the class may be in a similar state, human or otherwise. If someone would be willing to manually stimulate each of the female volunteers with their hands, that would be greatly appreciated. The rest of you, please watch and take notes, either on paper or just mentally.' Throughout the room, several students that were closest to the volunteers crouch down and begin grazing their fingers over the vulvas of the volunteers.";
		WaitLineBreak;
		say "     Clyde continues the lecture as his fingers dance over his wife's slit, occasionally brushing over her clitoris, an occurrence that is signaled by a sharp intake of breath. 'With a bit of experimentation, you may find each person's favorite place to be touched. For many of you, this area will be internal, so if we insert a finger or two into the vagina, we can stimulate a greater area. Obviously, you will notice the difference in texture from the inside of an aroused vagina to that of the outside. I have heard the comparison between it and the inside of one's mouth. While you pleasure your partner internally, you can also continue outside with your thumb or other hand. You could also stimulate the area around the anus, or once again, penetrate it with your fingers. However, for this lecture, we shall not be covering that method. You could consider it extra credit,' he says, chuckling at his own joke.";
		say "     'If everyone could please withdraw their fingers from the, to put it crassly, [']anatomical models['], we shall begin oral stimulation. Many of you may enjoy the flavors. Some of you will not, and we encourage that these people to let someone else take over. Alternate between licking over the external lips, clitoris, and penetrating her with your tongue. This will help vary what it feels like which should boost her pleasure.' The sound of slurping is broken only by the interspersed moan, grunt, or other sound of enjoyment. You would imagine that the lecturers have had plenty of practice at this as Dr. Vayne grips her husband's head between her thighs, his greedy tongue flicking against her cunt. Fluid drips from the corner of the desk, and you are unsure whether it is fem-lube, saliva, or a mixture of both.";
		WaitLineBreak;
		say "     A cry of ecstasy makes you turn around, eager to watch the young woman brought to orgasm by whichever skilled student is between her legs. Much of the unoccupied class have followed suit and when the naga straightens up, he is greeted by the eyes of much of the class. He gives a sheepish smile and flicks his tongue a few times. 'Mmm, that tongue,' you hear his partner sigh as she comes down from her climax. It doesn't take much longer for the rest of the volunteers and Dr. Vayne to reach orgasm too, the scents of their fluids mixing with the earlier aroma. Breathing heavily, the female lecturer returns to taking the class. 'Someone managing to bring their partner to climax faster than my husband can, how exciting! But we've run out of time for this lecture. We hope to see you in the rest of the course. The next one's on Canine, Feline, and Equine anatomy.' As everyone shuffles around, packing bags, redressing, and chatting, she shouts over the din, 'I expect everyone to do some further study of humans. Remember, you may be tested on this.'";
		now AnatomyCourse is 2;
	else: [leave]
		say "     Shaking your head, you quietly rise from your seat and leave through the side door. You hope some of the lectures won't be so broad in content.";
		now AnatomyCourse is 99;

to say AnatomyLectureTwo:
	say "     Having enjoyed the previous anatomy lecture and eager to see what you can further learn about the species detailed in the upcoming one, you quickly take a seat near the front again. You are curious whether the lecturers will call any volunteers up the front to act as the anatomical models, or whether they will just expect people to observe the nearest student of the correct species. Your musings are cut short by the arrival of the lecturers. [if hp of Sylvia > 4]A familiar voice from behind you calling your name in a hushed tone makes you turn around. You are not sure whether you are surprised to see Sylvia or not. You rather thought that she might be beyond this basic level of anatomy, and you question her about this. Julian and the cats wave as the collie replies, 'I wanted to have the post-apocalyptic version. More focus on the interesting bits. Oh, the lectures starting. I should get ready, talk to you later.' She begins rifling through her bag as you turn back to the front[else]As they reach the desk at the front of the room, they undress in preparation to begin. Despite the human form being less exotic than most of the infections of the city, much of the class still takes a break from their conversations to rove their eyes over the exposed flesh. The shameless students are rewarded with a smile as Dr. Vayne begins to boot the computer up, suggesting how she plans to demonstrate from the front[end if].";
	say "     'I'm delighted, though not surprised, to see so many of you still here after the previous lecture. I realize that much of it was probably boring when most of you were human at some point. Attendance tends to slip over the course of the semester, so I thank you for continuing to come. It will help with your end of course test. Today's lecture is on the anatomy of mundane canines, felines, and equines. This means that we will not be specifically covering mythological beings and species similar to our own. Those may be covered in an extra credit lecture depending on how well the class does in the exam. There may be some similarities between our plane's animals and those of others, but be careful in applying this lesson to beings not native to our world. I wouldn't want something nasty to happen.'";
	WaitLineBreak;
	say "     The data projector hums to life, and an image of a canine penis covers the screen at the front. 'When someone is discussing the phallus of a male dog, the first distinguishing feature most would bring up the bulb at the base of a canine's penis, more commonly referred to as the knot. The knot allows the male canine, while mating, to tie with his partner and reduce sperm leakage, thus improving chance of pregnancy. Now that I have ensured your attention, we shall begin the lecture properly.' The screen changes to a collage of dogs, wolves, foxes, and jackals. 'While the correct term is [']canidae['] as I shall be discussing foxes in the same group, I shall continue saying canines for ease of speech.'";
	say "     'Foxes and jackals are of similar size, and dogs vary in size greatly depending on the breed. Wolves in general are the largest in the species, with coyotes slightly smaller. Canines are diverse in the environments that they can live in. From desert, to arctic, to urban areas, canines can thrive. They are intelligent and capable of adapting to improve their chances of survival.' The lecturer takes a breath before continuing. 'Now that you have some background, onto the anatomy. Canines are quadruped omnivores, though prefer meat to vegetables. They are covered in fur and have a tail that helps with balance but is also important for communication. While canine speech doesn't seem as advanced as that of humans, they use body language, yips, and howls to communicate. I would hope that I don't have to be too descriptive of what they look like. I'm beginning to feel foolish.'";
	WaitLineBreak;
	say "     The image returns to the penis from earlier as Dr. Vayne addresses the class. 'If some canine volunteers could undress so that those near them could look and touch as we did last lecture. I ask for the felines and equines to wait until the relevant part of the lecture please.' Having seen how well this went for the volunteers last time, a large proportion of the canine students throughout the class[if hp of Sylvia > 4], including Julian and Sylvia behind you,[end if] strip. 'Male canines are not erect before penetration, relying on a bone called the baculum to do so. Once inside of their partner, blood quickly fills the shaft, making it erect. According to a study by one of our students, this doesn't seem to be present in many of the canines in the city whom seem to be erect before penetrating anything. Once penetration is achieved, the male grips his partner and thrusts quickly and deeply.'";
	say "     'As the male nears climax, the bulbus glandis, the knot, enlarges, tying him with his partner. His thrusts will then be shorter, before orgasming. In feral canines, the male will then do a sort of turn so that he is facing away from his partner. This allows them to look for potential threats. Female genitalia is fairly similar to that of a human, so we won't discuss it much. The only thing that I feel I need to mention is that when the male's knot enlarges, the vaginal wall constricts around it to aid in sealing the semen inside. Tying can last up to thirty minutes in rare cases, so you can understand the threat that could be posed by someone or something coming upon them while they are in this state.'";
	WaitLineBreak;
	say "     'Now if you could partner up in groups of three with one anatomical volunteer per group, then we can reward them before moving onto felines.' Throughout the class, students begin pleasuring their volunteer with their hands and mouth, other orifices apparently against the rules. [if hp of Sylvia > 4]Behind you, Sylvia has the twins between her thighs working in tandem with finger and tongue with such synchrony that you are sure that Sylvia is euphoric. Julian on the other hand has a vixen sixty-nining with him in the aisle while a gorgon stimulates around their tailholes with her hands and tail. [end if]Dr. Vayne and her husband are busy servicing an impressively large St. Bernard with a cock to match. While Clyde licks its balls and manipulates its ass, his wife deep-throats with the confidence born of experience.";
	say "     A tap on your shoulder makes you turn to the side. A timid fennec is now sitting beside you, dripping from a highly aroused snatch. Interpreting this as an invitation, you sink to your knees and plunge your tongue into her passage to taste the nectar that flows freely from her. She grips the side of your head, letting out cute yips as you please her and stroking your ears. Putting some of the knowledge from the lectures into practice, you bring your thumb to her clit and fiddle with it as it engorges. Her breathing accelerates, a sign of an approaching climax, and you decide that you want to taste her juices when she crests. You seal her cunt with your mouth, thrusting your tongue into her to finish her off. With a squeal that cuts through the rest of the classes hub-bub, she orgasms, torrents of fem-cum splashing over your tongue. Exhausted from your ministrations, she slumps back in her seat as you retake your own in preparation for the continuation of the lecture.";
	WaitLineBreak;
	say "     'While I doubt that your libidos will be sated for long, hopefully you'll be able to concentrate on this next section,' Clyde announces. 'Felines.' The screen changes to show a cartoon pornographic image of several big cats having an orgy. 'Like canines, they vary in size from house cats to lions and tigers. Felines originate in Africa and Asia but have a wide ecological niche, able to prosper in hot, cold, arid, or humid environments. They haven't adapted to urban habitats as effectively as canines, not including domestic cats, but are apex predators in areas that they are found. All feral felines are quadrupedal carnivores that are covered in fur that usually helps them camouflage into their surroundings. This helps them greatly as they are ambush predators. The cat's tail is an extremely important part of their body as due to their predisposition to climb, balance is key. Felines communicate through body language, hisses, and purrs.'";
	say "     The picture changes to a closeup photo of male and female lions' genitals. 'The distinctive feature of the feline penis are the barbs that cover it. These spines stimulate the partner as the male withdraws, stimulating ovulation in females. The feline transformations in the city do not seem to follow this feature, instead ovulating like humans, if perhaps quite a bit more frequently.' Clyde sits on the edge of the desk to take a breath before continuing. 'Feline students may disrobe if they wish to in order to aid in this part of the lesson.' This request is keenly followed, with the many magnificent specimens of felinehood being put on display. [if hp of Sylvia > 4]The feline twins look slightly less similar now that their bodies aren't obscured by clothes. While Evenlyn has an impressive cock, his sister seems fairly tame by comparison, two C-cup breasts and a dignified pussy. She catches you looking and sticks her tongue out at you. Her brother gives you a wink. [end if]Across the room, a lion so muscled that he looks like an inflatable is basking in the admiration of those around him as they ogle his mammoth dick. It must be over two foot! You question the fennec next to you whom informs you that his name is Jared and that he is a regional weightlifting champion. Whistling at the size of it, you return your focus to the lecture.";
	WaitLineBreak;
	say "     'Felines have multiple heats per year during which time they are more receptive to mating. The female will likely mate with multiple partners, possibly giving birth to kittens with different fathers due to cats being superfecund. As a side note, while I may continue to say female, this is purely to maintain flow. I understand that some males have managed to get pregnant in the city, and I by no means have anything against homosexual partnerships. While the barbs stimulate ovulation, they aren't the most comfortable things to have inside oneself, and the female will yowl as they are withdrawn. These barbs also serve the purpose of scraping some of the semen from previous couplings from the reproductive channel, improving the chances of later partners of becoming fathers.'";
	say "     'You may have noticed that I barely mentioned the female genitalia. This is because, once again, it doesn't have defining features from that of a human or canine. Outside of sexual anatomy, felines have some special features that we haven't mentioned so far. They have extra vertebrae in their spine which allow extra flexibility, a feature I'm sure that some of you have made use of,' he says with a smirk and an unsubtle wink. 'When you get licked by a cat, you may have noticed that the tongue was rough. This is due to the tongue having barbs of its own called papillae that act like a hair brush and aid with grooming. I'm not sure how many of you will have been interested in that, but it is anatomy nonetheless.'";
	WaitLineBreak;
	say "     'Once again, partner up to show your appreciation of the feline form. And before anyone asks, only two of you may go with Jared. Size isn't everything. The fennec fox beside you grabs your arm and pulls you down next to a rather shy leopard further along the row. He lets out a surprised mew as the fox grasps his penis and licks the tip. You are left to fondle his scrotum and nipples as the fennec takes care of his cock. A short hushed conversation goes on between them as you pleasure the feline. It would seem that they are friends, and that before the female student had come to you earlier, that she had been with him. Seeing that you were alone, she had tried to convince him to join you both, but he had refused. He now seems to regret this decision as you pleasure him in tandem, his social anxiety hindering what could have been an extra chance for bonding.";
	say "     At the front, Clyde is bent over the bench, giving a serval a blowjob while a tiger thrusts between his buttocks, hot-dogging. [if hp of Sylvia > 4]Sylvia's group seems to be ignoring the size limit of three, with the twins sitting back to back while Julian suckles Evelyn's breasts while fingering her, and Sylvia deepthroating Evenlyn while two fingers are lodged in his back passage. [end if]At the back of the room, Jared is receiving the attentions of a svelte female deer and a busty succubus while several others look over from their own pairings with jealousy. It would seem that he is popular. He seems fairly obliging to his partners, squeezing their breasts and thrusting a finger or two into their cunts as they service his balls and shaft. The regular image of a gentleman. Your attention is brought back to your own partnership by the splatter of cum over your arms. It would seem that you continued on autopilot even as you surveyed the room. After a brief thank you, you return to your seat for the final portion of the lecture, cum dripping from your hands.";
	WaitLineBreak;
	say "     Dr. Vayne begins to speak again, stray strands of semen clinging to her hair. 'Equines are the largest of the species we shall cover today,' she announces, swapping the picture on screen to a well-hung horse. 'In terms of defining features, male horses have large phalluses, around twenty inches long, with a [']flair['] when erect. While not in a state of arousal, the penis is contained by a sheath of skin. It is worth noting that their testicles are also on the large side. Equines vary in size, as I'm sure that you are bored of us telling you, from miniature ponies to horses. Equines include zebras and donkeys, but it is also worth noting that horse is a very wide term in itself. Equines are found throughout the world though in reduced number in cold environments, preferring plains of temperate or arid climate. Urban environments are not ideal for equines.'";
	say "     'Horses communicate through body language, neighs, whinnies, and nickers. They are social animals living in groups, so the ability to communicate is important. But back to the genitals. The vagina, once again, is similar to that of a human.' She pauses for a moment before adding, 'Almost as if the female structure doesn't require any improvements and is perfect just the way that it is.' This comment is met with a few chuckles and offers to do further study. Dr. Vayne quickly gets the class to quieten down again so that she can continue the lecture. 'We apologize to those who wanted more detail on female genitalia in this lecture, but really, they seem to be similar to each other and the human vagina.'";
	WaitLineBreak;
	say "     'Would the equine students in the class who are willing please strip so that those nearby can study your bodies up close and with a real world model. We should have probably asked earlier, so we will give a brief period of time for the class to examine the discussed genital structures.' As if pre-empting your thoughts, Clyde says, 'For those wondering why we don't just ask for everyone to unclothe at the start of the lectures, we feel that you might get to excited, and this way helps focus you on the species that we are discussing.' He is forced to shout to be heard over the class['] enthusiastic study of horse cocks and the like.";
	say "     Not sitting near any equines, you look around the class to find the nearest one to observe. Across the hall, a zebra is being admired for the size of her breasts, a few students giving them a squeeze, much to her enjoyment. Not far behind her, a male donkey is also receiving the attention of students. His penis is the largest you've seen comparative to the being with it. If he held it against him, it would go from groin to a bit above his head. You guess that what they say about the size of donkeys has been magnified by the nanites. You also wonder how he manages to walk around without it hindering him. You finally see an equine near you, a small Shetland pony. He seems to have been overlooked by the majority of those around him. However, a magnificent green-scaled dragon and a husky bitch seem to have taken a liking to him. The dragon seems especially enamoured by the smaller pony, a hint of scarlet poking from his genital slit.";
	WaitLineBreak;
	say "     'Partner up again,' Clyde calls, his wife getting intimate with a stallion on the floor behind him. 'A reminder that there is to be no penetrative sex. We don't want someone requiring medical attention because they wanted to see how far they could fit a penis into them.' With that, he turns back to the pair behind him, kneeling to begin licking the horse's tail hole. Not being near any equines, you are free to look around the room for any groups that pique your interest. The donkey from earlier has four different students licking up and down his cock, the suggested group size all but forgotten. Between his thighs, a sleek male owl anthro brushes his wings over the equine's swollen testicles while he watches the others service the shaft. The zebra has a classmate nursing from her breasts, the milk dribbling down their chin showing that she is lactating.";
	say "     You return to watching the Shetland pony, interested to see how he is faring. He is seated on the dragon's lap while the winged reptile strokes their shafts in one hand and cups the smaller male's cheek in the other as they make out. The husky is on her knees, alternating between licking one shaft or both at the same time. He may not be the largest of specimens, but it would seem he has some close friends. One after another, the equines around the room reach climax. The zebra woman orgasms around the fingers of an antelope, the donkey sprays semen into the air to land on his admirers, and the pony and dragon shove their cocks into the husky's eager maw, cumming together. At the front, Dr. Vayne climbs to her feet, covered in the spunk of the stallion and her husband. 'Lecture's over. See you next time. Now where did I leave that towel?' Satisfied with what you have learnt, you leave the lecture theater, your mind on the different couplings that you have witnessed in class.";
	now AnatomyCourse is 3;

to say AnatomyLectureThree:
	say "     <WORK IN PROGRESS. Sorry>";

to say AnatomyLectureFour:
	say "     <WORK IN PROGRESS. Sorry>";

to say AnatomyLectureFive:
	say "     <WORK IN PROGRESS. Sorry>";

[ Behavior CLASSES Behavior CLASSES Behavior CLASSES ]

to say BehaviorLecturesEnrollment:
	say "     <WORK IN PROGRESS. Sorry>";

to say BehaviorLectureOne:
	say "     <WORK IN PROGRESS. Sorry>";

to say BehaviorLectureTwo:
	say "     <WORK IN PROGRESS. Sorry>";

to say BehaviorLectureThree:
	say "     <WORK IN PROGRESS. Sorry>";

to say BehaviorLectureFour:
	say "     <WORK IN PROGRESS. Sorry>";

to say BehaviorLectureFive:
	say "     <WORK IN PROGRESS. Sorry>";

[ KINK CLASSES KINK CLASSES KINK CLASSES ]

to say KinksLecturesEnrollment:
	say "     <WORK IN PROGRESS. Sorry>";

to say KinksLectureOne:
	say "     <WORK IN PROGRESS. Sorry>";

to say KinksLectureTwo:
	say "     <WORK IN PROGRESS. Sorry>";

to say KinksLectureThree:
	say "     <WORK IN PROGRESS. Sorry>";

to say KinksLectureFour:
	say "     <WORK IN PROGRESS. Sorry>";


[
(Include established characters)
Sylvia - Perhaps have her teach the mythological lecture.
Evelyn and Evenlyn
Serenity
Gibson
Dana & Kyle

]

Sex Ed ends here.
