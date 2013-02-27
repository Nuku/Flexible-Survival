Version 4 of Pit Bull For FS by Ilovecock begins here.
[ Version 4.0 - Male form and new creature victory by Blue Bishop and coded by Stripes ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Pit Bull to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

pitbullgender is a number that varies.

to say losetopitbull:
	if pitbullgender is 1:
		say "[losetopitbull_f]";
	otherwise if pitbullgender is 2:
		say "[losetopitbull_m]";

to say losetopitbull_f:
	if hp of player > 0:
		say "     You suddenly call for your surrender; however, the canine doesn't buy it and smacks you down to the ground. She continues to strike at you until you're clearly not retaliating. Satisfied, she moves to enact her punishment, stripping you of any attire you might have.";
	otherwise:
		say "     The canine throws one final punch, making your head spin as you fall to the ground. Now too weak to contest her will, she forces you free of any clothing you might have been wearing and prepares to have her way with you.";
	if cocks of player > 0 and cock length of player < 25 and a random chance of 3 in 5 succeeds:
		say "     With a twisted grin--an initial tell of her wanton hunger--she grabs you by [if cocks of player > 1]one of your [cock size desc of player] dicks[otherwise]your [cock size desc of player] dick[end if], firmly pumping it into arousal, her infectious influence supplementing her harsh treatment of your tool. Her endeavours are only momentary until she is satisfied, pulling free her pants before [if scalevalue of player > 3]climbing on top of you[otherwise]moving over you[end if] and promptly impaling herself with your hardened organ.";
		say "     Rigid with harsh pleasure, her abusive treatment of your tool relentless as she rides your exposed form, [if cock length of player > 12]showing little difficulty in handling your impressive cock, much in spite how tight it is for you[otherwise]offering little restraint in using your beleaguered cock[end if]. Soon overwhelmed, you unload [if cock width of player > 20]an impressive amount of your cum into the canine, her muscled form bloating slightly to abide it[otherwise]your cum into the canine[end if][if cocks of player > 2], your others firing impotently into the open air[otherwise if cocks of player > 1], the other firing impotently into the open air[end if].  [If cock length of player > 12]In the wake of this, she too finds bliss, milking you dry of your load until you can offer her no more[otherwise]However, she isn't quite satisfied, and you're forced to contend with her riding you for a fair while further until--several orgasms later--she too finds bliss, milking you dry of your load until you can offer her no more[end if].";
		say "     Catching her breath, sweat-doused fur rested against you, she soon pulls herself free, setting you off with a prompt boot to the rear, forced to retreat with an awkward gait, poor organ raw from its ill treatment.";
	otherwise if cunts of player > 0 and cocks of player is 0 and a random chance of 3 in 5 succeeds:
		say "     Gripping your thighs firmly, you're forced to watch as her tongue begins to assault [if cunts of player > 1]one of your exposed, [cunt size desc of player] cunts[otherwise]your exposed, [cunt size desc of player] cunt[end if], slick organ's twisted affection [If libido of player > 33]an imposed attempt to alleviate your lingering desire[otherwise]forcing you to twist impotently as your desire rises[end if]. She disengages only briefly to relinquish herself of her pants, dripping portal already slick with her own arousal, before she returns to the task at hand.";
		If scalevalue of player < 3:
			say "     Pulling the legs of your diminutive form up, forcing you to hang mercilessly in the air as she grinds her snatch against yours with a dizzyingly wanton fervor, exacerbated as you're forced to contend with the blood rushing to your head. It's not long before [if libido of player > 33]you cry out in orgasm, her own soon following in its wake[otherwise]she cries out in orgasm, your own soon following in its wake[end if], gushing holes dripping down against your beleaguered form. Satisfied, she lets you go, causing you to stumble to the ground, and she doesn't give you much time to gather yourself and your things before she starts booting you out of her territory, forcing you to flee an embarrassed mess as you are.";
		Otherwise if scalevalue of player > 3:
			say "     Holding you once more, her following assault is somewhat awkward--though just as much outwardly satisfying to her ego--by your comparative large size as she grinds her snatch against yours with such a wanton fervor, Lust streaked with shame that you are so mercilessly used by such a canine smaller than you. It's not long before [if libido of player > 33]you cry out in orgasm, her own soon following in its wake[otherwise]she cries out in orgasm, your own soon following in its wake[end if], gushing holes smearing their mess across your exposed crotch. Now satisfied, she pulls free of you, and she doesn't give you much time to gather yourself and your things before she starts booting you out of her territory, forcing you to flee an embarrassed mess as you are.";
		Otherwise:
			say "     Pulling your legs closer, she drags you forward that she might grind her snatch against yours with such a wanton fervor, perverse hunger made alight the fiery need of the harsh canine, quickly overwhelming you. It's not long before [if libido of player > 33]you cry out in orgasm, her own soon following in its wake[otherwise]she cries out in orgasm, your own soon following in its wake[end if], gushing holes smearing their mess across your exposed crotch and thighs. Now satisfied, she pushing you free of her, and she doesn't give you much time to gather yourself and your things before she starts booting you out of her territory, forcing you to flee an embarrassed mess as you are.";
	otherwise if FangWS is 1 and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 4 succeeds)):
		say "     Quizzically, she begins to sniff you over, detecting something peculiar about your scent. She steps back, chuckling as she unzips her pants and reveals herself to you, cunt exposed to the open air. You're briefly confused that she doesn't interact with you, but her intent is soon made crystal clear when you're hit with a flood of her urine.";
		If player is submissive:
			say "     You're overwhelmed by your submissive tendencies, driven to take the full brunt of her acrid release. The harsh taste of her fluids against your palate, you immerse yourself in the scent of her piss, partially drinking her fluids. Laughing, she offers mocking approval to such an obliging little bitch[if scalevalue of player > 3], her amusement exacerbated further by how complicit you are in spite your large size[end if]";
		otherwise:
			say "     [if hp of player > 0]You reluctantly oblige her abuse, taking[otherwise]You try to turn away but she grabs you by your head, forcing you to face[end if] the full brunt of her acrid release. [if scalevalue of player > 3]It's a pitiful sight, to see a creature as large as you are pissed on by this comparatively diminutive pit bull, forcing your senses to be flooded with the taste and smell of her harsh fluids[otherwise]You can only silently take her humiliation, senses forcefully flooded with the taste and smell of her harsh fluids[end if]";
		say ". Her flow inevitably diminishes before ceasing altogether[if player is submissive], much to your discontent[otherwise], much to your relief[end if], before she puts her pants back on and leaves you with a harsh swat on the rear, forcing you to gather your things and retreat from her domain.";
	otherwise if "More Anal" is listed in feats of player and a random chance of 2 in 5 succeeds:
		If scalevalue of player > 4:
			say "     She laughs, slapping your rear harshly, no doubt amused to have felled a such a massive trespasser. Too embarrassed, you look away as you feel a couple of fingers beginning to penetrate your anal ring. [if hp of player <= 0]Much in spite what protests you may offer up[otherwise]Soft moans of pleasure escaping your lips[end if], your large passage is more than willing to abide her intrusion. With an audible snort, She regards your accommodation as a challenge, and shows no restraint in stuffing the whole of her fist down the portal, her harsh treatment determined to leave an impact.";
		Otherwise if scalevalue of player is 4:
			say "     Amused, she gives your rear an audible smack and watches you flinch before you're left to observe as She slowly pushes two of her fingers into your exposed anal ring. Met only with marginal resistance, She replaces her querying intrusion with the whole of her fist, causing you to squirm and struggle impotently against her irreverent hold.";
		Otherwise if scalevalue of player < 4:
			say "     Amused, she gives your rear an audible smack and watches you flinch before you watch as She slowly pushes two of her fingers into your exposed anal ring. Writhing in discontent, her irreverent inspection is briefly concluded, only to be replaced by the whole of her fist! [if the player is twistcapped]Thankfully, your infection abides such an intrusion, in spite of its size and belligerence, though this only serves to amuse the rough dog and encourage her to assault you more harshly[otherwise]Sharp pains as your beleaguered hole is stretched so suddenly, your impotent struggles are an endless source of entertainment to the rough dog[end if].";
		say "     [if cocks of player > 1]Cocks driven erect by her influence, their need for attention left largely disregarded by the canine[otherwise if cocks of player > 0]Cock driven erect by her influence, its need for attention left largely disregarded by the canine[otherwise if cunts of player > 1]Cunts dripping wet with a needy hunger in the wake of her influence, their desire for attention left largely disregarded by the canine[otherwise if cunts of player > 1]Cunts dripping wet with a needy hunger in the wake of her influence, their desire for attention left largely disregarded by the canine[otherwise]Twisted lust gradually overwhelming you, she doesn't appear to regard your genderless state[end if]; rather, she would stimulate you purely by force. You feel her knuckles grind against your [if cocks of player > 0]prostate[otherwise]passage[end if] with a reckless abandon";
		If libido of player > 69 and cocks of player > 0:
			say ". You almost immediately fire off your [cum load size of player] load[if cock width of player > 15], drenching your torso and neck[otherwise], seed wasted against your torso[end if]. She's actually a bit surprise by this, probably not suspecting you to be this pathetically easy to get off. Her clear annoyance is inevitably abated when she seems satisfied in her goal of humiliating you, regardless.";
		Otherwise If libido of player > 69 and cunts of player > 0:
			say ". You almost immediately cry out in orgasm, your sexual fluids dripping down and only serving to lubricate what thrusts that might follow. She's actually a bit surprise by this, probably not suspecting you to be this pathetically easy to get off. Her clear annoyance is inevitably abated when she seems satisfied in her goal of humiliating you, regardless.";
		Otherwise if cocks of player > 0 or cunts of player > 0:
			say ". [If libido of player > 33]It's not long before you[otherwise]It seems like forever until you finally[end if] cry out in orgasm, ";
			If cocks of player > 0:
				say "[if cocks of player > 1]cocks firing off their[otherwise]cock firing of its[end if] [cum load size of player] load[if cock width of player > 15], drenching your torso and neck[otherwise]load, seed wasted against your torso[end if]. As you eventually recover, it becomes clear that the canine appears satisfied with her endeavours to humiliate you as you are.";
			otherwise:
				say "your sexual fluids dripping down and only serving to lubricate what thrusts that might follow. As you eventually recover, it becomes clear that the canine appears satisfied with her endeavours to humiliate you as you are.";
		otherwise:
			say ". It feels like hours before she finally relents, yourself exhausted by this physical assault and that of your unabated lust, the canine appears satisfied in her endeavours to humiliate you.";
		say "     Pulling her fist free of you with an audible, wet sound, she adds further insult to injury by cleaning it against your [if scalevalue of player > 3]large and [end if]beleaguered frame before she inevitably starts forcing your exhausted and embarrassed form to flee from her territory[if scalevalue of player < 4 and the player is twistcapped], no doubt relegated to walking funny for the while that follows[end if].";
	otherwise:
		say "     Exposed before the pit bull, she--in turn--relinquishes herself of her pants, revealing her already-dripping cunt before you. Her intent further elucidated when she pulls your [if scalevalue of player > 3]head[otherwise]form[end if] closer, demanding that offer up tribute for your trespass. [If hp of player > 0 or player is submissive]Implicitly complying[otherwise]After a fair amount of coaxing[end if], your [if scalevalue of player > 3]large maw engulfs the entirety of her slick portal almost immediately. The aggressive canine taking great joy in demeaning someone as large as you[otherwise]lips caress her slick portal, her strong grip forcing you more firmly against her crotch, relegating you to contend with her hungry pussy more than any better restraint might have compelled you to[end if].";
		say "     It's not long before your mandated affections show their effect, [if scalevalue of player > 3]thick[end if] tongue penetrating her needy snatch, tasting her rising, lascivious fervor. You must contend with the canine's tight grip and belligerent grinding before your forced to deal with a sudden flood of her sexual fluids, throbbing hole tightening around your slick organ. Pulling herself free of you she sends you off, booting you from her territory now that she is satisfied.";


