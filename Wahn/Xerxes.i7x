Xerxes by Wahn begins here.

Chapter 1 - Xerxes Basics

Table of GameCharacterIDs (continued)
object	name
Xerxes	"Xerxes"

Xerxes is a man.
ScaleValue of Xerxes is 3. [human sized]
Body Weight of Xerxes is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Xerxes is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Xerxes is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Xerxes is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Xerxes is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Xerxes is 5. [length in inches]
Breast Size of Xerxes is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Xerxes is 2. [count of nipples]
Asshole Depth of Xerxes is 8. [inches deep for anal fucking]
Asshole Tightness of Xerxes is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Xerxes is 1. [number of cocks]
Cock Girth of Xerxes is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Xerxes is 9. [length in inches]
Ball Count of Xerxes is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Xerxes is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Xerxes is 0. [number of cunts]
Cunt Depth of Xerxes is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Xerxes is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Xerxes is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Xerxes is false.
PlayerRomanced of Xerxes is false.
PlayerFriended of Xerxes is false.
PlayerControlled of Xerxes is false.
PlayerFucked of Xerxes is false.
OralVirgin of Xerxes is false.
Virgin of Xerxes is true.
AnalVirgin of Xerxes is true.
PenileVirgin of Xerxes is false.
SexuallyExperienced of Xerxes is true.
TwistedCapacity of Xerxes is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Xerxes is false. [steriles can't knock people up]
MainInfection of Xerxes is "Human".
Description of Xerxes is "[XerxesDesc]".
Conversation of Xerxes is { "Woof." }.
LastXerxesTalk is a number that varies. LastXerxesTalk is usually 555.
HP of Xerxes is usually 0.
ImpregFunction of Xerxes is "[impregXerxesChance]".

[ HP states of Xerxes                              ]
[   0: hasn't been brought to the bunker yet       ]
[   1: no sex with either Fang or the Felinoid     ]
[  10: got fucked only by Fang                     ]
[  11: got fucked only by the Felinoid             ]
[  12: got fucked by both Fang and the Felinoid    ]
[                                                  ]
[ lust of Xerxes                                   ]
[   0: hasn't had sex with the player              ]
[   1: had sex with the player once                ]
[   2: awesomeness message                         ]
[   3: awesome upgrade                             ]
[   4: awesome sex                                 ]
[   5: awesome sex continues                       ]
[   6: offer for tattoo                            ]
[   7: tattoo received                             ]

to say XerxesDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Xerxes], LUST: [lust of Xerxes], TRAITS: [Traits of Xerxes] <- DEBUG[line break]";
	if lust of Xerxes < 3:
		project Figure of Xerxes_soft_icon;
		say "     Originally one of Mike's dogs, Xerxes is now a young human male of about nineteen. He has short black hair and a well-developed physique, with muscular arms and legs. All in all a very handsome guy - but no matter what he looks like - there's still only a dog's mind behind his eyes, so he walks on all fours and only uses barks and growls as communication. He watches you attentively, eager to follow the commands of his master. ";
		if lust of Xerxes is 2:
			say "You are quite pleased by having such a loyal and obedient pet, but you can't help musing that there might be something you could give the young man that would make him even more [if carried of awesome fruit > 0][link]awesome[as]give awesome fruit to Xerxes[end link][else]awesome[end if]. ";
		LineBreak;
	else if lust of Xerxes is 3:
		project Figure of Xerxes_awesome_soft_icon;
		say "     Originally one of Mike's dogs, Xerxes is now a young human male of about nineteen. His beautiful body is fit and toned with muscular arms and legs and his skin possesses a light, even tan. His handsome face is framed by long, black hair that goes down to his shoulders and never seems to have a hair out of place. All in all, he's a very handsome guy, but inside he's still a loyal and obedient dog. He has started to act a little differently since you gave him that strange fruit though. Sometimes, it's as simple as him giving you a more human smile than a canine one when he looks at you. He seems to listen more attentively and his barks aren't as loud and excited. Other times, he's trying to pick up his various dog toys with his hands. You've even spotted him trying to stand on his hind legs as a begging dog would all on his own. When he notices you watching, he barks happily and waits attentively for the commands of his master.";
	else:
		project Figure of Xerxes_awesome_soft_icon;
		say "     Originally one of Mike's dogs, Xerxes is now a young human male of about nineteen. His beautiful body is fit and toned with muscular arms and legs and his skin possesses a light, even tan. His handsome face is framed by long, black hair that goes down to his shoulders and never seems to have a hair out of place. All in all, he's a very handsome guy, but inside he's still a loyal and obedient dog. ";
		if lust of Xerxes is 7:
			say "Wearing nothing, the only adornment he has is the detailed tattoo he received when visiting Kara. Starting at his neck is a detailed collar of deep black with red spikes added to it. Attached to the collar is a bone-shaped tag done in golden yellow and with 'Good boy' written on it in cursive writing. Also attached to it is a red leash that hangs down from his neck, crosses one of his smooth pecs and goes back over his left shoulder to run down his back. Just a few inches before reaching the handhold, the red switches into rainbow banding, ending in a purple loop [']resting['] against his ass. The whole tattoo is very detailed, looking quite real and seeming to have depth and curving naturally despite only being drawn into his skin.";
		say "     The unexpected effects of the fruit seem to have largely settled down with him becoming smarter and able to recognize and use his human body. He still has a thoroughly canine mind and is as loyal and obedient as ever, if not more so. While he is able to walk upright a little unsteadily, he still much prefers to go on all fours. Interspersed between his normal, canine antics, he will sometimes flip through some of the books, mainly children's books. He seems to find those with color pictures particularly fascinating. He has a short vocabulary of words, though usually sticks to more canine sounds, especially when he's having fun or having fun having sex. Having a canine perspective on the world, he has no human shame and is as sexually open as ever despite his much more human capacity for reason.";
	if ImpregTimer of Xerxes > 0:
		say "     [bold type][if ImpregTimer of Xerxes > 12]His belly bulges hugely, showing the life-giving baby bump of a pregnant male. Most likely he'll give birth in the next day or two. [else if ImpregTimer of Xerxes > 0]His belly shows a slight curve, allowing you to guess that he's gotten pregnant recently. Sometime in the next few days, there'll be a new human dog born. [end if][roman type][line break]";
	if OffspringCount of Xerxes is 1:
		say "     Xerxes's firstborn son follows close behind whenever your human dog moves through the library, often wanting to play or just be close to his father. Given their canine origins, it's not surprising that pack mentality is strong in both of the young men, and they prefer not to be separated from each other.";
	else if OffspringCount of Xerxes > 1:
		say "     Xerxes's [OffspringCount of Xerxes] sons follow close behind whenever your human dog moves through the library, often wanting to play or just be close to their father. Given their canine origins, it's not surprising that pack mentality is strong in all of the young men, and they prefer not to be separated from each other.";

instead of conversing Xerxes:
	if lust of Xerxes < 3:
		project Figure of Xerxes_soft_icon;
		say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him and talk with him. Or rather to him - as he still only has the mind of a dog and mostly replies with 'Woof?', 'Woof.' and 'Woof!'";
	else if lust of Xerxes is 3:
		project Figure of Xerxes_awesome_soft_icon;
		say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him and talk with him. Or rather to him, though he seems to be listening to you more attentively than he has in the past, almost as if he can understand you. Certainly his barks of response seem more varied and coincide with points you bring up.";
	else:
		project Figure of Xerxes_awesome_soft_icon;
		say "     Calling Xerxes to you from wherever he was patrolling in the library, you sit down on the cot you put in here for him. He [one of]snuggles up at your feet[or]rests his head in your lap[at random] and listens to you talk. He doesn't say much and mostly barks in response, but will occasionally use one of his spoken words instead. Usually, it's 'Master' or 'Friend' or 'Sex', those being his favorites, though you've heard him use at least a couple dozen and he seems to have no problem understanding you.";
	say "     Still, it's rather relaxing to talk a while about your problems and stroke your human dog's hair. It strengthens your sanity a bit and you feel more confident that you will get through this crazy situation.";
	if LastXerxesTalk - turns > 8:
		SanBoost 5;
		now LastXerxesTalk is turns;
	if Resolution of Spreading Flowers is 4:
		say "[XerxesSFHarvest]"; [On Joanna's File]

instead of sniffing Xerxes:
	say "     Xerxes has a nice smell, fresh and masculine.";

the linkaction of Xerxes is "[XerxesLinkaction]".

to say XerxesLinkaction:
	say "Possible Actions: [link]talk[as]talk Xerxes[end link], [link]smell[as]smell Xerxes[end link], [link]fuck[as]fuck Xerxes[end link]";
	if "MPreg" is not listed in traits of Xerxes and carried of orc pill case > 0:
		say ", [link]give orc pill[as]give orc pill case to Xerxes[end link][line break]";
	else:
		LineBreak;

instead of trading the orc pill case when the current action involves the Xerxes:
	say "     Pulling the small metal pill case out of your pocket, you open its lid and look at the fairly inconspicuous white pills within. Remembering the video diary of the researcher whose work these pills are, you know that they can give a male the ability to become pregnant, while not changing anything else about their form. Moving your gaze to Xerxes, who's happily waiting for you close by in all his naked glory, you can't help but think that it'd be very easy to feed your human dog one of these little wonder-pills.";
	LineBreak;
	say "     [bold type]Do you want to feed Xerxes an orc pill?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Fuck yeah! Pregnant men are the best men! Xerxes would be hot with a baby bump!";
	say "     ([link]N[as]n[end link]) - Nah, better not feed your companion the product of a mad scientist's mind.";
	if Player consents: [orc pill]
		LineBreak;
		say "     Making up your mind, you pick one of the many pills out of the case before snapping it shut with a click. After slipping the metal container back into your pocket, you give a sharp whistle to get Xerxes's attention. His head whips around to look and smile at you, followed by him quickly trotting towards you to get some pets. As you then hold up the orc pill between your thumb and index finger, shaking it a little to draw the human dog's attention, he [if Lust of Xerxes < 3]barks eagerly, no doubt thinking you've got a treat for him[else]eagerly barks out 'Treat!' Then he gives you his best puppy dog-eyes, which are no less cute now that he's a human[end if]. With a smile on your face, you bring the pill closer and then lay it on Xerxes obediently stretched-out tongue. When you withdraw your hand, he makes it vanish with a quick chomp, then looks back up to you, as if checking for more treats from his [master]. You just pat his head, stroking the young man's hair, then bend down to give him a little belly-rub, anticipating the changes that your gift will bring.";
		say "     Before long, Xerxes shows a reaction to the pill he just swallowed, as warmth spreads across the skin underneath your fingers. The human dog lets out a little surprised whine, bending his neck to look down at his currently still flat and defined abs. He doesn't really seem to understand what internal readjustment he's currently going through, but of course he doesn't need to, as the human dog is simply happy to be with you. A little bit of gurgling from his stomach heralds the progression of the unseen changes within, with you holding Xerxes and petting him to make sure he doesn't get frightened by what is going on. Soon after, the flush of heat recedes from his body, and the young man is back to his active demeanor, pulling out of your grasp and barking as he invites you to play with him, happily chasing each other through the library to stretch his muscles.";
		TraitGain "MPreg" for Xerxes;
	else:
		LineBreak;
		say "     Silently shaking your head, you close the lid of the case with a click and slip it back into your pocket. Meanwhile, Xerxes is none the wiser, doing dog-things like meandering about and sniffing this or that. His head whips around to look and smile at you when you give a whistle, and he quickly trots towards you to get some pets. Your human doggie is an amazing pet even without mpreg abilities.";

To say impregXerxesChance:
	if debugactive is 1:
		say "     DEBUG: Impregnation chance for Xerxes, base chance 40%, ";
		if "Fertility Treatments" is listed in Traits of Xerxes:
			say "'Fertility Treatment' bonus 20%, ";
		say "Father: [LastSexualPartner of Xerxes]";
	let XerxesPregChance be 4; [40% base chance]
	if "Fertility Treatments" is listed in Traits of Xerxes:
		increase XerxesPregChance by 2; [20% extra chance]
	if a random chance of XerxesPregChance in 10 succeeds:
		if debugactive is 1:
			say "     DEBUG: Impregnation successful! A new human dog is growing in Xerxes now!";
		now ImpregTimer of Xerxes is 1; [starts the pregnancy timer]
	else:
		if debugactive is 1:
			say "     DEBUG: Impregnation fail! A chance of [XerxesPregChance] in 10 didn't succeed.";

an everyturn rule:
	if ImpregTimer of Xerxes > 0: [Xerxes is pregnant]
		increase ImpregTimer of Xerxes by 1; [counting up towards 24]
		if debugactive is 1:
			say "     DEBUG: Xerxes's pregnancy advanced one turn. Current Turn: [ImpregTimer of Xerxes], Target Value: 24";
		if ImpregTimer of Xerxes is 20 and skipturnblocker is 0: [announcement that birthing time is coming closer]
			if Xerxes is visible:
				say "     From one moment to the next, the expression on Xerxes's face changes, and the human dog lets out a surprised whine, and he barks to draw your attention. Moving up to him, you crouch down and check on the young man, which includes laying a hand on his bulging belly. Ah! You can feel the child within moving, with a light kick or two noticeable under your fingers. [bold type]If the little one is getting this unruly, you don't think it'll be much longer before it is time for the birth. If you want to be present for the birth of Xerxes's child, you should most likely stay close to him in the next 12 hours or so.[roman type][line break]";
			else:
				say "     Your thoughts wander back to Xerxes, and you feel a need to go check in on him. [bold type]If you want to be present for the birth of his child, you should most likely stay close to him for the next 12 hours or so.[roman type][line break]";
		else if ImpregTimer of Xerxes >= 24 and skipturnblocker is 0: [birthing time]
			if Xerxes is not visible: [player isn't anywhere near him]
				say "     [bold type]Your thoughts wander back to Xerxes, and you feel a need to go check in on him.[roman type][line break]";
				add "Absent_Birth" to Traits of Xerxes; [memory of the birth of human dog offspring without the player present]
			else: [player is next to Xerxes] [TODO: Add mentions of other offspring]
				say "     From one moment to the next, the expression on Xerxes's face changes, and the human dog lets out a surprised whine, and a bark to draw your attention. Then he turns his head to the side, looking towards his rear end. As you approach, you immediately spot a wet sheen on his legs and on the ground, where the human dog is crouching with bent legs. ";
				if OffspringCount of Xerxes is 0: [first time]
					say "The young man looks confused, and a bit frightened, but quickly calms down once you sit on the ground right next to him, enfolding him in your arms to hold him as contractions rock his naked body. ";
				else if OffspringCount of Xerxes > 4:
					say "The young man looks confident and proud, ready to bring another life into this world. But even so, Xerxes seems very thankful and happy as you sit on the ground right next to him, laying your arms around his body to be there for him. ";
				else if OffspringCount of Xerxes > 4:
					say "Starting to get used to the process, the young man is much calmer than the first time, no doubt from knowing what to expect. But even so, But even so, Xerxes seems very thankful and happy as you sit on the ground right next to him, laying your arms around his body to be there for him. ";
				say "Holding your companion against your chest, you feel the warm breath of his rapid panting against your skin. Aware that there isn't much time left, you gently move him a little closer to a nearby sofa, then help Xerxes lay down on it. Stuffing some pillows under the small of his back to help, you look him up and down, eyes following the curve of his pregnant belly and then coming to rest on the curve of his ass. You touch Xerxes's hole gently, drawing a moan from him and leaving your fingers slick with what you realize to be pre-cum. Seems like part of the orcish physiology package is some creative re-routing of fluids, once needed. With the impending birth of Xerxes's child through his usually nicely tight asshole, he certainly needs all the lubrication he can get.";
				say "     Xerxes lets out a deep grunt as a fairly strong contraction hits him, his fingernails clawing over the cushions around him. While pregnancy and birth may be a lot quicker these days, it doesn't look like they are all that much easier than before. The curve of your pregnant pet's belly heaves with another contraction, followed by a breathless groan from him, and you can see his pucker dilate a little in preparation for what is to come. In the heat of the moment, you don't spare a second thought before rushing forward to take position between his legs, hands outstretched. Then the next contraction hits, this time bringing with it a fleshy egg-sack containing a curled-up bundle of a little human dog and amniotic fluid, which you catch and clasp carefully in your arms. As the little one starts to struggle inside it, not too happy after his impromptu rollercoaster ride, the skin around him disintegrates before your eyes, an effect accompanied by a faint silver shimmer at the edge of the spreading nothingness. Of course, this also gushes the contained fluids all over you.";
				WaitLineBreak;
				say "     Despite the mess, it is a beautiful moment, with you holding a new life as he takes his first breath. The tiny baby lets out a whimper at finding himself in a strange new world outside of the fluid-filled home he came from, then starts to move his limbs as if to try them out for the first time. Focused on the miracle of life in your hands, you put your finger in his little palm, to be immediately gripped and squeezed by his tiny fingers. He's strong for someone so tiny and literally less than a minute old, but that's the way things are these days. Looking down a little, you see the last remaining part of the egg sack, the umbilical cord, vanish after a little bulge wanders up its length and entering the human dog, possibly consisting of nanites and whatever materials they deemed worthy to keep. Panting, Xerxes pushes himself up from where he lies, exhausted but happy to see his newborn.";
				say "     Carefully holding your bundle of joy, you stand up and lay the baby against Xerxes's chest, to be cradled lovingly by the human dog father. Xerxes guides his son to his pecs, smiling in fulfillment as the youngling's lips clamp onto his nipple and start to suckle greedily. Even as worn out as he is, the human dog can't help but smile as he feeds his child. As the newborn gulps down what he can drink from his father, he grows noticeably larger with each passing second. Tiny as he may have been, he seems in a rush to catch up now, growing so fast that he seems to skip right past the size of a human baby or toddler and reach the stage of a young child in the blink of an eye. Then the burst of development slows down a little, still insanely fast but at least slow enough to watch some details of.";
				WaitLineBreak;
				say "     Bones grow and lengthen, muscles fill in, and before you know, the young male has reached his teens. In mere moments, he rushes through all of puberty, and soon stabilizes at a level of development that makes him look almost as old as Xerxes! If you didn't know any better, having just watched the birth from start to finish, you'd just as likely have guessed that this second young man was Xerxes's brother. Still, there are some signs that this is a still very young man at heart, as the newcomer almost bowls you over with his puppy-like eagerness after finishing off the last of the milk, making happy sounds as he sniffs you. Xerxes is only a little bit more controlled than his son, being so very happy to welcome his offspring along with yourself. You indulge them with plenty of petting, happily surrounded by human dogs on two sides.";
			increase OffspringCount of Xerxes by 1; [one more human dog birthed]
			now ImpregTimer of Xerxes is 0; [pregnancy reset]


Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Xerxes_AbsentBirth"	Xerxes_AbsentBirth	"[EventConditions_Xerxes_AbsentBirth]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Xerxes_AbsentBirth"	Xerxes_AbsentBirth	"[EventConditions_Xerxes_AbsentBirth]"	Grey Abbey Library	2500	2	100

to say EventConditions_Xerxes_AbsentBirth:
	if Xerxes is in Grey Abbey Library and "Absent_Birth" is listed in Traits of Xerxes: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Xerxes_AbsentBirth	"Xerxes_AbsentBirth"

Xerxes_AbsentBirth is a situation.
ResolveFunction of Xerxes_AbsentBirth is "[ResolveEvent Xerxes_AbsentBirth]".
Sarea of Xerxes_AbsentBirth is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Xerxes_AbsentBirth:
	if OffspringCount of Xerxes is 1:
		say "     As you walk into the entrance area of the library, you find Xerxes waiting for you, laying on his side on one of the sofas with a view of the entrance. He immediately lets out a happy bark [if Lust of Xerxes > 3]of '[Master]!' [end if]and jumps up from his resting spot to rush over to you. And he's not alone! A second naked young man follows close to your pet's side, dashing forward on all fours as if mimicking his father. Besides the similar behavior, it is more than obvious that this is Xerxes's new son by his appearance, which is really quite similar to your companion. Given that the second human dog has rapidly grown to look just about the same age as his father, you'd have guessed they were brothers if you didn't know any better. Still, there are some signs that this is a still very young man at heart, as the newcomer almost bowls you over with his puppy-like eagerness, making happy sounds as he sniffs at you. Xerxes is only a little bit more controlled than his son, being so very happy to show you his offspring. You welcome your newest pet and give the both of them plenty of petting.";
	else:
		say "     As you walk into the entrance area of the library, you find Xerxes waiting for you, laying on his side on one of the sofas with a view of the entrance. He immediately lets out a happy bark [if Lust of Xerxes > 3]of '[Master]!' [end if]and jumps up from his resting spot to rush over to you. And he's not alone but has a new son close by his side! A second naked young man follows close to your pet's side, dashing forward on all fours as if mimicking his father. Besides the similar behavior, it is more than obvious that this is Xerxes's new son by his appearance, which is really quite similar to your companion. Given that the second human dog has rapidly grown to look just about the same age as his father, you'd have guessed they were brothers if you didn't know any better. Still, there are some signs that this is a still very young man at heart, as the newcomer almost bowls you over with his puppy-like eagerness, making happy sounds as he sniffs at you. Xerxes is only a little bit more controlled than his son, being so very happy to show you his offspring. You welcome your newest pet and give the both of them plenty of petting[if OffspringCount of Xerxes is 2], soon followed by Xerxes's second son[else], soon followed by Xerxes's other [OffspringCount of Xerxes - 1] sons[end if] joining the snuggle pile.";
	remove "Absent_Birth" from Traits of Xerxes;

Chapter 2 - Xerxes Sex Menu

Instead of fucking Xerxes:
	if (lastfuck of Xerxes - turns < 5):
		say "     Xerxes still seems a bit worn out from the last fun-time. Let him rest a bit more...";
	else if lust of Xerxes is 3:
		project Figure of Xerxes_awesome_hard_icon;
		say "[AwesomeXerxesSex0]";
	else if lust of Xerxes is 5 and a random chance of 3 in 5 succeeds and Player is not neuter:
		project Figure of Xerxes_awesome_hard_icon;
		say "[AwesomeXerxesSex1]";
	else:
		if lust of Xerxes < 3:
			project Figure of Xerxes_hard_icon;
		else:
			project Figure of Xerxes_awesome_hard_icon;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Xerxes cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		[]
		if Player is not neuter:
			choose a blank row in table of fucking options;
			now title entry is "69 with Xerxes";
			now sortorder entry is 3;
			now description entry is "Share oral pleasures with your human dog pet.";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Xerxes fuck your pussy";
			now sortorder entry is 4;
			now description entry is "Let the human dog breed you.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Xerxes fuck your ass";
		now sortorder entry is 5;
		now description entry is "Let the human dog fill your ass with his seed.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Xerxes ass";
			now sortorder entry is 6;
			now description entry is "Fill the human dog's ass with your cock.";
		[]
		if (Player is male and Felinoid Companion is tamed and (HP of Xerxes is 11 or HP of Xerxes is 12)):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Xerxes & Klauz";
			now sortorder entry is 7;
			now description entry is "Hot sex with Klauz fucking Xerxes.";
		[]
		if (Player is male and Fang is in the Grey Abbey Library and Fang is Male and (HP of Xerxes is 10 or HP of Xerxes is 12) and HP of Fang < 7 ):
			choose a blank row in table of fucking options;
			now title entry is "Male threesome with Xerxes & Fang";
			now sortorder entry is 8;
			now description entry is "Hot sex with Fang fucking Xerxes.";
		[]
		if (Player is female and Felinoid Companion is tamed and (HP of Xerxes is 11 or HP of Xerxes is 12)):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Xerxes & Klauz";
			now sortorder entry is 9;
			now description entry is "Hot sex with Klauz fucking Xerxes.";
		[]
		if (Player is female and Fang is in the Grey Abbey Library and Fang is Male and (HP of Xerxes is 10 or HP of Xerxes is 12) and HP of Fang < 7 ):
			choose a blank row in table of fucking options;
			now title entry is "Female threesome with Xerxes & Fang";
			now sortorder entry is 10;
			now description entry is "Hot sex with Fang fucking Xerxes.";
		[]
		if Player is not neuter and lust of Xerxes is 6 and HP of Kara > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get Xerxes a tattoo";
			now sortorder entry is 11;
			now description entry is "Bring Xerxes to Kara to get a tattoo.";
		[]
		if (HP of Ares > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Xerxes and Ares for a walk";
			now sortorder entry is 12;
			now description entry is "Go pick up Ares from Mike's kennel and take him and Xerxes for a walk.";
		[]
		if Resolution of Spreading Flowers > 4:
			choose a blank row in table of fucking options;
			now title entry is "Take Xerxes to Joanna for some cum harvest";
			now sortorder entry is 12;
			now description entry is "Bring him along for some fun with the plant-girl.";
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
					if nam is "Suck Xerxes cock":
						say "[XerxesSex1]";
					else if (nam is "Have him suck your cock"):
						say "[XerxesSex2]";
					else if (nam is "69 with Xerxes"):
						say "[XerxesSex10]";
					else if (nam is "Let Xerxes fuck your pussy"):
						say "[XerxesSex3]";
					else if (nam is "Let Xerxes fuck your ass"):
						say "[XerxesSex4]";
					else if (nam is "Take Xerxes ass"):
						say "[XerxesSex5]";
					else if (nam is "Male threesome with Xerxes & Klauz"):
						say "[XerxesSex6]";
					else if (nam is "Male threesome with Xerxes & Fang"):
						say "[XerxesSex7]";
					else if (nam is "Female threesome with Xerxes & Klauz"):
						say "[XerxesSex8]";
					else if (nam is "Female threesome with Xerxes & Fang"):
						say "[XerxesSex9]";
					else if (nam is "Get Xerxes a tattoo"):
						say "[AwesomeXerxesSex2]";
					else if (nam is "Take Xerxes and Ares for a walk"):
						say "[AresXerxesWalk]";
					else if (nam is "Take Xerxes to Joanna for some cum harvest"):
						say "[XerxesHarvest]"; [On Joanna's file]
					if lust of Xerxes is 0:
						now lust of Xerxes is 1;
					else if lust of Xerxes is 1:
						say "     Looking over the doggedly loyal young man, you can't help but smile, quite pleased with how good a pet he is. Now, perhaps there's a way to make him even more awesome...";
						now lust of Xerxes is 2;
					else if lust of Xerxes is 4:
						increase lust of Xerxes by 1;
					now lastfuck of Xerxes is turns;
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the human dog, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

Chapter 3 - Xerxes Sex Scenes

to say XerxesSex1: [player sucks him]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, happy to get his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' he says with a wide grin[end if]. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Your hand strays lower and lower until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     You push softly against him so he lies on his side, then back, with his human erection now standing proudly upwards. Pumping your hand up and down on it again, you put your lips to its tip, then go down on him. Xerxes [if lust of Xerxes >= 4]moans 'Good master' and yips while rubbing his hands lightly across your shoulders[else]gives a lust-filled growl[end if] and starts to instinctively thrust with his hips, putting his cock deeper into your mouth and making the most of your blow-job. It's not too much longer before he orgasms, body twitching as his human seed gushes into your mouth. You wait until you get it all, every last shot, then swallow it down. Giving your dog a last quick belly-rub over his hard abs, you stand back up and turn back to everyday survival[if lust of Xerxes >= 4] while he runs off to rummage around in the stacks some more[end if].";
	NPCSexAftermath Player receives "OralCock" from Xerxes;

to say XerxesSex2: [he sucks the player]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, happy to get his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' he says with a wide grin[end if]. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Your hand strays lower and lower until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt and give it a squeeze. Standing back up, you quickly strip off your clothes and hold your erect manhood up for Xerxes, who gives you a happy yip, then starts licking it.";
	say "     He runs his talented tongue along your shaft, then laps at your balls before returning to the tip of your cock and taking it in his mouth. As Xerxes starts giving you a pretty nice blow-job, you resolve to thank Mike the next time you see him for your expertly trained pet. Your human dog is very careful not to touch your best bit with his teeth and uses his tongue to caress your cock as he bobs up and down on it";
	if lust of Xerxes < 4:
		say ". With his eager sucking, it doesn't take much longer until the need to cum rises in your balls.";
	else if lust of Xerxes < 7:
		say ". With his increased awareness, he's become more responsive and even more eager in his cock-sucking.";
		say "     He even tries to use his hands a little, rubbing your balls or stroking your shaft as he sucks on your glans. He's still a little unsure in using his hands, but he's certainly improving now that he's discovered they can be used to pleasure his loving master. With his eager sucking and stroking, it doesn't take much longer until the need to cum rises in your balls.";
	say "     Moaning, you grab Xerxes['] head and do a few deep thrusts with your hips, your cock deep in his throat as it starts shooting a huge load. Pumping blast after blast directly into his stomach, you hold his head against your crotch, then pull back a moment later to let him get some air. He quickly goes back to work, catching the last spurts of cum with his mouth, then puts his lips around your cock-head, softly sucking as it goes down[if lust of Xerxes >= 4]. When he finally releases your cock, he smiles a very human smile up at you. 'Master tasty,' he says, licking his lips[end if].";
	NPCSexAftermath Xerxes receives "OralCock" from Player;

to say XerxesSex3: [player pussy fucked]
	setmonster "Human";
	choose row MonsterID from the Table of Random Critters;
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, happy to get his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' he asks eagerly[end if]. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Your hand strays lower and lower until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     Quickly stripping off your clothes, you get on the cot yourself and assume a position on all fours in front of Xerxes. You wiggle your ass at him and reach down to spread your folds invitingly. Already hot and ready from your earlier stroking, your human dog doesn't hesitate a second before he mounts you from behind in typical doggie-style, hugging your chest as his hips grind against you. His hard shaft quickly finds your moist opening and plunges deep into your body.";
	if lust of Xerxes >= 4:
		say "     Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut with you hard and fast for a while, taking the time to run his hands over your [one of][bodytype of Player][or][if Player is male]herm[else]female[end if][as decreasingly likely outcomes] body as he takes slower thrusts at first, enjoying the feel of your hot, wet hole around his pulsing shaft. His hands roam over you[if lust of Xerxes < 7] almost as if he were petting you[else], stroking and caressing your [bodydesc of Player] body with growing adeptness[end if]. He nuzzles at the back of your neck, panting with a growing excitement that has his pace quicken in response. As he thrusts harder, you moan what a good boy he is.";
	WaitLineBreak;
	say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you. This soon drives your arousal to the max, giving you a mind-blowing orgasm that moistens Xerxes cock with even more slippery femcum[if Player is male] and makes your cock spray your own load all over the sheets below[end if]. He obviously likes the feeling of that, as his growls of lust increase and he speeds up before plunging in one last time and filling your womb with his human seed.";
	say "     As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, you move to lie on your sides with him behind you and rest for a while on the cot as you come down from your orgasms[if lust of Xerxes >= 4]. 'Mmm... Master good fuck,' he mumbles softly, snuggling up to you lovingly[end if].";
	NPCSexAftermath Player receives "PussyFuck" from Xerxes;

to say XerxesSex4: [player ass fucked]
	setmonster "Human";
	choose row MonsterID from the Table of Random Critters;
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, happy to get his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' he asks eagerly[end if]. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Your hand strays lower and lower until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     Quickly stripping off your clothes, you grab the bottle Mike gave you and apply a generous amount of lube to your hole, then get on the cot and assume a position on all fours in front of Xerxes. You wiggle your ass at him and reach back to spread your cheeks invitingly. Already hot and ready from your earlier stroking, your human dog doesn't hesitate a second before he mounts you from behind in typical doggie-style, hugging your chest as his hips grind against you. His hard shaft pokes your ass and rubs up and down your crack until he finally finds your hole and presses in against you. As your pucker yields to Xerxes['] invading member, he plunges deep into your body, giving a lustful growl as he bottoms out in one thrust.";
	if lust of Xerxes >= 4:
		say "     Having gained intelligence to go along with his canine mind, he is able to hold back his instinctive desire to rut with you hard and fast for a while, taking the time to run his hands over your [one of][bodytype of Player][or][if Player is herm]herm[else if Player is male]male[else if Player is female]female[else]genderless[end if][as decreasingly likely outcomes] body as he takes slower thrusts at first, enjoying the feel of your hot, tight hole around his pulsing shaft. His hands roam over you[if lust of Xerxes < 7] almost as if he were petting you[else], stroking and caressing your [bodydesc of Player] body with growing adeptness[end if]. He nuzzles at the back of your neck, panting with a growing excitement that has his pace quicken in response. As he thrusts harder, you moan what a good boy he is.";
	WaitLineBreak;
	say "     Xerxes fucks you with a relentless wild energy, his hard thrusts rubbing very sensitive and pleasurable spots inside you. This soon drives your arousal to the max, giving you a mind-blowing orgasm[if Player is male] that makes you shoot long streams of cum all over the sheets below[else if Player is female] that makes your pussy drip with femcum[end if]. Your anal muscles twitching around his cock obviously excites Xerxes, as his growls of lust increase and he speeds up before plunging in one last time and filling your asshole with his human seed.";
	say "     As his cock and balls keep twitching with blast after blast of cum into you, Xerxes just keeps holding on to you, panting with his head over your shoulder. Turning your head, you pull his lips to yours, kissing him and sticking your tongue in his mouth. Holding him against you with one arm, you move to lie on your sides with him behind you and rest for a while on the cot as you come down from your orgasms[if lust of Xerxes >= 4]. 'Mmm... Master good fuck,' he mumbles softly, snuggling up to you lovingly[end if].";
	NPCSexAftermath Player receives "AssFuck" from Xerxes;

to say XerxesSex5: [Xerxes ass fucked]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, happy to get his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master sex?' he asks eagerly[end if]. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Your hand strays deeper and deeper until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt and give it a squeeze, then push a finger against his tight pucker. Reaching over, you grab the bottle Mike gave you and squirt some lube on your hand, warming it up a bit before starting to push first one, then two lubed fingers up Xerxes['] ass. After a first little whine, Xerxes gets into this anal invasion, even giving you a lustful yip as you stroke his prostate. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	say "     Quickly stripping off your clothes, you put some more lube your shaft, then get on the cot and kneel behind your waiting human dog. Running your hands from his shoulders over his muscular back down to his hips, you pull him towards you a bit, then move forward until the tip of your cock touches his pucker. Stroking his skin and telling him in soft tones to relax, you push forward and slide into his body. Xerxes['] hole is incredibly warm and tight - no wonder, with only Mike and maybe one or two of the other human dogs having been in there before you. You take a moment to appreciate the tight grip of his ass as you bottom out, then start fucking him, with Xerxes panting and yipping in lust as you slide in and out[if lust of Xerxes >= 4]. 'Good master,' he moans, pressing his rear back into your thrusts[end if]. Sounds like he really enjoys getting ass-fucked, and reaching around him you find that his manhood is rock hard.";
	WaitLineBreak;
	if lust of Xerxes > 4:
		if a random chance of 3 in 5 succeeds:
			say "     You run your hands over his sexy body, caressing his lovely skin[if lust of Xerxes >= 7] and running your fingers along his collar tattoo[end if] as you lean over top of him. This draws added moans and yips of pleasure from him and he pushes himself back into your thrusts, his ass squeezing along your shaft as you fuck him like a dog. You play with his nipples and stroke his cock while fucking him, whispering in his ear what a good boy he is as you resume stroking his shaft.";
		else:
			say "     After running your hands over his sexy body, you pause in your thrusting to get him to lay on his back. He giggles a little at what seems an unnatural position to him, but welcomes you into his arms as you get your cock lined up again and push into his wanton hole again. He lavishes you with licks and kisses while running his hands across your back[if lust of Xerxes < 7] almost as if he were petting you[else], stroking and caressing your [bodydesc of Player] body with growing adeptness[end if]. Between the kisses you share, you whisper to him what a good boy he is as you resume stroking his shaft.";
	say "     Touching his cock seems to have been the last straw for his orgasm, and as you thrust deeply into Xerxes['] ass he gives a deep grunt and shoots a huge load of cum all over the sheets below. His anal muscles flexing around your shaft with each of his spurts, you're close behind him, moaning loudly as you cream his asshole with your sperm. With your cock twitching inside him with blast after blast of cum, you pull Xerxes['] upper body against your chest, and give him a deep kiss. Then, after your last shot, you pull him down to lie together with you on the cot and enjoy each other's warmth and closeness for a while as you come down from your respective orgasms[if lust of Xerxes >= 4]. 'Mmm... Master fuck Xerxes good,' he mumbles softly, snuggling up to you lovingly[end if][if lust of Xerxes >= 7] as you kiss along the tattooed collar ringing his neck[end if].";
	NPCSexAftermath Xerxes receives "AssFuck" from Player;

to say XerxesSex6: [male player and felinoid + Xerxes]
	say "     Accompanied by Klauz, you walk over to the cot you put up here in the library for Xerxes. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with him? Sure.'";
	say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He hesitates for a second as he sees the felinoid, then continues walking closer, happy to get his master's attention. Soon he's standing on all fours next to you. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Klauz immediately joins you on Xerxes['] other side, rubbing the side of his furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Xerxes breathing becoming quicker as he pants in lust and his cock filling out to dangle beneath his body.";
	WaitLineBreak;
	say "     Circling around to his backside, the felinoid licks Xerxes['] asshole with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to his neck. Standing over the smaller human, his belly-fur touching Xerxes back, Klauz is now in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes['] tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	LineBreak;
	say "     [bold type]What would you like to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let Xerxes blow you and feed him your load.";
	say "     ([link]N[as]n[end link]) - Fuck and fill Klauz's ass.";
	if Player consents: [sucked by Xerxes]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [Cock of Player] hard-on and stroke it a few times before holding it out for Xerxes. Your obedient dog immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes['] hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum on a direct path towards his stomach. Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
		NPCSexAftermath Xerxes receives "OralCock" from Player;
		say "     Even though Klauz and Xerxes are quite virile males, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, his twitching anal muscles give the large cat fucking him the last nudge towards orgasm too. A deep rumble of satisfaction vibrates in the felinoid's throat as he pushes his member as deep as it will go and fills Xerxes['] asshole with his seed. Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Xerxes with him. Stretched out comfortably on the floor, Klauz holds Xerxes against his warm belly fur with his front paws around him and starts licking his sweaty back. Looks as if he's actively trying to infect him, or at least wants to spread his scent over all of your human pet's body.";
		NPCSexAftermath Xerxes receives "AssFuck" from Klauz;
	else: [fucking the Felinoid]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, freeing your raging [Cock of Player] hard-on and grab the bottle of lube Mike gave you. After spreading some of the slick substance on your shaft, you step up behind the two rutting beasts. Running your hands up through the soft fur on his lower back, you grab Klauz's hips tightly then slam forward, burying your cock to the hilt in his warm, tight cave. Roaring at the sudden anal intrusion, the felinoid stops thrusting into Xerxes for a moment, looking back over his shoulder with partly bared teeth. That doesn't last long, though - moving in and out of his hole, your shaft stimulates his sensitive prostate, and soon your big cat is purring in satisfaction and fucking Xerxes again.";
		WaitLineBreak;
		say "     Even though you'd wish your threesome could last forever, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, he starts a chain reaction. The human dog's twitching asshole drives Klauz over the edge, a deep rumble of satisfaction vibrating in his throat as he fills Xerxes up with his seed. The big cat's insides in turn grip your penis tightly with each shot of cum shooting through his shaft, making you follow them to an amazing orgasm. You gasp as you grind your hips against the felinoid's furry behind and blast after blast of your sperm shoot into his tight chute.";
		NPCSexAftermath Xerxes receives "AssFuck" from Klauz;
		NPCSexAftermath Klauz receives "AssFuck" from Player;
		say "     After a moment of just holding on to the large feline and catching your breath, you pull out and watch Klauz's pink pucker snap shut before any of your seed can leak out. Satisfied but exhausted after this session, you sink down on Xerxes['] cot. The big cat and human dog separate from each other too, then lie down next to the cot on the floor, with Xerxes cuddling up to the felinoid's soft and warm belly fur. Purring as loud as an idling motor, the big cat starts licking his sweaty human skin. Looks as if he's actively trying to infect him, or at least spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library and Fang is Male: [rivalry messages]
		LineBreak;
		if HP of Fang is 1 or HP of Fang is 2: [Omega Fang]
			if HP of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Xerxes closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		else if HP of Fang is 3 or HP of Fang is 4 or HP of Fang is 7: [Alpha Fang]
			if HP of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
		else if HP of Fang is 5:
			if HP of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is bonding with Xerxes before he has had a chance to. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his packmate doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
		else if HP of Fang is 6:
			if HP of Xerxes is 11:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is laying claim to Xerxes before he has had a chance to. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his packmate doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";

to say XerxesSex7: [Male Player with Fang & Xerxes]
	if (HP of Fang is 1 or HP of Fang is 2): [Omega Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Xerxes,' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then say 'Here boy, I got something for you.' Xerxes eagerly dashes over, then licks your balls and cock a bit before taking it into his mouth. Quite good at blowing cock, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet blows you, Fang moves up behind him and sniffs Xerxes['] butt, then looks up at you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and as you slide your shaft once again into Xerxes throat you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Xerxes human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes['] ass. Driven by his feral lust, Fang ruts the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting blown as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes['] head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		LineBreak;
		say "     [bold type]What do you want to do now??[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Xerxes and feed him your load.";
		say "     ([link]N[as]n[end link]) - Fuck and come in Fang's ass.";
		if Player consents: [sucking]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes['] hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum on a direct path towards his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to the cot and sit down to watch the rest of your pet's coupling.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else: [fucking Fang]
			LineBreak;
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [Cock of Player] shaft into him with one deep thrust. After giving a loud yelp at the sudden anal invasion, Fang stops for a second and looks back. Seeing it's you, he accepts being fucked as his due to the Alpha, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
			NPCSexAftermath Fang receives "AssFuck" from Player;
		if felinoid companion is tamed: [rivalry messages - Omega Fang vs Felinoid]
			LineBreak;
			if HP of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what Klauz has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Xerxes and the dog in the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of him, he then turns his backside to the wolf, taking a secure stance and spreads his legs a bit further.";
		say "     With a satisfied growl Fang moves up behind him and sniffs Xerxes['] butt, then jumps up and mounts his human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes['] ass. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Xerxes makes you quite hard as well and you quickly strip off your clothes. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Xerxes eagerly licks your balls and cock a bit before taking it into his mouth. Ah, Mike trained this dog turned teenage human really well. He delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes['] head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		LineBreak;
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get blown by Xerxes and feed him your load.";
		say "     ([link]N[as]n[end link]) - Wait your turn at filling his ass.";
		if Player consents: [sucking]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes['] hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum on a direct path towards his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to his nearby cot and sit down to watch the rest of your Alpha's coupling with your pet.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else: [fucking Xerxes]
			LineBreak;
			say "     Deciding that you'll wait your turn, you move over to Xerxes['] nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Xerxes['] hole and sits down on the floor nearby, curling up to lick himself clean. With Xerxes hole still gaping a bit and leaking some of your Alpha's seed, you quickly get on top of him and ram your erection home. Even stretched by Fang's shaft, he's still nicely tight and feeling your strong wolf's cum filling his hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Xerxes and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Xerxes and move over to his cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Player;
		if felinoid companion is tamed: [rivalry messages - Alpha Fang vs Felinoid]
			LineBreak;
			if HP of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes ass again to make him his alone possibly. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
	else if (HP of Fang is 5): [Beta Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your friend hot and ready to go, you give a quick whistle to summon Xerxes and the dog in the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of him, he then turns his backside to the wolf, taking a secure stance and spreads his legs a bit further.";
		say "     With a satisfied growl Fang moves up behind him and sniffs Xerxes['] butt, then jumps up and mounts his human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes['] ass. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing the wolf penetrate Xerxes makes you quite hard as well and you quickly strip off your clothes. Pulling out your [Cock of Player] manhood, you pump your hand up and down its length a few times, then step up to the front of the mating couple and present your erection. Xerxes eagerly licks your balls and cock a bit before taking it into his mouth. Ah, Mike trained this dog-turned-teenage-human really well. He delivers an expert blowjob, even deep-throating all of your cock without any problems.";
		say "     Getting sucked as you watch Fang mounting your human-looking dog, the need to cum quickly rises inside you and you have to grab hold of Xerxes['] head to stop from losing it right then and there. Cock resting for a moment in his throat, you take a deep breath, then slowly pull out and take a step back. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner.";
		LineBreak;
		say "     [bold type]What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - Get blown by Xerxes and feed him your load.";
		say "     [link](2)[as]2[end link] - Wait your turn at filling Xerxes['] ass.";
		say "     [link](3)[as]3[end link] - Fuck and come in Fang's ass.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to follow, [link]2[end link] to leave it or [link]3[end link] to avoid this area.";
		if calcnumber is 1: [Blown by Xerxes]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you grab your erect member and stroke it demonstratively as you hold it out. Xerxes immediately goes for it, taking your hard length into his mouth and starts bobbing up and down on it. You give a deep moan as he keeps going down further and further, deep-throating you expertly. Man - you should really stop by Mike's again and thank him for your well-trained pet. Running your hands through Xerxes['] hair, you speed up face-fucking the teenager as you're getting close to an orgasm. Soon you can feel your load boiling up from your balls and with one last thrust you bury yourself all the way in his throat and shoot spurt after spurt of cum on a direct path towards his stomach.";
			say "     Breathing heavily, you stand still as Xerxes softly sucks you until you stop coming, then pulls off and licks your balls. Satisfied and just a bit exhausted, you move over to his nearby cot and sit down to watch the rest of your Beta's coupling with your pet.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, cementing the pack bond between the two of them.";
			say "     With the powerful wolf once again demonstrating his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get comfortable.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else if calcnumber is 2: [fucking Xerxes]
			LineBreak;
			say "     Deciding that you'll wait your turn, you move over to Xerxes['] nearby cot and sit down on its edge, watching your companions mate and jerk off a bit to it. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, cementing the pack bond between the two of them.";
			WaitLineBreak;
			say "     You move over to crouch beside them, fondling and stroking both their bodies as you wait for Fang's knot to go down. Some time later, the wolf pulls out of Xerxes['] hole and sits down on the floor nearby, curling up to lick himself clean. With Xerxes hole still gaping a bit and leaking some of the wolf's seed, you quickly get on top of him and ram your erection home. Even stretched by Fang's shaft, he's still nicely tight and feeling your strong wolf's cum filling his hole and squishing around your thrusting member is a definite plus. It doesn't take all that long until you feel a familiar tingling in your balls, and with one last thrust, you bottom out inside Xerxes and come, adding your seed to Fang's load.";
			say "     Phew. Satisfied and just a bit exhausted, you pull out of Xerxes and move over to his cot and lie down on it. The human dog follows you soon after, curling up at the foot of the bed.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Player;
		else: [Fucking Fang]
			LineBreak;
			say "     Your eyes searching out your goal - the tight hole under Fang's tail - you stroke your hard cock and step closer to Fang's rear end. Running your hands through the fur on his lower back, you grab hold of the wolf's hips and sink your [Cock of Player] shaft into him with one deep thrust. After giving a surprised yelp at the sudden anal invasion, Fang stops for a second and looks back to ensure that it is indeed you penetrating him. His assumption correct, he accepts being fucked eagerly, even tightening his anal muscles around you as you move inside him. Then the hot threesome continues, now mirroring the hierarchy in your little pack.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, cementing the pack bond between the two of them. That only leaves you, with Fang's anal muscles twitching and gripping your manhood tightly as you thrust in one last time. Filling the wolf's back passage with a huge load of your seed, you once again prove your dominance as Alpha over him.";
			say "     Resting on Fang's furry back for a moment, you then pull your cock out of his cum-filled hole and stagger over to the nearby cot. Satisfied but exhausted after this session, you sink down on it and lie back to get some rest. Both your submissive pets still stand where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate.";
			NPCSexAftermath Xerxes receives "OralCock" from Player;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
			NPCSexAftermath Fang receives "AssFuck" from Player;
		if felinoid companion is tamed: [rivalry messages - Alpha Fang vs Felinoid]
			LineBreak;
			if HP of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes ass again to make him his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say XerxesSex8: [female player and felinoid + Xerxes]
	say "     Accompanied by Klauz, you walk over to the cot you put up here in the library for Xerxes. The large cat sniffs the human-dog's bedding with interest, then turns his head to you and gives a questioning rumble from his throat. Running both hands through his warm fur and scratching him affectionately behind the ears, you answer 'You want another round with him? Sure.'";
	say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He hesitates for a second as he sees the felinoid, then continues walking closer, happy to get his mistress's attention. Soon he's standing on all fours next to you. 'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Klauz immediately joins you on Xerxes['] other side, rubbing the side of his furred body against your dog's naked skin. The effects of his touch and heady musk take effect almost immediately, with Xerxes['] breathing becoming quicker as he pants in lust and his cock filling out to dangle beneath his body.";
	WaitLineBreak;
	say "     Circling around to his backside, the felinoid licks Xerxes['] asshole with his rough tongue a few times until it's nice and wet with his saliva. Then he moves further up, licking over the muscled back of your human dog and continuing to his neck. Standing over the smaller human, his belly-fur touching Xerxes back, Klauz is now in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes['] tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library.";
	LineBreak;
	say "     [bold type]What would you like to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let Xerxes lick your pussy.";
	say "     ([link]N[as]n[end link]) - Slide under him to get some action with his human cock.";
	if Player consents: [licked by Xerxes]
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of the felinoid, then over the smooth skin of your human dog, you crouch down, then sit with spread legs in front of Xerxes. Your human dog has a bit of a pleasantly zoned out expression on his face, panting and grunting in lust as he's fucked. Following his mistress's orders is deeply ingrained in him though, so he immediately starts lapping at your pussy when you pull his head to it and say 'Xerxes - lick me!'";
		say "     Soon breathing heavily from your rising lust at your pet's oral attention, you rapidly move towards orgasm. Before much longer, his wriggling tongue in your vagina drives you over the edge, moaning loudly and holding Xerxes['] head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets rutting in comfort. Klauz ruts with Xerxes with untamed abandon, growling and panting with his deep thrusts.";
		NPCSexAftermath Xerxes receives "OralPussy" from Player;
		WaitLineBreak;
		say "     Even though the felinoid and Xerxes are quite virile males, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor, his twitching anal muscles give the large cat fucking him the last nudge towards orgasm too. A deep rumble of satisfaction vibrates in Klauz's throat as he pushes his member as deep as it will go and fills Xerxes['] asshole with his seed.";
		NPCSexAftermath Xerxes receives "AssFuck" from Klauz;
		say "     Still balls-deep inside the human dog, the big cat then throws himself on the ground to lounge on his side, taking Xerxes with him. Stretched out comfortably on the floor, the felinoid holds Xerxes against his warm belly fur with his front paws around him and starts licking his sweaty back. Looks as if he's actively trying to infect him, or at least wants to spread his scent over all of your human pet's body.";
	else: [fucked by Xerxes]
		setmonster "Human";
		choose row MonsterID from the Table of Random Critters;
		LineBreak;
		say "     Watching the animalistic mating of your two beastly companions is quite arousing, so you quickly decide that it's time to join in. You throw off your clothes, already a bit wet at the crotch from the juices of your swollen and dripping pussy, then step up to the two rutting beasts. Running a hand through the soft fur of Klauz, then over the smooth skin of your human dog, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes. Your human dog has a bit of a pleasantly zoned out expression on his face, panting and grunting in lust as he's fucked. His hard cock bumps against you often, every time the felinoid thrusts into his ass.";
		say "     Reaching up with a hand, you pull Xerxes['] head down a bit until he looks you in the eye and say 'Xerxes! Who's a good boy? Do you like my friend fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from Klauz that pushes Xerxes['] manhood into you at first and a kind of automatic urge of his body to keep pounding into a tight and warm hole, your pet is soon fucking you enthusiastically and comes out of his blissed out submissive state for the felinoid a bit. Happy at intimate contact with his mistress, he starts licking your face and participates in hot making out as you pull his lips to yours.";
		WaitLineBreak;
		say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and Klauz pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives your felinoid companion over the edge, a deep rumble of satisfaction vibrating in his throat as his spined shaft pulses with spurt after spurt of cum he deposits in Xerxes['] asshole.";
		NPCSexAftermath Xerxes receives "AssFuck" from Klauz;
		NPCSexAftermath Player receives "PussyFuck" from Xerxes;
		say "     After a moment of just resting his cock inside Xerxes as he finishes shooting, the large feline then throws himself over to lounge on his side, taking the human dog still impaled on his spined cock with him. Looking over, you see them lying together, the human dog spooned against the warm belly fur of the larger cat. Purring as loud as an idling motor, Klauz starts licking his sweaty human skin. Looks as if he's actively trying to infect Xerxes, or at least spread his scent over all of your human pet's body.";
	if Fang is in the Grey Abbey Library and Fang is Male: [rivalry messages]
		LineBreak;
		if HP of Fang is 1 or HP of Fang is 2: [Omega Fang]
			if HP of Xerxes is 11:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Noting the wolf's interest, the big feline snarls and Fang slinks back to his post for the moment. Oh well, the felinoid seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. The feline clutches Xerxes closer and growls deeply at Fang, sending the wolf slinking back to his post for the moment. Oh well, Klauz seems to be able to intimidate your wolf guard, so there probably won't be any issue, you tell yourself as you doze off...";
		else if HP of Fang is 3 or HP of Fang is 4: [Alpha Fang]
			if HP of Xerxes is 11:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is getting ass he hasn't had. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his to mount and breed doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
		else if HP of Fang is 5:
			if HP of Xerxes is 11:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Looks like he's not happy that the big cat is bonding with Xerxes before he has had a chance to. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     Since they seem busy with each other, you move over to the nearby cot and lie down on it. As you rest your head on a pillow for a post-coital nap, you dimly register Fang standing some distance away and giving Klauz and Xerxes a hostile stare. Seeing the felinoid fuck someone he had counted as his packmate doesn't make him happy. Not happy at all. Oh well, the rivalry between them will likely work itself out sometime in the end, you tell yourself as you doze off...";


to say XerxesSex9: [Female Player with Fang & Xerxes]
	if (HP of Fang is 1 or HP of Fang is 2): [Omega Fang]
		say "     Walking over to where Fang's leash is currently tied in the library, you kneel down beside your faithful guardian and stroke him between his ears and over his furred flank. Wagging his tail, he licks your hand, happy at getting attention from his Alpha. 'That's a good wolf. Come on, let's have some fun with Xerxes,' you say and loosen Fang's leash from around his neck. Accompanied by your black wolf, you walk over to the cot you put up here in the library for your human dog.";
		say "     With a quick whistle you summon Xerxes, the dog in the buck-naked body of a young man immediately rushing to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here boy, I got something for you.' Xerxes eagerly dashes over and sniffs your crotch, then starts lapping out the juices dripping out of your vagina. Quite good with his tongue, this dog turned human teenager.";
		WaitLineBreak;
		say "     As your human-dog pet licks you, Fang moves up behind him and sniffs Xerxes['] butt, then looks up to you pleadingly. Seeing his canine cock dangling erect beneath his body, it's pretty obvious what he wants to do, and holding Xerxes['] head tight against your crotch to get his tongue in deeper you smile and nod to Fang to continue. Without delay, the wolf jumps up and mounts Xerxes['] human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes['] ass. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		say "     Getting oral as you watch Fang mounting your human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Xerxes as you don't want to cross the finish line just yet. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human ass below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Xerxes['] body, which makes you think of how you yourself want to get off.";
		LineBreak;
		say "     [bold type]What should it be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get back to pussy-licking by Xerxes.";
		say "     ([link]N[as]n[end link]) - Crawl under him to get your pet's load inside your womb.";
		if Player consents: [licked by Xerxes]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, put your hands on Xerxes['] head and pull him against your crotch. The well-trained human dog immediately continues pleasing you, lapping your genitals and poking his tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until his oral attention to your vagina drives you over the edge, moaning loudly and holding Xerxes['] head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch your two pets further coupling in comfort. Fang ruts with Xerxes with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     That should strengthen the hierarchy in your little pack quite nicely. With both your submissive pets still standing where they fucked, patiently waiting for Fang's knot to go down and allowing them to separate, you lay back on the cot and get comfortable.";
			NPCSexAftermath Xerxes receives "OralPussy" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else: [fucked by Xerxes]
			setmonster "Human";
			choose row MonsterID from the Table of Random Critters;
			LineBreak;
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes - where your human dog immediately greets you by licking your face and woofing at you between the lust-filled pants and grunts as he's fucked. His hard cock bumps against you often, every time Fang thrusts into his ass.";
			say "     Reaching up with a hand, you pull Xerxes['] head down a bit until he looks you in the eye and say 'Xerxes! Who's a good boy? Do you like my friend fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from Fang that pushes Xerxes['] manhood into you at first and the dog's libido turning into high gear as he feels your moist tunnel around his cock, your pet is soon fucking you enthusiastically.";
			WaitLineBreak;
			say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and Fang pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives the feral wolf on top of him over the edge, a lust-filled howl sounding from his throat as his canine shaft pulses with spurt after spurt of cum being deposited in Xerxes['] asshole.";
			say "     You spend a moment resting on the ground with Xerxes on top - and in - you. He feels nice inside you and your thoughts wander to his virile load deposited into your womb, its millions of little swimmers swarming out on their mission to find an egg. Phew, that was a nice fuck. Not wanting to wait the full time until Fang's knot goes down and he can disengage from Xerxes, you slide out from under your human dog and get on his nearby cot to rest for now.";
			NPCSexAftermath Xerxes receives "OralPussy" from Fang;
			NPCSexAftermath Player receives "PussyFuck" from Xerxes;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		if felinoid companion is tamed: [rivalry messages - Omega Fang vs Felinoid]
			LineBreak;
			if HP of Xerxes is 10:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional glance of interest at the dog-person and glare at the wolf. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
			if HP of Xerxes is 12:
				say "     As you rest your head on the pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. You see him pad closer and give a deep, rumbling growl. Fang growls in response, but slinks back to his post by the door as soon as his knot goes down, driven off by the dominant feline creature. The felinoid then pads to lie down on the floor between you and the door, grooming himself with the occasional possessive glance at the dog-person and glare at the wolf for touching what Klauz has claimed as his own. In your sleepy haze, you almost think the feline's looking at you possessively as well, but that must just be your imagination...";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Alpha hot and ready to go, you give a quick whistle to summon Xerxes and the dog in the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of him, he then turns his backside to the wolf, taking a secure stance and spreads his legs a bit further.";
		say "     With a satisfied growl Fang moves up behind him and sniffs Xerxes['] butt, then jumps up and mounts his human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes['] ass. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing your Alpha penetrate Xerxes makes you quite horny as well and you can't wait to get in on the action. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here boy, I got something for you.' and step up to Xerxes. The human dog is exuberantly happy to serve his mistress and immediately starts lapping at your crotch, licking up the juices dripping out of your vagina. Quite good with his tongue, this dog turned human teenager.";
		say "     Getting oral as you watch your alpha mounting the human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Xerxes as you don't want to cross the finish line just yet. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human ass below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Xerxes['] body, which makes you think of how you yourself want to get off.";
		LineBreak;
		say "     [bold type]What should it be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get back to pussy-licking by Xerxes.";
		say "     ([link]N[as]n[end link]) - Crawl under him to get your pet's load inside your womb.";
		if Player consents: [licked by Xerxes]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you put your hands on Xerxes['] head and pull him against your crotch. The well-trained human dog immediately continues pleasing you, licking your genitals and poking his tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until his oral attention to your vagina drives you over the edge, moaning loudly and holding Xerxes['] head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch the powerful wolf further coupling with your pet in comfort. Fang ruts with Xerxes with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			say "     With the powerful wolf once again cementing his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get a bit of rest.";
			NPCSexAftermath Xerxes receives "OralPussy" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else: [fucked by Xerxes]
			setmonster "Human";
			choose row MonsterID from the Table of Random Critters;
			LineBreak;
			say "     Walking around the two rutting beasts, you run a hand through the rough fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes - where your human dog immediately greets you by licking your face and woofing at you between the lust-filled pants and grunts as he's fucked. His hard cock bumps against you often, every time Fang thrusts into his ass.";
			say "     Reaching up with a hand, you pull Xerxes['] head down a bit until he looks you in the eye and say 'Xerxes! Who's a good boy? Do you like my master fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from Fang that pushes Xerxes manhood into you at first and the dog's libido turning into high gear as he feels your moist tunnel around his cock, your pet is soon fucking you enthusiastically.";
			WaitLineBreak;
			say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and Fang pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives the large feral wolf on top of him over the edge, a lust-filled howl sounding from his throat as his canine shaft pulses with spurt after spurt of cum being deposited in Xerxes['] asshole.";
			say "     You spend a moment resting on the ground with Xerxes on top - and in - you. He feels nice inside you and your thoughts wander to his virile load deposited into your womb, its millions of little swimmers swarming out on their mission to find an egg. Phew, that was a nice fuck. Not wanting to wait the full time until Fang's knot goes down and he can disengage from Xerxes, you slide out from under your human dog and get on his nearby cot to rest for now.";
			NPCSexAftermath Xerxes receives "OralPussy" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
			NPCSexAftermath Player receives "PussyFuck" from Xerxes;
		if felinoid companion is tamed: [rivalry messages - Alpha Fang vs Felinoid]
			LineBreak;
			if HP of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes['] ass again to make him his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
	else if (HP of Fang is 5): [Beta Fang]
		say "     Walking over to Fang, you crouch next to the big wolf and stroke him, rubbing his warm belly fur and his quickly hardening erection. With your Beta hot and ready to go, you give a quick whistle to summon Xerxes and the dog in the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand before you and licks your hand in greeting as you stroke his head, then makes a beeline to sniff and be sniffed by Fang. Already knowing what's expected of him, he then turns his backside to the wolf, taking a secure stance and spreads his legs a bit further.";
		say "     With a satisfied growl Fang moves up behind him and sniffs Xerxes['] butt, then jumps up and mounts his human body, front legs around his chest and hips thrusting forward. His hard manhood hits its target at once and plunges deep into Xerxes['] ass. Driven by his feral lust, Fang ruts with the teenager mercilessly, growling and panting as he thrusts in and out.";
		WaitLineBreak;
		say "     Seeing the wolf penetrate Xerxes makes you quite horny as well and you can't wait to get in on the action. Slipping out of your clothes, you rub a hand over your sensitive pussy lips until they're moist and swollen, then say 'Here boy, I got something for you.' and step up to Xerxes. The human dog is exuberantly happy to serve his mistress and immediately starts lapping at your crotch, licking up the juices dripping out of your vagina. Quite good with his tongue, this dog-turned-human-teenager.";
		say "     Getting oral as you watch your Beta mounting the human-looking dog, your arousal quickly mounts and you get close to orgasm, but pull back from Xerxes as you don't want to cross the finish line just yet. Now having his mouth free, Xerxes gives lustful pants and yips as Fang drives his shaft into him. Watching the mating beasts, you walk around them slowly taking in the full glory of the powerful wolf on top of his human-looking partner. Stepping behind Fang, you crouch down to watch his canine shaft thrust in and out of the human ass below him and even reach out to fondle his furry balls. Soon they'll deliver their seed inside Xerxes['] body, which makes you think of how you yourself want to get off.";
		LineBreak;
		say "     [bold type]What should it be?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get back to pussy-licking by Xerxes.";
		say "     ([link]N[as]n[end link]) - Crawl under Xerxes to get your pet's load inside your womb.";
		if Player consents: [licked by Xerxes]
			LineBreak;
			say "     Walking back around to the front of the rutting couple, you put your hands on Xerxes['] head and pull him against your crotch. The well-trained human dog immediately continues pleasing you, licking your genitals and poking his tongue between your pussy lips. As wound up as you already were, it doesn't take much longer until his oral attention to your vagina drives you over the edge, moaning loudly and holding Xerxes['] head tight against your crotch where he happily slurps up your femcum. Satisfied at getting off, you move over to the nearby cot to watch the powerful wolf further coupling with your pet in comfort. Fang ruts with Xerxes with untamed abandon, growling and panting with his deep thrusts.";
			WaitLineBreak;
			say "     After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, cementing the pack bond between the two of them.";
			say "     With the powerful wolf once again demonstrating his dominant position, this worked out well. He and Xerxes still stand for a while where they fucked, waiting until Fang's knot goes down and they can disengage. Satisfied and just a bit exhausted, you lay back on the cot to get a bit of rest.";
			NPCSexAftermath Xerxes receives "OralPussy" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else: [fucked by Xerxes]
			setmonster "Human";
			choose row MonsterID from the Table of Random Critters;
			LineBreak;
			say "     Walking around the two rutting beasts, you run a hand through the thick fur on Fang's flank, then over the smooth skin of your human dog. As you get beside them, you crouch down, then lie on your back. After that it's a simple matter of sliding sideways a bit until you're under Xerxes - where your human dog immediately greets you by licking your face and woofing at you between the lust-filled pants and grunts as he's fucked. His hard cock bumps against you often, every time Fang thrusts into his ass.";
			say "     Reaching up with a hand, you pull Xerxes['] head down a bit until he looks you in the eye and say, 'Xerxes! Who's a good boy? Do you like my master fucking your ass? I want you to fuck me now too - come on.' Your other hand meanwhile searches out his rock-hard erection and guides it to your moist opening. Between a thrust from Fang that pushes Xerxes manhood into you at first and the dog's libido turning into high gear as he feels your moist tunnel around his cock, your pet is soon fucking you enthusiastically.";
			WaitLineBreak;
			say "     Even though you'd wish your threesome could last forever, with Xerxes pounding into you and Fang pushing him even deeper as he thrusts into the dog's asshole, everyone's stamina has its limits. When Xerxes suddenly gives a pleased yip and starts grinding his hips against your crotch, he starts a chain reaction. You feel the first blast of his seed shoot into you just as you push over the line to orgasm yourself, writhing in pleasure as your womb is filled with human cum. Meanwhile, the human dog's twitching asshole drives the large feral wolf on top of him over the edge, a lust-filled howl sounding from his throat as his canine shaft pulses with spurt after spurt of cum being deposited in Xerxes['] asshole.";
			say "     You spend a moment resting on the ground with Xerxes on top - and in - you. He feels nice inside you and your thoughts wander to his virile load deposited into your womb, its millions of little swimmers swarming out on their mission to find an egg. Phew, that was a nice fuck. Not wanting to wait the full time until Fang's knot goes down and he can disengage from Xerxes, you slide out from under your human dog and get on his nearby cot to rest for now.";
			NPCSexAftermath Xerxes receives "OralPussy" from Fang;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
			NPCSexAftermath Player receives "PussyFuck" from Xerxes;
		if felinoid companion is tamed: [rivalry messages - Beta Fang vs Felinoid]
			LineBreak;
			if HP of Xerxes is 10:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - taking Xerxes away from Fang and mounting him himself most likely. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";
			if HP of Xerxes is 12:
				say "     As you rest your head on a pillow for a post-coital nap, you dimly register Klauz standing some distance away among the bookshelves and giving Fang and Xerxes a calculating look. Seems almost like he's up to something - mounting Xerxes['] ass again to make him his alone possibly. He backs off when Fang notices him and lets out a small growl. Oh well, the rivalry between them will hopefully work itself out sometime in the end, you tell yourself as you doze off...";

to say XerxesSex10: [69 with Xerxes]
	say "     You step beside the cot you put in here for him and whistle to call Xerxes. The dog with the buck-naked body of a young man immediately rushes to you from where he was patrolling through the long rows of bookshelves in the library. He comes to stand beside you, happy to get his master's attention[if lust of Xerxes >= 4 and a random chance of 2 in 5 succeeds]. 'Master play?' he says with a wide grin[end if].";
	say "     'Good dog' you say as you crouch down beside him, patting his head and stroking his shoulders and muscular back. Your hand strays lower and lower until you touch the smooth curves of his [if lust of Xerxes >= 7]tattooed [end if]bubble butt, then reach under him and grab his hardening cock. Xerxes gives you a pleased yip, his cock throbbing in your hand. Patting the cot, you tell him 'Up here, boy' and reward him with some more stroking as he obeys.";
	WaitLineBreak;
	say "     Moving onto the cot alongside him, you get him to raise his thigh and give you clear access to his ready erection. Smiling, you run your fingers lightly across his pulsing shaft, causing him to shiver and yip in pleasure. Seeing more precum leaking from his stiff rod, you dive onto it, sliding your lips over his erect member and running your tongue along it. He pulses and throbs with excitement, his enlarged shaft wonderfully responsive to your oral attentions. You tease [if anallevel is 3 and a random chance of 3 in 5 succeeds]a lubed finger across his anus before sliding it into him, drawing a low moan of pleasure from the young man[else]your fingertips across his ballsack before cupping his heavy orbs and rubbing them firmly[end if].";
	if Player is male:
		say "     With your erect shaft in front of his face, he knows what to do and sets himself to licking and kissing at it. His soft lips and playful tongue are a delight across your sensitive manhood, quickly coaxing dribbles of precum from it. Seeing this, he plunges his mouth over your shaft and sucks greedily at your cock, his well-trained mouth working hard to please his loving master. His hands [if lust of Xerxes >= 7]glide across[else]grope at[end if] your thighs and ballsack, [if lust of Xerxes >= 7]pawing at[else]rubbing[end if] your orbs as they prepare to give him the tasty treat he so desires.";
		NPCSexAftermath Xerxes receives "OralCock" from Player;
	else:
		say "     With your wet pussy in front of his face, he knows what to do and sets himself to licking and kissing at it. His soft lips and playful tongue are a delight across your sensitive folds, quickly getting you wet and dripping as well. Seeing this, he plunges his tongue into your cunt and laps away, his well-trained mouth working hard to please his loving master. His hands [if lust of Xerxes >= 7]glide across[else]grope at[end if] your thighs and stroke your folds, finding your clit and [if lust of Xerxes >= 7]returning[else]trying his best to return[end if] the pleasure you're giving him in kind.";
		NPCSexAftermath Xerxes receives "OralPussy" from Player;
	say "     With your human doggy pleasuring you orally while you're enjoying that thick, pulsing rod in your mouth, it is not too long before you feel your excitement building out of control. You cum with a loud groan and suck down hard onto him, lapping across his shaft and glans as he orgasms in response[if Player is male]. You pump your [Cum Load Size of Player] load into the young man's mouth, feeding your seed to him[else]. Your sweet waters soak his face, which he laps up and drinks down with lustful eagerness[end if]. When you're both done cumming, he turns around on the cot, snuggles up with you. He licks and kisses at your face, sharing your taste with his[if ImpregTimer of Xerxes >= 4]. 'Mmm... tasty Master. Xerxes love.'[else].[end if]";
	NPCSexAftermath Player receives "OralCock" from Xerxes;


Chapter 4 - Xerxes + Fang/Felinoid

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Xerxes_Klauz_Encounter1"	Xerxes_Klauz_Encounter1	"[EventConditions_Xerxes_Klauz_Encounter1]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Xerxes_Klauz_Encounter1"	Xerxes_Klauz_Encounter1	"[EventConditions_Xerxes_Klauz_Encounter1]"	Grey Abbey Library	2500	2	100

to say EventConditions_Xerxes_Klauz_Encounter1:
	if Xerxes is in the Grey Abbey Library and lastfuck of Xerxes - turns > 5 and (HP of Xerxes is 1 or HP of Xerxes is 10) and felinoid companion is tamed and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Xerxes_Klauz_Encounter1	"Xerxes_Klauz_Encounter1"

Xerxes_Klauz_Encounter1 is a situation.
ResolveFunction of Xerxes_Klauz_Encounter1 is "[ResolveEvent Xerxes_Klauz_Encounter1]".
Sarea of Xerxes_Klauz_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Xerxes_Klauz_Encounter1:
	say "[LibraryEntry_NavOrWalk]";
	say "you hear some rather confused barks and yips from somewhere back between the rows of bookshelves. Sounds like Xerxes. Going to have a look, you find your dog turned teenage human, standing on all fours in the midst of a loose reading group of chairs, his gaze following the movements of Klauz. The large feline weaves his way between the chairs with flowing movements, circling Xerxes and from time to time veering closer to rub the side of his head or furred body against Xerxes['] naked form.";
	LineBreak;
	say "     [bold type]Knowing the felinoid's wily ways, you can guess what he intends to do. How do you react?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Just let things play out between Klauz and Xerxes.";
	say "     ([link]N[as]n[end link]) - Shoo the cat away from your human dog and tell him to avoid Klauz.";
	if Player consents:
		LineBreak;
		say "     Still looking a bit confused, the human dog becomes more and more aroused with each touch of fur and sniff of the felinoid's enticing scent. Soon any doubts about getting this close to any cat are forgotten and Xerxes rubs up against Klauz, licking its muzzle. Giving a satisfied rumbling purr, the large cat moves to sniff Xerxes['] ass, then licks between the cheeks of his bubble butt with his wide tongue. Several licks later, the felinoid moves further up, licking the muscled human back of your dog and then his neck. Standing over the smaller human, his belly-fur touching Xerxes back, Klauz is now in the perfect position to fuck him. Lowering his hind legs a bit, the feline rubs his spined cock up and down the human-dog's crack until he soon finds Xerxes['] tight opening and plunges in. With a satisfied roar, he sinks all of his manhood inside, then starts fucking with powerful and deep thrusts. Moans, barks and growls of lust fill the library and you stay close to watch the show.";
		say "     After quite a while of hot and heavy fucking, Xerxes suddenly gives a pleased yip and long strings of cum start to shoot from his cock onto the library's floor. The spasms of his anal muscles during his orgasm must have given the felinoid the final push he needed, as the large cat buries his hard cock all the way in Xerxes['] ass and holds still, filling him up with his seed. When he finishes cumming, the big cat pulls out and throws himself on the floor in front of a bookshelf to lounge in satisfaction. Your human-dog pet licks Klauz's cock clean, then joins him on the floor, snuggling up against his warm fur.";
		NPCSexAftermath Xerxes receives "AssFuck" from Klauz;
		LineBreak;
		say "     You step back out from between the bookshelves and leave the two of them alone for a while. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
		if HP of Xerxes is 10:
			now HP of Xerxes is 12;
		else:
			now HP of Xerxes is 11;
		now lastfuck of Xerxes is turns;
	else:
		say "     Stepping in, you shoo the felinoid away from Xerxes, then take your human dog to the side and try to explain to him that Klauz is to be avoided. The young man looks at your face with a somewhat curious expression, but after a few repetitions of what you want to get across, he seems to understand.";
	now Xerxes_Klauz_Encounter1 is resolved;


Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Xerxes_Fang_Encounter1"	Xerxes_Fang_Encounter1	"[EventConditions_Xerxes_Fang_Encounter1]"	Grey Abbey Library	2500	2	100

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Xerxes_Fang_Encounter1"	Xerxes_Fang_Encounter1	"[EventConditions_Xerxes_Fang_Encounter1]"	Grey Abbey Library	2500	2	100

to say EventConditions_Xerxes_Fang_Encounter1:
	if Xerxes is in Grey Abbey Library and lastfuck of Xerxes - turns > 5 and (HP of Xerxes is 1 or HP of Xerxes is 11) and Fang is in Grey Abbey Library and Fang is Male and HP of Fang < 6 and lastfuck of Fang - turns > 7 and Player is not CoA: [list of conditions here]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Xerxes_Fang_Encounter1	"Xerxes_Fang_Encounter1"

Xerxes_Fang_Encounter1 is a situation.
ResolveFunction of Xerxes_Fang_Encounter1 is "[ResolveEvent Xerxes_Fang_Encounter1]".
Sarea of Xerxes_Fang_Encounter1 is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Xerxes_Fang_Encounter1:
	say "[LibraryEntry_NavOrWalk]";
	if ( HP of Fang is 1 or HP of Fang is 2 ): [Omega Fang]
		say "you notice that Fang isn't at his spot next to the door. Wary of unannounced visitors, you look around for signs of a fight or any other indication of what happened. Nothing out of the ordinary in sight. Then you hear something from further back in the rows of bookshelves - growling. Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Xerxes to lick his muzzle. Looks like the question of hierarchy among your pets just got solved.";
		LineBreak;
		say "     [bold type]Knowing that this won't stay nonsexual much longer, you...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Decide not to interfere, and let them establish their status to each other peacefully.";
		say "     ([link]N[as]n[end link]) - Shoo the wolf away from your human dog and tell him to avoid Fang.";
		if Player consents:
			LineBreak;
			say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes['] asshole in one deep thrust. Licking and lightly nipping Xerxes['] neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. Quite a hot little show you're getting here. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
			LineBreak;
			say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your pets come to your mind as you walk away...";
			if HP of Xerxes is 11:
				now HP of Xerxes is 12;
			else:
				now HP of Xerxes is 10;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else:
			say "     Stepping in, you shoo Fang away from Xerxes, then take your human dog to the side and try to explain to him that the wolf is to be avoided. The young man looks at your face with a somewhat curious expression, but after a few repetitions of what you want to get across, he seems to understand.";
	else if (HP of Fang is 3 or HP of Fang is 4): [Alpha Fang]
		say "you notice that Fang isn't in sight at any of his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication of what happened. Nothing out of the ordinary. Then you hear something from further back in the rows of bookshelves - growling. Readying yourself for a fight, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your strong Alpha wolf gives a satisfied growl and goes to stand over the dog turned teenage human, allowing Xerxes to lick his muzzle. Looks like he wants to dominate your pet too - as is his right. Xerxes seems to be readily accepting of the submissive role, just like you did in the end. Arousal wells up inside you as you think back to your own first time under a dominating Fang and you can't wait to see your human dog have the same experience.";
		say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes['] asshole in one deep thrust. Licking and lightly nipping Xerxes['] neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. What a hot show you're getting here - you just wish you were the one getting fucked by that powerful wolf's shaft. After some more hot and heavy fucking, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, sealing the deal of dominance and submission.";
		LineBreak;
		say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
		if HP of Xerxes is 11:
			now HP of Xerxes is 12;
		else:
			now HP of Xerxes is 10;
		NPCSexAftermath Xerxes receives "AssFuck" from Fang;
	else if (HP of Fang is 5): [Beta Fang]
		say "you notice that Fang isn't in sight at any of his usual spots. Wary of unannounced visitors, you look around for signs of a fight or any other indication of what happened. Nothing out of the ordinary. Then you hear movement from further back in the rows of bookshelves. Hoping to find your guard, you hurry over - to find Fang standing in a mildly threatening pose in front of Xerxes, who looks to the ground, then rolls over and bares his muscled chest and genitals. Your Beta gives a satisfied murmur and goes to stand over the dog-turned-teenage-human, allowing Xerxes to lick his muzzle. Looks like Fang wants to include him in the pack too, though his canine behavior despite his lack of fur seems to confuse the wolf slightly. Xerxes seems to be readily accepting of the submissive role, pleased for a sense of belonging and never having shown any desire for dominance anyway.";
		LineBreak;
		say "     [bold type]Knowing that this won't stay nonsexual much longer, you...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Decide not to interfere, and let them establish their status to each other peacefully.";
		say "     ([link]N[as]n[end link]) - Shoo the wolf away from your human dog and tell him to avoid Fang.";
		if Player consents:
			LineBreak;
			say "     With a commanding growl, Fang pokes Xerxes in the side with his muzzle, making him roll over and stand on all fours again. Mounting the teenage human body of the transformed dog, his rock-hard wolf cock penetrates Xerxes['] asshole in one deep thrust. Licking and lightly nipping Xerxes['] neck, he pounds into him with an animal's ferocity. Your human-dog pet gives loud moans of lust as he is penetrated deeply again and again and you can see his manhood harden and dribble pre-cum on the library floor. Quite a hot little show you're getting here. The sound of flesh slapping against flesh fills this corner of the library, interspersed with growls, moans, and encouraging comments from Fang to his new pack-member. A feeling of pride fills you that you have such a devoted beta who wants to personally form bonds with those he thinks suitable to be part of your pack.";
			say "     Xerxes seems to appreciate his personal attention too if his rigid erection is anything to go by, thick strands of precum connecting the tip of his cock to the floor. Eventually, Fang does one especially deep thrust that pops his knot inside Xerxes, then holds still as it expands. Getting tied to Fang was the last straw for the human dog, and his body shudders as the feelings from his ass make him shoot his seed all over the library floor. Deep inside him, Fang's cock pulses with burst after burst of wolf cum, cementing the pack bond between the two of them.";
			LineBreak;
			say "     You step back out from between the bookshelves and leave the two of them to wait until Fang's knot goes down. With this new development, new opportunities for fun with your canine master and human dog pet come to your mind as you walk away...";
			if HP of Xerxes is 11:
				now HP of Xerxes is 12;
			else:
				now HP of Xerxes is 10;
			NPCSexAftermath Xerxes receives "AssFuck" from Fang;
		else:
			say "     Stepping in, you shoo Fang away from Xerxes, then take your human dog to the side and try to explain to him that the wolf is to be avoided. The young man looks at your face with a somewhat curious expression, but after a few repetitions of what you want to get across, he seems to understand.";
	now Xerxes_Fang_Encounter1 is resolved;

Chapter 5 - Awesome Xerxes

instead of trading the awesome fruit when the current action involves the Xerxes:
	if lust of Xerxes < 2:
		say "     Aren't you jumping the gun a little?";
	else if lust of Xerxes is 2:
		project Figure of Xerxes_awesome_soft_icon;
		say "     Looking over at the young man with the mind of a dog, you can't help but smile at what a fine pet he's turned out to be. Deciding to see if you might make him even more awesome, you pull out the strange fruit you found and call him over. Hearing you call for him, he comes rushing over on all fours with a happy bark, panting with a big doggy smile on his face. You pet the young man's head and scritch his ears. Holding out the shiny fruit, you give it a little shake and his eyes lock on it. 'Does my good boy want a treat?' Xerxes bounds around you and barks excitedly. Telling him to sit, he obediently plops down onto his rear, sitting attentively. Running him through a few other tricks, you rub his head again, call him a good boy again and give him the fruit.";
		say "     Laying down on the floor, he gives the fruit a sniff and pants happily. Pressing the large fruit between his balled-up hands as if they were paws, he fumbles to keep it in place as he takes big bites out of it. As he consumes its juicy flesh, subtle changes start to occur. His body, already quite fit, becomes perfectly toned while his skin gains a nice, even tan and loses any imperfections. His hair, previously short and unkempt, grows out into long, flowing locks. As he's finishing off the fruit, he's moved to sitting and holding the fruit in his hands. After gulping down the last bite, he licks his fingers clean and then gives you a rather human smile before barking happily and dashing off on all fours. As he goes off, the view has you fairly certain that his cock and balls have also grown a little.";
		now lust of Xerxes is 3;
	else:
		say "     You've already done that.";

to say AwesomeXerxesSex0:
	say "     In the mood to have some more fun with your human dog, you take a quick look around the room but don't spot him. Calling out to him, he barks happily from somewhere off among the shelves before running over to you on all fours. As he comes over, you can see he's got a book in his mouth. Worried that he might be damaging it, you take it from him and he looks up with a human smile on his handsome face. Looking at the book you're taken, you see that it's a children's book on dogs. He barks excitedly and you try to steady yourself. 'Were you... reading this?' you finally manage to ask, to which he nods excitedly - another human mannerism. He then slaps one of his hands on the picture of a dog on the book's cover before pressing that hand to his chest. In your surprise, you drop the book and Xerxes whines softly at your reaction. Taking your hand in his, he presses it onto his head. Scritching the concerned young man's head, you kneel down and pull him into a hug. 'Such a clever boy you are,' you say and he barks happily to have pleased you.";
	say "     Running your hands over his body, your excitement leads you to stroke over his stiffening member. 'I think you deserve a reward for being such a clever boy.' He gives a happy bark and kisses you, giving you a mix of slobbery doggy licks and human kisses while fumbling his hands across your body";
	if Player is male:
		say ". Reaching down, he puts a hand on your hard shaft and rubs it in return. He tries to imitate your motions, but is a little rough at first. With a little prompting from you, he lightens his touch. And while he's a little clumsy with his hands, he is very eager and does his best to copy what you're doing.";
		WaitLineBreak;
		say "     Once you're both throbbing hard and dribbling precum, you get the young man to lie down and you move alongside him. Now that you're in a position to get a good look at it, you can see that his penis has indeed grown, gaining about another inch in length and his balls are bigger as well. His shaft is quite lovely, smooth and perfectly proportioned. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from the base of his shaft up its twitching length before swirling it over his glans. You then slowly lower your lips down around the hot man-meat so you can suck your clever, loyal pet off.";
		say "     With you laying beside him, your cock is in front of his face and he grins happily. This is a trick he knows well and he quickly sets to licking and then sucking at his master's cock in return. Well-trained at this task, he works his mouth and tongue over your pulsing shaft in an effort to please you. Without prompting, he even ventures to put a hand on your ballsack and gently rubs at it. With all the excitement, the young man can't hold out very long and is soon pumping his sticky load across your tongue. Even the taste of it seems better, rich and flavorful without any harshness to it. Having that delicious load fill your mouth is enough to set you off, pumping your hot seed into his waiting mouth before he swallows it down, not releasing your shaft until you're spent.";
		NPCSexAftermath Player receives "OralCock" from Xerxes;
		NPCSexAftermath Xerxes receives "OralCock" from Player;
	else if Player is female:
		say ". Reaching down, he puts a hand between your legs and rubs your pussy in return. He is a little rough at first, but with a little prompting from you, he lightens his touch and does much better. He listens attentively to your instructions and tries his best to follow them. And while he's a little clumsy with his hands, he is very eager to please you.";
		WaitLineBreak;
		say "     Once you're both throbbing hard and dribbling precum, you get the young man to lie down and you move alongside him. Now that you're in a position to get a good look at it, you can see that his penis has indeed grown, gaining about another inch in length and his balls are bigger as well. His shaft is quite lovely, smooth and perfectly proportioned. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from the base of his shaft up its twitching length before swirling it over his glans. You then slowly lower your lips down around the hot man-meat so you can suck your clever, loyal pet off.";
		say "     With you laying beside him, your cunt is in front of his face and he grins happily. This is a trick he knows well and he quickly sets to licking across your juicy folds and then lapping into your vagina in return. Well-practiced at this task, he works his tongue into you in an effort to please you. Without prompting, he even ventures to rub a finger at your clit in an effort to pleasure you. With all the excitement, the young man can't hold out very long and is soon pumping his sticky load across your tongue. Even the taste of it seems better, rich and flavorful without any harshness to it. Having that delicious load fill your mouth is enough to set you off, soaking his face in your hot juices for him to lap up. He makes sure to lick you clean, wanting to get every drop.";
		NPCSexAftermath Player receives "OralCock" from Xerxes;
		NPCSexAftermath Xerxes receives "OralPussy" from Player;
	else:
		say ". Reaching down, he puts a hand between your legs and rubs at your bare crotch with a sad little whine. He ends up reaching around and grabbing your ass instead and kneading it. He is a little rough at first, but with a little prompting from you, he lightens his touch and does much better. And while he's a little clumsy with his hands, he is very eager to please you.";
		WaitLineBreak;
		say "     Once he's throbbing hard and dribbling precum, you get Xerxes to lie down and you move alongside him. Now that you're in a position to get a good look at it, you can see that his penis has indeed grown, gaining about another inch in length and his balls are bigger as well. His shaft is quite lovely, smooth and perfectly proportioned. It is a very delectable sight and you are eager to enjoy it. You run your tongue slowly from the base of his shaft up its twitching length before swirling it over his glans. You then slowly lower your lips down around the hot man-meat so you can suck your clever, loyal pet off.";
		say "     With you laying beside him, he's left faced with your bare crotch. After giving it a few soft licks, his tongue trails down and around and he sniffs. Soon enough, he's nuzzling at your rear and letting his tongue rub against your asshole. Your moan in response prompts him to continue and he works his wet tongue against your pucker[if anallevel > 1] and eventually wriggling it into your rear[end if]. Without prompting, he even teases a finger against your lubed up hole and pushes it into you in an effort to pleasure you further. With all the excitement, the young man can't hold out very long and is soon pumping his sticky load across your tongue. Even the taste of it seems better, rich and flavorful without any harshness to it. Having that delicious load fill your mouth is very arousing and you smear his seed all over his cock so you can lick and suck it clean while getting every drop your virile pet can give.";
		NPCSexAftermath Player receives "OralCock" from Xerxes;
	WaitLineBreak;
	say "     After the fun's over, he then moves around to snuggle up against you. After some more kisses, he nuzzles his head under your chin so he can rest against you. You stroke the obedient young man and scritch his head as he starts to fall asleep. As he's drifting off, he mumbles 'Master friend...' softly, starting you fully awake again. You are left staring down at the sleeping fellow in your arms, your mind reeling with confused thoughts. With people all around turning in animals and mindless creatures, here is a dog who's only becoming more and more human. After laying there for a long time and getting neither answers nor rest, you slowly disentangle yourself from Xerxes and, after putting a blanket over your sleeping pet, you head off to try and deal with a world that seems even more topsy-turvy than before.";
	increase lust of Xerxes by 1;

to say AwesomeXerxesSex1:
	say "     Wanting to play with your awesome human dog again, you head over to his cot and call out for him. He gives a happy bark and a cry of 'Master!' before running over to you on all fours, half-hard cock swaying. He's got another book with him, though he's at least holding it in one hand this time. He hops up onto the cot beside you, drops the book in your lap and wraps his arms around your waist. You're a little surprised to see that it is an art book focused on tattooing. It is filled with numerous photos of body art of all kinds, from simple pieces to body-wide works of grand detail. He stares in fascination at the colorful photos as you flip through several pages of the book while petting the young man. Seeing how looking at the images has gotten him quite hard, you reach over and stroke his cock with your free hand. 'Do you like those, boy? Did you want one?'";
	say "     He barks happily and licks your cheek. 'Xerxes want.' When you flip to photos of tattooing being done, you tell him that it does hurt and ask him again. 'Xerxes want,' he asserts again. 'Good boy sit,' he adds with a grin, pointing to the person receiving the tattoo. Unable not to smile at his eagerness, you ruffle his hair and scritch his ears, telling him you'll see about getting him a tattoo once you find an opportunity to do so[if tattoo parlor is unknown], adding that it may have to wait until you leave the city[end if]. He gives you another rush of licks and kisses. 'Good Master. Love Master.'";
	WaitLineBreak;
	if Player is male:
		say "     Once the bout of kisses ends, he nuzzles between your legs and goes eagerly for your cock, licking and sucking at it. He's gotten better at using his hands by this point, stroking and rubbing your stiff maleness[if Player is female] and damp pussy[end if], very eager to show you how happy he is with you. The young man listens attentively as you give him instructions to improve his technique, gradually getting better at using those fingers of his to further please you while his mouth sucks you off.";
		say "     You stroke his head and scritch his ears, telling him what a good boy he is. Though that's not all you're stroking. Still having your hand on his cock, you've set aside the book and are now pumping at his throbbing manhood, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong orgasm that pumps your [Cum Load Size of Player] load into his mouth and down his throat by the time you're finally done. After having finished you off, he bends around, shamelessly taking his own cock in his mouth like a dog licking himself and finishes himself off while you watch to get another warm load of cum to gobble down. Having gotten your permission to eventually get a tattoo and those tasty treats to fill his tummy, he stretches out on his back and rubs his [if Ball Size of Player > 6]bloated[else if Ball Size of Player > 5]stuffed[else]full[end if] belly with a happy grin on his handsome face.";
		NPCSexAftermath Xerxes receives "OralCock" from Player;
	else if Player is female:
		say "     Once the bout of kisses ends, he nuzzles between your legs and goes eagerly for your pussy, licking excitedly at it. He's gotten better at using his hands by this point, stroking and rubbing your sensitive folds, very eager to show you how happy he is with you. The young man listens attentively as you give him instructions to improve his technique, gradually getting better at using those fingers of his to further please you while eating you out.";
		say "     You stroke his head and scritch his ears, telling him what a good boy he is. Though that's not all you're stroking. Still having your hand on his cock, you've set aside the book and are now pumping at his throbbing manhood, much to your pet's delight. You decide to take your time, coaxing your loyal pet to go slowly so you can build to a strong series orgasm that soaks his face in your juices by the time you're finally done. After having finished you off, he bends around, shamelessly taking his own cock in his mouth like a dog licking himself and finishes himself off while you watch to get another warm load of cum to gobble down. Having gotten your permission to eventually get a tattoo and those tasty treats to enjoy, he stretches out on his back and licks his lips, rubbing a hand to gather up your female cum so he can suck it from his fingers as well.";
		NPCSexAftermath Xerxes receives "OralPussy" from Player;
	NPCSexAftermath Xerxes receives "OralCock" from Xerxes;
	increase lust of Xerxes by 1;

to say AwesomeXerxesSex2:
	say "     Remembering your promise to your loyal pet, you gather your gear and stand by his cot. Calling him over, he gives a happy bark and comes up, expecting more playtime with his master, but finding you fully equipped and ready to go out into the city. He gives a little whine of disappointment, but sits down on his haunches and looks up at you obediently. After rubbing his head and giving him some scritches, you lean down and ask him if he's ready to get his tattoo. He grins happily and presses his lips to yours in a passionate kiss as his answer. Grinning down at him, you pat his head and tell him to come along and to stay right by your side the whole time. While the naked human does draw some attention from the mutants around, they thankfully leave you alone. And while the activity and sexy sights of the city's red light district catch your pet's attention, he remains steadfastly by your side. Your journey to the tattoo parlor is largely uneventful save for a couple of mutants who offer to trade for your pet, but thankfully accept your refusal and move on.";
	say "     When you go inside, Kara smiles and greets you before turning to the newcomer and inspecting the human dog's naked body. 'And who do we have here?' she asks you, her hyena mind quickly assessing that Xerxes is your subordinate. 'This here is Xerxes, my pet. He's been a good boy and so we're here to get him a tattoo,' you tell her before looking down at the object of your conversation. Xerxes is quite excited, looking all around the room and shifting around with barely contained enthusiasm. Of everything in the room, Kara draws his attention the most. Rubbing his head, he settles down momentarily. 'Xerxes, this is my friend Kara. She's going to give you your tattoo,' you say, patting his side as a signal he can go, he heads over to the hyena on all fours and looks up at her with a happy smile on his handsome face.";
	WaitLineBreak;
	say "     'Doggy friend! Xerxes tattoo,' he says cheerfully, nosing at Kara's crotch and starts licking her sheath. Already starting to poke out from the sight of the sexy young man, her cock stiffens further and is soon buried in your pet's mouth. She moans softly and rubs a paw over his head. 'I'm a hyena you silly... Ngg... friendly fellow, isn't he?' she adds to you and you can't help but smile.";
	say "     While she's getting an introductory blow job from the dog-minded young man, you fill her in on the basics of the situation. As you talk, you take a seat and enjoy the show, watching the young man work that throbbing hyena cock with his mouth and putting his increasing manual talents to work as well. He's clearly very eager to please this new friend who's going to give him his tattoo and does his very best, working her cock, knot, sheath, balls and pussy with great enthusiasm until she growls and pulls his face forward, locking that knot of hers in his mouth and feeding her load to him while hot juices run down her thighs from him fingering her pussy to orgasm as well. Once he manages to pop his lips around her knot, he smiles up at her happily.";
	NPCSexAftermath Xerxes receives "OralCock" from Kara;
	WaitLineBreak;
	say "     'Now, I am quite busy and I'm not really sure if I've got the time to do a tattoo,' she says with a grin. Xerxes, not picking up on her teasing, whines softly and his shoulders sag in disappointment. '...but for such a good doggy, I'm sure I can make the time.' This perks your pet right back up and he bounds around on all fours before jumping up and kissing her with several quick licks before diving his tongue into her muzzle. She moans and pats him until he settles down enough to drop back down. He then hops eagerly into the tattooing chair, his enthusiasm barely contained. She turns to you and asks if either of you had anything particular in mind and you shake your head, telling her to do whatever your pet wants as long as it's nothing too crazy. Grinning happily, Kara pulls out a book of samples and flips through it, showing one to your pet. 'Do you like this one? I think it's just right for a good boy like you,' she says, scritching his ear. Xerxes barks happily and nuzzles into the scritches, clearly pleased with her choice.";
	say "     As she's getting her equipment ready, she starts looking through some inks and sets them aside. Seeing that it's mostly browns and blacks she's examining, Xerxes barks up with a call of 'color!' She arches her brow and asks him what color he'd like, at which point he seems struck with indecision, pointing at colors at random, regardless of how poorly they'd go together. You pat his side, tell him to settle down and add that perhaps the professional should pick a few nice colors. He seems happy with this and settles back down. You stick around long enough to make sure that he's settled once the tattooing starts. He whimpers a little at the pain of it, but sits still like the good boy he is, letting the hyena do her work. Having told you it'd take a while, you give your pet a kiss before heading off to scout around a bit. You even manage to find a bit of food while you're out. You leave some of it for Kara as payment for her work and tuck the rest away in your pack.";
	ItemGain food by 1;
	WaitLineBreak;
	say "     When you get back, she's got him lying down on a table and is finishing up something on his left butt-cheek. Taking your seat, you watch the hyena's rear sway as she works. With such a view, you can't help but notice the cum leaking from her pussy. It seems the two took a break to have some more fun while you were out. Finishing up, she sets aside the needle and smears some lotion across his back and bottom. 'All done, doggy,' she says, running a paw through his lush hair. 'Now be a good boy and show your master your nice tattoo.'";
	NPCSexAftermath Kara receives "PussyFuck" from Xerxes;
	say "     Xerxes hops up off the table and heads over to you. He struggles a bit to stand up so he can look himself over in the wall mirror while displaying his new tattoo for you. Around his neck is a tattoo of a dog collar with red studs and a golden, bone-shaped tag. The tag even has 'Good boy' drawn onto it in smooth cursive. Attached to the collar is also a red leash that hangs down from his neck and goes over his left shoulder. At your motion, he turns around, showing you that this leash drapes across his back, curving very realistically against his skin all the way down to his rear, leaving the loop [']resting['] against his bare butt cheek. The last couple of inches before the loop are banded with a rainbow of colors to further brighten it up.";
	WaitLineBreak;
	say "     The tattoo looks very realistic and the leash seems to drape naturally across your pet's body as if it's really there, like it belongs there. Surprised and impressed by the level of work that Kara's put into the piece, being far more than you'd expected, you thank her very much for it with a lustful kiss and grope. Xerxes, clearly pleased as well, happily turns around in front of the mirror and gingerly touches his rapidly healing skin. After the two of you properly show your thanks to the talented hyena, leaving her wet, sticky and thoroughly satisfied, you head back with your loyal pet at your right hand side, his head held high as he trots on all fours beside you.";
	increase score by 50;
	increase lust of Xerxes by 1;
	follow the turnpass rule;

Xerxes ends here.
