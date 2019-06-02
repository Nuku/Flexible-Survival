Version 1 of Milo by CrimsonAsh begins here.
[Version 1 - New file]


Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Bobcat Encounter	"Bobcat Encounter"

Bobcat Encounter is a situation.
The sarea of Bobcat Encounter is "Forest".

when play begins:
	add Bobcat Encounter to BadSpots of MaleList;
	add Bobcat Encounter to BadSpots of FurryList;

instead of resolving Bobcat Encounter:
	if Resolution of Bobcat Encounter is 0: [first time]
		say "     As you walk along a narrow dirt trail through the forest that a fair bit of the inner city turned into, you let your eyes roam over your surroundings, looking for anything of even remote significance or value. While doing so, your gaze falls upon a small furry figure a little distance ahead. The creature appears to be a bobcat, slightly taller than three feet high and covered in short orange fur with black and white stripes. Small cat ears atop the head rotate to take in the sounds of your approach, and the little feline's tail moves left and right in urgent twitches. Fumbling with a large carrying bag on the ground, the bobcat then shoves it into the crevice of a large tree that it is standing in front of. Shoving with all the might of its small body, the bobcat manages to force the bag inside before you come anywhere close, vanishing after it into the thick trunk's insides.";
		say "     Curiosity draws you towards the tree, and soon you're standing a few yards away, looking into the small crevice on its side. Keeping a little distance just in case the inhabitant is aggressive, you call out a greeting and wait for a reply. A minute passes, then two, and as you are about ready to call it quits and move on, an anthropomorphic bobcat's head, then body, pops out of the crevice. The feline has a lithe but fit body, covered in moderately thick fur that makes it a bit hard to tell if you're looking at a male or female. Large amber eyes stare up at you cautiously, and the cat says, 'What?' The tone of voice reveals that your new acquaintance is a male, as does a casual glance down at his nether regions, now that he's standing up straight enough to make out the outline of his soft dick in the surrounding fur.";
		LineBreak;
		say "     [bold type]What do you want to do with the shortstack feline?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Greet him and start a conversation.";
		say "     [link](2)[as]2[end link] - Snatch the kitty and have some fun!";
		say "     [link](3)[as]3[end link] - Nothing really, you just wanted to get a closer look. That's it.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to chat, [link]2[end link] to attack or [link]3[end link] to leave.";
		if calcnumber is 1:
			LineBreak;
			say "     Greeting the feline creature with a wave and smile, you tell him your name and how you were passing by until you got curious about him. 'Curious, huh?' he asks a little cautiously. He slowly lifts himself from his little hovel and brushes himself off, putting soft paws on his hips while eyeing you up. 'Well, for curiosity's sake, I'm Milo,' he says, nodding. You nod in turn and examine him in more detail, now that he's right before you. He's completely naked for one, no shirt, no shoes, and certainly no underwear, leaving his flaccid, eight inch cat-cock dangling between his legs for all to see.";
			say "     The creature himself looks to be about three and a half feet tall, covered in orange and black fur with furry digitigrade legs ending in cat paws and tipped with sharp, if not short claws. His hands are similar, although his fingers are longer and also end in the same claws. His cute face is fitted with the sharp incisors of a feline, which a long, rough tongue flicks across as you stare. Large amber eyes with cat-like slits bore into your own while his short little tail gently bobs to and fro behind him.";
			WaitLineBreak;
			say "     After a moment of eyeing each other up, you open your mouth again to start to speak, only to stop when the cat turns around and leans into the hovel he had popped out of. He gives you a nice view of his exposed ass as he does, the tight butt winking at you while his tail swishes left and right. After a second of fumbling in the hole, he pulls out a can of food and turns around to present it to you. It's also worth noting that after turning back around, his male-hood has grown to half mast, now pointing right at you. The bobcat then flashes you a telling smile and presents the can to you.";
			say "     'Now that you're not curious anymore, how about you help with my own? I like the look of you stranger. Can make it worth your time too if you're interested. Although,' he says, shaking the can in his paw before grinning widely, flashing sharp incisors and licking over his lips and then continuing, 'I'm sure that after I'm done with you, you won't even care about the free food.' He gives a hearty if not cocky laugh, putting a paw on his hip and bringing out the other one with the food in it to present to you. 'So how about it, stranger, up for some fun? Fair warning though, I'm the top.' As he finishes, you notice that his member now bobs between his legs at its full eight inch mast, clearly eager to hear your answer.";
			WaitLineBreak;
			say "     [bold type]What's your reply?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Sure, let's have some fun!";
			say "     ([link]N[as]n[end link]) - No, reject the bobcat's advances.";
			if Player consents:
				LineBreak;
				say "[SexWithMilo1]";
			else:
				LineBreak;
				say "     You shake your head. You can survive without the food, and for god's sake, you're not [']that['] easy. He sighs and drops the food back into his hole home. 'Fair enough, but come back if you change your mind. Don't get many good looking folks like yourself around my home. Just follow the little M's I carved into some of the trees. They should lead you back here.' He snickers, gives you a wave and hops back in the little hole at the bottom of the tree, disappearing from sight.";
				now Resolution of Bobcat Encounter is 98; [talked, rejected sex]
		else if calcnumber is 2:
			LineBreak;
			say "     With a manic grin on your face at the opportunity he gave you by coming out of hiding, you leap forward to grab the kitty cat. Sadly, he seems to have been waiting for just that, and before you get anywhere close enough, the lithe anthro slips back into the tree. You reach into the hole close to the ground, crouching as your hand quests around, but all you feel is rough wood. After a short moment, it becomes obvious that you won't be getting him this way, so you pull back and stand up straight again. Or you try at least, as you feel a pair of paws kick you from behind, throwing you off balance and sending you to one knee. Whirling around, you see the bobcat man standing there in some sort of martial arts stance, claws extended and apparently ready to fight! 'You big jerk!' he yells angrily before charging you on all fours!";
			now inasituation is true;
			challenge "Bobcat";
			if fightoutcome < 20: [player won]
				say "[WonAgainstMilo]";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "[LostAgainstMilo]";
			else if fightoutcome is 30: [fled]
				say "[FledFromMilo]";
			now inasituation is false;
			now Bobcat Encounter is resolved;
		else:
			LineBreak;
			say "     You stare at the cat for a minute, scratching the back of your neck awkwardly as you think of what to say. You were curious maybe? The feline creature huffs in impatience while you think, putting his paws on his lithe, furry hips. 'Well that's a fine how-do-ya-do, did'nt your mother ever teach you it's impolite to stare.' He gives an indignant huff, before he drops back down the hole, disappearing from sight. You stare down the dark, deep hole a moment before backing up, looking around at your surroundings and then turning around. 'Come back when you've learned to greet properly!' you hear echoed out from the inside of the tree. With a shrug, you walk away and try to remember some of the landmarks near the tree, to make sure that you don't run into him again for another embarrassing encounter.";
			now Resolution of Bobcat Encounter is 99; [disinterest]
			now Bobcat Encounter is resolved;
	else if Resolution of Bobcat Encounter is 1 or Resolution of Bobcat Encounter is 2: [got fucked once before]
		say "     As you are wandering through the lively forest, you notice a small M on a tree you pass. Remembering that little cat-morph that you had submitted to before, you think that you can follow these tree signs back to Milo's home. Whether for free food or a quick fuck, or both given how you get them, it should be easy to find Milo.";
		say "     [bold type]Do you want to search out the bobcat?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, let's have some fun!";
		say "     ([link]N[as]n[end link]) - No, not right now.";
		if Player consents:
			LineBreak;
			say "     Well... the cat was pretty good the last time you two fucked, may as well give a repeat visit. Following the tree markings for a few minutes, you eventually come across Milo and his hidey-hole. Milo's currently out of the hovel and is digging in the ground a few yards away from it. He then pulls out an acorn and drops it in before pushing dirt back over it. As you approach, his ears perk up and look over to you. At first, caution appears on Milo's face, but it relaxes as recognition runs across it. 'Ahh, heyo there, Kit! Long time no see and all,' he says, skipping up to you. 'Come back for another round? I think that I got some more food if you're up for the trade?'";
			say "     He pauses to snicker to himself. 'I bet that you don't even need the food. Sex that good, huh?' He gives you a cocky smirk and places his paw on his hip. You roll your eyes but nod your head. Free food and free sex sound pretty good to you. Milo then gives himself a little fist pump and jumps in place enthusiastically. 'Fantastic, Kit!' He then moves over to his hole-home and fishes out another can of food and hands it to you gingerly. 'Now, beautiful, assume the position!' he says, trying to sound authoritative but is lessened by his playful laugh.";
			say "     [bold type]What position will you assume?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Bend over and present yourself for fucking.";
			say "     ([link]N[as]n[end link]) - Move up to him and blow the bobcat.";
			if Player consents:
				LineBreak;
				say "[SexWithMilo1]"; [fuck]
			else:
				say "[SexWithMilo2]"; [bj]
		else:
			LineBreak;
			say "     Maybe another time, you have more important things to be doing right now you tell yourself as you move on from the marked tree.";
	else if Resolution of Bobcat Encounter is 98: [talked, rejected sex last time]
		say "     As you are wandering through the forest in an oddly familiar area, you think you recognize a particular tree when there's a cat call behind you. 'Heya, knew you'd be back.' Turning around, you see Milo, the short bobcat fellow who offered you food in exchange for fucking you. Milo blinks at you and puts his paws on his hips. 'Well you are here about my offer, right?'";
		say "     [bold type]What's your reply?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, let's have some fun!";
		say "     ([link]N[as]n[end link]) - No, reject the bobcat's advances.";
		if Player consents:
			LineBreak;
			say "[SexWithMilo1]";
		else:
			LineBreak;
			say "     You shake your head. You can survive without the food, and for god's sake, you're not [']that['] easy. 'Agh, you're terribly boring, you know?' he says, waving you off. 'Come back when you're fun.' He leaves you standing there as he disappears behind thick brush.";

