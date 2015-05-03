Version 3 of Random Shemale Smooth Collie For FS by Voldine begins here.
[Version 3.2.1 - Alternate MPreg-pregnant player loss scene - Stripes]

"Adds a Shemale Smooth Collie to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

colliedefeat is a number that varies.
to say Shemale Smooth Collie attack:
	if colliedefeat is 0:
		say "     The bitch quickly bowls you over as your body begins to go limp from the pain and battle weariness.  She sniffs eagerly at your crotch while flipping you onto your hands and knees, her tongue slipping out to lap gently before she yanks your clothes off with disturbing ease.  She wastes no time at all in foreplay beyond that, her massive cock already hard and dripping as she shoves it up against your [if cunts of player > 0]sensitive folds[otherwise]tense sphincter[end if] and applies a little pressure while her precum serves to make this easier on both of you... if only slightly.";
		say "     She only manages to squeeze a few inches into your tense body at first, but with each stroke the pleasure grows and your body responds by loosening up a bit.  You find yourself moaning after only a minute of her slow fucking, the pleasure quickly building to a peak that has your hips bucking and jerking, your spread muscles clenching down on the thickness within, putting even more pressure on her sensitive glans.  She arches her back and howls as her balls tighten up, that lengthy prick swelling slightly just before she unloads within you. In only a few seconds she pulls out and moans as her ongoing orgasm paints your back white. 'You're such a good lay. I can't wait to see how you turn out.'[impregchance]";
		now colliedefeat is 1;
	otherwise:
		if gestation of child > 0:
			if cunts of player > 0:
				say "     The bitch moves in as if to pounce on top of you before her nose begins twitching.  She crouches down close to the ground after pushing you gently onto your back, her nostrils rubbing against your crotch as she inhales deeply.  She gives a single lick across your folds, followed by a comforting growl as she nuzzles your stomach.";
				say "     'I'll have to paw off later, you're carrying a child and I don't want to risk hurting you.  I can offer you something to drink though, you do look thirsty.'  She doesn't waste a second before pressing a breast you your face and forcing her nipple into your mouth.  Milk begins flowing almost instantly, filling your stomach quite quickly as she forces you to suckle.";
			otherwise:
				say "     The bitch moves in as if to pounce on top of you before her nose begins twitching.  She crouches down close to the ground after pushing you gently onto your back, her nostrils rubbing against your ass as she inhales deeply.  She then pulls back, giving you a look of surprise.";
				say "     'Aren't you a strange one?  Somehow you've got a bun in the oven.  Don't know how that works, but I don't want to risk hurting you.  I can offer you something to drink though, you do look thirsty.'  She doesn't waste a second before pressing a breast you your face and forcing her nipple into your mouth.  Milk begins flowing almost instantly, filling your stomach quite quickly as she forces you to suckle.";
			if thirst of the player > 30:
				decrease thirst of the player by 30;
			otherwise:
				now thirst of the player is 0;
		otherwise:
			if cunts of player > 0 and cunt length of player is less than 18 or cunt width of player is less than 6:
				say "     'Ohhh, I knew I smelled a fresh bitch in town, and you smell absolutely delicious.'  She removes your clothes easily and her tongue flicks out to lick your folds, slipping in after a couple licks to probe and prime your depths, stretching them a bit as her prick engorges and begins to drip thick pre onto the ground.  You can feel your walls begin dripping with juices as she stimulates them masterfully, her tongue finding all the right places to almost make you feel like a bitch in heat.";
				say "     'Mmmm, hope you're ready, because I'm going to leave you walking funny for hours honey.'  She immediately mounts you, her odd-shaped prick stretching your walls, but in a way that actually feels good even as her thrusts begin to stretch your tunnel out, making your passage even deeper as her two-foot battering ram tries to breach your inner gate.  Within a minute she's unable to last any longer, and you feel a sense of blessed relief as her hot cum begins flooding your passage, her swollen knot presses against your lips because she simply couldn't fit. 'Ooohhh YES! Feel that, bitch? I'm going to give you so many puppies as soon as I can squeeze this thing into you completely.'";
				say "     She pulls out without wasting another second, her cock still gushing out her rich sperm as she turns to walk away. You, your clothes, and much of the local plants end up splashed with her hot seed. Your abused passage throbs from the fierceness of her short pounding [impregchance]";
				if cunt width of player < 10, increase cunt width of player by 1;
				if cunt length of player < 24, increase cunt length of player by 2;
			otherwise:
				if cunts of player is 0:
					say "     She growls as she removes your clothes only to find out that you lack the equipment to do what she really wants to you.  Nevertheless, she quickly covers you and uses one broad hand to hold you in place as her cock begins to nudge up against your ass.  'All you had to do was grow a cunt for me, that's all I wanted you to do.  This would have been so much nicer for the both of us if you had done that.'  And with that said she thrusts in HARD, her tool sinking in three inches on the first thrust, not even giving her precum a chance to lube up your hole or anything.  'I'm just so horny, I keep smelling bitches in heat in this city but they all run away from me.'";
					say "     She's not trying to take her time, her hard thrusts forcing as much of her length into you as she can while her pre flows heavily.  She's left with more than half of her cock outside when your ass refuses to take anymore, her thrusts now actually a bit painful.  All sense of care and tenderness that she may have shown before goes right out the window when she begins to piston in and out in quick jerks of her hips, her head throbbing and flaring as the tight walls of your ass squeeze and ripple around it.";
					say "     [WaitLineBreak]";
					say "     Within minutes she's over the edge, her length swelling as her seed is forced into your body, more and more flowing in every second as her nuts unleash their torrent.  You can feel the hot fluid as the pressure from this giant's tool forces it back through your system, the heat in your body only increasing as she pulls out and allows the rest of her orgasm to pump over you, covering your entire body with her seed and leaving her scent to seep into your skin before she storms off.  The ground shakes with her angry and frustrated steps.  You need a shower, badly.[mimpregchance]";
				otherwise:
					say "     'Mmmmm, such a beautiful little bitch, and you smell so nice.'  Her tongue lightly caresses your folds before she gives them a gentle nip.  Her tone seems almost loving though.  The brief nuzzle she gives as she crawls over you and places one hand on your chest to hold you in place while her large prick rubs against your rapidly dampening folds supports this as she's not simply using you like some random fucktoy.";
					say "     Her hand tightens on your shoulders as she presses in slowly, sucking in a sharp breath as your passage eagerly accepts her stiff rod.  Her nipples can be felt against your back, pressing against your skin as she begins to gently rock back and forth, drawing this encounter out as long as she can.  For the first time you notice a slightly sweet scent, and feel an odd dampness on your back as the giant shemale begins to leak.  Small drops fall from each nipple at random moments in the time she takes, to truly screw you, and you feel your own orgasm hit at least three times in the time it takes for her knot to begin bumping against your soaked lips.  She begins growling softly, her thrusts becoming harder and more insistent until she finally manages to sink that thicker bulb within you and tie herself to you.  Once more she howls as she cums, her seed gushing out in a constant series of spurts that leaves your womb swollen in no time, but her large size works against both of you as the pressure simply keeps building as her balls continue their twitching and pumping of her thick, fertile seed until you begin to think that you might burst from how much your body is being stretched.[impregchance]";
					say "     [WaitLineBreak]";
					say "     Her orgasm finally stops, the discomfort making it feel as if it lasted for hours. She very carefully pulls herself out of you, her knot still swollen, but the pressure within your body aiding this.  What feels like a couple gallons of seed gush out immediately before the flow slows to a trickle.  She moves off of you and brings her head down to your abused folds, licking tenderly for a few minutes to try and ease the pain.  'I'm sorry, I didn't mean to hurt you like this but I just got so carried away when I found out you could actually take me.  I'll leave you alone for now, but I won't be able to control myself if I see you again, you sweet little thing.  I want puppies so badly, and I can't have them myself...'  She trails off and stands up quickly at this point, walking away quickly and leaving you alone to clean yourself up and try to figure out how to fit in your clothes again when you're round enough to be carrying twins...";

