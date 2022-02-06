Version 4 of Smilodon Male by Gherod begins here.

"Adds a male Smilodon encounter to the Urban Forest"

[ Version 1 - Created File ]
[ Version 2 - Made it an unique infection. Added More scenes]
[ Version 3 - Ranfer is now a recruitable companion]
[ Version 4 - Ranfer gets a shrinking shroom scene]

[Stats]

[ Lust - Interest in the Player ]
[ 0: None at all ]
[ 1, 2, 3: Counting the sexual interactions ]
[ 4: Ranfer starts offering sex instead of fighting ]
[ 5: Ranfer will ask the player to let him become their bodyguard ]

[ Libido - Sex states ]
[ 0: Nothing ]
[ 1: Can sex him up anytime as companion or NPC ]
[ 99: Player decided to keep Ranfer as an encounter only ]


to say GenerateTrophyList_Smilodon_Male:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "smilodon male fur" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Smilodon Male Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Sabretooth_naked_icon;
		if HP of Player > 0: [player submitted]
			if player is submissive:
				say "     As you drop to your knees and raise your hands up in surrender, the big feline retracts his claws and approaches you, putting a paw over your chin and pulling you close to his soft fur, nearly pinning you down under his big body as he forces you to sit on the ground and below him. 'Skipping the fighting, then, isn't it? Good [boygirl]... I'm a catman made for love, not for war.' he says, giving the side of your waist a tap. 'Now come touch me... I know you want to.' he adds, grabbing your hand and rubbing it across his chest, having you feel his soft fur under your palms. 'Petting the cat is much better than fighting him, yeah? Bet you want him to give you a big treat...' adds the smilodon with a predatory grin, as things are about to get dirtier...";
			else:
				say "     As you drop to your knees and raise your hands up in surrender, the big feline man assesses the situation with plenty of interest, retracting his claws and looking at you some more, as he approaches you steadily. 'Figured the big cat is too much for you to handle, huh? Or maybe you just wanna try him out that badly?' he says, giving his furred nuts a little scratch as they bounce around heavily. 'Don't worry, I'll let you.' he adds, teasing you to touch him and feel his soft fur all over his large body. 'Give the cat a nice petting... and he'll give you a big treat.' adds the smilodon with a predatory grin, as things are about to get dirtier...";
		else:
			say "     Having scratched you from head to feet, your body feels just too tired to continue fighting him, not to mention the lingering pain of his strikes demanding you to stop and give up. He then approaches you, ready to pounce at you, until he realizes you have just thrown the fight and declared him as the winner. 'Aw, play is over? Alright... Then I suppose you have my reward?' he says, as he begins to touch and grab you closer to his soft fur. 'I bet you secretly wanna get your hands on this big strong catman... Make him [italic type]purr[roman type] in bliss and joy, yeah...? Well, if you do that, he might give you a big treat...' adds the smilodon with a predatory grin, as things are about to get dirtier...";
		WaitLineBreak;
		let randomnumber be a random number from 1 to 2;
		if randomnumber is:
			-- 1: [fuck]
				say "     When the large feline gets his hands on your rear, you know what he wants. Giving both your asscheeks a hungry squeeze, you are prompted to bend over for him as he [if player is naked]enjoys the feeling of your exposed cheeks in his grasp[else]removes any gear between him and your butt[end if]. Now, you are all his, as he slides one of his paws down on your [if player is female]pussy[else]hole[end if] to rub at it. 'You've got a [if player is female]nice wet one[else]nice tight one[end if], there... I'm gonna enjoy drilling it.' With these words, the sizable male gets a good grip on you and pulls you to him, rubbing his furred sheath against your behind which only engorges by each passing second. A much warmer and harder piece of meat emerges from it, poking at your sensitive [if player is female]curls[else]hole[end if] as it throbs harder and harder.";
				say "     He then pins you down underneath him completely, making you arch your back and raise your behind just so he can begin to thrust his length inside you. Grabbing you by the hips, he pulls you to him as his thick pulsing rod slides in, past your [if player is female]lower lips[else]entrance[end if] and deeper in. You hear him almost purr in delight as he feels your insides hug around his erection tightly the more he shoves in you, and all you feel is his sizable manhood claiming more and more space within you. He then brings his full weight over you, putting one of his arms around you to caress your jaw and keep your head up, as he brings his muzzle over the back of your skull.";
				WaitLineBreak;
				say "     Feeling his breath ticking the sides of your sensitive neck, you also hear him growl as he keeps thrusting, rubbing his cock in and out of you with more tenderness than one would expect from such a brute looking beast such as him. The feline kisses and licks at you in dominant affection, picking up the pace as time goes by. It goes from slow and steady thrusts to faster and harder pounding, with each passing second rougher and deeper, the sounds of clashing flesh getting louder as all his energy goes to the strength of his hips and glutes, fully fueling his strength to fuck you more and better. The large cat grabs you and squeezes you tighter underneath him, growling by your ear, going at it as fast as he can...";
				say "     'Unngh... I'm gonna fill you up, [boygirl]... Breed that sexy [if player is female]cunt[else]ass[end if] of yours any second now...' he warns you, panting like an olympian athlete as he fucks you like one, non-stop for what seems to be minutes, making sure he strokes, squeezes and rubs your whole body as much as he can, actually caring a bit for your enjoyment once he reaches for your [if player is male]cock, stroking it merrily and enthusiastically[else]chest, softly tweaking your nipples[end if]... 'Grr, here it comes... Take it all in... Oh, fuck yesss!' The large feline explodes in a blissful of cum that coats your [if player is female]womb[else]insides[end if] generously, filling you up for about a full minute of virile jizz.";
				if player is male:
					say "     You were not left behind on the climax, as his stroking, combined with the prostate smashing you experienced until this, that big hard cock throbbing and pounding at your sensitive pleasure spot, just made you cum as hard onto the ground, a gush of sperm making a trail forward with the force it came through.";
				WaitLineBreak;
				if player is submissive:
					say "     Then, the smilodon cuddles with you for some additional time, praising your submission to him and stroking your head and face as if you were his pet. 'You've been such a good [boygirl] to me... I should keep you, to be honest. Breed you full everyday and fuck you until you can't walk. You'd like that, wouldn't you?' he asks you, licking at your neck with more of that dominant affection of his, tempting you to follow through with his words. 'I gotta go now, but I'll want your [if player is female]pussy[else]ass[end if] ready for me when we meet again, yeah? I'll pound you even harder, then, and fill you up even more.'";
				else:
					say "     Then, the smilodon cuddles with you for some additional time, not really caring if you would like to or not. His strength overpowers yours at this point, and you do not really have a choice. 'Wasn't that a good time, you and me? Fucking like animals, you taking my load... Why can't you realize it'd be so much better if you were my little slut...?' he teases you, licking at your neck with more of that dominant affection of his. 'Next time we meet, just bend over. Take my cock. You'll enjoy it way, way more like that, trust me...'";
				say "     With those being his last words, he lets go of you, getting up and leaving you lying down on the floor. Giving his balls another scratch, he admires the sight of you for some seconds, then turns tail and leaves, walking triumphantly.";
				WaitLineBreak;
				say "     It takes you some time to recover from that big cat's pounding, and once you do, you stand up and manage to grab your things to get ready to leave.";
				if player is female:
					CreatureSexAftermath "Player" receives "Pussyfuck" from "Smilodon Male";
				else:
					CreatureSexAftermath "Player" receives "AssFuck" from "Smilodon Male";
			-- 2: [facefuck]
				say "     As you feel the softness of his feline fur, you drop to your knees in front of him as your hands follow over to his thighs. A thick furred sheath now hangs before your eyes as the fleshy tip of his member begins to peek through, then slowly exiting its shelter to come greet you in its full glory. It is pretty much human shaped, albeit more red in color, its main distinguishing factor being the furry package it resides in. Its about ten inches of length now throb in anticipation as it comes poking at you in the face, with the girth of a tall soda can. 'You do not deserve such a reward, as you are a pretty bad [boygirl]... But I figured you just needed to try it and see how good it feels.' he teases you, grabbing his member and rubbing it across your entire face, leaking some precum in the process.";
				say "     The smilodon then points it towards your lips and begins to push against them, sliding a hand over the back of your head to pull you towards him. 'Open up and take it. I promise it's a tasty treat.' he says, chuckling as your lips inevitable part to receive his manhood, which enters your mouth to fill it generously. 'Mmh... That's it... Use your tongue...' the catman continues to order you around as he pets you on the head, his gentle domination making you feel oddly safe. As soon as you are feeling his erection pulse against your tongue, you lick it all over and take a taste of his precum, which causes the feline to thrust into you a little deeper than before. Grabbing your head with both his hands now, he starts to push his cock in and out of your mouth with warm tenderness.";
				WaitLineBreak;
				say "     He lets out a moan as he feels his member approaching your throat, and a mischievous grin forms across his muzzle. 'Feels so good... You're such a good [boygirl] when you want to...' and none too soon he begins to really reach for the depths of your mouth, stretching you there as you tentatively swallow his cock. 'Deep down, yeah...' he encourages you, his deep voice sounding soft and comforting as he continues to pet you, though still holding you tight in his grasp. You find your head being moved back and forth, causing you to rub your lips around his girth as his meat continues to go back and forth in your mouth. As he is practically now facefucking you, there is not much you have to do on your own other than enduring his beastlike lust.";
				say "     As he picks up the pace, fucking your throat deeper and harder, the catman's grunts become more intense. You know he is enjoying himself as joy seems spread across his feline muzzle, to have you on your knees in front of him and completely under his control. He gets a significant rush from dominating you, making you do what he wants, pleasuring and servicing him in any way he deems desired, all the more obvious with how rock hard his cock is as he looks down at you, using your mouth for his blissful enjoyment. 'I'm gonna give you a big filling after this...' he warns, as you think his balls seem to be moving up. Knowing what this means, you brace for the messy impact that is about to come, quite literally.";
				WaitLineBreak;
				say "     Though, he does not let his edge break that easily, slowing down and enjoying these close moments as much as he can, passing you all his affection as he now only slowly thrusts into your mouth. 'You're gonna swallow your big catman's load?' he asks you, stroking your cheek and looking down at you, his big hand feeling soft against your skin. As the male smilodon locks gaze in your eyes, you almost feel compelled to nod. 'That's a nice little kitten. Have it, then... you deserve it.' It is not like you have a choice. Once he tightens his grasp around your head, again, he resumes thrusting at full speed. It does not take long until the large feline blows his full load down your throat, forcing you to swallow his creamy and warm spunk, drop after drop delivered with each throb of his thick cock in your mouth, until the very last.";
				say "     He holds his member deep down your mouth until he is done, only then pulling it out as you struggle to catch your breath. 'Feeling a bit tired? Aw...' With these words, the catman crouches down and takes you for a cuddly embrace, now whispering in your ear";
				if player is submissive:
					say ". 'I really should keep you... have you worship me everyday and unload my balls inside you, feeding you lots and lots of this sweet cum down your throat... Bet you'd like that...' he teases you, licking at your neck with more of that dominant affection of his, tempting you to follow through with his words. 'I gotta go now, but make sure you are ready to kneel the next time we meet. Don't fight it... I know you'll want more of this.'";
				else:
					say ". 'Didn't that feel good? Just letting yourself go... Worshipping me, you swallowing my load... How long will it take for you to understand you'd be so much happier submitting to me, right away...?' he teases you, licking at your neck with more of that dominant affection of his. 'Next time we meet, just kneel and take my cock. You'll enjoy it way, way more like that, trust me...'";
				say "     With those being his last words, he lets go of you, getting up and leaving you kneeling down on the floor. Giving his balls another scratch, he admires the sight of you for some seconds, then turns tail and leaves, walking triumphantly.";
				WaitLineBreak;
				say "     It takes you some time to recover from that big cat's facefucking, and once you do, you stand up and manage to grab your things to get ready to leave.";
				CreatureSexAftermath "Player" receives "OralCock" from "Smilodon Male";
		if Lust of Ranfer < 4:
			increase Lust of Ranfer by 1;

