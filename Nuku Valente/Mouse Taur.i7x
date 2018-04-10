Version 2 of Mouse Taur by Nuku Valente begins here.
[Version 2.1.1 - conversion to 'lastfuck']

"Adds a situation to Flexible Survival with a mouse taur living in a porn store."


Section 1 - The Situations	[two ways to meet Lisa now]

Mouse Taur is a situation.
The sarea of Mouse Taur is "Red".
mtrp is a number that varies.
When play begins:
	add Mouse Taur to badspots of furry;
	add Mouse Taur to badspots of girl;

After resolving a Mouse Taur, try looking;

Instead of Resolving a Mouse Taur:
	if mtrp is 0:
		say "     A voice suddenly rises, startling you. Spinning about in alarm, you see a creature approaching you. She has a body that reminds you of a basic house variety mouse, if expanded until it were six feet long. Where its head should be is the belly and upper torso of a humanoid. As she approaches, her two C or D cup breasts sway in counterpoint to her two hips. Her face is mostly human, with fine whiskers, large round rodent ears and just enough snout to know it's there. She smiles at you, showing off bucked teeth. 'Hello,' she says. 'I was watching you roam around and thought you might like some company.'";
		attempttowait;
		if cunts of player > 0 and cocks of player > 0:
			say "     'I get the feeling you are what I want and some extra, huh... Life sure has gotten more interesting since the lights went out,' she says with a friendly expression. 'Glad to run into someone who can talk. My name is Lisa. What's your name?";
		else if cocks of player > 0:
			say "     She looks you over critically, placing her paw like hands on her hips and leaning a bit. 'I was hoping for something a little more...' she trails off, then shakes her head. 'Nevermind that, I am being rude. You will be just fine, I'm sure, with some work.' She smiles brilliantly and offers a hand. 'Lisa. You are?'";
		else if cunts of player > 0:
			say "     She approaches closer, reaching to embrace you. You flinch with worry, but no harm befalls as she hugs you softly to her soft and warm body. Your face is drawn against her soft tits as her hand rubs your back quietly a moment. 'Poor little dear, lost in all this ruin and chaos. I'm Lisa, but you can call me mom if you prefer, or sis, that works.'";
		else:
			say "     She sniffs the air lightly and looks at you with some confusion. 'You must have had such a hard time of it,' she says with some sympathy. 'I am Lisa, nice to meet you.'";
		attempttowait;
		say "     You give your name and begin idly chatting about time before everything went bad. You settle with her and she pulls out some snacks, sharing with you as you talk with her. She was a recently graduated major in education, 'I planned to be a teacher,' she explained, 'Grade school, but then this happened.' It seems that some mice that lived in her house became infected.";
		say "     'They never bit me or anything,' she explained, 'I'm pretty certain their fur got onto a bit of my food. It took a long time to change.' But change she did, becoming a curvy mouse taur that wandered the city alone, fending for herself, 'Or so I did. Hey, here's my address. You come by anytime, say hello, ok?'";
		say "     Meal time over, you both rise. She gives you a firm parting hug, and turns to walk off into the red light area, long furry tail swaying behind her.";
		increase mtrp by 1;
		PlayerEat 20;
		now Porn Store is known;
		now mouse taur is resolved;
		now find porn store is resolved;

[ New event added by Shadowwolf94]
Find Porn Store is a situation.  The level of Find Porn Store is 5.
The sarea of Find Porn Store is "Red".
When play begins:
	add Find Porn Store to badspots of furry;
	add Find Porn Store to badspots of girl;
	add Find Porn Store to badspots of hermaphrodite;

After resolving a Find Porn Store, try looking;

