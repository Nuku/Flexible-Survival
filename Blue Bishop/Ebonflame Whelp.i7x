Version 1 of Ebonflame Whelp by Blue Bishop begins here.
[ Version 1 - Initial Replacement for Ash Whelp]

"Adds an Ebonflame Whelp to Flexible Survival."
[Inspired by the Ash Whelp]

When Play begins:
	add "Ebonflame Whelp" to infections of guy;
	add "Ebonflame Whelp" to infections of feral;

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

Section 1 - Monster Responses

to say ebwhelpvic:
	if ebneuterswitch is true:
		if anallevel is not 0 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
			now tempnum is 2;
		else if cunts of player > 0 and a random chance of 3 in 4 succeeds:
			now tempnum is 1;
		else:
			now tempnum is 0;
	else:
		if (cunts of player is 0 and anallevel is not 1 and player is male_vacant) and ((anallevel is 2 and ("Kinky" is listed in feats of player or "Mpreg" is listed in feats of player)) or anallevel is 3):
			now tempnum is 2;
		else if cunts of player > 0 and player is fem_vacant:
			now tempnum is 1;
		else:
			now tempnum is 0;
	if hp of player > 0:
		say "     Though it's a rather shameful gesture, you choose to surrender to";
	else:
		say "     Falling to your knees, you're finally overwhelmed by";
	say " [if birthedwhelp is true]your recent offspring[else]the little whelp[end if], the creature chittering and chirping in a feeble expression of dominance at its[if hp of player > 0] willing[end if] victim";
	if tempnum is 2:
		say ". Completely without restraint the lizard makes a beeline for your ass. Nipping and clawing at your hips, it's little legs flit about in a weak attempt at removing any obstruction before properly positioning itself. [if hp of player > 0]Obliging the small dragon, you eventually help him get him properly positioned[else]You weakly try to push the small dragon off of you, but this only invites him to nip and claw at you into submission, eventually getting himself into position[end if].";
		say "     With a tainted urgency, you immediately feel yourself [if scalevalue of player < 4]impaled[else]stabbed[end if] by the tiny monster's instantly erect dick down your barely ready asshole, burying it's long, tapered length down your hole until he's slapping his smooth, scaled crotch between your thighs. You feel the thing, like a searing hot poker, worm its way around your innards, sputtering its molten-hot precum[if scalevalue of player < 4] deep[end if] inside you. Absolutely dead set on weakly pounding your ass into oblivion, you have to endure the sounds of its loud, wanton squealing filling air, hardly drowning out his increasingly wet motions.";
		say "     [if hp of player > 0]Barely given time to become aroused from[else]Gradually aroused by[end if] this[if birthedwhelp is true], twisted[end if] embarrassing display, [if cocks of player > 0]your cock[smn] ache[smv] against the open air, driving you to stroke yourself through all this[else if cunts of player > 0]your cunt[sfn] ache[sfv] against the open air, driving you to fondle yourself through all this[else]much in spite of your lack of outlet[end if]. It doesn't take long for the whelp to finally howl out, clinging to you tightly as you're pumped with gout after successive gout of his scalding load. His release seems so excessive, you're soon made dizzy with the sheer volume[if scalevalue of player < 3], body visibly bloating to accommodate all of it[end if]";
		if libido of player > 30 and (cocks of player > 0  or cunts of player > 0):
			say ". The whole ordeal is more than enough to set you off, staining the ground with your [if cocks of player > 0][cum load size of player] load[else] juices[end if]";
		say ".";
		say "     Completely spent, the whelp chirps weakly and eventually flops off of you and onto the ground, the audibly wet sound of its oversized cock pulling free of your hole filling the air. After a few seconds, crawling away from it, it slowly pulls itself up and flies off into the distance. Apparently satisfied[if birthedwhelp is true] with fucking its own parent[end if], he leaves you to recover from being so thoroughly filled.";
		if ebneuterswitch is false:
			say "     [italic type]Forced to feel your bloated[if scalevalue of player < 3], practically pregnant-looking[end if] belly, the effect of the creature's cum [one of]seems to linger[or]lingers[stopping] longer than it normally should. [one of]You have a bad feeling about what just happened[or][if hp of player > 0]Here we go[else]Not[end if] again[stopping]...[roman type]";
			now mpreghijack is true;
			now ebwhelphijack is 2;
			now hijackgestation is 8;
	else if tempnum is 1:
		say ". Completely without restraint the lizard makes a beeline for your ass. Nipping and clawing at your hips, it's little legs flit about in a weak attempt at removing any obstruction before properly positioning itself. [if hp of player > 0]Obliging the small dragon, you eventually help him get him properly positioned[else]You weakly try to push the small dragon off of you, but this only invites him to nip and claw at you into submission, eventually getting himself into position[end if].";
		say "     With a tainted urgency, you immediately feel yourself [if scalevalue of player < 4]impaled[else]stabbed[end if] by the tiny monster's instantly erect dick up[if cunts of player > 1] one of[end if] your barely ready cunt[sfn], burying it's long, tapered length down your hole until he's slapping his smooth, scaled crotch between your thighs. You feel the thing, like a searing hot poker, worm its way around your innards, sputtering its molten-hot precum[if scalevalue of player < 4] deep[end if] inside you. Absolutely dead set on weakly pounding your hole into oblivion, you have to endure the sounds of its loud, wanton squealing filling air, hardly drowning out his increasingly wet motions.";
		say "     [if hp of player > 0]Barely given time to become aroused from[else]Gradually aroused by[end if] this[if birthedwhelp is true], twisted[end if] embarrassing display, [if cocks of player > 0]your cock[smn] ache[smv] against the open air, driving you to stroke yourself through all this[else]your pussy squeezing tightly against the terribly hot invader[end if]. It doesn't take long for the whelp to finally howl out, clinging to you tightly as you're pumped with gout after successive gout of his scalding load. His release seems so excessive, you're soon made dizzy with the sheer volume[if scalevalue of player < 3], body visibly bloating to accommodate all of it[end if]";
		if libido of player > 30:
			say ". The whole ordeal is more than enough to set you off, staining the ground with your [if cocks of player > 0][cum load size of player] load[else] juices[end if]";
		say ".";
		say "     Completely spent, the whelp chirps weakly and eventually flops off of you and onto the ground, the audibly wet sound of its oversized cock pulling free of your hole filling the air. After a few seconds, crawling away from it, it slowly pulls itself up and flies off into the distance. Apparently satisfied[if birthedwhelp is true] with fucking its own parent[end if], he leaves you to recover from being so thoroughly filled.";
		if ebneuterswitch is false:
			say "     [italic type]Forced to feel your bloated[if scalevalue of player < 3], practically pregnant-looking[end if] belly, the effect of the creature's cum [one of]seems to linger[or]lingers[stopping] longer than it normally should. [one of]You have a bad feeling about what just happened[or][if hp of player > 0]Here we go[else]Not[end if] again[stopping]...[roman type]";
			now preghijack is true;
			now ebwhelphijack is 1;
			now hijackgestation is 8;
	else:
		say ". You're barely given a chance to ready yourself before before he pressed the base of his cock firmly against your face, flooding your senses with the tainted aroma of the creature's heady scent. He clearly want you to suck him off, but either by some weird instinct or by a particularly sadistic tendency he's not hard in the slightest, meaning you'd have to oblige him more than usual to suck him off.";
		say "     [if hp of player > 0]Conceding[else]Not wanting to be the subject of the creature's constant clawing and squealing, you eventually concede[end if] to this shameful relegation lowering your head to engulf the pointed tip of the whelp's jet-black dick, the insistence of the tiny creature forcing you to swallow down more and more of its substantive length until your lips are flush against his coarse scales. [if scalevalue of player > 3]Massive form sucking off this tiny beast,[else]Struggling to breathe as[end if] your taste is awash in the sting of his scalding precum, the creature starts clinging to your as tightly as it possibly can, dead set on making sure you never let up.";
		say "     Your tongue [if hp of player > 0 or player is submissive]caressing[else]forced to writhe[end if] along its slick girth, the flaccid tool has more than enough yield to invite your maw's[if hp of player < 1 and player is not submissive] involuntary[end if] squeezing, milking endeavours, causing the twisted critter to chitter and howl slowly in bliss. [if cocks of player > 0]Driven by your rising arousal to jerk yourself off[else if cunts of player > 0]Driven by your rising arousal to fondle yourself[else]Genderless body wracked by an insatiable need[end if], you feel his molten precum sputter [if scalevalue of player < 4]into your stomach[else]down your throat[end if], yourself lost in a haze of growing need[if scalevalue of player < 4] and slight suffocation[end if].";
		say "     Your[if hp of player < 1] forced[end if] attendance is eventually rewarded when the whelp cries out, searing rod bulging significantly and your insides are doused with successive barrages of the monsters oversized load. It seems likely so much that you're not rightly sure how the little thing could even carry it all, stomach [if scalevalue of player < 3]visibly bulging[else]aching painfully[end if] with the glowing precum.";
		say "     So exhausted and spent, the whelp chittering feebly as he catches his breath, he doesn't seem to notice or care that you're still being forced to deepthroat his entire organ, only choosing to finally pull free when he flies off into the distance. Finally left to recover and gasp for air, you groan and writhe from the excessive amount of cum you were forced to swallow. Eventually, you climb to your feet finally free to go about your business once more.";
		if ebwhelphijack > 0:
			say "     [italic type]Still bloated from the original whelp's violation, consuming all this burning fluid seems to have worsened your situation by accelerating your twisted offspring's growth...[roman type]";
			decrease hijackgestation by 1;

