Alistair by Voidsnaps begins here.

[Thirst of Alistair: ButtSlut-O-Meter (Sub Alistair)             ]
[1: Made him blow you in first event after winning.              ]
[2: Sparred Again, beat him.Hotdogged his ass or pussyfrotted.   ]
[3: Full Buttslut mode. Sparred 2+ times. Considered your squire.]
[Hunger of Alistair: Dominant Alistair                           ]
[1: Blew him in first event after submitting.                    ]
[2: Fucked by Alistair once after losing spar.                   ]
[3: Fucked by Alistair repeatedly. You're his squire now.        ]

Section 1 - NPC Declaration and Room

Table of GameRoomIDs (continued)
Object	Name
Mystical Falls	"Mystical Falls"

Mystical Falls is a room.
It is fasttravel.
It is private.
Description of Mystical Falls is "[MysticFallsdesc]".

instead of sniffing Mystical Falls:
	say "     It smells like fresh water and the surrounding forest.";

to say MysticFallsdesc:
	say "     An idyllic waterfall surrounded by lush grass and brush sits in the middle of the forest. It's fed by no water source, and almost seems to be magical in nature judging by its inexhaustible supply of crystal-clear water. You can't really question its origin considering what else you've seen in this strange city, so you take it at face value.";

Table of GameCharacterIDs (continued)
object	name
Alistair	"Alistair"

Alistair is a man.
ScaleValue of Alistair is 3. [human sized]
Body Weight of Alistair is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Alistair is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Alistair is 1. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Alistair is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Alistair is 2. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Alistair is 5. [length in inches]
Breast Size of Alistair is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Alistair is 2. [count of nipples]
Asshole Depth of Alistair is 9. [inches deep for anal fucking]
Asshole Tightness of Alistair is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Alistair is 1. [number of cocks]
Cock Girth of Alistair is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Alistair is 10. [length in inches]
Ball Count of Alistair is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Alistair is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Alistair is 0. [number of cunts]
Cunt Depth of Alistair is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Alistair is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Alistair is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Alistair is false.
PlayerRomanced of Alistair is false.
PlayerFriended of Alistair is false.
PlayerControlled of Alistair is false.
PlayerFucked of Alistair is false.
OralVirgin of Alistair is false.
Virgin of Alistair is false.
AnalVirgin of Alistair is false.
PenileVirgin of Alistair is false.
SexuallyExperienced of Alistair is true.
TwistedCapacity of Alistair is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Alistair is true. [steriles can't knock people up]
MainInfection of Alistair is "Knight". [Always match the capitalization of the infection. Case sensitive.]
Description of Alistair is "[AlistairDesc]".
Conversation of Alistair is { "<This is nothing but a placeholder!>" }.
The scent of Alistair is "[AlistairScent]".

to say AlistairScent:
	say "     Alistair smells like honest sweat and masculinity. [if thirst of Alistair > 1]You want to bury your face in his sweatiest parts and clean them with your tongue. [else]You're sure he also smells a bit like you- As he should. A squire should smell like their master's satisfaction.[end if][line break]";

to say AlistairDesc:
	if debugactive is 1:
		say "     DEBUG -> Thirst(Submission): [thirst of Alistair] Hunger(Domination): [hunger of Alistair][line break]";
	say "     Alistair looks much like the rest of the knights you've seen around the forest, with boyishly short black hair and a matching goatee. Much of his body is covered in armor, and his shield is less sexually explicit than the other knights'. Flashes of tanned skin show through his collar, glistening with sweat from training and fighting 'monsters,' while green eyes shine with confidence, sizing you up. He looks ready for a fight!";

Section 2 - Meeting Alistair

Table of GameEventIDs (continued)
Object	Name
Gruff Gallant And Misguided	"Gruff Gallant And Misguided"

Gruff Gallant And Misguided is a situation.
ResolveFunction of Gruff Gallant And Misguided is "[ResolveEvent Gruff Gallant And Misguided]".
Sarea of Gruff Gallant And Misguided is "Forest".
The level of Gruff Gallant And Misguided is 10.
when play begins:
	add Gruff Gallant And Misguided to BadSpots of MaleList;

to say ResolveEvent Gruff Gallant And Misguided:
	say "     As you work through the forest, you hear rushing water. Curious, you pick your way through the dense brush, heading toward the sound. Any opportunity to fill a water bottle or two would be welcome, assuming some mutant hasn't contaminated it. Expecting to find a small creek, you stumble upon something far grander. Sitting in a clearing, seemingly fed by a nonexistent river, a waterfall rises before you. You're so distracted by the awe-inspiring sight that you nearly miss that you're not alone! Standing under the waterfall, a human runs his hands through black hair, letting the water cascade down over muscular, lightly hairy pecs and down to his bare midriff, barely obscuring his manhood. It's easy to recognize the dashing appearance of one of the forest's many knights, but somehow this one seems different, despite his identical appearance.";
	say "     If you wanted to, you could take a closer look.";
	say "     ([link]Y[as]y[end link]) - Ogle the knight and enjoy the sight of his nude body. What's the worst that could happen?";
	say "     ([link]N[as]n[end link]) - You're not really interested. Walk away.";
	if player consents:
		say "     Sneaking closer, you fix your eyes on the enchanting sight of battle-hardened muscles dripping with water. Thankfully the knight's eyes are closed, and you thank your lucky stars as his hand wanders lower and he steps out of the spray, revealing a half-hard foreskin-covered cock. The sight of his fingers stroking along it, innocently cleaning sweat from his shaft, and uncovering the pink cockhead in the process, soon has you touching yourself and imagining how it would feel in your hand. Shaking your head, you put the thought out of your mind. Sexual encounters with strange creatures seldom end well, and you don't even know if this man is friendly! Soon enough, the knight moves on from cleaning his manhood, turning around to dip his head beneath the spray and giving you an eyeful of a lightly hairy ass, perfectly toned and flexing butt. The sight drags a soft noise of appreciation from your mouth, and though you clap your fingers over your face, you realize that the knight has heard you. Still erect and dripping with water, he moves to the pool's edge, grabbing a hidden sword and shield and splashing toward you before you can react.";
		if kpstatus is 1: [Knight]
			say "     The knight visibly relaxes once he reaches you, his stance dropping and his weapons held loosely at his side. 'Hail, stranger. Judging by thy raiment, thou'rt a fellow knight. Excuse my state of undress.' The knight bows before you, looking quite comical with a half-hard cock swinging between his legs and a bare body. 'I s'pose I shall have to regain mine honor.' Gesturing with his sword, he readies himself for combat, wearing an amiable grin.";
		if kpstatus is 2: [Squire]
			say "     The knight visibly relaxes once he reaches you, his stance dropping, his weapons held loosely at his side, and a lazy grin on his face. 'Thou'rt a slip of a boy. Didst thou lose thy master? Allow me to test you, then. I've been in need of attendance for quite some time.' The knight bows before you, looking quite comical with a half-hard cock swinging between his legs and a bare body. 'Worry not, my boy. I shall be gentle.' Gesturing with his sword, he readies himself for combat, wearing an amiable grin and regaining his erection in anticipation of the fight's aftermath.";
		if kpstatus is 3: [Human]
			say "     The knight visibly relaxes once he reaches you, his stance dropping, his weapons held loosely at his side, and a lazy grin on his face. 'Art thou lost, peasant? I shall have to show you what it means to gaze upon nobility.' The knight looks down his nose at you, looking quite comical with a half-hard cock swinging between his legs and a bare body despite his attitude. 'Worry not. I shall be gentle, as my duty requires.' Gesturing with his sword, he readies himself for combat, wearing an amiable grin and regaining his erection in anticipation of the fight's aftermath.";
		if kpstatus is 4: [Monster (nonhuman)]
			say "     'Monsters, the lot of you. [']Tis impossible to gain a moment's peace without thy kind attempting to force themselves upon me.' With a cold expression, the knight looks you over, then readies his weapons with a grunt. 'Not this time, foul beast. Ready thyself. I shall sheathe one of these swords within thy body. [']Tis your choice which it might be.'";
		now inasituation is true;
		challenge "Knight";
		if fightoutcome < 20: [player won]
			say "     As you land the final blow, the knight falls to his knees, breathing heavily and holding himself by the edge of his shield. His manhood dangles obscenely, dripping with excitement, and his bare body is on display, allowing you to admire his battle-honed physique. Tilting his head upward and searching his eyes, you notice there's no small amount of lust in them. Is he getting off to the idea of being ravaged by someone that defeated him? Perhaps this is an opportunity to give the man what he wants while enjoying yourself.";
			say "     Do you want to take advantage of the defeated knight?";
			say "     ([link]Y[as]y[end link]) - Make the knight service you- whether he wants to or not.";
			say "     ([link]N[as]n[end link]) - On second thought, you don't want to fuck the knight."; [last chance to say no.]
			if player consents:
				if player is male:
					say "     Tossing aside your gear, you take advantage of the knight's vulnerable position, gripping his hair and smirking as the exhausted man lolls in your grasp. To the victor goes the spoils, as they say. Slowly, you guide the dazed man closer, lining yourself up with his mouth and parting his lips with the tip of your cock, hissing under your breath at the silky wetness of his tongue. With a grunt, you slide to the root without asking for permission, pausing to appreciate the tight squeeze of the knight's throat and his struggle to take you. It seems like the knight's a natural at sucking cock. Besides a sputtering gag at your first plunging thrust, he barely protests, relaxing his throat and taking on a dazed, faraway look as though cockdrunk. Rather than pushing you away as he regains his strength, he grips your ass with both calloused hands, dragging you into each thrust and rolling his tongue against the underside of your cock. Before long, at his urging, you're fucking his face, slurping wet sounds from his sucking lips and painting his beard and mustache with a sloppy mix of drool and pre.";
					say "     Widening your stance, you hump to your heart's content, gripping short black hair and ramming yourself home. Your balls slap against the knight's chin as his green eyes stare lifelessly up at you, too desperate to please to struggle, and a thought crosses your mind that nearly makes you cum on the spot- Every knight needs a squire. This knight's proven to be a cock-hungry squire, so why shouldn't you take his place as his master? You'd be doing him a favor. Unperturbed by the twisted thought of superiority that doesn't seem your own, you slam home, grunting as you empty yourself down the disgraced knight's throat. Holding him there, you wait until your cock softens, wiping it across his face and smirking as his tongue darts to clear the last pearly drops from your tip. You get the feeling that you've started something. Perhaps you should [italic type]come back here and see if you can continue to disgrace this poor knight? [roman type]Next time you might even ask his name.";
					say "     Grabbing your gear and re-dressing, you continue on your way, leaving the nameless knight in an exhausted heap with a raging erection and a need to wash himself again. You'll have to remember this place and return to claim him later.";
					NPCSexAfterMath Alistair receives "OralCock" from Player;
					now thirst of Alistair is 1;
					now Resolution of Gruff Gallant And Misguided is 1; [Fucked the knight's face as a male.]
					AddNavPoint Mystical Falls;
				else if player is female:
					say "     Tossing aside your gear, you take advantage of the knight's vulnerable position, gripping his hair and smirking as the exhausted man lolls in your grasp. To the victor goes the spoils, as they say. Slowly, you guide the dazed man closer, lining yourself up with his mouth and pressing your clit against his parted lips, hissing under your breath at the silky wetness of his tongue swiping over it instinctually. With a grunt, you slide your wetness over the prickly surface of his beard without asking for permission, pausing to appreciate his slow tonguing. It seems like the knight's a natural at cunnilingus. Besides a soft gasp seconds before your first grind, he barely protests, relaxing against your pussy and taking on a dazed, faraway look as though drunk on your musk. Rather than pushing you away as he regains his strength, he grips your ass with both calloused hands, dragging you into each thrust of your hips and rolling his tongue against your entrance. Before long, at his urging, you're fucking yourself on his tongue, slurping wet sounds from his sucking lips and painting his beard and mustache with a sloppy mix of drool and pussy juice.";
					say "     Widening your stance, you hump to your heart's content, gripping short black hair and ramming throbbing pussy against his sloppy licking. Your thighs swallow the knight's face as his green eyes stare lifelessly up at you, too desperate to please to struggle, and a thought crosses your mind that nearly makes you cum on the spot- Every knight needs a squire. This knight's proven to be a pussy-hungry squire, so why shouldn't you take his place as his better? You'd be doing him a favor. Unperturbed by the twisted thought of superiority that doesn't seem your own, you slam home, grunting as you squirt, messing the knight's throat and chest with your nectar. Holding him there, you wait until your pussy stops clenching, wiping your sopping sex across his face and smirking as his tongue darts to clear the last clear drops from your clit. You get the feeling that you've started something. Perhaps you should [italic type]come back here and see if you can continue to disgrace this poor knight? [roman type]Next time you might even ask his name.";
					WaitLineBreak;
					say "     Grabbing your gear and re-dressing, you continue on your way, leaving the nameless knight in an exhausted heap with a raging erection and a need to wash himself again. You'll have to remember this place and return to claim him later.";
					now thirst of Alistair is 1;
					NPCSexAfterMath Player receives "OralPussy" from Alistair;
					now Resolution of Gruff Gallant And Misguided is 4; [Player pussy eaten. Determines sex scenes in future encounters.]
					AddNavPoint Mystical Falls;
			else:
				say "     Shaking your head, you clear the thoughts of taking advantage of the knight from your head and turn your back on his nude form. You've seen where things like this go. You're not willing to lose your humanity for a piece of ass, as plump and well-muscled as it is.";
				now Resolution of Gruff Gallant And Misguided is 100;
		else if fightoutcome > 19 and fightoutcome < 30: [submitted]
			if fightoutcome is 22:
				say "     Stopping in your tracks, you hold up your arms, then drop to your knees, stating that you yield. You're sure the knight is more skilled in combat and would prefer not to be beaten any worse than you already are! Politely, you look away from his manhood, though you can't help but admire the way it sways when he tosses aside his sword and shield, throbbing at half-mast. The knight seems pleased at your submission, closing the distance between you and presenting the cock you've been lusting over. With an arrogant harrumph, he lords his superiority over you, smearing his cocktip against your face and marking your nose and lips with fragrant pre. 'S'pose it's natural to bow before nobility. Perhaps thou wouldst like some lessons? My sword could use a squire to shine it.' The knight punctuates his words with his cock, flopping it between your eyes and forcing you to breathe in the faint, freshly cleaned musk of his hairy balls. 'Though thou needst to prove thy devotion.' He doesn't phrase his need for worship as a question, as though he's sure you'll worship his cock either way. You'd be offended if you weren't already drooling, sucking in deep lungs full of his scent and barely resisting the urge to capture his hardening tip between your lips. You lose the battle with your libido before he has to ask you twice, and without bothering to disrobe, mouth at the maleness before you, coating the pink skin in a thick layer of drool as you work your way toward his dripping tip.";
				say "     'That's it. Polish every inch.' The knight sighs, tightening his grip on your head and working you toward its apex. He's quick to take what he wants when he feels your lips at his tip, pushing forward into your throat and slapping his balls against your chin. It's as if you already belong to him- He uses your mouth with little regard for comfort, coating your tongue in his arousal and ensuring you'll taste nothing else for hours. The slightest bit of protest is met with a trip to the base of his shaft until you apologize with your tongue, slathering the underside in slippery apologies and begging for more. You lose track of time speared on the man's cock, sucking away and letting him turn your face into a sloppy mess of pre and drool.";
				say "     The bittersweet sensation of his cock bucking like a wild bronco rouses your senses, and you stare up at him with pure need in your eyes as you realize you're about to taste the knight's- your new master's- seed. Your heart soars as you watch the warrior's jaw clench, and you moan as salty satisfaction paints your tongue, your involuntary reaction forcing the heady mix of masculinity and saliva out through your nostrils and making a further mess of your face, painting you as the knight's whorish new squire. You're so cockdrunk that it barely registers when the knight pulls himself free of your suckling mouth, wiping himself clean on your cheek and gathering his gear. Something inside of you tells you to follow him as he tucks himself into a suit of armor, hiding that delectable cock from your ravenous view, but your legs are made of gelatin, so you can only watch as he disappears into the forest. A few moments later, you follow suit, staggering to your knees and gathering your wits, spooning the mystery man's spilled seed into your mouth to join the warm load in your stomach and marking the waterfall's location in your mental map. Next time you'll have to ask your master's name.";
				now Resolution of Gruff Gallant And Misguided is 2; [Submission Sex. Become his Squire.]
				now hunger of Alistair is 1;
				NPCSexAftermath Player receives "OralCock" from Alistair;
				AddNavPoint Mystical Falls;
			else: [lost]
				say "     As you fall under the knight's attacks, he clicks his tongue, standing over you and balancing on his sword, sticking it into the ground in front of him. 'Thou art passable, but nothing special.' He looks over your sprawled form for a moment, then smirks. 'T'would serve you well to learn the basics. Shall I take on the role of teacher? Mine rates are... negotiable.' It's clear from his tone that he means giving up your body in exchange for these 'lessons.' As he gathers his clothing and disappears into the brush, you're left to ponder your options as you recover, eventually feeling well enough to stand and return to the Urban Forest.";
				now Resolution of Gruff Gallant And Misguided is 3; [Disappointed knight, no sex.]
				AddNavPoint Mystical Falls;
		else if fightoutcome > 30: [Fled. Storyline does not continue.]
			say "     Without looking back, you run through the brush, trusting that the knight won't want to chase after you in the nude. Soon enough you return to the entrance to the Urban Forest, pausing to catch your breath and confirming that you lost the man. You're not willing to risk your humanity on the outcome of a fight, and you doubt that whatever the knight had in mind is completely innocent.";
			now Resolution of Gruff Gallant And Misguided is 100; [Alistair isn't interested in cowards.]
		now inasituation is false;
	else:
		say "     Shaking your head, you decide not to bother with the waterfall or the man bathing in it. If there's one mutant here, no matter how human they look, it's likely that the water is tainted. Shouldering your pack, you click your tongue and continue on your way, making a mental note to avoid this area in the future.";
	now Gruff Gallant And Misguided is Resolved;

instead of conversing Alistair:
	if thirst of Alistair > 0:
		say "[PlayerKnightAlistairSquireMenu]";
	else if hunger of Alistair > 0:
		say "[PlayerSquireAlistairKnightMenu]";
	else:
		say "     'Enough talk- Thy showing was quite poor, last we met. Offer a challenge, then I shall entertain your idle chatter!' Before you can even open your mouth, the knight is readying his sword! You doubt you can change his mind, so all you can do is give it your all!";
		say "[AlistairSpar]";

instead of fucking Alistair:
	if thirst of Alistair > 0:
		say "[PlayerKnightAlistairSquireMenu]";
	else if hunger of Alistair > 0:
		say "[PlayerSquireAlistairKnightMenu]";
	else:
		say "     'Enough talk- Thy showing was quite poor, last we met. Offer a challenge, then I shall entertain your idle chatter!' Before you can even open your mouth, the knight is readying his sword! You doubt you can change his mind, so all you can do is give it your all!";
		say "[AlistairSpar]";

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
1	"Well Met"	Well Met	"[EventConditions_Well Met]"	Mystical Falls	2500	8	50

to say EventConditions_Well Met:
	now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Well Met	"Well Met"

Well Met is a situation.
ResolveFunction of Well Met is "[ResolveEvent Well Met]".
Sarea of Well Met is "Nowhere".

to say ResolveEvent Well Met:
	say "     'Well met, ser.' A familiar voice calls from near the falls. The knight stands, his armor clattering and his body sadly far more covered than it once was. 'Thy bravery shan't be understated. Not many would indulge in further contact with an assailant.' Holding out his hand, the knight takes yours and shakes it vigorously, his grip hard enough to crack bones.'Ser Alistair Du Pont. At your service.' Alistair beams and bows like a nobleman in a tv show, but judging by his fully armored appearance, it seems he's here for combat, rather than idle chat. If you want to indulge yourself, you should probably spar with him first.";
	move Alistair to Mystical Falls;
	Now Well Met is Resolved;


Section 3 - Knight Path

to say PlayerKnightAlistairSquireMenu:
	say "     [bold type]What do you want to talk with [if Energy of Alistair is 1]Alistair [else]the knight [end if]about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask to spar";
	now sortorder entry is 1;
	now description entry is "You want to fight the knight again! Ask if he's willing";
	[]
	[if hunger of Alistair is 2:
		choose a blank row in table of fucking options;
		now title entry is "Skip the fight";
		now sortorder entry is 1;
		now description entry is "You don't need to prove your superiority. Show Alistair your superiority another way";]
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
				if (nam is "Ask to spar"):
					say "[AlistairSpar]";
				[if (nam is "Skip the fight")
					say "[AlistairCockSlut]";]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the knight, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;


Section 4 - Squire Path

to say PlayerSquireAlistairKnightMenu:
	say "     [bold type]What do you want to talk with Alistair about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask to spar";
	now sortorder entry is 1;
	now description entry is "Alistair offered to be your teacher- Take him up on that offer";
	[]
	[if hunger of Alistair is 2:
	choose a blank row in table of fucking options;
	now title entry is "Offer yourself to your knight";
	now sortorder entry is 1;
	now description entry is "Your master is far too mighty. You can't hope to beat him, maybe you should worship him instead";]
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
				if (nam is "Ask to spar"):
					say "[AlistairSpar]";
				[if (nam is "Offer yourself to your knight")
					say "[AlistairFucksPlayer]";]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the knight, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AlistairSpar:
	if debugactive is 1:
		say "     DEBUG -> Thirst(Submission): [thirst of Alistair] Hunger(Domination): [hunger of Alistair][line break]";
	if thirst of Alistair is 1: [Fucked him once]
		say "     'Thy luck shan't hold.' Alistair crows as he readies his sword, then swings it toward you. Despite his defeat at your last meeting, it seems he wants to regain his honor. Perhaps you should show him his place?";
	else if hunger of Alistair is 1: [He fucked you]
		say "     'Worry not. I shall make a noble fighter out of thee yet, dutiful squire.' Alistair crows as he readies his sword, then swings it toward you. He wasn't kidding about training you. Hopefully, you can stop him from making a fool of you!";
	else if thirst of Alistair is 2: [Beaten and fucked him twice]
		say "     'Thy skill is vexing, but mine honor demands I accept your challenge.' Alistair says as he readies his sword, looking uncertain. Despite his defeat at your last meeting, it seems he wants to regain his honor, but he can barely look away from your crotch. It seems he wants to pretend he's not your dutiful servant. How cute.";
	else if hunger of Alistair is 2: [He beat you and fucked you twice]
		say "     'Worry not. I shall make a noble fighter out of thee yet, dutiful squire. Shall I even provide a handicap?' Alistair crows as he readies his sword, using his free hand to drop his pants and free his half-hard manhood. He wasn't kidding about training you, but you only have eyes for his freely flopping cock. Hopefully, you can stop him from making a fool of you, but somehow, you don't mind if he does!";
	else if thirst of Alistair > 2: [Beat him and fucked him at least 3 times]
		say "     'Thy skill is vexing, but mine honor demands I accept your challenge.' Alistair says as he readies his sword, openly ogling your crotch. Despite his defeat at your last meeting, it seems he wants to regain his honor, but he can barely stop himself from stripping and pleasuring you! How cute. Maybe you should skip sparring and give him what he wants, next time.";
	else if hunger of Alistair > 2: [He beat you and fucked you at least 3 times]
		say "     'Come now, squire. Thy desire is plain on thy face. Allow me to offer thee a pleasant view whilst I show you your place.' Throwing off his armor, the knight strips to the nude, stroking himself with his free hand as he readies his sword, forgoing his shield. You'd be embarrassed if you weren't struck by the sudden urge to fall to your knees and suck his cock!";
	now inasituation is true;
	challenge "Knight";
	if fightoutcome < 20: [player won]
		if hunger of Alistair > 0: [Other path already chosen. No sex.]
			say "     Alistair looks dumbfounded as he falls to his knees, defeated. As if he can't believe he's just lost, he sheepishly holds out his hand, his regret written across his face. You stammer out an apology and stroke his ego, telling him he must have pounded lessons into you well enough to stick. Quietly, you ponder throwing the fight next time. It wouldn't do for a squire to show up his knight!";
		else: [player is not on the other path]
			if thirst of Alistair is 0: [not on either path]
				increase thirst of Alistair by 1; [start of the sub path]
			if thirst of Alistair is 1: [Winning results in sex]
				say "     With a flourish, you knock the knight-turned-squire to his knees, sending his sword flying to the side to embed itself in mud. You can't help a sense of accomplishment as you look down at the defeated knight- no. You correct your thoughts. Alistair is no longer a knight; he's your squire. It's only fair that you demote him if he can't defeat you! It's only fair that a demotion comes with a punishment. As you look down on the knight, you ponder what to do with him. His mouth looks like it could use [if resolution of  Gruff Gallant And Misguided is 1]another [else]a [end if]coat of cum, but you dismiss the idea. If you want to show him his place, you should do something more hands-on. Circling his unmoving form, you let your eyes wander downward, then, on a whim, aim a kick between his shoulders, sending him falling forward to his knees. You know what you want to do first. Pantsing the knight, you admire his well-muscled, lightly hairy ass, smacking one cheek and leaving a red mark on tanned skin. It seems that Alistair's a seasoned buttslut, based upon his whimper and unwilling wiggle, but even more interesting is his cock's plump, dangling form. Is he enjoying your mistreatment? You could take this opportunity to have fun with the submissive former knight.";
				say "     How do you want to take advantage of the submissive 'squire?'";
				LineBreak;
				let Alistair_Sub_Scene_One_Choices be a list of text;
				if Player is kinky:
					add "Use the hilt of his sword to fuck him." to Alistair_Sub_Scene_One_Choices;
				if Player is female:
					add "Take charge and show him who his dick belongs to with a messy pussy frot." to Alistair_Sub_Scene_One_Choices;
				if Player is male: [neuters go home!]
					add "Hotdog his ass." to Alistair_Sub_Scene_One_Choices;
				let Alistair_Sub_Scene_One_Choice be what the player chooses from Alistair_Sub_Scene_One_Choices;
				if Alistair_Sub_Scene_One_Choice is:
					-- "Use the hilt of his sword to fuck him.":
						LineBreak;
						say "     The sword stuck at your side gives you an idea. What better way to disgrace your knight than to use his sword to defile him? Grabbing the weapon, you run your fingers over its pommel, announcing that you've found a new sheath for Alistair's weapon. As Alistair panics, anticipating what you're about to do and trying to escape your grip, you spread his cheeks with one hand, guiding the sword's rounded base and slotting it against his terrified, winking hole. Before he can speak, his words melt into a surprised yelp, morphing into a shameful moan as you spit on the tip and slide it home, burying the handle inches into Alistair's hole and carefully holding it in place. You can't help but laugh at the sight of his 'tail,' spanking his ass and telling him to man up. After all, with how easily it slipped in, it can't be the biggest thing that's spread his cheeks.";
						say "     An ashamed grunt is all you hear in response, prompting you to angle the strange insertion until Alistair's cock begins to drip. The whorish moans that your prostate stimulation drags from his mouth spur you on, and soon you're fucking the knight on his sword, weighing his balls with your free hand. He's so tense, and the expression on his face screams concentration despite the sounds dragged from his throat, so you can't help but attempt to ruin that, speeding your hand until Alistair's expression breaks, his mouth hanging open and drool dripping down his bearded chin. Your breakneck pace has the desired effect, and soon enough, you're holding churning balls in a gentle, massaging grip as he paints the ground below himself with seed. Slowly, you withdraw the sword from his ass, admiring the pink gape you gave that muscular butt and commenting on how well-behaved he is as you gather your things and prepare to walk away.";
						NPCSexAftermath Alistair receives "AssDildoFuck" from Player;
					-- "Take charge and show him who his dick belongs to with a messy pussy frot.":
						LineBreak;
						say "     [if Player is not barecrotch]Baring your crotch and t[else if player is barecrotch] T[end if]ouching your sex until your fingers come away with a layer of silken wetness, you slip beneath the knight, taking hold of Alistair's manhood and spreading your legs wide as you stare into confused green eyes. His expression quickly melts into lust as you guide his cockhead against your needy pussy, but as he maneuvers to slop in, you grip his dick hard enough to drag a groan from his mouth, stopping him in his tracks with nothing but your fingers. Gentle fingers stroke along his shaft once he behaves, and you raise your spare hand to his face, stroking his cheek and telling him he doesn't get to control how things go. Alistair huffs but nods, his face flushed with the realization that he's the submissive one, even if you're the one with a pussy. 'As you wish. I am thine to command, Mistress.' He mulls that last word around as though it leaves a bad taste in his mouth, but his cock deposits a heavy dribble of pre against your slick clit, throbbing in time with his words.";
						say "     You settle into a slow rhythm, grinding the knight's cock along your slit and dueling his rounded tip with your clit, delighting in the sopping wet mess your combined fluids make. Of course, it's not enough, and within a few moments, you're wrapping your legs around Alistair's waist, forcing his 'sword' to belch its virility against your mound while its swollen underbelly provides sweet friction. Panting, you attack the knight's neck with your mouth, biting and sucking at sensitive skin until you can feel his orgasm rising in the twitching shaft between your lower lips. You reach your peak just as your toy paints your stomach with seed, wasting his load inches from your needy hole. It feels too good to stop, so you buck like a wild horse, forcing Alistair to keep up until your orgasm fades and leaving him whimpering and soaked in your juices. Without further fanfare, you push him off of you to flop on the bank of the waterfall, pants down and cock softening. Gathering your juices and mixing them with his wasted seed, you taste your fingers as you stand over him, watching his manhood twitch and his breath quicken. You tell him what a good squire he's been as you dress, promising you'll let him finish inside you next time. Judging by his blushing face and subconscious swallow, he's looking forward to it.";
						NPCSexAftermath Player receives "Stroking" from Alistair;
					-- "Hotdog his ass.":
						LineBreak;
						say "     Slapping your cock between Alistair's wiggling cheeks, you tease his hole with your tip, delighting in its protesting clench. It seems he hasn't had his ass used in a while, but the way he spreads his legs and pushes back, he's taken one before! Still, an ass like this deserves a little love before the main event. Pulling your cock back, you spit onto the pink bullseye between his cheeks, then spread it around with the belly of your shaft, delighting in the muscular cheeks hugging either side of you. He's warm from your fight, and the hair on his ass gently tickles your sensitive skin, so before long, you're grinding hard, smearing spit and pre over that slick valley, and planting both hands on his hips.";
						say "     The stoic expression on Alistair's face draws your attention. He's blushing, but he looks like he's enduring what you're doing rather than enjoying it, despite his cock's eager bucking against his stomach and its drooling spiderwebs of pre. You can't have that. Releasing your grip on one hip, you slap his ass, asking him who he belongs to. Who defeated him? Who owns his ass? 'I am thine.' Alistair murmurs, his voice growing higher-pitched as you reward him with a rougher slap that clenches his cheeks and threatens to draw you over the edge. 'THINE!' He barks out, biting his lower lip and bucking back against you hard enough that your sawing cocktip parts his hole, popping your manhood into his sweltering depths even as it clamps to welcome you.";
						WaitLineBreak;
						say "     The admission draws you over the edge, and even as your cock slips free from its momentary penetration, you paint his pink entrance, your seed bathing his slightly parted hole and dripping down over his balls. Slowly, you prod and plunge your cockhead past his defenses, marking his first inch of silken innards with dribbling seed and reaching under him to grab his cock, jerking him hard and fast. Shortly after, he joins you in orgasm, his face melting into an expression of pure pleasure as he paints your fingers with his submission. You wipe your gooey hand on the knight's upturned ass, then clean your cock the same way, thanking him for his service. Next time, you promise to fuck him properly, as a  knight should, but for now, you have other things to do.";
						NPCSexAftermath Player receives "Stroking" from Alistair;
				infect "Knight";
				now thirst of Alistair is 2;
			else if thirst of Alistair > 1: [Stage 2/repeats. Can be expanded later.]
				say "     Without wasting any time, you ask Alistair to strip. You can't help but grin with pride as he quickly follows your orders, kneeling before you with a hard cock and a gaze that can't quite meet yours. Crossing the distance between you, you [if Player is not barecrotch]bare yourself and [end if]guide his face between your thighs, [if Player is male]rubbing your cock across his lips [else if Player is female]rubbing his bearded face against your pussy[end if]. As his tongue sets to work pleasing you, you relax your stance, gripping his hair and guiding him around to your sensitive spots, but before long, you want more. Yanking him back by his hair, you admire his wet lips and beard smeared with your scent, contemplating what you want to do with him.";
				say "     How should you use your slut knight?";
				LineBreak;
				let Alistair_Sub_Scene_Two_Choices be a list of text;
				if Player is female:
					add "Ride his dick." to Alistair_Sub_Scene_Two_Choices;
				if Player is male:
					add "Pound his ass." to Alistair_Sub_Scene_Two_Choices;
				let Alistair_Sub_Scene_Two_Choice be what the player chooses from Alistair_Sub_Scene_Two_Choices;
				if Alistair_Sub_Scene_Two_Choice is:
					-- "Ride his dick.":
						LineBreak;
						say "     Dropping down eye to eye with the kneeling knight, you straddle him, stroking his manhood and grinding it against your wetness. Pressing a teasing kiss to his cheek, you ask the knight if he thinks he's worthy of seeding you, even as you sway your hips, nestling his tip against your heated entrance. 'I will endeavor to stay in thine good graces.' The knight hisses through clenched teeth, his hands tentatively gripping your hips and his cock bucking, betraying his eagerness. 'Thy choice is mine.' How cute. He's trying so hard to hold back when even the slightest movement would send you plummeting to the base of his shaft.Taking advantage of his reluctance to tease the obedient 'squire,' you line yourself up, squishing Alistair's cock against your entrance and cooing as it splits you open. Slowly, you savor the penetration, enjoying every inch until you feel the unmistakable sensation of the man's cockhead kissing against your cervix. Like an excited puppy, his cock trembles, and you swear you can feel him start to leak.";
						say "     Gently, you begin to ride, ravaging your fallen knight with rough kisses that leave him no room to pretend he's not enjoying your domination. Instead, he meekly welcomes your tongue, sucking on it even as you use him to sate your lust. Forgoing a leisurely pace, you quicken your hips, continuing until he's right at the edge, desperate to finish and twitching madly in your slippery depths, only to stop your ministrations, pausing with his cock still half-buried inside you. Panting mischievously, you murmur in Alistair's ear, wondering aloud if he was planning to finish before you. Perhaps you should find a different sword for your sheath? 'Nay. I shall serve. Thine pleasure is mine.' The enraptured knight says as you guide him forward to lean over you. Slamming home, he hits the ground running, pounding your pussy as hard as he can and enfolding you in muscular arms. It would almost seem he were in charge if he weren't whimpering into your neck with every thrust and trying so hard not to cum that it must hurt.";
						WaitLineBreak;
						say "     Goading your submissive knight to the edge, you take every inch he's willing to give you, slapping his bare ass like a misbehaving horse and delighting in how much he seems to enjoy the punishment. Before long, you can feel your finish approaching, so you tell your eager lover to seed you, hanging on as he spears forward and cries out his desire, hilted for the last time. A flood soon follows as your orgasm washes over you, mixing with the thick seed that drools from your union to drip in a frothy mess to the ground below. Your noble former knight cleans up his mess with his tongue without your orders, worshipping your cunt until you're forced to push him away, then lying there with a half-hard cock, panting with a dreamy look on his face. You doubt he'll move soon, but you have places to be and people to see, so you cut your visit short, thanking him for servicing you properly and leaving him with horny daydreams and drained balls.";
						NPCSexAftermath Player receives "PussyFuck" from Alistair;
					-- "Pound his ass.":
						LineBreak;
						say "     Tugging Alistair forward with little regard for his dignity, you circle him and grip his hips, slapping one bare cheek when he doesn't present himself quickly enough for your liking. You waste no time slotting yourself against his hole, wondering aloud if he's been touching himself without your permission. Judging by his entrance welcoming you- relaxed and slightly wet, it seems he has. What a slut! With nothing to stop you from gliding to the hilt, you savor the knight's softened depths, cooing about how good of a squire he is to keep himself ready for your pleasure. Alistair's face says it all. From the moment you slipped inside of him, his jaw slackened, and his face reddened. Far from the strained pleasure you'd expect, he's lost himself to the sensations of being fucked. You can even hear him muttering under his breath. 'Thy... Thy cock is divine. 'Tis unfair. I can't-' He cuts himself off with a moan, clamping around your cock when you prod his sweet spot, his face buried in his arm to muffle the unmanly sounds dragged from his throat. Soon enough, it starts to feel like more of a game. You're not just fucking the knight; you're trying your best to drag more and more sounds from his throat and break his expression further. Angled thrusts abuse his prostate, and reddening slaps mark his ass as yours, but it doesn't feel like enough.";
						if thirst of Alistair is 2: [first time]
							say "     Leaning over the fallen knight, you abuse his ass, slamming down hard enough to destroy his poor pleasure spot and fixing your gaze on his shoulder. Suddenly, you know what the knight's body needs- a more permanent reminder of your coupling. Your teeth sink in, drawing a desperate whimper from the slutty knight, and you feel the telltale clamp of his inner walls milking your dick while wet splatters to the mud below confirm his orgasm. With a muffled growl more worthy of a beast than a human, you bury your 'sword' to the hilt, marking Alistair's innermost sanctum with evidence of his submission. You nearly black out from the pleasure, but thankfully the knight-turned-squire is sturdy, and he holds you up, though his legs shake and helpless groans vibrate through him in time with each creamy squirt. Moments later, you slip free of the knight's hole and pat his abused butt, wiping your cock clean on one spanking-blushed cheek. Praising him for his service as your squire, you redress, admiring the pretty sight of his cock dribbling to the ground below and his abused hole beginning to drool.";
						else if thirst of Alistair > 2: [any repeats]
							say "     Leaning over the fallen knight, you abuse his ass, slamming down hard enough to destroy his poor pleasure spot and fixing your gaze on his shoulder. Your teeth sink into the mark on his shoulder, reinforcing the mark of submission, drawing a desperate whimper from the slutty knight, and you feel the telltale clamp of his inner walls milking your dick while wet splatters to the mud below confirm his orgasm. With a muffled growl more worthy of a beast than a human, you bury your 'sword' to the hilt, marking Alistair's innermost sanctum with evidence of his sluttiness. You nearly black out from the pleasure, but thankfully the knight-turned-squire is sturdy, and he holds you up, though his legs shake and helpless groans vibrate through him in time with each creamy squirt. Moments later, you slip free of the knight's hole and pat his abused butt, wiping your cock clean on one spanking-blushed cheek. Praising him for his service as your squire, you redress, admiring the pretty sight of his cock dribbling to the ground below and his abused hole beginning to drool.";
						NPCSexAftermath Alistair receives "AssFuck" from Player;
						say "     Sadly, you don't have long to wallow in your post-orgasm bliss. Gathering your gear, you thank the knight for his service, then continue on your way. A knight's work is never done!";
				infect "Knight";
				now thirst of Alistair is 3;
	else if fightoutcome > 19 and fightoutcome < 30: [Lost.]
		if thirst of Alistair > 0: [Other path already chosen. No sex.]
			say "     Alistair looks dumbfounded as you fall to your knees, defeated by his sword. As if he can't believe he's just won, he sheepishly holds out his hand, his regret written across his face. Did he want to lose? Perhaps you've unlocked another side of him. Grinning inwardly, you pat the top of his head, telling him you won't go so easy on him next time. His blush shows you all you need to know.";
		else: [player is not on the other path]
			if hunger of Alistair is 0: [neither path picked yet]
				increase hunger of Alistair by 1; [start of the Dominant path]
			if hunger of Alistair is 1: [Losing results in sex]
				say "     Alistair wastes no time once his sword knocks you to your knees, dropping his pants and burying your face in his sweat-sheened balls. As you dutifully lick, seduced by his manly musk, he speaks, tapping his hardened cock between your eyes. ''Tis a shame that thy priorities are warped. Thy aim was never to learn, t'was simply a path to polish mine holy sword.' Still, as you suck his sack clean, he seems unbothered by your perceived slutty intentions, a cocky grin plastered across his face. 'It matters not. I shall gladly take advantage of thine proclivities.' Depriving you of the manhood you're so desperately cleaning with your tongue, the knight pushes you to your knees.";
				if Player is female:
					say "     Tugging your pants to your knees, the knight surveys your rear, spreading your cheeks as he maneuvers himself into position. His cock brushes against your asshole, and you fear that he's about to punish you by ignoring your sopping wet sex, but thankfully, his cock continues lower, slotting itself between your dripping lips. 'Thy hunger is plain. Shall I sate it?' The knight says in a gruff baritone as he spears forward, his human cock drilling to your core in one smooth thrust. He wastes no time in rutting you, his balls slapping against your clitoris in a stabbing rhythm that soon has your stomach in knots. It's not that he's skilled, but what he lacks, he makes up for in unrelenting stamina, abusing your poor pussy, and treating you like the whore you are.";
					WaitLineBreak;
					say "     Rutting in the dirt like a beast of burden, you can't help but enjoy yourself, losing yourself in the desperate rhythm of being used. You're so wet that your pussy nearly drowns out the sounds of the waterfall, and you can feel your juices dripping down your thighs as Alistair's balls send droplets flying. It's all too much, and soon enough, your orgasm rises, constricting your hole around the knight's cock and begging for his seed. Squirting helplessly, you moan aloud, gripping the ground below you and burying your face in the crook of your elbow to hide your shame at enjoying yourself like a wanton whore. The intense orgasm only heightens when you feel the knight's load basting your innermost depths, filling you to the brim and frothing your sex with a thick mixture of combined cum and juices, and you black out, overwhelmed. When you come to, you're still on your knees with your ass in the air, your pussy exposed to whoever might walk by with Alistair nowhere in sight. It seems your knight has no further use for you. Gingerly, you gather your gear, blushing at the dripping mess staining your thighs. You'll have to return later- after all, a squire should service their knight often.";
					NPCSexAftermath Player receives "PussyFuck" from Alistair;
				else if Player is male:
					say "     'Surely that's not thy best.' Alistair teases you as he tugs your pants down, spreading your cheeks and slotting his manhood against your hole. 'Perhaps thy goal is to service rather than learn? S'pose thy goals align with mine desires.' Prodding forward, he tests your tightness, slipping past your defenses with a dollop of spit unceremoniously plopped against your entrance. With practiced motions, the knight drills into your clamping hole, busting you open with no small amount of force. It stings, but you can't help but get into it as you hear his breath quicken and his cock throb against your sweet spot. It feels right to be his. Every inch that slides deep into you reinforces your place as his squire, and you can feel your manhood flex and drip in time with your master's, hurtling toward orgasm as he abuses your poor hole.";
					WaitLineBreak;
					say "     A calloused hand takes hold of your neck, dragging you backward against sweat-covered muscles and using gravity to slip deeper into your hopelessly clamping ass. 'Thy body pleads for seeding. Such a pretty whore.' He murmurs in your ear as his free hand takes hold of your cock, and the light scratch of his beard teases your sensitive neck. 'I shall grant thy wish.' He grunts, spearing upward and stroking you fast enough that you worry he'll start a fire with the friction he's inflicting on your poor shaft. You lose track of how long you endure the knight's masculine assault, but eventually, sweet release overtakes you, painting the ground in front of you with long strings of desire even as heat blooms in your bowels. Panting and exhausted, you melt backward against the man behind you, lolling your head into his neck kisses, and drooling as he squeezes your throat. Too soon, he pulls out, letting you fall forward, and you black out, exhausted and well-used.";
					WaitLineBreak;
					say "     When you come to, you're still on your knees with your ass in the air, your well-seeded ass exposed to whoever might walk by with Alistair nowhere in sight. It seems your knight has no further use for you. Gingerly, you gather your gear, blushing at the dripping mess staining your thighs. You'll have to return later- after all, a squire should service their knight often.";
					NPCSexAftermath Player receives "AssFuck" from Alistair;
				now hunger of Alistair is 2;
			else if hunger of Alistair > 1: [Stage 2/Repeats]
				say "     '[']Tis clear that thy focus is compromised.' Alistair pushes you into the dirt, leaning over you in all his naked glory and forcefully [if Player is barecrotch]spreading your legs [else]tearing off your lower garments [end if]with urgency in his movements. 'Worry not. Thy desire has not escaped attention.' Pressing his lips to yours, he forces his tongue past your lips, dominating you with a kiss that sets your body alight with desire and refusing to pull back until your lips burn from the rough scratch of his beard.";
				if Player is female:
					say "     Alistair wastes no time penetrating you, his cock gliding past your needy lips and spearing forward in a desperate rhythm. There's no foreplay, no talk, just the rough, rutting of a beast in human form. You know you shouldn't enjoy it as much as you do, but somehow, your body reacts more to his callous treatment, and you're so wet that you wonder if he can even feel anything. 'Thou art mine.' Alistair growls against your ear as his thrusts reach a crescendo. Digging calloused hands into your hips, he slaps his balls against your ass, stirring your pussy into a frothing mess and basting the entrance to your womb in gooey spurts of pre. You're not sure how long he uses you, but once you feel his member pulse and squirt inside, it feels like you're on fire, and you feel as though your body has endured one continuous orgasm. Gasping for air and covered in sweat, you go limp beneath your knight, closing your eyes and basking in his manly scent. Sadly, it seems he has finished with you, and despite your whimpered protest, he pulls out of your drooling cunt, removing the heavenly weight of his muscular body on top of yours.";
					NPCSexAftermath Player receives "PussyFuck" from Alistair;
				else if Player is male:
					say "     Alistair wastes no time penetrating you, his cock gliding past your tight ass and spearing forward in a desperate rhythm. There's no foreplay, no talk, just the rough, rutting of a beast in human form. You know you shouldn't enjoy it as much as you do, but somehow, your body reacts more to his callous treatment, and you're so relaxed and ready that you wonder if he can even feel anything. 'Thou art mine.' Alistair growls against your ear as his thrusts reach a crescendo. Digging calloused hands into your hips, he slaps his balls against your ass, stirring your inner walls into a frothing mess and basting the entrance the inner depths of your guts with gooey strings of pre. You're not sure how long he uses you, but once you feel his member pulse and squirt inside, it feels like you're on fire, and you feel as though your body has endured one continuous orgasm, painting your stomach with wasted seed countless times. Gasping for air and covered in sweat, you go limp beneath your knight, closing your eyes and basking in his manly scent. Sadly, it seems he has finished with you, and despite your whimpered protest, he pulls out of your seeded hole, removing the heavenly weight of his muscular body on top of yours.";
					NPCSexAftermath Player receives "AssFuck" from Alistair;
				WaitLineBreak;
				say "     As you open your eyes, you're greeted with the messy sight of the knight's manhood dripping before your face, covered in a glaze of cum and only partially hard. It's not hard to guess what he wants, and as you open your mouth, he stuffs himself inside, reducing your world to the drooping, sweaty masculinity of his balls and the salty tang of his cock. It soon becomes clear that Alistair isn't out for cleaning. Instead, he's burying himself to the hilt, gagging you on his shaft and fucking your throat until he forces you to accept every inch, filling the space around the waterfall with the lewd sounds of a sloppy facefuck. Desperate to please, all you can do is endure, sucking in breaths tainted by the stink of musky balls and the knight's perineum. You run out of air before the knight runs out of steam, and despite your weak protests, he still fucks your mouth, keeping up his breakneck pace until the world fades away. Waking up later with a face covered in cum and drool, you look around for your knight, licking your lips and tasting his manhood. Sadly, he's nowhere to be found, and you have to gather your things and leave, vowing to service him again tomorrow. For now, you'll have to enjoy the scent and taste of your knight, as saturated as it is.";
				now hunger of Alistair is 3;
				NPCSexAftermath Player receives "OralCock" from Alistair;
	now inasituation is false;
	move Player to Urban Forest;

to say AlistairCockSlut:
	say "     ";

to say AlistairFucksPlayer:
	say "     ";

Section 5 - Going To The Library

[This is for later. Not doing this with only 4 hours.]


Section 6 - Debug code

[For those that don't want to restart to see the alternate path!]

AlistairReset is an action applying to nothing.

understand "zKnightReset" as AlistairReset.

check AlistairReset:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

carry out AlistairReset:
	say "     <Alistair will now act as though you lost to him the first time. This allows you to try out his Submissive (Player winning) and Dominant (Player losing/submitting during first spar) routes, starting after the event where he tells you his name. Your first spar determines his path!>";
	now thirst of Alistair is 0;
	now hunger of Alistair is 0;
	now Resolution of Gruff Gallant And Misguided is 3;

Alistair ends here.

[to do: Fix menus. Sex scenes 2 and 3. (Get fucked/fuck and ride/get ridden)]