Instead of Resolving a Find Porn Store:
	if mtrp is 0:
		say "     You come across an odd looking store that still seems intact. After checking the exterior, you figure out that it's some sort of pornographic material based store. You walk over to the door and grab hold of the handle, twisting it and turning it in an attempt to open it. Scowling at your failure, you back up and get ready to ram the door.";
		say "     As you dash forward the door swings open and a large mouse taur steps out. Unable to slow down in time you ram into the taur, sending you both crashing to the floor. Your head a little dizzy, you stand up and lean against a wall to recover. Hearing the mouse taur shift, you look over as she gets up. Shaking her head clear she looks over and glares at you.";
		say "     'What the hell were you thinking, you idiot?  Do you know how long it took me to properly secure that door? Then you come along and just plan to smash it down! Who the hell do you think you are?' You blink and splutter in response, trying to explain that you were simply looking for supplies, but it appears that she'll have none of your excuses. Unknown to the both of you, it seems that the crash and your loud argument have attracted some attention from one of the locals.";
		challenge "Tigress Hooker";
		say "     After the encounter with the tigress in the alley, the mouse taur comes out with a long pole and squirt gun filled with foul liquid, chasing off the tigress with angry yells about staying away from her store. You turn around and begin profusely apologizing to the mouse taur before you get the same treatment. She eventually just sighs and accepts that you really didn't mean any harm.";
		say "     'Well, I guess I might as well introduce myself then, I'm Lisa, I live here. I suppose you can come and visit sometimes, if you want. Maybe the two of us could roll around on the floor for fun next time, he?' she adds with a wink.";
		increase mtrp by 1;
		move the player to the Porn Store;
		now battleground is "void";
		now Porn Store is known;
		now mouse taur is resolved;
		now find porn store is resolved;


Section 2 - Porn Store and Lisa

Porn Store is a room. It is fasttravel. It is private.
The description of Porn Store is "[pornstoredesc]".

Lisa is a person.  Lisa is in Porn Store.
The description of Lisa is "     A mouse taur. Her mouse-like body is six feet long and about three feet tall where it flows into the curvy form of a well-built, mostly human female. Her hands are somewhat paw like and she has whiskers and grand round ears. Besides that, she is human from the belly up, with enticing breasts that wobble with her motions for your eyes. Her entire form is covered in soft mouse grey fur, except for the end of the faint snout she has, twitching pinkly.".
The conversation of Lisa is { "Squeak!" }.

mousefucked is a number that varies. mousefucked is usually 0.
mousespot is a number that varies. mousespot is usually 0.
lisaartemiscount1 is a number that varies.
lisaartemiscount2 is a number that varies.

instead of sniffing Lisa:
	say "     The mousetaur smells very feminine and murine. She wears a soft perfume and scented oils. There is a strong scent of females and sex about her person.";

instead of sniffing Porn Store:
	say "     The porn store smells of scented oils and candles, lube, latex toys, secret desires and backroom sex.  There is also the smell of mouse [if HP of Sven > 49 and HP of Sven < 99]and snow leopard from its residents[else]from its resident[end if].";

