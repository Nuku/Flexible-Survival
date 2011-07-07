Version 1 of Mouse Taur by Nuku Valente begins here.

"Adds a situation to Flexible Survival with a hyperactive mechanic squirrel."


Section 1 - The Situation

Mouse Taur is a situation.
The sarea of Mouse Taur is "Red";

mtrp is a number that varies.
Lastmousefuck is a number that varies. Lastmousefuck is usually 250.
mousemulticock is a number that varies. mousemulticock is usually 0.
mousefucked is a number that varies. mousefucked is usually 0.
mousesister is a number that varies. mousesister is usually 0.
mousespot is a number that varies. mousespot is usually 0.

mousefucking is an action applying to nothing.

understand "fuck Lisa" as mousefucking;
understand "fuck Lisa" as mousefucking;
understand "fuck mouse" as mousefucking;

check mousefucking:
	if Lisa is not visible, say "Who?" instead;

Carry out mousefucking:
	mousefuck;

To mousefuck:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Female Husky":
			now monster is y;
			break;
	if lastmousefuck - turns is less than 12:
		say "She points over to a pile of porn mags, 'Help yourself.'";
		stop the action;
	now lastmousefuck is turns;
	let lust be 0;
	let oversized be 0;
	let response1 be "";
	if mousesister is greater than 0 and facename of player is not "mouse Girl":
		say "'Oh your ears!' she exclaims, approaching and cooing at you. She snuggles firmly, then leans in to kiss, pressing lips tightly for a moment before you feel her sharp teeth sinking into your lip. Brief pain flares before her infection spreads to you rapidly, regaining your mouse ears.";
		now face of player is "set of two long white mouse ears twitching above your head. Add in a slight roden snout looking odd compared to your normal";
		now facename of player is "mouse Girl";
	if mousesister is greater than 1 and tailname of player is not "mouse Girl":
		say "Lisa frowns as she notices your lack of mouse tail. She grabs you suddenly and hauls you across your lap. Without word or warning, she slaps your bottom firmly, and begins to spank you on the spot. Her stinging blows make your ass warm and red even as it begins to change, slowly regaining that lost mouse tail. When it is completely restored, she waves a finger at you, 'And don[apostrophe]t you go losing it again.'";
		now tailname of player is "mouse Girl";
		now tail of player is "You have a powerful rodent body extending out behind you, with a long [skin of player] covered tail twitching lightly behind that.";
	say "Lisa looks you over a moment before lifting her shoulders. 'I live in a porn shop. A little play isn[apostrophe]t new, right?' She moves up to you and runs soft hands across your front and sides, 'Come with me into the back, and be naked when you do it.' She saunters off into her private backroom, through a curtain of hanging beads that softly clack with the sound of jostled wood behind her. ";
	if a random number from 1 to 2 is 1: [ Aggressive]
		if the cunts of the player is 0: [ oral ]
			if cocks of the player is 0: [You are not ready]
				say "When you push through the curtains, ready, she looks at you a bit oddly, 'No offense,' she starts, 'But you seem to be missing parts to play with.' She brushes alongside you back towards the front, 'You come right back when you feel more... capable.'";
				now lastmousefuck is turns plus 12;
				stop the action;
			say "As you push through the curtain, you see she is rubbing over her soft human belly, tail curled behind her as she looks you over. She glances down at your [cock of player] dick and cracks a smile, 'I should warn,' she says in an almost musical trill, 'That will not last for long.' She advances on you, her warm front pressing to you as her left hand reaches to encircle your length and pull at it gently, 'The... disease, it tells me to grab you up like a chocolate, but I am not a beast. You sure you want this?'";
			say "Give her what she wants?";
			if the player consents:
				increase mousefucked by 1;
				say "You nod in consent even as she gives soft tugs with her furred fingers. She smiles, leaning in to nip at your neck and shoulder slowly as she noses her way downwards, sinking down until her lower belly lays on the rug. She pushes you back far enough to sniff lightly at the [cock size desc of player] organ you have, 'I can smell a lot better these days.' she says, 'You are a tough one,' She licks over her lips, then licks over the head of your organ, sending shivers along your body as she starts to bathe it in slow long draws of her slippery and skilled tongue. Your hips buck forward, driving against her as she snorts around it, fine whiskers tickling your [skin of player] thighs. She draws back and nuzzles at you a moment before lifting it up out of the way and reaching for your [ball size] balls and extending her tongue. Warm wetness flows over the sensitive bag of flesh, making your toes clench as she slowly cleans you, even lapping at the joint where sac joins torso. Her softly furred fingers squeeze at you and start pulling in slow strokes as she draws back.[if cocks of player is greater than 1] She noses gently at your extra equipment, then begins to rub her face, stimulating all [cocks of player] cocks in soft strokes of her furry face and agile hands.[end if][line break][line break]You feel your body tense with anticipation and she looks up at you with a grin, 'You want me to swallow?' she asks.";
				say "Let her swallow?";
				if the player consents:
					if cocks of the player is greater than 1:
						say "She squeezes your cocks together as best she can, licking across the slits of them all in as her hands stroke at a feverish pitch. You are unable to hold back any longer, balls contracting with a loud groan as you spray hotly. She latches onto one of your members and begins to guzzle down the bitter salty offering as she begins painted in the remaining seed across hair and shoulders, her hands still stroking and pulling, draining you thoroughly.";
					otherwise:
						say "She rubs along the tip of your member as she opens her snout. She begins to suckle in delicious eagerness as she lets a hand wander, rubbing along your thighs and making your legs quiver with the feel of her light claws pressing to sensitive points. All too abruptly, you feel the pressure explode. She swallows each burst as it comes, guzzling your rich male seed with soft sounds of approval, stroking you until you have no more to give.";
					if "Male Preferred" is listed in feats of player:
						say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";					
						increase mousespot by 1;
					otherwise:
						now monster is 8;
						follow the sex change rule;					
					say "She licks over her lips as she rises back to her feet, '[one of]It is almost a shame I suck the dick right off of things, almost.[or]You look really tired, you should work on your stamina.[or]That was nice, we should play again soon, ok?[at random].' She stretches out slowly, 'I am going to take a shower, Meet you back in front?' While you consider how she could take a shower, she vanishes down a hallway, leaving you to wander back into the front.";
				otherwise:
					say "She Nods and raises her hands to her chest, cupping her breasts and looking up at you with a warm expression. You reach down and sieze the moment, literally, stroking at yourself as she coos and whispers encouragement. Your loins do not dissapoint, a powerful grunt escaping you as you spray across her eager snout and chest in long strands of virile seed. Your vision swims with oddly intense pleasure, perhaps assisted by whatever nanites she has. She is already licking her lips and at you, cleaning the mess a moment before she rises. She draws you in for a firm, somewhat sticky, hug, 'I need to take a shower,' she whispers in an ear before moving down a hallway, leaving you to return to the front.";
					if "Male Preferred" is listed in feats of player:
						say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";					
						increase mousespot by 1;
					otherwise:
						now monster is 8;
						follow the sex change rule;					
			otherwise:
				say "She turns from you, flipping up her tail to expose her thick lipped cunt, but she's already moving away, 'I probably would say no, too. I understand,' she whispers, body waving enticingly as she approaches her clothing at the far end of the room, 'I doubt a guy would want to give up being a guy just for me.'";
				say "That ass looks fine, or is that the nanites talking? Who cares! Go for it?";
				if the player consents:
					increase mousefucked by 1;
					say "Giving in to the urge, you close the distance with the mouse swiftly and seize her by the back hips. She looks over her shoulder at you and gives a leer of a smile as her tail flips up over her back in consent. You are on her in moments, driving your [cock size desc of player] [cock of player] cock deep inside her wet cunt.[if cock length of player is greater than 12] Your cock stretches her eager tunnel to a snug fit as you drive against her, drawing out the most pleased of noises from her with every motion.[otherwise] Her large cunt proves so wet and hot around your eager pole as you begin to rut against her in a fury.[end if][if cocks of player is greater than 1] Your other shaft finds a home in her tight pucker. She goes red in the ears as it nudges at her, then it worked into her trembling form. As it pops fully into her, she coos in delight, rocking back against you.[end if][line break][line break]Her tauric body rocks in powerful motions against your own, taking you further and deeper as she grows warm under you. Your loins burn with a fiery pleasure as you can feel your [ball size] sac contract. You fill her body with a few thick sprays of your virility and she squeals in a shuddering hiss that seems to fill the room. As you both start to relax, your body resting against her, she slowly turns about to half face you, 'And I thought you were going to say no,' she taunts lightly.";
					if "Male Preferred" is listed in feats of player:
						say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";					
						increase mousespot by 1;
					otherwise:
						now monster is 8;
						follow the sex change rule;
				otherwise:
					say "She gently escorts you back to the front, delivers a firm hug, and swats you on your bottom, 'Off with ya.'";
				stop the action;
		otherwise: [ vanilla ]
			say "The smell of her den reaches your nose before you even reach the curtain, with a certainty you know that the beaded barrier is the point of no return.";
			say "Go on through?";
			if the player consents:
				increase mousefucked by 1;
				say "'Well, now that you have decided to join me, lets have a look at you.' she says as you pass through the bead-curtain and you find yourself unable to deny her request, disrobing completely and even giving a little turn. 'Very nice now...' she begins but, seemingly in a split second, pounces at you.[line break][line break]Standing above you, her bodies weight pinning you against the floor she murmurs, 'Such a pretty one too. Tell me dear, are you thirsty?' you have just enough time for your mind to process the strangeness of it before you feel her turning, taking advantage of your confusion. Looking up now you see her neither-lips descend down, coming to rest at the end of your nose.[line break][line break]The smell, the sight, it builds and you find yourself almost unable to reach out with your tongue, to touch her. 'Hold on, I have something for you too.' the mouse says and you feel a coldness at your feminine folds as she lines up a large dildo. Eyes wide, you give a gasping yelp as she starts to work it in and out, soon realizing your tongue is buried in her folds. The taste, the feel, overwhelm you when combined with the driving thrusts of the toy she is slowly working further and further into you. Moments pass, moments when all you can think about is how big it feels inside you, how wonderful she tastes, when without warning your pleasure reaches its peak and, pressing your face against the mouse's ample mound, you scream your lust as wave after wave breaks over you.[line break][line break]Somewhere in all the heat and need, the flavor of her changes and soon the sound of squeaking cries is heard as a torrent of her honey is poured into your welcome mouth.";
				if "Male Preferred" is listed in feats of player:
					say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";					
					increase mousespot by 1;
				otherwise:
					now monster is 8;
					follow the sex change rule;
			otherwise:
				say "Turning, you shake your head, what were you thinking...";
	otherwise: [ Passive ]
		say "Parting the curtain, you step into the back room, looking about in a bit of a daze. At first, you can't sense the mouse at all and walk a little further in, worried she might be in trouble when you sense her, quite safe, in the room, alone, with you.[line break][line break]";
		say "Continue?";
		if the player consents:
			increase mousefucked by 1;
			if the cunts of player is 0: [ Have player eat her out ]
				say "'There you are, well, see anything you would like?' the mouse asks you over her shoulder. In the middle of a pile of pillows she sits, coyly looking over her shoulder, her rear prominently on display for you. Eyes wide at the sight, you pad forward, one par reaching instinctively to rub at that perfect, mousy, rear. 'Have a taste, it won't bite.' she says, breaking you of your trance, making you smile as you lean down. The smell reaches you and, feeling  little light headed, you snake out your tongue as you lean into her, lapping at her outer lips.[line break][line break]'Oh yes, that[apostrophe]s wonderful dear, right, right, oh yes right there.' she murmurs delightfully as you warm to the task. Working your fingers around her you hold her open as you begin to work your tongue deeper and deeper, delving for the source of the amazingly flavored honey that greets your sense of taste at every lick. As you continue, you find the little places that seem to make her quiver, taking stock of them as it were. Without warning the mouse you begin to play at each of them, changing the order, again and again. All too soon a mousy scream can be heard and your whole face becomes damp with her discharge. 'Oh... oh yes dear, come, let me clean you up.' she urges, helping you into a cuddle as she turns, lapping at your face, 'Let me take good care of you.' she adds with a smile, tongue pausing for just a moment to speak.[line break][line break]";
			otherwise: [ Have her eat out player ]
				say "'Well aren[apostrophe]t you just a cutie?' the mouse exclaims, seeing you sway slowly into the room. The mouse-taur is watching you from a big pile of pillows in one corner, seeing you notice her she smiles widely, 'Well? Come on over, I don't bite unless you ask nicely.' she says, beckoning you over. An urge, a need, compells you to disrobe for her and in moments every last stitch of clothing is on the floor.[line break][line break]";
				if the cocks of player is 0:
					say "'Perfect.' the mouse utters, one paw raised and reaching for your own hand, seeming to draw your own up, meeting it, taking it.[line break][line break]";
				otherwise:
					say "The mouse wrinkles her nose a little at the sight of your [cock of player] [if the cocks of player is 1]member[otherwise]members[end if] but, spying the honey pot below, beckons you closer with an outstretched arm.[line break][line break]";
				say "Drawing you closer the mouse leans forward, her stiff little whiskers tickling your belly as she begins to nuzzle and lick at you. Looking down into her eyes you are caught by the look of adoration she gives you. As you open your mouth to compliment her she cuts you short, 'Shhh, no words little one, let me make this your day.' she whispers as she goes back to nuzzling, slowly descending down, past your own waist to the folds she had been admiring not moment earlier.[line break][line break]Her first lick almost takes your knees out from under you, her second and third actually do and you fold into her arms. Head lifted back, you can't express the pleasure her tongue is giving you adaquately in words and settle for whining gasps as she works that muscle into your depths again and again, one of her paws supporting you against her[if the breasts of player > 1], the other kneeding your breasts[end if]. Working at your folds, again and again her licking causes lighting to strike your nerves as the talented mouse-girl is relentless in digging every drop of your honey. In one moment the world seems to shake and lights wink around the edge of your vision as pleasure explodes, taking you on a wonderful ride.[line break][line break]";	
			say "Waking up, you find yourself laying in the mouses arms, 'Morning.' she whispers softly when she notices you awake. With a kiss she settles your feet to the floor and gives you a little swat on the rear, sending you back to your tasks.";
			if "Male Preferred" is listed in feats of player:
				say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";					
				increase mousespot by 1;
			otherwise:
				now monster is 8;
				follow the sex change rule;	
		otherwise:
			say "She gently escorts you back to the front, delivers a firm hug, and swats you on your bottom, 'Off with ya.'";
	increase morale of player by 15;
	increase mousefucked by 1;