to say Smilodon Male Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Sabretooth_naked_icon;
		say "     After sweat and pain following your intense fight with the large feline, you seem to have finally brought him to his place, as he throws the fight and stops attacking you. 'Grr... You're strong. Gave me a beating, there...' he says, and you realize he is actually struggling with moving. 'I gotta take a rest, here...' He takes a seat against a nearby tree, with his legs spread to each side and feet resting against the dirt, exposing his sizable privates directly into your sight. You can swear his balls just bounced and his sheath pulsed as he looks at you with bedroom feline eyes. 'I suppose you ain't bitch material at all, but maybe we can be buds? I'm really sore right now, so you can go... or stay with me a while. I promise I'm good company...' he says, trying to tease you with a very unsubtle flashing of his slowly growing erection...";
		LineBreak;
		say "     [bold type]Do you want to join the male smilodon?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Join him and give him a consolation blowjob.";
		say "     [link](2)[as]2[end link] - Join him and worship the big catman on your own terms.";
		say "     [link](3)[as]3[end link] - Just leave him.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to join and blow him, [link]2[end link] to join and worship him or [link]3[end link] to take your leave.";
		if calcnumber is 1:
			Linebreak;
			say "     Deciding that you probably want to have fun with the big catman, you look back at him and go join him by the tree. He makes space so that you can lean against him, and immediately puts an arm around your shoulder. 'You've got some moves there. Beat me quite easily. Though I'll have you know, I wasn't trying to hurt you. I'm not much keen on fighting as I am with fucking, even though I have to claws to deal some damage... It's just that fucking is so much better.' he says, moving his paw to stroke your ear as he speaks. 'You're good looking, though. I'd definitely love to fuck you. But I guess you've earned the right to pick, with the thrashing you just gave me.' It seems the feline is giving you a choice in what to do with the time you have left with him.";
			say "     But you already have made a decision...";
			WaitLineBreak;
			say "     Reciprocating his lack of subtlety, you move your hand over to his crotch, past his muscular thigh, which he makes give way so you can reach him down there. He keeps his paw on the back of your skull as he eyes you with interest, wanting to know what you are going to do. He never stops you, not one moment, and a few strokes around his sheath are enough to make the smilodon's cock pulse and throb out of it. It is still shaped pretty much like a human one would, thick and veiny, except it is more red in color and sticks out of a furry package. He lets out a low [italic type]purr[roman type] as you wrap your hand around his meat, stroking it gently as he pets you on the head. 'Mmh... that feels good...' he praises you, looking at you in the eyes and waiting until you do the same.";
			say "     You thought he was leaning in for a kiss, but suddenly, your vision is shifted towards his dick, and you feel his paw pushing you towards it. Not too forcefully though, he simply hints at what he wants, and lets you go for the action on your own. Giving him a suggestive look, you lower your head and begin to kiss his cock, putting your tongue all over it and lick at his shaft while grabbing his furry balls, the thick manhood forcing you to open wide in order to take it all in. 'Ohh yes...' the catman moans, at your willingness to please him, perhaps, as your lips begin to envelop his red meat and allowing the cock to go past them, into your mouth and on top of your tongue as you go deeper and deeper.";
			WaitLineBreak;
			say "     'Mmhh yess... you're good... Love how that mouth feels around my dick...' he says as to encourage you, brushing and petting your head still while praising you for every bit of pleasure you continue to give him. Somehow, this only makes you want to give him more, getting his dong even deeper inside you until it reaches your throat, and so on, effectively deepthroating the cat as he savors the sensations. Doing your best at it, you continue to move your lips up and down through his shaft, never leaving his balls alone, rubbing and squeezing them gently as you allow the big feline to facefuck you a little. He does not thrust at your mouth, but uses both his paws to lead your head in the way he wants.";
			say "     And the way he wants becomes rougher, to the point that you have to regain control and do it yourself. You know he wants it deep and fast, so you provide. Using your hands to help you in the effort, you stroke whatever your mouth can't reach, occasionally replacing your fingers with the warmth of your tongue, until you can really make a mean effort at deepthroating him. He truly appreciates your persistence and determination, letting go of you as he leans his head back, completely relaxing under your care, only moaning and whispering sweet words at you. He is such an affectionate cat that you want to make him cum a lot and very hard, and you enthusiasm shows, soon giving the result it yearns.";
			WaitLineBreak;
			say "     'I'm gonna...!' he tries to warn you, but right then, his cum just explodes out of his rod almost like a firework, gushing away and onto your face as you try to pull exactly before that happens, but obviously to no success. You continue, however, to stroke the feline's cock as much as you can throughout his long orgasm, feeling more and more of his jizz covering your arm and his torso. 'Oh yeah... You're great company too.' he says, grinning at you, not having lost his predatory and fierce expression, but you can tell he is genuinely happy. 'Though you could have swallowed it. I've been told it's really tasty. Can't get enough of it once you let it coat your mouth...'";
			say "     You let him know that you have already done a lot for him, and if you intend to do that one day, you shall. But for now, you have to go. 'Sure thing, cute stuff. Hope we meet again... I'm gonna train so I can pin you down quicker.' he lets you know with a wink and a grin, simply watching you go as you grab your gear to return to your own affairs.";
			CreatureSexAftermath "Player" receives "OralCock" from "Smilodon Male";
			if Lust of Ranfer < 4:
				increase Lust of Ranfer by 1;
		else if calcnumber is 2: [worship]
			say "     Deciding that you probably want to have fun with the big catman, you look back at him and go join him by the tree. He makes space so that you can lean against him, and immediately puts an arm around your shoulder. 'You've got some moves there. Beat me quite easily. Though I'll have you know, I wasn't trying to hurt you. I'm not much keen on fighting as I am with fucking, even though I have to claws to deal some damage... It's just that fucking is so much better.' he says, moving his paw to stroke your ear as he speaks. 'You're good looking, though. I'd definitely love to fuck you. But I guess you've earned the right to pick, with the thrashing you just gave me.' It seems the feline is giving you a choice in what to do with the time you have left with him.";
			say "     But you already have made a decision...";
			WaitLineBreak;
			say "     The smilodon's body is, besides incredibly soft and fluffy, covered in such a large muscular bulk that one average person could easily be subdued by him. Only if he cared enough to put an effort during the fight, though, as he was the one who ended up throwing it. But you can't just not appreciate how strong he is. Leaning over to his side, you begin to feel his arms and chest, to what he replies with a cheeky smile. 'Oh, you wanna feel me all over? Why not, be my guest!' The large feline seems into this idea and starts flexing his bulging biceps at you, which despite being covered in fur, they are quite noticeable from within the soft fluff hugging their shape. His muscles, themselves, feel really hard, but they are very soft to the touch, at the same time.";
			say "     'Don't be shy to kiss them, too.' he suggests, and given how mesmerizing his strong body is, perhaps it is not too much to ask of you. Leaning your head over his arm, you deliver a soft kiss on his biceps, which he playfully bounces with flexing while pushing it slightly onto your face. 'You like strong males, I see...' he comments, amused in fact, as you continue the worship session. Deciding that you have had enough of his big arms, you look over at the smilodon, who seems to be raising his arm even higher, giving you a clear view of his armpit. He does not say anything, only shifting his eyes towards it as he gives you another cheeky grin. You are pretty sure that he wants you there...";
			WaitLineBreak;
			say "     All in good fun, you begin to lean towards the underside of his arms, getting closer to the feline, and before you can process anything, a hand finds itself on the back of your skull, pushing you towards it and effectively causing your face to get practically buried on the smilodon's armpits. All the resistance you could have given is immediately shut down by his overwhelming masculine musk which, you would suppose, has the work of several pheromones working to arouse you to extreme levels. 'You like that, too? You're such a naughty [boygirl]... If you wanted some of that, all you had to do is ask...' he teases you, not letting you escape until you have taken a good whiff of his scent.";
			say "     As you have inadvertently given the male smilodon full control, he now takes the lead as he slowly rolls over to your side, pinning you down under his body, holding himself on all fours, as you feel his erection coming to rub against your midriff. He delicately keeps your head protected around his arm as he positions himself above you, then places both his elbows next to each side of your head, the only things keeping his large pecs from smothering your face... Something that does not sound as bad as you would think, in this situation. In fact, the feline pats the back of your head as you see his chest coming closer and closer... 'Since you love my body so much...' - he says, moving his pec over to your mouth, an unexpectedly hard nipple finding itself slipping past your lips - 'I'll let you... worship me properly...'";
			WaitLineBreak;
			say "     He barely finished these last words and he has to let out a low moan, once he finds your tongue wiggling around his sensitive areolas. There is not as much fur around here, so you can definitely feel the smilodon's warm skin and beating heart against the lower half of your face, and his thick member throbbing crazy the more you suck on his nipple. It seems that the large catman has very sensitive ones! The more you tease him there, the more he comes rubbing his cock against your body, and he loves having you alternate from one pec to the other. Eventually, he gets very comfortable in this position, enough to let his belly rest on top of you, as well, with both his thighs hugging your sides and keeping you really, really trapped underneath him.";
			say "     With how turned on he is with all of this, it is not so surprising that he ends up blasting his load on top of you with a loud grunt, coating your waist and chest in warm feline spunk as you continue to stimulate his nipples. 'Hnng... Fuck...! I... Oh, that really got me horny, didn't it?' he comments, looking down at the mess he just made on top of you as he lifts himself away from your body. A fresh breeze comes brushing against your face as your sober senses return to you. It feels like the smilodon took this chance to dominate you in a sexual approach, as he so much loves. 'I figured you were going to want to have fun with me, either way, so... I took the freedom to apply some of my pheromones on you. And you did a great job.' he adds with the boldest of smiles as he flexes his arms, still sitting on top of you.";
			WaitLineBreak;
			say "     'Anyway, you're great company. I hope next time we can just enjoy each other.' The male smilodon starts to get up, and actually helps you stand up, as well, like the proper gentlecatman he is. 'See you around. I'm gonna train so I can pin you down quicker, the next time we meet.' he lets you know with a wink and a grin as you prepare to leave, simply watching you go as you grab your gear to return to your own affairs.";
			CreatureSexAftermath "Smilodon Male" receives "Other" from "Player";
			if Lust of Ranfer < 4:
				increase Lust of Ranfer by 1;
		else if calcnumber is 3:
			Linebreak;
			say "     Deciding that you are done with the big catman, you refuse his offer and simply turn tail to leave. He says nothing back at you, and so you part ways...";

