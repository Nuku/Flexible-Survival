Version 4 of Wyvern Patriarch by Gherod begins here.

"Adds a Wyvern Patriarch to Flexible Survival's Wandering Monsters table"

[Version 1 - File created]
[Version 2 - Expanded introductory encounter (description) text with variations depending on the outcome of the previous battle. Added three sex scenes on victory menu.]
[Version 3 - Added a voluntary CV scene to the Victory Sex Menu]
[Version 4 - Added NPC Quest, Vuukzasqig as NPC]

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
	if Resolution of MeetTheWyvernPatriarch >= 3 and Ambush The Wyvern Patriarch is not resolved:
		choose a row with name of "Wyvern Patriarch" in the Table of Random Critters;
		now area entry is "Outside";

WyvernPatriarchFightOutcome is a number that varies. WyvernPatriarchFightOutcome is usually 0. [@Tag:NotSaved]
[1 - Player submitted]
[2 - Player lost]
[3 - Wyvern Lost through lust]
[4 - Wyvern lost through combat]

[ TEMPLATE FOR FEAT

FeatGain "Stubbornly Alive";

if "Stubbornly Alive" is listed in Feats of Player:
	say "As your consciousness starts to fade, you cannot help but feel that maybe this should not be the end of you. There is so much more to do!";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Throw your last energy into maybe making it out after all!";
	say "     ([link]N[as]n[end link]) - Sometimes, you just gotta give in. If you stop struggling, maybe it will not be so bad...";
	if Player consents:
		LineBreak;
		say "     Later, you cannot really remember how you did it, or if some higher power helped you, but the next thing you remember is lying on the ground in XYZ, with no trace of what almost killed you. Not one to look a gift horse in the mouth, you quickly gather your stuff that lies scattered around you and get ready to continue your adventures.";
	else:
			say "[Location Specific Death]";
else:
		say "[Location Specific Death]";

]

Section 1 - Creature Responses