After resolving a Mouse Taur, try looking;

Instead of Resolving a Mouse Taur:
	if mtrp is 0:
		say "A voice suddenly rises, startling you. Spinning about in alarm, you see a creature approaching you. She has a body that reminds you of a basic house variety mouse, if expanded until it were six feet long. Where its head should be is the belly and upper torso of a humanoid. As she approaches, her two C or D cup breasts sway in counterpoint to her two hips. Her face is mostly human, with fine whiskers, large round rodent ears and just enough snout to know it's there. She smiles at you, showing off bucked teeth, 'Hello', she says, 'I was watching you roam around and thought you might like some company.'";
		wait for any key;
		if cocks of player is greater than 0 and cunts of player is less than 1:
			say "She looks you over critically, placing her paw like hands on her hips and leaning a bit, 'I was hoping for something a little more...' she trails off, then shakes her head, 'Nevermind that, I am being rude. You will be just fine, I[apostrophe]m sure, with some work.' She smiles brilliantly and offers a hand, 'Lisa, you are?'";
		if cunts of player is greater than 0 and cocks of player is greater than 0:
			say "'I get the feeling you are what I want and some extra, huh... Life sure has gotten more interesting since the lights went out,' she says with a friendly expression, 'Glad to run into someone who can talk. My name is Lisa. What's your name?";
		if cunts of player is greater than 0 and cocks of player is less than 0:
			say "She approaches closer, reaching to embrace you. You flinch with worry, but no harm befalls as she hugs you softly to her soft and warm body. Your face is drawn against her soft tits as her hand rubs your back quietly a moment, 'Poor little dear, lost in all this ruin and chaos. I'm Lisa, but you can call me mom if you prefer, or sis, that works.'";
		if cunts of player is less than 0 and cocks of player is less than 1:
			say "She sniffs the air lightly and looks at you with some confusion, 'You must have had such a hard time of it,' she says with some sympathy, 'I am Lisa, nice to meet you.'";
		wait for any key;
		say "You give you name and begin idly chatting about time before everything went bad. You settle with her and she pulls out some snacks, sharing with you as you talk with her. She was a recently graduated major in education, 'I planned to be a teacher,' she explained, 'Grade school, but then this happened.' It seems that some mice that lived in her house became infected. 'They never bit me or anything,' she explained, 'I'm pretty certain their fur got onto a bit of my food. It took a long time to change.' But change she did, becoming a curvy mouse taur that wandered the city alone, fending for herself, 'Or so I did. Hey, here's my address. You come by anytime, say hello, ok?'[line break] Meal time over, you both rise. She gives you a firm parting hug, and turns to walk off into the red light area, long furry tail swaying behind her.";
		decrease hunger of player by 20;
		if hunger of player is less than 0, now hunger of player is 0;
		now Porn Store is known;
		now mouse taur is resolved;
				
