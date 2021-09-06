Version 1 of Inflatable Snake by Kernog begins here.
[Time spent: 4h]

"Inflatable snake enemy/situation. The enemy roams in the ball pit room of the Bouncy Castle. It attacks on entering the room. The snake deflates upon defeat, providing a short respite to the player. If the player loses the battle, the snake vores them (or simply milks them/fucks them if vore is inactive)

Version 1: Enemy, basic scenes (encounter, victory, defeat, humanity game over), timer - DONE
Version 2: capture state (vore)
Version 3: Interaction with Vixen quest

Encounter trigger should be based on the Great Hall orca encounter.
Consider also using her bound state"

Section 0 - Variables

lastsnakebeat is a number that varies. lastsnakebeat is usually 255.
snakeDrugCounter is a number that varies. snakeDrugCounter is usually 0.
snakeDrugCounterCap is a number. snakeDrugCounterCap is always 6. [I define the cap here to allow easy modification for balance]
snakeDrugTimer is a number that varies. snakeDrugTimer is usually 3.
snakeDrugTempTimer is a number that varies. snakeDrugTempTimer is usually 3.

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
		say "     The inflatable snake pushes forward relentlessly, adapting its size to your ass to avoid hurting you, while still making you feel as if it was stretching you wide. Its skin produces a tanning oil-like substance, easing its squeaky back-and-forths. You can feel its blunt head hit [if player is not male]your sensitive spots[else]your prostate[end if] again and again, and its powerful neck wiggle inside you. The snake brings you at a steady rythmn to the edge of orgasm, then beyond. Your ass squeezes on the feral pool toy which wiggles and pushes even harder as a response[if player is male], while your [ball size] throb and release a [cum load size of player] load, quickly gulped down into the synthetic creature's stomach (or what passes as one)[end if].";
	else if Player is male or (player is herm and a random chance of 1 in 2 succeeds):
		say "     A moan escapes your lips as you feel the snake's maw open wide and swallow [if cocks of player > 1]all of your cocks[else]your cock[end if] in its stretchable maw. It effortlessly swallow your [cock size desc of player] shaft[smn] all the way down and you shudder, wondering how far its plastic jaws can stretch. You lift your head to check what is happening, only for the inflatable snake's tail to coil around your neck, pin your head down, then ram itself into your [facename of player] mouth. Your teeth sink harmlessly on the appendage without piercing it, while it hisses and inflates until it is thick enough to stretch your cheeks.";
		say "     The inflatable snake plays with its surprisingly powerful throat muscles to suck and massage your [cock size desc of player] dick[smn] with terrifying efficiency. You moan loudly and thrash around, but the pool toy's iron grip and another inflation of its invading tail make short work of your resistance. The snake brings you at a steady rythmn to the edge of orgasm, then beyond. Your [ball size] throb and release a [cum load size of player] load, quickly gulped down by the feral inflatable.";
	else:
		say "     You suddenly feel the snake's head press against [if cunts of player > 1]one of [end if]your [cunt size desc of player] puss[yfn]. [if Cunt Tightness of player < 5]You shudder as you doubt the creature will fit, but the inflatable surprises you by deflating until it is able to squeeze through, then reinflating to stretch you to your limit[else]The snake's head wiggles its way past your lower lips, then hisses and inflates to stretch you to your limit[end if]. A loud moan escapes your lips, quickly muffled when the inflatable snake's tail coils around your neck then rams into your [facename of player] mouth. Your teeth sink harmlessly on the appendage without piercing it, while it hisses and inflates until it is thick enough to stretch your cheeks.";
		say "     The inflatable snake pushes forward relentlessly, adapting its size to your [cunt size desc of player] vagina to avoid hurting you, while still making you feel as if it was stretching you wide. Its skin produces a tanning oil-like substance, but you are already so wet that this 'attention' is unnecessary. You can feel its blunt head hit your cervix again and again, and its powerful neck wiggle inside you. The snake brings you at a steady rythmn to the edge of orgasm, then beyond. Your vaginal muscles squeeze on the feral pool toy which wiggles and pushes even harder as a response[if player is male], while your [ball size] throb and release a [cum load size of player] load, quickly gulped down into the synthetic creature's stomach (or what passes as one)[end if].";
	WaitLineBreak;
	if vorelevel > 1:
		inflatedsnakevore;
	else:
		say "     Before releasing you, the inflatable snake suddenly bites your face. Or rather, it clumps down its fangless mouth against your face, and forces you to breath a pink gas for several seconds. You feel your body get hot, your head dizzy, and your sanity slipping as strange thoughts work together with the nanites to relieve you of your humanity.";
		infect;

