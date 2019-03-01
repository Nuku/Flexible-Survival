Version 1 of Inflatable Orca by Song begins here.
[ Version 1.0 - Initial bound state content - Song ]

"Adds a special fight with the large Inflatable Orca toy in the Bouncy Castle, managed as a creature. It is not an infection, and losing to it results in a bound state."

Section 1 - Monster Reponses

orcaintense is a number that varies. orcaintense is usually -1.
lastorcabeat is a number that varies. lastorcabeat is usually 255.

[Unlike other bound states, the orca will automatically result in a game over if you orgasm 5 times in one sitting. This is intentionally difficult to do, but not impossible.]

[
Variant for intensity:
-1: No struggle, and no prior struggles. Set to 0 after first time bound.
0: No struggle.
1: 1 struggle, negligible sanity loss.
2: 2 struggle, minor sanity loss.
3: 3 struggle, moderate sanity loss.
4: 4 struggle, major sanity loss.
5: 5 struggle, extreme sanity loss.
6: Instant game over after fifth orgasm.
Intensity stat resets completely after escape.
]

to say beattheinflatableorca:
	say "     You land a decisive final blow that sends the orca reeling, its seams torn and leaking. The inflatable's hide shrinks with a sputtering whine, stubby fins unable to contain the escaping gas. Soon, it's nothing but a pile of trembling rubber to remember it by, no longer buoyant enough to retaliate.";
	say "     Before you leave, you notice the orca's wounds beginning to mend, rippling rubber melting together as it slowly re-inflates. It might be wise to make your escape before it can recover.";
	now lastorcabeat is turns;

to say losetoinflatableorca:
	if HP of player > 0:
		say "     The orca's enthusiasm entirely too infectious, you begin to entertain its playful assault, dodging and weaving its clumsy bounds and charges. It's all fun and games until your leg slips on the unsure footing, [if scalevalue of player > 3]your large size [end if]making you an easy target for the energetic inflatable. You're bumped back and sent tumbling against one of the padded walls, the impact leaving you reeling. You're knocked around some more in your dazed state before being dropped onto your back by a sweep of the orca's tail, only to have the two meter long cetacean pin you down with its sleek and buoyant body.";
	else:
		say "     Bashed about by the insistent orca, your body finally relents when a final sweep of the tail sends you tumbling against one of the padded walls. The living inflatable continues to bump and nudge against you in play until you slump to the ground, too worn out to continue. Subdued, you're all too easy to clamber atop of, weary form pinned down beneath the two meter long cetacean's sleek and buoyant body.";
	say "     The orca slips its tail beneath your back, sandwiching you between the smooth vinyl of its underbelly and the broad surface of its caudal fin. All of a sudden, it lurches to the side, pulling you with it. You roll across the ground until you land atop a large, deflated bag of some kind, although you're quickly distracted again by a sudden kiss from the inflatable creature. As its thick, smooth tongue explores your mouth, the orca blows deeply down your throat, filling your lungs with a strange, intoxicating gas that makes you feel increasingly lightheaded and aroused.";
	WaitLineBreak;
	if player is male:
		say "     Rubbing down onto you, its fins and tail manage to push away any obstructing gear between it and your groin. The feel of its softly flexing material and the rush of mind-altering gasses leave you achingly hard, which is just what the creature's been waiting for. It trills happily and shifts position overtop of you, pressing the wet, rubbery lips of its pussy down over your stiffening member. The feel of that slick material sliding down overtop of your shaft and [if cock length of player > 30]stretching[else]tightening[end if] around it to make a perfect fit causes you to moan loudly in response.";
		say "     With you trapped beneath the giant cetacean toy, you scarcely notice her great maw pulling away to blow into the vinyl construct's nozzle, body trembling as her supple walls grip and squeeze around your length. Suddenly, you feel the surface beneath you begin to undulate and rise. Looking up, you realize that the orca is trying to inflate the large bag around you both! As her excitement grows, she moves faster, slapping her broad tail on the floor. This sets the wobbly castle floor to sway, further exasperating your arousal and making it harder to focus on escape.";
	else:
		say "     Rubbing down onto you, it turns around and presses a large, wet slit against your face. Presented with juicy proof that the cetacean's female and getting a dose of her femcum all over your lips and nose, you can't help but lick at her proffered cunt, that first tentative taste quickly turning into eager lapping as her slick juices excite you. She grinds her lower quarters down atop you while you run your tongue up and down along her lengthy slit.";
		say "     With you trapped beneath the giant cetacean toy, you scarcely notice her great maw begin to blow into the vinyl construct's nozzle. Moaning hotly into her depths, there's little you can do but respond to your instincts, eating out her rubbery pussy with growing excitement. Suddenly, you feel the surface beneath you begin to undulate and rise, and you realize with a start that the orca is trying to inflate the large bag around you both!";
	WaitLineBreak;
	orcabind;

