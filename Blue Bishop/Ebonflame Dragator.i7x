Version 1 of Ebonflame Dragator by Blue Bishop begins here.
[ Version 1 - Initial Replacement for Ash Dragator]

"Adds an Ebonflame Dragator to Flexible Survival."
[Inspired by the Ash Dragator]

When Play begins:
	add "Ebonflame Dragator" to infections of guy;
	add "Ebonflame Dragator" to infections of feral;

Section 1 - Monster Responses

ebgatord is a number that varies. [Ebonflame Gator dick memory. 1 = been described, 2 = egglaying described]

to say ebgatorvic:
	if hp of player > 0:
		say "     You try surrendering to the beast but he appears to be either too dense or too bloodthirsty to notice your submission, swiping at you still and forcing you to keep some distance. You decide you'll have to go [']all in['] here, laying down face-first and leaving yourself wholly at the mercy of the gator.";
		say "     Immediately, it lunges once more at you and bites at your[if scalevalue of player > 3] larger,[end if] vulnerable form, barely responding to your apparent compliance. It seems to get off on your cries in pain, as it does eventually begin to mount you...";
	otherwise:
		say "     Completely battered and beaten, you crumple onto the ground, left to the mercy of the beast as it lunges forward and continues to assault you.";
		say "     Vicious gator hardly able to recognize that you're completely out of the fight, it continues to bite at your[if scalevalue of player > 3] larger,[end if] vulnerable form. It seems to get off on your feeble cries in pain, as it does eventually begin to mount you...";
	if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds) or (Cunts of player is 0 and impregnatevalid is true)):
		say "     You soon feel the slightly flat head of the reptile's[if ebgatord is 0][otherwise] peculiar,[end if] oversized dick press against your ass";
		if ebgatord is 0:
			say ", you're given a glimpse of the thing even as it's being forced past your[if scalevalue of player < 4 and player is not twistcapped] tight[end if] ring. The organ looks as though it was supposed to be two dicks instead of one, but it quit about half the way through, giving the tool and overly wide and flat girth, making you groan [if hp of player > 0]loudly[otherwise]weakly[end if] as it's gradually plunged deeper into you.";
			now ebgatord is 1;
		otherwise:
			say ", groaning [if hp of player > 0]loudly[otherwise]weakly[end if] as the overly wide organ is squeezed through your[if scalevalue of player < 4 and player is not twistcapped] tight[end if] ring.";
		say "     The monster hisses loudly in rough satisfaction with each successive inch of the throbbing, molten-precum oozing cock is sunk through your[if scalevalue of player < 4 and player is not twistcapped] meagre-fitting[end if] bowels until he can't force it in any deeper. The heat of his coarsely scaled, heaving body like a fire against your [bodytype of player] form, it's hard to say if you're aroused by the ordeal, given how numb you are from this intense sensation[if hp of player < 1] and your prior defeat[end if], sweat almost feeling like it's boiling off as you as his motion becomes rougher with each powerful thrust.";
		say "     After what feels like hours of being pounded into the ground, the dragon-gator finally roars out, sinking its sharp talons into you as it plunges its wide organ deep inside you one last time";
		if impregnatevalid is true:
			say ". [if ebgatord < 2]You briefly think the lizard's dick is knotted for how it forces a large bulge at its back past your ring, but it quickly reveals its true purpose as the bulb ascends[otherwise]You're quickly reminded of the intense sensation of being [']tied['] with the lizard's dick, large bulge at its base forced past your ring, ascending[end if] along its shaft, until a large, coarse egg is squeezed from its head and into your bowels.";
			say "     Still high from the throes of bliss -- and perhaps ensuring the orb is planted deep within you -- he still continues to fuck you senselessly, forcing a weak, [if scalevalue of player > 3]slightly[otherwise]substantially[end if] strained orgasm, [if cocks of player > 0]your unattended cock[smn] staining the ground with your [cum load size of player] load[otherwise if cunts of player > 0]your unattended cunt[sfn] staining the ground with your juices[otherwise]causing you to writhe in insatiable need[end if]. Finally satisfied, the beast wrenches his still-hard rod from your[if scalevalue of player > 4 or player is twistcapped] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal. [italic type]You're somewhat worried about the long-term results of carrying this egg…[roman type]";
			if ebgatord < 2, now ebgatord is 2;
			now mpreghijack is true;
			now ebgatorhijack is 2;
			now hijackgestation is 8;
		otherwise:
			say ". Like a fire hose, the lizard's dick pumps its substantial, molten cum deep into your bowels, making you wince and cry out in the intense, searing sensation.";
			say "     Still high from the throes of bliss -- and its motion further lubricated by its glowing seed -- it still continues to fuck you senselessly, forcing a weak, strained orgasm, [if cocks of player > 0]your unattended cock[smn] staining the ground with your [cum load size of player] load[otherwise if cunts of player > 0]your unattended cunt[sfn] staining the ground with your juices[otherwise]causing you to writhe in insatiable need[end if]. Finally satisfied, the beast wrenches his still-hard rod  from your[if scalevalue of player > 4 or player is twistcapped] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal.[mimpregchance]";
	otherwise if cunts of player > 0:
		say "     You soon feel the slightly flat head of the reptile's[if ebgatord is 0][otherwise] peculiar,[end if] oversized dick press against[if cunts of player > 1] one of[end if] your cunt[sfn]";
		if ebgatord is 0:
			say ", you're given a glimpse of the thing even as it's being forced past your[if cunt length of player < 12] tight[end if] lips. The organ looks as though it was supposed to be two dicks instead of one, but it quit about half the way through, giving the tool and overly wide and flat girth, making you groan [if hp of player > 0]loudly[otherwise]weakly[end if] as it's gradually plunged deeper into you.";
			now ebgatord is 1;
		otherwise:
			say ", groaning [if hp of player > 0]loudly[otherwise]weakly[end if] as the overly wide organ is squeezed through your[if cunt length of player < 12] tight[end if] lips.";
		say "     The monster hisses loudly in rough satisfaction with each successive inch of the throbbing, molten-precum oozing cock is sunk through your[if cunt length of player < 12] meagre-fitting[end if] passage until he can't force it in any deeper. The heat of his coarsely scaled, heaving body like a fire against your [bodytype of player] form, it's hard to say if you're aroused by the ordeal, given how numb you are from this intense sensation[if hp of player < 1] and your prior defeat[end if], sweat almost feeling like it's boiling off as you as his motion becomes rougher with each powerful thrust.";
		say "     After what feels like hours of being pounded into the ground, the dragon-gator finally roars out, sinking its sharp talons into you as it plunges its wide organ deep inside you one last time";
		if impregnatevalid is true:
			say ". [if ebgatord < 2]You briefly think the lizard's dick is knotted for how it forces a large bulge at its back past your lips, but it quickly reveals its true purpose as the bulb ascends[otherwise]You're quickly reminded of the intense sensation of being [']tied['] with the lizard's dick, large bulge at its base forced past your lips, ascending[end if] along its shaft, until a large, coarse egg is squeezed from its head and into your womb.";
			say "     Still high from the throes of bliss -- and perhaps ensuring the orb is planted deep within you -- he still continues to fuck you senselessly, forcing a weak, [if cunt length of player < 12]slightly[otherwise]substantially[end if] strained orgasm, your [if cocks of player > 0]unattended cock[smn] staining the ground with your [cum load size of player] load[otherwise]pussy weakly throbbing against its oversized invader[end if]. Finally satisfied, the beast wrenches his still-hard rod from your[if cunt length of player > 11] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal. [italic type]You're somewhat worried about the long-term results of carrying this egg…[roman type]";
			if ebgatord < 2, now ebgatord is 2;
			now preghijack is true;
			now ebgatorhijack is 1;
			now hijackgestation is 8;
		otherwise:
			say ". Like a fire hose, the lizard's dick pumps its substantial, molten cum deep into your bowels, making you wince and cry out in the intense, searing sensation.";
			say "     Still high from the throes of bliss -- and its motion further lubricated by its glowing seed -- it still continues to fuck you senselessly, forcing a weak, strained orgasm, your [if cocks of player > 0]unattended cock[smn] staining the ground with your [cum load size of player] load[otherwise]pussy weakly throbbing against its oversized invader[end if]. Finally satisfied, the beast wrenches his still-hard rod  from your[if cunt length of player > 11] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal.[impregchance]";
	otherwise:
		say "     You soon feel the slightly flat head of the reptile's[if ebgatord is 0][otherwise] peculiar,[end if] oversized dick press against your face";
		if ebgatord is 0:
			say ", you're forced to stare down the barrel of the monstrous thing, just as he begins to shove it past your lips. The organ looks as though it was supposed to be two dicks instead of one, but it quit half way through, giving the tool and overly wide and flat girth, forcing a muffled groan from you as the tool is plunged ever-deeper down your gullet.";
			now ebgatord is 1;
		otherwise:
			say ", a [if hp of player > 0]loud[otherwise]weak[end if], muffled groan escapes your lips as the blunt head of the overly wide organ is shoved past your lips, plunged ever-deeper down your gullet.";
		say "     The monster hisses loudly in rough satisfaction with each successive inch of the throbbing, molten-precum oozing cock is forced down your throat. The heat of its coarsely scaled, heaving body like a fire against your [bodytype of player] form, it's hard to say if you're aroused by the ordeal, given how numb you are from this intense sensation[if hp of player < 1] and your prior defeat[end if], sweat almost feeling like it's boiling off as you as his motion becomes rougher with each powerful thrust.";
		say "     After what feels like hours of being pounded into the ground, the dragon-gator finally roars out, sinking its sharp talons into you as it plunges its wide organ [if scalevalue of player < 4]as deep as he can[otherwise]all the way[end if] inside you one last time. Like a fire hose, the lizard's dick pumps its substantial, molten cum deep into your stomach, making you wince and gag out in the intense, searing sensation.";
		say "     Still high from the throes of bliss -- and its motion further lubricated by its glowing seed -- it still continues to fuck you senselessly until it's eventually apparent to him that he's completely spent. Finally satisfied, the beast wrenches his still-hard rod from your maw, quickly gasping and coughing against the marginally cooler open air.";
		say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal.";

