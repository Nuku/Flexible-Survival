Version 3 of Random Shemale Smooth Collie by Guest Writers begins here.
[Version 3.4 - Player loss oral and player victory vaginal/anal ride added - Stripes]
[- Originally Authored By: Voldine -]

"Adds a Shemale Smooth Collie to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

colliedefeat is a number that varies.

to say Shemale Smooth Collie attack:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else if colliedefeat is 0:
		say "     The bitch quickly bowls you over as your body begins to go limp from the pain and battle weariness. She sniffs eagerly at your crotch while flipping you onto your hands and knees, her tongue slipping out to lap gently before she yanks your clothes off with disturbing ease. She wastes no time at all in foreplay beyond that, her massive cock already hard and dripping as she shoves it up against your [if Player is female]sensitive folds[else]tense sphincter[end if] and applies a little pressure while her precum serves to make this easier on both of you... if only slightly.";
		say "     She only manages to squeeze a few inches into your tense body at first, but with each stroke the pleasure grows and your body responds by loosening up a bit. You find yourself moaning after only a minute of her slow fucking, the pleasure quickly building to a peak that has your hips bucking and jerking, your spread muscles clenching down on the thickness within, putting even more pressure on her sensitive glans. She arches her back and howls as her balls tighten up, that lengthy prick swelling slightly just before she unloads within you. In only a few seconds she pulls out and moans as her ongoing orgasm paints your back white. 'You're such a good lay. I can't wait to see how you turn out.'[impregchance]";
		now colliedefeat is 1;
	else if gestation of child > 0:	[player is preggers]
		if Player is female:
			say "     The bitch moves in as if to pounce on top of you before her nose begins twitching. She crouches down close to the ground after pushing you gently onto your back, her nostrils rubbing against your crotch as she inhales deeply. She gives a single lick across your folds, followed by a comforting growl as she nuzzles your stomach. 'I'll have to paw off later, you're carrying a child and I don't want to risk hurting you. I can offer you something to drink though, you do look thirsty.' She doesn't waste a second before pressing a breast against your face and forcing her nipple into your mouth. Milk begins flowing almost instantly, filling your stomach quite quickly as she forces you to suckle.";
		else:
			say "     The bitch moves in as if to pounce on top of you before her nose begins twitching. She crouches down close to the ground after pushing you gently onto your back, her nostrils rubbing against your ass as she inhales deeply. She then pulls back, giving you a look of surprise. 'Aren't you a strange one? Somehow you've got a bun in the oven. Don't know how that works, but I don't want to risk hurting you. I can offer you something to drink though, you do look thirsty.' She doesn't waste a second before pressing a breast against your face and forcing her nipple into your mouth. Milk begins flowing almost instantly, filling your stomach quite quickly as she forces you to suckle.";
		if HP of Player > 0 or a random number from 0 to 50 < Libido of Player:
			say "     As you drink the shemale's breast milk, you can feel her cock growing hard and pressing against your chest. At first you go to push it away, but your hand lingers and soon you're holding and even stroking it. This arouses her all the more until finally, with an excited growl, she pops your suckling lips from her nipple and presses her cock into your mouth instead. Already partially full from the milk, you try to hold the impatient canine back, but she won't be denied. She drives her thick rod into your mouth and down your throat, forcing you to take her throbbing meat. It stuffs your throat[if scalevalue of Player < 3] painfully[end if] full, making it hard to breathe as she starts to thrust. The taste of her cock and the scent of her crotch are potent, strong with the creature's virility. Those copious balls of hers are already drooling precum down your throat, adding to the sloshing in your belly.";
			say "     And despite all this, you can't help but be aroused as well. Your tongue and mouth do their best to please the canine prick stuffed past your lips. You lick and suck at it with increasing vigor, trying to get more of her pre (and more) from her. The taste of it is exciting and makes you hungry for more. Your hands move to her balls and fondle the hefty orbs, knowing they're full of the potent prize you long to have in you. She maintains a firm grip on your head, ploughing her canine shaft in and out of your gripping throat. Her earlier words about restraint forgotten in her zeal to get off. Her knot bashes against your lips and her spear-like cock drives into you again and again until finally her lust boils over into a loud and powerful orgasm. Shot after thick shot of gooey semen literally blasts from her cock to flood your mouth, throat and belly with dog sperm. Your belly[if scalevalue of Player < 3], already swollen with milk, bulges obscenely to the point you can hold no more and the excess can only pour out[else if scalevalue of Player is 3] swells round as cum is added to mix with your recent meal of milk[else] becomes stuffed with a mix of cum and milk that leaves you quite full[end if].";
			WaitLineBreak;
			say "     Once she's spent and had a chance to recover, she notices what she's done. She says something that is a mix of an apology and a compliment on your cocksucking skills before leaving you flopped out on the ground with [if scalevalue of Player <= 3]an overstuffed[else]a full[end if] belly of two very different kinds of infectious dog [']milk[']. It takes some time for you to recover from the overzealous blow job you'd been forced to endure and the resulting feeding.";
			PlayerEat 5;
			PlayerDrink 5;
			infect; [additional infection result]
		else:
			say "     You drink her milk, somewhat unwillingly at first, but with increasing desire. Once she's decided you've had enough, you're left rather full indeed. She lowers you gently into a resting position and leaves you to recover. Her milk has put you into a somewhat dazed and groggy state, and it takes some time before you regain your senses.";
		decrease thirst of Player by 10;
		if thirst of Player < 0, now thirst of Player is 0;
		if hunger of Player < 0, now hunger of Player is 0;
	else if Player is female and ( Cunt Depth of Player < 18 or Cunt Tightness of Player < 6 ):
		say "     'Ohhh, I knew I smelled a fresh bitch in town, and you smell absolutely delicious.' She removes your clothes easily and her tongue flicks out to lick your folds, slipping in after a couple licks to probe and prime your depths, stretching them a bit as her prick engorges and begins to drip thick pre onto the ground. You can feel your walls begin dripping with juices as she stimulates them masterfully, her tongue finding all the right places to almost make you feel like a bitch in heat.";
		say "     'Mmmm, hope you're ready, because I'm going to leave you walking funny for hours honey.' She immediately mounts you, her odd-shaped prick stretching your walls, but in a way that actually feels good even as her thrusts begin to stretch your tunnel out, making your passage even deeper as her two-foot battering ram tries to breach your inner gate. Within a minute she's unable to last any longer, and you feel a sense of blessed relief as her hot cum begins flooding your passage, her swollen knot presses against your lips because she simply couldn't fit. 'Ooohhh YES! Feel that, bitch? I'm going to give you so many puppies as soon as I can squeeze this thing into you completely.' She pulls out without wasting another second, her cock still gushing out her rich sperm as she turns to walk away. You, your clothes, and much of the local plants end up splashed with her hot seed. Your abused passage throbs from the fierceness of her short pounding.[impregchance]";
		if Cunt Tightness of Player < 10, increase Cunt Tightness of Player by 1;
		if Cunt Depth of Player < 24, increase Cunt Depth of Player by 2;
	else if Player is female:
		say "     'Mmmmm, such a beautiful little bitch, and you smell so nice.' Her tongue lightly caresses your folds before she gives them a gentle nip. Her tone seems almost loving though. The brief nuzzle she gives as she crawls over you and places one hand on your chest to hold you in place while her large prick rubs against your rapidly dampening folds supports this as she's not simply using you like some random fucktoy.";
		say "     Her hand tightens on your shoulders as she presses in slowly, sucking in a sharp breath as your passage eagerly accepts her stiff rod. Her nipples can be felt against your back, pressing against your skin as she begins to gently rock back and forth, drawing this encounter out as long as she can. For the first time you notice a slightly sweet scent, and feel an odd dampness on your back as the giant shemale begins to leak. Small drops fall from each nipple at random moments in the time she takes, to truly screw you, and you feel your own orgasm hit at least three times in the time it takes for her knot to begin bumping against your soaked lips. She begins growling softly, her thrusts becoming harder and more insistent until she finally manages to sink that thicker bulb within you and tie herself to you. Once more she howls as she cums, her seed gushing out in a constant series of spurts that leaves your womb swollen in no time, but her large size works against both of you as the pressure simply keeps building as her balls continue their twitching and pumping of her thick, fertile seed until you begin to think that you might burst from how much your body is being stretched.[impregchance]";
		WaitLineBreak;
		say "     Her orgasm finally stops, the discomfort making it feel as if it lasted for hours. She very carefully pulls herself out of you, her knot still swollen, but the pressure within your body aiding this. What feels like a couple gallons of seed gush out immediately before the flow slows to a trickle. She moves off of you and brings her head down to your abused folds, licking tenderly for a few minutes to try and ease the pain. 'I'm sorry, I didn't mean to hurt you like this but I just got so carried away when I found out you could actually take me. I'll leave you alone for now, but I won't be able to control myself if I see you again, you sweet little thing. I want puppies so badly, and I can't have them myself...' she trails off. Standing up, she walks away quickly and leaves you alone to clean yourself up and try to figure out how to fit in your clothes again when you're round enough to be carrying twins...";
	else if a random chance of anallevel in 5 succeeds:
		say "     She growls as she removes your clothes only to find out that you lack the equipment to do what she really wants to you. Nevertheless, she quickly covers you and uses one broad hand to hold you in place as her cock begins to nudge up against your ass. 'All you had to do was grow a cunt for me, that's all I wanted you to do. This would have been so much nicer for the both of us if you had done that.' And with that said she thrusts in HARD, her tool sinking in three inches on the first thrust, not even giving her precum a chance to lube up your hole or anything. 'I'm just so horny, I keep smelling bitches in heat in this city but they all run away from me.'";
		say "     She's not trying to take her time, her hard thrusts forcing as much of her length into you as she can while her pre flows heavily. She's left with more than half of her cock outside when your ass refuses to take anymore, her thrusts now actually a bit painful. All sense of care and tenderness that she may have shown before goes right out the window when she begins to piston in and out in quick jerks of her hips, her head throbbing and flaring as the tight walls of your ass squeeze and ripple around it.";
		WaitLineBreak;
		say "     Within minutes she's over the edge, her length swelling as her seed is forced into your body, more and more flowing in every second as her nuts unleash their torrent. You can feel the hot fluid as the pressure from this giant's tool forces it back through your system, the heat in your body only increasing as she pulls out and allows the rest of her orgasm to pump over you, covering your entire body with her seed and leaving her scent to seep into your skin before she storms off. The ground shakes with her angry and frustrated steps. You need a shower, badly.[mimpregchance]";
	else:
		say "     The collie creature grabs your head roughly with a growl and [if scalevalue of Player < 3]pulls you forward[else]pushes you down[end if] so your face is pressed to her crotch. Her thick doggy dick pulses and throbs against your cheek, drooling copious precum onto it. 'I'm just so pent up. I see all these hot bitches around the city, but they're too small for me and run away. So you're going to help give me a little relief,' she growls, grinding her cock against your face again before forcing her prick past your lips. You give a muffled groan of protest, but can do little to stop the mighty canine [if HP of Player > 0]at this point[else]after that fight[end if].";
		say "     The tapered shape of that two-foot length of dog meat helps little as it is pushed down your throat. You can only release a muffled groan as it's stuffed into you by the lustful canine. She grips your head roughly and starts thrusting into your mouth, eager for some relief. The scent and taste of her virile manhood clouds your senses, making you [if HP of Player > 0]all the more aroused[else]aroused despite yourself[end if]. You start licking and sucking at the thrusting rod as she works more than foot of it in and out of you. Some thrusts are deeper and harder with her pulling back enough to leave a gooey splatter of precum across your tongue before sliding back down into your belly to add more there as well.";
		say "     As her climax approaches, her zeal increases. That thick knot at the base of her canine dick bumps against your lips until eventually your mouth is forced open to take the even thicker bulb. You're left locked to her crotch with the tip of her cock [if scalevalue of Player < 3]deep into your belly. When she cums, the stream of canine cum that spews forth has nowhere to go but to bloat your belly until it's rounded and stretched. You can taste the excess washing up into your mouth, a little spilling out around the thick bulge and out your nostrils. Your eyes water and you can hardly breathe, but your sex-addled mind still loves the taste of this hyper-virile creature's seed[else if scalevalue of Player < 5]in your belly. When she cums, the stream of canine cum that spews forth is delivered directly into your stomach to fill it, leaving a visible bulge in your belly. Some of the excess washes up into your mouth to be trapped behind the knot and your sex-addled mind loves the taste of this hyper-virile creature's seed[else]at the entrance to your stomach. When she cums, the bulk of the stream of canine cum that spews forth is delivered directly into your stomach to fill it, leaving you full and warm inside. Some seeps back up into your mouth to be trapped behind the knot, providing your sex-addled mind with a taste of this hyper-virile creature's seed[end if].";
		WaitLineBreak;
		say "     Once spent and she's had a chance to recover from her powerful orgasm, she notices how your mouth is still locked to her still mostly-swollen knot. She gives you several tugs[if scalevalue of Player > 3] before managing to pull you free. Sore, tired and full by this point, you flop to the ground[else], but can't pull you free. You're left stuck to her crotch for several more minutes before her doggy erection's waned enough to release you. Weak and full by this point, you flop to the ground, excess semen drooling from your sore and gaping mouth[end if]. '[one of]Oh yeah. I really needed that. You're quite the cocksucker,' she says, patting your head like a puppy[or]Hopefully by next time, you'll have learnt your lesson and have a cunt for me to fill instead,' she scolds[or]Uhhh... don't bother getting up. I'll show myself out,' she jokes[or]Sorry for getting a little rough there at the end. Still, felt great. Let's do this again some time,' she says merrily[at random]. With that, she leaves you behind with a bellyful of dog semen. Once you've recovered enough, you get up and wander back to somewhere a little safer until your forced meal can be absorbed.";
		PlayerEat 10;
		PlayerDrink 5;
		infect; [additional infection result]


