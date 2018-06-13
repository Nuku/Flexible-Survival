Version 1 of Phantom Dolphin by Blue Bishop begins here.
[Version 1 -- Commissioned]
"When in Rome..."

Discarded Dolphin is a person. Discarded Dolphin is in Bouncy Castle.
the description of Discarded Dolphin is "[flotlook]".
the fuckscene of Discarded Dolphin is "[flotfuck]".
instead of sniffing Discarded Dolphin:
	say "     The object smells faintly of fresh synthetics and saltwater.";
instead of conversing the Discarded Dolphin:
	say "     [one of]The object is inanimate[or]You imagine that won't go anywhere[or]As much as you can imagine such a thing being possible given the circumstances, this doesn't appear to be the case[or]Flipper's not talking[as decreasingly likely outcomes].";
to say flotlook:
	if flotintense is -1:
		say "     Tethered to the end of the rope ladder leading into the entrance, an inflatable dolphin toy floats about, the unattended thing moving gently along with the waves.";
		say "     This thing's particularly strange... In that it appears to be completely inanimate. It also looks different from the other bottlenose toys you've seen, having more 'realistic' gray color and otherwise unadorned in the usual handles or similar fare, though it's certainly still as large. For that reason, the rope has to be tied tightly around the base of the tail.";
		say "     This odd thing raises a lot of questions. Why is it just floating there? Shouldn't it be the same as all the other infected here? Without having to touch it, you can see that the thing clearly has a hole for 'use', so it's clearly the product of this blight's influence. If you're so daring as to 'play' with it, you imagine the end result may be equally unpredictable...";
	else:
		flotdecay;
		say "     Tethered to the end of the rope ladder leading into the entrance, an inflatable dolphin toy floats about, the unattended thing moving gently along with the waves.";
		say "     This thing's particularly strange... In that it appears to be completely inanimate. It also looks different from the other bottlenose toys you've seen, having more 'realistic' gray color and otherwise unadorned in the usual handles or similar fare. For that reason, the rope has to be tied tightly around the base of the tail.";
		say "     This odd thing raises a lot of questions. Why is it just floating there? Shouldn't it be the same as all the other infected here? Without having to touch it, you can see that the thing clearly has a hole for 'use', so it's clearly the product of this blight's influence. If you're so daring as to 'play' with it, you imagine the end result may be equally unpredictable...";
		say "     [italic type][if flotintense < 2]The thing looks completely inanimate. You're fairly certain there'll be little to no consequence in using it right now[else if flotintense < 4]The thing appears to be mostly in a mundane state right now, but it seems to subtly become excited as you approach. You could probably get away with using it[else if flotintense < 6]The thing seems tinged with a streak of wanton menace. You could probably get away with using it, but not for long[else if flotintense < 8]You feel ill at ease near the thing, as though you're being drawn to the tainted object. You don't think it'd be particularly wise to use it right now[else]The thing seems to undulate from the corners of your eyes, as though thrumming with an otherworldly need. You feel overwhelmingly drawn to the thing, but you'd have to be insane to use it now[end if]...[roman type][line break]";
		if flotmarked is true:
			say "     [italic type]You feel as though you've been marked by this object.[roman type]";
	LineBreak;

flotmarked is a truth state that varies.
flotintense is a number that varies. flotintense is usually -1.
[
Variant for intensity:
0-1: 1 struggle, almost no sanity loss.
2-3: 2 struggle, minor sanity loss.
4-5: 3 struggle, moderate sanity loss.
6-7: 4 struggle, major sanity loss.
8+: 5 struggle, massive sanity loss.
]


