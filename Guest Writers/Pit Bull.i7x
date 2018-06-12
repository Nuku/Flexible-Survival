Version 4 of Pit Bull by Guest Writers begins here.
[ Version 4.1 - Victory: Beta-capture for Dom - Stripes ]
[- Originally Authored By: Ilovecock -]

"Adds a Pit Bull to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

pitbullgender is a number that varies.

to say pitbulldesc:
	choose row monster from the table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	now pitbullgender is a random number between 1 and 2;
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		setmongender 0; [creature is neuter-X]
		say "     You run into what looks to be a fairly muscular canine creature. The pit bull growls softly as it glares at you before barking a few times. When you stand your ground, it heads off. Hopefully it'll tell the others to leave you alone as well.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now pitbullgender is 0;
	else if guy is banned:
		now pitbullgender is 1;
	else if girl is banned:
		now pitbullgender is 2;
	else if guy is warded and girl is warded:
		now pitbullgender is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now pitbullgender is 1;
		else if girl is warded and a random chance of 1 in 3 succeeds:
			now pitbullgender is 2;
	else if ishunting is false:
		if guy is warded:
			now pitbullgender is 1;
		else if girl is warded:
			now pitbullgender is 2;
	if pitbullgender is 1:
		setmongender 4; [creature is female]
		say "     You run into what looks to be a fairly muscular canine, her body adorned in dirty and unkempt attire. The female growls deeply, making it clear that you've encroached upon her territory. Her transparently fiery temperament ill-equipped to abide trespassers, she lunges forward to attack!";
	else if pitbullgender is 2:
		setmongender 3; [creature is male]
		say "     You run into what looks to be a fairly muscular canine, his body adorned in dirty and unkempt attire. The male growls deeply, making it clear that you've encroached upon his territory. His transparently fiery temperament ill-equipped to abide trespassers, he lunges forward to attack!";

to say losetopitbull:
	if pitbullgender is 1:
		say "[losetopitbull_f]";
	else if pitbullgender is 2:
		say "[losetopitbull_m]";