to say ebwhelpdef:
	if birthedwhelp is true:
		say "     Your child lets out a mournful cry before weakly making a break for it, clumsily darting off into the distance. Though you may have fended yourself off from your offspring, you're not sure adding to those whelp's numbers is much of a victory...";
	else:
		say "     Letting out one last, mournful cry, the whelp finally falls to the ground with a soft thud. Faintly chirping and stirring, it looks like it'll take a while to recover. You choose this time to go about your business once more, before it wakes.";

to say ebwhelpdesc:
	setmongender 3;		[creature is male]
	now firebreathcount is 0;
	now firebreathready is false;
	if birthedwhelp is false:
		say "     The sound of a low squeal filling the air, [one of]what appears to be a small dragon[or]an Ebonflame whelp[stopping] dives at you. No more than maybe two to three feet tall and covered in coarse, deeply black and purple scales, the creature seems to struggle just to keep itself airborne with its meagre wings. More distractingly, [one of]you nearly mistake its disproportionately large, black cock for its tail,[or]it's disproportionately large, black cock[stopping] shamelessly exposed in the open air, the tapered, dangling thing oozing its glowing, molten-coloured fluid.";
		say "     The tiny thing is a noise of growls and chirps as it claws at you, forcing you to bat it away. Reeling back a few feet, the relentless little whelp only charges at you again!";
	else:
		say "     Still lowly squealing, the Ebonflame Whelp wheels around to face its [']mother['] before it immediately dives at you!";
		say "     No more than maybe two to three feet tall and covered in coarse, deeply black and purple scales, the creature seems to struggle just to keep itself airborne with its meagre wings. More distractingly, it's disproportionately large, black cock shamelessly exposed in the open air, the tapered, dangling thing oozing its glowing, molten-coloured fluid.";
		say "     The tiny, noisy thing clearly doesn't behave like normal offspring, attacking its parent with the clear intent of repeating the cycle, and forcing you to bat it away. Reeling back a few feet, the relentless little whelp only charges at you again!";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Ebonflame Whelp";
	now attack entry is "[one of]The Ebonflame whelp[or]The creature[or]The whelp[or]He[at random] [one of]clings to your [bodytype of player] form, nipping and clawing at you until you pry it free and send it flying back[or]immediately tries to fuck you, forcing you pull it from your back and toss him away[or]holds onto one of your limbs, biting and screeching at you until you fling him off[at random].";
	now defeated entry is "[ebwhelpdef]";
	now victory entry is  "[ebwhelpvic]";
	now desc entry is "[ebwhelpdesc]";
	now face entry is "NA";
	now body entry is "NA";
	now skin entry is "NA";
	now tail entry is "NA";
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
	now hp entry is 28;
	now lev entry is 2;
	now wdam entry is 6;
	now area entry is "Capitol";
	now cocks entry is 1;
	now cock length entry is 10;
	now cock width entry is 8;
	now breasts entry is 2;
	now breast size entry is 19;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 15;
	now cunt width entry is 10;
	now libido entry is 20;
	now lootchance entry is 10;
	now loot entry is "ebonflame scale";
	now scale entry is 3;
	now body descriptor entry is "NA";
	now type entry is "NA";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;
	now altcombat entry is "firebreath";