to say flotfuck:
	if player is neuter:
		say "     You imagine that you wouldn't get a whole lot out of trying to have sex with the inanimate object.";
	else:
		flotdecay;
		say "     Are you sure?[if flotintense is -1] Who knows what will happen![else if flotintense > 4] You imagine it won't end well, by this point![end if]";
		if player consents:
			if flotintense is -1:
				say "     As you descend back into the waters and swim close to the toy, you sheepishly grab the slippery thing. Further reinforcing the notion that this thing is inanimate it doesn't respond to your touch, allowing you to close in on it and get a good look at the thing.";
				if player is male:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. Forcing a digit past the synthetic folds, it easily stretches to accommodate the intrusion, though it doesn't seem to react to this particularly lewd act. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, no doubt made to invite your curious fondling.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Awkwardly aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance, you carefully sink it past its lips, the toy [if cock length of player > 11]seeming to easily take your cock in spite of its impressive size; it takes a bit of work, but the pliable material stretches to handle its substantive girth[else]taking your cock without any difficulty, easily burying the organ within its pliable depths[end if].";
				else:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, no doubt made to invite your curious fondling. There's not a whole lot to grind against here, but that isn't about to stop you now.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's underside, the lewd sounds of your motion compelling you to persist.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to rock against the motion of the waves, the thing seems to quickly heat up against your touch, water and sweat-slicked body clinging to the slippery toy[if scalevalue of player > 3]. You're slightly concerned that the thing might completely sink under your impressive size, but it seems to slowly grow in size to accommodate its larger rider[end if]. By this point it should be apparent that the object is indeed, and unsurprisingly, possessed by some otherworldly influence, your [bodytype of player] body beginning to stick to its surface, as though it's trying to cling against you in return. Its grip on you seems fairly weak, however, meaning you could probably get away with using it, if only for a little while...";
				now flotintense is 0;
			else if flotintense < 2:
				say "     You descend back into the waters and swim close to the toy once more, cautiously grabbing the slippery thing. It looks like it's calmed down completely after you last adventure as it doesn't respond to your touch, allowing you to close in on it and get a good hold of the thing.";
				if player is male:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. Forcing a digit past the synthetic folds, it easily stretches to accommodate the intrusion, though it doesn't seem to react to this particularly lewd act. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, no doubt made to invite your curious fondling, and otherwise seems completely devoid of your sexual fluids.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Awkwardly aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance, you carefully sink it past its lips, the toy [if cock length of player > 11]seeming to easily take your cock in spite of its impressive size; it takes a bit of work, but the pliable material stretches to handle its substantive girth[else]taking your cock without any difficulty, easily burying the organ within its pliable depths[end if].";
				else:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, no doubt made to invite your curious fondling. It would seem the saltwater has washed away any mess that might've been on here from before.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's underside, the lewd sounds of your motion compelling you to persist.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to rock against the motion of the waves, the thing quickly heats up against your touch, water and sweat-slicked body clinging to the slippery toy[if scalevalue of player > 3]. You always seem concerned that the thing might completely sink under your impressive size, but it seems to slowly grow in size to accommodate its larger rider[end if]. Its otherworldly life slowly reigniting itself from your influence, your [bodytype of player] body begins to stick to its surface, weakly trying to cling against you in return, but otherwise having little power over its rider, for now...";
			else if flotintense < 4:
				say "     You descend back into the waters and swim close to the toy once more, the slippery thing subtly floating within your reach. It quivers gently against your touch, as if thrilled by the sensation of you merely holding it.";
				if player is male:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. Seeing as how they still seem to be gaping from your last adventure, it takes no effort to force a digit past the synthetic folds, subtly vibrating against this particularly lewd act. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, though it seems to be trying to cling to the intrusion, and still laced with your sexual fluids.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Awkwardly aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance, you carefully sink it past its lips, the toy [if cock length of player > 11]seeming to easily take your cock in spite of its impressive size; it takes a bit of work, but the pliable material stretches to handle its substantive girth[else]taking your cock without any difficulty, easily burying the organ within its pliable depths[end if]. Before you really begin, the inflatable trembles under your weight, engulfing your cock with a latex-like substance[if player is female and cocks of player > 2], as well as your cunt[sfn] and other rods[else if player is female and cocks of player > 1], as well as your cunt[sfn] and other rod[else if cocks of player > 2], as well as your other rods[else if cocks of player is 2], as well as your other rod[end if].";
				else:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, no doubt made to invite your curious fondling. Trembling under your touch, the object seems to be trying to cling to your digits, until you pull yourself free.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's underside, the lewd sounds of your motion compelling you to persist. Almost immediately, you feel something wet flood your crotch, engulfing your [cunt size desc of player] cunt[sfn], and caressing you as you writhe.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to rock against the motion of the waves, the thing quickly heats up against your touch, water and sweat-slicked body clinging to the strange toy[if scalevalue of player > 3]. You always seem concerned that the thing might completely sink under your impressive size, but it seems to slowly grow in size to accommodate its larger rider[end if]. Its otherworldly life slowly reigniting itself from your influence, your [bodytype of player] body begins to stick to its surface, soon making it difficult for your [bodytype of player] body to move without its aid...";
			else if flotintense < 6:
				say "     You descend back into the waters and swim close to the toy once more, the slippery thing subtly floating within your reach. It quivers gently against your touch, as if thrilled by the sensation of you merely holding it.";
				if player is male:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. Seeing as how they still seem to be gaping from your last adventure, it takes no effort to force a digit past the synthetic folds, and it seems like it's trying to pull you in deeper... The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, though it seems to be trying to cling against you, and still laced with your sexual fluids.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Awkwardly aiming[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] for the entrance, you carefully sink it past its lips, the toy [if cock length of player > 11]seeming to easily take your cock in spite of its impressive size; it takes a bit of work, but the pliable material stretches to handle its substantive girth[else]taking your cock without any difficulty, easily burying the organ within its pliable depths[end if]";
					if player is female:
						say ". Feeling something wet flood your cunt[sfn][if anallevel > 1] and ass[end if], [if cunts of player > 1 or anallevel > 1]they quickly harden into thick, tapered appendages to pound you with[else]it quickly hardens into a thick, tapered appendage to pound you with[end if]";
					else if anallevel > 1:
						say ". Feeling something wet flood your ass, it quickly hardens into a thick, tapered appendage to pound you with";
					say ".";
				else:
					say "     Its white undercarriage is completely smooth save for the subtle cleft of the toy's lewd hole. The saltwater-slicked vinyl is exceedingly soft and yielding to your touch, no doubt made to invite your curious fondling. Trembling under your touch, the object seems to be trying to cling to you, until you pull yourself free.";
					say "     Once you're satisfied, you fumble about to finally climb on top of the dolphin, [if scalevalue of player > 3]a somewhat embarrassing sight, given how much larger you are than it, though it seems to manage your weight[else]easily managing your weight[end if]. Grinding your exposed, eager cunt[sfn] against the smooth, pliable vinyl of the toy's underside, the lewd sounds of your motion compelling you to persist. Almost immediately you feel something wet flood your crotch, engulfing your [cunt size desc of player] cunt[sfn] and [if cunts of player > 1]their[else]your[end if] depths, quickly hardening into thick, tapered appendages to pound you with.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight as you start to rock against the motion of the waves, the thing quickly heats up against your touch, water and sweat-slicked body clinging to the strange toy[if scalevalue of player > 3] as it inflates to accommodate your impressive size[end if]. Its otherworldly life slowly reigniting itself from your influence, your [bodytype of player] body begins to stick to its surface, soon making it difficult for your [bodytype of player] body to move without its aid...";
			else if flotintense < 8:
				say "     As you descend back into the waters and swim close to the toy, the strange thing quivers and gravitates towards you. It responds intensely to your mere touch, vinyl liquefying around your prodding digits and slowly pulling you inside it. You instinctively try to push it off, but that only gets the other limb engulfed.";
				say "     Forcibly, you're pulled on top of the dolphin, wobbling violently against the waves as it balances you on it";
				if player is male:
					say ". Eagerly, it encases[if cocks of player > 1] one of[end if] your [cock size desc of player], half-erect dick[smn] where its hole would be[if cocks of player > 2] before taking the rest along with it[else if cocks of player is 2] before taking the other along with it[end if].";
					say "     The toy continues to wobble against the waters, easily having consumed your[if cock length of player > 11] impressive[end if] meat as a latex-like substance quickly engulfs[if cockname of player is not listed in infections of internallist] your [ball size][else]the rest of your crotch[end if] as well";
					if anallevel > 1:
						say ". Soon, you feel the tainted material flood your [if player is female]cunt[sfn] and ass, pounding your holes with a writhing series of tapered, worming tendrils[else]your ass, pounding your hole with a writhing series of tapered, worming tendrils[end if]";
					else if player is female:
						say ". Soon, you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a writhing series of tapered, worming tendrils";
				else:
					say ", forcing you to grind against its smooth surface as your crotch is quickly engulfed in the latex-like substance";
					if anallevel > 1:
						say ". Soon, you feel the tainted material flood your cunt[sfn] and ass, pounding your holes with a writhing series of tapered, worming tendrils";
					else:
						say ". Soon, you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a writhing series of tapered, worming tendrils";
				say ". Finally, a tendril moves to force its way past your lips, plunging deep down your gullet and forcing you to breathe in an intoxicating, synthetic gas.";
				say "     Inflatable object loudly creaking under your[if scalevalue of player > 3] substantive[end if] weight, you're barely given time to acclimate before the thing rails you relentlessly, rocking you intensely against the waters. Sweat-slicked, [bodydesc of player] form writhing against the tightly binding toy, it [if scalevalue of player > 3]expands to fully accommodate your impressive size with each motion, squeezing[else]squeezes[end if] firmly against you as you're forced to endure its twisted need. Having reached a point of utterly deranged purpose, it shows absolutely no restraint in trying to fiercely abuse the bliss out of you...";
			else:
				say "     Some part of you questions the sanity of going through with this, by this point, but you go ahead with it regardless.";
				say "     Just as you descend into the waters the dolphin seems to tear itself apart and lurch its open seam straight at you, wrapping itself around your [bodytype of player] form and near-instantly enveloping you entirely. [if scalevalue of player > 3]Tightly wrapped around you as it gradually expands to accommodate your impressive size[else]Wrapped around you[end if], ";
				if player is male:
					say "your partially-aroused, [cock size desc of player] cock[if cocks of player > 1]s are[else] is[end if] firmly plunged within its vinyl depths";
					if anallevel > 1:
						say ". Moreover, you feel the tainted material flood your [if player is female]cunt[sfn] and ass, pounding your holes with a writhing series of tapered, worming tendrils[else]your ass, pounding your hole with a writhing series of tapered, worming tendrils[end if]";
					else if player is female:
						say ". Moreover, you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a writhing series of tapered, worming tendrils";
				else:
					if anallevel > 1:
						say "you feel the tainted material flood your [if player is female]cunt[sfn] and ass, pounding your holes with a writhing series of tapered, worming tendrils[else]your ass, pounding your hole with a writhing series of tapered, worming tendrils[end if]";
					else:
						say "you feel the tainted material flood your cunt[sfn], pounding your hole[sfn] with a writhing series of tapered, worming tendrils";
				say ". Finally, a tendril moves to force its way past your lips, plunging deep down your gullet and forcing you to breathe in an intoxicating, synthetic gas.";
				say "     Completely encased in the slippery dolphin, there's no indication of your occupancy, your groans and lustful writhing masked by the motion and the sound of the waves. This wasn't the wisest thing to do, and you imagine it'll take a lot of work to escape this predicament, if it's even possible by this point...";
			WaitLineBreak;
			flotbind;
			now lastfuck of Discarded Dolphin is turns;

