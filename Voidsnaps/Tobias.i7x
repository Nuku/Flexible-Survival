Version 2 of Tobias by Voidsnaps begins here.
[Version 2 - New scenes, expanded rooms, collar item, bad end, minor rewrites to existing content.]

a postimport rule:
	if PlayerMet of Tobias is true:
		change the north exit of Smith Haven Mall Lot East to Overgrown Lot;
		change the south exit of Overgrown Lot to Smith Haven Mall Lot East;
		move Tobias to Tobias's Trailer;

Section 1 - Events

after going to Smith Haven Mall Lot East while PlayerMet of Tobias is false and a random chance of 1 in 3 succeeds:
	say "     Walking over the expansive parking lot of the Smith Haven Mall, you let your gaze wander over the countless parked cars: many stand neatly aligned in their squares, most likely belonging to people that never left the safe confines of the mall, or possibly those that never made it back here at all. Others are more scattered, often in clumps around the entrances and exits of the lot, from when people started to panic and got involved in all sorts of collisions and accidents. The crunching noise of glass shards under your feet makes you stop and look at the nearest damaged car, half-hidden behind the delivery truck its front is crumpled against. You can't help but idly wonder what may have happened to the driver on the fateful day that the nanite apocalypse came into full swing.";
	say "     As you stand there, movement on the far side of the car catches your eye. An anthro Doberman dressed in jeans and an open vest, as well as black leather gloves, steps into view from the other side of the truck, holding the leashes for two other Dobermans, one male one female. They are anthro canines, just like him, but in sharp contrast, they are naked and on all fours with collars and muzzles on them. The leashed bitch looks back at you and gives a whine, trying to move back behind the truck, but her owner(?) is having none of it, looking impatiently at the other dobie and keeping her on a tight leash. 'What is it now?' the standing man barks out, then follows her gaze to you and scoffs at her. 'Oh? Being watched by [ObjectPro of Player] has your panties in a twist? Let me remind you - animals don't wear any of those. You're a pet, bitch, and not an obedient one right now. I told you to do your business [italic type]now[roman type]!'";
	WaitLineBreak;
	say "     The female canine shudders at the sharp and commanding tone of her master, but you notice that her nipples go hard at the same time, showing that she's not really averse to obeying orders, just doing this specific act in public, right before you. After another moment of hesitation, she pushes past her hang-up and lowers her hips down with spread legs, releasing a small trickle of urine onto the asphalt. 'Wasn't so hard after all, eh?' the standing Doberman comments in a biting tone, then gives both of the leashes a short tug. 'Now that that's done, let's go meet our new acquaintance,' he says next, then guides his pets around the car to come to stand before you. The male collared dobie sits on his haunches after a second, looking up with interest, while the female hangs her head in aroused shame and remains standing, avoiding eye contact with you. Ignoring the reactions of his submissive companions, the clothed Doberman steps forward and offers you a hand in greeting.";
	say "     'Pleasure to meet you, I'm Tobias Black.' While you tell him your own name, he pulls a business card out of a breast pocket and hands it to you. It reads, 'Tobias Black - Animal Handler, Trainer, Breeder' and has a stylized paw-print in the upper left corner. 'Sorry that I didn't acknowledge you earlier. You know how it is with dogs in training, one has to address any disobedience immediately to avoid any bad habits forming. Dane here is about fully trained by now, but Cara still needs work. But don't you worry, she'll be an excellently obedient bitch in no time at all.' The man's behavior towards you is markedly different from the side his pets experience, and he seems very friendly, even jovial. He seems to want to chat a bit with you, and is clearly waiting for you to say something.";
	WaitLineBreak;
	now PlayerMet of Tobias is true; [player knows his name]
	say "[TobiasTalkMenu]";
	now Refugee Mare is active;