to say Shemale Smooth Collie defeat:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "     The shemale falls to the ground with a thunderous thud and you can even feel the vibrations rolling up your feet as her large canine body hits the ground in defeat. Smirking to yourself while you look over the creature, you can't help but lick your lips and stare at that shapely rear presenting itself to you. The defeated Collie is groaning and writhing stomach down upon the ground, which gives you a nice view of the massive cum-factories between her legs and the overly immense, though slowly softening manmeat to go with them[if Libido of Player > 30]. Silently contemplating to yourself, you let out a thoughtful, 'Hrm...' as you gaze lustfully at that plump rear and heavy set of most definitely potent baby makers[end if].";
		say "     [bold type]Do you want to have some fun with the defeated collie?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Milk her breasts";
		now sortorder entry is 0;
		now description entry is "Fill a bottle with some tasty dog milk";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck her butt";
			now sortorder entry is 1;
			now description entry is "Have your way with the shemale's ass";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck her off";
		now sortorder entry is 2;
		now description entry is "Suck a load of hot cum from her big balls";
		[]
		if Player is female and ( Cunt Depth of Player >= 18 and Cunt Tightness of Player >= 6 ):
			choose a blank row in table of fucking options;
			now title entry is "Ride her (vaginal)";
			now sortorder entry is 3;
			now description entry is "Stuff your roomy cunny with that big doggy dick";
		[]
		if scalevalue of Player > 3 or player is twistcapped:
			choose a blank row in table of fucking options;
			now title entry is "Ride her (anal)";
			now sortorder entry is 4;
			now description entry is "Sink your [if Player is twistcapped]stretchy[else]enlarged[end if] ass down onto that big doggy dick";
		[]
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
					if nam is "Milk her breasts":
						say "[CollieMilking]";
					else if nam is "Fuck her butt":
						say "[CollieFucking]";
					else if nam is "Suck her off":
						say "[CollieSucking]";
					else if nam is "Ride her (vaginal)":
						say "[CollieVagRide]";
					else if nam is "Ride her (anal)":
						say "[CollieAnalRide]";
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Striding away with your head held high, you leave the Collie to her fate.";
			else:
				say "Invalid Option. Pick between 0 and [the number of filled rows in the table of fucking options].";
		wait for any key;
		clear the screen and hyperlink list;