to say Wyvern Patriarch Wins:
	if inasituation is true:
		say "";
	else:
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
	if inasituation is true:
		say "";
	else:
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
	if "Stubbornly Alive" is not listed in Feats of Player and a random chance of 1 in 3 succeeds:
		say "     Thick jizz begins to slosh around and eventually overwhelms you, leaving you no other choice but to let some of it in your mouth. This space is tight, moist and very hot, rapidly making you sweat while you are in here, trapped inside the wyvern's orbs without any concern from the beast himself. His voice now booms from every direction, vibrating against your very being as he speaks, 'Now, I feel I shall take a nap without a care in the world, much less for how much time passes with your sorry presence in my gonads. With luck, your existence [bold type]will[roman type] be terminated in an ecstatic melting of your flesh.' Those words land on you as if a massive boulder had rolled down a cliff to crush you. 'Oh yes, that's right. I've decided to consume you. It's time you make yourself useful for once... By being churned into more of my potent seed! But worry not, it'll all feel [italic type]very[roman type] good to you...'";
		say "     The wyvern's creamy and thick cum flowing around, covering more and more of your body with passing second, begins to tingle sweetly in every inch of your figure. The sensation is almost hypnotic, and coupled with the heat and its powerful scent, your strength begins to diminish. However, it feels oddly pleasant, blissful to a point, the whole thing being comparable to a warm and relaxing bath in which you find all the comfort you yearn for after a tiring day. Your arousal spikes as this ecstatic pleasure comes rushing through you, then a sudden urge to be fully submerged in the cum that surrounds you, almost as if you could not help but want to become part of it. Both your mind and your senses are on the brink of giving in to this oddly tempting fate...";
		WaitLineBreak;
		say "     As your consciousness starts to fade, something awakens in the back of your mind, and an all too familiar voice once more booms from every direction. 'Very well, I'll give you one last chance after all. And while it may come to bite me in the future, the thought itself is quite entertaining...' You can barely stay awake, but you still listen to the wyvern's words, 'If you wish to live, drink as much of my seed as you can. If not, well... Not much is lost, to be frank. I don't care. I've gotten enough satisfaction from putting you in as much peril as you are currently, so whatever you fate is... I already reaped most, if not all, benefits.' Considering the wyvern's words, you have one last choice before you are irreversibly churned into wyvern juice.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Trust the wyvern's words and swallow as much of his cum as you are able.";
		say "     ([link]N[as]n[end link]) - Might as well just enjoy your last moments of pleasure and give yourself away to the bliss.";
		if Player consents: [go after them]
			LineBreak;
			say "     All you have to do in order to survive this predicament is to swallow as much of the wyvern's cum as you can? Well, you better start working on that, lest you wished to give away your life like that. Opening your mouth, you begin to drink as much of it as you can, the creamy and rich texture of the large beast's seed quickly filling you up as you swallow it countless times, letting in more and more of that wonderful juice inside you. However, much to your dismay, your condition seems to worsen, or rather, make you even more aroused as you fall deeper into depravity. At some point, you are simply compelled by the urge to let it fill you up, your wish to become one with it even stronger... Has the wyvern tricked you?!";
			say "     Eventually, your body gives up, and you can no longer act on your own. Your senses begin to fade away as the delight of it all becomes too much to handle. The last thing you feel is a spontaneous orgasm repeating itself over and over as your body melts away in delight, leaving no trace of yourself but your added mass to the wyvern's load.";
			WaitLineBreak;
			follow the turnpass rule;
			follow the turnpass rule;
			follow the turnpass rule;
			follow the turnpass rule;
			say "     And sometime later, you wake up, finding yourself in the ground, covered in cum, bruised and weakened. Your skin has been left feeling squishy, seemingly having lost a bit of its color, and looks like a white-ish mess. It even feels dormant... Oh, what is this? When you turn your head upwards, you find the wyvern himself standing before you! How could this happen, you wonder... Because you definitely felt yourself just melting away while inside his balls. 'Consider this a gift of mercy from me, runt. Given how you enjoy feeding yourself to beasts like that, I took the freedom to bestow a little boon. A regenerative gene within your system that will allow you to retake your form should the worst happen. This also means I'm free to play with your life for as much as I want!'";
			say "     You blink in disbelief as to why a creature that despises you would want to give you something good like this. 'Oh, don't get too cocky, however. While it allows you to return to your petty life like nothing happened, you'll still feel every second of what would lead you to your demise. So, if you find yourself in a feral beast's belly, and unless they've suffered some odd mutation, those acidic secretions will still hurt.' Suddenly, the wyvern opens his wings, causing a wave of wind to crash down on you as he grins. 'Now, you best recover some more of your physical form before you get going. You wouldn't want to look like a cum slug like you do now, would you? Haha!'";
			WaitLineBreak;
			say "     He then takes off, flying away and into the distance, leaving you alone. Fortunately, these effects really are temporary, and while the consistence of your body has seen better days, it too recovers to how it was before while you wait for your own strength to return. It does take a while, but eventually, you are all set to get up and start cleaning yourself of the substantial mess this large wyvern has made, then set off to search for your stuff. Luckily, he delivered you in about the same place as where you met him...";
			say "     What is this boon the wyvern mentioned? Oh, that is right, you [bold type]can now retake your former shape[roman type] after having met a rather [italic type]digestive[roman type] fate. Though, you doubt this would work everywhere, like places that envolve magic or other more aggressive, hungrier beasts. Even with a gift like this, you should stay aware of similar dangers.";
			FeatGain "Stubbornly Alive";
		else:
			LineBreak;
			say "     You refuse to listen to him and simply lay back, enjoying your few last moments before you fade away into bliss and ecstasy. The last thing you feel is a spontaneous orgasm repeating itself over and over as your body melts away in delight, leaving no trace of yourself but your added mass to the wyvern's load.";
			wait for any key;
			now battleground is "Void";
			the Player was ended by "Wyvern Patriarch";
			trigger ending "Player has died";
			end the story saying "You have either not trusted the wyvern's words that could lead you to salvation, or you simply decided that it would be a better fate to get churned into cum, resulting in an irreversible loss of life. You were digested in the wyvern's balls, and that is entirely on you. Not that it matters now, anyway... In the end, the large wyvern had a really damn good blast, all thanks to you.";
	else:
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
	if inasituation is true:
		say "";
	else:
		if Resolution of Ambush The Wyvern Patriarch is 1:
			say "     As the big wyvern appears before you, you remember your deal with Diavoborg. Now that you have got him here, it would only be a matter of a [bold type]good charismatic attempt[roman type] to call for his attention before he decides to charge at you. Shall you [bold type]attempt to persuade the Wyvern Patriarch to challenge you in the Dry Plains?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Call for his attention (Charisma Roll).";
			say "     ([link]N[as]n[end link]) - Just fight him, for now.";
			if player consents:
				LineBreak;
				say "     Here goes nothing! In order to even have a chance at tricking him, you have to grab his attention. With the best of your abilities, you wave and shout at him, trying to stop his attack before you initiate a seemingly inevitable combat...";
				WaitLineBreak;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Charisma Check):[line break]";
				if diceroll + bonus >= 12: [success]
					say "     You try your best, shouting at the top of your lungs and frantically shaking your arms up and down, left and right, even jumping as you call for him. At some point, the wyvern hears you and lands on the ground loudly. 'Argh! What's that now?! Why are you making such a fuss instead of fighting me like you usually do?!' he asks, furiously, to which you reply you want to make a proposal, this time. 'Oh, a proposal? I see... And what proposal shall that be? That you fully deliver yourself into my care as a way to atone for your sins? If that's not it, I don't want to hear it!' You then tell him that it could happen, but you would like to challenge him one more time... Elsewhere.";
					say "     'Challenge me in another place? Oh, a duel, is it? Well, why don't we take it here?! We're standing before each other right this second... And I could just claim you as my personal slave, because we both know I'd win.' With that reply, which would make anyone roll their eyes, you insist that you would prefer to bring upon yourselves a proper duel in fair grounds, like in [bold type]the Dry Plains[roman type], where no obstacle nor creature (hopefully) could disturb your intense dueling. 'What is your plan, really? Do you think your choice of battlefield would grant you an advantage against me? Hah! I doubt it'd change the outcome!' You argue that this is a symbolic way to sort this out permanently. You also tell him that, either way, he has nothing to lose! If he wins, he gets to enslave you, and if you win, he simply has to leave you alone.";
					WaitLineBreak;
					say "     'Ah, how poethic! You wish to give meaning to your enslavement? I don't disapprove of that, and more the pleasure it'll give me to take you for myself. So be it! I shall indulge your last desire as a free person.' Your satisfaction is almost overflowing as this seems to have finally worked! But you must continue to play it out without rising suspicion. 'Travel to the Dry Plains and I'll come find you. I always do.' With that said, the wyvern spreads his wings and takes flight, the force of the wind almost pushing you away, until he ascends and heads in another direction. You have got what you wanted, and the next step is to [bold type]Ambush The Wyvern Patriarch[roman type] in the Dry Plains.";
					say "     (Hunt for the aforementioned event to continue this quest.)";
					now Ambush The Wyvern Patriarch is active;
					now Resolution of Ambush The Wyvern Patriarch is 2;
					choose a row with name of "Wyvern Patriarch" in the Table of Random Critters;
					now area entry is "Nowhere";
					now combat abort is 1; [stops the fight]
				else: [fail]
					say "     You try your best, truly, but he completely ignores you. Really, there is nothing you can do to grab his gaze, as he charges at you so quickly you are forced to engage...";
		else:
			LineBreak;
			say "     Now it is not the time to attempt anything, so you give up on that idea and the encounter goes as normal...";
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