to say SexWithMilo1:
	setmonster "Bobcat";
	if Player is female:
		say "     Thinking a moment, you chew your lip, eyeing the catboy up and down until you finally nod slowly, eyes stopping on his hardened member. He claps his paws together and bounces excitedly in place. 'Excellent!' he says anxiously, his malehood throbbing in anticipation. He hands you the can of food, and you store it away in your pack. Turning back to the cat-morph, he grabs hold of his bumpy shaft and begins stroking it before you, licking his sharp incisors while his eyes sparkle with lustful ideas for you. 'Down, on your hands and knees,' he says as a command, humping his hips forward slightly. Blushing at the order, you do as he asks, kicking off what clothing you have until your butt naked before Milo. You then turn around, bend over, and present your naked ass to your new dom.";
		say "     He pads up to your backside and runs his paws over your ass, caressing your cheeks and gently digging little claws into your skin. A slap echoes briefly as Milo's soft paw whacks against your backside, causing you to yelp. 'Hmm, you smell pretty good. Let's see if you taste just as sweet.' As he says this, you turn your head to see what he means exactly. You see his head drop low and bury into your loins. Whiskers tickle your flesh as a rough tongue makes contact with your sex, pressing into you eagerly. He works with skillful tongue lashes on your sensitive lips while his soft paws grope your ass cheeks wantonly. Every now and again, his sharp fore-teeth chew gently on your clit, sending a dagger of pleasure up your body and causing your limbs to wobble.";
		WaitLineBreak;
		say "     Milo brings you close, but holds off right before your climax. He withdraws his face and tongue from your spit-lathered crotch with a loud slurp and a pleasant smirk. 'Not bad at all, but time for the real deal now,' he says as he strokes himself off behind you, scooting up till his erection is pressing right up against the entrance of your sex. You wiggle your hips, pressing him into you half an inch before he pulls back with a groan. 'Easy there, girl!' He laughs, giving your cheek another softer slap. 'Don't worry, you'll get what you want.' He grins widely, not that you can see on your hands, preparing yourself for a good fucking.";
		say "     After a little more teasing of your now soaking wet cunny, Milo, without warning, thrusts into your waiting sex. You throw your head back and groan as the bumpy, barbed member files into you, filling you with all eight inches in a single motion. Milo [']mrowls['] lowly, emanating a light purr while he holds himself inside of you. You feel soft, furry paws kneading your tender skin when he starts to pull out of you, only for him to slam back into your cunt, nearly sending you face first into the ground. Milo starts his lust-fueled rut into you, pulling out and pushing in with ever increasing speed.";
		WaitLineBreak;
		say "     Your moans grow wild, much like his erratic movements that send shockwaves of pleasure through you. After a series of impressive thrusts and a final slap of your tail end, you find yourself brought to a screaming climax, orgasming around his cat-cock, squeezing it tightly and squirting girl cum all over and around Milo's crotch. [if Player is male]Meanwhile a little lower, your manhood[smn] shoots its load onto the soft dirt below, staining it gooey white. [end if]Your vice-like grip around him triggers his own, and with a groan and a rather cute [']meowl['], Milo explodes into you.";
		say "     A torrent of cat seed fills your shaking tunnel, painting your womb white as Milo humps inside of you fully. Pushing back against him, you grind as much pleasure from him as possible until he slowly disconnects himself from you. His paws stay on your ass however, squeezing and groping possessively as he takes a moment to appreciate your well-fucked form, utterly submitted to him and leaking his seed. You hear him lick his lips loudly and stand up. 'That was a good little romp I'd say, Kit. If I didn't have food to replace, I might just be up for round two, buuut for now, let's call it. Do visit again though, I'd love to see this beautiful ass again, raised and ready for a fucking,' he says, giving your butt one last squeeze.[fimpregchance]";
		WaitLineBreak;
		say "     Milo stretches, cracking his neck and wiping his messy cock off over your soft asscheeks. He sighs and begins to make his way back to his hole-home. 'You've definitely earned the chow. Don't eat it all at once now.' He laughs, hopping back into his home and disappearing from sight. A little woozy, you slowly stand, feeling the cat cum dribble out of your sex and down your thighs. Before you can decide on what to do next or what direction you're even going in, you hear Milo's voice echo from inside of his hidey hole. 'Oh! And if you need to find me again, look for the little M's I carved into some of the trees. Should lead you back here!' Well that's useful. If you ever need quick food or a quick fuck, you can try to find one of Milo's trees to follow.";
		now Resolution of Bobcat Encounter is 1; [talked, pussy fuck for food]
	else:
		say "     Thinking a moment, you chew your lip, eyeing the catboy up and down until you finally nod slowly, eyes stopping on his hardened member. He claps his paws together and bounces excitedly in place. 'Excellent!' he says anxiously, his malehood throbbing in anticipation. He hands you the can of food, and you store it away in your pack. Turning back to the cat-morph, he grabs hold of his bumpy shaft and begins stroking it before you, licking his sharp incisors while his eyes sparkle with lustful ideas for you. 'Down, on your hands and knees,' he says as a command, humping his hips forward slightly. Blushing at the order, you do as he asks, kicking off what clothing you have until your butt naked before Milo. You then turn around, bend over, and present your naked ass to your new dom.";
		say "     [if Player is neuter]Milo pauses a moment when he sees that you have no sex organs. 'Jeez, you're one of those, huh? Ah well, I ain't judgy. Besides, all's you need is this sweet ass.' [end if]He pads up to your backside and runs his paws over your ass, caressing your cheeks and gently digging little claws into your skin. A slap echoes briefly as Milo's soft paw whacks against your backside, causing you to yelp. The cat-morph then leans forward and shoves his face deep into your ass crack. He inhales deeply and then lets his tongue roam. It shoots out of his toothy maw and makes contact with your sensitive sphincter, pressing in and lathering it in warm saliva, all while his soft paws caress and grope at your hips.";
		WaitLineBreak;
		say "     His tongue lashes against your asshole and beyond, trailing around your tight back door before diving into it again. His rough tongue tickles your very core, feeling almost as if he's licking you from the inside out. [if Player is male]Your throbbing manhood pulses from the stimulation, sending little spurts of pre unto the ground below. [end if]Eventually though after nearly five minutes of eating your ass and feeling up your body, Milo's head withdraws. 'Hmm, damn, not bad.' He licks his incisors loudly. 'You look ready enough!' Milo shouts excitedly and rears back, then forward, pressing the tip of his eager cat cock against the ring of your ass.";
		say "     He doesn't wait long. Milo pushes forward with all of his three foot force and pops into your rectum. You pull your head back and moan at the penetration, right alongside Milo as he too mewls in delight. You push back against him, all the way until all eight inches are stuffed inside of your butt. His ribbed cat cock feels absolutely euphoric inside of your clenching backside, and even more so when he pulls back and slams into you again. His soft paws dig into your flesh while his hips start to really move against you. A few slaps echo through the forest as the pleasurable sting of an ass-slapping hand shoots through you.";
		WaitLineBreak;
		say "     Milo for his part leans forward overtop you and starts making quick short jabs into your ass instead of long heavy thrusts. The soft fur of his body sends submissive thrills up your spine and through your groin. You nearly fall forward through the rough fuck and can feel yourself quickly reaching your peak of pleasure. [if Player is male]Before realizing it, you're shooting your load all over the dirty ground below, splattering a fair bit on your thighs and legs. [end if]Milo follows suit, slamming into your fucked out rectum once more and holding himself there. His teeth find your back and digs into skin and flesh, hard enough to sting but light enough to not draw blood.";
		say "     A veritable flood of cat cum fills your ass with an excess of fruitful seed, filling you up with what feels like a quart of jizz, which slowly leaks out and around Milo's messy, twitching member. He humps slowly into you as he drags his pleasure out from you, using you like his own private cock-masseuse. Pushing back against him, you grind as much pleasure from him as possible until he slowly disconnects himself from you, letting go of your sore flesh that his jaws had dug into when he does. His paws stay on your ass however, squeezing and groping possessively as he takes a moment to appreciate your well-fucked form, utterly submitted to him and leaking his seed. You hear him lick his lips loudly and stand up. 'That was a good little romp I'd say, Kit. If I didn't have food to replace, I might just be up for round two, buuut for now, let's call it. Do visit again though, I'd love to see this beautiful ass again, raised and ready for a fucking,' he says, giving your butt one last squeeze.[mimpregchance]";
		WaitLineBreak;
		say "     Milo stretches, cracking his neck and wiping his messy cock off over your soft asscheeks. He sighs and begins to make his way back to his hole-home. 'You've definitely earned the chow. Don't eat it all at once now.' He laughs, hopping back into his home and disappearing from sight. A little woozy, you slowly stand, feeling the cat cum dribble out of your ass and down your thighs. Before you can decide on what to do next or what direction you're even going in, you hear Milo's voice echo from inside of his hidey hole. 'Oh! And if you need to find me again, look for the little M's I carved into some of the trees. Should lead you back here!' Well that's useful. If you ever need quick food or a quick fuck, you can try to find one of Milo's trees to follow.";
		now Resolution of Bobcat Encounter is 2; [talked, ass fuck for food]
	LineBreak;
	say "[bold type]You gain 1 food![roman type][line break]";
	increase carried of food by 1;