to flotdecay:
	if lastfuck of Discarded Dolphin - turns >= 4 and flotintense > 0:
		decrease flotintense by ((lastfuck of Discarded Dolphin - turns) / 4);
		if flotintense < 0, now flotintense is 0;


to flotbind:
	psycheeval;
	libidoeval;
	now lustatt is libido of player;
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		checkboundrecover;
		if lustatt > 99:
			flotbindorgasm;
			if libido of player > 25, decrease libido of player by (libido of player / 7) + 1;
			if flotintense < 9, increase flotintense by 1;
			now lustatt is libido of player;
			flotsanityorgasm;
			flotprogress;
		now enduring is false;
		checkflotsegment;
		say "[flotbinddesc]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link]Oblige[as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [flotstrugglebar][line break][run paragraph on]";
		if humanity of player < 1:
			if flotintense < 3:
				say "     Though it's pretty much inanimate, you're reached such a point of becoming deranged that you simply cannot control yourself any longer, riding the inflatable dolphin until it eventually changes. Drawing you inside itself, you're perpetually milked within the vinyl prison.";
			else if flotintense < 8:
				say "     Losing yourself to your overwhelming need on the inflatable dolphin, you're unable to fight back as it eventually draws you inside itself, perpetually milked within the vinyl prison.";
			else:
				say "     Losing yourself to your overwhelming need, trapped within this vinyl prison, the inflatable dolphin shows no relent in perpetually milking you.";
			say "     Eventually, you completely lose track of time. From your limited vision through the toy's eyes, you watch on as it finally wrenches itself free of the castle, doomed to constant abuse by this tainted suit as it carries you into the dark depths...";
			WaitLineBreak;
			now bodyname of player is "Flotted";
			now humanity of player is 0;
			end the story saying "You are milked perpetually by the toy.";
			now trixieexit is 1;
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < boundsegment:
					say "You struggle to ";
					if flotintense < 4:
						say "pull yourself free of the toy, [one of]creaking softly against your motions[or]sticky thing trying its best to keep you in place[or]rocking against the waves[at random].";
					else if flotintense < 6:
						say "pry yourself free of the toy's powerful hold, [one of]creaking and groaning against your protests[or]engulfing vinyl trying its best to pull you back within its hold[or]squeaking against your motions as you fight it[or]rocking violently against the waves[at random].";
					else:
						say "escape this prison of a toy, [one of]creaking and groaning around you[or]enveloping vinyl trying its best to keep you within its hold[or]squeaking against your motions as you fight it[or]thrashing against the waves as it clings to you[at random].";
					LineBreak;
					flotsanitypassive;
					flotlust;
				else:
					say "     [if flotintense < 3]Easily[else if flotintense < 5]With relative ease[else if flotintense < 8]Eventually[else]Finally[end if], you manage to wrench yourself free of the possessed toy and dive into the waters, [if flotintense < 3]though it quickly regresses to a state of complete inanimacy[else if flotintense < 5]gradually cooling down and becoming inanimate once more[else if flotintense < 8]quivering for a moment as it slowly begins to fill the void you left[else if flotintense < 10]the mess of a thing trembling in distress over its now-missing rider[else]the thing flailing in your general direction in hopes to be one with you once more, forcing you to swim even further[end if].";
					say "     You climb back onto the castle and clean yourself off. [if flotintense > 4]It's likely best that you leave the vinyl object alone until it 'cools down' a bit[else]The vinyl object remains relatively harmless, for now at least[end if]...";
					LineBreak;
					cleanboundmemory;
					WaitLineBreak;
					now trixieexit is 1;
				WaitLineBreak;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if 1 is 1: [if obliging is true]
					say "You continue to [if flotintense < 5]ride the vinyl dolphin[else]oblige the vinyl dolphin's influence[end if], ";
					if flotintense < 7:
						say "[one of]loudly creaking against your weight[or]squeaking against your body as you rub against it[or]motion slicked by sweat and saltwater[or]rocking gently against the waves[at random].";
					else:
						say "[one of]loudly creaking as it continues to milk you[or]squeaking as it uses your own sexual fluids to lubricate its motion[or]body trembling under its now-powerful influence[or]its motions emphasized by the waves[at random].";
					LineBreak;
					now obliging is true;
					flotsanitypassive;
					flotlust;
					now obliging is false;
				[else:
					say "     ABIDE NYI.";
					LineBreak;
					flotsanitypassive;
					increase lustatt by 35 + (lustadjust * 5);] [Not needed, keeping just in case]
				WaitLineBreak;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundrecover is true:
					if flotintense < 2:
						increase humanity of player by 1;
					else if flotintense < 4:
						increase humanity of player by 2;
					else:
						increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity[if flotintense > 4] within these confines[end if], recovering a small portion of your lost humanity.";
					LineBreak;
					flotlust;
					now boundrecover is false;
				else:
					say "     You choose to endure the toy's influence, ";
					if flotintense < 4:
						say "[one of]with what little power it has over you[or]creaking softly under your weight[or]bobbing subtly against the waves[at random].";
					else if flotintense < 6:
						say "[one of]softly creaking as it tries to work against your resistance[or]with what moderate power it has over you[or]squeaking under your weight as it tries nonetheless[or]bobbing against the waves[at random].";
					else:
						say "[one of]barely able to resist the overwhelming power it has over you[or]creaking against you as it makes every effort in spite of you[or]seemingly undaunted by your efforts[or]writhing against the waves with you[at random].";
					LineBreak;
					flotlust;
					flotsanitypassive;
				WaitLineBreak;
				next;

