Version 3 of Wyvern Patriarch by Gherod begins here.

"Adds a Wyvern Patriarch to Flexible Survival's Wandering Monsters table"

[Version 1 - File created]
[Version 2 - Expanded introductory encounter (description) text with variations depending on the outcome of the previous battle. Added three sex scenes on victory menu.]
[Version 3 - Added a voluntary CV scene to the Victory Sex Menu]

Table of GameEventIDs (continued)
Object	Name
MeetTheWyvernPatriarch	"MeetTheWyvernPatriarch"

MeetTheWyvernPatriarch is a situation.
ResolveFunction of MeetTheWyvernPatriarch is "". Sarea of MeetTheWyvernPatriarch is "Nowhere".

to say MeetTheWyvernPatriarchCount:
	if Resolution of MeetTheWyvernPatriarch < 3:
		increase Resolution of MeetTheWyvernPatriarch by 1; [counting actions until the encounter is summoned]
		if Resolution of MeetTheWyvernPatriarch is 3:
			choose a row with name of "Wyvern Patriarch" in the Table of Random Critters;
			now area entry is "Outside";

a postimport rule:
	if Resolution of MeetTheWyvernPatriarch >= 3:
		choose a row with name of "Wyvern Patriarch" in the Table of Random Critters;
		now area entry is "Outside";

WyvernPatriarchFightOutcome is a number that varies. WyvernPatriarchFightOutcome is usually 0. [@Tag:NotSaved]
[1 - Player submitted]
[2 - Player lost]
[3 - Wyvern Lost through lust]
[4 - Wyvern lost through combat]

Section 1 - Creature Responses

to say Wyvern Patriarch Wins:
	if HP of Player > 0: [player submitted]
		say "     As you recall the big wyvern saying that he would show you mercy if you submitted, you do so, falling to your knees and begging him to not murder you. He looks down at you in disbelief as you plead for your life or something similar. 'Murder?! What kind of basic creature do you think I am?! No, never! I wouldn't dirty my talons for such a savage and deplorable act. But you do need to be taught a lesson!' As you look up at the massive beast, he prepares a thick volley of goop, which lands directly on top of you, pinning you down under that thick substance and denying you any movement. 'Now, let's just properly keep you still while I consider what to do with you. A worthy punishment, perhaps, but since you were so eager to oblige, I might actually amuse myself instead.' The grand wyvern considers his next actions as you remain helplessly stuck in his goop, awaiting your fate...";
		now WyvernPatriarchFightOutcome is 1;
	else: [player fought]
		say "     You attempted to fight back, but to no avail. The wyvern is obviously much stronger than you, so eventually, one last strike brings you down as you collapse on the ground, looking up at the massive beast as he prepares a thick volley of goop. Too weak to even attempt to dodge it, he lands his attack right on top of you, pinning you down under the thick substance and unable to move. 'Would you just stop moving, imbecile! I must administer your punishment as it is duly deserved! Now, how can such a large and almighty being like me use to truly remind you of your place?' The grand wyvern considers his next actions as you remain helplessly stuck in his goop, awaiting your fate...";
		now WyvernPatriarchFightOutcome is 2;
	WaitLineBreak;
	say "     To your shock, the large beast places himself just above you, that large body of his soon almost completely obscuring your view as you find yourself almost between the wyvern's legs. Then, as you look up to his face, which is staring right back at you with a grin, the winged wyrm's cock begins to show itself, a massive red dong that continues to extend itself towards a nearly unimaginable size. He takes no hesitation to begin to shove it in the goop that surrounds you, replacing most of it with the presence and weight of his titanic dick. Luckily, you are still able to withstand the sheer force of the wyvern's giant shaft without being utterly crushed by it, so big that whenever the beast thrusts forward, your vision is completely obscured by it. 'Since you love to get your hands on my sons' parts, I shall give you something truly noteworthy to sate your cravings.'";
	say "     Even as you push against it, his heavy cock battles your strength with ease and keeps you stuck between itself and the goop, only throbbing harder at every movement you make. Everytime you touch its warm body, it seems to pulsate as if yearning for more. Knowing that you will not make it out of here until the massive wyvern is fully satisfied, you think that, perhaps, the best move would be to submit to him and oblige his orders, which seem evident. 'Or is that too much for you to handle, I wonder? You've got a real wyvern here and you cannot even bring yourself to pleasure him properly?! Get to work, fool! I'm not letting you go until I find myself satisfied with your performance.'";
	WaitLineBreak;
	say "     You give it a kiss and try to wrap your legs and arms around the very girthy shaft, giving it your best attempt at further pleasing the wyvern, and he keeps grinding it against you, steadily. Its size only leaves you able to stretch your limbs, barely even hugging the massive meat as you feel it rubbing against your entire body. The only thing that gives you enough room for movement is his precum mixing with the goop all around you, making it more slimy, slippery, gel-like and less sticky, actually serving as a good lubricant. His grunts make your entire body vibrate with their deep grumbling, but is a sign of good appreciation for what you are doing. 'Well, you're not half-bad after all... At least when you're trying.'";
	say "     Despite the wyvern's sarcastic remarks, you can tell you are doing a decent job at stimulating him, the huge cock now giving out more throbbing than before, so you pick up the pace. He does not stop you, encouraging you, even. 'Such enthusiastic moves... One who'd look and see you could say you're actually enjoying this.' He teases you, but your sole objective is to get him off so you can escape, a task that seems to take longer than you would expect. 'You'd better not be rushing it, I do like to take my time...' As it seems to be useless to get any faster than this, that with the resistance the goop around you offers against your movements, you only rub and work it with your entire body just enough to keep him happy.";
	WaitLineBreak;
	say "     He definitely does not seem to be joking when he says he likes taking his time, as you have kept your arms and legs wrapped around his massive dong for quite a while now, ending up soaked in both his precum and the goop. 'Hope you're not getting tired now! I was actually growing closer... Though I'm still wondering if I should risk drowning you in my load. Yet, you do seem to be a resilient individual, so that shouldn't be a problem for you, right?' Your ordeal does not last for much longer, even as he talks, as it seems you have been edging him for a while now. His cock remains unbelievably solid, but soon begins to throb dramatically, making your whole body shake along with it. 'Oh, you've made it... Here you go...!' Then, the massive wyvern pulls back enough to aim his dick's head at you...";
	WaitLineBreak;
	say "     This massive surge of cum hits you right on the face, the first gush being enough to blind you and make you choke for several moments before he thrusts forward, firing the rest of his massive load right into the mixture of precum and goop, then enveloping you in a huge mixture and mess of thick juices. As both substances seem to merge with one another, the whole thing comes down as just creamy liquid, making a puddle around you without actually submerging your body in the stuff. For like a whole minute, his spurts are so huge and heavy you can even hear more of his load falling onto the ground in loud splashes, all this happening while the wyvern just roars in ecstasy, having successfully humiliated you and being quite proud of that.";
	WaitLineBreak;
	if vorelevel is 3 and scalevalue of player < 5: [CV scene]
		say "     But even after his orgasm, the massive wyvern does not seem satisfied, grunting about as he persistently continues to rub his cock on your body, his meat refusing to soften. He does not seem annoyed, however, only more increasingly horny, which begins to worry you. 'You know what... I'm not entirely satisfied yet. I don't think your punishment strikes me as complete. You enjoyed this too much.' He then looks down at you, mischief evident in his reptilian muzzle, and slides his manhood all the way down until its tip is facing your feet. You blink as you attempt to understand what he wants, and then, he thrusts forward to bring that mostly flat head over your soles.";
		say "     Then, his slit begins to widen as he pokes your feet with it, pressing against them as you still struggle to free yourself from the messy trap he got you in. 'I've got just the thing for a mischievous imbecile like you... Just fitting.' Suddenly, one of your feet happen to slide into the gaping orifice, and then, his cock begins to throb, gushing out this slippery precum all over you, once more. Your other foot also sinks into his cock by the time you look back at it, and it is then that you realize the large wyvern's intention. You try to pull it out, but it is too late, as he still has complete hold of you. Another throb and your ankles are caught in it. 'There is no escaping me, fool! You belong to me!' The pull his cock has on you is so great that, with each additional throb, you feel yourself being dragged deeper inside it...!";
		WaitLineBreak;
		say "     Now, it has managed to pull you up to your knees, and the large creature's hungry giant cock continues to swallow you, inch by inch. Your body slowly slides in deeper, threatening to fully disappear into the girthy and vast shaft that yearns for you. No amount of thrashing can stop you from being down to your chest and beyond, its slit having slurped you in a way that only leaves your head out, its fleshy walls constricting you from all around you and moving in an almost peristaltic fashion... You cannot stop the inevitable. The last thing you feel before you are fully enveloped in warm and moist flesh is the slit itself closing in around your face and head, leaving you in complete darkness as you are forced to travel through the giant shaft.";
		say "     Your ordeal is yet far from ending, it is more like a beginning. With his prey - so, you - captured and slowly being pulled towards the beast's internal gonads, the wyvern feels content enough to set off and fly around with you still inside him. Eventually, you are dropped inside his cum factories, almost purposefully of the right size to accomodate your arrival. Thick jizz sloshes around and quickly overwhelms you, leaving you no other choice but to let some of it in your mouth. This space is tight, moist and very hot, rapidly making you sweat while you are in here, trapped inside the wyvern's orbs as he flies around, as if to continue to torment you for his own personal enjoyment.";
		say "     'Well, and if you think I've never done this before, think twice! I'll keep you in there until you've had time to regret having messed with me and my sons! Your own personal jail for your petty crimes against my kind! I hope you enjoy it, ant.' You spend the next moments feeling the whole world around you bounce around, cum washing you for hours, stuck in these tight and warm confinements for who knows how long. Eventually, it is just too much for you to endure, so your senses decide that the wyvern definitely had his way, his much wanted victory, and black out from the physical ordeal.";
		WaitLineBreak;
		follow the turnpass rule;
		follow the turnpass rule;
		say "     You do not know how long it has been, but eventually, you open your eyes and find yourself in the ground, covered in cum, bruised and weakened, waiting for your own strength to return. It takes a while until you manage to catch your breath and clean yourself of the substantial mess this large wyvern has made, then set off to search for your stuff. Luckily, he has delivered you in about the same place as where you met him...";
		TraitGain "Cock Vored Player" for Vuukzasqig;
	else:
		say "     Satisfied with his revenge, the wyvern looks down at you in contempt and proceeds to take off, his giant dong flapping around before it recedes back to its scaled confinements... 'I am satisfied. For now. So be sure to behave in my absence. If I ever see you again, you can bet I'll have my way with you, and I may not be so gentle. Farewell, ant.' He then takes flight, the sheer force of his wings swooping the air almost blowing you away as he rises up, to leave this area. Still soaked in a mixture of sticky liquids, you take only a while to be able to get up and search for your stuff in order to get out of here.";
	CreatureSexAftermath "Player" receives "OralCock" from "Wyvern Patriarch";