[TODO: inflatedsnakevore 's capture state]
[Works as is:
Player will have a "snakeDrug" counter attached to them. This counter stacks up as the player remains in the snake's belly.
What snake drug does is decreasing the chances for the player to make any significant progress in the relatively short three struggles they have to make to get out.
* Success of the struggling action depends on a random chance of 1 in {number of stacks}
* 1 stack is applied at the start of the scene
* 1 stack is applied every turn (STA <= 10), every 2 turns (STA <= 13), every 3 turns (STA > 13)
* For fairness's sake, stacks max at 6 (1d6)
* Recover action will drop the number of stacks by 1 (INT < 10), 2 (INT < 14), or 3 (INT >= 14+) and delay the increase of the stack counter by 1 turn
* Upon orgasm, an inflatable snake change is made in the following order: skin, body, tail, cock, face
* Humanity drops by {stacks} every turn, and by 5 x 1 + number of Inflatable Snake body parts per orgasm
* Outside of the fight, 1 stack drops per turn (every turn rule). Meaning that if the player goes back in straight away and is defeated, escaping will be harder.
However, waiting will make them lose precious time for rescuing a certain vixen...
]

Section 1.1 - Bound state

to inflatedsnakevore:
	psycheeval;
	libidoeval;
	[Variables specific to this bound state]
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
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		[Lust increase]
		let bodyPartCounter be 0;
		if bodyname of player is "Inflated Snake":
			increase bodyPartCounter by 1;
		if facename of player is "Inflated Snake":
			increase bodyPartCounter by 1;
		if skinname of player is "Inflated Snake":
			increase bodyPartCounter by 1;
		if tailname of player is "Inflated Snake":
			increase bodyPartCounter by 1;
		[No cockname for balance purposes]
		if enduring is true:
			LibidoBoost(2 * bodyPartCounter + lustadjust);
		else:
			LibidoBoost(4 * bodyPartCounter + (lustadjust * 2));
		if lustatt > 99: [lustatt is short for 'lust attribute'. When reaching 100, the player orgasms. This check uses > 99 to force orgasm even if lustatt is somehow above 100]
			inflatedSnakeVoreOrgasm; [Calls the function defined later on]
			increaseSnakeDrugCap;
			now lustatt is 10 * bodyPartCounter;
			if bodyname of player is "Inflated Snake" and player is pure:
				say "Already an inflated snake.";
				SanLoss(12 + psycheadjust); [an orgasm when pure snake is catastrophic on your psyche]
			else:
				say "Nanites hard at work.";
				SanLoss(2 * bodyPartCounter + psycheadjust;
				infect;
		else if enduring is true: [Decreases lust gained if the player selects enduring.]
			SanLoss(bodyPartCounter);
		else:
			increase lustatt by 4 * bodyPartCounter + (lustadjust * 2);
			SanLoss(2 * bodyPartCounter + psycheadjust);
		now enduring is false;
		if humanity of player <= 0:
					trigger ending "Inflated Snake Infection";
					end the story saying "Your will succomb to the aphrodisiac vapors of the inflatable snake's stomach. You fall in a state of stupor, while the nanites finish adjusting your body and your mind to your new nature. Several hours later, the inflatable snake 'molds', or rather it lets you crawl out of its body as a fully-formed newborn of its kin, ready to prowl the Bouncy Castle in search of prey.";
					now Trixieexit is 1;
		else:
			decrease snakeDrugTempTimer by 1;
			if snakeDrugTempTimer is 0:
				increaseSnakeDrugCap;

	else:
		[TODO: Increase of lust. SnakeDrug counter. Standard actions]

to increaseSnakeDrugCap:
	now snakeDrugTempTimer is snakeDrugTimer;
	if snakeDrugCounter < snakeDrugCounterCap:
			increase snakeDrugCounter by 1;

to inflatedsnakevoreorgasm: [Orgasm description and damage calculation.]
	say "Orgasm";




Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Inflatable Snake"; [name of the overall species of the infection, used for children, ...]
	add "Inflatable Snake" to infections of ReptileList;
	add "Inflatable Snake" to infections of FurryList;
	add "Inflatable Snake" to infections of FeralList;
	add "Inflatable Snake" to infections of NatureList;
	add "Inflatable Snake" to infections of TaperedCockList;
	add "Inflatable Snake" to infections of InternalCockList;
	add "Inflatable Snake" to infections of SerpentineList;
	add "Inflatable Snake" to infections of FeralmindList;
	add "Inflatable Snake" to infections of TailList;
	add "Inflatable Snake" to infections of OviImpregnatorList;
	add "Inflatable Snake" to infections of TailweaponList;
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
"Inflated Snake Infection"	"Infection"	""	Snake Infection rule	1000	false

This is the Inflated Snake Infection rule:
	if Player has a body of "Inflated Snake":
		trigger ending "Inflated Snake Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Your mind fails you, as you become another specimen of the bizarre fauna of the Bouncy Castle. As the military reclaims the city, you manage to escape. Ever since then, you prawl the beaches of the coastline, pouncing on the swimmers and surfurs bold enough to venture in your territory. Earsay and blurry pictures create an urban legend around your being, but you are too far gone to realize it, or even care.";
		else:
			if FaceName of Player is "Inflated Snake" and SkinName of Player is "Inflated Snake" and TailName of Player is "Inflated Snake" and CockName of Player is "Inflated Snake":
				say "     The military recue gets you out of the infected city, but you are now too inhuman looking for reintegrating with civilization. Fortunately, your cartoonish snake appearance catches the eye of an audacious producer. [italic type][name of player] the Snake[roman type] quickly becomes a well-liked children show, where you and other unfortunate infected inflatable victims teach kids about counting and the alphabet. Of course, your [italic type]other[roman type] shows, with your adult 'fans' is a well-kept secret.";
			else:
				say "     The military rescue gets you out of the infected city, but not unchanged. Having partially become a serpentine pool toy, you have struggle fitting in and finding a decent job. One day, as you stop by a thrift store, you have an epiphany. A few weeks and a couple transactions later, you are the proud owner of a beach and swimming pool equipment store, by the seafront. Your novelty inflatables become rather popular, partly thanks to the fact that you and your employees are inflatable infecteds and give the place its 'charm'. The way you procure the products you sell is a well-kept secret, however...";


Inflatable Snake ends here.