to say Smilodon Male Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Sabretooth_clothed_icon;
		say "     In front of you stands a large feline male, with an appearance resembling a smilodon from the ice age, except this one's standing on two strong legs supporting his bulky furred body, very much like a werebeast. He sports a pair of long fangs coming out of his mouth, menacingly sharp, emphasizing the fierce look in his feline and fuzzy muzzle, and his muscular body is covered in golden fur with brown stripes and spots, only attaining a lighter color around his front torso. He also has a short brown mane coming from behind his head towards his lower back, and on his behind sticks out a small but fuzzy tail, barely moving. His equipment is quite sizable, with a thick sheath and a pair of hanging nuts that would make some males jealous, inevitably drawing your eyes in as he walks towards you intimidatingly.";
		if player is not dominant and scalevalue of player <= 3: [Ranfer only truly takes interest in non-dominant players who are smaller than him (he's close to the 4 value, so 3 is already smaller)]
			if Lust of Ranfer < 2:
				if player is submissive:
					say "     He gives his own furred sack a not subtle at all scratching while he eyes you from head to toe. 'You know what... Why don't we skip the fighting and just have you bend over for me? Give the big cat some relief and take his load...' he says, noticing your submissive instincts through your body language. 'Or we can play rough. I love playing rough.' he adds, stretching his claws out and getting ready to tackle you.";
				else:
					say "     'Do you like rough play?' he says, sticking his claws out. 'Come on, I won't hurt you... Much.' As soon as he finishes talking, he gets ready to tackle you.";
			else if Lust of Ranfer is 2:
				say "     'Hm... It is you, again. We keep encountering each other, eh?' he says, as he gives his own furred sack a not subtle at all scratching while he eyes you from head to toe. 'Still too keen on putting up a fight? What a drag... It would be so much better if we just had sex. Isn't that the usual outcome, anyway...?' he adds, stretching his claws out and getting ready to tackle you.";
			else if Lust of Ranfer is 3:
				say "     'Hello there, once more. How shall we enjoy ourselves, this time?' he asks, as his gives his own furred sack a not subtle at all scratching while he eyes you from head to toe. 'I just know you'll want to fight me... Makes me think you actually like feeling my body pushing and rubbing against yours as we wrestle each other.' he adds, his sheath giving a twitch as he streches his claws out, getting ready to tackle you.";
			else if Lust of Ranfer is 4:
				say "     'I suppose we are acquaintances, at this point.' he asks, eyeing you while keeping stance over his side. 'But I'm quite tired of fighting you. I'm a feline of love, and I've got so much to give... Why don't we just drop hostilities and spend some time together? I promise I'll take good care of you... I always fill my [boygirl]s lovingly.' he adds, his sheath giving a very obvious twitch, and awaits a reply from you to his offer. It seems the big cat man is not so keen on fighting you, this time.";
				say "     [bold type]What will you do?[roman type][line break]";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Accept his terms.";
				say "     ([link]N[as]n[end link]) - You came here to fight him.";
				if Player consents:
					LineBreak;
					say "     In fact, you are quite done fighting the big smilodon, as well, and he seems to truly welcome you to simply join him for some sex, instead. Naturally, he smiles once you let him know that, indeed, you would like to simply join him for some intimate time, instead of trying to beat him up or failing at it. 'That is most splendid... Come to me, then. Give this manly cat a big hug and tell him what you wanna do. I'd be happy to oblige my good little kitten.' he says to you, spreading his arms and gesturing you to come with a friendly and welcoming smile.";
					if Libido of Ranfer is not 99:
						now Lust of Ranfer is 5;
					WaitLineBreak;
					say "[RanferSexMenu]";
					now combat abort is 1;
				else:
					Linebreak;
					say "     All he has gained from you is a willingness to fight him even more, so you prepare yourself to strike him. 'What a bore... Seems like I'll have to knack some sense into you. Maybe you just like it rough, after all...' As soon as he finishes talking, he gets ready to tackle you.";
					now Lust of Ranfer is 1;
			else if Lust of Ranfer is 5:
				say "     'Hmm... Look who it is...! You can't help but keep coming back to see me? I'm flattered, kitten.' he says, slowly making his way to you, but in a quite non-hostile way. Instead, he seems to only want to take you for an embrace. Given the fact you two spent plenty of good times, already, you do not see any harm in refusing a big hug from the large feline, and he does take you in while [italic type]purring[roman type] deeply. He then looses his grip on you, but keeps you close.";
				WaitLineBreak;
				say "     'I was wondering... Don't you get lonely out there? I think you'd benefit from having a strong bodyguard with you...' he says while stroking your cheek, keeping his muscular body close to yours, allowing you to feel the softness of his fur brushing against you. 'I'd love to be able to take care of my favorite kitten [boygirl] and make sure [SubjectPro] is safe... Wouldn't want any naughty creature to snatch [ObjectPro] away from me. I could tend to [PosAdj] every need and craving... while [SubjectPro] does [PosAdj] best to keep this big cat very happy, in return...'";
				say "     He keeps on touching and feeling you up tenderly, arousal certainly clinging up in the air. 'Pet him a lot... Rub and massage his big muscles... Service and worship him... Anytime... anywhere... A lovely deal, wouldn't you agree? But of course, I won't be in your way if you want to change things up and relieve yourself with someone else, as long as they're not a bad influence on you. I'll make sure no harm comes your way, kitten, nor to any of your friends.'";
				Linebreak;
				say "     Turns out the male smilodon is asking you if you would have him as a [bold type]companion[roman type]. Do you take him with you?";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Of course!";
				say "     ([link]N[as]n[end link]) - No, you'd rather keep him as an acquaintance.";
				if Player consents:
					LineBreak;
					say "     You do not see a reason to refuse the big cat's request, so a simple positive reply is all you need to make him smile. 'Oh, that's lovely!' he says, pulling you tightly against him and giving you a big hug. 'I'm sure you won't regret keeping this large feline of love close to you... And he'll make sure to thank you everyday for it.' He then hands you over something, which seems to be a small whistle. 'Just blow it and I'll be able to hear it from miles away, should help me protect you even when I'm away.' You take the whistle and tuck it away in your pockets.";
					say "     It seems you have made a new companion!";
					WaitLineBreak;
					say "     (Ranfer the Smilodon Bodyguard is now a possible ally! You can make him your active ally by typing [bold type][link]ally Ranfer[end link][roman type] or [bold type][link]ally smilodon bodyguard[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Ranfer[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
					add "Tamed" to Traits of smilodon bodyguard;
					now smilodon bodyguard is tamed;
					move Ranfer to Main & 7th Street;
					choose a row with name of "Smilodon Male" in the Table of Random Critters;
					now area entry is "Nowhere";
				else:
					LineBreak;
					say "     Unfortunately, you are not interested in having a bodyguard like him following you around, so you let him know that you would prefer to keep him as just an acquaintance. He looks at you, very disappointed, and does not even seem to want to insist. 'If that's your wish, I'm no one to contest it. May we meet again, it shall be as usual...' he says, and then proceeds to leave with not even a smile on his face.";
					say "     He really was sad he could not join you...";
					now Libido of Ranfer is 99;
					now Lust of Ranfer is 4;
				now combat abort is 1;
		else:
			say "     'Do you like rough play?' he says, sticking his claws out. 'Come on, I won't hurt you... Much.' As soon as he finishes talking, he gets ready to tackle you.";

Section 2 - Ranfer NPC

Table of GameCharacterIDs (continued)
object	name
Ranfer	"Ranfer"

Ranfer is a man.
ScaleValue of Ranfer is 3. [normal sized]
Body Weight of Ranfer is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ranfer is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ranfer is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ranfer is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ranfer is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ranfer is 6. [length in inches]
Breast Size of Ranfer is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ranfer is 2. [count of nipples]
Asshole Depth of Ranfer is 9. [inches deep for anal fucking]
Asshole Tightness of Ranfer is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ranfer is 1. [number of cocks]
Cock Girth of Ranfer is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ranfer is 10. [length in inches]
Ball Count of Ranfer is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ranfer is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Ranfer is 0. [number of cunts]
Cunt Depth of Ranfer is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ranfer is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ranfer is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ranfer is false.
PlayerRomanced of Ranfer is false.
PlayerFriended of Ranfer is false.
PlayerControlled of Ranfer is false.
PlayerFucked of Ranfer is false.
OralVirgin of Ranfer is false.
Virgin of Ranfer is true.
AnalVirgin of Ranfer is false.
PenileVirgin of Ranfer is false.
SexuallyExperienced of Ranfer is false.
TwistedCapacity of Ranfer is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ranfer is true. [steriles can't knock people up]
MainInfection of Ranfer is "Smilodon Male".
Description of Ranfer is "[Ranferdesc]".
Conversation of Ranfer is { "<This is nothing but a placeholder!>" }.
The scent of Ranfer is "     He smells like one big cat man, masculine with an animalistic scent.".

to say RanferDesc:
	say "     In front of you stands a large feline male, with an appearance resembling a smilodon from the ice age, except this one's standing on two strong legs supporting his bulky furred body, very much like a werebeast. He sports a pair of long fangs coming out of his mouth, menacingly sharp, emphasizing the fierce look in his feline and fuzzy muzzle, and his muscular body is covered in golden fur with brown stripes and spots, only attaining a lighter color around his front torso. He also has a short brown mane coming from behind his head towards his lower back, and on his behind sticks out a small but fuzzy tail, barely moving. His equipment is quite sizable, with a thick sheath and a pair of hanging nuts that would make some males jealous, inevitably drawing your eyes in as he stands before you, with only a loincloth covering it.";

[***********************************************************]
Section 2-1 - Ranfer as Companion
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
smilodon bodyguard	"smilodon bodyguard"

smilodon bodyguard is a pet.
NPCObject of smilodon bodyguard is Ranfer.
understand "Ranfer" as smilodon bodyguard.
IDList of smilodon bodyguard is { "ranfer", "Ranfer", "smilodon bodyguard" }.
printed name of smilodon bodyguard is "Ranfer".
Description of smilodon bodyguard is "[RanferDesc]".
Weapon Damage of smilodon bodyguard is 17.
The level of smilodon bodyguard is 1.
Dexterity of smilodon bodyguard is 13.
The summondesc of smilodon bodyguard is "[SummonRanfer]".
The dismissdesc of smilodon bodyguard is "[DismissRanfer]".
The assault of smilodon bodyguard is "[one of]He leaps forward, snapping and snarling at your enemy.[or]The big smilodon lashes at your enemy with one of his sharp clawed paws, leaving a nasty cut.[or]Leaping towards your enemy, he tackles them with his bulk, nearly knocking them prone.[or]The feline nearly pierces through your enemy's arm with a solid bite, his fangs having only scratched them.[or]Ranfer attempts to subdue your enemy to give you a chance to attack, but only manages to leave a bite on their skin as they break free a bit too quickly.[or]The large feline leaps towards your enemy with surprising agility, forcing them to push themselves out of harm's way with only a scratch.[at random]".
the fuckscene of smilodon bodyguard is "[SexWithRanfer]".

to say SummonRanfer:
	if Ranfer is visible: [summoning while standing next to him]
		say "     You call out Ranfer, inviting him to join you on your daily journeys. 'No harm shall come to my lovely kitten [boygirl] while I draw breath. I'll keep you safe.' He walks up to you, ready to leave.";
	else: [regular summoning]
		say "     You blow the special whistle Ranfer gave you, and within short notice, he appears besides you. 'I'm ready to knock some naughties out for you, kitten. Point me towards them, I shall keep you safe.' He stands ready to go.";

to say DismissRanfer:
	if Player is in Main & 7th Street:
		say "     You tell Ranfer that you don't need him right now, and he should stay at the Library. 'I hate to leave my kitten [boygirl] unprotected, but if that's [PosAdj] will, I shall leave [ObjectPro]. Don't get into any nasty trouble in my absence.' he says, as he makes his way towards your safehouse's door, to keep guard as he usually does.";
	else:
		say "     You tell Ranfer that you don't need him right now, and he should return to the Library. 'Is my kitten [boygirl] certain? There are so many baddies out here that could hurt [ObjectPro]... Just blow the whistle if you run into any trouble during my absence, I'll come to protect you immediately.' With that said, Ranfer walks away, disappearing out of sight.";
	move Ranfer to Main & 7th Street;

Section 3 - Ranfer Talk

RanferDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Ranfer:
	if Ranfer is asleep:
		say "     The large smilodon is deep asleep, splayed out nakedly on his bedroll. [bold type]Do you want to wake him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, you want to talk to him.";
		say "     ([link]N[as]n[end link]) - No, it's not that important.";
		if Player consents: [go after them]
			LineBreak;
			say "     Bending over and giving your feline bodyguard a little shake, Ranfer gives a questioning grunt as he is pulled from his slumber. A moment later, his eyes open and blearily blink at you, after which he quickly sits up when realizing who is waking him. 'Oh, kitten? Is there something you need?'";
			now Sleeping of Ranfer is false;
			say "[RanferTalkMenu]";
		else:
			say "     You decide to let him rest for now.";
	else:
		say "[RanferTalkMenu]";

to say RanferTalkMenu:
	now RanferDoneTalking is false;
	say "     [bold type]What would you like to talk to the male smilodon about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the feline about himself";
	[]
	if Energy of Ranfer > 0:
		choose a blank row in table of fucking options;
		now title entry is "His protective instincts";
		now sortorder entry is 2;
		now description entry is "That is a quite obvious one to notice. Ask about it";
	[]
		choose a blank row in table of fucking options;
		now title entry is "His sexual preferences";
		now sortorder entry is 3;
		now description entry is "He has specific tastes, why not ask him about them";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Ask him for some fur";
		now sortorder entry is 4;
		now description entry is "Should be okay to ask for a fluff of smilodon fur, right";
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
				if (nam is "Himself"):
					say "[RanferTalkHimself]";
				else if (nam is "His protective instincts"):
					say "[RanferTalkInstincts]";
				else if (nam is "His sexual preferences"):
					say "[RanferTalkSex]";
				else if (nam is "Ask him for some fur"):
					say "[RanferTalkAskFur]";
				wait for any key;
				if RanferDoneTalking is false:
					say "[RanferTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Ranfer gives you a worrysome look, but lets you go.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RanferTalkHimself:
	say "     Curiosity strikes you when you begin to think about the male smilodon's origins, so you decide to ask him about them and see what he has to say. 'Hmm... Well, before I was this big fuzzy catman, I was a professional kickboxer.' he says, sounding quite proud of himself. 'Must be quite the surprise for you, knowing that I've always said I don't like violence...! The truth is, I do enjoy a friendly fight! It's totally different than having to kick someone's butt because they're being bad... Hence why I try not to hurt them much, just enough to teach them a good lesson. Though, of course... If anyone would hurt my kitten, they get the worst from me.' It seems your bodyguard knows martial arts, which is a great quality for someone who really wants to keep you safe.";
	say "     But you have to ask why he was so hostile the first time you met, having attacked you on sight. 'Oh, I wasn't attacking you... I was just playing around. In all honesty, I really just wanted to fuck some good [boygirl] who happened to be passing by...' he adds, with a wink. 'Luckily, [SubjectPro] liked it. A lot, it seems.'";
	say "     You suppose that, now, you know more about your large feline companion, and thank him for sharing all this with you.";
	if Energy of Ranfer is 0:
		now Energy of Ranfer is 1;

to say RanferTalkInstincts:
	say "     It is highly noticeable that Ranfer has this enormous instinct to protect and look after others, which is an intriguing trait of his. You ask him about that, and he takes some time to consider an answer. 'I guess it's... just my way of being, really. I'm protective and have always been. Any friends I had, I was always looking after them and making sure they wouldn't get hurt. A lot of them came for hugs, even. Well, some found out they felt a little more attracted to other sides of me... Anyway, they were my buddies, so I had to keep them safe and happy. I like putting smiles on people and offer them a friendly shoulder for whenever they need it. It just feels... good, you know?'";
	say "     What about those friends, does he know anything about them, you ask. 'No, not really... I suppose they've succumbed, or maybe got lucky enough to escape this craziness, but no I don't know... When this all started, we were at a museum... and I was actually staring at an artificially built smilodon. Then last thing I knew, I was a horny one myself, though... not quite like... them. I was kind of a hybrid between an actual smilodon and a human, still walking on two legs and all that. No sign of any of my friends, other than other sex-crazed animal shaped people fucking each other. I thought I'd do better to just escape and not touch anything until I could process stuff in my brain. Good thing I did that, or I'd be just another feral roamer, I'm sure...'";
	WaitLineBreak;
	say "     'I'd prefer just forgetting about it. I don't think I could do anything to save them, so... seeing them turned and as someone else entirely is definitely not what I want to see. I'm happy being with my kitten [boygirl].' he ends, smiling at you.";

to say RanferTalkSex:
	say "     Clearly, Ranfer prefers being a dominant, but what else does he like, you ask him. 'Oh, I love a smaller bottom. Tiny and cute, someone I can carry around, hug and squeeze tightly while I fuck them deep and lovingly... I'm down for either gender, as well, no preference there... As long as they're small cute little fuckable things.' he goes on about, and you can see his loincloth raising slightly as he speaks. 'Though I really enjoy being worshipped and serviced, as well. Nothing better than a dedicated kitten appreciating this body... muscles... everything, from head to paws... And head to feet, when I was still human. I've been doing this since I was able to fuck, quite honestly.' Seems like Ranfer gets really excited at the mere thought of that. Perhaps you should offer that kind of fun, sometime.";

to say RanferTalkAskFur:
	now RanferDoneTalking is true;
	say "     Gently, you ask the big cat if you could have some of his fur. 'Hm... What an odd request. Do you wish to become a smilodon as well? I'm afraid you won't look as big as me, but... the look would definitely suit you. Kind of like a cute smilodon kitten.' As he finishes saying this, he grabs a hold of a big chunk of fluffy golden fur and hands it over to you. 'It grows back up almost instantly, so I suppose I could just keep giving more, if you need.'";
	say "     You thank him for this as you collect his gift.";
	ItemGain smilodon male fur by 1;

Section 4 - Ranfer Sex Menu

RanferSanBoostCooldown is a number that varies. RanferSanBoostCooldown is usually 20000. [@Tag:NotSaved]

instead of fucking Ranfer:
	say "[SexWithRanfer]";

to say SexWithRanfer:
	if scalevalue of player > 3:
		say "     When approaching the large smilodon male, you give him a suggestive glance over his muscular body and tell him you would love to have some fun with him. He, however... seems to find your big size a little off for his tastes, you can tell. 'Well, uh... I'm not so sure, myself... I can't even find the drive you call you [']kitten['], anymore, as you are so much bigger, now... I liked you better when you were smaller, in all honesty!'";
		say "     Ranfer turned you down for being bigger than him. Maybe he just prefers smaller partners...";
	else:
		say "     When approaching the large smilodon male, you give him a suggestive glance over his muscular body and tell him you would love to have some fun with him.";
		if lastfuck of Ranfer - turns < 6:
			say "     He hears you and smiles, takes you in for a gentle embrace, tightly squeezing you around his big furred muscles and gives you a kiss on the forehead... But nothing sexual. 'I'm sorry, kitten, I'm still a little tired from last time... But we can cuddle! Love feeling you close to me...'";
			Linebreak;
			say "     It seems Ranfer is not yet in the mood for sex, but you could cuddle with him. Following his suggestion, [bold type]do you want to?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Of course, cuddles are nice!";
			say "     ([link]N[as]n[end link]) - You took the hug and that is enough, for now.";
			if Player consents:
				LineBreak;
				say "     The warmth and softness of his body and fur makes this a hard one to refuse, and after giving it some thought, you do not really want to, either. So, you nod to him and let him take you, giving in to that fluffy fur of his bulging pecs brushing against your face, his large paw-like hand rubbing the back of your head, those sizable muscled arms around your whole body, tightly wrapped around and squeezing you just enough... 'I love having my kitten in my arms, like this... so peaceful and safe...' he says, in a low voice so deep it makes your insides rumble in such a sweet manner. This sensation has you closing your eyes as you both lean over an inclined surface, enjoying this so relaxing cuddle... You can even hear and feel the big feline [italic type]purr[roman type] as he continues to give you all sorts of touchy affection.";
				say "     And so, you simply remain that way for several minutes, and maybe even a little more than that, as you both enjoy your cuddling time.";
				if RanferSanBoostCooldown <= 8:
					WaitLineBreak;
					say "     After a while, you kind of doze off for a quick nap, but some part of your mind feels relieved and rested.";
					SanBoost 5;
					now RanferSanBoostCooldown is turns;
		else:
			say "     The look on the big feline's eyes says everything, as he immediately takes you in for an embrace, feeling your body up and all over as he leans in for a kiss on your neck. You hear him whisper in your ear with that low and masculine voice... 'I'd love to spend some good time with my kitten [boygirl]... What does [SubjectPro] wanna do?' he asks.";
			say "[RanferSexMenu]";

to say RanferSexMenu:
	say "     [bold type]What would you like to do with the big manly smilodon?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer him a blowjob";
	now sortorder entry is 1;
	now description entry is "Propose to suck his cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Allow him to facefuck you";
	now sortorder entry is 2;
	now description entry is "Offer your throat for his pleasure";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bend over for him";
	now sortorder entry is 3;
	now description entry is "Let him fuck you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship his muscular torso";
	now sortorder entry is 4;
	now description entry is "Appreciate his muscles";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a paw worship";
	now sortorder entry is 5;
	now description entry is "Have him dominate you with his paw-like feet";
	[]
	if glowing mushroom is owned:
		choose a blank row in table of fucking options;
		now title entry is "Have some shrinking shroom fun";
		now sortorder entry is 6;
		now description entry is "Shrink for Ranfer";
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
				if (nam is "Offer him a blowjob"):
					say "[RanferSexOral]";
				else if (nam is "Allow him to facefuck you"):
					say "[RanferSexFacefucked]";
				else if (nam is "Bend over for him"):
					say "[RanferSexGetFucked]";
				else if (nam is "Worship his muscular torso"):
					say "[RanferSexWorshipTorso]";
				else if (nam is "Give him a paw worship"):
					say "[RanferSexWorshipPaws]";
				else if (nam is "Have some shrinking shroom fun"):
					say "[RanferSexShrinkingShroom]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     In fact, you have second thoughts about this, and simply kiss the big cat as you tell him to leave this for another time. 'Aw. I was looking forward to it, kitten... Very well, then...' he replies, with disappointment evident in his expression.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RanferSexOral:
	say "     Reciprocating his openness, you hug him back and let him know your intentions, moving your hand over to his crotch and past his muscular thigh, to which he makes an even bigger smile. His strong hand slips onto the back of your skull as he eyes you with interest, observing you attentively as you reveal what you truly want to do. He never stops you, not one moment, and a few strokes around his sheath are enough to make the smilodon's cock pulse and throb out of it. It is still shaped pretty much like a human one would, thick and veiny, except it is more red in color and sticks out of a furry package. He lets out a low [italic type]purr[roman type] as you wrap your hand around his meat, stroking it gently as he pets you on the head. 'Mmh... that feels good...' he praises you, looking at you in the eyes and waiting until you do the same.";
	say "     You thought he was leaning in for a kiss, but suddenly, your vision is shifted towards his dick, and you feel his paw pushing you towards it. Not too forcefully though, he simply hints at what he also wants, and lets you go for the action on your own. Giving him a suggestive look, you lower your head and begin to kiss his cock, putting your tongue all over it and lick at his shaft while grabbing his furry balls, the thick manhood forcing you to open wide in order to take it all in. 'Ohh yes...' the catman moans, at your willingness to please him, perhaps, as your lips begin to envelop his red meat and allowing the cock to go past them, into your mouth and on top of your tongue as you go deeper and deeper.";
	WaitLineBreak;
	say "     'Mmhh yess... you're good... Love how that mouth feels around my dick...' he says as to encourage you, brushing and petting your head still while praising you for every bit of pleasure you continue to give him. Somehow, this only makes you want to give him more, getting his dong even deeper inside you until it reaches your throat, and so on, effectively deepthroating the cat as he savors the sensations. Doing your best at it, you continue to move your lips up and down through his shaft, never leaving his balls alone, rubbing and squeezing them gently as you allow the big feline to facefuck you a little. He does not thrust at your mouth, but uses both his paw-hands to lead your head in the way he wants.";
	say "     And the way he wants becomes rougher, to the point that you have to regain control and do it yourself. You know he wants it deep and fast, so you provide. Using your hands to help you in the effort, you stroke whatever your mouth cannot reach, occasionally replacing your fingers with the warmth of your tongue, until you can really make a mean effort at deepthroating him. He truly appreciates your persistence and determination, letting go of you as he leans his head back, completely relaxing under your care, only moaning and whispering sweet words at you. He is such an affectionate cat that you want to make him cum a lot and very hard, and you enthusiasm shows, soon giving the result it yearns.";
	WaitLineBreak;
	say "     'I'm gonna...!' he tries to warn you, but right then, his cum just explodes out of his rod almost like a firework, gushing away and onto your face as you try to pull exactly before that happens, but obviously to no success. You continue, however, to stroke the feline's cock as much as you can throughout his long orgasm, feeling more and more of his jizz covering your arm and his torso. 'Oh yeah... You're such a great company...' he says, grinning at you, not having lost his predatory and fierce expression, but you can tell he is genuinely happy. 'Though you could have swallowed it. I've been told it's really tasty. Can't get enough of it once you let it coat your mouth...'";
	WaitLineBreak;
	say "     You let him know that you have already done a lot for him, and if you intend to do that one day, you shall. But for now, you have to go. 'Sure thing, cute stuff. Hope we meet again... There's a lot more where that came from, all eager to be yours.' he lets you know with a wink and a grin, simply watching you go as you grab your gear to return to your own affairs.";
	if smilodon bodyguard is tamed:
		NPCSexAftermath Player receives "OralCock" from Ranfer;
	else:
		CreatureSexAftermath "Player" receives "OralCock" from "Smilodon Male";

to say RanferSexFacefucked:
	say "     As you feel the softness of his feline fur while hugging him back, you let him know exactly what he can do to you... And he really likes to hear it. 'Want me to go rougher on you? Hmm... Delightful... Well, I shall, if you kneel like a good [boygirl]...' he replies, and so you drop to your knees in front of him, with your hands following over to his thighs. A thick furred sheath now hangs before your eyes as the fleshy tip of his member begins to peek through, then slowly exiting its shelter to come greet you in its full glory. It is pretty much human shaped, albeit more red in color, its main distinguishing factor being the furry package it resides in. Its about ten inches of length now throb in anticipation as it comes poking at you in the face, with the girth of a tall soda can. 'Like your muscle catman's thick cock? It's all ready for your mouth...' he teases you, grabbing his member and rubbing it across your entire face, leaking some precum in the process.";
	say "     The smilodon then points it towards your lips and begins to push against them, sliding a hand over the back of your head to pull you towards him. 'Open up, now... and take it all... Just like that...' he says, chuckling as your lips inevitable part to receive his manhood, which enters your mouth to fill it generously. 'Mmh... That's it... Use your tongue...' the catman continues to order you around as he pets you on the head, his gentle domination making you feel oddly safe. As soon as you are feeling his erection pulse against your tongue, you lick it all over and take a taste of his precum, which causes the feline to thrust into you a little deeper than before. Grabbing your head with both his hands now, he starts to push his cock in and out of your mouth with warm tenderness.";
	WaitLineBreak;
	say "     He lets out a moan as he feels his member approaching your throat, and a mischievous grin forms across his muzzle. 'Feels so good... You're such a good [boygirl] to me... Makes me really want to fill you up...' and none too soon he begins to really reach for the depths of your mouth, stretching you there as you tentatively swallow his cock. 'Deep down, yeah...' he encourages you, his deep voice sounding soft and comforting as he continues to pet you, though still holding you tight in his grasp. You find your head being moved back and forth, causing you to rub your lips around his girth as his meat continues to go back and forth in your mouth. As he is practically now facefucking you, there is not much you have to do on your own other than enduring his beastlike lust.";
	say "     As he picks up the pace, fucking your throat deeper and harder, the catman's grunts become more intense. You know he is enjoying himself as joy seems spread across his feline muzzle, to have you on your knees in front of him and completely under his control. He gets a significant rush from dominating you, making you do what he wants, pleasuring and servicing him in any way he deems desired, all the more obvious with how rock hard his cock is as he looks down at you, using your mouth for his blissful enjoyment. 'I'm gonna give you a really big filling after this...' he warns, as you think his balls seem to be moving up. Knowing what this means, you brace for the messy impact that is about to come, quite literally.";
	WaitLineBreak;
	say "     Though, he does not let his edge break that easily, slowing down and enjoying these close moments as much as he can, passing you all his affection as he now only slowly thrusts into your mouth. 'You're gonna swallow your big catman's load?' he asks you, stroking your cheek and looking down at you, his big hand feeling soft against your skin. As the male smilodon locks gaze in your eyes, you almost feel compelled to nod. 'That's a nice little kitten. Have it, then... you deserve it.' It is not like you have a choice. Once he tightens his grasp around your head, again, he resumes thrusting at full speed. It does not take long until the large feline blows his full load down your throat, forcing you to swallow his creamy and warm spunk, drop after drop delivered with each throb of his thick cock in your mouth, until the very last.";
	say "     He holds his member deep down your mouth until he is done, only then pulling it out as you struggle to catch your breath. 'Feeling a bit tired? Aw...' With these words, the catman crouches down and takes you for a cuddly embrace, now whispering in your ear";
	if player is submissive:
		say ". 'I really should keep you... have you worship me everyday and unload my balls inside you, feeding you lots and lots of this sweet cum down your throat... Bet you'd like that...' he teases you, licking at your neck with more of that dominant affection of his, tempting you to follow through with his words. 'Thanks for coming by. I'll definitely love to dominate you, again.'";
	else:
		say ". 'Didn't that feel good? Just letting yourself go... Worshipping me, you swallowing my load... Much better than fighting, yeah?' he teases you, licking at your neck with more of that dominant affection of his. 'Thanks for coming by. I'll definitely love to dominate you, again.'";
	WaitLineBreak;
	say "     With those being his last words, he lets go of you, helping you up and giving your cheek an affectionate stroke. The smilodon then simply watches you go as you grab your gear to return to your own affairs.";
	if smilodon bodyguard is tamed:
		NPCSexAftermath Player receives "OralCock" from Ranfer;
	else:
		CreatureSexAftermath "Player" receives "OralCock" from "Smilodon Male";

to say RanferSexGetFucked:
	say "     When you give the large feline a hug back, you grab his hand and lead it towards your rear, letting him know what you want. As he gives both your asscheeks a hungry squeeze, you are prompted to bend over for him as he [if player is naked]enjoys the feeling of your exposed cheeks in his grasp[else]removes any gear between him and your butt[end if]. Now, you are all his, as he slides one of his paws down on your [if player is female]pussy[else]hole[end if] to rub at it. 'It would be a pleasure, kitten. You've got such a [if player is female]nice wet one[else]nice tight one[end if], down there... I'm gonna enjoy drilling it.' With these words, the sizable male gets a good grip on you and pulls you to him, rubbing his furred sheath against your behind which only engorges by each passing second. A much warmer and harder piece of meat emerges from it, poking at your sensitive [if player is female]curls[else]hole[end if] as it throbs harder and harder.";
	say "     He then pins you down underneath him completely, making you arch your back and raise your behind just so he can begin to thrust his length inside you. Grabbing you by the hips, he pulls you to him as his thick pulsing rod slides in, past your [if player is female]lower lips[else]entrance[end if] and deeper in. You hear him almost purr in delight as he feels your insides hug around his erection tightly the more he shoves in you, and all you feel is his sizable manhood claiming more and more space within you. He then brings his full weight over you, putting one of his arms around you to caress your jaw and keep your head up, as he brings his muzzle over the back of your skull.";
	WaitLineBreak;
	say "     Feeling his breath ticking the sides of your sensitive neck, you also hear him growl as he keeps thrusting, rubbing his cock in and out of you with more tenderness than one would expect from such a brute looking beast such as him. The feline kisses and licks at you in dominant affection, picking up the pace as time goes by. It goes from slow and steady thrusts to faster and harder pounding, with each passing second rougher and deeper, the sounds of clashing flesh getting louder as all his energy goes to the strength of his hips and glutes, fully fueling his strength to fuck you more and better. The large cat grabs you and squeezes you tighter underneath him, growling by your ear, going at it as fast as he can...";
	say "     'Unngh... I'm gonna fill you up, [boygirl]... Breed that sexy [if player is female]cunt[else]ass[end if] of yours any second now...' he warns you, panting like an Olympian athlete as he fucks you like one, non-stop for what seems to be minutes, making sure he strokes, squeezes and rubs your whole body as much as he can, actually caring a bit for your enjoyment once he reaches for your [if player is male]cock, stroking it merrily and enthusiastically[else]chest, softly tweaking your nipples[end if]... 'Grr, here it comes... Take it all in... Oh, fuck yesss!' The large feline explodes in a blissful of cum that coats your [if player is female]womb[else]insides[end if] generously, filling you up for about a full minute of virile jizz.";
	if player is male:
		say "     You were not left behind on the climax, as his stroking, combined with the prostate smashing you experienced until this, that big hard cock throbbing and pounding at your sensitive pleasure spot, just made you cum as hard onto the ground, a gush of sperm making a trail forward with the force it came through.";
	WaitLineBreak;
	say "     Then, the smilodon cuddles with you for some additional time, praising your submission to him and stroking your head and face as if you were his pet. 'You've been such a good [boygirl] to me... I should keep you, to be honest. Breed you full everyday and fuck you until you can't walk. You'd like that, wouldn't you?' he asks you, licking at your neck with more of that dominant affection of his, tempting you to follow through with his words. 'Thanks for coming by. I'll definitely love to have your [if player is female]pussy[else]ass[end if] ready for me when we meet again. I'll pound you even harder, then, and fill you up even more, yeah?'";
	say "     With those being his last words, he lets go of you, getting up and helping you, as well. Giving his balls another scratch, he admires the sight of you for some seconds, then makes sure you are alright. 'Hope you can walk on your own...! But if not, you can always stay with me.' he says, jokingly, as he gives your cheek an affectionate stroke.";
	WaitLineBreak;
	say "     It takes you some time to recover from that big cat's pounding, and once you do, you manage to grab your things to get ready to leave. The smilodon simply watches you go.";
	if smilodon bodyguard is tamed:
		if player is female:
			NPCSexAftermath Player receives "Pussyfuck" from Ranfer;
		else:
			NPCSexAftermath Player receives "AssFuck" from Ranfer;
	else:
		if player is female:
			CreatureSexAftermath "Player" receives "Pussyfuck" from "Smilodon Male";
		else:
			CreatureSexAftermath "Player" receives "AssFuck" from "Smilodon Male";

to say RanferSexWorshipTorso:
	say "     You do not see any issue in hugging the big smilodon back, and as you do, you have the best sensations of his incredibly soft and fluffy body, covered in such a large muscular bulk that one average person could easily be subdued by him. All your touching over his strong musculature has him knowing exactly what you want. Keeping close to him, you begin to feel his arms and chest, to what he replies with a cheeky smile. 'Oh, you wanna feel me all over? Why not, be my guest!' The large feline seems into this idea and starts flexing his bulging biceps at you, which despite being covered in fur, they are quite noticeable from within the soft fluff hugging their shape. His muscles, themselves, feel really hard, but they are very soft to the touch, at the same time.";
	say "     'Don't be shy to kiss them, too.' he suggests, and given how mesmerizing his strong body is, perhaps it is not too much to ask of you. Leaning your head over his arm, you deliver a soft kiss on his biceps, which he playfully bounces with flexing while pushing it slightly onto your face. 'You like strong males, I see...' he comments, amused in fact, as you continue the worship session. Deciding that you have had enough of his big arms, you look over at the smilodon, who seems to be raising his arm even higher, giving you a clear view of his armpit. He does not say anything, only shifting his eyes towards it as he gives you another cheeky grin. You are pretty sure that he wants you there...";
	WaitLineBreak;
	say "     All in good fun, you begin to lean towards the underside of his arms, getting closer to the feline, and before you can process anything, a hand finds itself on the back of your skull, pushing you towards it and effectively causing your face to get practically buried on the smilodon's armpits. All the resistance you could have given is immediately shut down by his overwhelming masculine musk which, you would suppose, has the work of several pheromones working to arouse you to extreme levels. 'You like that, too? You're such a naughty [boygirl]... Glad you are so into this kind of fun...' he teases you, not letting you escape until you have taken a good whiff of his scent.";
	say "     As you have inadvertently given the male smilodon full control, he now takes the lead as he slowly leads you to the ground, having you lie down underneath him as he goes to pin you down under his body, holding himself on all fours. Soon, you also feel his erection coming to rub against your midriff. He delicately keeps your head protected around his arm as he positions himself above you, then places both his elbows next to each side of your head, the only things keeping his large pecs from smothering your face... Something that does not sound as bad as you would think, in this situation. In fact, the feline pats the back of your head as you see his chest coming closer and closer... 'Since you love my body so much...' - he says, moving his pec over to your mouth, an unexpectedly hard nipple finding itself slipping past your lips - 'I'll let you... worship me properly...'";
	WaitLineBreak;
	say "     He barely finished these last words and he has to let out a low moan, once he finds your tongue wiggling around his sensitive areolas. There is not as much fur around here, so you can definitely feel the smilodon's warm skin and beating heart against the lower half of your face, and his thick member throbbing crazy the more you suck on his nipple. It seems that the large catman has very sensitive ones! The more you tease him there, the more he comes rubbing his cock against your body, and he loves having you alternate from one pec to the other. Eventually, he gets very comfortable in this position, enough to let his belly rest on top of you, as well, with both his thighs hugging your sides and keeping you really, really trapped underneath him.";
	say "     With how turned on he is with all of this, it is not so surprising that he ends up blasting his load on top of you with a loud grunt, coating your waist and chest in warm feline spunk as you continue to stimulate his nipples. 'Hnng... Fuck...! I... Oh, that really got me horny, didn't it?' he comments, looking down at the mess he just made on top of you as he lifts himself away from your body. A fresh breeze comes brushing against your face as your sober senses return to you. It feels like the smilodon took this chance to dominate you in a sexual approach, as he so much loves. 'Every time you want to worship me, I'm just gonna do this. It's so much more fun.' he adds with the boldest of smiles as he flexes his arms, still sitting on top of you.";
	WaitLineBreak;
	say "     'Anyway, you're great company. I hope next time we can enjoy each other just as much.' The male smilodon starts to get up, and actually helps you stand up, as well, like the proper gentlecatman he is. 'See you around. I hope, soon.' he lets you know with a wink and a grin as you prepare to leave, simply watching you go as you grab your gear to return to your own affairs.";
	if smilodon bodyguard is tamed:
		NPCSexAftermath Ranfer receives "Other" from Player;
	else:
		CreatureSexAftermath "Smilodon Male" receives "Other" from "Player";

to say RanferSexWorshipPaws:
	say "     Hugging the large feline back, you let him know that you would like to provide him with proper worship, and end up complimenting his large paw-like hands and feet. 'Oh...? Are you a fan of these, little kitten?' he asks as he plants one of his hands on your face, feeling it up while sliding a thick furred finger past your lips. He is careful enough to not let his large claws scratch your tongue as you almost feel compelled to suck on it, all that feeling increasing the closer he brings you to his body. That warm soft fur brushing against your entire self makes you relax as he teases you, filling your mouth with finger after finger as he plays with both your tongue and lips. 'Such a cute little mouth you have... Maybe we could put it to a better use...'";
	say "     Having you locked in his big arms, he finds no issue in bringing you lower. With him still holding you by the head, you quickly sink to your knees while the catman takes a seat against an inclined surface. He makes you look at him, slowly spreading his legs to give you some space to crawl in between them, and you definitely see his erection beginning to rise before you... Though, instead of wanting you to put your lips on his growing cock, you feel his leg brushing against your side. He is slowly pulling it up until his footpaw comes into your visible range, and soon, right on your face. 'A paw lover kitten... what else could I ask for?' he comments as you find that large paw pushing against your mouth, giving you no other choice but to immediately begin to kiss and worship it, while you use your hands to massage it.";
	WaitLineBreak;
	say "     As soon as you begin showing your tender affection for his sizable fuzzy paw, you hear the smilodon let out a low moan as he takes his cock in hand and starts jerking off, watching you work. It looks like this turns him on immensely, feeling your tongue slip in between the thick toes and your hands rubbing around his sole. His second footpaw comes to join his first, landing on the other side of your face and effectively covering it almost completely, rubbing against your cheek and yearning for your attention. You then have to move one hand for each as you alternate your focus, kissing one, licking the other, giving them both their share of good love. As the feline has his legs curled up to have his feet on your face, you are occasionally given a great, broad open view of his hanging sack bouncing up and down as he strokes his cock.";
	say "     'Love having you worship me, kitten...' he tells you as an encouragement to continue to offer him pleasure by his feet. You go from wrapping your lips around his toes to sliding your tongue down his sole, causing some more moans and toe curling on the smilodon's behalf, a clear sign that you should really continue what you are doing. While you are focused on one, the other keeps on rubbing against your face, curling around the top of your head, then rubbing back down and pressing against your cheek in pure lust... 'Lick'em more...' you hear, his low voice high in bliss as you oblige his request, making out with both his paws with the best of his abilities, letting him feel your warm and slick tongue between the toes and around the soles, with your hands offering a so much needed support with continuous caressing and stroking.";
	WaitLineBreak;
	say "     Suddenly, you feel him pushing against you, and you find yourself forced to lie down on your back as his paws stick on top of your face. Then, he forces his big toe down your mouth, quite carefully, and has you suck on it like your life depended on it. In your vision, there is only a large feline in joy and pure ecstacy looking down on you, edging his large cock which stands rock hard and throbbing. 'Keep sucking on it, kitten [boygirl]... Then I'll just have to reward you...' he says, keeping his climax right before the point of no return a little longer, enjoying the view of you down on his feet with a mouthful of a furred toe from his footpaw wiggling against your tongue.";
	say "     As he keeps that one footpaw on you, the other leaves your cheek to help the large smilodon stand up. He admires the view you of sucking on his furred toe as he begins to jerk himself a little faster... then more, as his cock begins to leak heavy drops of precum onto your face... With this, you have an idea of what is going to happen as he picks up the pace... 'Ungh... yes...! Here it is...!' The male smilodon grunts as a generous shot of feline cum lands on his foot and on you, with more following right after as he aims towards your face. The result is a thick layer of spunk covering your head and his paw as he smears it all over your cheeks and lips over nearly a full minute, having pulled his toe off your mouth in the meantime.";
	WaitLineBreak;
	say "     'So fucking good... Mmh... Kitten, you gotta clean my paw, now...' he tells you with a toothy grin, chuckling to himself as you get ready to lick it all off him. And you do a good job, sliding your tongue all over his footpaw once more, swallowing down all the cum you catch. He only lets you go once he deems that his furred toes and soles are all pristine clean, and while it does take a while, he enjoys it thoroughly.";
	if smilodon bodyguard is tamed:
		NPCSexAftermath Ranfer receives "Other" from Player;
	else:
		CreatureSexAftermath "Smilodon Male" receives "Other" from "Player";

to say RanferSexShrinkingShroom:
	ItemLoss glowing mushroom by 1;
	if "Giant Cat" is not listed in traits of Ranfer: [first time]
		say "     You happen to ask Ranfer something else about his preferences, regarding sizes. He raises a furred eyebrow at your question, intrigued at its nature. 'Did you have something in mind?' he asks you, and you pull a glowing mushroom from your inventory. There is a shine in his eyes as he sees what you have in your hands, and you can see him visibly blush. 'U-uh... That's a shrinking mushroom...! Eating it makes you shrink temporarily... W-where did you get it?!' he questions you, stuttering and quite excited. To sate his curiosity, you explain how to get to the cave where they grow, and he seems to pay very close attention to every word you say. He shifts his gaze up and to the side, as if trying to visualize your directions and taking mental notes of its whereabouts.";
		say "     'I've used one of those on a, uh... plaything I had. A wolfie dude. He was carrying one of those with him, and I didn't know what it did, thought it was a treat of some sort. The guy wanted to put his dick in me, and was quite forceful, so... I had to teach him a lesson. Made him my pet and gave him that as a reward for doing what he's told. Then he... got really small. It was... really hot...' he admits to you, blushing again as he clears his throat, but unable to hide the bump in his loincloth as he recalls that memory. 'So, uhm... Did you want to... Do something with that one? I'd... love to have a tiny little kitten to play with, for sure...' Knowing that the big cat seems to really like the idea, you nod and prepare to eat the mushroom.";
		TraitGain "Giant Cat" for Ranfer;
	else: [subsequent times]
		say "     You happen to ask Ranfer if he would be down for some size play, and show him a glowing mushroom you have gathered. His eyes widen with eagerness as he nods. 'Of course, kitten. I'm always ready to play with a shrunken tiny cute thing like yourself' he says, his loincloth wavering slightly as he gets aroused at the idea. Knowing that the big cat seems to really be looking forward to this, you nod and prepare to eat the mushroom.";
	WaitLineBreak;
	say "     Once the glowing mushroom goes in your mouth and you chew it down, you begin to feel the vertigo that comes with it. Your body dims in size and shape as you look at Ranfer in the eyes, the antecipation clearly causing an effect on the smilodon as he patiently awaits what comes next. His cock begins to grow out of his furred sheath from underneath the loincloth, which he flips aside and lets you have a clear look at it, shamelessly stroking it while you begin to shrink. Just like that, the male feline starts looking massive in comparison, and even more as moments pass, your vision getting closer to the ground until Ranfer's footpaws alone are enough to surpass you in height. When you look up, you see a giant catman with a rock solid erection in his hands, so turned on by the situation itself.";
	say "     As the shrinking process reaches its end, Ranfer comes down to get and grab you, bringing you over to the front of his face. You are naked and exposed before his big eyes as he examines your body, appreciating just how small you are. 'Love how tiny you look, little kitten... I might just get used to holding you like this...' he says, almost in a whispering tone, as he brings one finger to rub at your form. His paw-like hands are larger than you are tall, so his touch is enough to overwhelm you as he rubs you in all the sensitive spots, able to reach them all simultaneously with little effort due to how big he is in comparison. 'You're so cute... Makes me wanna keep you safe, even more...'";
	WaitLineBreak;
	say "     The smilodon then pulls his finger away and leans his face onto you, giving your whole front a tentative lick, then another from a different angle, your left side, followed by the next on the right, that slick organ of his coating you in feline saliva, feeling wet and soft against your skin. 'Mmh... you taste good, too. Don't worry, I won't eat you... I just wanna kiss you a lot...' he tells you, and within seconds, you find yourself shoved between his lips, tongue flowing and wiggling all around you as he makes out with your body, much like when he kisses you in the mouth, having you experience his passionate affection in a size-augmented fashion. Some of his whiskers tickle you as he uses every angle he has at his disposal to kiss, lick... and even suck on you.";
	say "     As he presses your tiny body against his mouth, Ranfer lets out a few pleased hums amidst some toned down kisses, to give you some breathing room. Ocasionally, you see him focusing more on your crotch, noticing how well you respond when [if player is male]his tongue rubs across your cock[else if player is female]his tongue rubs across your moist pussy[else]his tongue rubs across your butt[end if] and happily obliging your apparent lust. 'You like it, kitten? Hope I'm doing this well...' he asks, smiling at you for an instance, before resuming his kissing. The large cat presses you against his lips once more, growing bolder with his approach as you find yourself sometimes slipping inside his mouth, only to be pulled back right after with a long sucking motion.";
	WaitLineBreak;
	say "     'Don't suppose you'd mind if I shoved you in my mouth? It's gonna feel so good... I promise...' says Ranfer, the last words kind of mumbled on their way as his mouth rests on top of you, opening slowly once more as, this time, the feline man does not stop pushing you in. First, your head fits in his mouth, and soon follows your torso and waist, leaving only your legs outside and safely tucked between his fingers. You see only darkness as his tongue feels up your body from every angle, at its every inch, but you hear - and feel - the smilodon give out a questioning grunt as he realizes he shoved you in head-first. You are then pulled out with another sucking motion, fresh air feeling cold against you, now.";
	say "     The giant smilodon then turns you around so that your feet go into his mouth, first. 'Oops, you weren't supposed to go in like that, it ain't safe for you... Better keep your head out so you can breathe!' he explains, and once more, you go in his mouth, although he leaves your body partly outside, from your chest up. His moans collide against you as quite powerful vibrations, and your erogenous areas are all covered by his restless tongue that keeps on wiggling without cease. A glance over his shoulder suggests some movement being made with his arm, and you are able to catch a glimpse of Ranfer stroking his thick cock, clearly turned on by all this. He says nothing else as he fully focuses on stimulating your body, worried more about your pleasure than his, applying more pressure on just the right spots, including your [if player is male]penis, which keeps on throbbing[else if player is female]vulva, which keeps on quivering[else]rear, which keeps on tingling[end if] in pure bliss and pleasure.";
	WaitLineBreak;
	say "     Eventually, your ability to endure such overwhelming sensations ends, and you begin to uncontrollably moan and wiggle around while stuck between his lips. He takes this as a sign to intensify his movements, and also begins to jerk faster. His increasing want for your joy is evident, almost seeming hungrier for you, growing more desperate to feel you under and over his tongue as he puts additional effort on it, that slick organ of his rubbing against you with enough force to drive you insane with pleasure. Then, Ranfer's breathing quickens, he begins to let out low grunts as he does his very best to keep up the pace, and the large cat successfully manages to throw you beyond your edging point. As a wave of intense pleasure strikes you, your [if player is male]load is delivered[else if player is female]pussy keeps on quivering as your entire body tingles[else]whole body tingling[end if] inside his mouth.";
	say "     He also lets a longer grunt as he shoots his [if player is male]own[end if] load all over the ground beneath you, powerful shots originated from how turned on he was, gushing out like a small geyser of pure lust. You are, finally, pulled out of his mouth, the coldness of the outside now washing your body as you begin to miss the warmth of his maw. 'You're the best kitten ever. And [if player is male]your cum tastes[else]you taste[end if] really good...' he says, giving you a few additional licks, tender and loving ones. 'If you ever get some more of those, be sure to come to me. I'd love to play with a little sized you, again.' Ranfer then holds you close to his soft and fuzzy chest until your body gives signs of wanting to grow back to its original height.";
	WaitLineBreak;
	say "     When you are finally back to normal, you grab your things and kiss Ranfer goodbye. He responds by tapping your butt and smiling back at you.";
	if player is male:
		NPCSexAftermath Ranfer receives "OralCock" from Player;
	else if player is female:
		NPCSexAftermath Ranfer receives "OralPussy" from Player;
	else:
		NPCSexAftermath Ranfer receives "Other" from Player;

Section 5 - Ranfer Library Interactions

Table of GameEventIDs (continued)
Object	Name
RanferXaedihr	"RanferXaedihr"

RanferXaedihr is a situation.
ResolveFunction of RanferXaedihr is "".
Sarea of RanferXaedihr is "Nowhere".

instead of going west from Grey Abbey Library while (Resolution of RanferXaedihr is 0 and Ranfer is in 7th & Main Street and Xaedihr is in Grey Abbey Library and daytimer is day):
	say "[RanferMeetsXaedihr]";

to say RanferMeetsXaedihr:
	say "     As you walk outside of the Library, you notice that, at this time, Ranfer is not here, when he should probably be taking his rounds and patrolling. But then, you happen to look over Xaedihr's usual corner at the Library, and to your surprise, you see the feline man chatting to him. The big male smilodon has moved closer to the sorcerer, and they seem to be conversing to one another in relative discretion.";
	LineBreak;
	say "     [bold type]Would you like to eavesdrop, intervene or simply leave them be?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Listen to the conversation.";
	say "     [link](2)[as]2[end link] - Go ahead and separate them.";
	say "     [link](3)[as]3[end link] - Just pass by and leave them to their business.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to listen in, [link]2[end link] to stop them or [link]3[end link] to leave them be.";
	if calcnumber is 1:
		Linebreak;
		say "     This interests you, so you decide to keep an ear out for what they are saying to each other, from a place hopefully none of them will see you.";
		WaitLineBreak;
		say "     'So you're what... A kind of a mage? Know some spells to help me keep my kitten safe?' asks Ranfer, though Xaedihr seems to be more interested in the book he is analyzing than in the conversation itself. 'Excuse me, your kitten? I see things between you are rather... well-developed.' he replies, with an ironic tone. This does not detain the large feline, however. 'I'm simply trying to understand what is your role in all this. Are you a friend, or simply someone trying to use my kitten's generous hospitality for your own goals?' The half-demon closes his book and looks directly at Ranfer, with quite a mean look. 'Who knows? Maybe I am the big bad guy, after all. The great villain that brought the nanites upon this cursed land and had everyone fuck each other's brains out! Maybe I'm planning for world domination in secrecy...!'";
		say "     This seems to make the catman smile, you think maybe of amusement. 'Witty librarian, aren't you?' he says, seemingly provoking the mage. 'I'm. Not. A. Librarian. And don't you have anything better to do than to disturb me? I'm doing important research, here, trying to find ways to keep nasty demons away so your dear [italic type]kitten's[roman type] soul could be spared from a lifetime in Hell, or similar. In fact, that includes you, too. Everyone in this sorry world, in fact.' While Xaedihr's tone shows a hint of annoyance, the smilodon seems to be enjoying himself. 'A demonologist, then. Well, if you intend to protect my [boygirl], even in your own way, then perhaps we could help each other.'";
		now Resolution of RanferXaedihr is 2;
		WaitLineBreak;
		say "     Xaedihr turns to him, once more, already rolling his eyes. 'Help me how? By flipping the pages for me? Reading stuff out loud? Capturing demon subjects? Wait, actually... You do seem like a strong guy, maybe I could have you gather some specimens.' The feline looks over the mage, considering these words. 'I'm not too keen on using violence to achieve our goals, however... But I suppose if it's nasty demons...' he says, and Xaedihr nods along. 'Veeery nasty. And they could totally put your protégé in danger... Imagine the trouble if [SubjectPro] happened to come across one of them, unprotected! Nasty creatures, all of them. I could point you towards them with a few protection wards and so on... Would give you an edge against them and we'd both benefit from this arrangement, I'm certain.'";
		say "     Ranfer seems to agree with the mage that these dangerous creatures should be taught a lesson, and wants to help him capture some for experimentations. You are not sure which situations this arrangement between them will be led to, but at least, it looks like they are getting along, in a way.";
	else if calcnumber is 2:
		say "     You immediately decide to intervene, lest things go awry between the two. 'Ah, there you are! I believe this... bipedal feline man was looking for you. I'm sure he was.' says Xaedihr, as he turns his attention completely to the book in his hands. Seeing that the mage really does not want to talk to anyone right now, you accompany Ranfer outside. 'What a strange one. Are you certain he can be trusted?' he asks you, and you explain how you met him and your decision to let him stay. 'I would prefer to keep my distance, though my eyes shall be alert.' he says in response.";
		say "     Perhaps, that is for the best?";
		now Resolution of RanferXaedihr is 99;
	else if calcnumber is 3:
		say "     Better not disturb them and leave the two men at whatever they are discussing. It does not really concern you, but they getting acquainted with each other might be good.";
		now Resolution of RanferXaedihr is 1;
	TraitGain "Met Xaedihr" for Ranfer;
	TraitGain "Met Ranfer" for Xaedihr;

[***********************************************************]
Section 5 - Ranfer Routine
[***********************************************************]

an everyturn rule:
	if smilodon bodyguard is tamed and smilodon bodyguard is not listed in companionList of Player: [routine only applies if Ranfer is tamed and not summoned]
		[if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			move NPC to ROOM X;
			if player is in ROOM X:
				say "     NPC ARRIVES";]
		if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn - Ranfer wakes up]
			if player is in Makeshift Rec Room:
				say "     Ranfer is up and awake by now, and he seems to be putting his sleeping bag away. He sees you in his proximity and gives you a wink. 'Glad you're the first thing I see in the morning, kitten.' he says while doing some stretching, his muscles visibly bulging out as he flexes them right within your sight. Currently, the feline is completely naked.";
			now Sleeping of Ranfer is false;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - moving to sentinel post at Main & 7th Street]
			if player is in Makeshift Rec Room and Ranfer is in Makeshift Rec Room:
				say "     The big catman passes by you after he is done with his morning routine, and after putting a loincloth on, giving you a smile. 'I'm gonna make sure no intruders disturb our shelter and give them a whack, if necessary. Meet you outside, kitten [boygirl].' he says, disappearing out of sight.";
			else if player is in Main & 7th Street and Ranfer is not in Main & 7th Street:
				say "     As you stand here, you see Ranfer coming out through the Library's door, wearing his usual loincloth. 'Oh, good morning kitten! Hope you haven't seen any naughties before I did.' he says, smiling, as he walks outside to do his rounds.";
			now Ranfer is in Main & 7th Street;
		[else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]]
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon - lunchtime]
			if player is in Main & 7th Street:
				say "     Ranfer is leaning against the Library's door, munching on some canned food.";
		[else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if player is in Main & 7th Street and Ranfer is in Main & 7th Street:
				say "     As your eyes land on Ranfer's sexy feline body, you also see him laying some preemptive traps on key locations, and when he is done, he begins to walk back inside. 'Gotta get some rest, these traps should keep us safe... Any chance you might keep me company?' he says, winking at you before going through the door.";
			else if player is in Main & 7th Street and Ranfer is not in Main & 7th Street:
				say "     You do not see Ranfer anywhere nearby. It seems he went back inside the Library, by now.";
			else if player is in Makeshift Rec Room and Ranfer is not in Makeshift Rec Room:
				say "     As you stand here, Ranfer comes walking in after having done his patrolling all day. 'Good evening, kitten! Another day passes and the Library remains as safe as ever. Watch you step, though, I laid some traps, just in case.' he says, and then winks when he comes in proximity with you, speaking in a low and tender tone... 'Any chance you'd like to keep me some company?'";
				say "     You then see the feline putting down his sleeping bag to rest.";
			else if player is in Makeshift Rec Room and Ranfer is in Makeshift Rec Room:
				say "     You see Ranfer relaxing comfortably in his sleeping bag, reading a book.";
			now Ranfer is in Makeshift Rec Room;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night - Ranfer sleeps]
			if player is in Makeshift Rec Room:
				say "     You have a look at Ranfer's sleeping spot, to find out that he is already in a deep slumber, with a book open and turned down on top of his chest.";
			now Sleeping of Ranfer is true;