to say Wyvern Patriarch Loses:
	if fightoutcome is 11: [Wyvern Patriarch submitted by libido victory]
		say "     With your lewd display of skill, quite literally, the big wyvern's movements become more and more sluggish, as he seems increasingly distracted by what he sees. 'Who... Who fights like this?! S-showing off their... Their indecency! Instead of fighting properly!' By further teasing him, you manage to incite his confused wrath as he launches a volley of goop towards you, something he does not seem to do too frequently, but he does a terrible job at aiming. Most of it fails completely, with only a little bit of it sticking to your leg by pure chance. You do catch a glimpse of what seems to be his cock - and what a massive thing that is - protruding right from between his legs in an embarassing, but grand, erection. It seems you did manage to turn him on...";
		say "     'Grr! I... Why are you...?! T-this is impossible!' It would seem the large wyvern is stuck in an incredulous state as he observes you walking towards him. Something in his mind must be making him stay instead of attempting to flee, confused about how he came to be in such a situation, where he does not know if he has truly lost the fight or is just too distracted with fantasies previously unknown to him. One thing is certain, that massive cock of his stands proudly erect, throbbing and leaking, right before you, showing the effectiveness of your tactics.";
		say "     Perhaps you should use this opportunity to have some fun with the wyvern?";
		WaitLineBreak;
		now WyvernPatriarchFightOutcome is 3;
		say "[WyvernPatriarchLosesSexMenu]";
	else:
		say "     You have seen to be able to deal some damage to the large wyvern, who roars in agony as you prove to be a quite more challenging foe than he thought you would be. 'How can such a puny vermin like you face the likes of me with such incomprehensible competency?!' Out of rage, he launches a volley of goop towards you, something he does not seem to do too frequently, and you barely manage to dodge it all with only a little drop of the stuff sticking to your leg. 'AAAARGH! You're insufferable! Know that this is not our last meeting. I shall take my revenge on you, sooner or later, and you'll have no way to avoid what's coming for you! I shall not give way to your petty strugglings the next time I lay my eyes on you, creature!'";
		say "     Unable to completely subdue the large wyvern, you can only watch him take flight to flee. Would you have it another way, you would take advantage of him and his sizeable body, if you so wished, but alas, it seems this confrontation was not enough to weaken the winged wyrm for that purpose. Were you even expecting to be able to physically overpower him? Perhaps there are other ways to convince a hothead to stand down, unless you genuinely enjoyed kicking his ass instead. One could also say it was for mere survival necessity, but nonetheless, an incredible achievement.";
		now WyvernPatriarchFightOutcome is 4;
	now Resolution of MeetTheWyvernPatriarch is 5; [Player has beaten the Wyvern Patriarch]

to say WyvernPatriarchLosesSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sound his cock";
	now sortorder entry is 1;
	now description entry is "That massive piece of meat surely is big enough to fit an arm or two...";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Get the wyvern to blow you";
		now sortorder entry is 2;
		now description entry is "Time to teach him a lesson and make him blow you";
		[]
		if cock length of player >= 16:
			choose a blank row in table of fucking options;
			now title entry is "Fuck the wyvern's ass";
			now sortorder entry is 3;
			now description entry is "You seem to be big enough down there, why not take him from behind";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the wyvern's cock";
		now sortorder entry is 4;
		now description entry is "You should be able to fit yours in his massive dong, go for it";
	[]
	if "Cock Vored Player" is listed in traits of Vuukzasqig and scalevalue of player < 5:
		choose a blank row in table of fucking options;
		now title entry is "Offer yourself to the wyvern's cock";
		now sortorder entry is 5;
		now description entry is "He has swallowed you whole with his meat before. This time, do you wish to crawl inside it willingly";
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
				if (nam is "Sound his cock"):
					say "[WyvernPatriarchLosesCockSounding]";
				else if (nam is "Get the wyvern to blow you"):
					say "[WyvernPatriarchLosesBlowjobPlayer]";
				else if (nam is "Fuck the wyvern's ass"):
					say "[WyvernPatriarchLosesFuckedByPlayer]";
				else if (nam is "Fuck the wyvern's cock"):
					say "[WyvernPatriarchLosesCockFuck]";
				else if (nam is "Offer yourself to the wyvern's cock"):
					say "[WyvernPatriarchLosesGetCockVored]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding against that, you let the wyvern in disappointment as you deliberately choose to ignore him. He roars angrily at you, saying nothing more as he takes flight, still with his huge dong out for everyone to see. You have to admit to yourself that it is quite an amusing sight, even more knowing that you were the cause.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say WyvernPatriarchLosesCockSounding:
	say "     A kinky idea comes to your mind as you perceive the size of that massive organ, and how easy it would be for you to reach it due to how debilitated the large wyvern is. You doubt he would attempt to resist you given the lusty state he has been put into, so you should be alright if you wanted to proceed with this. As you have just decided you will, you [if player is not naked]first remove your clothing, as you think this is about to get very messy, and [end if]give the beast a glance towards his eyes, then back to his cock, as you begin to move closer. You think he gets the idea, as the shock in his gaze is evident. 'D-don't you dare continue with whatever you're planning! I'll crush you the next opportunity I have! I swear I will!' he continues to threat you, but those words are nothing but empty as you place your hands over the throbbing warm shaft. He offers no resistance.";
	say "     'Ungh... O-okay, maybe that... maybe that's not entirely bad. I... I'll allow you to touch it.' You were going to anyway, as this is your reward, but him allowing you to do so is a nice bonus, and an unsurprising one. The large drake is all talk, it seems, as once you begin stroking the large thing, he simply lowers his guard and observes, with interest, if one might add. As his slit-shaped pupils follow you, your arms get acquainted with their new friend, a massive wyvern cock, which is by now so hard you can feel its pulses in their entirety. With the palms of your hands, you rub the whole shaft, feeling its sheer size and mass, and slowly, you make way for the head, where it is most sensitive.";
	WaitLineBreak;
	say "     The wyvern growls in pleasure, but such is replaced by a startled exclamation once he feels you poking and pressing against the slit of his cock by pushing your fingers in. The receptive hole welcomes your touch, almost as if it was biologically designed for such things. 'What are you...?! Y-you degenerate...!' he complains, attempting to show his discontent, but his dick tells you otherwise. As it continues throbbing and oozing precum, you have everything you need to know he is thoroughly enjoying this despite his efforts at discouraging you. The beast does not even make an actual move to try to stop you as you put more of your fingers in. Then, you join your other hand, and with both, you begin pressing down even further, stretching that slit around them all the way to your wrists.";
	say "     'How dare you defile my manhood like this...! And why do I like it?! I mean... Urgh! J-just... Be done with it...' Slowly, the wyvern gives in to the sensations of having his cock sounded by you, feeling your arms entering his shaft and moving deeper. Quickly enough, your body begins to get soaked in sticky precum that steadily continues dribbling over and over from the open slit. Its drops begin to cover more and more of your shoulders, dropping down to your chest and making their way even further downwards. You are bound to get drenched in the stuff judging by how excited the wyvern is and how much he is leaking, but such thing will not stop you from continuing to sound his cock, pushing and pulling your arms further in and out.";
	WaitLineBreak;
	say "     Once you get a good rhythm going, the big wyvern completely gives up and accepts the pleasure, not even addressing you any longer. He simply remains there, lying on his back, thoroughly defeated as you continue to have your fun. There is so much precum that, by now, your entire body is covered. Good thing you have nothing on, as everything you owned would have been soaked in wyvern juice. But this also indicates that if you carry on doing this, the large winged creature will surely reach his climax. Knowing this, you simply continue, picking up the pace with your arms inside the wyvern's cock further traveling the shaft back and forth, driving the beast to a lust frenzy predominantly guided by feral growls of pleasure.";
	say "     He breathes heavily the closer he gets to the point of no return, and you do not intend to keep him waiting. You go all out, all the way until his cock begins to throb like crazy, precum gushing out at an accelerated pace, then followed by a roar and unintelligible mutterings. The wyvern cums, raining his huge load all over you, mountains of spunk simply colliding on your face and coating your entire body. Spurt after spurt lands on and past you, making a mess of your surroundings for what seems to be a full minute or so. You should know that large creatures can cum a lot, but still, his orgasm is an impressive show of how much one can truly hold in their balls. You are almost blinded by all the thick layers of cum that are covering your face, which you try to shove off by rubbing it across the wyvern's sensitive tip. And you then are able to see the wyvern smiling in bliss, his penis still hard and leaking its last drops.";
	WaitLineBreak;
	say "     However, your arms remain locked inside him. And by locked, you mean... you cannot take them out. He chuckles in mischief, as if he planned this all along. 'You think it would be so easy to mock me, puny thing? You're not the first to fall in this trap. And many have never returned from the confinements of my internal gonads. Such is the size of my wrath when I feel as disrespected as I do now.'";
	if vorelevel is 3 and scalevalue of player < 5: [CV scene]
		say "     And now, you have just realized the wyvern has turned the tables on you, his shaft not just locking your arms any longer, but pulling them in. You try to resist, as your first instinct demands, but it only further excites the wyvern, causing him to counterattack with a harder pull. Your face rams against the slit, which then opens up to swallow your head in one go. 'Oh, you shouldn't be so eager to enter my cock... I do like taking my time, enjoying your presence within my shaft, slowly descending towards its inevitable doom... Come on, don't try telling me this isn't what you wanted, you degenerate filth.' You would see him grin if you could still see, but the darkness consumes more and more of you as your body keeps on steadily sliding deeper into the wyvern's penis.";
		say "     You kick and push against his meat to no avail, only to be sucked in even further ahead. Your torso follows after your neck and shoulders, keeping your arms stuck against your own body as they, too, go inside. It does not take long for your legs to come right after as the wyvern grows impatient. 'Fine, I'll take you entirely at once! You deserve proper punishment!' he declares, keen on fulfilling his word. With each throb, your body goes deeper and deeper, faster than what you would find comfortable - if you would, at all - and quickly swallowed whole by the cock, legs and feet being the last to disappear into his shaft. The rest of the trip is filled with ondulating squeezing of your body, which feels oddly arousing, as you are carried towards the beast's internal balls.";
		WaitLineBreak;
		say "     'Our encounter is soon from over, runt. This will be your prison for the next hours, and that'll teach you to respect me... If I don't end up forgetting about you entirely. In that case, you'll just be my meal! As you deserve to be, if I were not merciful.' As you hear his words, you are indeed dropped in his gonads, almost purposefully of the right size to accomodate your arrival. Thick jizz sloshes around and quickly overwhelms you, leaving you no other choice but to let some of it in your mouth. This space is tight, moist and very hot, rapidly making you sweat while you are in here, trapped inside the wyvern's orbs as he takes flight... to simply continue to torment you for his own personal enjoyment.";
		say "     'Now, as you seemed so eager to be inside me, I'll keep you for a while longer than I usually would. Perhaps you'll have time to reconsider your actions towards me. Give it a thought as you bath in my seed. Get a good taste of it... And feel how I could reduce you to nothing but more of it. This is how inferior you are to me!' You spend the next moments feeling the whole world around you bounce around, cum washing you for hours, stuck in these tight and warm confinements for who knows how long. Eventually, it is just too much for you to endure, so your senses decide that the wyvern definitely had his way, his much wanted revenge, and black out from the physical ordeal.";
		WaitLineBreak;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		say "     You do not know how long it has been, but eventually, you open your eyes and find yourself in the ground, covered in cum, bruised and weakened, and your skin... slightly sticky and slimy. There is definitely something strange about the consistency of your body, leading you to think that the wyvern probably was not joking when he said some of his prey do not return from a trip like this. You are left with no other alternative but to wait for your own strength to return. It takes a while until you manage to catch your breath and clean yourself of the substantial mess this large wyvern has made, then set off to search for your stuff. Luckily, he has delivered you in about the same place as where you met him...";
		say "     Your body has also returned to normal, leaving no long-lasting consequences from messing with the wyvern like this. Perhaps you should not provoke him too much, lest you want him to fulfill his threats and end your existence.";
		TraitGain "Cock Vored Player" for Vuukzasqig;
	else:
		say "     The horror in your eyes as he reveals what his intentions are only amuses the wyvern, as he throws a laughter. 'Hah! You should've seen your face! I mean, I could simply swallow you alive right now, but... You have indeed provided me with pleasure. This turned out to be more entertaining than I thought. So... perhaps I'll simply let you go. But don't expect mercy the next time we meet, just because we shared but one moment of pleasure.' He then stares at you dead in the eye before his large cock begins to release your arms. They slide out of his shaft, and by then, his meat begins to retract back into the large wyvern's body. With no further words shared between you, he takes off, flying above you and away, leaving you alone in the messy puddle.";
	CreatureSexAftermath "Wyvern Patriarch" receives "Other" from "Player";