to say Shemale Smooth Collie defeat:
	say "     The shemale falls to the ground with a thunderous thud and you can even feel the vibrations rolling up your feet as her large canine body hits the ground in defeat. Smirking to yourself while you look over the creature, you can't help but lick your lips and stare at that shapely rear presenting itself to you. The defeated Collie is groaning and writhing stomach down upon the ground, which gives you a nice view of the massive cum-factories between her legs and the overly immense, though slowly softening manmeat to go with them.[if libido of player is greater than 30] Silently contemplating to yourself, you let out a thoughtful, 'Hrm...' as you gaze lustfully at that plump rear and heavy set of most definitely potent baby makers.[end if][line break]";
	say "     Do you want to have some fun with the defeated collie? ";
	if player consents:
		say "     [line break]";
		if cocks of player > 0:
			say "Shall you suck her off (Y), or fuck the herm's ass (N)? ";
			if the player consents:
				say "[CollieSucking]";
			otherwise:
				say "[CollieFucking]";
		otherwise:
			say "[CollieSucking]";
	otherwise:
		say "     [line break]";
		say "     Padding away with your head held high, you leave the Collie to her fate.";
		wait for any key;

to say CollieSucking:
	say "     [line break]";
	say "     You can't help but notice how dry your mouth is, and how tasty that two feet long piece of glistening, tapered doggy-meat looks. Slowly lowering yourself to your knees between the Collie's legs, you then lean down to lay upon your stomach as well. Not as a gesture of submission, though, but just to make use of the fruits of your victory! The large ears upon the dog's head twitch when your thighs brush over her feet, a soft whimper escaping the massive canine's lips when she notices that you are not done with her yet.";
	say "     [WaitLineBreak]";
	say "     Using your elbows to prop yourself upright, you place both hands upon the half-flaccid length of cock between her legs. Hoisting the still heavy and hot flesh up towards your face. The thick scent of heat, musk and other creatures['] past impalement greets your nostrils. A shiver runs down your spine at the scent, your mouth salivating already when the massive slab of dog-cock throbs to life at the touches upon it. Forming at its tapered tip is a quite heavy droplet of pre, threatening to drip down towards the ground. Not to let that happen, you lean forward, opening your jaw wide and engulf the cockhead of your former opponent.";
	say "     Murmurs of enjoyment escape your lips around that twitching spire of meat as you suckle at its broad head. You can hear soft moans coming from the shemale collie's lips and smirk around the massive pole. Then suddenly, there is a hefty jump and swell going through the shaft in your mouth. Tonguing the salty tapered tip, you see the massive orbs between her legs tighten up and be pushed upwards by her swelling knot - which almost reaches the size of a volleyball! Setting your hands to grip against the sides of the immensely girthy length and stroke along the hard shaft, you soon see the large vein on it swell, and you ready yourself for what was about to happen.";
	say "     [WaitLineBreak]";
	say "     The Collie lets out a howl of delight and her tail wags, lifting from her rear to point skyward in excitement. The fat slab of dick in your mouth does a powerful jerk as she orgasms, making it necessary to hold on pretty tightly so you don't lose your grip. A gargantuan rope of seed is spilled into your waiting mouth, incredibly dense and thick, more than enough to consider it a liter in just one healthy throb of that shaft. There just is no way to hold in the pressure building up in your mouth, your cheeks bulging out and thick strands of the intensely scented spunk squirting out from the between your lips and her thick shaft. Fighting to swallow down the thick cream in your mouth, your attempt is immediately foiled by another massive eruption of the collie's spooge into your still-full mouth. Loads of it just spill out, running down your chin and chest as well as splattering on the ground below.";
	say "     The intense force of her shooting cock even forces its way down your throat and directly into your stomach, causing it to round out quite quickly with the sheer amount of sperm going into it. After several more blasts, thankfully the flood lessens, going down in volume until it's only a normal sized load - a trickle, for the collie. As she finally stops cumming, all tension goes out of the large dog-morph, the tail above you flopping down over the shemale's side. Pulling your lips off of the slowly deflating cock, you cough and splutter up some seed that had managed to force its way down your wind-pipe, then take a deep breath. Rising from the ground with shaking arms, you look down at the pool of seed below. Raising an arm and wiping off your chin and chest, you shake your head at the truly impressive amount of cum the collie produced, wondering how much it'd be if she didn't get off for a few days.";
	say "     [WaitLineBreak]";
	say "     With the collie pleasantly passed out, and not able to answer that question, you just smirk and rub at your distended stomach. Feeling very full and with your thirst sated, you leave the shemale to her fate...";
	decrease thirst of the player by 25;
	decrease the hunger of the player by 7;
	increase libido of player by 15;