to say TobiasTalkMenu:
	let DoneTalking be false;
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 1;
	now description entry is "Learn more about Tobias";
	[]
	if Player is not in Tobias's Trailer:
		choose a blank row in table of fucking options;
		now title entry is "Ask what he is doing at the mall";
		now sortorder entry is 2;
		now description entry is "Find out what he is doing here";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about dog training";
	now sortorder entry is 3;
	now description entry is "Chat about training animals";
	[]
	if PlayerFucked of Tobias is false: [first time]
		choose a blank row in table of fucking options;
		now title entry is "Offer to have sex with him";
		now sortorder entry is 4;
		now description entry is "Make an offer of a good time";
	[]
	if ( BodyName of Player is listed in infections of CanineList and FaceName of Player is listed in infections of CanineList and SkinName of Player is listed in infections of CanineList and CockName of Player is listed in infections of CanineList and TailName of Player is listed in infections of CanineList ):
		choose a blank row in table of fucking options;
		now title entry is "Ask if you can become a submissive dog like Cara and Dane";
		now sortorder entry is 5;
		now description entry is "Give up on life as a human";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask who Dane and Cara are";
	now sortorder entry is 10;
	now description entry is "Learn more about the submissive dobies";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask how he can do this to the other canines. They're just like him after all";
	now sortorder entry is 11;
	now description entry is "Question his treatment of the other two dogs";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him that treating people like animals is wrong";
	now sortorder entry is 12;
	now description entry is "Express a negative opinion on him keeping Dane and Cara as pets";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if he couldn't instead train his pets to be strong and confident in their own right";
	now sortorder entry is 13;
	now description entry is "Suggest a different path to take with Cara and Dane";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Demand that he free his pets";
	now sortorder entry is 14;
	now description entry is "Try to make him let Dane and Cara go";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask to buy one or both of his pets";
	now sortorder entry is 15;
	now description entry is "Try to buy Dane, Cara, or both";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if you can pet his dogs";
	now sortorder entry is 16;
	now description entry is "Learn if you are allowed to pet the dobies";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if you can fuck his dogs";
	now sortorder entry is 17;
	now description entry is "Express the desire to have sex with the dobies";
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
				if (nam is "Ask him about himself"):
					say "[TobiasTalk1]";
				else if (nam is "Ask what he is doing at the mall"):
					say "[TobiasTalk2]";
				else if (nam is "Talk about dog training"):
					say "[TobiasTalk3]";
				else if (nam is "Offer to have sex with him"):
					say "[TobiasTalk4]";
					now DoneTalking is true;
				else if (nam is "Ask if you can become a submissive dog like Cara and Dane"):
					say "[TobiasTalk5]";
					now DoneTalking is true;
				else if (nam is "Ask who Dane and Cara are"):
					say "[TobiasTalk10]";
				else if (nam is "Ask how he can do this to the other canines. They're just like him after all"):
					say "[TobiasTalk11]";
				else if (nam is "Tell him that treating people like animals is wrong"):
					say "[TobiasTalk12]";
				else if (nam is "Ask if he couldn't instead train his pets to be strong and confident in their own right"):
					say "[TobiasTalk13]";
				else if (nam is "Demand that he free his pets"):
					say "[TobiasTalk14]";
				else if (nam is "Ask to buy one or both of his pets"):
					say "[TobiasTalk15]";
				else if (nam is "Ask if you can pet his dogs"):
					say "[TobiasTalk16]";
				else if (nam is "Ask if you can fuck his dogs"):
					say "[TobiasTalk17]";
				if DoneTalking is false:
					say "[TobiasTalkMenu]"; [looping back into the menu to talk to him at the player's heart's content]
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the dobie, shaking your head slightly as he gives a questioning look.[if Player is not in Tobias's Trailer] 'Oh well, have a nice day then. Head north from here if you want to talk again. I've got a cozy place through an old fence and across the abandoned lot. You can't miss it.' He says with a shrug, walking off in the direction he indicated.[end if]";
			[connecting the rooms]
			change the north exit of Smith Haven Mall Lot East to Overgrown Lot;
			change the south exit of Overgrown Lot to Smith Haven Mall Lot East;
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


to say TobiasTalk1: [Ask him about himself]
	say "     'Oh, I've been a dog trainer for close to ten years now. Started my business after coming back from the war. Which one, you ask? One of the shitty ones that no one even remembers, in the Kosovo. Stopping one group of asshole Europeans from stringing up their neighbors, and vice versa, at times.' He shrugs and brushes the topic aside, then says, 'Started with just two kennels and a bitch. Really good one, though. Purebred puppies go for quite a bit, and the ones I didn't sell got trained. Ever seen [']The Revivicator II['], [']Mall Pig['] or [']Inspector Gumbo[']? All my dogs in those movies.' Reaching out to pat Dane on the head, the man adds, 'This current crisis hit out of the blue, but I was prepared for [italic type]something[roman type] to go down, so my place is well stocked. And apparently my skills are quite useful these days too.'";

to say TobiasTalk2: [Ask what he is doing at the mall]
	say "     'Oh, I'm just stopping by for some supplies and a good warm meal. This is one of the few places that one can relax and let your guard down. Also, at some point it is important to socialize newly trained pets with large groups of people. That can bring some previously hidden issues to the forefront so they can be dealt with - like Cara's little hangup.";

to say TobiasTalk3: [Talk about dog training]
	say "     Tobias gives you a knowing nod and clears his throat. 'The difficult part about any training with canines isn't to get them started doing something. No, it's keeping them from being obsessed with things once they start. Here, let me demonstrate.' Stepping forward, the dog trainer loosens the straps of the leather muzzle on Dane and pulls it off, then tells him, 'Go on boy, lick your balls.' In reply, Dane gives a happy bark, followed by the submissive dobie curling up on the ground and lapping at his own crotch. Watching the naked young man pleasure himself, Tobias adds, 'It wouldn't do to have a movie dog actually go through with mauling an actor instead of just lightly biting them in the ass, so control is a [italic type]very[roman type] important thing. Even if they do not want to follow a command, it [italic type]must[roman type] be obeyed instantly. Just look at Dane for example.'";
	say "     The other dobie is by now fully erect, his knotted cock sticking out of his sheath and being eagerly lapped at by the canine's long, floppy tongue. 'Freeze!' Tobias suddenly barks out, with the trained anthro immediately obeying. 'Very good,' the dog trainer says and crouches down next to his pet, stroking Dane's head and scratching him behind his ears. Then he reaches out to grab the other man's cock and begins to stroke it with an expert grip, quickly getting Dane to climax and shoot his load. Tobias milks the dog until he finishes shooting the last drops of cum, then holds out his hand for the dobie pet to lick it clean of all traces of his own seed. Standing up again, Tobias grins at you and concludes with the words, 'And that's how you do it. Discipline and rewards in just the right proportions. It'll do the trick very well, I tell you.'";

to say TobiasTalk4: [Offer to have sex with him]
	say "     Openly checking out the Doberman's body, you ask whether he'd like to have sex. After all, he seems to know how this new world works, so there's no use beating around the bush. You wouldn't mind seeing those muscles without clothes in the way! 'I'd love to take you up on that, but...' Tobias steps closer, cupping your cheek in one paw and smirking. 'I'm rather possessive. If you want me to breed you, be a good little puppy and listen to my commands. If you can do that, I'll give you all the dick you can handle.' Trailing fingers over your cheek, he continues, a dark chuckle in his voice. 'Don't worry- I won't force you to do anything you don't want, though there's no safe word once we start. You have ONE chance to say no.' Swallowing the desire to melt into the Doberman's hand, you mull over his words. Cara and Dane seem like a cautionary tale, and you can't be sure they consented to become his pets. Who knows what weird hypnotic hold he has on them? Conveniently, he (seems to have) taught them not to speak.";
	LineBreak;
	say "     Still, Tobias is hot as fuck, and just the touch of his paw pads is enough to make you shiver. [bold type]Do you want to throw caution to the wind and accept his offer? [roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, he seems trustworthy, and you want more of his touch!";
	say "     ([link]N[as]n[end link]) - No, you know how this goes. You go with him, attempt to have sex, and BOOM, you're a hypnotized fuckslave. No thank you!";
	if Player consents:
		LineBreak;
		if Player is in Tobias's Trailer: [already present, do not need to be led to the trailer]
			say "     You can't quite put your finger on it, but Tobias's offer appeals to you on a primal level. That dominant touch is equal parts soothing and exciting, and you can feel your sex twitch as his fingers stroke over your cheek. You nod, breathless in the face of his masculinity, and quietly state that you'd love to be Tobias's pet as long as you can keep your humanity intact. You're not ready to become a dog and may never be. Tobias runs his fingers over the top of your head, then drapes his arm around your shoulders, leading you much like he does Dane and Cara. 'Excellent. Let's get these two in their kennels, and then we can start. It's good that you're already here. Saves me the trouble of helping you through that jagged fence.' Without waiting for your answer, he leads the dogs up the stairs and into the trailer, his dog tags jingling with each step and his jeans bulging with obvious desire.";
			say "     'Make yourself at home, pup. I'll be right there once these two are in their kennels. Can't leave them alone if I don't want those two getting up to trouble.' Expecting something straight out of a horror movie, you brace yourself, walking up the creaking stairs and blinking as your eyes adjust to the gloom. Surprisingly, it's not as dirty as you expected, with an immaculately clean inside that leads off in two directions. To your right, there's a sectioned-off portion of the trailer with two spacious kennels filled with dog beds and solid wood separating them. To your left, there's a shabby comfortable-looking recliner, a small kitchen area, an old tv, and two doors. One of the doors stands open to show a spacious bed with perfectly creased sheets. The other, you assume, is the bathroom. It's sparse but pleasant enough.";
		else: [player is led to the trailer from the mall lot]
			say "     You can't quite put your finger on it, but Tobias's offer appeals to you on a primal level. That dominant touch is equal parts soothing and exciting, and you can feel your sex twitch as his fingers stroke over your cheek. You nod, breathless in the face of his masculinity, and quietly state that you'd love to be Tobias's pet as long as you can keep your humanity intact. You're not ready to become a dog and may never be. Tobias runs his fingers over the top of your head, then drapes his arm around your shoulders, leading you much like he does Dane and Cara. 'Excellent. Let's get these two in their kennels, and then we can start. You're alright with a bit of a walk, aren't you, pup?' Without waiting for your answer, he continues on his way, his dog tags jingling with each step and his jeans bulging. It's a longer walk than you'd expect, through overgrown weeds and tall grass, through a fence until you reach a gravel road leading to a run-down trailer. Eventually, you reach a run-down-looking trailer with chipped paint and an old, unfinished set of wooden steps leading up to a screen door. Two vaguely human-shaped straw dolls are propped against the side of the trailer. If you weren't so excited about 'the main event,' you'd like to ask about their purpose.";
			say "     'Up.' Tobias says commandingly, leading the two anthro dogs up the steps and into the trailer, leaving the door open as he watches them clamber on all fours. Sparing you a cocky grin, he cocks his head to the left. 'Make yourself at home, pup. I'll be right there once these two are in their kennels. Can't leave them alone if I don't want those two getting up to trouble.' Expecting something straight out of a horror movie, you brace yourself, walking up the creaking stairs and blinking as your eyes adjust to the gloom. Surprisingly, it's not as dirty as you expected, with an immaculately clean inside that leads off in two directions. To your right, there's a sectioned-off portion of the trailer with two spacious kennels filled with dog beds and solid wood separating them. To your left, there's an old, comfortable-looking recliner, a small kitchen area, an old tv, and two doors. One of the doors stands open to show a spacious bed with perfectly creased sheets. The other, you assume, is the bathroom. It's sparse but pleasant enough.";
		WaitLineBreak;
		say "     Excited by what's to come, you walk to the bedroom and sit on the edge of the bed. Politely settling in, you strip out of your gear and wait for the dominating dog in the nude. You hope Tobias doesn't mind your bare ass on his sheets, but maybe a punishment could be fun, too! The way Tobias so deftly handles his pets bodes well for his prowess in bed. Thankfully, you don't have to wait long. Heavy footsteps, followed by 'No whimpering, bitch! You asked to be a dog, so sleep in a goddamn kennel. I'll wake you for breakfast!' follow Tobias through the trailer, and when he steps through the door, he's holding a padded leather collar and a leash. 'Well, aren't you an eager puppy?' Tobias says as he uses his foot to shut the door behind him, licking his lips and looking you over. 'Put this on, pup.' He pauses, taking in your questioning look with a chuckle. 'Don't worry- I'm not tossing you in the kennel unless you ask nicely. This collar's just a reminder.'";
		if Player is neuter:
			say "     Tobias stares between your legs at your lack of genitals, then shakes his head. 'Sorry, pup. That's a dealbreaker for me. I consider myself fairly open-minded but I just can't wrap my head around sex with someone that's neutered. Call me old fashioned, but I like to see that you're having as much fun as I am.' Disappointed, you thank him for his honesty and throw your gear back on, brushing past him to leave.";
		else:
			LineBreak;
			say "     [bold type]This collar's giving you a strange vibe. Despite your nudity, you aren't sure if you're ready for that level of submission. The best-case scenario is that Tobias'll force you to submit. Do you want to let the Doberman collar you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, accept the collar and any strings attached to it.";
			say "     ([link]N[as]n[end link]) - No, you've made it this far by following your gut feeling. If something feels wrong, best not to do it.";
			if Player consents:
				LineBreak;
				say "     Nodding emphatically, you feel the collar slip around your neck, its padded material settling snugly around your throat. The sensation is intensely erotic, and your sex stirs as the bone-shaped tag settles into place. Checking its label, you feel your cheeks flush. It proudly proclaims that you're a [']Puppy Slut.['] 'Good puppy.' Tobias praises you, his fingers teasing your ears as though you're a dog that's just performed a trick. 'Let's get your treat.' He says, unzipping his jeans and letting them fall past his muscular thighs, pooling at his feet. He's not wearing underwear, and his canine cock spills forth, sending masculine musk across your face as it bounces in greeting, its knot partially swollen and throbbing with his heartbeat. 'Uh-uh. Tongue only. Puppies don't suck- they lick.' Tobias admonishes you as your drooling mouth attempts to capture that big cock. Stepping closer, he assaults your senses with heavy balls and his drooling dick, filling your world with unfiltered manliness. Something close to a whine wells up as you follow his directions, your tongue trailing up the underside in long laps that smear precum over your face.";
				say "     Watching you with silent approval, Tobias strips out of his vest, his efforts sending trails of pre over your face and slopping your tongue over his manhood until it shines with drool. You're starting to settle into your routine of a long lick followed by a swallow of what you gather from that gooey river when he snaps his fingers, forcing your nose against his balls. 'Stay.' Stricken by the sudden loud noise, you stop, panting softly and huffing the Doberman's musky sack. Moments pass, and you contemplate disobeying as your mouth waters, demanding another taste of canine manhood. You barely manage to hold it together, your [if player is male]cock[else]pussy[end if] throbbing between your spread legs and messing the sheets below with a steady drool of arousal.";
				WaitLineBreak;
				say "     'Good puppy.' Tobias trails a paw over your head to the nape of your neck, repeating the motion until a needy sound vibrates through your throat. 'I know, pup. I'll breed you, don't you worry.' He coos, pushing you back onto the bed and slipping between your legs, letting his pulsing spire drag over your genitals, lingering to [if player is female]prod against your sopping pussy[else if player is male]hot dog the space between your balls[else]roll against the base of your genital slit[end if]. 'Hope you're ready for a rough ride, pup. I only do anal unless I'm trying to fuck a litter into a needy bitch[if player is mpreg_ok], though your scent tells me that's what I'm about to do[end if].' Punctuating his words with a slow press, he invades your rear entrance, gentle pressure sending a dull pain through you as his large shaft spreads you, inch by inch. 'Don't be afraid to whine, puppy. Master's right here.' He murmurs in your ear, his teeth nipping at its tip.";
				say "     The Doberman's not exactly gentle, but at least his first few thrusts are slow and measured, giving you just enough time to adjust to his size before he slides home, then works up to a breakneck pace that brings panting high-pitched noises from your throat. You're helpless beneath his onslaught, [if player is male]messing his abs with your helplessly twitching cock[else if player is female]drooling juices helplessly from your untouched pussy to lubricate his plunging cock[end if]. A steady stream of praise murmurs from the Doberman's lips, barely audible over the wet plunge of his jackhammering cock. Vaguely, you hear the words 'good,' 'bitch,' and 'cocksleeve' as your face flushes with embarrassment and arousal. For some reason, his words feel almost as good as the pounding your ass is receiving! Is it the praise or the humiliation of being referred to as his pet?";
				WaitLineBreak;
				say "     'Here comes the knot, puppy.' Tobias's lusty whisper warns you, panting in your ear as a slurping pop follows a blooming pain in your backdoor. Now tied, he bastes your insides with creamy virility, never stopping his ramming thrusts as his paws grip your leash, tugging it to bring your mouth to his and slopping his canine tongue between your lips in a deep, passionate kiss. Helpless beneath Tobias's dick, you go limp, squirting your desire between your body and his and riding out a hands-free orgasm powered by nothing but your backdoor's violation. You break from your obedient dog role as you come down, wrapping your arms around the gently rocking Doberman and squeezing him closer. 'Fuck, pup. Haven't had an ass that good in years. How about I keep that collar on you? You're too damn hot not to claim.' Tobias murmurs as he returns your embrace, his expression returned to its usual jovial, easygoing baseline. 'Don't worry. Still not planning on sticking you in a kennel.' Wrapped in the afterglow and buried under the affectionate Doberman, you feel pressure to answer.";
				LineBreak;
				say "     [bold type]Do you want to let him collar you? You guess he won't be interested in pushing your relationship further if you deny him[roman type].";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes, you'd love to be Tobias's obedient puppy, as long as he doesn't forget you're not some feral dog to train!";
				say "     ([link]N[as]n[end link]) - No. The collar's fun, but you don't want to be owned by anyone. You'd rather keep it casual.";
				if the player consents:
					LineBreak;
					say "     Nodding emphatically, you lick your lips and lean into his pointed ear to give him your answer. As long as sex is always this good and he doesn't mind you spending time away from his bed, you'd love to be his submissive pet. As fun as this was, you have other things to do! 'Of course. Don't go getting yourself caught up in anything. If I have to come to sniff you out and save your ass, I'll swat it until you yelp. I've got a flogger around here somewhere that my ex left.' He says with a smirk, patting your rump. Breaking your embrace, Tobias leans over you, his dog tags nearly touching your nose as you stare up at his lazy grin. You chat about nothing in particular while the dog's knotted cock throbs and spits its creamy payload into your overstuffed ass, and once his cock slips out, uncorking your ass, Tobias walks you to the door, his half-hard erection leading the way. Patting your ass, he growls lustily in your ear as you step down the rickety stairs. 'Come back next time you want your ass bred, pup. I've got plenty of tricks to teach you.'";
					ItemGain puppy slut collar by 1;
				else:
					LineBreak;
					say "     Pausing to catch your breath, you sheepishly explain that you'd prefer to keep things casual. You like wearing the collar for Tobias, but you don't want to be considered his property. Hopefully, that's enough for him! Tobias shakes his head, smirking at your words and leaning over you, his dog tags coming close to tapping your nose. 'I don't believe you, but I'll respect your choice. As I said, I'm not interested in forcing anything on anyone. If all you want is a quick and dirty fuck, I don't mind pounding you silly, then sending you home. In fact...' As Tobias trails off, you feel pressure in your stuffed hole, followed by a wet pop. With a titanic effort, he's yanked his knot out of you! As you recover, you feel practiced hands unbuckle your collar, followed by a rough tug to your feet and a soft pat on the back. 'Off you go, then. Come back when you want another load.' He says, slapping your ass as you dress and head for the door. The Doberman wasn't kidding about everything feeling quick and dirty, and you can't help but imagine that this is payback for saying no to becoming his sex pet, but as you walk away, you can only hope you made the right decision. As good as it felt to let him dominate you, you doubt you could have resisted his control, and you can't be sure his motives are pure!";
				NPCSexAftermath Player receives "AssFuck" from Tobias;
			else:
				LineBreak;
				say "     You've seen things like this happen countless times. That collar's just as likely to turn you into a hypnotized dog bitch as it is to be a fun sex toy. Hurriedly gathering your clothes, you shake your head vehemently and push past Tobias, dressing on the way. As you rush from his trailer, he calls after you. 'Okay, pup, but this was your final chance. I'm not going to give you another! We could have had some fun.' Was this the right choice? As you throw your gear back on, you try to put the trailer from your mind. Whether it was or not, it's better to be safe than sorry. At least you CAN think about it- you doubt that you could contemplate the consequences of your actions if you chose to obey.";
	else:
		LineBreak;
		say "     You decline Tobias's offer. You're horny, but you're not willing to give yourself to someone, knowing that, these days, that could mean something far more permanent. If he ever changes his mind and wants to fuck you without any strings attached, though, you're willing to have some fun! Shrugging, Tobias pats the top of your head as though you're nothing but a dog. 'It's a pity, but I don't force myself on others. Meet me at my place if you change your mind! I'll teach you to be a good puppy.'[if Player is not in Tobias's Trailer] He says, pointing to the north of the parking lot. With a last nod, he continues his walk with the two other dogs.[end if]";
	change the north exit of Smith Haven Mall Lot East to Overgrown Lot;
	change the south exit of Overgrown Lot to Smith Haven Mall Lot East;

to say TobiasTalk5: [Bad end. Become a dog.]
	LineBreak;
	say "     [bold type]Is this really what you want? If you let Tobias train you, you'll be his. There's no turning back. [roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, you're tired of fighting to stay human. You'd rather be a happy dog under Tobias's care.";
	say "     ([link]N[as]n[end link]) - No, you've let a flight of fancy get the better of you. You don't want to be a dog.";
	if Player consents:
		LineBreak;
		say "     It's what you want. You repeat Tobias's words exactly, shivering as you listen to the need in your voice. You didn't realize exactly how much you desired this fate. To submit to someone and give up your humanity for happiness. The next few hours are a whirlwind. [if Player is not in Tobias's Trailer]Tobias leads you to his home, a broken-down white trailer with two straw dummies leaning against it. [end if]Taking you inside and showing you to spacious kennels, he guides you into the one to the left of Dane's, stopping to slip a collar around your neck. He jingles the blank tag, kneeling to ruffle your canine ears and help you remove your clothes. 'Get some rest now. Tomorrow, your training starts.' Tobias is true to his word, and as you sleep curled up in the wooden cage, you can't help the excitement welling in your chest, mixed with slight shame. Was this the right choice? It's too late to turn back.";
		say "     The next day, Tobias wakes you with the clatter of metal dishes. Some meaty-smelling slop sits alongside a sparkling bowl full of water, and as you reach for them with your paws, Tobias's voice stops you, harsh and biting. 'Bad dog! Use your muzzle.' Cowed, you lower your head, clumsily rolling your tongue against the warm, gooey meal and letting your tail droop between your legs. Eating is messy but doable, and your canine nose gets coated in dripping slop before you reach the bottom of the bowl, but you manage to finish it, catching yourself before you wipe your face with your paws. Instead, you turn your head, lapping at the water with nothing but your flat tongue. 'You're a fast learner. Good dog.' Rewarding you with a patting paw, Tobias clips a leash to your collar, tugging you past the empty dishes and shooting you a pointed glare as you attempt to stand. As you return to all fours, he releases Dane from his kennel, then Cara, taking all three leashes in one paw as he leads you to the front door, then down the steps.";
		say "     Standing over a patch of well-trimmed grass, Tobias crooks his head toward it. You don't understand at first, but then you remember Cara's embarrassing introduction. Does he want you to 'mark your territory?' You balk at the idea, but Dane and Cara are already squatting nearby, filling the air with the scent of canine piss. You gulp, avoiding Tobias's gaze and following suit, staring at the ground below as you try to get around the mental block of pissing with an audience. Finally, after you close your eyes, your face flushing with shame, you feel yourself begin to piss, widening your stance to keep stray droplets from wetting your fur. As though the dam broke, you feel a flood of intrusive thoughts bobbing to the surface. Pissing outside- marking your territory- feels so good. Is this what it means to be a dog? You look to Tobias, and his pleased expression further cements your submission. Master's word is the law. You're a good dog.";
		trigger ending "Tobias's Dog";
		end the story saying "You have become the dog that you never knew you wanted to be!";
	else:
		say "     You don't know what you were thinking. You tell Tobias you'd prefer to hold onto your humanity. You're sorry for wasting his time with your indecision. Tobias shakes his head and shrugs. 'There's a reason I ask my pets to think it over. They always think being a submissive pet is hot, but this isn't some spur-of-the-moment decision. Once you're mine, you're mine. I respect that it's not for everyone.'";

to say TobiasTalk10: [Ask who Dane and Cara are]
	say "     Tobias shrugs and replies, 'Can't say I particularly care who they [italic type]were[roman type]. They've accepted collars and my authority over them. I'll mold these two into something exceptional.' Glancing down at Cara, he adds, 'Might just breed this one, once I finish her training fully.' You see the anthro bitch's eyes flick downward away from her master at his casual comment, yet that is all the reaction she shows.";

to say TobiasTalk11: [Ask how he can do this to the other canines. They're just like him after all]
	say "     Tobias chuckles and shakes his head. 'It's easy to think so, but no. Even among humans, there are top dogs and... betas. Those who can do the things that need doing and those who meekly go along. I've got what it takes to make it in this crazy new world. And thanks to me, these two aren't stumbling around lost in the streets, being preyed on by who knows what. Don't think I kidnapped them either - they begged me to take them in, and I explained that I demand complete obedience before I ever put on the collars.'";

to say TobiasTalk12: [Tell him that treating people like animals is wrong]
	say "     Raising one eyebrow and giving you a stoic look, the Doberman shrugs after a second or two. 'We'll have to agree to disagree then. Just look at all the things going on throughout the whole city right now. At least my pets will be well cared for and suffer through nothing more than a bit of tough love and discipline. I don't beat them or force myself on anyone.' The canine man's expression hardens visibly as he gives a wave of his hand that somehow seems to encompass the whole city. 'The world has changed, as you might know. Or maybe you haven't yet realized just how much it has. I've been through war, and have seen with my own eyes all of the beastly things that humans are capable of. Even without taking on the looks of animals as many do now, this always was inside all of us. Strip away civil society and you are left with a place that just eats up the weak-willed and timid. Trust me, it is a mercy that I have adopted Dane and Cara and am molding them into something that will have a proper place in this harsh world.'";

to say TobiasTalk13: [Ask if he couldn't instead train his pets to be strong and confident in their own right]
	say "     Tobias frowns a little and shrugs. 'Could I? It's doubtful. Some people just aren't cut out to take care of themselves all on their own. Society just coddled them all this time, so they survived. The merciless place that the streets of this city have become certainly aren't a place for such experiments now. Secondly, I'm not a charity. If I spend my time and supplies to train a dog, then it better be my property, or well-paid for in advance.'";

to say TobiasTalk14: [Demand that he free his pets]
	say "     Letting out a derisive snort, Tobias gives you a rude gesture and says, 'Up yours! Really, what else do you want besides it? Shall I raise my tail and shoot rainbows out of my ass too? No, these two are mine. I took them in, fed them, cared for them and trained them. And even if I abandoned all the time and resources I invested - should I just let them loose to be snatched up by someone who is [italic type]guaranteed[roman type] to treat them worse? Trust me, there are plenty of predators even inside the mall. Just take that Logan dude in the wolverine guards - he's been looking at Cara like a slab of meat. Without my leash on her, he'd have pushed her down and pounded her right the first time he saw her.'";

to say TobiasTalk15: [Ask to buy one or both of his pets]
	say "     The anthro Doberman looks at you with a thoughtful expression, then slowly shakes his head. 'I don't think so. Not yet, at least. Cara still needs more training and I might keep her to breed with anyways. Meanwhile, Dane is further along, but there are some little things left to polish. Plus, I don't have a replacement for him yet. Training pets in pairs makes a lot of sense, you know. The newer one will have an example to look to and the experienced one gets a refresher of the things taught that really drives them home.'[if Player is not in Tobias's Trailer] Glancing around thoughtfully for a second, Tobias adds, 'I guess that is another reason why I am here too. Finding a good candidate to train. Most of the weak people out on the streets have already met their fate, one way or another. It really is much easier to start with a new pet that hasn't been driven out of their mind by constant rape, even without having to squash the supposed alpha owner.'[end if]";

to say TobiasTalk16: [Ask if you can pet his dogs]
	say "     Tobias smiles and nods for you to go ahead. 'Sure thing, but no groping please.' You walk over and crouch down between the two collared anthros, patting their gleaming coats of fur. Dane readily leans into your touches, his tail wagging in obvious pleasure, while Cara seems more reserved, trembling a little as you first reach out for her. Only when your continued stroking continues to stay away from her privates and (quite nice and shapely) breasts does she relax, wagging her tail too.";

to say TobiasTalk17: [Ask if you can fuck his dogs]
	say "     The Doberman's eyebrows rise as he gives you a surprised look. 'Right to the point, aren't you? But no, you may not. I'm training canine companions and working animals, not rape-bait for the streets that spread their legs for anyone at the drop of a hat.' Stepping up to his dogs, Tobias pets Dane and Cara, who wag their tails eagerly, clearly being happy to be under his care right now.";

Section 2 - Tobias Room and Objects

Table of GameRoomIDs (continued)
Object	Name
Tobias's Trailer	"Tobias's Trailer"

Tobias's Trailer is a room.
Tobias's Trailer is northeast of Overgrown Lot.
Tobias's Trailer is sleepsafe.
Description of Tobias's Trailer is "[TobiasTrailerDesc]";

to say TobiasTrailerDesc:
	say "     This trailer looks like it hasn't seen a coat of paint in years. It's peeling and its stairs are splintered and obviously old, while its exterior sprouts from tall grass and weeds. Outside, two straw dummies slump against its side, and there's a patch of well taken care of grass among the weeds that smells strongly of canine urine. If it weren't for Tobias leading you here, you would have never been able to find it past the chain-link fence and through the overgrown weeds! Towards the [link]southwest[end link], you can make your way back through the overgrown lot.";
	if Tobias is in Tobias's Trailer:
		say "     Tobias stands outside of the trailer, tending to his anthro dogs['] various needs. Currently he's [one of]teaching Cara and Dane to fight one of the dummies using nothing but their teeth[or]watching as his dogs go to the bathroom on their patch of grass[or]sitting on the stairs, petting his dogs and watching you approach[at random].";

Table of GameRoomIDs (continued)
Object	Name
Overgrown Lot	"Overgrown Lot"

Overgrown Lot is a room.
Description of Overgrown Lot is "[OvergrownLotDesc]";

to say OvergrownLotDesc:
	say "     An overgrown lot that someone's tried and failed to sell, leaving it overgrown with weeds that are tall enough to tower over you. A chain-link fence surrounds it, but a hole in the [link]south[end link] of where you stand leads out onto the Smith Haven Mall's eastern parking lot. A carefully cleared path leads through the vegetation, allowing you to approach Tobias's trailer in the [link]northeast[end link].";

[Puppy Slut Collar]
Table of Game Objects (continued)
name	desc	weight	object
"puppy slut collar"	"A pitch-black padded leather collar. Reminds you of Tobias when you hear the tag jingle."	2	puppy slut collar

puppy slut collar is a grab object.
puppy slut collar is equipment.
It is not temporary.
Plural of puppy slut collar is false.
Taur-compatible of puppy slut collar is true.
Size of puppy slut collar is 0.
AC of puppy slut collar is 0.
Effectiveness of puppy slut collar is 0.
GA of puppy slut collar is 1.
Traits of puppy slut collar is {"sexy"}.
Placement of puppy slut collar is "neck".
Descmod of puppy slut collar is "You're wearing a padded black leather collar around your neck, with a bone-shaped tag that says 'puppy slut' in curling script. You can't help but feel slightly turned on when you think about what this collar means.".
Slot of puppy slut collar is "neck".
Scent of puppy slut collar is "This collar smells like leather with a hint of sweat and musk, like it's been worn during sex.".

Section 3 - NPC

Table of GameCharacterIDs (continued)
object	name
Tobias	"Tobias"

Tobias is a man.
Tobias is in Tobias's Trailer.
ScaleValue of Tobias is 3. [human sized]
Body Weight of Tobias is 2. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Tobias is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Tobias is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Tobias is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Tobias is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Tobias is 3. [length in inches]
Breast Size of Tobias is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Tobias is 2. [count of nipples]
Asshole Depth of Tobias is 8. [inches deep for anal fucking]
Asshole Tightness of Tobias is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Tobias is 1. [number of cocks]
Cock Girth of Tobias is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Tobias is 12. [length in inches]
Ball Count of Tobias is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Tobias is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Tobias is 0. [number of cunts]
Cunt Depth of Tobias is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Tobias is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Tobias is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Tobias is false.
PlayerRomanced of Tobias is false.
PlayerFriended of Tobias is false.
PlayerControlled of Tobias is false.
PlayerFucked of Tobias is false.
OralVirgin of Tobias is false.
Virgin of Tobias is true.
AnalVirgin of Tobias is true.
PenileVirgin of Tobias is false.
SexuallyExperienced of Tobias is true.
TwistedCapacity of Tobias is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Tobias is false. [steriles can't knock people up]
MainInfection of Tobias is "Doberman Male".
Description of Tobias is "[TobiasDesc]".
Conversation of Tobias is { "<This is nothing but a placeholder!>" }.
The scent of Tobias is "     Tobias smells nicely masculine, in a furry, earthy way with a little bit of honest sweat in the mix too.".

to say TobiasDesc:
	say "     Tobias Black is an anthro Doberman with a fairly muscular build and a stance that brings to mind a soldier ready for combat. Standing at roughly six feet tall, he has green eyes and well trimmed short chestnut brown hair, styled immaculately into rolling, pointed waves with buzzed sides. He wears a rugged pair of jeans and an open vest with lots of pockets. A pair of somewhat scratched dog tags hangs around his neck.";

instead of conversing the Tobias:
	say "[TobiasTalkMenu]";

instead of fucking the Tobias:
	if PlayerFucked of Tobias is false: [first time]
		say "[TobiasTalk4]";
	else:
		say "<Writer's Note: This is the current extent of Tobias's content, but I hope to add a sex menu soon. Also try putting on your collar as you approach the trailer! (1 day cooldown after sex for that scene)>";
		say "     [bold type]Do you want to re-play the initial sex scene? [roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah!";
		say "     ([link]N[as]n[end link]) - Not right now.";
		if Player consents:
			LineBreak;
			say "[TobiasTalk4]";
		else:
			say "You don't feel like replaying those events, hot as they were.";

[
	say "     'Ask me nicely, pup, and I'll see what I can do.'";
	say "[TobiasSexMenu]";
]

to say TobiasSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Tobias suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Tobias off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the dobie's canine shaft";
	[]
	if Player is female: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Tobias's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer vaginal sex to the dobie";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Tobias's shaft in your ass";
	now sortorder entry is 5;
	now description entry is "Offer anal sex to the dobie";
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
				if (nam is "Get a blowjob"):
					say "[TobiasSex1]";
				if (nam is "Suck Tobias off"):
					say "[TobiasSex2]";
				if (nam is "Take Tobias's shaft in your pussy"):
					say "[TobiasSex5]";
				if (nam is "Take Tobias's shaft in your ass"):
					say "[TobiasSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the dobie, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say TobiasSex1: [oral on the player]
	say "     A";
	NPCSexAftermath Tobias receives "OralCock" from Player;

to say TobiasSex2: [oral on Tobias]
	say "     A";
	NPCSexAftermath Player receives "OralCock" from Tobias;

to say TobiasSex3: [virgin Tobias fucked]
	say "     A";
	NPCSexAftermath Tobias receives "AssFuck" from Player;

to say TobiasSex4: [non-virgin Tobias fucked]
	say "     A";
	NPCSexAftermath Tobias receives "AssFuck" from Player;

to say TobiasSex5: [Tobias fucks player pussy]
	say "     A";
	NPCSexAftermath Player receives "PussyFuck" from Tobias;

to say TobiasSex6: [Tobias fucks player ass]
	say "     A";
	NPCSexAftermath Player receives "AssFuck" from Tobias;

Section 4 - Ending

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Tobias's Dog"	"BadEnd"	"Sex Slave"	Tobias's Dog rule	20	false

This is the Tobias's Dog rule:
	if ending "Tobias's Dog" is triggered:
		say "     Over the next few weeks, Tobias trains you to do various tricks. Stay, sit, roll over, shake hands, and a few others. You learn how to properly greet other dogs, stuffing your nose under their tail and sniffing their backsides, and you eat your meals from a metal bowl in front of your kennel, ending with gentle ear rubs and praising words. Each day is much the same, but there's comfort in your routine, and you treasure every word your master speaks, taking his lessons to heart and abandoning your humanity. Tobias sells Dane to another city-dweller as a guard, leaving you and Cara as the only canines the dog trainer has left. You soon outstrip her training, and Tobias often calls you his prized pup, rewarding your good behavior with roaming fingers and praise that sets your heart fluttering, eclipsing the orgasms he skillfully gives you. [if Player is female or Player is mpreg_ok]Eventually, he breeds you full of his pups, opting to sell Cara instead of using her as breeding stock [else if Player is male]Eventually, he mates you with Cara, selling her once she's given birth [end if]and training your offspring with you as a shining example of a perfect submissive dog. You're still by his side, accompanied by one of your many pups, when the city's military cordon lifts, setting off into the new world led by your jingling collar and doting master...";
		the Player is enslaved; [suppresses other endings, as the player cannot check on other friends]

Section 5 - Collar Events

instead of going northeast from Overgrown Lot while (puppy slut collar is equipped): [If you've become his puppyslut and he hasn't fucked you recently]
	move player to Tobias's Trailer;
	say "     Navigating past the Smith Haven Mall east parking lot and through the fence, you seek out Tobias's rundown home to meet him again. You try not to appear too eager as you come upon him teaching his dogs to bite the straw dolls in some bizarre self-defense training. Before you can say anything, he whistles, sending Cara and Dane to his side and turning to face you. 'Glad to see that you kept your collar on, puppy.' Tobias says as you greet him in turn. ";
	if lastFuck of Tobias - turns < 8: [less than 8 rounds after his last time having sex]
		say "[line break]"; [closing out the open paragraph from above]
	else: [more than 8 rounds after he last had sex -> Tobias is horny]
		say "'Are you looking for some more fun? I can put these two in their kennel if you want to fuck.' Licking his lips, he blatantly stares between your legs, his gaze enough to make you shiver.";
		LineBreak;
		say "     [bold type]Do you want Tobias to fuck you? [roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, you're here for another helping of Dobie Dick!"; [Sex scene with player submissive.]
		say "     ([link]N[as]n[end link]) - No, you just wanted to say hello.";
		if Player consents:
			LineBreak;
			say "     You nod, your hand raising to play with your collar as you look toward the ground, unable to look into those green eyes. You can't seem to get Tobias out of your head, and you'd like him to breed you again if he's willing. Your ass clenches at the thought, and you resist the urge to bend over right then, your hips circling and thighs rubbing together as you remember the intense sensation of being fucked so soundly. You attempt to follow Tobias into his home, but he shuts the door, shaking his head and returning a few moments later without his pets. Dragging you closer, he stuffs his tongue in your mouth, his paws roaming down to grip your ass cheeks and nearly lifting you from the steps with the sheer force of his grip. Your lungs scream for air even as his roaming tongue sends heat through your body, and you slump into his touch, shivering as his claws dig into your ass. Tobias drags you down the stairs, shoving you up against the trailer [if player is barecrotch]lining himself up with your rear entrance [else]tugging your lower garments down [end if]and thrusting into you without warning. A growling voice murmurs in your ear as he slams to the root, nearly lifting you off your feet. 'Missed you, puppy. My balls have been so fuckin['] full. You don't mind, do you? Giving your ass to your master like a good little puppy slut?'";
			say "     You nod, too breathless from the erotic assault to answer coherently. Tobias is so rough, and the way he splits your ass open has your sex drooling, despite its unattended state. You didn't know how much you wanted to be a sloppy fucktoy until now, but it feels so damn good that you wouldn't stop him if you could, instead pushing back in hopes of feeling that intoxicating flood of canine seed. 'Fuck. Take it.' Tobias says with a grunt, popping his knot past your stinging hole and flooding your inner walls with seed in thick ropes that threaten to swell your stomach. His teeth dig into your shoulder, holding you in place, and his claws tighten their hold, yanking you back into shallow thrusts until, with a sigh, he slumps against your back, panting in your ear. It was quick and dirty, but the sensation in your ass is unparalleled. As you milk the Doberman's cock, you can't help but whine softly, hoping it will draw Tobias's attention to your neglected orgasm while you shake your hips, begging for more stimulation. That can't be all, can it?";
			NPCSexAftermath Player receives "AssFuck" from Tobias;
			say "     'Calm down, pup. That was just the warm-up. You'll get yours.' Tugging himself from your asshole with a grunt, Tobias stuffs two fingers inside, trailing his drooling tongue over your neck as he plays with your ruined entrance. 'Since you're being such a good pup, I might let you get off.' As you stand there, squirming on Tobias's fingers, his expectant expression makes it clear that he wants you to beg for something more. With his fingers plunging into your ass, it's hard to think, but you attempt to say something, pausing to moan your approval as his fingers hit a sensitive spot.";
			LineBreak;
			say "     [bold type]You're so desperate to finish. How should you ask him to bring you to orgasm?[roman type][line break]";
			let Tobias_Sex_Choices be a list of text;
			add "Beg him to fuck you again." to Tobias_Sex_Choices;
			add "Beg him to get you off with his tongue." to Tobias_Sex_Choices;
			let Tobias_Sex_Choice be what the player chooses from Tobias_Sex_Choices;
			if Tobias_Sex_Choice is:
				-- "Beg him to fuck you again.":
					LineBreak;
					say "     Breathless, you beg him to slip his cock back inside of you. Whether or not you cum, you want him to fuck you with that big knot! Shaking your ass, you brace yourself against the wall, panting with wanton need. 'You're something special; you know that, pup?' Tobias growls in your ear as he withdraws his fingers and replaces them with his cock, sliding in with few issues and using his earlier deposit as lube. He's gentler this time, rolling his hips to seek out your sensitive spots and roaming his hands over your chest, tweaking your nipples. 'Haven't met someone so eager for cock since I was in the service. You'd give him a run for his money.' Somehow, the Doberman's words send a surge of pride through you, and you feel the telltale sensation of rising orgasm before he's even close to his second finish, shoving back until his knot corks your hole and messing the ground below with [if Player is male]ropes of submissive cum[else if Player is female]glistening strands of fem-cum[end if]. Sagging into his grip, you press your cheek against the peeling paint, basking in canine musk and sweat.";
					say "     Surprisingly, Tobias doesn't bother to paint your innards with a second coating of puppy batter, instead focusing on your trembling body with attentive fingers and prolonging the soft pleasure of afterglow. When he pulls out, he pats your ass, murmuring in your ear. 'Sorry about the choice of venue. Can't fuck in the house that often. I don't want the dogs to get too excited and make a mess in their kennels. You don't mind, though, do you? Pups like you lift their tails anywhere.' You bask in Tobias's post-fuck affection as long as you can [if player is barecrotch]gathering your wits [else]tugging your pants up [end if]when his cock slurps free from your abused hole and enduring another tongue-heavy kiss before parting ways. As much as you'd love to spend longer beneath him, you have other things to do.";
					NPCSexAftermath Player receives "Stroking" from Tobias;
				-- "Beg him to get you off with his tongue.":
					LineBreak;
					say "     Breathless, you beg him to eat your ass with his wide canine tongue. Whether or not you cum, you want to see what his tongue can do! Shaking your ass, you brace yourself against the wall, panting with wanton need. 'Kinky pup. You're lucky I'm into that shit.' Tobias growls in your ear, slapping your rump and dropping to his knees, burying his face between your cheeks. He wastes no time nipping at your hole before lathering it with his tongue, working deeper with each stroke of that talented appendage, and before long, you swear you can feel his muzzle threatening to penetrate your ass. Panting helplessly, you [if Player is male]stroke your needy cock [else if Player is female]finger your pussy [end if]in time with each rolling lick, listening to the sloppy sounds with a flushed face. Tobias is a prodigy with his tongue, and before long, you're riding his muzzle and [if Player is male]coating the wall with your load[else if Player is female]drooling fem-cum down his chin[else]squirming your way through an anal orgasm[end if]. You slump against the wall, touching yourself as the Dobie's tongue cleans your hole of every drop of his spend. Once he finishes he [if player is barecrotch]pats your bare ass [else]tugs your pants back up [end if]and gives you a cum-flavored kiss, then sends you on your way with a relaxed hole and a pleasant soreness to remember his efforts.";
					NPCSexAftermath Player receives "Stroking" from Tobias;
		else:
			LineBreak;
			say "     You shake your head, though you feel a blush creeping into your cheeks. You're not here to have sex with Tobias, even though you're still very much attracted to that idea. Instead, you'd prefer to talk. Tobias looks slightly disappointed as you finish speaking, shrugging and crossing his arms. 'Damn shame. I would love a fine piece of ass wrapped around my cock right about now.'";

Tobias ends here.