Section 2 - Wyvern Patriarch to NPC Event

Table of GameEventIDs (continued)
Object	Name
Ambush The Wyvern Patriarch	"Ambush The Wyvern Patriarch"

Ambush The Wyvern Patriarch is a situation. Ambush The Wyvern Patriarch is inactive.
ResolveFunction of Ambush The Wyvern Patriarch is "[ResolveEvent Ambush The Wyvern Patriarch]".
Sarea of Ambush The Wyvern Patriarch is "Plains".

to say ResolveEvent Ambush The Wyvern Patriarch:
	say "     As you make your way through the vast Dry Plains, you see something flying in the distance. That [']something['] is, in fact, looking bigger and bigger as it draws nearer, and then you realize this is the Wyvern Patriarch, who happened to find his way to you. Well, you had a plan, so it is best to act quickly before he catches onto something suspicious. Hopefully, your behemoth friend would have noticed his presence and be on his way to you, or this has the potential to go badly, but you decide to not focus on [']ifs[']. Mustering the courage to face this nemesis of yours one last time, you proudly advance towards him as the wyvern hovers only a few seconds away...";
	say "     Once you are in his range, the wyvern shows you no mercy and begins to shoot his signature goop at you. Though he only does it once, it barely misses you, as he laughs and flies around you before landing. 'I'm sure that would have ended you if it hit, saving us the trouble of a needless fight, but alas... We'll have to do it anyway. Or, you could simply submit...! That'd make it easier for the both of us, wouldn't it?' Despite his threats, you hold your ground and prepare to challenge him to a fight, and hopefully your last one...";
	WaitLineBreak;
	WPAmbushFight;