to say CollieMilking:
	say "     With a reward for besting this gigantic canine in mind, you dig up an empty plastic bottle from your pack, then crouch over her panting form. The large ears upon the dog's head twitch when your hand brushes over her chest, a soft whimper escaping the massive canine's lips when she notices that you are not done with her yet. Moving your hands to touch and caress her large furred breasts, you wake deep maternal urges in the shemale's body. She closes her eyes and sighs happily as she imagines her own puppies nuzzling around and searching for teats to drink from. It doesn't take long till small beads of milk form at the nipples as her breasts get ready to feed her imaginary brood. Hands on the swelling boobs of your defeated opponent, you indulge her pleasurable dream while filling the bottle with spurt after spurt of creamy milk.";
	say "     When you soon have your container topped off, you put the cap back on it and write on the lid whose milk you filled it with, then pack the bottle away. The collie barely registers any of this, having taken over pinching her own nipples as you pulled away. You leave her to revel for a little while longer in her fantasy, giving her breasts a last caress before walking away.";
	LineBreak;
	say "[bold type]You gain a bottle of Dog Milk![roman type][line break]";
	increase carried of dog milk by 1;

to say CollieSucking:
	LineBreak;
	say "     You can't help but notice how dry your mouth is, and how tasty that two feet long piece of glistening, tapered doggy-meat looks. Slowly lowering yourself to your knees between the Collie's legs, you then lean down to lay upon your stomach as well. Not as a gesture of submission, though, but just to make use of the fruits of your victory! The large ears upon the dog's head twitch when your thighs brush over her feet, a soft whimper escaping the massive canine's lips when she notices that you are not done with her yet.";
	WaitLineBreak;
	say "     Using your elbows to prop yourself upright, you place both hands upon the half-flaccid length of cock between her legs. Hoisting the still heavy and hot flesh up towards your face. The thick scent of heat, musk and other creatures['] past impalement greets your nostrils. A shiver runs down your spine at the scent, your mouth salivating already when the massive slab of dog-cock throbs to life at the touches upon it. Forming at its tapered tip is a quite heavy droplet of pre, threatening to drip down towards the ground. Not to let that happen, you lean forward, opening your jaw wide and engulf the cockhead of your former opponent.";
	say "     Murmurs of enjoyment escape your lips around that twitching spire of meat as you suckle at its broad head. You can hear soft moans coming from the shemale collie's lips and smirk around the massive pole. Then suddenly, there is a hefty jump and swell going through the shaft in your mouth. Tonguing the salty tapered tip, you see the massive orbs between her legs tighten up and be pushed upwards by her swelling knot - which almost reaches the size of a volleyball! Setting your hands to grip against the sides of the immensely girthy length and stroke along the hard shaft, you soon see the large vein on it swell, and you ready yourself for what was about to happen.";
	WaitLineBreak;
	say "     The Collie lets out a howl of delight and her tail wags, lifting from her rear to point skyward in excitement. The fat slab of dick in your mouth does a powerful jerk as she orgasms, making it necessary to hold on pretty tightly so you don't lose your grip. A gargantuan rope of seed is spilled into your waiting mouth, incredibly dense and thick, more than enough to consider it a liter in just one healthy throb of that shaft. There just is no way to hold in the pressure building up in your mouth, your cheeks bulging out and thick strands of the intensely scented spunk squirting out from the between your lips and her thick shaft. Fighting to swallow down the thick cream in your mouth, your attempt is immediately foiled by another massive eruption of the collie's spooge into your still-full mouth. Loads of it just spill out, running down your chin and chest as well as splattering on the ground below.";
	say "     The intense force of her shooting cock even forces its way down your throat and directly into your stomach, causing it to round out quite quickly with the sheer amount of sperm going into it. After several more blasts, thankfully the flood lessens, going down in volume until it's only a normal-sized load - a trickle, for the collie. As she finally stops cumming, all tension goes out of the large dog-morph, the tail above you flopping down over the shemale's side. Pulling your lips off of the slowly deflating cock, you cough and splutter up some seed that had managed to force its way down your wind-pipe, then take a deep breath. Rising from the ground with shaking arms, you look down at the pool of seed below. Raising an arm and wiping off your chin and chest, you shake your head at the truly impressive amount of cum the collie produced, wondering how much it'd be if she didn't get off for a few days.";
	WaitLineBreak;
	say "     With the collie pleasantly passed out, and not able to answer that question, you just smirk and rub at your distended stomach. Feeling very full and with your thirst sated, you leave the shemale to her fate...";
	decrease thirst of Player by 10;
	decrease hunger of Player by 5;
	increase Libido of Player by 10;
	if thirst of Player < 0, now thirst of Player is 0;
	if hunger of Player < 0, now hunger of Player is 0;
	if Libido of Player > 100, now Libido of Player is 100;