to say pornstoredesc:
	let T be 0;
	say "     It was once a [']den of sin['], now mostly quiet. It smells fresh and clean. A small picture on the counter shows a familiar-looking female, presumably before she became a mouse creature. She is quite recognizable, at least in the face and general build. Most of the pictures show her alone. The porn is still present, stacked in neat piles or arranged on the shelves. Only a few are out of place. Girls on Girls 23, Lesbone 7 and Cunning Linguist Part 4.";
	if HP of Sven is 52:
		now T is 1;
		say "[line break]     Upon your return to the porn store, you find a new feline here.  This female snow leopard has pink markings on her white fur and is wearing a red bathing suit that struggles to hold in her ample bosom of six breasts.  You smile to her and ask if she's a friend of Sven's.  The snowmeow blushes and hides her face behind her fluffy tail.  Your brain roughly switches gears as you realize that this buxom kitty IS Sven.  Fortunately, Lisa returns from the back, having heard the door and greets you.  'Ah!  I see you've been getting reacquainted with my dear Svetlana,' she says, running a paw playfully up the feline's side.";
		say "     Sven, or Svetlana as she is now, mews softly at the pleasant touch and watches you nervously to see your reaction to her change.  You smile politely and she relaxes a little, purring as the mouse's paws move over her body.  Her swimsuit, being quite tight over her large rack, has a perceptible camel toe showing between her legs, which is where Lisa has let one of her paws wander.  She brushes over the snowmeow's covered pussy, rubbing and teasing her until there's a growing wet patch in her swimwear.  'She's so much more fun now that my pet kitty's got a nice, wet pussy.  You should give her a try sometime.'  She teases the snowmeow like this for a little while before eventually tiring of the game for now to tend to the store.";
		now HP of Sven is 53;
	if HP of rubber tigress is 8 and companion of player is rubber tigress:
		if T is 1, attempttowait;
		say "[line break]     [if T is 1]While you're distracted by Svetlana[else if Sven is in Porn Store]As you're greeting Lisa and Sven[else if Svetlana is in Porn Store]As you're greeting Lisa and Svetlana[else]As you're greeting Lisa[end if], Artemis pads around the store in idle feline curiosity.  That is, until her attention is caught by the glass display case under the counter.  Looking inside it, she mewls plaintively, leaning in closer and closer for a better look until the front of her rubbery face is mooshed up against it and flattened out.  Drawn by her unusual behaviour, you nudge her aside and look into the cabinet.";
		say "     Behind the glass, among the selection of DVDs and magazines stored there are a pair of sex toys.  The first is an exotically shapely dildo, having a definite feline shape and 'rubbery pleasure barbs' as the box calls them.  The second is a clear, flexible sleeve and purports itself to be a 'realistic vagina toy' according to its packaging.  Artemis nuzzles your face and gives another plaintive mewl before flattening her muzzle against the glass again.  Given her proclivity for eating plastics, perhaps she wants to eat them as well.";
		attempttowait;
		say "     Given the feline's interest in the toys, you ask Lisa about them.  'Well, I'd set them aside for a potential customer who wanted them, but the kitty's not been back for quite some time.  At this point, I suspect he got caught by some critter out there and has gone feral.  Poor guy.'  She scritches her chin, pondering for a moment.";
		say "     'How does this sound?  Since they're probably not coming back, I could sell them off to you and your kitty.'  Artemis mrowls eagerly and nuzzles against your hip, purring loudly, clearly seeking to endear herself to you to get her desired treats.  'But since money's no good and I won't take those silly freecred, I guess you can maybe do me a favour instead to pay for it.  Not that kind of favour,' she adds quickly.";
		attempttowait;
		if hellspawn is not banned:
			say "     'There's been some succubi in the area who have been harassing my store.  And it's too bad, too.  They look like they'd be a lot of fun if they'd just be more neighbourly,' adds wistfully, licking her lips at the thought of those sexy females.  'If you'll go around and deal with some of them, warning them to not bother my store, I'd appreciate it.  If you beat up four of them, let's say, I'll consider those paid for and Ms. Meowlyface here can have them.'  Artemis ignores the final comment, mewling again and purring happily.  You pet her head and agree to Lisa's deal.";
			now lisaartemiscount1 is 1;
		else:
			say "     'There's been some kangaroo girls in the area who have been harassing my store.  And it's too bad, too.  They look like they'd be a lot of fun if they'd just be more neighbourly,' adds wistfully, licking her lips at the thought of those sexy females.  'If you'll go around and deal with some of them, warning them to not bother my store, I'd appreciate it.  If you beat up four of them, let's say, I'll consider those paid for and Ms. Meowlyface here can have them.'  Artemis ignores the final comment, mewling again and purring happily.  You pet her head and agree to Lisa's deal.";
			now lisaartemiscount2 is 1;
		now HP of rubber tigress is 9;


