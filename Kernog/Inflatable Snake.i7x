Version 2 of Inflatable Snake by Kernog begins here.

"Inflatable snake enemy/situation. The enemy roams in the ball pit room of the Bouncy Castle. It attacks on entering the room. The snake deflates upon defeat, providing a short respite to the player. If the player loses the battle, the snake vores them (or simply milks them/fucks them if vore is inactive)

Version 1: Enemy, basic scenes (encounter, victory, defeat, humanity game over), timer - DONE
Version 2: capture state (vore) - DONE
Version 3: Interaction with Vixen quest - TODO ?
"

Section 0 - Variables

lastsnakebeat is a number that varies. lastsnakebeat is usually 255.
snakeDrugCounter is a number that varies. snakeDrugCounter is usually 0.
snakeDrugCounterCap is a number that varies. snakeDrugCounterCap is usually 6. [I define the cap here to allow easy modification for balance]
snakeDrugTimer is a number that varies. snakeDrugTimer is usually 3.
snakeDrugTempTimer is a number that varies. snakeDrugTempTimer is usually 3.
inflatableSnakeBodyParts is a number that varies. inflatableSnakeBodyParts is usually 0.

Section 1 - Monster Responses

to say beattheinflatablesnake:
	say "     After your last hit, you hear the distinctive [italic type]pffft![roman type] of a balloon deflating. The inflatable snake crawls away as fast he could, while you search for it in the ball pit. But you do not find any trace of the inflatable. Did he escape through a hidden crevice? Does he rest at the bottom of the ball pit in a flattened and inoffensive state?";
	say "     At the very least, it looks like the feral pool toy will leave you alone until it recovers.";
	now lastsnakebeat is turns;

