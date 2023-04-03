Version 1 of Vincent by Wahn begins here.



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
	say "     His nostrils flare as he takes in the musky scent of your pre-cum, then goes in to lap at the head of your green-skinned cock. The glistening wetness of pre-cum welling up from your cum-slit touches the fox's tongue, and his eyes go wide at its pleasant, stimulating taste. 'This tastes... pretty nice,' he says, not quite hiding the slight pause he needed to pick some less enthusiastic words than what first came to mind. Swallowing his first taste of orc and licking the side of his muzzle, the slender anthro is drawn in by the inevitable desire to taste more of your pre, and that floppy tongue starts to lap again, playing over the tip of your cock hungrily. Soon, he tries something else and closes his muzzle most of the way, just putting the lips at the very tip against your dickhead, and trying to suckle, which doesn't work too well, spilling some of your pre down his chin until he gives up in frustration.";
	say "     Pulling off and shaking his head, the fox then falls back to providing a more regular blowjob for you. In joyous haste, Vincent opens wide and slides his whole muzzle over your erection, engulfing your manhood in his long muzzle. He bobs his head, his tongue rolling along the underside and serving as a soft buffer between his teeth and your sensitive flesh. Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue-tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blow-job, bobbing up and down on your erect cock and eagerly slurping up what pre you leak into his open mouth. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round[else]He takes your whole length without any trouble, easily fitting your manhood in his muzzle[end if].";
	WaitLineBreak;
	say "     The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he first pushes himself all the way down on your cock, wet nose touching your pubic area. But then, he seems to think better of what he's doing, almost forcing himself to pull away, instead licking and slurping over its side, while massaging your balls with his hands. In short notice, this pushes your arousal over the edge, and you blast your load to paint white stripes over the ash-covered ground of the ruin you're in. You can hear Vincent's nose pull in a deep breath, huffing the scent of your cum, and before he can help himself, his tongue flicks out to lick up a stray drop that still clings to your mushroom head. Eyes going wide as just that little bit of your potent cum hits his system, he licks over your dickhead again several times, then glances down at the wet drabs soaking into the ash before shaking his head almost imperceptibly.";
	say "     'Fucking hell, what're you packing in those balls! It's like a drug or something! Good thing I pulled off, or I think I might be zonked out and rolling drunkenly on the floor like an alcoholic on payday!' As you chuckle and admit that orcs are built a little differently, the Vincent seems torn between getting angry, and the desire to taste you again. In the end, he ends up picking a position somewhere in between, grumbling, 'Okay, new rule - don't even think of trying to shoot in my mouth. I'm warning you, understand?! You [bold type]must[roman type] warn me when you're getting close. As long as you're an orc at least...' Rolling your eyes, you agree, not wanting to lose out on the fox's oral services. ";
	TraitGain "Orc Cum Aware" for Vincent;

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
					say "     His nostrils flare as he takes in the musky scent of your pre-cum, then opens wide and slides his muzzle over your erection. Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blow-job, bobbing up and down on your erect cock. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round. [else]He takes your whole length without any trouble, with it easily fitting in his muzzle. [end if]The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he pulls off from your cock and instead licks and slurps over its side, while massaging your balls with his hands. In short notice, this pushes your arousal over the edge, and you blast your load to paint white stripes over the ash-covered ground of the ruin you're in.";
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

instead of sniffing Vincent:
	say "     Vincent has a slightly animalistic scent of clean fur.";

to say VincentDesc:
	say "     Vincent is a an anthro fox with a wiry frame, wearing a black sleeveless t-shirt with some band's colorful logo printed on the front, as well as a somewhat ragged pair of jeans to cover his slender legs. Being clearly built more for speed than any great amount of strength, he must have found it a challenge to survive in a city turned feral, with all sorts of monstrous and brutish beings battling it out on the streets day by day. He has a sly look to him, with attentive eyes carefully observing his surroundings, but sometimes all the cunning in the world can't save you, as evidenced by the fact that you first met him as a captive of three orc brothers...";
	say "     As Vincent notices your intense gaze upon him, he gives you a two-finger salute, combined with a friendly smirk on his muzzle. The scrappy fox knows to give you an appropriate level of respect to the person who saved him from a future as an orc slave, and who's now giving him refuge.";

