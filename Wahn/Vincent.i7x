Version 1 of Vincent by Wahn begins here.

[ Vincent Loyalty Points:                                                               ]
[ Note: Plus points are one time only, minus points can be repeatedly gotten            ]
[                                                                                       ]
[ +1 from listening to his background story                                             ]
[ +1 from rejecting sexual blackmail (in the sex talk with Vincent)                     ]
[ +1 from being okay with weed, trading sex, or both                                    ]
[ +1 from giving Vincent a BJ                                                           ]
[ +1 from hanging out with Vincent                                                      ]
[ +1 from smoking weed and making out with Vincent during the hangout                   ]
[ +1 from microdosing on orc cum and mutually masturbating (second time, not the first) ]
[                                                                                       ]
[ -1 from drying to drug him with orc cum without an excuse                             ]
[ -1 from interrupting him trading sex for weed                                         ]

[ Energy of Vincent - Tracking for when the player hung out with him                    ]
[ Stamina of Vincent - Tracking for how many (small) exposures to orc cum he had        ]


a postimport rule: [bugfix for old imports]
	if "Ruth & Keitao Story Told" is listed in Traits of Vincent and "Sexual Rent" is not listed in Traits of Vincent and "Sextalk Loyalty Bonus Given" is not listed in Traits of Vincent:
		increase Loyalty of Vincent by 1; [bonus point for players who rejected sexual blackmail with Vincent before the Loyalty point for that was introduced]
		TraitGain "Sextalk Loyalty Bonus Given" for Vincent; [to make sure the player only gets one point, retrofitted in the postimport rule, or in the scene as planned]
		if debugactive is 1:
			say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";

Section 1 - Aftermath of the Orc Raid

to say VincentPostRaid_Talk:
	say "     [if Scalevalue of Player > 2]Setting the fox back onto his own feet[else]Loosening your grip a little on the fox so he's no longer wedged against your side[end if], but still keeping a secure grip of his shoulder, you look him over for a moment. He's a fairly handsome guy with silky red fur and a lithe, shapely body, currently dressed in a sleeveless black band t-shirt and a pair of half-ragged jeans. Clearly more built for speed rather than brute strength, you have little doubt that he'd easily have escaped the orcs, if not for your unfortunate collision. He's got a somewhat calculating look in his eyes, appearing to eye the exits from the edge of his gaze, and you can't help but think of the fables of sly foxes who always find a way out of trouble. Who knows if he's always been that way, or if the infection helped things along. It sure seems a good trait to have when wanting to survive in a city turned feral.";
	WaitLineBreak;
	if "Raid_Deal_Orc_Player" is listed in Traits of Vincent:
		say "     Given that you were in the process of using him sexually right until the moment in which he offered you a deal to only have to service one orc instead of four, the fox is understandably skittish about your attention, and you can feel him tense under your hand. Nervously licking his lips, he swallows, then opens his muzzle and quickly bursts out with, 'Hey listen, how about we talk things through for a moment?! I'm sure you're a reasonable type of guy, err - orc. I'm Vincent by the way, nice to meet you! Even if the circumstances were a bit out there, eh? Those three tried to corner me when I was checking over a looted store for leftover food. Dodged past them and ran, and I almost got away but you were in my way, and you know the rest. So sorry for running into you too! And-' As you clear your throat to say something, the flood of fragmented sentences comes to a temporary halt, as Vincent snaps his muzzle shut quickly.";
		say "[VincentPostRaid_OrcTalk]";
	else if "Raid_SlaveClaim_by_Player" is listed in Traits of Vincent:
		say "     Given that you've publicly proclaimed that he'll be your slave, the fox is understandably skittish about your attention, and you can feel him tense under your hand. Nervously licking his lips, he swallows, then opens his muzzle and quickly bursts out with, 'Hey listen, how about we talk things through for a moment?! I'm sure you're a reasonable type of guy, err - orc. I'm Vincent by the way, nice to meet you! Even if the circumstances were a bit out there, eh? Those three tried to corner me when I was checking over a looted store for leftover food. Dodged past them and ran, and I almost got away but you were in my way, and you know the rest. So sorry for running into you too! Now, about that whole 'this one belongs to me now' thing, could we-' As you clear your throat to say something, the flood of fragmented sentences comes to a temporary halt, as Vincent snaps his muzzle shut quickly.";
		say "[VincentPostRaid_OrcTalk]";
	else:
		say "[VincentPostRaid_RegularTalk]";

to say VincentPostRaid_OrcTalk:
	LineBreak;
	say "     [bold type]What do you want to tell him?[roman type][line break]";
	let Vincent_PostRaid_Choices be a list of text;
	if "Raid_Deal_Orc_Player" is listed in Traits of Vincent:
		add "Admit you got a bit carried away after the fight, with your blood pumping. You just wanna talk now that you're calmer." to Vincent_PostRaid_Choices;
		add "You want more oral service, now! Oh, and he can have a safe place to stay with you if he keeps pleasing you..." to Vincent_PostRaid_Choices;
		add "With the other orcs out of the picture, he's your slave now! Soon to be a nice little cocksheath!" to Vincent_PostRaid_Choices;
	else if "Raid_SlaveClaim_by_Player" is listed in Traits of Vincent:
		add "(Truth) He should relax, you only wanted to trick the orcs, not actually take him as a slave." to Vincent_PostRaid_Choices;
		[
		add "(Lie) He should relax, you only wanted to trick the orcs, not actually take him as a slave." to Vincent_PostRaid_Choices; [extra option for tricking him towards Slutstorage, then locking him up there for slavebreaking and training]
		]
		add "You meant what you said, he's yours now! Soon to be a nice little cocksheath!" to Vincent_PostRaid_Choices;
	let Vincent_PostRaid_Choice be what the player chooses from Vincent_PostRaid_Choices;
	if Vincent_PostRaid_Choice is:
		-- "Admit you got a bit carried away after the fight, with your blood pumping. You just wanna talk now that you're calmer.":
			LineBreak;
			say "     Scratching the back of your neck, you admit that you were a bit out of control before. Surely he knows how it is, with the infections and all, when someone gets going, and... being an orc isn't easy. You're really not that way, usually! Looking at you with a raised eyebrow, Vincent meets your eyes for a long moment, trying to get a read on if you actually mean what you said. Then finally, he tilts his head to the side in thought, then nods. 'Yeah, I can see that. I mean, with how those three other guys were acting, you seemed relatively well-adjusted even while... you know. The other orcs? They kept riling each other up with what they planned to do to me, when they found me! Their first idea was to fucking me like a ragdoll from both ends right then and there in the store - but then one of them suggested they 'take their time at home' instead!' Shivering at the thought of the fate he so narrowly escaped, Vincent gives you a friendly smile. He seems mostly okay with you now, if still wary and ready to get away should you go off the rails.";
			say "[VincentPostRaid_RegularTalk]";
		-- "You want more oral service, now! Oh, and he can have a safe place to stay with you if he keeps pleasing you...":
			LineBreak;
			say "     Grunting that you agreed to get him away from the other orcs because he was really good in orally servicing you, but that you haven't actually come. You helped him get away, so he's in your debt! And hey, half of what was implied in his offer was that this wouldn't be just a one-time fling. So if he keeps up the good work with his tongue, you're ready to offer him a place of refuge in your lair. No matter how quick and wily he may be, he's gotta sleep sometime. Listening to your offer with a raised eyebrow, Vincent meets your eyes for a long moment, trying to get a read on if you actually mean what you said. You can almost see the wheels turning in his head, weighing off his options. Trading oral sex for security doesn't seem to be out of the question, but there's also some uncertainty if you're trustworthy enough not to betray him. Finally, he seems to come to a decision, tilting his head a little and nodding.";
			say "     'Fine, I'll do it. But we gotta have some ground rules - just let me do my thing, and I'll give you what you need. Don't grab me or try to force anything, understand? I'll bite you if you try!' Snorting at the fox having a bit of fire in him, you pointedly lift your hand from where it was gripping his shoulder, then half-raise both arms in a gesture to show that you'll be 'hands-off' with him. Then you nod to your crotch, where an already throbbing piece of thick man-meat is waiting for Vincent's attention. 'Horny fucker,' the fox says under his breath, then throws you a glance. 'But even so, with how those three other guys were acting, you seem relatively well-adjusted. They immediately started riling each other up with what they planned to do to me when they found me! Their first idea was to fucking me like a ragdoll from both ends right then and there in the store - but then one of them suggested they 'take their time at home' instead!' Shivering at the thought of the fate he so narrowly escaped, Vincent shakes his head, then puts on a smile for you and bends forward to get close to your crotch.";
			WaitLineBreak;
			say "[VincentFirstOrcBJ]";
			say "The two of you exchange looks for a moment longer, then you pat his shoulder and the two of you set out towards the library together. Along the way, Vincent comments, 'It'll be nice to have a place away from all these feral beasts and horny brutes... you'd never invite any of them there, or would you?' You give him a noncommittal smile in response, simply stating that he shouldn't have anything to worry about.";
			NPCSexAftermath Vincent receives "OralCock" from Player;
			WaitLineBreak;
			say "     When you eventually reach the library, thankfully avoiding any hostile attention on the way, you give Vincent a little tour of the building. While making a circuit of the upper floor, he stops at the large windows overlooking the garden behind the building, staring out for a little while before glancing aside to one of the sofas to the side. 'I always loved how green everything is down here on the coast. If you don't mind, I think I'll set up my camp here. The draft from the broken window doesn't bother me much, with the fur and all.' As you agree, the fox gives you a content smile, then walks over to the sofa he picked and experimentally lays down on it, appearing to be pleasantly surprised by the comfortable upholstery.";
			move Vincent to Garden View;
			move Player to Garden View;
			TraitGain "Sex Discussed" for Vincent;
			TraitGain "Sexual Rent" for Vincent;
		-- "With the other orcs out of the picture, he's your slave now! Soon to be a nice little cocksheath!":
			LineBreak;
			say "[VincentEscape]";
		-- "(Truth) He should relax, you only wanted to trick the orcs, not actually take him as a slave.":
			LineBreak;
			say "[VincentPostRaid_RegularTalk]";
		-- "(Lie) He should relax, you only wanted to trick the orcs, not actually take him as a slave.":
			LineBreak;
			say "[Vincent_SlutStorage]";
		-- "You meant what you said, he's yours now! Soon to be a nice little cocksheath!":
			LineBreak;
			say "[VincentEscape]";

to say Vincent_SlutStorage: [extra option for tricking him towards Slutstorage, then locking him up there for slavebreaking and training]
	say "<Expansion Option>";

to say VincentEscape:
	say "     'I see. O-okay master, I'll be your foxy fucktoy! Let me worship your cock to celebrate the victory over those brutes!' Before you've got more than a second to wonder about this quite rapid turnabout to so eagerly wanting to serve, Vincent is already sinking down from standing straight before you and bending forward, both of which loosen your grip on his shoulder a little bit. His muzzle comes closer and closer to your crotch, and then... he head-butts your cock with all the force he can muster. Stars and spirals of pain dance before your eyes while you choke on a stillborn scream stuck in your throat, and your hand slips from where it was gripping Vincent's shoulder as the slender man twists to the side. With a whimper, you stumble and fall to your knees, reaching to cup your shockingly violated cock, not that that will do any good after the fact. Through the haze of pain, you distantly hear, 'I've had enough of people treating me like crap!' followed by running footsteps. So much for your ambitions of having a new slave...";
	TraitGain "Headbutted Player" for Vincent;

to say VincentFirstOrcBJ:
	say "His nostrils flare as he takes in the musky scent of your pre-cum, then goes in to lap at the head of your green-skinned cock. The glistening wetness of pre-cum welling up from your cum-slit touches the fox's tongue, and his eyes go wide at its pleasant, stimulating taste. 'This tastes... pretty nice,' he says, not quite hiding the slight pause he needed to pick some less enthusiastic words than what first came to mind. Swallowing his first taste of orc and licking the side of his muzzle, the slender anthro is drawn in by the inevitable desire to taste more of your pre, and that floppy tongue starts to lap again, playing over the tip of your cock hungrily. Soon, he tries something else and closes his muzzle most of the way, just putting the lips at the very tip against your dickhead, and trying to suckle, which doesn't work too well, spilling some of your pre down his chin until he gives up in frustration.";
	say "     Pulling off and shaking his head, the fox then falls back to providing a more regular blowjob for you. In joyous haste, Vincent opens wide and slides his whole muzzle over your erection, engulfing your manhood in his long muzzle. He bobs his head, his tongue rolling along the underside and serving as a soft buffer between his teeth and your sensitive flesh. Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue-tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blowjob, bobbing up and down on your erect cock and eagerly slurping up what pre you leak into his open mouth. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round[else]He takes your whole length without any trouble, easily fitting your manhood in his muzzle[end if].";
	WaitLineBreak;
	say "     The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he first pushes himself all the way down on your cock, wet nose touching your pubic area. But then, he seems to think better of what he's doing, almost forcing himself to pull away, instead licking and slurping over its side, while massaging your balls with his hands. In short notice, this pushes your arousal over the edge, and you blast your load to paint white stripes over the ash-covered ground of the ruin you're in. You can hear Vincent's nose pull in a deep breath, huffing the scent of your cum, and before he can help himself, his tongue flicks out to lick up a stray drop that still clings to your mushroom head. Eyes going wide as just that little bit of your potent cum hits his system, he licks over your dickhead again several times, then glances down at the wet drabs soaking into the ash before shaking his head almost imperceptibly.";
	say "     'Fucking hell, what're you packing in those balls! It's like a drug or something! Good thing I pulled off, or I think I might be zonked out and rolling drunkenly on the floor like an alcoholic on payday!' As you chuckle and admit that orcs are built a little differently, the Vincent seems torn between getting angry, and the desire to taste you again. In the end, he ends up picking a position somewhere in between, grumbling, 'Okay, new rule - don't even think of trying to shoot in my mouth. I'm warning you, understand?! You [bold type]must[roman type] warn me when you're getting close. As long as you're an orc at least...' Rolling your eyes, you agree, not wanting to lose out on the fox's oral services. ";
	TraitGain "Orc Cum Aware" for Vincent;
	increase Stamina of Vincent by 1; [small orc cum exposure]