to say WyvernPatriarchLosesBlowjobPlayer:
	say "     Given the extreme arousal state of the large wyvern, you think you may be able to get him to do certain things for you as long as you place your words well. First, you decide to get your [cock of player] cock in hand[if player is not naked], after fully exposing your body and remove any clothes on the way[else], ensuring your naked body is clearly visible[end if], and see if the wyvern's eyes follow your movements. Noticing the beast's rigid hard-on throbbing as he stares at your dong, you make the suggestion, stepping towards the male wyvern with overflowing confidence. 'No, you cannot possibly ask that of me! I w-would never-...' his words come to a halt as he, once more, trails the motions of your manhood with his slitted pupils as you swing it around. Besides, his very own equipment seems to show the excitement he dares not express through words and actions, such betraying the wyvern's pride.";
	say "     He hesitantly steps towards you, his great presence making the ground beneath you tremble, and leans his head over yours with his gaze fierce and judgemental. 'Fine, if this is your way to make amends, I shall appreciate the gift you are offering me. Not that this means I thoroughly enjoy the idea, but I am a polite and respectful wyvern. Therefore, it is not in my code of honor to refuse a gift so generously presented, and that is the only reason I will accept your request. None other!' After making such declarations, he half-angrily headbutts you so that you fall with your ass on the ground. While definitely a little painful to your butt, it is not the end of the world, though you barely have time to readjust yourself as the wyvern's head hovers above you.";
	WaitLineBreak;
	say "     Before you can react, his tongue comes descending upon your body and, with long and surprisingly tender licks, he caresses your entire body with that slick organ of his, decently wet and nimble. Its warm surface clashes with your outside body temperature, delivering a pleasant sensation as it rubs down on you through all the soft and sensitive spots. You feel the wyvern's damp breath brushing against you, causing your body's surface to glisten in moistness. With repeated circular motions around your torso, the wyvern continues to lick your body, sending many shivers of pleasure up and down your spine in ways you cannot even describe. It makes your penis throb with such solidity that your mindlessly lead your hands over to stroke it.";
	say "     With his focus unabated, the wyvern then moves his very long tongue over your parts, swatting your hands away with a grunt, and what he does is twirl his tongue around your shaft and stroke it that way, wrapped around it. The sensations are incredible, as the wyvern's tongue constricts your penis and moves through it with surprising mastery, feeling way better than your hands could ever feel. The beast's saliva is gooey and serves as a good lubricant, helping you feel that friction all over your cock in a much more bearable and pleasant manner. All this encourages your hips to move on their own as you thrust into and through the tunnel of spiral flesh the wyvern's making.";
	WaitLineBreak;
	say "     The sensations of bliss prove to be a lot for you to endure, so much that you are quickly shown signs of being near your edging point. The wyvern's eyes shift towards yours as he bumps the tip of his muzzle against your pelvis, prompting you to stop moving as he takes the lead. His tongue then moves around your cock as the repeating stroking ends, but a constant caressing takes place. Close as you are, it does not take you much to begin to feel your load being pumped through your manhood and all the way out with extraordinary force. The orgasm hits you so hard that you moan loudly, not even processing that you are actually cumming inside the wyvern's mouth. Although, he does not move away, instead further stimulating you until the very last drop of jizz leaves your body.";
	say "     He continues to caress your cock even after your climax begins to subside, giving you a bit of overstimulation as your organ begins to recover its high sensitivity. But while you would initially expect cruelty from the beast, he keeps it slow and tender, as to give you a few nice moments to end this interaction. The male wyvern then bumps his muzzle against your chest, softly, in what seems to be a show of intimate affection. For moments, you even forget you were fighting against each other not long ago, and you think he also placed that fact aside, for some reason. Although, this does not last for long, as the wyvern raises himself up as soon as several seconds pass.";
	WaitLineBreak;
	say "     'Hmph. I hope you had what you craved for. You'd make for a tasty snack, if I must admit, and your seed is of adequate flavor. Perhaps if you'd consider offering yourself to me as a... well, to put it bluntly, my property... I'd consider extracting more of it whenever I felt like it. Judging by how hard you came, I'm certain you'd enjoy such outcome. Alas, you will always be a mischievous runt, so I cannot trust your intentions. If I see you again, don't expect me to show mercy. Either earn it or accept your deserved punishment for all the transgressions you've committed and that I will NEVER forget. FAREWELL, puny thing.' With no further words shared between you, he takes off, flying above you and away, leaving only a brusque wind to swat at your face.";
	CreatureSexAftermath "Wyvern Patriarch" receives "OralCock" from "Player";