to say losetopitbull_m:
	if hp of player > 0:
		say "     You suddenly call for your surrender; however, the canine doesn't buy it and smacks you down to the ground. He continues to strike at you until you're clearly not retaliating. Satisfied, he moves to enact his punishment, stripping you of any attire you might have.";
	otherwise:
		say "     The canine throws one final punch, making your head spin as you fall to the ground. Now too weak to contest his will, he forces you free of any clothing you might have been wearing and prepares to have his way with you.";
	if cunts of player > 0 and a random chance of 3 in 5 succeeds:
		say "     Unbuttoning his pants and pushing you onto your back, he ";
		if scalevalue of player > 3:
			say "takes a moment to adjust your large frame so that your [cunt size desc of player] cunt[if cunts of player > 1]s are[otherwise]is[end if] exposed before him, promptly impaling [if cunts of player > 1]one of them[otherwise]it[end if] with his hardening dick";
		otherwise:
			say "exposes your [cunt size desc of player] cunt[if cunts of player > 1]s[end if] before him, promptly impaling [if cunts of player > 1]one of them[otherwise]it[end if] with his hardening dick";
		say ". [if cunt length of player > 16]Having little difficulty in penetrating your hole[otherwise if cunt length of player > 5]Blatant in his use of your hole[otherwise]Brief, strained grunts elicited as he contends with your tight hole[end if], he's fairly reckless in the abusive pursuit of his own personal pleasure, bearing little regard for your own well-being in the matter.";
		say "     It's not long before you feel his canine knot bang belligerently against your feminine portal, his thrusts becoming increasingly deliberate as he [if cunt width of player > 9]forces it in with little effort[otherwise if cunt width of player > 5]quickly forces the thick remainder of his meat into you[otherwise]squeezes it in with such painful, abusive force[end if], ";
		If libido of player > 40:
			say "more that enough to cause you to orgasm in twisted pleasure, [if cocks of player > 1]cocks spilling their [cum load size of player] load impotently into the ground[otherwise if cocks of player > 0]cock spilling its [cum load size of player] load impotently into the ground[otherwise]stuffed hole tightening around its belligerent intruder[end if]. Your tightening hole is more than enough to bring him over the edge, and you soon feel his hot seed flood the depths of your womb.[impregchance]";
			decrease libido of player by libido of player / 8;
		otherwise:
			say "his orgasm soon following in its wake, hot seed flooding the depths of your womb.[impregchance]";
			increase libido of player by 5;
		say "     Panting behind you for a moment, the pit bull eventually [if scalevalue of player > 3]pulls himself off you[otherwise]pushes you off of him[end if], giving you little time to gather yourself before forcing you to retreat from his territory.";
	otherwise if "Less Anal" is not listed in feats of player and ( a random chance of 1 in 5 succeeds or ( cunts of player is 0 and a random chance of 1 in 5 succeeds ) or ( ( "More Anal" is listed in feats of player or "MPreg" is listed in feats of player ) and a random chance of 1 in 5 succeeds ) ):
		say "     Unbuttoning his pants and pushing you onto your back, he [if scalevalue of player > 3]takes a moment to adjust your large frame so that your asshole is exposed before him, promptly impaling it with his hardening dick[otherwise]exposes your asshole before him, promptly impaling it with his hardening dick[end if]. [if scalevalue of player > 3]Having little difficulty in penetrating your anal ring[otherwise if scalevalue of player < 3 and the player is twistcapped]Brief, strained grunts elicited as he contends with your tight ring[otherwise]Blatant in his use of your anal ring[end if], he's fairly reckless in the abusive pursuit of his own personal pleasure, bearing little regard for your own well-being in the matter.";
		say "     It's not long before you feel his canine knot bang belligerently against your ass, his thrusts becoming increasingly deliberate as he [if scalevalue of player > 3]forces it in with little effort[otherwise if scalevalue of player < 3 and the player is not twistcapped]squeezes it in with such painful, abusive force[otherwise]quickly forces the thick remainder of his meat into you[end if], ";
		If libido of player > 60 and ( cocks of player > 0 or cunts of player > 0 ):
			say "more that enough to cause you to orgasm in twisted pleasure, [if cocks of player > 1]cocks spilling their [cum load size of player] load impotently into the ground[otherwise if cocks of player > 0]cock spilling its [cum load size of player] load impotently into the ground[otherwise]stuffed hole throbbing against its belligerent intruder[end if]. Your throbbing ring is more than enough to bring him over the edge, and you soon feel his hot seed flood the depths of your bowels.";
			decrease libido of player by libido of player / 8;
		otherwise:
			say "his orgasm soon following in its wake, hot seed flooding the depths of your bowels.";
			increase libido of player by 5;
		say "     Panting behind you for a moment, the pit bull eventually [if scalevalue of player > 3]pulls himself off you[otherwise]pushes you off of him[end if], giving you little time to gather yourself before forcing you to retreat from his territory.[mimpregchance]";
	otherwise if FangWS is 1 and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 4 succeeds)):
		say "     Quizzically, he begins to sniff you over, detecting something peculiar about your scent. He steps back, chuckling as he unzips his pants and exposes himself to you, slightly erect cock poking from its sheath. You're briefly confused that he doesn't interact with you, but his intent is soon made crystal clear when you're hit with a flood of his urine.";
		If player is submissive:
			say "     You're overwhelmed by your submissive tendencies driven to take the full brunt of his acrid release. The harsh taste of his fluids against your palate, you immerse yourself in the scent of his piss, partially drinking his fluids. Laughing, he offers mocking approval to such an obliging little bitch[if scalevalue of player > 3], his amusement exacerbated further by how complicit you are in spite your large size[end if]";
		otherwise:
			say "     [if hp of player > 0]You reluctantly oblige his abuse, taking[otherwise]You try to turn away but he grabs you by your head, forcing you to face[end if] the full brunt of his acrid release. [if scalevalue of player > 3]It's a pitiful sight, to see a creature as large as you are pissed on by the comparatively diminutive pit bull, forcing your senses to be flooded with the taste and smell of his harsh fluids[otherwise]You can only silently take his humiliation, senses forcefully flooded with the taste and smell of his harsh fluids[end if]";
		say ". His flow inevitably diminishes before ceasing altogether[if player is submissive], much to your discontent[otherwise], much to your relief[end if], before he puts his pants back on and leaves you with a harsh swat on the rear, forcing you to gather your things and retreat from his domain.";
	otherwise if "Less Anal" is not listed in feats of player and ( a random chance of 1 in 5 succeeds or ( cunts of player is 0 and a random chance of 1 in 5 succeeds ) or ( ( "More Anal" is listed in feats of player or "MPreg" is listed in feats of player ) and a random chance of 1 in 5 succeeds ) ):
		If scalevalue of player > 4:
			say "     He laughs, slapping your rear harshly, no doubt amused to have felled a such a massive trespasser. Too embarrassed, you look away as you feel a couple of fingers beginning to penetrate your anal ring. [if hp of player > 0]Much in spite what protests you may offer up[otherwise]Soft moans of pleasure escaping your lips[end if], your large passage is more than willing to abide his intrusion. With an audible snort, he regards your accommodation as a challenge, and shows no restraint in stuffing the whole of his fist down the portal, much to little avail.";
		Otherwise if scalevalue of player is 4:
			say "     Amused, he gives your rear an audible smack and watches you flinch before you're left to observe as he slowly pushes two of his fingers into your exposed anal ring. Met only with marginal resistance, he replaces his querying intrusion with the whole of his fist, causing you to squirm and struggle impotently against his irreverent hold.";
		Otherwise if scalevalue of player < 4:
			say "     Amused, he gives your rear an audible smack and watches you flinch before you watch as he slowly pushes two of his fingers into your exposed anal ring. Writhing in discontent, his irreverent inspection is briefly concluded, only to be replaced by the whole of his fist! [if player is twistcapped]Thankfully, your infection abides such an intrusion, in spite of its size and belligerence, though this only serves to amuse the rough dog and encourage him to assault you more harshly[otherwise]Sharp pains as your beleaguered hole is stretched so suddenly, your impotent struggles are an endless source of entertainment to the rough dog[end if].";
		say "     [if cocks of player > 1]Cocks driven erect by his influence, their need for attention left largely disregarded by the canine[otherwise if cocks of player > 0]Cock driven erect by his influence, its need for attention left largely disregarded by the canine[otherwise if cunts of player > 1]Cunts dripping wet with a needy hunger in the wake of his influence, their desire for attention left largely disregarded by the canine[otherwise if cunts of player > 1]Cunts dripping wet with a needy hunger in the wake of his influence, their desire for attention left largely disregarded by the canine[otherwise]Twisted lust gradually overwhelming you, he doesn't appear to regard your genderless state[end if]; rather, he would stimulate you purely by force. You feel his knuckles grind against your [if cocks of player > 0]prostate[otherwise]passage[end if] with a reckless abandon";
		If libido of player > 69 and cocks of player > 0:
			say ". You almost immediately fire off your [cum load size of player] load[if cock width of player > 15], drenching your torso and neck[otherwise], seed wasted against your torso[end if]. He's actually a bit surprise by this, probably not suspecting you to be this pathetically easy to get off. His clear annoyance is inevitably abated when he seems satisfied in his goal of humiliating you, regardless.";
		Otherwise If libido of player > 69 and cunts of player > 0:
			say ". You almost immediately cry out in orgasm, your sexual fluids dripping down and only serving to lubricate what thrusts that might follow. He's actually a bit surprise by this, probably not suspecting you to be this pathetically easy to get off. His clear annoyance is inevitably abated when he seems satisfied in his goal of humiliating you, regardless.";
		Otherwise if cocks of player > 0 or cunts of player > 0:
			say ". [If libido of player > 33]It's not long before you[otherwise]It seems like forever until you finally[end if] cry out in orgasm, ";
			If cocks of player > 0:
				say "[if cocks of player > 1]cocks firing off their[otherwise]cock firing of its[end if] [cum load size of player] load[if cock width of player > 15], drenching your torso and neck[otherwise], seed wasted against your torso[end if]. As you eventually recover, it becomes clear that the canine appears satisfied with his endeavours to humiliate you as you are.";
			Otherwise:
				say "your sexual fluids dripping down and only serving to lubricate what thrusts that might follow. As you eventually recover, it becomes clear that the canine appears satisfied with his endeavours to humiliate you as you are.";
		Otherwise:
			say ". It feels like hours before he finally relents, yourself exhausted by this physical assault and that of your unabated lust, the canine appears satisfied in his endeavours to humiliate you.";
		say "     Pulling his fist free of you with an audible, wet sound, he adds further insult to injury by cleaning it against your [if scalevalue of player > 3]large and [end if]beleaguered frame before he inevitably starts forcing your exhausted and embarrassed form to flee from his territory[if scalevalue of player < 4 and player is not twistcapped], no doubt relegated to walking funny for the while that follows[end if].";
	otherwise:
		say "     Exposed before the pit bull, he--in turn--relinquishes himself of his pants, revealing his semi-erect cock before you. His intent further elucidated when he pulls your [if scalevalue of player > 3]head[otherwise]form[end if] closer, demanding that offer up tribute for your trespass. [If hp of player > 0 or player is submissive]Implicitly complying[otherwise]After a fair amount of coaxing[end if], your [if scalevalue of player > 3]large maw engulfs the entirety of his emergent dick almost immediately. Even the aggressive canine can't help but be a little ill at ease dealing with such a large victim[otherwise]lips engulf the tip of his emergent dick, his strong grip forcing you more firmly against his crotch, relegating you to consume every growing inch[end if].";
		say "     It's not long before your mandated affections render this creature hard, [if scalevalue of player > 3]tongue wrapping around is inflated, needy knot[otherwise]mouth firmly pressed firmly against his inflated, needy knot[end if]. You must contend with the canine's tight grip and belligerent thrusts, before [if scalevalue of player > 3]your forced to deal with a sudden flood of his sexual fluids, relegated to swallowing down each successive gout of the thick, heady seed[otherwise]he suddenly pulls free of you, jerking off for but a second later before you're assaulted by sudden spurts of his sexual fluids across your exposed face and chest, each successive gout of his thick, heady seed coating you[end if]. [If scalevalue of player > 3]Pulling himself free of you[otherwise]Mocking your form-soiled and shamed state[end if], he sends you off, booting you from his territory now that he is satisfied. [If scalevalue of player < 4]Doubtlessly, it takes a fair while to clean yourself off of the infectious cum.[end if]";