to say CollieFucking:
	LineBreak;
	say "     Smiling to yourself, you drop your pants, releasing your already hardening [cock size desc of Player] dick from the overly tight confines of those trousers. You waste no time and grasp your shaft, stroking it ever so teasingly while you eye the rear of the beaten collie. Dropping to your knees between her spread legs, you release the grasp on your shaft, letting the underside of it flop down against the shemale's rump with an audible 'slap' echoing around you both.";
	WaitLineBreak;
	if Cock Length of Player < 18:
		say "     The shemale whimpers when she realizes just what you're about to do, her tail lowering down between her legs as you sandwich your shaft between the cheeks of her rump. The puckered flesh of her opening twitches a bit as she tenses when the bottom of your increasingly stiff and drooling, [Cock of Player] dick touches her there. Moaning lightly in anticipation, you just can't wait any longer. Lowering your hand to grasp that pesky tail by its base, tugging it harshly upwards, the huge Collie cries out in pain, her hips pushing up to try and relieve some of the tension. As she does so, her butt brushes against your pelvis, your [cock size desc of Player] pressed into her rump and prodding the base of her tail just below where you hold on. With her round bottom in the air and those cheeks wedged apart by your [cock size desc of Player] cock, you feel it's time to get this victory party started.";
		say "     Pulling back your hips, your cock falling between those cheeks and its tip pressing up against the swollen flesh of the submitting Collie-bitch's winking pucker. You wrench up on her tail hard and at the same time slap your free hand down upon her rump with a loud clap. The flesh growing hot under your palm and the cries of pain from your about-to-be-claimed bitch sound like music to your ears. It is time to lay your rightful claim to this bitch's less than used tailhole!";
		WaitLineBreak;
		say "     With a wiggle of your hips and a heavy thrust forwards, you feel the tip of your hard shaft stretch out her puckered flesh. Your shaft twitching and spitting out a few spurts of your pre into her tight rear as you start to slide into the collie's warm tunnel. Sighing a heavy moan, you slowly push your hips onwards, the snug feeling of that tight ass gripping your shaft ever so lovingly while you drive your [cock size desc of Player] [Cock of Player] dick into the whimpering collie. The ring of her pucker tightly stretches around your shaft, being forced further apart as you move deeper. The lovely sounds of whimpers and whining coming from the once tough and seemingly intimidating collie gives you chills of excitement. It doesn't take much longer before your [Ball Size Adjective of Player] nuts press against the cleft of her lovely rounded rear.";
		say "     Your hand dropping the tail and both of them grasping those wide hips in front of you, you start plowing into the bitch's boy-cunt with reckless abandon. Her whines turn into soft gasps soon after, that tightly-muscled, velvety embrace against your [cock size desc of Player] cock nearly pushing you over the edge already. The echoing slaps of your own set of [Ball Size Adjective of Player] orbs hitting her massive baby factories below sound out around you. You even hear the tell-tale slap of the collie's own two feet of cock smacking itself against the ground with your jarring thrusts.";
		WaitLineBreak;
		say "     Fucking this nicely submissive doggie, you can't hold back much longer! With a loud groan from your lips, an all too familiar feeling washes up your stomach and groin. Your shaft twitches inside of the collie's tight ass, your [Ball Size Adjective of Player] nuts throbbing, clenching and churning deep within. The spits of pre-spooge that you spilled into her depths offer a deliciously lewd squelching every time you slam yourself into her bottom, pushing your arousal even further along. Your body tenses up and a loud growl escapes your lips as you drive your swelling member into the collie's taunt butt in a final thrust. Your pent up orbs unleash their seed in heavy gouts, the burning hot spunk spilling into your newly claimed bitch wave after wave.";
		say "     Filling her up rather nicely, the powerful set of muscles in her ass milking your cock as you drop your entire load of cream into her upturned ass. The shemale below you pants, her tail slightly wagging from side to side, the lengthy fur of it whisking at your chin and chest. With one last final jerk of your hips, you slip your spent shaft from her rump. Looking down, you watch some of your thick white cream leak out of her gaping hole, run in a singular, lengthy strand and drip down onto the ground. Rising to your feet and wiping your knees of dirt, you leave her like that, feeling quite satisfied.";
	else:
		say "     The shemale yelps and twists her head around to look at you with wide eyes, 'O-oh my fucking god... where the fuck were you hiding that?! N-no! That won't fit!' The shemale whimpers when she realizes that you're gonna fuck her no matter what she says, her tail lowering down between her legs as you sandwich your shaft between the cheeks of her rump. The puckered flesh of her opening twitches a bit as she tenses when the bottom of your increasingly stiff and drooling, [Cock of Player] dick touches her there. Moaning lightly in anticipation, you just can't wait any longer. Lowering your hand to grasp that pesky tail by its base, tugging it harshly upwards, the huge Collie cries out in pain, her hips pushing up to try and relieve some of the tension. As she does so, her butt brushes against your pelvis, your [cock size desc of Player] still draping over her rear and looming over her back.";
		say "     Slowly shifting backwards quite a bit, nearly far enough to have your knees at her ankles, you finally manage to align your shaft with her rear opening, prodding the collie's clenched pucker. Let's get this victory party started. You wrench up on her tail hard and at the same time slap your free hand down upon her rump with a loud clap. The flesh growing hot under your palm and the cries of pain from your about-to-be-claimed bitch sound like music to your ears. It is time to lay your rightful claim to this bitch's less than used tailhole!";
		WaitLineBreak;
		say "     With a wiggle of your hips and a heavy thrust forwards, you feel the tip of your hard shaft stretch out her puckered flesh. Your shaft twitching and spitting out a few spurts of your pre into her tight rear as you start to slide its immense length into the collie's warm tunnel. Her screams at taking the massive invading member in her ass, stretching it wide, fill the area and her tail and whole body tense up pretty hard. Sighing a heavy moan, you slowly push your hips onwards, the snug feeling of that tight ass gripping your shaft ever so lovingly while you drive your [cock size desc of Player] [Cock of Player] dick deep into the whimpering collie. The ring of her pucker tightly stretches around your shaft, being forced further apart as you move deeper. The lovely sounds of whimpers and whining coming from the once tough and seemingly intimidating collie gives you chills of excitement. It doesn't take much longer before your [Ball Size Adjective of Player] nuts press against the cleft of her lovely rounded rear.";
		say "     Your hand dropping the tail and both of them grasping those wide hips in front of you, you start plowing into the bitch's boy-cunt with reckless abandon, ignorant to her still somewhat pained grunts and pants. The tightly-muscled, velvety embrace around your [cock size desc of Player] cock nearly pushes you over the edge already. The echoing slaps of your own set of [Ball Size Adjective of Player] orbs hitting her massive baby factories below sound out around you. You even hear the tell-tale slap of the collie's own two feet of cock smacking itself against the ground with your jarring thrusts.";
		WaitLineBreak;
		say "     Fucking this nicely submissive doggie, you can't hold back much longer! With a loud groan from your lips, an all too familiar feeling washes up your stomach and groin. Your shaft twitches inside of the collie's tight ass, your [Ball Size Adjective of Player] nuts throbbing, clenching and churning deep within. The spits of pre-spooge that you spilled into her depths offer a deliciously lewd squelching every time you slam yourself into her bottom, pushing your arousal even further along. Your body tenses up and a loud growl escapes your lips as you drive your massive member into the collie's taunt butt in a final thrust.";
		say "     Your pent up orbs unleash their seed in heavy gouts, the burning hot spunk spilling into your newly claimed bitch wave after wave. With the amount of cream you pump into her upturned ass, even with what squirts out around your shaft, the collie's stomach starts to bulge quite a bit. After filling the speechless collie up rather nicely, you give a final jerk of your hips and pull your spent shaft from her rum. Looking down, you watch a literal waterfall of your thick white cream gush out of her gaping hole to splash down onto the ground. Rising to your feet, you wipe your cock off against the clean fur of her back, then leave the collie like that, feeling quite satisfied.";
	decrease Libido of Player by 20;