instead of conversing the Vincent:
	if FaceName of Player is "Orc Warrior" and player is pure:
		say "     Seeing your orc warrior self approach, Vincent reflexively tenses up a little, but he quickly catches himself and shakes his head to dispel the memory of his capture at the hands of green-skinned brutes. With a slightly embarrassed expression, he blows out the breath he was holding, then puts on a friendly smile as he asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	else if FaceName of Player is "Orc Breeder" and player is pure:
		say "     Seeing you approach, Vincent lets an appreciative gaze wander up and down your body, then asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	else:
		say "     Seeing you approach, Vincent gives you a friendly nod, then asks, 'What's up[if Player is not defaultnamed], [Name of Player][end if]?'";
	wait for any key;
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
				wait for any key;
				if DoneTalking is false: [looping around for more talk options]
					say "[VincentTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the slender fox, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Vincent_BackgroundTalk1: [ask about him]
	say "     As you ask the fox about himself, Vincent blows out a breath and half raises his arms in a shrug. 'You wanna hear more about me? I'm nothing special really... just your average 22 year old guy from northeast in the desert. Hah, my home town is literally called 'wilderness' in Spanish. Nothing much to see there - its all dry, dusty and baking in the heat of the sun. Hell of a place to grow up in, with just a few houses and fuck-all around, I can tell you that. Got so bored off my gourd that I even was a boy-scout for a few years as a kid - so yeah, I can tell you which cactus you can eat (most you can't), and to keep the fuck away from scorpions, got the badges to prove it, hah!' With a sardonic chuckle, Vincent mimes a crawling arachnid with one hand while gripping his wrist with the other, raising one finger as a mock [']stinger[']. 'I had one as a pet, you know. Not that I was allowed to keep it in the house, it just kinda... lived under a rock behind our garden. But I fed it and watched it molt and all.'";
	say "     'Anyways I got the fuck out of that town as soon as I could, came to the coast to go to college. Dropped out in the third year, then got a job downtown as a clothing store attendant last Fall.' Rolling his eyes, Vincent grumbles, 'Manning the retail trenches during Black Friday is just the worst! I was slapped, twice, by rabid shoppers! Really made me wish I'd kept some of those venomous creepy crawlies from back home. To throw them at the bitches!' Baring his fangs, he seems to imagine someone running away screaming, then chuckles and turns his attention back to you. 'Anyways, a job's a job, so you learn to smile and bear it... long hours, rude customers, picking up all sorts of stuff they dump on the ground if they don't like it, all that jazz. So yeah, that's what I was doing when this whole thing started. Putting away some of the not quite current fashion trends. Had this vintage, really gaudy vest in my hands, trimmed with red fur. Didn't really think it was real as the label was claiming, but... well, moments later I started transforming into this. Guess I should be thankful that that designer actually went with a red animal, and didn't just color some rodent fuzz red.'";
	WaitLineBreak;
	say "     While slowly shaking his head, Vincent looks down at his hand and arm, then strokes a finger over the fur covering it. 'So thanks to my poor foxy compatriot, not that I ever knew him in life, I guess I'm a real life furry now. Never thought I'd get into that stuff, but then... life isn't actually so bad, as an animal person. Fur's pretty nice, and I dig the tail. Of course, life's still got its upsides and downsides. Less snooty bitches these days, more rampaging orcs. But you gotta do what you have to survive. Things were mostly going my way, until... you know. And then you saved my bacon, so that worked out alright too, eh?' Giving you a friendly smile, the fox winks appreciatively.";