Section X - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Smilodon";
	add "Smilodon Male" to infections of FelineList;
	add "Smilodon Male" to infections of FurryList;
	add "Smilodon Male" to infections of NatureList;
	add "Smilodon Male" to infections of MaleList;
	add "Smilodon Male" to infections of SheathedCockList;
	add "Smilodon Male" to infections of BipedalList;
	add "Smilodon Male" to infections of TailList;
	now Name entry is "Smilodon Male";
	now enemy title entry is "";
	now enemy Name entry is "Ranfer"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He leaps forward, snapping and snarling at you.[or]The big smilodon lashes at you with one of his sharp clawed paws, hitting you only with a slight cut.[or]Leaping towards you, he tackles you with his bulk, nearly knocking you prone.[or]The feline nearly pierces through your arm with a solid bite, his fangs having only scratched you.[or]He darts forward and rubs himself up against your body, attempting to grab and subdue you before you somehow manage to break free from his grasp, but not without having inflicted a [']playful['] bite on your neck.[or]The large feline leaps towards you with surprising agility, forcing you to push yourself out of harm's way with only a scratch.[at random]";
	now defeated entry is "[Smilodon Male Loses]";
	now victory entry is "[Smilodon Male Wins]";
	now desc entry is "[Smilodon Male Desc]";
	now face entry is "fuzzy, masculine feline muzzle, with a fierce and dangerous look about it, with smilodon-like ears resting atop your head and a pair of long fangs menacingly stretching down beyond your chin";
	now body entry is "that of a bipedal feline with a strong and heavy torso, very much resembling that of a werebeast, ending in large and powerful clawed paws";
	now skin entry is "golden fur with brown stripes and spots over your";
	now tail entry is "You have a short and fluffy tail sticking upwards cautiously behind you.";
	now cock entry is "[one of]sheathed[or]feline[at random]";
	now face change entry is "it reforms into a wide and fuzzy feline muzzle. Pain strikes you intensely at your canine teeth as they grow into long and sharp fangs that surpass your new jaw's length, which you can open really wide to make use of your new predator tools";
	now body change entry is "your legs bend and twist into a proper digitigrade form with soft snapping sounds as the bones flow and change, additional muscle mass growing around them. You look down to see your feet becoming entirely paw-like, even as your hands shift and change as well to become almost as paw-like, and your nails having been replaced by dark brown claws like a proper fierce feline";
	now skin change entry is "your skin prickles from your head to your toes as fur begins to push through from underneath, soon covering you in a soft layer of smilodon fur, golden with brown stripes and spots";
	now ass change entry is "a short feline tail pushes out from your spine, lifting up in a stiff curve as it stands up in caution";
	now cock change entry is "it draws up closer to your body, the skin stretching around your crotch to cover your member completely in a soft, furry sheath of feline fur";
	now str entry is 27;
	now dex entry is 16;
	now sta entry is 22;
	now per entry is 15;
	now int entry is 10;
	now cha entry is 17;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 57;
	now lev entry is 8;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 13;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Forest";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 30;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "smilodon male fur";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "smilodon man-milk";
	now CumItem entry is "smilodon cum";
	now TrophyFunction entry is "[GenerateTrophyList_Smilodon_Male]";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]furry[or]muscled[or]strong[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section Y - Items

Table of Game Objects (continued)
name	desc	weight	object
"smilodon male fur"	"A tuft of golden fur that looks like it has been pulled out of the coat of a male smilodon. It's rather soft."	0	smilodon male fur

smilodon male fur is a grab object.
It is temporary.
Usedesc of smilodon male fur is "[SmilodonMaleFurUse]";

to say SmilodonMaleFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Smilodon Male";

instead of sniffing smilodon male fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"smilodon male cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Smilodon Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	smilodon male cum

smilodon male cum is a grab object.
smilodon male cum is cum.
smilodon male cum is infectious.
Strain of smilodon male cum is "Smilodon Male".
Usedesc of smilodon male cum is "[smilodon male cum use]";

to say smilodon male cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing smilodon male cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"smilodon man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Smilodon Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	smilodon man-milk

smilodon man-milk is a grab object.
smilodon man-milk is milky.
Purified of smilodon man-milk is "distilled milk".
smilodon man-milk is infectious.
Strain of smilodon man-milk is "Smilodon Male".
Usedesc of smilodon man-milk is "[smilodon man-milk use]";

to say smilodon man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the feline man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing smilodon man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Smilodon Male ends here.