to checkflotsegment:
	if flotintense < 2:
		now boundsegment is 1;
	else if flotintense < 4:
		now boundsegment is 2;
	else if flotintense < 6:
		now boundsegment is 3;
	else if flotintense < 8:
		now boundsegment is 4;
	else:
		now boundsegment is 5;

to flotprogress: [passable]
	if flotintense is 2:
		say "     You begin to find it somewhat difficult to pull your limbs free of the inflatable dolphin, sticking to its surface rather firmly. Moreover, you feel a warm, latex-like substance ";
		if player is male:
			say "encase your dick[smn], [if cockname of player is not listed in infections of internallist]your [ball size], and coat[else]coating[end if] [if player is female]your cunt[sfn] and ass[else]your ass[end if][if player is female or anallevel > 1]. It doesn't seem compelled to penetrate you just yet, though the undulating material certainly drives your need further[end if].";
		else:
			say "coat your cunt[sfn] and ass. It doesn't seem compelled to penetrate you just yet, though the undulating material certainly drives your need further.";
		say "     By the looks of things, this peculiar toy is only just getting started. Should you persist, things are clearly going to get a lot worse...";
	else if flotintense is 4:
		say "     You're forced to realize that your limbs have partially submerged into the inflatable dolphin! You're now completely at the whim of the vinyl construct's influence, of which it seems eager now to exploit";
		if player is male:
			say ". The undulating material pumps your [cock size desc of player] dick[smn] with such force that you rock against the toy with each motion, slicked by your own cum and exaggerated by the waves. [if player is female and anallevel > 1]Moreover, you feel something large and hard force its way into your cunt[sfn] and ass, the shape shifting around until it appear satisfied with a tapered, worming tendril to rail you with.[else if player is female]Moreover, you feel something large and hard force its way into your cunt[sfn], the shape shifting around until it appear satisfied with a tapered, worming tendril to rail you with.[else if anallevel > 1]Moreover, you feel something large and hard force its way into your ass, the shape shifting around until it appear satisfied with a tapered, worming tendril to rail you with.[end if]";
		else:
			say ". The undulating material grinds against your [cunt size desc of player] cunt[sfn] with such force that you rock against the toy with each motion, slicked by your own honey and exaggerated by the waves. [if anallevel > 1]Moreover, you feel something large and hard force its way into your holes, the shape shifting around until it appear satisfied with a tapered, worming tendrils to rail you with[else]Moreover, you feel something large and hard force its way into your hole[sfn], the shape shifting around until it appear satisfied with a tapered, worming tendril to rail you with[end if].";
		say "     It's becoming extremely difficult to keep a clear head and in control of the situation. If there was any wiser time to get off this crazy thing, it'd be right about now...";
		if flotmarked is false:
			say "     ...[bold type]Moreover[italic type], you get the impression that you've been touched in some strange, intangible way -- an extraordinary feat given how distracted your senses are now -- though not in any overtly malevolent sense. You imagine you've gained some lingering benefit from this experience, though you doubt there'll be much more to gain beyond this[roman type].";
			now flotmarked is true;
	else if flotintense is 6:
		say "     Your limbs sink even deeper into the inflatable dolphin's body, making it increasingly difficult to figure out where you begin and the vinyl construct ends! Completely at its mercy as you're perpetually milked, it's difficult to stay focused, which is why the thing manages to surprise you with another tendril when your guard is lowered, forcing its way past your lips and down your throat.";
		say "     Substantial tentacle bulging from around your gaping maw, it's flooded to its absolute limit. Your ability to breathe is quickly returned to you, but it's clearly from within the toy itself, your taste and smell a swill of sterile synthetics, seawater, and your sexual fluids. The whole aroma has an effect on you, making it even more difficult to stay focused.";
		say "     Your better judgment is blaring at you from the back of your head to pull out while you still can. [one of]There's no telling how far this goes[or]You're running out of time[stopping]!";
	else if flotintense is 8:
		say "     With one final pull, you're drawn entirely into the body of the inflatable dolphin, which seems to roll onto its belly now that your [bodytype of player] body anchors it. Your new prison adjusts to fit you as tightly as possible without distorting its frame. Completely unable to move, your vision is limited to the translucent eyes of the vinyl construct. All you can hear is your pained panting and the wet sound of your continued, unrelenting abuse.";
		say "     Outwardly, the dolphin appears to have regressed to its inanimate state, though betrayed by your loud, muffled moans[if player is male], its occasional twitching against the waves, and your throbbing, material-coated cock[smn] which now hang[smv] exposed from its undercarriage[else] and its occasional twitching against the waves[end if]. It's difficult to maintain even the slightest mental clarity at this point, the prospect of being milked by this toy eternally very close to a reality!";