to say WyvernPatriarchLosesFuckedByPlayer:
	say "     Given the extreme arousal state of the large wyvern, you think you may be able to get him to do certain things for you as long as you place your words well. First, you decide to get your [cock of player] cock in hand[if player is not naked], after fully exposing your body and remove any clothes on the way[else], ensuring your naked body is clearly visible[end if], and see if the wyvern's eyes follow your movements. Noticing the beast's rigid hard-on throbbing as he stares at your dong, which is quite sizable and eyecatching, you make the suggestion, stepping towards the male wyvern with overflowing confidence. 'W-what did you...? I... I'm a... I-I don't do that! Y-you'd dare to treat me like a female?!'";
	say "     You remark that this has nothing to do with his sex, and that it is totally fine to enjoy a good dick in their asses. Being a large male wyvern should not take that joy away from him, if he so wished to feel your manhood inside him. Judging by how his words come to a halt as he, once more, trails the motions of your manhood with his slitted pupils as you swing it around, you think your short speech had some effect. Besides, his very own equipment seems to show the excitement he dares not express through words and actions, such betraying the wyvern's pride. Now that he knows he cannot hide it from you, he rolls his eyes and grunts before finally opening his mouth to speak, 'I... suppose I could give it a try. Yes, it is definitely something of an experiment, nothing else. Y-you do have a... an interesting tool. I-I must learn from things like this if I must better my procedures with other female wyverns to expand my patriarchy!'";
	WaitLineBreak;
	say "     Hearing him speak, you only nod, then at some point, you start beckoning the wyvern to turn around and give you access to his rear. He is one big flying lizard, so you would have to climb over his legs and line up your cock with his hole while holding onto him. It will look as if you would effectively be mounting him, almost. Hesitantly, the wyvern shuts his mouth and proceeds to do as you say, lying down over the ground and do his best to let you get on top of him, even lifting his tail and swinging it out of your way. Now that your path is clear, you walk towards him and position yourself in a way you can finally bring your dick over the wyvern's hole. He lets out a grunt once he feels the tip of your meat brushing against his pucker, which looks surprisingly tight for a creature of his size.";
	say "     The sight of a fully grown, mature and imposing male wyvern giving way for you to fuck him in the ass fills you with newfound excitement as you get a real grasp of the current situation, with you on top of such creature and ready to thrust into him. Without any further ado, you finally decide to give it to him, pushing your manhood against the wyvern's butthole and burying it all the way in. This causes the beast to growl deeply as his tail gets dropped across your shoulder, so you grab onto its base and resume thrusting, continuing to fuck the big wyvern with growing enthusiasm. His insides feel tight and pulsate around your shaft, providing you with great sensations that encourage you to keep the pace deep and steady, momentarily...";
	WaitLineBreak;
	say "     But eventually, you want to speed up and really give it all to the male wyvern, using his hole like you would use a fucktoy with all the horniness it demands. He definitely feels your determination, but does not stop you, instead seeming like he actually enjoys it, albeit too embarassed to verbalize it. It feels so good to you, however, that you could not care less about his insecurities and simply proceed to thrust faster and harder, getting what pleasure you can get from this whole experience. His hole begins to relax and welcome more of your fucking, which you take as a hint to go even harder, as hard as you can. Losing yourself in the momentum, you carry on assfucking this wyvern until your body gives signs of nearing your edging point.";
	say "     Soon, it is as if a thunder struck you when you shoot your load into the wyvern, and at the same time, you hear him release a cry as he, too, creams over the entire ground underneath him. Spurt after spurt your loads leave through your bodies simultaneously, in a harmony that only makes you feel your climax stronger as it is reinforced by how hot the whole situation feels to you. Such intensity leads you to the necessity of catching your breath as soon as you are done, pulling your cock out of the wyvern and finally walking out to let him go. The beast refuses to look at you in the eye as he prepares to take flight with a grunt. 'Hmph. Not bad for a puny thing like you. But don't think you've just earned my respect! I was merely in... a mood of switching things around, that's all. I shall still have my way with you... One day!'";
	WaitLineBreak;
	say "     With no further words shared between you, he takes off, flying above you and away, leaving only a brusque wind to swat at your face.";
	CreatureSexAftermath "Wyvern Patriarch" receives "AssFuck" from "Player";

to say WyvernPatriarchLosesCockFuck:
	say "     Given the extreme arousal state of the large wyvern, you think you may be able to get him to do certain things for you as long as you place your words well. First, you decide to get your [cock of player] cock in hand[if player is not naked], after fully exposing your body and remove any clothes on the way[else], ensuring your naked body is clearly visible[end if], and see if the wyvern's eyes follow your movements. Noticing the beast's rigid hard-on throbbing as he stares at your dong, you make the suggestion, stepping towards the male wyvern with overflowing confidence. His eyes widen as he seems almost... impressed with your audacity at making such request. 'What do you mean you wish to... T-that's quite a... An interesting proposal. Yes, you see... I am used to insertions in that particular place, and the tip is quite sensitive. You know what, I've deemed that this shall be a good way for you to redeem yourself and make it up to me.'";
	say "     With such an easy persuasion attempt, you are left pretty reassured that the large wyvern is receptive to your intentions, and even more as he stands up higher to place his massive tool fully in display. 'Show me what you've got, then! You've made this happen, so I expect a proper solution.' You cannot lie about your own excitement to line up your cock into the wyvern's urethra and get started with this, so you walk towards him and do just that, slowly pressing against its head and into the small slit that easily stretches around your shaft. This makes the beast's smile wide as he feels your hands rub over his tool, which throbs excitedly and oozes so much precum that it comes running down your legs. It is not unwelcome, however, as it serves as natural lubricant for you to thrust deeper into his meat.";
	WaitLineBreak;
	say "     You not only fuck the wyvern's cock, but also make sure to give him proper worship with your touch, much to the male's pleasure. Holding his member in place, you begin to thrust in and out at a more steady pace, feeling your meat entering that warm, tight and wet place over and over as the pulsations further contribute to the bliss you feel around your manhood. 'You like it? Feels good, doesn't it? Should try other parts of your body sometime too...' he entices you, although you are so focused in the pleasure around your loins that you cannot even consider anything else right now. As you simply carry on fucking the wyvern's meat, pounding it harder and deeper, your surroundings quickly become a mess of precum all over.";
	say "     But that is still not the end of it, as the messiest part is about to come. The feelings escalate into utter bliss and joy as soon as your body gives signs of nearing its limit, your climax building up faster than you would like. It feels so good, however, that you have little incentive to slow down, something that even the wyvern discourages, 'Keep at it, runt... You want to feel good, don't you? Go on, and I'll be sure to pay you back...' These words serve as further motivation to give in to your instincts as you pound that slit as fast as you can, and eventually, your climax surges. You find yourself cumming down the wyvern's shaft, spurt after spurt traveling down his meat as you feel it shake and throb...";
	WaitLineBreak;
	say "     'Hhng... Good job... Here's your reward...!' he warns, struggling with words at this point, until a massive force pushes you out of the beast's rod and onto the floor, followed by an avalanche of cum that washes over you like a tidal wave. The wyvern cries in pleasure as his orgasm continues, covering you from head to toe in that creamy white liquid and creating a puddle of mess underneath you, mixed in with the precum from before. 'Yees...! You'd be such an easy prey right now... but alas, I'm spent. I only hope you've enjoyed indulging yourself in such an act, as I shall come to collect my debt the next time I see you. Farewell for now, puny thing.'";
	say "     With no further words shared between you, he takes off, flying above you and away, leaving only a brusque wind to swat at your face as your body remains atop all the mess. It will take you a while to clean yourself before you can grab your stuff and leave.";
	CreatureSexAftermath "Wyvern Patriarch" receives "Other" from "Player";

