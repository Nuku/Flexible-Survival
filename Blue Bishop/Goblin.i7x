Version 2 of Goblin by Blue Bishop begins here.
[Version 2.3 - Commissioned Player Loss Facelift]
[ - This creature was originally created by Stripes and has since been relocated to Blue Bishop's folder after substantial overhauls - ]

"Adds a Goblin creature to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

gobgender is a number that varies.
gobdem is a truth state that varies. gobdem is usually false.

to say losetogoblin:
	if gobgender is 1:
		say "[losetogob_f]";
	else if gobgender is 2:
		say "[losetogob_m]";

to say losetogob_f:
	say "     The creature emits a gleeful giggle when [if HP of Player > 0]her victim surrenders[else]she fells you in combat[end if]. The little goblin pushing you to the ground, forcing you to relinquish any attire you might have.";
	say "     '";
	if gobdem is true:
		say "[if scalevalue of Player > 3][one of]He he, big - BIG, ha ha[or]Ah, ah - s-so big[or]Big, big, HA, big[at random][else][one of]He he, mine, MINE[or]Y-yes, mine, ME, mine[or]Mine, mine, not yours, mine[at random][end if]";
	else:
		say "[if scalevalue of Player > 3 and HP of Player > 0][one of]Oh, this is embarrassing, submitting to little ol['] me[or]Hm, I wouldn't imagine so large as a bottom[or]I see my charm can fell even those so large[at random][else if scalevalue of Player > 3][one of]What a shame, I figured someone your size would put up a better fight[or]Clearly you underestimated me, don't let my size fool you[or]I'd steal my new trophy away, but clearly you won't fit in my hole[at random][else if HP of Player > 0][one of]Oh, if everyone just gave up as quickly as you[or]Clearly you couldn't resist my charm[or]I think my friend wants to play a little game[at random][else][one of]Shouldn't've underestimated me, bub[or]Should've ran when you could[or]That's what ya get for trespassing my turf[at random][end if]";
	if Player is male and Cock Length of Player < 14 and a random chance of 1 in 2 succeeds:
		say "!' She moves a hand to grab [if Cock Count of Player > 1]one of your cocks[else]your cock[end if], stroking it as she shifts closer, her tongue lewdly caressing the [cock size desc of Player] tool until you are[if HP of Player < 1] forcibly[end if] made hard[if Cock Count of Player > 2], its brothers soon following there after[else if Cock Count of Player > 1], its brother soon following there after[end if]";
		if scalevalue of Player > 3:
			say ". You can't refuse to admit to yourself that it's a little embarrassing when such a small [if HP of Player > 0]creature[else]assailant[end if] is forced to scale your sizable, [bodytype of Player] form to position herself over you";
		else:
			say ". Satisfied, she scrambles to position himself on top of your [bodytype of Player] form";
		say ", the spry lady shifting her tattered loincloth over so that it won't get in the way of impaling herself with your throbbing organ, she grinds her shapely ass along its length.";
		say "     Now ready for you, the creature slowly sinks [if Cock Count of Player > 2]one of your cocks within the folds of her cunt, your remaining organs left neglected in the open air[else if Cock Count of Player is 2]one of your cocks within the folds of her cunt, the remaining organ left neglected in the open air[else]your cock within the folds of her cunt[end if]. She moans loudly in satisfaction, savoring the[if HP of Player < 1] forced[end if] intrusion upon her wanton hole, inching it deeper in until it becomes fully engulfed[if Player is knotted] save for the knot[end if][if Cock Length of Player > 8], no doubt strained by its comparatively large size[end if]. The goblin's revels in this lewd ceremony remain fairly brief, however, as she soon shifts gears to using you properly.";
		say "     '";
		if gobdem is true:
			say "[if Cock Length of Player > 8][one of]Nng, big, BIG, ah[or]Oof, ah, nng[or]Oh, ouch, ah[at random][else][one of]Ah, ha, nng[or]Hm, ah, oh[or]Heh, nng, MINE, ah[at random][end if]";
		else:
			say "[if Cock Length of Player > 8][one of]Nng, this is going to be a challenge[or]Ah, oh, don't think I can't handle you[or]Ah, ooh, this is going to take a bit of work[at random][else][one of]Oh, this'll be a fun ride[or]Ah, I couldn't resist taking this bad boy out for a ride[or]Ooh, the fun's just started here[at random][end if]";
		say "!' Hands stroking your [bodydesc of Player] torso as she builds up a motion, she's quick to illustrate a manic fervor in pumping himself against your hardened organ, [if scalevalue of Player > 3]though such a diminutive creature barely registers against your substantially larger form, her sickeningly rapid motion against your member nonetheless has an effect on you[else]her dizzying motions pushing you back and forth with sickening rapidity[end if][if Cock Count of Player > 3]. In her endeavors, she instinctively grabs two of your free dicks, pumping them wildly in her wanton fury[else if Cock Count of Player is 3]. In her endeavors, she instinctively grabs both of your free dicks, pumping them wildly in her wanton fury[else if Cock Count of Player is 2]. In her endeavors, she instinctively grabs your free dick, pumping it wildly in her wanton fury[end if].";
		say "     The wet sound of her continued motion filling the air for but a few short minutes later, she finally cries out in ecstasy, [if Player is knotted]tying with you as her cunt tightens[else]her cunt tightening[end if] further around your cock until you're [if HP of Player > 0]compelled[else]forced[end if] to find bliss as well, pumping her voracious womb with your [Cum Load Size of Player] cum[if Cock Count of Player > 2]. Not so lost in lust as to relent in humiliating you further, she aims both free tools in her hold to your face, spraying you with your own seed[else if Cock Count of Player is 2]. Not so lost in lust as to relent in humiliating you further, she aims the free tool in her hold to your face, spraying you with your own seed[end if]";
		if Ball Size of Player > 5:
			say ". Her moans becoming weak and disoriented, she wasn't at all prepared for how much you'd unload into her. Her quickly beleaguered belly is bloating with your immense sexual fluids until each successive spurt shoots out from the lips of her stuffed hole[if Cock Count of Player > 1]. You're not spared any shame either, your front getting absolutely drenched in your own cum[end if].";
			say "     '";
			if gobdem is true:
				say "[one of]Nng, uhh, too much[or]Ooh, urg, hoo[or]Ah, m-mine, so much mine[at random]";
			else:
				say "[one of]Uegh, I think I bit off more than I could chew[or]Oh, am I going to be sore now[or]Urgh, I'm not going to get anywhere with all this[at random]";
		else:
			say ". Approving moans escaping her lips, her tight hole milks you of every last drop you have to offer. Still on the high of her own lust, she continues to ride you until you're too soft to sate her needs any further.";
			say "     '";
			if gobdem is true:
				say "[one of]Ah, m-mine, ah[or]Ah, whew, hm[or]Ah, ha, mine[at random]";
			else:
				say "[one of]Whew, nothing I couldn't handle[or]Oh, that was some ride[or]Ah, I just need a second to catch my breath[at random]";
		say "...' She eventually pulls herself free of your organ, a trail of seed in its wake, before she [if scalevalue of Player > 3]makes the slow descent off of you[else]climbs off of you[end if]. Still disoriented from lust, it takes awhile for her to readjust her paltry attire before she dizzily wanders off, [if Ball Size of Player > 5]leaving a trail of seed in her wake[else]abandoning you[end if]. You eventually manage to pull yourself to your feet, [if Cock Count of Player > 1]taking a moment to clean yourself of your own sexual fluids[else]taking a moment to clean yourself of the mix of sexual fluids[end if] as best you can before leaving this place as well before the scent of sex draw others near.";
		CreatureSexAftermath "Goblin" receives "PussyFuck" from "Player";
	else:
		say "!' Tugging at you towards her crotch, it's clear she intends to have you satisfy her orally, ";
		if Player is submissive or HP of Player > 0:
			say "and you are [if Player is submissive]compelled by your submissive inclinations[else]quickly compelled[end if] to oblige[if scalevalue of Player > 4]. Thrusting your head between the diminutive creature's thighs, you practically lift her off her feet, the goblin quickly scrambling to ensure she doesn't fall back. Perhaps a bit too forward in your actions, your intent is clarified when your tongue moves to pleasure the folds of her cunt from under the cover of a scant loincloth[else if scalevalue of Player is 4]. Thrusting your head between the diminutive creature's thighs, she looks visibly amused at such a large beast's compliance with something so small as her. Not one to keep the girl waiting, your tongue soon moves to pleasure the folds of her cunt from under the cover of a scant loincloth[else]. She unobstructs your view of her cunt by parting her scant loincloth, forcing her crotch against your face until you oblige her whims, your tongue soon probing the folds of her flesh[end if].";
			say "     '";
			if gobdem is true:
				say "[one of]Slut - good slut - ha[or]Yes - yes good - mm[or]Mine, my slut, MINE[at random]";
			else:
				say "[if scalevalue of Player > 3][one of]Oh, I think my new big friend likes eating pussy[or]Ha, what a massive slut[or]Hm, what a big toy[at random][else][one of]Oh, it looks like someone enjoys eating pussy[or]Ha, it look at that slut go[or]I think you're a natural at being a toy[at random][end if]";
		else:
			say "[if scalevalue of Player > 4]though it would appear that you are too large and non-complicit to oblige her endeavors; defeated you as she may have, she's not strong enough to pull you along. Eventually, she concedes to just sitting on your face until you're forced to humor her, the scent of her eager snatch flooding your nostrils. This treatment soon has you increasingly eager to sate her obvious need as you are driven[else if scalevalue of Player > 3]and though you are much larger than the goblin, she eventually situates you to properly pleasure her hole. Ill-inclined to humor her, she coaxes you into compliance by pressing her now-exposed snatch against your face. The scent of her arousal flood your nostrils until you're driven by your own emergent lust[else]eventually situating you to properly pleasure her hole. Ill-inclined to humor her, she coaxes you into compliance by pressing her now-exposed snatch against your face. The scent of her arousal floods your nostrils until you're driven by your own emergent lust[end if] to comply.";
			say "     '";
			if gobdem is true:
				say "[one of]Naughty, naughty[or]Ha, ha - good - ha[or]Mine, MINE, yes[at random]";
			else:
				say "[if scalevalue of Player > 3][one of]There we go, keep playing nice now, big one[or]That's right, be a good big slut[or]There we go, the big one knows their place[at random][else][one of]There we go, keep playing nice[or]That's right, be a good little slut[or]There we go, someone knows their place now[at random][end if]";
		say "!' Moaning audibly in approval, the creature grinds her crotch against your slick organ's irreverent probing. [if scalevalue of Player > 4]The appendage is much too large to fit, but that doesn't stop you from grinding your tongue against the entrance of her diminutive portal[else]She writhes in pleasure as the appendage slowly floods the depths of her hole, your tongue's raid rewarded with a taste of her sexual fluids[end if]. Her motions become increasingly erratic by the rising fervor in her sexual drive, and your affections are soon met with a flood of the goblin's release. She lingers for a moment, panting, until she finds herself sufficiently recovered before pulling herself free from you.";
		say "     '";
		if gobdem is true:
			say "[one of]Ha, ha, yes, bye[or]Bye, mine, heh[or]Good, good[at random]";
		else:
			say "[if HP of Player > 0 or Player is submissive][one of]Not half bad, I've certainly had worse[or]That was some nice, quick fun[or]Ah, it's good to get some proper satisfaction around here[at random][else][one of]Not half bad, once you learned your place[or]See? That wasn't all that bad[or]Maybe next time would give me less trouble[at random][end if]";
		say ".' [if scalevalue of Player > 4]She pats you teasingly on the top of your head[else]She gives you a playful swat on your behind[end if] before departing, the creature finding a tiny tunnel in the junk before descending within it. Now free, you suppose you could be worse for wear, though you are somewhat disoriented by the influence of her infection. You stagger off, wanting to get some distance before the scent of sex draws others.";
	CreatureSexAftermath "Player" receives "OralPussy" from "Goblin";

to say losetogob_m:
	say "     The creature emits a sinister cackle when [if HP of Player > 0]his victim surrenders[else]he fells you in combat[end if]. The little goblin pushing you to the ground, forcing you to relinquish any attire you might have.";
	say "     '";
	if gobdem is true:
		say "[if scalevalue of Player > 3][one of]He he, big - BIG, ha ha[or]Ah, ah - s-so big[or]Big, big, HA, big[at random][else][one of]He he, mine, MINE[or]Y-yes, mine, ME, mine[or]Mine, mine, not yours, mine[at random][end if]";
	else:
		say "[if scalevalue of Player > 3 and HP of Player > 0][one of]Oh, this is embarrassing, submitting to little ol['] me[or]Ah, I'm not one to assume someone so large as a bottom[or]I see my charm can fell even those so large[at random][else if scalevalue of Player > 3][one of]What a shame, I figured someone your size would put up a better fight[or]Clearly you underestimated me, don't let my size fool you[or]I'd steal my new trophy away, but clearly you won't fit in my hole[at random][else if HP of Player > 0][one of]Oh, if everyone just gave up as quickly as you[or]Clearly you couldn't resist my charm[or]I think my friend wants to play a little game[at random][else][one of]Shouldn't've underestimated me, bub[or]Should've ran when you could[or]That's what ya get for trespassing my turf[at random][end if]";
	if anallevel > 1 and Player is male and Cock Length of Player < 15 and a random chance of 1 in 6 succeeds:
		say "!' He moves a hand to grab [if Cock Count of Player > 1]one of your cocks[else]your cock[end if], stroking it as he shifts closer, his tongue lewdly caressing the [cock size desc of Player] tool until you are[if HP of Player < 1] forcibly[end if] made hard[if Cock Count of Player > 2], its brothers soon following there after[else if Cock Count of Player > 1], its brother soon following there after[end if]";
		if scalevalue of Player > 3:
			say ". You can't refuse to admit to yourself that it's a little embarrassing when such a small [if HP of Player > 0]creature[else]assailant[end if] is forced to scale your sizable, [bodytype of Player] form to position herself over you";
		else:
			say ". Satisfied, he scrambles to position himself on top of your [bodytype of Player] form";
		say ", the spry lad shifting his tattered loincloth over so that it won't get in the way of impaling himself with your throbbing organ, his own standing proudly to attention as he grinds his shapely ass along its length. Apparently, this particular goblin is rather fond of going on a ride.";
		say "     Quickly in position, the creature slowly sinks [if Cock Count of Player > 2]one of your cocks past his supple anal ring, your remaining organs left neglected in the open air[else if Cock Count of Player is 2]one of your cocks past his supple anal ring, the remaining organ left neglected in the open air[else]your cock past his supple anal ring[end if]. He moans loudly in satisfaction, savoring the[if HP of Player < 1] forced[end if] intrusion upon his wanton hole, inching it deeper in until it becomes fully engulfed[if Player is knotted] save for the knot[end if][if Cock Length of Player > 8], no doubt strained by its comparatively large size[end if]. The goblin's revels in this lewd ceremony remain fairly brief, however, as he soon shifts gears to using you properly.";
		say "     '";
		if gobdem is true:
			say "[if Cock Length of Player > 8][one of]Nng, big, BIG, ah[or]Oof, ah, nng[or]Oh, ouch, ah[at random][else][one of]Ah, ha, nng[or]Hm, ah, oh[or]Heh, nng, MINE, ah[at random][end if]";
		else:
			say "[if Cock Length of Player > 8][one of]Nng, this is going to be a challenge[or]Ah, oh, don't think I can't handle you[or]Ah, ooh, this is going to take a bit of work[at random][else][one of]Oh, this'll be a fun ride[or]Ah, I couldn't resist taking this bad boy out for a ride[or]Ooh, the fun's just started here[at random][end if]";
		say "!' Hands stroking your [bodydesc of Player] torso as he builds up a motion, he's quick to illustrate a manic fervor in pumping himself against your hardened organ, [if scalevalue of Player > 3]though such a diminutive creature barely registers against your substantially larger form, his sickeningly rapid motion against your member nonetheless has an effect on you[else]his dizzying motions pushing you back and forth with sickening rapidity[end if][if Cock Count of Player > 3]. In his endeavors, he instinctively grabs two of your free dicks, frotting them wildly against his own in wanton fury[else if Cock Count of Player is 3]. In his endeavors, he instinctively grabs both of your free dicks, frotting them wildly against his own in wanton fury[else if Cock Count of Player is 2]. In his endeavors, he instinctively grabs your free dick, frotting it wildly against his own in wanton fury[end if].";
		say "     The wet sound of his continued motion filling the air for but a few short minutes later, he finally cries out in ecstasy, [if Player is knotted]tying with you as his ass tightens[else]his ass tightening[end if] further around your cock until you're [if HP of Player > 0]compelled[else]forced[end if] to find bliss as well, pumping his taut bowels with your [Cum Load Size of Player] cum. Not so lost in lust as to relent in humiliating you further, he aims [if Cock Count of Player > 2]both free tools in his hold to your face, spraying you with your seed, along with his own[else if Cock Count of Player is 2]the free tool in his hold to your face, spraying you with your seed, along with his own[else]his tool to spray you with his own seed[end if]";
		if Ball Size of Player > 5:
			say ". His moans becoming weak and disoriented, he wasn't at all prepared for how much you'd unload into him. His quickly beleaguered belly is bloating with your immense sexual fluids until each successive spurt shoots out from the lip of his stuffed hole[if Cock Count of Player > 1]. You're not spared any shame either, your front getting absolutely drenched in your own cum[end if].";
			say "     '";
			if gobdem is true:
				say "[one of]Nng, uhh, too much[or]Ooh, urg, hoo[or]Ah, m-mine, so much mine[at random]";
			else:
				say "[one of]Uegh, I think I bit off more than I could chew[or]Oh, am I going to be sore now[or]Urgh, I'm not going to get anywhere with all this[at random]";
		else:
			say ". Approving moans escaping his lips, his tight hole milks you of every last drop you have to offer. Still on the high of his own lust, he continues to ride you until you're too soft to sate his needs any further.";
			say "     '";
			if gobdem is true:
				say "[one of]Ah, m-mine, ah[or]Ah, whew, hm[or]Ah, ha, mine[at random]";
			else:
				say "[one of]Whew, nothing I couldn't handle[or]Oh, that was some ride[or]Ah, I just need a second to catch my breath[at random]";
		say "...' He eventually pulls himself free of your organ, a trail of seed in its wake, before he [if scalevalue of Player > 3]makes the slow descent off of you[else]climbs off of you[end if]. Still disoriented from lust, it takes awhile for him to readjust his paltry attire before he dizzily wanders off, [if Ball Size of Player > 5]leaving a trail of seed in her wake[else]abandoning you[end if]. You eventually manage to pull yourself to your feet, taking a moment to clean yourself of the mix of sexual fluids as best you can before leaving this place as well before the scent of sex draw others near.";
		CreatureSexAftermath "Goblin" receives "AssFuck" from "Player";
	else if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
		say "!' [if scalevalue of Player > 3]He circles around you for a moment, deciding how best to handle a beast of your scale. Coming to a fairly straightforward conclusion, he starts kicking you to compel you onto your back until you comply[else]Toothy grin wide, he forces you onto your back[end if]. The goblin begins to lewdly fondle your exposed, [bodydesc of Player] form[if HP of Player < 1], much in spite of any protest you might offer[end if]. He's certainly going to enjoy the fun he has planned for you, given how jovially he goes about this preparation. Your legs pulled to spread for him, you're given a clear view of his blatantly erect dick, forced from hiding behind the paltry cover of his loincloth.";
		say "     Grinding the length of his oozing - admittedly fairly average, though you suppose it's quite impressive to a creature of his size - tool against your exposed behind, ";
		if Player is male:
			say "he moves a hand to stroke [if Cock Count of Player > 1]one of your [cock size desc of Player] cocks[else]your [cock size desc of Player] cock[end if], supplementing his teasing with more direct affections until you're [if HP of Player > 0]driven[else]forcibly made[end if] hard";
		else:
			say "[if Cunt Count of Player > 1], he moves a hand to stroke one of your cunts, supplementing his imminent intrusion with another as you feel his fingers sink into the feminine portal[else if Player is female], he moves a hand to stroke your cunt, supplementing his imminent intrusion with another as you feel his fingers sink into the feminine portal[else], he briefly teases your [bodytype of Player] tailpipe before its appropriate use[end if]";
		say ". Soon thereafter, you feel the head of his eager organ shove its way past your supple ring, ";
		if scalevalue of Player > 3:
			say "his prick barely registering against for you and your sizable hole. He doesn't seem to regard this, though; perhaps all the more excuse to be more reckless in his [if HP of Player > 0]use[else]abuse[end if].";
		else:
			say "[if HP of Player > 0]eliciting a moan from you in[else]forcing a moan from your lips in involuntary[end if] response against the irreverent intrusion. He [if HP of Player > 0]at least spares you a moment of gentle reservation before his wanton need takes precedent[else]spares you little reprieve, eager to enforce his wanton dominion[end if].";
		say "     '";
		if gobdem is true:
			say "[one of][if scalevalue of Player > 3]Ass, big ass, MINE, mine[else]Ass, ass, MINE, ass[end if][or]Mine, MINE, ha ha[or]Fuck, fuck, fuck, ass[at random]";
		else:
			say "[if scalevalue of Player > 3][one of]F-fuck, there's so much here[or]I bet you can't feel a thing[or]I could lose myself in a hole this big[at random][else if HP of Player > 0][one of]Oh, a nice fit[or]I bet you want to see me do my magic[or]Oh, this is going to be a fun ride[at random][else][one of]Don't tense up so much, it'll only be harder for you[or]Oh, calm down and let me work my magic[or]Oh, what a squirming ride[at random][end if]";
		if scalevalue of Player > 3:
			say "!' Slowly building up a pace of fucking you proper, his intrusion is not enough to effectively pleasure you[if HP of Player > 0] - not that this is really a pressing issue you for you right now -[else],[end if] ";
			if Player is male:
				say "[if Cock Count of Player > 2]a shortcoming he attempts to compensate for by the additional attention he confers to your dicks, freeing both hands to rapidly pump two of them[else if Cock Count of Player > 1]a shortcoming he attempts to compensate for by the additional attention he confers to your dicks, freeing both hands to rapidly pump the two of them[else], a shortcoming he compensates for by the additional attention he confers to your dick, freeing a hand to rapidly pump along its length[end if]. You can imagine the whole affair is a bit awkward for the diminutive goblin, barely able to ride and hold onto you at the same time, though he's certainly not lacking in tenacity.";
			else if Player is female:
				say "a shortcoming he compensates for by the additional attention he confers to[if Cunt Count of Player > 2] two of[else if Cunt Count of Player is 2] both of[end if] your cunt[sfn], freeing [if Cunt Count of Player > 2]both hands to rapidly finger two of them[else if Cunt Count of Player is 2]both hands to rapidly finger both of them[else]a hand to rapidly finger its depths[end if]. You can imagine the whole affair is a bit awkward for the diminutive goblin, barely able to ride and hold onto you at the same time, though he's certainly not lacking in tenacity.";
			else:
				say "not that he seems to regard this, more than content to abuse your hole. Inevitably, you're forced to watch him go rigid, followed by the faint sensation of his cum flooding your depths.";
				if gobdem is true:
					say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
				else:
					say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, shame my big new friend had nothing else for me to play with[at random][else][one of]Heh, shame my new friend had nothing else for me to play with[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
				say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
		else:
			say "!' Slowly building up a pace of fucking you proper, he starts causing you to tremble in[if HP of Player < 1] forcibly imposed[end if] pleasure as he abuses your hole";
			if Player is male:
				say "[if Cock Count of Player > 2]. He continues to stroke your dicks, now using both hands to pump two of them[else if Cock Count of Player > 1]. He continues to stroke your dicks, now using both hands to pump the two of them[else], further exacerbating your arousal as he continues to pump your dick[end if]. Quite the tenacious goblin, [if HP of Player > 0]you can't help but credit him for his[else]he's certainly not lacking in[end if] ability to multitask, at least.";
			else:
				say "[if Cunt Count of Player > 2]. He continues to fondle your cunts, eventually forcing a finger past two of them[else if Cunt Count of Player > 1]. He continues to fondle your cunts, eventually forcing a finger past both of them[else if Cunt Count of Player is 1], further exacerbating your arousal as he forces a finger past your cunt's supple fold[else], much in spite of your genderless form[end if]. His thrusts becoming increasingly erratic, illustrative of his imminent release, the creature's lustful endeavors [if HP of Player < 1]forcing[else]driving[end if] you closer to your own bliss.";
			if Player is neuter:
				say "     Suddenly, you feel the goblin's load flood your fleshy abyss, lost in the throes of his own pleasure very much in spite your inability to effectively satisfy your own.";
				if gobdem is true:
					say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
				else:
					say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, I still have the magic touch, even with someone so large[at random][else][one of]Oh, you've gone and made a mess of yourself[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
				say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
			else if Player is male:
				say "     Unable to hold back for any longer, your cock[smn] erupt[smv], [if Ball Size of Player > 5]your exposed face and upper torso immediately getting hosed with your [Cum Load Size of Player] load[else if Ball Size of Player > 4]firing its [Cum Load Size of Player] load impotently against your torso and face[else]firing its [Cum Load Size of Player] load impotently against your torso[end if]. The tightening of your [if HP of Player > 0]greedy[else]assailed[end if] ring forcing the goblin to climax himself, his own seed flooding your fleshy abyss.";
				if gobdem is true:
					say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
				else:
					say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, I still have the magic touch, even with someone so large[at random][else][one of]Oh, you've gone and made a mess of yourself[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
				say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
			else if Player is female:
				say "     Suddenly, you feel the goblin's load flood your bowels, the sensation - coupled with his additional attendance - driving you to ecstasy as well, the diminutive creature panting against your [bodytype of Player] form as your greedy hole milks him of every last drop.";
				if gobdem is true:
					say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
				else:
					say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, I still have the magic touch, even with someone so large[at random][else][one of]Oh, you've gone and made a mess of yourself[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
				say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Goblin";
	else if Player is female and a random chance of 2 in 3 succeeds:
		say "!' [if scalevalue of Player > 3]He circles around you for a moment, deciding how best to handle a beast of your scale. Coming to a fairly straightforward conclusion, he starts kicking you to compel you onto your back until you comply[else]Toothy grin wide, he forces you onto your back[end if]. The goblin begins to lewdly fondle your exposed, [bodydesc of Player] form[if HP of Player < 1], much in spite of any protest you might offer[end if]. He's certainly going to enjoy the fun he has planned for you, given how jovially he goes about this preparation. Your legs pulled to spread for him, you're given a clear view of his blatantly erect dick, forced from hiding behind the paltry cover of his loincloth.";
		say "     Grinding the length of his oozing - admittedly fairly average, though you suppose it's quite impressive to a creature of his size - tool against your exposed cunt, ";
		if Player is male:
			say "he moves a hand to stroke [if Cock Count of Player > 1]one of your [cock size desc of Player] cocks[else]your [cock size desc of Player] cock[end if], supplementing his teasing with more direct affections until you're [if HP of Player > 0]driven[else]forcibly made[end if] hard";
		else:
			say "he briefly teases your [cunt size desc of Player] portal[sfn] before [if Cunt Count of Player > 1]their[else]its[end if] appropriate use";
		say ". Soon thereafter, you feel the head of his eager organ shove its way past the supple folds of your flesh, ";
		if Cunt Depth of Player > 15:
			say "his prick barely registering against for you and your sizable hole. He doesn't seem to regard this, though; perhaps all the more excuse to be more reckless in his [if HP of Player > 0]use[else]abuse[end if].";
		else:
			say "[if HP of Player > 0]eliciting a moan from you in[else]forcing a moan from your lips in involuntary[end if] response against the irreverent intrusion. He [if HP of Player > 0]at least spares you a moment of gentle reservation before his wanton need takes precedent[else]spares you little reprieve, eager to enforce his wanton dominion[end if].";
			say "     '";
			if gobdem is true:
				say "[one of][if scalevalue of Player > 3]Ass, big ass, MINE, mine[else]Ass, ass, MINE, ass[end if][or]Mine, MINE, ha ha[or]Fuck, fuck, fuck, ass[at random]";
			else:
				say "[if scalevalue of Player > 3][one of]F-fuck, there's so much here[or]I bet you can't feel a thing[or]I could lose myself in a hole this big[at random][else if HP of Player > 0][one of]Oh, a nice fit[or]I bet you want to see me do my magic[or]Oh, this is going to be a fun ride[at random][else][one of]Don't tense up so much, it'll only be harder for you[or]Oh, calm down and let me work my magic[or]Oh, what a squirming ride[at random][end if]";
			if Cunt Depth of Player > 15:
				say "!' Slowly building up a pace of fucking you proper, his intrusion is not enough to effectively pleasure you[if HP of Player > 0] - not that this is really a pressing issue you for you right now -[else],[end if] ";
				if Player is male:
					say "[if Cock Count of Player > 2]a shortcoming he attempts to compensate for by the additional attention he confers to your dicks, freeing both hands to rapidly pump two of them[else if Cock Count of Player > 1]a shortcoming he attempts to compensate for by the additional attention he confers to your dicks, freeing both hands to rapidly pump the two of them[else], a shortcoming he compensates for by the additional attention he confers to your dick, freeing a hand to rapidly pump along its length[end if]. You can imagine the whole affair is a bit awkward for the diminutive goblin, barely able to ride and hold onto you at the same time, though he's certainly not lacking in tenacity.";
				else if Cunt Count of Player > 1:
					say "a shortcoming he compensates for by the additional attention he confers to[if Cunt Count of Player > 3] two of[else if Cunt Count of Player is 3] both of[end if] your spare cunts, freeing [if Cunt Count of Player > 2]both hands to rapidly finger both of them[else]a hand to rapidly finger along its depths[end if]. You can imagine the whole affair is a bit awkward for the diminutive goblin, barely able to ride and hold onto you at the same time, though he's certainly not lacking in tenacity.";
				else if Breast Size of Player > 0:
					say " [if scalevalue of Player > 3]a shortcoming he partially compensates for by leaning overtop of you to grope at your breasts. He teases your nipples and plays with your [breast size desc of Player] tits as best he can from within his limited reach[else]a shortcoming he makes some effort to compensate for by leaning overtop you to kiss, lick and suck at your breasts. He teases your nipples and plays with your [breast size desc of Player] tits[end if]. You can imagine the whole affair is a bit awkward for the diminutive goblin, barely able to ride and hold onto you at the same time, though he's certainly not lacking in tenacity.";
				else:
					say "not that he seems to regard this, more than content to abuse your hole. Inevitably, you're forced to watch him go rigid, followed by the faint sensation of his cum flooding your womb.";
					if gobdem is true:
						say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
					else:
						say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, shame my big new friend had nothing else for me to play with[at random][else][one of]Heh, shame my new friend had nothing else for me to play with[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
					say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
			else:
				say "!' Slowly building up a pace of fucking you proper, he starts causing you to tremble in[if HP of Player < 1] forcibly imposed[end if] pleasure as he abuses your hole ";
				if Player is male:
					say "[if Cock Count of Player > 2]. He continues to stroke your dicks, now using both hands to pump two of them[else if Cock Count of Player > 1]. He continues to stroke your dicks, now using both hands to pump the two of them[else], further exacerbating your arousal as he continues to pump your dick[end if]. Quite the tenacious goblin, [if HP of Player > 0]you can't help but credit him for his[else]he's certainly not lacking in[end if] ability to multitask, at least";
				else if Cunt Count of Player > 1:
					say "[if Cunt Count of Player > 3]. He continues to fondle your unattended cunts, eventually forcing a finger past two of them[else if Cunt Count of Player > 2]. He continues to fondle your unattended cunts, eventually forcing a finger past both of them[else]. He continues to fondle you unattended cunt, eventually forcing a finger into its depths[end if]. Quite the tenacious goblin, [if HP of Player > 0]you can't help but credit him for his[else]he's certainly not lacking in[end if] ability to multitask, at least";
				else if Breast Size of Player > 0:
					say ". He chooses to lean [if scalevalue of Player > 3]overtop of you to grope at your breasts. He teases your nipples and plays with your [breast size desc of Player] tits as best he can from within his limited reach[else]overtop you to kiss, lick and suck at your breasts. He teases your nipples and plays with your [breast size desc of Player] tits[end if]. Quite the tenacious goblin, [if HP of Player > 0]you can't help but credit him for his[else]he's certainly not lacking in[end if] ability to multitask, at least";
				else:
					say ". His grip tightens against your [bodydesc of Player] form, idling fondling you as he continues to pound you";
				say ". His thrusts becoming increasingly erratic, illustrative of his imminent release, the creature's lustful endeavors [if HP of Player < 1]forcing[else]driving[end if] you closer to your own bliss.";
				if Player is male:
					say "     Unable to hold back for any longer, your [if Cock Count of Player > 1]cocks erupt[else]cock erupts[end if], [if Ball Size of Player > 5]your exposed face and upper torso immediately getting hosed with your [Cum Load Size of Player] load[else if Ball Size of Player > 4]firing its [Cum Load Size of Player] load impotently against your torso and face[else]firing its [Cum Load Size of Player] load impotently against your torso[end if]. The tightening of your [if HP of Player > 0]greedy[else]assailed[end if] lips forcing the goblin to climax himself, his own seed flooding your womb.";
					if gobdem is true:
						say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
					else:
						say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, I still have the magic touch, even with someone so large[at random][else][one of]Oh, you've gone and made a mess of yourself[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
					say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
				else if (Cunt Depth of Player > 15 and (Cunt Count of Player > 1 or Breast Size of Player > 0)) or Cunt Depth of Player < 16:
					say "     Suddenly, you feel the goblin's load flood your womb, the sensation - coupled with his additional attendance - driving you to ecstasy as well, the diminutive creature panting against your [bodytype of Player] form as your greedy hole milks him of every last drop.";
					say "     '";
					if gobdem is true:
						say "[one of]Ah, ha, ha[or]Oh, heh, ah[or]Heh, mine, ah[at random]";
					else:
						say "[if scalevalue of Player > 3][one of]Whew, ah, what a ride[or]Ah, give me a second, big one[or]Heh, I still have the magic touch, even with someone so large[at random][else][one of]Oh, you've gone and made a mess of yourself[or]Whew, I'm going to need a second[or]Ho boy, what a ride[at random][end if]";
					say "...' Taking a moment to catch his breath, creature eventually pulls himself free from you, casually wiping his spent tool clean against your behind before he crawls back into the hole from whence he came, regarding you with a sly grin as he departs, allowing you to recover and go about your business once more.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Goblin";
	else: [oral]
		say "!' Exposing his cock from behind the cover of his loincloth, he lets you watch as he begins to stroke himself erect before you. It's not long before he's ready, and is quick to point it out by irreverently prodding your closed lips with the oozing tool.";
		if Player is submissive or HP of Player > 0:
			say "     [if scalevalue of Player > 4]He's a little ill at ease when you find yourself quickly compelled to comply, perhaps because he's putting himself between the jaws of a creature significantly larger than he. Regardless, you hide his rod within the confines of your maw, much to the goblin's approval[else]Finding yourself quickly compelled to comply, you open your maw to engulf the rod, to which he responds by shamelessly thrusting the length of it in its entirety within the confines of your hole, much in spite any complaints you could offer up against this reckless treatment[end if].";
			say "     '";
			if gobdem is true:
				say "[one of]Slut - good slut - ha[or]Yes - yes good - mm[or]Mine, my slut, MINE[at random]";
			else:
				say "[if scalevalue of Player > 3][one of]Oh, I think my new big friend likes sucking dick[or]Ha, what a massive slut[or]Hm, what a big cum dumpster[at random][else][one of]Oh, it looks like someone enjoys sucking dick[or]Ha, it look at that slut go[or]I think you're a natural at being a cum dumpster[at random][end if]";
		else:
			say "     [if scalevalue of Player > 4]You're quick to respond with a grin - weak as you may be, you've still got enough in you to ward him off, exposing your teeth to the diminutive creature. He's briefly taken aback, but ultimately responds by thwacking you with a wrench a couple times until you're forced into complying; big as you may be, he still has the upper hand here and eventually you allow him to bury his rod into the confines of your large maw[else]You find yourself unwilling to humor his needs, but that only incurs his further wrath when he smacks you around a bit until you agree to satisfy his urges. You open your mouth to oblige him, only to have the goblin thrust the entirety of his rod into your hole, much in spite any complaints you could offer up against this shameless abuse[end if].";
			if gobdem is true:
				say "[one of]Naughty, naughty[or]Ha, ha - good - ha[or]Mine, MINE, yes[at random]";
			else:
				say "[if scalevalue of Player > 3][one of]There we go, keep playing nice now, big one[or]That's right, be a good big slut[or]There we go, the big one knows their place[at random][else][one of]There we go, keep playing nice[or]That's right, be a good little slut[or]There we go, someone knows their place now[at random][end if]";
		say "!' Quickly building a motion of thrusting wildly against you, you're made to taste his heady sexual fluids in the wake of his sexual fervor[if scalevalue of Player < 4]. Relentless as he is, you feel like you're about to pass out from lack of oxygen until you suddenly feel your throat flooded with the goblin's tainted seed. He inevitably pushes you free, no doubt amused as you gasp for air, eventually wiping[else]. His thrusts become increasingly erratic until your maw is finally flooded with the goblin's tainted seed, the creature rigid against your maw as he attains blissful release. It takes him a bit, but he eventually pulls free of your lips, no doubt amused with himself as he wipes[end if] his cock clean against the side of your face.";
		say "     '";
		if gobdem is true:
			say "[one of]Ha, ha, yes, bye[or]Bye, mine, heh[or]Good, good[at random]";
		else:
			say "[if HP of Player > 0][one of]Not half bad, I've certainly had worse[or]That was some nice, quick fun[or]Ah, it's good to get some proper satisfaction around here[at random][else][one of]Not half bad, once you learned your place[or]See? That wasn't all that bad[or]Maybe next time would give me less trouble[at random][end if]";
		say ".' Satisfied, he runs off back from whence he hid. It takes you a moment to recover, and you find yourself a little disoriented and lust-addled by his sexual fluid's infectious influence.";
		CreatureSexAftermath "Player" receives "OralCock" from "Goblin";

to say beatthegoblin:
	now calcnumber is -1;
	if Player is not neuter:
		say "     Driven back by your final blow, the goblin lands doubled over on the dirt. Now that [if gobgender is 1]she[else]he[end if] is at your mercy, you find yourself [if Libido of Player < 33]somewhat[else if Libido of Player < 67]rather[else]very[end if] excited after the fight. Tempted to give a little of what you would have gotten if the tables were turned, you consider some options. Shall you ";
		if gobgender is 1:	[female goblin]
			if Player is male and Cock Length of Player < 13:
				say "[link]fuck the goblin (1)[as]1[end link], do her [link]in the ass (2)[as]2[end link], enjoy some [link]oral attention (3)[as]3[end link] from her, or [link]let her go (0)[as]0[end link]?";
				while calcnumber < 0 or calcnumber > 3:
					say "Choice? (0-3)>[run paragraph on]";
					get a number;
				if calcnumber is 1:
					say "[fgob_vicsex1]"; [f-gob vaginal sex]
				else if calcnumber is 2:
					say "[fgob_vicsex2]"; [f-gob anal sex]
				else if calcnumber is 3:
					say "[fgob_vicsex3]"; [f-gob oral sex]
				else:
					say "[gob_nosex]"; [let goblin go]
			else:
				say "enjoy some [link]oral attention (Y)[as]y[end link] from her or [link]let her go (N)[as]n[end link]?";
				if Player consents:
					say "[fgob_vicsex3]"; [f-gob oral sex]
				else:
					say "[gob_nosex]"; [let goblin go]
		else:			[male goblin]
			if Player is female:
				if Player is male and Cock Length of Player < 13:
					say "[link]ride his cock (1)[as]1[end link], do him [link]in the ass (2)[as]2[end link], enjoy some [link]oral attention (3)[as]3[end link] from him, or [link]let him go (0)[as]0[end link]?";
					while calcnumber < 0 or calcnumber > 3:
						say "Choice? (0-3)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[mgob_vicsex1]"; [m-gob vaginal sex]
					else if calcnumber is 2:
						say "[mgob_vicsex2]"; [m-gob anal sex]
					else if calcnumber is 3:
						say "[mgob_vicsex3]"; [m-gob oral sex]
					else:
						say "[gob_nosex]"; [let goblin go]
				else if Player is male and Cock Length of Player >= 48:
					say "[link]ride his cock (1)[as]1[end link], use this small fry for some [link]urethral pleasure (2)[as]2[end link], enjoy some [link]oral attention (3)[as]3[end link] from him, or [link]let him go (0)[as]0[end link]?";
					while calcnumber < 0 or calcnumber > 3:
						say "Choice? (0-3)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[mgob_vicsex1]"; [m-gob vaginal sex]
					else if calcnumber is 2:
						say "[mgob_vicsex4]"; [m-gob urethral sex]
					else if calcnumber is 3:
						say "[mgob_vicsex3]"; [m-gob oral sex]
					else:
						say "[gob_nosex]"; [let goblin go]
				else:
					say "[link]ride his cock (1)[as]1[end link], enjoy some [link]oral attention (2)[as]2[end link] from him, or [link]let him go (0)[as]0[end link]?";
					while calcnumber < 0 or calcnumber > 2:
						say "Choice? (0-2)>[run paragraph on]";
						get a number;
					if calcnumber is 1:
						say "[mgob_vicsex1]"; [m-gob vaginal sex]
					else if calcnumber is 2:
						say "[mgob_vicsex3]"; [m-gob oral sex]
					else:
						say "[gob_nosex]"; [let goblin go]
			else if Player is male and Cock Length of Player < 13:
				say "do him [link]in the ass (1)[as]1[end link], enjoy some [link]oral attention (2)[as]2[end link] from him, or [link]let him go (0)[as]0[end link]?";
				while calcnumber < 0 or calcnumber > 2:
					say "Choice? (0-2)>[run paragraph on]";
					get a number;
				if calcnumber is 1:
					say "[mgob_vicsex2]"; [m-gob anal sex]
				else if calcnumber is 2:
					say "[mgob_vicsex3]"; [m-gob oral sex]
				else:
					say "[gob_nosex]"; [let goblin go]
			else if Player is male and Cock Length of Player >= 48:
				say "use this small fry for some [link]urethral pleasure (1)[as]1[end link], enjoy some [link]oral attention (2)[as]2[end link] from him, or [link]let him go (0)[as]0[end link]?";
				while calcnumber < 0 or calcnumber > 2:
					say "Choice? (0-2)>[run paragraph on]";
					get a number;
				if calcnumber is 1:
					say "[mgob_vicsex4]"; [m-gob urethral sex]
				else if calcnumber is 2:
					say "[mgob_vicsex3]"; [m-gob oral sex]
				else:
					say "[gob_nosex]"; [let goblin go]
			else:
				say "enjoy some [link]oral attention (Y)[as]y[end link] from him or [link]let him go (N)[as]n[end link]?";
				if Player consents:
					say "[mgob_vicsex3]"; [m-gob oral sex]
				else:
					say "[gob_nosex]"; [let goblin go]
	else:
		say "     Driven back by your final blow, the goblin lands doubled over on the dirt. [if gobgender is 1]She[else]He[end if] scrambles away fearfully and makes a run for it, diving through a tight tunnel in one of the mounds of junk. Even if you could squeeze through there, you don't feel it would be worth it to try and decide to let [if gobgender is 1]her[else]him[end if] go.";


to say fgob_vicsex1:	[f-gob vaginal sex]
	say "     While she attempts to recover you move behind her, exposing your cock[smn] and driving [if Cock Count of Player > 1]one of them[else]it[end if] to arousal. Suddenly, you pounce on her, [if scalevalue of Player > 3]lifting her clean off the ground and impaling the poor lass[else]pinning her to the ground as you drill into her hole[end if] with your [cock size desc of Player] dick. She cries out, [if Cock Length of Player > 8]forced to contend with your sizable flesh[else]struggling in vain against your hold[end if].";
	say "     [if scalevalue of Player > 3]Grip firm on her, you begin to force her up and down against your [CockSpeciesName of Player in lower case] cock, relegating the beleaguered goblin to a mere sex toy[else]Firm hold on her, you begin to thrust against her cunt, beleaguered goblin moaning out as you continue to abuse her[end if]. Your motions gradually start to pick up in pace until you cry out in rapturous release, [if Cock Count of Player > 2]your exposed cocks firing impotently into the air[else if Cock Count of Player > 1]your exposed cock firing impotently into the air[else]the creature moaning loudly[end if] as you pump her full of your seed[if Ball Size of Player >= 6]. Elongated and strained her moans become as her belly visibly bloats with your impressive load, each successive gout spurted from her stuffed hole when she can abide it no further[end if].";
	say "     Your flow soon diminishes and - now sated - you pull [if scalevalue of Player > 3]her free of you and put her down[else]yourself free of her and let her go[end if]. The goblin weakly retreats, leaving a trail of sexual fluids in her wake and letting you continue on your merry way.";
	CreatureSexAftermath "Goblin" receives "PussyFuck" from "Player";

to say fgob_vicsex2:	[f-gob anal sex]
	say "     Approaching her, you immediately rip free her tattered loincloth, leaving her diminutive behind naked in the middle of the open air. [if scalevalue of Player > 3]You can see her visibly tremble, clearly not sure what to expect from someone as large as you[else]Perhaps too weak to contend your assault, she doesn't give you any trouble when you assess your inevitable angle of descent[end if]. Freeing yourself of any bindings, you grab ";
	if scalevalue of Player > 4:
		say "the small creature, stroking [if Cock Count of Player > 1]one of your now-exposed dicks[else]your now-exposed dick[end if]";
	else:
		say "her by her sides and grind [if Cock Count of Player < 1]one of your now-exposed dicks[else]your now-exposed dick[end if] between her asscheeks";
	say "before driving your hardened cock into her hole.";
	say "     She [if Cock Length of Player > 8]immediately cries out in protest, her tight ring giving you a fair amount of resistance, but with a bit of work her passage inevitably abides your invading flesh, regardless of your victim's compliance[else]flinches and struggles against the sensation of your invading flesh, her anal passage tight and ill-suited to abide even a reasonable intrusion, a resistance - as it may be - quickly diminished with a bit of force[end if]. [if scalevalue of Player > 3]She's dragged across the ground with each successive thrust, trying in vain to anchor herself against the overwhelming storm of your rising fervor[else]Gripping at the ground, she can barely hold herself in place as your thrusting's pace reaches a feverish pace[end if], until you find blissful relief.";
	say "     [if Cock Length of Player > 8]Your [cock size desc of Player] intrusion triggering her own orgasm, you[else]You[end if]";
	if Ball Size of Player >= 6:
		say "begin pumping an unholy amount of cum into her beleaguered hole, bloating her almost immediately until each successive spurt finds escape by squirting out around your cock[if Cock Count of Player > 2], your exposed members firing impotently until the goblin is practically swimming in a puddle of your sexual fluids[else if Cock Count of Player > 1], your exposed member firing impotently until the goblin is practically swimming in a puddle of your sexual fluids[end if].";
	else:
		say "pump the poor beast full of your cum, [if Cock Count of Player > 2]your exposed members firing impotently against the goblin, further cementing her humiliation as you make a mess of her ragged attire[else if Cock Count of Player > 1]your exposed member firing impotently against the goblin, further cementing her humiliation as you make a mess of her ragged attire[else]forcing the goblin to writhe impotently against the earth as your warmth floods her bowels[end if].";
	say "     Inevitably pulling yourself free, you give her a playful smack across the behind, sending her off with a jolt. She scrambles quickly to a goblin tunnel in a nearby junk mound, leaking a trail of cum right to it. After you clean yourself a bit, you gather your things and set off once more.";
	CreatureSexAftermath "Goblin" receives "AssFuck" from "Player";

to say fgob_vicsex3:	[f-gob oral sex]
	say "     Grinning, [if scalevalue of Player > 4]you set yourself down, pulling the creature to your massive form[else]you set yourself down, relinquishing yourself of any attire that might get in the way and pulling the creature to you[end if]. Clarifying her already quite apparent mission, you gesture down to your ";
	if Player is herm:
		say "[if a random chance of 1 in 2 succeeds][fgob_vicsex3_m][else][fgob_vicsex3_f][end if]";
	else if Player is male:
		say "[fgob_vicsex3_m]";
	else:
		say "[fgob_vicsex3_f]";


to say fgob_vicsex3_m:
	say "cock[smn].";
	if Cock Length of Player >= 18:
		say "     At first she's a bit apprehensive, clearly unsure about how she'd go about pleasuring [if Cock Count of Player > 1]such [cock size desc of Player] tools[else]such a [cock size desc of Player] tool[end if], but she's inevitably coaxed into improvising with a little forceful encouragement. Grabbing [if Cock Count of Player > 2]two of them[else if Cock Count of Player > 1]both of them[else]the organ[end if] with both hands, her tongue moves to caress the length [if Cock Count of Player > 1]of one of them[else]of the shaft[end if]. She's clearly quite dexterous and seems to perform fairly well in spite the circumstances, driving you into arousal with desired expedience.";
		if Cock Count of Player is 1:
			say "     [if Cunt Count of Player > 1]Main hand kept busy, she shifts her offhand to assault one of your exposed cunts, lightly teasing it in turn as she continues her main endeavors. [else if Cunt Count of Player is 1]Main hands kept busy, she shifts her offhand to assault your exposed cunt, lightly teasing it in turn as she continues her main endeavors. [else if anallevel is 3]Main hand kept busy, she shifts her offhand to assault your exposed anal ring, lightly teasing it in turn as she continues her main endeavors. [end if]She tries her best to aim the head of your cock for her mouth, moving to engulf the tip in her ill-fitting hole. The inherent awkwardness of this endeavor is somewhat mitigated by the creature's strangely inherent ability to handle a number of tasks at once.";
		else:
			say "     She tries her best to aim one of your cockheads for her mouth, moving to engulf the tip in her ill-fitting hole. The inherent awkwardness of this endeavor is somewhat mitigated by the creature's strangely inherent ability to handle a number of tasks at once.";
		say "     Her involuntary endeavors are sweetly rewarded, a moan escaping your lips in celebration of your release, [if Ball Size of Player >= 6]the poor goblin getting absolutely drenched in your torrential release[else]the goblin snorting in slight surprise before relinquishing her lip's hold to cough free some of your cum[end if]. You get up, letting [if Ball Size of Player >= 6]the cum-coated creature[else]her[end if] free and watch her scramble away to a small tunnel in one of the nearby junk mounds. With her gone, you can turn your attention back to other matters.";
	else:
		say "     At first she appears a bit sheepish to the concept of contending with your [cock size desc of Player] [if Cock Count of Player > 1]tools[else]tool[end if], but it only takes a moment of forceful coaxing before she's compliant. Grabbing [if Cock Count of Player > 2]two of them[else if Cock Count of Player > 1]both of them[else]the organ[end if] with both hands, her tongue moves to caress the length of [if Cock Count of Player > 1]one of them[else]the shaft[end if]. She's clearly quite dexterous and seems innately adept at this performance.";
		if Cock Count of Player is 1:
			say "     [if Cunt Count of Player > 1]Main hand kept busy, she shifts her offhand to assault one of your exposed cunts, lightly teasing it in turn as she continues her main endeavors. [else if Player is female]Main hands kept busy, she shifts her offhand to assault your exposed cunt, lightly teasing it in turn as she continues her main endeavors. [else if anallevel is 3]Main hand kept busy, she shifts her offhand to assault your exposed anal ring, lightly teasing it in turn as she continues her main endeavors. [end if]She moves your cock to engulf it within the depths of her maw. The efficacy of her endeavors quickly becomes apparent as each successive bob sends bolts of pleasure through your [if scalevalue of Player > 3]massive[end if] frame.";
		else:
			say "     She moves one of your cocks to engulf it within the depths of her maw. The efficacy of her endeavors quickly apparent as each successive bob sends bolts of pleasure through your [if scalevalue of Player > 3]massive[end if] frame.";
		say "     Her involuntary endeavors are sweetly rewarded, a moan escaping your lips in celebration of your release, [if Ball Size of Player >= 6]the poor goblin getting absolutely drenched in your torrential release[else] the goblin briefly and audibly gagging before she complicity swallows your subsequently load[end if]. You get up, letting [if Ball Size of Player >= 6]the cum-coated creature[else]her[end if] free and watch her scramble away to a small tunnel in one of the nearby junk mounds. With her gone, you can turn your attention back to other matters.";
	CreatureSexAftermath "Goblin" receives "OralCock" from "Player";

to say fgob_vicsex3_f:
	say "[cunt size desc of Player] cunt[sfn].";
	say "     At first she appears a bit sheepish to the concept of contending with [if Cunt Count of Player > 1]one of your holes[else]your hole[end if], but it only takes a moment of forceful coaxing before she's compliant. Fingers [if Cunt Count of Player > 2]teasing the soft lips of two of them[else if Cunt Count of Player > 1]the soft lips of both of them[else]its soft lips[end if], her tongue moves to caress [if Cunt Count of Player > 1]one of their clits[else]its clit[end if], invariably tasting your emergent feminine fluids. She's clearly quite dexterous and seems innately adept at this performance.";
	if Cunt Count of Player is 1:
		say "     [if Cock Count of Player > 1]Main hand kept busy, she shifts her offhand to assault one of your hardening cocks, gently stroking it in turn as she continues her main endeavors. [else if Player is male]Main hands kept busy, she shifts her offhand to assault your exposed cock, gently stroking it in turn as she continues her main endeavors. [else if anallevel > 1]Main hand kept busy, she shifts her offhand to assault your exposed anal ring, lightly teasing it in turn as she continues her main endeavors. [end if]Her tongue moves to aid her digits as they flood the depths of your cunt. The efficacy of her endeavors is quickly apparent as each successive thrust of her tongue sends bolts of pleasure through your [if scalevalue of Player > 3]massive [end if]frame.";
	say "     Her involuntary endeavors are sweetly rewarded, a moan escaping your lips in celebration of your release, ";
	if Libido of Player > 50:
		say "[if Cock Count of Player > 1]your cocks erupting with their load against you as the goblin briefly contends with your gushing portal[else if Cock Count of Player is 1]your cock erupting with its load against you as the goblin briefly contends with your gushing portal[else]the goblin briefly contending with your gushing portal[end if]. You get up, leaving her free to scramble to the safety of a narrow tunnel within one of the nearby mounds.";
	else:
		say "the goblin briefly contending with your gushing portal. You get up, leaving her free to scramble to the safety of a narrow tunnel within one of the nearby mounds.";
	CreatureSexAftermath "Goblin" receives "OralPussy" from "Player";

to say mgob_vicsex1:	[m-gob vaginal sex]
	say "     You push him onto his back, casually parting the creature's raggedy loincloth to expose his cock before you. [if scalevalue of Player > 2]He's not particularly big, but given a creature of his size you suppose it measures up to be quite impressive by standards of proportions[else]You're happy to see he's quite well endowed in spite of being in your general size range[end if], and - thankfully - he doesn't protest when your [if scalevalue of Player > 3]tongue[else]head[end if] moves to lick his rod, eliciting its arousal.";
	say "     You inevitably move to mount him, your affections sufficient enough to drive the goblin to arousal. [if scalevalue of Player > 3]He'd doubtlessly be more obliging towards these turn of events if you didn't tower over him as much as you do now, perhaps quick to fear you'd crush him under the weight of your [Body Size Adjective of Player], [bodydesc of Player] body[else]He can probably live with his loss if it leads to something like this, encouraging your use of his tool by stroking your [bodydesc of Player] form with his free hands[end if]. You moan in approval as his cock sinks into the depths of [if Cunt Count of Player > 1]one of your [cunt size desc of Player] cunts[else]your [cunt size desc of Player] cunt[end if], [if Cunt Depth of Player > 12]and though his tool is too small to easily pleasure yourself, that isn't going to stop you from making full use of him[else]his rod gradually enveloped by the folds of your flesh[end if].";
	if Player is male:
		if scalevalue of Player > 4:
			say "     The small creature eclipsed under your form, your hands move to stroke your hardening [if Cock Count of Player > 2]cocks. Two of them in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[else if Cock Count of Player > 1]cocks. Both of them in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[else]cock. With your [cock size desc of Player] tool in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[end if]. So small compared to you, he at least gets the small mercy of your organ aimed well over him, [if Ball Size of Player >= 5]though you could only imagine this sentiment as he's buried under your [Ball Size Adjective of Player] [Balls][else]though he is perhaps more distracted by having to contend with your troubling weight[end if].";
		else if scalevalue of Player is 4:
			say "     The small creature eclipsed under your form, your hands move to stroke your hardening [if Cock Count of Player > 2]cocks. Two of them in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[else if Cock Count of Player > 1]cocks. Both of them in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[else]cock. [cock size desc of Player] tool in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[end if]. His expression a lust-addled horror while he contends with the fact that [if Cock Count of Player > 1]they're[else]it's[end if] aimed directly at him, [if Ball Size of Player >= 6]and with one look at the load your packing it's clear that the end result will be quite a mess[else]and you might find his desire to remain clean of your fluids meritable if his face wasn't already quite unkempt[end if].";
		else:
			say "     Moving his hands to fondle your [if Breast Size of Player > 0][breast size desc of Player] breasts[else]torso[end if], your own shift to stroke your hardening [if Cock Count of Player > 2]cocks. Two of them in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[else if Cock Count of Player > 1]cocks. Both of them in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[else]cock. [cock size desc of Player] tool in your grasp, you're not about to let your beleaguered companion be the sole progenitor of your pleasure[end if]. His expression a lust-addled horror while he contends with the fact that [if Cock Count of Player > 1]they're[else]it's[end if] aimed directly at him, [if Ball Size of Player >= 6]and with one look at the load your packing it's clear that the end result will be quite a mess[else]and you might find his desire to remain clean of your fluids meritable if he wasn't already quite dirty[end if].";
	say "     Riding his cock, it's not long before your irreverent hold on him elicits his release, [if scalevalue of Player > 3]the subsequently flood of his fluids barely registering against your larger frame[else]the warmth of his fluids flooding your depths[end if]";
	if scalevalue of Player > 4 and Player is male:
		say ", wracking you with the throes of your own subsequent release. [if Cock Count of Player < 1]Cocks shooting their load[else]cock shooting its load[end if] clear across the open air, you unleash a [Cum Load Size of Player] load as that makes a [if Ball Size of Player >= 6]considerable[else]fair[end if] mess of the surrounding scenery, milking him of every last drop before you finally relent.";
	else if Player is male:
		say ", wracking you with the throes of your own subsequent release. [if Cock Count of Player < 1]Cocks firing their load[else]cock firing its load[end if] straight into the goblin's exposed face, you unleash a [Cum Load Size of Player] load as that makes a [if Ball Size of Player >= 6]considerable[else]fair[end if] mess of the [if scalevalue of Player > 2]diminutive[end if] creature's face, milking him of every last drop before you finally relent.";
	else if Cunt Depth of Player > 12:
		say "; however, this isn't nearly enough to get yourself off, forcing the [if scalevalue of Player > 2]diminutive[end if] goblin to endure your persistent abuse, forcing him to orgasm a number of additional times before you achieve your bliss, milking the poor creature dry before you finally relent.";
	else:
		say ", wracking you with the throes of your own subsequent release. [if scalevalue of Player > 3]Straining the goblin even further as you more firmly pin him down[else]Tightening your grip around the goblin[end if], your greedy hole milks the creature of his seed [']til naught remains before you finally relent.";
	say "     Getting off of him, you straighten yourself up while your [if scalevalue of Player > 3]little victim is left crawling away after the strain of your abuse[else]victim slowly escapes from your further wrath[end if]. He makes it to a goblin tunnel in one of the junk piles and scrambles inside for safety.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Goblin";

to say mgob_vicsex2:	[m-gob anal sex]
	say "     Approaching him, you immediately rip free his tattered loincloth, leaving his diminutive behind naked in the middle of the open air. [if scalevalue of Player > 3]You can see him visibly tremble, clearly not sure what to expect from someone as large as you[else]Perhaps too weak to contend your assault, he doesn't give you any trouble when you assess your inevitable angle of descent[end if]. Freeing yourself of any bindings, you ";
	if scalevalue of Player > 4:
		say "grab the small creature, stroking [if Cock Count of Player > 1]one of your now-exposed dicks[else]your now-exposed dick[end if]";
	else:
		say "grab him by his sides and grind [if Cock Count of Player < 1]one of your now-exposed dicks[else]your now-exposed dick[end if] between his asscheeks";
	say " before driving your hardened cock into his hole.";
	say "     [if Cock Length of Player > 8]He immediately cries out in protest, his tight ring giving you a fair amount of resistance, but with a bit of work his passage inevitably abides your invading flesh, regardless of your victim's compliance[else]He flinches and struggles against the sensation of your invading flesh, his anal passage tight and ill-suited to abide even a reasonable intrusion, a resistance - as it may be - quickly diminished with a bit of force[end if]. [if scalevalue of Player > 3]He's dragged across the ground with each successive thrust, trying in vain to anchor himself against the overwhelming storm of your rising fervor[else]Gripping at the ground, he can barely hold himself in place as your thrusting's pace reaches a feverish pace[end if], until you find blissful relief.";
	say "     [if Cock Length of Player >= 9]Your [cock size desc of Player] intrusion triggering his own orgasm, you[else]You[end if] ";
	if Ball Size of Player >= 6:
		say "begin pumping an unholy amount of cum into his beleaguered hole, bloating him almost immediately until each successive spurt finds escape by squirting out around your cock[if Cock Count of Player > 2], your exposed members firing impotently until the goblin is practically swimming in a puddle of your sexual fluids[else if Cock Count of Player > 1], your exposed member firing impotently until the goblin is practically swimming in a puddle of your sexual fluids[end if].";
	else:
		say "pump the poor beast full of your cum, [if Cock Count of Player > 2]your exposed members firing impotently against the goblin, further cementing his humiliation as you make a mess of his ragged attire[else if Cock Count of Player > 1]your exposed member firing impotently against the goblin, further cementing his humiliation as you make a mess of his ragged attire[else]forcing the goblin to writhe impotently against the earth as your warmth floods his bowels[end if].";
	say "     Inevitably pulling yourself free, you give him a playful smack across the behind, sending him off with a jolt. He scrambles quickly to a goblin tunnel in a nearby junk mound, leaking a trail of cum right to it. After you clean yourself a bit, you gather your things and set off once more.";
	CreatureSexAftermath "Goblin" receives "AssFuck" from "Player";

to say mgob_vicsex3:	[m-gob oral sex]
	say "     Grinning, [if scalevalue of Player > 4]you set yourself down, pulling the creature to your massive form[else]you set yourself down, relinquishing yourself of any attire that might get in the way and pulling the creature to you[end if]. Clarifying his already quite apparent mission, you gesture down to your ";
	if Player is herm:
		say "[if a random chance of 1 in 2 succeeds][mgob_vicsex3_m][else][mgob_vicsex3_f][end if]";
	else if Player is male:
		say "[mgob_vicsex3_m]";
	else:
		say "[mgob_vicsex3_f]";

to say mgob_vicsex3_m:	[m-gob oral m-player]
	say "cock[smn].";
	if Cock Length of Player >= 18:
		say "     At first he's a bit apprehensive, clearly unsure about how he'd go about pleasuring [if Cock Count of Player > 1]such [cock size desc of Player] tools[else] such a [cock size desc of Player] tool[end if], but he's inevitably coaxed into improvising with a little forceful encouragement. Grabbing [if Cock Count of Player > 2]two of them[else if Cock Count of Player > 1]both of them[else]the organ[end if] with both hands, his tongue moves to caress the length [if Cock Count of Player > 1]of one of them[else]of the shaft[end if]. He's clearly quite dexterous and seems to perform fairly well in spite the circumstances, driving you into arousal with desired expedience.";
		if Cock Count of Player is 1:
			say "     [if Cunt Count of Player > 1]Main hand kept busy, he shifts his offhand to assault one of your exposed cunts, lightly teasing it in turn as he continues his main endeavors. [else if Player is female]Main hands kept busy, he shifts his offhand to assault your exposed cunt, lightly teasing it in turn as he continues his main endeavors. [else if anallevel is 3]Main hand kept busy, he shifts his offhand to assault your exposed anal ring, lightly teasing it in turn as he continues his main endeavors. [end if]He tries his best to aim the head of your cock for his mouth, moving to engulf the tip in his ill-fitting hole. The inherent awkwardness of this endeavor is somewhat mitigated by the creature's strangely inherent ability to handle a number of tasks at once.";
		else:
			say "     He tries his best to aim one of your cockheads for his mouth, moving to engulf the tip in his ill-fitting hole. The inherent awkwardness of this endeavor is somewhat mitigated by the creature's strangely inherent ability to handle a number of tasks at once.";
		say "     His involuntary endeavors are sweetly rewarded, a moan escaping your lips in celebration of your release, [if Ball Size of Player >= 6]the poor goblin getting absolutely drenched in your torrential release[else] the goblin snorting in slight surprise before relinquishing his lip's hold to cough free some of your cum[end if]. You get up, letting [if Ball Size of Player >= 6]the cum-coated creature[else]him[end if] free and watch him scramble away to a small tunnel in one of the nearby junk mounds. With him gone, you can turn your attention back to other matters.";
	else:
		say "     At first he appears a bit sheepish to the concept of contending with your [cock size desc of Player] [if Cock Count of Player > 1]tools[else]tool[end if], but it only takes a moment of forceful coaxing before he's compliant. Grabbing [if Cock Count of Player > 2]two of them[else if Cock Count of Player > 1]both of them[else]the organ[end if] with both hands, his tongue moves to caress the length [if Cock Count of Player > 1]of one of them[else]of the shaft[end if]. He's clearly quite dexterous and seems innately adept at this performance.";
		if Cock Count of Player is 1:
			say "     [if Cunt Count of Player > 1]Main hand kept busy, he shifts his offhand to assault one of your exposed cunts, lightly teasing it in turn as he continues his main endeavors. [else if Player is female]Main hands kept busy, he shifts his offhand to assault your exposed cunt, lightly teasing it in turn as he continues his main endeavors. [else if anallevel is 3]Main hand kept busy, he shifts his offhand to assault your exposed anal ring, lightly teasing it in turn as he continues his main endeavors. [end if]He moves your cock to engulf it within the depths of his maw. The efficacy of his endeavors quickly becomes apparent as each successive bob sends bolts of pleasure through your [if scalevalue of Player > 3]massive[end if] frame.";
		else:
			say "     He moves one of your cocks to engulf it within the depths of his maw. The efficacy of his endeavors quickly becomes apparent as each successive bob sends bolts of pleasure through your [if scalevalue of Player > 3]massive[end if] frame.";
		say "     His involuntary endeavors are sweetly rewarded, a moan escaping your lips in celebration of your release, [if Ball Size of Player >= 6]the poor goblin getting absolutely drenched in your torrential release[else]the goblin briefly and audibly gagging before he complicity swallows your subsequently load[end if]. You get up, letting [if Ball Size of Player >= 6]the cum-coated creature[else]him[end if] free and watch him scramble away to a small tunnel in one of the nearby junk mounds. With him gone, you can turn your attention back to other matters.";
	CreatureSexAftermath "Goblin" receives "OralCock" from "Player";

to say mgob_vicsex3_f:	[m-gob oral f-player]
	say "[cunt size desc of Player] cunt[sfn].";
	say "     At first he appears a bit sheepish to the concept of contending with [if Cunt Count of Player > 1]one of your holes[else]your hole[end if], but it only takes a moment of forceful coaxing before he's compliant. Fingers [if Cunt Count of Player > 2]teasing the soft lips of two of them[else if Cunt Count of Player > 1]the soft lips of both of them[else]its soft lips[end if], his tongue moves to caress [if Cunt Count of Player > 1]one of their clits[else]its clit[end if], invariably tasting your emergent feminine fluids. He's clearly quite dexterous and seems innately adept at this performance.";
	if Cunt Count of Player is 1:
		say "     [if Cock Count of Player > 1]Main hand kept busy, he shifts his offhand to assault one of your hardening cocks, gently stroking it in turn as he continues his main endeavors. [else if Player is male]Main hands kept busy, he shifts his offhand to assault your exposed cock, gently stroking it in turn as he continues his main endeavors. [else if anallevel > 1]Main hand kept busy, he shifts his offhand to assault your exposed anal ring, lightly teasing it in turn as he continues his main endeavors. [end if]His tongue moves to aid his digits as they flood the depths of your cunt. The efficacy of his endeavors becomes quickly apparent as each successive thrust of his tongue sends bolts of pleasure through your [if scalevalue of Player > 3]massive[end if] frame.";
	say "     His involuntary endeavors are sweetly rewarded, a moan escaping your lips in celebration of your release, ";
	if Libido of Player > 50:
		say "[if Cock Count of Player > 1]your cocks erupting with their load against you as the goblin briefly contends with your gushing portal[else if Cock Count of Player is 1]your cock erupting with its load against you as the goblin briefly contends with your gushing portal[else]the goblin briefly contending with your gushing portal[end if]. You get up, leaving him free to scramble to the safety of a narrow tunnel within one of the nearby mounds.";
	else:
		say "the goblin briefly contending with your gushing portal. You get up, leaving him free to scramble to the safety of a narrow tunnel within one of the nearby mounds.";
	CreatureSexAftermath "Goblin" receives "OralPussy" from "Player";

to say mgob_vicsex4:	[m-gob urethral sex]
	say "     Holding [if Cock Count of Player > 1]one of your [cock size desc of Player] tools[else]your [cock size desc of Player] tool[end if] before the creature, his jaw is agape. That thing is not going to fit anywhere on him! Knowing this, however, you soon make it clear that you have something even more perverse in store for him.";
	say "     [if scalevalue of Player > 3]With your victim under you as you position yourself onto all fours, you[else]You[end if] grind the tip of your hardening cock against his groin, the contents of his loincloth soon made hard by arousal, slicked by your emergent sexual fluids. You line up your organ with his and, with a strained grunt, thrust his prick into your dickhole. The goblin's immediate gasps in pleasure lost to you as you contend with the intense sensation of such a particular intrusion.";
	say "     Gradually, you move to fuck his dick proper, each subsequent thrust met with a tremors of sharp pleasure. As you build up pace, the creature - obliging as he may be to this lewd ritual - is nonetheless dug into the dirt by your elevating fervor.";
	if Libido of Player > 49:
		say ", and your endeavors are expediently rewarded as soon you cry out in blissful release.";
		say "     No doubt this entire bout has been of little detriment to your victim up to this point, but that's quick to change when his cock is assaulted with a flood of your cum. Dick firmly hilted into his crotch, the subsequent path of least resistance is apparent when your sexual fluids are pumped into the goblin. Now writhing in twisted pleasure, his conflict is immediately visualized when his balls are [if Ball Size of Player >= 6]profusely inflated with your massive[else]inflated with your[end if] load, quickly forcing him to orgasm himself.";
		say "     Your tapering flow is suddenly reversed when your victim counters with his own, now-augmented load, and you can't help but gasp as your own wanton discharge is returned to you in spades, your [Ball Size Adjective of Player] [Balls][if Ball Size of Player >= 6], however, barely expand to accommodate his paltry contribution[else] expanding to accommodate his contribution[end if].";
		say "     Eventually, both of you recover enough to pull yourself free of his cock, the dazed goblin picking himself up and slowly hobbling away. He makes it to a goblin tunnel in one of the junk piles and scrambles inside for safety. You invariably feel a bit sore and exhausted from this particular misadventure.";
	else:
		say ", and your endeavors are expediently rewarded as your victim soon cries out in blissful release.";
		say "     Like a bolt of lightning you feel his load fire through your urethra, all the way down to your [Ball Size Adjective of Player] [Balls], [if Ball Size of Player >= 6]your package barely bloating with his comparatively unimpressive release. His orgasm is certainly enough to trigger your own, so you set off to show him a -real- load[else]your package bloating visibly from his release. His orgasm is more than enough to trigger your own, granting you blissful retribution for his assault[end if].";
		say "     Pleasure twisted into pain, his throbbing dick unintentionally reinvites both his and your own [Cum Load Size of Player] load down his pipe. Writhing about in exhausting ecstasy, you're able to partially observe him as you contend with your orgasm, his balls blatantly bulging with each successive gout of cum, [if Ball Size of Player >= 5]the beleaguered orbs reaching an absurd size in order to contain your excessive release[else]eliciting moaning cries as he contends with a sensation no doubt substantially more intense than what you previously contended with[end if].";
		say "     Eventually you're able to recover from the ordeal, pulling your dick free of the goblin's. He slowly pulls himself to his feet, cock dripping cum. [if Ball Size of Player >= 6]His struggles to retreat while contending with such an awkwardly large sack is a rather amusing sight to behold[else]His endeavors to retreat are slightly hindered by his sore and somewhat bloated sack[end if]. Watching him stagger his way to a goblin tunnel in one of the nearby junk piles, he scrambles to safety, leaving you free to go on your merry way.";
	CreatureSexAftermath "Goblin" receives "Other" from "Player";


to say gob_nosex:		[let goblin go]
	say "     Taking a deep breath, you resist the urge to descend to [if gobgender is 1]her[else]his[end if] level and instead growl menacingly at the fallen creature. [if gobgender is 1]She[else]He[end if] scrambles away fearfully and makes a run for it, diving through a tight tunnel in one of the mounds of junk. Even if you could squeeze through there, you don't feel there's much point in pursuing [if gobgender is 1]her[else]him[end if] in there.";

to say goblindesc:
	if gobgender is 1:
		setmongender 4; [creature is female]
		say "     You encounter what appears to be a female goblin. Face and ears long and pointed in structure, her skin is leathery brown and green. Nary an inch over four feet in height, the nimble creature's limbs are thin and spindly. Her attire is a crude mish-mash of scraps cobbled from her surroundings, [one of]a pair of goggles on her head[or]a magnifying monocle over one eye[or]an earring strung with a wing nut[or]a leather belt over her shoulder with a pouch on it[at random], tools and metal machinery in her possession, illustrating her tinkering mind. Becoming aware of your presence, she slowly moves to approach.";
		say "     '";
		if gobdem is true:
			say "[one of]Ha, you mine - MINE[or]No, no, bad, mine[or]Agh, you, bad - PUNISH[at random]";
		else:
			say "[one of]Eh, watch where you're going, this here is my turf[or]Oh, I'm going to have some fun with you[or]Looks like someone needs a lesson in not sticking their nose where it doesn't belong[at random]";
		say "!' The creature's deviously grin exposing its sharp teeth, it's clear she has something else entirely in store for you.";
	else if gobgender is 2:
		setmongender 3; [creature is male]
		say "     You encounter what appears to be a male goblin. Face and ears long and pointed in structure, his skin is leathery brown and green. Nary an inch over four feet in height, the nimble creature's limbs are thin and spindly. His attire is a crude mish-mash of scraps cobbled from his surroundings, [one of]a pair of goggles on his head[or]a magnifying monocle over one eye[or]a boy's baseball cap on his head[or]a leather belt over his shoulder with a pouch on it[at random], tools and metal machinery in his possession - an illustration of his tinkering mind. Becoming aware of your presence, he slowly moves to approach.";
		say "     '";
		if gobdem is true:
			say "[one of]Ha, you mine - MINE[or]No, no, bad, mine[or]Agh, you, bad - PUNISH[at random]";
		else:
			say "[one of]Eh, watch where you're going, this here is my turf[or]Oh, I'm going to have some fun with you[or]Looks like someone needs a lesson in not sticking their nose where it doesn't belong[at random]";
		say "!' The creature's deviously grin exposing its sharp teeth, it's clear he has something else entirely in store for you.";

[ original desc:
	say "     Before you is a small goblin of a person. His body has been reduced to barely four feet tall and has misshapen proportions. His face has a long, pointed nose and chin, and large, pointy ears. His skin is a leathery green and brown color. His limbs are thin and spindly and his fingers are long and nimble. He wears a crude loincloth and has [one of]a pair of goggles on his head[or]a magnifying monocle over one eye[or]a boy's baseball cap on his head[or]a satchel of small tools[at random]. He cackles as his yellow eyes lock on you, baring his mouthful of sharp teeth.";
]

Table of CombatPrep(extended)
name(text)	PrepFunction(text)
"Goblin"	"[PrepCombat_Goblin]"

to say PrepCombat_Goblin:
	choose row with name of "Goblin" from the Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	now gobgender is a random number between 1 and 2;
	if MaleList is banned and FemaleList is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You are stared at by an angry little goblin creature. It shifts from one foot to another, as if sizing you up. Eventually it decides to leave you alone, heading back to hide among the junk. Well, that was odd. Hopefully it'll tell the others to leave you alone as well.";
		now BannedStatus entry is true;
		now fightoutcome is 19;
		now combat abort is 1;
		now gobgender is 0;
	else if MaleList is banned:
		now gobgender is 1;
	else if FemaleList is banned:
		now gobgender is 2;
	else if MaleList is warded and FemaleList is warded:
		now gobgender is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if MaleList is warded and a random chance of 1 in 3 succeeds:
			now gobgender is 1;
		else if FemaleList is warded and a random chance of 1 in 3 succeeds:
			now gobgender is 2;
	else if ishunting is false:
		if MaleList is warded:
			now gobgender is 1;
		else if FemaleList is warded:
			now gobgender is 2;
	if a random chance of 1 in 4 succeeds and inasituation is false:
		now gobdem is true;
	else:
		now gobdem is false;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Goblin"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Goblin" to infections of MagicalList;
	add "Goblin" to infections of MythologicalList;
	add "Goblin" to infections of MaleList;
	add "Goblin" to infections of BipedalList;
	now Name entry is "Goblin"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The cackling goblin bites you![or]The vicious goblin scratches at you with his sharp claws![or]The little goblin jabs you in the leg with a small knife![or]The goblin scrambles onto your back, clawing and scratching as he does![or]The goblin manages to grab your throat with his surprisingly strong hands and tries to choke you![at random]";
	now defeated entry is "[beatthegoblin]";
	now victory entry is "[losetogoblin]";
	now desc entry is "[goblindesc]";
	now face entry is "vaguely human, but twisted in shape. You have an exaggerated pointy nose and chin, as well as a pair of large, pointed ears";
	now body entry is "short and has malformed proportions. Your arms and legs are long and spindly, and your hands have strong, nimble fingers for grasping tools or throats";
	now skin entry is "green and brown, leathery";
	now tail entry is "";
	now cock entry is "[one of]green[or]goblin[at random]";
	now face change entry is "your head shifts and changes. For a moment, you wonder if it will return to normal as your face starts to form. But then it starts to warp and change. Your nose grows and elongates into a point and your chin does the same moments later. You can taste blood in your mouth as new, sharp teeth grow in and you gain a vicious grin. Your ears feel as if they're being pulled on, stretching and growing until they become large and pointed";
	now body change entry is "you shrink, losing height and becoming a small and spindly creature";
	now skin change entry is "green flows across your skin like spilled paint until your covered in leathery, green skin. Your shoulders, feet and the tips of your ears are a brownish-green color";
	now ass change entry is "your ass becomes small and bony"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "becomes green in color and has a slightly more pointed shape";
	now str entry is 8; [ These are now the creature's stats... ]
	now dex entry is 14; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 14;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 21; [ The monster's starting HP. ]
	now lev entry is 2; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 5; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 25; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "goblin milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]spindly[or]malformed[or]twisted[at random]";
	now type entry is "[one of]goblin[or]humanoid[at random]";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Goblin Infection"	"Infection"	""	Goblin Infection rule	1000	false

This is the Goblin Infection rule:
	if Player has a body of "Goblin":
		trigger ending "Goblin Infection";
		if humanity of Player < 10:
			say "     As your goblin body's instincts take over, you cackle to yourself and scamper off through the city. You are drawn back to the large junkyard at the edge of town. After some scurrying away from the bigger creatures there, you run into a goblin patrol. They welcome you before leading you through the junkpiles to their hidden warren. There are several warrens built into mounds across the junkyard. Inside, the goblins tinker with trash or scuffle with one another before sating their lusts. Joining the workers, you set to making traps from the trash. When the soldiers enter the city, your people are ready with traps scattered around the junkyard to help deal with those who manage to get past its larger defenders. Those caught in goblin snares are dragged back to the warrens to be raped and converted into more goblins.";
		else:
			say "     After your rescue and release, you stunted and warped body makes you somewhat of an outcast. Bitter about this, you start coming up with ideas for little traps to hurt or infect those who have slighted you. After making a small collection of these, you realize that your snares and traps can be sold to others. With the concern over thieves or assassins with infection-enhanced abilities growing in the minds of the populous, you set up a business installing security systems, traps and defenses for homes. You focus your clever and cruel thoughts into your work, using it as an outlet for your darker goblin instincts, letting you live a happier life. That and the money you charge rich people to help secure their homes from threats.";

[ Edit this to have the correct creature name as well]
Goblin ends here.