to say flotbinddesc: [passable]
	if flotintense < 2:
		say "     Riding the inflatable dolphin, [one of]it creaks softly against your touch[or]it squeaks against your motion[or]it softly buckles under the weight of your motions[or]its motions are exaggerated by the waves[at random]. The thing appears to be completely inert right now, having only the slightest power. You imagine your only active option is to [bold type]S[roman type]truggle and climb off it, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these circumstances, though there is little need to.";
	else if flotintense < 4:
		say "     Riding the inflatable dolphin, [one of]it creaks softly against your touch[or]it squeaks against your motion[or]it softly buckles under the weight of your motions[or]its motions are exaggerated by the waves[at random], having engulfed your [if player is herm]cock[smn] and cunt[sfn][else if player is male and anallevel > 1]cock[smn] and ass[else if player is male]cock[smn][else if player is female and anallevel > 1]cunt[sfn] and ass[else]cunt[sfn][end if] within its tainted, vinyl grasp. Its influence is growing to a point of some concern, though it's still relatively weak. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else if flotintense < 6:
		say "     Riding the inflatable dolphin, [one of]it creaks softly against your touch[or]it squeaks against your motion[or]it softly buckles under the weight of your motions[or]its motions are exaggerated by the waves[at random], ";
		if player is male:
			say "having engulfed your cock[smn] [if player is female and anallevel > 1]while pounding your cunt[sfn] and ass with large and writhing tendrils[else if player is female]while pounding your cunt[sfn] with large and writhing tendrils[else if anallevel > 1]while pounding your ass with large and writhing tendrils[else]within its tainted, vinyl grasp[end if]";
		else:
			say "pounding your cunt[sfn][if anallevel > 1] and ass[end if] with large and writhing tendrils";
		say ". Limbs stuck firmly against the tainted object's surface, it's clear that the thing is reaching dangerous levels of power. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else if flotintense < 8:
		say "     [one of]Now forced[or]Forced[stopping] to ride the inflatable dolphin, [one of]it creaks loudly against you[or]it squeaks against your hard motion[or]it buckles under the weight of your constant motions[or]its motions are intensely exaggerated by the waves[at random], ";
		if player is male:
			say "having engulfed your cock[smn] [if player is female and anallevel > 1]while relentlessly pounding your cunt[sfn] and ass with large and writhing tendrils[else if player is female]while relentlessly pounding your cunt[sfn] with large and writhing tendrils[else if anallevel > 1]while relentlessly pounding your ass with large and writhing tendrils[else]within its powerful, vinyl grasp[end if]";
		else:
			say "relentlessly pounding your cunt[sfn][if anallevel > 1] and ass[end if] with large and writhing tendrils";
		say ". Limbs stuck firmly against the tainted object's surface as you're forced to fellate a large and intoxicating tendril, its power has reached dizzying proportions. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
	else:
		say "     Trapped within the confines of the inflatable dolphin, [one of]it creaks loudly all around you[or]it squeaks against your hard motion[or]its surface yields to your touch, but isn't inclined to let your escape[or]it seems to exploit the waves to exaggerate its motions against you[at random], ";
		if player is male:
			say "having engulfed your cock[smn] [if player is female and anallevel > 1]while relentlessly pounding your cunt[sfn] and ass with large and writhing tendrils[else if player is female]while relentlessly pounding your cunt[sfn] with large and writhing tendrils[else if anallevel > 1]while relentlessly pounding your ass with large and writhing tendrils[else]within its overwhelming, vinyl grasp[end if]";
		else:
			say "relentlessly pounding your cunt[sfn][if anallevel > 1] and ass[end if] with large and writhing tendrils";
		say ". Barely able to see anything through the eyes of the thing as you're forced to fellate a large and intoxicating tendril, it's clearly reached the apex of its power! You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [bold type]O[roman type]blige, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";