to say CollieFucking:
	say "     [line break]";
	say "     Smiling to yourself, you drop your pants, releasing your already hardening [cock size desc of player] dick from the overly tight confines of those trousers. You waste no time and grasp your shaft, stroking it ever so teasingly while you eye the rear of the beaten collie. Dropping to your knees between her spread legs, you release the grasp on your shaft, letting the underside of it flop down against the shemale's rump with an audible 'slap' echoing around you both.";
	say "     [WaitLineBreak]";
	if cock length of player is less than 18:
		say "     The shemale whimpers when she realizes just what you're about to do, her tail lowering down between her legs as you sandwich your shaft between the cheeks of her rump. The puckered flesh of her opening twitches a bit as she tenses when the bottom of your increasingly stiff and drooling, [cock of player] dick touches her there. Moaning lightly in anticipation, you just can't wait any longer. Lowering your hand to grasp that pesky tail by its base, tugging it harshly upwards, the huge Collie cries out in pain, her hips pushing up to try and relieve some of the tension. As she does so, her butt brushes against your pelvis, your [cock size desc of player] pressed into her rump and prodding the base of her tail just below where you hold on. With her round bottom in the air and those cheeks wedged apart by your [cock size desc of player] cock, you feel it's time to get this victory party started.";
		say "     Pulling back your hips, your cock falling between those cheeks and its tip pressing up against the swollen flesh of the submitting Collie-bitch's winking pucker. You wrench up on her tail hard and at the same time slap your free hand down upon her rump with a loud clap. The flesh growing hot under your palm and the cries of pain from your about-to-be-claimed bitch sound like music to your ears. It is time to lay your rightful claim to this bitch's less than used tailhole!";
		say "     [WaitLineBreak]";
		say "     With a wiggle of your hips and a heavy thrust forwards, you feel the tip of your hard shaft stretch out her puckered flesh. Your shaft twitching and spitting out a few spurts of your pre into her tight rear as you start to slide into the collie's warm tunnel. Sighing a heavy moan, you slowly push your hips onwards, the snug feeling of that tight ass gripping your shaft ever so lovingly while you drive your [cock size desc of player] [cock of player] dick into the whimpering collie. The ring of her pucker tightly stretches around your shaft, being forced further apart as you move deeper. The lovely sounds of whimpers and whining coming from the once tough and seemingly intimidating collie gives you chills of excitement. It doesn't take much longer before your [short ball size] nuts press against the cleft of her lovely rounded rear.";
		say "     Your hand dropping the tail and both of them grasping those wide hips in front of you, you start plowing into the bitch's boy-cunt with reckless abandon. Her whines turn into soft gasps soon after, that tightly-muscled, velvety embrace against your [cock size desc of player] cock nearly pushing you over the edge already. The echoing slaps of your own set of [short ball size] orbs hitting her massive baby factories below sound out around you. You even hear the tell-tale slap of the collie's own two feet of cock smacking itself against the ground with your jarring thrusts.";
		say "     [WaitLineBreak]";
		say "     Fucking this nicely submissive doggie, you can't hold back much longer! With a loud groan from your lips, an all too familiar feeling washes up your stomach and groin. Your shaft twitches inside of the collie's tight ass, your [short ball size] nuts throbbing, clenching and churning deep within. The spits of pre-spooge that you spilled into her depths offer a deliciously lewd squelching every time you slam yourself into her bottom, pushing your arousal even further along. Your body tenses up and a loud growl escapes your lips as you drive your swelling member into the collie's taunt butt in a final thrust. Your pent up orbs unleash their seed in heavy gouts, the burning hot spunk spilling into your newly claimed bitch wave after wave.";
		say "     Filling her up rather nicely, the powerful set of muscles in her ass milking your cock as you drop your entire load of cream into her upturned ass. The shemale below you pants, her tail slightly wagging from side to side, the lengthy fur of it whisking at your chin and chest. With one last final jerk of your hips, you slip your spent shaft from her rump. Looking down, you watch some of your thick white cream leak out of her gaping hole, run in a singular, lengthy strand and drip down onto the ground. Rising to your feet and wiping your knees of dirt, you leave her like that, feeling quite satisfied.";
	otherwise:
		say "     The shemale yelps and twists her head around to look at you with wide eyes, 'O-oh my fucking god... where the fuck were you hiding that?! N-no! That won't fit!' The shemale whimpers when she realizes that you're gonna fuck her no matter what she says, her tail lowering down between her legs as you sandwich your shaft between the cheeks of her rump. The puckered flesh of her opening twitches a bit as she tenses when the bottom of your increasingly stiff and drooling, [cock of player] dick touches her there. Moaning lightly in anticipation, you just can't wait any longer. Lowering your hand to grasp that pesky tail by its base, tugging it harshly upwards, the huge Collie cries out in pain, her hips pushing up to try and relieve some of the tension. As she does so, her butt brushes against your pelvis, your [cock size desc of player] still draping over her rear and looming over her back.";
		say "     Slowly shifting backwards quite a bit, nearly far enough to have your knees at her ankles, you finally manage to align your shaft with her rear opening, prodding the collie's clenched pucker. Let's get this victory party started. You wrench up on her tail hard and at the same time slap your free hand down upon her rump with a loud clap. The flesh growing hot under your palm and the cries of pain from your about-to-be-claimed bitch sound like music to your ears. It is time to lay your rightful claim to this bitch's less than used tailhole!";
		say "     [WaitLineBreak]";
		say "     With a wiggle of your hips and a heavy thrust forwards, you feel the tip of your hard shaft stretch out her puckered flesh. Your shaft twitching and spitting out a few spurts of your pre into her tight rear as you start to slide its immense length into the collie's warm tunnel. Her screams at taking the massive invading member in her ass, stretching it wide, fill the area and her tail and whole body tense up pretty hard. Sighing a heavy moan, you slowly push your hips onwards, the snug feeling of that tight ass gripping your shaft ever so lovingly while you drive your [cock size desc of player] [cock of player] dick deep into the whimpering collie. The ring of her pucker tightly stretches around your shaft, being forced further apart as you move deeper. The lovely sounds of whimpers and whining coming from the once tough and seemingly intimidating collie gives you chills of excitement. It doesn't take much longer before your [short ball size] nuts press against the cleft of her lovely rounded rear.";
		say "     Your hand dropping the tail and both of them grasping those wide hips in front of you, you start plowing into the bitch's boy-cunt with reckless abandon, ignorant to her still somewhat pained grunts and pants. The tightly-muscled, velvety embrace around your [cock size desc of player] cock nearly pushes you over the edge already. The echoing slaps of your own set of [short ball size] orbs hitting her massive baby factories below sound out around you. You even hear the tell-tale slap of the collie's own two feet of cock smacking itself against the ground with your jarring thrusts.";
		say "     [WaitLineBreak]";
		say "     Fucking this nicely submissive doggie, you can't hold back much longer! With a loud groan from your lips, an all too familiar feeling washes up your stomach and groin. Your shaft twitches inside of the collie's tight ass, your [short ball size] nuts throbbing, clenching and churning deep within. The spits of pre-spooge that you spilled into her depths offer a deliciously lewd squelching every time you slam yourself into her bottom, pushing your arousal even further along. Your body tenses up and a loud growl escapes your lips as you drive your massive member into the collie's taunt butt in a final thrust.";
		say "     Your pent up orbs unleash their seed in heavy gouts, the burning hot spunk spilling into your newly claimed bitch wave after wave. With the amount of cream you pump into her upturned ass, even with what squirts out around your shaft, the collie's stomach starts to bulge quite a bit. After filling the speechless collie up rather nicely, you give a final jerk of your hips and pull your spent shaft from her rum. Looking down, you watch a literal waterfall of your thick white cream gush out of her gaping hole to splash down onto the ground. Rising to your feet, you wipe your cock off against the clean fur of her back, then leave the collie like that, feeling quite satisfied.";
	decrease the libido of player by 20;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Shemale Smooth Collie"; [Name of your new Monster]
	now attack entry is "[one of]The 'bitch' charges in quickly, barking as it runs at you before biting at your shoulder and trying to overbalance you in an attempt to subdue you quickly and with minimal pain.[or]The over-sized beast backs up slightly before running and leaping at you, throwing all of its weight at your stomach in an effort to knock you on your ass. She must be 90% muscle![at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Shemale Smooth Collie Defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Shemale Smooth Collie attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "This canine beast looks quite a bit like Lassie, if Lassie were twelve feet tall, and walked upright and had the general shape of an attractive woman, and had eight rather large breasts and a dick that would probably cause a stallion some envy... oh, and much shorter fur. You know, I guess she doesn't look much like Lassie after all.";[ Description of the creature when you encounter it.]
	now face entry is "drawn forward into a long muzzle that leads back into a flat canine skull. Your ears now stick straight up from your head most of the time, only shifting when you hear a particularly loud noise. New muscles easily change which way they";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "[rsscbodyentry]";
	now skin entry is "[if looknow is 1]short, soft, dense fur in the sable pattern of a collie, completely covering your[otherwise]short furred, sable patterned[end if]";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "Your tail, it's still strange to think about it that way even if it is true, is covered in short, soft, golden fur from your ass right up to the last inch or so, where it abruptly turns white.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[if looknow is 1]bright red canine/human hybrid in shape, complete with a knot and sheath,[otherwise]canine hybrid[end if]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as your skull begins to alter in shape as if made of clay. A sense of pressure here and a bit of stretching there, followed by a burning sensation in your mouth as your teeth are reshaped. You end up with the long, slender muzzle leading into a flat head of a collie."; [ face change text. format as "Your face feels funny as (your text)" ]
	if "Male Preferred" is listed in feats of player:
		now body change entry is "the change begins, bones crack and snap painlessly as they reshape. You can feel your waist drawing in somewhat and your shoulders broadening slightly, your body fat begins to melt away as your muscles bulk up and become more defined, making you look like a bodybuilder... though with a more feminine figure than you'd like. Your spine curves in a way that leaves your chest thrust out and displayed more prominently. Your legs gain digitigrade form and thick pads form on your feet as they are altered into paws. Your palms burn a bit as thinner pads form there when your hands begin reshaping, leaving you with slender fingers tipped with nails that look slightly more claw-like than a human's"; [ body change text. format as "Your body feels funny as (your text)" ]
	otherwise:
		now body change entry is "the change begins, bones crack and snap painlessly as they reshape. You can feel your waist drawing in and your shoulder broadening slightly, leaving you with a voluptuous figure that many women would kill to have. Your spine curves in a way that leaves your chest thrust out and displayed more prominently. Your legs gain digitigrade form and thick pads form on your feet as they are altered into paws. Your palms burn a bit as thinner pads form there when your hands begin reshaping, leaving you with slender fingers tipped with nails that look slightly more claw-like than a human's";
	now skin change entry is "fur grows in a wave radiating out from the center of your abdomen. The pelt is dense enough to obscure any hint of your flesh on a good 99% of your body, seemingly leaving only your anus and lips bare. "; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it begins ballooning out as if being pumped full of air. A quick brush across it as it continues expanding leaves you gasping at how sensitive it feels. Baby got back, the only problem is it's YOUR back"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "its flesh is reshaped, a slight itching feeling permeates your balls as well as your entire groin is altered, pulling your prick up close against your stomach in a protective sheath as it is reshaped into something between a canine and a human one. The flesh is a bright red with a slight taper, but you still have a nice mushroom head. A small swelling at the base that pushes your new sheath down reveals that you have a knot as well."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 24;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both";                    [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 50;                         [ How many HP has the monster got? ]
	now lev entry is 9;                         [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 8;                        [ Amount of Damage monster Does when attacking.]
	now area entry is "Outside";                [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;                       [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12;                [ Length infection will make cock grow to if cocks]
	now cock width entry is 3;                  [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 6;                     [ Number of Breasts infection will give you. ]
	now breast size entry is 10;                [ Size of breasts infection will try to attain ]
	now male breast size entry is 4;            [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                       [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 24;                [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 10;                 [ Width of female sex  infection will try and give you ]
	now libido entry is 30;                     [ Amount player Libido will go up if defeated ]
	now loot entry is "dog milk";               [ Loot monster drops, ]
	now lootchance entry is 60;                 [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;                       [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if cocks of player > 0][one of]muscled[or]strong[or]powerful[at random][otherwise][one of]voluptuous[or]curvaceous[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]canine[or]doggy[purely at random]";   [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                   [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;               [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;          [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;              [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump";              [ Row used to designate any special combat features, "default" for standard combat. ]

[ Edit this to have the correct Name as well]


to say rsscbodyentry:
	if "Male Preferred" is listed in feats of player:
		say "reminiscent of a female bodybuilder, with defined muscles and only slightly wider hips with a thin waist and digitigrade legs ending in paws";
	otherwise:
		say "that of a voluptuous woman with digitigrade legs ending in paws";

[Dog Milk is a drinkable item that reduces thirst but causes breast size to increase as well as up to 6 breasts (total, not additional) to grow on the player with no other transformative effects. Growth is limited to one inch at a time. I have no idea how to code this in though.
This could be a good item to use to further progress the 'sister' plot-line with Sandra. Say that she thinks one more thing needs to be done, but she needs some milk, and since it's already been established by her prior dialogue that she dislikes the feral gryphons, she refuses gryphon milk. She'll take the Dog Milk though, drink it herself and then give you a drink the same way she does when you visit her and are thirsty enough, except with the fresh nanites involved she gives you 6 instantly, and can do this to forms that don't normally allow it like the gryphon body.]


Section 3 - Heat Table

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Shemale Smooth Collie";
	now heat cycle entry is 8;
	now heat duration entry is 4;
	now trigger text entry is "A whimper of need escapes your lips as a rush of heat builds between your legs.  Nested between your thighs your canine spade begins to puff up and swell, engorging and becoming looser for your desired mate.  You leak pheromone-laden juices steadily as your body goes into heat.  As these sensations grow, your need to be bred increases.";
	now description text entry is "";
	now heat start entry is "[collieheatstart]";		[Events that trigger at the start of the Heat, in the GSD case it increases the cunt width]
	now heat end entry is "[collieheatend]";		[Events that trigger at the end of the Heat, in the GSD case it reduces cunt width]
	now inheat entry is "[collieinheat]";		[This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A whimper of need escapes your lips as a rush of heat builds in your lower abdomen.  Tucked between your cheeks, your anal ring begins to puff up and swell, stretching and loosening for your desired mate.  The faint scent of arousing pheromones linger around you, making you smell like a bitch in heat.  As these sensations grow, your need to be bred increases.";


to say collieheatstart:
	if heatform is 0:
		[puts Shemale Smooth Collie as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Shemale Smooth Collie":
				now monster is y;
				break;
		increase cunt width of player by 1;
		increase cunt length of player by 1;
		if cunt width of player < cunt width entry, increase cunt width of player by 1;
		if cunt length of player < cunt length entry, increase cunt length of player by 1;


to say collieheatend:
	if heatform is 0:
		say "As your heat passes, your needy canine cunt becomes a little less prominent and swollen.";
		[puts Shemale Smooth Collie as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Shemale Smooth Collie":
				now monster is y;
				break;
		if cunt width of player > cunt width entry, decrease cunt width of player by 1;
		if cunt length of player > cunt length entry, decrease cunt length of player by 1;
	otherwise:
		say "As your heat passes, your needy asshole becomes less prominent and swollen.  There still a craving for something to fill it, but it is manageable now.";
	decrease slutfucked by 2;
	if slutfucked < 0, now slutfucked is 0;
	if slutfucked > 4, now slutfucked is 4;

to say collieinheat:
	increase libido of player by 5;
	if libido of player > 99, now libido of player is 99;
	if (libido of player is greater than 90) and (location of player is fasttravel ) and (slutfucked is greater than 6):
		let colliechance be 25 + ( perception of player ) * 2;
		if colliechance > 80, now colliechance is 80;
		let zz be a random visible dangerous door;
		if zz is not nothing:
			if the marea of zz is not "Outside", now colliechance is colliechance / 2;
		if a random chance of colliechance in 100 succeeds:
			say "A waft on the breeze catches your nose, your head snapping around as the need between your legs throbs.  Unable to control your lust, you strike out in the direction of your body's desired mate's scent.";
			now slutfucked is 0;
			[puts Shemale Smooth Collie as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Shemale Smooth Collie":
					now monster is y;
					break;
			say "The enticing scent leads to the large shemale collie.  Immediately upon seeing what your heat-addled mind believes to be your mate, you immediately submit, offering yourself freely in the hopes of satisfying your body's lustful, heat-fueled need to be impregnated.";
			wait for any key;
			follow the cock descr rule;
			follow the cunt descr rule;
			follow the breast descr rule;
			say "[victory entry]";
			infect;
			decrease the score by 5;
			decrease the morale of the player by 3;
			if "Kinky" is listed in feats of the player, increase the morale of the player by 6;
		otherwise:
			say "Hot juices flow down your legs as your body's need starts to become overwhelming.  You moan and whimper, finding yourself sniffing at the air for something you don't catch wind of.";
			increase slutfucked by 1;
	else if libido of player is greater than 90:
		increase slutfucked by 1;


Section 4 - Endings

when play ends:
	if bodyname of player is "Shemale Smooth Collie":
		if humanity of player is less than 10:
			say "     As your collie instincts take over, you find yourself with increasingly strong urges to mate and make more strong, beautiful collie pups.  Leaving all else behind, you strike out into the city to satisfy your new instincts.  Your search comes to an end when you encounter a large and powerfully built shemale collie, drawn towards each others['] scent";
			if cunts of player > 0:
				say ".  She seems like an ideal mate to you and you submit yourself to her, much to her delight.  You find yourself repeatedly bred by her, your womb growing full with her many pups.  She is particularly pleased, loving you for giving her an ever-growing litter of puppies.  And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				if cocks of player > 0 and beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboi.  He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was.  While it seems to think your mate is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs.  You exchange doggy kisses with this muscled hunk of a cuntboi and fuck him as well, breeding puppies in him to satisfy his growing need to breed as well.  You make an odd family with you mate to both of them in opposite capacities, but the numerous puppies bred from your trio of horny hounds make you all so happy.";
			otherwise if "MPreg" is listed in feats of player:
				say ".  She seems like an ideal mate to you and you submit yourself to her.  At first, she's uncertain, pounding your needy ass with her large phallus with care, but as your male pregnancy starts to show, she becomes elated.  You find yourself repeatedly bred by her, your womb growing full with her many pups.  She is particularly pleased, loving you for giving her an ever-growing litter of puppies.  And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				if cocks of player > 0 and beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboi.  He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was.  While it seems to think your mate is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs.  You exchange doggy kisses with this muscled hunk of a cuntboi and fuck him as well, breeding puppies in him to satisfy his growing need to breed as well.  You make an odd family with you mate to both of them in opposite capacities, but the numerous puppies bred from your trio of horny hounds make you all so happy.";
			otherwise if cocks of player > 0:
				say ".  Knowing your predicament is much like her own, you spend some time together, relieving each others['] needs while searching for true mates.";
				if beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboi.  He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was.  While it seems to think your mate is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs.  You exchange doggy kisses with this muscled hunk of a cuntboi and fuck him, breeding puppies in him to satisfy his growing need to breed as well.";
					say "     With the help of your new mate, the three of you are able to surround and capture a lone soldier.  With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate of the shemale collie.  Together, your family of four (soon to be much more) happily finds a warm den to breed numerous litters of big, strong puppies.  And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				otherwise:
					say "     With the help of your new mate, the three of you are able to surround and capture a lone soldier.  With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate for you both.  Together, your family of three (soon to be much more) happily finds a warm den to breed numerous litters of big, strong puppies.  And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
			otherwise:		[neuter]
				say ".  Knowing your predicament to be even worse than her own, you spend some time together, relieving her lustful needs while searching for a true mate for her.";
				if beauceronmet is true:
					say "     Shortly after you meet up with her, an equally well-built beauceron comes along, but this canine is a cuntboi.  He seems familiar somehow, though your memories from before are getting increasingly fuzzy, so it's hard to know exactly when that was.  While it seems to think your friend is his cousin, you cannot be certain, but do smell the scent of heat coming from between his legs.  Resolving to help both cousins with their needs for mates, you strike off together with renewed ambition.";
					say "     Helping your new friends, the three of you are able to surround and capture a lone soldier.  With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate for the both of them.  As quartet unusually gendered dogs - a shemale, a cuntboi, a herm and a neuter - you head off together as one family and pack of four (though soon to be more).  You find a warm den for them to breed numerous litters of big, strong puppies while you take vicarious pleasure in playing with them while they breed and tending to the many puppies.  In time, you settle into your new role, no longer feeling the urge to breed yourself (though always loving joining in to help) and instead accepting your place as caregiver to their frequent litters of strong puppies.  And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
				otherwise:
					say "     Helping your new friend, the two of you are able to surround and capture a lone soldier.  With some canine milk and plenty of canine encouragement (sex), you turn him into a sexy herm collie to be the willing mate of the shemale collie.  As a trio unusually gendered dogs - a shemale, a herm and a neuter - you head off together as one family and pack of three (though soon to be more).  You find a warm den for them to breed numerous litters of big, strong puppies while you take vicarious pleasure in playing with them while they breed and tending to the many puppies.  In time, you settle into your new role, no longer feeling the urge to breed yourself (though always loving joining in to help) and instead accepting your place as caregiver to their frequent litters of strong puppies.  And in time, those pups grow up and spread out into the city and beyond in search of mates of their own.";
		otherwise:
			say "     After being picked up and processed by the military (who do take some interest in your unusual infection), you are released and left to try and make a new life for yourself.  Deciding to get away from the city, you move to a rural area and get a home at the outskirts of town.  At first, they're a little wary of you, but aside from a little teasing and nervous stares at first, they soon come to accept you as a friendly and polite (if unusual-looking) neighbour.";
			if beauceronmet is true:
				say "     As you're getting ready for bed late one night, you hear a loud ruckus coming from outside like loud voices, barking dogs and breaking wood.  Worried that you may have misjudged the townsfolk and half-expecting to see a mob with pitchforks and torches outside the door, you cautiously open the door.  But what you find there is much more surprising.  Taking up much of your small porch are the large shemale collie and cuntboi beauceron you saw back in the city those many months ago.  Suddenly feeling confused and weak in the knees, the neighbourly attitude you've been cultivating to help you be accepted here kicks in (and maybe something else as well) and you invite them to come in before you even realize what you're doing.";
				if cocks of player > 0 and cunts of player > 0:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door.  They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you.  You catch part of their story about how they pushed through the military lines together to follow your scent.  The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to be their mate.  Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late the three of you are mating like wild dogs in your own living room.  You end up sandwiched between the two, the beauceron taking your cock into his pussy while the collie pounds into your own cunt with her throbbing meat.";
					say "     Your neighbours take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've got you for a mate and lover, rarely leaving your property.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
				otherwise if cocks of player > 0:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door.  They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you.  You catch part of their story about how they pushed through the military lines together to follow your scent.  The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to be the beauceron's mate.  Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late and the two of you are mating like wild dogs in your own living room.  You end up atop of him, the beauceron taking your cock into his pussy while the collie runs her paws over your body and kisses you.  The first mating over and in too much of a daze, you call one of your female neighbours and tell her to come over quickly.  It's not long after her arrival that she's on the floor beside you, being mated by the collie.";
					say "     Your neighbours take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've each got a mate and lover of their own, rarely leaving you and your neighbour's property.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
				otherwise if cunts of player > 0:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door.  They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you.  You catch part of their story about how they pushed through the military lines together to follow your scent.  The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to be the collie's mate.  Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late and the two of you are mating like wild dogs in your own living room.  You end up beneath her as the collie pounds into your cunt with her throbbing meat.  The first mating over and in too much of a daze, you call one of your male neighbours and tell him to come over quickly.  It's not long after his arrival that he's on the floor beside you, mating with the beauceron.";
					say "     Your neighbours take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've each got a mate and lover of their own, rarely leaving you and your neighbour's property.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
				otherwise:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dogs as they negotiate their way through the door.  They pull you into their arms, giving you crushing hugs and slobbery licks, barking about how glad they are to see you.  You catch part of their story about how they pushed through the military lines together to follow your scent.  The beauceron and the collie refer to each other as being cousins (though you never learn if that's true or if it's a shared nanite delusion), but they remembered you and went looking for you to help them find mates.  Being too confused and enjoying the doggy kisses too much, it doesn't register what they have in mind until it's too late and two of them have you licking and sucking them off in the middle of your living room to satisfy their pent up lusts.  After they've cum, you're in too much of a daze and you call one of your male neighbours and another female neighbour, telling each to come over quickly.  It's not long after their arrival that they're on the floor to either side of you, mating with the collie and the beauceron.";
					say "     Your neighbours take some time to warm up to the new arrivals, but thankfully they're pretty peaceful now that they've each got a mate and lover of their own, rarely leaving you and your neighbours['] properties.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie, beauceron or collie-beauceron as a pet and mate of their very own.";
			otherwise:
				say "     As you're getting ready for bed late one night, you hear a loud ruckus coming from outside like loud talking, barking and breaking wood.  Worried that you may have misjudged the townsfolk and half-expecting to see a mob with pitchforks and torches outside the door, you cautiously open the door.  But what you find there is much more surprising.  Taking up much of your small porch is the large shemale collie you saw back in the city those many months ago.  Suddenly feeling confused and weak in the knees, the neighbourly attitude you've been cultivating to help you be accepted here kicks in (and maybe something else as well) and you invite her to come in before you even realize what you're doing.";
				if cunts of player > 0:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dog as she negotiates her way through the door.  She pulls you into her arms, giving you crushing hugs and slobbery licks, barking about how glad she is to see you.  You catch part of her story about how she pushed through the military lines to follow your scent to find her mate.  Being too confused and enjoying the doggy kisses too much, it doesn't register what she has in mind until it's too late, the two of you mating like wild dogs in your own living room.  You end up beneath her as the collie pounds into your cunt with her throbbing meat.";
					say "     Your neighbours take some time to warm up to the new arrival, but thankfully she's pretty peaceful now that she's got you for a mate and lover, rarely leaving your property.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie as a pet and mate of their very own.";
				otherwise if "MPreg" is listed in feats of player:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dog as she negotiates her way through the door.  She pulls you into her arms, giving you crushing hugs and slobbery licks, barking about how glad she is to see a friendly face after getting out of the city.  You catch part of her story about how she pushed through the military lines and then followed your scent to find you.  She talks about leaving the city to continue her search for a mate and caught wind of your scent and hoped you could help.  Being too confused and enjoying the doggy kisses too much, it doesn't register what she has in mind until it's too late and you're sucking her off to help relieve her pent up lusts.  You get her to mount you after that, telling her that you'll her mate.  At first, she's uncertain, pounding your needy ass with her large phallus with care, but as your male pregnancy starts to show, she becomes elated.";
					say "     Your neighbours take some time to warm up to the new arrival, but thankfully she's pretty peaceful now that she's got you for a mate and lover, rarely leaving your property.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie as a pet and mate of their very own.";
				otherwise:
					say "     Thankfully your country home is big and sturdy enough to accommodate the muscled dog as she negotiates her way through the door.  She pulls you into her arms, giving you crushing hugs and slobbery licks, barking about how glad she is to see a friendly face after getting out of the city.  You catch part of her story about how she pushed through the military lines and then followed your scent to find you.  She talks about leaving the city to continue her search for a mate and caught wind of your scent and hoped you could help.  Being too confused and enjoying the doggy kisses too much, it doesn't register what she has in mind until it's too late and you're sucking her off to help relieve her pent up lusts.  With the remains of her creamy load still in your mouth, you are in a daze of lust and call one of your female neighbours, telling her to come over quickly.  It's not long after her arrival that she's on the floor beside you, being mated by the collie.";
					say "     Your neighbours take some time to warm up to the new arrival, but thankfully she's pretty peaceful now that she's got you for a mate and lover, rarely leaving you and your neighbour's property.  And when the puppies start coming, they're just too adorable to be ignored and are adopted other families.  And as more and more puppies keep coming, eventually everyone in town has a sexy collie as a pet and mate of their very own[if cocks of player > 0].  And one of their many puppies - a [one of]herm[or]female[or]cuntboi[as decreasingly likely outcomes] takes a shine to you and becomes your mate and bears you many cute and sexy puppies as well[otherwise].  Being neuter and not needing a mate of your own leaves you free to help everyone with their many puppies, turning your home into a nursery and kennel for them.  You find this service to your community very satisfying[end if].";


Random Shemale Smooth Collie For FS ends here.