Section 1.1 - Inflatable Orca Bind

[The following bound state section is modeled off of a blend of Phantom Dolphin and Pewter Consort. I've included documentation to help other writers better understand this function.]

to orcabind:
	psycheeval;
	libidoeval;
	now lustatt is libido of player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		now boundstate is true;
		if HP of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if orcaintense < 1: [Sets player to first stage of being bound.]
			now orcaintense is 1;
		if lustatt > 99: [lustatt is short for 'lust attribute'. When reaching 100, the player orgasms. This check uses > 99 to force orgasm even if lustatt is somehow above 100]
			orcabindorgasm; [Calls the function defined later on]
			if libido of player > 25, decrease libido of player by (libido of player / 5) + 1;
			if orcaintense < 6, increase orcaintense by 1; [Increases bound state intensity after every orgasm. At 6, instant game over.]
			if orcaintense is 6: [Complete encasement. Instant game over. Placed above in top bind code to display orgasm, then complete submission.]
				say "     With the last of your humanity forcefully fucked out of you, the castle senses your complete submission and begins to draw you and your partner into itself. The bondage bag seals together at the seams, and your new pod eases into the floor. The last you hear of the outside world is a dolphin girl giggling at your demise, but you're entirely too distracted by your lovely, sexy partner to care.";
				WaitLineBreak;
				now bodyname of player is "OrcaSexSlave";
				now humanity of player is 0;
				end the story saying "You are milked perpetually by the toy.";
				now Trixieexit is 1;
			if orcaintense < 6: [Hides content to prevent endings colliding]
				now lustatt is libido of player;
				orcasanityorgasm; [Calls the function defined later on]
				orcaprogress; [Calls the function defined later on]
		if enduring is true: [Decreases lust gained if the player selects enduring.]
			increase lustatt by 2 + lustadjust;
			decrease humanity of player by 1;
		else:
			increase lustatt by 4 + (lustadjust * 2);
			decrease humanity of player by 2 + psycheadjust;
		now enduring is false;
		if orcaintense < 6: [Hides content to prevent endings colliding]
			checkorcasegment;
			say "[orcabinddesc]";
			say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
			say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
			say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
			say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [orcastrugglebar][line break][run paragraph on]";
			if humanity of player < 1: [Lost all sanity. Instant game over.]
				if orcaintense < 5:
					say "     [if orcaintense is 1]Although of negligible threat under normal conditions, your deranged mind snaps at the slightest provocation. [else if orcaintense is 2]Although not in great danger, your twisted mind snaps rather easily. [end if]Losing your grasp on reality, you indulge the orca's every lustful whim, [if player is male]fucking her gripping cunt through climax after climax. She trills in delight at your submission, blowing into the bag's nozzle as you ravenously ream[else]lapping at her slavering cunt through climax after climax. She trills in delight at your submission, blowing into the bag's nozzle as you ravenously eat out[end if] her pussy, occasionally sharing a gas-filled kiss with you that only fuels your lusts.";
					say "     In your daze, it's only a matter of time until the bag has fully encased the two of you, its snug walls pushing you right against the orca in these cramped confines. Not that your broken mind cares, all too happy to continue [if player is male]humping the sexy inflatable, filling her with load after [cum load size of player] load[else]orally worshipping the sexy inflatable, savoring her every messy climax and the deluge of tainted femcum that entails[end if].";
				else:
					say "     Breathing in that wonderful gas, succumbing to the immense pleasure of it all, your mind eventually snaps and you sink back against the floor, dazed and confused. Your new, feral self welcomes the constant influx of pleasure, overwhelming all other thoughts, including those of escape. Instead, you breathe deeply of the mind-altering gas, [if player is male]all too happy to continue stuffing her squeezing, sordid cunt[else]relaxing against the orca, even as she rides you[end if] through climax after powerful climax.";
				say "     With the last of your humanity forcefully fucked out of you, the castle senses your complete submission and begins to draw you and your partner into itself. The bondage bag seals together at the seams, and your new pod eases into the floor. The last you hear of the outside world is a dolphin girl giggling at your demise, but you're entirely too distracted by your lovely, sexy partner to care.";
				WaitLineBreak;
				now bodyname of player is "OrcaSexSlave";
				now humanity of player is 0;
				end the story saying "You are milked perpetually by the toy.";
				now Trixieexit is 1;
			else: [Section of actions possible during the bind.]
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
					increase struggleatt by 1;
					if struggleatt < boundsegment: [Determines if the cumulative "struggle attribute" < or equal to bound stage. If equal to, the player escapes. Each orgasm will remove a tick of struggleatt.]
						if orcaintense is 1:
							say "     [one of]You struggle to wiggle out from under the toy, its hollow rubber body weighing you down[or]Straining, you try to find some leverage to push the orca off of you[or]Determined to escape, you try to find a grip on the orca's immaculate hide to push it away[at random].";
						else if orcaintense is 2:
							say "     [one of]Breathing heavily, you try to find a grip on the orca's immaculate hide to push it away[or]Despite your arousal, you continue to try to wiggle out from under the oversized toy, not intent on becoming its eternal plaything[or]You writhe and squirm beneath the dogged orca, clawing at its hide to coax it off of you[at random].";
						else if orcaintense is 3:
							say "     [one of]Feeling the bag enclosing around you, you renew your efforts to push the horny cetacean off of you, your struggles made more difficult by your increasingly slick, constricting surroundings[or]Unwilling to succumb to this pleasure, you struggle to find a good grip on the orca's sleek hide, trying to shove it back[or]You writhe and buck beneath the insistent orca, trying to find some leverage in spite of your increasingly slick, arousing conditions[at random].";
						else if orcaintense is 4:
							say "     [one of]The orca's hold growing frighteningly strong now, you give it your all to push the sex-crazed cetacean away[or]The light of the outside world growing dim, you try to push and punch at the orca above you, struggling wildly to escape[or]With your window of escape growing more and more narrow, you give it your all to push up against your insistent lover[at random].";
						else:
							say "     [one of]You briefly attempt to struggle, though the constant influx of gas leaves you feeling too aroused and weak to continue[or]Overwhelmed by the heady, arousing kiss, you give a token attempt to wiggle free from the orca above you[if player is male]. You're quickly distracted by another squeeze around your length, moaning into her welcoming maw[end if][or]Dazed and confused, you try to fight against the orca's overwhelming influence, head spinning with lustful arousal[or]Trapped against the orca in the bondage bag, you give a feeble attempt to push her away, hoping against hope that you'll successfully pry free[at random].";
						LineBreak;
						orcasanitypassive;
						orcalust;
					else: [player escapes the bind]
						if orcaintense is 1:
							say "     Lifting a leg up, you give a firm kick to the overly friendly orca. Your sudden blow knocks her back, her buoyant body rolling across the floor. By the time she recovers, she's already started to deflate, the force of the impact having torn some of her seams. She gives a pitiful groan as she collapses into a pile of squirming rubber, no longer a threat.";
						else if orcaintense is 2:
							say "     Struggling to find an angle, you finally manage to land a firm punch right against one of the inflatable's subtle seams. The creature gasps in pain and recoils, stumbling on the castle's unsteady footing before finally flopping onto her back. Its body continues to deflate despite her best to efforts to contain it, losing more and more of its prior integrity until, with a final weakened groan, it's nothing more than a pile of squirming rubber.";
						else if orcaintense is 3:
							say "     No match for your determination, you finally manage to ram an elbow against one of the inflatable's subtle seams. The creature's moans are cut short with a cry of pain, and both her and the bag around you begin to deflate. Attempting to cling to you, you push and shove until the weakened creature finally relents, reduced to pile of whimpering rubber on the ground before you.";
						else if orcaintense is 4:
							say "     Despite your compromising position, you manage to jab the orca just right to pop one of her seams, earning a pained cry. You continue to beleaguer her with blow after painful blow until the creature finally relents, whining pitifully as it slumps off to your side. The cetacean continues to deflate, shuddering and whimpering until she's nothing more than a pile of squirming, cum-slick rubber.";
						else:
							say "     By some miraculous fluke, your aimless blows land just right to pop one of the orca's seams. She doesn't seem to notice what happened at first, too busy filling your lungs with arousing, mild-altering gas, but soon she gives a surprised trill at the feeling of her body deflating above you. She pulls her maw back, panicking as she tries to use her stumpy flippers to cover the escaping air.";
							say "     Mustering what little will you have left, you drive blow after vengeful blow against the orca's hide, many of them glancing off her cum-slick form. Finally, both her and the bag around you deflate enough to position a leg beneath the creature's form and forcibly push her off. She tries in vain to crawl back to you, to complete your encasement, but soon she's reduced to a pile of damp, squirming rubber on the swaying floor of the castle. You count your lucky stars that you didn't become her eternal plaything, although your gas-filled mind can't help but dwell on the arousing idea.";
						say "     Before you leave, you notice the orca's wounds beginning to mend, rippling rubber melting together as it slowly re-inflates. It might be wise to make your escape before it can recover.";
						LineBreak;
						cleanboundmemory;
						now Trixieexit is 1;
						now orcaintense is 0;
						now lastorcabeat is turns;
					WaitLineBreak;
					next;
				else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2": [player picked oblige/abide]
					LineBreak;
					if obliging is true: [oblige]
						if orcaintense is 1:
							say "     [one of]Eager to please[or]Too aroused to resist[at random], you [if player is male]take hold of the orca's hips and thrust up into the welcoming warmth of her sex, causing her to till and moan in delight[else]drag your tongue along the smooth, elastic walls of the cetacean's sex[end if].";
						else if orcaintense is 2:
							say "     [one of]Eager to please[or]Too aroused to resist[at random], you [if player is male]squeeze the orca's hips and thrust up into the cum-slick depths of her cunt, causing her to trill and moan in delight[else]drag your tongue along the smooth, damp walls of the cetacean's welcoming sex[end if].";
						else if orcaintense is 3:
							say "     [one of]Moaning with desire[or]Lust clouding your mind[or]Giving in to these powerful urges[at random], you ";
							if player is male:
								say "drive deep into the orca's gripping sex, losing yourself to pleasure of pleasing the ravenous inflatable.";
							else:
								say "lap greedily along the walls of her sex[if player is female] while fingering your own soaked cunt[end if], breathing deeply of the strong scent of arousal.";
						else if orcaintense is 4:
							say "     [one of]Moaning with desire[or]Lust clouding your mind[or]Giving in to these powerful urges[at random], you ";
							if player is male:
								say "drive deep into the orca's gripping sex, losing yourself to pleasure of pleasing the ravenous inflatable, each needy thrust met with an encouraging squeeze around your throbbing, pulsing maleness.";
							else:
								say "lap greedily along the walls of her sex[if player is female] while fingering your own soaked cunt[end if], breathing deeply of the strong scent of arousal.";
						else:
							say "     [one of]Driven by the sudden influx of mind-numbing gas[or]Lost in a haze of wanton desire[at random], you struggle to [one of]find hold of[or]grip[at random] the orca's [one of]cum-slick[or]slickened[at random] hide in [one of]these almost completely sealed quarters[or]the veil of darkness[at random] as [if player is male]you fuck her slavering pussy, reaming that cum-stuffed cunt with every ounce of your being. Her deep, slick chalice forms the perfect vise around you, encouraging you to give in, to accept your place as her plaything and eternal slave to the castle[else if player is female]you're made to squirm beneath her, fingering your own sopping wet cunt. The slightest caress of your tender folds sends searing jolts of pleasure through your loins, your sex-addled almost looking forward to your fate as the orca's needy little plaything[else]you tremble beneath her, fingering her slippery cunt to show her your appreciation, feeling more and more like the horny, mindless toy you're soon to become[end if].";
						LineBreak;
						now obliging is true;
						orcasanitypassive;
						orcalust;
						now obliging is false;
					else: [abide]
						if orcaintense is 1:
							say "     You abide the orca's [one of]playful swaying[or]ministrations[at random], [if player is male]rocking your hips to meet her every lustful descent[else]dragging your tongue along the smooth, elastic walls of her sex[end if].";
						else if orcaintense is 2:
							say "     You abide the orca's [one of]playful swaying[or]ministrations[at random], [if player is male]thrusting up into her cum-slick cunt[else]dragging your tongue along the smooth, damp walls of her welcoming sex[end if].";
						else if orcaintense is 3:
							say "     You abide the orca's [one of]assault on your senses[or]frantic fucking[at random], ";
							if player is male:
								say "shuddering at the feeling of her well-lubed cunt gripping and squeezing at your length as you thrust into her elastic confines.";
							else:
								say "drawing your tongue in broad sweeps along the smooth, wet walls of her sex[if player is female] while fingering your cunt[end if].";
						else if orcaintense is 4:
							say "     You abide the orca's [one of]assault on your senses[or]frantic fucking[at random], ";
							if player is male:
								say "shuddering at the feeling of her soaking wet cunt gripping and squeezing at your length as you thrust into that sinful vise";
							else:
								say "drawing your tongue in broad sweeps along the smooth, elastic walls of her soaking wet sex, its heady scent filling your lungs and mind[if player is female] while you finger your own slick cunt[end if].";
						else:
							say "     [one of]Driven by the sudden influx of mind-numbing gas[or]Lost in a haze of wanton desire[at random], you struggle to [one of]find hold of[or]grip[at random] the orca's [one of]cum-slick[or]slickened[at random] hide in [one of]these almost completely sealed quarters[or]the veil of darkness[at random] as [if player is male]you fuck her slavering pussy. Her deep, slick chalice forms the perfect vise around you, encouraging you to give in to, to accept your place as her plaything as an eternal slave to the castle[else if player is female]you're made to squirm beneath her, jilling yourself in eager anticipation of another powerful, draining climax[else]you tremble beneath her, your fingers brushing along the walls of her slippery cunt by some strange, lustful compulsion[end if].";
						LineBreak;
					WaitLineBreak;
					next;
				else: [player picked endure/recover]
					now enduring is true;
					LineBreak;
					if boundrecover is true: [recover]
						if orcaintense is 1:
							increase humanity of player by 1;
						else if orcaintense is 2:
							increase humanity of player by 2;
						else if orcaintense is 3:
							increase humanity of player by 3;
						else if orcaintense is 4:
							increase humanity of player by 4;
						else:
							increase humanity of player by 5;
						if humanity of player > 100, now humanity of player is 100;
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity, recovering a small portion of your lost humanity.";
						LineBreak;
						orcalust;
						now boundrecover is false;
					else: [endure]
						if orcaintense is 1:
							say "     You attempt to keep your arousal in check while the orca [one of]rocks[or]rolls[at random] against your [if player is male]groin[else]face[end if].";
						else if orcaintense is 2:
							say "     You attempt to keep your arousal in check while the orca [one of]rocks[or]rolls[at random] against your [if player is male]groin. That warm, wet vise squeezes around your length,[else]face, her heady scent and lubricating wetness[end if] making it difficult to stay focused.";
						else if orcaintense is 3:
							say "     Head swimming with desire, you make an effort to keep your arousal in check. It's becoming increasingly difficult to control your libido, [if player is male]her gripping cunt a hot, wet oven that pulls and squeezes at your cock without relent[else]her powerful musky aroma laced with intoxicating synthetics[end if].";
						else if orcaintense is 4:
							say "     Groaning and trembling beneath the sexy orca, you struggle to keep your libido under control, feeling your arousal spiral to ever-greater heights. [if player is male]Your tongue seems drawn to her slavering pussy, unable to help yourself from lapping along her smooth, slick walls and the heady, addictive flavors of that slippery chalice[else]Your cock twitches and pulses inside of her slavering pussy, that perfectly-formed orifice rippling sensually around your length[end if].";
						else:
							say "     You try to hold your breath, to refrain from breathing in more of that arousing, mind-numbing gas, but your efforts last only moments before you take another deep inhale of the orca's wonderful gift, lost in your chemical lusts.";
							if player is male:
								say "All the while, her wonderful pussy continues to squeeze around your achingly hard shaft, urging you to give in, to accept your place beneath her: an eternity of warm, slick, draining release, unbridled by those silly human thoughts and inhibitions. To your eroding mind, the unspoken offer seems more and more appealing.";
						LineBreak;
						orcalust;
						orcasanitypassive;
					WaitLineBreak;
					next;

to checkorcasegment: [Boundsegment is used above to compare to the player's struggle attribute. If lower, continue struggling. If equal to, escape.]
	if orcaintense < 3:
		now boundsegment is 2;
	else if orcaintense is 3:
		now boundsegment is 3;
	else if orcaintense is 4:
		now boundsegment is 4;
	else:
		now boundsegment is 5;

[
The following section is included in order of appearance in-game.
- orcabindorgasm appears at the top on a new turn if the player cums.
- orcaprogress prints below orgasm if progressing to next bound level.
	- Occurs after every orgasm in this particular bind state.
	- May require multiple orgasms in other binds (e.g. a state spanning multiple intensity levels).
- orcabinddesc always prints below these but above the options list.
]

to orcabindorgasm: [Orgasm description. Progresses to next bound segment.]
	if orcaintense is 1:
		say "     Finally overtaken by bliss, you ";
		if cocks of player > 1:
			say "buck up against the orca, filling her depths with your [cum load size of player] load while your extra [if cocks of player > 2]lengths splatter[else]length splatters[end if] your fore in sticky cum.";
		else if player is male:
			say "buck up against the orca, filling her depths with your [cum load size of player] load.";
		else:
			say "writhe beneath the orca[if player is female], sullying your thighs with squirts of sticky nectar[end if].";
	else if orcaintense is 2:
		say "     Unable to withstand the orca's pleasurable assault, you ";
		if cocks of player > 1:
			say "cum hard into her sordid depths, your extra length[if cocks of player > 2]s[end if] splattering your fore in sticky cum. You groan in ecstasy, the sound muffled against her plastic exterior.";
		else if player is male:
			say "cum hard into her sordid depths with a groan of lustful ecstasy, the sound muffled against her plastic exterior.";
		else:
			say "bury your face into that smooth and supple chalice, lapping ravenously at her walls[if player is female]. You cum, hard, further slickening your increasingly cramped confines[end if].";
	else if orcaintense is 3:
		say "     Each climax stronger than the last, you can only groan when another crashing wave of bliss overtakes you. ";
		if cocks of player > 1:
			say "You clumsily wrap your arms around your cetacean captor's form, filling her depths with blast after blast of sticky cum. Your cock twitches and throbs within those squeezing, milking depths, remaining perpetually hard inside her, and your untended extra length[smn] spurt[smv] thick ropes of seed across your chest.";
		else if player is male:
			say "You clumsily wrap your arms around your cetacean captor's form, filling her depths with blast after blast of sticky cum. Your cock twitches and throbs within those squeezing, milking depths, remaining perpetually hard inside her.";
		else:
			say "Your eyes roll back into your head and back arches[if player is female] as you splatter her underside in sticky femcum[end if], trembling beneath the overwhelming aroma of lust and sex above you.";
	else if orcaintense is 4:
		say "     Overwhelmed by pleasure, you howl your bliss against the sexy cetacean, frantically bucking against her form as climax washes over you. ";
		if cocks of player > 1:
			say "You cum hard into her drenched, sloppily squeezing cunt while your extra length[smn] splatter[smv] your fore in sticky cum, the threat of eternal captivity pushed aside for now as you bask in the powerful warmth of the afterglow.";
		else if player is male:
			say "You cum hard into her drenched, sloppily squeezing cunt, the threat of eternal captivity pushed aside for now as you bask in the powerful warmth of the afterglow.";
		else:
			say "Motions slicked by your lustful frenzy, you help bring the orca to another messy orgasm of her own. Unable to contain yourself, you reach below to finger your sopping wet slit, ravenously jilling yourself in the hopes of cumming again and again.";
	else: [Followed by bad end by virtue of being fully encased. See above in the file for the text that follows this.]
		say "     The constant onslaught of sex and mind-altering gas growing too much for your weary psyche, you reach a powerful climax that tears the final threads of your sanity asunder. ";
		if cocks of player > 1:
			say "You fill the orca's depths with gout after gout of thick, sticky seed, your untended [if cocks of player > 2]dicks rippling as they further sully[else]dick rippling as it further sullies[end if] the space between you, only to tense all over again and stuff that rippling cetacean snatch with a double-dose of cum. Any form of refractory period withers away, and your happy, bestial trills fill the orca's maw. Pushing down against you, she milks you again and again, cementing your new lease in life as her favorite toy and plaything.";
		else if player is male:
			say "You fill the orca's depths with gout after gout of thick, sticky seed, only to tense all over again and stuff that rippling cetacean snatch with a double-dose of cum. Any form of refractory period withers away, and your happy, bestial trills fill the orca's maw. Pushing down against you, she milks you again and again, cementing your new lease in life as her favorite toy and plaything.";
		else:
			say "You eventually sag down beneath the orca, breathing weakly of the gas she continuously feeds you[if player is female] while grinding her tailfin across your aching cunt[sfn][end if]. The heat, scent, and taste of the cetacean's sex becoming your whole world, your mind empties of all but pleasing this attractive orca, wanting nothing more than to indulge her every wanton whim";

to orcaprogress: [Displays once when entering the next bound segment. 1 does not need to be checked since the bind starts at that value.]
	if orcaintense is 2:
		say "     Energized by your climax, the orca takes a deep breath of the sex-tainted air and blows harder into the bag's nozzle, inflating it at worrying speed. While still not much of a threat, the cetacean is clearly determined to encase you.";
	else if orcaintense is 3:
		say "     Relishing [if player is male]your tribute[else]the bliss that radiates from you[end if], the orca trills her delight and blows harder into the bag's nozzle, inflating it further. It fills out until it forms a small basin around you, the undulating plastic rubbing sensually across your body.";
	else if orcaintense is 4:
		say "     Cumming again and again beneath the orca's relentless assault, you're left in too much of a daze to prevent her from inflating the bondage bag further, her powerful lungs filling it up until it's formed a U-shaped cocoon around you both[if player is male]. Her tail rubs teasingly across your orbs, urging you to fill her slavering pussy with more of your virile seed[else if player is female]. Her tail rubs teasingly across your cunt[sfn], the supple feeling of that slickened fin bringing you to the edge of climax all over again[end if].";
	else:
		say "     Dazed and aroused beyond all reason, you almost relish the sight of the orca blowing into the bag's nozzle, filling it around you until it blots out all but a vein of light at the top. With the bag fully inflated, sealing you together, the orca lifts her hips from your [if player is male]crotch, making you yearn for her touch again as your cock[smn] throb[smv] almost painfully hard in the air[else]mouth, making you yearn for her touch again[end if].";
		say "     Your need is answered by a firm, lustful kiss. The horny cetacean presses her tongue into your mouth, dexterously capturing your own in a demanding hold, and your mind empties completely at the taste of her gas-laced breath pouring into your gullet, a powerful aphrodisiac that begins rewiring your thoughts in her favor. [if cocks of player > 1]Her hips descend on another one of your lengths, rippling and squeezing around you in a slick, warm pocket of carnal delight. [else if player is male]Her hips descend on your length again, rippling and squeezing around you in a slick, warm pocket of carnal delight. [end if]You almost don't want to leave this wonderful embrace, but you suspect this is your very last chance to break free from the castle's seductive, encouraging influence.";

to say orcabinddesc: [Displays at the top of the bound screen after every action. Modified by current bound segment and player genitalia.]
	if orcaintense is 1:
		say "     You are pinned down beneath the sultry cetacean as it blows into an inflatable bondage bag, attempting to seal you in. Currently, your only real obstacle is the obstinate orca above, her air-headed heft rocking against your [if player is male]crotch. Her warm, wet tunnel rhythmically squeezes around your manhood,[else]face. Her pussy is smooth and slick, its heady, arousing flavor[end if] impeding your will to escape.";
		say "     You could try [bold type]S[roman type]truggling to weasel out from under the inflatable, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] her wanton affections, or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else if orcaintense is 2:
		say "     Unable or unwilling to escape, you continue to be milked for her pleasure. The inflatable bag beneath you is gaining in mass, the rising surface undulating as the orca's rolling hips keep you pinned. [if player is male]Her sleek cleft squeezes and tugs at your maleness, jealously massaging your shaft in an effort to make you cum again[else]The strong aroma of sex and sterile synthetics waft from her slippery cunt, making it increasingly difficult to muster any kind of focus[end if].";
		say "     In your present state, you can still try to [bold type]S[roman type]truggle to escape the overexcited orca. You could also [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] or attempt to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] her sultry ministrations.";
	else if orcaintense is 3:
		say "     Still reeling from your last climax, you're now only scarcely cognizant of the inflating bag around you, thoughts growing foggier by the moment. The orca rides your [if player is male]waist without relent, bouncing and bucking atop your still-twitching cock. Her slavering cunt is soaked with cum and juices, its smooth vinyl walls gripping you with dogged determination[else]face without relent, using you as little more than a toy for her wanton self-gratification. The overwhelming scent of arousal suffuses the increasingly enclosed space, further clouding your sex-addled mind[end if].";
		say "     Straining under her ample form, you imagine now would be a good time to [bold type]S[roman type]truggle and escape these dire circumstances. Otherwise, you could [if obliging is true][bold type]O[roman type]blige the sexy orca and enjoy the moment[else][bold type]A[roman type]bide the orca's whims[end if] or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] her wild lovemaking.";
	else if orcaintense is 4:
		say "     Shuddering, you can only moan [if player is male]against the orca's vinyl flesh as she milks you for all you're worth, your motions slicked with a slurry of mixed cum. Her clenching passage sends powerful ripples pleasure through your loins. You feel your mind begin to give as your cock stays perpetually erect within her folds, aching to fill her drenched chalice with another heavy load[else]into the orca's slavering pussy, hungrily lapping at her juices. It's becoming extremely difficult to muster any kind of will to resist, much less pull away from the delectable buffet of heady, musky femcum before you, its intoxicating flavor becoming your whole world[end if]. You dimly realize that the bag has almost fully sealed both of you in, but that fact feels almost inconsequential to you now, the constant barrage of sex eroding all reason.";
		say "     You can still try to [bold type]S[roman type]truggle to escape the orca's grasp, or you could [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide to[end if] her wishes and enjoy these myriad delights. Otherwise, you could simply try to [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] the increasingly dire situation.";
	else:
		say "     You are pinned beneath the orca, her great maw pressed to your lips in a long, enduring kiss that fills your lungs with a mind-altering gas. The intoxicating essence tastes like the sweetest ambrosia in your hyper-aroused state, synthetic and musky and arousing all at once. You can only buck weakly in response, completely enclosed from the rest of the world[if player is male] as you drive again and again into the sexy orca's slit. Every thrust pushes deep into her soaking wet channel, its smooth, hot bliss enveloping your achingly hard cock[end if].";
		say "     You could try in vain to [bold type]S[roman type]truggle, to [if boundrecover is true][bold type]R[roman type]ecover from this[else][bold type]E[roman type]ndure[end if]... but your altered mind wants to [if obliging is true][bold type]O[roman type]blige the orca[else]simply [bold type]A[roman type]bide[end if] instead, craving the sweet embrace of her smooth, slick body and the constant influx of arousing gas.";

to orcalust: [Passively increases the player's lust attribute. Higher bound segments increase the per-turn lust gain.]
	let obladj be 1;
	if obliging is true:
		now obladj is 2; [Value to multiply lust gain by if obliging.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide lust gain by if enduring.]
	if orcaintense is 1:
		increase lustatt by ((10 + (lustadjust * 2)) * obladj) / endureadj;
	else if orcaintense is 2:
		increase lustatt by ((12 + (lustadjust * 2)) * obladj) / endureadj;
	else if orcaintense is 3:
		increase lustatt by ((14 + (lustadjust * 3)) * obladj) / endureadj;
	else if orcaintense is 4:
		increase lustatt by ((16 + (lustadjust * 3)) * obladj) / endureadj;
	else:
		increase lustatt by ((20 + (lustadjust * 4)) * obladj) / endureadj;

to orcasanitypassive: [Passively decreases the player's sanity attribute. Higher bound segments increase the per-turn sanity loss.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	if orcaintense is 1:
		if (enduring is false and a random chance of 1 in 2 succeeds) or (enduring is true and a random chance of 1 in 4 succeeds):
			decrease humanity of player by 1;
	else if orcaintense is 2:
		if enduring is false or (enduring is true and a random chance of 1 in 2 succeeds):
			decrease humanity of player by 1;
	else if orcaintense is 3:
		decrease humanity of player by (2 + psycheadjust) / endureadj;
	else if orcaintense is 4:
		decrease humanity of player by (3 + psycheadjust) / endureadj;
	else:
		decrease humanity of player by (4 + psycheadjust) / endureadj;

to orcasanityorgasm: [Causes sanity to sharply plummet upon orgasm.]
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2; [Value to divide sanity loss by if enduring.]
	else:
		if struggleatt > 0, decrease struggleatt by 1;
		if orcaintense is 1:
			decrease humanity of player by (2 + psycheadjust) / endureadj;
		else if orcaintense is 2:
			decrease humanity of player by (3 + psycheadjust) / endureadj;
		else if orcaintense is 3:
			decrease humanity of player by (2 + psycheadjust * 2) / endureadj;
		else if orcaintense is 4:
			decrease humanity of player by (3 + psycheadjust * 2) / endureadj;
		else:
			decrease humanity of player by (4 + psycheadjust * 2) / endureadj;

to say orcastrugglebar: [Displays struggle bar. The amount of struggle turns necessary to escape is always equal to the bound segment.]
	say "[close bracket]";
	if orcaintense > 4:
		say "-"; [Struggle attempt condition not needed here, since this is the maximum amount required]
	if orcaintense > 3:
		say "[if struggleatt > 3]X[else]-[end if]";
	if orcaintense > 2:
		say "[if struggleatt > 2]X[else]-[end if]";
	say "[if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket]";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Inflatable Orca"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The playful cetacean bumps you every which way, making you stumble on the unsteady footing of the padded floor[or]The orca knocks you off your feet with a mighty swing of its tail[or]Trilling playfully, the orca rears up and rubs its synthetic body against your side, making you stumble[or]The large inflatable jumps at you and attempts to pin you down. You quickly weasel out from under it before it can do much else[or]The giant orca slams the ground with it tail, bouncing you up into the air before landing harmlessly on the padded floor again[or]The cetacean makes a point of rubbing against you suggestively. You stumble in your efforts to push it away[at random].";
	now defeated entry is "[beattheinflatableorca]"; [ Text when monster loses. ]
	now victory entry is "[losetoinflatableorca]"; [ Text when monster wins. ]
	now desc entry is "     You find yourself at odds with the large, inflatable orca. The two-tone cetacean regards you as little more than a toy for its amusement, trilling playfully as it bounces around with seemingly boundless energy."; [ Description of the creature when you encounter it. ]
	now face entry is "impossible"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "impossible"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "impossible"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "impossible"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "it changes in an impossible manner"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it changes in an impossible manner"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "it changes in an impossible manner"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it changes in an impossible manner"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it changes in an impossible manner"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 8;
	now int entry is 6;
	now cha entry is 14;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 120; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "impossible"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "impossible"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Endings

when play ends: [Bad end to display after complete sanity loss or encasement.]
	if bodyname of player is "OrcaSexSlave":
		say "     You spend the rest of your life as the inflatable orca's sex slave, dutifully [if player is male]breeding her to make more inflatable servants for the castle[else]servicing her slippery cunt[end if]. Your pod is periodically filled with a heady, arousing gas that only fuels your endless lusts, each sticky climax driving you deeper into your lustful haze until you're nothing more than an air-headed parody of your former self. It's a simple existence, but your feral mind relishes every moment with your loving, demanding mistress.";
		say "     The castle fills the void on its surface by dispensing another inflatable orca and bondage bag in the great hall. Trilling softly, the new orca is just as eager as the last to turn any unsuspecting visitor into another sex-hungry slave for the castle. You'd relish the company if your mind were not too far gone to appreciate it.";

Inflatable Orca ends here.
