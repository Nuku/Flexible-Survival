Version 2 of Razorback Boar by Wahn begins here.
[Version 2 - New Creature]

"Adds a Razorback Boar to Flexible Survival's Wandering Monsters table, with impreg chance"

[ RazorbackBoarEvents                                                         ]
[  0: never met                                                               ]
[  1: player saw him take on Andy and his wolf buddies                        ]
[  2: player saw Andy return and get taken down good (fucked in the ass)      ]

RazorbackBoarEvents is a number that varies.
FuckedByRazorbackBoar is a number that varies.
GarthRelationship is a number that varies.
GarthInfectionArea is a number that varies.[@Tag:NotSaved]

a postimport rule: [bugfixing rules for players that import savegames]
	if GarthInfectionArea is 0:
		if Razorback Fury is resolved:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Razorback Boar Male":
					now MonsterID is y;
					now area entry is "Forest";
					break;
			now GarthInfectionArea is 1; [his area was fixed]
		if GarthRelationship > 0: [agreed to get fucked without fighting]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Razorback Boar Male":
					now MonsterID is y;
					now area entry is "Nowhere";
					break;
			now GarthInfectionArea is 1; [his area was fixed]

Section 1 - Events

Table of GameEventIDs (continued)
Object	Name
Razorback Fury	"Razorback Fury"

Razorback Fury is a situation.
ResolveFunction of Razorback Fury is "[ResolveEvent Razorback Fury]".
The level of Razorback Fury is 7.
Sarea of Razorback Fury is "Forest".

when play begins:
	add Razorback Fury to BadSpots of MaleList;
	add Razorback Fury to BadSpots of FurryList;

to say ResolveEvent Razorback Fury:
	project the Figure of Garth_face_icon;
	say "     You hear crashes, shouts and howls from somewhere nearby in the dense forest - sounds like there's quite a scuffle going on. Curiosity drives you to investigate and you walk towards the fight in a slow pace, doing your best to be stealthy. Soon, a small clearing comes into sight - and in it, three anthro wolves and an anthro boar. A very angry anthro boar, with the coarse fur on his bulky yet powerful body bristling. Looking at the thick mane that starts at his head and runs halfway down his back in a raised ridge, it is immediately obvious that this isn't a docile pig - no, you're seeing a feral razorback! He doesn't seem to believe in wearing clothing (not that he has to, with a coat of fur) and is holding one of the wolves raised by his throat, half a foot off the ground. The other two canines lie on the forest floor, one of them knocked out completely, the other whimpering and holding a broken arm.";
	say "     The boar shakes his captive and growls at him, then says in a snarly tone, 'So how did you think this was gonna go, punk? You and your little buddies become wolves and think you're the top dogs now?' The only reply is a choked gurgle from the wolf - which might have something to do with the razorback pig holding him a bit tight by the throat. 'Bah! Wannabes - I could see it on you a mile away! You become animals and then go trampling into MY forest while still wearing designer jeans?! Humanity is gone, dip-shit!' With that, the boar slams the roughed-up wolf against the trunk of a nearby tree, then lets go of him, sending the canine to collapse at his feet. After a few coughs and groans, the wolf looks up fearfully at the guy standing over him and says, 'Look, we were just gonna...'";
	WaitLineBreak;
	say "     The boar scoffs, 'I could hear you idiots!' His captive winces as the standing feral pig pitches his voice high and says, 'We're predators - so let's hunt. I heard there are pigs in this area. How about some fresh pork, eh? Yeah, totally man - I could eat one whole!' Looking left and right for a way to escape, the bruised canine scrambles backwards - only to bump against the tree behind him. 'I - erm... sorry! Please, I - I...' he whines as the boar steps closer. 'You're in luck, boy. Because Garth *he thumps his chest* is a really nice guy. So I won't grind you into paste. Tell me - what's your name, punk?' The intimidated wolf is pretty quick to gasp out 'Andy, S-Sir', looking wide-eyed at the boar standing over him. 'Okay Andy, you're learning. As a reward you'll even get something to fill your stomach!' And with that, the razorback boar lowers a hand to his crotch, taking hold of the thick shaft dangling between his legs. 'Now open that muzzle wide, you're getting some pig in your mouth after all. And don't even think about biting me, little fucker!'";
	say "     Shocked at the unexpected turn to their hunting trip, the wolf whines and opens his mouth - most likely to plea with his captor some more, but the boar doesn't give him any chance to do so. One hand on the back of the would-be predator's head and guiding his erection with the other one, the muscled wild pig starts to face-fuck his captive, transforming anything he might have wanted to say into gurgles around the piece of man-meat sliding in and out. Garth uses the wolf for a hard, no nonsense dicking, just hammering into him till the poor guy's nose is ground into the bush of his pubes and the weighty balls below slap his chin. Again and again does he thrust his hips forward while holding his captive tight, filling the little clearing with the sounds of sex. Before much longer, his arousal reaches a high point and the razorback slams his cock deep and holds it there, grunting with each shot of cum he pumps down Andy's throat.";
	WaitLineBreak;
	say "     Garth's orgasm lasts quite a long moment and you guess that his captive his getting a stomach-full of the boar's seed - the wild pig is quite a virile guy, it seems. This even goes on to get Andy into a bit of trouble... breathing that is, as the thick piece of meat in his throat blocks replenishing his air supply. Unable to pull away as his head is tightly gripped by the climaxing boar, the wolf can only push against Garth's hips weakly, then more and more insistent until finally his captor relents and lets go, allowing Andy to collapse on the ground and gasp for breath. 'Got a nice tight throat on you boy,' comes the gruff laugh from Garth as his cock continues to spurt the slowly ebbing blasts of cum - which the anthro boar aims right at the wheezing wolf, matting his fur in streaks of sticky semen.";
	say "     'Jeez, get over it already. You're a wolf, not a pussy,' the razorback boar scoffs as Andy stays hunched over and panting for another full minute. Right until Garth turns him over with the cloven hoof at the end of his muscled, stocky leg. The wild pig laughs as he sees that Andy's skin-tight designer jeans are tented out at the front, so much so that the wolf must be feeling quite a pinch. 'So that's how it is, eh? Little wolfie got off on being the prey. Hah, how pathetic. Now take your buddies and get out of my forest. And don't you dare think you can rub one out on the way and soil the ground around here with that weak-ass cum of yours!' Shame-faced, Andy picks himself up and walks over - in a hunched-over gait that takes at least a little pressure off his crotch - to his friend with the by-now healed arm. Together, they pick up their unconscious compatriot and stumble away out of the clearing. You're quick to follow suit - in another direction though - so that the boar doesn't detect you as well.";
	NPCSexAftermath Andy receives "OralCock" from Garth;
	now Razorback Fury is resolved;
	now RazorbackBoarEvents is 1;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Razorback Boar Male":
			now MonsterID is y;
			now area entry is "Forest";
			break;

Table of GameEventIDs (continued)
Object	Name
Boar Payback	"Boar Payback"

Boar Payback is a situation.
ResolveFunction of Boar Payback is "[ResolveEvent Boar Payback]".
Prereq1 of Boar Payback is Razorback Fury.
The level of Boar Payback is 7.
Sarea of Boar Payback is "Forest".

when play begins:
	add Boar Payback to BadSpots of MaleList;
	add Boar Payback to BadSpots of FurryList;