to say CollieVagRide:
	say "     With one hand on the collie's dick and the other on her shoulder, you get her to roll over onto her back for you. She groans, still dazed from fight, and doesn't notice what you're doing until you're already grinding your dripping fold along her manhood just before sinking the first few inches into your cunt. She groans something about why you just wouldn't let her fuck you if that's what you wanted, but you cut her off by grabbing her tits and giving her big nipples a squeeze. Spurts of milk fly from them and the canine shemale releases something between a whimper and moan of delight.";
	say "     Your cunt accepts inch after inch of the dog creature's dick as you continue to ride her, sinking a little lower every time you go down. Her cock pulses and throbs inside you with an obvious need for release. And from the heft of those balls of hers, you know it'll be a big one - just what your sex-fueled mind desires. Eventually working your way down to her knot, you grind against it, leaking femcum over the thick bulge. Your cunny[if Cunt Tightness of Player < 12] slowly[end if] stretches open, eventually reaching the point you're able to force the slick bulb into you.";
	say "     Your vaginal walls clamp down around the knot, drawing a lustful howl from the collie. You can feel those hot, heavy orbs under your ass pull up and throb a moment before the first of a near-constant stream of doggy cum shoots into you. Her seed gushes into your womb, leaving it swollen in no time. She continues to cum even after your uterus is full, stretching your belly as she pumps more and more of her thick, fertile seed into your [if gestation of child > 0]already occupied womb[else if Player is impreg_able]ready and waiting womb[else]belly[end if]. After what feels like gallons of cum has been stuffed into you, the worn out canine passes out and you're left stuck on her knot. It keeps it all trapped inside you, leaving your belly rounded and your insides feeling warm and tingly[if scalevalue of Player < 3], if more than a bit uncomfortably stretched as well[else], if a bit uncomfortably stretched[end if][if Player is impreg_able] while her cum does its best to knock you up[end if]. When it finally does go down enough to free you, you pull yourself off the flagging doggy dong, drooling a mess of her cum onto the shemale's manhood and down your thighs.";


to say CollieAnalRide:
	say "     With one hand on the collie's dick and the other on her shoulder, you get her to roll over onto her back for you. She groans, still dazed from fight, and doesn't notice what you're doing until you're already pressing the dribbling tip of her canine cock against your back door. Your pucker spreads [if Player is twistcapped]readily[else]slowly[end if] to accept the tapered glans, taking the first few inches of meat into your ass. She groans something [if Player is female]asking why you'd even want it in the butt when you've got a cunt she could be breeding[else]about why you wouldn't just let her fuck you if that's what you wanted[end if], but you cut her off by grabbing her tits and giving her big nipples a squeeze. Spurts of milk fly from them and the canine shemale releases something between a whimper and moan of delight.";
	say "     Savoring this, you work inch after inch of the dog creature's dick into your rear as you continue to ride her, sinking just a little lower every time you go down. Happy for a hot hole to fill, her cock pulses and throbs inside you with an obvious need for release. And from the heft of those balls of hers, you know it'll be a big one - just what your sex-fueled mind desires. The feel of it stuffing your ass and [if Player is male]throbbing against your prostate[else]stretching your bowels[end if] as it pushes deeper and deeper inside you is wonderful. Eventually you work your way down to her knot and you grind against the thick bulge. Your asshole[if Player is not twistcapped] slowly[end if] stretches open, eventually reaching the point you're able to force the hard bulb into your rectum.";
	say "     Your anal muscles clamp down around the base of the knot while your rectal walls squeeze down onto it, drawing a lustful howl from the collie. You can feel those hot, heavy orbs under your ass pull up and throb a moment before the first of a near-constant stream of doggy cum shoots into you. Her seed gushes into your bowels, flooding them [if Player is mpreg_ok]and your hidden womb [end if]with a torrent of virile cum. She continues to cum even after you're full, stretching your belly as she pumps more and more of her thick, fertile seed into your belly. After what feels like gallons of cum has been stuffed into you, the worn out canine passes out and you're left stuck on her knot. It keeps it all trapped inside your ass, leaving your tummy rounded and your insides feeling warm and tingly[if scalevalue of Player < 3], if more than a bit uncomfortably stretched as well[else], if a bit uncomfortably stretched[end if][if Player is mpreg_able] while her cum does its best to knock you up[end if]. When it finally does go down enough to free you, you pull yourself off the flagging doggy dong, drooling a mess of her cum onto the shemale's manhood and down your thighs.";