to say Vincent_BackgroundTalk2:
	say "     The topic you bring up seems to leave a bit of a bad taste in Vincent's mouth, as he draws a grimace, then starts to talk after a little pause. 'Humanity was already a bunch of assholes before this shit went down, and most of what I've seen while living on the streets since didn't change my mind for the better. I mean, one can almost excuse all the feral critters, they don't know any better, but many of those who're still fairly human mentally are... utter gutter scum.' A scowl creeps over Vincent's features, not directed at you, but rather someone else. 'I mean - I was at work when I changed, and two coworkers also got hit, Ruth and Keitao. She turned into some sort of... marsupial or so? Furry, big boobs. And he became a snake-thing, but still with arms and legs. Dangerous one too - Mojave green pit viper! Didn't know then that he was showing his true self, the fork-tongued bastard!'";
	say "     Blowing out his breath, Vincent continues bitterly, 'Damn, I'd had plenty of beers with them both, we went bowling the weekend before. Thought we were friends, all that jazz. So anyways, it was chaos, everyone was afraid, and we ran from the store together, trying to get away from the crowds of people going wild. You know, them either panicking and trampling each other or actually going animal, like us. It was a hell of a trip to get to Kei's place, for the three of us. Watching each other's backs until we got there. Crappy neighborhood, but these days you can be happy about having bars on all your windows. And then - then, after I'd just knocked out a damned big anthro armadillo, saving Kei from being mounted and fucked into submission - the fucker paused with his key in hand, in front of his place's door, and told Ruth she'd have to submit to be fucked by him, if she wanted to stay.'";
	WaitLineBreak;
	say "     Growling under his breath, the fox adds, 'I think I must have stared at him as if he'd grown a second head, not just a forked tongue. The fucker laughed, right in my face, thanking me for getting him home. Then he waved a scaly hand to indicate the way we'd just come from, with all the screams, sounds of fucking and other noises. Asshole told Ruth, 'Better choose quick, babe. Think you'd make it too long out there, just the two of you?' Almost punched him, then and there, but he hissed at me and showed his venom fangs. Ruth was in tears as she gave in, then stepped into the place after Kei opened up, and a few seconds later, I was alone, on the outside. It was hell to make it through the next few days...' Quickly shaking his head to drive way the memories welling up in his mind, Vincent makes himself take a deep breath and stop balling his fists. His shoulders droop as he lets the anger go, staring at the ground for a second, then looking up at you again.";
	say "     'Sorry for such a downer of a story. I think I'll take a walk in the garden for a while. But yeah, see ya later.' That said, he leaves for now, needing a little time alone.";
	TraitGain "Ruth & Keitao Story Told" for Vincent;

