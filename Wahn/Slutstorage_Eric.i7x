Version 1 of Slutstorage_Eric by Wahn begins here.
[Version 1: New File]

[ HP states of Eric                                                  ]
[  99: Taken advantage of -> submissive cuntboy, in Storage          ]

[
Submission Goals:
- Aiming to make him a pliant femboy in the end

Lvl 1->2 Upgrade:
Put harness and panties on him, take him for a stroll in the complex on a leash
Draw interest from others, player then publicly strokes and makes him orgasm
Mortimer can comment that pimping might be an option
]

to say Eric_StorageVisit:
	say "     After you tell him that you want to visit Eric, Mortimer leads you through the expansive storage facility, past countless almost indistinguishable doors. As you move along, you see several more copies of him either working, guiding other customers, and stepping into or out of various units. Given that you just counted [one of]five[or]six[or]seven[or]eight[or]nine[or]ten[or]eleven[at random] duplicates of the guy, you can't help but idly wonder just how many times he's split like that. 'This is it,' the slimy businessman says with a broad smile, indicating a nearby sliding door and coming to a stop before it. As Mortimer starts to rummage around in himself to retrieve the key ring, you have some time to think...";
	say "[Eric_StorageMenu]";

to say Eric_StorageMenu:
	LineBreak;
	say "     [bold type]What do you want to do with Eric this time?[roman type]";
	choose a row with name of "Eric" in the Table of StoredSluts;
	project the Figure of Eric_TShirt_hostile_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Restraints Fitted" is not listed in Traits of Eric and Sluttyness entry is 1:
		choose a blank row in table of fucking options;
		now title entry is "Have him fitted with restraints";
		now sortorder entry is 1;
		now description entry is "Get your pussyboy a nice little bondage getup";
	[]
	if "Restraints Fitted" is listed in Traits of Eric and (Sluttyness entry is 1 or Sluttyness entry is 2):
		choose a blank row in table of fucking options;
		now title entry is "Train him to get used to his restraints";
		now sortorder entry is 2;
		now description entry is "Get your pussyboy a little bit more used to his restraints";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Put your cock in his mouth";
		now sortorder entry is 3;
		now description entry is "Put your pussyboy's mouth to good use";
	[]
	if Player is purefemale:
		choose a blank row in table of fucking options;
		now title entry is "Get his tongue working on your pussy";
		now sortorder entry is 4;
		now description entry is "Put his mouth to good use";
	[
	choose a blank row in table of fucking options;
	now title entry is "Finger his pussy";
	now sortorder entry is 4;
	now description entry is "Finger-fuck Eric's pussy to make him cum";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the pussyboy with your cock";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Eric's ass";
		now sortorder entry is 7;
		now description entry is "Fill your pussyboy's ass with your cock";
	[]
	if (Level of Eric is 4 or (Level of Eric > 0 and Level of Eric < 99 and HP of Eric is 99) and player is male or Cunt Count of Player > 0): [either talked with Eric about the felinoid fucking him and having approved, or cuntboy slave Eric]
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Klauz and Eric";
		now sortorder entry is 13;
		now description entry is "Have some fun with both of them together";
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
				if (nam is "Have him fitted with restraints"):
					say "[Eric_RestraintFit]";
				else if (nam is "Train him to get used to his restraints"):
					say "[Eric_RestraintTrain]";
				else if (nam is "Put your cock in his mouth"):
					say "[EricStorageSex1]";
				else if (nam is "Get his tongue working on your pussy"):
					say "[EricStorageSex2]";
				else if (nam is "Finger his pussy"):
					say "[EricStorageSex3]";
				else if (nam is "Fuck his pussy"):
					say "[EricStorageSex4]";
				else if (nam is "Take Eric's ass"):
					say "[EricStorageSex5]";
				else if (nam is "Threesome with Klauz and Eric"):
					say "[EricStorageSex6]";
				now lastfuck of Eric is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Changing your mind about doing something with Eric, you're led back to the entrance of the storage facility by Mortimer and soon step out onto the street again.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Eric_RestraintFit:
	choose a row with name of "Eric" in the Table of StoredSluts;
	if carried of Storage Chit < 5: [player doesn't have the money]
		if "Chits Explained" is listed in Traits of Mortimer:
			say "     Addressing Mortimer, you ask if he by any chance might have some nice bondage gear and restraints to outfit Eric with. The goo person gives you a knowing smile and nods. 'Sure thing! I'm happy to say that I can supply whatever you might need in that regard - any size, or shape! Had to build up quite a selection, given the large variety of 'goods' people have been bringing here. Mr. C put me in contact with some professional scavengers, who raided some high quality boutiques with the stuff.' Letting out an amused chuckle, he then adds, 'For the low, low price of five storage chits, I'll go grab the cart and we can get your boy fitted!' An expectant look flashes over his face, with Mortimer's hand half-rising to accept payment, until he reads in your expression that you don't actually have the chits you need to pay. Glibly skipping past any need of you to say this to him, the businessman smoothly changes the movement into just a wave of his hand and adds, 'Any time you want to get him some gear, just let me know. The deal includes putting up some attachment points on the ceiling and walls, by the way.' There is no need to say anything in reply, leaving you free to wonder what you want to do next...";
		else:
			say "     Addressing Mortimer, you ask if he by any chance might have some nice bondage gear and restraints to outfit Eric with...";
			say "[Mortimer_Services]";
		say "[Eric_StorageMenu]";
	else: [player got the chit to pay]
		say "     Addressing Mortimer, you ask if he by any chance might have some nice bondage gear and restraints to outfit Eric with. The goo person gives you a knowing smile and nods. 'Sure thing! I'm happy to say that I can supply whatever you might need in that regard - any size, or shape! Had to build up quite a selection, given the large variety of 'goods' people have been bringing here. Mr. C put me in contact with some professional scavengers, who raided some high quality boutiques with the stuff.' Letting out an amused chuckle, he then adds, 'For the low, low price of five storage chits, I'll go grab the cart and we can get your boy fitted!' An expectant look flashes over his face, with Mortimer's hand half-rising to accept payment.";
		say "     ([link]Y[as]y[end link]) - Hand over five chits.";
		say "     ([link]N[as]n[end link]) - Not right now.";
		if Player consents: [pay]
			LineBreak;
			ItemLoss Storage Chit by 5;
			say "     Accepting the payment from you with a wide grin, Mortimer says, 'Pleasure doing business with you. I'll be right back!' The slimy businessman gets going right away, which gives you the opportunity to watch how he actually moves. The appearance of legs in movement form from his lower half, but that either is just a reflex from his previous life, or a show for onlookers. In reality, the goo simply slides over the concrete floors of the facility in a smooth glide, then rounds a corner and is out of sight a moment later. You spend a few minutes waiting, studying your surroundings out of boredom, before you hear the clatter of small wheels rattling over concrete. What comes into view around the corner where Mortimer went is a full half dozen of him, two of them flanking a large costume rack, complete with drawers at the bottom, boxes stacked on top and four coaster wheels. The rack is completely overstuffed with a bewildering assortment of bondage gear and similar items. Mortimer wasn't kidding about being ready to fit anyone and anything, apparently.";
			say "     'Apologies for the wait. I had to stop by the equipment shed to get some extra tools.' As Mortimer says this, one of the back duplicates of himself demonstratively raises an electric drill and gives it a few revs. Another is holding what looks to be a small locker on a pushcart. Unlocking the unit door and pulling it open, the Mortimer work crew literally floods inside all at once, surprising Eric who seems to have been sitting on the edge of his mattress, bouncing a rubber ball off the wall, floor and catching it again to keep himself busy. 'What's going on?' he asks, missing the catch in distraction and letting the ball bounce past as he jumps to his feet. 'Your owner paid for some new kit for you. I'll have you fitted in a moment.' Eyes going wide at the wall of advancing goo people, and the leather straps, ropes and all sorts of other gear in the costume rack, Eric tenses up, his gaze flashing to the still open door.";
			WaitLineBreak;
			project figure of Eric_Naked_hostile_icon;
			say "     Picking up on the thoughts going through the cuntboy's mind, Mortimer lets out a harsh grunt shakes his head. 'None of that, boy! Just stand still and let me work. You don't want to lose your good behavior privileges, do you?' One of his copies picks up the ball and holds it up for Eric to see, then casually throws it from one hand to the other while looking at the young man. With boredom being the serious threat that it is for someone in (mostly) solitary confinement, Eric hastily replies, 'No! I - I guess I don't even have a chance, with there being so many of you, do I?' His shoulders slump a little in defeat as he lets go of the intent to act, with Mortimer gliding up to him and giving him a pat on the head, like a dog. 'Good boy!' he says, followed by three of him stripping the cowed Eric down to nothing but his birthday suit, followed by pulling various pieces of bondage gear of the cart and holding it up to your cuntboy, strapping the more promising pieces on to inspect how he looks. With them being busy around him and the cart in the way, you don't quite see what's going on there, but you can hear Eric complaining, 'Get off me! I don't want to wear that!'";
			say "     While half of the Mortimers are busy with Eric, the other three get to installing hook-points in the room. He doesn't even need a ladder, as his goo body is able to stretch to a surprising height, which does seem to be exhausting for Mortimer though. With the whine of power-tools filling the almost bare room, it soon is equipped with steel rings securely anchored in the ceiling above the left corner, on the floor right beneath that, as well as in the middle of the back wall. Stopping over to take Eric's height with a measuring tape (with two other Mortimers holding the cuntboy to keep him still while that happens), the goo person also fits some appropriately long chain segments to the rings, then makes sure the snap-on rings stay closed with a small welding torch. Finally, they bolt the locker to the wall in the other back corner, providing a secure storage space that'll keep the gear out of Eric's hands. By the time the hardware crew finishes up, the costuming crew is done with Eric too, stepping back to allow you to inspect him.";
			WaitLineBreak;
			project figure of Eric_Panties_hostile_icon;
			say "     Feasting your eyes on the captive cuntboy, you can't help but grin at the embarrassed blush covering his face, which isn't too surprising, given that Mortimer fitted him with a black, frilly pair of panties. That little detail is just a bonus though, on top of the more functional gear strapped to the former student. He's got a matching set of black ankle and wrist cuffs, made from smooth but firm leather and just right in size not to look clunky on him. They're currently connected to spreader bars holding Eric's legs apart, and his arms behind his back at the same width. His chest is covered in a bondage harness, with straps going over the shoulders and under the arms, all connected to a horizontal bar of leather crossing his pecs, holding a shiny silver ring that is connected to a black leather leash. A red ball gag with black straps holding Eric's mouth open completes the outfit. Letting your eyes wander up and down over him, you can't help but imagine the sexy scenarios this'll allow in the future.";
			say "     As he sees that you're pleased with the restraints, Mortimer goes through a little spiel of explaining how to properly and securely strap in Eric, pointing out each piece and touching it while Eric looks wide eyed from Mortimer to you, making some whimpering noises through the gag. The explanation progresses to all of the gear being taken off at the end, fitting it all into the metal locker and handing the key to that to you. After that, Mortimer and yourself clear out of the storage unit, leaving behind Eric who throws worried looks after you until the door comes down again, thinking about what might lie in his near future. Most of the Mortimers leave, wheeling away the costume cart and carrying their tools, which leaves just the one standing next to you. 'That it for now, or did you want to have another go with him?' he asks, nodding to the door.";
			WaitLineBreak;
			TraitGain "Restraints Fitted" for Eric;
			now Constraints entry is true;
			say "[Eric_StorageMenu]";
		else: [don't pay]
			LineBreak;
			say "     As you tell the goo person that you've changed your mind about this for now, he gives you an understanding nod smoothly skips tracks from waiting for the payment. 'Any time you want to get him some gear, just let me know. The deal includes putting up some attachment points on the ceiling and walls, by the way.' There is no need to say anything in reply, leaving you free to wonder what you want to do next...";
			say "[Eric_StorageMenu]";

[
[if Sluttyness entry is 1] [else] [end if]
]

to say Eric_RestraintTrain: [Note: Adjust for Sluttyness 2 when available]
	choose a row with name of "Eric" in the Table of StoredSluts;
	say "[EricStorageEntry]";
	say "     With a smile on your face, you stroll over to the metal locker bolted to the concrete wall in the corner, digging its key out of your pocket. As you unlock and open it, you can hear Eric say, [if Sluttyness entry is 1]'Oh no. Not that again!' [else]'This shit again? Ugh!' [end if]Glancing over your shoulder you can see that he's gotten up on his feet and walked about as far away from you as he can, in the secure storage unit that is now his prison. Unruly huddling against the far wall, his gaze not so stealthily flicking to the handle of the sliding door multiple times. He appears ready to run, [if Sluttyness entry is 1]but can't push himself to try out of fear. [else]but seems to know better than to try. [end if] After all, he'd just run into Mortimer out there - one or another of the businessman's many duplicates won't be far away at any given moment. Raising one hand to your mouth to give a sharp whistle, you order the former student to come to you, which draws [if Sluttyness entry is 1]his fear-filled gaze. 'W-what are you going to do to me?' he asks in a trembling voice. [else]an eye-roll from him. 'Up to your games again?' he spits in annoyance. [end if][line break]";
	WaitLineBreak;
	project figure of Eric_Naked_hostile_icon;
	say "     Chuckling, you reply that he shouldn't worry about that, all he needs to do is obey. The non-answer [if Sluttyness entry is 1]seems to root him to the spot, even more afraid of what may come next, which is a fitting result, just not what you wanted right now. [else]draws an act of defiance from him, as he stomps one foot almost like a kid in a tantrum, and refuses to move an inch. [end if]Picking up one of the spreader bars, a black-lacquered metal rod, you smack its length into the open palm of your other hand with an audible sound, laying on another level of threat. Using the rod like a scepter, you then you point at the floor next to you, calling out a sharp demand for Eric to get going, right now. He does come, [if Sluttyness entry is 1]skittishly like a doe wandering into the cave of a wolf. [else]after muttering, 'Bastard,' under his breath, then glowering silently all the way as he walks closer. [end if]Soon he stands beside you, biting his lip in nervous tension. You stroke over his ginger-hair possessively, feeling its pleasant softness, kinda like Eric himself being soft and pliable. Then you brush your thumb over those soft lips, gazing into his eyes. [if Sluttyness entry is 1]'I can-' [else]'Don't -' [end if] he starts before you shush him, lowering your hands to grab hold of his t-shirt and impatiently wrenching it up, baring his slender chest and the small, boyish nipples on his relatively flat pecs. As you fling it aside, you order that Eric hold out his hands.";
	say "     Swallowing visibly, he raises his right hand, then the left, helplessly watching as you slip the wrist-cuffs on and fasten them firmly, but not too tight. Commanding that he kick off his shoes and socks, you turn back to the locker and grab the next pair of cuffs, then push them against Eric's naked chest and tell him to put them on. Kneeling down, he does as he is told, though you do have to watch him closely and give an admonishing reminder to tighten them properly. He is still bent down as you tap his shoulder with the spreader bar, then demand his raise his arms so you can lock them together with it. Pointing your cuntboy to the steel ring installed on the ceiling and the chains dangling from it, you give him a little push between his shoulder-blades to start moving over to it. As he gets going, you pick up the second spreader bar, ball gag and finally the black panties, only skipping the harness this time, before you follow him.";
	WaitLineBreak;
	say "     [if Sluttyness entry is 1]'This is some kinky stuff you're into,' he says, his voice trembling a little with the fear of what might come in the future and giving a concerned [else]'The are stupid games you play, you pervert. I hate them!' he says, his voice full of contempt while he gives a [end if]look over his shoulder, with you chuckling darkly in response. Arriving at the bondage spot, you hook both ends of the spreader bar on his wrists to the chains dangling down, finding them just long enough to hold Eric as he stands on tiptoe. Stepping back, you enjoy the image of your strung-up sex slave for a moment, strolling in a circle around him to inspect all angles. Then suddenly, as your circuit brings you behind him once again, you grab hold of his shorts, and briefs, yanking them down together in a quick, unannounced movement. Even though Eric knew something like this would come eventually, it's still charming that the sudden nakedness draws a shout of, [if Sluttyness entry is 1]'Hey! No... please, please just give me my pants back!' [else]'Hey! Don't be so rough, asshole!' Despite his fighting words, you sense at least a little reluctant arousal present in him. [end if]Groping one pale-skinned buttock with your hand, you reply that he's just how you want him now, or almost, at least.";
	say "     Taking out the small ball of soft fabric that is the pair of panties, you let them dangle from one finger, then push your arm around Eric so he can see the frilly garment. [if Sluttyness entry is 1]'I - I don't want to wear that!' [else]'Keep that stupid thing away from me!' [end if]he calls out, pulling his leg away as you slide a hand down his thigh to then slip the panties over it. [if Sluttyness entry is 1]'Please, no! I'm a guy!' [else]'Stupid much, pervert? I'm a guy!' [end if] he protests, trying to retain what little of his former self and dignity that he can. Grunting amusedly about where he draws his lines, you move your hand to his crotch, tracing a fingertip lightly over his delicate nether lips and clit, and comment that he's looking more like a pretty cute femboy rather than a guy, down there. Then you fling the panties onto the floor in front of Eric (for now), and quickly get his legs hooked to the second spreader bar, then chaining it to the floor ring. The ball gag comes next, slipping it around his neck loosely at first, then having do dig your fingers in against his cheeks a little bit to compel him to open his mouth for the rubber ball to slip between his lips.";
	WaitLineBreak;
	say "     Now that he's well-secured, you use the opportunity to play a little with your strung-up cuntboy, feeling every flat stretch and smooth curve of his body, pinching his peach-colored nipples and even tickling him under the arms, forcing Eric to huff hasty breaths through his nose as he can't help but laugh until tears run down from his eyes. Yet for all the fun that you have, and you do have a lot as you take your time, there's still the matter of his disobedience with the panties to address... Picking them up and holding the black piece of fabric up before Eric, you casually ask if he thinks that frilly panties aren't for him [if Sluttyness entry is 1](he nods) [else](he glares silently) [end if], and if he's a strong guy who doesn't need soft things [if Sluttyness entry is 1](another nod) [else](a glare, again) [end if]. Stepping closer, with a superior grin spreading over your face, you inform him that none of that matters one bit - if you want panties on him, he's going to be in panties. And with that, you slip them over his head, hooking the straps under his ears so that the fabric that would rest on the crotch is right across his face.";
	LineBreak;
	say "     [bold type]There, that'll put things right and establish that what you say will happen. Still need some punishment for the disobedience though...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - A spanking might be just the thing, if he doesn't want 'soft' things on his ass.";
	say "     ([link]N[as]n[end link]) - Leave him like this, and tell Mortimer to take him down in a bit, but don't feed him today.";
	if Player consents:
		LineBreak;
		say "     Saying in a mocking tone that he totally looks like a 'guy' right now, with panties on his head and his pussy out for all to see, you reach out and boop his nose through the silky fabric covering it. Then you follow up by saying that if he's such a tough guy, he won't mind getting his punishment for resisting, will he? [if Sluttyness entry is 1]As Eric's eyes go wide and he tries to say something[else]As Eric's brows scrunch together in frustration and he shouts muffled words [end if]through the gag while shaking his head, you move behind him, then give him a mid-strength, stinging slap on the right buttock that makes him let out a muffled scream as he bucks in his restraints. Given how pale-white his skin is above the tan-line that marks the normal length of his jogging shorts, the resulting red handprint is a thing of beauty, very vibrant and angry-looking. You give him a companion-piece on the other buttock, maybe even a little more solid in your second blow, then layer a number of further slaps on the cuntboy's ass, lighter but still stinging as they hit his already sensitive skin. In between the slaps, you put in a little bit more groping, sliding your hand around his hips to stroke over his pussy.";
		say "     [if Sluttyness entry is 1]While flicking the sensitive clit very lightly with a fingertip while saying that he could be feeling so much better now, if he only obeyed you earlier. He is fairly dry, too afraid to have any sexual thoughts right now, but even so the stimulation you're giving has an effect, as his body reacts despite what the cuntboy may think in the moment. [else]There is a noticeable amount of moisture under your questing fingers, as the cuntboy can't help but react to your stimulation as he remembers what you did before with him. With a laugh, you comment that he's actually enjoying himself, which has Eric flushing red, his ears almost glowing as he grumbles into the gag. [end if]Winding down at some point a little while later, you move to Eric's front again, patting his cheek and telling him to remember this lesson. Then you grin and tell him that Mortimer will [italic type]eventually[roman type] come and take him down. Eyes widening in [if Sluttyness entry is 1]shock [else]indignation [end if]that you'll leave him hanging like this, Eric appears [if Sluttyness entry is 1]to want to plead, [else]angry enough to hiss and spit, [end if] which is pretty hopeless with a gag in. With a last pat against his side, you then walk over to the sliding door and grab its handle to pull up. Giving your chastened cuntboy a last look over your shoulder, you see him trussed up and standing on tip-toe, with his ass showing a nice reddish-pink.";
		WaitLineBreak;
		say "     You step outside and shove the door down until you can hear it latch. Mortimer isn't far from your unit, busying himself with some maintenance work, though you couldn't tell if this is the same one that brought you here or not. Doesn't seem to matter much in any case, as he gives you his trademark slimy smile and a thumbs-up as you tell him to take Eric down in an hour or so, when it may be convenient for him. This is intentionally loud enough for your captive to hear through the door, making true of your threat. Mortimer laughs and nods, then produces a keyring and locks the door securely. Guiding you back to the entrance of the complex, where another Mortimer is waiting for customers, he lets you out and wishes you a great day.";
	else:
		LineBreak;
		say "     Stepping up close to Eric's front and meeting his eyes, you proclaim that if he's such a tough guy, he doesn't need to eat today either. And he can stay right where he is for a while. Mortimer will [italic type]eventually[roman type] come and take him down. Eyes widening in [if Sluttyness entry is 1]shock [else]indignation [end if]that you'll leave him hanging like this, Eric appears [if Sluttyness entry is 1]to want to plead, [else]angry enough to hiss and spit, [end if]which is pretty hopeless with a gag in. With a last pat against his side, you then walk over to the sliding door and grab its handle to pull up. Giving your chastened cuntboy a last look over your shoulder, trussed up and standing on tip-toe, you step outside and shove the door down until you can hear it latch. Mortimer isn't far from your unit, busying himself with some maintenance work, though you couldn't tell if this is the same one that brought you here or not. Doesn't seem to matter much in any case, as he gives you his trademark slimy smile and a thumbs-up as you tell him to take Eric down in an hour or so, when it may be convenient for him. This is intentionally loud enough for your captive to hear through the door, making true of your threat. Mortimer laughs and nods, then produces a keyring and locks the door securely. Guiding you back to the entrance of the complex, where another Mortimer is waiting for customers, he lets you out and wishes you a great day.";

to say EricStorageEntry:
	choose a row with name of "Eric" in the Table of StoredSluts;
	say "     Stepping into the storage unit after Mortimer unlocks it, then pulling the door back down after you're in, you find Eric ";
	if Sluttyness entry is 1: [unwilling - fear]
		say "sitting on the edge of his mattress, [one of]unenthusiastically watching the small, portable TV that is one of the few sources of distraction he has. Looks like it's on a loop of various porn flicks, and you catch your captive mid-eyeroll as he endures yet another cheesy 'storyline' to go with the sex. [or]unenthusiastically paging through a porn magazine, a rare piece of 'literature' Mortimer must have given him for good behavior. You catch him as he's just moving his hand to cover a page-filling naked man with one hand as he tries to focus on one of the articles. [or]having a sparse meal with the food and drink that he's been getting in here. While not exactly plentiful, it nevertheless looks like Mortimer is keeping your boy properly fed. [or]bouncing a small rubber ball off the wall, floor and then catching it again. Looks like Mortimer gave it to him for good behavior. [at random]Glancing up to look, the former student looks startled and says, 'What do you want?!' Being a captive in this bare, concrete room, on top of everything else you've already done to him, doesn't seem to have helped his disposition towards you. [one of]'Please let me go! I - I won't tell anyone about, you know, if you just let me out. Please!' he pleads, [or]'You could earn some money, if you let me go! I've got a college fund, and m-my family would add more to see me released!' he pleads with tears in his eyes, [at random]which draws little but a wordless chuckle from you. Seeing the hungry gaze that you give him, feasting your eyes on his body with a grin on your face, he shrinks back in fear.";
	else if Sluttyness entry is 2: [resistant - anger]
		['Oh, it's you.']
		[[or]turned away from the front of the storage unit, letting out a low moan. Seems you've caught him with his hand pushed down the front of his shorts, busy with one of the few sources of distraction that he has. As he hears you enter, the cuntboy quickly wrenches his fingers away from that they've been doing. ]
		[[or]'Do you really think a place like this won't be found out, in the middle of the city? This whole weird situation with the infection or whatever will be dealt with soon, then people will come for me, and you'll be punished! Just let me go now to avoid that,' he says in a try to move you with that toothless threat, ]
		say "...";
	else if Sluttyness entry is 3: [used to being used - acceptance]
		say "...";

to say EricStorageSex1: [cock sucked by Eric]
	choose a row with name of "Eric" in the Table of StoredSluts;
	say "[EricStorageEntry]";
	if Sluttyness entry is 1: [unwilling]
		say "     Stepping up to the cowering cuntboy, [if Player is not naked]dropping your clothes on the ground along the way and [end if]stroking your quickly rising manhood as you do, you tell him in no uncertain terms that he'll take your [cock of Player] cock in his mouth, one way or another. [one of]'Hell no, get that thing away from me! I'm not gay!' he protests, [or]'I - I'll be sick if you stick that in my mouth! I don't want to have any dicks in my mouth!' he protests, [at random]then futilely tries to duck his head as you reach to grab hold of his hair. Giving a sharp tug that draws a hiss of pain from his lips, you gruffly say that he better not even think about biting or any other displeasing acts, as that would go [italic type]really[roman type] badly for him. Pinching his lips together, even as he gives a little nod to show he understood, Eric's eyes go wide as you move your hard cock comes closer and closer to his face. He tries to turn his head away, prompting you to clamp down hard on it to keep him steady.";
		WaitLineBreak;
		say "     As Eric's lips remain firmly closed, you rub your dickhead over them, leaving a trail of wetness with a first little bit of precum showing your eagerness to use him. You can see his nose wrinkling in displeasure at the scent of your pre, so you play a little more like this, smacking the tip of his nose with the head, then rubbing up against his face and mouth. Though as much fun as this might be, you've got other plans, so the next thing you do is pinch his nose shut firmly with two fingers. Eric's face goes a little red, then a lot, as he fights to keep his mouth closed, but soon the need for air cannot be denied anymore and he bursts out with a gasp, mouth opening wide to take a heave and refill his lungs. Not that he doesn't get all that much time for that, as the second breath brings your erection with it, pushing deep into his oral cavity. As Eric reflexively gags around the unwanted intruder, you give him another dire warning to not displease you.";
		say "     Even though you do have him sufficiently cowed to cooperate in theory, it isn't like Eric is all that good at giving blowjobs. He's not got any previous experience as he said he isn't gay, though that won't matter much in the long run, given that he'll have do what you want from now on, no matter what. The face-fucking is a little jarring right now, between him still needing to gulp more air, his untrained gag reflex, and brushes of his teeth against the sides of your cock. Of course, the latter two earn him speedy admonition and slaps to the face, which adds to the reddish blush of shame he already is showing. You don't particularly care that he's bad at oral sex, as what's getting you extra aroused right now is the sense of power you hold over him, and you'll have lots of time in the future to mold your little cuntboy into a perfect little cocksleeve... as part of his ongoing training, you anticipate a moment in which he has to swallow and ram yourself deeper in, popping your hard length into his throat and stretching it around your girth. His eyes go wide in shock at the sensation, with unintelligible humming coming from his throat as he looks up in fright.";
		WaitLineBreak;
		say "     Reveling in having a captive sex slave, you grab his head tightly with both your hands and really lay into face-fucking him. Pulling his mouth deeper onto your shaft, there is a moment or two in which he gags for air, and not even your earlier threats are enough to keep his hands from shooting up to push against your hips, trying to push them away so he can breathe. This draws a dark chuckle from you, and you remind him that he's yours, and you can do anything you want - even decide if and when he breathes. Fear rises in his eyes as he starts to worry, and you let that build for another moment before pulling his face off your schlong with a wet slurp and plentiful drool oozing over his chin, allowing him a breath or two before you slide yourself back inside. By now, any thought of resistance is gone from Eric and he just takes it, though you've got little doubt that he'll spring back to his usual self quickly, given some recovery time. It'll take more to start breaking him.";
		say "     You enjoy the sensation of hammering into a warm mouth, feeling soft lips slide along your length and pressing against your crotch as you bottom out. Eric'll have to learn some techniques to improve your pleasure in the future, but for now, he'll do just fine to get you off like this, receiving your shaft in an unrelenting barrage of thrusts that gets faster and faster while your grunts and moans fill the storage unit. Going all out, it doesn't take much longer until your balls tighten and you grind Eric's face into your crotch extra hard, followed by the first heavy throb of your shaft as semen rockets through it. The desire is great to just stay like this and dump your whole load down his throat, but you tell yourself that you shouldn't waste the training opportunity and pull back a little. This puts your cum-spewing dickhead on his tongue, painting it and the back of his throat in thick and creamy sperm. There is a little bit of a choking sound from him as he feels your spurts and gags, only to be distracted from that by another slap to the face.";
		WaitLineBreak;
		say "     After unloading your balls into Eric's mouth, you withdraw your now softening cock from between his lips, which is immediately followed by him making a face as he seems to be planning to spit your load out right away. Moving his tongue around to push your cum together for expulsion, Eric seems to have forgotten that you're still holding his head clamped between your hands, and you don't let him move. Eyes turning up to look at you, he gets a little pale as you smile, then move one hand to clamp it over his lips and order him to swallow. You can see from the clench of his jaw that he wrestles with himself for a moment, then finally gives in, choking down the unwanted snack. You keep him in your grip for a moment longer, looking deep in Eric's eyes, then finally let go and demand he open up and show you his tongue, just to prove that he wouldn't be able to trick you even if he tried (he didn't, in this instance).";
		say "     Satisfied (for now), you give Eric a head-pat and praise him like a dog, then collect your stuff, walk over to the sliding door and grab its handle to pull up. Giving your used cuntboy a last look over your shoulder, with him slumping dejectedly on the mattress, you step outside and shove the door down until you can hear it latch. Mortimer isn't far from your unit, busying himself with some maintenance work, though you couldn't tell if this is the same one that brought you here or not. Doesn't seem to matter much in any case, as he gives you his trademark slimy smile and a thumbs-up as you loudly say that Eric's been rather messy in servicing you, with him not able to get enough and drooling all over himself. This is intentionally loud enough for your captive to hear through the door, upping his shame and discomfort as Mortimer laughingly replies, 'I'll be sure to give your slut a wipe-down with a towel when I check on him next.' Then he produces a keyring and locks the door securely. Guiding you back to the entrance of the complex, where another Mortimer is waiting for customers, he lets you out and wishes you a great day.";
	else if Sluttyness entry is 2: [resistant]
		[[or]'Can we not do this, please? I - I'll jerk you off instead, okay?' he offers, ]
		say "...";
	else if Sluttyness entry is 3: [used to being used]
		say "...";
	increase SexCount entry by 1;
	NPCSexAftermath Eric receives "OralCock" from Player;

to say EricStorageSex2: [cunt licked by Eric]
	choose a row with name of "Eric" in the Table of StoredSluts;
	say "[EricStorageEntry]";
	if Sluttyness entry is 1: [unwilling]
		say "     Stepping up to the cowering cuntboy, [if Player is not naked]dropping your clothes on the ground along the way and [end if]stroking over your clit as you do, you tell him in no uncertain terms that he'll please you with his mouth, one way or another. [one of]'Hell no, get that away from me! I'm not gay, but I don't want to go down on you either!' he protests, [or]'I - even touching you after what you did to me makes me a little sick. You wouldn't want me to throw my cookies all over you, would you?!' he begs, [at random]then futilely tries to duck his head as you reach to grab hold of his hair. Giving a sharp tug that draws a hiss of pain from his lips, you gruffly say that he better not even think about biting or any other displeasing acts, as that would go [italic type]really[roman type] badly for him. Pinching his lips together, even as he gives a little nod to show he understood, Eric's eyes go wide as you push his head closer and closer to your crotch. He tries to turn his head away, prompting you to clamp down hard on it to keep him steady.";
		WaitLineBreak;
		say "     As Eric's lips remain firmly closed, you rub your folds right in his face, basically sliding them over the bump his nose, putting it right in there and making him huff your pussy. Your touch leaves a slight sheen of wetness behind, as you're starting to get aroused in sheer anticipation. Apparently used enough to going down on pussy from his relationship with Stacy (before she turned into a big-dicked, hulking cheerleader), the wrinkled nose and displeased expression you can see on Eric's face seems more caused by the indignity of being used like this. For a little while, just rubbing up against him is pleasant enough, but soon you want more. A demand for him to stick out his tongue isn't followed, so you escalate by basically grinding his nostrils into your folds, blocking air from going in that way. Eric's face goes a little red, then a lot, as he fights to keep his mouth closed, but soon the need for air cannot be denied anymore and he bursts out with a gasp, mouth opening wide to take a heave and refill his lungs.";
		say "     Unimpressed by his desperate wheezing for air, you casually lay out that you can do this all day, unless he decides to stop forcing you to punish him. A little bit of tongue-wiggling would be easier, surely? Closing his mouth, he looks up defiantly, which you answer with a cool look, then begin to move your crotch forward once more. You're almost touching his nose before he squeezes out the word 'Fine' between his lips, looking a bit as if he's chewing on a nail. Patting his head and praising him like a lapdog, you then add another dire warning to not displease you. With you having sufficiently cowed your captive cuntboy, he actually starts to go through the right motions, sticking out his tongue to run it along your nether lips, then flicking it over your clit, and again and again. In an amused tone, you comment that Stacy, or someone else, actually did a fairly nice job of training him up. Eric blushes as he hears your words, pausing for a second as if he wanted to reply, only to go back to work as you order him to. Keeping up the steady, rhythmic lapping at your clit, he brings his fingers into play too, slipping into your opening and feeling around for your g-spot.";
		WaitLineBreak;
		say "     The young man is fairly talented giving oral pleasure, and you rock your hips forward against his face every minute of him winding you up more and more. Then all too soon, the constant stimulation pushes you over the edge and you orgasm, gushing fluids over his face as you let out loud moans and your legs tremble. While still riding the high of climax, you can feel a tug on your hand, as Eric tries to pull away - only to be stopped by you renewing your grip on his hair. There is a little bit of a shocked expression on his face - seems that he had planned to just get you off quickly since he couldn't deflect your advances, to get it over with. But of course, his opinion doesn't matter one bit, as why would you get a sex slave to then rush while enjoying him? Instead, you push Eric's face right back against your crotch, ordering him to keep going. With a barely suppressed groan, he does as you demand, finding his duty far longer than he thought.";
		say "     Amused at breaking Eric's expectations and reveling in having the power to make him obey, you push for him to keep going with his talented tongue. Relentlessly demanding more, you let him carry you up another incline of lust, building up to the foaming wave of yet another orgasm until it finally breaks, rocking your world and this time fairly drenching your captive in your fluids. He whines, 'I'm tired, let me rest,' as you order another go, prompting you to slap his face and tell him that you're the one who'll decide what he does, and when he does it. And with that, you make him start up again, needling him along not so much because you can't live without a third orgasm in a row, but more because the high of forcing someone into obedience. Only after this third climax do you then relent, letting go of Eric's hair and allowing him to slump back on the mattress.";
		WaitLineBreak;
		say "     Satisfied (for now), you give Eric a head-pat and praise him like a dog, then collect your stuff, walk over to the sliding door and grab its handle to pull up. Giving your used cuntboy a last look over your shoulder, with him lying dejectedly on the mattress, you step outside and shove the door down until you can hear it latch. Mortimer isn't far from your unit, busying himself with some maintenance work, though you couldn't tell if this is the same one that brought you here or not. Doesn't seem to matter much in any case, as he gives you his trademark slimy smile and a thumbs-up, then produces a keyring and locks the door securely. Guiding you back to the entrance of the complex, where another Mortimer is waiting for customers, he lets you out and wishes you a great day.";
	else if Sluttyness entry is 2: [resistant]
		['I know my way around a pussy, but not for a bitch like you!' he throws back, [or]'Can we not do this, please? I - I'll stroke you with my hands instead, okay?' he offers, [or]]
		say "...";
	else if Sluttyness entry is 3: [used to being used]
		say "...";
	increase SexCount entry by 1;
	NPCSexAftermath Eric receives "OralPussy" from Player;

to say EricStorageSex3: [Eric's cunt licked/fingered]
	[Notes: put in multiple orgasms; very high sensitivity for him]
	choose a row with name of "Eric" in the Table of StoredSluts;
	if Sluttyness entry is 1: [unwilling]
		say "     Deciding your cuntboy needs a bit of help accepting his womanhood, you pull him along to the bed and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bed on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips. Looks like your cuntboy is about ready... Kneeling down, you give him a lick and taste his juices, then really go to town on him - licking and fondling his female bits until he's panting and squirming in arousal, his hands grabbing the sheets tightly. You keep going for quite a bit until suddenly he gives a lustful scream and orgasms, dripping femcum from his spread pussy. You sit beside him on the camp bed, fondling his lithe body as he rides out the sexual high. When he finally comes down to normal a while later, he says 'Damn, it shouldn't feel so good when you use me like this. I can't believe I came like that.'";
	else if Sluttyness entry is 2: [resistant]
		say "...";
	else if Sluttyness entry is 3: [used to being used]
		say "...";
	increase SexCount entry by 1;
	NPCSexAftermath Player receives "OralPussy" from Eric;

to say EricStorageSex4: [Eric's pussy fucked by player]
	[Note: add choice point where you want to shoot your load]
	choose a row with name of "Eric" in the Table of StoredSluts;
	if Sluttyness entry is 1: [unwilling]
		say "     Deciding it's time to fuck your cuntboy, you pull him along to the bed and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bed on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips. Looks like your cuntboy is about ready to be used... Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that inviting pussy open to you. A thought of going slow quickly evaporates before your boiling lust and you aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly spreads his pussy lips. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start going in and out, rubbing against his inner walls.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then rest a moment on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed side by side, your softening erection still inside him. Eric murmurs to himself 'I can't believe how much this gets me off. Three times he's made me cum and filled me. What does he want to do - use me as a breeding bitch?' before dozing off. Not a bad idea, you think for yourself before sleep claims you too.";
	else if Sluttyness entry is 2: [resistant]
		say "...";
	else if Sluttyness entry is 3: [used to being used]
		say "...";
	increase SexCount entry by 1;
	NPCSexAftermath Eric receives "PussyFuck" from Player;

to say EricStorageSex5: [fucking Eric's ass]
	choose a row with name of "Eric" in the Table of StoredSluts;
	if Sluttyness entry is 1: [unwilling]
		say "     Deciding it's time to fuck your cuntboy, you pull him along to the bed and fondle his body, playing with his sensitive nipples. Then you push him backwards so he falls down onto the bed on his back and tell him to spread his legs. Between them, his pussy comes into sight, moisture glistening between its swollen lips - and below, a tight pucker winks invitingly at you. Looks like your cuntboy is about ready to be used... Quickly stripping off your own clothing, you climb on the bed with him and kneel between his spread legs. He just looks so delicious, lying before you with his athletic body and that tight ass ready for you. A thought of going slow quickly evaporates before your boiling lust and you aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly pops through his pucker and invades his asshole. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start going in and out, rubbing against his inner walls.";
		say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside him and fill his ass with your seed, then rest a moment on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - you come to lie on the bed side by side, your softening erection still inside him. Eric murmurs to himself 'I can't believe how much this gets me off. Three times he's made me cum.' before dozing off. You grind your hips against his one last time, then fall asleep yourself soon afterwards.";
	else if Sluttyness entry is 2: [resistant]
		say "...";
	else if Sluttyness entry is 3: [used to being used]
		say "...";
	increase SexCount entry by 1;
	NPCSexAftermath Eric receives "AssFuck" from Player;

to say EricStorageSex6: [threesome with Felinoid+Eric]
	choose a row with name of "Eric" in the Table of StoredSluts;
	if Sluttyness entry is 1: [resistant]
		say "...";
	else if Sluttyness entry is 2: [starting to get used to it]
		say "...";
	else if Sluttyness entry is 3: [used to being used]
		say "...";
	say "     Moving a hand down to Eric's crotch, you stroke your fingers over his sensitive pussy lips, making him moan before he can stop himself. Pushing two fingers inside, you fondle him a bit. Soon Eric is panting in lust, his female parts ready and dripping. Then... you just stop. Pushing aside his hand trying to touch his pussy softly, but firmly, you leave him wait for a moment, a pleading look in his eyes. Good, that should do it. Running a finger along Eric's jawline, you turn his head a bit so he looks towards the far side of the room. There, Klauz is lounging on his side on one of the unused beds, his golden eyes opening from time to time to look around, then closing again as he goes back to dozing peacefully. Whispering to Eric to go offer himself to him, you step back to watch. There's a moment of hesitation with Eric biting his lip, then the need to get fucked wins out inside him and he quietly walks over to where the felinoid is lying.";
	say "     He starts rubbing the big cat's belly fur, which quickly is answered by a resounding purr from the big beast. Then he slowly moves one of his stroking hands lower and lower until he reaches Klauz's crotch and cups the feline's furry balls, gently massaging them. Coming fully awake now, the large cat raises his head and looks down on Eric, then sniffs the air (no doubt full of the scent of the little slut's dripping pussy) and gives a pleased growl. Lying down on the bed beside the one Klauz is on, Eric spreads his legs and fingers his own pussy, readying himself for what will come next. Starting to purr with a very satisfied note, the great cat rises from his perch and moves closer to the human cuntboy with feline grace. He lowers his large head to Eric's crotch and gives it a good sniff, then laps at it several times before moving further up on top of him. Lowering his hips and doing small probing thrusts, the felinoid soon finds the opening of Eric's moist and ready pussy and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking him with powerful and deep thrusts. Moans, pants and growls of lust fill the bunker and you move a bit closer to get a better view.";
	LineBreak;
	say "     Getting pretty aroused after a while of watching your two companions go at it, you decide it's time to join in.";
	increase SexCount entry by 1;
	if Player is male:
		say "[EricSex13_99_Male]";
	else:
		say "[EricSex13_99_Female]";

to say EricSex13_99_Male: [sex slave Eric]
	say "     Moving into position behind Klauz, you run your hands through the soft fur on his lower back, then aim your erection at the tight hole under his tail. Grabbing the big cat's hips tightly, you slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Eric for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostate, and soon your big cat is purring in satisfaction and fucking your cuntboy slut again.";
	WaitLineBreak;
	say "     True to form for a cock-hungry cuntboy bitch, Eric is the first to cum, writhing under Klauz as he gushes femcum to soak into the mattress between his legs. The human's pussy twitching around your feline companion's spined shaft is enough to take him over the edge right with him, making the felinoid roar in satisfaction as he blasts his fertile load into the cuntboy's womb. Eager to join the two of them in their release, you speed up your own thrusts into Klauz's ass, slamming into him hard again and again until you soon climax, filling his butt with your cum.";
	say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch the felinoid's pink pucker snap shut before any of your seed can leak out. The big cat pulls out of Eric and gives his freshly bred pussy a sniff, then throws himself on top of the bed with him, coming to lie on his side with the cuntboy held against his belly with both front legs. Looks like he's trying to claim the little slut as his own now.";
	NPCSexAftermath Eric receives "PussyFuck" from Klauz;
	NPCSexAftermath Klauz receives "AssFuck" from Player;

to say EricSex13_99_Female: [sex slave Eric]
	say "     Stepping up to stand against the head end of the bed, you give Klauz's chin an affectionate scratch, then spread your pussy lips and start rubbing yourself right in front of him. His long whiskers tickle against your legs as the large cat nuzzles upwards into your groin, sniffing your moist and ready pussy. Then he starts to lick you, his rough tongue carefully lapping over sensitive flesh and seeking out your clit.";
	WaitLineBreak;
	say "     While you're getting some oral attention, Eric is fucked hard and deep by the felinoid, and true to form for a cock-hungry cuntboy bitch, the young athlete is the first to cum. Writhing under Klauz as he gushes femcum to soak into the mattress between his legs, the human gasps and pants loudly, his hands rubbing the big cat's belly. The wet pussy twitching around your feline companion's spined shaft is enough to take him over the edge right with Eric, making the felinoid roar in satisfaction as he blasts his fertile load into the cuntboy's womb. Eager to join the two of them in their release, you put your fingers to work on your pussy in earnest. It's not much longer before your frantic movements push you over the edge and you come, a squirt of femcum hitting Klauz's muzzle and more of it dripping down on the mattress of the bed. The big cat gives a pleased rumble, licking it off his muzzle and lapping at your crotch a few times to get a bit more of a taste.";
	NPCSexAftermath Eric receives "PussyFuck" from Klauz;
	NPCSexAftermath Klauz receives "OralPussy" from Player;


Section 4 - Events

[
instead of navigating Grey Abbey Library while (level of Eric is 0 and Felinoid Companion is tamed and (HP of Eric is 10 or HP of Eric is 11 or HP of Eric is 13 or HP of Eric is 15 or HP of Eric is 22 or HP of Eric is 32 or HP of Eric is 99) and Eric is not slutstored and (lastfuck of Eric - turns) > 12):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: ERIC FIRST FELINOID SEX WALKIN [line break]";
	if HP of Eric is 10 or HP of Eric is 11 or HP of Eric is 13 or HP of Eric is 15 or HP of Eric is 22 or HP of Eric is 32: [had sex with the player or cboy virgin]
		project the Figure of Eric_TShirt_neutral_icon;
		say "     As you enter the library, you see Eric walk in between two of the long shelves, intently scanning over the titles of the books. Now that you think of it, he's been spending quite a bit of his time up here lately, picking out books and reading. Well, it's something interesting to do at least. Just as you start turning away to leave him to his reading, you see the large shape Klauz silently stalk after Eric. Knowing the large cat's libido-driven behavior, you see where this might lead...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go after them - to intervene, or watch.";
		say "     ([link]N[as]n[end link]) - Leave them to it and turn to other things.";
		if Player consents: [follow]
			LineBreak;
			say "     Walking into the same space between the bookshelves that you saw your two companions go into, you spot Eric some distance ahead of you, still checking out books and being totally oblivious to the felinoid stalking him. Then the large cat catches up with him, rubbing his flank against the human athlete's hips and making a resounding purring sound in his throat. Eric is easily taken in by Klauz's affectionate behavior, petting the large creature as he circles him, rubbing up against Eric's body and flirting his long tail in front of the human's face.";
			say "     Soon Eric crouches down, his hands busy rubbing the felinoid's belly fur and behind his ears in something of a trance. He brushes his cheek against the large cat's soft fur and breathes in deep, now completely succumbing to his pheromone-laden scent. A low and throaty sound comes from Klauz, almost a feline chuckle, then he bumps Eric with his shoulder, making him fall forward on all fours.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Watch Klauz mount Eric.";
			say "     ([link]N[as]n[end link]) - Step in and snap Eric out of the trance.";
			if Player consents:
				LineBreak;
				if HP of Eric is 10: [virgin]
					project the Figure of Eric_Naked_shocked_icon;
					say "     With the young athlete just dazedly resting on all fours, Klauz uses large paws to pat at his pants, soon managing to hook a paw behind the shorts belt-line and pulling it down, revealing that Eric went commando today. The large cat gives his entranced human a deep sniff, then starts to lick between the legs, lapping away at Eric's open pussy lips. After a moment of making the cuntboy pant and moan, the felinoid then gives him a lick over the small of his back before finally moving to stand completely over the smaller human, nuzzling at his neck while bumping against his butt with a hard and erect spined cock.";
					say "     Lowering his hips and doing small probing thrusts, Klauz soon finds the opening of Eric's moist and ready pussy and plunges in. With a satisfied roar, he sinks all of his manhood inside, drawing a pained whimper from Eric as his virginity is taken - and by a large feral cat too. Balls-deep inside the smaller human, the felinoid holds still for a long moment and shows his affection for his newest conquest by purring and lapping at Eric's upper back and neck. Then he continues with his fun and starts fucking him with powerful and deep thrusts. Moans, pants and growls of lust fill the library and you move a bit closer to get a better view.";
					WaitLineBreak;
					project the Figure of Eric_Naked_neutral_icon;
					say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing his orgasm to anyone in hearing range. Visibly satisfied in making him come, Klauz isn't far behind, burying his hard cock all the way in the young human's pussy and holding still, only his balls pulsing as they fill Eric's womb with his potent seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
					now EricVirginityTaken is 3; [the felinoid took his virginity and knocked Eric up]
					NPCSexAftermath Eric receives "PussyFuck" from Klauz;
					now HP of Eric is 14;
				else if HP of Eric is 11 or HP of Eric is 12 or HP of Eric is 13 or HP of Eric is 14 or HP of Eric is 15: [had sex before]
					project the Figure of Eric_Naked_neutral_icon;
					say "     With the young athlete just dazedly resting on all fours, Klauz uses large paws to pat at his pants, soon managing to hook a paw under the shorts band and pull it down, revealing that Eric went commando today. The large cat gives his entranced human a deep sniff, then starts to lick between the legs, lapping away at Eric's open pussy lips. After a moment of making the cuntboy pant and moan, the felinoid then gives him a lick over the small of his back before finally moving to stand completely over the smaller human, nuzzling at his neck while bumping against his butt with a hard and erect spined cock.";
					say "     Lowering his hips and doing small probing thrusts, Klauz soon finds the opening of Eric's moist and ready pussy and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking him with powerful and deep thrusts. Moans, pants and growls of lust fill the library and you move a bit closer to get a better view.";
					WaitLineBreak;
					say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, Klauz drives his cock into Eric's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing his orgasm to anyone in hearing range. Visibly satisfied in making him come, the felinoid isn't far behind, burying his hard cock all the way in the young human's pussy and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
					NPCSexAftermath Eric receives "PussyFuck" from Klauz;
				else if HP of Eric is 22:
					project the Figure of Eric_NakedHorseHard_happy_icon;
					say "     With the young athlete just dazedly resting on all fours, Klauz uses large paws to pat at his pants, soon managing to hook a paw under the shorts band and pull it down, revealing that Eric went commando today. The large cat gives his entranced human a deep sniff, then starts to lick between the legs, lapping away at Eric's big equine balls. After a moment of making the young man pant and moan, the felinoid then moves on to lick over his pucker for a while before finally moving to stand completely over the smaller human, nuzzling at his neck while bumping against his butt with a hard and erect spined cock.";
					say "     Lowering his hips slightly and doing small probing thrusts, Klauz soon locates Eric's pucker and presses in against it, entering without much problem as the human is pretty relaxed all over in his trance. With a satisfied roar, he sinks all of his manhood inside, then starts fucking Eric with powerful and deep thrusts. Moans, pants and growls of lust fill the library and you move a bit closer to get a better view.";
					WaitLineBreak;
					say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's asshole relentlessly, until finally the young athlete's moans and pants rise up to a climactic shout and his horsecock starts blasting heavy squirts of cum all over the floor under him. Visibly satisfied in making his partner come, Klauz isn't far behind, burying his hard cock all the way in his human partner's butt and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
					NPCSexAftermath Eric receives "AssFuck" from Klauz;
				else if HP of Eric is 32:
					project the Figure of Eric_NakedSatyrHard_happy_icon;
					say "     With the young athlete just dazedly resting on all fours, Klauz uses large paws to pat at his pants, soon managing to hook a paw under the shorts band and pull it down, revealing that Eric went commando today. The large cat gives his entranced human a deep sniff, then starts to lick between the legs, lapping away at Eric's furry balls. After a moment of making the young man pant and moan, the felinoid then moves on to lick over his pucker for a while before finally moving to stand completely over the smaller human, nuzzling at his neck while bumping against his butt with a hard and erect spined cock.";
					say "     Lowering his hips slightly and doing small probing thrusts, Klauz soon locates Eric's pucker and presses in against it, entering without much problem as the human is pretty relaxed all over in his trance. With a satisfied roar, he sinks all of his manhood inside, then starts fucking Eric with powerful and deep thrusts. Moans, pants and growls of lust fill the library and you move a bit closer to get a better view.";
					WaitLineBreak;
					say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's asshole relentlessly, until finally the young athlete's moans and pants rise up to a climactic shout and his satyr cock starts blasting heavy squirts of cum all over the floor under him. Visibly satisfied in making his partner come, Klauz isn't far behind, burying his hard cock all the way in his human partner's butt and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
					NPCSexAftermath Eric receives "AssFuck" from Klauz;
				now level of Eric is 3;
				now lastfuck of Eric is turns;
			else:
				LineBreak;
				project the Figure of Eric_TShirt_shocked_icon;
				say "     Deciding that this has gone far enough, you dash forward, grabbing Eric by the shoulder and pulling him up to stand. With your hand on the young man's arm, you walk him a few steps away from the musky cloud of scent around Klauz and softly slap his cheeks several times as he breathes in fresh air. Finally shaking out of it, his eyes focus on you after the last slap and he says 'Hey, what are you doing? I was just... looking for books and... then... I -'";
				say "     Eric's brows draw together as he mentally puzzles together the last five minutes of time and turns in confusion to you. While you explain about the felinoid's charm and the effects of his musk, the two of you hear a disappointed growl from the large cat, who gives Eric a last look before stalking off, trying to act as if he hadn't planned to do anything with the human.";
				now level of Eric is 99;
		else: [leave it]
			LineBreak;
			say "     Oh well, it would happen at some point no matter what you do. It's not like you've got the time to constantly watch over what Klauz is doing anyways. Some short time later, you hear lust-filled growls and pants sound from somewhere between the bookshelves, culminating in a satisfied roar not long after.";
			now level of Eric is 1;
			now lastfuck of Eric is turns;
	else if HP of Eric is 99: [sex slave cuntboy]
		project the Figure of Eric_TShirt_neutral_icon;
		say "     As you enter the library, you see Eric walk in between two of the long shelves, furtively looking over his shoulder towards the bunker entrance without noticing you in the other direction. Now that you think of it, he seems to be up here quite a bit. You guess that he's trying to avoid getting noticed (and fucked) by you, reading in the quiet corners of the library instead.";
		say "     While you're still debating the thought of going after him and fucking him right now in your own mind, you see the large shape of Klauz companion silently stalk after Eric. Knowing the large cat's libido-driven behavior, you see where this might lead...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Go after them - to intervene, or watch.";
		say "     ([link]N[as]n[end link]) - Leave them to it and turn to other things.";
		if Player consents: [follow]
			LineBreak;
			say "     Walking into the same space between the bookshelves that you saw your two companions go into, you spot Eric some distance ahead of you, still checking out books and being totally oblivious to Klauz stalking him. Then the large cat catches up with him, rubbing his flank against the human athlete's hips and making a resounding purring sound in his throat. Eric is easily taken in by the felinoid's affectionate behavior, petting the large creature as he circles him, rubbing up against Eric's body and flirting his long tail in front of the human's face.";
			say "     Soon Eric crouches down, his hands busy rubbing Klauz's belly fur and behind his ears in something of a trance. He brushes his cheek against the large cat's soft fur and breathes in deep, now completely succumbing to his pheromone-laden scent. A low and throaty sound comes from the felinoid, almost a feline chuckle, then he bumps Eric with his shoulder, making him fall forward on all fours.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Watch Klauz mount Eric.";
			say "     ([link]N[as]n[end link]) - Step in and snap Eric out of the trance.";
			if Player consents:
				LineBreak;
				project the Figure of Eric_Naked_neutral_icon;
				say "     With the young athlete just dazedly resting on all fours, Klauz uses large paws to pat at his pants, soon managing to hook a paw under the shorts band and pull it down, revealing that Eric went commando today. The large cat gives his entranced human a deep sniff, then starts to lick between the legs, lapping away at Eric's open pussy lips. After a moment of making the cuntboy pant and moan, the felinoid then gives him a lick over the small of his back before finally moving to stand completely over the smaller human, nuzzling at his neck while bumping against his butt with a hard and erect spined cock.";
				say "     Lowering his hips and doing small probing thrusts, Klauz soon finds the opening of Eric's moist and ready pussy and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking him with powerful and deep thrusts. Moans, pants and growls of lust fill the library and you move a bit closer to get a better view.";
				WaitLineBreak;
				say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing his orgasm to anyone in hearing range. Visibly satisfied in making him come, Klauz isn't far behind, burying his hard cock all the way in the young human's pussy and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
				NPCSexAftermath Eric receives "PussyFuck" from Klauz;
				now level of Eric is 3;
				now lastfuck of Eric is turns;
			else:
				LineBreak;
				say "     Deciding that this has gone far enough, you dash forward, stepping between Klauz and Eric, blocking the large cat's access to his new fuck-toy. It takes some effort to shoo the insistent felinoid away, but you finally manage it after a while. With a disappointed growl, the large animal gives Eric a last look before stalking off, trying to act as if he hadn't planned to do anything with the human.";
				now level of Eric is 99;
				if Player is male:
					LineBreak;
					say "     You're left standing over a still pretty dazed Eric and Klauz's pheromone-laden musk still hanging in the air here has you pretty wound up, your cock hard as rock.";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck Eric, right here and now.";
					say "     ([link]N[as]n[end link]) - Nah, it's not fun if he's dazed like this.";
					if Player consents:
						LineBreak;
						project the Figure of Eric_Naked_neutral_icon;
						say "     Quickly stripping off your own clothing, you kneel behind him and pull down Eric's shorts. Ah, he went commando today - maybe some part of him is learning to keep himself ready and accessible for you. He just looks so delicious, on all fours before you with his athletic body and a moist and swollen pussy open to you. A thought of going slow quickly evaporates before your boiling lust, causing you to aim your shaft and then plunge into Eric's body in one go, making him groan as your cock suddenly spreads his pussy lips. He whimpers a bit as you slide deeper, but soon starts to moan in lust as you bottom out and start thrusting, rubbing against his inner walls with your shaft.";
						say "     You fuck the little cuntboy bitch for quite a while, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then rest on top of him until you're ready to go on. It's a wild ride, but finally - after him and you coming three times - your stamina is spent and you pull your softening erection out with a wet slurp. While you move around to grab your clothes, Eric sinks to the ground, lying on his side with your cum oozing out of his pussy. He murmurs to himself 'I can't believe how much this gets me off. I should hate this - and him! Three times he's made me cum and filled me. What does he want to do - use me as a breeding bitch?' before dozing off. Not a bad idea, you think for yourself as you walk back out between the shelves.";
						NPCSexAftermath Eric receives "PussyFuck" from Player;
						now lastfuck of Eric is turns;
					else:
						say "     Nah, it's more fun to dominate the little bitch when he's not zonked out and realizes what's happening to him. You just walk off and leave him to recover on his own.";
		else: [leave it]
			LineBreak;
			say "     Oh well, it would happen at some point no matter what you do. Let the big kitty have some fun with your little cuntboy bitch too. Some short time later, you hear lust-filled growls and pants sound from somewhere between the bookshelves, culminating in a satisfied roar not long after.";
			now level of Eric is 1;
			now lastfuck of Eric is turns;

instead of navigating Grey Abbey Library while (Felinoid Companion is tamed and ((level of Eric is 4 and (HP of Eric is 11 or HP of Eric is 12 or HP of Eric is 13 or HP of Eric is 14 or HP of Eric is 15 or HP of Eric is 22 or HP of Eric is 32) or (level of Eric > 0 and level of Eric < 99 and HP of Eric is 99))) and Eric is not slutstored and (lastfuck of Eric - turns) > 12 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: ERIC FELINOID SEX REPEAT WALKIN [line break]";
	if HP of Eric is 11 or HP of Eric is 12 or HP of Eric is 13 or HP of Eric is 14 or HP of Eric is 15: [cuntboy Eric, had sex before]
		project the Figure of Eric_Naked_neutral_icon;
		say "     As you enter the library, you hear moaning and lust-filled growls coming from somewhere behind one of the back shelves. Curious who's doing whom, you go to check it out. Walking over until you see the space behind the long bookshelf, you spot Eric - with Klauz on top of him, mounting the smaller human and rapidly thrusting his hips at him. Seems like the big cat managed to put your friend under his influence again - though maybe this time Eric went to seek the feline out - after all, the young athlete is on his hands and knees on one of the mattresses from the cots in the bunker below, which he must have dragged up here for just this purpose...";
		LineBreak;
		say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing his orgasm to anyone in hearing range. Visibly satisfied in making him come, Klauz isn't far behind, burying his hard cock all the way in the young human's pussy and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the mattress to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
		NPCSexAftermath Eric receives "PussyFuck" from Klauz;
	else if HP of Eric is 22:
		project the Figure of Eric_NakedHorseHard_happy_icon;
		say "     As you enter the library, you hear moaning and lust-filled growls coming from somewhere behind one of the back shelves. Curious who's doing whom, you go to check it out. Walking over until you see the space behind the long bookshelf, you spot Eric - with Klauz on top of him, mounting the smaller human and rapidly thrusting his hips at him. Seems like the big cat managed to put your friend under his influence again - though maybe this time Eric went to seek the feline out - after all, the young athlete is on his hands and knees on one of the mattresses from the cots in the bunker below, which he must have dragged up here for just this purpose...";
		LineBreak;
		say "     The animalistic coupling of the felinoid and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, Klauz drives his cock into Eric's asshole relentlessly, until finally the young athlete's moans and pants rise up to a climactic shout and his horsecock starts blasting heavy squirts of cum all over the mattress under him. Visibly satisfied in making his partner come, the felinoid isn't far behind, burying his hard cock all the way in his human partner's butt and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the mattress to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
		NPCSexAftermath Eric receives "AssFuck" from Klauz;
	else if HP of Eric is 32:
		project the Figure of Eric_NakedSatyrHard_happy_icon;
		say "     As you enter the library, you hear moaning and lust-filled growls coming from somewhere behind one of the back shelves. Curious who's doing whom, you go to check it out. Walking over until you see the space behind the long bookshelf, you spot Eric - with Klauz on top of him, mounting the smaller human and rapidly thrusting his hips at him. Seems like the big cat managed to put your friend under his influence again - though maybe this time Eric went to seek the feline out - after all, the young athlete is on his hands and knees on one of the mattresses from the cots in the bunker below, which he must have dragged up here for just this purpose...";
		LineBreak;
		say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's asshole relentlessly, until finally the young athlete's moans and pants rise up to a climactic shout and his satyr cock starts blasting heavy squirts of cum all over the floor under him. Visibly satisfied in making his partner come, Klauz isn't far behind, burying his hard cock all the way in his human partner's butt and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
		NPCSexAftermath Eric receives "AssFuck" from Klauz;
	else if HP of Eric is 99: [sex slave cuntboy]
		project the Figure of Eric_Naked_neutral_icon;
		say "     As you enter the library, you hear moaning and lust-filled growls coming from somewhere behind one of the back shelves. Curious, you go to check it out. Walking over until you see the space behind the long bookshelf, you spot Eric - with Klauz on top of him, mounting the smaller human and rapidly thrusting his hips at him. Seems like the big cat managed to catch your little cuntboy getting books again and took advantage of the situation. And just like the slut he is, Eric succumbed to the felinoid's influence and let the feline mount him.";
		LineBreak;
		say "     The animalistic coupling of Klauz and his entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives his cock into Eric's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing his orgasm to anyone in hearing range. Visibly satisfied in making him come, Klauz isn't far behind, burying his hard cock all the way in the young human's pussy and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat throws himself on the floor right at that spot to lounge in satisfaction, taking Eric with him, still impaled on the feline's shaft and soon held against his soft belly fur with a muscular forelimb.";
		NPCSexAftermath Eric receives "PussyFuck" from Klauz;

after going down from Grey Abbey Library while (Level of Eric > 0 and Level of Eric < 4 and Eric is in Bunker and HP of Eric < 99):
	if debugactive is 1:
		say "     DEBUG: ERIC POST-FELINOID-SEX WALKIN [line break]";
	try looking;
	project the figure of Eric_TShirt_shocked_icon;
	say "     As you come down the stairs into the bunker, Eric almost jumps up from where he was sitting on his cot and rushes over to you, his cheeks red with embarrassment. Before you can so much as ask what's wrong, he gushes forth with 'I'm sorry. I- I had sex with your felinoid pet. Something just came over me and I let him mount and fuck me! Can you ever forgive me for this?' His somewhat teary eyes seek out yours and take on a hopeful look as he realizes how calmly you're taking this (you did already know and didn't stop Klauz from fucking him after all).";
	LineBreak;
	say "     [bold type]So, what do you tell him?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - There's no shame in having some fun, even without you and with... exotic partners.";
	say "     ([link]N[as]n[end link]) - Console him and tell him to avoid the felinoid in the future.";
	if Player consents: [more felinoid scenes]
		LineBreak;
		project the figure of Eric_TShirt_happy_icon;
		say "     Putting your arms around Eric and holding him, you console him with calm words, explaining to him that you're not angry or anything. After all, it's a whole new world with the nanites and all, so why should anyone be restrained by the morals of the old one. The young athlete's eyes get wide in realization as you remind him that you brought Klauz home with you, even after knowing its lusty character. Pulling him close again, you squeeze Eric's tight ass and whisper in his ear that [if Level of Eric is 1 or Level of Eric is 2]you saw the felinoid follow him in the library and were okay with it[else]you were there and did watch the hot little scene of Klauz mounting him[end if]. A visibly relieved Eric stutters 'So you did... you let... he did...', then takes a deep breath before admitting 'He felt so good - so right - inside me, having his hard cock fuck me, the soft fur of his belly against my back...' His breathing becomes quicker as he relives his experience with the felinoid in memory, clearly getting aroused by it.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Seize the moment for some hot action between the sheets with Eric";
		say "     ([link]N[as]n[end link]) - Leave him to dwell on his lusty thoughts.";
		now Level of Eric is 4;
		if Player consents:
			say "[BasicEricSex]";
		else:
			LineBreak;
			say "     Smiling at Eric and encouraging him to have some more fun with Klauz whenever he wants, you chat with him a short while, then turn to other things. The by now pretty wound up young athlete meanwhile makes a beeline for his bunk, no doubt to stroke himself and deal with his built-up lust.";
	else: [no further felinoid scenes]
		LineBreak;
		say "     Putting your arms around Eric and holding him, you console him with calm words, explaining to him that you're not angry or anything. After all, it's partly your fault for bringing Klauz here with you (and letting him fuck Eric, but he doesn't need to know that). Telling Eric just not to fall for the felinoid's charms and arousing musk again, you give the visibly relieved athlete a kiss on the cheek and leave him to get back to his bunk.";
		now Level of Eric is 99;

after going down from Grey Abbey Library while (Level of Eric is 4 and Eric is in Bunker and HP of Eric > 9 and HP of Eric < 20 and (lastfuck of Eric - turns) > 12 and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: ERIC BUNKER-FELINOID-SEX WALKIN (CBOY ERIC ONLY SO FAR)[line break]";
	try looking;
	project the Figure of Eric_Naked_happy_icon;
	say "     As you come down the stairs into the bunker, you hear gasped moans and loud purring growls come from somewhere over in the rows of beds. Letting your gaze wander over the large room, it is easy to spot where the noise is coming from, as the pale-skinned form of Eric with his bright red hair is hard to miss. Looks like he's really taken to Klauz after your encouragement for him to do so - the young trans-male has spread out several blankets on the floor beside his own bed for the big cat. Currently, the felinoid is lying on that comfy pile, sprawled out on his back and purring like an idling motor as Eric rubs his belly-fur while bouncing his hips against the big cat's crotch. Clearly, he's got the feral beast's feline shaft deep in his pussy, stimulating his inner walls with the many nubby spines along the shaft of Klauz's erection.";
	say "     The animalistic coupling of the felinoid and his eager and willing partner is quite a show, driving your arousal to new heights as you watch. Mostly content to let Eric ride his cock, Klauz nevertheless sometimes humps his crotch up without warning and shafts Eric deeply, drawing ecstatic howls from the young man. Eventually, the student athlete's moans and pants rise up to a climactic shout, announcing his orgasm far and wide. Purring even louder in obvious satisfaction at having made Eric come, the felinoid isn't far behind, burying his hard cock all the way in the young human's pussy and holding still, only his balls pulsing as they fill him up with his seed. When he finishes cumming, the big cat rolls over on his side to lounge in satisfaction, taking Eric with him, still impaled on his shaft and soon held against soft belly fur with a muscular forelimb.";
	NPCSexAftermath Eric receives "PussyFuck" from Klauz;
]

Slutstorage_Eric ends here.
