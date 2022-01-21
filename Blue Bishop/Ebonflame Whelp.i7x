Version 1 of Ebonflame Whelp by Blue Bishop begins here.
[ Version 1.0 - Initial Replacement for Ash Whelp - Blue Bishop ]

"Adds an Ebonflame Whelp to Flexible Survival."
[Inspired by the Ash Whelp]

ebneuter is an action applying to nothing.
ebneuterswitch is a truth state that varies.
birthedwhelp is a truth state that varies. birthedwhelp is usually false.

understand "neuter ebonflame" as ebneuter.

carry out ebneuter:
	if ebneuterswitch is false:
		say "     Ebonflame Pregnancy Mechanics: OFF";
		now ebneuterswitch is true;
	else:
		say "     Ebonflame Pregnancy Mechanics: ON";
		now ebneuterswitch is false;

Section 1 - Creature Responses

to say ebwhelpvic:
	if ebneuterswitch is true:
		if anallevel is not 0 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
			now tempnum is 2;
		else if Player is female and a random chance of 3 in 4 succeeds:
			now tempnum is 1;
		else:
			now tempnum is 0;
	else:
		if (Cunt Count of Player is 0 and anallevel > 1 and player is male_vacant) and ((anallevel is 2 and (player is kinky or player is mpreg_ok)) or anallevel is 3):
			now tempnum is 2;
		else if Player is female and player is fem_vacant:
			now tempnum is 1;
		else:
			now tempnum is 0;
	if HP of Player > 0:
		say "     Though it's a rather shameful gesture, you choose to surrender to";
	else:
		say "     Falling to your knees, you're finally overwhelmed by";
	say " [if birthedwhelp is true]your recent offspring[else]the little whelp[end if], the creature chittering and chirping in a feeble expression of dominance at its[if HP of Player > 0] willing[end if] victim";
	if tempnum is 2:
		say ". Completely without restraint the lizard makes a beeline for your ass. Nipping and clawing at your hips, it's little legs flit about in a weak attempt at removing any obstruction before properly positioning itself. [if HP of Player > 0]Obliging the small dragon, you eventually help him get him properly positioned[else]You weakly try to push the small dragon off of you, but this only invites him to nip and claw at you into submission, eventually getting himself into position[end if].";
		say "     With a tainted urgency, you immediately feel yourself [if scalevalue of Player < 4]impaled[else]stabbed[end if] by the tiny monster's instantly erect dick down your barely ready asshole, burying it's long, tapered length down your hole until he's slapping his smooth, scaled crotch between your thighs. You feel the thing, like a searing hot poker, worm its way around your innards, sputtering its molten-hot precum[if scalevalue of Player < 4] deep[end if] inside you. Absolutely dead set on weakly pounding your ass into oblivion, you have to endure the sounds of its loud, wanton squealing filling air, hardly drowning out his increasingly wet motions.";
		say "     [if HP of Player > 0]Barely given time to become aroused from[else]Gradually aroused by[end if] this[if birthedwhelp is true], twisted[end if] embarrassing display, [if Player is male]your cock[smn] ache[smv] against the open air, driving you to stroke yourself through all this[else if Player is female]your cunt[sfn] ache[sfv] against the open air, driving you to fondle yourself through all this[else]much in spite of your lack of outlet[end if]. It doesn't take long for the whelp to finally howl out, clinging to you tightly as you're pumped with gout after successive gout of his scalding load. His release seems so excessive, you're soon made dizzy with the sheer volume[if scalevalue of Player < 3], body visibly bloating to accommodate all of it[end if]";
		if Libido of Player > 30 and player is not neuter:
			say ". The whole ordeal is more than enough to set you off, staining the ground with your [if Player is male][Cum Load Size of Player] load[else] juices[end if]";
		say ".";
		say "     Completely spent, the whelp chirps weakly and eventually flops off of you and onto the ground, the audibly wet sound of its oversized cock pulling free of your hole filling the air. After a few seconds, crawling away from it, it slowly pulls itself up and flies off into the distance. Apparently satisfied[if birthedwhelp is true] with fucking its own parent[end if], he leaves you to recover from being so thoroughly filled.";
		if ebneuterswitch is false:
			say "     [italic type]Forced to feel your bloated[if scalevalue of Player < 3], practically pregnant-looking[end if] belly, the effect of the creature's cum [one of]seems to linger[or]lingers[stopping] longer than it normally should. [one of]You have a bad feeling about what just happened[or][if HP of Player > 0]Here we go[else]Not[end if] again[stopping]...[roman type][line break]";
			now mpreghijack is true;
			now ebwhelphijack is 2;
			now hijackgestation is 8;
		CreatureSexAftermath "Player" receives "AssFuck" from "Ebonflame Whelp";
	else if tempnum is 1:
		say ". Completely without restraint the lizard makes a beeline for your ass. Nipping and clawing at your hips, it's little legs flit about in a weak attempt at removing any obstruction before properly positioning itself. [if HP of Player > 0]Obliging the small dragon, you eventually help him get him properly positioned[else]You weakly try to push the small dragon off of you, but this only invites him to nip and claw at you into submission, eventually getting himself into position[end if].";
		say "     With a tainted urgency, you immediately feel yourself [if scalevalue of Player < 4]impaled[else]stabbed[end if] by the tiny monster's instantly erect dick up[if Cunt Count of Player > 1] one of[end if] your barely ready cunt[sfn], burying it's long, tapered length down your hole until he's slapping his smooth, scaled crotch between your thighs. You feel the thing, like a searing hot poker, worm its way around your innards, sputtering its molten-hot precum[if scalevalue of Player < 4] deep[end if] inside you. Absolutely dead set on weakly pounding your hole into oblivion, you have to endure the sounds of its loud, wanton squealing filling air, hardly drowning out his increasingly wet motions.";
		say "     [if HP of Player > 0]Barely given time to become aroused from[else]Gradually aroused by[end if] this[if birthedwhelp is true], twisted[end if] embarrassing display, [if Player is male]your cock[smn] ache[smv] against the open air, driving you to stroke yourself through all this[else]your pussy squeezing tightly against the terribly hot invader[end if]. It doesn't take long for the whelp to finally howl out, clinging to you tightly as you're pumped with gout after successive gout of his scalding load. His release seems so excessive, you're soon made dizzy with the sheer volume[if scalevalue of Player < 3], body visibly bloating to accommodate all of it[end if]";
		if Libido of Player > 30:
			say ". The whole ordeal is more than enough to set you off, staining the ground with your [if Player is male][Cum Load Size of Player] load[else] juices[end if]";
		say ".";
		say "     Completely spent, the whelp chirps weakly and eventually flops off of you and onto the ground, the audibly wet sound of its oversized cock pulling free of your hole filling the air. After a few seconds, crawling away from it, it slowly pulls itself up and flies off into the distance. Apparently satisfied[if birthedwhelp is true] with fucking its own parent[end if], he leaves you to recover from being so thoroughly filled.";
		if ebneuterswitch is false:
			say "     [italic type]Forced to feel your bloated[if scalevalue of Player < 3], practically pregnant-looking[end if] belly, the effect of the creature's cum [one of]seems to linger[or]lingers[stopping] longer than it normally should. [one of]You have a bad feeling about what just happened[or][if HP of Player > 0]Here we go[else]Not[end if] again[stopping]...[roman type][line break]";
			now preghijack is true;
			now ebwhelphijack is 1;
			now hijackgestation is 8;
		CreatureSexAftermath "Player" receives "PussyFuck" from "Ebonflame Whelp";
	else:
		say ". You're barely given a chance to ready yourself before he presses the base of his cock firmly against your face, flooding your senses with the tainted aroma of the creature's heady scent. He clearly wants you to suck him off, but either by some weird instinct or by a particularly sadistic tendency, he's not hard in the slightest, meaning you'd have to oblige him more than usual to suck him off.";
		say "     [if HP of Player > 0]Conceding to this shameful relegation, you lower[else]Not wanting to be the subject of the creature's constant clawing and squealing, you eventually concede to this shameful relegation, lowering[end if] your head to engulf the pointed tip of the whelp's jet-black dick, the insistence of the tiny creature forcing you to swallow down more and more of its substantive length until your lips are flush against his coarse scales. [if scalevalue of Player > 3]Massive form sucking off this tiny beast, your taste is awash in the sting of his scalding precum, the creature starting to cling[else]Struggling to breathe as your taste is awash in the sting of his scalding precum, the creature starts clinging[end if] to you as tightly as it possibly can, dead set on making sure you never let up.";
		say "     Your tongue [if HP of Player > 0 or player is submissive]caressing[else]forced to writhe[end if] along its slick girth, the flaccid tool has more than enough yield to invite your maw's[if HP of Player < 1 and player is not submissive] involuntary[end if] squeezing, milking endeavors, causing the twisted critter to chitter and howl slowly in bliss. [if Player is male]Driven by your rising arousal to jerk yourself off[else if Player is female]Driven by your rising arousal to fondle yourself[else]Genderless body wracked by an insatiable need[end if], you feel his molten precum sputter [if scalevalue of Player < 4]into your stomach[else]down your throat[end if], yourself lost in a haze of growing need[if scalevalue of Player < 4] and slight suffocation[end if].";
		say "     Your[if HP of Player < 1] forced[end if] attendance is eventually rewarded when the whelp cries out, searing rod bulging significantly and your insides are doused with successive barrages of the monsters oversized load. It seems likely so much that you're not rightly sure how the little thing could even carry it all, stomach [if scalevalue of Player < 3]visibly bulging[else]aching painfully[end if] with the glowing precum.";
		say "     So exhausted and spent, the whelp chittering feebly as he catches his breath, he doesn't seem to notice or care that you're still being forced to deepthroat his entire organ, only choosing to finally pull free when he flies off into the distance. Finally left to recover and gasp for air, you groan and writhe from the excessive amount of cum you were forced to swallow. Eventually, you climb to your feet finally free to go about your business once more.";
		if ebwhelphijack > 0:
			say "     [italic type]Still bloated from the original whelp's violation, consuming all this burning fluid seems to have worsened your situation by accelerating your twisted offspring's growth...[roman type][line break]";
			decrease hijackgestation by 1;
		CreatureSexAftermath "Player" receives "OralCock" from "Ebonflame Whelp";