instead of conversing the Lisa:
	if lisaartemiscount1 is 5 or lisaartemiscount2 is 5:
		say "     Having helped deal with her [if hellspawn is not banned]demoness[else][']roo[end if] problem, you tell Lisa that you've driven off several of them.  She smiles at the news and heads towards the counter.  'I thought that might be the case.  There's been a lot less trouble from them lately.  It's looking like the word's getting around among them not to harass my place.  I hate to resort to such tactics, but until they become more civil about it, I can't have them bugging me and my few customers just because it's a sex shop.'";
		say "     As she's been talking to you, she's opened up the cabinet and taken out the toys reserved for Artemis[if companion of player is rubber tigress], much to the feline's mewling delight.  She nuzzles at your hip and winds around your legs, threatening to topple you over in her eagerness[end if].  You take the two boxes from Lisa, grumbling a little that it's a lot to do just so she can have a tasty treat.  The mousetaur giggles at this and leans over the counter.  'I couldn't help noticing that your feline friend's a little lacking under the tail.  Maybe your rubber kitty's wants a little more out of them than you think.'  [if companion of player is rubber tigress]As Artemis mrowls all the louder, [end if]Lisa slides a tube of rubber cement across the counter with a playful grin on her murine face.  Hmm... Maybe you'd best take a closer [bold type]look[roman type] at the rubber tigress.";
		now HP of rubber tigress is 10;
		now lisaartemiscount1 is 0;
		now lisaartemiscount2 is 0;
	else if rabbitsibling is 3: [Sandra Quest]
		say "     Figuring this is the best place to look for something that might interest Sandra, you ask Lisa if she has any rabbit-themed toys.";
		say "     'Oh? I see you've found some interesting company!' She gestures at your distinctive rabbit ears. 'Hmm... I think I might have something...' She goes into the back room, the sound of tussled containes softly filling the air until she finally returns.";
		say "     'This what you looking for?' She displays a distinctly carrot-shaped dildo, and a rather oversized one at that. 'This was clearly meant as a novelty toy, not really intended for use, but these days there's really no such thing.' As you reach for it, she pulls it back. 'Tsk, now then, I can't just give this away on a whim! How about this, for a bottle of clean water, I'll give it to you, deal?'";
		if player consents:
			if water bottle is owned:
				delete water bottle;
				say "     Handing over the bottled water, Lisa gives you the novelty dildo.";
				say "     'Have fun!' Turning away to attend to her own matters, you have the large orange thing in your possession now, it's probably best to return to Sandra right away.";
				now rabbitsibling is 4;
			else:
				say "     Sadly, you don't have one to spare, you'll need to return with one to obtain the item.";
		else:
			say "     Shrugging at you, she stows the item in the back room once more. You imagine your only course of action right now is to deliver the buttled water.";
	else if HP of Sven is 50:
		say "     [one of]'Why a porn store? Well, no one else cared about it, so why not?'[or]'I used to work here part-time before this all started, so I figured it'd be a fun place to stay.'[or]'I guess I won't be a teacher now, you think?'[or]'Did you do something with your hair?'[or]'Don't mind the porn, unless you want to watch some of it.'[or]'I am glad you brought your cute friend by.  He's very sweet.  And don't worry, I think we'll get along famously.'[or]'How are you?'[or]While you chat with Lisa, she scritches a paw along Sven's back, grinning as he purrs.  He tries to hide his blushing face behind his tail.[or]Lisa gives Sven's ears another scritch, getting the shy fellow to purr a little from behind his tail.[at random]";
	else if HP of Sven is 51:
		say "     [one of]'Why a porn store? Well, no one else cared about it, so why not?'[or]'I used to work here part-time before this all started, so I figured it'd be a fun place to stay.'[or]'I guess I won't be a teacher now, you think?'[or]'Did you do something with your hair?'[or]'Don't mind the porn, unless you want to watch some of it.'[or]'I am glad you brought your cute friend by.  He's very sweet.  And don't worry, I think we'll get along famously.'[or]'How are you?'[or]While you chat with Lisa, she scritches a paw along Sven's back, grinning as he purrs and arches his back into her touch.  He still blushes a little, but is not nearly so red.[or]Lisa gives Sven's ears another scritch, getting the shy fellow to purr a little from behind his tail.[or]Lisa puts her arms around Sven from behind and runs them over his chest.  He notices you watching and blushes profusely.  He tries to conceal the bulge in his shorts with his tail.[or]'Sven is turning into such a nice kitty.  He's always so polite and quiet.  Not a bother at all.  I'm glad to help him out in any way I can,' she adds with a little grin.[at random]";
	else if HP of Sven is 52:
		say "ERROR-LISA-52T: You should not be able to speak to me at this point!";
	else if HP of Sven is 53 or HP of Sven is 54:
		say "     [one of]'Why a porn store? Well, no one else cared about it, so why not?'[or]'I used to work here part-time before this all started, so I figured it'd be a fun place to stay.'[or]'I guess I won't be a teacher now, you think?'[or]'Did you do something with your hair?'[or]'Don't mind the porn, unless you want to watch some of it.'[or]'I am glad you brought your cute friend by.  He's made a very lovely girl.  And don't worry, I'll be keeping good care of her.'[or]'How are you?'[or]While you chat with Lisa, she scritches a paw along Svetlana's back, grinning as she purrs and arches his back into her touch.  The shy snowmeow blushes a little at the ears, but nuzzles up against the mousetaur affectionately.[or]Lisa gives Svetlana's ears another scritch, getting the shy girl to purr happily.[or]Lisa puts her arms around Svetlana from behind and runs them along her sides.  She smiles bashfully to you when she notices you watching.[or]'Svetlana has become such a fine kitty.  She's always so polite and quiet.  And so much fun snuggle up to at night,' she adds with a little grin.[or]'I hope you're pleased with my pretty kitty, Svetlana.'[or]Lisa runs a paw along Svetlana's side before cupping her rear.  'Feel free to play with my pet kitty any time you like, sweety,' she tells you, making the snowmeow hide her face behind her fluffy tail.  But you can hear her purring and catch a glimpse of her smiling as well.[at random]";
	else:
		say "     [one of]'Why a porn store? Well, no one else cared about it, so why not?'[or]'I used to work here part-time before this all started, so I figured it'd be a fun place to stay.'[or]'I guess I won't be a teacher now, you think?'[or]'Did you do something with your hair?'[or]'Don't mind the porn, unless you want to watch some of it.'[or]'I am glad you visited. I was getting lonely.'[or]'How are you?'[at random]";