impregnatevalid is a truth state that varies. impregnatevalid is usually false.
ebgatorcarrying is a number that varies. ebgatorcarrying is usually 1.

to say ebgatordesc:
	setmongender 3;      [creature is male]
	now firebreathcount is 0;
	now firebreathready is false;
	now impregnatevalid is false;
	if cunts of player > 0 and ebneuterswitch is false:
		if player is fem_vacant:
			if a random chance of ebgatorcarrying in 4 succeeds:
				now impregnatevalid is true;
				now ebgatorcarrying is 1;
				now tempnum2 is 1;
			otherwise:
				increase ebgatorcarrying by 1;
	otherwise if ebneuterswitch is false:
		if player is male_vacant and anallevel is not 1 and ((anallevel is 2 and ("Kinky" is listed in feats of player or "Mpreg" is listed in feats of player)) or anallevel is 3):
			if a random chance of ebgatorcarrying in 4 succeeds:
				now impregnatevalid is true;
				now ebgatorcarrying is 1;
				now tempnum2 is 2;
			otherwise:
				increase ebgatorcarrying by 1;
	say "     A loud, low hissing sound echoes from the open air as a monstrous, feral alligator lurches from the shadow. Twisted by an unholy influence, the six-legged beast is an abyssal shade of purple, hard scales and ridges jutting from its coarse frame, a soft red flame visibly glowing in the cracks and crevices.";
	say "     Twin pairs of eyes fixated on your [bodytype of player] form, its drooling maw is agape, revealing its two rows of razor-sharp teeth. Without warning, it charges directly at you!";
	if impregnatevalid is true:
		say "     [bold type]...The creature has a slightly awkward gait, as if bloated with something...[roman type]";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	add "Ebonflame Dragator" to infections of guy;
	add "Ebonflame Dragator" to infections of feral;
	now name entry is "Ebonflame Dragator";
	now attack entry is "[one of]The gator[or]The oversized lizard[or]The scaled beast[or]The Ebonflame Dragator[or]It[or]He[at random] [one of]lunges forward and snaps it jaws around one of your limbs, the horribly sharp teeth digging into you until you finally pry its jaw wide enough to free yourself[or]shreds you painfully with its claws[or]attempts to pin you against the ground, biting and clawing at you until you push yourself free[or]painfully bashes you with its large, powerful tail[at random].";
	now defeated entry is "     With one final attack, the terrifying monster lets out a low groan and slumps onto the ground, completely spent and unable to move -- save for the occasional stirring. You decide it's probably best to move on before the gator recovers.";
	now victory entry is  "[ebgatorvic]";
	now desc entry is "[ebgatordesc]";
	now face entry is "NA";
	now body entry is "NA";
	now skin entry is "NA";
	now tail entry is "NA.";
	now cock entry is "NA";
	now face change entry is "NA";
	now body change entry is "NA";
	now skin change entry is "NA.";
	now ass change entry is "NA";
	now cock change entry is "NA";
	now str entry is 15;
	now dex entry is 18;
	now sta entry is 16;
	now per entry is 13;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Both";
	now hp entry is 70;
	now lev entry is 10;
	now wdam entry is 26;
	now area entry is "Capitol";
	now cocks entry is 1;
	now cock length entry is 15;
	now cock width entry is 15;
	now breasts entry is 2;
	now breast size entry is 14;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 16;
	now cunt width entry is 17;
	now libido entry is 40;
	now lootchance entry is 40;
	now loot entry is "ebonflame scale";
	now scale entry is 4;
	now body descriptor entry is "NA";
	now type entry is "NA";
	now magic entry is false;	
	now resbypass entry is false;	
	now non-infectious entry is true;
	blank out the nocturnal entry;
	now altcombat entry is "firebreath";