to say VincentPostRaid_RegularTalk:
	LineBreak;
	let Vincent_PostRaid_Choices be a list of text;
	add "Tell him that you've got a safe base to stay in, and you'd like to invite him to stay there. No conditions." to Vincent_PostRaid_Choices;
	add "Offer him a place to stay with you, safe from brutes such as those three orcs. If he shows his appreciation, of course... (Oral Sex)" to Vincent_PostRaid_Choices;
	add "Say that you're glad that both of you got away from the orcs, and wish him good luck for the future, then leave." to Vincent_PostRaid_Choices;
	let Vincent_PostRaid_Choice be what the player chooses from Vincent_PostRaid_Choices;
	if Vincent_PostRaid_Choice is:
		-- "Tell him that you've got a safe base to stay in, and you'd like to invite him to stay there. No conditions.":
			LineBreak;
			say "     Listening to your words, Vincent raises an eyebrow, and a wary expression crosses his face. He looks into your eyes, trying to get a read on if you actually meant what you said. After a moderately long pause, he replies, 'Are you sure you're not fucking with me? That seems like a suspiciously generous offer.' Having had to survive on the wild streets of the city since the outbreak of the nanite plague, trust doesn't come easy to the fox, but with some further explanations, you manage to convince him that you're not trying to entrap him in some way. 'I could use a safe place to get some shut-eye, sure. Laying down with one eye open is sure getting old fast, I can tell you that!' Nodding and patting him on the shoulder, you then set out towards the library together. Along the way, Vincent comments, 'It'll be nice to have a place away from all these feral beasts and horny brutes... you'd never invite any of them there, or would you?' You give him a noncommittal smile in response, simply stating that he shouldn't have anything to worry about.";
			say "     When you eventually reach the library, thankfully avoiding any hostile attention on the way, you give Vincent a little tour of the building. While making a circuit of the upper floor, he stops at the large windows overlooking the garden behind the building, staring out for a little while before glancing aside to one of the sofas to the side. 'I always loved how green everything is down here on the coast. If you don't mind, I think I'll set up my camp here. The draft from the broken window doesn't bother me much, with the fur and all.' As you agree, the fox gives you a content smile, then walks over to the sofa he picked and experimentally lays down on it, appearing to be pleasantly surprised by the comfortable upholstery.";
			move Vincent to Garden View;
			move Player to Garden View;
		-- "Offer him a place to stay with you, safe from brutes such as those three orcs. If he shows his appreciation, of course... (Oral Sex)":
			LineBreak;
			say "     Listening to your words, Vincent raises an eyebrow, and a somewhat mocking chuckle bubbles up from his chest. 'Expected as much. Nothing's free, except death, eh? But yeah, you're right - a safe place to get some shut-eye is worth a lot, these days. Laying down with one eye open is sure getting old fast, I can tell you that!' Scratching the underside of his muzzle, he thinks for a few seconds, then nods to you. 'Okay, fine. I'll play ball. But there have to be ground rules - just let me do my thing, and I'll give you what you need. Don't grab me or try to force anything, understand? I'll bite you if you try! Understood?' As you agree to his conditions, the fox pulls off his sleeveless shirt, hanging it on a relatively unscathed piece of surviving furniture before going up to you and sinking into a crouch. Seems he's ready to pay his rent, right here and now!";
			say "     [if Player is not barecrotch]Vincent's slender fingers dance over your clothes, tugging and pushing them aside to free your crotch, with him leaning in close without any hesitation[else]Vincent seems to appreciate the convenience of your exposed crotch and leans in close without any hesitation[end if]. ";
			if Player is male:
				if CockName of Player is "Orc Warrior": [addiction risk]
					say "[VincentFirstOrcBJ]";
					say "The two of you exchange looks for a moment longer, then you pat his shoulder and the two of you set out towards the library together. Along the way, Vincent comments, 'It'll be nice to have a place away from all these feral beasts and horny brutes... you'd never invite any of them there, or would you?' You give him a noncommittal smile in response, simply stating that he shouldn't have anything to worry about.";
					WaitLineBreak;
				else: [normal BJ]
					say "The corners of his mouth twitch upwards as he takes in your [Cock of Player] manhood, his tongue slipping out to lick the side of the fox's long muzzle. Taking hold of your shaft, he jerks it in a pleasant speed, seemingly knowing how to handle a man's pride and joy just right. As you harden and stand proudly erect soon enough, the fox takes a deep breath, then starts to lap at your dickhead, with his floppy canine tongue feeling quite nice as it glides over your sensitive glans. While doing so, Vincent's eyes glance up warily, watching out that you're not getting any ideas.";
					WaitLineBreak;
					say "     Slender canine fingers dance over your shaft as he lifts it, running his long tongue over the underside and teasing your girth. Feels like he knows his way around a hard cock, and he has some pleasant little tricks up his sleeve. Ducking his head low, as your erection lays across the top of his muzzle, he spends some time worshiping your balls too, first a few licks with the tip of his tongue, then opening his muzzle wide to take one of your balls into his mouth. He's very careful not to graze it with his canine teeth, even as he lets that very flexible tongue wash over your orb in a stimulating tongue-bath, then switches over to do the same to your other dangling cum-factory. You can't help but breathe a bit more heavily as the fox worships your sack, his pointed ears flicking to take in every sound, alerting him to the effects his talented tongue has on you. With a grin flickering over Vincent's muzzle at your reactions, the fox gets back to running his tongue along your shaft until he reaches your dickhead once more.";
					say "     His nostrils flare as he takes in the musky scent of your pre-cum, then opens wide and slides his muzzle over your erection. Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blowjob, bobbing up and down on your erect cock. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round. [else]He takes your whole length without any trouble, with it easily fitting in his muzzle. [end if]The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he pulls off from your cock and instead licks and slurps over its side, while massaging your balls with his hands. In short notice, this pushes your arousal over the edge, and you blast your load to paint white stripes over the ash-covered ground of the ruin you're in.";
					WaitLineBreak;
					say "     With a grin on his muzzle, Vincent gently lowers your cock and stands up, then says, 'Worth my keep, hah!' The fox seems quite confident in what he delivered being worth the trade for finding refuge, and given that your spilled cum is visible proof of his skills at pleasing you, he isn't wrong either. Giving him a friendly pat on the shoulder, you you then set out towards the library together. Along the way, Vincent comments, 'It'll be nice to have a place away from all these feral beasts and horny brutes... you'd never invite any of them there, or would you?' You give him a noncommittal smile in response, simply stating that he shouldn't have anything to worry about.";
				NPCSexAftermath Vincent receives "OralCock" from Player;
			else if Player is female:
				say "He tilts his head a little as he takes in your [Cock of Player] pussy, and seems to switch mental tracks a second later, sticking out the tip of his tongue and bringing it closer to your clit while making wiggling movements with the tip of his tongue. Making contact with your magic button, the slender fox gives it a teasing lick, then another, while bringing up a hand to brush his fingers over the lips of your pussy. He gently traces his fingertips along the edges of your sex while tickling your clit, almost like a massage - one intended to wind your libido up in no time at all. And it works - before much longer, you feel yourself getting wet down there, ready and itching for relief.";
				WaitLineBreak;
				say "     Vincent makes use of your arousal by now easily slipping his previously just teasing fingers inside your pussy, two slender digits exploring your moist cave and searching for the right spot to give you pleasure. At the same time, his muzzle moves in closer, opening to press against your crotch right over the clit. You can feel his warm breath washing over your skin as he renews his attention for the sensitive spot with focused licking, switching back and forth between tracing his tongue-tip all along the edges in a steady circle, then again fast lapping over it and driving you wild. Between his questing fingers and the unrelenting oral attention, you can't help but quicken your breath and let out aroused moans. Those pointy ears flick and twitch to take in every sound you make, expertly listening to what drives you wild and then honing in on giving you more of it.";
				say "     Delivering a more than pleasurable bout of cunnilingus, the red fox is relentless in teasing and toying with your arousal, pushing you further and further. The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he pulls his face away from your pussy, wiping off what wetness clings to his nose and muzzle and muzzle with his free hand before setting it onto your crotch. His fingers grasp your clit, rubbing and gently rolling it between careful fingertips. A light pinch and flick of your magic button is the last push you need to be driven over the edge, letting out an orgasmic shout as climax hits you with full force, gushing your wet juices over the slender anthro's hands and having to brace against his shoulder to keep standing.";
				WaitLineBreak;
				say "     With a grin on his muzzle, Vincent keeps up the caresses for a while longer, allowing you to ride out the high of your arousal until it eventually abates before pulling away fully. Standing up, he then says, 'Worth my keep, hah!' The fox seems quite confident in what he delivered being worth the trade for finding refuge, and given that your juices are plastering the fur of his hands against his skin, he isn't wrong either. Giving him a friendly pat on the shoulder, you you then set out towards the library together. Along the way, Vincent comments, 'It'll be nice to have a place away from all these feral beasts and horny brutes... you'd never invite any of them there, or would you?' You give him a noncommittal smile in response, simply stating that he shouldn't have anything to worry about.";
				NPCSexAftermath Vincent receives "OralPussy" from Player;
			else:
				say "His eyebrows rise a little as he takes in your absence of sexual organs, then shrugs and resolves to just lick your bare crotch instead. Flying blind, with no clear target to go for, he resolves to just keep teasing you with his tongue, also bringing his hands in to assist and massage your genital area. The stimulation feels pretty nice even without a cock or pussy, and after a little while, you start to tremble and shiver as waves of pleasure roll up and down your spine.";
				say "     With a grin on his muzzle, Vincent keeps up the caresses for a while longer, allowing you to ride out the high of your arousal until it eventually abates before pulling away fully. Standing up, he then says, 'Worth my keep, hah!' The fox seems quite confident in what he delivered being worth the trade for finding refuge, and given that your juices are plastering the fur of his hands against his skin, he isn't wrong either. Giving him a friendly pat on the shoulder, you you then set out towards the library together. Along the way, Vincent comments, 'It'll be nice to have a place away from all these feral beasts and horny brutes... you'd never invite any of them there, or would you?' You give him a noncommittal smile in response, simply stating that he shouldn't have anything to worry about.";
				WaitLineBreak;
				NPCSexAftermath Player receives "Stroking" from Vincent;
			say "     When you eventually reach the library, thankfully avoiding any hostile attention on the way, you give Vincent a little tour of the building. While making a circuit of the upper floor, he stops at the large windows overlooking the garden behind the building, staring out for a little while before glancing aside to one of the sofas to the side. 'I always loved how green everything is down here on the coast. If you don't mind, I think I'll set up my camp here. The draft from the broken window doesn't bother me much, with the fur and all.' As you agree, the fox gives you a content smile, then walks over to the sofa he picked and experimentally lays down on it, appearing to be pleasantly surprised by the comfortable upholstery.";
			move Vincent to Garden View;
			move Player to Garden View;
			TraitGain "Sex Discussed" for Vincent;
			TraitGain "Sexual Rent" for Vincent;
		-- "Say that you're glad that both of you got away from the orcs, and wish him good luck for the future, then leave.":
			LineBreak;
			say "     'Yeah, good thing that me running into you didn't result in anything worse than some bruises. Sorry to have bowled you over, but I really was in a bind to get away from those assholes. At least you showed them what's what, and we both got away home free, eh?' With a thankful smile, the slender fox gives you a salute with two fingers raised to his forehead, then makes his goodbyes and walks off to continue with his own day of surviving in the city. Who knows if you might see him again in the future...";

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Vincent	"Vincent"

