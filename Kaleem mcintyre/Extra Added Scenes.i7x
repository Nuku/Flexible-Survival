Version 2 of Extra Added Scenes by Kaleem mcintyre begins here.

"Adds a series of random events to Flexible Survival."

[Several events transferred to Consolidated Outside Events and Consolidated Park Events in Song's folder.]
[Reworked 'Challenge Of The Alphas' - Gherod]


Section 1 - Strange Sight

[Moved to Consolidated Part Events file.]


Section 2 - Wish

Table of GameEventIDs (continued)
Object	Name
Wish	"Wish"

Wish is a situation.
ResolveFunction of Wish is "[ResolveEvent Wish]".
Sarea of Wish is "High".

to say ResolveEvent Wish:
	say "     Jogging through the high rise district, you come across an interesting sight as you find yourself looking up to stare at a young, black, orange and golden furred calico cat looking mournfully up at the sky from out of an open window. Eyes seeming to be focusing on nothing and yet everything at the same time, you find yourself captivated by the other as the feline clasps their hands together, clenches their eyes tight as though trying not to cry, then bows their head. You can just make out the other's muzzle moving in a steady utterance, but from the distance between you, you can't really tell what the calico is saying. You'd guess that the other is praying, but maybe not, because as soon as the feline lifts its head up, you watch as the calico takes out a piece of paper from behind its back and then tears it into pieces. Reaching out to let the torn shreds float down onto the ground, a stray wind sweeps them away before the white paper fragments can get halfway to the concrete. You track the pieces of paper continue going overhead before they disappear completely. When you turn back to look at the calico, the other is gone and the window closed.";
	increase score by 1;
	now Wish is resolved;


Section 3 - Loving Bond

Table of GameEventIDs (continued)
Object	Name
Loving Bond	"Loving Bond"

Loving Bond is a situation.
ResolveFunction of Loving Bond is "[ResolveEvent Loving Bond]".
Sarea of Loving Bond is "High".

to say ResolveEvent Loving Bond:
	say "     The sounds of someone speaking making you slow down from your jogging as you try to look around for the speaker. You realize that this is a dumb thing to do as you could be possibly be putting yourself into danger by doing something like this, but a strange feeling wells up inside of your chest and suddenly you find yourself coming to a full stop in the middle of the empty road. Turning your head this way and that you finally have to look up as you notice two figures, a black canine of some variety and a white sandy brown vulpine of another other, two stories above you conversing with each other while music is playing the background. And though you can't hear what they are saying exactly you do note that the song they are playing seems awfully familiar for some reason. You try and ponder why though, and when it finally hits you as to what's going on your eyes light up like fireworks as everything clicks into place. The reason why the song being played is so familiar is because it is the melody that's usually played at weddings! Not sure how that could be right considering that the high rise area is nowhere near a church, you scratch at your head as you continue to stare as the two figures, both being male from what you can see because of the lack of any breasts, exchange rings with one another. Placing the small bands around each the middle fingers on each other's right hands you blush furiously when the two give each other passionate kiss, the likes of which could fog up a glass window, before the two newlyweds began to grope and fondle each other lustfully. The music in the background soon changes to something more of an erotic beat and flushing slightly you decide to hurry on about your way, especially when the black canine hefts his new mate up, bridal style, and then takes the giggling fox back into their loft apartment. Who knew that love could find a way to prosper in this mad town? Guess the saying is true that love conquers all.";
	increase score by 1;
	now Loving Bond is resolved;


Section 4 - Challenge of the Alphas

Table of GameEventIDs (continued)
Object	Name
Challenge of the Alphas	"Challenge of the Alphas"

Challenge of the Alphas is a situation.
ResolveFunction of Challenge of the Alphas is "[ResolveEvent Challenge of the Alphas]". The level of Challenge of the Alphas is 8.

when play begins:
	add Challenge of the Alphas to BadSpots of FurryList;
	add Challenge of the Alphas to BadSpots of MaleList;

to say ResolveEvent Challenge of the Alphas:
	say "     As you walk about the outskirts of the city, you begin to hear some wild grunting. It sort of looks like barking, even, although the few words you can identify from such a heated exchange remind you that it may not be simply dogs fighting. Perhaps you should investigate, seeing how close these are coming from, although you keep hugging the corner of the nearby abandoned building in an attempt to be sneaky. Then, you take a peek around it, and find yourself looking at an athletic anthro Husky and an equally fit anthro Wolf circling each other, the kinds you would see leading packs of their own. You blink in uncertainty as you wonder what are the two males are doing together in the middle of the street, because judging from the previous noises... ";
	say "     Oh, there it is. Both mutants bare their fangs at each other, body postures suddenly going rigid... And they charge at each other to resume wrestling. You guess that this has been going for a while, as you spot a scratch here and there on their strong furred bodies, so sweaty you can even smell their animalistic musk from where you are standing.";
	LineBreak;
	say "     This could be quite entertaining to [bold type]watch[roman type], if you would indulge yourself in such. Alternatively, you could [bold type]approach them[roman type], for whatever good that will do for you. Or you could simply [bold type]leave[roman type] these two to whatever matters they have to resolve between one another, matters that almost certainly do not concern you.";
	say "     [link](1)[as]1[end link] - Approach them (and prepare for a fight).";
	say "     [link](2)[as]2[end link] - Just watch.";
	say "     [link](3)[as]3[end link] - Leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to approach them, [link]2[end link] to stay watching or [link]3[end link] to leave.";
	if calcnumber is 1:
		LineBreak;
		say "     Something inside of you makes you want to approach them, even tricking you into the delusion that it would be such a good idea, but you cannot help it! Maybe you can find a way to stop this savagery once and for all, who knows. What you know is that you are now walking straight into them, and your presence seems to alert them, naturally. The two stop dead in their tracks while glaring bloody murder at you for intruding, as if they were not already wishing death on one another. Uncertain of what to do in this situation, you stand your ground, only seeing the rage rolling off of both creatures, which sends shivers down your spine. Since you do not move any inch further, they look back at each other, laying their ears flat against their heads while their tails snap directly up into the air in a sign that their battle will, once again, grow physical in a matter of moments.";
		LineBreak;
		say "     Their fur bristles so much that both look like aggravated porcupines. You stand there watching the two canines bark, growl and drool down the sides of their muzzles as they loose themselves further to their inner animals. Perhaps you should intervene by [bold type]helping out one of them[roman type]? It seems like neither is willing to give up on a fight without knowing for sure they do not stand a chance.";
		say "     ([link]Y[as]y[end link]) - Fight the Alpha Husky.";
		say "     ([link]N[as]n[end link]) - Fight the Alpha Wolf.";
		if Player consents:
			LineBreak;
			say "     Your target is picked. With careful positioning, you get ready to tackle the Alpha Husky...";
			WaitLineBreak;
			challenge "Husky Alpha";
			if fightoutcome < 20: [won]
				project the Figure of AlphaWolf_naked_icon;
				say "     After you have successfully dealt with the Husky, you find that the Wolf you have decided to fight for is somewhat confused about your interference between their inopportune, yet destined, brawl. Your abilities were enough to cause the Husky to start running away, leaving you alone with the Wolf, who definitely seems like he was not expecting such help from an outsider. Now, you have time to catch your breath, satisfied that you were able to stop the two from possibly killing one another.";
				say "     But, suddenly, you feel the breath of the Alpha Wolf behind you as he comes up to sniff at your rump. Freezing slightly, you begin to wonder if you have not made a big mistake by aiding this shaggy furred mutt. You have nothing worry about, however, as he simply nods at you in a sign of respect. 'Well well... I'd make you my new chew toy if you weren't so helpful back there,' he says as he approaches you even closer from behind, placing a hand over your right shoulder as you begin to feel something [']else['] poking at your rear. 'I've got something here to reward you for your generosity.' Just when you think he is talking about something rather physical, as his other arm hugs your left side, he presents you with a can of food in his paw-like hand right before your eyes.";
				WaitLineBreak;
				say "     'We were fighting for a cache of supplies. My pack needs the rest, but you can have this. Try to steal anything else from me, however, and I...' - he gives you a long lick right on your face - '... Won't be just as friendly.' He then simply hands you the food as he lets go of you, trotting his way off down the road. You do not really see where this cache would be, but you figure that even if you could find more, the wolf would be coming with his entire pack soon enough. Perhaps it would be for the best to simply retreat with at least something with you, unless you wished to risk provoking the wrath of numerous ferocious wolves at once. The hint would be... Do not.";
				ItemGain food by 1;
				now Resolution of Challenge of the Alphas is 1; [helped Alpha Wolf]
				increase score by 5;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     And, well, you did try your best at fighting off the husky, but your attempt was, at best, pathetic. The Husky reacts quickly enough to subdue you and manages to get his arms around yours, effectively immobilizing you between the two alphas. The Wolf seems only confused at your sudden intervention, but does not recognize your efforts at helping him. Now, they even seemed to have forgotten about their fight as a newly added problem just presented itself: You.";
				ChallengeOfTheAlphasLoss;
			else if fightoutcome is 30: [fled]
				say "     You regret your decision and, thus, decide to get out of the fight and run away as fast as you can. They do not chase you. Maybe they are even glad you have stopped interfering... Whatever, you only really care about getting out of here, and you do so, leaving the fighting Wolf and Husky behind.";
				now Resolution of Challenge of the Alphas is 98; [fled the fight]
		else:
			LineBreak;
			say "     Your target is picked. With careful positioning, you get ready to tackle the Alpha Wolf...";
			WaitLineBreak;
			challenge "Alpha Wolf";
			if fightoutcome < 20: [won]
				project the Figure of HuskyAlpha_soft_icon;
				say "     After you have successfully dealt with the Wolf, you find that the Husky you have decided to fight for is somewhat confused about your interference at first, but is soon lolling out his tongue as he watches his rival scurry away. Thanks to your performance and skill in combat, the Wolf is now long gone, and you are left alone with the Husky, who seems quite glad to have received such help from an outsider. Now, you have time to catch your breath, satisfied that you were able to stop the two from possibly killing one another.";
				say "     But, with barely any time to do so, the male Husky starts to get really close to you with a grin on his muzzle, causing you to wonder if you have made a mistake in coming to his aid. And then, you are simply caught by surprise as he pounces at you, losing your balance and ending up under the canine as he gives your face a generous amount of happy wet licks. 'I think I've seen you around. Don't you live in a library or something? That face isn't strange...' he says, his athletic body keeping you on the ground as he examines you. 'Could be someone else, really... But you smell good. Surely you don't wanna become part of my pack? I'll get you a special place as my beta.'";
				WaitLineBreak;
				say "     Now that grin really does make you think you probably chose wrong and that you are about to be assaulted by this handsome husky, but he laughs and lets go off you soon enough, getting up and standing above you. It seems that small bit of rough play was enough to give him a half-hard erection, however. 'In normal circumstances, I'd make you my bitch right away, but you were helpful. So, I want to give you something nice in return.' He then digs out a whole medkit and puts it in front of you as soon as you stand up to face him. At first, you doubt he is just being generous, but he does let you take the kit. 'That was on the supply cache I was trying to save for my pack. That darned wolf was trying to steal it from me.'";
				say "     It does explain why they were fighting so aggressively. You thank him for the kit and are about leave him to his doings... Until he once more stops you from walking away by putting one of his arms in front of you. 'You better keep this a secret, or I'll come for you. And if that happens, I won't be as nice. Hope that's clear enough.' With those words, he frees your way and proceeds to leave, trotting his way off down the road. You do not really see where this cache would be, but you figure that even if you could find more, the husky would be coming with his entire pack soon enough. Perhaps it would be for the best to simply retreat with at least something with you, unless you wished to risk provoking the wrath of numerous ferocious canines at once. The hint would be... Do not.";
				ItemGain medkit by 1;
				now Resolution of Challenge of the Alphas is 2; [helped Alpha Husky]
				increase score by 5;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     And, well, you did try your best at fighting off the husky, but your attempt was, at best, pathetic. The Wolf reacts quickly enough to subdue you and manages to get his arms around yours, effectively immobilizing you between the two alphas. The Husky seems only confused at your sudden intervention, but does not recognize your efforts at helping him. Now, they even seemed to have forgotten about their fight as a newly added problem just presented itself: You.";
				ChallengeOfTheAlphasLoss;
			else if fightoutcome is 30: [fled]
				say "     You regret your decision and, thus, decide to get out of the fight and run away as fast as you can. They do not chase you. Maybe they are even glad you have stopped interfering... Whatever, you only really care about getting out of here, and you do so, leaving the fighting Wolf and Husky behind.";
				now Resolution of Challenge of the Alphas is 98; [fled the fight]
	else if calcnumber is 2: [player watches them wrestling each other as things get progressively more steamy]
		say "     Surely just watching them to satisfy your curiosity will not do any harm, so you decide to stay and observe. As you have remained unnoticed, the two do not stop fighting and wrestling, frequently switching places as one tries to pin down the other, but fails as the other keeps turning the tables. It is granted that they are practically an equal match in terms of strength and combat skill, but their methods are very savage and animalistic. This goes on for a while, a lot of grunting as they keep trying to subdue their adversary, and eventually, you cannot help but notice their bright red cocks beginning to show with all the grinding they are making against each others bodies.";
		say "     What were two furious antagonistic alpha males fighting each other now looks more like an erotic wrestling show, as they too seem to get distracted by their own increasing arousal. Their movements become more sluggish and less agressive, and there is just more grinding in general. You begin to question, at some point, if they are fighting at all! Their cocks begin to rub together as they make a few more attempts at pinning the other down, resulting in both rolling several feet to one side, then back to the other... They still grunt, but it definitely sounds different. It is not as violent and ferocious as before, more like they are fatigued and dragged away by what overwhelming sense of lust is striking them.";
		WaitLineBreak;
		say "     On the good side, they are not keen on killing each other now! The sexual tension between them grows so obvious that even they cannot deny it from one another much longer. Soon, one of them just gives up all the will to fight and decides to simply grab his and his adversary's cock. What you then see is the two of them frotting, hesitantly, as they look into each other's eyes with still lingering mistrust, but unable to deny how good that feels. They, eventually, pick up the pace and jerk off faster, keeping it to just this short [']swordfighting['] out of, maybe, fear of breaking the moment. You can tell neither the husky nor the wolf have any idea of what affectionate caressing is.";
		say "     But they continue, moaning and grunting as both seem to approach the edge of their climaxes. What follow are several gushes of both husky and wolf cum covering their furred bodies as they let it all out for several moments, pure ecstasy hitting both the alpha males during the peak of their orgasms until it finally begins to subside, both the pleasure and the adrenaline. You stay a little longer to see what happens once they finish their sexual act, and it appears they do not resume fighting. The husky only looks at the wolf, seeing the both of them covered in their own jizz, and then drops down to snuggle with him. The wolf does not show any resistance to this and lets him. Now, both are lying down on the ground, exhausted.";
		WaitLineBreak;
		say "     Did you just witness the beginning of a relationship? Who knows? You are simply glad that nobody got hurt in the process.";
		now Resolution of Challenge of the Alphas is 50; [watched them]
		increase score by 5;
	else if calcnumber is 3:
		say "     This is none of your business, you think, so you simply turn and walk away, just in time to hear the two canid males howl and then fly at each other. The grunts continue all the way until they are out of reach. You can only imagine how that fighting is going to end...";
		now Resolution of Challenge of the Alphas is 99; [avoided the fight]
	now Challenge of the Alphas is resolved;

to ChallengeOfTheAlphasLoss: [sex scene for loss]
	WaitLineBreak;
	say "     'Who the fuck is this buffoon?' one of them asks as you are pushed to the floor, weak and unable to stand up on your own. 'Have you come here to dispute the cache, you little shit? What the fuck is your business?' the other asks, and it takes you some time to be able to associate the different voices to each. By the time you recover your senses from such rough treatment, you have the Husky's muzzle right in front of your eyes at a very uncomfortably close distance. 'What a fucking little bitch. What were you thinking? That you could fight the both of us and get the supplies for yourself?!' he says, and the Wolf, who appears crouching down right behind you, snapping a little too close to your neck, 'Judging by that sad display, I don't think the bitch can think all too well.'";
	say "     Realizing the danger you are in, you cower and try to not do anything to further provoke the males. This seems to, however, anger them even more. 'Got no fucking tongue either?! I asked you a question!' the Husky shouts, and that is when you explain that you knew of no supplies in here. 'Oh, you didn't, huh? Then how did we find your ass right in here?!' asks the Wolf, to which to reply that you were simply passing through and heard them both fighting one another. Your poor decision led you to attempt to fight one of them in hopes to stop the conflict.";
	WaitLineBreak;
	say "     As sincere as you were, both the Wolf and the Husky laugh at you, not believing a single word. 'Nice fucking try for an excuse, you little cumdump. That's right, that's what you're gonna be for us now,' threatens the Wolf as he grabs you by the neck, pulling you to him as he nearly starts choking you. 'Now you gotta learn your lesson, bitch.' The lupine keeps a tight grip on you as he licks your face in a way that, if it was not deeply intimidating, would be considered affectionate. The Husky, standing in front of you, [if player is not naked]simply reaches for your clothes and pulls every single piece out of your body while you can offer no resistance whatsoever, leaving you completely naked between the two strong alpha males[else]simply admires your fully exposed body, while you remain completely helpless, between the two strong alpha males[end if].";
	say "     The Wolf's tongue continues to trail around your facial features until it makes its way to your mouth, forcing your lips open as his fingers tighten around your jaw. Soon, your tongue and his are wrestling against each other, twirling and wiggling around inside your mouth as, with his other hand, he begins to feel up your chest. You cannot help but feel a lusty arousal crippling through you as the Husky grabs your legs and slides in between them, poking your [if player is female]wet curls[else]butthole[end if] with the tip of his meaty prick. He reaches over it with his fingertips, carefully keeping his claws out of the way, to fondle your sensitive areas as you inevitably begin to relax your body, beginning to lose yourself in the eroticism of it all.";
	WaitLineBreak;
	say "     Your eyes remain closed as the alpha Wolf kisses you, tongue only being replaced by a brief pause of nothingness as he pulls his muzzle out, then by a thick, pointy and rigid throbbing cock that pushes itself past your lips. He rolls over on top of your head, obscuring your whole view, pushing your skull to the ground and thrusting his entire length, all the way to just before the knot, into your mouth, reaching your throat as he holds your head by the back of it and makes you hold your breath on that pulsating dick. The Husky follows through with his intention of fucking you, finally pushing his own meat into you and burying himself in all the way, also only leaving the knot out before it could get plunged into your [if player is female]pussy[else]ass[end if] right away.";
	say "     Their movements are slow, for now, but deep and even a bit rough as they handle you like their fucktoy, thrusting deep into your mouth and [if player is female]cunt[else]hole[end if] before both begin to pick up the pace, fucking you faster and harder. The Wolf makes you choke on his cock before letting you take precious little seconds to catch your breath, then buries it in you all the way again, taking pleasure from your struggle and the feeling of your throat clenching around his meat. The Husky does the same on his end, throwing your legs around his waist and proceeding to thrust into you vigorously, relentlessly even. The alpha males have really forgotten all about their own conflict and fully give themselves into the situation at hand, to use you up until you cannot move an inch.";
	WaitLineBreak;
	say "     'How's that feeling, bitch? You like getting fucked by two alpha males?' the Wolf asks, looking down on you as your throat remains full with his thick lupine meat. The Husky follows as his cock drills you deep, moving in and out of you, 'Guess we could share this one as a token of truce. I'm sure the bitch here would love that.' You literally are not able to reply to any of these questions as the Wolf's cock keeps your mouth full, but they do not seem to care. 'Oh yeah? So you wanna keep fucking some bitches with me, is that what you're saying?' the lupine asks, turning to the Husky behind him. 'Uh... Why not? You're pretty tough. And you've got a really nice ass,' the Husky adds. And was that the Wolf's cock throbbing significantly in your mouth as he heard that, you wonder?";
	say "     'Fuck...! Alright, we can share the cumdump and the supplies,' the Wolf declares, holding his dick into your throat once again, forcing your breath to shut yet another time... 'Yeah, agreed. Now, how about we fill this bitch up? My balls are aching,' says the Husky, as he, too, slows down with his whole meat inside you. With both now set on crossing the edge, they both pull out for seconds - giving you more precious time to catch your breath - and proceed to pound you fast, hard and rough, which clearly has you struggling to keep yourself together. Both males thoroughly penetrate you from both ends until the Husky pushes his swollen knot past your [if player is female]wet curls[else]anal ring[end if] as he grunts, 'Fuck, I'm gonna shoot...'";
	WaitLineBreak;
	say "     The lupine facefucking you does not let go of your head until he, too, looks at you with a devilish glare, and for a split-second you fear he is going to do it. And, indeed, he really does it, pushing his knot past your lips and locking his whole cock in your throat. Fortunately, your lips are slippery enough to pull it out in a pinch, but it does make it harder for you, specifically, a thought the Wolf seems to take great delight in. 'Yeah, me too... It's coming up... Fuuuck-' the Wolf moans, and by then, the Husky is already shooting his load into your [if player is female]womb[else]bowels[end if] with each throb his prick gives. The cock in your mouth too shoots it all down your throat as you are forced to swallow the whole thing, all at once.";
	say "     Inevitably, panic begins to take place as you find yourself unable to breathe for too long, and you beg the Wolf to let you have some air as you desperately push against him. 'Fuuck, already? I'm not done cumming-... Fuck...!' he replies, definitely not as worried as you, but the last brink of humanity in him decides to force his cock out of your mouth prematurely. And as you are finally able to gasp for breath, the final spurts of cum keep hitting you right on your face as he jerks for the rest of his orgasm. 'That felt fucking good... How about round two?' the Husky asks, still with his dick in you and waiting for the knot to deflate. This, obviously, puts a very worried look in your eyes as you look up at the smiling Wolf, who just lets his dick rest atop your lips and nose.";
	WaitLineBreak;
	say "     'I'm not so sure. Gotta head back for my bitches. But let's say... if I, or we, find you...' and yes, the Wolf really means you, '... sniffing around here again, we'll get round two going. And maybe more.' The canine then speaks, too, as he finally begins to pull out of you, 'Yeah, if either of us ever sees you again, remember you're now our property. But we're kind enough to let you wander about on your own, you see.' You are then given a slap on your ass as the Husky stands up, walks towards the Wolf and helps him up. 'Now, let's talk about the shares, bud. You meant fifty-fifty of everything, right?' he asks the Wolf as they both trot their ways off down the road.";
	say "     You do not really see where this cache would be, but you figure that even if you could find more, the both of them would be coming with their entire packs soon enough, and if you lost against only two, you can only imagine the resulting outcome from practically a horde of them. Perhaps it would be for the best to simply retreat with what is left of your dignity, unless you wished to risk provoking the wrath of numerous ferocious canines and wolves at once. The hint would be... Do not.";
	CreatureSexAftermath "Player" receives "OralCock" from "Alpha Wolf";
	if player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
	infect "Alpha Wolf";
	infect "Husky Alpha";
	now Resolution of Challenge of the Alphas is 51; [lost the fight]

Section 5 - Anxiety

[Moved to Consolidated Park Events]


Section 6 - Secrets

[Moved to Consolidated Park Events]


Extra Added Scenes ends here.