to say WyvernPatriarchLosesGetCockVored:
	say "     An idea comes to mind based of past events in former encounters with this large wyvern, ones that involve his gigantic tool, which seems capable of consuming anything that comes too close to its slit as long as it is bigger than them. Remembering how he took you inside him before and everything you felt during that, his meat throbbing and pulsating all around you as you were pulled deeper into the wyvern's internal gonads, you cannot help but yearn to repeat that once more. As your weakened foe remains in front of you, too aroused to even consider prolonging the fight, your eyes shift towards his engorged, magnificent reptilian cock that is protruding from between his legs, huge in size and begging for attention, as you take slow steps forward towards him.";
	say "     'And what do you think you're doing, imbecile?! With that look on your face?! You're up to something wicked, aren't you?! Stay away! I won't let you have... whatever you're plotting in that little mind of yours!' the wyvern says this, however, the closer you get, the more his dick seems to like it. The flushed expression in the creature's scaly muzzle is yet another evidence that he may not actually mean what he is saying, all the more obvious that this situation is only adding to his arousal. Once his manhood is within your reach, a light pat is all it takes for it to begin oozing precum, causing the wyvern to let out a hesitant moan, further reinforced by your continuous caresses.";
	WaitLineBreak;
	say "     'D-damn you! Is this what we're doing?! Just teasing me like that?! At least give me some proper service!' You simply ignore his demands and continue to caress his enormous shaft, sliding your hand all the way across its circumference before you finally plant it at the tip, a very sensitive spot for the wyvern that definitely sends significant throbbing throughout the entire thing. The large creature whimpers with your affections when he is not acting angry at you, and when you decide he has had enough teasing, you move to the front of his meat. Now with both hands in reach of that gigantic thing, you gently begin to press your thumbs into the slit and slide them across its sides, causing precum to gush straight into your face and body.";
	say "     Keeping this up earns you quite a bath of the stuff as the wyvern continues to drip more of it, squirming with those sweet sensations. 'T-this is vile...! W-why do you hate me so...?!' he says, amidst a sequence of moaning before he throws his head back, clearly overwhelmed with a pleasure he cannot comfortably endure, though cannot admit to you nor himself. Knowing what you are doing is resulting in what you intended, you carry on teasing that gaping slit as [if player is not naked]you get started on removing your clothes to prepare yourself for the offering you wish to make to his massive tool, which is your whole naked body[else]your already naked body stands ready to make the offering you wish to make to his massive tool, which is your entire self[end if]. Once that is out of the way, you lean in for a kiss, making out with the slit as you lick at its borders, tasting the sweet globs of precum that continue to emerge.";
	WaitLineBreak;
	say "     'D-do you intend to do what I'm thinking...? No, that should NOT be something YOU'd want to do willingly! No! I-it's not supposed to be fun for you! Only for me!' Now it stands obvious that your plan has been revealed to the wyvern, but this does nothing to deter you, nor does he take any action in that direction. Figuring you might want to make your entrance into his cock a little different than how it is usually done, you decide to pull away for brief moments and take a seat on the ground. Then, you lift your legs in order to, instead, use your feet to rub at the tip of the wyvern's prick, while slowly converging towards his slit once more. Now pressing your toes against it, you let them sink into the massive dick, which eagerly begins to take you in as soon as you start pushing.";
	say "     'O-ooh... W-why... Would you want to do this?! You p-pervert!' Ignoring his words, you carry on pushing your feet deeper, and together, they enter his slit all the way up to your ankles. A huge amount of precum begins to follow as the wyvern's dong oozes it like a salivating beast yearning for its meal, and that is something you are happy to oblige. 'You know what, you... Nngh! If you want to be eaten that way, so be it! Go on, just keep... Mmmh... J-just keep-...oh it feels so good...' He can barely find the words to express his content as his pleasuer and lusts begin to overtake him. Soon, his cock pulsates so intensely out of sheer desire to consume you that you feel yourself being pulled in by your feet with each throb, such overwhelming force simply dragging you deeper and deeper into the engorged shaft.";
	WaitLineBreak;
	say "     'There's no regrets now, little runt! You went ahead and started with your feet, there's little you can do to fight it now!' You have not fought this at all, and think that perhaps the wyvern is deluding himself with the idea that he has the upper hand, but when the whole plan was to feed yourself to his cock for fun, your demeanor stands on ignoring his taunts and simply smile back at him, showing him that you are definitely enjoying yourself. You can see the wrath building in his eyes as he feels you are mocking him, and suddenly, an exceptionally intense throbbing causes his cock to begin swallowing you down at a much faster pace, barely giving you time to adjust yourself before your whole body ondulates with the momentum, as you are stuck inside it by just your legs.";
	say "     'So you dare to make fun of me?! Bet you wouldn't expect that I'd actually enjoy this? Seeing you tiny, little, puny thing being swallowed whole by my rod? Oh, that's a sight I enjoy profoundly.' With newfound energy, the wyvern is somehow actively pulling you deeper into his cock by some work of muscle, and you quickly find yourself sinking all the way past your knees, until you are wearing his slit as you would a belt. This is when he decides to lie down on his back, wings stretched to the sides, as he brings his member upwards, now allowing gravity to aid your descent. His expression is no longer of anger nor revolt, but simply sheer wicked pleasure from seeing you disappear further and further down his meat.";
	WaitLineBreak;
	say "     'I think I might prefer to look at my prey in the eyes as they fall to their inevitable doom. At least, I must thank you for this particular enlightenment. Now, be sure to squirm as much as you can, so I can feel you inside me with your futile struggles.' Perhaps you should play along, you consider, and move your body around to further motivate the wyvern to take an active role in worsening your circumstances, which you are totally responsible of. As the warm encasing begins to slide up your waist and threatens to reach your chest, while you move and kick your legs about as much as you can within the tight, throbbing inner walls of his shaft, the wide grin in the wyvern's muzzle is all you need to feel accomplished with your efforts.";
	WaitLineBreak;
	say "     However, you were careless enough to show him that you were enjoying this. Noticing that you had a silly smile on your face, you fear that the wyvern would, once more, show is discontent towards your attitude, but instead, he continues grinning. 'So it seems you [italic type]actually[roman type] enjoy this... I wonder how long you could survive bathing in my seed, then. Shall we test that out?' For moments, you are left thinking about that last sentence...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Being imprisoned for an indefinite amount of time in the wyvern's balls sounds hot. You feel turned on.";
	say "     ([link]N[as]n[end link]) - That sounds like a horrific fate! You are beginning to regret this...";
	if Player consents:
		Linebreak;
		say "     His gaze pierces yours in all seriousness as you can only feel like this is really hot to you, which seems to have not been what the wyvern had intended. 'For the love of... You truly are a degenerate pervert! Very well, you will spent an undecided amount of time within the confines of my orbs. Perhaps until when, or if, I decide to liberate you. We shall see for how long you will find this arousing.'";
	else:
		Linebreak;
		say "     His grin only widens at the sight of your despair, which you express immediately. 'Ow, the litte runt is now scared of what might happen to them once they go missing within the confines of my orbs? TOO LATE! You will get to experience it either way! And all the way until... or IF... I decide to liberate you.'";
	WaitLineBreak;
	say "     'Now, I tire of your face. Get down.' With a single throb, he pulls most of your body inside him, as apparently he has complete control over how fast he can swallow you deeper into his member, and soon, you have only your head poking out of the tip. 'What a pathetic thing you are... So vulnerable, at the brink of disappearing into me with a single push... For who knows how long! And all out of his own volition... I must admit, it is the idea that has most turned me on until this very day.' The wyvern then leans his head over and puts his long tongue out to give your features a couple of lickings, filled with wet saliva that comes washing over you. Once he is satisfied with this, he places it above your head and begins to push you down with it.";
	say "     Soon, your chin is pulled inside, your mouth follows right after, and your nose sinks in right before you dive into a complete darkness. It does not take long for the wyvern to fully consume you and have his slit close right above your skull, having completely encapsulated you inside his cock. Movement is extremely limited while inside this huge tunnel of pulsating walls, which yet continue to pull you deeper and deeper, all the way into the base of his shaft and beyond. You trip arrives at an end once you are deposited in his internal balls, safely tucked in within them and partially submerged in his warm fluids, curled up within what space you are given inside.";
	WaitLineBreak;
	say "     Thick jizz begins to slosh around and eventually overwhelms you, leaving you no other choice but to let some of it in your mouth. This space is tight, moist and very hot, rapidly making you sweat while you are in here, trapped inside the wyvern's orbs without any concern from the beast himself. His voice now booms from every direction, vibrating against your very being as he speaks, 'Now, I feel I shall take a nap without a care in the world, much less for how much time passes with your sorry presence in my gonads. With luck, your existence would be terminated in an ecstatic melting of your flesh... But alas, I find myself too kind to let you succumb to such a fate. Don't get me wrong, some of my enemies have due to how much I despised them, but... Why waste such a willing prey such as yourself? Perhaps I should simply continue chasing you... And one day, you could become my pet! I have a welcoming living space for you and everything...'";
	say "     During his taunts, your senses begin to fade away as the nearly hypnotic sensation of his cum bathing your body, the heat and the scent draining what is left of your strength... Eventually, you simply fall asleep, blacking out for an undetermined amount of time as a prisoner in the wyvern's balls.";
	WaitLineBreak;
	follow the turnpass rule;
	follow the turnpass rule;
	follow the turnpass rule;
	follow the turnpass rule;
	say "     And sometime later, you wake up, finding yourself in the ground, covered in cum, bruised and weakened. Your skin has been left feeling squishy, seemingly having lost a bit of its color, and looks like a white-ish mess. It even feels dormant, albeit these effects last only for a temporary moment, fortunately. There was definitely something strange about the consistency of your body, leading you to think that the wyvern definitely was not joking when he said some of his prey have succumbed to a similar fate that ended their existence. You are left with no other alternative but to wait for your own strength to return. It takes a while until you manage to catch your breath and clean yourself of the substantial mess this large wyvern has made, then set off to search for your stuff. Luckily, he delivered you in about the same place as where you met him...";
	say "     Your body eventually returns to normal, leaving no long-lasting consequences from messing with the wyvern like this. Perhaps you should not provoke him too much, lest you want him to fulfill his threats and end your existence... Even though this was entirely your decision.";
	CreatureSexAftermath "Wyvern Patriarch" receives "Other" from "Player";