to flotbindorgasm: [passable]
	if flotintense < 2:
		say "     Finally overtaken by bliss, your ";
		if player is male:
			say "cock pumps your [cum load size of player] load into the dolphin[if cocks of player > 2], its brothers staining its underside[else if cocks of player is 2], its brother staining its underside[end if]. [if cock width of player > 23]Briefly bulging to contain your impressive release, it seems to recede and acclimate to the torrent[else]Eagerly, it seems to consume your release, motion further slicked by it[end if]";
		else:
			say "cunt[sfn] ache[sfv] against the toy, staining its underside with your juices";
		say ". Trembling subtly in the wake of this, it seems to feed off your [if player is male]cum[else]ecstasy[end if], [if flotintense < 2]gradually changing[else]close to changing[end if] while you continue riding it.";
	else if flotintense < 4:
		say "     Finally overtaken by bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into the dolphin, engulfing vinyl milking it for as long as it can. [if cock width of player > 23]Briefly bulging to contain your impressive release, it seems to recede and acclimate to the torrent[else]Eagerly, it seems to consume your release, motion further slicked by it[end if]";
		else:
			say "cunt[sfn] ache[sfv] against the toy, engulfing vinyl prolonging your bliss for as long as it can";
		say ". Trembling further in the wake of this, it's further empowered by your [if player is male]cum[else]ecstasy[end if], [if flotintense < 4]gradually changing[else]close to changing[end if] as you're driven to continue riding it.";
	else if flotintense < 6:
		say "     Finally overtaken by bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into the dolphin, engulfing vinyl milking it for as long as it can[if player is female and anallevel > 1] while pounding your holes[else if player is female] while pounding your hole[sfn][else if anallevel > 1] while pounding your hole[end if]. [if cock width of player > 23]Briefly bulging to contain your impressive release, it seems to revel in the torrential flood[else]Eagerly, it seems to consume your release, motion further slicked by it[end if]";
		else:
			say "cunt[sfn] ache[sfv] against the toy, pounding vinyl milking you for as long as it can";
		say ". Groaning under you in the wake of this, it's further empowered by your [if player is male]cum[else]ecstasy[end if], [if flotintense < 7]gradually changing[else]close to changing[end if] as you're forced to continue riding it...";
	else if flotintense < 8:
		say "     Overtaken by bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into the dolphin, engulfing vinyl milking it for as long as it can[if player is female and anallevel > 1] while pounding your holes[else if player is female] while pounding your hole[sfn][else if anallevel > 1] while pounding your hole[end if]";
			if cock width of player > 23:
				say ". Very quickly, you feel your hot release flood your maw through the rubbery tube, pumping you full with what excess its ill-equipped to contain itself";
			else:
				say ". Starting to develop an excess of your release, you feel the hot fluid flood your maw through the rubbery tube, pumping you with what it can no longer contain";
		else:
			say "cunt[sfn] ache[sfv] against the dolphin, pounding vinyl milking you for as long as it can. It seems compelled to make you taste your own honey, flooding your senses through the rubbery tube";
		say ". Visibly trembling under you, it's even further empowered by your [if player is male]cum[else]ecstasy[end if], [if flotintense < 9]gradually changing[else]close to changing[end if] as you're forced to continue riding it...";
	else:
		say "     Sent crashing into bliss, your ";
		if player is male:
			say "cock[smn] pump[smv] your [cum load size of player] load into your dolphin prison, vinyl material milking it for as long as it can[if player is female and anallevel > 1] while pounding your holes[else if player is female] while pounding your hole[sfn][else if anallevel > 1] while pounding your hole[end if]";
			if cock width of player > 23:
				say ". Body awash in your hot release, you feel it very quickly flood your maw through the rubbery tube, pumping its occupant with the excess";
			else:
				say ". Warmth of your hot release awash against you, you feel it gradually fill your maw through the rubbery tube, pumping its occupant with the slight excess";
		else:
			say "cunt[sfn] ache[sfv] against the dolphin, pounding vinyl milking you for as long as it can. Warmth of your hot honey awash against you, it seems compelled to make you taste your own juices, flooding your senses through the rubbery tube";
		say ". Barely seeming to react to your ecstasy, it's clear the thing has reached the apex of its purpose, seemingly more than happy to continue abusing its encased prisoner.";