to say VincentSexTalk:
	say "     As you approach and bring up sex, Vincent snorts and a somewhat mocking chuckle bubbles up from his chest. 'I'd been wondering when the other shoe would drop. No one just invites random people into their place during the apocalypse. Let me guess: I better put out, or out the door I go? You just had to wait till I'd picked out a comfy sofa and know what I'd lose?' Crossing his arms in front of his chest, the anthro throws a glance at the piece of furniture he claimed as a bed, then lets out a sigh. Seems he's contemplating if he should reject the demand he's expecting from you, or go along with it. You can't help but wonder just when and where he got his rest before, if trading sex for a place to sleep isn't out of the question for him. Likely nowhere pleasant, and he'd always had to scramble when some creature or looter came along. A throat being cleared draws you out of your thoughts, and you focus back on the fox himself, standing before you with a serious expression, one eyebrow raised as he waits for you to say something.";
	LineBreak;
	say "     [bold type]Just what do you want to say to Victor?[roman type][line break]";
	let Vincent_SexTalk_Choices be a list of text;
	add "Fuck no, he's got you completely wrong! Sexual blackmail?! WTF? You just wanted to extend an offer of some relief..." to Vincent_SexTalk_Choices;
	add "You'd have said it in somewhat nicer words, but... a little 'appreciation' for you would endear him as a long-term guest." to Vincent_SexTalk_Choices;
	add "He'd better forget the word 'No' even exists when you ask him to do something from now on. You'll have him any way you please, any time you want." to Vincent_SexTalk_Choices;
	let Vincent_SexTalk_Choice be what the player chooses from Vincent_SexTalk_Choices;
	if Vincent_SexTalk_Choice is:
		-- "Fuck no, he's got you completely wrong! Sexual blackmail?! WTF? You just wanted to extend an offer of some relief...":
			LineBreak;
			say "     As you react strongly, and also somewhat angrily, to his accusation of wanting to exploit him, Vincent seems momentarily baffled, taking a step back and raising his hands in a pacifying gesture. 'Wow, calm down! I - uhm, I guess... I might have misjudged you? Sorry, but humanity was already a bunch of assholes before this shit went down, and most of what I've seen while living on the streets since didn't change my mind for the better. I mean, one can almost excuse all the feral critters, they don't know any better, but many of those who're still fairly human mentally are... utter gutter scum.' A scowl creeps over Vincent's features, not directed at you, but rather someone else. 'I mean - I was at work when I changed, and two coworkers also got hit, Ruth and Keitao. She turned into some sort of... marsupial or so? Furry, big boobs. And he became a snake-thing, but still with arms and legs. Dangerous one too - Mojave green pit viper! Didn't know then that he was showing his true self, the fork-tongued bastard!'";
			say "     Blowing out his breath, Vincent continues bitterly, 'Damn, I'd had plenty of beers with them both, we went bowling the weekend before. Thought we were friends, all that jazz. So anyways, it was chaos, everyone was afraid, and we ran from the store together, trying to get away from the crowds of people going wild. You know, them either panicking and trampling each other or actually going animal, like us. It was a hell of a trip to get to Kei's place, for the three of us. Watching each other's backs until we got there. Crappy neighborhood, but these days you can be happy about having bars on all your windows. And then - then, after I'd just knocked out a damned big anthro armadillo, saving Kei from being mounted and fucked into submission - the fucker paused with his key in hand, in front of his place's door, and told Ruth she'd have to submit to be fucked by him, if she wanted to stay.'";
			WaitLineBreak;
			say "     Growling under his breath, the fox adds, 'I think I must have stared at him as if he'd grown a second head, not just a forked tongue. The fucker laughed, right in my face, thanking me for getting him home. Then he waved a scaly hand to indicate the way we'd just come from, with all the screams, sounds of fucking and other noises. Asshole told Ruth, 'Better choose quick, babe. Think you'd make it too long out there, just the two of you?' Almost punched him, then and there, but he hissed at me and showed his venom fangs. Ruth was in tears as she gave in, then stepped into the place after Kei opened up, and a few seconds later, I was alone, on the outside. It was hell to make it through the next few days...' Quickly shaking his head to drive way the memories welling up in his mind, Vincent makes himself take a deep breath and stop balling his fists. His shoulders droop as he lets the anger go, staring at the ground for a second, then looking up at you again.";
			say "     'Sorry for bringing up that fucked-up story. I just - I apologize for thinking you'd... you know. All of this hasn't exactly been easy for me, and I guess I fell into a certain frame of mind, concerning the world. Can't be disappointed at least, if you always expect the worst from people.' He looks aside, scratching the back of his neck in embarrassment. 'So, yeah. Bet you must think I'm a total ass, but... if you still wanted to do stuff, that'd be fine by me. Would be kinda refreshing just to do it because we felt like it, instead of as a transaction.' As you raise your eyebrows at those last words, Vincent shrugs unapologetically. 'Told ya, surviving's hard out there. I'm good with my tongue, so I always had something to trade, when I needed to. Better than going hungry, that's for sure.' He presses his lips together, then quickly adds, 'Anyways, I think I'll take a walk in the garden for a while. But yeah, see ya later.' That said, he leaves for now, needing a little time alone.";
			TraitGain "Ruth & Keitao Story Told" for Vincent;
		-- "You'd have said it in somewhat nicer words, but... a little 'appreciation' for you would endear him as a long-term guest.":
			LineBreak;
			say "     'As I said, I expected as much. Nothing's free, except death, eh? But yeah, you're right - a safe place to get some shut-eye is worth a lot, these days. Laying down with one eye open is sure getting old fast, I can tell you that!' Scratching the underside of his muzzle, he thinks for a few seconds, then nods to you. 'Okay, fine. I'll play ball. But there have to be ground rules - just let me do my thing, and I'll give you what you need. Don't grab me or try to force anything, understand? I'll bite you if you try! Understood?' As you agree to his conditions, the fox pulls off his sleeveless shirt, throwing it to land on his sofa, then walking up to you and sinking into a crouch. Seems he's ready to pay his rent, right here and now!";
			TraitGain "Sexual Rent" for Vincent;
			say "[VincentOral1]";
		-- "He'd better forget the word 'No' even exists when you ask him to do something from now on. You'll have him any way you please, any time you want.":
			LineBreak;
			say "     The fox's lips pull up to reveal his sharp, predator teeth in a sneer, and Vincent growls, 'Fuck this place, then! And fuck you for making me almost think that you were of a decent sort!' That said, the slender anthro takes a quick dash to the side, jumping right over the railing of the upper floor and dropping down into the top of one of the tall bookshelves on the lower floor. The shelf sways a little from the impact, and a lot of books tumble to the ground as Vincent climbs down on one side, using the boards as an improvised ladder. Then he vanishes from your line of sight, running underneath where you're standing to reach the back door of the building. He'll likely slip away unseen somewhere at the back of the library grounds.";
			now Vincent is nowhere; [gone forever]
	TraitGain "Sex Discussed" for Vincent; [fine with sex from now on, either because he talked things out with the player, or because he's paying his "rent"]

Instead of fucking the Vincent:
	if (lastfuck of Vincent - turns < 2):
		say "     Vincent puts a hand on your chest to hold you back and says, 'Please, I need a break for a moment, okay?";
	else if "Sex Discussed" is not listed in Traits of Vincent:
		say "[VincentSexTalk]";
	else:
		say "[VincentSexMenu]";

to say VincentSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let him go down on you";
	now sortorder entry is 1;
	now description entry is "Enjoy the fox's talented tongue";
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
			else: [repeats]
				say "     His nostrils flare as he takes in the musky scent of your pre-cum, licking the sides of his muzzle as the desire for tasting you again rises inside him. After a last moment of hesitation, he almost pounces for your green-skinned cock, lapping at the glistening wetness of pre-cum welling up from your cum-slit. 'Yeah, that's the stuff,' he says breathily, swallowing what he can lick up right away. That floppy is in almost constant motion, slurping over the tip of your cock hungrily. Soon, the slow leak of pre doesn't seem to be enough for him, and the fox pulls off, then starts giving you a proper blowjob. In joyous haste, Vincent opens wide and slides his whole muzzle over your erection, engulfing your manhood in his long muzzle. He bobs his head, tongue rolling along the underside of your hard rod and serving as a soft buffer between his teeth and your sensitive flesh.";
				say "     Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue-tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blow-job, bobbing up and down on your erect cock and eagerly slurping up what pre you leak into his open mouth. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round[else]He takes your whole length without any trouble, easily fitting your manhood in his muzzle[end if]. The anthro's sharp ears give him ample warning of your soon impending orgasm, and knowing the danger your much more potent cum holds, he must be intending to pull off, but that seems to have skipped Vincent's mind, as that wet nose stays pressed against your pubic area even as your balls start to pull up, readying an eruption of your potent seed.";
				WaitLineBreak;
				say "     The temptation is strong to just let things play out, blast your cum down the throat of receptive male, but on the other hand... if he catches himself in time, or takes a little while to transform, Vincent would be furious. Better to keep to your deal, for now. Breathily, you announce that you're about to come, which seems to shake the fox out of his inactivity, and he almost forces himself to pull away, instead licking and slurping over the side of your throbbing prick. Just barely in time too, as you start to blast your load in high-arching spurts, landing on the hardwood floor with audible splats. You can hear Vincent's nose pull in a deep breath, huffing the scent of your cum, and his fingers grasp your legs tightly, almost as if to stop himself from placing his open mouth before your still erupting shaft. After the last ebbing spurts of cum paint the end of a several feet long, creamy trail on the floor, the fox allows himself to move finally, bringing his muzzle to your dickhead.";
				say "     Washing his talented tongue over your dickhead, the slender vulpine cleans away the traces of your cum that remain, with his pupils growing larger as the potent mixture of pheromones, aphrodisiacs and other contents of your load cover his tongue. A content hum comes from his throat, followed by Vincent almost inhaling the front half of your shaft, closing his lips around it as best as he can and suckling hungrily. Seems like he wants to drain every last drop that might still be in your cum-tubes. Sensitive after your own orgasm, you actually have to pat his shoulder and tell the fox to take things easy, which leads to him glancing up at you with a slightly un-focused expression, then blinking his eyes back into focus before pulling off in a little bit of embarrassment. 'Sorry, I - it's good stuff, as you know.' You can't help but focus on the long streak of fresh cum on the floor just past where the fox is, and he follows your gaze.";
				WaitLineBreak;
				say "     Vincent holds his breath for a second, seeing the rich bounty of your cum factories glistening in white-ish spatters on the smooth wooden floor, then shakes his head and quickly pulls a little hand-towel from his back pocket. Leaning down, he wipes the cum away with the absorbent fabric, removing the undignified temptation of lapping it up himself. 'Thanks for keeping up your end, with that warning. I'm fine with sucking you off, but I don't know what'd become of me if I went hog-wild gobbling up your load. A pleasant little buzz is awesome, but you don't wanna overdose on anything as strong as [italic type]that[roman type]!' Chuckling at the compliment for your virility, you agree with Vincent and give him a thumbs up for his oral services..";
		else: [normal BJ]
			say "The corners of his mouth twitch upwards as he takes in your [Cock of Player] manhood, his tongue slipping out to lick the side of the fox's long muzzle. Taking hold of your shaft, he jerks it in a pleasant speed, seemingly knowing how to handle a man's pride and joy just right. As you harden and stand proudly erect soon enough, the fox takes a deep breath, then starts to lap at your dickhead, with his floppy canine tongue feeling quite nice as it glides over your sensitive glans.";
			WaitLineBreak;
			say "     Slender canine fingers dance over your shaft as he lifts it, running his long tongue over the underside and teasing your girth. Feels like he knows his way around a hard cock, and he has some pleasant little tricks up his sleeve. Ducking his head low, as your erection lays across the top of his muzzle, he spends some time worshiping your balls too, first a few licks with the tip of his tongue, then opening his muzzle wide to take one of your balls into his mouth. He's very careful not to graze it with his canine teeth, even as he lets that very flexible tongue wash over your orb in a stimulating tongue-bath, then switches over to do the same to your other dangling cum-factory. You can't help but breathe a bit more heavily as the fox worships your sack, his pointed ears flicking to take in every sound, alerting him to the effects his talented tongue has on you. With a grin flickering over Vincent's muzzle at your reactions, the fox gets back to running his tongue along your shaft until he reaches your dickhead once more.";
			say "     His nostrils flare as he takes in the musky scent of your pre-cum, then opens wide and slides his muzzle over your erection. Between the warm bed of his tongue below, the ribbed roof of his muzzle above, and the red fox's floppy tongue tip half-wrapping around your shaft, Vincent delivers a quite enjoyable blow-job, bobbing up and down on your erect cock. [if Cock Length of Player > 7]He goes as far as taking your erection down his throat too, inhaling it after taking a few deep breaths, then slowly letting the dickhead slide back up again before going for another round. [else]He takes your whole length without any trouble, with it easily fitting in his muzzle. [end if]The anthro's sharp ears give him ample warning of your soon impending orgasm, at which point he pulls off from your cock and instead licks and slurps over its side, while massaging your balls with his hands. In short notice, this pushes your arousal over the edge, and you blast your load to paint a streak of white splatters across the hardwood floorboards of the library.";
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

to say VincentSex1: [fucking him]
	say "     ";
	NPCSexAftermath Vincent receives "AssFuck" from Player;

to say VincentSex2: [riding him]
	if Player is female:
		say "     ";
		NPCSexAftermath Player receives "PussyFuck" from Vincent;
	else:
		say "     ";
		NPCSexAftermath Player receives "AssFuck" from Vincent;


[
Scene Idea:
Player arrives at the library and sees Vincent talking to someone (making a deal of getting some weed for a BJ). Multi choice point of:
- Walking up and saying hello (and the dealer runs off)
- Standing back and watching what happens (V and dealer go to an alley - option to follow and watch the BJ)
- Ignore this and anything of the kind.

Followup talk options with V:
- Player would prefer nothing of this sort while V lives at the Library
- You're fine with things, but he should be discreet (no further visibility to the player, but stuff goes on)
- You're totally fine with it. Might be hot to watch too.
]

Vincent ends here.