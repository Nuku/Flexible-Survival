Version 1 of Gregory by Wahn begins here.
[Version 1 - Put into its own file]

[ HP of Gregory                                             ]
[   0: still in his cocoon                                  ]
[   1: brought into the library                             ]
[  98: player fucked Gregory, then left him                 ]
[  99: player rode Gregory, then left him                   ]
[ 100: left in the opened cocoon                            ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Gregory	"Gregory"

Gregory is a man.
ScaleValue of Gregory is 3. [human sized]
Body Weight of Gregory is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Gregory is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Gregory is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Gregory is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Gregory is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Gregory is 4. [length in inches]
Breast Size of Gregory is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Gregory is 2. [count of nipples]
Asshole Depth of Gregory is 16. [inches deep for anal fucking]
Asshole Tightness of Gregory is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Gregory is 1. [number of cocks]
Cock Girth of Gregory is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Gregory is 12. [length in inches]
Ball Count of Gregory is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Gregory is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Gregory is 0. [number of cunts]
Cunt Depth of Gregory is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Gregory is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Gregory is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Gregory is false.
PlayerRomanced of Gregory is false.
PlayerFriended of Gregory is false.
PlayerControlled of Gregory is false.
PlayerFucked of Gregory is false.
OralVirgin of Gregory is true.
Virgin of Gregory is true.
AnalVirgin of Gregory is true.
PenileVirgin of Gregory is false.
SexuallyExperienced of Gregory is true.
TwistedCapacity of Gregory is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Gregory is false. [steriles can't knock people up]
MainInfection of Gregory is "Wyvern".
Description of Gregory is "[Gregorydesc]".
Conversation of Gregory is { "Meep!" }.

to say Gregorydesc:
	say "     Gregory is a fit human soldier, who underwent partial transformation into a wyvern before you and Urik rescued him from that fate. While the young man is still mostly human, some parts of his body conform to a different blueprint, which is made quite clear by the variations in his skin color, as that goes to the more earthy tones of a wyvern's scales along his arms and lower legs. His face has elongated a little, creating the look of a wyvern muzzle and the upper part of his head is now sporting a pair of horns. Having acquired short claws on his thumb, index and middle fingers, Gregory's ring and index fingers have been repurposed completely, now extending backwards as long, thin supports for a bat-like wing membrane.";
	say "     As he currently is still passed out after his time in the wyvern egg/cocoon, you have an unimpeded view of Gregory's privates, which aren't quite human anymore. His dickhead has a more pointy shape now, and there are some interesting-looking ridges along his shaft. You can't be sure, but you'd guess that the solid twelve inches that his cock reaches when hard are also an upgrade done by the nanites.";

instead of sniffing Gregory:
	say "     The wyvern hybrid has a nice, masculine scent, with an underlying spicy aroma. That must be coming from his wyvern side, as it's definitely not human.";

instead of conversing Gregory:
	if HP of Gregory is 1: [unconscious in the library]
		say "     He's unconscious, so don't expect too much response from him...";
	say "[GregoryTalkMenu]";

[
an everyturn rule:
	if GregoryRelationship > 10 and GregoryRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			say "...";
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			say "...";
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			say "...";
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			say "...";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			say "...";
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			say "...";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			say "...";
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Gregory:
	say "[GregoryTalkMenu]";

to say GregoryTalkMenu:
	say "     [bold type]What do you want to talk to Gregory about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if HP of Gregory is 1: [unconscious]
		[]
		choose a blank row in table of fucking options;
		now title entry is "Just talk a little while you check on him";
		now sortorder entry is 1;
		now description entry is "Check if he's okay and try to stimulate his mind";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Explain what happened to him";
		now sortorder entry is 2;
		now description entry is "Tell Gregory where he is and how he got here";
		[]
		if "GregoryPlans_Private Slut" is listed in Traits of Urik or "GregoryPlans_Couple Slut" is listed in Traits of Urik or "GregoryPlans_Tribe Breeder" is listed in Traits of Urik: [indoctrination only if there are plans to make him a fucktoy]
			choose a blank row in table of fucking options;
			now title entry is "Whisper in is ear that he's your fucktoy";
			now sortorder entry is 3;
			now description entry is "Try to indoctrinate the unconscious Gregory";
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
				if (nam is "Just talk a little while you check on him"):
					say "[GregoryUnconsciousTalk1]";
				else if (nam is "Explain what happened to him"):
					say "[GregoryUnconsciousTalk2]";
				else if (nam is "Whisper in is ear that he's your fucktoy"):
					say "[GregoryUnconsciousTalk3]";
				wait for any key;
				say "[GregoryTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			if HP of Gregory is 1: [unconscious]
				say "     You step back from the wyvern hybrid, leaving him to his sleep.";
			else:
				say "     You step back from the wyvern hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GregoryUnconsciousTalk1: [check on him]
	say "     Sitting down next to Gregory, you remember that people in a coma might possibly be able to perceive the outside world, so you address him by his name - 'Gregory Russlan Jr.' as shown on the dog tags that survived him being stashed in a goop-filled wyvern egg. Then you explain that you're just wanting to check on him as you watch his chest rise and fall with his steady breathing, followed by taking his pulse and feeling his forehead for temperature. He's almost absurdly normal in everything you can tell, despite being a human-wyvern hybrid now, and still unconsciousness ever since you and Urik rescued him from that wyvern egg.";
	say "     Sadly, there isn't any recognizable reaction from Gregory, just his calm, steady breathing as before. Still, maybe he heard at least some of what you said and it'll have a positive effect in some way...";
	if "UnconsciousTalk_Checkup" is not listed in Traits of Gregory:
		add "UnconsciousTalk_Checkup" to Traits of Gregory;

to say GregoryUnconsciousTalk2: [talk about him]
	say "     Remembering that people in a coma might possibly be able to perceive the outside world, you decide to give it a shot and sit down next to the demi-human male. Clearing your throat, you put a hand on his shoulder and address him by his name - 'Gregory Russlan Jr.' as shown on the dog tags that survived him being stashed in a goop-filled wyvern egg. Then you go over the facts of finding him, up in the wyvern nest/tree, and the fact that he was chosen to become the offspring of a wyvern, and put into its egg. As you explain in calm tones that he's still recognizably human, although with some changes, you lightly touch changed areas of his physiology. Finally, you wrap your tale up by going into detail about Urik and yourself interrupting his transformation, you explain that he's in the library now, and you're just waiting for him to wake up. Just in case that happens when you're not here, you also warn him to expect Urik being an orc.";
	say "     Sadly, there isn't any recognizable reaction from Gregory, just his calm, steady breathing as before. Still, maybe he heard at least some of what you said and it'll have a positive effect in some way...";
	if "UnconsciousTalk_Situation" is not listed in Traits of Gregory:
		add "UnconsciousTalk_Situation" to Traits of Gregory;

to say GregoryUnconsciousTalk3: [indoctrination]
	say "     Remembering that people in a coma might possibly be able to perceive the outside world, you decide to give it a shot and sit down next to the demi-human male. Clearing your throat, you put a hand on his shoulder and address him by his name - 'Gregory Russlan Jr.' as shown on the dog tags that survived him being stashed in a goop-filled wyvern egg. Then you brush your fingers over his chest, stroking it as you lean your head next to his ear and whisper into it about him being yours now, an eager and available fucktoy to sate your needs with. You go into quite a bit of detail as you do so, all the while stroking and stimulating his naked body.";
	say "     Sadly, there isn't any recognizable reaction from Gregory, just his calm, steady breathing as before. Still, maybe he heard at least some of what you said and it'll serve to reprogram him a bit in the way you have in mind...";
	if "UnconsciousTalk_Indoctrination" is not listed in Traits of Gregory:
		add "UnconsciousTalk_Indoctrination" to Traits of Gregory;

to say GregoryTalk2: [talk about his plans]
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Gregory:
	if HP of Gregory is 1: [unconscious]
		if "GregoryPlans_Offlimits" is not listed in Traits of Urik and "GregoryPlans_Recruit" is not listed in Traits of Urik and "GregoryPlans_Private Slut" is not listed in Traits of Urik and "GregoryPlans_Couple Slut" is not listed in Traits of Urik: [no choice made yet]
			say "     Given that Urik and yourself picked Gregory up together, you can't help but feel it'd be best to discuss what you want to do with the partially transformed human with your orc companion first. Just to make sure that there are no misunderstandings later.";
		else if "GregoryPlans_Offlimits" is listed in Traits of Urik and "Oathbreaker_Urik" is not listed in Traits of Player:
			say "     You told Urik that you don't want anyone to mess with Gregory that way, including yourself. Going back on your word and decisions is a quick way to lose respect from those around you. Maybe once the soldier wakes up, you can talk to him about having some fun, according to your own rules.";
			say "     ([link]Y[as]y[end link]) - Do it anyways!";
			say "     ([link]N[as]n[end link]) - Hold your urges back.";
			if Player consents:
				LineBreak;
				say "     A mental voice speaks to you in your mind as you prepare to fuck Gregory: 'Yes, do it! Why should you hold yourself back? You're the boss around here after all! No one would be in the library if you didn't bring them here. You earned this!'";
				TraitGain "Oathbreaker_Urik" for Player;
				say "[GregorySexMenu]";
			else:
				LineBreak;
				say "     You tamp down on the lust rising inside you. No matter how you're feeling right at this moment, it isn't worth it to lose respect with Urik.";
		else:
			[TODO: Add in initial choice point for gradually doing stuff, or doing anything]
			say "[GregorySexMenu]";
	else if HP of Gregory > 1: [other states]
		say "     <Hey, how did you see this? Gregory should not be able to wake up yet! Please put a report in the bug report channel on the FS Discord!>";
[
	if (lastfuck of Gregory - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[GregorySexMenu]";
]

to say GregorySexMenu:
	say "     [bold type]What exactly do you plan on doing with Gregory?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if HP of Gregory is 1: [unconscious]
		[]
		choose a blank row in table of fucking options;
		now title entry is "Explore his body";
		now sortorder entry is 1;
		now description entry is "See how your sleeping beauty reacts to being touched";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Jerk him off";
		now sortorder entry is 2;
		now description entry is "Give your sleeping beauty a handjob";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Finger his ass";
		now sortorder entry is 3;
		now description entry is "Work your digits into the rear entrance of your sleeping beauty";
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
				if (nam is "Explore his body"):
					say "[GregoryUnconsciousSex_Explore]";
				else if (nam is "Jerk him off"):
					say "[GregoryUnconsciousSex_Jerking]";
				else if (nam is "Finger his ass"):
					say "[GregoryUnconsciousSex_Fingering]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			if HP of Gregory is 1: [unconscious]
				say "     You step back from the wyvern hybrid, leaving him to his sleep.";
			else:
				say "     You step back from the wyvern hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GregoryUnconsciousSex_Explore: [groping and feeling up Gregory]
	[
	if "Oathbreaker_Urik" is listed in Traits of Player or "Brutal Asshole" is listed in Feats of Player:
		say "     Sitting down next to the unconscious man, you let your eyes roam over his naked, stretched-out form. Eyeing up your prize, you can't help the lusty shiver that runs down your spine and what feels like a surge of electricity straight to your groin. With his partial transformation halted when Urik and you removed him from the wyvern egg, the young soldier is still mostly human, though some of his body conforms to a different blueprint. Laying down your hand on his firm, muscular pecs and feeling the warmth of his skin, you watch his chest rise and fall as he breathes. He looks so peaceful lying there, so innocent to the world around him, if only he knew of the predator that sat only a few feet away from him. A cruel smile crosses your face as your fingers seek out his nipples, you flick each one to make them harden.";
		say "     Taking hold of each nub you start to twist them gently, but after seeing no effect on the mans face other than a minor lowering of his brow, you mercilessly twist harder and by the time you are finished, the future slut's nips are slightly swollen and protruding. You think you can hear a little quickening to his breath as you play with Gregory's body, but there isn't really any sign that this might wake him up, any more than Urik lugging him around for some hours, or the time he spent lying around on the sofa did before. Still, it's good to know that he's not dead to the world, and apparently has sensitive nipples, a fact you file away for future reference.";
	else:
	]
	say "     Sitting down next to the unconscious man, you let your eyes roam over his naked, stretched-out form. With his partial transformation halted when Urik and you removed him from the wyvern egg, the young soldier is still mostly human, though some of his body conforms to a different blueprint. Laying down your hand on his firm, muscular pecs and feeling the warmth of his skin, you watch his chest rise and fall as he breathes. A smile crosses your face as your fingers seek out his nipples, teasing them a little and making them stand out as hardened nubs from his pecs. You think you can hear a little quickening to his breath as you play with Gregory's body, but there isn't really any sign that this might wake him up, any more than Urik lugging him around for some hours, or the time he spent lying around on the sofa did before. Still, it's good to know that he's not dead to the world, and apparently has sensitive nipples, a fact you file away for future reference.";
	say "     Next, you let your fingers roam, stroking up to his shoulder, then down along a strong arm. Passing your fingertips over the man's soft and pale skin, there is a slight but noticeable difference as you reach the part of his body that got changed to a more earthy, brown-ish tone like a wyvern's scales. It's still smooth and all, not scaly, but you'd say the skin got a bit thicker and more resilient that a human's would be. On a whim, you try tickling the Gregory, but there barely is any reaction at all. Either he's not sensitive to it, or just not in a state where he can be tickled. Moving on, you quickly reach the hand, which went through a more significant transformation. For all intends and purposes, there are only three fingers on it, each ending in a small, but sharp claw. The remaining two fingers have bent to the side and down, being elongated and restructured into braces to stretch open bat-like wings.";
	WaitLineBreak;
	say "     Gregory's wing-membranes are thin, but quite flexible, and do not appear to be very sensitive at all, as he doesn't stir when you stroke over them, or pull one wing to the side to see its full extent. Folding it back against his side, you switch to checking out the unconscious man's legs next. He's got five clawed toes on his digitigrade feet - which again don't appear to be ticklish, at least right now. Further up, there are nicely developed leg muscles, which you feel and squeeze with both hands as you move along, soon reaching the partially transformed human's crotch. His privates are still in the familiar setup of there being a single cock and a pair of balls, but the shape of his manhood clearly has had some adjustments done to it. Gregory's dickhead has more of a pointy shape to it now, with some interesting-looking ridges along the twelve inch shaft.";
	say "     Cupping the sack of his balls with one hand, you wrap the other around his cock, stroking and fondling the unconscious man. His length lies warm in your grasp, unsurprisingly hardening and filling out given the stimulation you're giving him. From the weight and fullness of his goose-egg sized balls, you have little doubt that Gregory is a virile male, and could easily father offspring if used as a stud. You're tempted to continue playing with him and milk a load out of the man, ";
	if Anallevel > 1:
		say "but then tell yourself that you have one more thing to check out. Letting your fingers stray past the balls, you run them up and down along the crack of his ass. With your middle finger brushing over his pucker, you push in a little against it, [if AnalVirgin of Gregory is true]which is met by some resistance as the muscle reflexively contracts, and you can hear Gregory let out a little huff of breath at the same time, indicating some discomfort. Looks like he isn't used to being touched there, and in all likelihood is a virgin[else]which is met by a little bit of resistance before your fingertip enters the man's rear. You can hear Gregory let out a huff of breath at the same time, indicating slight discomfort. No longer a virgin, as he was when you brought him in, the man still isn't fully used to being touched there[end if]. ";
	else:
		say "but then think better of it. Feeling him up is all you set out to do right now, after all. ";
	say "With a smile on your face, you finally draw back from the half-wyvern soldier. He certainly is an interesting addition to the library.";
	TraitGain "Sensitive Nipples" for Gregory;

to say GregoryUnconsciousSex_Jerking: [jerking him off]
	say "     Sitting down next to the unconscious man, you let your eyes roam over his naked, stretched-out form. With his partial transformation halted when Urik and you removed him from the wyvern egg, the young soldier is still mostly human, though some of his body conforms to a different blueprint. The part of Gregory's anatomy that you've got your eyes on right now is one of those, as his dickhead is markedly more pointy than that of a human, coming to a narrow tip that seems tailor made for insertions into tight holes. Along his shaft, a series of small, interesting ridges promise unforgettable moments for Gregory's partners. Beneath, a pair of full balls hang in a snug sack, ready to churn out many a virile load. You start by touching the half-wyvern's nuts, cupping them in your hand and gently rolling his cum-factories in your fingers as you lightly squeeze them. This stimulation is enough to start Gregory's dick filling out, growing to a proud shaft of inhuman man-meat.";
	say "     Wrapping your fingers around the length of the unconscious man, you feel the ridges of his erection pressing into your palm - firm but still with some give to them, just right to rub someone in a very right way as they glide in and out of their body. You squeezing his shaft doesn't go unnoticed either, as there is an audible, lusty pant from the man. Glancing up to his face, drawn into an anthro muzzle as it is, the soldier still has his eyes closed, but you recognize that his breathing is coming quicker, and he makes more noises when you brush your thumb over his dickhead. Seems like one doesn't necessarily have to be awake for the body to warm up the mating instinct. Chuckling to yourself, you tell Gregory that he'll have a great dream in just a minute, then begin to jerk him off, your hand moving up and down as it slides along his erection.";
	WaitLineBreak;
	say "     Soon, the shaft has grown out to its full length of twelve inches and is firm in your grasp, with droplets of pre-cum appearing at the slit up top when you pump Gregory's cock. But what's more, it also begins to broaden a bit just above the base, creating a noticeable bulge. While the tip of Gregory's equipment may be built for an easy entry, this part is built to hit his partners with a bang at the end of each thrust. You doubt it'll be enough for him to tie to anyone, but there should be an invigorating amount of extra stretching for those who can take his whole length. Having kept up a slow stroke while inspecting the erection and contemplating its effects, all the pre-cum he's leaked so far has created a string of clingy fluid to connect Gregory's dickhead with his pronounced abs. You watch the clear liquid stretch and glisten in the light for a second before it breaks, gooping onto the half-wyvern's skin, at which point you start going to town on his dick in earnest.";
	say "     Jerking up and down on Gregory's cock, you've got him panting loudly in no time at all, with the unconscious man's head lolling about a little - all without him showing signs of actually regaining consciousness beyond that. A simple jerkoff session clearly isn't enough to wake up your sleeping beauty, but nevertheless it's still a bunch of fun to feel his hardness in your hand and drawing sounds of lust from Gregory as you stroke him. With your hand moving in a blur as you go faster and faster, following the building urgency in his breathing rhythm and moans, it doesn't take all that much longer before you drive Gregory over the edge. His whole body seems to stiffen and jerk as a first spurt of cum wells up with force, then splats down on the soldier's muscular chest, followed by another, and another shot to make a downright mess of the unconscious man's chest. His abs serve as cum-gutters, with some of Gregory's load trickling down from the rise of his pecs to gather in the indentations between the muscles.";
	LineBreak;
	say "     [bold type]How do you want to deal with having gotten Gregory all cum-covered and sticky?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Wipe him down with a cloth.";
	say "     [link](2)[as]2[end link] - Lick it off his chest!";
	say "     [link](3)[as]3[end link] - Just leave him like this.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to wipe Gregory down, [link]2[end link] to lick Gregory clean or [link]3[end link] to leave him like that.";
	if calcnumber is 1:
		LineBreak;
		say "     It only takes you a moment to rustle up a suitable piece of fabric that you can use as a cum-rag, brushing it over Gregory's chest to soak up his load. He's a big shooter, so you have quite a bit to mop up, but you manage to get him all spic and span eventually. Besides a faint odor of cum hanging in the air around him, there is no trace left of your previous activities by the time you're done and leave Gregory to continue his extended rest on the sofa.";
	else if calcnumber is 2:
		LineBreak;
		say "     Bending down to bring your face to Gregory's chest, you stick out your tongue and brush it over his abs, pushing a little flood of milky fluid ahead of it. You quickly have to put your lips down against the partially transformed human's skin to suck the cum off him without it running down his side and soaking the sofa. It tastes fairly nice, with a little bit of spice to it, and you swish it over your tongue for a second before swallowing and going back for more. Licking and slurping up his load, you eventually get Gregory spic and span again. Besides a faint odor of cum hanging in the air around him, there is no trace left of your previous activities by the time you're done and leave Gregory to continue his extended rest on the sofa.";
	else if calcnumber is 3:
		LineBreak;
		say "     A smile crosses your lips as you let go of Gregory's shaft, letting it sink against his abs while still spurting a few more ebbing shots of cum. He'll be fine as he is, and Urik can give him a sponge-bath or something later - or possibly lap up the load, given his own cravings for cum.";
		if "Oathbreaker_Urik" is listed in Traits of Player:
			TraitGain "Oathbreaker_Revealed" for Urik;
	NPCSexAftermath Gregory receives "Stroking" from Player;

to say GregoryUnconsciousSex_Fingering:
	say "     Sitting down next to the unconscious man, you let your eyes roam over his naked, stretched-out form. With his partial transformation halted when Urik and you removed him from the wyvern egg, the young soldier is still mostly human, though some of his body conforms to a different blueprint. The part of Gregory's anatomy that you've got your interest set on right now isn't on show just this moment yet though, as he's lying on it, so you start to roll him over. It takes a little effort to man-handle the half-transformed soldier, including snatching up some opportune pillows, but soon, Gregory is situated on his stomach, with his well-rounded buttocks sticking up into the air. The fact that he didn't wake up from being jostled around and pulled into position shows you once more that it'll take some effort to break him out of his transformative stasis - and also that you have totally free reign about what you want to do with him in the meantime.";
	if AnalVirgin of Gregory is true:
		say "     Planting both hands on the muscular man's firm buttocks, you grope them under your fingers, squeezing and massaging them as you enjoy fondling your sleeping beauty. Spreading his cheeks, you reveal the wrinkled, pink star of Gregory's pucker just waiting for you between them. There is no doubt at all in your mind that the man's rear entrance is virginal as freshly fallen snow, not showing any signs of ever having been stretched. Bringing the tip of your index finger against his opening you brush over it, drawing a low grunt from the soldier. Seems he's not really used to or comfortable to being touched there - yet, that is - and you're having too much fun fondling him to stop now. Gathering a good amount of spit, you let it drip off your tongue to land in his crack, then run your finger through it until it is good and wet, then proceed to push and tease his hole, slowly worming your digit inside, up to the first joint, then the second.";
	else:
		say "     Planting both hands on the muscular man's firm buttocks, you grope them under your fingers, squeezing and massaging them as you enjoy fondling your sleeping beauty. Spreading his cheeks, you reveal the wrinkled, pink star of Gregory's pucker just waiting for you between them. Despite you knowing better, the man's rear entrance looks almost blemish-less, with little visible indication that he's been fucked before. Only when you bring the tip of your index finger (freshly moistened with spit) against his opening and push in a little, the difference becomes obvious, as his ring readily allows your digit to slip in, right up to the second joint. He's still nicely tight, but seems more stretchy than one would expect from anyone but a veteran at anal sex - both of those points no doubt come on account of the nanites in his system, working tirelessly to repair overenthusiastic stretching, and making some 'improvements'.";
	WaitLineBreak;
	say "     Feeling around inside Gregory, it doesn't take you long to locate his prostate and give it a rub. Almost as soon as you find the pleasure-button in his ass and start playing with it, the low sounds of discomfort at being penetrated that the half-wyvern was making are replaced by more lustful noises. Before long, you have the man moaning and grunting audibly, his breath coming quicker than before as you stimulate him for your own amusement. Glancing down a little, you see that Gregory's balls appear to have filled out just a little bit, as if his body was getting ready to build up reserves for an upcoming sexual encounter. Chuckling at the man's receptiveness, despite being passed-out, you slide a hand between him and the two thick pillows you bent him over, feeling the warmth of his now erect, inhuman cock. It only takes a little tug to hook it under the edge of the pillow, now angled downwards and in your full view instead of being wedged between Gregory and the cushions.";
	say "     Having the man's erection more accessible now also provides you with another nice little source of lube for fingering his hole, as you wipe up the pre-cum he's leaking and dab it on his hole with a smile before pushing your digits back into him. Something about that simple act seems quite erotic to you in this moment, and it almost seems that Gregory knows that pre is rubbed into his hole, as he lets out somewhat louder moans at your continued stimulation. You go back and forth, gathering more pre to finger him, then eventually go for an all-out double assault on the soldier's pleasure-spots, using one hand (and two fingers of that, by now) to stimulate his asshole, while the other hand is wrapped around his erection, jerking up and down along its length. Gregory's breath starts to come quicker and quicker as you push his body further.";
	WaitLineBreak;
	say "     Then suddenly, you can feel a shudder go through him, from head to toe, with the man's muscles spasming and his asshole clenching on your invading fingers as Gregory starts to unload. You can feel his shaft throb and pulse in your grasp as it erupts with creamy white cum, creating wet streaks along the cushions his dick is pressed against. Continuing to stimulate and milk him all throughout his orgasm, you glance proudly at your handiwork when the half-wyvern eventually winds down. By now, his orgasm has ebbed off, with the last little throbs of cum flowing from his dickhead to soak into the pillows. His asshole looks slick and shiny from the spit and pre-cum you've pushed into him.";
	LineBreak;
	say "     [bold type]Do you want to clean him up?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Wipe Gregory's hole with a cloth.";
	say "     [link](2)[as]2[end link] - Give his hole a lick or two before dabbing it dry.";
	say "     [link](3)[as]3[end link] - Just leave him like this.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to wipe Gregory down, [link]2[end link] to lick Gregory clean or [link]3[end link] to leave him like that.";
	if calcnumber is 1:
		LineBreak;
		say "     It only takes you a moment to rustle up a suitable piece of fabric that you can use as a rag, brushing it over Gregory's crack to dry him there. Besides a very faint odor of pre-cum hanging in the air around him, there is no trace left of your previous activities by the time you're done. At that point, you pull the pillows out from under him and fling them aside, then roll the still unconscious man over again, to rest on his back once more.";
	else if calcnumber is 2:
		LineBreak;
		say "     Bending down to bring your face between Gregory's buttocks, you stick out your tongue and brush it over his wrinkled pucker, tasting the pre-cum on your lips as you lick him. It tastes fairly nice, with a tiny bit of spice to it, and you swish your tongue over your lips before swallowing and going back for more. It only takes you a moment to rustle up a suitable piece of fabric that you can use as a rag afterwards, brushing it over Gregory's crack to dry him there. Besides a very faint odor of pre-cum hanging in the air around him, there is no trace left of your previous activities by the time you're done. At that point, you pull the pillows out from under him and fling them aside, then roll the still unconscious man over again, to rest on his back once more.";
	else if calcnumber is 3:
		LineBreak;
		say "     A smile crosses your lips as you decide to let Gregory air-dry, and on his belly with the ass raised high. He'll be fine as he is, and Urik can give him a sponge-bath or something later and roll him back around.";
		if "Oathbreaker_Urik" is listed in Traits of Player:
			TraitGain "Oathbreaker_Revealed" for Urik;
	TraitGain "Ass Fingered" for Gregory;
	NPCSexAftermath Gregory receives "Stroking" from Player;

to say GregorySex3: [ass-fucking by Gregory]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Gregory;

Gregory ends here.