to say losetopitbull_f:
	if HP of player > 0:
		say "     You suddenly call for your surrender; however, the canine doesn't buy it and smacks you down to the ground. She continues to strike at you until you're clearly not retaliating. Satisfied, she moves to enact her punishment, stripping you of any attire you might have.";
	else:
		say "     The canine throws one final punch, making your head spin as you fall to the ground. Now too weak to contest her will, she forces you free of any clothing you might have been wearing and prepares to have her way with you.";
	if cocks of player > 0 and cock length of player < 25 and a random chance of 3 in 5 succeeds:
		say "     With a twisted grin--an initial tell of her wanton hunger--she grabs you by [if cocks of player > 1]one of your [cock size desc of player] dicks[else]your [cock size desc of player] dick[end if], firmly pumping it into arousal, her infectious influence supplementing her harsh treatment of your tool. Her endeavors are only momentary until she is satisfied, pulling off her pants before [if scalevalue of player > 3]climbing on top of you[else]moving over you[end if] and promptly impaling herself with your hardened organ.";
		say "     Rigid with harsh pleasure, her abusive treatment of your tool is relentless as she rides your exposed form, [if cock length of player > 12]showing little difficulty in handling your impressive cock, much in spite how tight it is for you[else]offering little restraint in using your beleaguered cock[end if]. Soon overwhelmed, you unload [if cock width of player > 20]an impressive amount of your cum into the canine, her muscled form bloating slightly to abide it[else]your cum into the canine[end if][if cocks of player > 2], your others firing impotently into the open air[else if cocks of player > 1], the other firing impotently into the open air[end if]. [if cock length of player > 12]In the wake of this, [else]However, she isn't quite satisfied, and you're forced to contend with her riding you for a fair while longer until--several orgasms later--[end if]she too finds bliss, milking you of your load until you can offer her no more.";
		say "     Catching her breath, sweat-doused fur rested against you, she soon pulls herself free, setting you off with a prompt boot to the rear, forced to retreat with an awkward gait, poor organ raw from its ill treatment.";
	else if cunts of player > 0 and cocks of player is 0 and a random chance of 3 in 5 succeeds:
		say "     Gripping your thighs firmly, you're forced to watch as her tongue begins to assault [if cunts of player > 1]one of your exposed, [cunt size desc of player] cunts[else]your exposed, [cunt size desc of player] cunt[end if], that slick organ's twisted affection [if libido of player > 33]an imposed attempt to alleviate your lingering desire[else]forcing you to twist impotently as your desire rises[end if]. She disengages only briefly to relinquish herself of her pants, dripping portal already slick with her own arousal, before she returns to the task at hand.";
		If scalevalue of player < 3:
			say "     Pulling the legs of your diminutive form up, forcing you to hang mercilessly in the air as she grinds her snatch against yours with a dizzyingly wanton fervor, exacerbated as you're forced to contend with the blood rushing to your head. It's not long before [if libido of player > 33]you cry out in orgasm, her own soon following in its wake[else]she cries out in orgasm, your own soon following in its wake[end if], gushing holes dripping down against your beleaguered form. Satisfied, she lets you go, causing you to stumble to the ground, and she doesn't give you much time to gather yourself and your things before she starts booting you out of her territory, forcing you to flee an embarrassed mess as you are.";
		else if scalevalue of player > 3:
			say "     Holding you once more, her following assault is somewhat awkward--though just as much outwardly satisfying to her ego--by your comparative large size as she grinds her snatch against yours with such a wanton fervor, lust streaked with shame that you are so mercilessly used by such a canine smaller than you. It's not long before [if libido of player > 33]you cry out in orgasm, her own soon following in its wake[else]she cries out in orgasm, your own soon following in its wake[end if], gushing holes smearing their mess across your exposed crotch. Now satisfied, she pulls free of you, and she doesn't give you much time to gather yourself and your things before she starts booting you out of her territory, forcing you to flee an embarrassed mess as you are.";
		else:
			say "     Pulling your legs closer, she drags you forward that she might grind her snatch against yours with such a wanton fervor, perverse hunger made alight the fiery need of the harsh canine, quickly overwhelming you. It's not long before [if libido of player > 33]you cry out in orgasm, her own soon following in its wake[else]she cries out in orgasm, your own soon following in its wake[end if], gushing holes smearing their mess across your exposed crotch and thighs. Now satisfied, she pushing you free of her, and she doesn't give you much time to gather yourself and your things before she starts booting you out of her territory, forcing you to flee an embarrassed mess as you are.";
	else if FangWS is 1 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 4 succeeds)):
		say "     Quizzically, she begins to sniff you over, detecting something peculiar about your scent. She steps back, chuckling as she unzips her pants and reveals herself to you, cunt exposed to the open air. You're briefly confused that she doesn't interact with you, but her intent is soon made crystal clear when you're hit with a flood of her urine.";
		If player is submissive:
			say "     You're overwhelmed by your submissive tendencies, driven to take the full brunt of her acrid release. The harsh taste of her fluids against your palate, you immerse yourself in the scent of her piss, partially drinking her fluids. Laughing, she offers mocking approval to such an obliging little bitch[if scalevalue of player > 3], her amusement exacerbated further by how complicit you are in spite your large size[end if]";
		else:
			say "     You [if HP of player > 0]reluctantly oblige her abuse, taking[else]try to turn away, but she grabs you by your head, forcing you to face[end if] the full brunt of her acrid release. [if scalevalue of player > 3]It's a pitiful sight, to see a creature as large as you are pissed on by this comparatively diminutive pit bull, forcing your senses to be[else]You can only silently take her humiliation, senses forcefully[end if] flooded with the taste and smell of her harsh fluids";
		say ". Her flow inevitably diminishes before ceasing altogether, much to your [if player is submissive]discontent[else]relief[end if], before she puts her pants back on and leaves you with a harsh swat on the rear, forcing you to gather your things and retreat from her domain.";
	else if anallevel is 3 and a random chance of 2 in 5 succeeds:
		If scalevalue of player > 4:
			say "     She laughs, slapping your rear harshly, no doubt amused to have felled a such a massive trespasser. Too embarrassed, you look away as you feel a couple of fingers beginning to penetrate your anal ring. [if HP of player <= 0]Ignoring what protests you may offer up[else]Soft moans of pleasure escaping your lips[end if], your large passage is more than willing to abide her intrusion. With an audible snort, she regards your accommodation as a challenge and shows no restraint in stuffing the whole of her fist down the portal, her harsh treatment determined to leave an impact.";
		else if scalevalue of player is 4:
			say "     Amused, she gives your rear an audible smack and watches you flinch before you're left to observe as she slowly pushes two of her fingers into your exposed anal ring. Met only with marginal resistance, she replaces her querying intrusion with the whole of her fist, causing you to squirm and struggle impotently against her irreverent hold.";
		else if scalevalue of player < 4:
			say "     Amused, she gives your rear an audible smack and watches you flinch before you watch as she slowly pushes two of her fingers into your exposed anal ring. Writhing in discontent, her irreverent inspection is briefly concluded, only to be replaced by the whole of her fist! [if player is twistcapped]Thankfully, your infection abides such an intrusion in spite of its size and belligerence, though this only serves to amuse the rough dog and encourage her to assault you more harshly[else]You feel a sharp pain as your beleaguered hole is stretched so suddenly, your impotent struggles an endless source of entertainment to the rough dog[end if].";
		say "     [if cocks of player > 1]Cocks driven erect by her influence, their need for attention is left largely disregarded by the canine[else if cocks of player > 0]Cock driven erect by her influence, its need for attention is left largely disregarded by the canine[else if cunts of player > 1]Cunts dripping wet with a needy hunger in the wake of her influence, their desire for attention is left largely disregarded by the canine[else if cunts of player > 0]Cunt dripping wet with a needy hunger in the wake of her influence, its desire for attention is left largely disregarded by the canine[else]Twisted lust gradually overwhelming you, she doesn't appear to regard your genderless state[end if]; rather, she intends to stimulate you purely by force. You feel her knuckles grind against your [if cocks of player > 0]prostate[else]passage[end if] with a reckless abandon";
		if libido of player > 69 and cocks of player > 0:
			say ". You almost immediately fire off your [cum load size of player] load, [if cock width of player > 15]drenching your torso and neck[else]seed wasted against your torso[end if]. She's actually a bit surprised by this, probably not suspecting you to be this pathetically easy to get off. Her clear annoyance is inevitably abated when she seems satisfied in her goal of humiliating you, regardless.";
		else if libido of player > 69 and cunts of player > 0:
			say ". You almost immediately cry out in orgasm, your sexual fluids dripping down and only serving to lubricate what thrusts that might follow. She's actually a bit surprised by this, probably not suspecting you to be this pathetically easy to get off. Her clear annoyance is inevitably abated when she seems satisfied in her goal of humiliating you, regardless.";
		else if cocks of player > 0 or cunts of player > 0:
			say ". [if libido of player > 33]It's not long before you[else]It seems like forever until you finally[end if] cry out in orgasm, your ";
			if cocks of player > 0:
				say "[if cocks of player > 1]cocks firing off their[else]cock firing off its[end if] [cum load size of player] load, [if cock width of player > 15]drenching your torso and neck[else]seed wasted against your torso[end if]. As you eventually recover, it becomes clear that the canine appears satisfied with her endeavors to humiliate you as you are.";
			else:
				say "sexual fluids dripping down and only serving to lubricate what thrusts that might follow. As you eventually recover, it becomes clear that the canine appears satisfied with her endeavors to humiliate you as you are.";
		else:
			say ". It feels like hours before she finally relents, yourself exhausted by this physical assault and that of your unabated lust, the canine appears satisfied in her endeavors to humiliate you.";
		say "     Pulling her fist free of you with an audible, wet sound, she adds further insult to injury by cleaning it against your [if scalevalue of player > 3]large and [end if]beleaguered frame before she inevitably starts forcing your exhausted and embarrassed form to flee from her territory[if scalevalue of player < 4 and player is twistcapped], no doubt relegated to walking funny for the while that follows[end if].";
	else:
		say "     Exposed before the pit bull, she--in turn--relinquishes herself of her pants, revealing her already-dripping cunt before you. Her intent further elucidated when she pulls your [if scalevalue of player > 3]head[else]form[end if] closer, demanding that offer up tribute for your trespass. [if HP of player > 0 or player is submissive]Implicitly complying[else]After a fair amount of coaxing[end if], your [if scalevalue of player > 3]large maw engulfs the entirety of her slick portal almost immediately. The aggressive canine taking great joy in demeaning someone as large as you[else]lips caress her slick portal, her strong grip forcing you more firmly against her crotch, relegating you to contend with her hungry pussy more than any better restraint might have compelled you to[end if].";
		say "     It's not long before your mandated affections show their effect, [if scalevalue of player > 3]thick [end if]tongue penetrating her needy snatch, tasting her rising, lascivious fervor. You must contend with the canine's tight grip and belligerent grinding before you're forced to deal with a sudden flood of her sexual fluids, throbbing hole tightening around your slick organ. Pulling herself free of you she sends you off, booting you from her territory now that she is satisfied.";