Section 3 - Fucking

mousefucking is an action applying to nothing.

understand "fuck Lisa" as mousefucking.
understand "fuck mouse" as mousefucking.

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
	if lastfuck of Lisa - turns < 12:
		say "She points over to a pile of porn mags, 'Help yourself.'";
		stop the action;
	now lastfuck of Lisa is turns;
	let lust be 0;
	let oversized be 0;
	let response1 be "";
	say "Lisa looks you over a moment before lifting her shoulders. 'I live in a porn shop. A little play isn't new, right?' She moves up to you and runs soft hands across your front and sides, 'Come with me into the back, and be naked when you do it.' She saunters off into her private backroom, through a curtain of hanging beads that softly clack with the sound of jostled wood behind her. ";
	if a random number from 1 to 2 is 1: [ Aggressive]
		if the cunts of the player is 0: [ oral ]
			if cocks of the player is 0: [You are not ready]
				say "When you push through the curtains, ready, she looks at you a bit oddly, 'No offense,' she starts, 'But you seem to be missing parts to play with.' She brushes alongside you back towards the front, 'You come right back when you feel more... capable.'";
				now lastfuck of Lisa is turns plus 12;
				stop the action;
			say "As you push through the curtain, you see she is rubbing over her soft human belly, tail curled behind her as she looks you over. She glances down at your [cock of player] dick and cracks a smile, 'I should warn,' she says in an almost musical trill, 'that will not last for long.' She advances on you, her warm front pressing to you as her left hand reaches to encircle your length and pull at it gently. 'The... disease, it tells me to grab you up like a chocolate, but I am not a beast. You sure you want this?'";
			say "Give her what she wants?";
			if the player consents:
				increase mousefucked by 1;
				say "You nod in consent even as she gives soft tugs with her furred fingers. She smiles, leaning in to nip at your neck and shoulder slowly as she noses her way downwards, sinking down until her lower belly lays on the rug. She pushes you back far enough to sniff lightly at the [cock size desc of player] organ you have, 'I can smell a lot better these days,' she says. 'You are a tough one.' She licks over her lips, then licks over the head of your organ, sending shivers along your body as she starts to bathe it in slow long draws of her slippery and skilled tongue. Your hips buck forward, driving against her as she snorts around it, fine whiskers tickling your [skin of player] thighs. She draws back and nuzzles at you a moment before lifting it up out of the way and reaching for your [short ball size] balls and extending her tongue. Warm wetness flows over the sensitive bag of flesh, making your toes clench as she slowly cleans you, even lapping at the joint where sac joins torso. Her softly furred fingers squeeze at you and start pulling in slow strokes as she draws back.[if cocks of player > 1] She noses gently at your extra equipment, then begins to rub her face along it, stimulating all of your [cocks of player] cocks in soft strokes of her furry face and agile hands.[end if][line break][line break]You feel your body tense with anticipation and she looks up at you with a grin. 'You want me to swallow?' she asks.";
				say "Let her swallow?";
				if the player consents:
					if cocks of the player > 1:
						say "She squeezes your cocks together as best she can, licking across the slits of them all in as her hands stroke at a feverish pitch. You are unable to hold back any longer, balls contracting with a loud groan as you spray hotly. She latches onto one of your members and begins to guzzle down the bitter salty offering as she's being painted with the remaining seed across hair and shoulders, her hands still stroking and pulling, draining you thoroughly.";
					else:
						say "She rubs along the tip of your member as she opens her snout. She begins to suckle in delicious eagerness as she lets a hand wander, rubbing along your thighs and making your legs quiver with the feel of her light claws pressing to sensitive points. All too abruptly, you feel the pressure explode. She swallows each burst as it comes, guzzling your rich male seed with soft sounds of approval, stroking you until you have no more to give.";
					if "Male Preferred" is listed in feats of player:
						say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";
						increase mousespot by 1;
					else:
						follow the sex change rule;
					say "She licks over her lips as she rises back to her feet. '[one of]It is almost a shame I suck the dick right off of things. Almost.[or]You look really tired. You should work on your stamina[or]That was nice. We should play again soon, ok?[at random]' She stretches out slowly. 'I am going to take a shower. Meet you back in front?' While you consider how she could take a shower, she vanishes down a hallway, leaving you to wander back into the front.";
				else:
					say "She nods and raises her hands to her chest, cupping her breasts and looking up at you with a warm expression. You reach down and seize the moment, literally, stroking at yourself as she coos and whispers encouragement. Your loins do not disappoint, a powerful grunt escaping you as you spray across her eager snout and chest in long strands of virile seed. Your vision swims with oddly intense pleasure, perhaps assisted by whatever nanites she has. She is already licking her lips and at you, cleaning the mess a moment before she rises. She draws you in for a firm, somewhat sticky, hug, 'I need to take a shower,' she whispers in an ear before moving down a hallway, leaving you to return to the front.";
					if "Male Preferred" is listed in feats of player:
						say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";
						increase mousespot by 1;
					else:
						follow the sex change rule;
			else:
				say "She turns from you, flipping up her tail to expose her thick lipped cunt, but she's already moving away, 'I probably would say no, too. I understand,' she whispers, body waving enticingly as she approaches her clothing at the far end of the room, 'I doubt a guy would want to give up being a guy just for me.'";
				say "That ass looks fine, or is that the nanites talking? Who cares! Go for it?";
				if the player consents:
					increase mousefucked by 1;
					say "Giving in to the urge, you close the distance with the mouse swiftly and seize her by the back hips. She looks over her shoulder at you and gives a leer of a smile as her tail flips up over her back in consent. You are on her in moments, driving your [cock size desc of player] [cock of player] cock deep inside her wet cunt. [if cock length of player > 12]Your cock stretches her eager tunnel to a snug fit as you drive against her, drawing out the most pleased of noises from her with every motion[else]Her large cunt proves so wet and hot around your eager pole as you begin to rut against her in a fury[end if].[if cocks of player > 1] Your other shaft finds a home in her tight pucker. She goes red in the ears as it nudges at her, then it works into her trembling form. As it pops fully into her, she coos in delight, rocking back against you.[end if][line break][line break]Her tauric body rocks in powerful motions against your own, taking you further and deeper as she grows warm under you. Your loins burn with a fiery pleasure as you can feel your [short ball size] sac contract. You fill her body with a few thick sprays of your virility and she squeals in a shuddering hiss that seems to fill the room. As you both start to relax, your body resting against her, she slowly turns about to half face you, 'And I thought you were going to say no,' she taunts lightly.";
					if "Male Preferred" is listed in feats of player:
						say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";
						increase mousespot by 1;
					else:
						follow the sex change rule;
				else:
					say "She gently escorts you back to the front, delivers a firm hug, and swats you on your bottom, 'Off with ya.'";
				stop the action;
		else: [ vanilla ]
			say "The smell of her den reaches your nose before you even reach the curtain, with a certainty you know that the beaded barrier is the point of no return.";
			say "Go on through?";
			if the player consents:
				increase mousefucked by 1;
				say "'Well, now that you have decided to join me, lets have a look at you,' she says as you pass through the bead-curtain and you find yourself unable to deny her request, disrobing completely and even giving a little turn. 'Very nice now...' she begins but, seemingly in a split second, pounces at you.[line break][line break]Standing above you, her bodies weight pinning you against the floor she murmurs, 'Such a pretty one too. Tell me dear, are you thirsty?' you have just enough time for your mind to process the strangeness of it before you feel her turning, taking advantage of your confusion. Looking up now you see her neither-lips descend down, coming to rest at the end of your nose.[line break][line break]The smell, the sight, it builds and you find yourself almost unable to reach out with your tongue, to touch her. 'Hold on, I have something for you too,' the mouse says and you feel a coldness at your feminine folds as she lines up a large dildo. Eyes wide, you give a gasping yelp as she starts to work it in and out, soon realizing your tongue is buried in her folds. The taste, the feel, overwhelm you when combined with the driving thrusts of the toy she is slowly working further and further into you. Moments pass, moments when all you can think about is how big it feels inside you, how wonderful she tastes, when without warning your pleasure reaches its peak and, pressing your face against the mouse's ample mound, you scream your lust as wave after wave breaks over you.[line break][line break]Somewhere in all the heat and need, the flavor of her changes and soon the sound of squeaking cries is heard as a torrent of her honey is poured into your welcome mouth.";
				if "Male Preferred" is listed in feats of player:
					say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";
					increase mousespot by 1;
				else:
					follow the sex change rule;
			else:
				say "Turning, you shake your head, what were you thinking...";
	else: [ Passive ]
		say "Parting the curtain, you step into the back room, looking about in a bit of a daze. At first, you can't sense the mouse at all and walk a little further in, worried she might be in trouble when you sense her, quite safe, in the room, alone, with you.[line break][line break]";
		say "Continue?";
		if the player consents:
			increase mousefucked by 1;
			if the cunts of player is 0: [ Have player eat her out ]
				say "'There you are, well, see anything you would like?' the mouse asks you over her shoulder. In the middle of a pile of pillows she sits, coyly looking over her shoulder, her rear prominently on display for you. Eyes wide at the sight, you pad forward, one paw reaching instinctively to rub at that perfect, mousy, rear. 'Have a taste, it won't bite,' she says, breaking you of your trance, making you smile as you lean down. The smell reaches you and, feeling little light headed, you snake out your tongue as you lean into her, lapping at her outer lips.[line break][line break]'Oh yes, that's wonderful dear, right, right, oh yes right there,' she murmurs delightfully as you warm to the task. Working your fingers around her you hold her open as you begin to work your tongue deeper and deeper, delving for the source of the amazingly flavored honey that greets your sense of taste at every lick. As you continue, you find the little places that seem to make her quiver, taking stock of them as it were. Without warning the mouse you begin to play at each of them, changing the order, again and again. All too soon a mousy scream can be heard and your whole face becomes damp with her discharge. 'Oh... oh yes dear, come, let me clean you up,' she urges, helping you into a cuddle as she turns, lapping at your face, 'Let me take good care of you,' she adds with a smile, tongue pausing for just a moment to speak.[line break][line break]";
			else: [ Have her eat out player ]
				say "'Well aren't you just a cutie?' the mouse exclaims, seeing you sway slowly into the room. The mouse-taur is watching you from a big pile of pillows in one corner, seeing you notice her she smiles widely, 'Well? Come on over, I don't bite unless you ask nicely,' she says, beckoning you over. An urge, a need, compels you to disrobe for her and in moments every last stitch of clothing is on the floor.[line break][line break]";
				if the cocks of player is 0:
					say "'Perfect,' the mouse utters, one paw raised and reaching for your own hand, seeming to draw your own up, meeting it, taking it.[line break][line break]";
				else:
					say "The mouse wrinkles her nose a little at the sight of your [cock of player] [if the cocks of player is 1]member[else]members[end if] but, spying the honey pot below, beckons you closer with an outstretched arm.[line break][line break]";
				say "Drawing you closer the mouse leans forward, her stiff little whiskers tickling your belly as she begins to nuzzle and lick at you. Looking down into her eyes you are caught by the look of adoration she gives you. As you open your mouth to compliment her she cuts you short. 'Shhh, no words, little one. Let me make this your day,' she whispers as she goes back to nuzzling, slowly descending down, past your own waist to the folds she had been admiring not a moment earlier.[line break][line break]Her first lick almost takes your knees out from under you, her second and third actually do and you fold into her arms. Head lifted back, you can't express the pleasure her tongue is giving you adequately in words and settle for whining gasps as she works that muscle into your depths again and again, one of her paws supporting you against her[if the breasts of player > 1], the other kneading your breasts[end if]. Working at your folds, again and again her licking causes lighting to strike your nerves as the talented mouse-girl is relentless in digging every drop of your honey. In one moment the world seems to shake and lights wink around the edge of your vision as pleasure explodes, taking you on a wonderful ride.[line break][line break]";
			say "Waking up, you find yourself laying in the mouse's arms. 'Morning,' she whispers softly when she notices you awake. With a kiss she settles your feet to the floor and gives you a little swat on the rear, sending you back to your tasks.";
			if "Male Preferred" is listed in feats of player:
				say "Your body humms loudly as your innate resistance throws off the sexual change attempting to occur inside your manly body.";
				increase mousespot by 1;
			else:
				follow the sex change rule;
		else:
			say "She gently escorts you back to the front, delivers a firm hug, and swats you on your bottom, 'Off with ya.'";
	increase morale of player by 15;
	increase mousefucked by 1;