to say ebwhelpdef:
	if birthedwhelp is true:
		say "     Your child lets out a mournful cry before weakly making a break for it, clumsily darting off into the distance. Though you may have fended yourself off from your offspring, you're not sure adding to those whelp's numbers is much of a victory...";
	else:
		say "     Letting out one last, mournful cry, the whelp finally falls to the ground with a soft thud. Faintly chirping and stirring, it looks like it'll take a while to recover. You choose this time to go about your business once more, before it wakes.";

to say ebwhelpdesc:
	setmongender 3; [creature is male]
	now firebreathcount is 0;
	now firebreathready is false;
	if birthedwhelp is false:
		say "     The sound of a low squeal filling the air, [one of]what appears to be a small dragon[or]an ebonflame whelp[stopping] dives at you. No more than maybe two to three feet tall and covered in coarse, deeply black and purple scales, the creature seems to struggle just to keep itself airborne with its meager wings. More distractingly, [one of]you nearly mistake its disproportionately large, black cock for its tail,[or]it's disproportionately large, black cock[stopping] shamelessly exposed in the open air, the tapered, dangling thing oozing its glowing, molten-colored fluid.";
		say "     The tiny thing is a noise of growls and chirps as it claws at you, forcing you to bat it away. Reeling back a few feet, the relentless little whelp only charges at you again!";
	else:
		say "     Still lowly squealing, the ebonflame whelp wheels around to face its [']mother['] before it immediately dives at you!";
		say "     No more than maybe two to three feet tall and covered in coarse, deeply black and purple scales, the creature seems to struggle just to keep itself airborne with its meager wings. More distractingly, it's disproportionately large, black cock shamelessly exposed in the open air, the tapered, dangling thing oozing its glowing, molten-colored fluid.";
		say "     The tiny, noisy thing clearly doesn't behave like normal offspring, attacking its parent with the clear intent of repeating the cycle, and forcing you to bat it away. Reeling back a few feet, the relentless little whelp only charges at you again!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Ebonflame Dragon"; [name of the overall species of the infection, used for children, ...]
	add "Ebonflame Whelp" to infections of ReptileList;
	add "Ebonflame Whelp" to infections of FurryList;
	add "Ebonflame Whelp" to infections of FeralList;
	add "Ebonflame Whelp" to infections of MythologicalList;
	add "Ebonflame Whelp" to infections of MaleList;
	add "Ebonflame Whelp" to infections of BarbedCockList;
	add "Ebonflame Whelp" to infections of TaperedCockList;
	add "Ebonflame Whelp" to infections of InternalCockList;
	add "Ebonflame Whelp" to infections of BipedalList;
	add "Ebonflame Whelp" to infections of FlightList;
	add "Ebonflame Whelp" to infections of TailList;
	add "Ebonflame Whelp" to infections of OviImpregnatorList;
	add "Ebonflame Whelp" to infections of FirebreathList;
	add "Ebonflame Whelp" to infections of TailweaponList;
	now Name entry is "Ebonflame Whelp";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The ebonflame whelp[or]The creature[or]The whelp[or]He[at random] [one of]clings to your [bodytype of Player] form, nipping and clawing at you until you pry it free and send it flying back[or]immediately tries to fuck you, forcing you pull it from your back and toss him away[or]holds onto one of your limbs, biting and screeching at you until you fling him off[at random].";
	now defeated entry is "[ebwhelpdef]";
	now victory entry is "[ebwhelpvic]";
	now desc entry is "[ebwhelpdesc]";
	now face entry is "NA";
	now body entry is "NA";
	now skin entry is "NA";
	now tail entry is "NA.";
	now cock entry is "NA";
	now face change entry is "NA";
	now body change entry is "NA";
	now skin change entry is "NA";
	now ass change entry is "NA";
	now cock change entry is "NA";
	now str entry is 14;
	now dex entry is 11;
	now sta entry is 11;
	now per entry is 10;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Both";
	now HP entry is 28;
	now lev entry is 2;
	now wdam entry is 6;
	now area entry is "Capitol";
	now Cock Count entry is 1;
	now Cock Length entry is 10;
	now Ball Size entry is 3;
	now Nipple Count entry is 2;
	now Breast Size entry is 19;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 10; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 10;
	now lootchance entry is 10;
	now loot entry is "ebonflame scale";
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;
	now body descriptor entry is "NA";
	now type entry is "NA";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "firebreath";
	now BannedStatus entry is false;