Porn Store is a room. It is fasttravel. It is private.

The description of Porn Store is "It was once a den of sin, now mostly quiet. It smells fresh and clean. A small picture on the counter shows a familiar looking female, presumably before she became a mouse creature. She is quite recognizable, at least in the face and general build. Most of the pictures show her alone. The porn is still present, stacked in neat piles or arranged on the shelves. Only a few are out of place. Girls on Girls 23, Lesbone 7 and Cunning Linguist Part 4.";
Lisa is a person.
The description of Lisa is "A mouse taur. Her mouse like body is six feet long and about three feet tall where it flows into the curvy form of a well built, mostly human, female. Her hands are somewhat paw like and she has whiskers and grand round ears. Besides that, she is human from the belly up, with enticing breasts that wobble with her motions for your eyes. Her entire form is covered in soft mouse grey fur, except for the end of the faint snout she has, twitching pinkly.";
Lisa is in Porn Store.
The conversation of Lisa is { "Why a porn store? Well no one else cared about it, so why not?", "I guess I won't be a teacher now, you think?", "Did you do something with your hair?", "Don't mind the porn, unless you want to watch some of it.", "I am glad you visited. I was getting lonely.", "How are you?" };

When play begins:
	add "Mouse Taur" to infections of Furry;
	add "Mouse Taur" to infections of Girl;

When play ends:
	if mousefucked is greater than 1 and humanity of the player is greater than 10:
		say "You receive an occasional letter or call from Lisa. Turns out she made it through alright and has joined forces with the [apostrophe]Prometheans[apostrophe], Sounds like some kind of wierd cult thing, but at least she is ok. You remain good pen pals.";
		increase score by 5;
		if mousespot is greater than 0:
			say "She writes that you remain to be the only male she's ever laid with that didn[apostrophe]t become a female afterwards. After many years of exchanged letters, she admits that she misses the moment and wishes she had stayed closer at your side. Maybe.... They say it is never too late.";
			increase score by 10;
 
Mouse Taur ends here.