Section 4 - Endings

When play ends:
	if mousefucked > 1 and humanity of the player > 9:
		increase score by 5;
		say "     You receive an occasional letter or call from Lisa.  It turns out she made it through alright and has joined up with a group called the [']Prometheans['].  It sounds like some kind of weird cult thing, but at least she is happy and safe. You remain good pen pals with the mousetaur you met in that fallen city";
		if mousespot > 0:
			say ".  She writes that you remain to be the only male she's ever laid with that didn't become a female afterwards.  After many years of exchanged letters, she admits that she misses the moment and wishes she had stayed closer at your side.  Maybe... well, they say it is never too late.";
			increase score by 10;
		else:
			say ".";
	if HP of Sven is 54 and humanity of player > 9:		[Svetlana endings]
		if cocks of player > 0:
			say "     Svetlana keeps in touch with you[if mousefucked > 1] as well[end if], even coming to visit you at times when her mistress permits it.  It seems Lisa's quite busy with her duties (which are never really elaborated upon), which keeps her from accompanying her pet.  Burly guards keep the pink snowmeow safe on these journeys, making you feel that Lisa has become someone of import.  You consider asking the pink kitty at times, but her lustful appetite for your attention during these visits always distracts you.  You have long, energetic breeding sessions with the kitty, making sure she's well and truly knocked up before letting her leave.  She and Lisa won't allow anyone else to breed the pink snowmeow but her brave hero, so you always make sure to do your duty as best and as often as you can during these rare visits.";
		else:
			say "     Svetlana keeps in touch with you[if mousefucked > 1] as well[end if], even coming to visit you at times when her mistress permits it.  It seems Lisa's quite busy with her duties (which are never really elaborated upon), which keeps her from accompanying her pet.  Burly guards keep the pink snowmeow safe on these journeys, making you feel that Lisa has become someone of import.  You consider asking the pink kitty at times, but her lustful appetite for your attention during these visits always distracts you.  You have long, lustful romps with the kitty, soaking up all the lavish pleasures she's learned on how to please the female body from her mistress during these rare visits.";

Mouse Taur ends here.