To say beatthepitbull:
	if pitbullgender is 1:
		if libido of player <= 50:
			Say "Having taken one too many blows the monster signals her submission and begins to back away.";
		otherwise if cocks of player is greater than 0 and cunts of player is 0:
			Say "As she falls you advance on her, pulling down your pants. She looks at your [cock of player] cock and says 'I will tear that fucking thing off and shove it down your throat if you come any closer.' You enjoy having it and decide to back down, and by back down you run away, pants around your ankles. You have a wank later.";
		otherwise if cocks of player is greater than 0 and cunts of player is greater than 0:
			Say "As she falls you walk up to her and point to the growing bulge in your pants. She pulls them down for you and begins to rub on your [cock of player] cock. She begins to finger your pussy, and in your ecstasy you fall down and she leaps on your hard [cock size desc of player] [cock of player] cock and begins to enthusiastically bounce up and down on it. After a few minutes you cum, filling her pussy with your seed. You help her off and up and both of you go on your ways.";
		otherwise if cocks of player is 0 and cunts of player is greater than 0:
			Say "As she falls you walk up to her squeezing your [breast size desc of player] breasts. She begins to drool at the sight of you and happily obliges you as you remove your pants. She laps heartily at your moist cunt. A few minutes of this and you gently push her over and start to rub your pussy against hers. The feeling is great and after 9 minutes of this you both cry out in orgasm. You help her to her feet and both of you head on your ways.";
	otherwise:
		Say "Having taken one too many blows, the monster signals his submission and begins to back away.";