to say SexWithMilo2:
	say "     You drop to your knees before Milo and lean forward, ducking low. Milo coos as he sees your plan in motion and sits back, leaning against a tree while he watches you with delight. You press your face against his groin and drag your tongue along his slowly hardening cat phallus, glad that Milo doesn't wear clothes, as your hands form around his tasty cock, stroking and squeezing him to full mast. Milo moans and groans above you, lightly pushing forward into your face whenever he can. For yourself, you're just enjoying his wild musky taste while Milo's paws brush into your scalp, petting you affectionately as you start to swallow his feline member.";
	say "     Your lips fold around Milo and start sucking, tongue lashing out and twirling around his fuck pole buried in your salivating mouth. You bring one hand up to gently caress his sack while the other works the base of his shaft, and your mouth swallows down the rest. Milo coos more in pleasure and perhaps slight awe at your technique as both of his paws press into your head to hold you firmly, or perhaps to give Milo something to hold onto while he has you suck him dry. You moan around his member, reverberating it through him and causing Milo to shudder as you do. Removing your hand from his shaft, it moves to join your other in gently playing with his furry nuts as your head drops down fully, engulfing all of him inside.";
	WaitLineBreak;
	say "     Surrounded by wet warmth, Milo humps and spasms wildly, seizing your head in his paws when he does. His paws start to work your lips for you, moving your head up and down his bumpy cat-shaft. Slowly at first, but it soon turns into swift downward humps into your throat. You gag slightly but moan more around him as he uses your mouth for his own pleasure, the bumps and ridges of his member tickling your throat while he moves you up and down. It gets to the point where you hardly have to do anything, as the cat-morph simply controls your head as if you were a personal sex toy for him.";
	say "     This continues for a fair while, Milo controlling your head as he takes his time with you. Whenever he feels himself approaching climax too fast, he slows down to cool himself off before doing it again, and again. He continues this for nearly twenty minutes, edging himself to the point of blowing but stopping before he pops. On your side of things, you barely have time to breathe, and when you do, it's only Milo's musky cock that you can inhale. Which works just fine for you, salivating around his cock like a cheap whore. And suddenly you're deep throating the cat boy, his cock lodged inside of your throat as Milo pulls his head back and finally finishes down your gullet.";
	WaitLineBreak;
	say "     Jets of tasty cat cum fill your throat and spills out and around your mouth, dribbling down your chin and around his humping member. You obediently suck down every drop of seed he offers up and even then you're still sucking him clean. He mewls at your enthusiasm but has to pull himself away from your heavenly mouth still trying to suck his dry cock clean. 'Whoa, wow, you're pretty damn good at that. You definitely earned your reward, I'd say.' He laughs, wobbling a little on shaky feet. 'Damn, I might have to keep you if you stay this good,' he says, smiling down at you in good humor. Although you can't help but get just a little excited at the prospect of being fully owned by Milo.";
	say "     You lick your lips clean of his seed and swallow what remains in your mouth, as well as scooping up any lost droplets that had run down your chin and slurping them down too. Milo chirps approvingly at the sight, his member twitching again briefly. Standing up, you thank Milo for both meals, causing him to burst out laughing. 'Hah! Pretty good. I'll definitely be seeing you around, Kit. Stop on by anytime you're feeling up for it.' He finishes by sitting down again and leaning against his tree, both hands behind his head with a blissed out expression on his cute, feline face. Smiling and sighing, you pocket the food you've rightfully earned and turn back around to get back to the nanite apocalypse.";
	LineBreak;
	say "[bold type]You gain 1 food![roman type][line break]";
	increase carried of food by 1;