Section 3 - Miscellaneous

[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Ebonflame Whelp Infection"	"Infection"	""	Ebonflame Whelp Infection rule	1000	false

This is the Ebonflame Whelp Infection rule:
	if Player has a body of "Ebonflame Whelp" and humanity of Player < 10:
		trigger ending "Ebonflame Whelp Infection";
		say "NA." [placeholder for bound state loss]
]

to ebwhelphijackroutine:
	LineBreak;
	if ebwhelphijack is 1 and Cunt Count of Player is 0:
		say "[italic type]Your lack of a vaginal passage causes you to feel as though your insides are shifting in strange and somewhat uncomfortable ways...[roman type][line break]";
		now preghijack is false;
		now ebwhelphijack is 2;
		now mpreghijack is true;
	if hijackgestation < 3: [LATE]
		say "Your [bodytype of Player] belly protrudes in a firm dome of pregnancy, full of the violently churning, unborn being, becoming increasingly desperate to escape. You don't feel hindered despite being bloated but the constant, burning sensation of your corrupted offspring torments you to no end.";
	else if hijackgestation < 5: [MIDDLE]
		say "Your [bodydesc of Player] body is somewhat rounded by the effects of your terribly twisted pregnancy. It's progressing at what would seem to be a terrifyingly fast speed, even for these circumstances...";
	else: [EARLY]
		say "[one of]You feel an ominous shifting of something inside[or]An unsettling warmth churns through[at random] your lower belly...";
	if hijackgestation < 0:
		if preghijack is true:
			now tempnum is 1;
		else:
			now tempnum is 2;
		say "     Unable to take it for any longer, you finally double over and cry out. You can feel the tainted offspring writhing and clawing itself through you [if tempnum is 2]bowels[else]birth canal[end if] in desperate need for escape, wracking you with waves of pain for each successive inch until it finally breaks away, air suddenly filling with the low squealing of an ebonflame whelp.";
		if tempnum is 2:
			say "     [if scalevalue of Player > 3 or player is twistcapped]You're thankfully stretchy enough for the monster to pull itself free of your[else]Tears strained from your eyes, the monster stretches you to your limits to pull itself free of your tight[end if] ring";
		else:
			say "     [if Cunt Depth of Player > 14]You're thankfully stretchy enough for the monster to pull itself free of your[else]Tears strained from your eyes, the monster stretches you to your limits to pull itself free of your tight[end if] cunt";
		say ", a flood of molten-colored fluid following in its wake as it lands on the ground with an audible splat. The loud, messy little dragon only needing a few second to acclimate to its exposure before getting airborne...";
		if ebwhelphijack is 1:
			now preghijack is false;
		else:
			now mpreghijack is false;
		now ebwhelphijack is 0;
		now birthedwhelp is true;
		WaitLineBreak;
		challenge "Ebonflame Whelp";
		now birthedwhelp is false;
		now tempnum is 0;

Ebonflame Whelp ends here.