To say pit bull attack:
	if cunts of player > 0 and cocks of player is 0:
		Say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes from your [bodytype of player] form. Looking at your crotch she seems pleased with it and drops down and begins to lick. Her rough tongue feels great, for a moment you forget that she just kicked the shit out of you. After a while she stops and throws you onto your back and begins to remove her clothes. She then begins to grind her crotch into yours starting slowly building up to frantically mashing them together like she was trying to start a fire. After a few minutes of this both you and she climax. Leaving you in a puddle of sex while she looks through your clothes for anything of use.";	
	if cocks of player is greater than 0 and cunts of player is greater than 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes from your [bodytype of player] form. Looking at your crotch she seems to behold it in curiosity. She lies down and begins to lick your [cock size desc of player] [cock of player] cock. Then deep-throats it and begins to bob her head up and down like a boat on stormy waters. After getting a taste for your cock, she pulls her head and pushes you on your back. She gets up on your [cock of player] cock and begins to grind on it. After a few minutes of this she suddenly sticks a few fingers into your pussy and begins to pump back and forth. You try and hold back as much as you can but, after only a short time, cum all over yourself. She gets up and starts to rifle through your clothes.";
	if cocks of player is greater than 0 and cunts of player is 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes. Looking at your crotch she seems disappointed. She gets you up on your knees and pushes you forward and grasps your [cock size desc of player] [cock of player] cock firmly. She begins to pump on it up and down slapping your balls with her palm all the while. Suddenly you feel a sharp sensation in your ass and look back. SHE IS FISTING YOU! It feels like she's using you as a hand puppet. Your eyes roll back in your head in pleasure as you cum. She pulls her hand out in a *POP* and begins to look through your stuff, finding nothing of value";
	if cocks of player is 0 and cunts of player is 0:
		say "As you get hit one too many times you go to knee and signal your submission. She saunters over to you and strips off your clothes from your [bodytype of player] form. Looking at your crotch she beholds absolutely nothing. She looks surprised and thinks for a moment, and then walks off, seeing nothing she likes.";