to say CollieDesc:
	setmongender 6;
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		choose a row with name of "Smooth Collie Shemale" in the Table of Random Critters;
		if enemy type entry is 1: [unique enemy, player does not know the name]
			say "     An enormously big figure comes walking down the street and looks at you with a grin on her muzzle. The canine beast looks quite a bit like Lassie, if Lassie were twelve feet tall, walked upright and had the general shape of an attractive woman. Plus eight rather large breasts and a dick that would probably cause a stallion some envy... oh, and much shorter fur. On second thought, she doesn't look much like Lassie after all. 'Hello darling,' the giant anthro says in a surprisingly high-pitched voice, her eyes roaming over your form as she hungrily takes you in. 'I'm Sharlene, and you look like just what I need to relieve some of the pressure in my balls.' And with that, she steps forward and reaches for you. Not so much to fight, but rather to just make use of your body for her pleasure.";
			now enemy type entry is 2; [player knows her name]
		else:
			say "     Once more, you run into Sharlene, the twelve feet tall anthro collie. Her eight breasts wiggle with every step the enormous anthro takes and the long shaft dangling between her legs twitches as she sees you. 'You again,' the shemale dog says in a surprisingly high-pitched voice, her eyes roaming over your form as she hungrily takes you in. 'Come on, let's have some fun together, eh?!' And with that, she steps forward and reaches for you. Not so much to fight, but rather to just make use of your body for her pleasure.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Smooth Collie";
	add "Smooth Collie Shemale" to infections of CanineList;
	add "Smooth Collie Shemale" to infections of FurryList;
	add "Smooth Collie Shemale" to infections of NatureList;
	add "Smooth Collie Shemale" to infections of TransList;
	add "Smooth Collie Shemale" to infections of TaperedCockList;
	add "Smooth Collie Shemale" to infections of KnottedCockList;
	add "Smooth Collie Shemale" to infections of SheathedCockList;
	add "Smooth Collie Shemale" to infections of BipedalList;
	add "Smooth Collie Shemale" to infections of TailList;
	now Name entry is "Smooth Collie Shemale"; [Name of your new Monster]
	now enemy title entry is "Giant Collie";
	now enemy Name entry is "Sharlene";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The 'bitch' charges in quickly, barking as it runs at you before biting at your shoulder and trying to overbalance you in an attempt to subdue you quickly and with minimal pain.[or]The oversized beast backs up slightly before running and leaping at you, throwing all of its weight at your stomach in an effort to knock you on your ass. She must be 90% muscle![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Shemale Smooth Collie Defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Shemale Smooth Collie attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[CollieDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "drawn forward into a long muzzle that leads back into a flat canine skull. Your ears now stick straight up from your head most of the time, only shifting when you hear a particularly loud noise. New muscles easily change which way they"; [ Face description, format as "Your face is (your text)"]
	now body entry is "[rsscbodyentry]";
	now skin entry is "[if looknow is 1]short, soft, dense fur in the sable pattern of a collie, completely covering your[else]short furred, sable patterned[end if]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "Your tail is covered in short, soft, golden fur from your ass right up to the last inch or so, where it abruptly turns white."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[if looknow is 1]bright red canine/human hybrid in shape, complete with a knot and sheath,[else]canine hybrid[end if]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as your skull begins to alter in shape as if made of clay. A sense of pressure here and a bit of stretching there, followed by a burning sensation in your mouth as your teeth are reshaped. You end up with the long, slender muzzle leading into a flat head of a collie"; [ face change text. format as "Your face feels funny as (your text)." ]
	if "Male Preferred" is listed in feats of Player:
		now body change entry is "the change begins, bones crack and snap painlessly as they reshape. You can feel your waist drawing in somewhat and your shoulders broadening slightly, your body fat begins to melt away as your muscles bulk up and become more defined, making you look like a bodybuilder... though with a more feminine figure than you'd like. Your spine curves in a way that leaves your chest thrust out and displayed more prominently. Your legs gain digitigrade form and thick pads form on your feet as they are altered into paws. Your palms burn a bit as thinner pads form there when your hands begin reshaping, leaving you with slender fingers tipped with nails that look slightly more claw-like than a human's"; [ body change text. format as "Your body feels funny as (your text)." ]
	else:
		now body change entry is "the change begins, bones crack and snap painlessly as they reshape. You can feel your waist drawing in and your shoulder broadening slightly, leaving you with a voluptuous figure that many women would kill to have. Your spine curves in a way that leaves your chest thrust out and displayed more prominently. Your legs gain digitigrade form and thick pads form on your feet as they are altered into paws. Your palms burn a bit as thinner pads form there when your hands begin reshaping, leaving you with slender fingers tipped with nails that look slightly more claw-like than a human's";
	now skin change entry is "fur grows in a wave radiating out from the center of your abdomen. The pelt is dense enough to obscure any hint of your flesh on a good 99% of your body, seemingly leaving only your anus and lips bare"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it begins ballooning out as if being pumped full of air. A quick brush across it as it continues expanding leaves you gasping at how sensitive it feels. Baby got back, the only problem is it's YOUR back"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "its flesh is reshaped, a slight itching feeling permeates your balls as well as your entire groin is altered, pulling your prick up close against your stomach in a protective sheath as it is reshaped into something between a canine and a human one. The flesh is a bright red with a slight taper, but you still have a nice mushroom head. A small swelling at the base that pushes your new sheath down reveals that you have a knot as well"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 24;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [ Amount of Damage monster Does when attacking.]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 22; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 10; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 8; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex infection will try and give you ]
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is "smooth collie shemale fur";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if Player is male][one of]muscled[or]strong[or]powerful[at random][else][one of]voluptuous[or]curvaceous[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]doggy[purely at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Smooth Collie Shemale"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 7; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 9; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 6; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head, standing mostly upright with just their tips dipping a little. A long muzzle pushes forward to give you the black and tan furred head of a smooth collie"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a [Head Color of Player]-furred smooth collie"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "black and tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "black and tan"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "brown"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 16; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 13;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "long"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 13; [length in inches]
	now Torso Change entry is "white hair sprouts all over it, giving you a shiny coat of dense fur"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a dense coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "round"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 10; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 8; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 8; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "black and tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and white fur spreads over your paw-hands, then moves up towards your shoulders"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro smooth collie with dense, black and tan fur, ending in a pair of paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro German shepherd, with dense, [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "black and tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes fairly broad, with black and tan fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered dense black and tan fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "black and tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 4; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in black and tan fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length tail with black and tan fur"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feblack and tanathered/furred/scaly/...)]
	now Tail Color entry is "black and tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 16; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 4;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 5; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 22; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip. There is a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 5; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [length in inches]
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 4; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"smooth collie shemale fur"	"A tuft of sable fur that looks like it has been pulled out of the coat of a smooth collie. It's nicely soft."	0	smooth collie shemale fur

smooth collie shemale fur is a grab object.
the usedesc of smooth collie shemale fur is "[SmoothCollieShemaleFurUse]".
it is part of the player.
It is temporary.

to say SmoothCollieShemaleFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Smooth Collie Shemale";

instead of sniffing smooth collie shemale fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

to say rsscbodyentry:
	if "Male Preferred" is listed in feats of Player:
		say "reminiscent of a female bodybuilder, with defined muscles and only slightly wider hips with a thin waist and digitigrade legs ending in paws";
	else:
		say "that of a voluptuous woman with digitigrade legs ending in paws";

[Dog Milk is a drinkable item that reduces thirst but causes breast size to increase as well as up to 6 breasts (total, not additional) to grow on the player with no other transformative effects. Growth is limited to one inch at a time. I have no idea how to code this in though.
This could be a good item to use to further progress the 'sister' plot-line with Sandra. Say that she thinks one more thing needs to be done, but she needs some milk, and since it's already been established by her prior dialogue that she dislikes the feral gryphons, she refuses gryphon milk. She'll take the Dog Milk though, drink it herself and then give you a drink the same way she does when you visit her and are thirsty enough, except with the fresh nanites involved she gives you 6 instantly, and can do this to forms that don't normally allow it like the gryphon body.]


Section 3 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Smooth Collie Shemale";
	now heat cycle entry is 8;
	now heat duration entry is 4;
	now trigger text entry is "A whimper of need escapes your lips as a rush of heat builds between your legs. Nested between your thighs your canine spade begins to puff up and swell, engorging and becoming looser for your desired mate. You leak pheromone-laden juices steadily as your body goes into heat. As these sensations grow, your need to be bred increases.";
	now description text entry is "";
	now heat start entry is "[collieheatstart]"; [Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[collieheatend]"; [Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[collieinheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A whimper of need escapes your lips as a rush of heat builds in your lower abdomen. Tucked between your cheeks, your anal ring begins to puff up and swell, stretching and loosening for your desired mate. The faint scent of arousing pheromones linger around you, making you smell like a bitch in heat. As these sensations grow, your need to be bred increases.";


to say collieheatstart:
	if heatform is 0:
		[puts Shemale Smooth Collie as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Smooth Collie Shemale":
				now MonsterID is y;
				break;
		increase Cunt Tightness of Player by 1;
		increase Cunt Depth of Player by 1;
		if Cunt Tightness of Player < Cunt Tightness entry, increase Cunt Tightness of Player by 1;
		if Cunt Depth of Player < Cunt Depth entry, increase Cunt Depth of Player by 1;


to say collieheatend:
	if heatform is 0:
		say "As your heat passes, your needy canine cunt becomes a little less prominent and swollen.";
		[puts Shemale Smooth Collie as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Smooth Collie Shemale":
				now MonsterID is y;
				break;
		if Cunt Tightness of Player > Cunt Tightness entry, decrease Cunt Tightness of Player by 1;
		if Cunt Depth of Player > Cunt Depth entry, decrease Cunt Depth of Player by 1;
	else:
		say "As your heat passes, your needy asshole becomes less prominent and swollen. There still a craving for something to fill it, but it is manageable now.";
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 4, now slutfucked is 4;

to say collieinheat:
	increase Libido of Player by 5;
	if Libido of Player > 99, now Libido of Player is 99;
	if (Libido of Player > 90) and (location of Player is fasttravel ) and (slutfucked > 6):
		let colliechance be 25 + ( perception of Player ) * 2;
		if colliechance > 80, now colliechance is 80;
		let zz be a random visible dangerous door;
		if zz is not nothing:
			if the marea of zz is not "Outside", now colliechance is colliechance / 2;
		if a random chance of colliechance in 100 succeeds:
			say "A waft on the breeze catches your nose, your head snapping around as the need between your legs throbs. Unable to control your lust, you strike out in the direction of your body's desired mate's scent.";
			now slutfucked is 0;
			[puts Shemale Smooth Collie as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Smooth Collie Shemale":
					now MonsterID is y;
					break;
			say "The enticing scent leads to the large shemale collie. Immediately upon seeing what your heat-addled mind believes to be your mate, you immediately submit, offering yourself freely in the hopes of satisfying your body's lustful, heat-fueled need to be impregnated.";
			wait for any key;
			follow the cock descr rule;
			follow the cunt descr rule;
			follow the breast descr rule;
			say "[victory entry]";
			infect;
			decrease the score by 5;
			decrease the morale of the player by 3;
			if Player is kinky, increase the morale of the player by 6;
		else:
			say "Hot juices flow down your legs as your body's need starts to become overwhelming. You moan and whimper, finding yourself sniffing at the air for something you don't catch wind of.";
			increase slutfucked by 1;
	else if Libido of Player > 90:
		increase slutfucked by 1;


Section 4 - Endings

when play ends:
	if BodyName of Player is "Smooth Collie Shemale":
		if humanity of Player < 10:
			say "     As your collie instincts take over, you find yourself with increasingly strong urges to mate and make more strong, beautiful collie pups. Leaving all else behind, you strike out into the city to satisfy your new instincts. Your search comes to an end when you encounter a large and powerfully built shemale collie, drawn towards each other's scent";
			if Player is female:
				say ". She seems like an ideal mate to you and you submit yourself to her, much to her delight. You find yourself repeatedly bred by her, your womb growing full with her many pups. She is particularly pleased, loving you for giving her an ever-growing litter of puppies. And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				if Player is male and beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboy. He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was. While it seems to think your mate is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs. You exchange doggy kisses with this muscled hunk of a cuntboy and fuck him as well, breeding puppies in him to satisfy his growing need to breed as well. You make an odd family with you mate to both of them in opposite capacities, but the numerous puppies bred from your trio of horny hounds make you all so happy.";
			else if Player is mpreg_ok:
				say ". She seems like an ideal mate to you and you submit yourself to her. At first, she's uncertain, pounding your needy ass with her large phallus with care, but as your male pregnancy starts to show, she becomes elated. You find yourself repeatedly bred by her, your womb growing full with her many pups. She is particularly pleased, loving you for giving her an ever-growing litter of puppies. And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				if Player is male and beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboy. He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was. While it seems to think your mate is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs. You exchange doggy kisses with this muscled hunk of a cuntboy and fuck him as well, breeding puppies in him to satisfy his growing need to breed as well. You make an odd family with you mate to both of them in opposite capacities, but the numerous puppies bred from your trio of horny hounds make you all so happy.";
			else if Player is male:
				say ". Knowing your predicament is much like her own, you spend some time together, relieving each other's needs while searching for true mates.";
				if beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboy. He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was. While it seems to think your mate is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs. You exchange doggy kisses with this muscled hunk of a cuntboy and fuck him, breeding puppies in him to satisfy his growing need to breed as well.";
					say "     With the help of your new mate, the three of you are able to surround and capture a lone soldier. With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate of the shemale collie. Together, your family of four (soon to be much more) happily finds a warm den to breed numerous litters of big, strong puppies. And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				else:
					say "     With the help of your new mate, the three of you are able to surround and capture a lone soldier. With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate for you both. Together, your family of three (soon to be much more) happily finds a warm den to breed numerous litters of big, strong puppies. And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
			else:		[neuter]
				say ". Knowing your predicament to be even worse than her own, you spend some time together, relieving her lustful needs while searching for a true mate for her.";
				if beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboy. He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was. While it seems to think your friend is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs. Resolving to help both cousins with their needs for mates, you strike off together with renewed ambition.";
					say "     Helping your new friends, the three of you are able to surround and capture a lone soldier. With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate for the both of them. As quartet unusually gendered dogs - a shemale, a cuntboy, a herm and a neuter - you head off together as one family and pack of four (though soon to be more). You find a warm den for them to breed numerous litters of big, strong puppies while you take vicarious pleasure in playing with them while they breed and tending to the many puppies. In time, you settle into your new role, no longer feeling the urge to breed yourself (though always loving joining in to help) and instead accepting your place as caregiver to their frequent litters of strong puppies. And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				else:
					say "     Helping your new friend, the two of you are able to surround and capture a lone soldier. With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate of the shemale collie. As a trio unusually gendered dogs - a shemale, a herm and a neuter - you head off together as one family and pack of three (though soon to be more). You find a warm den for them to breed numerous litters of big, strong puppies while you take vicarious pleasure in playing with them while they breed and tending to the many puppies. In time, you settle into your new role, no longer feeling the urge to breed yourself (though always loving joining in to help) and instead accepting your place as caregiver to their frequent litters of strong puppies. And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
		else:
			say "     After being picked up and processed by the military (who do take some interest in your unusual infection), you are released and left to try and make a new life for yourself. Deciding to get away from the city, you move to a rural area and get a home at the outskirts of town. At first, they're a little wary of you, but aside from a little teasing and nervous stares at first, they soon come to accept you as a friendly and polite (if unusual-looking) neighbor.";
			if beauceronmet is true:
				say "     As you're getting ready for bed late one night, you hear a loud ruckus coming from outside like loud voices, barking dogs and breaking wood. Worried that you may have misjudged the townsfolk and half-expecting to see a mob with pitchforks and torches outside the door, you cautiously open the door. But what you find there is much more surprising. Taking up much of your small porch are the large shemale collie and cuntboy beauceron you saw back in the city those many months ago. Suddenly feeling confused and weak in the knees, the neighborly attitude you've been cultivating to help you be accepted here kicks in (and maybe something else as well) and you invite them to come in before you even realize what you're doing.";
				if Player is herm:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door. They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you. You catch part of their story about how they pushed through the military lines together to follow your scent. The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to be their mate. Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late the three of you are mating like wild dogs in your own living room. You end up sandwiched between the two, the beauceron taking your cock into his pussy while the collie pounds into your own cunt with her throbbing meat.";
					say "     Your neighbors take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've got you for a mate and lover, rarely leaving your property. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
				else if Player is male:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door. They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you. You catch part of their story about how they pushed through the military lines together to follow your scent. The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to be the beauceron's mate. Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late and the two of you are mating like wild dogs in your own living room. You end up atop of him, the beauceron taking your cock into his pussy while the collie runs her paws over your body and kisses you. The first mating over and in too much of a daze, you call one of your female neighbors and tell her to come over quickly. It's not long after her arrival that she's on the floor beside you, being mated by the collie.";
					say "     Your neighbors take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've each got a mate and lover of their own, rarely leaving you and your neighbor's property. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
				else if Player is female:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door. They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you. You catch part of their story about how they pushed through the military lines together to follow your scent. The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to be the collie's mate. Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late and the two of you are mating like wild dogs in your own living room. You end up beneath her as the collie pounds into your cunt with her throbbing meat. The first mating over and in too much of a daze, you call one of your male neighbors and tell him to come over quickly. It's not long after his arrival that he's on the floor beside you, mating with the beauceron.";
					say "     Your neighbors take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've each got a mate and lover of their own, rarely leaving you and your neighbor's property. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
				else:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door. They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you. You catch part of their story about how they pushed through the military lines together to follow your scent. The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to help them find mates. Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late and two of them have you licking and sucking them off in the middle of your living room to satisfy their pent up lusts. After they've cum, you're in too much of a daze and you call one of your male neighbors and another female neighbor, telling each to come over quickly. It's not long after their arrival that they're on the floor to either side of you, mating with the collie and the beauceron.";
					say "     Your neighbors take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've each got a mate and lover of their own, rarely leaving you and your neighbors['] properties. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
			else:
				say "     As you're getting ready for bed late one night, you hear a loud ruckus coming from outside like loud talking, barking and breaking wood. Worried that you may have misjudged the townsfolk and half-expecting to see a mob with pitchforks and torches outside the door, you cautiously open the door. But what you find there is much more surprising. Taking up much of your small porch is the large shemale collie you saw back in the city those many months ago. Suddenly feeling confused and weak in the knees, the neighborly attitude you've been cultivating to help you be accepted here kicks in (and maybe something else as well) and you invite her to come in before you even realize what you're doing.";
				if Player is female:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dog as she negotiates her way through the door. She pulls you into her arms, giving you crushing hugs and slobbery licks, barking about how glad she is to see you. You catch part of her story about how she pushed through the military lines to follow your scent to find her mate. Being too confused and enjoying the doggy kisses too much, it doesn't register what she has in mind until it's too late, the two of you mating like wild dogs in your own living room. You end up beneath her as the collie pounds into your cunt with her throbbing meat.";
					say "     Your neighbors take some time to warm up to the new arrival, but thankfully she's pretty peaceful now that she's got you for a mate and lover, rarely leaving your property. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie as a pet and mate of their very own.";
				else if Player is mpreg_ok:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dog as she negotiates her way through the door. She pulls you into her arms, giving you crushing hugs and slobbery licks, barking about how glad she is to see a friendly face after getting out of the city. You catch part of her story about how she pushed through the military lines and then followed your scent to find you. She talks about leaving the city to continue her search for a mate and caught wind of your scent and hoped you could help. Being too confused and enjoying the doggy kisses too much, it doesn't register what she has in mind until it's too late and you're sucking her off to help relieve her pent up lusts. You get her to mount you after that, telling her that you'll her mate. At first, she's uncertain, pounding your needy ass with her large phallus with care, but as your male pregnancy starts to show, she becomes elated.";
					say "     Your neighbors take some time to warm up to the new arrival, but thankfully she's pretty peaceful now that she's got you for a mate and lover, rarely leaving your property. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie as a pet and mate of their very own.";
				else:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dog as she negotiates her way through the door. She pulls you into her arms, giving you crushing hugs and slobbery licks, barking about how glad she is to see a friendly face after getting out of the city. You catch part of her story about how she pushed through the military lines and then followed your scent to find you. She talks about leaving the city to continue her search for a mate and caught wind of your scent and hoped you could help. Being too confused and enjoying the doggy kisses too much, it doesn't register what she has in mind until it's too late and you're sucking her off to help relieve her pent up lusts. With the remains of her creamy load still in your mouth, you are in a daze of lust and call one of your female neighbors, telling her to come over quickly. It's not long after her arrival that she's on the floor beside you, being mated by the collie.";
					say "     Your neighbors take some time to warm up to the new arrival, but thankfully she's pretty peaceful now that she's got you for a mate and lover, rarely leaving you and your neighbor's property. And when the puppies start coming, they're just too adorable to be ignored and are adopted other families. And as more and more puppies keep coming, eventually everyone in town has a sexy collie as a pet and mate of their very own[if Player is male]. And one of their many puppies - a [one of]herm[or]female[or]cuntboy[as decreasingly likely outcomes] takes a shine to you and becomes your mate and bears you many cute and sexy puppies as well[else]. Being neuter and not needing a mate of your own leaves you free to help everyone with their many puppies, turning your home into a nursery and kennel for them. You find this service to your community very satisfying[end if].";


Random Shemale Smooth Collie ends here.