Section 3 - Miscellaneous

to ebgatorhijackroutine:
	say "[line break]";
	if ebgatorhijack is 1 and cunts of player is 0:
		say "[italic type]Your lack of a vaginal passage causes you to feel as though your insides are shifting in strange and somewhat uncomfortable ways...[roman type][line break]";
		now preghijack is false;
		now mpreghijack is true;
		now ebgatorhijack is 2;
	if hijackgestation < 3: [LATE]
		say "Your [bodytype of player] belly protrudes in a firm dome of pregnancy, full of the terrible, glowing egg, becoming increasingly difficult to lug around. You don't feel that hindered despite being so bloated but the constant, burning sensation of the churning orb torments you to no end.";
	otherwise if hijackgestation < 5: [MIDDLE]
		say "Your [bodydesc of player] body is somewhat rounded with the effects of the egg growing inside you.  It's progressing at what would seem to be a terrifyingly fast speed, growing with every passing hour, in heat just as much as it does in size.";
	otherwise: [EARLY]
		say "[one of]You feel an ominous shifting of something inside[or]An unsettling warmth churns through[at random] you as you continue to carry the dark egg.";
	if hijackgestation < 0:
		if preghijack is true:
			now tempnum is 1;
		otherwise:
			now tempnum is 2;
		say "     Unable to hold itself within you any longer, you double over from the intense sensation of the dark egg finally being pushed through your [if tempnum is 1]birth canal[otherwise]bowels[end if].";
		say "     So large is the orb that it takes considerable pains to push it past your [if tempnum is 1]cunt's strained lip[otherwise]ass's strained ring[end if]. It takes numerous attempts to try and get rid of the thing, as it often slides back in at a moment's relent, before it finally, audibly pops from your gaping hole, the slick, dark purple egg twitching and churning on the ground.";
		say "     Looking at it, it's hard to imagine that thing was inside you, given how large it is[if scalevalue of player > 3].[run paragraph on] Even as large as you are, it seems the egg grew even larger to exploit the free space[end if]. The coarse orb is completely covered rings of grooved ridges, still slick from its prior home. It occasionally twitches and you hear bestial sounds from inside.";
		say "     Once you recover, you haul the egg off somewhere out of the way. After that ordeal, the last thing you need is another one of those monsters attacking you and starting this whole cycle all over again...";
		if ebgatorhijack is 1:
			now preghijack is false;
		otherwise:
			now mpreghijack is false;
		now ebgatorhijack is 0;
		if hp of player > 8, decrease hp of player by 5;
		now tempnum is 0;

Ebonflame Dragator ends here.