to say pitbulldesc:
	choose row monster from the table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You run into what looks to be a fairly muscled canine creature. The pit bull growls softly as it glares at you before barking a few times.  When you stand your ground, it heads off.  Hopefully it'll tell the others to leave you alone as well.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now pitbullgender is 0;
	otherwise if guy is banned:
		now pitbullgender is 1;
	otherwise if girl is banned:
		now pitbullgender is 2;
	otherwise if guy is warded and girl is warded:
		now pitbullgender is a random number between 1 and 2;
	otherwise if guy is warded:
		now pitbullgender is 1;
	otherwise if girl is warded:
		now pitbullgender is 2;
	otherwise:
		now pitbullgender is a random number between 1 and 2;
	if pitbullgender is 1:
		say "     You run into what looks to be a fairly muscled canine. The female growls deeply, adorned unkempt and dirty attire, she makes it clear that you've encroached upon her territory. Her transparently fiery temperament ill-equipped to abide such a trespass, she lunges forward to attack!";
	otherwise if pitbullgender is 2:
		say "     You run into what looks to be a fairly muscled canine. The male growls deeply, adorned unkempt and dirty attire, he makes it clear that you've encroached upon his territory. His transparently fiery temperament ill-equipped to abide such a trespass, he lunges forward to attack!";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Pit bull"; [Name of your new Monster]
	now attack entry is "[one of]Punches at your head  and painfully connects [or] Delivers a solid knee to your midsection [or] Comes at you with a flurry of violent punches [or] Hits you square in the jaw with an incredibly solid haymaker.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthepitbull]";
	now victory entry is "[losetopitbull]";
	now desc entry is "[pitbulldesc]";[ Description of the creature when you encounter it.]
	now face entry is "canine, though somewhat compacted, bears a striking resemblance to a pit bull";[ Face description, format as the text "Your face is (your text)."] 
	now body entry is "muscled to fighting form with digitigrade legs ending in paws";[ Body Description, format as the text "Your Body is (your text)."] 
	now skin entry is "white fur over your body.  You have an the occasional black splotch, most notably one on your left eye.  It feels soft and pleasurable against your skin";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a short and nubby tail.";[ Tail description, write a whole Sentence or leave blank. ]  
	now cock entry is "deep red, canine-knotted";[ Cock Description, format as you have a 'size' (your text) cock.] 
	now face change entry is "it becomes more canine your ears moving towards the top of your head. It flattens a slight bit and you can feel your teeth become sharper. You appear to have the head of a pit bull"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes adapted for fighting. Muscles grow and become lean. Your legs go digitigrade and claws pop out of your feet. Make that paws now. You feel ready to take on the world"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "short, white hairs pop out all over, with a few black patches, most notably a splotch on your eye"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it becomes attractively muscled and you feel a sharp pop as a small nub of a tail pops out"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "Your cock feels funny as a knot forms on the base while a sheath forms towards the bottom, it shimmers in color before deciding on a deep burgundy color"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 16;
	now sta entry is 14;					
	now per entry is 10;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 30;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking.]
	now area entry is "Junkyard";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 6;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 20;			[ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";			[ Loot monster drops, ]
	now lootchance entry is 20;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]tough[or]muscled[or]lean-and-mean[at random]";
	now type entry is "canine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "pbull";		[ Row used to designate any special combat features, "default" for standard combat. ]

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
		say "The [name entry] decides to play dirty and drives their foot into your groin, kicking you square in the nuts!  You clutch your aching [ball size] testes, having taken [special-style-2][dam][roman type] damage!";
	otherwise:					[strong tit punch]
		now multiplier is 110 + ( ( square root of ( breast size of player + 1 ) ) * 6 );
		now dam is ( dam * multiplier ) / 100;
		say "The [name entry] decides to fight dirty and punches you hard in the tit.  Ouch!  You have taken [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[bodyabsorbancy]";		[body targetted attack]
	now absorb is ( absorb + 1 ) / 2; [absorb is halved, round up]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [absorb] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";