to say losetopitbull_m:
	if HP of player > 0:
		say "     You suddenly call for your surrender; however, the canine doesn't buy it and smacks you down to the ground. He continues to strike at you until you're clearly not retaliating. Satisfied, he moves to enact his punishment, stripping you of any attire you might have.";
	else:
		say "     The canine throws one final punch, making your head spin as you fall to the ground. Now too weak to contest his will, he forces you free of any clothing you might have been wearing and prepares to have his way with you.";
	if cunts of player > 0 and a random chance of 3 in 5 succeeds:
		say "     Unbuttoning his pants and pushing you onto your back, he ";
		if scalevalue of player > 3:
			say "takes a moment to adjust your large frame so that your [cunt size desc of player] cunt[if cunts of player > 1]s are[else]is[end if] exposed before him, promptly impaling [if cunts of player > 1]one of them[else]it[end if] with his hardening dick";
		else:
			say "exposes your [cunt size desc of player] cunt[sfn] before him, promptly impaling [if cunts of player > 1]one of them[else]it[end if] with his hardening dick";
		say ". [if cunt length of player > 16]Having little difficulty in penetrating your[else if cunt length of player > 5]Blatant in his use of your[else]Brief, strained grunts elicited as he contends with your tight[end if] hole, he's fairly reckless in the abusive pursuit of his own personal pleasure, bearing little regard for your own well-being in the matter.";
		say "     It's not long before you feel his canine knot bang belligerently against your feminine portal, his thrusts becoming increasingly deliberate as he [if cunt width of player > 9]forces it in with little effort[else if cunt width of player > 5]quickly forces the thick remainder of his meat into you[else]squeezes it in with such painful, abusive force[end if], ";
		if libido of player > 40:
			say "more that enough to cause you to orgasm in twisted pleasure, [if cocks of player > 1]cocks spilling their [cum load size of player] load impotently into the ground[else if cocks of player > 0]cock spilling its [cum load size of player] load impotently into the ground[else]stuffed hole tightening around its belligerent intruder[end if]. Your tightening hole is more than enough to bring him over the edge, and you soon feel his hot seed flood the depths of your womb.[impregchance]";
			decrease libido of player by libido of player / 8;
		else:
			say "his orgasm soon following in its wake, hot seed flooding the depths of your womb.[impregchance]";
			increase libido of player by 5;
		say "     Panting behind you for a moment, the pit bull eventually [if scalevalue of player > 3]pulls himself off you[else]pushes you off of him[end if], giving you little time to gather yourself before forcing you to retreat from his territory.";
	else if anallevel > 1 and ( a random chance of 1 in 5 succeeds or ( cunts of player is 0 and a random chance of 1 in 5 succeeds ) or ( ( anallevel is 3 or player is mpreg_ok ) and a random chance of 1 in 5 succeeds ) ):
		say "     Unbuttoning his pants and pushing you onto your back, he [if scalevalue of player > 3]takes a moment to adjust your large frame so that your asshole is exposed before him, promptly impaling it with his hardening dick[else]exposes your asshole before him, promptly impaling it with his hardening dick[end if]. [if scalevalue of player > 3]Having little difficulty in penetrating your anal ring[else if scalevalue of player < 3 and player is twistcapped]Brief, strained grunts elicited as he contends with your tight ring[else]Blatant in his use of your anal ring[end if], he's fairly reckless in the abusive pursuit of his own personal pleasure, bearing little regard for your own well-being in the matter.";
		say "     It's not long before you feel his canine knot bang belligerently against your ass, his thrusts becoming increasingly deliberate as he [if scalevalue of player > 3]forces it in with little effort[else if scalevalue of player < 3 and player is not twistcapped]squeezes it in with such painful, abusive force[else]quickly forces the thick remainder of his meat into you[end if], ";
		if libido of player > 60 and ( cocks of player > 0 or cunts of player > 0 ):
			say "more that enough to cause you to orgasm in twisted pleasure, [if cocks of player > 1]cocks spilling their [cum load size of player] load impotently into the ground[else if cocks of player > 0]cock spilling its [cum load size of player] load impotently into the ground[else]stuffed hole throbbing against its belligerent intruder[end if]. Your throbbing ring is more than enough to bring him over the edge, and you soon feel his hot seed flood the depths of your bowels.";
			decrease libido of player by libido of player / 8;
		else:
			say "his orgasm soon following in its wake, hot seed flooding the depths of your bowels.";
			increase libido of player by 5;
		say "     Panting behind you for a moment, the pit bull eventually [if scalevalue of player > 3]pulls himself off you[else]pushes you off of him[end if], giving you little time to gather yourself before forcing you to retreat from his territory.[mimpregchance]";
	else if FangWS is 1 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 4 succeeds)):
		say "     Quizzically, he begins to sniff you over, detecting something peculiar about your scent. He steps back, chuckling as he unzips his pants and exposes himself to you, slightly erect cock poking from its sheath. You're briefly confused that he doesn't interact with you, but his intent is soon made crystal clear when you're hit with a flood of his urine.";
		if player is submissive:
			say "     You're overwhelmed by your submissive tendencies driven to take the full brunt of his acrid release. The harsh taste of his fluids against your palate, you immerse yourself in the scent of his piss, partially drinking his fluids. Laughing, he offers mocking approval to such an obliging little bitch[if scalevalue of player > 3], his amusement exacerbated further by how complicit you are in spite your large size[end if]";
		else:
			say "     You [if HP of player > 0]reluctantly oblige his abuse, taking[else]try to turn away, but he grabs you by your head, forcing you to face[end if] the full brunt of his acrid release. [if scalevalue of player > 3]It's a pitiful sight, to see a creature as large as you are pissed on by the comparatively diminutive pit bull, forcing your senses to be[else]You can only silently take his humiliation, senses forcefully[end if] flooded with the taste and smell of his harsh fluids";
		say ". His flow inevitably diminishes before ceasing altogether, much to your [if player is submissive]discontent[else]relief[end if], before he puts his pants back on and leaves you with a harsh swat on the rear, forcing you to gather your things and retreat from his domain.";
	else if anallevel > 1 and ( a random chance of 1 in 5 succeeds or ( cunts of player is 0 and a random chance of 1 in 5 succeeds ) or ( ( anallevel is 3 or player is mpreg_ok ) and a random chance of 1 in 5 succeeds ) ):
		If scalevalue of player > 4:
			say "     He laughs, slapping your rear harshly, no doubt amused to have felled a such a massive trespasser. Too embarrassed, you look away as you feel a couple of fingers beginning to penetrate your anal ring. [if HP of player > 0]Ignoring what protests you may offer up[else]Soft moans of pleasure escaping your lips[end if], your large passage is more than willing to abide his intrusion. With an audible snort, he regards your accommodation as a challenge and shows no restraint in stuffing the whole of his fist down the portal, to little avail.";
		else if scalevalue of player is 4:
			say "     Amused, he gives your rear an audible smack and watches you flinch before you're left to observe as he slowly pushes two of his fingers into your exposed anal ring. Met only with marginal resistance, he replaces his querying intrusion with the whole of his fist, causing you to squirm and struggle impotently against his irreverent hold.";
		else if scalevalue of player < 4:
			say "     Amused, he gives your rear an audible smack and watches you flinch before you watch as he slowly pushes two of his fingers into your exposed anal ring. Writhing in discontent, his irreverent inspection is briefly concluded, only to be replaced by the whole of his fist! [if player is twistcapped]Thankfully, your infection abides such an intrusion in spite of its size and belligerence, though this only serves to amuse the rough dog and encourage him to assault you more harshly[else]You feel a sharp pain as your beleaguered hole is stretched so suddenly, your impotent struggles an endless source of entertainment to the rough dog[end if].";
		say "     [if cocks of player > 1]Cocks driven erect by his influence, their need for attention is left largely disregarded by the canine[else if cocks of player > 0]Cock driven erect by his influence, its need for attention is left largely disregarded by the canine[else if cunts of player > 1]Cunts dripping wet with a needy hunger in the wake of his influence, their desire for attention is left largely disregarded by the canine[else if cunts of player > 0]Cunt dripping wet with a needy hunger in the wake of his influence, its desire for attention is left largely disregarded by the canine[else]Twisted lust gradually overwhelming you, he doesn't appear to regard your genderless state[end if]; rather, he intends to stimulate you purely by force. You feel his knuckles grind against your [if cocks of player > 0]prostate[else]passage[end if] with a reckless abandon";
		if libido of player > 69 and cocks of player > 0:
			say ". You almost immediately fire off your [cum load size of player] load, [if cock width of player > 15]drenching your torso and neck[else]seed wasted against your torso[end if]. He's actually a bit surprised by this, probably not suspecting you to be this pathetically easy to get off. His clear annoyance is inevitably abated when he seems satisfied in his goal of humiliating you, regardless.";
		else if libido of player > 69 and cunts of player > 0:
			say ". You almost immediately cry out in orgasm, your sexual fluids dripping down and only serving to lubricate what thrusts that might follow. He's actually a bit surprised by this, probably not suspecting you to be this pathetically easy to get off. His clear annoyance is inevitably abated when he seems satisfied in his goal of humiliating you, regardless.";
		else if cocks of player > 0 or cunts of player > 0:
			say ". [if libido of player > 33]It's not long before you[else]It seems like forever until you finally[end if] cry out in orgasm, your ";
			If cocks of player > 0:
				say "[if cocks of player > 1]cocks firing off their[else]cock firing off its[end if] [cum load size of player] load, [if cock width of player > 15]drenching your torso and neck[else]seed wasted against your torso[end if]. As you eventually recover, it becomes clear that the canine appears satisfied with his endeavors to humiliate you as you are.";
			else:
				say "sexual fluids dripping down and only serving to lubricate what thrusts that might follow. As you eventually recover, it becomes clear that the canine appears satisfied with his endeavors to humiliate you as you are.";
		else:
			say ". It feels like hours before he finally relents, yourself exhausted by this physical assault and that of your unabated lust, the canine appears satisfied in his endeavors to humiliate you.";
		say "     Pulling his fist free of you with an audible, wet sound, he adds further insult to injury by cleaning it against your [if scalevalue of player > 3]large and [end if]beleaguered frame before he inevitably starts forcing your exhausted and embarrassed form to flee from his territory[if scalevalue of player < 4 and player is not twistcapped], no doubt relegated to walking funny for the while that follows[end if].";
	else:
		say "     Exposed before the pit bull, he--in turn--relinquishes himself of his pants, revealing his semi-erect cock before you. His intent further elucidated when he pulls your [if scalevalue of player > 3]head[else]form[end if] closer, demanding that offer up tribute for your trespass. [if HP of player > 0 or player is submissive]Implicitly complying[else]After a fair amount of coaxing[end if], your [if scalevalue of player > 3]large maw engulfs the entirety of his emergent dick almost immediately. Even the aggressive canine can't help but be a little ill at ease dealing with such a large victim[else]lips engulf the tip of his emergent dick, his strong grip forcing you more firmly against his crotch, relegating you to consume every growing inch[end if].";
		say "     It's not long before your mandated affections render this creature hard, [if scalevalue of player > 3]tongue wrapping around[else]mouth firmly pressed firmly against[end if] his inflated, needy knot. You must contend with the canine's tight grip and belligerent thrusts, before [if scalevalue of player > 3]you're forced to deal with a sudden flood of his sexual fluids, relegated to swallowing down each successive gout of the thick, heady seed[else]he suddenly pulls free of you, jerking off for but a second later before you're assaulted by sudden spurts of his sexual fluids across your exposed face and chest, each successive gout of his thick, heady seed coating you[end if]. [if scalevalue of player > 3]Pulling himself free of you[else]Mocking your form-soiled and shamed state[end if], he sends you off, booting you from his territory now that he is satisfied.[if scalevalue of player < 4] Doubtlessly, it takes a fair while to clean yourself off of the infectious cum.[end if]";