to say losetoinflatablesnake:
	if HP of Player > 0:
		say "     You give up under the relentless attacks of the inflatable snake, too bothered to muster more resistance.";
	else:
		say "     Hurt and tired, your legs buckle and you fall on your butt among the multi-colored balls.";
	say "     The snake coils one more time around your body. You feel its lukewarm and smooth body loop around you and squeeze, pinning your arms against your [Body Size Adjective of Player] form. It squeezes tighter every time you reflexively struggle against the binding coils, until you remain obediently motionless. The creature's cartoonish head crawls towards your waist and [StripCrotch]. You feel its plastic tongue flail and lick the [skinname of player] skin of your genitals.";
	WaitLineBreak;
	if anallevel is 3 or player is neuter:
		say "     You suddenly feel the snake's head press against your ass. You shudder as you doubt the creature will fit, but the inflatable surprises you by deflating until it is able to squeeze through, then reinflating to stretch you to your limit. A loud moan escapes your lips, quickly muffled when the inflatable snake's tail coils around your neck then rams into your [facename of player] mouth. Your teeth sink harmlessly on the appendage without piercing it, while it hisses and inflates until it is thick enough to stretch your cheeks.";
		say "     The inflatable snake pushes forward relentlessly, adapting its size to your ass to avoid hurting you, while still making you feel as if it was stretching you wide. Its skin produces a tanning oil-like substance, easing its squeaky back-and-forths. You can feel its blunt head hit [if player is not male]your sensitive spots[else]your prostate[end if] again and again, and its powerful neck wiggle inside you. The snake brings you at a steady rythmn to the edge of orgasm, then beyond. Your ass squeezes on the feral pool toy which wiggles and pushes even harder as a response[if player is male], while your [cock size desc of Player] sex throbs and releases a [cum load size of player] load, quickly gulped down into the synthetic creature's stomach (or what passes as one)[end if].";
	else if Player is male or (player is herm and a random chance of 1 in 2 succeeds):
		say "     A moan escapes your lips as you feel the snake's maw open wide and swallow [if Cock Count of Player > 1]all of your cocks[else]your cock[end if] in its stretchable maw. It effortlessly swallow your [cock size desc of player] shaft[smn] all the way down and you shudder, wondering how far its plastic jaws can stretch. You lift your head to check what is happening, only for the inflatable snake's tail to coil around your neck, pin your head down, then ram itself into your [facename of player] mouth. Your teeth sink harmlessly on the appendage without piercing it, while it hisses and inflates until it is thick enough to stretch your cheeks.";
		say "     The inflatable snake plays with its surprisingly powerful throat muscles to suck and massage your [cock size desc of player] dick[smn] with terrifying efficiency. You moan loudly and thrash around, but the pool toy's iron grip and another inflation of its invading tail make short work of your resistance. The snake brings you at a steady rythmn to the edge of orgasm, then beyond. Your [cock size desc of Player] sex throbs and releases a [cum load size of player] load, quickly gulped down by the feral inflatable.";
	else:
		say "     You suddenly feel the snake's head press against [if Cunt Count of player > 1]one of [end if]your [cunt size desc of player] puss[yfn]. [if Cunt Tightness of player < 5]You shudder as you doubt the creature will fit, but the inflatable surprises you by deflating until it is able to squeeze through, then reinflating to stretch you to your limit[else]The snake's head wiggles its way past your lower lips, then hisses and inflates to stretch you to your limit[end if]. A loud moan escapes your lips, quickly muffled when the inflatable snake's tail coils around your neck then rams into your [facename of player] mouth. Your teeth sink harmlessly on the appendage without piercing it, while it hisses and inflates until it is thick enough to stretch your cheeks.";
		say "     The inflatable snake pushes forward relentlessly, adapting its size to your [cunt size desc of player] vagina to avoid hurting you, while still making you feel as if it was stretching you wide. Its skin produces a tanning oil-like substance, but you are already so wet that this 'attention' is unnecessary. You can feel its blunt head hit your cervix again and again, and its powerful neck wiggle inside you. The snake brings you at a steady rythmn to the edge of orgasm, then beyond. Your vaginal muscles squeeze on the feral pool toy which wiggles and pushes even harder as a response[if player is male], while your [cock size desc of Player] throbs and releases a [cum load size of player] load, quickly gulped down into the synthetic creature's stomach (or what passes as one)[end if].";
	WaitLineBreak;
	if vorelevel > 1:
		say "     As you bask in the afterglow of your orgasm, you let your guard down for a moment. This is more than the snake needs to open its toothless jaws wide and clamp them on your head. You start struggling in a panic, but the plastic coils of the pool toy squeeze tight on you, cutting your breath and your strength. The inflatable snake swallows your [Body Size Adjective of Player] body [if scalevalue of player <= 2]without any difficulty[else]stretching its skin effortlessly to accomodate your size[end if]. Your exhausted body slowly travels down towards the inflatable's articial stomach. It is hot, damp, and cramped. The only thing you can see and feel are the smooth blue and semi-transparent walls of the reptile's inner body.";
		say "     Your descent stops eventually. You are squeezed from all directions by the snake's body. There is no doubt that your [bodyname of player] shape, including [if breast size of player > 0]your [breast size desc of player] breasts[else if player is male] your [cock size desc of player] cock[smn][else]gasping face[end if], are plainly visible from the outside. You feel the snake's stomach fluids coat you head to toe and, while they do not burn, you cannot shake a bad feeling about your predicament. It is at this moment that you start feeling shivers, and that your brain begins to fog. You only need a couple of encouragements from the snake's contractions and rumbling to make your [if player is herm]cock[smn] rock hard, and your cunt[sfn] moist[else if player is male]cock[smn] rock hard[else if player is female]your cunt[sfn] moist[else]body suffer through the woes of arousal[end if]. The danger of your situation quickly becomes clear to you.";
		WaitLineBreak;
		inflatableSnakeVore;
	else:
		say "     Before releasing you, the inflatable snake suddenly bites your face. Or rather, it clumps down its fangless mouth against your face, and forces you to breath a pink gas for several seconds. You feel your body get hot, your head dizzy, and your sanity slipping as strange thoughts work together with the nanites to relieve you of your humanity.";
		infect;