to say WonAgainstMilo:
	if Player is male:
		say "     You knock the cute bobcat to the ground face first. As he tries to recover, you come down on him and put pressure down on his back, pushing the cat to the ground and holding him there. 'Grrr, let me go, jerk!' he whines, squirming beneath you but not able to break your hold. You grin maliciously and reveal your manhood to the feline under your grip. His eyes widen in surprise, but you can also see his ribbed cat cock twitch in guilty anticipation. Your grin widens at that, and your fingers go to his tight ass, pressing in with one digit, causing the cat to squeal and his little tail to lash back and forth.";
		say "     You press into his surprisingly flexible asshole as deep as you can and then withdrawal swiftly. The bobcat below moans at the loss of your finger and unwittingly shakes his ass in eagerness. A loud slap echoes through the forest followed by a yip from the cat as your hand falls down on his firm cheek. Your other hand works your member slowly, getting it to full mast before lining the head up with the bobcat's sphincter. The bobcat puts up a half struggle, still attempting to deny how much this is turning him on.";
		WaitLineBreak;
		say "     You thrust in, sinking most of your male-hood into his vice-like asshole. His arms, which were still half holding him up, collapses, and he rolls his head back as he falls into the dirt, moaning and drooling. His little claws scratch and dig into the dirt as you pound into his furry butt while your hands squeeze his firm cheeks roughly. He tries to babble out something vaguely insulting, but when he tries, you slam deep into him, and he [']mrowls['] loudly. His own member is twitching at its full eight inch length and is spurting pre, giving away how he's really feeling.";
		say "     The tightness of this feline's ass has you reaching a rapidly approaching orgasm as you slam forward once more, looming over the catboy as you cum deep inside of his gut. His own member blows its hefty load onto the dirt ground while you empty your seed into this twitching bobcat. After a few more thrusts into his gaping hole, you expend the last of your jizz in his colon and pull out. He groans as you do and then slumps on his side, passed out. You gather your things and go to examine the hole the cat had greeted you from. Kneeling down and examining it, you reach in and grip something metal. Pulling it out, you find that it's a can of food! You reach down and retrieve two more before putting all three in your pack. You then quickly leave both the strange, fucked-silly bobcat and his home behind.";
		now Resolution of Bobcat Encounter is 21; [fought, fucked him]
	else if Player is female:
		say "     You knock the fight out of the little bobcat, and he falls on his cute furry butt before you. Grinning widely, you eye up your new prize lustfully. He groans and tries to stand, but you shove him back down and plant yourself on his waist butt first. You knock the air out of him, and he squirms pathetically under you. Grabbing a handful of his furred head, you push his face down while fully straddling his waist. He groans, then sighs, and then goes slack under you, realizing that he's at your mercy. You smile down at him and reach back with your other hand to grip his growing cat cock. You rub and stroke it to its full eight inch glory before placing it between your ass cheeks and hot-dogging him between them. He moans lowly and looks away from you shamefully, but his hands grip your hips, seeming to both grope and push at your form.";
		say "     Raising your hips up, you aim his ribbed, bumpy tip to your heated sex and penetrate yourself slowly. The cat boy you're riding [']mrowls['] out loud as you steadily slide down his pretty fuck stick. Your hips shake, and after one last push, you hilt him inside of your now dripping wet cunt. You hold him in you a moment, gently gyrating your hips, provoking whimpers from the fuck-cat. After the moment passes, you raise yourself up and drop back down on the bobcat's barbed cock, the little bumps massaging your insides marvelously. Your head is thrown back as you start your rhythm of riding the cat boy into the ground. On his side of things, he has his teeth gritted and is thrusting up in short bursts, trying to hide how much he's enjoying the fuck.";
		WaitLineBreak;
		say "     He doesn't last much longer, and he lets out a cute moan, his head rolling to the side as a torrent of cum explodes inside of you. Gushes of cat seed fill your insides, triggering your own orgasm. Your cunt spasms and clamps tightly around the bobcat you're riding into the dirt. His barbs are compressed tightly against your sensitive walls so much so it causes a second smaller orgasm from you. Moaning atop the cat, your thighs shake from the intensity, and your eyes flutter dizzily.";
		say "     Satisfied from the rut, you smile and slowly stand up, slipping the softening cat pole from your twitching twat. You stare down at the anthro-bobcat, who has dropped his paws to his sides and shut his eyes, either in defeat or exhaustion. Regardless of which, you gather your things and go to examine the hole the cat had greeted you from. Kneeling down and examining it, you reach in and grip something metal. Pulling it out, you find that it's a can of food! You reach down and retrieve two more before putting all three in your pack. You then quickly leave both the strange, fucked-silly bobcat and his home behind.";
		now Resolution of Bobcat Encounter is 22; [fought, rode him]
	else:
		say "     You shove the cat to the ground and bare your naked, sexless crotch to the cat. He looks up in confusion and a little fear. 'W-what a-' you cut him off and plant your genderless crotch onto his face. A sensitive shudder runs up your spine and you command him to get licking. He struggles under you for a few moments, shouting incoherent babble into your crotch. Only serving to send more pleasurable shudders up your body. But only after a moment of this does he resign himself to your crotch, extending his rough feeling tongue on running over your sensitive skin. Letting out a moan of satisfaction you start to grind yourself into this cat, all the while he serves you with his tongue.";
		say "     You put the cat to work for the next while, your hands work his soft cat ears while his tongue works your crotch. It gets to the point where your entire lower half is numb with sensitivity and your head is thrown back, your hands anchoring you only barely. You have the cat serve you for the next while. Simply grinding down into his face, making him larger your entire crotch in his saliva and ignoring anything else all together. Eventually you have to get back to survival and you slowly stand from the cat who has been literally ridden into the dirt under you. Smiling down at him he closes his eyes in apparent shame and groans lowly.";
		WaitLineBreak;
		say "     You gather your things and go to examine the hole the cat had greeted you from. Kneeling down and examining it you reach in and grip something metal. Pulling it out you find it's a can of food! You reach down and retrieve two more before putting all three in your pack. You then quickly leave both the strange, fucked-silly bobcat and his home behind.";
		now Resolution of Bobcat Encounter is 23; [fought, used his tongue]
	LineBreak;
	say "[bold type]You gain 3 food![roman type][line break]";
	increase carried of food by 3;