to WPAmbushFight:
	Challenge "Wyvern Patriarch";
	if fightoutcome >= 20 and fightoutcome <= 29: [lost]
		say "     After expending all your energy, it turns out the wyvern is simply too strong for you. With one swing of his large wings, he knocks you out and proceeds to cover you in his goop, rendering you immobile for the remainder of your encounter. Now unable to offer any additional resistance, the wyvern simply walks towards you and leans over, his enormous body hovering just above you, claiming victory over you with a huge grin. 'It looks like you've lost! What a surprise... You know what this means, right? You're MINE NOW!' Well, you are in quite a predicament right now, and there is no sign of Diavoborg... 'So... What task shall I give you for your first day as my slave? I could find so many ways to degrade you...!'";
		say "     He then leans his head down to give you a very slow licking all over your body and the goop, but pressing his tongue down hard, for a longer amount of time than you think he would have initially taken. It seems he is getting excited with the prospective of owning you as his slave, as far as you can see from his ever growing shaft throbbing forward at each second. 'Only now I've realized how good you taste...! Well, it's never too late to make a meal out of you... Something to consider if you misbehave. On another hand, my sons would love to have their ways with you, for a change!' The wyvern takes another step forward and, just like that, his enormous cock lands on top of you, leaking and pulsating warm, having grown so obscenely large you feel it could smother you.";
		WaitLineBreak;
		say "     Using his own goop and your body, the wyvern thrusts his member and rubs it against your whole body, continuing his taunts as he appreciates your helplessness, something that even you can tell it turns him on a lot. 'How's that now, little bug?! Didn't you like a juicy and big wyvern cock...? Think about it, now you'll have plenty of them! At the cost of merely your freedom. A very small price to pay that you should've offered long ago. This is your place!' As... kinky as this may sound, and entirely not too bad, you do wonder where the hell Diavoborg is, as this is pretty much getting out of hand. You worry that you may end up truly as this wyvern's slave if something does not happen soon...'";
		say "     In the meantime, the huge wyvern has his fun, humping and rubbing his cock against you until the goop holding you becomes mixed with his sexual fluids and a real mess is made all over your body, with his precum alone. That slit of his is also dilating more and more, to the point you can see the insides of his meat threatening to pull you in. 'Nice and slippery, aren't we? Guess who else thinks you're tasty... And I wouldn't even need to let you go, this time. How about we exchange [']slave['] for cock food? It's been a while since I've fully unmade someone inside my gonads... Wouldn't that be a fitting fate for an ant like you?' Your situation is worsening by the second, and if you thought it was getting bad, once the wyvern decides to pull his cock back entirely and aim its tip at your feet, you know you are in great peril.";
		WaitLineBreak;
		say "     'Well, I'll decide later. For now, my cock wants you inside,' he says as he pushes against your legs, his hungry and slippery slit beginning to swallow at your feet almost immediately. 'Do feel free to fight for your life! I love when my prey keeps hopelessly struggling. All the wiggling makes it feel better...' This goes way quicker than you expect, his cock having pulled your legs in down to your knees, and slowly consuming every inch of your thighs as you find yourself buried in his cock up to your waist. He only appreciates every second, looking at you steadily disappearing into his member with the hunger of a ravenous beast drooling all over. You do try your best to hold yourself and delay this as much as you can, but everything is so slippery your hands simply end up losing their grip and causing you to slide in even deeper... even faster.";
		say "     You are now down to your chest, feeling his cock throb all around you, warming up your body in a way that almost feels soothing. It is just as if your will to fight was vanishing until there is nothing, only the acceptance of your fate and a surging, unexplainable lust overtaking you. 'Embracing it, aren't you? Well, that's good too, cock snack. I appreciate your willingness to become my next orgasm... Nothing but cum, like you deserve! An insignificant leftover of my-...' His words are suddenly interrupted, and your hazy mind cannot comprehend why. He suddenly gasps, then falls silent, but his cock hardens way, way too much for your liking as it throbs, grabs you tight and pulls you in really hard!";
		WaitLineBreak;
		say "     Only seconds pass until you are pulled all the way to your head, and hungrily, his cock slurps you in completely as a familiar voice hums an 'Oops...' It is the last thing you hear before darkness envelops you, taking you in deep into the wyvern's manhood and down on your way through a fleshy damp tunnel towards his inner testicles. Though, you can still hear that same familiar voice speaking, making your entire surroundings vibrate with the sound of his deep vocals. 'Don't worry, I'll get you out of there in a sec. Sorry I took a while, had to find the right angle to sneak up on this soon-to-be good wyvern boy!' Even amidst your predicament, you can tell who this is. It is none other than your very late red behemoth friend.";
		WaitLineBreak;
		say "     Despite his (un)timely arrival, you only find yourself traveling deeper and deeper into the wyvern's body, the inner walls of his shaft ondulating and throbbing all around you and successfully managing to force you further inside with its peristaltic movements. 'Caught ourselves a really big boy, haven't we? Look at him, so ecstatic... Yeah, it won't be hard to have him cum you out, just gimme a sec,' says Diavoborg, you seems to be doing his best to rescue you. Given the circumstances and the sudden moves the wyvern's cock makes with you inside, you can only imagine what he must be attempting, but whatever it is, it causes the scaly beast's manhood to tremble like a volcano about to erupt.";
		say "     A few seconds is all it is needed to make the wyvern shoot his load with enormous force, and along with what was filling the wyvern's balls, you too come out, gladly landing on a very fuzzy spot that manages to hamper your otherwise very painful fall. This came at the cost of Diavoborg getting blasted with the wyvern's cum, but this shows the extents your friend is willing to go in order to properly save you from a messy demise. 'There you are! Glad you've worked him up beforehand. You were about to get in a sticky situation there, weren't you?' he jokingly asks, laughing even, and whatever reply you can muster is barely audible due to your state of exhaustion.";
		WaitLineBreak;
		say "     'Yeah, I imagine you're a little tired. Sorry about that, I was trying to get just the right angle to strike him. I'd only have one shot before he could start flying about and making my task impossible. But you did really well!' He then licks your body all over until you look a bit cleaner, even if coated in behemoth saliva. 'Well, all I gotta do is drag him over to the cave and keep him generously dosed. I'll have to increase my diet... But should be alright, my supplies aren't lacking. And you... I'll let you take a good nap on my fuzzy warm chest if you wish.' You really are ready to doze off, so you let Diavoborg take care of everything he has to, including carrying you, too, back to his lair...";
		WaitLineBreak;
		now Resolution of Ambush The Wyvern Patriarch is 3; [resolved by a loss]
		WPAmbushFightConclusion;
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     After a long and exhausting fight, you somehow manage to tire the wyvern out for long enough to accomplish your final move. However, it does not seem enough to deter the wyvern, who manages to pull through the entire ordeal you made him go through and still be kicking. 'I'm not going to let the likes of you defeat me in a decisive battle! NEVER! You'll LOSE! I'LL MAKE SURE OF IT!' With this, the wyvern goes on a rampage and shoots a massive avalanche of goop at you. Blinded by fury, it is luckily not a too accurate one, and while some droplets hit you, you manage to dodge the most severe bits that would very likely render you immobile. Energy is starting to fail as you near your point of exhaustion, but you continue to give your best.";
		say "     'Why... won't you go DOWN?! What do you have that others don't?! You're NOTHING! JUST A WORTHLESS... ANT!' he shouts, still furiously trying to hit you with barrages of goop and swipes, but you still have it in you to dodge most of the harmful strikes. The battle is still intense, but you focus on your goal, which is ensuring you make the wyvern waste as much of his time as possible with you. You figure it would be a good time for Diavoborg to show up, but alas, you need to hold for a little while longer. Perhaps some taunting could throw the wyvern's focus away, so you go on ahead and ask him if you are so worthless, why does he keep chasing you with a boner between his legs...";
		WaitLineBreak;
		say "     Seeing his own erection proudly protruding from his crotch clearly embarrasses the wyvern, but it is not like he knows how to deal with that. Instead, he simply gets even further visibly angry. 'H-HOW DARE YOU?! Fuck that deal! SCREW EVERYTHING! I'm defeating you even if it's the last thing I do with my LIFE!' Good, you want him angry and very determined on wasting time chasing you around, though caution is advised when dealing with furious and enormous wyverns like this one. You are breathing deep and hard, your stamina lacking, but you still can do this for a little while longer, you tell yourself. You wanted to fight and win, and that is what you shall be doing for the next, hopefully, only a couple of minutes.";
		say "     This intense fight continues on for what seems like an eternity, your muscles being pushed to the limit as you attempt to dodge every wing swipe and goop shot directed at you, though you can see the wyvern himself also becomes more sluggish with each passing moment. Unfortunately, you have no energy for offense, and with defense as hard as it is right now, you focus on gaining distance and hope that the enormous beast misses his attacks. It is, frankly, less tiring for you, but even like this, you will not last much longer either. Breathing heavily, you push through with what little remains of your strength, several attacks missing your way or managing only to scratch the very surface of your skin, until he decides to charge...";
		WaitLineBreak;
		say "     'E...NOUGH!' the wyvern shouts and begins to charge at you from an unexpected angle. This time, he hits you, and you are thrown forward with the force of his headbutt. This is it, you have exhausted all your stamina and fail to get up on your own, bruised and beaten up as you are. The wyvern's legs shake with lack of energy as well, but he manages to turn the tables on you. It is then, though, that you see a familiar tail shape right behind him, its tip just hovering above his backside, and switfly stinging the wyvern's neck by the side. He gasps, previously unaware of this surprise attack, but as he turns around to offer resistance, he loses his balance and falls to the side. The most prominent thing in your view is his enormous throbbing cock between his legs leaking like a dripping faucet... And next to that, your very late red behemoth friend.";
		WaitLineBreak;
		say "     'Hey there! Having a little trouble dealing with the big wyvern here?' he asks nonchalantly, despite your obvious signs of struggle. 'Fear not, for I have dosed him with my venom enough that he won't have any will to fight for er... at least a couple of days. You look really rough though! Need a nap?' You cannot disagree in needing a bit of rest, though you argue that it is best to make sure you have the wyvern under control, lest he would find a way to continue to be a nuisance. 'Ah, don't worry about that. All I gotta do is to drag him over to my cave. You, well... if you want to hop on my back, I can take you as well. The drake's big, but I can manage!' It is true that the behemoth is very strong, but you tell him you can walk on your own after a little rest, so to not make things harder on him unnecessarily.";
		say "     And so, with your plan sorted out, you and Diavoborg head back to his lair with the lusty sleeping wyvern, who seems to be deep in some wet dream. The venom must really have some potency...";
		WaitLineBreak;
		now Resolution of Ambush The Wyvern Patriarch is 4; [resolved by a win]
		WPAmbushFightConclusion;
	else if fightoutcome >= 30: [fled]
		say "     Although... what are you running away for? This is not the time to do that, you must continue to fight the wyvern! He will not let you go so easily, either...";
		WPAmbushFight;