Section 3 - Miscellaneous

when play ends:
	if bodyname of player is "Ebonflame Whelp" and humanity of player < 10:
		say "NA." [placeholder for bound state loss]

to ebwhelphijackroutine:
	say "[line break]";
	if ebwhelphijack is 1 and cunts of player is 0:
		say "[italic type]Your lack of a vaginal passage causes you to feel as though your insides are shifting in strange and somewhat uncomfortable ways...[roman type][line break]";
		now preghijack is false;
		now ebwhelphijack is 2;
		now mpreghijack is true;
	if hijackgestation < 3: [LATE]
		say "Your [bodytype of player] belly protrudes in a firm dome of pregnancy, full of the violently churning, unborn being, becoming increasingly desperate to escape. You don't feel hindered despite being bloated but the constant, burning sensation of your corrupted offspring torments you to no end.";
	else if hijackgestation < 5: [MIDDLE]
		say "Your [bodydesc of player] body is somewhat rounded by the effects of your terribly twisted pregnancy. It's progressing at what would seem to be a terrifyingly fast speed, even for these circumstances...";
	else: [EARLY]
		say "[one of]You feel an ominous shifting of something inside[or]An unsettling warmth churns through[at random] your lower belly...";
	if hijackgestation < 0:
		if preghijack is true:
			now tempnum is 1;
		else:
			now tempnum is 2;
		say "     Unable to take it for any longer, you finally double over and cry out. You can feel the tainted offspring writhing and clawing itself through you [if tempnum is 2]bowels[else]birth canal[end if] in desperate need for escape, wracking you with waves of pain for each successive inch until it finally breaks away, air suddenly filling with the low squealing of an Ebonflame Whelp.";
		if tempnum is 2:
			say "     [if scalevalue of player > 3 or player is twistcapped]You're thankfully stretchy enough for the monster to pull itself free of your[else]Tears strained from your eyes, the monster stretches you to your limits to pull itself free of your tight[end if] ring";
		else:
			say "     [if cunt length of player > 14]You're thankfully stretchy enough for the monster to pull itself free of your[else]Tears strained from your eyes, the monster stretches you to your limits to pull itself free of your tight[end if] cunt";
		say ", a flood of molten-coloured fluid following in its wake as it lands on the ground with an audible splat. The loud, messy little dragon only needing a few second to acclimate to its exposure before getting airborne...";
		if ebwhelphijack is 1:
			now preghijack is false;
		else:
			now mpreghijack is false;
		now ebwhelphijack is 0;
		now birthedwhelp is true;
		if waiterhater is 0, wait for any key;
		challenge "Ebonflame Whelp";
		now birthedwhelp is false;
		now tempnum is 0;

Ebonflame Whelp ends here.