to say LostAgainstMilo:
	setmonster "Bobcat";
	if Player is female:
		say "     The bobcat leaps at you once again, back paws first, and knocks you down with surprising force! Landing on your upper body, he pins you to the ground and holds your exhausted shape down. His naked, feline crotch rests on your chest, semi flaccid at about six inches, likely from the adrenaline of the battle. 'Jerk!' he yells down at you, growling and baring his small sharp teeth. Then the lithe feline takes a moment to look you over, his eyes moving over your chest, then further down as he twists his upper body a bit to look at your crotch. The feline's growling snarl is replaced by a grin when he looks back at your face, and his hands start pulling aside any gear and clothing that you might have. Soon, he plants his paw-hands on your breasts, squeezing them gently at first, getting a feel for them before moving to tweak two nipples roughly. You can't help but moan in both pain and pleasure while your body starts to heat up.";
		say "     Your opponent's cock stiffens to full size [if Breast Size of Player > 0]between your chest cushions[else]against your breastbone[end if], standing straight and erect at about eight inches in length. It is feline in shape, covered in small ridges and soft barbs that promise a lot of stimulation to any partner he fucks. The bobcat pushes your [if Breast Size of Player > 0]breasts[else]pecs[end if] together, wedging his length into the resulting crevice as he humps forward gently. 'This is what big jerks like you get. Be a good bottom bitch now,' he says simply, grinning widely and flashing his incisors at you. You strain under his weight, but you're too sore and a little too horny after your fight to put up a good enough struggle. He smiles down at you as you strain to move against him and moves to secure your hands above your head. The thrusting between your [if Breast Size of Player > 0]tits[else]pecs[end if] stops for a moment as he moves his hands to your wrists, holding them tightly and with surprising strength for a creature his size.";
		WaitLineBreak;
		say "     You pull your hands against his, to no avail. In response, he leans down and presses his furry mouth to yours. You let out a gasp in surprise, and he uses that moment to thrust his rough, little tongue in between your lips. He laps inside of your mouth as one paw moves to cup your chin to hold you firmly as he gives you a deep, domineering kiss. His sharp incisors nip at your lips, and his tongue tangles with yours while you lose yourself in his smooch. He's sure to taste you thoroughly, and in turn, let you sample his own intimate taste. After nearly a minute of kissing, he moves back up from your lips, trailing long lines of saliva between the two of you, leaving you out of breath and hotter than you realize. Your cunt lips are soaked, and you're nearly panting in anticipation as to what comes next.";
		say "     He smiles at your flushed face. 'Good slutty jerk. You taste pretty good,' he says genuinely before glancing back down at your breasts. 'Taste more,' he says lowly as he scoots down your body until his head is between your breasts. Meanwhile, his hands quickly remove any obstructions from your soaking sex, and when he does, his hard cat cock brushes against your wet woman-hood. Moaning at the sensation and a little lust blind, you move your newly freed arms to wrap around the bobcat boy's back. The nameless cat latches onto one of your nipples and bites down. Not hard enough to seriously hurt, but you moan loudly at the pained sensation. It's quickly replaced by a rough tongue and soft lips while he moves his hips forward to penetrate your gripping sex with the tip of his feline length.";
		WaitLineBreak;
		say "     Still holding onto his back, you throw your head back and moan loudly as he slowly enters you, one ribbed inch at a time. You bite your bottom lips while he nibbles on your nipple, switching between them and soaking them in saliva as he hilts himself inside of you. He leaves himself there for a moment, just enjoying being inside a warm body for a minute before he withdraws. He drags his bumpy shaft out of your sex before slamming back into you, still suckling on your nipple as he begins to truly fuck you. He slams in and out of you, starting to build up speed as his barbed shaft rubs at every little nerve in your pussy. The bobcat atop you grabs and gropes at your hips, kneading your ass and holding you tight while fucking you, now with wild abandon.";
		say "     You in turn hold him tightly and against the breasts that he's so much enjoying, and you find yourself reaching an unexpected orgasm which sends you screaming in pleasure. [if Player is male]Your male-hood, pressed tightly against your stomach, shoots a jet of seed directly between your two bodies. [end if]The tight grip of your climaxing sex doesn't slow him in the slightest, and he continues thrusting into you at a breakneck pace. Still sensitive from your first orgasm and with his barbed cock rubbing against delicate nerves, you find yourself reaching another orgasm quickly following the first, then another, and a fourth, all one after another. You can feel the bobcat's hot breath against your chest as he speaks. 'What. Big. Jerks. Get!' He mewls into one of your nipples, soft paws gripping your hips possessively right before he hilts himself deep inside of you, and explodes inside of your willing body.";
		WaitLineBreak;
		say "     Rope after rope of thick feline seed fills up your womb with an impressive amount of cat spunk. A little delirious from the amount of orgasms you've received, you hold unto the bobcat for dear life and cry out in pleasure as jets of cum fill your sex and spill out of your plugged lips. [if Player is male]There's also a large puddle of sticky seed now running down your entire body and soaking into the dirt below. [end if]Wrapped tightly around the feline, him pressed into your chest, you reach one final climax as you feel his own orgasm winding down. Leaking bobcat cum from your well-fucked cunt, your sex again grips around his now stationary member hilted inside of you and triggers an orgasm that knocks you out cold...[fimpregchance]";
		say "     Waking up sometime later, you quickly sit up and look around. You're fairly sore from the fight and fuck as you stumble to your feet and brush yourself off. Most of your lower half is all but covered in drying cum, and your lips taste of the bobcat you tried to rape, but luckily it looks like all of your stuff is still here. You're also no longer where you were. It seems that you were dragged to a different part of the woods to avoid you finding the bobcat's home again.";
		now Resolution of Bobcat Encounter is 24; [fought, lost, got fucked (female)]
	else:
		say "     The bobcat leaps at you, back paws first and knocks you down with surprising force, landing on your upper body and pinning you to the ground. His naked, feline crotch rests on your chest, semi flaccid at about six inches, likely from the adrenaline of the battle. 'Jerk!' he yells down at you, growling and baring his small sharp teeth. He then takes a moment to look you over, his eyes moving over your chest where his flaccid, barbed member rests, then moving to look behind him and down your lower body as his growling snarl turns to a grin. He looks back at you, still grinning tellingly before his two soft paws go to move aside any obstructions from your chest to tweak your nipples roughly[if Player is male]. You can't help but moan in both pain and pleasure while your body starts to heat up and your male member starts to fully engorge[end if].";
		say "     The cat creature chuckles at your reactions while he starts to stroke himself off in your face. His feline, ribbed member now at its full eight inches in length, his wild but enticing musk fills your senses, causing a wave of heat to wash over you. The dominant cat looks down at you with wide, amber eyes filled with lust. 'Hmm, jerks like you don't deserve it, but you're gonna taste my victory.' He finishes by moving his cute butt further up your chest and pressing his dick against your lips. A little surprised, your mouth gasps open, and the tip of his tapered cock presses in.";
		WaitLineBreak;
		say "     You can taste his musky member and even a little sticky pre that leaks from the end of it. Having an opening to your sweet mouth, he thrusts forward further, pressing his bumpy cock to the back of your throat. You gag a bit, but he's unrelenting and thrusts in deeper, nearly hilting all eight inches in your throat. He then withdraws it entirely, leaving you staring at his musky cock covered in your saliva. With one hand on his member and another on the back of your head, he moves up to drag his furry sack up your chin and over your lips. Your nose pressed directly under his member and your lips against his soft pearls, you get a full delivery of his unique, horned-up smell.";
		say "     Overwhelmed by the smell and the sensation of having your face buried in this creature's sex, you again, maybe unconsciously, open your lips in a gasp. He takes advantage and draws his nuts into your mouth while your traitorous tongue, overwhelmed by hormones, reaches out to caress those furry orbs. He gasps a little as your tongue begins working his sack. 'Ooh, a real ball slut, huh?' he says, laughing rather adorably. 'Good,' he adds before pressing the rest of his crotch into your face, silencing any answer that you may have had.";
		WaitLineBreak;
		say "     After a few moments of indulging himself on your tongue, gently stroking himself off, he backs up suddenly and thrusts forward without warning. He buries his entire length into your salivating maw and mewls in pleasure as he does. Now both hands on your head, he begins to throat fuck you. Slowly at first then faster as he leans forward, now on all fours and leaning his entire body over your head as he humps downwards. His claws brace himself on the dirt below as he hilts himself over and over again in your throat. Tiny jets of pre shoot forward every thrust or so to cover your tongue and throat in his flavor.";
		say "     It gets to the point where he's fucking your throat so vigorously that your vision is starting to blur. The dark fur pressing into your face grows darker and darker as his thrusting grows deeper and longer, giving you little time to breath. Right before you start to fade from consciousness, you can feel the cat boy press every inch of his barbed cock into your throat and hold it there. A split second later, a torrent of feline cum spills fourth and directly into your cock hungry stomach. It spills out and into your mouth, then around your lips and chin, right before your eyes close and everything goes silent.";
		WaitLineBreak;
		say "     Waking up some unknown time later, you wake up, coughing up seed that had piled up in the back of your throat. Your entire face is covered in dried cat cum and much of it also seems to have slid down your neck and chest. You rub at your sore throat and slowly stand to look around you. You're still in the forest but definitely in a different location, as the tree with the little hole in the base of it is gone. You must have been dragged off so that you couldn't find his home again...";
		now Resolution of Bobcat Encounter is 25; [fought, lost, got face-fucked (male)]