to flotlust:
	let obladj be 1;
	if obliging is true:
		now obladj is 2;
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2;
	if flotintense > 7:
		increase lustatt by ((35 + (lustadjust * 6)) * obladj) / endureadj;
	else if flotintense > 5:
		increase lustatt by ((32 + (lustadjust * 5)) * obladj) / endureadj;
	else if flotintense > 3:
		increase lustatt by ((30 + (lustadjust * 4)) * obladj) / endureadj;
	else if flotintense > 1:
		increase lustatt by ((27 + (lustadjust * 3)) * obladj) / endureadj;
	else:
		increase lustatt by ((25 + (lustadjust * 2)) * obladj) / endureadj;

to flotsanitypassive:
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2;
	if flotintense > 7:
		decrease humanity of player by (6 + (psycheadjust * 2)) / endureadj;
	else if flotintense > 5:
		decrease humanity of player by (4 + psycheadjust) / endureadj;
	else if flotintense > 3:
		decrease humanity of player by (3 + psycheadjust) / endureadj;
	else if flotintense > 1:
		let tempnum be (2 + psycheadjust);
		if tempnum > 1 and enduring is true:
			decrease tempnum by 1;
		decrease humanity of player by tempnum;
	else:
		if (enduring is false and a random chance of 1 in 2 succeeds) or (enduring is true and a random chance of 1 in 4 succeeds):
			decrease humanity of player by 1;