Vincent is a man.
ScaleValue of Vincent is 3. [human sized]
Body Weight of Vincent is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Vincent is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Vincent is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Vincent is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Vincent is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Vincent is 4. [length in inches]
Breast Size of Vincent is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Vincent is 2. [count of nipples]
Asshole Depth of Vincent is 14. [inches deep for anal fucking]
Asshole Tightness of Vincent is 4. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Vincent is 1. [number of cocks]
Cock Girth of Vincent is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Vincent is 8. [length in inches]
Ball Count of Vincent is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Vincent is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Vincent is 0. [number of cunts]
Cunt Depth of Vincent is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Vincent is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Vincent is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Vincent is false.
PlayerRomanced of Vincent is false.
PlayerFriended of Vincent is false.
PlayerControlled of Vincent is false.
PlayerFucked of Vincent is false.
OralVirgin of Vincent is false.
Virgin of Vincent is true.
AnalVirgin of Vincent is false.
PenileVirgin of Vincent is false.
SexuallyExperienced of Vincent is true.
TwistedCapacity of Vincent is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Vincent is false. [steriles can't knock people up]
MainInfection of Vincent is "Orc Breeder".
Description of Vincent is "[VincentDesc]".
Conversation of Vincent is { "Mew!" }.
Energy of Vincent is 2500.

instead of sniffing Vincent:
	say "     Vincent has a slightly animalistic scent of clean fur.";

to say VincentDesc:
	if debugactive is 1:
		say "     DEBUG -> Loyalty: [Loyalty of Vincent] <- DEBUG[line break]";
	say "     Vincent is a an anthro fox with a wiry frame, wearing a black sleeveless t-shirt with some band's black and white logo printed on the front, as well as a somewhat ragged pair of jeans to cover his slender legs. Being clearly built more for speed than any great amount of strength, he must have found it a challenge to survive in a city turned feral, with all sorts of monstrous and brutish beings battling it out on the streets day by day. He has a sly look to him, with attentive eyes carefully observing his surroundings, but sometimes all the cunning in the world can't save you, as evidenced by the fact that you first met him as a captive of three orc brothers...";
	say "     As Vincent notices your intense gaze upon him, he gives you a two-finger salute, combined with a friendly smirk on his muzzle. The scrappy fox knows to give you an appropriate level of respect to the person who saved him from a future as an orc slave, and who's now giving him refuge.";

instead of conversing the Vincent:
	if FaceName of Player is "Orc Warrior" and player is pure:
		say "     Seeing your orc warrior self approach, Vincent reflexively tenses up a little, but he quickly catches himself and shakes his head to dispel the memory of his capture at the hands of green-skinned brutes. With a slightly embarrassed expression, he blows out the breath he was holding, then puts on a friendly smile as he asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	else if FaceName of Player is "Orc Breeder" and player is pure:
		say "     Seeing you approach, Vincent lets an appreciative gaze wander up and down your body, then asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	else:
		say "     Seeing you approach, Vincent gives you a friendly nod, then asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	say "[VincentTalkMenu]";

to say VincentTalkMenu:
	say "     [bold type]What do you want to talk with Vincent about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about his background";
	now sortorder entry is 1;
	now description entry is "Let him tell you about himself";
	[]
	if "Sexual Rent" is listed in Traits of Vincent or "Ruth & Keitao Story Told" is listed in Traits of Vincent: [people who have that haven't seen his outburst at the start of the sex talk, or repeats]
		choose a blank row in table of fucking options;
		now title entry is "Ask about the time immediately after his transformation";
		now sortorder entry is 2;
		now description entry is "Let him tell you about himself";
	[]
	if "Sex Discussed" is not listed in Traits of Vincent:
		choose a blank row in table of fucking options;
		now title entry is "Bring up sex between the two of you";
		now sortorder entry is 2;
		now description entry is "Broach the topic of getting down and dirty with the fox";
	[]
	if (number of collected people > 3) and "Introduced" is not listed in Traits of Vincent:
		choose a blank row in table of fucking options;
		now title entry is "Introduce him to the other people in the building";
		now sortorder entry is 3;
		now description entry is "The fox has apparently avoided the others so far. Let's fix that";
	[]
	if Orc cum is owned:
		choose a blank row in table of fucking options;
		now title entry is "Offer him some orc cum to drink";
		now sortorder entry is 4;
		now description entry is "Offer Vincent a creamy refreshment";
	[]
	if Vincent_Hangout_Intro is resolved and Loyalty of Vincent > 2:
		choose a blank row in table of fucking options;
		now title entry is "Hang out with Vincent";
		now sortorder entry is 5;
		now description entry is "Relax and take a load off for a little while";
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
				let DoneTalking be false;
				now sextablerun is 1;
				if (nam is "Talk about his background"):
					say "[Vincent_BackgroundTalk1]";
				if (nam is "Ask about the time immediately after his transformation"):
					say "[Vincent_BackgroundTalk2]";
					now DoneTalking is true;
				else if (nam is "Bring up sex between the two of you"):
					say "[VincentSexTalk]";
					now DoneTalking is true;
				else if (nam is "Introduce him to the other people in the building"):
					say "[Vincent_Introduction]";
					now DoneTalking is true;
				else if (nam is "Offer him some orc cum to drink"):
					say "[Vincent_OrcCumOffer]";
					now DoneTalking is true;
				else if (nam is "Hang out with Vincent"):
					say "[VincentHangout]";
					now DoneTalking is true;
				if DoneTalking is false: [looping around for more talk options]
					say "[VincentTalkMenu]";
				else:
					wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the slender fox, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Vincent_BackgroundTalk1: [ask about him]
	say "     As you ask the fox about himself, Vincent blows out a breath and half raises his arms in a shrug. 'You wanna hear more about me? I'm nothing special really... just your average 22 year old guy from northeast in the desert. Hah, my home town is literally called 'wilderness' in Spanish. Nothing much to see there - its all dry, dusty and baking in the heat of the sun. Hell of a place to grow up in, with just a few houses and fuck-all around, I can tell you that. Got so bored off my gourd that I even was a boy-scout for a bunch of years - so yeah, I can tell you which cactus you can eat (most you can't), and to keep the fuck away from scorpions, got the badges to prove it, hah!' With a sardonic chuckle, Vincent mimes a crawling arachnid with one hand while gripping his wrist with the other, raising one finger as a mock [']stinger[']. 'I had one as a pet, you know. Not that I was allowed to keep it in the house, it just kinda... lived under a rock behind our garden. But I fed it and watched it molt and all.'";
	say "     'Anyways I got the fuck out of that town as soon as I could, came to the coast to go to college. Dropped out in the third year, then got a job downtown as a clothing store attendant last Fall.' Rolling his eyes, Vincent grumbles, 'Manning the retail trenches during Black Friday is just the worst! I was slapped, twice, by rabid shoppers! Really made me wish I'd kept some of those venomous creepy crawlies from back home. To throw them at the bitches!' Baring his fangs, he seems to imagine someone running away screaming, then chuckles and turns his attention back to you. 'Anyways, a job's a job, so you learn to smile and bear it... long hours, rude customers, picking up all sorts of stuff they dump on the ground if they don't like it, all that jazz. So yeah, that's what I was doing when this whole thing started. Putting away some of the not quite current fashion trends. Had this vintage, really gaudy vest in my hands, trimmed with red fur. Didn't really think it was real as the label was claiming, but... well, moments later I started transforming into this. Guess I should be thankful that that designer actually went with a red animal, and didn't just color some rodent fuzz red.'";
	WaitLineBreak;
	say "     While slowly shaking his head, Vincent looks down at his hand and arm, then strokes a finger over the fur covering it. 'So thanks to my poor foxy compatriot, not that I ever knew him in life, I guess I'm a real life furry now. Never thought I'd get into that stuff, but then... life isn't actually so bad, as an animal person. Fur's pretty nice, and I dig the tail. Of course, life's still got its upsides and downsides. Less snooty bitches these days, more rampaging orcs. But you gotta do what you have to survive. Things were mostly going my way, until... you know. And then you saved my bacon, so that worked out alright too, eh?' Giving you a friendly smile, the fox winks appreciatively.";
	if "Background Story Told" is not listed in Traits of Vincent:
		say "     [bold type]You get the feeling that showing interest in Vincent's past has elevated you at least a little from being just a random acquaintance in his eyes. [roman type][line break]";
		increase Loyalty of Vincent by 1;
		TraitGain "Background Story Told" for Vincent;
		if debugactive is 1:
			say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";

to say Vincent_BackgroundTalk2:
	say "     The topic you bring up seems to leave a bit of a bad taste in Vincent's mouth, as he draws a grimace, then starts to talk after a little pause. 'Humanity was already a bunch of assholes before this shit went down, and most of what I've seen while living on the streets since didn't change my mind for the better. I mean, one can almost excuse all the feral critters, they don't know any better, but many of those who're still fairly human mentally are... utter gutter scum.' A scowl creeps over Vincent's features, not directed at you, but rather someone else. 'I mean - I was at work when I changed, and two coworkers also got hit, Ruth and Keitao. She turned into some sort of... marsupial? Furry, big boobs. And he became a snake-thing, but with arms and legs. Dangerous one too - Mojave green pit viper! Didn't know then that he was showing his true self, the fork-tongued bastard!'";
	say "     Blowing out his breath, Vincent continues bitterly, 'Damn, I'd had plenty of beers with them both, we went bowling the weekend before. Thought we were friends, all that jazz. So anyways, it was chaos, everyone was afraid, and we ran from the store together, trying to get away from the crowds of people going wild. You know, either panicking and trampling each other or actually going animal, like us. It was a hell of a trip to get to Kei's place, on foot since everyone lost their car keys during transformation. Watching each other's backs until we got there. Crappy neighborhood, but these days you can be happy about having bars on all your windows. And then - then!' Vincent literally growls, 'After I'd just knocked out a damned big anthro armadillo, saving Kei from being mounted and fucked into submission - the fucker paused with his key in hand, in front of his place's door, and told Ruth she'd have to put out for him, if she wanted to stay.'";
	WaitLineBreak;
	say "     Growling under his breath, the fox adds, 'I think I must have stared at him as if he'd grown a second head, not just a forked tongue. The fucker laughed, right in my face! He thanked me for getting him home, then waved a scaly hand to indicate the way we'd just come from, with all the screams, sounds of rape and other noises. Asshole told Ruth, 'Better choose quick, babe. Think you'd make it too long out there, just the two of you?' Almost punched him, then and there, but he hissed at me and showed his dripping fangs. Ruth was in tears when she stepped into the place after Kei opened up, and one slammed door later, I was alone, on the outside. It was hell to make it through the next few days...' Quickly shaking his head to drive way the memories welling up in his mind, Vincent makes himself take a deep breath and unclenches his fists. His shoulders droop as he calms down, staring at the ground for a second, then looking up at you again.";
	say "     'Sorry for such a downer of a story. I think I'll take a walk in the garden for a while. But yeah, see ya later.' That said, he leaves for now, needing a little time alone.";
	TraitGain "Ruth & Keitao Story Told" for Vincent;

to say Vincent_Introduction:
	say "     Stepping up to Vincent, you put a hand on his shoulder and tell him that you want to introduce him to someone. He raises an eyebrow, then gives a little shrug and lets himself be led down to the entrance of the library readily enough. Quickly calling out for people in the building to gather, you ask them to welcome Vincent as a new guest in the Grey Abbey Library. The slender fox himself takes a step forward, clearing his throat and announcing, 'Hey there. I'm Vincent, just a normal guy, er - fox. I've put my camp down up near the back windows, if you wanna talk or something.'";
	LineBreak;
	if (Alexandra is collected) and HP of Alexandra < 50: [70/30]
		say "     Alexandra saunters closer, giving Vincent a thoroughly unimpressed look. A rough chuckle bubbles up from her throat, and she comments, 'Got a shifty look about you, newbie. Always eyeing the possible exits from the corner of your gaze. So, what are you - thief, crook, maybe a hooker?' Momentarily taken aback by her words, Vincent shakes his head and replies, 'Neither. Just... a survivor.' ";
		if "Sexual Rent" is listed in Traits of Vincent:
			say "With a knowing look towards you, Alexandra snorts, 'So that's what we're calling it these days. Fine, as long as you remember that I'm the top bitch around here, besides the boss. You'd better respect me!' That said, the doberwoman then walks away.";
		else:
			say "Letting out a snort, Alexandra adds, 'Fine, as long as you remember that I'm the top bitch around here, besides the boss. You'd better respect me!' That said, the doberwoman then walks away.";
		TraitGain "Alexandra - Tough Bitch" for Vincent;
		TraitGain "Vincent - Newcomer" for Alexandra;
		WaitBreakReactions;
	if Amy is collected:
		say "     Amy is shy as she approaches the slender fox, then holds out her hand for him to shake. 'Nice to meet you, I'm Amy!' she declares after getting over the first moment of hesitation, and Vincent exchanges some friendly words with her before she steps back to what she was doing before again.";
		TraitGain "Amy - New Friend" for Vincent;
		TraitGain "Vincent - New Friend" for Amy;
		WaitBreakReactions;
	if Brutus is collected:
		if DBCaptureQuestVar is 5: [controlled]
			[
			if "Master's Bite" is listed in Traits of demon brute:
				say "     <ask Luneth>";
			else
			]
			if Resolution of Demonic Redemption is 7: [somewhat pacified]
				say "     Brutus steps up to Vincent, who looks with alarm at the broad grin filled with dangerous teeth the looming demon shows to him. 'So, you brought a new fucktoy, eh master? Small one, I could just snap him in half with little effort,' he grunts, and you can see the fox's leg muscles tense as he readies himself for flight. Quickly stepping in before things go off the rails, you give Brutus a standing order to leave the man alone. With a dissatisfied grunt, the demon then walks off.";
			else: [standard hateful captive]
				say "     Brutus steps up to Vincent, who looks with alarm at the broad grin filled with dangerous teeth the looming demon shows to him. 'So, you brought a new fucktoy, eh master? Small one, I could just snap him in half with little effort,' he grunts, and you can see the fox's leg muscles tense as he readies himself for flight. One claw-bearing hand is halfway to Vincent's throat before you shout for Brutus to stop, freezing him mid-motion. Hastily explaining to the fox that this demon is completely under your control and he has nothing to worry about, you wave Brutus away, and he stomps off in frustration.";
			TraitGain "Vincent - Seen him" for Brutus;
			TraitGain "Brutus - Scary" for Vincent;
		else if DBCaptureQuestVar > 5 and DBCaptureQuestVar < 99: [cleansed]
			say "     Brutus steps up to Vincent, who visibly shrinks back from the looming demon. The reaction makes your purple companion frown and look aside, followed by him ducking his head to come eye to eye with Vincent, on the same height. 'I'm sorry. You're right to fear us, but the [master] made me... better.' That said, Brutus turns to leave, only to be stopped when the fox calls out for him to wait, then holds out a hand for the demon to shake. 'Nice to meet you,' he says, working hard on keeping his voice steady as his hand is almost enveloped by Brutus's much larger one. This isn't exactly made easier as your demon companion smiles at the fox, revealing a terrifying number of sharp teeth. 'I'm called Brutus,' he adds, before making his exit, with a little bit of a hopeful expression on his face. As the demon is out of earshot, Vincent blows out a breath and comments, 'Guess one shouldn't go by first appearances, these days, eh?'";
			TraitGain "Brutus - Scary but Friendly" for Vincent;
			TraitGain "Vincent - New Friend" for Brutus;
		WaitBreakReactions;
	if Candy is collected:
		say "     Candy saunters up to Vincent and looks the slender male up and down, then says in a flirty tone, 'Hey there good-looking. I'm Candy!' Vincent chuckles a little as the raccoon shakes his hand, his gaze wandering down to the pretty short skirt the crossdressing male is wearing. 'By the way, I love your tail! Wouldn't mind to give it a good feel sometime, if you're game for hanging out and having a good time..' A smirk spreads along the fox's muzzle, and Vincent responds with smile and a well-received, 'Maybe. We can have a chat later, eh?' Candy almost giggles in glee, then flounces off while giving you a wink.";
		TraitGain "Candy - Very Flirty" for Vincent;
		TraitGain "Vincent - New Target" for Candy;
		WaitBreakReactions;
	if Pink Raccoon is collected: [mindless Candy]
		say "     Your pink raccoon pet comes up to Vincent, looking at him with lustful eyes and going right in to squeeze the fox's bulge. 'Hey!' Vincent calls out, pushing him away. 'Keep your fingers to yourself!' the man tells the mindless raccoon, and you quickly step in to grab your pet by the arm, pulling him back and then shooing him off. A quick explanation that the pink anthro can't really control himself is accepted by Vincent, but he does have a little bit of a suspicious expression on his face as he listens to your words.";
		TraitGain "Dandy - Creepy Perv" for Vincent;
		TraitGain "Vincent - New Target" for Candy;
		WaitBreakReactions;
	if Carl is collected:
		if HP of Carl > 30 and HP of Carl < 40: [beta carl]
			say "     Carl walks up to Vincent, letting his gaze wander up and down over the fox as he approaches, taking in the clothes and tail of the slender male. 'New guy in the pack?' he asks you, indirectly broadcasting that he expects Vincent to be lower than him by not addressing him. As you simply nod, the husky soldier then finally acknowledges Vincent. 'Welcome, brother. I'm Carl.' The red fox takes in the interaction somewhat suspiciously, then says, 'Hi dude. Nice to meet ya, I guess - but just to let you know, I'm not too much into that whole pack bonding thing and all that. Perfectly happy on my own, you know.' Carl looks at him with a somewhat puzzled expression, then leaves after giving you a respectful nod.";
			TraitGain "Carl - Dog Nut" for Vincent;
		else:
			say "     Carl walks up to Vincent, offering a hand for him to shake in greeting. 'Welcome, you can call me Carl. Always good to see more sane survivors making it here.' Accepting the handshake, the fox nods to Carl's camo gear and dog tags, and comments, 'Hm, I heard that the military had something that protects them from transforming... Guess the rumors were wrong then, eh? Sorry to see that you're in the same boat as myself. But hey, at least we got some of the good nanites, eh?' Carl stiffens a little as he hears Vincent's words and the reminder of just how he transformed, then pushes those thoughts aside and replies, 'Yeah, nothing is guaranteed these days. You just have to make the best out of what you're dealt with.' The two of them exchange some more words in a friendly tone, before Carl leaves to get back to his watch-post up at the streetside window.";
			TraitGain "Carl - Soldier Buddy" for Vincent;
		TraitGain "Vincent - New Friend" for Carl;
		WaitBreakReactions;
	if Colleen is collected:
		if SarahSlut < 2: [not transformed, or only a little]
			say "     Keeping her distance as she looks over to Vincent, taking in his slender frame and somewhat ragged clothing, Colleen calls out, 'Hey there! Nice to see that some people can keep their wits about them, even after they transform. Sorry that I'm not coming any closer, but I kinda prefer to stay human myself!' Looking back at her, Vincent gives a mix of a nod and shrug. 'Yeah, I get the point. Wouldn't have chosen to end up like this, if I was asked beforehand, but it's really not so bad. Maybe we can talk sometime, you know - with appropriate distance and all.' The soldier gives him a nod, then turns around and walks away.";
			TraitGain "Vincent - Seen him" for Colleen;
		else if ColleenAlpha is 0:
			say "     Walking right up, Colleen looks at Vincent with her tail wagging behind her back. 'You brought someone new in, boss? Awesome!' The fox seems a little taken aback as she leans in to sniff him, but seems happy enough that she's at least friendly. The two of them talk a little while, before you wave your bitch off for now.";
		[
		else if ColleenAlpha > 0:
			say "..."; [TODO: write this]
		]
		TraitGain "Vincent - New Survivor" for Colleen;
		TraitGain "Colleen - Wary Soldier" for Vincent;
		WaitBreakReactions;
	if David is collected:
		say "     Coming right up and offering his hand in an open, friendly way, David welcomes Vincent with the words, 'I'm Private David Jackson, but just call me David, will ya?' The fox accepts the greeting and responds, 'Nice to meet you. Man, I never imagined it'd be a rare thing to meet another human. Okay, I'm a fox now, but you know what I mean! Guess the rumors were true that the military is making progress in fighting the nanites? But then, what are you doing here?' David coughs, then says, 'It's a bit of a long story, but yeah... and the treatment is still very experimental. It'll be some time yet before any of us can expect rescue. But let's talk more about such things later, okay?' Excusing himself, the soldier leaves for now.";
		TraitGain "Vincent - New Friend" for David;
		TraitGain "David - New Friend" for Vincent;
		WaitBreakReactions;
	if Denise is collected:
		say "     In a flutter of wings, Denise circles the two of you for a second, getting a good look, then lands a little distance off before approaching Vincent. 'Hi there,' she chirps in greeting, fluffing out her feathers a bit before folding the wings behind her back. 'Wow, that's neat! How long did it take for you to figure out how to fly?' the fox asks, and Denise replies, 'It all went pretty quick, really. I just kinda 'knew' suddenly, how to use the wings, as if I had always had them.' The two of them chat a little bit about flying, and music, before the gryphoness says her goodbyes and flies away for now.";
		TraitGain "Vincent - New Friend" for Denise;
		TraitGain "Denise - Awesome Wings" for Vincent;
		WaitBreakReactions;
	if (Elijah is collected) and HP of Elijah > 3:
		if HP of Elijah is 99: [evil]
			say "     Studying Vincent for a moment with a smirk on his face, Elijah asks, 'Bringing in some fresh meat, eh? I can't help but wonder how he earned the privilege of getting a place in here!' With a lewd grin, the winged man then mimes sucking motions and laughs. Pulling a face, Vincent replies in an annoyed tone, 'Of course, the ones looking like angels are always the worst! You can fuck right off, asshole! Stay away from me!' With an arrogant chuckle, the fallen angel turns around and wanders off. Yet before he vanishes between the bookshelves, he throws Vincent another look, coupled with a dark grin.";
			TraitGain "Elijah - Asshole" for Vincent;
		else: [good]
			say "     Walking up to Vincent, Elijah gives the fox a friendly smile and welcomes him with open arms. 'Welcome, and may you find peace here.' Vincent stares at him with wide eyes for a second, then replies, 'You have seen what's going on out there in the city, right? I don't think peace is an option right now, you know!' Elijah's expression falls at that statement, and he blows out his breath. 'I know, yes. But we can make the best out of the situation and believe that things will improve.' Shrugging, Vincent replies, 'Never was that much into blind faith, I'm afraid.' 'As you prefer. But if you want to talk, about anything, know that I'll be there for you.' That said, the angel goes back to the door leading down into the bunker.";
			TraitGain "Elijah - Church Nut" for Vincent;
		TraitGain "Vincent - Rejection" for Elijah;
		WaitBreakReactions;
	if Eric is collected and Eric is not slutstored:
		if HP of Eric > 0 and HP of Eric < 21:
			say "     Walking up to Vincent, Eric gives a cautiously friendly smile half-raises his hand before hesitating. The anthro fox looks at him and says, 'Relax, I'm just a normal guy. No need to be on high alert around little old me.' Holding out his own hand in greeting, the two of them shake on it, and Eric visibly relaxes. 'Nice to meet you, I'm Eric. Always good to see more sane survivors. With everything going on, and all...' As he says this, the college student rubs his bandaged arm, then stops as he realizes what he's doing. 'I - uhm, I hope to talk to you later,' he adds quickly, giving Vincent a friendly smile before he steps back from meeting the newcomer.";
			TraitGain "Vincent - New Friend" for Eric;
			TraitGain "Eric - New Friend" for Vincent;
		else if HP of Eric > 20 and HP of Eric < 50: [horsecock/satyrcock/orccock]
			say "     Walking up to Vincent, Eric gives a friendly smile and shakes the anthro fox's paw-hand. 'Hi dude, I'm Eric. Love the shirt! I've got all of their CDs!' Eric says, indicating the band t-shirt Vincent is wearing. Then his expression drops a little, and he distractedly rubs his bandaged arm as he adds, 'Not that that's worth much. They could be on the moon and not be any easier to get to, with hordes of horny critters between here and the Tenvale campus. And not even on the college grounds is really safe.' Rolling his eyes, the anthro gives him an agreeing nod. 'Tell me about it! The things I've had to do just to make it in the streets, ... ah, but enough about that!' The two young men chat a little while longer, before Eric makes an exit with the words, 'Later, V.'";
			TraitGain "Vincent - New Friend" for Eric;
			TraitGain "Eric - New Friend" for Vincent;
		else if HP of Eric is 99:
			say "     After looking over with a moderately frightened look on his face, your little sex slave Eric ducks out of sight. You can't quite tell if he was looking at Vincent or yourself. Maybe both, as he could be expecting this new male to join you in demanding sex from him. 'Not very welcoming, that guy. No worries, I'll keep my distance too,' the fox comments, nodding over to where the cuntboy vanished.";
			TraitGain "Vincent - New Threat" for Eric;
			TraitGain "Eric - Avoid" for Vincent;
		WaitBreakReactions;
	if Fang is collected:
		say "     Fang pads closer, sniffing the air and looking at Vincent, with [PosAdj of Fang] tail raised at attention. The anthro fox tenses a little, seemingly ready to run if needed, but keeps his standing position studying the canine while avoiding direct eye contact. Approaching, the feral wolf then pushes [PosAdj of Fang] muzzle right between Vincent's legs, sniffing his crotch, then soon his rear end after circling around. The newcomer endures the inspection for a moment, until Fang comes back to the front, looking up and giving a satisfied bark, tail starting to wag. At that point, Vincent reaches out slowly to stroke the wolf's side, which Fang accepts happily enough for a little while, before trotting away. 'Thank god I learned to read animals, more or less, when I was a scout. With all those ferals around, the streets are treacherous if you don't know if they just want to check you out, or jump and hump you.'";
		TraitGain "Fang - Feral Wolf" for Fang;
		TraitGain "Vincent - Newcomer Male" for Fang;
		WaitBreakReactions;
	if HP of Fiona > 4:
		say "     Seemingly appearing from a dark corner in which she was hiding, Fiona stalks closer on all fours, then brushes up against Vincent's legs and purrs. He lets his gaze wander over the anthro female, not displeased at the show of her naked body and feminine curves. You make out a little twitch in his pants, indicating a modicum of arousal, but at the same time he keeps his hands to himself, not falling for the temptation of trying to touch her. The feline seems a little displeased at that, moving a few feet away from Vincent and then throwing herself onto the ground, rolling over to expose her belly and pussy to him. As there is no reaction beyond him simply looking to checking her out, Fiona's tail flicks left and right with jerky movements betraying her annoyance, after which the tease of a feline gets up and stalks into the shadows. 'One thing I learned long before all of this: Never stick your dick in crazy bitches, no matter how tempting, hah!'";
		TraitGain "Fiona - Crazy Cat" for Vincent;
		TraitGain "Vincent - Seen him" for Fiona;
		WaitBreakReactions;
	if Gabriel is collected:
		say "     Curious about the anthro fox, Gabriel comes closer and says hello. At the same time, Vincent takes in the angel's naked body, collar and the wrist- and ankle-cuffs, his eyebrows rising as he sees the sexy presentation. 'Someone's quite... unreserved,' the fox can't help himself but comment, which results in the winged man looking down at himself, then submissively explaining, '[Master] showed me what I was made for, and that I should always be ready.' He stands there, not shying away from Vincent's eyes wandering over his body, until you give a little wave of your hand and shoo him away. As your sex pet is out of earshot, Vincent gives you a fairly wary glance and comments, 'I'll assume this is some kinky arrangement between the two of you, and that you're not planning on training everyone you meet up to act like that. Isn't that right?!' He accepts the innocent smile you give him, but you feel that the fox just sorted you into a higher category for his suspicions.";
		TraitGain "Player - Suspicious" for Vincent;
		TraitGain "Gabriel - Sex Pet" for Vincent;
		TraitGain "Vincent - Master's Friend" for Gabriel;
		WaitBreakReactions;
	if Hayato is collected:
		say "     As the towering shape of Hayato comes into view and the red oni takes a step towards the fox, Vincent shrinks back, his gaze flicking left and right to choose the best route of escape. He'd have started running if you hadn't asked him to wait, catching the man by his arm and telling him he's safe in the library. 'Are you kidding?! I've seen one of those things-' he responds, waving his free hand around to point at Hayato and then pausing, as the red-skinned man looks visibly distraught at the reaction to his appearance. 'My apologies! I - I should leave,' the oni says, then turns around. 'Wait!' Vincent calls after him just in time before Hayato ducks out of sight, making the oni look over his shoulder. 'I'm sorry. Guess I'll have to come to terms with that someone looking like you isn't just something from my nightmares, but can also be an okay person. I'll try, but it'll be hard.' Giving him a sad nod, Hayato waves and then steps behind a bookshelf.";
		TraitGain "Hayato - Scary Giant" for Vincent;
		TraitGain "Vincent - Source of Shame" for Hayato;
		WaitBreakReactions;
	if Helen is collected:
		say "     Dashing towards Vincent on all fours, Helen goes in to sniff him, then licks his hand as he leans down to reach for her. 'Is she alright, in the head?' the anthro fox asks somewhat warily at her fairly nonhuman behavior, at which point you explain that Helen is a transformed normal dog [if Lust of Helen > 3]but you gave her something to help her become closer to fully human[end if], which Vincent takes in with raised eyebrows, looking at her in a new light. 'Crazy, what things can happen these days,' he comments about Helen, then pats her head slowly, like one would a dog. She accepts this quite happily, even leaning into his touch. [if Lust of Helen > 3]'New friend?' she suddenly asks, followed by a happy bark as Vincent replies, 'Why not, I like well-trained dogs.' [end if]Afterwards, Helen happily runs off.";
		TraitGain "Helen - Human Shaped Dog" for Vincent;
		TraitGain "Vincent - Master's Friend" for Helen;
		WaitBreakReactions;
	if Hobo is collected:
		say "     Hobo rushes up to greet Vincent with his tongue hanging out of the side of his mouth and a wagging tail behind his back. Leaning down, the anthro fox lets him sniff his hand, then proceeds to give the dog's ears a good scratch. 'Pretty friendly, aren't you?' Vincent comments as he pets the dog, with Hobo giving a friendly bark as if he understood and wanted to reply. 'And smart too! You're a very good boy!' the red fox says with a warm chuckle. Having received his pets, Hobo eventually trots off again, then lies down to doze in a comfortable spot.";
		TraitGain "Hobo - Good Dog" for Vincent;
		TraitGain "Vincent - Master's Friend" for Hobo;
		WaitBreakReactions;
	if Honey is collected:
		say "     Honey buzzes through the air stopping just inches away from Vincent's face and inspecting him before saying in an avalanche of words, 'You look friendly! Wanna be friends? And you really are friendly, right?! I'm Honey!' With a chuckle under his breath, Vincent responds, 'Sure, I'm plenty friendly. Nice to meet you.' Honey squeals happily at making a new friend, then waves at Vincent and flies away, too wound up to hold a longer conversation right now.";
		TraitGain "Hobo - Good Dog" for Vincent;
		TraitGain "Vincent - Master's Friend" for Honey;
		WaitBreakReactions;
	if Korvin is collected:
		if gsd_pet >= 20 and gsd_pet < 60:	[Subby Korvin]
			say "     Leaning against the end of a bookshelf and keeping his distance, you see Korvin raising a hand as if to hide his pink collar, his gaze focused on Vincent. The German shepherd shows mixed expressions on his face, something between a confident sneer at the less muscular male, and shame at having become your subby pet. Clearing your throat and shooting him a look, Korvin sights and abandons the attempt at remaining to the sidelines, revealing his submissiveness to you fully. Vincent notices the girly collar right away, clashing with the muscular and scarred canine's look, and he only barely suppresses a chuckle at the sight. 'Hey there,' he greets Korvin, offering a hand and the two of them shake as they introduce themselves. 'Glad to see we got some strong men in the place, who can defend the building if things get tough,' the fox tells your canine pet, intentionally not looking at the collar as he strokes Korvin's ego. 'Yeah, totally!' the dog replies, his spirits rising at the friendly words. As the canine leaves a moment later, tail slightly wagging behind his back, you can see a faint smirk on Vincent's muzzle.";
			TraitGain "Korvin - Influenceable" for Vincent;
			TraitGain "Vincent - Nice Guy" for Korvin;
		else: [no collar or black collar]
			say "     Walking up to Vincent with a confident stride, Korvin puffs out his muscular chest a little and gives the fox a gruff nod. 'Newbie coming in, eh? Not much to you, is there?!' Clearly, the German shepherd isn't too impressed by Vincent's physique. Not quite rolling his eyes before putting on a more neutral expression, the fox studies Korvin for a second, then gives the anthro dog a slight smile. 'I've got other talents, believe me. And if something big and bad comes knocking on the front door, I'll know to come get you, right?' As he says this, the slender man leans in to Korvin and puts a hand on the dog's upper arm, giving it an admiring squeeze and stroking along Korvin's furred limb before pulling his hand back. 'Yeah, that's right!' Korvin responds, just eating up the praise. As the canine leaves a moment later, tail wagging behind his back, you can see a faint smirk on Vincent's muzzle. No wonder he wasn't afraid of the brash dog, with how easily he managed to wrap him around his finger.";
			TraitGain "Korvin - Influenceable" for Vincent;
			TraitGain "Vincent - Weakling" for Korvin;
		WaitBreakReactions;
	if Klauz is collected:
		say "     Klauz stays sitting on a nearby sofa for a long while, casually licking a paw and stroking it over his head-fur while throwing a sidelong glance or two in the direction of the slender fox. Then eventually, he gets up and saunters closer, sniffing the air as he draws circles around Vincent, which ends up with him brushing up against the anthro's legs. As he rubs his fur against Vincent, busily spreading his scent all over the man, the felinoid purrs like an idling motor, drawing Vincent to lean down and pet him. As he does so, the fox's muzzle twitches when he catches a hint of the cat's scent, and he straightens his back quickly, getting his muzzle out of the musk cloud around the large feline. 'Sure is friendly, isn't he?' Vincent says with a little bit of a strain in his voice as he continues to pet Klauz, not letting it be obvious that he caught onto the felinoid's intentions. Klauz seems content to leave it at just that for now, enjoying the petting before letting out an amused churr and stalking away.";
		TraitGain "Klauz - Danger" for Vincent;
		TraitGain "Vincent - Target" for Klauz;
		WaitBreakReactions;
	if Nadia is collected:
		say "     Nadia gives Vincent a friendly smile and comes right up to him, freely offering a hand as she introduces herself. 'It's always so neat to see people with wings. Just being able to fly must be amazing!' he gushes in admiration over her colorful wings, which makes Nadia giggle and respond happily. The fox and bird-woman make a little friendly small-talk, before the two of them say their goodbyes for now, saying they'll hang out later.";
		TraitGain "Nadia - New Friend" for Vincent;
		TraitGain "Vincent - New Friend" for Nadia;
		WaitBreakReactions;
	if Rane is collected:
		say "     Sauntering up to the anthro fox with a smirk on his face, Rane stands back a little as he sees Vincent tense up when seeing his towering stature. Raising his hands on a calming gesture, the tall blue oni says, 'Relax, my dude. I'm peaceful, promise! Name's Rane. What brings a dashing fox like you to this place? Love shirt by the way. Good band!' Vincent is still a bit wary, but the personable and friendly approach of the blue oni finds fertile ground before much longer, and the two shake in greeting soon after, with the fox's hand almost completely enveloped by Rane's much larger one. The oni gives him a flirty wink as he says, 'See ya later, good-looking!' then strolls off.";
		TraitGain "Rane - Flirty" for Vincent;
		TraitGain "Vincent - Target" for Rane;
		WaitBreakReactions;
	if Ryousei is collected:
		say "     Ryousei walks up to Vincent with measured steps, his gaze flicking down as if to check on how many tails the fox has behind his back. He seems almost relieved that there is only the one, then closes the last of the distance and gives the slender fox a cordial nod, respectful but fairly shallow. 'Welcome, young kitsune. How fitting to meet one of your kind in this place of learning,' the tiger says, raising a clawed hand to indicate the rows of books all around you. Then Ryousei adds, 'No doubt you already know how treacherous this world can be, so you will need all your cunning to outlast its dangers. Feel free to speak to me if you require assistance in a task that would benefit all of our group, but be aware that I have little patience for tricks or pranks.' Somewhat wide-eyed at the anthro cat's mannerisms and turns of phrase, Vincent blinks and nods to Ryousei, answering, 'Eeeh, yeah. Sure thing. I'll keep that in mind.' Smiling, the tiger nods to him and leaves. 'He's not from around here, is he?' Vincent asks you once the otherworldly cat is out of earshot, and you explain a little bit about Ryousei.";
		TraitGain "Ryousei - Potential Sensei" for Vincent;
		TraitGain "Vincent - Young Kitsune" for Ryousei;
		WaitBreakReactions;
	if (Sarah is collected) and SarahCured > 3:
		say "     Sarah confidently strides up to Vincent and offers her hand in greeting. 'Welcome, I'm Sarah. It's good to see another sane person joining us here in the library. I'm sure if we hold together we'll make it out of this too! Oh, and I'm a medical student, so... if you need any help, let me know.' The anthro fox shakes her hand-paw, introducing himself in turn, and the two of them chat for a little while before saying their goodbyes for now.";
		TraitGain "Sarah - Doc" for Vincent;
		TraitGain "Vincent - New Friend" for Sarah;
		WaitBreakReactions;
	if Sven is collected:
		if HP of Sven >= 30 and HP of Sven < 50:	[self-confident Sven]
			say "     Coming up to the slender fox, Sven smiles at Vincent and says, 'Hallo! I hope we can be friends, despite the cat-dog thing, eh? Not that I think you're a dog, but... isn't a fox kinda similar? Anyways, nice to meet you, haha.' Bravely sticking out his hand in greeting, he shakes with Vincent, who chuckles at Sven's words. 'No worries, it's all fine. I'm still just a normal dude, despite the exterior packaging. Not gonna go wild on ya, just because you're a catguy.' Smiling, the snow leopard adds, 'By the way, I'm from Norway and an exchange student.' The two of them chat for a little while before Sven makes an exit, going back to what he was doing before.";
			TraitGain "Sven - Young Guy" for Vincent;
			TraitGain "Vincent - Young Guy" for Sven;
		else if HP of Sven > 7 and HP of Sven < 11: [collared sex pet]
			say "     Stepping out from behind a tall bookshelf, Sven saunters over towards Vincent and yourself, swinging his hips a little as he does so. 'Hallo foxy. I'm Sven,' he says in a flirtatious tone as he reaches Vincent, letting his gaze wander down to the slender man's bulge. 'Quite direct, aren't you?' Vincent comments, not disliking the snow leopard's attention, but with his attention being on Sven's collar, eyes flicking over to you, then back to the sign of your ownership over the exchange student. You casually wave Sven away for now, wanting to avoid possible questions. As your sex pet moves out of earshot, Vincent gives you a fairly wary glance and comments, 'I'll assume this is some kinky arrangement between the two of you, and that you're not planning on training everyone you meet up to act like that. Isn't that right?!' He accepts the innocent smile you give him, but you feel that the fox just sorted you into a higher category for his suspicions.";
			TraitGain "Player - Suspicious" for Vincent;
			TraitGain "Sven - Sex Pet" for Vincent;
			TraitGain "Vincent - Flirt Target" for Sven;
		else:
			say "     Shily stepping out from behind a tall bookshelf, Sven keeps his extra long and thick tail raised before himself, partly hiding behind it. 'Hallo! Du er sot,' he says quietly, smiling at Vincent. The anthro fox looks somewhat nonplussed at the words, making Sven tremble in embarrassment at having forgotten to speak English. He seems almost ready to slink away in shame, only for Vincent to step up and hold out his hand in greeting. 'Hiho, I'm Vincent.' Accepting the offer and shaking hands, Sven replies, 'S-sorry for forgetting my English words. I'm Sven. I'm from Norway and an exchange student.' Vincent smiles at him, doing his best to calm the nervous cat down, and the two have little chat before Sven makes an exit, going back to what he was doing before.";
			TraitGain "Sven - Shy Dude" for Vincent;
			TraitGain "Vincent - Young Guy" for Sven;
		WaitBreakReactions;
	if Tehuantl is collected:
		if Tehuantl is male:
			say "     Tehuantl steps into view from between the bookshelves, bearing his shield and Aztec sword as he walks up to the slender fox. The jaguar warrior comes to stand before him, sizing up Vincent for a short moment before giving a slight shake of his head. Seems he's unimpressed with the young man's physique. 'A new camp follower, I see. You can call me Tehuantl. Know that I am the [master]'s warslave, and you will give me the appropriate respect.' Having said what he wanted, the anthro feline turns and strides away, leaving Vincent looking after him with a curious expression. 'What the fuck was that? Is he all there? Almost seems like he's a cosplayer who forgot anything except his role...' You quickly explain where and how you met Tehuantl, and that he genuinely believes to be an authentic Aztec warrior. 'Okay, I'll keep an eye out. Hope he won't go all loopy and demand weird stuff. I mean, he's hot alright, but one should never stick their dick in crazy, you know!'";
			TraitGain "Tehuantl - Warrior Dude" for Vincent;
			TraitGain "Vincent - Student" for Tehuantl;
		else:
			say "     Tehuantl steps into view from between the bookshelves, walking up to the anthro fox with her hips swaying side to side. She smiles at Vincent, holding her upper body in a pose that exposes her breasts quite nicely. 'Hello young man, you can call me Tehuantl,' the feline says in an enticing tone, and she is clearly amused as he can't help but glance at her tits, only catching himself to look back up to her face after a second or two. 'Hope you'll stay for a while and we'll see each other,' she says finally, stroking a finger along the side of his cheek before making her exit soon after.";
			TraitGain "Tehuantl - Sexy Bitch" for Vincent;
			TraitGain "Vincent - Flirting Target" for Tehuantl;
		WaitBreakReactions;
	if Urik is collected:
		say "     As Urik comes into sight, Vincent's eyes go almost comically wide, and he immediately starts looking left and right for the nearest exit. 'What the fuck is an orc doing here?!' the anthro shouts at you, only to stare in disbelief as you tell him to calm down, then wave at Urik to come over. The muscle-packed green brute steps up to tower over Vincent, clearly well-amused by the other man's reaction to his mere presence. 'Bit scrawny for my taste, but he could be fun to chase down anyways,' is the orc's first comment, followed by a roaring laugh as Vincent shrinks back and bumps against you. 'Just kidding, dude! I don't mess around here in [UrikPlayerAddress]'s place, that's for sure!' Urik adds with a respectful nod to you. ";
		if "Private Breeder" is not listed in Traits of Urik and "Selective Breeding" is not listed in Traits of Urik:
			say "Placing a hand on his crotch, the orc winks at Vincent, then says, 'So it'll have to be all 'consentual-like' if you wanna get a taste of this bad boy. I'll be waiting, foxy.' ";
		say "Gulping as he watches the huge orc turn around and stroll off, Vincent turns to you. 'Are you sure it's... safe, to have that guy in here? I mean, I know you took down the other guys, but he's a fucking tank!' As you confidently tell him that Urik'll be on his best behavior, the fox relaxes a little bit, but remains wary about being so close to an orc.";
		TraitGain "Urik - Scary Orc" for Vincent;
		TraitGain "Vincent - Beanpole" for Urik;
		WaitBreakReactions;
	if Xerxes is collected:
		say "     Dashing towards Vincent on all fours, Xerxes goes in to sniff him, then licks his hand as he leans down to reach for him. 'Is he alright, in the head?' the anthro fox asks somewhat warily at his fairly nonhuman behavior, at which point you explain that Xerxes is a transformed normal dog [if Lust of Xerxes > 3]but you gave him something to help him become closer to fully human[end if], which Vincent takes in with raised eyebrows, looking at the other male in a new light. 'Crazy, what things can happen these days,' he comments about Xerxes, then pats his head slowly, like one would a dog. He accepts this quite happily, even leaning into his touch. [if Lust of Xerxes > 3]'New friend?' he suddenly asks, followed by a happy bark as Vincent replies, 'Why not, I like well-trained dogs.' [end if]Afterwards, Xerxes happily runs off.";
		WaitBreakReactions;
		TraitGain "Xerxes - Human Shaped Dog" for Vincent;
		TraitGain "Vincent - Master's Friend" for Xerxes;
		WaitBreakReactions;
	now IntroReactionCounter is 0; [reset]
	TraitGain "Introduced" for Vincent;

to say VincentSexTalk:
	say "     As you approach and bring up sex, Vincent snorts and a somewhat mocking chuckle bubbles up from his chest. 'I'd been wondering when the other shoe would drop. No one just invites random people into their place during the apocalypse! Let me guess: I better put out, or out the door I go? You just had to wait till I'd picked out a comfy sofa and knew what I'd lose?!' Crossing his arms in front of his chest, the anthro throws a glance at the piece of furniture he claimed as a bed, then lets out a sigh. Seems he's contemplating if he should reject the demand he's expecting from you, or go along with it. You can't help but wonder just when and where he got his rest before, if trading sex for a place to sleep isn't out of the question for him. It was likely nowhere pleasant, and he'd always had to scramble when some creature or looter came along. 'Hrrumph.' The sound of Vincent clearing his throat draws you out of your thoughts, and you focus back on the fox himself, standing before you with a serious expression, one eyebrow raised as he waits for your answer.";
	LineBreak;
	say "     [bold type]Just what do you want to say to Victor?[roman type][line break]";
	let Vincent_SexTalk_Choices be a list of text;
	add "Fuck no, he's got you completely wrong! Sexual blackmail?! Hell no! You just wanted to extend an offer of some relief..." to Vincent_SexTalk_Choices;
	add "You'd have said it in somewhat nicer words, but... a little 'appreciation' for you would endear him as a long-term guest." to Vincent_SexTalk_Choices;
	add "He'd better forget the word 'No' even exists when you ask him to do something from now on. You'll have him any way you please, any time you want." to Vincent_SexTalk_Choices;
	let Vincent_SexTalk_Choice be what the player chooses from Vincent_SexTalk_Choices;
	if Vincent_SexTalk_Choice is:
		-- "Fuck no, he's got you completely wrong! Sexual blackmail?! Hell no! You just wanted to extend an offer of some relief...":
			LineBreak;
			say "     As you angrily react to his accusation of wanting to exploit him, Vincent seems momentarily baffled, taking a step back and raising his hands in a pacifying gesture. 'Wow, calm down! I - uhm, I guess... I might have misjudged you? Sorry, but humanity was already a bunch of assholes before this shit went down, and most of what I've seen while living on the streets since didn't change my mind for the better. I mean, one can almost excuse all the feral critters, they don't know any better, but many of those who're still fairly human mentally are... utter gutter scum.' A scowl creeps over Vincent's features, not directed at you, but rather someone else. 'I mean - I was at work when I changed, and two coworkers also got hit, Ruth and Keitao. She turned into some sort of... marsupial? Furry, big boobs. And he became a snake-thing, but with arms and legs. Dangerous one too - Mojave green pit viper! Didn't know then that he was showing his true self, the fork-tongued bastard!'";
			say "     Blowing out his breath, Vincent continues bitterly, 'Damn, I'd had plenty of beers with them both, we went bowling the weekend before. Thought we were friends, all that jazz. So anyways, it was chaos, everyone was afraid, and we ran from the store together, trying to get away from the crowds of people going wild. You know, either panicking and trampling each other or actually going animal, like us. It was a hell of a trip to get to Kei's place, on foot since everyone lost their car keys during transformation. Watching each other's backs until we got there. Crappy neighborhood, but these days you can be happy about having bars on all your windows. And then - then!' Vincent literally growls, 'After I'd just knocked out a damned big anthro armadillo, saving Kei from being mounted and fucked into submission - the fucker paused with his key in hand, in front of his place's door, and told Ruth she'd have to put out for him, if she wanted to stay.'";
			WaitLineBreak;
			say "     Growling under his breath, the fox adds, 'I think I must have stared at him as if he'd grown a second head, not just a forked tongue. The fucker laughed, right in my face! He thanked me for getting him home, then waved a scaly hand to indicate the way we'd just come from, with all the screams, sounds of rape and other noises. Asshole told Ruth, 'Better choose quick, babe. Think you'd make it too long out there, just the two of you?' Almost punched him, then and there, but he hissed at me and showed his dripping fangs. Ruth was in tears when she stepped into the place after Kei opened up, and one slammed door later, I was alone, on the outside. It was hell to make it through the next few days...' Quickly shaking his head to drive way the memories welling up in his mind, Vincent makes himself take a deep breath and unclenches his fists. His shoulders droop as he calms down, staring at the ground for a second, then looking up at you again.";
			say "     'Sorry for bringing up that fucked-up story. I just - I apologize for thinking you'd... you know. All of this hasn't exactly been easy for me, and I guess I fell into a certain frame of mind. Can't be disappointed at least, if you always expect the worst from people.' He looks aside, scratching the back of his neck in embarrassment. 'So, yeah. Bet you must think I'm a total ass, but... if you still wanted to do stuff, that'd be fine by me. Would be kinda refreshing just to do it because we felt like it, instead of as a transaction.' As you raise your eyebrows at those last words, Vincent shrugs unapologetically. 'Told ya, surviving's hard out there. I'm good with my tongue, so I always had something to trade, when I needed to. Better than going hungry, that's for sure.' He presses his lips together, then quickly adds, 'Anyways, I think I'll take a walk in the garden for a while. But yeah, see ya later.' That said, he leaves for now, needing a little time alone.";
			say "     [bold type]Pointedly rejecting Vincent's expectation of sexual blackmail has raised your status in his eyes a little. [roman type][line break]";
			increase Loyalty of Vincent by 1;
			if debugactive is 1:
				say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
			TraitGain "Ruth & Keitao Story Told" for Vincent;
			TraitGain "Sextalk Loyalty Bonus Given" for Vincent; [to make sure the player only gets one point, retrofitted in the postimport rule, or in the scene as planned]
		-- "You'd have said it in somewhat nicer words, but... a little 'appreciation' for you would endear him as a long-term guest.":
			LineBreak;
			say "     'As I said, I expected as much. Nothing's free, except death, eh? But yeah, you're right - a safe place to get some shut-eye is worth a lot, these days. Laying down with one eye open is sure getting old fast, I can tell you that!' Scratching the underside of his muzzle, he thinks for a few seconds, then nods to you. 'Okay, fine. I'll play ball. But there have to be ground rules - just let me do my thing, and I'll give you what you need. Don't grab me or try to force anything, understand? I'll bite you if you try! Understood?' As you agree to his conditions, the fox pulls off his sleeveless shirt, throwing it to land on his sofa, then walking up to you and sinking into a crouch. Seems he's ready to pay his rent, right here and now!";
			TraitGain "Sexual Rent" for Vincent;
			say "[VincentOral1]";
		-- "He'd better forget the word 'No' even exists when you ask him to do something from now on. You'll have him any way you please, any time you want.":
			LineBreak;
			say "     The fox's lips pull up to reveal his sharp, predatory teeth in a sneer, and Vincent growls, 'Fuck this place, then! And fuck you for making me almost think that you weren't an asshole!' That said, the slender anthro takes a quick dash to the side, jumping right over the railing of the upper floor and dropping down into the top of one of the tall bookshelves on the lower floor. The shelf sways a little from the impact, and various books tumble to the ground as Vincent climbs down on one side, using the boards as an improvised ladder. Then he vanishes from your line of sight, running underneath where you're standing to reach the back door of the building. You doubt you'll see him again.";
			now Vincent is nowhere; [gone forever]
	TraitGain "Sex Discussed" for Vincent; [fine with sex from now on, either because he talked things out with the player, or because he's paying his "rent"]

to say Vincent_OrcCumOffer:
	if "Orc Cum Aware" is not listed in Traits of Vincent:
		if Loyalty of Vincent < 2:
			say "     Raising one eyebrow in a baffled expression as you make the offer, Vincent glances at the bottle in your hand, eyes going wide as he sees the label on it. Half-raising his hands in a defensive gesture, he then rapidly shakes his head. 'You serious? I mean, why the hell do you have a full bottle of the stuff, like it's your favorite milkshake or something like that?! I'm good, thank you. There's plenty of normal things to drink, you know!' He seems a bit weirded out by your choice of refreshments, and excuses himself to take a walk in the garden to get some fresh air.";
		else:
			say "     Raising one eyebrow in a baffled expression as you make the offer, Vincent glances at the bottle in your hand, and the label on it. 'You serious? I mean, why the hell do you have a full bottle of the stuff, like it's your favorite milkshake or something like that?!' He pulls a bit of a grimace, looking at your face as you tell him it tastes pretty great. The fox's eyebrows draw together, doubt written large over his face, and he seems ready to reject your offer outright. But then, it seems like your efforts to build some trust with him have an effect, as he blows out his breath and says with a roll of his eyes, 'Fine, if you're so gung-ho about it, I'll have a taste. Just a little one.' Smiling, you uncap your bottle of orc cum, then pour a small amount of the thick liquid into the plastic cap and hold it out to Vincent. Dipping a fingertip into the cum, he brings it to his face and has a sniff, then shrugs and puts it between his lips.";
			say "     As the white goop touches the fox's tongue, his eyes go wide at its pleasant, stimulating bouquet. 'This tastes... pretty nice,' he says, not quite hiding the slight pause he needed to pick some less enthusiastic words than what first came to mind. Swallowing his first taste of orc cum and wanting more, he plucks the bottle cap from your fingers, sticking his tongue into it and licking up every last drop of the creamy seed that you poured out. His gaze flicks to the open bottle in your hand, muzzle opening as if he's about to ask for another dose. Coming back to his senses, he pauses, blinking away the hungry expression that filled his eyes for a second. With a shake of his head, Vincent exclaims, 'Fucking hell, what is this stuff? Tastes amazing but... it's like a drug or something! Man, if I drank down that whole bottle, I think I might be zonked out and rolling drunkenly on the floor like an alcoholic on payday!'";
			LineBreak;
			say "     [bold type]Realizing that you offered him a potent drug as a 'drink', Vincent's eyebrows draw together in suspicion. What do you want to say or do now?[roman type][line break]";
			let Vincent_OrcCumBottle_Choices be a list of text;
			add "It's great stuff, and you love drinking it yourself! Then chug down the contents of the bottle." to Vincent_OrcCumBottle_Choices;
			add "He should chill out a bit, and you just wanted to offer him some good stuff so he could ride out the high." to Vincent_OrcCumBottle_Choices;
			add "Just force him to drink the cum! He'll be far mor pliable once you got him hooked on the stuff!" to Vincent_OrcCumBottle_Choices;
			let Vincent_OrcCumBottle_Choice be what the player chooses from Vincent_OrcCumBottle_Choices;
			if Vincent_OrcCumBottle_Choice is:
				-- "It's great stuff, and you love drinking it yourself! Then chug down the contents of the bottle.":
					LineBreak;
					try using orc cum;
					say "     As you chug down gulp after gulp of the rich, flavorful orc cum, a mellow feeling of warmth and pleasure fills you. With a drunken grin on your face, you tell Vincent that he really missed out on a treat, and can't help yourself, planting a spontaneous kiss on his lips. Pulling back in surprise, the fox licks off a bit of wetness you left behind, getting another little dose of orc cum into his system. His gaze is drawn to the now empty bottle, followed by him biting his lip. 'I - I think I'm good, but thanks for the offer. Why don't you just... keep your stash for your own use, okay?'";
					TraitGain "Orc Cum Aware" for Vincent;
					TraitGain "Player Orc Cum User" for Vincent;
					increase Stamina of Vincent by 1; [small orc cum exposure]
				-- "He should chill out a bit, and you just wanted to offer him some good stuff so he could ride out the high.":
					LineBreak;
					say "     Rolling his eyes, Vincent grumbles, 'If and when I use any drugs is MY choice, and I always want to know what the hell it is beforehand! Really not cool that you've tried springing this on me as a surprise! Keep that stuff to yourself in the future! I'm out of here to get some fresh air!' With a displeased grunt, the fox stalks off.";
					say "     [bold type]Clearly, Vincent trusts you less now. [roman type][line break]";
					decrease Loyalty of Vincent by 1;
					if debugactive is 1:
						say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
					TraitGain "Orc Cum Aware" for Vincent;
					TraitGain "Drugging Attempt" for Vincent;
				-- "Just force him to drink the cum! He'll be far mor pliable once you got him hooked on the stuff!":
					LineBreak;
					say "     Raising the bottle, you make a grab for the fox, trying to hook your hand behind the back of his neck to keep him under control. Instead, Vincent whips his muzzle around to clamp a set of sharp, predatory teeth on your hand, then jumps back out of reach as you howl in pain. 'Fuck this place! I knew this was too good to be true! And fuck you for making me think that you weren't an asshole!' That said, the slender anthro takes a quick dash to the side, jumping right over the railing of the upper floor and dropping down into the top of one of the tall bookshelves on the lower floor. The shelf sways a little from the impact, and various books tumble to the ground as Vincent climbs down on one side, using the boards as an improvised ladder. Then he vanishes from your line of sight, running underneath where you're standing to reach the back door of the building. You doubt you'll see him again.";
					now Vincent is nowhere; [gone forever]
	else: [he knows what orc cum does and had a dose]
		if "Drugging Attempt" is listed in Traits of Vincent: [see above]
			say "     As you approach him again with orc cum, Vincent's expression hardens and he shows you his teeth. 'Back again with that shit? I told you no, and you're not exactly making a good impression, touting that bottle around like its free samples of heroin!' With a displeased grunt, the fox stalks off.";
			say "     [bold type]Clearly, Vincent trusts you less now. [roman type][line break]";
			decrease Loyalty of Vincent by 1;
			if debugactive is 1:
				say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
		else if "Player Orc Cum User" is listed in Traits of Vincent: [see above]
			[
			if Loyalty of Vincent > 10: [TODO: adapt value as needed when the content is written]
				say "Talk about actually consuming a whole bottle of orc cum";
			else: [nope, he's not ready]
			]
			if "Hangout_OrcCum_Shared" is not listed in Traits of Vincent or Loyalty of Vincent < 3:
				say "     Glancing at the bottle of orc cum, Vincent raises his eyebrows and hesitates, his tongue flicking out almost on its own accord to lick his lips. There's some hunger for the taste of orc cum in him. But then, he shakes his head, and says, 'Thanks, but... I don't usually have drug-parties with people I don't know that well. Why don't you keep your stash for your own use right, eh?'";
			else:
				say "     Glancing at the bottle of orc cum, Vincent raises an eyebrow and after a moment of hesitation, shakes his head. 'Thanks, but I'm not comfortable with just gobbling up that stuff by the bottle, and our little stash has plenty left for some fun still. So I'm good.' Snaking an arm down to your side, he gives it a friendly squeeze, then adds, 'Why don't we hang out together sometime later and share a little, hm?'";
		else: [he has blown a player who was an orc]
			say "     Glancing at the bottle of orc cum, Vincent raises his eyebrows and hesitates, his tongue flicking out almost on its own accord to lick his lips. There's some hunger for the taste of orc cum in him. But then, he shakes his head, and says, 'Thanks, but I told you I don't want to overindulge in that stuff. You offering a whole bottle makes it too tempting to keep drinking more. So pack it away please. I'll go get some fresh air.' That said, he wanders off to go for a walk in the garden.";


Instead of fucking Vincent:
	if (lastfuck of Vincent - turns < 2):
		say "     Vincent puts a hand on your chest to hold you back and says, 'Please, I need a break for a moment, okay?";
	else if "Sex Discussed" is not listed in Traits of Vincent:
		say "[VincentSexTalk]";
	else:
		say "[VincentSexMenu]";

to say VincentSexMenu:
	say "     [bold type]What exactly do you want to do with the fox?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let him go down on you";
	now sortorder entry is 1;
	now description entry is "Enjoy the fox's talented tongue";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Vincent a blowjob";
	now sortorder entry is 2;
	now description entry is "Go down on the fox";
	[
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 1;
		now description entry is "Take the fox's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 2;
	now description entry is "Slide yourself down on the fox's cock";
	]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Let him go down on you"):
					say "[VincentOral1]";
				else if (nam is "Give Vincent a blowjob"):
					say "[VincentGetsBJ]";
				else if (nam is "Fuck his ass"):
					say "[VincentSex1]";
				else if (nam is "Ride his cock"):
					say "[VincentSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the fox, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say VincentOral1:
	say "     [if Player is not barecrotch]Vincent's slender fingers dance over your clothes, tugging and pushing them aside to free your crotch, with him leaning in close without any hesitation[else]Vincent seems to appreciate the convenience of your exposed crotch and leans in close without any hesitation[end if]. ";
	if Player is male:
		if (CockName of Player is "Orc Warrior" or CockName of Player is "Orc Breeder"):
			if "Orc Cum Aware" is not listed in Traits of Vincent: [addiction risk]
				say "[VincentFirstOrcBJ]";
				LineBreak;
			else: [repeatable orc blowjob]
				say "His nostrils flare as he takes in the musky scent of your pre-cum, licking the sides of his muzzle as the desire to taste you again rises inside him. After a last moment of hesitation, he almost pounces for your green-skinned cock, lapping at the glistening wetness of pre-cum welling up from your cum-slit. 'Yeah, that's the stuff,' he says breathily, swallowing what he can lick up right away. That floppy tongue is in almost constant motion, slurping over the tip of your cock hungrily. Soon, the slow leak of pre doesn't seem to be enough for him, and the fox pulls off, then starts giving you a proper blowjob. In joyous haste, Vincent opens wide and slides his whole muzzle over your erection, engulfing your manhood in his long muzzle. He bobs his head, tongue rolling along the underside of your hard rod and serving as a soft buffer between his teeth and your sensitive flesh.";
				say "     Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue-tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blowjob, bobbing up and down on your erect cock and eagerly slurping up what pre you leak into his open mouth. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round[else]He takes your whole length without any trouble, easily fitting your manhood in his muzzle[end if]. The anthro's sharp ears give him ample warning of your soon impending orgasm, and knowing the danger your potent cum holds, he must be intending to pull off, but that seems to have skipped Vincent's mind, as that wet nose stays pressed against your pubic area even as your balls start to pull up, readying an eruption of your orcish seed.";
				WaitLineBreak;
				say "     The temptation is strong to just let things play out, to blast your cum down the throat of receptive male, but on the other hand... if he catches himself in time, or takes a little while to transform, Vincent would be furious. Better to keep to your deal, for now. Breathily, you announce that you're about to cum, which seems to shake the fox out of his inactivity, and he forces himself to pull away, instead licking and slurping over the side of your throbbing prick. Just barely in time to prevent a muzzleful, as you start to blast your load in high-arching spurts, sending sloppy strings arcing onto the hardwood floor with audible splats. You can hear Vincent's nose pull in a deep breath, huffing the scent of your cum, and his fingers grasp your legs tightly, almost as if to stop himself from placing his open mouth before your still erupting shaft. After the last ebbing spurts of cum paint the end of a several feet long, creamy trail on the floor, the fox allows himself to move finally, bringing his muzzle to your dickhead.";
				say "     Washing his talented tongue over your dickhead, the slender vulpine cleans away the traces of your cum that remain, with his pupils growing larger as the potent mixture of pheromones, aphrodisiacs and other contents of your load cover his tongue. A content hum comes from his throat, followed by Vincent almost inhaling the front half of your shaft, closing his lips around it as best as he can and suckling hungrily. Seems like he wants to drain every last drop that might still be in your cum-tubes. Sensitive after your own orgasm, you actually have to pat his shoulder and tell the fox to take things easy, which leads to him glancing up at you with a slightly un-focused expression, then blinking his eyes back into focus before pulling off in a little bit of embarrassment. 'Sorry, I - it's good stuff, as you know. But I've got this under control, if I don't swallow too much...' You can't help but focus on the long streak of fresh cum on the floor just past where the fox is, and he follows your gaze, his eyes staring longingly as if he'll bend over and clean it with his tongue.";
				WaitLineBreak;
				say "     Vincent holds his breath for a second, seeing the rich bounty of your cum factories glistening in white-ish spatters on the smooth wooden floor, then shakes his head and quickly pulls a little hand-towel from his back pocket. Leaning down, he wipes the cum away with the absorbent fabric, removing the undignified temptation of lapping it up himself. 'Thanks for keeping up your end, with that warning. I'm fine with sucking you off, but I don't know what'd become of me if I went hog-wild gobbling up your load. A pleasant little buzz is awesome, but you don't wanna overdose on anything as strong as [italic type]that[roman type]!' Chuckling at the compliment, you agree with Vincent and give him a thumbs up for his oral services, puffing out your chest at the implied praise of your baby-batter factories.";
				increase Stamina of Vincent by 1; [small orc cum exposure]
		else: [normal BJ]
			say "The corners of his mouth twitch upwards as he takes in your [Cock of Player] manhood, his tongue slipping out to lick the side of the fox's long muzzle. Taking hold of your shaft, he jerks it in a pleasant speed, seemingly knowing how to handle a man's pride and joy just right. As you harden and stand proudly erect soon enough, the fox takes a deep breath, then starts to lap at your dickhead, with his floppy canine tongue feeling quite nice as it glides over your sensitive glans.";
			WaitLineBreak;
			say "     Slender canine fingers dance over your shaft as he lifts it, running his long tongue over the underside and teasing your girth. Feels like he knows his way around a hard cock, and he has some pleasant little tricks up his sleeve. Ducking his head low, as your erection lays across the top of his muzzle, he spends some time worshiping your balls too, first a few licks with the tip of his tongue, then opening his muzzle wide to take one of your balls into his mouth. He's very careful not to graze it with his canine teeth, even as he lets that very flexible tongue wash over your orb in a stimulating tongue-bath, then switches over to do the same to your other dangling cum-factory. You can't help but breathe a bit more heavily as the fox worships your sack, his pointed ears flicking to take in every sound, alerting him to the effects his talented tongue has on you. With a grin flickering over Vincent's muzzle at your reactions, the fox gets back to running his tongue along your shaft until he reaches your dickhead once more.";
			say "     His nostrils flare as he takes in the musky scent of your pre-cum, then opens wide and slides his muzzle over your erection. Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blowjob, bobbing up and down on your erect cock. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round. [else]He takes your whole length without any trouble, with it easily fitting in his muzzle. [end if]The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he pulls off from your cock and instead licks and slurps over its side, while massaging your balls with his hands. In short notice, this pushes your arousal over the edge, and you blast your load to paint a streak of white splatters across the hardwood floorboards of the library.";
		NPCSexAftermath Vincent receives "OralCock" from Player;
	else if Player is female:
		say "He tilts his head a little as he takes in your [Cock of Player] pussy, and seems to switch mental tracks a second later, sticking out the tip of his tongue and bringing it closer to your clit while making wiggling movements with the tip of his tongue. Making contact with your magic button, the slender fox gives it a teasing lick, then another, while bringing up a hand to brush his fingers over the lips of your pussy. He gently traces his fingertips along the edges of your sex while tickling your clit, almost like a massage - one intended to wind your libido up in no time at all. And it works - before much longer, you feel yourself getting wet down there, ready and itching for relief.";
		WaitLineBreak;
		say "     Vincent makes use of your arousal by now easily slipping his previously just teasing fingers inside your pussy, two slender digits exploring your moist cave and searching for the right spot to give you pleasure. At the same time, his muzzle moves in closer, opening to press against your crotch right over the clit. You can feel his warm breath washing over your skin as he renews his attention for the sensitive spot with focused licking, switching back and forth between tracing his tongue-tip all along the edges in a steady circle, then again fast lapping over it and driving you wild. Between his questing fingers and the unrelenting oral attention, you can't help but quicken your breath and let out aroused moans. Those pointy ears flick and twitch to take in every sound you make, expertly listening to what drives you wild and then honing in on giving you more of it.";
		say "     Delivering a more than pleasurable bout of cunnilingus, the red fox is relentless in teasing and toying with your arousal, pushing you further and further. The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he pulls his face away from your pussy, wiping off what wetness clings to his nose and muzzle and muzzle with his free hand before setting it onto your crotch. His fingers grasp your clit, rubbing and gently rolling it between careful fingertips. A light pinch and flick of your magic button is the last push you need to be driven over the edge, letting out an orgasmic shout as climax hits you with full force, gushing your wet juices over the slender anthro's hands and having to brace against his shoulder to keep standing.";
		NPCSexAftermath Vincent receives "OralPussy" from Player;
	else:
		say "His eyebrows rise a little as he takes in your absence of sexual organs, then shrugs and resolves to just lick your bare crotch instead. Flying blind, with no clear target to go for, he resolves to just keep teasing you with his tongue, also bringing his hands in to assist and massage your genital area. The stimulation feels pretty nice even without a cock or pussy, and after a little while, you start to tremble and shiver as waves of pleasure roll up and down your spine.";
		NPCSexAftermath Player receives "Stroking" from Vincent;

to say VincentGetsBJ: [Player goes down on him]
	if "First BJ Received" is not listed in Traits of Vincent:
		say "     Getting closer to the red fox, you put a hand on Vincent's chest and then let it slide down over his band t-shirt and jeans, then give the young man's bulge an appreciative squeeze. 'Someone's being frisky,' he comments with a grin, pushing his hips forward against your hand. You hook your other hand behind his neck, thumb rubbing the sensitive base of his triangular, flicking ear as you say in a breathy voice that you want to suck his cock. This has the anthro raising his eyebrows in a surprised expression for a second, before his grin is back, even broader than before. 'Guess I've been getting a bit too used to all those horny fuckers roaming the city in droves, just out for their own pleasure. More often than not, you're left hanging by one of those bastards! ";
		if "Sexual Rent" is listed in Traits of Vincent:
			say "I mean, I did get something out of it usually, like our little 'arrangement' for staying here, but it still can get annoying. I'm not that much of a sub, just simping for anyone to use like a fleshlight! So yeah... I appreciate you wanting to do this!' That said, Vincent moves his hands down to his crotch.";
		else:
			say "I mean, I did get something out of it usually, ya know... in trade, but it still can get annoying. I'm not that much of a sub, just simping for anyone to use like a fleshlight! So yeah... I appreciate it!' That said, Vincent flicks his tongue over your cheek before he moves his hands down to his crotch.";
	else: [repeats]
		say "     Getting closer to the red fox, you put a hand on Vincent's chest and then let it slide down over his band t-shirt and jeans, then give the young man's bulge an appreciative squeeze. 'Someone's being frisky,' he comments with a grin, pushing his hips forward against your hand. You hook your other hand behind his neck, thumb rubbing the sensitive base of his large ear as you say in a breathy voice that you want to suck his cock. 'Been hoping you'd say that!' Vincent responds, his grin spreading even wider than before. Then the anthro begins to run his hands along your sides, stroking and caressing your body. After a quick detour to squeeze your [if Breast Size of Player > 1]breasts[else]pecs[end if] and pinch your nipples, his fingers trail further down, rubbing over your pubic area before switching over to his crotch.";
	say "     Eager fingers pop the button of Vincent's jeans through its hole, followed by the zipper being pulled open in a rapid flick. A quick glance reveals the fact that he's going commando as he shimmies the jeans past his hips, pushing them down to his thighs. The anthro fox's cock is overall human-shaped, with a moderately thick, uncut cock resting on the two orbs of his balls in a slightly dangly sack covered in cream-colored fur. Moving your hand to touch it, then cup the velvety fur of his balls, Vincent proves to be very much a grower, as his manhood rapidly fills out, rising from its previous dangling position to stand proud and erect at an upwards angle. Meeting his eyes and wiggling your eyebrows, you then sink down into a crouch, putting you face to 'face' with the fox's throbbing dick. So close that your warm breath washes over his hard shaft, you wrap your fingers around the hard length, feeling its firmness and girth in your grasp, softly pulsing with Vincent's heartbeat.";
	WaitLineBreak;
	say "     'Yeah, it's waiting for your mouth!' Vincent says in a voice betraying his barely restrained lust, and you can feel his hand being put down on your head, cradling it and giving a slight push towards his crotch. The pleasantly musky scent of his crotch becomes even stronger as a thick droplet of pre-cum wells up from the vulpine's cum-slit right in front of your eyes, and you quickly slide your lips over his glans to slurp up a first taste of Vincent. 'Mmmmhh! That feels great!' he grunts in pleasure, breath quickening as your tongue flicks teasingly over his cum-slit. Vincent's rock-hard shaft swells just a little further, dickhead now fully emerging from the foreskin, and you take it in eagerly, your lips in a tight ring around the rim of the mushroom head. Slender fingers stroke your head, in between pushing it lightly towards his crotch, and you follow the suggestion happily enough, starting to bob up and down on the juicy cock.";
	say "     You work your way further and further down his throbbing length, taking another inch, or half an inch with every bob, your nose pushing into the furry bush above Vincent's cock and huffing the scent of his arousal with every breath. Steeling yourself, you take a deep lungful of the heady aroma, then relax your throat and gulp down all the rest of his erection, deep-throating the fox's. 'Fuuuckkk yeah, that's what I've been missing! You feel really amazing around my dick! Flex those muscles!' Vincent groans - half-pleading and half-demanding as his cock throbs hard, leaking even more pre-cum than before. Swallowing, you delight in the sounds of pleasure he makes as your inner muscles play over the schlong you've inhaled, then slowly pull back, letting it slide up your gullet and into your mouth. You keep up the suction around his cock, until it is just his head between your lips, then pull off with a loud pop, gasping for air.";
	WaitLineBreak;
	say "     'You're pretty good at this!' the fox huffs under his breath, grabbing his spit-shiny cock and guiding it back to your mouth, rubbing his slippery dickhead over your lower lip. Looking up to meet his eyes with a twinkle in your gaze, you lunge forward, sliding more than half his length between your lips in one go, then keep going until he's all the way back in your throat. Vincent's pubic fur tickles your nose as you bury it deep in his bush, reveling in the delightful thickness of his cock stretching out your throat. You keep going like this, gulping the drooling cock and squeezing it tight before withdrawing for a breath, then right back onto it for more deep-throating and huffing his scent, which drives your foxy partner wild in lust. Far too horny now to even speak intelligibly, he simply moans and pants in reaction to your oral service, with a rising tone of urgency in his voice and a high-pitched whine between breaths.";
	say "     Wanting to give him a special push over the edge to orgasm, you bring up your hand and wipe off some of the saliva and pre-cum soaking your chin, then slide your arm between Vincent's legs, feeling your way up to his butt-crack. With your fingers so wet and slick, it's fairly easy to dip into him, with a tight, but experienced asshole welcoming you inside. Sinking in two fingers and feeling for his magic button, you time things perfectly so you can give his prostate an irresistible massage just as his dickhead slides back into position down your throat. With the double whammy of pleasure, the horny fox can't hold back for a second longer, and he lets out a climactic howl as his balls begin to pulse, sending forth spurt after thick spurt of creamy cum to shoot right down your gullet. 'Damn! Take it all!' Vincent manages to grunt out after the first few shots, still lost in the pleasure that your throat is giving him, wrapped tight around his throbbing erection.";
	WaitLineBreak;
	say "     Much as you'd have liked to keep him in your throat until his full orgasm had run its course, you feel the creeping fog of oxygen deprivation before long. Delaying as long as you can, with stars starting to dance in front of your eyes, you then finally pull back from Vincent's cock. It still throbs with more cum being blasted through the cum-tube, gushing onto your tongue as you pull off, and then all over your face as you gasp for air. As soon as you're able to, you catch his dick again with your open mouth, wrapping your lips around it to take the last ebbing cum-shots on your tongue. 'That was something else!' the fox says in a happily exhausted voice, smiling down at you. He brings a hand to your cheek, wiping up a streak of white cum clinging to it, then brings his finger to your mouth to push it between your lips and feed you a little bit more of his seed.";
	if "First BJ Received" is not listed in Traits of Vincent:
		say "     [bold type]Seeing the happy grin on the fox's face, and a bit of a special gleam in his eye, you can't help but think you earned a solid point of Vincent's favor. [roman type][line break]";
		increase Loyalty of Vincent by 1;
		TraitGain "First BJ Received" for Vincent;
		if debugactive is 1:
			say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
	NPCSexAftermath Player receives "OralCock" from Vincent;

to say VincentSex1: [fucking him]
	say "     ";
	NPCSexAftermath Vincent receives "AssFuck" from Player;
	increase Stamina of Vincent by 1; [small orc cum exposure from pre-orgasm leaking into his ass]

to say VincentSex2: [riding him]
	if Player is female:
		say "     ";
		NPCSexAftermath Player receives "PussyFuck" from Vincent;
	else:
		say "     ";
		NPCSexAftermath Player receives "AssFuck" from Vincent;


Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Vincent_WeedTrade_Intro"	Vincent_WeedTrade_Intro	"[EventConditions_Vincent_WeedTrade_Intro]"	Grey Abbey Library	2500	2	40

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Vincent_WeedTrade_Intro"	Vincent_WeedTrade_Intro	"[EventConditions_Vincent_WeedTrade_Intro]"	Grey Abbey Library	2500	2	40

to say EventConditions_Vincent_WeedTrade_Intro:
	if ("Introduced" is listed in Traits of Vincent) and Vincent is collected and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Vincent_WeedTrade_Intro	"Vincent_WeedTrade_Intro"

Vincent_WeedTrade_Intro is a situation.
ResolveFunction of Vincent_WeedTrade_Intro is "[ResolveEvent Vincent_WeedTrade_Intro]".
Sarea of Vincent_WeedTrade_Intro is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Vincent_WeedTrade_Intro:
	if debugactive is 1:
		say "     DEBUG: Vincent trades for some weed[line break]";
	if CurrentWalkinEvent_NavArrival is true: [Player nav'd in]
		say "     As you turn the corner into 7th street and keep walking towards the library, you vaguely register that there's someone standing at the mouth of an alley, a little distance ahead on the other side of the street. Curiosity makes you glance over to have a better look: ";
	else:
		say "     As you walk into the entrance area of the library, you catch movement from the corner of your eyes, seen through one of the windows beside the door. There's someone stepping up to the mouth of the alley a little bit down the street. Since you don't have a great vantage point from here, and the windows don't open, so curiosity drives you to step outside for a moment, to have a better look: ";
	say "The person has his back turned to you, but it's not at all hard to recognize him as Vincent the fox - that gloriously fluffy red tail sticking out just above his slightly ragged jeans gave him away immediately. And he's not alone either, but talking to a hard-to-identify figure standing in the shadow of the alley. You can't even tell their species or gender; they're wearing an enormous black hoodie that covers them from head to mid-thigh, and beneath that a severely oversized pair of jeans with legs so wide that you can't even see whatever is hiding underneath. The amount of fabric hanging in wrinkles on that being could likely cover Vincent twice over, and the only thing you really can tell is that they're a little shorter than the fox.";
	say "     Watching what is going on over there from a distance, you see the alley-person rummage around in the hoodie's front pocket and pull out a small transparent plastic bag. They hold it up so the fox can see what's inside: several elongated white shapes, joints if you had to guess. The hood dips a little as the dealer nods to Vincent and says something, but the fox pats his pockets as if to show they're empty, then raising his hands in a half-shrug. You can see the glint of Vincent's white fangs as he leans in closer wearing a broad grin, saying something. Licking the side of his muzzle, the fox then pats the other person's chest and points into the depth of the alley. The hooded figure turns a little, glancing that way, then turns back to Vincent. Given that your resident fox doesn't have any object of value with him, it's not hard to guess what he's putting on offer.";
	LineBreak;
	say "     [bold type]Looks like the two of them are about to reach some sort of deal. How do you react to this?[roman type][line break]";
	LineBreak;	let Vincent_Deal_Choices be a list of text;
	add "Walk up and loudly call out to Vincent. You got an issue with what he's doing..." to Vincent_Deal_Choices;
	add "Hang back and wait for them to go into the alley, then follow quietly and watch what'll go down." to Vincent_Deal_Choices;
	add "Shrug off curiosity of what'll happen in the alley. Just wait until Vincent comes out and have a quiet word." to Vincent_Deal_Choices;
	add "Not your circus, not your monkeys. Leave Vincent to whatever he's doing and go into the library." to Vincent_Deal_Choices;
	let Vincent_Deal_Choice be what the player chooses from Vincent_Deal_Choices;
	if Vincent_Deal_Choice is:
		-- "Walk up and loudly call out to Vincent. You got an issue with what he's doing...": [interrupt]
			LineBreak;
			say "[Vincent_WeedTrade_Interrupt]";
		-- "Hang back and wait for them to go into the alley, then follow quietly and watch what'll go down.": [watch]
			LineBreak;
			say "[Vincent_WeedTrade_BJ]";
			say "[Vincent_WeedTrade_Talk]";
		-- "Shrug off curiosity of what'll happen in the alley. Just wait until Vincent comes out and have a quiet word.": [talk]
			LineBreak;
			say "     Shrugging and thinking to yourself that the fox will do what he wants, you stroll closer to the alley and then lean against the wall of a building to wait. After maybe ten to fifteen minutes, Vincent comes strolling onto the street, wiping the side of his muzzle with the back of a hand, at which point you call out to him. ";
			say "[Vincent_WeedTrade_Talk]";
		-- "Not your circus, not your monkeys. Leave Vincent to whatever he's doing and go into the library.": [ignore]
			LineBreak;
			say "     Shrugging to yourself, you turn around and walk up to the library entrance. As you're moving along, some inner voce in your head lays out some thoughts for you doing the right thing: So what if Vincent's doing deals with whoever that was, in an alley, for drugs? It's not like weed is that strong or dangerous, and you're not the fox's nursemaid. He's a big boy and can take care of himself...";
			say "     As expected, it takes maybe another fifteen minutes or so before Vincent steps into the library himself, giving you a cheerful nod as he notices your attention. His left hand moves to quite casually hook a thumb into a pants pocket, fingers lightly patting the spot where there's an almost imperceptible bulge from what is in the pocket beneath. Then the fox strolls past you, making a beeline to the stairs leading up to his camp near the back windows.";
			now Resolution of Vincent_WeedTrade_Intro is 100; [no interest]
	now Vincent_WeedTrade_Intro is resolved;

to say Vincent_WeedTrade_Interrupt:
	say "     Striding forward quickly with no attempt at hiding your approach, you call out loudly to the fox and cause an immediate reaction: While Vincent glances over his shoulder to see who's interrupting his deal so suddenly, the dealer in the alley throws you a wary look, features still hidden in the shadows of their hoodie. Then the person backs off, turns around and starts to sprint towards the back end of the alley, moving surprisingly quickly in their oversized and cumbersome outfit. Looking after his fleeing contact, Vincent tenses his body and legs for a second but then quickly abandons the thought of following them. Instead, he throws up his arms in annoyance, giving you an eye-roll as he turns to you. 'What'd you do that for!? You must have seen I as in the middle of something!' he growls at you in frustration, then looks down the alley and adds, 'Fuck! And here I thought I was lucky to find someone close by.' His expression is marked by displeasure as he turns back to you.";
	LineBreak;
	say "     [bold type]What do you want to say now?[roman type][line break]";
	LineBreak;
	let Vincent_WeedTrade_Interrupt_Choices be a list of text;
	add "You only wanted to look out for him. Sketchy people in alleys aren't exactly safe to talk to..." to Vincent_WeedTrade_Interrupt_Choices;
	add "You don't like to have drug deals happen near the library. That'd bring bad people here..." to Vincent_WeedTrade_Interrupt_Choices;
	add "Looked like he was going to trade his body to that dealer. Not on your watch!" to Vincent_WeedTrade_Interrupt_Choices;
	let Vincent_WeedTrade_Interrupt_Choice be what the player chooses from Vincent_WeedTrade_Interrupt_Choices;
	if Vincent_WeedTrade_Interrupt_Choice is:
		-- "You only wanted to look out for him. Sketchy people in alleys aren't exactly safe to talk to...":
			LineBreak;
			say "     For a second, Vincent simply stares at you, eyebrows rising in disbelief. 'Are you fucking serious?' comes next, almost as a shout, followed by the scruffy fox taking a deep breath and letting it out in a hiss. 'Damn, did you take a few too many hits to the head when fighting the orcs or something? You do remember what's going on in the city, right? We're fucking past the 'people in alleys are scary' stage - if someone wants to fuck you up, they do it right in the middle of the street! With a running start and hollering at the top of their lungs as they jump you!' To illustrate his point, he sweeps an arm to indicate the street around you - with all the car wrecks, ripped clothing and dried cum puddles in sight. 'If I'm just standing somewhere, calmly talking to a trader that I had to ask a over dozen locals to find, you should keep your distance. Who knows if he'll be back now! Aaargh!' Rolling his eyes again, the fox then stalks off to the library, and you follow a little distance behind him.";
		-- "You don't like to have drug deals happen near the library. That'd bring bad people here...":
			LineBreak;
			say "     For a second, Vincent simply stares at you, eyebrows rising in disbelief. 'Are you fucking serious?' comes next, almost as a shout, followed by the scruffy fox taking a deep breath and letting it out in a hiss. 'Clutch your pearls harder, asshole! The whole city is a free-for-all of fighting, fucking and looting, and I bet you've been doing plenty of ALL of those. But oh dear, we can't have any drug dealing around here, can we?! Never mind it's fucking difficult to even find a dealer who still is mostly sane and not a drooling fuck-monster, and a certain fox could really have used a little something to take the edge off the awesome certainty that we're all so very fucked by this situation! Aaargh!' Growling at you, the fox stalks off to the library, and you follow a little distance behind him.";
		-- "Looked like he was going to trade his body to that dealer. Not on your watch!":
			LineBreak;
			say "     For a second, Vincent simply stares at you, eyebrows rising in disbelief. 'Are you fucking serious?' comes next, almost as a shout, followed by the scruffy fox taking a deep breath and letting it out in a hiss. 'The whole city is basically rape-fest 3000, with constant boning for anyone who can't watch out for themselves! I know the fucking place is called the 'Grey Abbey', but I didn't know I was entering a convent! What makes you think you have any right to determine what I do or do not do with someone else?!' As you open your mouth, he raises a hand and throws some more words at you: 'I don't want to hear it! Do you know how fucking difficult it is to even find a dealer who still is mostly sane and not a drooling fuck-monster? I could really have used a little something to take the edge off the awesome certainty that we're all so very fucked by this situation! Aaargh!' Growling at you, the fox then stalks off to the library, and you follow a little distance behind him.";
	say "     [bold type]Clearly, Vincent trusts you less now. [roman type][line break]";
	decrease Loyalty of Vincent by 1;
	if debugactive is 1:
		say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
	now Resolution of Vincent_WeedTrade_Intro is 100; [interrupted, no more deals (at least where the player sees them)]

to say Vincent_WeedTrade_BJ:
	say "     Ducking behind a wrecked car, you wait patiently for Vincent and the dealer to finish their back and forth. Then, after a quick sweep of his gaze over the street as though checking for danger, Vincent and the other person move deeper into the alley. As soon as they're behind the corner, you stand up and follow quickly but silently, only slowing down when you reach the entrance of the alley. Inching forward, you carefully glance around the corner so you don't give yourself away but still have a nice view of what's going on. Thankfully, Vincent and his acquaintance didn't move all that far, and they're against the wall so you have a nice side-on view of both of them. As it turns out, what's beneath the hoodie is an anthro sable, brown-furred and with a very long, slinky body similar to a weasel. Having pushed back the hood, and holding up a literal double-armful of hoodie to expose his thighs, crotch and flat chest, the sable appears to be a male.";
	say "     Your guess is quickly confirmed, as Vincent sinks into a crouch and tugs the oversized pants of the dealer down, revealing his already hardening cock and a pair of furry balls. 'Better be as good as you promised, if you want that bag of joints!' the sable says in a deep voice. Idly wondering if that's his real voice, or just something he puts on for show, like the whole outfit, you listen to Vincent's reply of 'Oh, you can be sure of that! I'll blow you away, my friend!' The fox strokes a hand over the fur covering the dealer's long, long middle section, then wraps his fingers around his hard shaft. Amusement plays over Vincent's muzzle as he hears a moan pass the sable's lips when he starts to jerk the guy. Lapping at the dickhead with the tip of his tongue, Vincent teases the drug dealer mercilessly, able to act freely as the guy has both his arms full, before he eventually opens his muzzle to slide it over the full length of the sable's erection.";
	WaitLineBreak;
	say "     Slurping and sucking, bobbing his head towards the other man's crotch, your resident red fox seems determined to fully deliver on his promise. This is more than just a casual blowjob to get the guy off as quick as possible; Vincent throws in quite a bit of effort and special moves. One moment, he's inhaling the whole cock and deep throating it, then pulls off and worships the balls one by one, before slowly running his tongue over the dickhead and going back down on the sable. The skillful service has the drug dealer panting and moaning loudly in no time at all, and he exclaims, 'Fuckk yeah! Man, do that again with your tongue! Damn, and I thought my ex was good! You got her beat by a mile! Nnngghh! Fuck!' Snorting around the dick in his mouth at the over the top praise, Vincent works the sable's cock and fills the alley with slurping noises, accompanied with the quickening breaths of the dealer.";
	say "     'Close!' the standing man grunts out before much longer, which Vincent takes as his signal to really pull out the stops. He pushes his head forward, really grinding his nose into the sable's pubes while also swallowing and letting the muscles of his throat play over the hard, throbbing shaft inside it. 'God! I'm cumming!' the dealer bellows and his whole body visibly twitches as the first throes of orgasm rock through it, cum blasting right down Vincent's throat in rich, thick spurts. Doing his best to last throughout the whole climax, Vincent keeps his acquaintance's erection in his muzzle as long as he can, but eventually he can't help but need some air. Even so, the fox doesn't fully pull off, only sliding back till the dickhead is cradled against his tongue, barely sheathed between his lips, panting around it while it still spurts more cum over his tongue. After getting much-needed oxygen, he closes his lips right away, sucking the last drops out of the sable's schlong.";
	WaitLineBreak;
	say "     The sucking sounds continue a little while longer, before you can hear the sable say, 'Okay, okay - stop! Getting pretty sensitive now!' As if to underline his words, the guy lets go of his hoodie, which gives Vincent a face-full of fabric as it pours down like an avalanche. As he withdraws his head from under the garment, the fox grins up at the sable, then stands up again. 'Good enough for you?' he asks provocatively, then laughs as the dealer spontaneously answers, 'Fuck yeah!' That said, the sable reaches into his pouch and withdraws the bag of joints again, handing it over to Vincent who quickly stashes them in his pockets. Seemingly realizing that he was a little bit too open in showing all that enthusiasm for oral sex, the dealer quickly adds, 'Wouldn't mind getting some more of your muzzle-jobs, though I can't keep giving away my product like this. But you'll get a special rate, eh?' 'Fair enough,' Vincent replies, and they exchange some meeting places and signals for the future.";
	say "     Stepping back from your observation, you move maybe ten feet from the entrance of the alley and lean against a wall to wait for Vincent. After just a minute or so, he comes strolling onto the street, wiping the side of his muzzle with the back of a hand, at which point you call out to him. ";
	TraitGain "WeedTrade_BJ Watched" for Vincent;

to say Vincent_WeedTrade_Talk:
	say "'Oh hey[if Player is not defaultnamed], [Name of Player][end if]. What's up?' Vincent responds, quickly downplaying his surprise at seeing you here. His eyes flick to the side to glance at the alley for a second, and you can almost see the gears turning in his head as he wonders how much you saw. Clearing his throat, the fox then says, 'I was just... trading a little. For information, you know. Always good to know what you can about an area. About who's still sane, and what the dangers are, eh?' Seems he just decided to dish up a little white lie.";
	LineBreak;
	say "     [bold type]What do you respond?[roman type][line break]";
	LineBreak;
	let Vincent_Deal_Choices be a list of text;
	add "Trading for information. Sure, sounds legit..." to Vincent_Deal_Choices;
	add "You know what he really traded for, and wanted to say that you'd be game if he's willing to share a bit..." to Vincent_Deal_Choices;
	add "You know what he really traded for. Not your thing personally, but he can do what he likes..." to Vincent_Deal_Choices;
	if "WeedTrade_BJ Watched" is listed in Traits of Vincent:
		add "You saw what he did really, and think it was pretty hot. Nice show to watch..." to Vincent_Deal_Choices;
		add "You saw what he traded for (and wouldn't mind some yourself), and liked watching him give the guy a blowjob." to Vincent_Deal_Choices;
	add "You know that he traded sex. It's his decision to do so, but you don't really want to see that..." to Vincent_Deal_Choices;
	let Vincent_Deal_Choice be what the player chooses from Vincent_Deal_Choices;
	if Vincent_Deal_Choice is:
		-- "Trading for information. Sure, sounds legit...":
			LineBreak;
			say "     Acknowledging what Vincent said, you comment that it's always good to know what's really going on. As you say this, you meet his gaze and give the fox a meaningful nod, to keep him guessing at how much you saw. With nothing more to be said, the two of you return to the library.";
			now Resolution of Vincent_WeedTrade_Intro is 99; [didn't acknowledge anything about the weed trading, Vincent will be stealthier]
		-- "You know what he really traded for, and wanted to say that you'd be game if he's willing to share a bit...":
			LineBreak;
			say "     Giving Vincent a pointed glance, you say that you've got a good guess at what he's got in his pockets right now. The fox tenses up a little bit, unsure if that means you'll have some sort of issue, but you quickly quell his worries with a smile while touching his shoulder in camraderie. As the two of you start walking back to the library, you casually make a comment that you could also use something to take the edge off, so if he's ever in the mood for some company while smoking, he might think of you. With a little chuckle, the fox nods and lightly pats his pants pocket. 'I'll be sure to remember that,' he says with a smile on his muzzle, just before stepping back into the building.";
			say "     [bold type]After establishing a bit of a connection with Vincent through common interests, he trusts you a little more. [roman type][line break]";
			increase Loyalty of Vincent by 1;
			if debugactive is 1:
				say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
			now Resolution of Vincent_WeedTrade_Intro is 1; [Player okay with weed, wants to share]
		-- "You know what he really traded for. Not your thing personally, but he can do what he likes...":
			LineBreak;
			say "     Giving Vincent a pointed glance, you say that you've got a good guess at what he's got in his pockets right now. The fox tenses up a little bit, unsure if that means you'll have some sort of issue over things, but you quickly quell his worries with a neutral shrug. Clearing your throat, you then casually comment that what he's doing his his business, but that you yourself are not really favorably aligned to drugs. 'Ah, I see. I'll be more... discreet, from now on,' the fox replies, somewhat relieved that there won't be an issue over this between you. With nothing more to be said, you both make your way back to the library.";
			now Resolution of Vincent_WeedTrade_Intro is 98; [Player okay with weed, but doesn't want to see it]
		-- "You saw what he did really, and think it was pretty hot. Nice show to watch...":
			LineBreak;
			say "     A smirk plays over your lips as you look at Vincent, then add that you saw what he did in the alley. 'Oh?' he replies, tensing up a little bit as he's unsure what you'll make of this. 'It was just some business. I'm not a nympho or something like that!' the fox adds somewhat defensively, then pats the side of his muzzle. 'I'm good at it, especially now since I got this thing. Trading a BJ or two kept me from going hungry more than once, and I don't really mind if the guy's at least halfway presentable, you know?' This is the point at which you reach out to reach out to give Vincent's shoulder a squeeze and tell him to relax. You're not holding this against him, but it was kinda hot to observe. Relief is written large on his face as he gives you a grin, followed by the words, 'Ah, so you like to watch? I'll keep that in mind!' With a wink and a light fist-bump against your shoulder, the slender man then gets going to the library and you follow close behind.";
			say "     [bold type]After establishing a bit of a connection with Vincent through common interests, he trusts you a little more. [roman type][line break]";
			increase Loyalty of Vincent by 1;
			if debugactive is 1:
				say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
			now Resolution of Vincent_WeedTrade_Intro is 2; [Player okay with sexual trades, wants to watch]
		-- "You saw what he traded for (and wouldn't mind some yourself), and liked watching him give the guy a blowjob.":
			LineBreak;
			say "     A smirk plays over your lips as you look at Vincent, then add that you saw what he did in the alley, and what for. 'Oh?' he replies, tensing up a little bit as he's unsure what you'll make of this. 'It was just some business. I'm not a nympho or something like that!' the fox adds somewhat defensively, then pats the side of his muzzle. 'I'm good at it, especially now since I got this thing. Trading a BJ or two kept me from going hungry more than once, and I don't really mind if the guy's at least halfway presentable, you know?' This is the point at which you reach out to reach out to give Vincent's shoulder a squeeze and tell him to relax. You're not holding this against him, but it was kinda hot to observe. Relief is written large on his face as he gives you a grin, followed by the words, 'Ah, so you like to watch? I'll keep that in mind!' With a wink and a light fist-bump against your shoulder, the slender man then starts to walk back to the library.";
			say "     As the two of you move down the street, you casually make a comment that you could also use something to take the edge off, so if he's ever in the mood for some company while smoking, he might think of you. With a little chuckle, the fox nods and lightly pats his pants pocket. 'I'll be sure to remember that,' he says with a smile on his muzzle, just before stepping back into the building.";
			say "     [bold type]After establishing a bit of a connection with Vincent through common interests, he trusts you a little more. [roman type][line break]";
			increase Loyalty of Vincent by 1;
			if debugactive is 1:
				say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
			now Resolution of Vincent_WeedTrade_Intro is 3; [Player okay with sexual trades AND weed, wants to watch/smoke]
		-- "You know that he traded sex. It's his decision to do so, but you don't really want to see that...":
			LineBreak;
			say "     Giving Vincent a pointed glance, you say that you're aware of what sort of transaction he performed with that person in the alley. The fox tenses up a little bit, unsure if that means you'll have some sort of issue over things, but you quickly quell his worries with a neutral shrug. Clearing your throat, you casually comment that what he's doing his his business, but that you yourself are not keen on seeing such things happen in front of you. 'Oh. Well then, I'll be more... discreet, from now on,' the fox replies, somewhat relieved that there won't be an issue over this between you. With nothing more to be said, you both make your way back to the library.";
			now Resolution of Vincent_WeedTrade_Intro is 97; [Player okay with weed, but doesn't want to see it]

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Vincent_Hangout_Intro"	Vincent_Hangout_Intro	"[EventConditions_Vincent_Hangout_Intro]"	Garden View	2500	2	100

to say EventConditions_Vincent_Hangout_Intro:
	if Vincent is collected and Loyalty of Vincent > 2: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Vincent_Hangout_Intro	"Vincent_Hangout_Intro"

Vincent_Hangout_Intro is a situation.
Prereq1 of Vincent_Hangout_Intro is Vincent_WeedTrade_Intro.
Prereq1Resolution of Vincent_Hangout_Intro is { 1, 2, 3, 97, 98, 99, 100 }.
ResolveFunction of Vincent_Hangout_Intro is "[ResolveEvent Vincent_Hangout_Intro]".
Sarea of Vincent_Hangout_Intro is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Vincent_Hangout_Intro:
	say "     Walking along the upper floor of the library, you come to the spot by the window overlooking the gardens where Vincent set up his camp. The slender fox is there right now too, sitting relaxedly on his sofa, leaned back with both arms raised and his hands behind his head. He's obviously in a cheerful mood and calls out with a smile, 'Hey[if Player is not defaultnamed], [Name of Player]! [else] there! [end if]I'm just taking a moment to wind down, ya know? Been some time since I was in any position to really relax, and not have to worry where I'd be able to bed down. Squatting in god knows what places is a bit of a drag when there's horny fuckers roaming the streets. Sleeping with one eye open, and an ear to the wind can wear someone down... so, thanks a million for giving me shelter!' Walking up towards him, you reply that you're glad he's found a place here, and chat a little about the things he's seen out there. The fox goes into some hair-raising details about what he's endured, and you can't help but thank your lucky stars that you haven't seen half of what he has!";
	say "     'But that's all behind me now, eh? Really astonishing that this place is relatively untouched in all this chaos. Guess it might be saying something about people if they reflexively avoid going to a library even during the apocalypse, hah!' Shaking his head, the slender guy shrugs, then adds, 'Guess that's all the better for us, finding refuge in the Grey Abbey. But seriously, thanks for letting me come here. You know, why don't you sit down with me and take a load off? Can't do... well, whatever you're always off doing out there in the city if you work yourself to the bone and get a nervous breakdown. And where would I end up being, if you suddenly snap and go wild, hm?' The smirk on the fox's face tells you the last sentence was said in jest, but he seems serious about you taking a break, nodding to a place next to himself on the sofa.";
	LineBreak;
	say "     [bold type]Do you wanna hang out with Vincent?[roman type][line break]";
	let Vincent_Hangout_Choices be a list of text;
	add "Sure thing, let's relax..." to Vincent_Hangout_Choices;
	add "Actually... you kinda are busy right now. Maybe later?" to Vincent_Hangout_Choices;
	let Vincent_Hangout_Choice be what the player chooses from Vincent_Hangout_Choices;
	if Vincent_Hangout_Choice is:
		-- "Sure thing, let's relax...":
			LineBreak;
			say "[VincentHangout]";
		-- "Actually... you kinda are busy right now. Maybe later?":
			LineBreak;
			say "     With a sigh, you explain to the fox that right now is a bad time, as you're in the middle of something. Cheeks puffing with disappointment, Vincent replies, 'Fine, fine. But don't overdo things, you hear me? And if you change your mind, just find me and say the word, alright?' Thanking him for the offer, you turn your attention to other things.";
	now Vincent_Hangout_Intro is resolved;

to say VincentHangout:
	if Energy of Vincent - turns < 3: [waiting time, so people don't abuse the san boosts]
		say "     As you bring up wanting to hang out with him, the fox lets out a chuckle and shakes his head apologetically. 'I did say to take a load off, but spending the whole day on my sofa might be a bit much, hah! Sorry to say, but I kinda have... an appointment out in the neighborhood. Gotta go meet someone soon, so right now isn't a great time, eh? How about later?'";
	else:
		say "     Deciding that spending some time with the friendly fox dude isn't actually such a bad idea, you stroll over to the sofa and set down your gear on the ground, then sit down. Leaning back against the cushions, you find them not too soft, not too hard - just right to relax on. Seems like the fox had a good eye for which piece of furniture he claimed for himself. 'See, doesn't that feel much better?' he says in a bout of camaraderie, patting your shoulder and giving it a squeeze. He's really got something there, and with Vincent starting to chat with you about about just everyday things, anything but the current situation and what it entails really, you find yourself banishing some of the worries that have been laying upon you from your mind...";
		SanBoost 15;
		say "     Before you know it, a bunch of time has flown by, and you can't help but wonder if you should get back to it. Vincent notices you glancing out across the library and clicks his tongue, then lets out a little chuckle. 'Can't hold still for too long, can you? Well, I do have something that we could use to keep winding down for a little while. That said, the fox leans to the side and half turns around so he can dangle over the side of the sofa and see what he's reaching for, leaving you with a very good view of his jeans-clad booty, and the gloriously fluffy tail of the main waving in the air not too far from your face. You hear some glass clinking, and the fox raises an arm triumphantly with a brown glass bottle in hand, before tossing it next to you on the sofa and commenting, 'They're not exactly cold, but a beer's a beer.' That said, he leans over again to snatch up another one from what he's got stashed behind the sofa.";
		LineBreak;
		say "     [bold type]How do you react to this?[roman type][line break]";
		let Vincent_Hangout_Choices be a list of text;
		add "Ah, you can hang out a little while longer and have a drink with your buddy..." to Vincent_Hangout_Choices;
		if Resolution of Vincent_WeedTrade_Intro is 1 or Resolution of Vincent_WeedTrade_Intro is 3:
			add "You wouldn't mind to share a joint instead, if he has some left..." to Vincent_Hangout_Choices;
		if Orc Cum is owned and "Hangout_OrcCum_Shared" is listed in Traits of Vincent:
			add "Actually, how about sharing a little orc cum between the two of you?" to Vincent_Hangout_Choices;
		if "Sex Discussed" is listed in Traits of Vincent:
			add "You got another idea... reach out and grope his butt." to Vincent_Hangout_Choices;
		add "Sadly, you really gotta go now. No rest for the wicked." to Vincent_Hangout_Choices;
		let Vincent_Hangout_Choice be what the player chooses from Vincent_Hangout_Choices;
		if Vincent_Hangout_Choice is:
			-- "Ah, you can hang out a little while longer and have a drink with your buddy...":
				LineBreak;
				say "     Accepting the bottle of beer and flicking the fancy lever lids almost in unison with him, creating a satisfying double-clunk from the bottles, you cheerfully wish your drinking buddy good health and take a pull. It's actually quite good stuff, craft beer from a local microbrewery out in the city hinterlands, going by the label. You can't help but wonder where he got it from, as you know Vincent didn't really have much of anything with him when he moved in. 'Gotta leave a man some mysteries, you know,' the fox replies in good cheer and winks at you, not elaborating any further. Still, you enjoy another nice little while with Vincent, nipping at your beers and shooting the breeze, before eventually getting up to get back to things.";
				PlayerDrink 6;
				addAlcPoints 1;
			-- "You wouldn't mind to share a joint instead, if he has some left...":
				LineBreak;
				say "[VincentDrugTrip]";
			-- "Actually, how about sharing a little orc cum between the two of you?":
				LineBreak;
				say "[VincentOrcCumTrip]";
			-- "You got another idea... reach out and grope his butt.":
				LineBreak;
				say "     Making use of the easy-access opportunity, you smack one hand on Vincent's buttocks, then grope him through the pants while your other hand grabs the base of his tail. 'Nnnghh!' he half-moans, then adds, 'Careful with the tail, it's... sensitive, ya know?' As he says this, the fox wiggles his eyebrows meaningfully, leaving little doubt in which way sensitive he meant. 'So, guess someone is getting frisky if they let their hair down, eh? I'm down for it, if you are!'";
				say "[VincentSexMenu]";
			-- "Sadly, you really gotta go now. No rest for the wicked.":
				LineBreak;
				say "     As you make your excuses, Vincent rolls his eyes jokingly, then shrugs. 'Oh well, it was worth a try. Let me know once you've defeated the nanite plague, or doomed us all, hah. With the energy you're putting into things, one or the other is just bout to happen!' That said, he opens his bottle of beer by flicking off the lever lid with a satisfying clunk, then takes a sip of his drink as you get up to leave.";
		follow the turnpass rule;
		if "Hangout_Loyalty gained" is not listed in Traits of Vincent:
			TraitGain "Hangout_Loyalty gained" for Vincent;
			say "     [bold type]Hanging out with Vincent has strengthened your bond with each other, and he trusts you a little more. [roman type][line break]";
			increase Loyalty of Vincent by 1;
			if debugactive is 1:
				say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
		now Energy of Vincent is turns; [timer for repeat visits]

to say VincentDrugTrip:
	say "     As you bring up smoking some weed, an amused smile grosses the red fox's muzzle and he gives your shoulder a light, friendly punch. 'Someone's really letting their hair down now, I see! Got us covered, no worries. You just gotta know how to share, alright?' As you give him an eager nod, Vincent puts down the bottle of beer he was still holding in his hand, instead snaking a hand into the crack between two sofa cushions on his far side to you. You can hear the rustle of a plastic bag, followed by the slender man raising a nicely-rolled and fairly large joint for you to see. Bringing it up to his nose, he takes a deep sniff, and grins in satisfaction. 'Razi's got good product, that's for sure! Really amped to share this one with you! Here, have a whiff!' With that, he holds his treasured joint out to you, waving it under your nose and making the scent of marijuana fill your nostrils. It's potent, alright! Smiling, Vincent gives you a wink as he brings the joint back to the end of his muzzle, then pulls a silver zippo-lighter from his pants pocket. You can make out an engraved fleur-de-lis on its side as Vincent flips the lid open, then ignites the joint.";
	say "     He lightly sucks air through the blunt to make sure it is properly lit, then proceeds to have a proper, deeper drag and filling his lungs with the potent smoke. He hold it in for a few seconds, then blows out his breath again, creating a long and narrow stream of smoke by pursing the lips of his muzzle. Next, he holds out the joint for you to take, and you follow his example, taking in a nice amount of weed-smoke. Phew, this stuff hits quick! You can feel the effects start to noticeably mellow you out, even before the joint comes back to your eager fingers after Vincent had his turn. Taking drags and letting the joint wander back and forth fills what feels like a long, pleasant while, with you sidling up quite close to Vincent as you go along, rubbing shoulders as you lean in to not have to move the joint that far.";
	SanBoost 20;
	WaitLineBreak;
	say "     Sadly, all good things come to an end eventually, and Vincent realizes that there's almost just a roach left by this point. 'Here, you finish it off,' he says generously, moving his hand over. Accepting the offer, you drag in a deep breath that burns away the last of the weed, holding the smoke inside your lungs. Stubbing out the remains of your shared blunt in a little ashtray, Vincent smiles at you, then raises an eyebrow as if [bold type]asking what you wanna do next.[roman type][line break]";
	LineBreak;
	let Vincent_DrugTrip_Choices be a list of text;
	add "Do you really have to do anything? You could just lean back and relax..." to Vincent_DrugTrip_Choices;
	add "Grab Vincent's lighter to look at and play around with. It's neat!" to Vincent_DrugTrip_Choices;
	add "Pull his muzzle towards you and share the smoke in a kiss." to Vincent_DrugTrip_Choices;
	if Orc Cum is owned and "Hangout_OrcCum_Shared" is not listed in Traits of Vincent:
		add "Suggest to share some orc cum from your own stash next..." to Vincent_DrugTrip_Choices;
	if "Hangout_OrcCum_Shared" is listed in Traits of Vincent:
		add "Let's mix things up a little with some orc cum!" to Vincent_DrugTrip_Choices;
	let Vincent_DrugTrip_Choice be what the player chooses from Vincent_DrugTrip_Choices;
	if Vincent_DrugTrip_Choice is:
		-- "Do you really have to do anything? You could just lean back and relax...":
			LineBreak;
			say "     In your current state, you're really just happy enough to stay just where you are. Leaning back on a comfortable sofa, with a buddy right next to you is pretty nice in its own right. Therefore, you do just that, sitting next to Vincent and chilling. As you hang out like this, you start to chat again, chuckling and laughing about very interesting topics that may or may not be making any sense to an outside observer not under the influence. The two of you stay on the sofa for a good long while, before you eventually start to feel that you really should be getting back to things, then get up to leave. ";
			[]
		-- "Grab Vincent's lighter to look at and play around with. It's neat!":
			LineBreak;
			say "     Eyes drawn to a shiny thing and mind too toasted to filter out the desire to grab it, you snatch up the lighter Vincent put down on his thigh earlier, and start to inspect it with a singular focus. It's silver metal, clicking open and shut with a flick of your fingers, and you can't help but be absolutely fascinated by it. Click - open, click - shut, click - open, then you flip your thumb down over the striker, and a really pretty flame dances over the opening at the top! It goes away when you click the zippo closed, and now your attention has switched to the other sensations you can get from the thing, brushing your thumb over the engraving on the side. So many small lines to trace and follow with your fingertips, round and round along the outlines! Your rapt attention for the lighter doesn't go unnoticed by Vincent, and he plucks it from your grasp, holding it so it shines in the light, drawing both of your gazes.";
			say "     'Got this as a going-away present from my friends, you know. When I moved to the coast,' Vincent says in a bit of a distracted tone, dwelling in his memories. 'Man, I do miss them but I'm kinda glad that they stayed out in the boonies. Who knows what'd have happened if they were in the city too.' Tracing the stylized shape of the fleur-de-lis on the side of the zippo, he sighs. 'Smoked a few blunts, between us, the guys and me. And there were blowjobs and stuff, at the campfire. Just during the private outings with us scout leaders only of course! No cigs or weed allowed until you're eighteen, and all that...' He chuckles a little, then starts flicking the lid of the lighter open and shut himself. That simple act, and its accompanying sounds are plenty to keep both of your stoned attention tied up for a long while, in between some unfocused chatting which might not be making sense to anyone but the two of you...";
			TraitGain "Zippo Backstory revealed" for Vincent;
			[]
		-- "Pull his muzzle towards you and share the smoke in a kiss.":
			LineBreak;
			say "     Reaching out and hooking two fingers around the underside of his muzzle, you gently draw Vincent's head over in your direction. Leaning in until your noses touch, you put your lips to his, blowing the last of the weed-smoke from your lungs into his mouth so you can share it equally. Inhaling deeply, the red fox grins at you, his eyes meeting your own gaze in a drug-fueled moment of connection. Then he kisses you back, blowing the much-diminished remnants of smoke back into your mouth, and accompanying it with his questing tongue that darts forwards between your lips. What follows is a very pleasant, if a bit giggly and spaced-out, bout of making out with one another, bringing your weed-smoking adventure to a gradual conclusion. As things slow down eventually, you just sit next to each other, grinning widely and enjoying the moment. The two of you stay on the sofa for a good long while, before you eventually start to feel that you really should be getting back to things, then get up to leave.";
			if "Hangout_WeedMakeout_Loyalty gained" is not listed in Traits of Vincent:
				TraitGain "Hangout_WeedMakeout_Loyalty gained" for Vincent;
				say "     [bold type]After that shared trip, you can't help but feel more connected to Vincent, and he's clearly seeing things the same way, increasing the trust the fox has for you. [roman type][line break]";
				increase Loyalty of Vincent by 1;
				if debugactive is 1:
					say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";
			[]
		-- "Suggest to share some orc cum from your own stash next...":
			LineBreak;
			if "Hangout_OrcCum_Shared" is not listed in Traits of Vincent:
				say "     A grin spreads over your face and you bring up that you'd like to enjoy a little something from your own stash with him. 'That so?' Vincent replies in a bit of a stoned tone of voice, a smirk gracing his muzzle as he then adds a giggle and nods to you. Happy that he's down for it, you lean forward to pull your stuff closer, then start digging around in it until you find the bottle of orc cum you were lugging around for... reasons. Raising it so that the red fox can see, you wiggle it left and right, then sidle up close to him again and slide an arm around his shoulders. 'Can't say I'm too keen about the origin of that gunk,' Vincent comments, squinting to read the label of your bottle, 'But I'm willing to give it a try. Just a little bit.'";
			else:
				say "     A grin spreads over your face and you bring up that you'd like to enjoy a little something from your own stash with him. 'Oh yeaahh! Bring it on!' Vincent replies eagerly in a bit of a stoned tone of voice, a smirk gracing his muzzle as he then adds a giggle and nods to you. Happy that he's down for it, you lean forward to pull your stuff closer, then start digging around in it until you find the bottle of orc cum you were lugging around for... reasons. Raising it so that the red fox can see, you wiggle it left and right, then sidle up close to him again and slide an arm around his shoulders. 'Can't say I'm too keen about the origin of that gunk,' Vincent comments, squinting to read the label of your bottle, 'But it's so good I'm willing to overlook that. But remember, let's just use a little bit.'";
			say "     Even moderately stoned as he is right now, the encounter with the orcs is still on the fox's mind, so you decide it'll be best if you take the first step. Unscrewing the lid of the bottle, you pour a small amount, less than quarter sized, on the back of your hand. Then, grinning at Vincent to make him watch, you slurp up the potent fluid, and the unforgettable flavor of orc cum spreads over your taste-buds. Arousal starts to build as your body starts to absorb the heady mixture, and you can't help but rub the insides of your thighs against each other and let out a moan. Interest creeps into Vincent's expression as he sees the effect that small dose had, and you make sure to capitalize on it, pouring another dab and this time raising your hand in front of his muzzle. His gaze flicks to your eyes, then back to your hand, and the fox opens his muzzle to lick up the offered treat.";
			WaitLineBreak;
			say "     After closing his muzzle, it takes just a few seconds before Vincent's eyebrows rise and he pants out, 'Woah! That hit me like truck! This goop's STRONG!' A grin spreads over your face as you see him lower a hand to rub the front of his pants, and you quickly pour out a bit more cum to slurp up yourself, before offering your buddy another taste. Lowering his head to lick over your skin, Vincent closes his eyes and lets out an unrestrained moan, then looks at you with an intense expression in his eyes. 'It's good - but this gotta be my last dose. Don't wanna get totally plastered and I'm already horny as fuck!' That said, he lowers his hands to the beltline of his jeans, popping the buttons front and back before hastily shoving the zipper down to allow his rapidly hardening shaft the freedom it needs. Watching your sofa-neighbor pull off his shirt, then hiking up his hips to shimmy the skinny jeans down his legs, you [if Player is not naked]quickly get rid of your own clothes before bringing [else]bring [end if]a hand to your crotch, eager to let off some steam.";
			say "     Starting to [if Player is male]jerk off[else]stroke yourself[end if], you glance over to Vincent just as the fox finishes taking off the jeans and leans back again, making his erection swing back and forth. Something about the sight draws you in with irresistible strength, and without a second thought, you reach out to take hold of the hard shaft. 'Niiiice!' Vincent pants happily as you begin to jerk him off in rhythm with pleasuring yourself, and he moves his hand over to your thigh, squeezing and stroking it. The mixture of weed and orc cum in your systems puts the two of you in a peculiar mental state, horny but at the same time somewhat uncoordinated and giggly about the most mundane things. Thus you're both happy to just keep sitting where you are, enjoying the bout of shared masturbation and loud sounds of pleasure that echo through the library.";
			WaitLineBreak;
			say "     As your arousal ramps up, you intensify your self-pleasuring - and in doing so, the still-uncapped bottle of orc cum gets dislodged from where you had just wedged it between the sofa cushions. It seems to move almost in slow motion, tipping forward, then tumbling off the sofa. Vincent tries to catch it, but is a hair's breath too late in snatching for the bottle, so he only gets a leaked gush of cum on his hand, and the bottle hits the floor with a wet splat. Your attention for the treasured fluid being wasted by leaking onto the floorboards is broken as Vincent wags his hand at you, drawing slimy strings of white between his fingers and thumb and commenting cheerfully, 'You gooped me up!' Seemingly feeling the need to show you up close, he brings his hand up to just between your heads, wiggling his fingers as he does so.";
			say "     Looking at the creamy cum sticking to Vincent's hand, the scent of the potent orc seed rises in your nose, waking the hunger for more of the fluid ambrosia. Breathing somewhat heavier as you start to feel that craving, you focus your eyes on the fox's face and recognize that you're sharing the same drive right now - so you go for it together. Both Vincent and you lean forward to lap at his hand, slurping up what tasty cum you can get. Almost inevitably, this leaves you competing for the last drabs here and there, until finally, you bump nose to nose as Vincent slurps up the last little bit. But you're not about to give in that easily! Closing the last bit of distance, you suck his appendage into your mouth to get even a tiny additional taste. Vincent's eyes go wide at that move, but he adapts quickly enough, wiggling his long tongue in your mouth to explore it, and before you know it the two of you are sloppily making out.";
			WaitLineBreak;
			say "     The new infusion of more orc cum into your system, together with sharing kisses and jerking off, drive your arousal past all restraint in mere moments, and you go wild pleasuring yourself and Vincent in turn. With your fingers busy, it doesn't take long at all to drive the both of you over the edge entirely, and you start to orgasm at the same time! You moan into your foxy friend's open muzzle as [if Player is male]your cock erupts with volleys of creamy cum, showering yourself, Vincent and the sofa in your own seed. [else if Player is female]you start to gush femcum, soaking the sofa cushions. [else]you tremble uncontrollably. [end if]At the same time, Vincent's prick throbs hard in your squeezing grasp, spurting out long streaks of fresh fox cum that make the mess gloriously complete.";
			say "     After a little while, once you have caught your breaths and your minds hit the after-orgasm clarity phase, Vincent glances over the two of you, then at the bottle of orc cum that has by now mostly spread its contents over the library floor. 'What a mess, eh? But yeah, this was fun! A real treat!' He hesitates at the last word, looking at the amount of orc cum that got wasted by leaking onto the ground. 'You know, I think it should stay like that too. Just a treat. I mean, if someone chugged even what's left in that bottle in one go, they'd be a spaced-out horny slut for a long while!' Pushing himself off the sofa, the fox takes a step forward before squatting down, giving you a very nice view of his bare buttocks and tail, and he grabs the bottle, holding it up to see how much remains inside. 'How about this - I'll salvage what's left, and see if I can find a cooler bag or something to it'll keep for a while. And then we just microdose on this...'";
			NPCSexAftermath Vincent receives "Stroking" from Player;
			TraitGain "Orc Cum Aware" for Vincent;
			TraitGain "Player Orc Cum User" for Vincent;
			TraitGain "Hangout_OrcCum_Shared" for Vincent;
			increase Stamina of Vincent by 1; [small orc cum exposure]
			ItemLoss orc cum by 1;
			[]
		-- "Let's mix things up a little with some orc cum!":
			LineBreak;
			say "[VincentOrcCumTrip]";

to say VincentOrcCumTrip:
	say "     As you bring up wanting to go on an orc cum trip with him again, Vincent's face lights up like a neon sign as he replies, 'Yeah, totally! Let's get this party started!' That said, he scooches over to the end of the sofa and reaches an arm down and back, feeling around for something. With a broad grin, the fox pulls out a bright red square-cornered bag bearing a white cross and the printed-on label of 'Insulin - Temperature Sensitive'. That must have come from an ambulance somewhere, and you can't help but be amazed again about Vincent's ability to get uncommon, useful items. Pulling open the zipper around the lid of the container, he flicks it open, allowing you to see the silvery insulation around a squeeze bottle, as might be found in an arts and crafts store. The creamy white fluid inside that for sure isn't from anywhere that innocent though, and your fox companion did draw a warning label on the bottle too: 'Orc Cum (!) - Use in small doses!'";
	say "     Chuckling at Vincent's craftiness, you make a grab for the bottle and pull the stopper from its squeezy tip, holding it under your nose to get a whiff of the unmistakable scent of orcish cum. Sticking out your tongue, you squeeze a small amount onto it and let the flavor spread over your tastebuds, closing your eyes to savor the stimulating effects of the white ambrosia. 'It's good stuff, if used in moderation. Thanks again for opening my eyes to that.' Vincent comments and gives your upper arm a friendly squeeze. Flicking open your eyes again, you grin at him and raise the squeeze bottle with a wiggle of your wrist. 'Give me a hit, yeah!' he responds, opening his narrow muzzle eagerly and sticking out the floppy tongue he calls his own. You're perfectly happy to squeeze a nice little dollop of nut-milk onto it, which he quickly closes his mouth around, then swishes inside his maw to enjoy. 'Love the kick of this stuff,' he pants a bit breathily, then gets busy in undoing his pants and shoving the tight garment down his long legs.";
	WaitLineBreak;
	say "     [if Player is not naked]You follow Vincent's example and strip down rapidly, [else]You grin at being naked already, giving you ample opportunity to ogle Vincent as he strips down, [end if]then click your tongue to draw the red fox's attention before reaching out to take hold of his shaft. It is nicely firm and warm in your grasp and you begin a slow stroke up and down, putting a pleasure-filled expression on his face. In turn, the slender fox brings his arm over to your own crotch, [if Player is male]wrapping his fingers around your own manhood and [else if Player is female]dipping a finger in between your nether lips while his thumb rubs your clit, [else]rubbing the sexless but nonetheless quite sensitive area [end if]and giving it the attention it needs after the orc cum set your arousal ablaze. After spending a moment in just reveling in the mutual stimulation, servicing each other's bodies, you bring the squeezy bottle up again.";
	say "     Sticking out your tongue, you surprise Vincent by slathering it with a markedly large amount of tasty seed, winking at him showing you raised eyebrows. Then you plop down the bottle in its container and hook your hand behind his head, pulling the fox in for a sloppy, loaded kiss with lots of tongue. More than eager to participate, the young man welcomes you by sucking your wiggling appendage into his maw, and the two of you get busy making out in orc-cum-fueled ecstasy. At the same time, your mutual masturbation becomes wilder and wilder as arousal mounts and flares from the additional orc cum and having a really great snog with your handsome friend. Panting and moaning sounds fill your corner of the library, intermixed with slurpy noises as Vincent blindly gropes for the bottle to add just a little bit more tasty cream to your tongue-wrestling match. He almost seems hesitant to stop, but then pushes himself to shut the container before throwing the plastic bottle to the side, to land on the sofa somewhere.";
	WaitLineBreak;
	say "     This newest infusion of more orc cum into your systems, together with joyfully making out and jerking off, drive your arousal past all restraint. You can't help but hump against Vincent's stroking fingers, while squeezing his erection tightly in turn, and using your thumb to directly stimulate his dickhead, rubbing around its rim and brushing over the cum slit. Tongues wrestling against each other wildly as your make-out session escalates, driving you to orgasm at the same time! You moan into your foxy friend's open muzzle as [if Player is male]your cock erupts with volleys of creamy cum, showering yourself, Vincent and the sofa in your own seed. [else if Player is female]you start to gush femcum, soaking the sofa cushions. [else]you tremble uncontrollably. [end if]At the same time, Vincent's prick throbs hard in your squeezing grasp, spurting out long streaks of fresh fox cum that make the mess gloriously complete.";
	say "     After a short while, once you have caught your breaths and your minds hit the after-orgasm clarity phase, Vincent glances over the two of you, then slumps back limply against the backrest. 'Man, this is great, you know. Just riding the high together, and taking care of each other equally.' He takes a deep breath, letting out a content sigh and just rests like that for a little while longer, before pushing himself up to his feet. Walking a few steps to the sailor bag with stuff he has sitting in the corner, he digs around in it while you idly wonder where Vincent got that thing, given that it has an anchor crest and the name of a navy ship on its side. 'Aha!' he announces victoriously, dragging a clean towel from the depth of the bag, then comes back to the sofa and offers it to you to clean up with first, waiting patiently before scrubbing himself down after you're done. The cum-soaked towel is then just dropped to the floor next to the sofa, with Vincent commenting, 'I'll throw that out later and get a clean one somewhere.' After that, he puts the orc cum bottle back in its cooler bag and stashes it away too.";
	NPCSexAftermath Vincent receives "Stroking" from Player;
	NPCSexAftermath Player receives "Stroking" from Vincent;
	increase Stamina of Vincent by 1; [small orc cum exposure]
	if "Hangout_OrcCumMutualMaturbation_Loyalty gained" is not listed in Traits of Vincent:
		TraitGain "Hangout_OrcCumMutualMaturbation_Loyalty gained" for Vincent;
		say "     [bold type]The stimulating experience of microdosing on orc cum, and taking care of each other strengthens your connection to Vincent. His trust in you grows. [roman type][line break]";
		increase Loyalty of Vincent by 1;
		if debugactive is 1:
			say "     DEBUG -> Loyalty of Vincent is now: [Loyalty of Vincent] <- DEBUG[line break]";

Vincent ends here.