to say ResolveEvent Boar Payback:
	say "     As you wander through the forest, you spot someone moving a little bit ahead of you - it's a dashing young anthro wolf, clad in designer jeans and a tight shirt, bearing a determined expression on his face. After a moment or two, you recall his name being Andy, and you having seen him and two buddies try (and fail) to take on a tough razorback boar out here. Wondering what he's doing out here again after the thrashing and face-fuck Garth the boar gave him, you almost automatically start following him unobtrusively - then suddenly spot the [if daytimer is day]daylight[else]moonlight[end if] glisten on something metallic stuck behind his belt, just above the tail cut-out he put in those jeans. The would-be wolfpack (or gang) leader has a gun! Doesn't take a genius to figure out who he's got a score to settle with.";
	say "     Uh oh, maybe you should re-think following him - stray bullets don't care if you're just a spectator... Do you still go after Andy and see what happens when he confronts Garth?";
	if Player consents:
		project the Figure of Garth_face_icon;
		LineBreak;
		say "     Fearlessly, you keep walking after the young wolf - all the while making sure you don't step on any twigs or draw his attention. Being curious doesn't mean you're stupid. Soon, a small clearing comes into sight - and with it, the anthro boar-man Garth, looking powerful and strong with his broad-shouldered body and coarse fur. He is casually sitting on the edge of a tree-stump, eating an apple, until Andy comes into his line of sight and the wild pig stops before taking the next bite. 'What do we have here?!' the razorback boar says in a gruff voice and stands up, then bares his tusks at the intruder. 'Thought I'd told you little punks to stay out of my woods? Where are your buddies, wolfie? Got enough whoop-ass for all of you,' Garth grunts and cracks his knuckles with one hand holding a balled fist. 'I-I don't need them,' the young wolf barks in a somewhat shaky voice, then suddenly pulls his weapon, brandishing it in Garth's direction.";
		say "     'So, a punk and a coward too,' the anthro boar replies and makes one step, and another towards Andy, totally unimpressed by the gun. 'Stop! I - um, don't move. You shouldn't move. Stand still!' Garth's unwanted visitor calls out, his gun-hand trembling as the boar gets closer and closer. Finally, the anthro pig is just about ten feet away from Andy and puts his muscled hand on his hips. 'You know, it's almost insulting that you think you can threaten me - even forgot to turn the safety off,' Garth growls out from a corner of his mouth, nodding to the gun and making the young wolf curse under his breath. Yet as Andy turns the weapon to look at it - and the disengaged safety - in confusion, Garth rushes him, slapping the gun out of his hand. His follow-up is a punch to the muzzle for the shocked wolf, sending Andy to fall on his ass in the grass.";
		WaitLineBreak;
		say "     'Ow! My nose!' the teenage wolf whines, dabbing at the trickle of blood running out of it with a ginger touch and then looking up frightened as Garth comes to stand over him. 'Man, how can you be such a sissy as a wolf!' Garth grumbles at the anthro canine, shaking his head in disgust. 'Listen kid - you really don't have it in you to be a gangster, or a predator. Bringing a gun to a fistfight, and then going down with one punch. That's a thoroughly pathetic showing.' Andy lets both hands drop into his lap, then looks away from Garth's intense stare, trying his hardest not to acknowledge the words. As random chance will have it, the sullen try to look at anything but the authoritative boar makes him stare right at you and Andy's eyes go wide as he recognizes that someone is watching from the bushes. He starts to open his muzzle as if to say something, but right at that moment, Garth wraps his hand around the young wolf's muzzle and turns it towards him.";
		say "     'Look at me when I'm talking to you, pup!' the strong man growls, then snorts derisively. 'Bah, guess you had some anti-authoritative parents that never taught you respect, am I right little fucker?!' he adds next and hooks a hand under Andy's arm, pulling him to his feet before saying, 'Better late than never I guess.' With a shove, he sends Andy to stumble against the tree-stump at the edge of the clearing. 'W-what are you doing?' the young wolf asks, fear in his voice, weakly struggling as Garth wraps two strong arms around him from behind, then moves his hand to undo the designer jeans and belt. As he wrenches the pants down to Andy's ankles, the razorback boar grumbles, 'That's what I thought. You don't even realize it when you're about to get spanked! Well, time to learn wolfie!' And with that, he brought his hand down on Andy's ass in what would have been a resounding slap if his fur hadn't muffled the noise.";
		WaitLineBreak;
		say "     'Ouch! Ahhh! No! Please!' Andy whines and whimpers as Garth gives him a moderately intense thrashing, twitching away from the boar's hand as it comes down again and again. 'Hold still and take it like a man,' Garth growls, using his other hand to hold on to the wolf - until he brushes against the canine youngster's erection, standing straight out from his crotch. 'You GOT to be KIDDING me! Getting off from this, aren't you?' There is a definite tone of self-denial in Andy's howled answer of 'N-no. No! I'm not... um.' Wrapping his large hand around the knotted canine shaft, Garth snorts at him, 'Can it, gay boy! Now this thing here doesn't lie!' Wagging the erection up and down, Garth sighs and shrugs his shoulders. 'Okay, new plan. If you little pervert can't control yourself, I'll have to establish your proper role another way - by your very nature as a wolf. Time to become the omega, punk!'";
		LineBreak;
		say "     Do you want to watch Garth fuck the teen wolf?";
		if Player consents:
			say "     Bending the half-naked wolf over the stump, Garth slides his hand down to his own crotch and quickly strokes himself to full hardness, then lines the stiff cock up with Andy's buttocks. He pushes forward till the cockhead nudges the young wolf's pucker, then wraps both his muscular arms around the smaller anthro, holding him tight as he thrusts hard with his hips. A pained yelp echoes through the forest as Andy loses his virginity to the gruff boar - who somewhat surprisingly doesn't just hammer away at his captive, but rather holds him in his arms and almost gently strokes his chest.";
			WaitLineBreak;
			say "     'There boy. Feel that big hard dick in your ass,' Garth grunts deeply, then grinds his hips forward for a second, drawing another whimper from Andy. 'No one may have ever cared enough to teach you be a man instead of a little prick - or even how to have respect for anything - but we'll see about that now. That's the beauty about becoming animals like we are... some things become so much clearer and easier.' Turning his head to look at the anthro boar, Andy swallows visibly, then asks in a still somewhat whiny voice, 'W-what do you mean?' Garth chuckles, holding on to his captive with one arm around his chest, the other moving to ruffle Andy's hair.";
			say "     'Can't you feel it? I can see it in your eyes. Pack dominance, kid. I got it, and your wolfie self is learning to accept that. Hell, hard not to if I'm topping your furry ass,' Garth in a somewhat less gruff voice, then pulls his hips back a little before thrusting into Andy again. The wolf teenager lets out a yip - of pleasure, not pain this time. Reaching under him, Garth handles the young guy's canine shaft for a second, squeezing it before giving a laugh. 'Hard as a steel rod, you really are gay little wolf. Well, even better if you like it. Takes a bit of the sting of being the low guy on the totem pole.' That said, Garth starts to fuck the wolf teen for earnest, gripping on tightly as he thrusts into the smaller anthro.";
			WaitLineBreak;
			say "     Grunts, moans and aroused yips fill the clearing as the razorback boar gives Andy the first hard fuck of his life - though you notice that the bigger man does at times slow down a little, restraining his wild urges. Seems like he really does want to make it good for Andy too and not just hump the teen into submission. And one thing is for certain - the wolf does have a very good time, despite the somewhat rocky beginning when Garth took his cherry. His tail is wagging wildly towards the side and against the thrusting boar's abs. Andy doesn't even try to stifle his aroused shouts every time Garth hits his prostate, and before much longer, he howls out loud and starts to spray the tree-stump with every drop of cum his balls have to give.";
			say "     Andy's internal muscles twitch and tremble with each new spurt of seed shooting out of his cock, which drives the burly wild pig fucking him to reach his climax just scant moments after the wolf himself. Heavy blasts of cum paint Andy's insides white, lubing his hole as Garth just continues fucking even throughout his own orgasm, relentlessly stimulating the young wolf through his back passage. There are some long moments of mutual cumming, followed by Garth just resting his member in the teenager's ass and holding him with his arms around the canine's slender chest. Eventually though, Garth pulls out of his would-be attacker, unconcerned about the cum clinging to his erection or dripping down into the grass.";
			WaitLineBreak;
			say "     There is a moment of silence as the young wolf eventually stands up straight again and puts his clothes in order, then shyly looks over to Garth. 'Worked, didn't it? Tell me, do you still feel the urge to gun me down?' the razorback boar asks, grinning broadly as Andy shakes his head and looks down. 'No. I - I'm sorry...' the teenager mumbles, sheepishly studying the ground, then flinching as Garth steps up and puts a hand on his shoulder. 'Listen kid, you don't actually seem to be such a bad sort - just got a lot of rubbish in that noggin that someone needs to shake out. But that's for another day I guess. Go on, scram! I'll leave it up to you if you're gonna play wannabe gangster with your buddies or maybe make something out of you.' With a thoughtful expression on his face, Andy walks out of the clearing, soon vanishing between some trees.";
			now Resolution of Boar Payback is 1; [watched them fuck]
		else:
			say "     Not actually interested in the way the boar wants to break Andy in, you turn your back on what happens next, wandering out into the forest. Next for you is a relatively peaceful time between the trees, with only a few howls and shouts reaching to your ears. Sounds like they're still going at it in Garth's clearing...";
			now Resolution of Boar Payback is 2; [didn't watch]
		NPCSexAftermath Andy receives "AssFuck" from Garth;
	else:
		LineBreak;
		say "     Better safe than sorry, you tell yourself and stop in your tracks, letting Andy pull ahead on his path through the forest and vanish from sight after a few moments.";
		now Resolution of Boar Payback is 3; [stayed away entirely]
	now Boar Payback is resolved;
	now RazorbackBoarEvents is 2;

Table of GameEventIDs (continued)
Object	Name
Canine Indecision	"Canine Indecision"

Canine Indecision is a situation.
ResolveFunction of Canine Indecision is "[ResolveEvent Canine Indecision]".
Prereq1 of Canine Indecision is Boar Payback.
Prereq1Resolution of Canine Indecision is { 1, 2 }.
The level of Canine Indecision is 7.
Sarea of Canine Indecision is "Forest".
when play begins:
	add Canine Indecision to BadSpots of MaleList;
	add Canine Indecision to BadSpots of FurryList;

to say ResolveEvent Canine Indecision:
	say "     As you wander through the outskirts of the forest, where trees and buildings meet and sometimes even meld under the influence of the ever-present nanite infection, you spot something moving a little bit ahead of you. Careful not to give yourself away, you move a little closer to check out what it is - and it turns out to be someone you know (a little bit at least). Not too far away and with his back turned, a dashing young anthro wolf stands, looking rather lost and unsure of himself. It is Andy, the would-be gang-member that you saw before in his meetings with the razorback boar man Garth. To his left, the green and brown expanse of the forest beckons, cool in the shade and full of life - while to his right, a narrow street leads back to the heart of the city, promising some loot and luxury for the ones who can assert themselves in a harsh post-apocalyptic society.";
	say "     Wondering what the young canine is up to, you step a little bit further still, unseen and silent - until the brittle piece of glass you didn't see under the wet leaves on the ground breaks with a surprisingly loud crunch. Whirling around in shock, the canine teen focuses on you and takes a defensive stance - only to recognize you with widening eyes. 'You... I know you... you were there when I - when he - when I got... spanked, by mister Garth.' Both of you know there was a lot more than just spanking going on, but you decide to not make Andy even more skittish and nervous and just let it go, nodding to the young man in recognition. 'I...' Andy starts, then swallows and distractedly wipes his paws over the tight designer jeans covering his legs, 'I can't decide what to do. Its crazy to just tell someone I don't even know, but... you were there, you know.'";
	LineBreak;
	say "     Do you listen to what the young wolf has to say ([link]Y[as]y[end link]) or wave him off harshly ([link]N[as]n[end link])?";
	if Player consents:
		LineBreak;
		say "     Introducing yourself and doing your best you make Andy relax, you give him a friendly smile and agree to listen. Andy is so happy that he starts to wag his tail before becoming aware of it, then forces himself to keep it still and scratches the ground with a foot-paw. 'You see... me and my buds have been hanging out for years, doing... stuff. A bit of dealing weed in college and so on. When... all this happened,' he says, then waves a paw at his nonhuman form before continuing, 'We all felt great - stronger, more powerful and whatnot. Things became pretty simple. If you want something, you take it. So we decided to - I don't know, grow our turf, make it ours. There's those sheep people a few blocks that way who almost pissed themselves when we came knocking. Gave us all the money they had. Food too. But shortly after, we ran into that freaking BEAST - massive thing made up out of nothing but cocks.'";
		say "     Shuddering, the fur at the back of his neck rising, Andy waves his hands and tries to describe what he saw... which seems to have been a 2000 pound cock-monster, walking on six cock-legs, with a purple dick-head as its head, complete with staring eyes. 'Never ran so quick in my life,' Andy continues, 'So there we were - the big guys of the block, running like chickens from that critter. I thought we needed something to get our groove back, so I suggested we go hunt - something easy, you know. Just... a pig, eh? Rough up a fat slob, maybe... maybe even eat him. That'd prove to everyone - mostly us - we were still a strong wolfpack. And who do we run into - Mister Garth, who kicked our asses and made me suck him! That was... before the time I got spanked. I went back to him for that - err, to get payback, not... you know. And he whooped my ass again.'";
		WaitLineBreak;
		say "     Taking a deep breath, Andy seems relieved to have gotten his situation out in one go, haltingly delivered as it may have been. 'So I don't know what to do now. Go back to my buds, be as strong as we can be together? But there's more than just freaky critters roaming the city - other gangs and whatnot. Will we even have a chance? On the other hand... mister Garth is actually... pretty cool - in a gruff survivalist way. He's offered to teach me stuff. And I... liked being with him.' The last few words were almost whispered, with the twitch in the size of Andy's crotch bulge indicating what exactly he meant by that. Looking down at the ground, the young wolf is in his thoughts for a moment, twitching his gaze one way, then the other - but in the end, he just shakes his head, again indecisive about what he shall do.";
		say "     And then, the canine teen looks right at you, a hopeful expression on his face. How do you want to influence him in this matter? (This might have far-reaching consequences for him and Garth. Having a companion to take care of might just mellow the tough boar out a bit.)"; [TODO: Write third option of "Take him to Garth" - then talk with G about what you two want to do with the boy... various options there: platonic daddy/shared boy/shared slut/jealous about Andy]
		say "     ([link]Y[as]y[end link]) - He should go and join Garth. In his own way, the boar does seem to care for what happens to Andy, and the teen definitely can learn a lot.";
		say "     ([link]N[as]n[end link]) - He can't abandon his friends. Andy should go back to them and they all need to toughen up and get smart about things if they want to survive in the hotbed of violence in the inner city.";
		if Player consents:
			say "     Recounting the sights of monsters you've seen, and including also a large biker-gang of hyenas, it is easy to convince Andy that his gang has little future in the inner city. With the offer Garth made to him sounding more and more enticing, the young wolf gives a sigh of relief and you can see that he is eager to get going now. 'Okay, I see what you mean. I'll go ask if he'll actually have me. Thanks.' And with that, the teen wolf trots off into the forest, on the way to find the gruff boar again.";
			now RazorbackBoarEvents is 4; [sent Andy to Garth]
			now Resolution of Canine Indecision is 4; [sent Andy to Garth]
		else:
			say "     Telling Andy that he should go back to his friends - but also remember the lessons Garth already has taught him - for one, not to be vicious even if you're the stronger party, and also to be careful as anyone can be a dangerous opponent, no matter what form they have. The young wolf breathes a sigh of relief, then nods to you and says, 'Okay. If you think that'll be best, I'll do it. Thanks.' And with that, he trots off down the nearby street, moving back into the built-up area of the inner city.";
			now RazorbackBoarEvents is 50; [Andy went back to his buddies]
			now Resolution of Canine Indecision is 50; [Andy went back to his buddies]
	else:
		LineBreak;
		say "     Telling the wolf in clear words that you have no interest in listening to him prattling on about his insecurities, you get about the same effect as if you had punched him in the nose. Recoiling from you with a hurt expression, Andy growls in frustration and then runs off down the street, shouting a snippy, 'Thanks for nothing,' over his shoulder.";
		now RazorbackBoarEvents is 51; [Andy went back to his buddies (on his own)]
		now Resolution of Canine Indecision is 51; [Andy went back to his buddies (on his own)]
	now Canine Indecision is resolved;
	now RazorbackBoarEvents is 3;

Table of GameEventIDs (continued)
Object	Name
Boar Encounter	"Boar Encounter"

Boar Encounter is a situation.
ResolveFunction of Boar Encounter is "[ResolveEvent Boar Encounter]".
Boar Encounter is inactive.
The level of Boar Encounter is 7.
Sarea of Boar Encounter is "Forest".

when play begins:
	add Boar Encounter to BadSpots of MaleList;
	add Boar Encounter to BadSpots of FurryList;

to say ResolveEvent Boar Encounter:
	project the Figure of Garth_face_icon;
	say "     While wandering through the urban forest, you catch a faint sound of snapping twigs. Pausing to listen more closely, you realize that they're actually getting louder. Eyes focusing in the direction the noises are coming from, you see a large anthro boar step out of the shadows of the forest. It's Garth, who apparently jogged through the woods to get to you. 'I knew you'd be around somewhere,' he says with a smile, taking a few steps closer. 'You still smell of the time I last bred you,' the anthro boar adds and winks at you. 'Just catching your scent when the wind turned a few minutes ago made my balls ache with the urge to fill you again.'";
	say "     Coming close enough to touch, Garth stands before you in all his naked glory, wearing nothing but the bristles of his own fur. Heavy-set yet muscular, he is a truly awe-inspiring example of an anthro razorback in his prime - and his build isn't the only thing the man can be proud of. Between his legs dangles a thick and weighty shaft, getting harder by the second, and a pair of furry balls ready to churn out enough cum to overfill your holes. Taking notice that you're checking him out, the horny boar gives you a wink before saying, 'Did you come into my forest in order to find me and have some fun, or are you just passing through? Either way, I look forward to taking you again.'";
	LineBreak;
	say "     [bold type]What do you reply?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Tell him you came specifically to get fucked.";
	say "     [link](2)[as]2[end link] - Say that you sadly only have time for a quickie.";
	say "     [link](3)[as]3[end link] - Excuse yourself. You're actually going somewhere.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to get fucked, [link]2[end link] to also get fucked or [link]3[end link] to leave.";
	if calcnumber is 1:
		LineBreak;
		say "     Stepping up to him and putting your hand on Garth's hairy chest, you tell him you're here to rock his world. 'Hah, I knew it,' he replies with a grin and puts you in an enthusiastic boar-hug before letting go and adding, 'Now why don't you remove those pesky clothes of yours. I wanna make you squeal!' Needing to hear no more you take off your gear and clothes, quickly tossing them into a small heap at the base of a nearby tree. Once fully naked, you go back to the furry male and give him a lust-filled kiss. Your tongues wrestle around against one another a moment before he eventually wins and forces his tongue down your throat. While doing so, the strong boar picks you up off the ground and forces you up against the nearest tree trunk.";
		say "     You wrap your legs around the waist of the horny boar and hook your arms over his shoulder, allowing him to hold you comfortably with one arm - freeing the other one to reach down between the two of you. With his hand guiding the erect length of his hard cock, you can feel its tip poke against your [if Player is female]nether lips[else]tight hole[end if]. Finishing your long make-out session he pulls his tongue from your mouth, leaving you panting and gasping for air, then says, 'Hope you're ready. I ain't holding back this time either. Just can't wait to get into your sexy hole.' The next brush of his manhood against your body leaves you feeling slightly wet - looks like he's leaking more than a little pre, making his shaft slick and ready to fuck you with.";
		WaitLineBreak;
		say "     In one hard thrust, he slams his cock deep into your hole, making you cry out in both pain and pleasure. Even with his impatient penetration, he gives you a few seconds to become fully adjusted to his cock impaled inside you. Eager for more, you soon start grinding your hips against his, trying to get him going. Your ploy is successful; Garth begins thrusting into you with long and slow strokes. His cock glides in and out of you, making you gasp and moan from the sensations of his shaft rubbing your inner walls. Despite what he said earlier, the powerful boar actually is holding back on his thrusts - though you assume that's just to stretch you out slowly for what's to come. With each further push of his magnificent cock, you mentally begin to beg for the rough fucking you expected more and more.";
		say "     You begin to moan, but are quickly silenced by the razorback's own mouth covering yours, once again sliding his tongue down your throat. He wrestles your tongue with his own, quickly overpowering you, then pulls back and lets you get in a breath as he smiles broadly. After that, his thrusts begin to pick up the pace just enough to draw another moan from you, leading to another bout of making out. His thick cock now glides in and out of you with ease, as you have become well-stretched and slick with his pre. You suspect Garth is playing some dominance game, stringing you along in this relentless tease of a slow fuck... and it works perfectly too. Soon you're so wound up with lust and arousal that you can't help but gasp for him to fuck you harder.";
		WaitLineBreak;
		say "     A smile spreads over the anthro boar's face and he replies, 'What was that? I didn't hear you. And who did you want to fuck you?' Ready to do anything that Garth asks by now, you shout out loud for him to take you and that you're eager to take the cock of Garth, the master of these woods. 'There we go,' he grunts in satisfaction, 'Knew you'd get it eventually.' With that, he suddenly changes pace. His slow thrusts now become hard and fast. Unable to contain yourself any longer you moan lewdly at the top of your voice, telling everyone in the woods around that you love being fucked this way. Mixing in a couple of gasps of 'Harder', 'Faster' and 'Breed me!' you spurn on the strong male to take you against the tree with ever greater force and lust.";
		say "     The significant amount of precum he has leaked into you results in the forest being filled with wet slurps of him pounding into you, coupled with your own moans and shouts at a great fuck you're getting. 'So,' Garth grunts in between his thrusts, 'Should I breed you or save my load for someone else?' Even though you're impaled by his long thick cock, the thought of him not filling you with his seed makes you feel empty inside. As you wrap your arms around him almost pleadingly, the powerful boar's thrusts begin to slow down, then stop completely as he pulls his erection out of your abused hole all the way. Desperate to get his cock back, you try to push down on its tip as he teases you with it, only to be denied as Garth pulls it a little further away.";
		WaitLineBreak;
		say "     Knowing what he likes being acknowledged, you call out loud that you want him to breed you, to fill you with his virile seed. 'How could I say no to that?' he says with a grin, sliding the tip of his cock back into you. As you moan deeply, the boar adds, 'This is how things are supposed to work, you know. It's just natural - the strong rule and protect their weaker mates... who pay them back for that. All it takes is accepting your role in the way of the wild - having respect for the alpha and yourself.' Bottoming out inside you, the powerful male gives an amused snort as you give a blissful nod to the point he made, then proceeds to fuck you in the same pace as he did before - hard and deep. Arms and legs wrapped around the broadly built razorback boar, you are thrown back into filling the forest with loud moans, telling everyone in earshot how much you enjoy being taken by him.";
		say "     After a while longer of getting an amazing, wild fuck, Garth thrusts thrusts into with full force, his balls slapping your ass as he bottoms out. Then his cock starts to throb forcefully, unleashing a flood of his potent seed deep into you. The sensation of being filled by him pushes you over the edge along with him almost right away, [if Player is male]making you shoot your own load onto your chest[else if Player is female]making your pussy become slick with femcum and causing it to trickle over Garth's balls to drip to the ground[else]making you tremble and twitch in orgasm[end if]. He continues to blast more of his cum into you for what feels like an eternity, giving you a pleasantly warm and full feeling.";
		WaitLineBreak;
		say "     Eventually, even Garth's orgasm runs its course - though by that time you're already filled to overflowing, making quite a bit of his load leak out of the cock embedded in your body, dripping to the ground below in long creamy strings and globs. He keeps you in your position against the tree for a while longer, breathing heavily as are you yourself, then finally pulls his slowly softening cock out with a wet slurp. Looking down between you, he grins at the gush of white cum splashing the ground before your opening pulls tight after being held gaping open for so long. 'Damn,' he says in a very satisfied tone, 'I really did a number on you, didn't I?' After running a strong hand in almost a caress down your side, the anthro boar helps you down and makes sure you can stand on your own feet.";
		say "     'It's always fun to have you visiting,' Garth says with a wiggle of his bushy eyebrows, slapping your shoulder in a friendly way. 'Would be even better if you'd just stay though. You know... I'm working on setting up something in that regard. But - nah, it's not done yet. I'll tell you when everything is ready.' With a wink, he turns to walk into the forest, calling over his shoulder, 'See you later, sweet-cheeks.'";
		if Player is female:
			NPCSexAftermath Player receives "PussyFuck" from Garth;
		else:
			NPCSexAftermath Player receives "AssFuck" from Garth;
	else if calcnumber is 2:
		LineBreak;
		say "     As you tell him you're just on your way somewhere else, Garth seems a little disappointed and replies, 'Well that's a shame. I'd hoped you'd want to spend a bit more time... but hey, since you're on the go, let's get to it. Ready for a nice pounding?' With that, he strokes his rapidly hardening shaft and then weighs the balls between his legs in one hand. 'I haven't found any receptive ladies roaming around in a bit, so there's quite a load saved up for ya. You're gonna get creamed, [if Player is female]lass[else]lad[end if].' Chuckling at his antics, you begin to remove your gear and set it down next to a tree. Soon you're naked and get on hands and knees, presenting your rear to the horny boar. 'I haven't had anyone this excited for my cock in a long time,' he says, 'Nice to know there are some people who know how to act properly when they meet an alpha male.' With that, he moves into position behind you, sliding his erection up and down between your buns and enjoying the touch of your skin against his length.";
		if Player is female:
			say "     'Mmmmh, can't wait to take you baby,' Garth moans, positioning his erection at your dripping pussy. The thick head of his manhood pushes forward a heartbeat later, nudging your nether lips apart as he enters you. Gasping loudly at the initial penetration, you shiver in lust at the primal scene you find yourself in - naked in the woods, kneeling on soft mossy ground while a strong beast-man takes you from behind. Garth chuckles at the way you rock back against him and the way your inner muscles tremble around his thick prick. 'You really like my cock don'tcha?' he asks, pushing deeper into you as you nod and moan to keep going. Your insides stretch readily as he slides in with a slow but steady push until finally his furry balls press against your skin. 'That's one fine pussy,' the razorback boar grunts and sets his hands on your hips to hold you tight.";
		else:
			say "     'Mmmmh, I'd much rather have pussy than fuck a guy, but... gotta admit that I'm tempted to do your ass anyway. Here it comes,' Garth moans, positioning his erection at your quivering pucker. The thick head of his manhood pushes forward a heartbeat later, slowly forcing its way into your back passage. Gasping loudly at the initial penetration, you shiver in lust at the primal scene you find yourself in - naked in the woods, kneeling on soft mossy ground while a strong beast-man takes you from behind. Garth chuckles at the way you rock back against him and the way your inner muscles tremble around his thick prick. 'You really like my cock don'tcha?' he asks, pushing deeper into you as you nod and moan to keep going. Your insides stretch readily as he slides in with a slow but steady push until finally his furry balls press against your skin. 'That's one fine ass,' the razorback boar grunts and sets his hands on your hips to hold you tight.";
		WaitLineBreak;
		say "     Bottomed out inside you, the boar looks around the small clearing around the two of you, almost daring anyone to watch him claim another [if Player is female]woman[else]man[end if] for himself. 'Don't think I'm gonna go easy on you,' the strong male grunts in a good-natured tone and a throb of his cock inside you almost seems to underline his words. After giving you this short - and only - warning, he begins to rapidly thrust in and out of your hole. The force of him pistoning in and out of your body actually pushes you forward and down, and before you can really react in your aroused state you're pinned on the mossy ground with Garth rutting on top of you. His large hand grasps your shoulder to keep you from sliding away further from his hardest thrusts";
		say "     'Take it slut,' the anthro boar almost roars, really letting out his wild side as he gets more and more into fucking you. ";
		if Player is submissive: [sub players]
			say "Immensely turned on by his rough treatment, you loudly moan that he should use you hard, satisfy his lust and breed you like the bitch you are. The submissive posturing earns you a satisfied grunt from the strong male, followed by an extra hard thrust with his thick cock. ";
		else: [normal players]
			say "Almost despite yourself, you can't help but be turned on by his rough treatment. There's something primal about serving as a furry male's partner and allowing him to satisfy his lust with you. ";
		say "[if Player is male]As turned on as you are, precum is leaking almost constantly from the tip of your cock, soaking into the moss that Garth's heavy pounding is grinding you against[else if Player is female]As turned on as you are, femcum is just dripping off the spread nether lips of your pussy, soaking into the moss that Garth's heavy pounding is grinding you against[else]As turned on as you are, you hump the ground with your sexless crotch, enjoying the feeling of the soft moss below rubbing your sensitive area there[end if]. Meanwhile, Garth's sack slaps your ass again and again, a constant reminder of the boar's virility and his intention of filling you with his seed.";
		WaitLineBreak;
		say "     The boar shows no signs of letting up anytime soon, just pounding into you and filling the forest with the sounds of your mating. Living in a harsh 'back to nature' lifestyle as he is seems to do wonder for someone's stamina, that's for sure. The all-out fucking quickly pushes your mind past all limits of arousal and for a time, you become nothing but a moaning fuck toy for the boar to use at his discretion. Garth's cock rubs rapidly against your inner walls, hitting your [if Player is female]g-spot[else]prostate[end if] more often than not and making you see stars. The forest is filled with your moans and shouts, making it clear to anyone within earshot that you're enjoying being dominated by Garth.";
		say "     'I'm gonna cuuumMMMMM!,' he shouts eventually, burying his cock deep inside you and releasing a flood of thick, creamy seed. Feeling his erection pulse against your inner walls with spurt after spurt of cum that is deposited into your depths, you're pushed past the point of no return right along with him, [if Player is male]shooting your own load between your stomach and the ground[else if Player is female]gushing a copious amount of fresh femcum all over the ground below[else]humping the mossy ground hard as you are rocked by your lust[end if]. Garth's weighty balls are working double time trying to fill you to the brink with his seed - all in the biological urge to impregnate you.";
		WaitLineBreak;
		say "     After the grunting razorback pumps a heavy load of his virile seed deep into your [if Player is female]pussy and womb[else]bowels and stomach[end if], he pulls his cock out and shoots the last couple of spurts across your ass. He tries his best to wipe his cock clean between your cheeks afterwards - only to make the mess worse as part of his deposit starts to squirt out of your abused hole. 'You were one nice lay babe,' he says in an almost affectionate tone as he moves on to swirl the cum on your ass with his cock, massaging it in. 'Your alpha is very happy with you,' Garth adds with a gruff smile, then lightly slaps your butt. 'Go on then, get where you were planning to go. I won't keep ya.'";
		if Player is female:
			NPCSexAftermath Player receives "PussyFuck" from Garth;
		else:
			NPCSexAftermath Player receives "AssFuck" from Garth;
	else:
		LineBreak;
		say "     Stepping up to the powerful boar-man, you pull him into an eager kiss, but then put your hand to his chest and gently stop him as he wants to embrace you. With a shake of your head, you explain to the razorback boar that you actually have to be somewhere and can't fuck around with him right now. 'Fine, next time then!' he replies somewhat gruffly, but you can see that he isn't too annoyed from the way he slaps your ass right after and chuckles before walking into the forest.";
	if Resolution of Boar Encounter is 0:
		now Resolution of Boar Encounter is 1;

Table of GameEventIDs (continued)
Object	Name
Woodcutting Boar	"Woodcutting Boar"

Woodcutting Boar is a situation.
ResolveFunction of Woodcutting Boar is "[ResolveEvent Woodcutting Boar]".
Prereq1 of Woodcutting Boar is Canine Indecision.
Prereq1Resolution of Woodcutting Boar is { 4 }. [must have sent Andy to Garth]
Prereq2 of Woodcutting Boar is Boar Encounter.
Prereq2ResolvedMandatory of Woodcutting Boar is false. [the event doesn't resolve at all, so it can be unresolved]
Prereq2Resolution of Woodcutting Boar is { 1 }. [encountered at least once]
Sarea of Woodcutting Boar is "Forest".

when play begins:
	add Woodcutting Boar to BadSpots of MaleList;
	add Woodcutting Boar to BadSpots of FurryList;

to say ResolveEvent Woodcutting Boar:
	say "     Moving through the expansive urban forest, one sometimes can almost forget that this was once the middle of a city, surrounded by what seem to be ancient trees and all sorts of other vegetation forming thick undergrowth. Yet all too often, the truth is revealed by objects coming into view beyond the thick trunks as you keep walking: roadsigns on crooked poles almost pushed over by roots bursting the concrete below, mounds of rubble that were once buildings, as well as a few wall segments miraculously still standing despite the explosive growth patterns of vegetation hereabouts. Glancing down, you see a large fragment of concrete, complete with several rebar struts sticking out of it. From the looks of it, they snapped under too much strain, showing that even something as simple as a growing tree can bring down what humanity has built - given enough time that is, or an out of control nanite infection to help things along.";
	say "     Gloomy thoughts come unbidden to your mind as you study this localized destruction of human civilization, gaze wandering over your surroundings and finding more and more things that do not belong in the woods. A green mound not too far away is an overgrown car on closer inspection, and over there is a bicycle twisted into something almost unrecognizable by a tree that grew through the spokes of its wheels until they snapped. Then suddenly, a loud *Thwack* sound reaches your ears. Standing up straight, you listen intently, and after a short moment, an identical noise rings out, followed by another and another, now in quick succession. The way sound echoes in the woods makes you somewhat tentative in your guess, but you think the source of the noise isn't actually that far off.";
	say "     [bold type]Do you want to go to check it out?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure, could be something fun to find.";
	say "     ([link]N[as]n[end link]) - Nah, better safe than sorry.";
	if Player consents:
		LineBreak;
		say "     You move through the forest towards the sound, maintaining a relaxed tempo so you can keep an eye out for anything that might be lying in wait, or could also be attracted by the rhythmic thumping. Thankfully, neither of those fears seems to be an issue as you get closer over the next ten or fifteen minutes, right until the point when the noise suddenly stops. You're certain your target is just out of sight by now, although the sudden absence of sound seems strange, so you can't help but stop right where you are and listen hard. There is something, a quiet groaning, followed by the sudden crack of breaking wood, and then a gruff voice shouting, 'Timber!' A swooshing noise and a colossal thud follow, which apparently belong to a tree coming down. Rustling and chopping sounds take up after it again, and you move closer to finally get a visual impression of what's going on.";
		say "     Glancing out from behind a tree, you see a little clearing of overgrown grass, its borders marked by the remnants of a picket fence torn apart by the vegetation - and crushed by the crown of a fallen tree in one broad section. A person you know is walking along the trunk, swinging his fireman's axe to remove side branches from the tree. It's Garth, the razorback boar! He's naked except for his fur, totally at ease in the natural environment. Before you know it, another guy steps into sight, shirtless and in jeans, following behind the muscular wild pig with a little hatchet in hand and helping him clean the tree a little inexpertly. This one is a young adult anthro wolf you've also encountered before: Andy. Seems like he indeed took your advice to seek Garth out, and has become the older man's companion. You watch the two of them work for a little while, with the experienced survivor teaching his disciple the proper way to hold his hatchet and how to properly chop. Then suddenly, Garth turns his head and calls out towards you, 'So, are you gonna stand there all day and peep on us doing our work?'";
		WaitLineBreak;
		say "     Having been spotted, you abandon your position behind the tree and step over an almost flattened section of fence, walking onto the one and a half foot tall lawn. On the way to Garth and Andy, you almost stumble over something: A kid's tricycle lying on its side. This must have been an existing garden even before the outbreak, in a section of the suburbs that the urban forest expanded into. Leaving the find behind, you close up the last of the distance to Garth, who claps one of his strong hands on your shoulder and gives it a squeeze. 'Hey there, good to see you again. Though if you're here for sex, I gotta tell you that me and the boy are busy right now. Working.' The last word was addressed to Andy, who's stopped to watch the two of you talk, giving you a little wave as you glance his way. Garth clearing his throat audibly has the anthro wolf hastily get back to work, removing small branches one by one.";
		say "     'Better,' Garth calls out and chuckles, then turns back to you and says in a somewhat more quiet tone, 'So, thing is that I can't very well teach him responsibility if I drop everything immediately just to jump your bones. Oh, and he told me that you had a talk, thanks for that I guess. Didn't have high hopes for the li'l punk, or any of his generation really, but... he kinda grew on me. Really been trying to be good, now that hopefully all of that stupid shit is knocked out of his head. Time will tell.' His voice is gruff as ever as Garth says this, but you can make out a slight smile along his muzzle as the powerful boar looks at his companion. 'Anyways, having wolfie here along got me thinking. Maybe some people are worth saving after all. But not everyone's hardy enough to just rough it in the wilds, like yours truly, so... me and him started a project. Gonna build a log cabin, a proper one. None of that locking nature under concrete shit, you know.' The muscled boar looks at you thoughtfully after that, as if waiting for you to comment.";
		LineBreak;
		say "     [bold type]What do you say to him?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Offer to help for a while. That's quite a project for two or even three people.";
		say "     [link](2)[as]2[end link] - Wish them well, but leave before he tries to rope you into this.";
		say "     [link](3)[as]3[end link] - Suggest that they should just find a small building somewhere that is still intact and move in there.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to help, [link]2[end link] to leave or [link]3[end link] to suggest simply finding a place to stay.";
		if calcnumber is 1:
			LineBreak;
			say "     You express admiration for Garth's ambitious project, as building a small building with just three people and no power tools surely is quite a task. He snorts at the understatement, then adds with a grin on his muzzle, 'That's the point. You shouldn't do the easy thing in life, but rather the right thing. We're gonna build something new, in the sweat of our own brows, and we'll make it better. Nothing like that toxic human civilization that brought about its own end!' He waves a strong arm to the side, as if to indicate the city all around the growing urban forest. 'Glad to hear you're on board my friend, we can use all the hands we get in building a future. Come on, let's show the pup how things are done. With that said, the razorback boar gives you a companionable squeeze of the upper arm, then waves you after him as he walks over to where Andy is working on the tree.";
			say "     The experienced survivalist teaches you how to hold the axe and that you should take off the branches right at the trunk, and together the three of you make short work of cleaning up this felled tree. In the end, Garth goes to pick up a sturdy rope from where it had been lying at the edge of the clearing, and with it securely tied to the trunk, you pull the tree to the side. 'It's not really worth it to take off the bark of this thing and have it all naked while we're still in the progress of cutting down more. For now, we'll stack these over here out of the way, where there's no chance of them being crushed by the next falling tree,' the razorback boar explains in an amicable tone, smiling as he sees Andy listening intently to his every word. Seems like the young wolf really has come to respect the woodwise guy's leadership and wisdom. After that, you immediately set out to fell the former neighbor of the first tree, eventually adding a second log to the building material collection.";
			WaitLineBreak;
			say "     Wiping sweat from his brow after dragging the heavy weight of wood into place, Garth lets out a satisfied grunt. 'Ah, this is how things should have been. Good, honest work, right out in nature. And so what if one gets sweaty and sore from it? At least then you know you achieved something at the end of the day, eh?' Nodding to you, it is obvious that he expects some sort of reply, but before you can formulate any, he tough boar suddenly raises a hand to his mouth and gives an ear-ringingly loud whistle. 'Not that one, boy!' he shouts at Andy, who has just raised his axe to start chopping at the next tree from beside where the first two had stood. Almost fumbling his tool and dropping it as he is interrupted by the sudden call, Andy looks over to the other man with a surprised expression. 'Um, okay. But isn't this the next one to be cut down, Garth?' The boar shakes his head, patting the side of your arm and waving you to come with him to join his trainee wolf.";
			say "     'Okay Andy, there's two reasons for not swinging that axe of yours here. First, you'd have a seriously tough time to bring this fella down. And second, not really a polite thing to do to our future neighbor.' As the young adult wolf looks at him somewhat perplexed, Garth brings his hand to just under his muzzle and tilts it upwards, until Andy is looking right at the face visible about 9 feet up the trunk. The bark forms human features there, a man's visage in a neutral expression and with closed eyes, as if he was sleeping. 'I reckon this might'a been the owner of the house that stood here before the forest grew,' Garth says, patting the side of the tree almost gently. 'You gotta check your targets up and down before you act, understand? From what I can tell, they're all lost inside their minds right now. Maybe gonna come to terms with being trees, maybe not, no matter which - we should give [']em the time. And I wasn't kidding about your chances of cutting him down either. Some of these guys grow faster than you can chop.'";
			WaitLineBreak;
			say "     After the little lesson in nanite apocalypse woodcutting, Garth takes Andy and you in a circle around the clearing, allowing you to recognize a pattern after a little while. One edge of it has a straight line of trees with faces and from the fragments of asphalt and concrete between their branching roots, you'd guess it was a street and sidewalk. Most of the other trees next to the two stumps seem to be natural wood, apparently once part of the large garden whose lawn now forms the clearing. Clearing up which trees are free to be chopped, the three of you soon get back to work, and over the next several hours, you add another three logs to the pile before Garth calls for a break. 'Good job everyone,' he calls out with a proud grin and leans his axe against one of the stumps. 'Time for a break, and getting something to drink.' Having looked at his wolf companion as he said those last words, Andy takes the hint and goes off to the little pile of their gear, angling his steps towards a large cooler standing there.";
			say "     'Good to have you with us here, helping out,' Garth tells you in an earnest tone, 'I really got to admit that working together with the right people is better than living alone in the woods. Thanks for convincing Andy to join me and making me remember that.' He smiles at the sight of Andy's raised tail as the young man bends down to pull some beers out of the cooler. 'You know, if were out for some physical fun when you came here, now would be the time for it. Hah, even would show wolfie a good example, waiting till you're done with work before getting your fuck on. And I'm quite sure he'd be open for a tumble too if you ask him nicely.' Standing up with three beers in hand, Andy starts back towards you, only to slow his steps for a second as he recognizes the somewhat lewd expression on Garth's face. As his mentor gives a grinning nod towards him and yourself, the young man smiles and continues walking, tail wagging behind his back.";
			say "     [bold type]What do you want to do now?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Have sex with one or both of them.";
			say "     ([link]N[as]n[end link]) - Just relax a bit, drink with them and then go your own way for now.";
			if Player consents:
				LineBreak;
				say "[GarthAndySexMenu]";
				now Resolution of Woodcutting Boar is 2; [player joined Garth & Andy, did work - had sex during break]
			else:
				say "     Shrugging off Garth's offer of sex, as well as the interested glances that Andy seems to be giving you, you simply accept a beer and sit down on one of the stumps to relax and chat with them about this or that. It's a nice and calm time, quite different to the usual struggle for survival in this fallen city, and you feel better for it.";
				SanBoost 15;
				PlayerDrink 15;
				now Resolution of Woodcutting Boar is 1; [player joined Garth & Andy, did work - just had some food during break]
		else if calcnumber is 2:
			LineBreak;
			say "     You express admiration for Garth's ambitious project, as building a small building with just two people and no power tools surely is quite a task. He snorts at the understatement, then adds with a grin on his muzzle, 'That's the point. You shouldn't do the easy thing in life, but rather the right thing. We're gonna build something new, in the sweat of our own brows, and we'll make it better. Nothing like that toxic human civilization that brought about its own end!' He waves a strong arm to the side, as if to indicate the city all around the growing urban forest. 'A pity that you don't have time to join us, we could use more hands in building the future. Come back if you ever want to be part of something greater, eh?' With that said, the razorback boar gives you a companionable squeeze of the upper arm, then walks over to where Andy is working on the tree and starts to chat with him.";
			say "     You notice the young wolf's tail start to wag as his mentor joins him, and the tone of Garth's voice seems to soften a little as he is giving tips with a fatherly hand on Andy's shoulder. All of which wakes some thoughts of maybe joining them after all, but you continue to hesitate and eventually shake your head. Nah, you've got other things to do. Doesn't mean you can't come back sometime later though, maybe when they've progressed a bit.";
			now Resolution of Woodcutting Boar is 97; [player wished well, but isn't involved in building]
		else:
			LineBreak;
			say "     Garth lets out a contemptuous grunt at your suggestion and shakes his head. 'Bushwah! You don't understand! Finding an easy place to shack up in isn't the point. That'd still mean living in the rotting carcass of that toxic human civilization that brought about its own end. No, we're gonna build something new, in the sweat of our own brows, and we'll make it better. Believe me, I'll teach that boy proper!' Frowning as he looks you up and down, the man adds, 'You should go then, back to the city. This isn't for you. But I hope that maybe you'll see the truth someday too.' With a shrug, the razorback boar walks away from you, catching up with Andy as he works on the tree and starting to chat with him.";
			say "     You notice the young wolf's tail start to wag as his mentor joins him, and the tone of Garth's voice seems to soften a little as he is giving tips with a fatherly hand on Andy's shoulder. All of which makes you somewhat sad that you put yourself on the outside of their little group with thoughtless words. You stand there for a moment longer, then eventually shrug and wander off, the sounds of axe-swings accompanying you for some time before they fade into the distance.";
			now Resolution of Woodcutting Boar is 98; [player uninvited from the building project]
	else:
		LineBreak;
		say "     Taking careful note of where the sound is coming from, you then turn the other way and walk off, leaving whatever it is far behind you. Just to be on the safe side, you commit a few landmarks to memory so you don't accidentally wander here again.";
		now Resolution of Woodcutting Boar is 99; [disinterest]

to say GarthAndySexMenu:
	now sextablerun is 0;
	say "     What do you want to do with the tough and experienced boar and/or his young wolf companion?";
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take Garth from behind";
		now sortorder entry is 1;
		now description entry is "Push the boar-man against a tree and really pound into him";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Ride Garth's thick shaft (anal)";
		now sortorder entry is 2;
		now description entry is "Power-bottom the boar-man";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride Garth's thick shaft (vaginal)";
		now sortorder entry is 3;
		now description entry is "Take the boar-man in your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Garth a blowjob";
	now sortorder entry is 4;
	now description entry is "Take the boar-man's shaft in your mouth";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck Garth";
		now sortorder entry is 5;
		now description entry is "Make use of the boar-man's mouth";
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
				if nam is "Take Garth from behind":
					say "[GarthAndySex1]";
				else if nam is "Ride Garth's thick shaft (anal)":
					say "[GarthAndySex2]";
				else if nam is "Ride Garth's thick shaft (vaginal)":
					say "[GarthAndySex3]";
				else if nam is "Give Garth a blowjob":
					say "[GarthAndySex4]";
				else if nam is "Face-fuck Garth":
					say "[GarthAndySex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind and just enjoy some relaxing time with them instead, sitting down on one of the stumps and nipping at your beer while you talk about this or that. It's a nice and calm time, quite different to the usual struggle for survival in this fallen city, and you feel better for it.";
			SanBoost 15;
			PlayerDrink 15;
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GarthAndySex1: [Pounding against a tree]
	say "     Accepting the bottle of beer offered by Andy once he is back, you take a good long swig, then grin at Garth and tell him quite directly that you'll fuck him now. There is a little gasp of indrawn breath from Andy and his eyes go wide, while Garth only chuckles. 'Is that so?' he says amusedly and hands Andy his mostly empty beer, then takes a stance with his hands on his hips, awaiting you full-on. Finishing off your drink, you drop it softly on the grass and strip down, then walk confidently up to the mature and virile wild pig. He receives you, ready to wrestle for dominance. Garth is quite strong and wily, making the play-fight actually fairly difficult, soon putting you in danger of being overpowered. But then you snake a hand over his shoulder, digging your fingers into the bristly fur of his neck and pulling the gruff guy close for a demanding kiss. He replies in turn, hands clawing at your form as he kisses you right back. Having gotten a nice firm grip, you wrench the strong man's bulky form around and give him a forceful shove, making Garth stumble against the nearest tree.";
	say "     'Someone's bossy today,' he grunts amusedly after catching himself on its bark. You're behind the wild pig eye-blink later with your erection leading the way, pressing against his firm buttocks. The pink ring of his pucker still has the looks of being rarely penetrated, a strong and firm muscle as you push against it testingly. Clearly, Garth isn't on the receiving end of anal sex usually. Rubbing your erection up and down between his cheeks draws a gruff grunt from Garth, joined a moment later by the comment, 'Found what you want, ass-bandit? Folks like you can't resist the animal magnetism of a real man, hah! But don't you think you'll tame me into a slutty bottom boy. Fat chance of that!' Taking the challenge, you thrust into the strong male's tight hole at just that moment, making him roar at the sudden anal invasion. Garth's pucker only yielded to the pressure of a full-on thrust with your hips, so your first penetration actually goes balls-deep from your momentum, complete with a meaty slap of your balls against his furred ass.";
	WaitLineBreak;
	say "     He feels so very warm and snug to be in, the tightly gripping chute of a dominant male pushed into putting out makes your blood boil with arousal. You pull back till just your cockhead is inside his tightly-stretched opening, then hammer in again and again, making hard use of your partner's back door. This seems to dismay Andy a little, and you can hear him call out if Garth is okay. 'Right as rain, boy. *Nnngh* Just another day in the forest, following the rules of nature. [SubjectProCap of Player] earned [PosAdj of Player] fun by besting me.' Garth grunts and groans as he is getting fucked - suppressing a wince or two at the somewhat painful stretching at first. Being the tough guy he is, the razorback just takes everything you can give and after a short while you think you can hear lust outweighing everything else in his bellows. By this time, you also become aware of Andy in the corner of your eye, and as you twist your head to look, you see that he is actually just a few steps away now. Having stripped down to just his fur, the young wolf holds his fairly large knotted cock in both hands, stroking it as he watches you pound his mentor.";
	say "     Grunts and slapping noises of your hips against Garth's ass echo throughout the forest, coming in a rapid pace as you fuck him deeply without restraint. That tight hole of his just feels soo good, as do the muscles of his stocky body as you hold on to him and press against his back. Lust has you in its grip so tightly that you think of little else but sliding in and out of your partner... so much so that you find yourself surprised by him gripping your right wrist with his hand, pulling your arm around himself and further down until it comes to rest on his crotch. 'You were getting a bit carried away there, buddy. Have some decency and give a guy a reach-around if you're pounding his ass, eh?' Garth grunts, then squeezes his ass extra tight around your cock for a second. The thick rod of his erect shaft rests hotly against your skin and you take the hint to grip it, jerking the aroused wild pig in rhythm with your own thrusts. You can feel his manhood twitch and pulse each time you give him an especially deep thrust - no matter what his orientation, pounding Garth's prostate has a definite effect.";
	WaitLineBreak;
	say "     In a wild and exhilarating ride, you drive the big man closer and closer to the edge, his grunts and moans coming quicker and becoming even deeper, more filled with urgency. Not having any shame at coming to enjoy this kind of sex, the anthro razorback even starts to shout, 'Yeah, you bastard! Faster! Hit that spot hard! Again! Ngh - Nnngh! More! NnnnngggghhhHH!' With that last drawn-out roar, Garth starts to cum, his shaft rhythmically pulsing in your hand as stream after stream of cum blasts through it and splashes the trunk of the transformed tree he's leaning against. With each spurt of the boar's seed, all the muscles in Garth's body twitch and tense - including those inside his ass, around your shaft. This results in you joining your stocky partner in orgasm just moments later, gripping him tightly around the hips as your balls start to unload everything they got. Your seed gets pumped into the anthro animal guy in weighty bursts, filling him up with creamy cum.";
	say "     After blasting the last few spurts of your orgasm into Garth, you pull out of him with a slurp. A string of cum connects your cockhead to his puckered hole for a second before it snaps, then more of your seed starts to leak out of his slightly gaping hole. The sight makes your heart beat faster for a second - a visible proof that you bred this powerful male. As the first white droplets fall on the ground, Garth looks over his shoulder and grunts, 'Made quite a mess back there. That'll draw those damned chipmunks if I go into the forest like this. Persistent little butt-munchers, I tell you. They just can't get enough of the stuff.' Then suddenly, the two of you hear a groaned, 'Oh fuck,' from Andy, whom you had almost forgotten was watching you and jerking off to it. The young man has his fingers tightly wrapped around his own cock, holding it firmly as he reflexively humps his hips forward and lets loose a small fountain of cum, spurting out in long arcs that fertilize the grass beside you.";
	NPCSexAftermath Garth receives "AssFuck" from Player;
	say "     With an amused grunt, Garth glances at his companion and says, 'But maybe I don't have to wait for the chippies, eh?'";
	say "     ([link]Y[as]y[end link]) - Eat your load from his ass.";
	say "     ([link]N[as]n[end link]) - Make room for Andy to eat him out.";
	if Player consents:
		LineBreak;
		say "     Crouching down behind the wild pig, you rub the base of his tail and make him pant in pleasure at that touch, then set both hands on his firm buttocks. Feels great to just touch them, hard muscle under a layer of fur. Spreading Garth's buttocks, you then push your face in between them, sticking out your tongue to lick his gaping hole. Slurping up the first trickle, the taste of sperm fills your mouth and you hum with pleasure as you swallow. 'Yeah, eat that ass!' Garth replies with obvious pleasure, grinding his hips back against you and making more creamy cum leak out. You spend some more time tonguing his hole, even going on to use your fingers too, swallowing every drop of your earlier deposit into the boar.";
		say "     Using your hands to stroke him and fondle the boar-man, he even gets half-hard once again - but Garth eventually pulls away from you. 'You're great at this, thanks. But... can't fuck away the whole day, you know. Andy and me got some plans to collect tools and nails that we'll need.' Turning towards the young wolf, who by now is just zipping up his jeans and looking at Garth in a friendly and adoring way, the boar moves to collect the empty bottles and puts them in a carrying bag. A little while later, the two of them set off, as do you for now.";
	else:
		LineBreak;
		say "     Stepping away from the wild pig, you glance towards Andy, who's still standing where he is and swaying slightly with closed eyes, panting as he milks the last drops of his load from the red rocket of his cock. He opens his eyes again as Garth clears his throat, looking at his mentor somewhat wide-eyed, especially as the boar says, 'Could use a little help here, boy. You don't want me to be accosted by chipmunks, do you?' Speechless for a second, Andy then opens his mouth and replies, 'Um, no of course not Garth.' With that, he hurries over to the other male, looking somewhat shame-facedly at you watching his naked form and the dick swinging between his legs. Still, he gets into position without complaint, crouching behind Garth and bringing his muzzle up to his rear. Placing his hands on Garth's buttocks, he spreads them and starts licking. 'Yeah, eat that ass!' Garth replies with obvious pleasure, grinding his hips back against Andy and allowing more creamy cum to leak out.";
		say "     You spend a little while watching Andy eat his mentor out, then even using his fingers too and swallowing every drop of your earlier deposit into the boar. As he strokes and fondles the boar-man, Garth even gets half-hard once again, but the anthro boar pulls away from him eventually. 'You're a real sport, kid. Nicely done, but we can't fuck away the whole day, you know. Gotta pick up some more tools and nails, remember?' Pulling the young wolf to his feet, Garth sends him to grab his jeans, while he himself moves to collect the empty bottles and puts them in a carrying bag. A little while later, the two of them set off, as do you for now.";

to say GarthAndySex2: [riding him (anal)]
	say "     Accepting the bottle of beer offered by Andy once he is back, you take a good long swig, then grin at Garth and tell him quite directly that you want his cock deep up your ass. There is a little gasp of indrawn breath from Andy and his eyes go wide, while Garth only chuckles. 'Is that so?' he says amusedly and hands Andy his mostly empty beer, then takes a stance with his hands on his hips, awaiting you full-on. [if Player is female]'Fine by me if you're going for anal, babe. I'm more of a pussy guy admittedly, but any tight hole is a sweet thing.' [else]'Fine by me if you're going for anal, dude. Now don't misunderstand me - I'm not really an ass bandit, but... I definitely won't say no to a nice and tight hole if it's offered.' [end if]As he says this, Garth's thick prick starts to fill out, hardening to a towering shaft of erect man-meat. The razorback boar proudly strokes his cock, waving it towards you and winks with broad grin on his face.";
	say "     'One thing though - if you're so bossy and demand my dick, you can be the one to do the work too.' Chuckling, Garth moves to lay down on the grass of the clearing afterwards, stretching himself out on his back. In a demonstrative show of relaxation, he puts his hands behind his head and glances down to his proudly standing erection. 'My pole's all yours, sweetcheeks.' Eager to feel the thick cock's girth, you quickly get rid of your gear and clothes, then step up to stand over him in all your naked glory. As you spit in your hand and proceed to lube your own asshole with it, the razorback boar turns his head to look at Andy, who's standing a little bit off towards the side. 'Don't be shy boy, you can step up and watch. Might learn something too. For example, our friend here wants some dicking and is willing to work for their fun. Some sniveling city slicker would just expect to have their partner service them, while [SubjectPro of Player] helped us with the trees and is even now lubing up. That's dedication you should remember!'";
	WaitLineBreak;
	say "     Ignoring Andy for now, you feast your eyes on Garth's stocky yet quite muscular body and move up to him, then crouch down over his crotch. The boar reaches out to stroke the insides of your thighs with his strong hands while you take hold of his thick shaft and give it several long strokes. Just feeling the girth of his member gives you tingles of anticipation, so you quickly smear the copious pre-cum oozing from his cockhead over the towering pole and then move your ass into position right above it. Relaxing your opening, you press down against the horny boar-man until he pops into you, making both of you moan loudly at the sensations of the penetration. '[if Player is female]Yeah, ride that dick baby! Nnnggh - you feel nice and warm,' [else]Yeah, ride that dick dude! Nnnggh - show me what your boipussy can take,' [end if]Garth grunts in a husky voice as you sink deeper on his erection. His hands move to your hips, stroking their sides while Garth [if Player is female]looks up at you, his eyes hungrily taking in your whole body[else]leans his head back, closing his eyes to focus on your hole's tight grip on his dick[end if].";
	say "     After slowly working your way down on the razorback boar's thick piece of man-meat, you eventually feel the bristly pubes of your friend press against your buttcheeks. Yeah, you've taken all of him - balls-deep in your asshole, the strong and stocky male gives you a quite nice feeling of fullness. Resting like this and taking in the ridges and bumps of his cock, the sensation of his hot shaft pressing against more than a few 'magic' spots inside you, you're already very satisfied with your decision of using the very willing boar for your enjoyment - but there's a lot more fun to come. Looking down upon the razorback pig, you lean forward and plant your hands on his broad, pretty firmly muscled chest and brace yourself, then start sliding your ass up again. Garth's eyes [if Cunt Count of Player < 1]open and [end if]focus on your own with a wild intensity of barely contained lust and the big man shows a wide grin, exposing his sharp tusks as he grunts deeply.";
	WaitLineBreak;
	say "     The survivalist's grip on your hips tightens as you go on and on until just the tip of his erection is inside you. Even so, he just moves his hands with you, not actually pulling or pushing in any way. Looks like he has enough self-control to keep his urges to rut you like a wild beast in check - for now. You can't help but grin playfully at the hunk of a guy and decide to push his buttons a bit, pinching Garth's nipples and squeezing his abs, then start rocking up and down on his thick prick. Moans and gasps fill the little clearing in the forest as you ride the razorback, taking his meat all the way in quick succession. Before long, the sensations of being inside your tight ass erode Garth's resistance more and more and he begins taking a more active role in the coupling, humping his hips up to meet yours, with his balls smacking against your ass with satisfying thuds.";
	say "     Bouncing up and down on the wild pig's cock you have one hell of a nice time, as his manhood nudges all the right places and stretches your chute tight around it. At the same time, it seems like your little show isn't without effects on the audience, as a gasp of 'Fuck yeah' makes you turn some attention back to Andy. The young man is just a few steps away now and has gotten rid of his pants, stroking a well-sized canine cock as he watches the action. It's anyone's guess in which position he imagines himself in, yours or Garth's. Taking that big cock again and again soon turns your libido in a roaring heat, making your hands fly to your own crotch and proceed to [if Player is female]caress your clit, rubbing it in circling movements [else if Player is male]grab your swinging erection, jerking it in a rapid pace [else]caress your featureless crotch, rubbing its sensitive skin with circling movements [end if]while you throw your head back and give a lewd moan, announcing to everyone in earshot that you're getting close to an orgasm.";
	WaitLineBreak;
	say "     Suddenly, the world spins around you for a second as you find yourself pulled against Garth's chest by strong hands and the razorback boar performs a full-on flip that would make any wrestler proud, grunting in satisfaction as he covers your form with his bulky body, pressing your back against the ground. Any thought of maybe resisting or protesting is swept away by the amazing new sensations the move gives you, as his cock stayed inside you the whole time and now presses into your depths in an all new angle. Seems like your partner finally gave in to his rut, freeing up his libido-fueled urge to breed you hard. And oh boy, does he perform - the stocky body of this boar really has quite a few muscles - all of which perform to their utmost as his hips start to pound against your ass.";
	say "     Garth is grunting and chuffing hard as he fucks you, and his snout is buried in the curve of your neck, taking deep breaths of your scent and licking your skin, clearly turned on by all the sweat and pheromones. 'Oh yeah! Gonna fffuuuuckkk you good!' he grunts, breathlessly barking out the words. 'Breed this tight little hole!' he adds next, getting louder with each word as he builds up to a howling orgasm, his thick shaft sending forth a deluge of cum to flood your asshole. You can feel the throb of his manhood against your stretched pucker and a pleasant warmth fills you more and more with every new spurt. Garth's full balls churn out quite a bit of seed to really stuff you good, trying [if Player is not mpreg_ok]futilely[else]hard[end if] to knock you up with his piglets.";
	WaitLineBreak;
	say "     While Garth is still blasting cum into your insides, you hear breathless moans coming from Andy, who's by now masturbating with frantic haste. Moments later, the young wolf lets out a climactic howl and starts to shoot, his load landing in long streaks on the ground, fertilizing the grass. Meanwhile, the heavy form of the razorback boar keeps you pinned under him as Garth's orgasm runs its course, with the panting male holding and caressing your body as his cock fills you with cum. He even plants a kiss or two on your shoulder and neck as he starts to catch his breath, then says in a still somewhat breathless voice, 'Thanks, you're a great lay. And - ah well, I can't say I'm sorry for turning things around on ya in the end. It's just how I swing, you know? But don't think that means I leave my partners hanging, ";
	if Player is puremale:
		say "even if it's a dude!' And with that, the boar takes your still rock-hard cock in his hand, chuckling at the string of pre-cum connecting it to your abs. 'I can see you liked it. Let's get you off buddy!' Garth adds and starts to jerk you off, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - turning your cock into a cum-fountain that spurts long strings of seed all over your abs, chest and even chin.";
	else if Player is male:
		say "even if she's part dude!' And with that, the boar takes your still rock-hard cock in his hand, chuckling at the string of pre-cum connecting it to your abs. 'I can see you liked it. Let's get you off babe!' Garth adds and starts to jerk you off, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - turning your cock into a cum-fountain that spurts long strings of seed all over your abs, chest and even chin. Meanwhile, femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	else if Player is female:
		say "especially not a babe like you!' And with that, the boar puts a hand on your pubic mound, searching out your clit with his thumb to rub it with circling movements. 'Man, you're really wet. Someone liked taking it up the ass quite a bit, haha. Let's get you off babe!' Garth adds and starts to work your magic button with a new intensity, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	else:
		say "even if it's... well, whatever you are!' And with that, the boar puts a hand on your pubic mound, searchingly caressing your featureless crotch. As you pant and twitch a little at his touch, he chuckles and says, 'Oho, turned on much? Seems like someone really liked taking it up the ass. Let's get you off buddy!' With that said, he starts to stroke your pubic region, feeling out the most sensitive spots. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - making you shiver and writhe as your whole body gets a tingling feeling of pleasure running through it.";
	say "     As you slump back, still out of breath from your orgasm, Garth gently pulls his erection out of you, accompanied by a little slurping sound and the feeling of his cum trickling down from your well-bred and still a little gaping hole. 'I still would have preferred pussy, but I can't say this hasn't been fun, eh? Still, I'm tempted to offer you a second round of fun in a little while, but... we can't fuck away the whole day, you know. Andy and me got some plans to collect tools and nails that we'll need.' Turning towards the young wolf, who by now is just zipping up his jeans and looking at Garth in a friendly and adoring way, the boar moves to collect the empty bottles and puts them in a carrying bag. A little while later, the two of them set off, as do you for now.";
	NPCSexAftermath Player receives "AssFuck" from Garth;
	increase FuckedByRazorbackBoar by 1;

to say GarthAndySex3: [riding him (vaginal)]
	say "     Accepting the bottle of beer offered by Andy once he is back, you take a good long swig, then grin at Garth and tell him quite directly that you want his cock deep up your ass. There is a little gasp of indrawn breath from Andy and his eyes go wide, while Garth only chuckles. 'Is that so?' he says amusedly and hands Andy his mostly empty beer, then takes a stance with his hands on his hips, awaiting you full-on. After watching you strip with a grin on his face, Garth nods appreciatively as he takes in all of your naked glory. Happy to show off a little, you let your hand brush over the nether lips between your legs, then spread them invitingly for him to see. The razorback boar comments, 'Oh yeah babe. Show me that pussy! [if Player is male]Had me worried for a second with that cock of yours, but you just[else]You[end if] wanna get a good dicking, don't you?' As he says this, Garth's thick prick fills out more and more, hardening to a towering shaft of erect man-meat. Proudly stroking his cock, the survivalist waves it towards you and winks with broad grin on his face.";
	say "     'One thing though - if you're so bossy and demand my dick, you can be the one to do the work too.' Chuckling, Garth moves to lay down on the grass of the clearing afterwards, stretching himself out on his back. In a demonstrative show of relaxation, he puts his hands behind his head and glances down to his proudly standing erection. 'My pole's all yours, sweetcheeks.' Eager to feel the thick cock's girth, you quickly get rid of your gear and clothes, then step up to stand over him in all your naked glory. As you finger yourself in preparation, the razorback boar turns his head to look at Andy, who's standing a little bit off towards the side. 'Don't be shy boy, you can step up and watch. Might learn something too. For example, our friend here wants some dicking and is willing to work for their fun. Some sniveling city slicker would just expect to have their partner service them, while [SubjectPro of Player] helped us with the trees and is even now getting ready for my dick. That's dedication you should remember!'";
	WaitLineBreak;
	say "     Ignoring Andy for now, you feast your eyes on Garth's stocky yet quite muscular body and move up to him, then crouch down over his crotch. The boar reaches out to stroke the insides of your thighs with his strong hands while you take hold of his thick shaft and give it several long strokes. Just feeling the girth of his member gives you tingles of anticipation, so you quickly smear the copious pre-cum oozing from his cockhead over the towering pole and then move your crotch into position right above it. Relaxing your inner muscles, you sink down over the horny boar-man and slide his cockhead into you, making both of you moan loudly as his erection nudges apart the dripping wet nether lips. 'Yeah, ride that dick baby! Nnnggh - you feel nice and warm,' Garth grunts in a husky voice as you sink deeper on his erection. His hands move to your hips, stroking their sides while Garth looks up at you, his eyes hungrily taking in your whole body.";
	say "     After slowly working your way down on the razorback boar's thick piece of man-meat, you eventually feel the bristly pubes of your friend press against the insides of your thighs. Yeah, you've taken all of him - balls-deep in your pussy, the strong and stocky male gives you a quite nice feeling of fullness. Resting like this and taking in the ridges and bumps of his cock, the sensation of his hot shaft pressing against more than a few 'magic' spots inside you, you're already very satisfied with your decision of using the very willing boar for your enjoyment - but there's a lot more fun to come. Looking down upon the razorback pig, you lean forward and plant your hands on his broad, pretty firmly muscled chest and brace yourself, then start sliding your hips up again. Garth's eyes focus on your own with a wild intensity of barely contained lust and the big man shows a wide grin, exposing his sharp tusks as he grunts deeply.";
	WaitLineBreak;
	say "     The survivalist's grip on your hips tightens as you go on and on until just the tip of his erection is inside you. Even so, he just moves his hands with you, not actually pulling or pushing in any way. Looks like he has enough self-control to keep his urges to rut you like a wild beast in check - for now. You can't help but grin playfully at the hunk of a guy and decide to push his buttons a bit, pinching Garth's nipples and squeezing his abs, then start rocking up and down on his thick prick. Moans and gasps fill the little clearing in the forest as you ride the razorback, taking his meat all the way in quick succession. Before long, the sensations of being inside your pussy erode Garth's resistance more and more and he begins taking a more active role in the coupling, humping his hips up to meet yours, with his balls smacking against your ass with satisfying thuds.";
	say "     Bouncing up and down on the wild pig's cock you have one hell of a nice time, as his manhood nudges all the right places and stretches your vagina tight around it. At the same time, it seems like your little show isn't without effects on the audience, as a gasp of 'Fuck yeah' makes you turn some attention back to Andy. The young man is just a few steps away now and has gotten rid of his pants, stroking a well-sized canine cock as he watches the action. It's anyone's guess in which position he imagines himself in, yours or Garth's. Taking that big cock again and again soon turns your libido in a roaring heat, making your hands fly to your own crotch and proceed to [if Player is female]caress your clit, rubbing it in circling movements [else if Player is male]grab your swinging erection, jerking it in a rapid pace [else]caress your featureless crotch, rubbing its sensitive skin with circling movements [end if]while you throw your head back and give a lewd moan, announcing to everyone in earshot that you're getting close to an orgasm.";
	WaitLineBreak;
	say "     Suddenly, the world spins around you for a second as you find yourself pulled against Garth's chest by strong hands and the razorback boar performs a full-on flip that would make any wrestler proud, grunting in satisfaction as he covers your form with his bulky body, pressing your back against the ground. Any thought of maybe resisting or protesting is swept away by the amazing new sensations the move gives you, as his cock stayed inside you the whole time and now presses into your depths in an all new angle. Seems like your partner finally gave in to his rut, freeing up his libido-fueled urge to breed you hard. And oh boy, does he perform - the stocky body of this boar really has quite a few muscles - all of which perform to their utmost as his hips start to pound against your pussy.";
	say "     Garth is grunting and chuffing hard as he fucks you, and his snout is buried in the curve of your neck, taking deep breaths of your scent and licking your skin, clearly turned on by all the sweat and pheromones. 'Oh yeah! Gonna fffuuuuckkk you good!' he grunts, breathlessly barking out the words. 'Breed this tight little hole!' he adds next, getting louder with each word as he builds up to a howling orgasm, his thick shaft sending forth a deluge of cum to flood your pussy. You can feel the throb of his manhood against your stretched nether lips and a pleasant warmth fills you more and more with every new spurt. Garth's full balls churn out quite a bit of seed to really stuff you good, trying hard to knock you up with his piglets.";
	WaitLineBreak;
	say "     While Garth is still blasting cum into your insides, you hear breathless moans coming from Andy, who's by now masturbating with frantic haste. Moments later, the young wolf lets out a climactic howl and starts to shoot, his load landing in long streaks on the ground, fertilizing the grass. Meanwhile, the heavy form of the razorback boar keeps you pinned under him as Garth's orgasm runs its course, with the panting male holding and caressing your body as his cock fills you with cum. He even plants a kiss or two on your shoulder and neck as he starts to catch his breath, then says in a still somewhat breathless voice, 'Thanks, you're a great lay. And - ah well, I can't say I'm sorry for turning things around on ya in the end. It's just how I swing, you know? But don't think that means I leave my partners hanging, ";
	if Player is male:
		say "even she's part dude!' And with that, the boar takes your still rock-hard cock in his hand, chuckling at the string of pre-cum connecting it to your abs. 'I can see you liked it. Let's get you off babe!' Garth adds and starts to jerk you off, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - turning your cock into a cum-fountain that spurts long strings of seed all over your abs, chest and even chin. Meanwhile, femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	else if Player is female:
		say "especially not a babe like you!' And with that, the boar puts a hand on your pubic mound, searching out your clit with his thumb to rub it with circling movements. 'Man, you're really wet. Getting bred by a stud like my was right up your alley, eh? Let's get you off babe!' Garth adds and starts to work your magic button with a new intensity, feeling out what really turns you on. With his dick still buried balls-deep inside you and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	say "     As you slump back, still out of breath from your orgasm, Garth gently pulls his erection out of you, accompanied by a little slurping sound and the feeling of his cum trickling down from your well-bred and still a little gaping hole. 'You're one hot lay! I'm tempted to offer you a second round of fun in a little while, but... we can't fuck away the whole day, you know. Andy and me got some plans to collect tools and nails that we'll need.' Turning towards the young wolf, who by now is just zipping up his jeans and looking at Garth in a friendly and adoring way, the boar moves to collect the empty bottles and puts them in a carrying bag. A little while later, the two of them set off, as do you for now.";
	NPCSexAftermath Player receives "PussyFuck" from Garth;
	increase FuckedByRazorbackBoar by 1;

to say GarthAndySex4: [suck him]
	say "     Accepting the bottle of beer offered by Andy once he is back, you take a good long swig, then grin at Garth and tell him quite directly that you want to suck him off. There is a little gasp of indrawn breath from Andy and his eyes go wide, while Garth only chuckles. 'Is that so?' he says amusedly and hands Andy his mostly empty beer, then takes a stance with his hands on his hips, awaiting you full-on. '[if Player is female]I'm always ready for a pretty gal to wrap her lips around my dick.' [else]I sure don't mind if a dude wants to wrap his lips around my dick. Some of the best blowjobs I've had were from dudes, back in the day.' [end if]As he says this, Garth's thick prick starts to fill out, hardening to a towering shaft of erect man-meat. The razorback boar proudly strokes his cock, waving it towards you and winks with broad grin on his face.";
	say "     Stepping up to the boar-man, you dig a hand into the bristly fur over his neck, pulling the gruff guy close for a demanding kiss. Sliding your fingers down his hairy front, you let them wander about the hard pecks and bumps of his abs to reach the wild pig's crotch. Cupping his weighty balls, you roll them between your fingers and draw an appreciative grunt from your former opponent, followed by a straight out moan as you soon grip his hardening shaft. The razorback boar comments, 'Yeah, that's good!' and bucks his hips a bit towards you, humping against the ring of your fingers around his erection. Filling out more and more under your ministrations, Garth's cock proves to be quite thick and meaty, proudly towering over the bush of his pubes. Looking at the man's face as you jerk him off a moment longer, you draw a lustful grunt from him with a tight squeeze of his shaft, leading over to a broad grin from the razorback boar. After all the hard work, he definitely enjoys this sexy reward you're giving him.";
	WaitLineBreak;
	say "     Crouching down in front of Garth, you slide both your hands down his thighs, squeezing their firm shapes appreciatively and playfully stroking through his short fur. From this new position, the erection dangling between the anthro boar's legs looks even more impressive - he is really quite hung and has weighty balls too. But that's far from all of it - looking up and up you feast your eyes on his manly chest, hairy and broad-shouldered as it is, to look into the eyes of the burly man and can't help but share his smile. 'You're hungry for this dick, aren't you? I know you are!' he says with a chuckle, then hefts his hard prick in one hand and strokes it slowly as he holds it out for you. Moving your head closer as you want to take his dickhead into your mouth, the full intensity of Garth's scent hits you... a heady mixture of spicy notes and pheromones that makes your arousal soar. The thought of just giving in completely to the burly male becomes more and more attractive with each new breath and you can't help but think about what it would be like to just stay with him all the time.";
	WaitLineBreak;
	say "     A gentle smack of the thick shaft against your forehead shakes you out of your thoughts, paired with the somewhat impatient grunt of, 'Go on, get sucking!' There is not a second of hesitation before you got your lips opening to slide over his cockhead, then further down along his weighty shaft. With a satisfied grunt, the boar puts a hand on your head to guide you as you go down on him, stroking your head as he does so. 'Yeah, and play with my balls too,' comes the next command pretty soon, prompting you to raise your hands and brush them along the inside of his furry thighs to cup his balls. Slurping on Garth's massive shaft and fondling his sperm-factories, you're momentarily surprised when he says, 'Step up if you wanna watch, boy. You might learn something.' Then you realize that he's speaking to Andy, whose shape you catch from the corner of your eye. The young wolf is naked and hard, apparently having stroked himself as he watched up till now. Your blowjob soon leads over to Garth all-out face-fucking you as arousal starts to mount, ultimately culminating in him giving a lusty roar and ramming his shaft down your throat as he lets loose a deluge of cum to fill your stomach. It just seems like there is no end to the pulsing of his rod, with throb after throb of virile seed shooting through it.";
	say "     But that's not the only cum sent flying in the moment, as you can year a grunt from where Andy is standing, with the young wolf fertilizing the grass of the meadow. Meanwhile, Garth pumps a whole lot of cum into you - and is still adding more by the time Andy's orgasm runs its course. It is so much that you do feel sated as if you just had a heavy meal, and your air supply is getting a bit low too. Finally, there is little choice but to either pull off his shaft or pass out, so you plant both hands on his hips and give a push away from him, breaking Garth's hold on you. As you fall back on your ass, coughing and gasping, Garth's erection keeps spurting several more long spurts of seed onto the ground before his orgasm slowly starts to wind down. 'Phew, I really needed that,' the anthro pig finally groans, then looks down at you and adds, 'Oh, sorry for getting a bit carried away. But hey - we both had fun, didn't we?' I'm tempted to offer you a second round of fun in a little while, but... we can't fuck away the whole day, you know. Andy and me got some plans to collect tools and nails that we'll need.' Turning towards the young wolf, who by now is just zipping up his jeans and looking at Garth in a friendly and adoring way, the boar moves to collect the empty bottles and puts them in a carrying bag. A little while later, the two of them set off, as do you for now.";
	PlayerEat 20;
	NPCSexAftermath Player receives "OralCock" from Garth;

to say GarthAndySex5: [be sucked by him]
	say "     Accepting the bottle of beer offered by Andy once he is back, you take a good long swig, then grin at Garth and tell him quite directly that he's gonna blow you. There is a little gasp of indrawn breath from Andy and his eyes go wide, while Garth only chuckles. 'Is that so?' he says amusedly and hands Andy his mostly empty beer, then takes a stance with his hands on his hips, awaiting you full-on. 'Come here and make me, if you dare!' comes his challenge to you, a wink showing that he's in a playful mood. Finishing off your drink, you drop it softly on the grass and strip down, then walk confidently up to the mature and virile wild pig. He receives you, ready to wrestle for dominance. Garth is quite strong and wily, making the play-fight actually fairly difficult, soon putting you in danger of being overpowered. But then you snake a hand over his shoulder, digging your fingers into the bristly fur of his neck and pulling the gruff guy close for a demanding kiss. He replies in turn, hands clawing at your form as he kisses you right back. Having gotten a nice firm grip, you wrench the strong man's bulky form around and give him a forceful shove, making Garth stumble against the nearest tree.";
	say "     'Someone's bossy today,' he grunts amusedly after catching himself on its bark, turning around just as you step up close and plant your hands on his shoulders. Pressing down on them doesn't really move him in any way, betraying the fact that the boar is a serious fighter to be reckoned with, and for several seconds, he just stands there and lets his eyes wander down to your crotch to check out your bulge. Only when you pant out a request for him to kneel does he do so, accompanied by an amicable grunt. As the burly male comes to kneel before you, he says in a slightly gruff voice, 'Wanna relieve some of the tension in those balls of yours, eh? Now, I'm no cock-gobbler usually, but I can respect a dude's needs, especially after some proper and sweaty work.' Then he glances past you and nods to Andy, still standing a little bit off towards the side. 'Hear that, boy? Words do live by. You do your work, and do it well, then you get to play. You'll be amazed what folks will be willing to do for theirs.'";
	WaitLineBreak;
	say "     Without waiting for a reply from Andy, the razorback boar raises his hands to undo your pants, pulling them open with no-nonsense directness. As your already hardening [Cock of Player] shaft is revealed, dangling before Garth's face, he lets out a short grunt, then starts to stroke it with one hand. Being a virile male himself, the anthro boar knows well how to handle a dick - making his slow jerking quite pleasurable. For a while, you're simply content at bracing yourself with a hand on his shoulder and letting him take care of you, but as your libido runs ever hotter, you feel the desire to get a proper blowjob. Opening your eyes and looking down, you see that Garth's other hand is actually gripping his own shaft, stroking its thick pole in rhythm with yours. As your hand slides to your crotch, pushing his aside to grasp the base of your shaft, Garth glimpses up at you and recognizes immediately that he won't just get out of this wish simply jerking you off. With a shrug of his shoulders and consenting snort, he stretches his neck a little and licks over the cockhead of your erection, then engulfs it between his lips.";
	say "     It is evident that the powerful anthro boar doesn't have all that much (if any) experience with sucking cocks, but one thing is for sure - he doesn't hold back once he's made up his mind. And so Garth starts bobbing on your shaft actively, doing his best to avoid any rookie mistakes and making sure he doesn't accidentally gore you with the two tusks sticking up from his lower jaw. As you enjoy feeling his lips and mouth around your erection, you let your hands move over his head, holding on and stroking his hair. Sometimes, you pull him tightly against your crotch to get that extra half inch of cock into his tight throat, other times you're just playing around with the bristly crest running down the back of his head and neck. With both hands on Garth's head, you soon start to face-fuck him in earnest, really pounding in and out of his muzzle.";
	WaitLineBreak;
	say "     Being serviced by such a powerful male feels great, especially standing over him and making use of his mouth right while his apprentice Andy is watching. Or more than watching by now actually, as you see him stroking his erect canine cock in rapid hand movements. Your arousal builds fairly quickly, pushed along by the grunts and moans Garth himself makes around your shaft, until the urgent need to cum in your balls just can't be denied anymore. With a deep grunt, you force your erection all the way in and start blasting away with creamy cum right down his throat, filling Garth's stomach with your seed. Or at least, that's what you do for the first two, three shots - then the boar gives you a little jab with a tusk, prompting you to pull back at least a little and to paint his tongue white. He snorts at you through his wide nostrils as you keep coming, spurting more cum into his mouth until eventually your orgasm ebbs off.";
	say "     As soon as your grip on his head slackens post-coital exhaustion, Garth pulls off your cock. He works his muzzle from side to side a little, the bulge of his tongue visible on the inside of his cheeks as he moves it around, then lets the creamy load of cum and spit in his mouth drip off his out-stretched tongue, right on his own rock-hard cock he's jerking with singular attention. With the big gob of slick cum as lube, the razorback boar speeds up his hand movements, rapidly beating his dick. His frenzied jerking soon culminates in the boar giving a lusty roar and thrusting his hips forward in the air reflexively as he lets loose a deluge of cum arc out through the air in long strings that splatter onto the grass of the clearing. It seems like there is no end to the pulsing of his rod, with throb after throb of virile seed shooting through it. Andy is quick to finish himself off just a few moment after, grunting as he blasts his own seed over the ground.";
	say "     Garth cums - a lot - and is still pumping more sperm by the time other males would already be ready to doze off after sex. It is so much there even is a little puddle behind you as you glance over your shoulder. Looking back at the kneeling boar, you see Garth's erection keep spurting several more long spurts of seed onto the ground before his orgasm slowly starts to wind down. 'Phew, I really needed that,' the anthro pig finally groans, then looks up at you and adds, 'Sorry for that prick with the tusk, but you were getting a bit carried away. I don't eat cum. That's just how things go around here. Still - wasn't so bad with ya. But now Andy and me got some plans to collect tools and nails that we'll need.' Turning towards the young wolf, who by now is just zipping up his jeans and looking at Garth in a friendly and adoring way, the boar moves to collect the empty bottles and puts them in a carrying bag. A little while later, the two of them set off, as do you for now.";
	NPCSexAftermath Garth receives "OralCock" from Player;

Section 2 - Creature Responses

to say RazorbackBoar wins:
	project the Figure of Garth_face_icon;
	if HP of Player > 0: [player surrendered]
		say "     'That's right - submit like you should. I don't enjoy punching someone's nose in, you know. The sooner everyone realizes that I'm tougher than them the better,' Garth the razorback boar tells you in a gruff voice, ";
	else: [player got clobbered]
		say "     'Could have told you that's how it was gonna end,' Garth the razorback boar scoffs as you collapse on the ground. He steps up right next to you, the ground shaking a little under his cloven hooves as the stout and muscled boar stomps around demonstratively. 'I don't enjoy punching someone's nose in, you know. The sooner everyone realize that I'm tougher than them the better,' he adds in a gruff voice, ";
	say "then pulls you over to stand straight before him. 'Let's have a look what we got then,' come his next words, then he quickly pulls off your gear and clothes, casually throwing them to the side to land in a small pile. A plus point is that he put them on a patch of grass in the clearing, and seemingly took the effort to not break anything - demonstrating that he's a tough guy, but not as much of an asshole as some in the city. Finally, you're bare-ass naked in front of him, ready to be inspected.";
	if Player is female: [female and herm]
		say "     Sliding a hand between your legs, he brings it up to brush over your pussy, stroking along the folds of your sex and searching out the sensitive little clit at the top. As you moan at the stimulation, he grins broadly and says, 'Yeah, that's just what I need baby. Being out and about in my territory - my forest - always gets my blood pumping. And as for where it's being pumped to...' Knowing very well how things work in this crazy city, you don't have to look down to know that he's holding his dick in hand - but you do anyways, taking in the thick and long shaft the powerful boar sports. That'll definitely leave you walking funny for a while, as you have little doubt that he knows exactly what he's doing with his manhood.";
		WaitLineBreak;
		say "     'I love that things are back to the basics these days. The way nature intended them to be. You live, you eat, you... breed,' Garth tells you, wiggling his bushy eyebrows expressively as he says the last word. 'Come here sweet-cheeks,' he adds a moment later, drawing you close to give you a rousing kiss. As the mighty razorback makes out with you, his hands wander over your body, stroking and squeezing. Something about being in the arms of such a big and burly being makes you rather horny - and eager to comply, kissing him back with lusty intensity. An idle thought in your head tells you that part of it must be caused by his scent - a heady mixture of spicy notes and pheromones - but then... you don't care all that much right now. It just feels nice to be desired by the broad-shouldered wild pig, and you tongue-wrestle with him as he picks you up.";
		say "     Carrying you in his strong arms, Garth makes a few steps until reaching the nearest tree, against the smooth bark of which you soon find your back being pressed. The anthro razorback gives a lusty grunt and kisses you again deeply, then you feel the hot tip of his shaft nudging apart your nether lips. With a bellowing roar, he thrusts up into you, sinking his erection deep. 'Oh YEAH!' *thrust* 'You got one.' *thrust* 'Sweet pussy!' *thrust* Garth grunts out between each new penetration into your innermost depths, driving you wild with the sheer girth and length of his erection. The wild pig is an energetic lover with quite a bit of stamina, pounding into you tirelessly while still making out like a storm.";
		WaitLineBreak;
		say "     You don't really know how long your mating lasted, just that you reached multiple orgasms during his sexual onslaught and that you pulled some tufts of hair off his back-fur at the height of this climax or that. Garth just takes it all in stride, plenty tough enough to just endure the thrashing of his sexual partners. He works his thick rod in and out of your hole with undiminished energy the whole time, making it good for both of you until eventually the point of no return is reached. With a deep grunt, he sinks himself in one last time, then holds still as the first throb of his seed splashes into your womb, followed by another and another.";
		say "     The virile boar cums - a lot - and is still pumping more sperm into you by the time other males would already be ready to doze off after sex. It is so much that you do feel a bit stuffed when he eventually does stop coming, then slowly carries you over to the patch of grass on which your gear lies. Lowering you to the ground, Garth plants another deep kiss on your lips, then finally slides his softening shaft out of your pussy, smiling at the gush of cum that comes with it. 'You're definitely a hot lay, babe. Come back again to my territory when you need that itch scratched again. And I'd love to meet all my new little piglets, if it takes.' With that said, the boar-man pats your stomach lightly and gets up, then walks off into the forest.";
		NPCSexAftermath Player receives "PussyFuck" from Garth;
	else:
		if Player is male: [male]
			say "     Leaning back a little, Garth has a look at your crotch and huffs as he sees your manhood. 'Hmpf - another dude trying to move in on my territory. There already are few enough females to breed out here so that's just what I need.' Sarcasm almost drips off his last comment. Then he continues, 'Well dude... you're a bit out of luck. It's just me you're gonna get today, no big-breasted babes. You see - being out and about in my territory always gets my blood pumping. And as for where it's being pumped to...' Knowing very well how things work in this crazy city, you don't have to look down to know that he's holding his dick in hand - but you do anyways, taking in the thick and long shaft the powerful boar sports. 'Since you got me all excited, I'll just have to make use of you another way.'";
		else: [neuter]
			say "     Leaning back a little, Garth has a look at your crotch and huffs as he sees your manhood. 'What the hell? Where's your bits? Some freaky dude moving in on my territory, that's just what I need.' Sarcasm almost drips off his last comment. Then he continues, 'Well... you're a bit out of luck. It's just me you're gonna get today, no big-breasted babes. You see - being out and about in my territory always gets my blood pumping. And as for where it's being pumped to...' Knowing very well how things work in this crazy city, you don't have to look down to know that he's holding his dick in hand - but you do anyways, taking in the thick and long shaft the powerful boar sports. 'Since you got me all excited, I'll just have to make use of you another way.'";
		WaitLineBreak;
		say "     Pushing down on your shoulders in a slow yet unyielding manner, the razorback boar forces you to your knees and holds out the erection between his legs for you. He is really quite hung and has weighty balls too. But that's far from all of it - as he pulls your head closer with a strong hand, the full intensity of Garth's scent hits you... a heady mixture of spicy notes and pheromones that makes your arousal soar and the thought of just giving in to the burly male become more and more attractive. You're pulled out of your thoughts by him smacking his shaft against your forehead gently, paired with the impatient grunt of, 'Go on, get sucking!' With the state of mind you're in right now, there is no hesitation before you got your lips opening to slide over his cockhead, then further down along his weighty shaft.";
		say "     With a satisfied grunt, the boar puts a hand on your head to guide you as you go down on him, stroking your head as he does so. 'Yeah, and play with my balls too,' comes the next command pretty soon, prompting you to raise your hands and brush them along his furry thighs to cup his balls. Slurping on Garth's massive shaft and fondling his sperm-factories, you surprise yourself a bit with the eagerness to service this powerful being. Though as an idle thought tells you - there is a definite animal magnetism to him that just can't be denied. And so you give Garth a blowjob that soon leads over to him all-out face-fucking you as arousal starts to mount, ultimately culminating in him giving a lusty roar and ramming his shaft down your throat and letting loose a deluge of cum to fill your stomach. It just seems like there is no end to the pulsing of his rod, with throb after throb of virile seed shooting through it.";
		WaitLineBreak;
		say "     The virile boar cums - a lot - and is still pumping more sperm into you by the time other males would already be ready to doze off after sex. It is so much that you do feel sated as if you just had a heavy meal, and your air supply is getting a bit low too. Finally, there is little choice but to either pull off his shaft or pass out, so you plant both hands on his hips and give a push away from him, breaking the boar's hold on you. As you fall back on your ass, coughing and gasping, Garth's erection keeps spurting several more long spurts of seed onto the ground before his orgasm slowly starts to wind down. 'Phew, I really needed that,' the anthro pig finally groans, then looks down at you and adds, 'Oh, sorry for getting a bit carried away. But hey - small price for you trespassing, eh?' With that said, the boar-man gives you a satisfied nod and walks off into the forest.";
		NPCSexAftermath Player receives "AssFuck" from Garth;

To say RazorbackBoar loses:
	project the Figure of Garth_face_icon;
	say "     Crashing to the ground with a grunt and an audible thump, the bruised boar-man pushes himself up halfway on his elbow and looks up at you. He has to pant a few times before being able to say, 'Okay, you're quite a tough one yourself. I admit that.' As he proceeds to stand up again, Garth then adds, 'Not that I'm beat or anything, but at some point one has to evaluate the situation. Wouldn't do for both of us to totally wear each other out, then have some little pissant like those good-for-nothing wolves come sniffing around and take advantage. So...' The razorback boar looks you up and down appraisingly and huffs out, 'I'll overlook your trespassing. It's still my forest, you know. Or did you want... something else?";
	say "     The twitch of Garth's thick shaft as it dangles between his legs clearly illustrates that he meant some sexy fun with his last comment. What do you do?";
	say "     ([link]Y[as]y[end link]) - Have sex with him.";
	say "     ([link]N[as]n[end link]) - Just go on your ways.";
	if Player consents:
		LineBreak;
		say "[RazorbackBoarSexMenu]";
	else:
		LineBreak;
		say "     Waving the boar-man's offer off, you walk away from him, soon losing sight of the anthro razorback between the dense trees.";

to say RazorbackBoarSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take him from behind";
		now sortorder entry is 1;
		now description entry is "Push Garth against a tree and really pound into him";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Ride Garth's thick shaft (anal)";
		now sortorder entry is 2;
		now description entry is "Power-bottom the boar-man";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride Garth's thick shaft (vaginal)";
		now sortorder entry is 3;
		now description entry is "Take the boar-man in your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Garth a blowjob";
	now sortorder entry is 4;
	now description entry is "Take the boar-man's shaft in your mouth";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck Garth";
		now sortorder entry is 5;
		now description entry is "Make use of the boar-man's mouth";
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
				if nam is "Take him from behind":
					say "[RazorbackBoarSex1]";
				else if nam is "Ride Garth's thick shaft (anal)":
					say "[RazorbackBoarSex2]";
				else if nam is "Ride Garth's thick shaft (vaginal)":
					say "[RazorbackBoarSex3]";
				else if nam is "Give Garth a blowjob":
					say "[RazorbackBoarSex4]";
				else if nam is "Face-fuck Garth":
					say "[RazorbackBoarSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff boar-man, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RazorbackBoarSex1: [Pounding against a tree]
	say "     Throwing off your clothes in mere moments, you chuckle that you indeed want something from him and you step up to the boar-man. You dig a hand into the bristly fur over his neck to pull the gruff guy close for a demanding kiss. Then you wrench his bulky form around and give him a forceful shove, making Garth stumble against the nearest tree. As his large hands thud against its bark to catch himself, you're behind the wild pig eye-blink later with your erection leading the way, pressing against his firm buttocks. The pink ring of his pucker still has the looks of what might be virgin territory, a strong and firmly muscle as you push against it testingly. Looks like he really is straight - or at least not a bottom usually. Rubbing your erection up and down between his cheeks draws a gruff grunt from Garth, joined a moment later by the comment, 'So you're an ass-bandit, eh? No wonder you were extra motivated to fight! I know you dudes can't resist my animal magnetism, hah!' Proving him right, you thrust into the strong male's tight hole at just that moment, making him roar at the sudden anal invasion.";
	say "     Garth's pucker only yielded to the pressure of a full-on thrust with your hips, so your first penetration actually goes balls-deep from your momentum, complete with a meaty slap of your balls against his furred ass. He feels so very warm and snug to be in, the tightly gripping chute of a dominant male pushed into putting out makes your blood boil with arousal. And so you pull back till just your cockhead is inside his tightly-stretched opening, then hammer in again and again, making hard use of your partner's back door. Garth grunts and groans as he is getting fucked - some of them with a wincing undertone at the somewhat painful stretching at first. Being the tough guy he is, the razorback just takes everything you can give and after a short while you think you can hear lust outweighing everything else in his bellows.";
	WaitLineBreak;
	say "     Grunts and slapping noises of your hips against Garth's ass echo throughout the forest, coming in a rapid pace as you fuck him deeply without restraint. That tight hole of his just feels soo good, as do the muscles of his stocky body as you hold on to him and press against his back. Lust has you in its grip so tightly that you think of little else but sliding in and out of your partner... so much so that you find yourself surprised by him gripping your right wrist with his hand, pulling your arm around himself and further down until it comes to rest on his crotch. 'You were getting a bit carried away there, buddy. Have some decency and give a guy a reacharound if you're pounding his ass, eh?' Garth grunts, then squeezes his ass extra tight around your cock for a second. The thick rod of his erect shaft rests hotly against your skin and you take the hint to grip it, jerking the aroused wild pig in rhythm with your own thrusts. You can feel his manhood twitch and pulse each time you give him an especially deep thrust - no matter what his orientation, pounding Garth's prostate has a definite effect.";
	say "     In a wild and exhilarating ride, you drive the big man closer and closer to the edge, his grunts and moans coming quicker and becoming even deeper, more filled with urgency. Not having any shame at coming to enjoy this kind of sex, the anthro razorback even starts to shout, 'Yeah, you bastard! Faster! Hit that spot hard! Again! Ngh - Nnngh! More! NnnnngggghhhHH!' With that last drawn-out roar, Garth starts to cum, his shaft rhythmically pulsing in your hand as stream after stream of cum blasts through it and splashes the tree-trunk he's leaning against. With each spurt of the boar's seed, all the muscles in Garth's body twitch and tense - including those inside his ass, around your shaft. This results in you joining your stocky partner in orgasm just moments later, gripping him tightly around the hips as your balls start to unload everything they got. Your seed gets pumped into the anthro animal guy in weighty bursts, filling him up with creamy cum.";
	WaitLineBreak;
	say "     After blasting the last few spurts of your orgasm into Garth, you pull out of him with a slurp. A string of cum connects your cockhead to his puckered hole for a second before it snaps, then more of your seed starts to leak out of his slightly gaping hole. The sight makes your heart beat faster for a second - a visible proof that you bred this powerful male. As the first white droplets fall on the ground, Garth looks over his shoulder and grunts, 'Made quite a mess back there. I'll have those damned chipmunks following me around all day again. Persistent little butt-munchers, I tell you. They just can't get enough of the stuff.'";
	NPCSexAftermath Garth receives "AssFuck" from Player;
	say "     Despite his gruff tone, the boar-man seems to be looking forward to having his ass eaten. Maybe he doesn't have to wait, with you here?";
	say "     ([link]Y[as]y[end link]) - Eat your load from his ass.";
	say "     ([link]N[as]n[end link]) - Just go on your ways.";
	if Player consents:
		LineBreak;
		say "     Crouching down behind the wild pig, you rub the base of his tail and make him pant in pleasure at that touch, then set both hands on his firm buttocks. Feels great to just touch them, hard muscle under a layer of fur. Spreading Garth's buttocks, you then push your face in between them, sticking out your tongue to lick his gaping hole. Slurping up the first trickle, the taste of sperm fills your mouth and you hum with pleasure as you swallow. 'Yeah, eat that ass!' Garth replies with obvious pleasure, grinding his hips back against you and making more creamy cum leak out. You spend some more time tonguing his hole, even going on to use your fingers too, swallowing every drop of your earlier deposit into the boar.";
		say "     Still licking and teasing his by now quite relaxed hole (despite there being no cum left), you play a bit longer with Garth. Using your hands to stroke him and fondle his balls, the guy even gets half-hard once again - but he eventually pulls away from you. 'You're great at this, thanks. But... I gotta go. Can't fuck away the whole day, you know. Come by again sometime.' And with that, the naked razorback boar stalks off into the forest.";
	else:
		LineBreak;
		say "     Patting the boar-man on the shoulder, you go to grab your gear and clothes, then go on your way after dressing again.";

to say RazorbackBoarSex2: [riding him (anal)]
	say "     Chuckling that you indeed want something from him, you step up to the boar-man and dig a hand into the bristly fur over his neck, pulling the gruff guy close for a demanding kiss. Then you put your hands on his shoulders, pressing down and pant out that he should lay down. Chuckling at your urgent tone, the burly boar-man follows suit, stretching out on the ground as you quickly get rid of your gear and clothes, then step up to stand over him in all your naked glory. As you spit in your hand and proceed to lube your own asshole with it, the razorback boar comments, '[if Player is female]Going for anal, eh babe? Fine by me. I'm more of a pussy guy admittedly, but any tight hole is a sweet thing.'[else]Going for anal, eh dude? Fine by me. Now don't misunderstand me - I'm not really an ass bandit, but... I definitely won't say no to a nice and tight hole.'[end if] As he says this, Garth's thick prick fills out more and more, hardening to a towering shaft of erect man-meat. The razorback boar proudly strokes his cock, waving it towards you and winks with broad grin on his face.";
	say "     Eager to make use of the oh so willing boar-man, you feast your eyes on his stocky yet quite muscular body once more, then eventually crouch down over his crotch. Garth strokes the insides of your thighs with his strong hands while you reach down between the two of you, grasping his thick shaft and giving it several long strokes. Just feeling the girth of his member gives you tingles of anticipation, so you quickly smear the copious pre-cum oozing from his cockhead over the towering pole and then move your ass into position right above it. Relaxing your opening, you press down against the horny boar-man until he pops into you, making both of you moan loudly at the sensations of the penetration. [if Player is female]'Yeah, ride that dick baby! Nnnggh - you feel nice and warm,' [else]'Yeah, ride that dick dude! Nnnggh - show me what your boipussy can take,' [end if]Garth grunts in a husky voice as you sink deeper on his erection. His hands move to your hips, stroking their sides while Garth [if Player is female]looks up at you, his eyes hungrily taking in your whole body[else]leans his head back, closing his eyes to focus on your hole's tight grip on his dick[end if].";
	WaitLineBreak;
	say "     After slowly working your way down on the razorback boar's thick piece of man-meat, you eventually feel the bristly pubes of your former opponent press against your buttcheeks. Yeah, you've taken all of him - balls-deep in your asshole, the strong and stocky male gives you a quite nice feeling of fullness. Resting like this and taking in the ridges and bumps of his cock, the sensation of his hot shaft pressing against more than a few 'magic' spots inside you, you're already very satisfied with your decision of using the very willing boar for your enjoyment - but there's a lot more fun to come. Looking down upon the razorback pig, you lean forward and plant your hands on his broad, pretty firmly muscled chest and brace yourself, then start sliding your ass up again. Garth's eyes [if Cunt Count of Player < 1]open and [end if]focus on your own with a wild intensity of barely contained lust and the big man shows a wide grin, exposing his sharp tusks as he grunts deeply.";
	say "     His grip on your hips tightens as you go on and on until just the tip of his erection is inside you, though he just moves his hands with you, not actually pulling or pushing in any way. Looks like he has enough self-control to keep his urges to rut you like a wild beast in check - for now. You can't help but grin at having won out over the hunk of a guy and decide to push his buttons a bit, pinching Garth's nipples and squeezing his abs, then start rocking up and down on his thick prick. Moans and gasps fill the little clearing in the forest as you ride the razorback, taking his meat all the way in quick succession. Before long, the sensations of being inside your tight ass erode Garth's resistance more and more and he begins taking a more active role in the coupling, humping his hips up to meet yours, with his balls smacking against your ass with satisfying thuds.";
	WaitLineBreak;
	say "     Bouncing up and down on the wild pig's cock you have one hell of a nice time, as his manhood nudges all the right places and stretches your chute tight around it. With your libido in roaring heat, your hands fly to your own crotch and proceed to [if Player is female]caress your clit, rubbing it in circling movements[else if Player is male]grab your swinging erection, jerking it in a rapid pace[else]caress your featureless crotch, rubbing its sensitive skin with circling movements[end if] while you throw your head back and give a lewd moan, announcing to everyone in earshot that you're getting close to an orgasm. Then suddenly, the world spins around you for a second as you find yourself pulled against Garth's chest by strong hands and the razorback boar performs a full-on flip that would make any wrestler proud, grunting in satisfaction as he covers your form with his bulky body, pressing your back against the ground. Any thought of maybe resisting or protesting is swept away by the amazing new sensations the move gives you, as his cock stayed inside you the whole time and now presses into your depths in an all new angle.";
	say "     Seems like your partner finally gave in to his rut, freeing up his libido-fueled urge to breed you hard. And oh boy, does he perform - the stocky body of this boar really has quite a few muscles - all of which perform to their utmost as his hips start to pound against your ass. Garth is grunting and chuffing hard as he fucks you, and his snout is buried in the curve of your neck, taking deep breaths of your scent and licking your skin, clearly turned on by all the sweat and pheromones. 'Oh yeah! Gonna fffuuuuckkk you good!' he grunts, almost drunk on lust, breathlessly barking out the words. 'Gonna show everyone that this forest IS MINE!' he adds next, getting louder with each word as he builds up to a howling orgasm, his thick shaft sending forth a deluge of cum to flood your asshole. You can feel the throb of his manhood against your stretched pucker and a pleasant warmth fills you more and more with every new spurt. Garth's full balls churn out quite a bit of seed to really stuff you good, trying [if Player is not mpreg_ok]futilely[else]hard[end if] to knock you up with his piglets.";
	WaitLineBreak;
	say "     The heavy form of the razorback boar keeps you pinned under him as Garth's orgasm runs its course, with the panting male holding and caressing your body as his cock fills you with cum. He even plants a kiss or two on your shoulder and neck as he starts to catch his breath, then says in a still somewhat breathless voice, 'Thanks, you're a great lay. And - ah well, I can't say I'm sorry for turning things around on ya. It's just how I swing, you know? But don't think that means I leave my partners hanging, ";
	if Player is puremale:
		say "even if it's a dude!' And with that, the boar takes your still rock-hard cock in his hand, chuckling at the string of pre-cum connecting it to your abs. 'I can see you liked it. Let's get you off buddy!' Garth adds and starts to jerk you off, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - turning your cock into a cum-fountain that spurts long strings of seed all over your abs, chest and even chin.";
	else if Player is male:
		say "even if she's part dude!' And with that, the boar takes your still rock-hard cock in his hand, chuckling at the string of pre-cum connecting it to your abs. 'I can see you liked it. Let's get you off babe!' Garth adds and starts to jerk you off, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - turning your cock into a cum-fountain that spurts long strings of seed all over your abs, chest and even chin. Meanwhile, femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	else if Player is female:
		say "especially not a babe like you!' And with that, the boar puts a hand on your pubic mound, searching out your clit with his thumb to rub it with circling movements. 'Man, you're really wet. Someone liked taking it up the ass quite a bit, haha. Let's get you off babe!' Garth adds and starts to work your magic button with a new intensity, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	else:
		say "even if it's... well, whatever you are!' And with that, the boar puts a hand on your pubic mound, searchingly caressing your featureless crotch. As you pant and twitch a little at his touch, he chuckles and says, 'Oho, turned on much? Seems like someone really liked taking it up the ass. Let's get you off buddy!' With that said, he starts to stroke your pubic region, feeling out the most sensitive spots. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - making you shiver and writhe as your whole body gets a tingling feeling of pleasure running through it.";
	say "     As you slump back, still out of breath from your orgasm, Garth gently pulls his erection out of you, accompanied by a little slurping sound and the feeling of his cum trickling down from your well-bred and still a little gaping hole. 'I still would have preferred pussy, but I can't say this hasn't been fun, eh? Still, I'm tempted to offer you a second round of fun in a little while, but... I gotta go. Can't fuck away the whole day, you know. Come by again sometime.' And with that, the naked razorback boar stands up and stalks off into the forest.";
	NPCSexAftermath Player receives "AssFuck" from Garth;
	increase FuckedByRazorbackBoar by 1;
	if FuckedByRazorbackBoar is 2:
		now Boar Encounter is active;
		now Resolution of Boar Encounter is 1; [for tracking purposes]

to say RazorbackBoarSex3: [riding him (vaginal)]
	say "     Chuckling that you indeed want something from him, you step up to the boar-man and dig a hand into the bristly fur over his neck, pulling the gruff guy close for a demanding kiss. Then you put your hands on his shoulders, pressing down and pant out that he should lay down. Chuckling at your urgent tone, the burly boar-man follows suit, stretching out on the ground as you quickly get rid of your gear and clothes, then step up to stand over him in all your naked glory. As you lower your hand to brush its fingers over your nether lips, then spread them invitingly for him to see, the razorback boar comments, 'Oh yeah babe. Show me that pussy! [if Player is male]Had me worried for a second with that cock of yours, but you just[else]You[end if] wanna get a good dicking, don't you?' As he says this, Garth's thick prick fills out more and more, hardening to a towering shaft of erect man-meat. The razorback boar proudly strokes his cock, waving it towards you and winks with broad grin on his face.";
	say "     Eager to make use of the oh so willing boar-man, you feast your eyes on his stocky yet quite muscular body once more, then eventually crouch down over his crotch. Garth strokes the insides of your thighs with his strong hands while you reach down between the two of you, grasping his thick shaft and giving it several long strokes. Just feeling the girth of his member gives you tingles of anticipation, so you quickly smear the copious pre-cum oozing from his cockhead over the towering pole and then move your pussy into position right above it. Relaxing your inner muscles, you sink down over the horny boar-man and slide his cockhead into you, making both of you moan loudly as his erection nudges apart the dripping wet nether lips. 'Yeah, ride that dick baby! Nnnggh - you feel nice and warm,' Garth grunts in a husky voice as you sink deeper on his erection. His hands move to your hips, stroking their sides while Garth looks up at you, his eyes hungrily taking in your whole body.";
	WaitLineBreak;
	say "     After slowly working your way down on the razorback boar's thick piece of man-meat, you eventually feel the bristly pubes of your former opponent press against the insides of your thighs. Yeah, you've taken all of him - balls-deep in your pussy, the strong and stocky male gives you a quite nice feeling of fullness. Resting like this and taking in the ridges and bumps of his cock, the sensation of his hot shaft pressing against more than a few 'magic' spots inside you, you're already very satisfied with your decision of using the very willing boar for your enjoyment - but there's a lot more fun to come. Looking down upon the razorback pig, you lean forward and plant your hands on his broad, pretty firmly muscled chest and brace yourself, then start sliding your hips up again. Garth's eyes focus on your own with a wild intensity of barely contained lust and the big man shows a wide grin, exposing his sharp tusks as he grunts deeply.";
	say "     His grip on your hips tightens as you go on and on until just the tip of his erection is inside you, though he just moves his hands with you, not actually pulling or pushing in any way. Looks like he has enough self-control to keep his urges to rut you like a wild beast in check - for now. You can't help but grin at having won out over the hunk of a guy and decide to push his buttons a bit, pinching Garth's nipples and squeezing his abs, then start rocking up and down on his thick prick. Moans and gasps fill the little clearing in the forest as you ride the razorback, taking his meat all the way in quick succession. Before long, the sensations of being inside your gripping pussy erode Garth's resistance more and more and he begins taking a more active role in the coupling, humping his hips up to meet yours, with his balls smacking against your ass with satisfying thuds.";
	WaitLineBreak;
	say "     Bouncing up and down on the wild pig's cock you have one hell of a nice time, as his manhood nudges all the right places and stretches your chute tight around it. With your libido in roaring heat, your hands fly to your own crotch and proceed to [if Player is female]caress your clit, rubbing it in circling movements [else if Player is male]grab your swinging erection, jerking it in a rapid pace [end if]while you throw your head back and give a lewd moan, announcing to everyone in earshot that you're getting close to an orgasm. Then suddenly, the world spins around you for a second as you find yourself pulled against Garth's chest by strong hands and the razorback boar performs a full-on flip that would make any wrestler proud, grunting in satisfaction as he covers your form with his bulky body, pressing your back against the ground. Any thought of maybe resisting or protesting is swept away by the amazing new sensations the move gives you, as his cock stayed inside you the whole time and now presses into your depths in an all new angle.";
	say "     Seems like your partner finally gave in to his rut, freeing up his libido-fueled urge to breed you hard. And oh boy, does he perform - the stocky body of this boar really has quite a few muscles - all of which perform to their utmost as his hips start to pound against yours. Garth is grunting and chuffing hard as he fucks you, and his snout is buried in the curve of your neck, taking deep breaths of your scent and licking your skin, clearly turned on by all the sweat and pheromones. 'Oh yeah! Gonna fffuuuuckkk you good!' he grunts, almost drunk on lust, breathlessly barking out the words. 'Gonna show everyone that this forest IS MINE!' he adds next, getting louder with each word as he builds up to a howling orgasm, his thick shaft sending forth a deluge of cum to flood your vagina. You can feel the throb of his manhood against your stretched nether lips and a pleasant warmth fills you more and more with every new spurt. Garth's full balls churn out quite a bit of seed to really stuff you good, trying hard to knock you up with his piglets.";
	WaitLineBreak;
	say "     The heavy form of the razorback boar keeps you pinned under him as Garth's orgasm runs its course, with the panting male holding and caressing your body as his cock fills you with cum. He even plants a kiss or two on your lips as he starts to catch his breath, then says in a still somewhat breathless voice, 'Thanks, you're a great lay. And - ah well, I can't say I'm sorry for turning things around on ya. It's just how I swing, you know? But don't think that means I leave my partners hanging";
	if Player is male:
		say " even she's part dude!' And with that, the boar takes your still rock-hard cock in his hand, chuckling at the string of pre-cum connecting it to your abs. 'I can see you liked it. Let's get you off babe!' Garth adds and starts to jerk you off, feeling out what really turns you on. With his dick still buried balls-deep in your ass and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - turning your cock into a cum-fountain that spurts long strings of seed all over your abs, chest and even chin. Meanwhile, femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	else if Player is female:
		say " especially not a babe like you!' And with that, the boar puts a hand on your pubic mound, searching out your clit with his thumb to rub it with circling movements. 'Man, you're really wet. Getting bred by a stud like my was right up your alley, eh? Let's get you off babe!' Garth adds and starts to work your magic button with a new intensity, feeling out what really turns you on. With his dick still buried balls-deep inside you and the general state of high arousal you're in, it doesn't take long at all until his efforts bear fruit - femcum squirts and trickles from your wet pussy, soaking Garth's pubes and running down over the base of his cock and his balls.";
	say "     As you slump back, still out of breath from your orgasm, Garth gently pulls his erection out of you, accompanied by a little slurping sound and the feeling of his cum trickling down from your well-bred and still a little gaping hole. 'You're one hot lay! I'm tempted to offer you a second round of fun in a little while, but... I gotta go. Can't fuck away the whole day, you know. Come by again sometime.' And with that, the naked razorback boar stands up and stalks off into the forest.";
	NPCSexAftermath Player receives "PussyFuck" from Garth;
	increase FuckedByRazorbackBoar by 1;
	if FuckedByRazorbackBoar is 2:
		now Boar Encounter is active;
		now Resolution of Boar Encounter is 1; [for tracking purposes]

to say RazorbackBoarSex4: [suck him]
	say "     Chuckling that you indeed want something from him, you step up to the boar-man and dig a hand into the bristly fur over his neck, pulling the gruff guy close for a demanding kiss. Sliding your fingers down his hairy front, you let them wander about the hard pecks and bumps of his abs to reach the wild pig's crotch. Cupping his weighty balls, you roll them between your fingers and draw an appreciative grunt from your former opponent, followed by a straight out moan as you soon grip his hardening shaft. The razorback boar comments, 'That's more like it!' and bucks his hips a bit towards you, humping against the ring of your fingers around his erection. Filling out more and more under your ministrations, Garth's cock proves to be quite thick and meaty, proudly towering over the bush of his pubes. Looking at the man's face as you jerk him off a moment longer, you draw a lustful grunt from him with a tight squeeze of his shaft, leading over to a broad grin from the razorback boar. Despite 'losing' the fight, he's definitely enjoying the aftermath quite a bit.";
	say "     Crouching down in front of Garth, you slide both your hands down his thighs, squeezing their firm shapes appreciatively and playfully stroking through his short fur. From this new position, the erection dangling between the anthro boar's legs looks even more impressive - he is really quite hung and has weighty balls too. But that's far from all of it - looking up and up you feast your eyes on his manly chest, hairy and broad-shouldered as it is, to look into the eyes of the burly man and can't help but share his smile. 'You wanna suck me off, don't you? I know you do!' he says with a chuckle, then hefts his hard prick in one hand and strokes it slowly as he holds it out for you. Moving your head closer as you want to take his dickhead into your mouth, the full intensity of Garth's scent hits you... a heady mixture of spicy notes and pheromones that makes your arousal soar. The thought of just giving in completely to the burly male becomes more and more attractive with each new breath and you can't help but think about what it would be like to just stay with him all the time.";
	WaitLineBreak;
	say "     A gentle smack of the thick shaft against your forehead shakes you out of your thoughts, paired with the somewhat impatient grunt of, 'Go on, get sucking!' There is not a second of hesitation before you got your lips opening to slide over his cockhead, then further down along his weighty shaft. With a satisfied grunt, the boar puts a hand on your head to guide you as you go down on him, stroking your head as he does so. 'Yeah, and play with my balls too,' comes the next command pretty soon, prompting you to raise your hands and brush them along the inside of his furry thighs to cup his balls. Slurping on Garth's massive shaft and fondling his sperm-factories, you surprise yourself a bit with the eagerness to service this burly hunk of a male - weren't you the one who won the fight? But hey, who cares - there is a definite animal magnetism to him that just can't be denied. And so you give Garth a blowjob that soon leads over to him all-out face-fucking you as arousal starts to mount, ultimately culminating in him giving a lusty roar and ramming his shaft down your throat as he lets loose a deluge of cum to fill your stomach. It just seems like there is no end to the pulsing of his rod, with throb after throb of virile seed shooting through it.";
	say "     The horny boar cums - a lot - and is still pumping more sperm into you by the time other males would already be ready to doze off after sex. It is so much that you do feel sated as if you just had a heavy meal, and your air supply is getting a bit low too. Finally, there is little choice but to either pull off his shaft or pass out, so you plant both hands on his hips and give a push away from him, breaking Garth's hold on you. As you fall back on your ass, coughing and gasping, Garth's erection keeps spurting several more long spurts of seed onto the ground before his orgasm slowly starts to wind down. 'Phew, I really needed that,' the anthro pig finally groans, then looks down at you and adds, 'Oh, sorry for getting a bit carried away. But hey - small price for you trespassing, eh? Also, just so you know, you don't have to fight me to get a piece of this...' Shaking his still half-hard cock at you with a laugh, the boar-man gives you a satisfied grin and walks off into the forest.";
	NPCSexAftermath Player receives "OralCock" from Garth;

to say RazorbackBoarSex5: [be sucked by him]
	say "     Chuckling that you indeed want something from him, you step up to the boar-man and dig a hand into the bristly fur over his neck, pulling the gruff guy close for a demanding kiss. Then you put your hands on his shoulders, pressing on them and pant out that he should kneel down. The burly wild pig stays standing for a second, letting his eyes wander down to your crotch to check out your bulge before giving an amicable grunt and following your command. As the burly male comes to kneel before you, he says in a slightly gruff voice, 'Wanna relieve some of the tension in those balls of yours, eh? Okay okay, you earned the right in our little scuffle earlier - but don't you think I'm one of those sissy cum-sluts. This is about the spoils of a mano a mano fight between the two of us.' Without waiting for a reply, the razorback boar raises his hands to undo your pants, pulling them open with no-nonsense directness. As your already hardening [Cock of Player] shaft is revealed, dangling before Garth's face, he lets out a short grunt, then starts to stroke it with one hand.";
	say "     Being a virile male himself, the anthro boar knows well how to handle a dick - making his slow jerking quite pleasurable. For a while, you're simply content at bracing yourself with a hand on his shoulder and letting him take care of you, but as your libido runs ever hotter, you feel the desire to get a proper blowjob. Opening your eyes and looking down, you see that Garth's other hand is actually gripping his own shaft, stroking its thick pole in rhythm with yours. As your hand slides to your crotch, pushing his aside to grasp the base of your shaft, Garth glimpses up at you and recognizes immediately that he won't just get out of this wish simply jerking you off. With a shrug of his shoulders and consenting snort, he stretches his neck a little and licks over the cockhead of your erection, then engulfs it between his lips.";
	WaitLineBreak;
	say "     It is evident that the powerful anthro boar doesn't have all that much (if any) experience with sucking cocks, but one thing is for sure - he doesn't hold back once he's made up his mind. And so Garth starts bobbing on your shaft actively, doing his best to avoid any rookie mistakes and making sure he doesn't accidentally gore you with the two tusks sticking up from his lower jaw. As you enjoy feeling his lips and mouth around your erection, you let your hands move over his head, holding on and stroking his hair. Sometimes, you pull him tightly against your crotch to get that extra half inch of cock into his tight throat, other times you're just playing around with the bristly crest running down the back of his head and neck. With both hands on Garth's head, you soon start to face-fuck him in earnest, really pounding in and out of his muzzle.";
	say "     It feels good to be the one getting serviced by such a powerful male, standing over him and making use of his mouth right in a clearing of 'his' forest. As such, your arousal builds fairly quickly, pushed along by the grunts and moans Garth himself makes around your shaft, until the urgent need to cum in your balls just can't be denied anymore. With a deep grunt, you force your erection all the way in and start blasting away with creamy cum right down his throat, filling Garth's stomach with your seed. Or at least, that's what you do for the first two, three shots - then the boar gives you a little jab with a tusk, prompting you to pull back at least a little and to paint his tongue white. He snorts at you through his wide nostrils as you keep coming, spurting more cum into his mouth until eventually your orgasm ebbs off.";
	WaitLineBreak;
	say "     As soon as your grip on his head slackens post-coital exhaustion, Garth pulls off your cock. He works his muzzle from side to side a little, the bulge of his tongue visible on the inside of his cheeks as he moves it around, then lets the creamy load of cum and spit in his mouth drip off his out-stretched tongue, right on his own rock-hard cock he's jerking with singular attention. With the big gob of slick cum as lube, the razorback boar speeds up his hand movements, rapidly beating his dick. His frenzied jerking soon culminates in the boar giving a lusty roar and thrusting his hips forward in the air reflexively as he lets loose a deluge of cum arc out through the air in long strings. It seems like there is no end to the pulsing of his rod, with throb after throb of virile seed shooting through it.";
	say "     The horny boar cums - a lot - and is still pumping more sperm by the time other males would already be ready to doze off after sex. It is so much there even is a little puddle behind you as you glance over your shoulder. Looking back at the kneeling boar, you see Garth's erection keep spurting several more long spurts of seed onto the ground before his orgasm slowly starts to wind down. 'Phew, I really needed that,' the anthro pig finally groans, then looks up at you and adds, 'Sorry for that prick with the tusk, but you were getting a bit carried away. I don't eat cum. That's just how things go around here. Still - wasn't so bad with ya.' Standing up and shaking his still half-hard cock at you with a laugh, the boar-man gives you a satisfied grin and then walks off into the forest.";
	NPCSexAftermath Garth receives "OralCock" from Player;

to say BoarAlphaChoice:
	now battleground is "void";
	say "     'So yet again you are trespassing in my territory,' a familiar voice suddenly says from behind as you are wandering through the forest. Turning around, you see a large anthro boar standing there, eyeing you up and down. You know him - it's Garth, the gruff and masculine razorback who has made his home in these woods. Quite comfortable with nothing at all on except his own bristly fur, the boar's mannerisms and appearance show clearly that he's happily accepted the changes brought by the nanite outbreak. The naked male stands before you with a confident grin, cock already half-hard and with his heavy sack swaying as he shifts his position a little bit. 'So, what should the price be today?' he asks. You say nothing in return, distracted by the sight of those furry balls of his and the memory of having them slap against your crotch again and again. 'Eyes up here [if Player is female]missy[else]bud[end if]...' he says, 'Did you just come back here for more my cock? Because if you did, I'd give ya a nice fuckin[']. If not, I might have to beat the snot outta ya.'";
	LineBreak;
	say "     [bold type]Garth certainly is a direct fellow. Do you agree to have sex with him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Get fucked.";
	say "     ([link]N[as]n[end link]) - Fight him off.";
	if Player consents:
		LineBreak;
		say "     With a smile spreading over your face, you tell the razorback that you're ready for a nice pounding. 'Well, you're in luck then,' he says, stroking his rapidly hardening shaft and then weighing the balls between his legs in one hand. 'I haven't found any receptive ladies roaming around in a bit, so there's quite a load saved up for ya. You're gonna get creamed, [if Player is female]lass[else]lad[end if].' Chuckling at his antics, you begin to remove your gear and set it down next to a tree. Soon you're naked and get on hands and knees, presenting your rear to the horny boar. 'I haven't had anyone this excited for my cock in a long time,' he says, 'Nice to know there are some people who know how to act properly when they meet an alpha male.' With that, he moves into position behind you, sliding his erection up and down between your buns and enjoying the touch of your skin against his length.";
		if Player is female:
			say "     'Mmmmh, can't wait to take you baby,' Garth moans, positioning his erection at your dripping pussy. The thick head of his manhood pushes forward a heartbeat later, nudging your nether lips apart as he enters you. Gasping loudly at the initial penetration, you shiver in lust at the primal scene you find yourself in - naked in the woods, kneeling on soft mossy ground while a strong beast-man takes you from behind. Garth chuckles at the way you rock back against him and the way your inner muscles tremble around his thick prick. 'You really like my cock don'tcha?' he asks, pushing deeper into you as you nod and moan to keep going. Your insides stretch readily as he slides in with a slow but steady push until finally his furry balls press against your skin. 'That's one fine pussy,' the razorback boar grunts and sets his hands on your hips to hold you tight.";
		else:
			say "     'Mmmmh, I'd much rather have pussy than fuck a guy, but... gotta admit that I'm tempted to do your ass anyway. Here it comes,' Garth moans, positioning his erection at your quivering pucker. The thick head of his manhood pushes forward a heartbeat later, slowly forcing its way into your back passage. Gasping loudly at the initial penetration, you shiver in lust at the primal scene you find yourself in - naked in the woods, kneeling on soft mossy ground while a strong beast-man takes you from behind. Garth chuckles at the way you rock back against him and the way your inner muscles tremble around his thick prick. 'You really like my cock don'tcha?' he asks, pushing deeper into you as you nod and moan to keep going. Your insides stretch readily as he slides in with a slow but steady push until finally his furry balls press against your skin. 'That's one fine ass,' the razorback boar grunts and sets his hands on your hips to hold you tight.";
		WaitLineBreak;
		say "     Bottomed out inside you, the boar looks around the small clearing around the two of you, almost daring anyone to watch him claim another [if Player is female]woman[else]man[end if] for himself. 'Don't think I'm gonna go easy on you,' the strong male grunts in a good-natured tone and a throb of his cock inside you almost seems to underline his words. After giving you this short - and only - warning, he begins to rapidly thrust in and out of your hole. The force of him pistoning in and out of your body actually pushes you forward and down, and before you can really react in your aroused state you're pinned on the mossy ground with Garth rutting on top of you. His large hand grasps your shoulder to keep you from sliding away further from his hardest thrusts";
		say "     'Take it slut,' the anthro boar almost roars, really letting out his wild side as he gets more and more into fucking you. ";
		if Player is submissive: [sub players]
			say "Immensely turned on by his rough treatment, you loudly moan that he should use you hard, satisfy his lust and breed you like the bitch you are. The submissive posturing earns you a satisfied grunt from the strong male, followed by an extra hard thrust with his thick cock. ";
		else: [normal players]
			say "Almost despite yourself, you can't help but be turned on by his rough treatment. There's something primal about serving as a furry male's partner and allowing him to satisfy his lust with you. ";
		say "[if Player is male]As turned on as you are, precum is leaking almost constantly from the tip of your cock, soaking into the moss that Garth's heavy pounding is grinding you against[else if Player is female]As turned on as you are, femcum is just dripping off the spread nether lips of your pussy, soaking into the moss that Garth's heavy pounding is grinding you against[else]As turned on as you are, you hump the ground with your sexless crotch, enjoying the feeling of the soft moss below rubbing your sensitive area there[end if]. Meanwhile, Garth's sack slaps your ass again and again, a constant reminder of the boar's virility and his intention of filling you with his seed.";
		WaitLineBreak;
		say "     The boar shows no signs of letting up anytime soon, just pounding into you and filling the forest with the sounds of your mating. Living in a harsh 'back to nature' lifestyle as he is seems to do wonder for someone's stamina, that's for sure. The all-out fucking quickly pushes your mind past all limits of arousal and for a time, you become nothing but a moaning fuck toy for the boar to use at his discretion. Garth's cock rubs rapidly against your inner walls, hitting your [if Player is female]g-spot[else]prostate[end if] more often than not and making you see stars. The forest is filled with your moans and shouts, making it clear to anyone within earshot that you're enjoying being dominated by Garth.";
		say "     'I'm gonna cuuumMMMMM!,' he shouts eventually, burying his cock deep inside you and releasing a flood of thick, creamy seed. Feeling his erection pulse against your inner walls with spurt after spurt of cum that is deposited into your depths, you're pushed past the point of no return right along with him, [if Player is male]shooting your own load between your stomach and the ground[else if Player is female]gushing a copious amount of fresh femcum all over the ground below[else]humping the mossy ground hard as you are rocked by your lust[end if]. Garth's weighty balls are working double time trying to fill you to the brink with his seed - all in the biological urge to impregnate you.";
		WaitLineBreak;
		say "     After the grunting razorback pumps a heavy load of his virile seed deep into your [if Player is female]pussy and womb[else]bowels and stomach[end if], he pulls his cock out and shoots the last couple of spurts across your ass. He tries his best to wipe his cock clean between your cheeks afterwards - only to make the mess worse as part of his deposit starts to squirt out of your abused hole. 'You were one nice lay babe,' he says in an almost affectionate tone as he moves on to swirl the cum on your ass with his cock, massaging it in. 'Stuffed and covered as you are, everyone will know that you're part of my territory now. You're welcome back to my forest anytime - just be ready to show some appreciation, alright?' Giving your ass a friendly little slap, he then rolls you over, to look into your eyes expectantly.";
		if Player is female:
			NPCSexAftermath Player receives "PussyFuck" from Garth;
		else:
			NPCSexAftermath Player receives "AssFuck" from Garth;
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept his offer.";
		say "     ([link]N[as]n[end link]) - Shake your head. Agreeing to take is dick right now doesn't mean you want to put out for him all the time.";
		if Player consents:
			LineBreak;
			say "     Garth grins broadly around his jutting tusks as you agree. He runs his hand down your front in a slightly possessive manner, then says, 'Glad you recognize the proper way for things to be. And just in case you're the worrying type - I'm not gonna make any of my people here become drooling sex slaves or anything. That messed up stuff is for the sick fucks in that damned city outside the forest. We got a new start here, so feel free to do your own thing - just be ready to give your alpha some love.' With a wiggle of his furry eyebrows, the anthro boar stands up and walks off, his still half-hard cock dangling between his legs and dipping cum.";
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Razorback Boar Male":
					now MonsterID is y;
					now area entry is "Nowhere";
					break;
			now GarthRelationship is 1; [agreed to get fucked without fighting]
			say "     (Note: You will not encounter him as a random enemy anymore from now on. Do look for the [bold type]boar encounter[roman type] if you wanna meet Garth again.)";
			now Boar Encounter is active;
			now Resolution of Boar Encounter is 1; [for tracking purposes]
		else:
			LineBreak;
			say "     Garth huffs out his breath and grimaces at you. 'Bah, no respect as usual. Fine, be that way. You'll see eventually that this whole situation can be a pretty good thing and accept me as your alpha. For now, I'll count our little romp here as your fee for trespassing.'";
		now combat abort is 1;
	else:
		say "     As you get into fighting position, the boar grunts, 'Fine - you asked for it.'";

to say RazorbackBoarDesc:
	if FuckedByRazorbackBoar > 1:
		say "[BoarAlphaChoice]";
	else:
		say "     Walking through the forest, you run into Garth, the razorback boar. Unheard and unnoticed till he suddenly steps out from behind a thick tree nearby, he proves that he's completely at home in this patch of 'wilderness'. The anthro furry male looks you up and down and gives a grunt, then says, 'So, what makes you think you can just stomp through my forest? Civilization's gone - it's back to survival of the fittest! So I'm your boss here and now - or do you seriously think you can take me, eh?' He leaves you little time to make up your mind, instead charging at you right away.";


Section 3 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Razorback Boar Male"	"[PrepCombat_Razorback Boar Male]"

to say PrepCombat_Razorback Boar Male:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Razorback Boar";
	add "Razorback Boar Male" to infections of PorcineList;
	add "Razorback Boar Male" to infections of FurryList;
	add "Razorback Boar Male" to infections of NatureList;
	add "Razorback Boar Male" to infections of MaleList;
	add "Razorback Boar Male" to infections of BipedalList;
	add "Razorback Boar Male" to infections of TailList;
	now Name entry is "Razorback Boar Male";
	now enemy title entry is "Razorback Boar Survivalist";
	now enemy Name entry is "Garth";
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]With a deep grunt, the boar-man charges at you. You're thrown onto the ground as he bowls you over.[or]Making a fist, the razorback boar punches you in the gut, leaving you coughing for breath.[or]Snapping his head forward, the boar-man bites at you and leaves shallow gashes with his tusks.[or]Kicking a leg out from under you with one of his cloven hooves, the wild pig sends you sprawling on the ground.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[RazorbackBoar loses]";
	now victory entry is "[RazorbackBoar wins]";
	now desc entry is "[RazorbackBoarDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a wild boar, with an elongated snout showing sharp tusks. With the bristly fur covering all of it and two eyes capable of giving a very penetrating stare, you're an image of untamed spirit";
	now body entry is "stocky in build, but quite obvious muscles make up much of that large bulk - from the broad shoulders down to the cloven hooves on which you stand. Anyone looking at you can easily see why wild boars shouldn't be messed with";
	now skin entry is "[one of]bristly-furred[or]brown-furred[or]dark-furred[at random]";
	now tail entry is "You have a firm bubble butt, complete with a short tail ending in a brush of hairs."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "human-like";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into an elongated visage complete with a boar's snout and sharp tusks. Bristly fur sprouts all over your face, giving you a hardy appearance"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a quite stocky form, though quite a bit of that bulk is made out of muscles. Heavy-footed - or rather hoofed, as your feet transform too - you may be, but there is little doubt that you're a force to be reckoned with looking like this. You're no weakling domestic pig. No, you're a razorback boar now";
	now skin change entry is "fur sprouts and grows all over your body, clothing you in a dark brown bristly coat";
	now ass change entry is "it tightens up into a firm, bubble butt and a tail sprouts out of your spine just above";
	now cock change entry is "it becomes uncut and human-like in shape. A pair of full and pretty hairy balls completes the picture";
	now str entry is 22;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 90;
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 13; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]          [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 60;
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "razorback boar milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]stocky[or]bulky[or]powerful[at random]";
	now type entry is "[one of]swine[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4 - NPCs


Table of GameCharacterIDs (continued)
object	name
Garth	"Garth"

Garth is a man.
ScaleValue of Garth is 3. [human sized]
Body Weight of Garth is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Garth is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Garth is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Garth is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Garth is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Garth is 5. [length in inches]
Breast Size of Garth is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Garth is 2. [count of nipples]
Asshole Depth of Garth is 8. [inches deep for anal fucking]
Asshole Tightness of Garth is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Garth is 1. [number of cocks]
Cock Girth of Garth is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Garth is 10. [length in inches]
Ball Count of Garth is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Garth is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Garth is 0. [number of cunts]
Cunt Depth of Garth is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Garth is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Garth is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Garth is false.
PlayerRomanced of Garth is false.
PlayerFriended of Garth is false.
PlayerControlled of Garth is false.
PlayerFucked of Garth is false.
OralVirgin of Garth is false.
Virgin of Garth is true.
AnalVirgin of Garth is false.
PenileVirgin of Garth is false.
SexuallyExperienced of Garth is true.
TwistedCapacity of Garth is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Garth is false. [steriles can't knock people up]
MainInfection of Garth is "Razorback Boar Male".
Description of Garth is "[GarthDesc]".
Conversation of Garth is { "..." }.

to say GarthDesc:
	say "...";


Table of GameCharacterIDs (continued)
object	name
Andy	"Andy"

Andy is a man.
ScaleValue of Andy is 3. [human sized]
Body Weight of Andy is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Andy is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Andy is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Andy is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Andy is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Andy is 5. [length in inches]
Breast Size of Andy is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Andy is 2. [count of nipples]
Asshole Depth of Andy is 8. [inches deep for anal fucking]
Asshole Tightness of Andy is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Andy is 1. [number of cocks]
Cock Girth of Andy is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Andy is 7. [length in inches]
Ball Count of Andy is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Andy is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Andy is 0. [number of cunts]
Cunt Depth of Andy is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Andy is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Andy is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Andy is false.
PlayerRomanced of Andy is false.
PlayerFriended of Andy is false.
PlayerControlled of Andy is false.
PlayerFucked of Andy is false.
OralVirgin of Andy is true.
Virgin of Andy is true.
AnalVirgin of Andy is true.
PenileVirgin of Andy is false.
SexuallyExperienced of Andy is true.
TwistedCapacity of Andy is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Andy is false. [steriles can't knock people up]
MainInfection of Andy is "Alpha Wolf".
Description of Andy is "[AndyDesc]".
Conversation of Andy is { "..." }.

to say AndyDesc:
	say "...";

[
Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Razorback Boar Infection"	"Infection"	""	Razorback Boar Infection rule	1000	false

This is the Razorback Boar Infection rule:
	if Player has a body of "Razorback Boar":
		trigger ending "Razorback Boar Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     ....";
		else:
			say "     ...";
]

[ Plans for Garth & Andy ]

[
Event: 2 of Andy's old gang buddies approach him as he is alone on an errand in the forest (player observing unseen). They offer him a chance to get back in the gang if he just helps them rob "that old fart" as proof of loyalty. Initially a little thoughtful, Andy refuses definitely as they start up demeaning talk about Garth (raping /eating him), balling his fist. He punches one guy out, fights the other, then goes "I'll show you!" and fucks the second wolf.

Event: The wolf gang attacks, Andy has a climactic fight with the Alpha, then the wolves all run off after he's beaten. Andy would be hard as a rock by then, and start with "I'll just go take care of this." but Garth shakes his head. "No, you shouldn't have to. You fought them off, for the group for our home. Time for you to take the role of a real man.".


]

Razorback Boar ends here.