to flotsanityorgasm:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Bottlenose Toy":
			now monster is y;
			break;
	let endureadj be 1;
	if enduring is true:
		now endureadj is 2;
	else:
		if struggleatt > 0, decrease struggleatt by 1;
	if flotintense > 7:
		infect;
		decrease humanity of player by (15 + (psycheadjust * 5)) / endureadj;
	else if flotintense > 5:
		decrease humanity of player by (9 + psycheadjust * 3) / endureadj;
		if a random chance of 2 in 3 succeeds:
			infect;
	else if flotintense > 3:
		if a random chance of 1 in 3 succeeds:
			infect;
		decrease humanity of player by (7 + psycheadjust * 2) / endureadj;
	else if flotintense > 1:
		decrease humanity of player by (5 + psycheadjust) / endureadj;
	else:
		decrease humanity of player by (3 + psycheadjust) / endureadj;

to say flotstrugglebar:
	say "[close bracket]";
	if flotintense > 7:
		say "-";
	if flotintense > 5:
		say "[if struggleatt > 3]X[else]-[end if]";
	if flotintense > 3:
		say "[if struggleatt > 2]X[else]-[end if]";
	if flotintense > 1:
		say "[if struggleatt > 1]X[else]-[end if]";
	say "[if struggleatt > 0]X[else]-[end if][bracket]";

when play ends:
	if bodyname of player is "Flotted":
		say "     Cool ocean water the only balm against the intense heat of your perpetual enslavement, you're barely able to discern what the dolphin is actually doing, seemingly content to swim around playfully, meeting various creatures and peoples -- all of whom appear wholly unaware of your ultimate fate, even as you moan out loudly with each thrust of the vinyl toy's tendrils.";
		say "     On occasion, the creature even seems inclined to have fun with some of those it encounters, often [if player is puremale and anallevel < 3]used to ride[else]made to be ridden by[end if] them. You're unsure if inflatable toy particularly enjoys this, or if it likes to surprise you from time to time.";
		say "     No doubt content to milk you until the end of days, your memories blur into a haze of constant orgasms. Writhing against your tight, slippery prison with each motion against the waters, it's eventually all you can think of...";


Phantom Dolphin ends here.