when play ends:
	if bodyname of player is "Pit bull":
		if humanity of player < 10:
			if cunts of player > 0 and cocks of player is 0:	[Succumb - F]
				say "     Losing your mind to the infection, you wander off into the city and are drawn to a run-down neighbourhood.  There, you find one of the female pit bulls you've seen around guarding a junkyard.  She approaches cautiously, but as you get on all fours and offer your wet pussy to her, she relaxes and moves in to welcome you properly.  Her tongue dives deep into your pussy until you cum before she gets you to return the favour.  You settle down with her.  When the military move through, you both take hide together among the junk, but do venture out at night to drag away a few more female soldiers to make into horny pit bulls to pleasure your alpha.";
			if cocks of player > 0 and cunts of player is 0:	[Succumb - M]
				say "     Losing your mind to the infection, you wander off into the city where you are found by a mostly-unchanged human.  She has four enlarged breasts and featureless golden eyes, but no other visible changes.  You approach her eagerly, but there is something about her stance and how she looks at you that cuts your charge short.  Clearly experienced at handling dogs, she soon has you obediently taking treats and is calling you by pet names.  She trains you well over the remaining time in the city; teaching you to be a good dog and rewarding you with treats or hand jobs.  Your mind slips further and further away during this time until you're nothing be an obedient pet for your mistress.";
				say "     When the military comes through, she is extracted along with you.  They briefly have some concern about taking you along, but she's quite persuasive and has you demonstrate what a good doggy you are.  Eventually released, she sets up a new life for herself with you as her loyal pet.  Having been treated to prevent infection, she now happily takes you into her bed, letting you rut your mistress, eventually filling her with pit bull puppies with lovely, alluring, golden eyes.";
			otherwise if cocks of player > 0 and cunts of player > 0:		[Succumb - H]
				say "     Losing your mind to the infection, you wander off into the city.  You come across a small pack of other mixed canines and join their group, soon fighting your way to the top to be the leader.  You breed the females and let the deposed male leader fill your womb with his seed, taking him as your loyal beta and breeder.  Your pack, like many others in the city, struggles for territory and dominance, eventually growing larger and stronger over time under your leadership.";
			otherwise:								[Succumb - N]
				say "     Losing your mind to the infection, you wander off into the city.  Being neuter, you lack much of the same wild drive as many of the others around you.  You are found by an infected wanderer, who cares of you and trains you to be his loyal dog, helping to protect him from the ravages of this strange world.";
		otherwise:		[Survive]
			say "     After leaving the military's quarantine, you eventually get work as a security guard, watching over construction sites or junkyards at night.  Your fierce appearance and loyal nature make you a good candidate for the work and you find it suits you fine.  You eventually settle down with a sexy Doberman, rutting with your canine lover often.";


[ Edit this to have the correct Name as wall]
Pit Bull For FS ends here.