to WPAmbushFightConclusion:
	move player to Red Rock Resting Chamber;
	move Vuukzasqig to Red Rock Wyvern Chamber;
	connect Red Rock Wyvern Chamber;
	follow the turnpass rule;
	say "     After this whole ordeal, Diavoborg has let you rest in his own chambers for a good amount of time, while he sets things up for the large wyvern to stay. He has given you a few pelts he had lying around to get a makeshift bed for you to recover, which has drastically improved the conditions you would otherwise sleep in. Now feeling refreshed, you get up from your resting spot and glance around, looking for the red behemoth. You only hear some heavy footsteps coming from the hall, so he must be done with renovations. Perhaps it would be for the best to go talk to him and ask him about your wyvern nemesis who, hopefully, should have been pacified by now.";
	now Ambush The Wyvern Patriarch is resolved;

[Aftermath]

instead of going northwest from Red Rock Resting Chamber while Resolution of Ambush The Wyvern Patriarch is 3: [player was nearly permanently CV'd]
	say "     As soon as you make your way back to the hall of Diavoborg's lair, he hears you walking in and perks up his ears. Drowsily, he looks over at you with a lazy big smile. 'Heey! You're up already, I see! Glad I arrived in time to save you! Is that something he does regularly?' he asks, specifically about the wyvern's capability to devour smaller prey with his cock, much like the behemoth himself. You nod and explain it might be his favorite way of disposing of prey, actually. 'What a twisted one... I mean, sure it's fun, but when I do it it's more of a playful thing, and I don't mean to end their lives with that. Though... there's that temptation... But the aftermath is not worth it, most of the times. Like, yeah you're having fun with someone and then it's a one time thing, you'll never see them again, so what's the point...'";
	say "     '... Anyway, I'm babbling. Wyvern's over there, I dug up a room for him to stay.' Diavoborg then points further east, to a new opening that was not there before. You remember it had some rubble and could be made into another room, or at least it seemed that your behemoth friend was considering an expansion, and he must have used this opportunity to get that plan going, even if now the new space will be occupied by an enormous wyvern. 'So... I'll keep him heavily dosed for some time, at least until he accepts his new place. Maybe one day it won't be needed, but I think it's the best move for now.' There is no arguing with that, remembering how unhinged the wyvern was before in his own thirst for some sort of vengeance.";
	WaitLineBreak;
	WPAmbushFightAftermath;

instead of going northwest from Red Rock Resting Chamber while Resolution of Ambush The Wyvern Patriarch is 4: [player won the fight]
	say "     As soon as you make your way back to the hall of Diavoborg's lair, he hears you walking in and perks up his ears. Drowsily, he looks over at you with a lazy big smile. 'Heey! You're up already, I see! Glad I arrived in time to help you! Is he usually that angry and... completely out of himself?' he asks, specifically about how enraged he was while fighting you. With that, you explain that the wyvern really did not like to lose, and knowing that was the decisive fight between the two of you probably had him more infuriated than ever. 'You really held yourself together, though! I'm impressed! You're a really capable fighter, even at these odds you managed to subdue a massive wyvern all by yourself...?! That's really fucking damn incredible.'";
	say "     You cannot help but feel a bit proud of yourself hearing Diavoborg's compliments, even though you nearly lost at the end. But if it were not for your expertise in combat, he would have turned the tables on you much sooner. 'So... Wyvern's over there, I dug up a room for him to stay.' Diavoborg then points further east, to a new opening that was not there before. You remember it had some rubble and could be made into another room, or at least it seemed that your behemoth friend was considering an expansion, and he must have used this opportunity to get that plan going, even if now the new space will be occupied by an enormous wyvern. 'I'll keep him heavily dosed for some time, at least until he accepts his new place. Maybe one day it won't be needed, but I think it's the best move for now.' There is no arguing with that, remembering how unhinged the wyvern was before in his own thirst for some sort of vengeance.'";
	WaitLineBreak;
	WPAmbushFightAftermath;

to WPAmbushFightAftermath:
	now Resolution of Ambush The Wyvern Patriarch is 5;
	say "     'Although, I have a proposal for you,' he then pokes you on the shoulder with his huge paw-like hand as a silly smile forms across his muzzle, 'How about we celebrate with some group sex?' You blink a few times upon hearing those words, images of you and two enormous beasts on the same room running through your mind as you consider whether that would be a good idea... 'Don't worry about the size difference, I'm always very careful with my tiny friends, you know that...' he adds, with a lick on your face as you stare into the abyss, knocked back a foot with the force of his tongue as you were distracted with your own thoughts. Indeed, you would be having a threesome with one massive strong behemoth, and a very lusty gigantic wyvern.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Go ahead and have a welcome threesome with both titanic beasts.";
	say "     ([link]N[as]n[end link]) - Excuse yourself and say no, at least for now.";
	if player consents:
		LineBreak;
		say "     Thinking it might be a fun use of your time, you consider it again. It is definitely something entirely different, given the fact you will be sharing an intimate moment with two enormous creatures, but the thought of it starts becoming more and more enticing. Diavoborg himself also seems to be excited to try this out, and you can see that as his own member begins to poke out of his sheath, merely at the sight of you contemplating his offer. Your curiosity is evident, and intrigued as you are, you simply decide to accept. 'Heheh... Well, it's gonna be fun. Plus, it's our way to introduce him to his new home! And if I'm honest, I always wanted to fuck a wyvern... But they fly up so high all the time it's hard to catch them.'";
		say "     'Right, uh, let's go see our wyvern buddy, yeah?' He beckons you to move ahead of him and waits until you do so, following right behind towards the newly dug up room. The path is not too wide for the behemoth himself, but it is likely that he will take some time to adjust it in the future. In spite of this, he can easily walk along with you into the rocky chamber where the Wyvern Patriarch is, sitting down in the center of it and certainly looking more awake than before. 'Finally! I was thinking I was going to be left in here forever without any sort of attendance!' the wyvern shouts... to your surprise. He is not quite as hazy as you thought he would be. You turn to Diavoborg, who looks as confused as you.";
		WaitLineBreak;
		say "     'I'm... sure I gave him enough to have him be a little less aggressive...' he adds, but the wyvern immediately retorts, 'What, with your little sting?! That was only a momentarily spike of pleasure! Admittedly. Therefore, I've decided that I shall stay.' You two look at each other, even more confused. Diavoborg says, 'Uh... Well, I could always give you more?' as he tilts his head, to which the wyvern replies 'Of course you should! It's been long since I've met someone worthy of my respect. Unlike your little... friend. But seeing as you are both in good terms with each other, I shall make an exception.' You have a hard time telling if the wyvern is genuinely wanting to be at peace with you, or if he is just... No, you really have no idea of what is going on.";
		say "     'Right... Well, if that's the case...' Diavoborg says, striding closer to the wyvern, who almost flinches as he so boldly approaches him. He hugs the huge reptilian's back with his tail and gently grabs his thin lizard-like head with one hand, which seems to have a significant effect on his demeanor. '... How about we get started on something fun? And you better treat my friend with respect, or you're not gonna feel that sweet ecstatic surge ever again, yeah?' This shuts him up, as the wyvern seems to be looking for words he cannot find. Though, eventually, he mutters something, 'Fine, I... promise I'll... I'll be nice,' as he nearly shakes with the red behemoth's tender touch. 'Good wyvern.'";
		say "[VuukzasqigSexDiavoborgThreesome]";
		WaitLineBreak;
		say "     'Anyway, I'll take it from here, bud. Thanks for the help again, I'm just... gonna make sure our newcomer feels at home.' With a nod, you begin to walk away and move on to do your own things, now that everything is in order. And, after what seems to be mere seconds, you can hear thrusting again coming from the wyvern's chamber. Fortunately, it seems your former nemesis has been tamed, even though some of his arrogant personality persisted... But it would not be the same thing if it did not. Still, you know you can count on Diavoborg to keep him under control, happy and satisfied.";
		move player to Red Rock Lair Hall;
	else:
		LineBreak;
		say "     You tell Diavoborg that you are simply too tired to get into any sort of action right now, so you will have to refuse him this time. He is disappointed, but understanding. 'Alright... Well, if you change your mind, I'm sure we can still do it. Go rest a little more then, don't you dare going out in the wild if you're not fully recovered!' With that said, you are free to proceed however you wish.";

Section 3 - Wyvern Patriarch as NPC

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

Section 3-1 - Vuukzasqig Talk

instead of conversing Vuukzasqig:
	say "     << Author's Note: Not possible at the moment, will be added in a future update! >>";

Section 3-2 - Vuukzasqig Sex

instead of fucking Vuukzasqig:
	say "     << Author's Note: Not possible at the moment, will be added in a future update! >>";

to say VuukzasqigSexDiavoborgThreesome:
say "     Once the two beasts are face to face and ready to get started, you merely stand back and watch the scene develop. The behemoth always seems to prefer taking the active role as he pushes the wyvern back, then gets on top of him with both his cocks now proudly in display, throbbing harder by the second as they rub against one another. To you, they almost seem to compete for size as they harden at their own pace, the slick reptilian-like cock belonging to the wyvern being of the same thickness as Diavoborg's, but the latter still managing to have several extra inches in length. Nonetheless, they are two enormous meatlogs frotting together in such an eye-catching manner that you cannot help but stare directly at them, the trails of precum being so thick you feel you could bathe in them.";
say "     As the mood is set, the red behemoth looks over at you and beckons you to approach them, all while the two enormous beasts feel their tools throbbing against each other, each member yearning for attention. 'Now, here's a good spot for you to stay... ever had two as big as these at the same time?' he jokingly asks, knowing very well the chances are slim, but you amuse him with your evident interest as you walk closer to these gigantic cocks, getting between the wyvern's massive legs as he silently watches you with his maw slightly open, almost as if in a sort of lusty awe. Diavoborg then lifts his own meat and lets it hover above the wyvern's, and once you are close enough, he simply taps you on the back, with enough force to make you fall forward and on top of the reptilian shaft, to then sandwich you between the two.";
WaitLineBreak;
say "     The initial shock vanishes once the behemoth so gently rubs his cock along your back, only slightly pressing you down against the wyvern's, and just like that, you find yourself between two titanic-sized shafts, soon wet with precum while you feel them pulsating all around you. Their warmth is also almost overbearing, especially when the behemoth begins to rub his meat back and forth across your back, smearing all that oozing juice all over you. 'That feels really nice, I gotta tell you...' he says, and while the wyvern remains quiet, you can feel he, too, is enjoying this immensely, as his own cock does nothing but throbbing frequently.";
say "     'Liking that, wyvern boy? Never thought you'd get topped by anyone bigger than you, eh?' The behemoth continues to tease the wyvern, the latter grunting in the process, but nevertheless, he seems to be enjoying it. 'J-just shut it and... Keep doing whatever you're doing...' The furred beast then continues to thrust and rubbing his shaft across your body, back and forth as he grows more and more excited, and you decide to take part in the process by doing your best to rub, kiss and lick either of the cocks surrounding you, much to the beasts['] appreciation and pleasure. 'Mmh... Glad you want it so bad, though let us enjoy our friend's affectionate touch before I fuck your tight little hole, yeah?'";
WaitLineBreak;
say "     With that said, he eases the pressure gravity was putting on you by lifting his cock off your body and placing it next to the wyvern's, giving you a better reach and more control over what you can do for them. Now, you are able to slip between them and provide both with all your generous love, embracing both tips with your arms as you turn your head to face one, then the other, licking at their wet glans and delighting yourself with all that thick and tasty precum. 'That feels fucking good, bud... Love feeling your tiny hands and mouth all over my shaft like that... Ain't that good, scaly boy?' asks Diavoborg to the wyvern, who does not grunt, but moans, in response. The furred beast then adds, with confidence, 'Yeah, he loves it too...'";
say "     Their cocks also respond appreciatively to your touch, each throb positively reinforcing the effort you are putting in ensuring their pleasure, but their warm, wet surfaces touching your body from each side also feels great to you, giving you all the motivation you need to continue. After a while, you sense that your behemoth friend is as solid as he can be, and judging by his the mindless movement his hips are making, you think he may be ready to take on the wyvern's rear. His precum will surely be enough to lubricate the entry. 'Alright, I'm ready now. Hope you're too, Vuuksy!' He immediately moves to line up his cock with the wyvern's hole as he protests this manner of treatment, 'It's Vuukzasqig! At least use my full name, you-... Y-you... Ahh...'";
WaitLineBreak;
say "     The wyvern's words are halted by Diavoborg's sudden intrusion as he presses his member against the wyvern's behind, then pushes it in slowly to enter him. 'What were you saying... Vuuksy?' he asks, chuckling as he sees the winged reptilian lose himself in lust and need, the latter moaning, 'Just fuck me... It feels insufferably great...!' A wide grin forms across Diavoborg's muzzle as he hears this, and it is all he needs to hear to thrust forward in full force, pushing his cock all the way inside the wyvern's body until only his fuzzy balls rest outside. At this moment, the cock you are holding onto throbs like crazy, prompting you to rub and caress it to your best abilities, completely defeating the wyvern's stubbornness as he surrenders to the pleasure.";
say "     'Looks like you don't really need the venom anymore... Look at you, so fuckable... You'd make a cute breeder,' the behemoth teases, readjusting himself to achieve the best angle in order to thrust into the wyvern with broader movements. He really does not answer with anything else other than reluctant moans, but the behemoth's cock must feel too good for him to dislike any of this. Preferring this much nicer version of the patriarch, you reward his peaceful demeanor with more rubbing and kissing around the tip of his huge cock, twirling your tongue into his slit as your hands rub over the tip. You also climb on top of his shaft once more, and feel it bounce as Diavoborg fucks him. Occasionally, his fluffy fur coat descends upon you, but he tries his best to give you space.";
WaitLineBreak;
say "     The following moments are filled with the moans and grunts of both as Diavoborg fucks the wyvern's ass, progressively adding more and more force to each of his thrusts, so much that even you feel it as you bounce up and down on the cock you are holding onto. There is no denying that even the wyvern himself enjoys this immensely, and even with how huge his own member is, you feel it harden even more with the excitement overflowing through him. It continues to leak a whole lot of precum that ends up smeared against the wyvern's scales, while you have the chance to savor the moment as you place your lips at his tip and get to taste some of it, while rubbing it with your hands and legs.";
say "     'I can feel his ass clenching on my dick so hard... Fuck, it feels amazing! Keep doing good work, bud!' says the behemoth to you in a lower, much more gentle tone, as he continues to fuck the wyvern mercilessly. Pounding him with the force only a beast like him can achieve, you have to, at some point, really hold yourself tight to not let your grip fail, all while you do your best at servicing the winged drake's cock. You do not drop any of your efforts to lick and kiss at the tip, though, and soon, those actions are rewarded as the wyvern so visibly approaches his own climax. 'I-I can't... hold it... I need to...!' You can hear the wyvern moan out a warning, which prompts the behemoth to fuck him even harder. 'Oh, do feel free. That's a great compliment for me...'";
WaitLineBreak;
say "     It really does not take that long for the wyvern to start shooting his load all over himself, the entire shaft you have your arms and legs wrapped around throbbing and shaking with that sweet and ecstatic eruption of cum, blasting forward in copious amounts, spurt after spurt looking bigger than the last. He cannot help but moan all the way through his orgasm, only further reinforced by Diavoborg's merciless thrusts. 'We're not done until I fill you up, by the way... But lucky you, it's gonna be soon!' adds the behemoth, who really picks up the pace now, the momentum of his pounding finally making you fall to the side, also because the wyvern's dick is now wet and much more slippery.";
say "     Then, you hear a roar as the furred beast shoots inside the wyvern, giving him the promised fill, all the way until the very last drop. He keeps his cock buried inside him throughout the whole minute he is cumming one huge load, and you can only watch and hear it. With nothing else to do, you simply lay on your back next to the wyvern's cock and wait until you can safely drop down to move on, which is when the behemoth finishes. 'Thanks for the help, bud... That was great. I'll be sure to return the favor later, and little Vuuksy here better do the same.' He then puts one of his paw-like hands over the wyvern's face and gives it a playful slap, which makes the latter grunt. 'Grr... Fine, sure...";
WaitLineBreak;
say "     Sliding down and walking away from the beasts, you get a better, broader view of the two. Diavoborg is still ballsdeep inside the wyvern, licking his face affectionately as the winged drake reluctantly lets him, though undeniably enjoying it. 'Aw, what's the matter? Don't act like you don't enjoy it when you do! After all, you're such a handsome lizard!' says the behemoth teasingly. 'Not a lizard! A wyvern! And the greatest of them all! So... So you better fuck me like that the next time as well.' With these words, Diavoborg smiles and gives him another lick while moving his lower body around. 'Oh, I will! And I could go for a round two in a bit...'";
NPCSexAftermath Player receives "OralCock" from Diavoborg;
NPCSexAftermath Player receives "OralCock" from Vuukzasqig;
NPCSexAftermath Vuukzasqig receives "AssFuck" from Diavoborg;

Section 4 - Creature Insertion

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

Section X - Dev Cheats

ForceWPEncounter is an action applying to nothing.
Understand "ForceWPEncounter" as ForceWPEncounter.

Check ForceWPEncounter:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

Carry out ForceWPEncounter:
	choose a row with name of "Wyvern Patriarch" in the Table of Random Critters;
	now area entry is "Outside";
	if Resolution of MeetTheWyvernPatriarch < 3:
		now Resolution of MeetTheWyvernPatriarch is 3;
	say "     Wyvern Patriarch encounter is now on. Note that this should not be possible after Vuukzasqig is in the game as a NPC. Use for testing only!";

Wyvern Patriarch ends here.