[---]

to say Wyvern Patriarch Desc:
	if Resolution of MeetTheWyvernPatriarch is 3: [first time met]
		say "     Amidst your exploration within the outskirts of the city, you begin to hear a roar from the distant horizon, something yet far from your current position, but which is enough to put you in alert. Naturally, your reaction is to keep clear of any area that is too visible from high above, lest you would encounter one of those wyverns again. This feral, wild and imposing cry continues, growing ever closer, so you prepare for the worst. Quickly, you search for cover as the shadow of a large flying creature looms over you, triggering your survival instincts. Your blood starts pumping as your heartbeat spikes, adrenaline rushing down your veins, as this is the biggest, meanest, strongest wyvern you have ever seen in your life.";
		say "     'Cease your futile attempts at hiding, creature! I've caught your scent long ago!' his voice booms towards you, deep as you expected from such a sizable winged wyrm. 'Weren't you brave, or stupid, enough to face my sons in battle?! And even had the AUDACITY to defile their pure appearance once you've managed to take advantage of them?! Oh, you'll pay for what you've done...!' He [italic type]really[roman type] does not seem happy... What have you done to incite the fury of such a massive wyvern?! And did he just accused you of attacking and [']defiling['] the looks of one of his... sons? As doubtful as his claims are, you do not think you can get by without getting into what appears to be an extremely unfair fight.";
		WaitLineBreak;
		say "     'If you submit, I may show mercy... But if you intend on prolonging this futile conflict, I'll ensure your DEMISE!'";
		WaitLineBreak;
		say "     This massive wyvern hovering above you, with loud and intimidating wings, has the same characteristics as a normal one, except much larger. As he swoops down to confront you, the sheer force of his landing nearly knocks you off balance as the earth around you shakes, his enormous visage enough to overtake you within his shadow. From his head, two large horns extend towards the back of his long and girthy neck. Then, right at the tip of his wings, protrudes a huge and sharp foretalon on each. You also have his impossible weight, supported by a pair of extremely thick, powerful legs and huge clawed feet, all serving as natural weapons to cut and impale you with. You have never seen a wyvern this muscular and powerful-looking, way larger than even a monster truck. The nature of his voice clearly suggests he is a male.";
		now Resolution of MeetTheWyvernPatriarch is 4;
	else:
		say "     Amidst your exploration within the outskirts of the city, you begin to hear a familiar roar from the distant horizon. You know exactly what this means and prepare for the unavoidable encounter...";
		WaitLineBreak;
		if WyvernPatriarchFightOutcome is 1: [player submitted]
			say "     [one of]'Ah, look who's here...! The little runt from before... Did you come here to receive your deserved punishment once more? Perhaps you have come to terms with your savage ways and intend to atone for your mistakes? Let's make this less hard than it needs to be and simply SUBMIT to me this time too. I'll ensure your cravings for repentance are sated...'[or]'Have you come here to amuse me again? Think I'll forget what you did to my sons? Come here, then! I'll remind you of your place...'[or]'It seems you've returned. Perhaps I found a willing servant? Might as well submit already and avoid further unpleasantries! Come on closer, you know you want it...'[or]'Found you lurking around... Are you plotting something again? Drop to your knees and beg for my pardon. Once I'm done with you... I'll consider how I'll prolong your punishment. I'll even make you enjoy it.'[or]'I'm starting to wonder if you truly enjoy this... It's starting to be very easy to find you, you know? Not that I'm complaining, in fact, you're making it easier for me. How about I claim you once more? Punishing you is rather enjoyable, I'll admit.'[or]'You really do like to be dominated, don't you? Let us drop the fighting and proceed into what really matters here. You serving me as repentance for your sins... A proper punishment.'[at random]";
		else if WyvernPatriarchFightOutcome is 2: [player lost fighting]
			say "     [one of]'You again?! Hasn't our last meeting been clarifying enough?! Must I BREAK you until you learn your place?! So be it. I will ensure you won't forget another time what it means to defy my authority! SUBMIT! Or I'll make you.'[or]'I see you, runt! You're going to get another beating that'll teach you not to mess with me nor my kin!'[or]'You dare showing your face again? Very well. I'll teach you another lesson, and will keep doing so until you're utterly broken!'[or]'Would you look at that, were you going anywhere? Plotting something, I bet! Or have you finally come to your senses and wish to submit to me?'[or]'Where do you think you're going, runt?! Without paying me due respect?! Allow me to rectify that.'[or]'Caught you again, wimp! Now... Let's see how I'll destroy you, this time. Perhaps it'll be enough to finally teach you your place! If not... I'll simply break your resolve until I hear you beg.'[at random]";
		else if WyvernPatriarchFightOutcome is 3: [wyvern lost through lust]
			say "     [one of]'Y-you! I... I will not let you corrupt me with your s-... urgh...! S-savage ways again! I... I'll teach you a lesson this time. You won't break me as easily as before, no no! This time, I'll stand strong, like a true and proud wyvern would!'[or]'It's... you. How... Quaint finding you here. It's almost as if you expected my arrival. So, what is it this time? You're going to flash your [if player is male]dangling tool[else]bubbly buttocks[end if] again? Is that all you can do?! I warn you, I... I will not fall for that again. I've seen it all! It no longer impresses me!'[or]'No! Not you again! If you flash me again with your parts I'll... goop you to the ground and... Yes, you'll see what I'll do to you! I don't even need to tell you! Because, this time, you'll lose!'[or]'Oh for the love of... You?! Fine! Go on, strip and flash me and do all those lewd things you usually do. I just know you're going to do it again, so why expect anything else?! Deviants like you know only those dirty tactics. But I'm stronger today! You'll see...'[or]'So we meet again. Listen here... It's not too late, you know? You could just submit! It's much easier... And we can both enjoy each other quicker and sooner instead of forcing me to watch your exposed figure moving around and dancing and... N-not that I enjoy that! No, I didn't mean it that way-... Enough talking! PREPARE YOURSELF!'[at random]";
		else if WyvernPatriarchFightOutcome is 4: [wyvern lost through fighting]
			say "     [one of]'Hah! We meet once more. I doubt you can defeat me again, that last time was but a mere a strike of luck! You'll lose now, and your punishment will be more than deserved.'[or]'So, what is your tactic this time? Because if you intend to behave like an annoying fly, I'll swat you flat onto the ground. You'll stand no chance against me today!'[or]'I wish I could call you a valiant warrior and a worthy opponent, but one who wins by chance deserves no respect. I shall teach you what true might is!'[or]'What will it be today, runt?! Another duel? Very well... Prepare to be crushed. You won't win.'[at random]";
		else: [a failsafe]
			say "     'You again?! Hasn't our last meeting been clarifying enough?! Must I BREAK you until you learn your place?! So be it. I will ensure you won't forget another time what it means to defy my authority! SUBMIT! Or I'll make you.'";
		WaitLineBreak;
		Linebreak;
		say "     This massive wyvern hovering above you, with loud and intimidating wings, has the same characteristics as a normal one, except much larger, and is covered in both red and golden scales. As he swoops down to confront you, the sheer force of his landing nearly knocks you off balance as the earth around you shakes, his enormous visage enough to overtake you within his shadow. From his head, two large horns extend towards the back of his long and girthy neck. Then, right at the tip of his wings, protrudes a huge and sharp foretalon on each. You also have his impossible weight, supported by a pair of extremely thick, powerful legs and huge clawed feet, all serving as natural weapons to cut and impale you with. You have never seen a wyvern this muscular and powerful-looking, way larger than even a monster truck. The nature of his voice clearly suggests he is a male.";