to say FledFromMilo:
	say "     You decide that running is the better part of bravery and book it out of the cat's territory until you lose sight of the creature. You hear yells of anger thrown at you during your retreat, but the feline doesn't pursue you very far. You doubt that you'll be able to find the creature's home again in these forests.";
	now Resolution of Bobcat Encounter is 26; [fought, ran]

Section 2 - Infection

to say BeatMilo:
	if inasituation is true:
		say ""; [taken care of in the event]
	else:
		say ""; [nothing in here so far, only one event fight]

to say LoseToMilo:
	if inasituation is true:
		say ""; [taken care of in the event]
	else:
		say ""; [nothing in here so far, only one event fight]

to say MiloDesc:
	if inasituation is true:
		say ""; [taken care of in the event]
	else:
		say ""; [nothing in here so far, only one event fight]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Bobcat";
	now enemy title entry is "Male bobcat";
	now enemy Name entry is "Milo";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The feline claws at your with razor-sharp paws![or]The bobcat swipes at your feet with his back-paws.[or]The cat rams into you shoulder first![at random]";
	now defeated entry is "[BeatMilo]";
	now victory entry is "[LoseToMilo]";
	now desc entry is "[MiloDesc]";
	now face entry is "a small feline face, with a short cat muzzle that has two incisors poking out of your bottom lip. You have two large feline eyes painted a light-golden color that seem to glow in the dark. Your cat ears flick atop your head a moment as they detect some noise off in the distance.";
	now body entry is "short and lithe but with powerful lean muscles and covered with orange fur. Your digitigrade legs end in clawed feet and your hands in clawed cat-paws.";
	now skin entry is "a soft amber-orange fur over your"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a short nearly one foot long furry tail that protrudes from your well-rounded backside.";
	now cock entry is "dark pink, tapered"; [ Cock. Format as "You have a 'size' [Cock of Player] cock."]
	now face change entry is "it starts to smoosh in on itself and reform in a rather uncomfortable manner into the form of small feline head. You feel yourself over and can feel a new muzzle that has grown on your now furry face. You feel your head and can feel new furry cat ears protruding from the top."; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it remakes itself into that of a three foot tall anthro bobcat with digitigrade legs ending in sharp paws, along with your hands which end in wicked claws."; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it starts to tickle, then itch, and when you move to scratch the irritated area, you notice a patch of amber-orange fur sprout up from your skin. Then it starts to spread until your whole body is itching, and you're left squirming in place. After a moment of scratching and writhing in discomfort, you stand to find yourself fully covered in this short orange fur."; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your backside begins to hurt a moment, and then you hear a faint [']pop['] sound that causes you to swivel around and look behind you and down to the source. There atop your well-rounded ass is a short, foot long cat tail, covered in orange fur."; [ ass change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your groin begins to ache and burn, forcing you to your knees as you struggle to free your sex and examine the pained area. As you grab hold of where your sex once was, there is now a newly formed cat-cock, covered in little ridges and soft barbs, and a new sack of testicles sits below that, covered in a dark-orange pelt."; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 10;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 35; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "cat-like";
	now type entry is "feline";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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


Milo ends here.