To say beatthepitbull:
	now sextablerun is 0;
	let randompitbullchoice be a list of numbers;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Receive fellatio";
		now sortorder entry is 1;
		add 1 to randompitbullchoice;
		if cock length of player < 18:
			if pitbullgender is 1:
				choose a blank row in table of fucking options;
				now title entry is "Give vaginal";
				now sortorder entry is 3;
				add 3 to randompitbullchoice;
			choose a blank row in table of fucking options;
			now title entry is "Give anal";
			now sortorder entry is 4;
			if anallevel > 1, add 4 to randompitbullchoice;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Receive cunnilingus";
		now sortorder entry is 2;
		add 2 to randompitbullchoice;
		if pitbullgender is 2:
			choose a blank row in table of fucking options;
			now title entry is "Receive vaginal";
			now sortorder entry is 6;
			add 6 to randompitbullchoice;
		if cocks of player is 0 and pitbullgender is 1:
			choose a blank row in table of fucking options;
			now title entry is "Scissoring";
			now sortorder entry is 5;
			add 5 to randompitbullchoice;
	if pitbullgender is 1:
		if HP of Dominick >= 60 and HP of Dominick < 100 and cunts of player > 0 and ( bodyname of player is "Breederslut" or facename of player is "Breederslut" ) and inasituation is false:
			choose a blank row in table of fucking options;
			now title entry is "Recruit for Dominick";
			now sortorder entry is 99;
	if pitbullgender is 2:
		choose a blank row in table of fucking options;
		now title entry is "Receive anal";
		now sortorder entry is 7;
		if anallevel > 1:
			add 7 to randompitbullchoice;
	say "     With one final effort you set upon the canine, who falls under the weight of your superior prowess[run paragraph on]";
	if ( humanity of player - libido of player ) < 0 and (cocks of player > 0 or cocks of player > 0) and (HP of Dominick < 60 or HP of Dominick >= 100):
		say ". Compelled by your lust, you lose your self-control and seek to sate your sexual needs using your fallen foe. You immediately remove what attire might obstruct your tainted endeavor and advance upon them.";
		sort randompitbullchoice in random order;
		if entry 1 of randompitbullchoice is 1, say "[pitbull_vsex1]";
		if entry 1 of randompitbullchoice is 2, say "[pitbull_vsex2]";
		if entry 1 of randompitbullchoice is 3, say "[pitbull_vsex3]";
		if entry 1 of randompitbullchoice is 4, say "[pitbull_vsex4]";
		if entry 1 of randompitbullchoice is 5, say "[pitbull_vsex5]";
		if entry 1 of randompitbullchoice is 6, say "[pitbull_vsex6]";
		if entry 1 of randompitbullchoice is 7, say "[pitbull_vsex7]";
	else if libido of player >= 30 and (cocks of player > 0 or cocks of player > 0):
		say ". As they lay before you this might be an opportune moment to satisfy any lingering need you might possess. Looking over the fallen canine, you quickly weigh your possible options for sexual fun[if HP of Dominick >= 60 and HP of Dominick < 100 and pitbullgender is 1], including possibly trying to turn this junkyard dog into another pet for Dominick[end if].";
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Pass on sex[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber is 0:
				now sextablerun is 1;
				say "Reining in your lust, you decide against such an act and depart from the beast, returning from whence you came.";
			else if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: Is this what you want?";
				if player consents:
					let tempnum be sortorder entry;
					now sextablerun is 1;
					if tempnum is 1:
						say "[pitbull_vsex1]";
					else if tempnum is 2:
						say "[pitbull_vsex2]";
					else if tempnum is 3:
						say "[pitbull_vsex3]";
					else if tempnum is 4:
						say "[pitbull_vsex4]";
					else if tempnum is 5:
						say "[pitbull_vsex5]";
					else if tempnum is 6:
						say "[pitbull_vsex6]";
					else if tempnum is 7:
						say "[pitbull_vsex7]";
					else if tempnum is 7:
						say "[pitbull_dom]";
	else:
		say ". Satisfied with your victory, and feeling that you might not require anything further from them, you depart from the beast.";


to say pitbull_vsex1:		[receive fellatio]
	say "     Pulling the pit bull upright, you offer [if cocks of player > 1]one of [end if]your exposed, [cock of player] dick[smn] to them. [if pitbullgender is 2]His expression one of ill-regard to this prospect, your compelled to grind the hardening, [cock size desc of player] organ against his face until he obliges you[else]A growl her remark, she looks clearly disinterested in what your offering her, forcing you to coax her into compliance as you grind the hardening, [cock size desc of player] thing until she'll reluctantly oblige[end if]. [if cock length of player > 18]Much too massive to abide, the beast is relegated to offering a tongue's lone, imposed affection[else]Tongue's imposed affection offered against its length, the beast follows up with their lip's embrace[end if], organ now slick with a mix of saliva and pre.";
	say "     [if pitbullgender is 2]Prior restraint slowly dissolved in the wake of his own, rising need, he offers up tainted moans as he[else]Not particularly happy with this arrangement, though too weak to offer up any real protest, she growls as she[end if] tastes your emergent fluids, [if pitbullgender is 2]his[else]her[end if] audible regard vibrating against your length. [if pitbullgender is 2]Stroking himself as [else]Perpetual grimace her regard as s[end if]he attends your needs, [if pitbullgender is 2]it's not long before[else]it takes some time until[end if] you reach your bliss, [if cock length of player > 18]dousing the canine with[else]forcing the canine to swallowd[end if] your [cum load size of player] payload.";
	say "     [if pitbullgender is 2]Furiously stroking himself in the wake of this, he spends himself all over the ground soon thereafter, left in a lustful haze as you inevitably[else]Disdainfully spitting out your seed, you let the grumpy creature[end if] depart, tainted need satisfied.";

to say pitbull_vsex2:		[receive cunnilingus]
	say "     Pulling the pit bull upright, you offer [if cunts of player > 1]one of [end if]your exposed, [bodytype of player] cunt[sfn] to them. [if pitbullgender is 2]His[else]Her[end if] expression one of ill-regard to this prospect, your compelled to grind the dripping, [cunt size desc of player] portal against [if pitbullgender is 2]his[else]her[end if] face until [if pitbullgender is 2]he[else]she[end if] obliges you. Tongue's imposed affection offered against it's supple lips, it inevitably descends upon its depths, portal now slick with a mix of saliva and sexual fluids[if cocks of player > 2], your exposed dicks driven hard for wont of attention, forcing your hands to occupy two of them[else if cocks of player is 2], your exposed dicks driven hard for wont of attention, forcing your hands to occupy both of them[else if cocks of player is 1], your exposed dick driven hard for wont of attention, forcing one of your hands to occupy it[end if].";
	say "     Prior restraint slowly dissolved in the wake of [if pitbullgender is 2]his[else]her[end if] own, rising need, [if pitbullgender is 2]he[else]she[end if] offers up tainted moans as [if pitbullgender is 2]he[else]she[end if] tastes your wanton honey, [if pitbullgender is 2]his[else]her[end if] audible regard vibrating against this yielding hole. Stroking [if pitbullgender is 2]him[else]her[end if]self as [if pitbullgender is 2]he[else]she[end if] attends your needs, it's not long before you reach your bliss, [if cocks of player > 0]cock[smn] exploding with gouts of cum, painting the canine[else]dousing the canine's face[end if] with your release.";
	say "     Furiously [if pitbullgender is 2]stroking[else]fondling[end if] [if pitbullgender is 2]him[else]her[end if]self in the wake of this, [if pitbullgender is 2]he[else]she[end if] spends [if pitbullgender is 2]him[else]her[end if]self all over the ground soon thereafter, left in a lustful haze as you inevitably depart, tainted need satisfied.";

to say pitbull_vsex3:		[give vaginal]
	say "     Pulling the pit bull upright, you offer [if cocks of player > 1]one of [end if]your exposed, [cock of player] dick[smn] to her. A growl her remark, she looks clearly disinterested in what your offering her, forcing you to coax her into compliance as you grind the hardening, [cock size desc of player] thing until she'll reluctantly oblige. Tongue's imposed affection offered against its length, the beast follows up with their lip's embrace, organ now slick with a mix of saliva and pre.";
	say "     Satisfied with her work, you pull yourself free of the canine before pushing her into her back. Adjusting her positioning until you might mount her proper, [if cock length of player > 11]she's not particularly happy about the prospect of being impaled by the impressive tool[else]low growl her regard to the plans you have in store for her[end if], not that she has any say in the matter. Slowly, you sink your [cock of player] dick into the folds of her supple flesh, frame tense with ill-regard for this intrusion, it takes [if cock length of player >= 12]some time until she's properly loosened up for[else]but a moment before her flesh yields to[end if] your endeavors.";
	say "     [if scalevalue of player > 3]Larger frame eclipsing her own, she rocks[else]Rocking[end if] to-and-fro under your weight as you fuck her proper, [if scalevalue of player > 3]remaining unrelenting[else]she remains unrelenting[end if] in her audible disdain for your abuse, even as her stuffed hole slickens with tainted approval in the wake of your rising fervor. Firmly pinned to the ground, your grip gradually tightens until the ponderous weight of your imminent bliss, sweat-slicked form ill-abiding embrace for the canine, it's not long before your cry out, [if cockname of player is listed in infections of knotlist]tying the beast as your [cum load size of player] load floods her depths[else][cum load size of player] load flooding her depths[end if][if cocks of player > 2], your exposed members staining her fur[else if cocks of player is 2], your exposed member staining her fur[end if].";
	say "     [if cock length of player > 11 or cockname of player is listed in infections of knotlist]Wrenching[else]Pulling[end if] yourself free of her hole, you let the grumpy canine crawl off as you clean yourself up, now satisfied.";

to say pitbull_vsex4:		[give anal]
	say "     The pit bull regards you with a beleaguered growl as you pull [if pitbullgender is 2]his[else]her[end if] weakened frame to expose [if pitbullgender is 2]his[else]her[end if] taut and muscled ass before you";
	if pitbullgender is 2 and cock length of player > 11:
		say ". Growls diminished into whimpers as you grind [if cocks of player > 1]one of [end if]your [cock size desc of player], hardening dick[smn] between his exposed cheeks, no doubt intimidated by your impressive size";
	else if pitbullgender is 1 and cock length of player > 11:
		say ". Growls growing louder as you grind [if cocks of player > 1]one of [end if]your [cock size desc of player], hardening dick[smn] between her exposed cheeks, no doubt she challenges the prospect of being impaled by such an impressive thing";
	else:
		say ". Grinding [if cocks of player > 1]one of [end if]your [cock size desc of player], hardening dick[smn] against these exposed cheeks you elucidate upon your tainted plans for the beast, much to their ill-regard to the prospect";
	say ". Readied, you thrust the tip of your [cock of player] cock into [if pitbullgender is 2]his[else]her[end if] [if cock length of player > 11]ill-abiding [end if]pucker. Strained grunts escaping your lips, it takes a measure of work until the tight hole will yield to such an irreverent intrusion, the canine groaning against your tainted endeavor.";
	say "     [if scalevalue of player > 3]Ground against the earth under your weight[else]Rocking against the earth[end if], you thrust upon the beast with a rising fervor, alight with this twisted compulsion. Lingering [if pitbullgender is 2]whimpers his[else]growls her[end if] regard, [if pitbullgender is 2]he[else]she[end if] can't help but be influenced by your endeavors, [if pitbullgender is 2]his unattended dick grinding against the ground[else]her unattended cunt staining the ground with its honey[end if]. Pounding [if pitbullgender is 2]his[else]her[end if] ass for a fair measure of time before you find your bliss, [if cockname of player is listed in infections of knotlist]tying your knotted[else]hilting your[end if] organ within [if pitbullgender is 2]his[else]her[end if] bowels[if cock length of player > 11], their cries its punctuation when forced to abide the whole of the impressive thing[end if] as you flood [if pitbullgender is 2]his[else]her[end if] depths with your [cum load size of player] load.";
	say "     You require a moment to recover before you audibly pull your rod from the canine's hole, letting [if pitbullgender is 2]him[else]her[end if] off, still [if pitbullgender is 2]whimpering as he[else]grumbling as she[end if] nurses [if pitbullgender is 2]his[else]her[end if] [if cock length of player > 11]very [end if]sore and cum-stained ass before you yourself head on your merry way.";

to say pitbull_vsex5:		[scissoring]
	say "     Pulling the pit bull upright, you offer [if cocks of player > 1]one of [end if]your exposed, [bodytype of player] cunt[sfn] to them. Her expression one of ill-regard to this prospect, your compelled to grind the dripping, [cunt size desc of player] portal against her face until she obliges you. Tongue's imposed affection offered against it's supple lips, it inevitably descends upon its depths, portal now slick with a mix of saliva and sexual fluids.";
	say "     Not to be too quickly taken over by your wanton need, you free yourself of the canine's slick influence, pushing her onto her back and readjusting your position over the beast, coarse-furred leg pulled entwined with your own[if scalevalue of player > 4], massive[else if scalevalue of player is 4], larger[else if scalevalue of player < 3], smaller[end if] form. Kept in place with one hand, the other assuages your companion, caress of her toned frame and firm breast's inciting moans to escape her muzzle in tainted approval.";
	say "     Slowly, you start to grind the two of your exposed cunts together, made slick by a mix of saliva and shared sexual fluids, this slick attention intent on fueling this twisted, heated fervor further. Growls of immense pleasure her regard for your endeavors, cementing your lascivious dominion over the beast, though you cannot help but moan in the wake of such sensory delight. [if scalevalue of player > 3]Ponderous weight[else]Weight[end if] of your lust bearing down on her, your rising, shared heat radiates out into the [if daytimer is day]day[else]night[end if] sky, the loud, irreverent sounds of your sex its companion.";
	say "     It's not long before the two of you reach the ultimate consummation of your writhing, sweat-slicked endeavors, wracking the two of you with the throes of sapphic bliss. [if scalevalue of player > 3]Larger form crumpling[else]Crumpling[end if] under the weight of exhaustion[if scalevalue of player > 4], you take some care as to not crush her under your weight[end if], eventually recovering enough to pull yourself free. The canine appears to still be too battered and tired to go anywhere, so you choose to leave her to her own business, gathering what you might have put aside and departing.";

to say pitbull_vsex6:		[receive vaginal]
	say "     Exposing the pit bull's crotch to the open air, you offer a hand in twisted affection, stroking his sheathed tool until it exposes itself before you. Whimpering moans the beast's regard for this treatment, his prior aggression melting away under the weight of your tainted endeavor. Sufficiently hard, you position your [if scalevalue of player > 3]larger [end if]form over him before slowly lowering the knotted dick on [if cunts of player > 1]one of [end if]your cunt[sfn], [if cunt length of player < 8]strained grunts escaping your lips in the wake of this fairly sizeable intrusion[else]wanton moans your regard for this intrusion[end if].";
	say "     Organ enveloped within the folds of your [if cunt length of player < 8]tight[else]supple[end if] flesh, you build a gradually rising pace of rocking against his cock, beast [if scalevalue of player > 3]grunting loudly with each descent as he's forced to abide your ponderous weight[else]groaning audibly in the wake of his own growing desire[end if]. [if cocks of player > 0]As you continue, you busy yourself by stroking your own, hardening dick[smn] before your captive audience[else]Gripping him firmly, you continue to writhe against the intrusion offered up by your captive audience[end if], your bliss rapidly on the approach.";
	say "     Heady weight of your fiery need radiating against the [if daytimer is night]night [end if]air, scent heavy with sweat and musk, your fervor reaches its wanton punctuation, impaling yourself upon his knot, your [if cocks of player > 0]dick[smn] painting the canine's form with your [cum load size of player] load[else]grip tightening against the canine[end if] as your needy hole works to milk him dry with a tainted determination. Soon thereafter your endeavors are richly reward, the beast howling under the strain of your climax as he floods the depths of your womb with his thick, virile seed.";
	say "     It takes you awhile to recover from this ordeal, but eventually you do manage to pull the creature's softened dick from your now-leaking portal, departing from him as he lays there, a dazed and exhausted mess of a dog.";

to say pitbull_vsex7:		[receive anal]
	say "     Exposing the pit bull's crotch to the open air, you offer a hand in twisted affection, stroking his sheathed tool until it exposes itself before you. Whimpering moans the beast's regard for this treatment, his prior aggression melting away under the weight of your tainted endeavor. Sufficiently hard, you position your [if scalevalue of player > 3]larger [end if]form over him before slowly your asshole onto the knotted dick, [if scalevalue of player < 3 and player is not twistcapped]strained grunts escaping your lips in the wake of this fairly sizeable intrusion[else]wanton moans your regard for this intrusion[end if].";
	say "     Organ enveloped within [if scalevalue of player < 3 and player is not twistcapped]tight[else]yielding[end if] flesh of your bowels, you build a gradually rising pace of rocking against his cock, beast [if scalevalue of player > 3]grunting loudly with each descent as he's forced to abide your ponderous weight[else]groaning audibly in the wake of his own growing desire[end if]. [if cocks of player > 0]As you continue, you busy yourself by stroking your own, hardening dick[smn] before your captive audience[else]Gripping him firmly, you continue to writhe against the intrusion offered up by your captive audience[end if], your bliss rapidly on the approach.";
	say "     Heady weight of your fiery need radiating against the [if daytimer is night]night [end if]air, scent heavy with sweat and musk, your fervor reaches its wanton punctuation, impaling yourself upon his knot, your [if cocks of player > 0]dick[smn] painting the canine's form with your [cum load size of player] load[else]grip tightening against the canine[end if] as your needy pucker works to milk him dry with a tainted determination. Soon thereafter your endeavors are richly reward, the beast howling under the strain of your climax as he floods the depths of your bowels with his thick, virile seed.";
	say "     It takes you awhile to recover from this ordeal, but eventually you do manage to pull the creature's softened dick from your now-leaking tailpipe, departing from him as he lays there, a dazed and exhausted mess of a dog.";

to say pitbull_dom:
	say "     Knowing that Dom would enjoy taming and breeding the dog-woman, you grab her and pin her over [one of]a scrapped car[or]an old refridgerator[or]a broken table[or]an old crate[at random]. Grabbing her breasts from behind, you tease her nipples while telling her you know what she needs. Still a little resistant, she growls and squirms a bit. This doesn't deter you in wanting to send her to be another plaything for your alpha stud. Slipping a [if player is breederslutbodied]paw[else]hand[end if] between her legs gets a moan from her, which brings a grin to your [if player is breederslutfaced]muzzle[else]face[end if].";
	say "     Given the tough, independent nature of [one of]her breed[or]these junkyard dogs[or]the rough bitches around here[at random], you know you'll need to show her what kind of pleasure she'll be in for. Playing with her increasingly wet folds, you tell her how hot and needy she must be without any real lovers to tend to her. She growls that she gets plenty from the male pit bulls, but you scoff at that, saying they're only rough fools who don't know anything about proper lovemaking. You know someone far better at providing pleasure, a true stud at that.";
	WaitLineBreak;
	say "     'Who? You?' she scoffs back. '[if cocks of player is 0]You're no stud at all. [end if]If anything, you smell like someone's bitch.' You don't let her get to you, knowing it's Dom's scent she can smell upon you. You instead continue to tease her cunny while telling her this is but a taste of the delights your alpha will be able to provide her. She tries to resist, but her obstinance is worn down as the pleasure of your skilled touch continues to excite her.";
	say "     As her resistance wanes, she starts to pant and grind into your [if player is breederslutbodied]paw[else]hand[end if]. You let her overall arousal build with only the occasional small orgasm to leave her all the more wanting. Eventually come moans of desire as she goes on about needing to get fucked. The whole process is quite the powerful turn-on for you as well, but you refrain from self-indulgence and instead revel in the delight of working to turn this headstrong femme into a needy bitch. You let your fingers continue their sensual work, making her more compliant as you tell her of the delights your master will provide in his lovely kennel. You rub her clit as her quivering cunt drools with juices as you tell her how the virile stud'll fill her with strong pups to satisfy that need in her.";
	WaitLineBreak;
	say "     With her arousal at its peak, you let your [if player is breederslutbodied]little paws[else]teasing hand[end if] slip away, telling her that your master's waiting for her. She releases a long, needy whimper, grinding her body against your now-still hands, seeking that final, mind-shattering climax. Left craving that orgasm, she's easily driven to seek out the husky stud you've been describing to provide it to her. You watch the lust-crazed pit bull rush off, following your directions towards your master's kennel and her fate as another breedtoy for him. Once she's out of earshot, you take a few moments to indulge yourself, turning those trained digits of yours onto yourself to give you a much-desired orgasm while imagining the thorough breeding she's going to receive upon her arrival.";
	now libido of Dominick is 2;
	increase XP of Dominick by 1

[
	if pitbullgender is 1:
		if libido of player <= 50:
			Say "Having taken one too many blows the monster signals her submission and begins to back away.";
		else if cocks of player > 0 and cunts of player is 0:
			Say "As she falls you advance on her, pulling down your pants. She looks at your [cock of player] cock and says 'I will tear that fucking thing off and shove it down your throat if you come any closer.' You enjoy having it and decide to back down, and by back down you run away, pants around your ankles. You have a wank later.";
		else if player is herm:
			Say "As she falls you walk up to her and point to the growing bulge in your pants. She pulls them down for you and begins to rub on your [cock of player] cock. She begins to finger your pussy, and in your ecstasy you fall down and she leaps on your hard [cock size desc of player] [cock of player] cock and begins to enthusiastically bounce up and down on it. After a few minutes you cum, filling her pussy with your seed. You help her off and up and both of you go on your ways.";
		else if cocks of player is 0 and cunts of player > 0:
			Say "As she falls you walk up to her squeezing your [breast size desc of player] breasts. She begins to drool at the sight of you and happily obliges you as you remove your pants. She laps heartily at your moist cunt. A few minutes of this and you gently push her over and start to rub your pussy against hers. The feeling is great and after 9 minutes of this you both cry out in orgasm. You help her to her feet and both of you head on your ways.";
	else:
		Say "Having taken one too many blows, the monster signals his submission and begins to back away.";
]

[
To say pit bull attack:
	if cunts of player > 0 and cocks of player is 0:
		Say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes from your [bodytype of player] form. Looking at your crotch she seems pleased with it and drops down and begins to lick. Her rough tongue feels great, for a moment you forget that she just kicked the shit out of you. After a while she stops and throws you onto your back and begins to remove her clothes. She then begins to grind her crotch into yours starting slowly building up to frantically mashing them together like she was trying to start a fire. After a few minutes of this both you and she climax. Leaving you in a puddle of sex while she looks through your clothes for anything of use.";
	if player is herm:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes from your [bodytype of player] form. Looking at your crotch she seems to behold it in curiosity. She lies down and begins to lick your [cock size desc of player] [cock of player] cock. Then deep-throats it and begins to bob her head up and down like a boat on stormy waters. After getting a taste for your cock, she pulls her head and pushes you on your back. She gets up on your [cock of player] cock and begins to grind on it. After a few minutes of this she suddenly sticks a few fingers into your pussy and begins to pump back and forth. You try and hold back as much as you can but, after only a short time, cum all over yourself. She gets up and starts to rifle through your clothes.";
	if cocks of player > 0 and cunts of player is 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes. Looking at your crotch she seems disappointed. She gets you up on your knees and pushes you forward and grasps your [cock size desc of player] [cock of player] cock firmly. She begins to pump on it up and down slapping your balls with her palm all the while. Suddenly you feel a sharp sensation in your ass and look back. SHE IS FISTING YOU! It feels like she's using you as a hand puppet. Your eyes roll back in your head in pleasure as you cum. She pulls her hand out in a *POP* and begins to look through your stuff, finding nothing of value";
	if player is neuter:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes from your [bodytype of player] form. Looking at your crotch she beholds absolutely nothing. She looks surprised and thinks for a moment, and then walks off, seeing nothing she likes.";
]

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Pit bull"; [Name of your new Monster]
	now attack entry is "The pit bull [one of]punches at your head and painfully connects[or]delivers a solid knee to your midsection[or]comes at you with a flurry of violent punches[or]hits you square in the jaw with an incredibly solid haymaker[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthepitbull]";
	now victory entry is "[losetopitbull]";
	now desc entry is "[pitbulldesc]";[ Description of the creature when you encounter it.]
	now face entry is "canine, though somewhat compacted, bears a striking resemblance to a pit bull";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "muscled to fighting form with digitigrade legs ending in paws";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "white fur over your body. You have the occasional black splotch, most notably one on your left eye. It feels soft and pleasurable against your skin";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a short and nubby tail.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "deep red, canine-knotted";[ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it becomes more canine, your ears moving towards the top of your head. It flattens a slight bit and you can feel your teeth become sharper. You appear to have the head of a pit bull"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes adapted for fighting. Muscles grow and become lean. Your legs go digitigrade and claws pop out of your feet. Make that paws now. You feel ready to take on the world"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "short, white hairs pop out all over, with a few black patches, most notably a splotch on your eye"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes attractively muscled, and you feel a sharp pop as a small nub of a tail pops out"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "Your cock feels funny as a knot forms on the base while a sheath forms towards the bottom. It shimmers in color before deciding on a deep burgundy color"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 14;
	now per entry is 10;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 7; [Amount of Damage monster Does when attacking.]
	now area entry is "Junkyard"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";
	now lootchance entry is 20; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]tough[or]muscled[or]lean-and-mean[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "pbull"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"pbull"	retaliation rule	--	--	balltit rule	18	--	--	--	--	--


this is the balltit rule:
	choose row monster from the table of random critters;
	let multiplier be 0;
	let rangenum be ( 90 - ( peppereyes * 4 ) );
	let dam be ( wdam entry times ( a random number from rangenum to 135 ) ) / 100;
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	if cocks of player > 0:			[powerful ball kick]
		now multiplier is 120 + ( ( square root of ( cock width of player + 6 ) ) * 20 );
		now dam is ( dam * multiplier ) / 100;
		say "The [name entry] decides to play dirty and drives their foot into your groin, kicking you square in the nuts! You clutch your aching [short ball size] testes, having taken [special-style-2][dam][roman type] damage!";
	else:					[strong tit punch]
		now multiplier is 110 + ( ( square root of ( breast size of player + 1 ) ) * 6 );
		now dam is ( dam * multiplier ) / 100;
		say "The [name entry] decides to fight dirty and punches you hard in the tit. Ouch! You have taken [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[bodyabsorbancy]"; [body targetted attack]
	now absorb is ( absorb + 1 ) / 2; [absorb is halved, round up]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [absorb] damage!";
	decrease HP of player by dam;
	increase HP of player by absorb;
	follow player injury rule;
	say "You are [descr].";


when play ends:
	if bodyname of player is "Pit bull":
		if humanity of player < 10:
			if cunts of player > 0 and cocks of player is 0:	[Succumb - F]
				say "     Losing your mind to the infection, you wander off into the city and are drawn to a run-down neighborhood. There, you find one of the female pit bulls you've seen around guarding a junkyard. She approaches cautiously, but as you get on all fours and offer your wet pussy to her, she relaxes and moves in to welcome you properly. Her tongue dives deep into your pussy until you cum before she gets you to return the favor. You settle down with her. When the military move through, you both take hide together among the junk, but do venture out at night to drag away a few more female soldiers to make into horny pit bulls to pleasure your alpha.";
			if cocks of player > 0 and cunts of player is 0:	[Succumb - M]
				say "     Losing your mind to the infection, you wander off into the city where you are found by a mostly-unchanged human. She has four enlarged breasts and featureless golden eyes, but no other visible changes. You approach her eagerly, but there is something about her stance and how she looks at you that cuts your charge short. Clearly experienced at handling dogs, she soon has you obediently taking treats and is calling you by pet names. She trains you well over the remaining time in the city; teaching you to be a good dog and rewarding you with treats or hand jobs. Your mind slips further and further away during this time until you're nothing be an obedient pet for your mistress.";
				say "     When the military comes through, she is extracted along with you. They briefly have some concern about taking you along, but she's quite persuasive and has you demonstrate what a good doggy you are. Eventually released, she sets up a new life for herself with you as her loyal pet. Having been treated to prevent infection, she now happily takes you into her bed, letting you rut your mistress, eventually filling her with pit bull puppies with lovely, alluring, golden eyes.";
			else if player is herm:		[Succumb - H]
				say "     Losing your mind to the infection, you wander off into the city. You come across a small pack of other mixed canines and join their group, soon fighting your way to the top to be the leader. You breed the females and let the deposed male leader fill your womb with his seed, taking him as your loyal beta and breeder. Your pack, like many others in the city, struggles for territory and dominance, eventually growing larger and stronger over time under your leadership.";
			else:								[Succumb - N]
				say "     Losing your mind to the infection, you wander off into the city. Being neuter, you lack much of the same wild drive as many of the others around you. You are found by an infected wanderer, who cares of you and trains you to be his loyal dog, helping to protect him from the ravages of this strange world.";
		else:		[Survive]
			say "     After leaving the military's quarantine, you eventually get work as a security guard, watching over construction sites or junkyards at night. Your fierce appearance and loyal nature make you a good candidate for the work and you find it suits you fine. You eventually settle down with a sexy Doberman, rutting with your canine lover often.";


Pit Bull ends here.