[TODO: inflatableSnakeVore 's capture state]
[Works as is:
Player will have a "snakeDrug" counter attached to them. This counter stacks up as the player remains in the snake's belly.
What snake drug does is decreasing the chances for the player to make any significant progress in the relatively short three struggles they have to make to get out.
* Success of the struggling action depends on a random chance of 1 in {number of stacks}
* 1 stack is applied at the start of the scene
* 1 stack is applied every turn (STA <= 10), every 2 turns (STA <= 13), every 3 turns (STA > 13)
* For fairness's sake, stacks max at 6 (1d6)
* Recover action will drop the number of stacks by 2 (INT < 10), 3 (INT < 14), or 4 (INT >= 14+)
* Upon orgasm, an inflatable snake change is made in the following order: skin, body, tail, cock, face
* Humanity drops by {stacks} every turn, and by 5 x 1 + number of Inflatable Snake body parts per orgasm
* Outside of the fight, 1 stack drops per turn (every turn rule). Meaning that if the player goes back in straight away and is defeated, escaping will be harder.
However, waiting will make them lose precious time for rescuing a certain vixen...
]

Section 1.1 - Bound state

to inflatableSnakeVore:
	psycheeval;
	libidoeval;
	[Variables specific to this bound state]
	setBodyPartCounter;
	if stamina of player <= 10:
		now snakeDrugTimer is 1;
	else if stamina of player <= 14:
		now snakeDrugTimer is 2;
	else:
		now snakeDrugTimer is 3;
	now snakeDrugTempTimer is snakeDrugTimer;
	increaseSnakeDrugCap; [Applying initial stack of snake drug]
	[End of specific variables]
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		now lustatt is Libido of player;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99: [lustatt is short for 'lust attribute'. When reaching 100, the player orgasms. This check uses > 99 to force orgasm even if lustatt is somehow above 100]
			inflatableSnakeVoreOrgasm; [Calls the function defined later on]
			increaseSnakeDrugCap;
			inflatableSnakeSanityOrgasm;
			LibidoReset;
			if bodyname of player is "Inflatable Snake" and player is pure:
				say "You have been completely turned into a inflatable snake. You hazily wiggle your new inflatable serpentine body, while the chemicals of your 'progenitor' finish brainwashing you into a happy reptilian pool toy.";
			else if inflatableSnakeBodyParts is 0:
				say "The nanites are hard a work to cope with your weakened state. In doing so, they start converting you into an inflatable snake.";
			else:
				say "The nanites keep their desperate and losing fight to keep you safe and sane, and by doing so infect you further with the inflatable snake straib.";
				infect;
				setBodyPartCounter;
		now enduring is false;
		if humanity of player < 1:
			say "     As you lose the last remnants of your sanity, you also lose consciousness. You enter into a half-orgasmic, half-comatose transe, while your body slowly finishes turning into a duplicate inflatable snake, filling the original creature's entire body like a second skin.";
			say "     Several hours later, something strange happens to the inflatable snake, as it crawls through the balls of the pit. Its body begins to 'mold' like a real snake would. But what really happens is that, instead of a new skin, it is actually your new self that sheds the confines of its progenitor. A few moments later, there is a new inflatable snake prowling the ball pit of the bouncy castle.";
			say "     Your 'father' quickly recovers from your unusual birth. Your feral mind instinctively understands that this ball pit is its territory. And so, you peacefully leave, to live your own life.";
			now humanity of Player is 0;
			trigger ending "Inflatable Snake Infection";
			end the story saying "You have become a new inflatable snake, prowling the bouncy castle and the nearby waters in search of preys to 'eat'.";
			now Trixieexit is 1;
		else:
			say "[inflatableSnakeVoreDesc]";
			say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
			say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
			say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
			say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Struggle: [orcastrugglebar][line break][run paragraph on]";
			decrease snakeDrugTempTimer by 1;
			if snakeDrugTempTimer is 0:
				increaseSnakeDrugCap;
			[Section of actions possible during the bind.]
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle": [player picked struggle]
				LineBreak;
				if a random chance of 1 in snakeDrugCounter succeeds:
					increase struggleatt by 1;
					if struggleatt < 3: [Determines if the cumulative "struggle attribute" < or equal to bound stage. If equal to, the player escapes. Each orgasm will remove a tick of struggleatt.]
						inflatableSnakeVoreStruggle;
						WaitLineBreak;
					else: [player escapes the bind]
						inflatableSnakeVoreEscape;
						LineBreak;
						cleanboundmemory;
						now lastsnakebeat is turns;
						now Trixieexit is 1;
						WaitLineBreak;
						next;
				else:
					inflatableSnakeVoreStruggleFail;
					WaitLineBreak;
					inflatableSnakeLust;
					inflatableSnakeSanityPassive;
				inflatableSnakeLust;
				inflatableSnakeSanityPassive;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2": [player picked oblige/abide]
				LineBreak;
				if obliging is true: [oblige]
					say "You eagerly accept your fate, and let the inflatable snake's stomach quickly erode your body and your mind.";
					WaitLineBreak;
					inflatableSnakeLust;
					now obliging is false;
					inflatableSnakeSanityPassive;
				else: [abide]
					say "you bathe in the corruptive drugs of the inflatable snake's digestive fluids, an eager and stupid smile on your face.";
					inflatableSnakeLust;
					WaitLineBreak;
					now obliging is true;
					inflatableSnakeSanityPassive;
			else: [player picked endure/recover]
				now enduring is true;
				LineBreak;
				if boundrecover is true: [recover]
					SanBoost inflatableSnakeBodyParts + 1;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity, recovering a small portion of your lost humanity.";
					WaitLineBreak;
					decrease snakeDrugTempTimer by 1;
					recoverSnakeDrugCap;
					inflatableSnakeLust;
					now boundrecover is false;
				else: [endure]
					say "     You attempt to steer your mind and resist the inflatable snake's corruption.";
					WaitLineBreak;
					inflatableSnakeLust;
					inflatableSnakeSanityPassive;

to increaseSnakeDrugCap:
	now snakeDrugTempTimer is snakeDrugTimer;
	if snakeDrugCounter < snakeDrugCounterCap:
		increase snakeDrugCounter by 1;
		say "[one of]Your mental state worsens as your body absorb more of the inflatable snake's toxin[or]More of the inflatable snake's stomach fluids enter your body, eating at your mental resistance[or]You feel yourself grow weaker in both body and mind as you macerate in the inflatable snake's fluids[at random].";

to recoverSnakeDrugCap:
	let x be 0;
	let adj be "";
	if intelligence of player <= 10:
		now x is 1;
		now adj is "a little";
	else if intelligence of player <= 14:
		now x is 2;
		now adj is "some";
	else:
		now x is 3;
		now adj is "a lot";
	decrease snakeDrugCounter by x;
	if snakeDrugCounter < 0:
		now snakeDrugCounter is 0;
	say "Your efforts at keeping your composure allows you to shrug off [adj] of the effects of the inflatable snake's chemicals.";

every turn when snakeDrugCounter > 0:
	decrease snakeDrugCounter by 1;

to setBodyPartCounter:
	now inflatableSnakeBodyParts is 0;
	if bodyname of player is "Inflatable Snake":
		increase inflatableSnakeBodyParts by 1;
	if facename of player is "Inflatable Snake":
		increase inflatableSnakeBodyParts by 1;
	if skinname of player is "Inflatable Snake":
		increase inflatableSnakeBodyParts by 1;
	if tailname of player is "Inflatable Snake":
		increase inflatableSnakeBodyParts by 1;

to say inflatableSnakeVoreDesc:
	say "The inflatable snake has swallowed you whole. You are now stuck inside the plastic monster's stomach, a dark [Body Size Adjective of Player] bulge slightly visible through the serpent's transparent 'skin'. Your [bodyname of player] body is soaked in the snake's artificial stomach juices seeping from the inner walls. While they are fortunately harmless on your skin, they make your skin extra sensitive, and erode your will to escape your predicament. The snake's body gurgles and squeezes against you, slowly stimulating your body with an arousing massage. You need to dig your way out of this rubber snake before you lose either the will or the stamina to do so!";

to inflatableSnakeVoreOrgasm: [Orgasm description and damage calculation.]
	say "The near constant squeezing and massaging of the inflatable snake gets to you and pushes you over the edge[one of].[or] once more.[stopping] Your mind blanks while your confined body shudders and erupts, [if player is herm]squirting a [cum load size of player] mix of vaginal fluid and cum[else if player is male]ejecting a [cum load size of player] load of cum[else]squirting a [cum load size of player] volume of fem-cum[end if], which ends up mixing with the snake's fluid in which you are slowly macerating.";

to inflatableSnakeVoreStruggle: [Orgasm description and damage calculation.]
	say "[one of]You stretch your arms and your legs against the snake's elastic skin... And make some progress! You stretch the synthetic reptile's stomach in all directions, and feel the material creak under your efforts.[or]You try to muster your will and struggle again... And focus the efforts of all your limbs into a single spot. Whether by making it gag or by ripping your way out, you [italic type]are[roman type] getting out of this stomach![or]You fight against the squeezing embrace and the unbearable heat of the rubber snake's stomach... You fight staunchly against the fake digestive organ's contractions, until it is unable to squeeze around you. You feel its inner walls weaken.[at random]";

to inflatableSnakeVoreStruggleFail: [Struggle action failed because of the drugs]
	say "[one of]You stretch your arms and your legs against the snake's elastic skin... Only to be interrupted by an intense tingling provoked by the rubbing of your skin against the plastic reptile's stomach walls. Your limbs instantly lose their strength[or]You try to muster your will and struggle again... But your mind is constantly distracted by the sensual contractions of the inflatable snake's stomach. You are unable to put up a coordinated effort.[or]You fight against the squeezing embrace and the unbearable heat of the plastic snake's stomach... Only to be defeated and immobilized by the snake's growling organ contracting tightly and temporarily squeezing you into an even more cramped space.[at random].";

to inflatableSnakeVoreEscape:
	say "Your hands suddenly pierce through the inflatable snake's body. You feel the creature deflate loudly and lose its strength. You hurriedly pull yourself out before the now flapping plastic smothers you. While your escape is bloodless, you are still liberally covered, head-to-toe, with the creature's mind-addling 'digestive' fluids. You crawl out of the ball pit in a hurry, but the creature seems to concede your victory. As you look back, you see the now flattened snake slither back in its hideout, probably to rest until the [bodyname of player] gaping hole in its stomach is healed.";

to say inflatedSnakeStruggleBar: [Displays struggle bar. The amount of struggle turns necessary to escape is always equal to the bound segment.]
	say "[close bracket]-[if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";

to inflatableSnakeLust: [Passively increases the player's lust attribute. Infected body parts increase the per-turn lust gain.]
	let obladj be 1;
	if obliging is true:
		now obladj is 2; [Value to multiply lust gain by if obliging.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide lust gain by if enduring.]
	let lustAdjustModifier be 2;
	if inflatableSnakeBodyParts > 1:
		increase lustAdjustModifier by 1;
	if inflatableSnakeBodyParts > 3:
		increase lustAdjustModifier by 1;
	LibidoBoost( (10 + (inflatableSnakeBodyParts * 2) + (lustadjust * lustAdjustModifier)) * obladj) / endureadj;

to inflatableSnakeSanityPassive: [Passively decreases the player's sanity attribute. Infected body parts increase the per-turn lust gain.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if inflatableSnakeBodyParts is 0 and ((enduring is false and a random chance of 1 in 2 succeeds) or (enduring is true and a random chance of 1 in 4 succeeds)):
		SanLoss(1);
	if  inflatableSnakeBodyParts is 1 and (enduring is false or (enduring is true and a random chance of 1 in 2 succeeds)):
		SanLoss(1);
	else:
		SanLoss((inflatableSnakeBodyParts + psycheadjust) / endureadj);

to inflatableSnakeSanityOrgasm: [Causes sanity to sharply plummet upon orgasm.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if struggleatt > 0, decrease struggleatt by 1;
	let psycheModifier be 1;
	if inflatableSnakeBodyParts > 2:
		increase psycheModifier by 1;
	SanLoss((inflatableSnakeBodyParts * 2 + psycheadjust * psycheModifier) / endureadj);

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Inflatable Snake"; [name of the overall species of the infection, used for children, ...]
	add "Inflatable Snake" to infections of ReptileList;
	add "Inflatable Snake" to infections of LatexList;
	add "Inflatable Snake" to infections of ToyList;
	add "Inflatable Snake" to infections of TaperedCockList;
	add "Inflatable Snake" to infections of InternalCockList;
	add "Inflatable Snake" to infections of TailList;
	add "Inflatable Snake" to infections of SerpentineList;
	add "Inflatable Snake" to infections of NotBreathingList;
	add "Inflatable Snake" to infections of FeralmindList;
	add "Inflatable Snake" to infections of TailweaponList;
	add "Inflatable Snake" to infections of VoreList;
	now Name entry is "Inflatable Snake";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]snake winds itself around your leg, squeezing as it tries to scale your body[or]transparent snake snaps at your arm as you try to attack it[or]As you attack, the snake whips its tail around your arms and latches on, squeezing them powerfully[at random]!";
	now defeated entry is "[beattheinflatablesnake]";
	now victory entry is "[losetoinflatablesnake]";
	now desc entry is "     The Inflatable Snake circles around you, like a shark smelling blood in the water. Judging by the length of the trail, the creature is as large as an adult anaconda, if not more. It seems to aim to knot around your body, and squeeze you its squeaky coils."; [ Description of the creature when you encounter it. ]
	now face entry is "now a cartoonish snake's head, with big beady eyes and a forked tongue slipping from your ever-smiling jaws to sniff the air";
	now body entry is "a strange mix of man, serpent, and pool toy, a squeaky, flexible, and slightly bloated body that feels filled with air rather than flesh and bones, capable of slithering across the ground and float on water. You still retain your arms and legs, but they are in the same state as your body, and ending in blunt clawed digits. You have a slit which automatically conceals your genitals when you begin to slither, but leaves them out and exposed otherwise";
	now skin entry is "transluscent and squeaky, like a pool toy. It has a bright green colored, with stripes of an equally vivid yellow. Your skin is smooth to the touch.";
	now tail entry is "You have a long, snake's tail extending from your hips. It is made of bright green and yellow rubber and filled with air, as if the tail of a pool toy was attached to your backside. It constantly squeaks each time you walk, and turns into a cacophony of squeaks whenever you get excited.";
	now cock entry is "[one of]hemipenis[or]serpentine[at random]";
	now face change entry is "your head morphs into a triangular shape, and bloats at the same time. Your ears disappear down to small holes and your eyes move to the sides of your serpent head to form beady, black orbs. There is a band of bright color around your neck and on the underside of your jaw, which elongates into the friendly and playful smile of a pool toy.";
	now body change entry is "your spine pops repeatedly, extending and growing at it becomes more flexible and squaky. As your body becomes more serpentine, you retain your limbs, but they become slender and flexible as well. You are able to tuck against your sides to allow your snake body to slide on the water or swim as you prefer at any moment. Your hands and feet gain blunt claws at the end of their digits";
	now skin change entry is "it turns into bright green and yellow plastic, smooth to the touch and squeaking everytime your joints move"[ Skin TF text, format as "Your skin tingles as [skin change entry]. ];
	now ass change entry is "your hips shift and pop, your ass almost disappearing away as a long transparent snake tail extends in its place";
	now cock change entry is "your shaft becomes slick and pointed, much akin to that of a snake or lizard, and transparent, much akin to that of a lewd pool toy.";
	now str entry is 10;
	now dex entry is 18;
	now sta entry is 10;
	now per entry is 15;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "nochange"; [ Invalid sex entry value, resulting in no changes to gender ]
	now HP entry is 20; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 2; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is true;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flexible[or]slender[or]serpentine[at random]";
	now type entry is "[one of]reptilian[or]serpentine[or]snake-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true; [We manually manage the infections]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "bearhugger60"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"bearhugger60"	retaliation rule	--	--	bearhug rule	60	--	--	--	--	--

Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Inflatable Snake Infection"	"Infection"	""	Snake Infection rule	1000	false

This is the Inflatable Snake Infection rule:
	if Player has a body of "Inflatable Snake":
		trigger ending "Inflatable Snake Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Your mind fails you, as you become another specimen of the bizarre fauna of the Bouncy Castle. As the military reclaims the city, you manage to escape. Ever since then, you prawl the beaches of the coastline, pouncing on the swimmers and surfurs bold enough to venture in your territory. Earsay and blurry pictures create an urban legend around your being, but you are too far gone to realize it, or even care.";
		else:
			if FaceName of Player is "Inflatable Snake" and SkinName of Player is "Inflatable Snake" and TailName of Player is "Inflatable Snake" and CockName of Player is "Inflatable Snake":
				say "     The military recue gets you out of the infected city, but you are now too inhuman looking for reintegrating with civilization. Fortunately, your cartoonish snake appearance catches the eye of an audacious producer. [italic type][name of player] the Snake[roman type] quickly becomes a well-liked children show, where you and other unfortunate infected inflatable victims teach kids about counting and the alphabet. Of course, your [italic type]other[roman type] shows, with your adult 'fans' is a well-kept secret.";
			else:
				say "     The military rescue gets you out of the infected city, but not unchanged. Having partially become a serpentine pool toy, you have struggle fitting in and finding a decent job. One day, as you stop by a thrift store, you have an epiphany. A few weeks and a couple transactions later, you are the proud owner of a beach and swimming pool equipment store, by the seafront. Your novelty inflatables become rather popular, partly thanks to the fact that you and your employees are inflatable infecteds and give the place its 'charm'. The way you procure the products you sell is a well-kept secret, however...";


Inflatable Snake ends here.
