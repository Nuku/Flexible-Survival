Version 1 of Jett by Gherod begins here.

"Adds Jett, the Werewolf Brute Alpha, to the game."

[Version 1 - File Created]

Section 1 - Jett NPC

[LOYALTY]
[1-19 - Jett regards you as simply a visitor, someone he must watch out for, and treats you as he treats anyone else]
[20-29 - He regards you as a friend, begins to open up more and treats you with more respect, dropping the overly-dominant facet when talking to you]
[30-? - TBD]

Table of GameCharacterIDs (continued)
object	name
Jett	"Jett"

Jett is a man.
ScaleValue of Jett is 4. [normal sized]
Body Weight of Jett is 9. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Jett is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Jett is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Jett is 14. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Jett is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Jett is 8. [length in inches]
Breast Size of Jett is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Jett is 2. [count of nipples]
Asshole Depth of Jett is 16. [inches deep for anal fucking]
Asshole Tightness of Jett is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Jett is 1. [number of cocks]
Cock Girth of Jett is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Jett is 24. [length in inches]
Ball Count of Jett is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Jett is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Jett is 0. [number of cunts]
Cunt Depth of Jett is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Jett is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Jett is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Jett is false.
PlayerRomanced of Jett is false.
PlayerFriended of Jett is false.
PlayerControlled of Jett is false.
PlayerFucked of Jett is false.
OralVirgin of Jett is false.
Virgin of Jett is true.
AnalVirgin of Jett is false.
PenileVirgin of Jett is false.
SexuallyExperienced of Jett is false.
TwistedCapacity of Jett is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Jett is true. [steriles can't knock people up]
MainInfection of Jett is "Werewolf Brute".
Description of Jett is "[Jettdesc]".
Conversation of Jett is { "<This is nothing but a placeholder!>" }.
The scent of Jett is "     Jett's scent is intoxicating. It is so masculine that [if Player is submissive]it inevitably arouses you, causing your muscles and orifices to relax and moisten in his presence[else if player is dominant]it fills you with an urge to dominate anyone, even him[else]it makes your groin tingle and your heart race[end if].".

to say JettDesc:
	project Figure of Jett_soft_icon;
	say "     You would say that a normal werewolf brute is large, but this one is ridiculously massive. Jett is an alpha werewolf brute and one built of pure muscle, with a thick dark silver fur coat only damaged by battle scars around his chest, arms and some around his thighs. You can also spot one large scar across the left side of his face, which makes him look quite intimidating, at first glance. The Alpha does not wear anything to cover his hanging junk, which looks almost hyper-sized, even for someone of his stature. You also do not think anything would be able to cover that much cock and that pair of ostrich-egg sized balls, as even his furred sheath can barely contain all the meat within. His piercing yellow eyes loom over you like an observant owl whenever you come close, but curiously, they do not give any hostile sense. Much the contrary, more in the way of a caring parent looking over their children. All in all, you feel safe around Jett[if Player is submissive], and very subservient[end if].";

JettDoneTalking is a truth state that varies.[@Tag:NotSaved]

Section 1-1 - Jett Talk

instead of conversing Jett:
	project Figure of Jett_soft_icon;
	if Loyalty of Jett >= 20:
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, beckoning you to come closer. Very close, actually, almost totally between his legs as he is sitting on his couch. You are then invited to sit on his lap, which you do without much thinking, and he holds you comfortably. 'Hey there, did you wanna chat?' he asks, affectionately patting your back and rubbing your side. It actually feels quite nice...";
	else if loyalty of Jett > 9: [happens automatically if Player is submissive upon meeting him the first time]
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, beckoning you to come closer. Very close, actually, almost totally between his legs as he is sitting on his couch. You are then invited to sit on his lap, which really means that you are suggestively ordered to do so, and you comply without question. 'What brings my [boygirl] to big ol' Jett here?' he asks, affectionately patting your back and rubbing your side. It actually feels quite nice...";
	else:
		say "     You walk towards Jett, his sheer presence unexplainably making you weak on the legs. He acknowledges you and nods, allowing you to speak your mind. 'What do you need? Hopefully you've managed to keep out of trouble...'";
	WaitLineBreak;
	say "[JettAlphaTalkMenu]";

to say JettAlphaTalkMenu:
	now JettDoneTalking is false;
	say "     [bold type]What matter would you like to discuss with Jett?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the alpha werewolf brute about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The pack";
	now sortorder entry is 2;
	now description entry is "Ask about the pack he leads";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His sexual preferences";
	now sortorder entry is 3;
	now description entry is "Ask about his sexual preferences";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His approval of you";
	now sortorder entry is 4;
	now description entry is "Ask Jett how you are doing in his eyes";
	[]
	if Resolution of JettDominance is 1 or (Resolution of JettDominance >= 3 and Resolution of JettDominance <= 5):
		choose a blank row in table of fucking options;
		now title entry is "Offer Jett a gift";
		now sortorder entry is 99;
		now description entry is "Rodion, the cook, showed you what Jett most likes to receive. Do you wish to show intent to make the same offering";
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
					say "[JettAlphaTalkHimself]";
				else if (nam is "The pack"):
					say "[JettAlphaTalkPack]";
				else if (nam is "His sexual preferences"):
					say "[JettAlphaTalkSex]";
				else if (nam is "His approval of you"):
					say "[JettAlphaTalkApproval]";
				else if (nam is "Offer Jett a gift"):
					say "[JettAlphaTalkOfferGift]";
				wait for any key;
				if JettDoneTalking is false:
					say "[JettAlphaTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself as Jett gives you an understanding nod.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JettAlphaTalkHimself:
	say "     You wish to ask Jett about himself, as the alpha of the werewolf brutes. He chuckles, seeming flattered by your interest. 'I was merely the first. Most of the size-changing magic went for me, which is why I'm this big, and naturally, I became the alpha when the other fuzzy pups began to show up,' Jett then puts on a grin as he eyes you from head to feet, 'The boys really need someone to watch out for them, and so I combined that with gatekeeper duty. They wanna talk to me, they come over here. Besides that, I get to decide which one of the pretty lads and gals may have access to some werewolf dick, should they ever find this place through one way or another...'";
	if loyalty of Jett >= 20:
		say "     [italic type]The big werewolf then gives out another chuckle as he caresses your under chin with one of his large paw hands. 'And only the truly special ones get my sympathy. I'm glad to have met you, cute stuff. Maybe we'll be able to have some good fun soon.'[roman type][line break]";
	else if loyalty of Jett > 9:
		say "     [italic type]The big werewolf then gives out another chuckle as he caresses your under chin with one of his large paw hands. 'Because that's what y'all come for, ain't it? Heh... There's no way you didn't come here voluntarily... Nobody lets a werewolf brute on them that many times without wanting some of that big hard cock...'[roman type][line break]";

to say JettAlphaTalkPack:
	if loyalty of Jett >= 20:
		say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... Well, you know Elstan, for instance. Although I've been realizing that I've probably not been the best leader for him, and this is why he doesn't see me as one. Well, looking back at my attitude when I first addressed you, I can see why. I think I've been letting my animalistic side out too much and should probably consider the fact I'm dealing with a pack of people, not just horny werewolves. Even if they are, indeed, horny werewolves, but you get my point. Either way, what I said about him in the past... Do please try to get along with him. Even if he's difficult. I'm sure deep down he's a good guy.'";
		say "     Considering it might be wise to tell Jett about the way Elstan treats you, you then rethink that decision and just let him know that you will try your best to get along with everyone. That leaves a smile on his muzzle.";
	else:
		say "     You ask Jett about the pack he leads and what he thinks of them all, and he takes a moment to consider his answer. 'I'd say... They're okay, mostly. Many of them used to be soldiers, so they've had no trouble accepting someone to call the shots. Some others, though... They're probably some spoiled brat who got turned into a big hung werewolf and think they're some big shit. They ain't worth anything unless they're sitting here, on my spot...' he then pauses to give you a grin, 'Or, you know, sitting on me like good little puppy slaves. I consider a good sub above that jackass, if I'm honest.' You wonder who he is talking about, specifically, as he seems to be referring to someone. He realizes this and tells you, 'I'm sure you'll meet him, eventually. Or you probably have, already. I don't care. Just don't reinforce his delusions, he ain't worth it. The guy has to learn some manners.'";

to say JettAlphaTalkSex:
	if loyalty of Jett >= 20:
		say "     Referring to the subject of sex, you decide to talk to him about it. While he would previously give you a much more eager response, he simply looks at you with a big smile and says 'I'm into anything you want as long as you're happy. And I mean... Anything. I'm pretty sure I can do any kink I'm asked for someone I care about. And... You're on that list.' He tightens his embrace on you for brief seconds, reinforcing his words. 'But yeah, into a lot of stuff myself.'";
		say "     'Specifically, it's what I think I've already told you. Muscle and body worship, facefucking, facesitting, a little bit of cuddling, domination, knocking up subs full of cum, and... I've tried some stuff with a special kind of mushrooms that makes people smaller. There's fun things that can be done with significant size differences like that, stuff I've personally never even imagined, but... Some of that stuff is really hot. We could try it out sometime, if you're into that. No limits here, it's just whatever you'd be into.'";
	else:
		say "     Referring to Jett's favorite subject, you decide to have a bit of sex talk with him. His eyes shine as a wide smirk forms across his muzzle, enthusiasm evident the moment you bring up this matter. 'I've got quite a lot of things I like doing to my good lads... Between putting them to worship my muscles, my pits, pecs, feet, dick, balls, even my ass, sitting on them, choking them on my cock, smothering them with my body and feeling them squirm under me, filling them up with fucktons of loads until they look pregnant of triplets and cough it out from their mouths... You know, any stuff I can imagine that sounds fun enough.' While Jett got so carried away talking about what he likes, you've seen that his dick jumped to attention amidst conversation, hanging half-hard.";
		say "     'Well, shit, talking about this gets me hard every time. Though I'm only down to do things my subs like, too. There's no point in dominating one if I don't see them losing their minds over it. Hate a partner that only cares about that stuff and has no mind of its own. I appreciate a spark in people.'";

to say JettAlphaTalkApproval:
	say "     Curious about the way he perceives you, an idea comes to mind. Why not asking him directly? Perhaps you could take some criticism as feedback in order to improve your relationship with Jett and his pack. You try to come up with the best words to forward your question, and as he hears you, he leans forward, examining you as he scratches his furred chin.";
	if debugactive is 1:
		say "DEBUG Jett's loyalty: [Loyalty of Jett] <- DEBUG[line break]";
	if loyalty of Jett < 9:
		say "     'I'm not gonna lie, I just don't know you well enough. I didn't really feel any connection right from the start, but who knows... There's plenty of ways for you to show me that you're a good [boygirl]...' he replies and grins at the end, and you know exactly what he means by that. Nevertheless, it seems the alpha could use some convincing...";
	else if loyalty of Jett < 19:
		say "     'Well, you've been behaving... That's good. I like it when they behave. Just keep doing what you're doing and you'll be fine in my book. You could also get to know the other werewolves around here, I'm sure you could get along well with many of them. And maybe learn a few more things about us...' It seems the alpha is pleased with your demeanor so far, but things can always get better, right?";
		if Loyalty of Jett is 19:
			say "     [bold type]Maybe this is the right time to ask Rodion, the cook, about a way to offer him a more meaningful gift...[roman type][line break]";
	else if loyalty of Jett < 29:
		say "     'I like you. You've shown to me that you have good intentions and I feel confident in trusting you. I admit, even, that I'd like to be more intimate with you. Hopefully we'll get to know each other better over time?' He seems to be more open to shows of affection and intimacy, which means you are steadily getting closer to the alpha werewolf.";

Section 1-3 - Jett Sex

instead of fucking Jett:
	if lastfuck of Jett - turns < 4:
		if Loyalty of Jett >= 20:
			say "     You try to make an advance on the werewolf alpha, but he dismisses you upon hearing your proposal. 'I'd love to keep doing it, but I mustn't shirk my duties. Maybe later, if you're still thinking about me by then...' he says with a mischievous grin.";
		else:
			say "     You try to make an advance on the werewolf alpha, but he is quick to dismiss you. 'We've already had enough fun, come back later if you need to get me out of your system... Heheh...' he says with a mischievous grin.";
	else if Loyalty of Jett < 10:
		say "     You make an advance on the werewolf alpha, who looks over at you with a grin. 'Horny, aren't we? Craving the alpha that much...?' he teases you, slowly spreading his legs while leaning back comfortably on his couch. 'How do you desire to offer yourself to me, I wonder...'";
		say "[JettAlphaSexMenu]";
	else if Loyalty of Jett > 9 and Loyalty of Jett < 20:
		say "     You make an advance on the werewolf alpha, who looks over at you with a grin. 'My favorite slutty [boygirl]... Need your alpha to take care of you this time?' he teases you, slowly spreading his legs while leaning back comfortably on his couch. 'You have my full attention.'";
		say "[JettAlphaSexMenu]";
	else if Loyalty of Jett >= 20:
		if Libido of Jett is 0:
			say "     You make an advance on the werewolf alpha, who looks over at you with an expectant gaze. 'Well well, if it isn't the bestest of [boygirl]s asking for a good time with big ol['] me...' He then approaches you and puts one of his strong fuzzy arms around your neck, pulling you to him. 'Due to your great work before with Elstan, I suppose I can sneak out and take you to my bed, if you're looking for something a little more [bold type]intimate[roman type]...' He then pokes your lip with his thumb, his muzzle getting really close to your face as he locks you under his arm. 'Just a note for future reference, cute face... Let me know if you'd like that.'";
			wait for any key;
			now Libido of Jett is 1;
		else:
			say "     You make an advance on the werewolf alpha, who looks over at you with an expectant gaze. 'There's no one I'd rather be with and take such good care of, be it here or in my bed...' he teases you, slowly spreading his legs while leaning back comfortably on his couch. The tip of his enormous cock even begins to show as his eyes run all over you, as excited as he is to see you again. 'Tell me what you're craving for, and I'll give it to you.'";
		say "[JettAlphaSexMenu]";

to say JettAlphaSexMenu:
	project figure of Jett_soft_icon;
	if Loyalty of Jett is 19:
		say "     [bold type]If you would like to be more intimate with the werewolf alpha, perhaps you should seek a way to improve his affection for you. Maybe seek the advice of someone close to him... The cook, perhaps?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow him";
	now sortorder entry is 1;
	now description entry is "Give the werewolf an appreciative blowjob";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Worship his body";
	now sortorder entry is 2;
	now description entry is "Propose that you worship his body wherever he wants";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Rim him";
	now sortorder entry is 3;
	now description entry is "Get down and eat out his massive muscular ass";
	[]
	if Libido of Jett > 0:
		choose a blank row in table of fucking options;
		now title entry is "Go for a 69";
		now sortorder entry is 1;
		now description entry is "Get Jett to eat you out while you suck his dick";
	[]
		[choose a blank row in table of fucking options;
		now title entry is "Be his seat";
		now sortorder entry is 2;
		now description entry is "Allow the werewolf alpha to sit on your face";]
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
				if (nam is "Blow him"):
					say "[JettAlphaSexBlowjob]";
				else if (nam is "Worship his body"):
					say "[JettAlphaSexWorship]";
				else if (nam is "Rim him"):
					say "[JettAlphaSexRimming]";
				else if (nam is "Go for a 69"):
					say "[JettAlphaSex69Scene]";
				[else if (nam is "Be his seat"):
					say "[JettAlphaSexFacesit]";]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding against this, you excuse yourself away from Jett. He nods respectfully.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to JettLoyaltyBoost1: [for normal scenes before intimate is unlocked]
	if Loyalty of Jett < 19:
		if Loyalty of Jett < 10:
			increase Loyalty of Jett by a random number between 1 and 4;
		else if Loyalty of Jett < 18:
			increase Loyalty of Jett by a random number between 1 and 2;
		else:
			increase Loyalty of Jett by 1;
		say "     [bold type]Thanks to your provided service, Jett likes you more.[roman type][line break]";

to JettLoyaltyBoost2: [for intimate scenes to the cap of 29]
	if Loyalty of Jett < 29:
		if Loyalty of Jett < 28:
			increase Loyalty of Jett by a random number between 1 and 2;
		else:
			increase Loyalty of Jett by 1;
		say "     [bold type]Thanks to your shared moment together, Jett likes you more.[roman type][line break]";

to JettScentSanityLoss:
	if "Strong Psyche" is listed in feats of Player:
		SanLoss 5;
	else if "Weak Psyche" is listed in feats of Player:
		SanLoss 20;
	else:
		SanLoss 10;

to say JettAlphaSexBlowjob:
	say "     Seeing the alpha sitting on his couch by his lone self, with his goods so visibly exposed, you wonder if there would be a way to provide him with a service he would enjoy receiving. More specifically, you offer him a blowjob. His ears perk up at the mention of a potential good time, and his piercing yellow eyes shift towards you like a predator's gaze, one that always manages to make your legs shake as a shiver runs down your spine. Not an unpleasant sensation by any means, but his posture and body language clearly demands respect, so much that you almost feel like you offend him by making such offers. However, your doubts are quickly dismissed when he raises his forehead and grins, slowly making space between his huge thighs as his red tip begins to protrude out of his thick sheath. 'Then what's stopping you?' he says, as if giving you permission to approach him.";
	say "     Almost immediately, you are kneeling before him, feeling those strong quads pulling you in between them and denying you any means of escape, though for now, he merely keeps you in place, right in front of his crotch. With this much proximity, you begin to breathe in that musk, that sweet masculine and beast-like scent, which is so much more intense this up-close. An urge begins building within you fast, to breathe it in, to let it in your system as you worship this huge, strong werewolf that is looking down at you, a towering presence so powerful you feel completely disarmed. He does not have to say nor do anything, you know exactly what you want to do...";
	WaitLineBreak;
	project figure of Jett_hard_icon;
	if player is submissive: [submissive players are more susceptible to the alpha's scent]
		say "     [bold type]Given your natural submissive instincts, you feel like giving in to his scent might be... Really good for you.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give in and breathe it in...";
		say "     ([link]N[as]n[end link]) - Hold yourself together and just suck his cock.";
		if Player consents:
			LineBreak;
			say "     You do not know what it is, but it begs you to take a deep whiff as you put your face right at his sheath and furred sac, breathing that alpha's scent. It feels amazing, such an unique experience that you cannot quite describe, but your whole body likes it. Your lust for him skyrockets with a sense of utter bliss and joy, the world around you quickly losing its importance as now, all that matters is him, the alpha. There is no time to waste, you wish to please him, a lustful hunger taking over you as you rub your face on the werewolf's sheath and sac, kissing and licking it all over in a frenzy of desire. Jett simply leans back, enjoying your work, and letting that huge, pulsating rod of his emerge proudly, hard and throbbing...";
			JettScentSanityLoss;
		else:
			LineBreak;
			say "     Trying your best to ignore this sudden desire, you choose to instead focus on the task at hand and simply bring your face over his sheath, to then begin to kiss and lick it all over. You cannot help but keep rubbing your face against all that soft fur, and his scent continues to bother you, inevitably turning you on more and more, and it is a pleasant sensation overall. It beckons you to go over his big full balls and the slowly emerging tip of his cock, despite you holding back on the sniffing, so powerful that it continues to tempt you to just give into it, but you try your best at remaining focused. Eventually, the werewolf simply leans back, enjoying your work, and lets that huge, pulsating rod of his emerge proudly, hard and throbbing...";
	else:
		say "     Trying your best to ignore this distracting urge, you focus on the task at hand and simply bring your face over his sheath, to then begin to kiss and lick it all over. You cannot help but keep rubbing your face against all that soft fur, and his scent continues to bother you, inevitably turning you on more and more, and it is a pleasant sensation overall. It beckons you to go over his big full balls and the slowly emerging tip of his cock, despite you holding back on the sniffing, so powerful that it continues to tempt you to just give into it, but you keep trying your best at remaining focused. Eventually, the werewolf simply leans back, enjoying your work, and lets that huge, pulsating rod of his emerge proudly, hard and throbbing...";
	say "     You know exactly that you have to fully commit to this, and you are not quitting until the alpha is satisfied. With its significant size, your mouth alone is not enough to fully pleasure his cock, so you must bring your hands together to stroke at the enormous shaft while you focus your licking on its tip. An appreciative moan is all you need to confirm the effectiveness of your methods, and all the reinforcement for you to continue wiggling your tongue at the canine penis, which continuously throbs in your grasp. A steady stream of precum soon follows, one that you delight yourself in with eagerness as its taste caresses your tongue, filling you with yearn even more.";
	WaitLineBreak;
	say "     Soon, you are wrapping your lips around the alpha's tip as well, not content in just licking it. You want to try to suck as much of it as you can, pushing your face and mouth against the shaft while holding it steady so you can try to fit in as much of it as you can. This time, you got the werewolf grunting as he observes you going down on him, your administrations proving to be quite pleasurable for him. One of his big hands begins to go over your head and the back of your ears, almost as if caressing you affectionately, though despite the non-verbal praise, you do not let go, determined to bring this alpha beast to an orgasm sooner or later. His cock is definitely huge, though it seems to pulsate into an even larger size the more excited he gets...";
	say "     It might have been that the alpha simply was not fully hard until now, after so much licking and sucking on his red prick, your hands still stroking the whole shaft from below where you lips cannot reach just yet. Your jaw aches with how much you force it open to fit in more of his cock, inch after inch, but it really is hard work. With the best of your abilities, you jerk him off, suck and lick from every angle, going around and over his cock slobbering on the whole thing, leaving trails of saliva all over his meat, and all the while his scent continuously assaults you. It really becomes hard to focus on anything but to sloppily blow him, not even caring how, just that you must worship it until you lose even the track of time.";
	WaitLineBreak;
	follow the turnpass rule;
	say "     And you do, eventually. You have been worshiping Jett's cock for so long you forgot how long you have been here for. He has not let you go, which means you should be doing a good job. The werewolf's dick is coated in saliva and precum, wet to the very end, and it slides so easily between your lips every time you go down on it. Your jaw and face are numb, but it does not matter. All that does is his cock and pleasure, licking the shaft, swallowing the juices, giving his balls a good rub while you suck on his cock, feeling that warm meat pulsate in your mouth and pouring more of that tasty, thick precum onto your tastebuds, almost like a continuous reward...";
	say "     However, at some point, you feel Jett getting restless, adjusting himself in his seat a few more times than usual as he takes plenty of deep breaths. He has been holding it all this time while you continuously worship his manhood without any plans on stopping. While this goes on for a while, Jett eventually places both his hands on your head and keeps you with your mouth wide open and his cock inside, having you held in place as his climax finally arrives. 'Hnng... Take it all, don't waste a drop...!' he utters, and you do not fully realize the meaning of this until he begins to shoot enormous amounts of cum into your mouth, so much that you immediately struggle to gulp the first shot, and even more the second. The quantity is so absurd some of it finds itself traveling through your nose as you desperately fight to gulp everything down...";
	WaitLineBreak;
	say "     No matter how hard you try to comply to his orders, your face ends up soaked, cum having found its way through your nose and escaping the corners of your mouth. Once you are set free, you need to cough in order to unclog your breathing canals before you drown in the alpha's ridiculous load. You take some time to recover from this ordeal, and as you look up at Jett, he has this big smile on his muzzle. 'Heh... Not too bad. You got most of it,' he says, chuckling as he beckons you to stand. He then places one hand over your face, rubbing his thumb around your mouth and cheeks, and bringing remaining drops of his cum over to your lips. He gives an approving nod as you lick it back from his fingers. 'But for now, you should take a rest. There'll be more opportunities for you to pledge your services to me.'";
	say "     Patting you like a well-behaved pet, Jett then lets you walk away. It is evident that you have pleased the alpha werewolf as he observes you leaving with a pleased look.";
	JettLoyaltyBoost1;
	NPCSexAftermath Player receives "OralCock" from Jett;

to say JettAlphaSexWorship:
	say "     Looking at the alpha's enormous, muscular and powerful body, covered in such soft fur, you wonder if he would like to have someone to appreciate his size and strength, if not just to cuddle with the big beast. He laughs whole-heartedly at your question, then lays back on his couch with his arms raised behind his head and legs spread to each side. The view is already incredible, not only because of the thick sheath between his legs, where the tip of his cock is already peeking outside, but because of how massive he looks when he sits like this, displaying his muscles in such a way you cannot help but run your eyes all over him. 'You wanna come give your alpha a hug, is that what you're saying?' he asks teasingly, his expression suggesting an encouraging invitation.";
	say "     With nothing else to add, you walk up to Jett, stepping towards his couch and moving in between his legs. He then receives you in his embrace by placing his big furred arms around you, then pulling you to him. You sink into his soft fur and muscles, your head laying on his powerful chest, allowing you to feel and hear the werewolf's heartbeat with each powerful thud. However, this is not your typical cuddling session, as the werewolf has been grinning this whole time, so you half-expect what comes next. He really hugs you, like, really tight, his arms pressing you against his body with an unbeatable grip, so strong that it severely hinders your movement. 'Lucky you, this werewolf loves hugs... Don't worry, though, I won't crush you... Completely, at least.'";
	WaitLineBreak;
	project figure of Jett_hard_icon;
	say "     You feel like he could break your bones if he wanted to, but it is clear he does not mean to hurt you, especially when one of his hands finds its way just behind your rear. A thick finger begins to travel between your buttocks as he searches for your [if player is female]pussy from behind[else]hole[end if], and though he is not quite fingering you, he presses against it, the rubbing being enough to relax you in such teasing pleasure. Meanwhile, your entire front is pressed against the werewolf's massive body, with his warm and soft fur caressing you everywhere it touches, [if player is male]which feels especially nice on your cock, hard as it is rubbing against his midriff[else]your erogenous regions appreciating the additional stimulation[end if]. 'That's for being a good pup...'";
	say "     Another thing that hits you in the middle of all this... Is his scent. It is so powerful from here that you inevitably feel the urge to trace its source, which obviously is spread through his whole body, but you know one close enough place where you could feel it at its peak. With that said, you also have his big, musclebound pecs, each with a meaty nipple that must be, for sure, quite sensitive. In fact, you wanted to worship his body, and that has not left your mind ever since he embraced you. Although, it is not like you had much of a choice with the werewolf holding you tightly like that, but after a while, he loosens his grip on you. 'Alright [boygirl]... Pick one spot. That'll be your duty for the next hour.' With that, he raises one of his arms and bounces the adjacent pec right above your face,. It is almost like he just read your mind...";
	say "     ([link]Y[as]y[end link]) - Worship his pecs.";
	say "     ([link]N[as]n[end link]) - Bury your face in his armpit.";
	if Player consents:
		LineBreak;
		say "     Those big and strong pecs full of muscle look way too good to pass up, and you just know that getting your lips and tongue around them will definitely turn him on. Without any further ado, you make your choice evident as you go for one of his pecs, give it a good kissing and make your way towards the meaty nipple. 'Mmh... I definitely don't mind that...' he utters with a moan as you begin to suck on it, lips wrapped around the nub, your tongue quickly joining in by wiggling around it, flicking it to one side and the other in quick succession. He likes this, you can tell by how his breathing goes, suddenly deep as his heartbeat raises. While there is no milk in these, you nurse on them like that was the case, which definitely delights the alpha as you send him panting with pleasure.";
		say "     He brings one of his hands to pat the top of your head, rubbing it affectionately, while his other hand is still busy teasing your [if player is female]labia, fingers rubbing in circles and in between your wet lower lips[else]anus, fingers rubbing in circles and into your hole[end if], and he really only needs that to drive you crazy, which translates into you sucking on his pecs[if player is male] and you thrusting your dick against his body and fur[end if] even harder. Such mutual reinforcement has the werewolf also picking up the pace in the whole fingering thing, and you could swear you were feeling them going deeper inside you every second that passes. 'You're being such a good pup... I might need to reward you with something bigger...' You begin to have an idea of what he means, judging by the way he continues to play with your [if player is female]pussy[else]ass[end if]...";
	else:
		LineBreak;
		say "     You do not know what it is, but you really want to get in there. His scent almost compels you to do so, and without thinking twice, you just go for it, dragging your face across his fur and towards your chosen destination. 'Oh, I see... So that's what you're into,' he teases you, before dropping his arm on you and effectively locking you under his fuzzy warm pit. The other hand is still busy teasing your [if player is female]labia, fingers rubbing in circles and in between your wet lower lips[else]anus, fingers rubbing in circles and into your hole[end if], but he really only needs that to make you moan in lust. Combined with his now immensely powerful scent, you are sent into a near-ecstasy state, letting that alpha musk in your system as you take a good and deep whiff, intoxicated by its addicting pheromones.";
		say "     It gets in your mind, and all you want to do is kiss, lick and sniff his musk some more, until all you can think of is that. Jett keeps you still while continuously fingering you, his hand more insistent than before[if player is male] while you thrust, rubbing your dick against his body and fur[end if], and nothing else matters. 'Yeah, you keep being a good pup and I'll reward you,' he utters, almost whispering with a low growl, and amidst all the sniffing and licking, you cannot think of anything else. The werewolf's musk is too good for that, anyway, and you would rather just keep doing that, feeling his warmth in your face, breathing in the scent, kissing and making out with his pit for however long he desires. To you, it is an urge you cannot control, something that elates your mind into pure bliss and ecstasy...";
		if player is submissive:
			say "     [bold type]Given your natural submissive instincts, your mind feels extremely accomplished. No thoughts other than worshiping your alpha... You feel like this is exactly how it should be, getting addicted to his scent, being owned by him...[roman type][line break]";
			JettScentSanityLoss;
	WaitLineBreak;
	say "     'Alright, that's enough... Come here...' You feel yourself being pulled away briefly, your head led to his muzzle this time, then pulled once more, all the way until your mouth collides with his. Eventually, you feel a long tongue pushing past your lips, and at the same time, something bigger and harder pressing against your butt instead of his hand. You would think he intends to take you here and now, but all the werewolf does is rub his enormous meat between your asscheeks. His arms embrace you again, tightening around you as he makes out with you, that long tongue of his invading your mouth and possessing you like he owns you. And maybe he does, as you remain at his mercy, feeling that cock throb against your intimate parts and inevitably craving for it to penetrate you...";
	say "     But the werewolf does not. He instead rubs his cock against you, the friction against your rear enough to make him go at it harder and harder, his pace increasing as you straddle him. He continues to kiss you with almost a hunger, like he wants to devour you, even though you know this is merely a primal lust taking over the both of you. Nevertheless, it is exciting, and you feel that you both are nearing your points of climax. He tightens his grip around you even more, completely immobilizing you, as he presses the tip of his cock against your anus[if player is female], the closest hole available from his position[end if]. Just as you feel it stretch to accommodate only an inch of his length, you feel an intense throbbing... 'Here it comes...!'";
	WaitLineBreak;
	say "     The alpha cums right then, a ridiculous stream of jizz being blown into you before his cock begins to pulsate wildly atop your ass, covering your whole back in a geyser of beastly spunk that continues raining down on you for what seems to be a long minute. He howls, grunts and moans all the way through it, the excitement enough to [if player is male]send you cumming on top of him as well as you squirm in bliss[else]provoke a surge of pleasure that makes you quiver all over[end if], joining him in a simultaneous orgasm. With the both of you catching your breaths once the deed is done, Jett then invades your mouth with his tongue once more, giving you one last taste. 'Good [boygirl]. You're coming back later?' he asks, a grin forming across his muzzle as he pulls away just slightly, your faces practically still touching.";
	say "     Perhaps you will, knowing that this was very pleasurable for the both of you. For now, though, you have things to do, and you cannot be sitting on the werewolf alpha's lap all day, even if you wanted to. He lets you go, his piercing yellow eyes following you as you walk away.";
	NPCSexAftermath Player receives "Other" from Jett;
	JettLoyaltyBoost1;

to say JettAlphaSexRimming:
	say "     You cannot help but stare at the werewolf's massive furred thighs and the way he leans back, almost showing the crack between his huge, muscular buttcheeks. They are not quite just muscle, however, you can see there is a certain amount of fat covering his glutes, which makes his body look softer and even bulkier. In fact, you are pretty sure if you placed your face right there, you would sink in so deep you would probably feel trapped in there, munching on that tasty-looking hole of his... 'Hm... Curious. You seem oddly focused on my groin, pup. It's not like you never saw it...' he says, chuckling, as you wake up from your daydreaming. You have just noticed you were staring at him, thinking of his ass, for probably a bit too long.";
	say "     Perhaps you should ask him directly, that you would like to rim him. His ears perk at your words, the werewolf's expression turning into a mix of amusement, yet intrigue. 'Huh. That's not usually the request I get...' he says, yet he spreads his legs and leans back further, this time bringing his ass more into your view as his butthole is now visible, albeit barely due to how bulky and fuzzy it is, 'But it's a more than adequate away to serve me. In fact, one of my [italic type]favorite ways[roman type]... So why don't you come closer and bury your face in there?' The way he makes it look and sound so welcoming has you immediately kneeling down between his legs, though something else strikes your senses... His musk is very, very strong in here, more than anywhere else in his body. You have not even started and you can feel its addicting scent, threatening to take over your mind. It is pure beastly sweat and pheromones concentrated in a single, very hot spot...";
	WaitLineBreak;
	project figure of Jett_hard_icon;
	say "     [bold type]There is no way you will be able to resist it once you get started, but your body and mind want it, and the more you wait, the more you crave it...[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Give in and just sink your face into his marvelous ass.";
	say "     ([link]N[as]n[end link]) - Maybe decide to do something else, instead...";
	if Player consents: [continue the scene]
		say "     As soon as you decide that you will proceed with this, it is like your body makes the decision for you. Quicker than you would be mentally prepared for, your head soon finds itself between the werewolf's muscled thighs and pressing forward, until your face meets his asscheeks. Of course, you do not stop there, only until your mouth can finally feel his pucker, and you just go wild at it. The extremely powerful scent takes you over in only a single breath, making your mind go numb. This is not even just about pleasing your alpha, the feeling is so strong that you feel you need more and more, like no one could ever convince you to stop nor leave. You want to eat his ass so bad that you waste no time in doing so, pressing your tongue against that soft opening and munching on it like it was your last meal in your life.";
		say "     'Normally I'm a bit wary of this, but... You just feel so good in there...' he says, the movements you feel all around you suggesting that he is jerking himself off while you eat his ass. Imagining the alpha getting excited from having you rimming him serves for even more invigorating motivation, but really, you just cannot stop. Your mind does not allow such possibility to even arise in your thoughts, as you go on a makeout session with his hole, wildly running your tongue all over and pressing it into that soft, meaty pucker. It even feels like you could actually get your face inside with how enormous he is, and by the way you are practically rubbing your features against it, you are probably doing something similar.";
		SanLoss 5;
		WaitLineBreak;
		say "     The urge compels you to continue, you even breathe in more of his scent, only to find yourself losing control of your actions, though not in an invasive manner. You accept it, your body working automatically as your mental energy is directed exclusively to how good and right this feels, like you belong here. 'Such a good pup you are... Looking to get hooked on my scent while eating my ass... That might as well be your life purpose if you ever lose your mind over it, just so you know...' Oh, you want to lose your mind over it, that is not even in question. Right now, your brain is craving to be his slave, unable to think of anything else but tasting his hole and breathing in his alpha beastly scent. His hole is coated in your saliva, soft and relaxed, allowing you to rub your whole face on it as you continuously lick his ass...";
		say "     You press your face even further in it, almost to the point you could shove yourself inside, but you are eventually met with his natural body resistance. Perhaps this is not something you have noticed right away due to your state, but it does not matter. You have more than enough area to lick, kiss and slobber all over while breathing in more of his musk, and you do lose track of time while doing it. All you feel is his warm and wet sweaty hole almost kissing you back, his huge thighs surrounding the back of your head, and your numb mind feeling only bliss and joy. Times passes by, pleasure unending...";
		SanLoss 10;
		WaitLineBreak;
		say "     It eventually all ends once Jett grunts loudly, having been jerking himself off all this time. A brief moment of clariy is brought to you due to this sudden moan, and you realize he is shooting his load all over himself, his hole blinking and pulsating against your face with every single burst of cum that leaves his throbbing shaft. Once his orgasm subsides, however, he pulls you away from his ass, needing a bit more force than he probably expected he would need. 'Hey hey, enough now... You've pleased me greatly, pup. But maybe you gotta give it a break from being down there, yeah?' You are dizzy, lightheaded and very confused at how strong of an effect this had on you, but once you take a few whiffs of fresh air, your senses begin to return to you.";
		say "     That was certainly an experience. You thank him for letting you service him, and with a smile, he puts you down and lets you go. 'But you can always come back to lick my ass some more later...' he adds with a grin on his muzzle.";
		NPCSexAftermath Jett receives "DildoAssFuck" from Player;
	else:
		say "     It is best that you propose something else, the scent is a bit too strong for you. The werewolf nods as he readjusts himself in his couch, 'Hah! Being careful now? I'm sure you'd be fine, but I get that it ain't for everyone. Maybe we could do something else, then? He waits for you to reply.";
		WaitLineBreak;
		say "[JettAlphaSexMenu]";
	JettLoyaltyBoost1;

[to say JettAlphaSexFacesit: [intimate]
	say "     ";
	JettLoyaltyBoost2;]

to say JettAlphaSex69Scene: [intimate]
	say "     You tell the alpha that you would like to be intimate with him, away from others['] eyes, in privacy. Given how you have pleased him in the past, Jett is glad to grant you your wish, as evidently shown by his warm smile at your request. 'You wanna give your alpha some private pleasure this time? That's alright... It can be arranged.' With a satisfied grin on his scarred muzzle, Jett gives you a pat on the head as he gets up, his whole enormous body now towering over you as he beckons you to move after him. 'Let's head inside. No one will disturb us in there.' You nod and start moving where he tells you, towards his chambers once more...";
	say "     The two of you then walk through a discrete pathway parting from the main hub into a corridor, then into a door, which he unlocks. Then, you are led to his internal apartment's hallway and through a few extra-sized divisions. As you take a turn to the bedroom, Jett pulls you to him and brings your face closer to his, the warmth of his breath brushing against your features. 'All alone now... Just you and me...' This much proximity allows you to feel his powerful heartbeat, and his own arousal perfumes the entire room with an intense, masculine scent. Without any further ado, the werewolf begins to kiss you passionately, his nimble tongue voraciously invading your mouth, skillful enough to leave you longing for more. Your bodies join one another in a tight embrace as the massive werewolf holds you gently, then carries you to the comfortable bed that awaits your lovemaking.";
	WaitLineBreak;
	project figure of Jett_hard_icon;
	say "     'I'm always happy to make you all mine, [boygirl]...' Jett sort of reminds you of a gentle giant as he handles your body with such care, though always firmly, like he owns you and knows exactly how to handle you. But lets not forget, you have both come here with one specific thing in mind, and as such, the alpha brute lies down on the bed, legs still past the edge of the mattress and with his back turned down, and holds you on top of him. With formidable strength and, frankly, absolutely no effort, he raises you and lines up your [if Player is female]womanhood[else]ass[end if] with his muzzle, then descends your body in a way that you end up sitting right on it. You kind of have to find some balance amidst all this, but the grip he keeps on your hips helps you remain atop his face.";
	say "     Immediately, you feel that furred long muzzle of his pressed between your buttcheeks and his tongue seeking your [if Player is female]moistened labia[else]hole[end if], and it definitely does not disappoint. Without holding back once, the alpha werewolf begins to eat you out like a famished beast, pushing that slick organ of his deep into you as it wiggles against the walls of your [if Player is female]pussy[else]bottom insides[end if]. All this does not come without a pleasant extra, however, as you get a great and broad view of Jett's muscular body down below, especially that absolutely massive red cock of his throbbing compulsively at every other second, oozing copious amounts of precum, and accompanied by a huge set of balls that you can only see the girth of from here.";
	if PlayerFucked of Elstan is true:
		say "[italic type]. It is all even bigger than Elstan's... Though you should probably not mention that to either of them, and especially not him[roman type].";
	else:
		say ". It is probably safe to assume he is, indeed, the hungest and most virile of all the werewolves...";
	WaitLineBreak;
	say "     All the stimuli, both visual and sensorial, combined brings you a lot of joyous pleasure, so much that you cannot help yourself but moan as your sensitive [if Player is female]woman bits are[else]pucker is[end if]played with, licked and tonguefucked so masterfully that even your breath becomes desperate. Everything feels so good, the way he can reach so deep inside you, caressing just the right spots[if Player is female] within your vagina[else if Player is male], even managing to reach your prostate[else]within your fleshy tunnel[end if], and he does not ever stop. He is so dedicated to it that he refuses to give you a break, even if you dared asking and pretended you wanted one. In fact, you want this to never end...";
	say "     Suddenly, you feel a thick, powerful hand pushing you forward, and you find yourself facing that almost monstrous shaft mere inches away from your eyes. Your arms have fallen forward against the werewolf's lower body, and now your hands remain in reach of such magnificent meat. With little to no doubt about what you should do, you press your lips against that pulsating rod, soon bringing your tongue into play and proceed to... Worship it, would be the right expression. Every inch, coated in sweet precum, must be touched, caressed and appreciated with the best of your abilities, with your hands and mouth, so that you can really make your alpha happy. Judging by how solid his erection is, you think you may be on the right track, if not even completely certain.";
	WaitLineBreak;
	if Player is male:
		say "     [italic type]To reciprocate your attention, one of the alpha's hands moves towards your [Cock of Player] cock as Jett decides to jerk you off, slowly but firmly and steadily, which, combined with all the tonguing you are getting, makes you absolutely lose your mind. His touch seems to escalate the more intensely you rub and suck on that big dick of his, but it is so massive you can really just lick at the sides and suck on the tip comfortably. This seems to be enough to please the werewolf, however, as he makes your penis feel so good with his fuzzy paw-like hand, showing surprising dexterity and precision for something so thick and large. It certainly confirms that Jett had never lost his touch and lovemaking skills.";
		say "     With your hole still thoroughly stimulated during all this and your cock being stroked so good, you can barely focus on providing oral attention to that well deserving monster cock of his, but he seems to take delight on torturing you with pleasure. It also means that you can not last that much longer either, so eventually, your body speaks for itself. Jett gets this and begins to stroke you harder, tongue you deeper - not knowing that was still even possible! - and it fully commits. You cum right there, all over the alpha werewolf's fuzzy chest, moaning with your lips still wrapped around his dick. 'Mmh... You might... Wanna watch out...' he warns you, though during your lust stupor, you fail to process that information in time before...";
	else:
		say "     [italic type]To reciprocate your attention, one of the alpha's hands moves towards your chest as Jett decides to fondle it, slowly but firmly and steadily, which, combined with all the tonguing you are getting, makes you absolutely lose your mind. His touch seems to escalate the more intensely you rub and suck on that big dick of his, but it is so massive you can really just lick at the sides and suck on the tip comfortably. This seems to be enough to please the werewolf, however, as he makes your [if Breast Size of Player > 0]tits[else]pecs[end if] feel so good with his fingers all over your nipples, as sensitive as they are. Such dexterity and attention certainly confirms that Jett had never lost his touch and lovemaking skills.";
		say "     With your [if Player is female]pussy[else]hole[end if] still thoroughly stimulated during all this and your erogenous zones feeling properly appreciated, you can barely focus on providing oral attention to that well deserving monster cock of his, but he seems to take delight on torturing you with pleasure. It also means that you can not last that much longer either, so eventually, your body speaks for itself. Jett gets this and begins to intensify his gestures, tongue you deeper - not knowing that was still even possible! - and it fully commits. You hit your climax right there, moaning with your lips still wrapped around his dick as this wave of pleasure surges through you. 'Mmh... You might... wanna watch out...' he warns you, though during your lust stupor, you fail to process that information in time before...";
	WaitLineBreak;
	say "     ... Well, before you are showered by a real alpha werewolf's load, that is, shooting all over your body (and, in consequence, his, as you are on top of him still) with a nearly continuous stream of creamy white jizz. 'Hnng... Yeah, that's... What I meant...!' he moans and grunts as spurt after spurt leaves him and lands directly on the both of you, making a mess of the ceiling, sheets and even floor. This big guy's load surely matches his size, and you are earning a personal demonstration of that. The whole room is already coated in his cream, and he has not stopped cumming yet. Howling and grunting all the way to the end, Jett's orgasm only ends with his last drops slowly pouring out of his huge cock into your drenched body. The two of you are a complete mess, as is everything else around you.'";
	say "     'Mmmh... You're such a tasty, good [boygirl]...' he says as he flips you over, bringing you below him, that enormous, muscular and heavy body of his now pinning you down against the cum-drenched sheets and under his jizz-coated fur, and begins to switch between licking your face and making out with you, almost possessively as his hand holds your head in place. Being this close to the alpha werewolf, especially after such a powerful climax, already has your senses escaping you, feeling lightheaded as his intoxicating musky scent overwhelms you, beastly sweat and cum combined. 'You've done such a good job at pleasing your alpha... But he's got stuff to take care of now... Gotta get back to the real world out there...' He gives you yet another lick across your face, chuckling at the end, before helping you get up.";
	WaitLineBreak;
	say "     With the deed done, he brings you a relatively clean towel for you to get rid of that mess all over your body. 'Get yourself nice and presentable before you get out there, lest you want a group of werewolves on your ass as soon as you step outta that door...' You do just that, trying to get the cum out of you, though a simple towel can only do so much. It should be good enough, however, and Jett gives you the green sign. He then escorts you out of his chambers and lets you go... after giving your butt another loving tap.";
	NPCSexAftermath Player receives "OralCock" from Jett;
	JettLoyaltyBoost2;

Section 2 - Jett Special Scenes and Events

[Jett stops the player from leaving the first time]
instead of going up from Lair Of The Lupines Pit while Resolution of Discover The Werewolves Den is 0:
	project figure of Jett_soft_icon;
	say "     As you try to sneak through this hub, which leads deeper into a dark passage that you suppose could be an exit, you hear movement coming in your direction. Quickly, you start glancing around for a place to hide, but when you can finally react, it is too late. A strong, masculine and rough voice speaks to you, coming from the biggest werewolf brute you have ever seen, standing right in front of you and keeping you from leaving. 'Now, now... where do you think you're going?' he asks, crossing is very muscular arms in front of his chest and looking down on you with a grin on his lupine muzzle, wagging his fluffy tail slowly behind his monstrous legs. The sheer size of his furred sheath is almost terrifying, with how massive it is, and you can smell him from here, an intoxicating masculine scent that gets you weak on the knees.";
	say "     In reality, his mere presence is raising your heartbeat, arousing you at each passing second. You try to shake that feeling away as your blood is pumped faster, excitement fueling your body from every angle and inch, tempting you to drop your chance at escaping this place, and from the looks of the huge werewolf brute in front of you, he knows exactly what effect he is having on you. 'And here I was thinking my comrades['] hospitality was so unmatched nobody'd leaving our humble abode... I guess not everyone shares this sentiment.' You instantly feel apologetic, even without any real reason to be, but suddenly, you feel unworthy of his generosity. It is quite difficult to think clearly when he smells this good, but you have enough resolve to focus on not begging him to ravage you right in this spot and, instead, converse with him.";
	WaitLineBreak;
	say "     You try to explain how you came to be here, that some werewolf brought you here after you faced one in the wilderness, and since then, you have been fucked by plenty of them so many times that you lost count. He hears you, and while he looks intimidating, he does not look hostile, actually paying attention to you. 'My boys know how to enjoy themselves, that's for sure. Heh, usually any slaves they capture stay in the oubliette until they're left with nothing in their brains. In all honesty, it bores them, that's why they keep bringing in new people. Now, you don't really have to stay, although you haven't started begging for my dick just yet. Means you've got your wits about you still, though sticking around may change that...'";
	say "     The massive werewolf gives the base of his sheath a little scratching, which makes it dandle heavily between his legs. He must be the hungest of them all, without a doubt. Though most importantly, as he does this, that sweet, masculine scent in the air intensifies, making it hard for you to focus on anything else but his crotch. Since you are looking at it for quite some time now, the beastman chuckles as he notices the effect he has on you. 'Y'see what I mean... Pretty easy for you to just get addicted to it. But in moderation, I'm sure you can get by with having a little fun around here,' he says, then begins to walk towards you, something you only notice as he places his huge paw-like hand over your shoulder, crouching down as needed to meet your height. This much proximity almost drives you insane, as you can really feel the warmth of his massive body and that musky scent, closer than ever.";
	WaitLineBreak;
	say "     'Alright, as for introductions... I'm Jett. Can call me the Alpha, I guess. I keep the boys under control and this place on its feet, so I suppose I'm the closest thing to a leader here. Now, regarding your... Situation,' he looks at you from head to feet with a grin on his muzzle, chuckling to himself before he continues, 'Well, if you wanna leave, you're free to do so, as long as you keep the location of this place a secret. And trust me, you really don't wanna disrespect the Alpha,' he then flexes both his arms, biceps as massive as your whole head, maybe even a little bigger than that, 'Because he'll fuck you up if you even dream about it, and not in the good way. I'm sure you won't wanna know how.' The way he brings his forearm closer to his bicep while effortlessly flexing it suggests something akin to torturous crushing, which sends shivers down your spine. If you were to beat him in a fight, you would have to either be, somehow, even stronger than him, or way smarter. Definitely not here and now.";
	say "     'If you do stay, however... I'll let you play with my boys. If you manage to not turn into a brainless little slut afterwards, that is. I may even adopt you as my personal servant...! If you lose your mind, though, it's just sex slave for you. I imagine you wouldn't mind either...' His grin widens, and you get the idea he probably will not care much whichever end you meet. Nodding at his declaration, he then gives you a nod back. 'Good thing you understand. There's [bold type]another rule when nagivating through my lair. You gotta be naked[roman type]. No arguing there. My boys all hang out with nothing covering their junk, so you should follow their example. No smuggling weird shit either, and no picking fights with any of my lads. If you wanna fight someone, you'll fight me, and you won't like it.' You nod again, to his pleasure. 'Good. Now, do as you please. I'll be here, keeping watch. You always have to get through me to enter, so [bold type]make sure you're all bare naked[roman type] before trying to walk inside.'";
	WaitLineBreak;
	say "     After he made sure you understood everything he said, he lets you pass, heading for a seat on a large couch that seems to have been chosen for his size, specifically.";
	if Player is submissive:
		say "     [italic type]Though, of course, an alpha like him would never miss the fact you are a very, very submissive person. It is obvious he could even smell it in you by the way you look at him, such a big, massive, muscular werewolf towering over you with a grin on his scarred but handsome muzzle, and smelling so good... Indeed, he knows this, and he keeps his eyes on you for just a little longer as he speaks...[roman type][line break]";
		say "     'But I've been around for long enough to be able to tell who has the potential to be a very, very good [boygirl]... And I have a feeling you'll wanna be in your best behavior. So, here's one more thing... Good submissive little [boygirl]s get to sit on my lap whenever they're in need of a big fuzzy alpha werewolf to take care of them... And more, I'll even let you lean your head between these...' He gives you bedroom eyes as he widen his manspread, leaning back on his couch, giving out that confident attitude as he even makes his huge pecs bounce, seeming like they can even move on their own. 'I don't make that offer to just anyone... Only to the best of [boygirl]s. Remember that...' Oh, he has definitely caught on your submissive instincts, and how he really loves that is so blatantly obvious you immediately feel a surge of motivation to show him how truly submissive you are.[roman type][line break]";
		now Loyalty of Jett is 10; [starting bonus]
		WaitLineBreak;
	say "     You are now free to get out or go back in, as long as you follow Jett's aforementioned rules. You also know how to get here, as you will note the place's location once you leave through the dark passage [bold type]west[roman type] of here.";
	move player to Lair Of The Lupines Main Hub;
	AddNavPoint Hidden Rock Cavern Entrance;
	now Resolution of Discover The Werewolves Den is 1;
	now Find The Werewolves Den is resolved;
	connect LupinesPit;
	move Jett to Lair Of The Lupines Main Hub;
	move Elstan to Lair Of The Lupines Pit;
	move Kirnon to Lair Of The Lupines Pit;
	move Rodion to Lair Of The Lupines Kitchen;
	move Wyatt to Lair Of The Lupines Common Room;

[----------------------------------------------------------]

Table of GameEventIDs (continued)
Object	Name
JettDominance	"JettDominance"

JettDominance is a situation.
ResolveFunction of JettDominance is "". Sarea of JettDominance is "Nowhere".

[RES STAGES]
[0 - Nothing ]
[1 - Initiated path, can gift Jett ]
[2 - Has shown intention to gift Jett, sent on to deliver a message to Elstan ]
[3 - Has talked to Elstan, persuaded through charisma check ]
[4 - Persuaded Elstan through exhaustion and persistence ]
[5 - Persuaded Elstan by begging him ]
[6 - First gift for Jett completed ]

to say JettAlphaTalkOfferGift:
	if Resolution of JettDominance is 1:
		say "     As you recall your encounter with the cook, Rodion, back at the kitchen, you think that perhaps this is the right time to make your [']special['] offer to the alpha werewolf, who is just sitting on his couch, staring at you with that usual smug grin of his. Something about this makes you feel dirty, but of a good kind, and your heart skips a beat due to the rush of the anticipation. Once he sees you are still hesitating, only having considered in silence what you shall be doing next, he tilts his fuzzy head and leans forward slightly, 'Is there any problem? All of a sudden you look anxious for something...' Jett keeps his eyes on you as you think of a reply, on top of everything else, and you figure the best solution is to tell him all about it.";
		say "     'Oh, I see... So you've befriended Rodion? That's good to know, I'm pleased that you've been getting along with my boys. And it even seems he's revealed you a way to personally gift me. I've to say I'm flattered you went into such extents just to find something suitable for me... Does that mean you intend to make an offer as well?' His smile is nicer than you would expect, and you do not feel so intimidated now. You really just want him to like you, and if that is the way you must do it, then why not give it a shot? You nod to his question, replying positively, and he chuckles amusedly. 'Hah! And I just so happen to have an idea of what offer that is, knowing that cuddly guy... Well, do me a favor then, if you will.' You nod once more, displaying your availability to receive his request.";
		WaitLineBreak;
		say "     'As you know, I'm also a gatekeeper, so I can't really leave this place too often before things start going wild. Who knows who might come across that entrance while I'm not looking. Back when you arrived, it was merely one of my grunts who caught you snooping outside, so I didn't really pay much attention, though we've had... A few problems before, with undesired guests. So, my vigilance has been even greater ever since. This to say... I would love to accept your gift, but I must find a replacement for my current post, just for a while... And for any future occasion I might need to take a break.' His eyes look over you as he leans back to his couch, a hint of a smirk beginning to show on his muzzle, and you begin to fear what this request is, for some reason.";
		say "     'Could you maybe... Well, [bold type]persuade Elstan[roman type] down there [bold type]in the pit[roman type] to take my spot while we complete our arrangement? Then, return to me and I shall make preparations for our private session.' To this request, your eyes widen. He is sending you on a short distanced quest to deliver a message, and not to just anyone. To Elstan, of all the werewolves in here, who has the fame of being quite a rival to Jett. You struggle to comprehend the meaning of this request, but it seems he is leaving you no other choice if you want to proceed further. 'I shall be waiting for you. Hope you get to show me how much of a good and efficient [boygirl] you are. That'd be pleasant to see...'";
		WaitLineBreak;
		say "     With that said, you tell him you will be right back... That is, if you intend to continue this.";
		now Resolution of JettDominance is 2; [next stage]
		say "     (Your next task is to talk to Elstan down in the pits and select the corresponding talking option. Then, return to Jett and select the same option as before to continue the quest).";
	else if Resolution of JettDominance is 3 or Resolution of JettDominance is 4 or Resolution of JettDominance is 5:
		say "     With the request completed, you tell Jett that you have delivered the message to Elstan. He smiles and leans back on his couch. 'You've managed to convince that brute to do it? My, color me impressed. May I know what tactic you've employed?' You proceed to explain how you have managed, as per his request, once more.";
		WaitLineBreak;
		if Resolution of JettDominance is 3:
			say "     You tell him that you have managed to say the right words to him and he saw better ways to show what he is worth to the lair. Elstan then accepted your reasoning and was convinced to do this favor for Jett. 'A silver-tongued diplomat, aren't you? I wouldn't expect you to be able to use words to persuade that brat. In fact, I'm very pleased to hear you've managed to choose this path and be successful... It also brings me some additional information about this guy. Perhaps I can keep him tame if I show more appreciation for his efforts... Which I admit, it's a fact I often overlook.'";
		else if Resolution of JettDominance is 4:
			say "     You tell him that you simply stood there for as long as possible until he said yes, nothing more than a good old tactic of winning through exhaustion. He laughs, amused by your choice of tactics. 'My, that is definitely a good one! Bother him until he does what he's told! It seldom fails on him. Although, try not to get on bad terms. I'm not looking to have an enemy within these walls. In fact, I do care about Elstan. He's simply impossible to deal with, that's the problem, but anyway. Maybe not all hope is lost...'";
		else if Resolution of JettDominance is 5:
			say "     You do try to tell him how you have managed to do it, but you cannot help but feel embarrassed about your tactic of choice. As you explain everything that happened, Jett's expression changes to a worrisome one. 'Oh... You didn't have to put yourself in such position. Elstan's just a pushover, he likes to bark but he doesn't actually get anything done. Might I suggest next time to simply bore him until he accepts the task at hand? In last case, you just return to me and I'll advise you properly.' He beckons you to approach him, and so you do, only to be surprised by a gentle stroke over your face. 'Just remember you're a very strong person. You've managed to endure this apocalypse with your mind intact, and you're still kicking. You can face a lot more shit than the average person around here, and you don't have to do anything you don't really want to. So feel free to keep up that cute smile of yours, it'd be a shame if you lost it!'";
			say "     'Unless you actually liked to be put in that position. In that case, hope you have fun being his little slut...!' he then chuckles loudly with a grin on his muzzle. Sure, Jett can be nice, but he never drops the naughty about him. 'Nonetheless, you got the job done, so that's something good.'";
		WaitLineBreak;
		say "     Jett then gets up and stands in front of you, his towering frame become even more evident, and with a happy smile on his muzzle, he puts his large hand over your shoulder. 'Now that congratulations are in order, let's get to what brought you here in the first place... I'm pretty sure Elstan will be here any moment, so we can start going to my personal chambers.' He beckons you to walk in front of him as he directs your way through a discrete pathway parting from the main hub into a corridor, then into a door, which he unlocks. Then, you are led to what seems like a hallway of an apartment, to your surprise. It is even resized to Jett's impressive height and size, so everything seems quite big compared to an average person.";
		say "     The werewolf then closes the door behind you, and you hear a lock kicking in. 'To keep undesired guests from entering,' he says, and gestures you to walk forward, then turn right, as to dismiss any worries you may have. He follows you closely as you arrive at a bedroom with a massive bed, which is in fact almost the entire room. There are pillows and... quite not what you would expect from an [']alpha brute['], as the decoration of choice, despite the rocky walls, feels very cozy and colorful. He even has a plushie of a cute little green blob monster, and you are quick to ask about it, as it just is too unexpected. He laughs it out as beckons you to take a seat atop his bed's sheets, which are extremely comfortable.";
		WaitLineBreak;
		say "     'Yes, I admit my personal chambers may look as something quite unexpected to people who haven't known me in a while...' he jokingly says, but you notice his expression changing when looking back at the plushie. 'That was a gift from my parents back when I was a small kid, and it was one of my favorite toys. Obviously we... Eventually disconnect from such stuff as we lose interest in children's plays and whatnot, so this one was among many others back at my parents' house. So... Well, I've had lost contact with them for a while, but they used to live in the area. When this whole shit started, I've decided to visit the place, and... Found this little guy, still undamaged, among the debris. No trace of my parents, however, nor their belongings... Which is probably a good thing. Hopefully they went on a travel, enjoying retirement...'";
		say "     You ask him if he thinks they might have succumbed to the nanites, and he shrugs. 'They might have, they might not. Whatever the case, we didn't leave in good terms. But that little plushie over there gave me memories... Happy childhood memories. It's such a shame we can't go back and make it all be fine, right?' Well, this you were not expecting. Jett definitely seems to be more than meets the eye, and him opening up to you like this just reminds you that he is still a person, and not just the leader of the werewolf brutes pack, much less an animalistic brute. Eventually, you reach out for his shoulder in an instinct, as in hopes to comfort him. 'Huh, this is not what we came here for, is it? I'm sure you had something else more fun in mind... And I've probably ruined the mood, huh.'";
		WaitLineBreak;
		say "     Perhaps the mood does not need to be ruined, so you let him know that you are happy he invited you here. He shows you a genuine smile as he gently places one of his massive furred arms over your shoulders. 'Well, as I said before, I have an idea of what Rodion told you. Did he show you his [']cake[']?' You nod, as that was exactly what happened. 'Yeah, I do love eating someone out. Though not just anyone, mind you. I'm mostly turned on by the pleasure I can give to someone, and let's say our cook really likes ass play.' He looks at you in brief silence as he has you lean onto him, his soft fur tickling your body before you find yourself sinking into his coat. Jett feels really warm, and on top of that, he truly is massive.";
		say "     'Mind if we just cuddle? To be honest, I'm enjoying this...'";
		say "     You see no reason to refuse his request, since you went through all this trouble already. Besides, he feels very nice against your naked body, more even as you lie down together. He holds you like a teddy bear, really close to him, though mindful of his strength to not completely smother you. As you both are bare, you feel each other's presences to their fullest. The both of you share no additional words, only enjoying the peace and quiet of the place in a very comfortable and large bed, with the company of one another. It is a relaxing time, so much that you eventually doze off along with the alpha werewolf brute, feeling safe and good.";
		WaitLineBreak;
		say "     Time passes, and you wake up still next to him. You both have not moved even an inch away from each other, but you catch a glimpse of Jett sleeping like a baby while holding you close. It is probably time to wake him up from the nap, as Elstan is likely to get grumpy for waiting too long, so you poke him until he opens his eyes. 'Huh... Oh, we... Slept? That's... Odd. I must have been more tired than I thought...' He begins to get up, and you immediately miss his warm presence next to you. 'Have I missed being with a sane person for this long...? I barely recognize myself sometimes.' Jett looks back at you and speaks in a seemingly apologetic manner, 'I've probably made you waste your time... But if it counts for anything, I'm glad for this moment. It was definitely an enjoyable gift.'";
		say "     As it seems you have accomplished your objective anyway, you tell him everything is fine, as long as Jett appreciated it. 'Not quite what you had in mind, I take it... Rodion wasn't too far off what I truly like receiving. I've had good moments with him as well, but each person is different. I'm hoping we can have a different kind of fun in the future, you and me. And that I promise it won't be just cuddling...' the werewolf chuckles.";
		WaitLineBreak;
		say "     Finally, you two start leaving Jett's private quarters and back onto the lair's main hub. Elstan fulfilled his word and is taking his gatekeeper duty seriously, while also sitting on Jett's couch. He does not see this as an insult, much the contrary. The alpha is quite amused at how Elstan looks in the leader's spot. 'Enjoying your few moments of glory?' he teases, to which the young muscular werewolf grunts. 'Are you done fucking? Nobody's been here other than a few others carrying slaves leaking cum off their holes. You know, as if we didn't have enough lying there in the pits being useless.' The alpha beckons him to get up, but looks at him in the eye as he speaks. 'Those are the same ones that keep running away and coming back, so you don't have to worry. Besides, if you care about the lair so much, try paying more attention to what's happening around you instead of your own muscles. Which, by the way...' he taps Elstan's hip in a brief pause, 'Yeah, you're taking really good care of yourself, aren't you...?'";
		say "     Elstan stares back at Jett, confused by his last compliment, which just came after a taunting commentary about his lack of attention. He does not seem to be able to process that. 'Uh... What do you... Thanks, I guess?' The alpha chuckles, then properly thanks Elstan for the favor. 'I appreciate you taking your time to help me out. You're dismissed.' The large werewolf then takes back his seat as he gestures Elstan to leave, if he wants to. You nod back at him, and as you have shared a moment of intimacy, you believe [bold type]you have formed a bond with Jett.[roman type][line break]";
		now Resolution of JettDominance is 6;
		if Loyalty of Jett < 20:
			now Loyalty of Jett is 20; [His attitude changes drastically towards the player, and unlocks intimate sex scenes]

Jett ends here.