Section 2 - Wyvern Patriarch as NPC

Table of GameCharacterIDs (continued)
object	name
Vuukzasqig	"Vuukzasqig"

Vuukzasqig is a man.
ScaleValue of Vuukzasqig is 5. [Behemoth sized]
Body Weight of Vuukzasqig is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Vuukzasqig is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Vuukzasqig is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Vuukzasqig is 22. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Vuukzasqig is 5.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Vuukzasqig is 18. [length in inches]
Breast Size of Vuukzasqig is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Vuukzasqig is 2. [count of nipples]
Asshole Depth of Vuukzasqig is 38. [inches deep for anal fucking]
Asshole Tightness of Vuukzasqig is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Vuukzasqig is 1. [number of cocks]
Cock Girth of Vuukzasqig is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Vuukzasqig is 48. [length in inches]
Ball Count of Vuukzasqig is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Vuukzasqig is 6. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Vuukzasqig is 0. [number of cunts]
Cunt Depth of Vuukzasqig is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Vuukzasqig is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Vuukzasqig is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Vuukzasqig is false.
PlayerRomanced of Vuukzasqig is false.
PlayerFriended of Vuukzasqig is false.
PlayerControlled of Vuukzasqig is false.
PlayerFucked of Vuukzasqig is false.
OralVirgin of Vuukzasqig is false.
Virgin of Vuukzasqig is false.
AnalVirgin of Vuukzasqig is false.
PenileVirgin of Vuukzasqig is false.
SexuallyExperienced of Vuukzasqig is true.
TwistedCapacity of Vuukzasqig is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Vuukzasqig is true. [steriles can't knock people up]
MainInfection of Vuukzasqig is "Wyvern Patriarch".
Description of Vuukzasqig is "[Vuukzasqigdesc]".
Conversation of Vuukzasqig is { "<This is nothing but a placeholder!>" }.
The scent of Vuukzasqig is "     Vuukzasqig's scent is particularly faint, like most wyverns. You cannot discern much about him from sniffing him alone except that he is clearly a male.".

to say VuukzasqigDesc:
	say "     This massive wyvern towering above you, with a pair of intimidating wings, has the same characteristics as a normal one, except much larger, and is covered in both red and golden scales. From his head, two large horns extend towards the back of his long and girthy neck. Then, right at the tip of his wings, protrudes a huge and sharp foretalon on each. You can also discern his impossible weight, judging by his size, supported by a pair of extremely thick, powerful legs and huge clawed feet, all that could serve as natural weapons to cut and impale his foes with. This may be the only wyvern you have seen that is this muscular and powerful-looking, and is comparatively way larger than even a monster truck.";

Section 2-1 - Vuukzasqig Talk

instead of conversing Vuukzasqig:
	say "     ";

Section 2-2 - Vuukzasqig Sex

instead of fucking Vuukzasqig:
	say "     ";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wyvern Patriarch"; [name of the overall species of the infection, used for children, ...]
	add "Wyvern Patriarch" to infections of ReptileList;
	add "Wyvern Patriarch" to infections of FurryList;
	add "Wyvern Patriarch" to infections of FeralList;
	add "Wyvern Patriarch" to infections of MythologicalList;
	add "Wyvern Patriarch" to infections of MaleList;
	add "Wyvern Patriarch" to infections of BarbedCockList;
	add "Wyvern Patriarch" to infections of SheathedCockList;
	add "Wyvern Patriarch" to infections of InternalCockList;
	add "Wyvern Patriarch" to infections of BipedalList;
	add "Wyvern Patriarch" to infections of FlightList;
	add "Wyvern Patriarch" to infections of TailList;
	add "Wyvern Patriarch" to infections of OviImpregnatorList;
	add "Wyvern Patriarch" to infections of FirebreathList;
	add "Wyvern Patriarch" to infections of TailweaponList;
	now Name entry is "Wyvern Patriarch"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Vuukzasqig"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]grand wyvern[or]massive beast[at random] [one of]slashes at you with its vicious wing-talons[or]swipes at you with its impressive tail[or]bites at you with its fierce teeth[or]assaults you with a barrage of his goop[or]charges at you with his sharp duo of horns[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Wyvern Patriarch Loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Wyvern Patriarch Wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Wyvern Patriarch Desc]"; [ Description of the creature when you encounter it.]
	now face entry is "elongated, draconic in shape with a set of fierce teeth, and completely devoid of other features like ears or hair"; [ Face description, format as "Your face is (your text)."]
	now body entry is "large and muscular. Feral in build, you find it difficult to stand on your hind legs for very long, relegated to supporting the remainder of your weight with your winged forelimbs"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "hard, substantively scaled and mute brown"; [ skin Description, format as "Your body is covered in (your text) skin."]
	now tail entry is "You have a somewhat long and heavy tail, fierce, spiked adornments at its prehensile tip."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "feral, somewhat blunt-shaped"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as you're forced to abide the audible sound of bones shifting in shape, head drawn out into a long, draconic muzzle with a sharp row of feral teeth";  [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you abide a fairly substantial infection, doubling over as you endure the change. Your torso becoming increasingly massive and feral, your hind legs becoming thick, muscular trunks, while your arms shift in shape into that of a set of thick, bat-like wings. You retain a number of fingers on each hand, allowing articulation, but you imagine this comes at the expense of not being able to fly"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "hard, almost chitinous scales grow from your person. A muted brown shade, they render your surface coarse and intimidating";  [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a fairly long tail erupts from it. Heavy and fully prehensile, it takes you a moment to adjust to its ponderous weight"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "burning heat encapsulates your member, pulled back into your body along with your balls. After some coaxing, you can conjure up your cock from its new home, now a blunted, feral looking thing"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 34;
	now dex entry is 31;
	now sta entry is 23;
	now per entry is 22;
	now int entry is 25;
	now cha entry is 21;
	now sex entry is "Male";
	now HP entry is 425;
	now lev entry is 30;
	now wdam entry is 24;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 19;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 25; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 16; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is false;
	now libido entry is 50; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 60; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]bulky[or]draconic[or]winged[at random]";
	now type entry is "[one of]wyvern[or]draconic[or]reptilian[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 1; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "firebreath";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Wyvern Patriarch ends here.
