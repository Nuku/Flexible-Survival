Sascha by Voidsnaps begins here.

[ Resolution of Wild Kitty                                                      ]
[   0: default value                                                            ]
[   1: friendly chat in first meeting                                           ]
[   2: player offered sex in first meeting                                      ]
[   3: Player & Sascha stroked each other (no climax) in second meeting         ]
[   4: Player licked Sascha's Pussy                                             ]
[   5: Player fucked Sascha's Pussy                                             ]
[   6: Player fucked Sascha's Ass                                               ]
[   7: Player fucked Sascha's thighs (too big)                                  ]
[  50: Player rejected stroking in second meeting                               ]
[  51: Platonic relationship.                                                   ]
[ 100: Sascha ignored (end of content)                                          ]
[ 101: Rape attempt; Sascha hostile (end of content)                            ]
[ 102: rejected flirtations, gruffly (end of content)                           ]

[ Resolution of Rough But Sweet                                                 ]
[ 1: Player gets a blowjob in return for licking Sascha's pussy the first time. ]
[ 2: Player gets ridden.                                                        ]
[ 3: Reverse cowgirl anal.                                                      ]
[ 4: Sascha has been practicing. Takes player's cock with difficulty.           ]
[ 5: Platonic cuddling                                                          ]
[ 6: Neuter fingering                                                           ]

[ Resolution of Pegged By A Pussycat                                            ]
[ 1: Sascha Fucked Mul with a strapon and knows the player saw.                 ]
[ 2: Sascha Fucked Mul and player didn't watch.                                 ]
[ 100: Sascha teased Mul (0 partner sharing option for players with CoA)        ]

to say SaschaPAddress:
	if SubjectPro of Player is "he": [those that get auto-sorted into male, or anyone who chose male pronouns]
		say "Daddy";
	else:
		say "Sexy";

Section 1 - Introduction Events

Table of GameEventIDs (continued)
Object	Name
Wild Kitty	"Wild Kitty"

Wild Kitty is a situation.
ResolveFunction of Wild Kitty is "[ResolveEvent Wild Kitty]".
Sarea of Wild Kitty is "Outside".

when play begins:
	add Wild Kitty to BadSpots of FurryList;
	add Wild Kitty to BadSpots of TransList;

to say ResolveEvent Wild Kitty:
	if Resolution of Wild Kitty is 0:
		project Figure of Sascha_turtleneck_icon;
		say "     Exploring the city, you find a fairly large pile of discarded clothes, at the edge of the road right across from a haunted-looking estate with rod-iron fencing. There might be something worth salvaging in there, so you start to casually rifle through it. Then suddenly, a purring voice snaps your head up from this task: 'Well then. Aren't you a sight for sore eyes? What are you doing in a place like this?' The voice's owner stares at you from the sidewalk, dressed like any jogger you would expect to see in the city, with black nylon pants that leave nothing to the imagination and a brown turtleneck. He's slim, fit, and appears to be a housecat with black fur and fluffy, intentionally unkempt white hair between his pointed ears. His shoes are immaculate and match the emerald green color of his eyes, though they're a shade lighter.";
		say "     As you ready yourself for a fight, the feline raises his hands, popping a green lollipop free from between his lips and twirling it as his rough tongue rolls over its surface. Raven fur ruffles as he stops a few feet from you, and his lips split in a mischievous grin. 'Don't worry, [SaschaPAddress]. I'm not looking for a fight. It's rare to meet someone who won't try to chase me down and fuck me on sight. Though, I'm not exactly against that sort of fun!' Rolling his tongue over the candy, he blatantly glances downward, implying something less innocent. 'My name's Sascha,' He says, his words rolling off of his tongue in a blatantly erotic way, utilizing that talented tongue in ways that set your thighs rubbing together. 'If you'd like, we can talk for a bit.'";
		say "     [bold type]What's your reaction to this?[roman type][line break]";
		let Sascha_Initial_Choices be a list of text;
		add "Sure, you can talk. It's nice to meet new people..." to Sascha_Initial_Choices;
		add "Offer him a fuck. You want some action. Right now!" to Sascha_Initial_Choices;
		if Player is male or Player is female: [neuters go home!]
			add "Pretend to talk to him, slowly move closer and jump the cat to fuck him afterwards." to Sascha_Initial_Choices;
		add "You got no time for small talk. Survival's busy work. Ignore him." to Sascha_Initial_Choices;
		let Sascha_Initial_Choice be what the player chooses from Sascha_Initial_Choices;
		if Sascha_Initial_Choice is:
			-- "Sure, you can talk. It's nice to meet new people...": [friendly]
				LineBreak;
				say "     Discussing your experiences in the apocalyptic city, you lament the lack of willing ears to listen to your problems. Everything seems to want to fuck, eat, or transform you. You're glad to meet someone who seems sane, and you pour your heart out, leaning against a nearby fence. 'You're right about that. It's not often that I run into someone new. It can get a bit lonely.' Popping his candy into his mouth as he finishes speaking, Sascha rolls it around with a thoughtful expression, the white stick following the curve of his lower lip. 'Say, normally, this is the part where I'd ask you out for coffee, but seeing as everything's the way it is...' Sascha ponders you as if making a decision, then steps closer, slipping another lollipop pulled from his pockets into your hand while planting a quick peck on your cheek.";
				say "     'Come see me again, [SaschaPAddress]. I'd love to talk with you more. Maybe even something else.' Unfortunately for you, the cat only stays to chat for a few moments, trailing his tongue over the candy the entire time as he regales you with stories of the days before the infection. He used to be a thrill-seeker by trade, exploring abandoned parts of the city and filming himself climbing and jumping from the rooftops. You can only imagine how handy that skill set has been in evading mutants. Glancing at the watch on his wrist, Sascha shakes his head, then sets those emerald eyes on you. 'Well, it seems our time is up. I've got places to be and people to see. It was nice talking to you - [SaschaPAddress].' He adds the final word with a swish of his tail as he breaks into a jog, his movements showing a pert rump beneath his nylon pants. You wonder where he's going, but you'd better move on before something less friendly finds you. [italic type]Still, even as you get moving, you can't help but think about the next time you'll meet the cat again. [roman type][line break]";
				now Resolution of Wild Kitty is 1; [just chatted friendly]
			-- "Offer him a fuck. You want some action. Right now!": [lewd offer]
				LineBreak;
				say "     Cupping your crotch, you proposition the cat. You're willing to drop your pants and see what that tongue can do. All that flirting has to be for a reason, and you're more than willing to give the pretty kitty anything he wants. Sascha looks you up and down with a grin, then steps closer, pinning you against the nearby fence with his lithe form and placing his paws on your stomach, tantalizingly close to your [if Player is male]manhood[else]crotch[end if]. Spreading his legs, he rubs his curiously flat privates against yours through the swishy material of his pants, slipping his fingers along your chest until they twine around your neck. With his green-apple-scented breath so close, you can feel each word's impact, shivering as he speaks. 'I'd love to take you up on that, [SaschaPAddress]. I would, but I'm unsure if you can handle me.' Lips inches from yours, he fakes a kiss, only to pull back at the last second, the warmth of his needy body disappearing as he disengages, leaving your [if Player is male]manhood[else]pussy[end if] to leak and throb in protest.";
				say "     'Why don't you meet me here later? We can get to know each other better.' Unfortunately for you, the cat only stays to chat for a few moments, trailing his tongue over the candy the entire time as he regales you with stories of the days before the infection. He used to be a thrill-seeker by trade, exploring abandoned parts of the city and filming himself climbing and jumping from the rooftops. You can only imagine how handy that skill set has been in evading mutants. Glancing at the watch on his wrist, Sascha shakes his head, then sets those emerald eyes on you. 'Well, it seems our time is up. I've got places to be and people to see. It was nice talking to you - [SaschaPAddress].' He adds the final word with a swish of his tail as he breaks into a jog, his movements showing a pert rump beneath his nylon pants. You wonder where he's going, but you'd better move on before something less friendly finds you. [italic type]Still, even as you get moving, you can't help but think about the next time you'll meet the cat again. [roman type][line break]";
				now Resolution of Wild Kitty is 2; [made lewd offers]
			--  "Pretend to talk to him, slowly move closer and jump the cat to fuck him afterwards.": [attack]
				LineBreak;
				say "     Feigning interest, you drift closer to the cat, ignoring his boring stories about posting videos online and nearly falling to his death. You don't care what the cat has to say, of course. If there's one thing you've learned in this city, it has to be that there usually aren't consequences for your actions, and you're willing to test that wisdom again for a piece of Sascha's [if Player is male]sweet, tight ass[else]feline cock, even if it seems to be small enough to hide from view[end if]. Who cares if he disappears afterward? As you reach out to grab the cat, your [if Player is male]pants tightening[else]nether lips moistening[end if] in anticipation, you feel something press up against your crotch, threatening it with needle-like points. Stopped in your tracks, you look down, watching as sharp claws tease at your [if Player is male]throbbing length[else]sensitive mound[end if], not quite piercing anything important.";
				say "     Sascha's voice is filled with regret as he speaks, leaning into your chest and sighing. 'You had to try something rude, didn't you? If you'd just been patient or at least asked me, I would have let you do anything you like.' Brushing away your arms after a moment, Sascha keeps hold of your [if Player is male]manhood[else]crotch[end if] until he's far enough away that you couldn't touch him if you tried, then walks away, his tail twitching in what you assume isn't happiness. For a second, you contemplate going after him, but almost as if he had heard you, the slender cat suddenly twists to the side and runs at the wall! With the scrape of his trainers on the bricks, he jumps up in the blink of an eye and hooks his claws on the windowsill one story up, pulling himself out of reach as they dig into the brick. Before your wide eyes, he climbs up one more level, then vanishes over the edge of the roof. [italic type]This surely is the last you've seen of him. [roman type][line break]";
				now Resolution of Wild Kitty is 101; [attacked him]
				now Wild Kitty is resolved; [end of chain]
			--  "You got no time for small talk. Survival's busy work. Ignore him.": [ignore]
				LineBreak;
				say "     Shaking your head, you politely decline the cat's advances. Survival's hard enough without spending more time standing there, making small talk with another survivor. You wish him luck in whatever he wants, but you'd prefer it didn't involve you. Sascha seems taken aback. 'Well, I suppose I'll give you points for honesty. We don't need to meet again.' Shrugging, he walks away, disappearing around the corner. Maybe you were too harsh? For a second, you contemplate going after him, but almost as if he had heard you, Sascha suddenly twists to the side and runs at the wall! With the scrape of his trainers on the bricks, he jumps up in the blink of an eye and hooks his claws on the windowsill one story up, pulling himself out of reach as they dig into the brick. Before your wide eyes, he climbs up one more level, then vanishes over the edge of the roof. [italic type]This surely is the last you've seen of him. [roman type][line break]";
				now Resolution of Wild Kitty is 100; [ignored]
				now Wild Kitty is resolved; [end of chain]
	else if Resolution of Wild Kitty is 1 or Resolution of Wild Kitty is 2: [had a friendly or lewd conversation before]
		project Figure of Sascha_shirt_icon;
		say "     Remembering the spot where you found Sascha last time, you decide to wander around that area in hopes of meeting him. Some time passes, with you letting your eyes wander up and down the street, trying not to linger too long on the haunted-looking building across from your position, behind an imposing iron fence. You can't help but wonder if he'll ever show, but the telltale tap of shoes on concrete rewards your patience. 'Oh! Hello again.' When Sascha appears from around a nearby corner, he seems less put together. His hair hangs limply, dripping with sweat, and his turtleneck is nowhere to be seen, replaced with a loose-fitting mint-green tank top that does nothing to hide his fuzzy, lithe physique. Huffing softly, he wipes his face on his sleeve, popping his trademark green apple candy from his mouth and fanning himself with his spare paw. 'Phew. Have you ever tried to run from one of those rams? It's a hell of a workout. I had to lose him on the rooftops.' Grabbing his knees, Sascha takes a moment to recover, then finds a seat on a nearby curb, his tail swirling in the air as he pats the spot next to him.";
		say "     Wondering aloud if the cat has a death wish, you sit beside him, watching as he plays with the sucker in his mouth. A soft purr starts as you sit, and his head leans against your heartbeat in a gesture of familiarity while his paw gently rests on your knee, paw pads slowly rolling in circles that bring forth images of things far less innocent. What a tease. 'Thanks for coming to see me again. You're a nice [guygal].' Yawning lazily, Sascha works his paw up your inner thigh, stopping just short of your private parts. 'Did you miss me?' he asks, his voice vibrating as he starts to advance one finger, trailing over your leg and roaming closer, and closer.";
		LineBreak;
		let Sascha_Choices be a list of text;
		add "Let him continue. It feels good, and you can't think of anywhere else you'd rather be." to Sascha_Choices;
		add "Gently but firmly slide his hand away from your crotch. You just wanna hang out, that's all." to Sascha_Choices;
		add "You wanted to get to know him, but this feels a bit... 'feral-lite'?! Get out of there!" to Sascha_Choices;
		let Sascha_Choice be what the player chooses from Sascha_Choices;
		if Sascha_Choice is:
			-- "Let him continue. It feels good, and you can't think of anywhere else you'd rather be.": [a bit of fondling]
				LineBreak;
				say "     Trying to keep the aroused shake from your voice, you nod and affirm that you missed Sascha, though you aren't sure if he's interested in what he is currently doing, or just attempting to tease you. After all, he [if Resolution of Wild Kitty is 1]didn't progress past flirting before[else]declined your offer for a fuck the last time[end if] Has he changed his mind? You're more than willing to please him. 'Mmm. Maybe.' Sascha takes a firmer hold of your genitals, sweeping soft fingers over them as he leans against your chest. Settling in, he watches with interest as his fingers coax [if Player is neuter]a pleasant tingle[else]wetness[end if] from your arousal, not providing enough stimulation to bring you to orgasm. It's the best [if Player is male]handjob[else]fingering[end if] you've received in a long while, and you can't help yourself; returning the favor with stroking fingers that slip under his shirt, working their way over the cat's back, then lower, seeking his waistband so that you can feel what hides beneath that swaying tail. Just a handful of that soft rump would bring you over the edge!";
				say "     Suddenly, the weight of Sascha's nuzzled-up cheek leaves your chest, replaced with a view of half-lidded emerald eyes as he squats before you. For a moment, you think he's going to take a more hands-on approach to your pleasure, but instead, those softly pouting lips find yours, overwhelming your sense of taste with sweet apple flavor. Slow and deliberate, he swirls his rough tongue over the inside of your mouth, his teeth teasing at your lower lip. Then suddenly, with a show of tonguesmanship, he transfers his lollipop to your mouth, stroking your cheek with one silken paw and then breaking contact, standing with a sigh.";
				say "     'Sorry, [SaschaPAddress]. Next time, I promise. I'm a third-date kind of guy,' He murmurs, waving as he clambers up a nearby gutter and pausing just before he reaches the roof to tug his waistband lower, showing off most of the curve of his pert rump. With a teasing shake of his hips, he continues on his way, gracefully vaulting onto the roof and out of sight. Feeling your face flush, you swirl the sweetness of his kiss around with your tongue, tasting him on the sucker. Your genitals throb in protest, and you contemplate relieving yourself. You think better of it, standing on shaky legs and heading away, sparing a glance in the direction that Sascha disappeared. [bold type]Next time, huh? You can't wait. [roman type][line break]";
				now Resolution of Wild Kitty is 3; [responded to his advances]
			-- "Gently but firmly slide his hand away from your crotch. You just wanna hang out, that's all.": [a bit of fondling]
				LineBreak;
				say "     Declining Sascha's advances, you gently but firmly place his paw on his knee, away from your nethers. You apologize for leading him on, but you aren't interested in a sexual relationship. You would love to see him again, though. Sascha looks down like a chastised child, a rueful grin on his pretty black muzzle. 'I don't suppose I can change your mind, can I? That's a shame. You know, you're a bit of an oddball. Most survivors would jump at the chance to cum all over me, even if I had three heads and a crab claw for a tail!' As you stammer out a more in-depth apology, the cat stuffs a fresh lollipop in your mouth, wrapping his arms around one of yours and squeezing it. 'I didn't say it was a bad thing, silly. Just a little disappointed. I don't usually get to play with someone that's not trying in vain to breed me. But I'm not one to force things. We can be friends if that's all you want.' You sit in silence, turning the stick of your sucker as your tongue glides along, slowly dissolving the tasty treat, almost dozing off as Sascha's slow purr lulls you into a sense of security. Sadly, it can't last, and after getting a, [bold type]'Till next time, [SaschaPAddress]!'[roman type] from him, you watch as the slender black cat disappears up a nearby fire-escape, waving goodbye as he dangles at least 30 feet in the air.";
				now Resolution of Wild Kitty is 50; [just hanging out with him]
			-- "You wanted to get to know him, but this feels a bit... 'feral-lite'?! Get out of there!":
				LineBreak;
				say "     Gruffly brushing off the unwanted touching, you stand up and gain some distance. Anything that desperate to fuck has to want something you aren't interested in giving! Sascha calls after you, surprised at the sudden rejection, but when you don't turn back, he appears to get the hint. [bold type]You don't think you'll see him again after this. [roman type][line break]";
				now Resolution of Wild Kitty is 102; [rejected flirtations, gruffly (end of content)]
				now Wild Kitty is resolved;
	else if Resolution of Wild Kitty is 3 or Resolution of Wild Kitty is 50: [Player open to advances or just wanting to be friends]
		say "     Making your way through the streets in the general section of the city around the Grey Abbey Library, you arrive where you first met Sascha. This time, however, you don't have to wait long for the cat to show himself. A familiar tuft of messy white hair between flicking ears peeks out from behind a tree in the overgrown garden of that creepy-looking house across the road, then vanishes behind it once more. Did he come from exploring inside of that place?! Besides the chance of falling through rotten floorboards and the like, it has a certain haunted look to it. While you're still wondering whether Sascha's in his right mind, a sudden rush of movement can be seen on the far side of the fence, with Sascha vaulting over it in a smooth and eye-grabbing acrobatic act that ends in a perfect landing on the sidewalk.";
		if Resolution of Wild Kitty is 3: [responded to his advances]
			project Figure of Sascha_bottomless_icon;
			say "     'Perfect timing, [SaschaPAddress]!' Sascha purrs, standing in front of you with his legs proudly spread. There's nothing on his lower half, though his trademark turtleneck still covers everything above his waist, and with a start, you realize he's more than just a man. Rather than the fuzzy balls and kitty cock you expected, a pink pair of lower lips sits between those lithe, athletic thighs, with a slightly enlarged peeking clit jutting in front. Trailing his fingers over his exposed sex, Sascha leans against the fence, giving you an eyeful of his shameless exhibition. With a playful grin, he nods toward his lower half, his tongue peeking between his lips. 'Not what you were expecting? I've always identified as a man, but I never had a problem with my pussy. I wouldn't get much use out of a dick...' Rolling the pads of his fingers over the swollen nub, he coaxes a glistening trail of lubricant over his oversized clit, stroking it like a miniature cock. 'Outside of the occasional pregnancy scare, I've gotten a lot of mileage out of this pretty little thing.'";
			LineBreak;
			say "     [bold type]How do you react to Sascha's casual revelation of his transgender status?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - He's pretty hot! You're more than fine with your sexy kitty being... different.";
			say "     ([link]N[as]n[end link]) - Pull away from him. This isn't your scene.";
			if Player consents: [more of a sexual relationship]
				LineBreak;
				say "     You can't help but stare as Sascha fingers himself, licking your lips as a glittering string of pussy juice drips down to the concrete below. The urge to taste him, barely suppressed, drives you to step closer, ready to please him, but a hand on your chest stops you in your tracks as padded fingertips keep you at arm's length. 'Not yet, [SaschaPAddress]. Our third date isn't over,' Sascha says flirtatiously, then unwraps another apple-flavored treat and slips it between his lips without pushing you away, his chest vibrating with a familiar purr. 'If you want to get in my pants - I left them at the place where we're going! You just have to get to them and prove that you're worthy!'";
				now PlayerRomanced of Sascha is true; [flirted back, into him]
				say "[SaschaFreerunning_Intro]";
			else: [Sascha's disappointed and drops the player]
				LineBreak;
				say "     Shaking your head, you decline Sascha's advances. You don't have a problem with him, but aren't attracted to men like him. Hopefully, he understands. Sascha looks slightly disappointed as you affirm that you aren't interested in a physical relationship with someone like him, licking his fingers clean and ceasing his efforts to entice you. Placing a hand on his neck, he looks away, hurt written across his features. 'Oh. I suppose that's fair enough. I didn't think you'd mind after you let me-' Shaking his head, he steels himself, wiping his eyes. 'Okay, then. I suppose we don't need to see each other again.' As Sascha walks away, his tail hanging lifelessly, you notice that he doesn't take his acrobatic route, instead walking away with his hands in his pockets. [bold type]You surely won't see him again. [roman type][line break]";
				now Resolution of Wild Kitty is 102; [rejected flirtations, gruffly (end of content)]
		else if Resolution of Wild Kitty is 50: [just hanging out with him]
			project Figure of Sascha_turtleneck_icon;
			say "     'Perfect timing, [SaschaPAddress]!' Sascha purrs, standing before you dressed in his usual outfit, with his hands in his pockets. It seems he was waiting for you! Approaching with bouncing steps, he's nuzzling into your chest a second later, greeting you with exuberant affection reminiscent of a housecat. Stepping backward, he unwraps one of his favorite green lollipops, swirling it between his lips as he contemplates you.";
			now PlayerFriended of Sascha is true; [no flirt, just friends]
			say "[SaschaFreerunning_Intro]";
		now Wild Kitty is resolved;

to say SaschaFreerunning_Intro:
	say "     'So, I'm sure you've noticed by now that I like to climb. Have you ever heard of freerunning?' Without waiting for your answer, Sascha launches into an animated explanation. 'Well, there are these cool, partially renovated high-rises near here, lots of construction equipment, and hardly anyone around. I used to DREAM of living there so I could climb and look out over everything without security dragging me away. I scouted it out, and there wasn't anything too dangerous.' Suddenly shy[if PlayerRomanced of Sascha is true] despite his nude lower half[end if], Sascha has the air of someone asking a date to the prom. 'Would you like to come with me? A roof is a great place to [if PlayerRomanced of Sascha is true]give you your prize[else]snuggle and watch the sunset[end if].'";
	LineBreak;
	say "     [bold type]Exploring these half-finished high-rise apartments sounds slightly dangerous. Do you want to risk life and limb to grow closer to the [if PlayerRomanced of Sascha is true]promiscuous [end if]kitty?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - A little danger is the spice of life! You'll go with Sascha to try freerunning, and... other fun!";
	say "     ([link]N[as]n[end link]) - That seems like a waste of time. You risk your life enough just making it day by day!";
	if Player consents:
		LineBreak;
		say "[SaschaFreerunning_Main]";
	else: [player rejection of Sascha's main interest]
		LineBreak;
		say "     'All of this, just to get rejected. Isn't that ironic?' Sascha shakes his head sadly, his excitement melting at your words. 'I'm not looking for a relationship if we don't have anything in common, and well, I'm not going to slow down for you. If you at least try-' Sascha trails off, shaking his head. 'No, that's not fair. I don't want to force you to do something you're not ready to do. Take care of yourself.' Walking away with his head lowered and his tail between his legs, Sascha turns his head to shoot you one last longing look, then continues out of sight. [bold type]You surely won't see him again. [roman type][line break]";
		now Resolution of Wild Kitty is 102; [rejected lifestyle, gruffly (end of content)]

to say SaschaFreerunning_Main:
	say "     Smiling at the [if PlayerRomanced of Sascha is true]pantsless [end if]cat's exuberance, you tell him you'd love to go with him. The view sounds beautiful [if PlayerRomanced of Sascha is true]and you'd love to give that pretty pink pussy some attention. [else]look out over the city with him on your arm. [end if]All he has to do is show you the way! 'Yes! Are you sure? I'm not going to take it easy on you!' Pressing close, Sascha beams, his tail curling and twitching with excitement. His arms snake around your waist, hugging you tightly and vibrating your chest with a deep purr before pulling away. Sliding his hand into yours in a firm grip, he pulls you along, towards your intended destination, his [if PlayerRomanced of Sascha is true]pantsless [end if] shapely rump rolling with every step. A little while later, you arrive at a five-story building in varying stages of construction, lined with scaffolding and open to the sky in several places.";
	say "     Thankfully, it appears to have been abandoned long before the nanites came along, so you're unlikely to encounter many mutants within its walls. The only problem is how Sascha expects you to enter the building. From the looks of it, the entrance has been well-secured, and tearing down laminated boards nailed together will draw unwanted attention. 'This way!' you hear your excited kitty call out as he waves from the side of the building, having slipped from your grip, and run ahead. As you approach, he sets his stance, squatting down and giving you an eyeful of two pretty pink holes before launching himself up to grab the edge of a balcony a story up. He keeps his momentum, smoothly pulling himself up and flipping over the railing onto the balcony. He peeks down at you with a grin. 'Through here!' he calls, waving at what you assume to be an opening in the building behind him.";
	WaitLineBreak;
	let bonus be (( Dexterity of Player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Dexterity Check):[line break]";
	if diceroll + bonus >= 12:
		LineBreak;
		say "     Having to improvise the logistics of keeping up with a very athletic cat boy, you looking around and thankfully notice an abandoned ladder placed nearby. Retrieving that, you lean it against the balcony and climb after Sascha, gracefully swinging yourself over the railing soon after. The cat meanwhile has already passed through a door-shaped hole in the wall nearby, grinning out at you through the opening. You step in after him and are greeted in a bare-walled apartment, with Sascha throwing his arms around your waist, hugging you tightly and tucking his head under your chin. 'You did it! I didn't expect you to keep up with me, but you did fine! Let's go for the next challenge!' Breaking the embrace, the black cat tilts his head toward the apartment's door. 'The stairs to the next floor have collapsed, so we'll have to go around. Come on!'";
	else:
		LineBreak;
		say "     Having to improvise the logistics of keeping up with a very athletic cat boy, you looking around and thankfully notice an abandoned ladder placed nearby. Retrieving that, you lean it against the balcony and try to climb after Sascha, but your fingers slip, sending you crashing to the ground. You roll out of the way before the metal ladder crashes down on you, staring up at the giggling cat with wounded pride and a bruised ass. That didn't work so well. Let's look around for another way. Heaving yourself to your feet, you have a look at the plywood construction siding, finding a piece that seems less securely attached than the surrounding boards. Sliding your fingers through a gap, you grip the side and give it a pull.";
		let bonus be (( Dexterity of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 14:
			LineBreak;
			say "     With an ominous crack, the board comes loose, creating an opening you can use to enter the building. It just takes a moment to find a railing-less stairwell inside to make your way to the first floor, where Sascha is not so patiently waiting for you, looking through an opening to the balcony.";
		else:
			LineBreak;
			say "     The board bends away from the rest of the siding, but then snaps back as you prove not strong enough to hold onto it, pulling your fingers with it and slamming against the edge of the hole. With a soft hiss of pain, you withdraw your fingers, shaking them to get rid of the numb feeling. As you're silently cursing your misfortune, your gaze falls upon something just lying abandoned on the ground nearby. It's a grimy, half-splintered sledgehammer! Just the thing to find AFTER you made a fool of yourself. The tool is barely serviceable, but useful enough to destroy one of the plywood boards with, splintering it down the middle. After pushing through the jagged hole, it just takes a moment to find a railing-less stairwell inside to make your way to the first floor, where Sascha is not so patiently waiting for you, looking through an opening to the balcony.";
		say "     As you appear behind him instead, he seems confused, but as you ask what's wrong, Sascha shrugs, shaking his head and smiling. 'Nothing. I suppose I just thought you would-' Giggling softly, he pats you on the back, sounding a bit cheated. 'Good job, [SaschaPAddress]. You may have taken a different route, but-' Clearing his throat, the cat pointedly ignores your method of entry, pointing toward the opposite side of the building. 'The stairs here have collapsed, so we'll have to take a different route. Come on!'";
	WaitLineBreak;
	say "     After crossing a few areas with nothing but exposed beams to prevent you from falling to the ground floor, you arrive at a simple open window with scaffolding just outside. Assuming this is your destination, you ask Sascha if he wants you to climb the side of the building from here. Three floors sound like a lot, but you're game if he is! 'Yep!' the chipper cat says as he leans out the window, tail lifted and curling into a question mark. You can't help but notice how much of him this angle shows off, giving you a pleasant view of [if PlayerRomanced of Sascha is true]a black-furred rump with two pink holes, one puffy and clenched tight and another slightly agape, glistening with wetness[else]a shapely rump barely hidden by his swishy track pants[end if]. Without another word, Sascha climbs outside, waiting for you to peek out before he takes off on the flimsy wood, jumping across a gap with ease and gripping an exposed metal bar, spinning around it, and flinging himself to the next floor. Pausing there, he squats, crooking a finger in your direction as if asking you to follow him.";
	say "     Before you can pick your jaw off the floor, Sascha's zooming up to the next floor, pulling off death-defying moves that make you wonder if he's found a cheat code for life! Surely he doesn't expect you to run up a wall like that. You swallow as you follow Sascha's route with your eyes. You can't match his grace, but there seems to be a safer way up, with a ramp connecting two levels over there towards the end, followed by a box to jump onto and get up even further. The only hurdle on the way there is a collapsed board, leaving just a sliver of a metal beam bar to stand on. If you slip, you'll plummet at least forty feet down, into a pit formed by underground parking missing its yet un-built roof. Even if the nanites manage to heal you, any mutants that hear the sound of your fall might take advantage of you. Alternatively, you notice a direct path upward, but you'll have to pull yourself up by your fingertips to the upper levels. It'll take an obscene amount of strength!";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Trust in your own dexterity and jump the gap!";
	say "     ([link]N[as]n[end link]) - You're surely strong enough! You can pull yourself up!";
	if Player consents:
		LineBreak;
		let bonus be (( Dexterity of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 16:
			LineBreak;
			say "     Steeling yourself, you trace your route mentally before stepping backward and breaking into a run. You jump at the right moment, hopping across and bouncing off the metal beam, landing gracefully on the other side, and as you land, you hear an excited clap from above. Deciding to show off a bit, you take the remaining parts of the path at breakneck speed, reveling in the wind on your face and reaching the same level as Sascha in no time.";
		else:
			LineBreak;
			say "     Steeling yourself, you trace your route mentally before stepping backward and breaking into a run. You jump at the right moment, but as you reach the beam, your footing is too shaky, sending you careening toward the ground. Thankfully, you catch yourself on the platform, pulling yourself up with difficulty and pausing while your heart beats out of your chest. That was a close one! You're more cautious with the rest of your route, taking your time and eventually reaching the same level as Sascha. Hopefully, he doesn't hold it against you that you aren't as practiced as he is!";
	else:
		LineBreak;
		let bonus be (( Strength of Player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]17[roman type] (Strength Check):[line break]";
		if diceroll + bonus >= 17:
			LineBreak;
			say "     Screw the more dangerous route. You trust your muscles much more than you trust that meager footing. Reaching up, you grip the scaffolding above you, raising yourself inch by inch as your forearms strain, your muscles screaming at you to stop. It takes a while, but you pull yourself up without risking your safety, crossing two levels and resting your weary arms before you scramble to your feet. Just one more to go! Hopefully, you don't need to use your arms for a while. Rubbing your aching muscles, you set off after the cat, hoping your reward will be worth it.";
		else:
			LineBreak;
			say "     Screw the more dangerous route. You trust your muscles much more than you trust that meager footing. Reaching up, you grip the scaffolding above you, raising yourself inch by inch as your forearms strain, your muscles screaming at you to stop. Unfortunately, your strength gives out halfway, and you dangle there helplessly before setting yourself back down, hoping Sascha didn't see your pathetic attempt. As a quick and stylish ascent is out for you now, you sigh and look for some other way. After turning around and walking to the very end of the scaffolding, you do spot a latch in the wooden ceiling, allowing it to be opened and someone to climb up using a narrow ladder. Pretty boring and unexceptional, but at least it'll allow you to continue. The next ladder isn't that far away, and soon you're up on the same level as Sascha.";
	say "     The remainder of the path to the roof isn't as hazardous as the rest, and Sascha leads the way, tail twitching above his [if PlayerRomanced of Sascha is true]bare ass[else]shapely cloth-covered rump[end if]. Once you reach the landing, he enters the building through a hole in the side wall, quickly finding the some access stairs and running up, then throwing open a door and disappearing onto the flat roof. You can't help but share his excitement for the [if PlayerRomanced of Sascha is true]prize[else]view[end if] he promised you, and you hurry after him, shielding your eyes as you step out onto the windy top floor of the building. [if Daytimer is day]In the golden sunshine[else]In the pale moonlight[end if], what should just be a common, unsecured construction site takes on a whole different air - this is [italic type]your[roman type] roof now, the final goal of your shared adventure of trespassing, climbing and athletics with the black cat.";
	if PlayerRomanced of Sascha is true: [player interested in sex]
		say "      Sascha's waiting for you, leaning over the edge of the building and pointing out into the distance. As you approach, he speaks in an excited voice. 'Isn't the view from here amazing?' Of course, you can't see anything else BUT the view, though it's very different from the one he's describing. Standing on tiptoes with his tail lifted, he's giving you a beautiful show of pretty pink lower lips glistening wet in the [if Daytimer is day]sun[else]moon[end if]light and a puffy hole beneath his flicking appendage. Both of them look like they've seen their fair share of action, and his pussy, in particular, winks as he speaks, begging for attention. Yes, the view is spectacular, and you tell him as you shamelessly [if Player is not barecrotch]remove your clothing[else]lower your hands to your crotch[end if] and [if Player is male]take hold of your erection[else if Player is female]roll your finger over your clit[else]stroke the sensitive skin of your pubic area[end if].";
		say "     The slow wiggle of those hips calls to you, and you step closer, massaging soft cheeks and pulling them apart to inspect Sascha's light-pink holes, feeling your mouth moisten in desire. 'See something you like, [SaschaPAddress]?' Sascha coos, pressing backward and spreading his legs as if inviting you to sink a finger into those drooling folds. 'You've been such a good sport, following me up here. I appreciate having someone along who gives their best, even when it's difficult going. And now that you've worked up an appetite, how about some cooldown exercise?' Sascha braces himself against the only slightly raised rim of the roof's edge, slender hands gripping it with his claws sliding into view. Looks like he's expecting a wild ride - and is doing his best to entice you to provide that, as he lifts his tail and sways those sexy hips invitingly. You doubt he'll turn down anything you want to do to him.";
		LineBreak;
		say "     [bold type]What fun do you want to have with Sascha?[roman type][line break]";
		LineBreak;
		let Sascha_RoofSex_Choices be a list of text;
		add "Eat your flirty pussycat's pussy! Use your tongue to make him whimper and gasp in pleasure!" to Sascha_RoofSex_Choices;
		if Player is male:
			add "Sink your cock in between the silky folds of his pussy! He's been teasing you long enough!" to Sascha_RoofSex_Choices;
			add "Surprise him by giving the pussycat a nice and deep anal fuck! He's been teasing you long enough!" to Sascha_RoofSex_Choices;
		let Sascha_RoofSex_Choice be what the player chooses from Sascha_RoofSex_Choices;
		if Sascha_RoofSex_Choice is:
			-- "Eat your flirty pussycat's pussy! Use your tongue to make him whimper and gasp in pleasure!":
				LineBreak;
				say "[Sascha_Roof_Oral]";
			-- "Sink your cock in between the silky folds of his pussy! He's been teasing you long enough!":
				LineBreak;
				say "[Sascha_Roof_Vaginal]";
			-- "Surprise him by giving the pussycat a nice and deep anal fuck! He's been teasing you long enough!":
				LineBreak;
				say "[Sascha_Roof_Anal]";
	else: [player just wants to be friendly]
		say "     Sascha's waiting for you, leaning over the edge of the building and pointing out into the distance. As you approach, he speaks in an excited voice. 'Isn't the view from here amazing?' You stand behind the cat, avoiding the dizzying view beneath him and slipping your arms around his waist - half because he was close to falling off, and half because you can't help but feel a connection with your new friend. He's right, the city skyline IS incredible, but you find it hard to focus on anything in the distance with this vibrantly alive and infectiously adventurous young man within arm's reach. The way he sags backward against you and his vibrating purr tell you that you're not the only one who's enjoying sharing this moment with one another, and you stand in comfortable silence as the [if Daytimer is day]sun paints golden[else]moon paints silver[end if] streaks across Sascha's soft black fur.";
		say "     'Thank you for coming up here with me. I know you're not interested in sex, but that's not all there is to me, either.' Turning in your arms, the cat perches at the edge, his arms slipping around your waist and his fluffy hair tickling your chin. 'I'll find an easier way down for you. You must be exhausted.' He murmurs, his face buried in your neck. '...Once I'm ready to let go.' The two of you stay together in companionable closeness for a little while longer, before Sascha eventually loosens his embrace with a happy little sigh. He's true to his word, and as you return to the ground floor, he holds your hand, leaning against your arm and chatting about other places in the city he wants to take you to. Too soon, you reach the apartment block's entrance and say your goodbyes, with only the faint feeling of Sascha's kiss on your cheek to remind you of his presence and a green apple sucker he tucked into your hand.";
		now Resolution of Wild Kitty is 51; [hanging out on the roof, complete with a hug]

to say Sascha_Roof_Oral:
	say "     Those soft pink lips call for your tongue, and you can't resist for a moment longer. Without a moment's hesitation, you drop to your knees, forgoing your pleasure to press a gentle kiss to Sascha's clit. It's larger than you're used to but not particularly strange, considering the things you've seen in the city, and you nuzzle against it, suckling softly as your tongue laps at its glistening surface. 'Mmmph. [SaschaPAddress]!' Sascha coos, his legs shaking as you nibble at his most sensitive spot. His stance widens to nuzzle back against the gentle simulation, but he's growing more demanding by the second, rolling his hips hard enough that you worry if you don't move on, he'll break your nose with enthusiasm. Purrs vibrate through his body, and sweet juices flood your tongue with each lick, a gentle, fruity musk settling over your senses as you work your way higher. Silky lubricant coats your tongue as you swirl it over his impossibly smooth entrance, and its honey-like flavor encourages you to suckle, your tongue flicking out to tease winking clenches from him.";
	say "     'Y-You're not bad at that.' Sascha pants, one paw slipping between his legs to add a slow circling motion to the stimulation you're giving him, shamelessly masturbating his swollen clit in time with your lapping tongue. 'P-Please. Deeper. I like it sloppy.' He begs, his hole clamping on what little you give it. Gripping well-toned but bubbly cheeks for a handhold, you oblige the needy kitty's request, slurping your tongue past soft folds and invading his insides with long, messy laps. Your nose presses against his ass as you all but fuck him with your oral expertise, adding a lewd, sloppy schlick to his desperate sounds. You can't breathe with how desperately he's pushing back, but you don't want to, content to subsist on nothing but sweet honey and the musical moans you draw from his open mouth.";
	WaitLineBreak;
	say "     'Ah. I-I-' Sascha goes incoherent as his inner walls wildly spasm, trapping your tongue in a milking channel and riding your face as you do your best to prolong his pleasure, his fingers abusing his clit with desperate stroking. It's a few minutes before he can move, still twitching as an errant breeze strokes his nethers, but he removes his rump from your face, letting you drag in grateful breaths. 'N-Next time, let me do you,' Sascha says as he looks over his shoulder, his chin marred by a trail of drool and his fluffy hair wet with sweat. The look in his eyes tells you that he'll show you no mercy when he returns the favor. Fuck, that's hot. Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner while you find a safe way back down to the streets.";
	NPCSexAftermath Player receives "OralPussy" from Sascha;
	now Resolution of Wild Kitty is 4; [first time: oral]

to say Sascha_Roof_Anal:
	if Cock Length of Player < 12: [Player fits in him]
		say "     Forgoing the obvious choice, you flop your manhood between Sascha's cheeks, rubbing your cockhead against his plush pucker. Licking your lips, you prod inward, a pearl of precum slickening the way. Taking his purring moan as consent, you spread his cheeks, worming deeper into his ass with slow pressure. 'Mmmph. That always feels so strange.' Sascha squirms as you reach the halfway point but does not attempt to get away, pushing back into your thrusts to take you to the root. 'You don't have to go slow. I've had more than my fair share of sly guys thinking they can get away with sliding into the wrong hole.' He giggles, clamping down on your cock as though egging you on. 'Just make sure you don't pull out.' You don't need him to tell you twice. As tight as he is, there's no way you could pull out if you wanted to. Every thrust meets a bit of difficulty, but then the enticing way his clenching insides ripple along your shaft spur you on, milking globs of pre to slicken the way.";
		say "     Soon you're slapping your [If Ball Count of Player > 2] balls against the pretty kitty's dripping slit [else]hips into his plush asscheeks [end if]. With every drag of your cock, his hole clings to your shaft as if begging you to push back in, and you can feel his purring vibrating through his walls, bringing a rising tide of cum into your steel-hard shaft. '[SaschaPAddress]!' Sascha mewls, twitching limply in your arms. His face dangles over the edge, and his legs go limp, leaving nothing but your connection and gripping fingers to hold him up. Judging by the rhythmic milking of his anal muscles, he's close too, and the slow dripping of his juices against the ground below confirms it. Slamming to the hilt as hard as you possibly can with a tight grip wringing your cock, you pump your love deep into the kitty's hole, gritting your teeth and holding him there as you feel him spasm and mew through his finish, tail sticking straight up and frizzing as he pushes back in a telltale rhythm. By the time he's finished, he looks a mess, with sweaty hair and a satisfied but exhausted smile.";
		WaitLineBreak;
		say "     'You're such a stud.' He coos, shuddering as you withdraw from his now gaping hole, your handiwork exposed for all the world to see. His rear entrance is still pretty and pink, but a trail of your cum oozes out, and he's still gaping even after your cockhead slops from its tight grip, winking as if demanding a second round. 'You're the only one to make me cum hands-free. You can do that again whenever you like!' Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner while you find a safe way back down to the streets.";
		NPCSexAftermath Sascha receives "AssFuck" from Player;
		now Resolution of Wild Kitty is 6; [first time: anal]
	else:
		say "[Sascha_Roof_Thigh]";

to say Sascha_Roof_Vaginal:
	if Cock Length of Player < 12: [Player fits in him]
		say "     Sascha's pussy looks inviting, and as you line up your tip, you can feel him shudder, smearing his swollen clit over your cocktip in a lewd kiss. Steadying him with a stern grip, you test his folds, delighting in the slick silk your cock slips into with little effort. An experimental thrust slides you to the root, and you realize that he's good to go, ready to take anything you can give him. [if Cock Length of Player > 8]'You're so big!' Sascha coos, pressing his sopping slit back into you as you feel his cervix squish against your cockhead, then roll against your shaft, letting you into the narrow passage past it without allowing access to his womb. [else]Sascha sighs as you slip in, melting into your touch and clenching gratefully. You're nowhere near bottoming out inside of him, but it doesn't seem to matter! [end if]'Pound me, [SaschaPAddress]. I can take it.' He practically begs, all of his teasing melting away into pure neediness.";
		say "     Not one to disappoint, you slip free of those sloppy folds, then sheathe yourself again, picking up a heavy rhythm that sends your cock [if Cock Length of Player > 8]slamming into that tight dead end. [else]stirring his inner walls with aggressive thrusts. [end if]Slick juices roll down your shaft, and you barely resist the urge to cum immediately, gritting your teeth and attempting to work Sascha to his finish first. You don't have to wait long. Sascha seems to get more out of your thrusts than you are, closing his eyes and purring as a litany of needy mews slip from his lips. His tail goes straight up as a storm of clenching wetness squeezes your cock tight, and you realize his orgasm isn't far, spilling over with a groan that echoes across the empty roof, wringing your cock as he pushes back in a rhythm that nearly sends you both to the ground.";
		WaitLineBreak;
		say "     You erupt just as Sascha goes limp, his pussy drooling slick love juices down your shaft as you baste his cervix in your creamy seed. Your cock bucks like a spirited horse, and you can barely stop your hips, filling the space with wet schlicks, but sadly, the feeling doesn't last, replaced with the softer pleasure of afterglow. Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner while you find a safe way back down to the streets.";
		NPCSexAftermath Sascha receives "PussyFuck" from Player;
		now Resolution of Wild Kitty is 5; [first time: vaginal]
	else:
		say "[Sascha_Roof_Thigh]";

to say Sascha_Roof_Thigh:
	say "     As you line your cock up with Sascha's opening, you realize he's too small for your gargantuan length. Feeling cheated, you saw your cock between those upturned cheeks, lamenting that you can't fuck the needy kitty. Perhaps he'd prefer to do something else that wouldn't tear him open? Settling back against your slow grind, Sascha lets go of his handhold, instead reaching between his legs to grip your shaft and guide it against his soft lower lips. 'It's okay, [SaschaPAddress]. You can still fuck me.' Before you can question him, he stands, wriggling his hips and closing his legs to seal your cock between them, nuzzling your twitching tip against his slick lips. 'It's not as good as my pussy, but this will do. Don't hold back!' An experimental thrust tears a groan from your lips as your dick follows the slick lips, using the kitty's lower half as a makeshift sex toy.";
	say "     He's right! It isn't as tight or warm as a greedy hole, but his plush fur makes up for the difference, coaxing you to fuck his thighs with increasing fervor, your cock smearing its arousal over his clit. Gripping your increasingly wet dick in both hands, Sascha strokes you in time with your feral rhythm, spreading his slick juices over your shaft and mashing his clit against the sawing length. 'That's it, [SaschaPAddress]. Let it all out. You may not fit, but you can still cum inside me. Breed me like you mean it!' Soon enough, you feel your orgasm bubbling over, your first spurt painting the ground below before Sascha can slip you between his lips, aiming your eruption into his greedy hole and milking every drip from your cock with stroking fingers. By the time you finish painting his innards, you swear you can barely feel his skin against your cocktip beneath the clinging,slick layer of cum, but the lingering afterglow and gentle fingers are more than enough for you.";
	say "     Pulling Sascha back into your lap, you cuddle him in sticky silence, resting your chin on his shoulder and gently kissing his exposed neck. His purring is so soothing, and the way he melts into your touch almost makes you forget where you are. Sadly, it can't last forever, and you say your goodbyes, leaving him to sleep off your lovemaking in a corner while you find a safe way back down to the streets.";
	NPCSexAftermath Sascha receives "Stroking" from Player;
	now Resolution of Wild Kitty is 7; [first time: thigh-fuck]

Section 2 - NPC Object


Table of GameCharacterIDs (continued)
object	name
Sascha	"Sascha"

Sascha is a man.
ScaleValue of Sascha is 3. [human sized]
Body Weight of Sascha is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Sascha is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Sascha is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Sascha is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Sascha is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Sascha is 5. [length in inches]
Breast Size of Sascha is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Sascha is 2. [count of nipples]
Asshole Depth of Sascha is 9. [inches deep for anal fucking]
Asshole Tightness of Sascha is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Sascha is 0. [number of cocks]
Cock Girth of Sascha is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Sascha is 0. [length in inches]
Ball Count of Sascha is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Sascha is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Sascha is 1. [number of cunts]
Cunt Depth of Sascha is 9. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Sascha is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Sascha is 4. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Sascha is false.
PlayerRomanced of Sascha is false.
PlayerFriended of Sascha is false.
PlayerControlled of Sascha is false.
PlayerFucked of Sascha is false.
OralVirgin of Sascha is false.
Virgin of Sascha is false.
AnalVirgin of Sascha is false.
PenileVirgin of Sascha is true.
SexuallyExperienced of Sascha is true.
TwistedCapacity of Sascha is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Sascha is true. [steriles can't knock people up]
MainInfection of Sascha is "Catboy".
Description of Sascha is "[SaschaDesc]".
Conversation of Sascha is { "<This is nothing but a placeholder!>" }.
The scent of Sascha is "[SaschaScent]";

to say SaschaScent:
	say "He smells like green apples with an undertone of sweat and sweetness that you can't quite place.";

to say SaschaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Sascha] <- DEBUG[line break]";
	say "...";

Section 3 - Random Meetings

Table of GameEventIDs (continued)
Object	Name
Rough But Sweet	"Rough But Sweet"

Rough But Sweet is a situation.
ResolveFunction of Rough But Sweet is "[ResolveEvent Rough But Sweet]".
Sarea of Rough But Sweet is "Warehouse".
Prereq1 of Rough But Sweet is Wild Kitty.
The Prereq1Resolution of Rough But Sweet is { 4, 5, 6, 7, 51 }.

to say ResolveEvent Rough But Sweet:
	say "     'Psst!' As you walk through the warehouse district, you feel a piece of gravel bounce off your head. Looking up, you notice Sascha hanging upside down from a fire escape clutching something brown and leathery in one hand. Is that a loincloth? Before you can question the absurdity of the underwear-stealer's actions, he lets down a ladder for you, waiting as you climb and embracing you as soon as you step foot on solid ground. Possibly for the first time since you've met him, Sascha's mouth is devoid of candy, and he seems restless, shifting from foot to foot and acting twitchy. Is he in sugar withdrawal? Poor thing. Noticing your concern, Sascha giggles, stuffing the loincloth in his hand into one of his pockets. 'I'm fine. I've just got a bit of an oral fixation. Without something in my mouth, it's hard to focus. It's been this way since I stopped smoking when I was nineteen.' Resting his paws on your shoulders and slipping closer, he nuzzles under your chin. 'More importantly... Where have you been? I've been looking around for you, and you've been nowhere~ I missed you.'";
	if Resolution of Wild Kitty is 51: [platonic relationship]
		say "     Gathering the pretty kitty in your arms, you kiss his cheek and tell him you were thinking of him. You haven't been avoiding him; you've just been busy with other things. But now that you're together again, you don't mind spending quality time if he's free. 'Oh, I'm just doing an odd job. My candy supplier wasn't satisfied with porn mags this time. He asked for something a bit more powerful. I've heard the orcs have some strong musk, so I snuck in and stole some undies~.' Waving the orc loincloth triumphantly, Sascha grins, then tucks it back into his pants. 'Of course, they sent out a party to try to catch me, so I've had to stay here. I'm surprised you didn't-' Sascha's voice trails off as you hear a group of masculine voices from below. Pressing a finger to his lips to quiet you, he tugs at your arm, dragging you off the fire escape through a nearby open window. Once inside, he leads you to the door of an office-like room, then out onto a catwalk.";
		WaitLineBreak;
		say "     All around you is a gigantic warehouse with shelves the size of a large apartment, and your eyes widen as you let the cat drag you to the edge of the platform, following him down onto a collection of pallets. A small cave made of surprisingly sturdy boxes awaits you, and you slip into the cozy space alongside the cat, shooting him a questioning glance. What has he gotten himself into? Doesn't he know what could happen if something caught him? 'Oh, this is nothing. You know I'm a thrillseeker~' Sascha says as he straddles your lap, resting against your chest and letting his eyes flutter closed. 'This is a good place to stay when I try to escape something unreasonable, angry, or horny. Fifty feet off the ground, nice and warm, where nothing can reach me.' Squeezing your midsection, he uses your chest as a pillow, his purring vibrating through your body.";
		say "     'Your concern is nice, though. Maybe next time you can protect me if you're that worried.' You lay there with the cat for quite a while, stroking his head fur and enjoying his purring presence. Eventually, you doze off, lulled into a sense of security by the warmth of his weight. When you awaken, you gently shake the dozing cat awake. You hate watching Sascha switch from peacefully sleeping on your chest to looking around in bleary confusion, but it's time to move on with your day. Kissing his cheek, you leave him to wake up the rest of the way, gingerly picking your way down the shelves and exiting the warehouse. As you shoulder your pack, you touch your chest, where you can still feel the cat's warmth. You should find him again later.";
		now Resolution of Rough But Sweet is 5;
		follow the turnpass rule;
	else:
		say "     Cupping Sascha's ass in both palms, you lean in, surprising the squirmy kitty with a long, deep kiss that rolls your tongue against his rough one. After your last meeting, you're not shy about touching him, slipping your hands past his waistband and seeking a firmer hold in the warmer space between his cheeks. The way he purrs as you molest him shows his desire for more, and you slip two fingers inside of him, delighting in the soft moan you wring from him. Seconds from pulling down the cat's pants to get at his sweet pussy, you hear shouting voices from below, breaking up your hot and heavy makeout session. Sascha bites his lower lip, looking up at you with needy eyes, and murmurs as he squirms off your fingers, his tail twitching and caressing your wrist. 'Fuck. My stupid supplier just HAD to have his fix of orc musk. We're finding somewhere to continue this where we won't be interrupted.'";
		WaitLineBreak;
		say "     Eagerly gripping your wrist, the cat drags you through a nearby window, stopping to press you against a wall and losing his clothes in the process. Before you can ask if his nudity is wise, the oversexed cat has tugged you from the office he left his clothes in onto a catwalk, then over the edge onto a pallet of boxes a few feet down, at least fifty feet off of the concrete below. Lured by the hypnotic sway of the cat's bare ass, you follow him into a gap in the boxes. A cozy cave awaits you, scented with Sascha's sweet musk, and before you can settle in, he's straddling you, clawing at your clothes, and guiding your hand back to his pussy.";
		if player is male:
			if Resolution of Wild Kitty is 4: [blowjob]
				say "     Hot and heavy kissing follows as Sascha's cunt spasms around your fingers, leaking sweet nectar as he grows closer to his orgasm. Unable to resist the call of that sweet pussy, you nuzzle your hastily freed cock up against his lower lips, grinding it against his clit and humping with wild abandon. Your needy kitty stiffens within moments, and before long, you feel your shaft dripping with his cream, the slightest push away from entering him. 'Your turn.' Sascha murmurs in your ear as his paws drag your shirt over your head. Trailing his tongue over your chest, he works his way lower[if player is not barecrotch], tugging your pants the rest of the way off before you can decide whether it's wise to be naked in a place like this[end if]. The first long lick over the underside of your cock takes your breath away, and you spread your legs for the purring cat, biting your lower lip as you watch that drooling feline tongue roll over sensitive flesh. Panting greedily, he grips the base, dragging his tongue over the tip to swipe up your pre. 'I told you I'd return the favor, didn't I? You don't know how good it felt when you ate me out...'";
				WaitLineBreak;
				say "     Sascha's mouth is just as talented as the rest of him, his teeth well hidden by soft, wet lips and his tongue rolling over your sensitive shaft with each bob of his head. There's a sense of urgency to his movements, and he barely gags as he slurps you to the base, gathering speed until foam forms at the tight ring of fingers around the final inch of your dick. You try to warn him when your orgasm is approaching, but he's too damn good, and all you can do is push your hips up, ready to blast his throat. A loud purr vibrates around your dick as Sascha stops just before the point of no return, resting and staring up at you with mischievous eyes. He settles into place as your orgasm backs off, then starts anew before you can go soft, working your cock until you feel you'll go mad. To the edge and back again, his face smeared with pre and drool and his hair dripping with sweat, he works you over, watching your face for signs of orgasm, finding ways to get you closer than you've ever been, then nursing at the pre his denial earns him, swallowing it [if Player is not internalBalls]as he kneads your poor, aching balls. [else]like a slimy treat. [end if][line break]";
				say "     You lose track of how long he edges you, your cock growing so sensitive that a gentle kiss milks a fat pearl of pre from the bucking shaft. Sascha keeps you there for far too long, glossing his lips with your fluids until your pleading expression gets through to him. Finally, the sweet release comes as he throats your cock, his purring reaching a fever pitch while your first shot paints his tonsils. You hump wildly, slapping your [if Player is internalBalls]crotch [else]balls [end if]against his chin and sending streamers of cum overflowing down his chin. 'You taste good.' Sascha murmurs as he moves to lay on top of you, grinding your over-sensitive cock against his pussy. You can feel your tip buck against his entrance, and you think you could fuck him if you wanted to without the cat protesting. If anything, he seems to be encouraging it.";
				now Resolution of Rough But Sweet is 1; [BJ received]
				NPCSexAftermath Sascha receives "OralCock" from Player;
				say "     [bold type]Do you want to go for another round? Sascha's practically begging for it.[roman type][line break]";
				say "     [link](Y)[as]y[end link] - Fuck yeah. Sloppy Seconds.";
				say "     [link](N)[as]n[end link] - No, you've had enough.";
				if Player consents:
					say "[SaschaSecondRound]";
				else:
					say "[SaschaSecondDenial]";
			else if Resolution of Wild Kitty is 5: [vaginal]
				say "[SaschaWarehouseCunt]";
				say "     [bold type]Do you want to go for another round? Sascha's practically begging for it.[roman type][line break]";
				say "     [link](Y)[as]y[end link] - Fuck yeah. Sloppy Seconds.";
				say "     [link](N)[as]n[end link] - No, you've had enough.";
				if Player consents:
					say "[SaschaSecondRound]";
				else:
					say "[SaschaSecondDenial]";
				now Resolution of Rough But Sweet is 2; [dicked Sascha's pussy]
			else if Resolution of Wild Kitty is 6: [anal]
				say "     Ignoring Sascha's wordless plea, you drag your finger over his pussy, gathering wetness, then pull him closer, slipping your finger into his backdoor. Driving it deep, you nip at his flicking ears, testing the tight entrance you fucked earlier [if Player is not barecrotch]as you shimmy out of your pants[end if]. He seems to get the idea soon enough, turning around and lifting his tail, then shuddering as his cheeks wreathe your cockhead. You're gentle at first, slipping past his pretty puffy pink entrance and letting your pre slicken the way, but he's so tight that you can barely resist, watching each inch of your cock disappear past his ring with greedy eyes. Testing his resilience, you buck your hips, slurping to the base and earning a mewl from the needy cat.";
				WaitLineBreak;
				say "     Taking that sound to mean he's good to go, you grip his hips and settle into a rough, deep rhythm, reveling in the intense heat and tightness as his unattended cunt drools down your shaft[if Player is internalBalls], coating your balls in slippery juices each time they slap against his greedy cunt[end if]. Soon enough, Sascha's meeting your thrusts with an eager gait, his tail swirling wildly from side to side as he impales himself on your cock. He's too far gone to even finger himself, instead bracing himself on his knees so he can take your dick even faster. He can't even speak, his open mouth only letting out wordless, high-pitched mewls and incoherent begging. Finally, you thrust to the root, painting Sascha's colon with your love and pulling him back to sit on your lap, using his frantically clenching innards to wring every bit of cum from your bucking cock. Dribbling wetness tells you that the kitty's joining your orgasm, and as your cock flops free, you feel it kiss against his needy ether lips, your cum mixing with his juices. You could stuff yourself inside and fill his other hole if you wanted to. The limp kitty seems too blissed out to protest.";
				say "     [bold type]Do you want to go for another round? Sascha's practically begging for it.[roman type][line break]";
				say "     [link](Y)[as]y[end link] - Fuck yeah. Sloppy Seconds.";
				say "     [link](N)[as]n[end link] - No, you've had enough.";
				if player consents:
					say "[SaschaSecondRound]";
				else:
					say "[SaschaSecondDenial]";
				now Resolution of Rough But Sweet is 3; [dicked Sascha's ass]
				NPCSexAftermath Sascha receives "AssFuck" from Player;
			else if Resolution of Wild Kitty is 7: [too big last time]
				if Sascha is CuntFitsForPlayerCock: [dick fits now]
					say "[SaschaWarehouseCunt]";
					say "     [bold type]Do you want to go for another round? Sascha's practically begging for it.[roman type][line break]";
					say "     [link](Y)[as]y[end link] - Fuck yeah. Sloppy Seconds.";
					say "     [link](N)[as]n[end link] - No, you've had enough.";
					if player consents:
						say "[SaschaSecondRound]";
					else:
						say "[SaschaSecondDenial]";
					now Resolution of Rough But Sweet is 2; [dicked Sascha's pussy]
				else: [dick still doesn't fit]
					say "     As you finger Sascha's pussy, you lower your pants and snuggle your cock between his thighs, maneuvering him into position for a thighfuck. You remember that you don't fit inside of him, and you'd prefer not to ruin the mood by trying, so instead, you roll your cock up against his lips, spreading them gently and teasing his clit with your tip. Surprisingly, Sascha maneuvers your cock against his drooling entrance, resting his paws on your shoulders and pressing his forehead against yours with a soft purr. 'Not this time. I've been practicing. You should fit now.' He murmurs as he applies gentle pressure to your huge shaft, hissing through his teeth as you pop past his entrance and bulge out his flat belly. Noticing the concern in your eyes, he shakes his head, wrapping his legs around your waist. 'Please. Fuck me, [SaschaPAddress].'";
					say "     Those words, spoken with sincerity, stir you to action, sending your hips pushing up as your eyes follow the lewd bulge of your cock, bucking into the stretchy kitty's pussy with every thrust. He's crushingly tight, but he's right! Inch by inch, you're disappearing into him! It's practically a miracle, but with your size, you're just happy to find someone capable of taking you that doesn't have a screw loose. Gritting your teeth, you resist the urge to fuck the cat silly, dragging him into a tight hug as you excavate his innards, stretching him more than he's ever been. You lose the battle around the point when his pussy lips kiss the base of your cock, and you settle for fucking him hard and fast, panting and gripping his tail for leverage.";
					WaitLineBreak;
					say "     By now, Sascha's too far gone for conversation, instead mewling for more with every cunt-busting shove. You're happy to oblige, plunging your cock to the base and battering his cervix. You don't last long in his heavenly, tight cunt, blasting a creamy load that stretches the poor cat further, mixing with the dribbling fem-cum you feel sloppily coat your crotch. When you finally withdraw, Sascha's poor cunt is gaping and reddened, but his paws rub at his clit, and you can hear his purring filling the small space, dispelling any fears that you hurt him. It seems the only damage you've done is creating a size queen. Contemplating his drooling pussy, you wonder if you should try for a second round. After all, he's still stretched and seems ready for another go.";
					say "      Do you want to go for another round? Sascha's practically begging for it.[roman type][line break]";
					say "     [link](Y)[as]y[end link] - Fuck yeah. Sloppy Seconds.";
					say "     [link](N)[as]n[end link] - No, you've had enough.";
					if player consents:
						say "[SaschaSecondRound]";
					else:
						say "[SaschaSecondDenial]";
					now Resolution of Rough But Sweet is 4; [stomach bulge fuck]
					NPCSexAftermath Sascha receives "PussyFuck" from Player;
		else if player is female: [pussy licking]
			say "     Sliding two fingers into the excited cat's cunt, you stir his innards, delighting in the deep moans you pull from his throat as you kiss over his neck. He rides your fingers with wild abandon, seemingly uncaring about how loud he is or how sloppy his pussy grows until, as your thumb rolls over his clit, he stiffens, mashing his lips against yours and shuddering through his orgasm. The poor thing must not have cum in days, judging by how long he sits there, clamping around your fingers and mewling against your lips, but eventually, he breaks the kiss, panting and purring. 'Your turn.' Sascha murmurs in your ear as his paws drag your shirt over your head. Trailing his tongue over your chest, he works his way lower[if Player is not barecrotch], tugging your pants off before you can decide whether it's wise to be naked in a place like this[end if]. Spreading your thighs with clawed fingers, he dives into your folds, his purring vibrating through your clit as his gentle tongue tests your sex, rolling between your lips with prickly prowess.";
			WaitLineBreak;
			say "     Sealing his mouth around your sex, Sascha slurps his tongue deep into your inner walls, lapping up your juices as they come and following the squirming of your hips. He's well practiced at what he's doing, and soon enough, his face drips in your honey, his tongue coaxing even more as he pulls back to lavish care on your clit. You cum so hard that you nearly black out, bucking your needy pussy against the talented cat's face, but he doesn't stop, his eyes flashing with something predatory yet playful. His tongue worships your clit at high speed, scrubbing the sensitive skin and drawing high-pitched begging from your sore throat. Still, it's not until a second and third orgasm feeds the cat more of your juices that he relents, pressing a soft kiss to your entrance and licking his lips. Basking in the glory of multiple orgasms, you settle in, fingering the cat while he returns the favor. Your tongues dance against each other, flavored by your orgasm, and by the time you finish, you've lost track of how many times you've creamed each other's fingers.";
			say "     Eventually, rubbed raw and satisfied, you pull him against your chest, thanking him for the intense feelings radiating from your overused cunt, but he's already fallen asleep, nuzzling you with a dopey smile across his face. You lay there with the cat for quite a while, stroking his head fur and enjoying his purring presence. Eventually, you doze off, lulled into a sense of security by the warmth of his weight. When you awaken, you gently shake the dozing cat awake. You hate watching Sascha switch from peacefully sleeping on your bare chest to looking around in bleary confusion, but it's time to move on with your day. Kissing his fem-cum stained muzzle, you leave him to wake up the rest of the way as you gather your clothes and dress, gingerly picking your way down the shelves and exiting the warehouse. As you shoulder your pack, you touch your crotch, where you can still feel the cat's rough tongue ghosting across your sex. You should find him again later.";
			NPCSexAftermath Sascha receives "OralPussy" from Player;
			now Resolution of Rough But Sweet is 6;
		else:[neuter]
			say "     Sliding two fingers into the excited cat's cunt, you stir his innards, delighting in the deep moans you pull from his throat as you kiss over his neck. He rides your fingers with wild abandon, seemingly uncaring about how loud he is or how sloppy his pussy grows until, as your thumb rolls over his clit, he stiffens, mashing his lips against yours and shuddering through his orgasm. The poor thing must not have cum in days, judging by how long he sits there, clamping around your fingers and mewling against your lips, but eventually, he breaks the kiss, panting and purring. He's already fallen asleep by the time your fingers leave his cunt, nuzzling you with a dopey smile across his face. You lay there with the cat for quite a while, stroking his head fur and enjoying his purring presence. Eventually, you doze off, lulled into a sense of security by the warmth of his weight. When you awaken, you gently shake the dozing cat awake. You hate watching Sascha switch from peacefully sleeping on your bare chest to looking around in bleary confusion, but it's time to move on with your day. Kissing his fem-cum stained muzzle, you leave him to wake up the rest of the way as you gather your clothes and dress, gingerly picking your way down the shelves and exiting the warehouse. As you shoulder your pack, you touch your chest where you can still feel his warmth. You should find him again later.";
			now Resolution of Rough But Sweet is 6;
			NPCSexAftermath Sascha receives "Stroking" from Player;
	now Rough But Sweet is resolved;

to say SaschaWarehouseCunt: [vaginal sex with sascha in warehouse]
	say "     You slip two fingers into Sascha's cunt, stirring his inner walls as he mewls and clings to you. He's so needy that it isn't long before you feel him growing close, his inner walls clamping in a telltale rhythm. Just before he can finish, you remove your fingers, silencing his protests with your tongue and shimmying out of your pants to thrust upward, piercing his sex with your hard cock. Sascha squirms, his tail sticking straight up and his claws digging into your chest as he bucks on your shaft, his pussy dripping down your length. He melts against you the moment he cums, his hips working in a slow rhythm that caresses your cock, begging for more, and when your kiss breaks, the only words that leave his lips are 'Please. More.'";
	say "     You're happy to oblige, grabbing twin palms full of bubble butt and meeting the cat's gentle riding with hard, punishing thrusts. Sascha clings to you as your pace reaches a breakneck speed, and you can feel yourself growing closer by the second, but you're determined to finish him again, biting at the cat's neck hard enough to wring a gasp from his throat. You feel his juices rolling down your length again, and you buck upward, basting his cervix in thick, creamy love as his orgasm reaches its crescendo, nearly making the poor cat scream with sheer pleasure. 'Fuck. [SaschaPAddress].' Sascha whimpers as you slurp free from his depths, flopping your cock against his pussy. You prod against his entrance as he shivers and mewls, contemplating going again as he spreads his legs like a whore, practically begging you for more. After all, a pussy this wet and needy deserves a second round.";
	NPCSexAftermath Sascha receives "PussyFuck" from Player;

to say SaschaSecondRound: [Vaginal after anal, blowjob, or vaginal]
	say "     Unable to resist the call of that sloppy cat cunt, you shove into Sascha's pussy, aided by the thick layer of cum coating your shaft. You're slower and more deliberate this time, pulling him down into a sloppy kiss as you pump upward, stirring his innards into a creamy mess and dragging your oversensitive cock through his innards, kissing your tip against his cervix. Taking hands full of that perfectly bubbly ass, you roll him into every push, delighting in his spasming walls and impossible slickness. You lose track of how long you pump yourself into the limp, purring kitty, rolling on top of him, and welcoming his legs around your waist as you press him into the cardboard below. Your kiss breaks when you pick up the pace, and you listen with a panting smile as the cat mewls his pleasure, his claws dragging over your back hard enough to cut you. Thankfully the nanites cover any damage, but the sharp pain drives you to new heights, sending you into a mating frenzy that ends with basting the farthest reaches of kitty cunt in your particular brand of seed.";
	say "     When you come to your senses, you realize that Sascha's fallen asleep, still impaled on your cock. You don't have the heart to pull out while he looks so utterly satisfied, so you settle in, cuddling him close and letting your still drooling, slowly softening cock rest in his innermost depths. You're not sure how long you nap, but sloppy-sounding tongue work wakes you up, bringing a gentle sensation to your half-hard shaft. Blinking away sleep, you feel yourself stiffen as you watch an exotic display. Sascha's bent over at the waist, trailing his tongue over the lips of his pussy and cleaning leaking cum off of himself, capturing your dick in errant licks. As you slurp free from his depths, you guide your cock to his lips, hissing through clenched teeth as he takes you to the root without hesitation, cleaning every bit of combined juices from your shaft before pulling off of your renewed hardness to return to his cleaning. Resisting the urge to ruin the cat's work with another layer of cum to clean, you gather your gear, stopping to pet Sascha's head and ruffle his fluffy hair. Maybe you can spend more time with him next time. For now, you need to get going. You thank him for the fun and promise to find him again soon, then leave, your stomach tingling in afterglow.";
	NPCSexAftermath Sascha receives "PussyFuck" from Player;

to say SaschaSecondDenial:
	say "     Pulling the cat closer, you decide against ruining the moment by fucking him silly. Instead, you lay your chin on top of his and close your eyes, petting down his back and basking in the warmth of the afterglow. Before long, the cat dozes off, and you're not far behind, ignoring the puddle beneath your ass. When you awaken, you gently shake Sascha awake. He's too cute sitting there looking at you with sleepy eyes, but you don't have time to stick around. Instead, you gather your gear, stopping to pet Sascha's head and ruffle his fluffy hair. Maybe you can spend more time with him next time. You thank him and promise to find him again soon, picking your way out of the warehouse while he shakes off his sleepiness.";

Section 4 - Sascha Becomes an NPC- Talk and Fuck Menus

Instead of conversing Sascha:
	if Sascha is in Haunted House Entrance:
		say "[SaschaOutsideTalk_Menu]";
	else if Sascha is in Dungeon Dead End and "Finding Help" is listed in traits of Sascha:
		say "[HornyHaunters]";
	else if Sascha is in Dungeon Dead End:
		say "[SaschaGhostHandsFuck]";
	else:
		say "[Sascha_Talk_Menu]";

Instead of Fucking Sascha:
	if Sascha is in Dungeon Dead End and "Finding Help" is listed in traits of Sascha: [ghost hand orgy]
		say "[HornyHaunters]";
	else:
		say "[Sascha_Fuck_Menu]";

to say Sascha_Fuck_Menu:
	say "     [bold type]As Sascha tilts his head and stares up at you from the red couch, you ponder what you want to do with him.[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
[	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask Sascha for a blowjob";
		now sortorder entry is 1;
		now description entry is "You're feeling horny and Sascha's mouth is looking better the longer you stare at it. See if he's up to suck your dick";]
	[if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ask Sascha to lick your pussy";
		now sortorder entry is 2;
		now description entry is "You're feeling horny and Sascha's mouth is looking better the longer you stare at it. See if he's up for eating your box"]
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tease Sascha";
	now sortorder entry is 3;
	now description entry is "Sascha's made an art of teasing you. Why not return the favor";
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
				if (nam is "Ask Sascha for a blowjob"):
					say "[SaschaBlowjobMansion]";
				else if (nam is "Tease Sascha"):
					say "[SaschaTeaseMansion]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the kitty, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say Sascha_Talk_Menu:
	say "     [bold type]What do you want to discuss with Sascha?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Sascha why he's still in this creepy old house";
	now sortorder entry is 1;
	now description entry is "Sascha's always been eccentric, but why is he staying in this ancient place";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask Sascha about Ozeg";
	now sortorder entry is 1;
	now description entry is "The demonic dragon sitting at Sascha's side seems to have taken to him, but what does Sascha think of Ozeg";
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
				if (nam is "Ask Sascha why he's still in this creepy old house"):
					say "[SaschaMansion]";
				else if (nam is "Ask Sascha about Ozeg"):
					say "[SaschaOzeg]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the kitty, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SaschaBlowjobMansion:
	say "     ";

to say SaschaGhostHandsFuck:
	say "     ";

to say SaschaTeaseMansion:
	say "     The more you watch Sascha parade around without pants, the more you want to get back at him for constantly teasing you. Almost every interaction with the cat leaves you wanting, and the mischievous cat relishes how he makes you feel, playing you like a fiddle to get what he wants. Perhaps it's time to play with him until he can't stand it? Trying to suppress an evil grin, you ask Sascha if he could follow you to another room. You've found something he might find interesting and wonder what he'll make of it. Pointing to one of the recently opened doors he's been working hard to explore, you beckon to him, then walk through, leading him away from the fireplace room.";
	say "     'Something interesting? I don't know about that. All I've found lately is a bunch of expensive pens and old clothing.' Sascha follows you, still brazenly pantsless with both hands on the back of his head, without a care in the world. 'If I didn't have Ozeg to keep me company, I'd probably be bored, but at least he keeps me entertained when I'm not exploring-' Cut off mid-sentence as he walks in front of you, the surprised cat wiggles against your grip, mewling indignantly. 'Hey! That's a little rude. If you wanted to touch me, you could have just asked.' In answer, you grab the cat's paws, placing them above his head and holding them in one of yours as you press him against the wallpaper. Whispering in his twitching ear as you [if Player is male and Player is not barecrotch]free your manhood and slot yourself between Sascha's ass cheeks for a long slow grind[else if Player is male and Player is barecrotch]slot your bare cock between Sascha's ass cheeks for a long slow grind[else if Player is female]trail your fingers over his clit with your free hand[end if], you let him know that you're trying something different, catching his ear in your teeth and nipping it playfully.";
	WaitLineBreak;
	if Player is male:
		say "     'Not fair. You know I can't resist.' Sascha pants as you press up against his backside, prodding against his rear entrance before continuing on a slow trip between his thighs and nestling the tip of your dick against his clit. He squirms, trying his best to spear himself on you, but quickly realizes what you're doing, letting out a frustrated mewl. 'Come on. Please don't make me beg. I'll let you do whatever you want.' Sawing your cock between those needy lips, you shake your head, meandering down from sensitive ears to Sascha's upturned neck and trailing your teeth over it to elicit a soft moan. You don't feel like doing what he wants right now, and from where you're standing, it looks like you're calling all the shots. Sascha's words melt into incoherence the more you touch him until he's pressing back against you, mewling softly as his pretty pink lower lips paint your cock in arousal. His tail has wrapped itself around your waist, and his cheek presses against the wall as he tries in vain to catch your cocktip and guide you in, but to no avail.";
		say "     You could stop and leave him wanting or cream those soft, exercise-tightened buns and leave him with a souvenir. What do you want to do?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Cum between his cheeks and leave him to finish himself off.";
		say "     ([link]N[as]n[end link]) - Stop and leave him wanting.";
		if player consents: [hotdog with cream]
			say "     Grunting as you hump away, you grab Sascha's tail and slide between his athletically sculpted cheeks. Your tip prods against his pretty pink tailhole, but you slip right past it, using the furrow between his cheeks to stroke your cock. There's no reason to hold back, and since you know that your purpose is to tease and not to satisfy the kitty, you careen toward your finish, letting your dripping shaft paint his dusky fur. When you finish, you press your dick against Sascha's hole, letting him feel each rope of cum painting his sensitive back door and dribbling down over his lower lips. Giving his neck a nibble, you wipe your cock clean on one of his butt cheeks, then leave him there to enjoy the messy sensation, grinning as he spreads your cum over his sex and mewls in frustration, masturbating wildly. Maybe that'll teach him not to tease you so much, though judging by how intently he's frigging himself, he might be figuring out how to get you worked up again.";
		else: [blueballed kitty]
			say "     Teasing Sascha with long strokes that grind the top of your cock along his sex, you stop, then line yourself up as if about to penetrate him. Holding that position, you nip and kiss along his neck, rubbing his clit with slippery fingers until he's gasping for mercy, all but fucking himself on your cock. When he finally tenses, close to orgasm and melting against your touch, you pin his arms and pull your hips back, smacking his upturned ass with your cock. With an evil grin, you pull away after Sascha's orgasm slips through his fingers without washing over him. He looks so cute, sitting there with pussy juice dripping down his thighs and buttcheeks covered in your pre that you contemplate following up with a frantic fuck. You decide against it, leaving him with his needy pussy dribbling indignantly and ignoring your arousal even as your horny brain screams at you to breed him. It wouldn't be much of a tease if Sascha got what he wanted, now would it?";
	else:
		say "     Trailing slow circles over Sascha's clit, you press your body against his back, keeping his hands up and out of the way as you stroke him intently. Scrubbing his sex with your fingertips, you follow his attempts to escape the intense sensation, working him into a lather and listening to his begging mewls with grinning disinterest. You're not trying to get him off- Oh no- You're trying to get him all worked up. He's not going to cum until you finish with him. Again and again, you work him to the edge, only to stop when he's tense and needy. His pussy drips until it's become a veritable waterfall, and he's lost all sense of control, swiveling his hips in a vain attempt to get any friction on his lower lips and finish himself off. You slip your knee between his legs, keeping his thighs apart, and double your efforts, listening to his incoherent barely-words as though they were music. Soon enough, your fingers start to cramp, so you slow your efforts, working Sascha closer to an inevitable orgasm with gentle strokes until he's standing on tiptoes, wantonly shoving his ass back against an imaginary cock. When he reaches the plateau, you remove your touch, loosening your grip and placing a parting kiss on his cheek, then murmur in his ear that if he wants to cum, he needs to stop teasing you. Only good boys get to finish, after all. With that, you wipe your fingers on the limp kitty's ass and give his tail a parting tug. You doubt he's learned his lesson, but at least you got your revenge~.";
	NPCSexAftermath Sascha receives "Stroking" from Player;

to say SaschaOzeg:
	say "     Sitting next to Sascha on the now clean and sweet scented luxury couch, you ask him how things are going with his new demon acquaintance. Is Sascha making the poor guy climb buildings and jump rooftops? 'He's a bit clumsy, so I haven't tried to get him into climbing. Probably a good thing, considering his size. Could break a lot with that big red butt.' Sascha says, sticking his tongue out at you. 'Besides, he's tall enough that I can use him as a boost to get where I want to go. He's enough of a help as a hunky ladder~.' Sascha looks over at Ozeg as the dragon man dusts a shelf, humming to himself as he works. 'Honestly, it's weird, but he works as a maid. Maybe I should find him a little bowtie to wear.' You shake your head as Ozeg bends down, contemplating his rounded scaly rump as its thick tail waves unintentionally, showing off Ozeg's back entrance. At least Sascha wants to put SOMETHING on the demon. You expected him to keep the submissive dragon fully nude.";

to say SaschaMansion:
	say "     Sitting next to Sascha, you ask him why he's decided to stay in this ancient mansion. Isn't he worried that something else, like the ghostly hands, might pop up and hold him hostage? You can't be around to help him every time. 'Who says I needed help? I was having fun~.' Sascha says, stretching his legs and winking. 'Honestly, though, this place isn't that bad. Clear sightlines and easy access to a bunch of my favorite places. The view isn't terrible, either.' Nodding toward Ozeg's scaly butt, Sascha watches his reptilian balls sway as he cleans, ogling the trusting dragon. 'Poor guy needs supervision so he doesn't end up in some third-rate alpha's harem. He's too agreeable.' In trademark Sascha fashion, the cat stretches, leaning against your shoulder and murmuring. 'And maybe I like the idea of needing to be saved. Maybe I'll get stuck in a washing machine or something~.'";

Section 5 - Pegging Mul

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Pegged By A Pussycat"	Pegged By A Pussycat	"[EventConditions_Pegged By A Pussycat]"	Warehouse District	2500	2	100

to say EventConditions_Pegged By A Pussycat:
	if MulAnalAcceptance > 7 and player is male:
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Pegged By A Pussycat	"Pegged By A Pussycat"

Pegged By A Pussycat is a situation.
ResolveFunction of Pegged By A Pussycat is "[ResolveEvent Pegged By A Pussycat]".
Sarea of Pegged By A Pussycat is "Warehouse".
Prereq1 of Pegged By A Pussycat is Rough But Sweet.
The Prereq1Resolution of Pegged By A Pussycat is { 1, 2, 3, 4, 6 }.
Prereq2 of Pegged By A Pussycat is Kitty Adventures.
The Prereq2Resolution of Pegged By A Pussycat is { 1, 2 }.

when play begins:
	add Pegged By A Pussycat to BadSpots of MaleList; [male orcs]
	add Pegged By A Pussycat to BadSpots of TransList; [trans kitty]

to say ResolveEvent Pegged By A Pussycat:
	if Player is not CoA:
		say "     As you walk through the warehouse district, your thoughts turn toward Mul and the circumstances of your meeting. You realize you've wandered into the area he and his brothers usually prowl- you distinctly remember where they caught Vincent on the same street you've been walking along. It's been quite a while since that moment, and [if SlaveRaidEncounters is 2]while you couldn't save the fox, at least you've gotten some justice for him through your domination of one of his tormentors[else]you're glad you could protect the fox from becoming an orc breeder AND make Mul your bitch[end if]. As your thoughts stray to green butts bouncing on your dick and you begin to touch yourself, you realize that the huffing pants of the Mul in your thoughts seem to exist outside of it. Shaking your head, you follow the sounds echoing through an alleyway, peeking around the corner and suppressing a grin. You're not the only one thinking about filling Mul's ass. Hiding in a recessed doorway and intently stroking himself, the formerly dominant orc is on all fours, pushing three fingers into his ass. His loincloth dangles from one foot, and he seems deeply lost in thought, grunting in frustration. What a slut! Maybe you should walk over and say something. Someone beats you to the punch, and you shrink back into the shadows when you realize who it is. Is that Sascha slinking up from the other side? You know by now that anything involving the sassy cat could be interesting.";
		LineBreak;
		say "     [bold type]Do you want to watch their interaction? Knowing Sascha, it's going to get sexual.[roman type]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Why not watch and jerk off to it? Sascha's sure to goad Mul into something hot.";
		say "     ([link]N[as]n[end link]) - You know that Sascha can take care of himself and don't feel comfortable being a voyeur.";
		if Player consents:
			LineBreak;
			say "     You feel that you should stick around. For purely noble reasons, of course. Moving closer for a better view and [if Player is barecrotch]taking hold of your member [else]dropping your pants to free your dick [end if]means nothing. Sneaking up on Mul as the green guy works long strings of pre from his dangling cock and pounds his ass with ham fingers, the cat grabs his loincloth, dancing back with a giggle. 'Mind if I take this, big guy?' He asks as Mul's eyes shoot open, waving the underwear over his head and sticking his tongue out. 'I've seen you at [if Player is not defaultnamed][name of Player]'s base [else]the library [end if]before. Don't tell me you're going there to get fucked? I thought you big green guys prided yourself on being strict tops~.'";
			say "     'Why don't you come here and find out, bitch?' Mul grunts, unphased despite the sweat beading on his green skin from his frantic fapping. 'I could use a tight ass to pound out some of this frustration.' He growls, reaching out and throwing himself forward, hoping to catch the cat off guard. Of course, he misses pitifully, blinking away confusion as Sascha nimbly dodges the orc's lunge, hopping onto the orc's back, then past him to perch on the awning over the doorway. 'Touchy, touchy. If I could trust you, I'd take you up on that offer~.' Sascha taunts, tugging his pants to flash his pussy at the orc below him. Twirling Mul's underwear around his finger, he balances on the awning's edge, walking back and forth. 'We could make a deal, you know.' He says in a mocking sing-song, pausing and flashing his best Cheshire grin. 'Yeah, come down, and I'll 'deal' with you as long as you want.' Mul sneers, wagging his cock at the cat and coating his fingers in pre. 'At least you'd grow a cock and lose that useless thing between your legs. Becoming a proper man! Maybe even carry some orclings once you put on some muscle.'";
			WaitLineBreak;
			say "     'I have all the cock I need, big guy.' Sascha says as he tucks away Mul's underwear, digging through his bag and dropping his pants. With some finagling, he slips the straps over his ass, then poses like a superhero with his paws on his hips once they're secured. Jutting from his crotch is a bright green, almost glow-in-the-dark strapon that wiggles as he thrusts his hips. 'All the fun, none of the worries. You wouldn't leave a trail of cum to let your buddies know you love dicks in your ass, and all I ask in return is a few pairs of undies after you sweat them up a bit. It's a great deal!' Mul can barely tear his eyes away from the dildo, swallowing as his cock bounces as if to say [']fuck yeah.['] 'Don't need any of that fake shit. Find someone else to fuck with. I don't need anything up my ass to get off!' It's blatantly a lie. You've seen that expression on Mul's face when you're about to stuff yourself into his ass. All he needs is a little push, and he'll ride Sascha until the cat's pelvis breaks.";
			say "     'Oh yeah? What a shame. I suppose I'll have [if Player is not defaultnamed][Player name]'s [else][']your special friend's['][end if] dick all to myself after I tell them you hate it so much.' Sascha shrugs, shouldering his pants and wiggling his butt as though ready to jump down from the awning, like a housecat prepping for a jump. A conflicted look crosses Mul's face: He's still miffed that you've reduced him to being a needy buttslut on the one hand, but on the other hand, there's also lust and possessiveness for the dick that's made him cum so many times. His features twitch a little, followed by a dark glower directed at Sascha. 'You little bastard! Mocking me while being a dickless freak!'";
			WaitLineBreak;
			say "     Sascha grows bolder when he notices how rattled Mul is, risking his safety to jump down and step into arm's reach. He pokes Mul's chest with one clawed finger and sticks his tongue out, winking as the baffled orc looks from his flopping strapon to his mocking expression. 'I'll throw in a rimjob~.' He says as he crosses his arms, waiting for Mul's answer. Mul's expression changes from vague lust to uncertainty and back to lust, and he shifts his feet as he finally sighs. 'Fine. But if you can't make me cum I'm using your ass to get off.' Tentatively, he turns his back on Sascha, putting his hands on the nearby door as if being frisked by a cop. Still, the endless strings of precum messing the ground below show his excitement. 'I've never had any complaints.' Sascha purrs as he spreads Mul's butt cheeks. Mul's hole twitches, clenching closed against his breath, then disappears behind black fur as he buries his face between green cheeks. He wastes no time digging deep, and you start to feel slightly jealous as Mul huffs and digs his fingers into the doorframe, trying desperately not to show how good it feels.";
			say "     'I've never had any complaints.' Sascha purrs as he spreads Mul's butt cheeks. Mul's hole twitches, clenching closed against his breath, then disappears behind black fur as he buries his face between green cheeks. He wastes no time digging deep, and you start to feel slightly jealous as Mul huffs and digs his fingers into the doorframe, trying desperately not to show how good it feels. Sascha remains between Mul's cheeks for long enough that you worry that he's suffocated. Thankfully, the kitty's clawed fingers digging into that muscled butt and Mul's increasingly squirmy behavior let you know he's right where he wants to be. His tail twitches in a question mark when a deep moan slips from the orc's muscled chest, followed by the cat surfacing for air and rolling his tongue along Mul's left cheek as he admires the gape his rough tongue's given the orc's hole. 'There you go, big guy. Time for the prostate massage.' He pants, taking hold of the taller orc's hips and guiding him to his knees.";
			WaitLineBreak;
			say "     Sascha lines the toy up with the orc's hole, perching on green calves and slapping the unresisting brute's ass. 'Better relax, buttslut. I'm not going to go easy on ya.' He says with a giggle as he humps forward, spearing the toy to the hilt. He's true to his word, slamming his hips against Mul's ass and mercilessly pounding the orc's prostate despite how much smaller the cat is. If you didn't know better, you'd think this was payback for the things Mul called him. Mul goes limp under the anal assault, pressing his cheek against the door and drooling as he tries desperately to remain upright. You doubt any thoughts are going through his head, and his cock flops helplessly below him, slapping his abs and messing the ground beneath him, showing how much he's enjoying every second of his humiliation.";
			say "     Turned on by the public display, you watch Sascha's bare ass pumping up and down, imagining yourself filling him while he destroys Mul's emerald hole. You cover your mouth as you watch Mul's cock heave and bloat, hosing himself and the ground below him in cum, and marvel at how quickly Sascha managed to drag it out of him. Of course, you're not far behind, joining him in orgasm and wasting your seed on the concrete below. Oversensitive and spent, you return your attention to the show at hand, letting your shaft flop between your legs. Sascha pulls out of Mul before the last drops can drain from the orc's spent balls, and he pats the massive green ass in front of him gently, admiring the gaping hole he caused. 'Meet me back here later, big guy. Bring a spare if you don't want your dick swinging free on the way home.' To add insult to injury, he uses the dazed orc as a stepping stone, retrieving his pants and pack from the awning above and pulling them up over the strapon, giving him the appearance of a permanent, floppy erection. As he walks away, he turns his head and waves in your direction, whistling innocently. It seems he noticed you watching. As you prepare to leave, you spare Mul one last glance, wondering if he'll recover soon. You shrug as you shoulder your pack and turn your back. No doubt he'll head home, telling stories about fucking some catboy into submission before you know it.";
			NPCSexAftermath Mul receives "AssDildoFuck" from Sascha;
			now Resolution of Pegged By A Pussycat is 1; [Sascha fucked Mul, and he KNOWS the player saw him]
		else:
			LineBreak;
			say "     Shaking your head, you turn away. You trust Sascha can protect himself and don't want to watch him get busy with someone else. Still, you wonder what the cat needed from your big green buttslut. Oh well, you suppose it's none of your business.";
			now Resolution of Pegged By A Pussycat is 2; [Sascha fucked Mul, player did not watch]
	else:
		say "     As you walk through the warehouse district, your thoughts turn toward Mul and the circumstances of your meeting. You realize you've wandered into the area he and his brothers usually prowl- you distinctly remember where they caught Vincent on the same street you've been walking along. It's been quite a while since that moment, and [if SlaveRaidEncounters is 2]while you couldn't save the fox, at least you've gotten some justice for him through your domination of one of his tormentors[else]you're glad you could protect the fox from becoming an orc breeder AND make Mul your bitch[end if]. As your thoughts stray to green butts bouncing on your dick and you begin to touch yourself, you realize that the huffing pants of the Mul in your thoughts seem to exist outside of it. Shaking your head, you follow the sounds echoing through an alleyway, peeking around the corner and suppressing a grin. You're not the only one thinking about filling Mul's ass. Hiding in a recessed doorway and intently stroking himself, the formerly dominant orc is on all fours, pushing three fingers into his ass. His loincloth dangles from one foot, and he seems deeply lost in thought, grunting in frustration. What a slut! Maybe you should walk over and say something. Someone beats you to the punch, and you shrink back into the shadows when you realize who it is. Is that Sascha slinking up from the other side?";
		say "     Sneaking up on Mul as he works long strings of pre from his dangling cock and pounds his ass with ham fingers, the cat grabs his loincloth, dancing back with a giggle. 'Mind if I take this, big guy?' He asks as Mul's eyes shoot open, waving the underwear over his head and sticking his tongue out. 'I've seen you at [if Player is not defaultnamed][name of Player]'s base [else]the library [end if]before. Don't tell me you're going there to get fucked? I thought you big green guys prided yourself on being strict tops~.' The orc shouts insults at the petulant cat for a while, then stomps off, leaving Sascha to stuff his prize into his pack and walk in the opposite direction. This is the second time you've seen Sascha stealing orcish underwear. You wonder who could possibly be asking for them.";
		now Resolution of Pegged By A Pussycat is 100; [Sascha teased Mul]
	now Pegged By A Pussycat is resolved;

Sascha ends here.
