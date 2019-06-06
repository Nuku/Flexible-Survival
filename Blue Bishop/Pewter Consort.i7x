Version 1 of Pewter Consort by Blue Bishop begins here.
[Version 1 - Phase 1 Implementation of Pewter Consort]

"Adds a Pewter Consort creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

consortinsight is a number that varies. [Consort Insight, entails how much the player knows about the Pewter Consort and their perception]
facecheck is a truth state that varies.
pewterheadcap is a number that varies. [Dictates, via scale, how many consorts might occupy a body region]
pewterbodycap is a number that varies.
pewtergenitalcap is a number that varies.
pewterheadocc is a number that varies. [Indicates how many consorts are occupying a body region]
pewterbodyocc is a number that varies.
pewtercockocc is a number that varies.
pewtercuntocc is a number that varies.
pewterassocc is a number that varies.
pewterheadvar1 is a number that varies. [Indicates how many consorts are attending/tonguing a body region]
pewterheadvar2 is a number that varies. [Indicates how many consorts are riding/fucking a body region]
pewtercockvar1 is a number that varies.
pewtercockvar2 is a number that varies.
pewtercuntvar1 is a number that varies.
pewtercuntvar2 is a number that varies.
pewterassvar1 is a number that varies.
pewterassvar2 is a number that varies.
scaledr is a number that varies. [Scale Diminishing Return, ensures larger players aren't completely overwhelmed]

to say pewterdesc:
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	psycheeval;
	libidoeval;
	setmongender 3; [creature is male]
	say "     Met with the sound of a low, droning growl, you are suddenly beset upon by a peculiar beast. The well-toned quadruped's lean flesh a distinct, faintly metallic gray hue, it's no animal you've ever seen, the alien-looking creature's head utterly devoid of any features save for a toothy, slightly agape, and grinning maw. Slowly circling around you, clearly sizing you up, its somewhat long and flexible tail sways patiently, and you're soon given a clear view of his apparent arousal, oozing a silvery fluid onto the ground.";

to say losetopewter:
	if FaceName of Player is "Pewter Consort":
		now facecheck is true;
	else:
		now facecheck is false;
	if HP of Player > 0:
		say "     You choose to surrender to the lithe assailant, compelling him to back away for a second to assess your action";
	else:
		say "     Too exhausted to fight back any further, you fall to your knees, leaving yourself at the assailant's mercy";
	if a random chance of 1 in 6 succeeds or (player is kinky and a random chance of 1 in 3 succeeds):
		say ". Pondering what to subject you to for a moment, his maw eventually widens into a bright grin, bouncing up and down with excitement. Circling around to your back, it shoves and nips at you until you're forced to move forward, pushed along down a ruined path by the creature's assertive insistence.";
		say "     In the distance, you begin to hear cacophony of wanton, muffled sounds, suggesting that the beast intends to subject you to his kin";
		if HP of Player < 1 and player is not submissive:
			say ". Having recovered slightly, you suddenly attempt to run and avoid what may come to pass. However, the consort is right on your heels, pinning your [if scalevalue of Player > 3]larger [end if]form to the ground and compelling you into compliance once more by lashing you with his tail, each sharp, loud smack causing you to tense and writhe. Eventually, he starts compelling you back to your feet and going along again, closer to the sounds.";
		else:
			say ". No doubt eager and excited, the consort clearly feels you're moving too slowly, and you're made to jump when the [if scalevalue of Player > 3]smaller [end if]creature lashes you with its tail, its audible smack filling the air, the sting certainly enough motivation for you to pick up the pace.";
		say "     Once you reach your destination, you see before you [one of]the remnants of a private swimming pool[or]a basement collapsed in on itself, leaving an alcove[or]a hole, carved from the ruins[at random], its contents a writhing, silvery mass of similar creatures, their wanton excess filling what sparse empty space remains with sexual fluids, slicking their dizzying, perpetual motions[if facecheck is true] while your altered vision blinds you with so many colors[end if]. Briefly distracted, the beast that led you here pushes you forward into the mass, stumbling and falling to meet with the hole's twisted contents.";
		say "     You're given no chance to react before the monsters respond to their new occupant, gripping and folding along your [bodytype of Player] form as they pull you deeper into their depths, the remnant onlooker jumping in along with you. What attire you might've had prior pulled from you and flung from the alcove, you're overwhelmed by the feel of a seemingly countless number of hands and bodies writhing and touching shamelessly over the entirety of your exposed form.";
		say "     Eventually submerged in flesh, shrouded in [if facecheck is false]darkness[else]a dizzying array of colors[end if], the sensation is overwhelming, and it's clear they're not going to let you go until you break free of them.";
		WaitLineBreak;
		if HP of Player < 1, now struggleatt is 1;
		pewterbind;
	else if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
		say ". Almost immediately, the creature hops around to find a good angle of approach before immediately pouncing your ass, [if scalevalue of Player < 4]pinning[else]forcing[end if] you to the ground and pulling away any obstruction in his path. You'd assume the ensuing grinding of its throbbing rod against your behind is an illustration of the creature's over-eagerness causing him to fumble, but it quickly becomes clear that the beast is instead marking you by smearing his precum across your [if scalevalue of Player > 3]substantial, [end if][bodytype of Player] cheeks.";
		say "     This feral foreplay doesn't last particularly long, as he shows just as much eager expedience in shoving his dick past your anal ring, the slick tool slipping its way into your fleshy abyss with zero resistance[if HP of Player < 1], much in spite your impotent protests[end if]. A low, approving growl escaping the beast as he revels in the warmth of these supple confines, you feel his long, slick tongue lavish feverish approval on his new fucktoy. Initially asserting his primal ownership with a few firm thrusts, each motion punctuated with the sound of his balls slapping loudly against your [if Player is male and CockName of Player is not listed in infections of InternalCockList]own[else]crotch[end if], he braces himself once he's satisfied, the sound of his ensuing thrusts completely filling the air.";
		say "     [if scalevalue of Player < 4]Body rocking against this constant pounding[else]The smaller beast utterly pounding you[end if], he pants and hisses in wanton approval, drooling shamelessly against his plaything as his digits squeeze you more and more tightly. [if HP of Player < 1]Unable to resist this persisting assault[else]Overtaken by your own lust[end if], you quickly find yourself aroused as well, [if Player is male]unattended dick[smn] grinding against the barren earth[else if Player is female]unattended cunt[sfn] oozing against the open air[else]much in spite your lack of proper outlet[end if]. The beast's motions becoming increasingly erratic in the ensuing minutes, it eventually hisses out in tainted ecstasy, pulling its dick free of you and painting your ass [if scalevalue of Player < 4]and back [end if]with successive spurts of his silvery seed";
		if Player is not neuter:
			if facecheck is true:
				say ". Feeling his bliss radiate out from him, you can't help but immediately follow suit, [if Player is male]cock[smn] wasting your [Cum Load Size of Player] against the ground[else]cunt[sfn] throbbing against the open air, staining the ground with your sexual fluids[end if], the beast thrusting against you in the moment to ride the waves of your orgasm just a little bit longer.";
				say "     The creature hisses and licks at you, trembling and utterly spent in the wake of your shared bliss. Eventually, he[if HP of Player < 1] thankfully[end if] recovers enough to pull off you and depart, leaving you a sweat and seed-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[else]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";
			else:
				say ". No doubt a little exhausted, it goes limp against your cum-sullied body, loudly panting as it nonetheless impishly revels in grinding its sweat and now ejaculate-slicked torso against yours.";
				if waiterhater is 0, WaitLineBreak;
				LineBreak;
				say "     However, the creature doesn't seem quite satisfied with you yet, as once he catches his breath he goes right back to pounding your now fairly loose hole. No doubt he's already quite spent and satisfied, but that doesn't stop him from repeating the same ritual once more, this overly prolonged sex quickly becoming exhausting. Nonetheless, eventually all the stimulation is enough to set you off, [if Player is male]cock[smn] wasting your [Cum Load Size of Player] against the ground[else]cunt[sfn] throbbing against the open air, staining the ground with your sexual fluids[end if].";
				say "     The creature hisses and licks at you, trembling and utterly overtaken in the wake of your bliss. Eventually, this[if HP of Player < 1] thankfully[end if] seems to be what he was interested in and he finally departs, leaving you a sweat and seed-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[else]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";
		else:
			say "     Appearing somewhat satisfied by making a mess of you, the creature eventually pulls off of you, leaving off into the distance. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[else]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and move forward[end if].";
	else if Player is female and a random chance of 1 in 2 succeeds:
		say ". Almost immediately, the creature hops around to find a good angle of approach before immediately pouncing your ass, [if scalevalue of Player < 4]pinning[else]forcing[end if] you to the ground and pulling away any obstruction in his path. You'd assume the ensuing grinding of its throbbing rod against your behind is an illustration of the creature's over-eagerness causing him to fumble, but it quickly becomes clear that he is instead marking you by smearing his precum across your [if scalevalue of Player > 3]substantial, [end if][bodytype of Player] cheeks.";
		say "     This feral foreplay doesn't last particularly long, and he shows just as much eager expedience in burying his dick into the supple folds of [if Cunt Count of Player > 1]one of [end if]your cunt[sfn], the slick tool slipping its way into your eager hole with zero resistance[if HP of Player < 1], much in spite your protests[end if]. A low, approving growl as he revels in the warmth of your throbbing confines, you feel his long, slick tongue lavish feverish approval on his new fucktoy. Initially asserting his primal ownership with a few firm thrusts, each motion punctuated with the sound of his balls slapping loudly against your [if Player is male and CockName of Player is not listed in infections of InternalCockList]own[else]crotch[end if], he braces himself once he's satisfied, the sound of his ensuing thrusts completely filling the air.";
		say "     [if scalevalue of Player < 4]Body rocking against this constant pounding[else]The smaller beast utterly pounding you[end if], it pants and hisses in wanton approval, drooling shamelessly against its plaything as its digits squeeze you more and more tightly. [if HP of Player < 1]Unable to resist this persisting assault[else]Overtaken by your own lust[end if], you quickly find yourself aroused as well, [if Player is male]unattended dick[smn] grinding against the barren earth[else]stuffed portal squeezing its intrusion needily[end if]. The beast's motions becoming increasingly erratic in the ensuing minutes, he eventually hisses out in tainted ecstasy, pulling his dick free of you and painting your ass [if scalevalue of Player < 4]and back [end if]with successive spurts of his silvery seed";
		if facecheck is true:
			say ". Feeling his bliss radiate out from him, you can't help but immediately follow suit, [if Player is male]cock[smn] wasting your [Cum Load Size of Player] against the ground[else]used cunt throbbing against the open air, staining the ground with your sexual fluids[end if], the beast thrusting against you in the moment to ride the waves of your orgasm just a little bit longer.";
			say "     The creature hisses and licks at you, trembling and utterly spent in the wake of your shared bliss. Eventually, he[if HP of Player < 1] thankfully[end if] recovers enough to pull off you and depart, leaving you a sweat and seed-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[else]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";
		else:
			say ". No doubt a little exhausted, it goes limp against your cum-sullied body, loudly panting as it nonetheless impishly revels in grinding its sweat and now ejaculate-slicked torso against yours.";
			if waiterhater is 0, WaitLineBreak;
			LineBreak;
			say "     However, the creature doesn't seem quite satisfied with you yet, as once he catches his breath he goes [if Cunt Count of Player > 2]on to pound one of your previously unused pussies[else if Cunt Count of Player is 2]on to pound you previously unused pussy[else]right back to pounding your now fairly loose pussy[end if]. No doubt he's already quite spent and satisfied, but that doesn't stop him from repeating the same ritual once more, this overly prolonged sex quickly becoming exhausting. Nonetheless, eventually all the stimulation is enough to set you off, [if Player is male]cock[smn] wasting your [Cum Load Size of Player] against the ground[else]cunt squeezing greedily around the spent cock[end if].";
			say "     The creature hisses and licks at you, trembling and utterly overtaken in the wake of your bliss. Eventually, this[if HP of Player < 1] thankfully[end if] seems to be what he was interested in and he finally departs, leaving you a sweat and seed-soaked mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[else]Taking a moment to catch your breath, you recover enough to gather your things, clean yourself off to the best of your ability, and move forward[end if].";
	else:
		say ". Eagerly, the beast approaches, forcing you down onto all fours before he climbs onto your back, intent on giving you an optimum vantage point of his drooling dick to your face. The throbbing organ staring at you as it is, it's apparently quite human, uncut head half exposed from under its gray, taut foreskin. Eager though he may be, he doesn't see your attendance as an immediate issue, as he seems rather insistent on moving one of your arms to your own[if Player is neuter], genderless[end if] crotch. Clearly, he wants you to please yourself while attending to him[if Player is neuter], not that it'll do you much good[end if].";
		say "     [if HP of Player < 1]You're not particularly inclined to humor the beast's insistence, but it doesn't seem interested in progressing until you do so, his infection's influence - further exacerbated by the scent of his slightly overpowering, male odor - eventually forcing you to oblige[else]Scent flooded with that of the beast's slightly overpowering, male odor, you ultimately oblige his insistence[end if], free hand [if Cock Count of Player > 1]pumping one of your cocks[else if Cock Count of Player is 1]pumping your cock[else if Cunt Count of Player > 1]fondling one of your cunts[else if Cunt Count of Player is 1]fondling your cunt[else]fondling your empty groin[end if]. Satisfied, your attention is quickly split when he begins to prod his oozing rod against you, compelled by your rising lust to reciprocate by lavishing it with your tongue's affection, taste quickly flooded with that of the creature's heady precum. On cue, the second he has an opening, he shows no restraint in thrusting his dick into your maw, pounding your face with his crotch.";
		say "     The feel of the creature's tongue's slick approval against your back, he begins to pant more loudly, his wanton, reckless fervor compelling you to follow this dizzying descent in line. The wet sound of his persisting motion filling the air for a few short minutes, he eventually pulls his tool free of your mouth's influence, this throbbing organ soon spurting its silvery seed all over your face";
		if Player is not neuter:
			if facecheck is true:
				say ". You are too overtaken by his radiant lust to do anything but cry out in bliss, [if Player is male]spending your [Cum Load Size of Player] load all over the ground[else]your feminine portal throbbing achingly against your fingers['] influence[end if]. The beast can't help but rub his oozing, spent dick against your face as he revels in your ecstasy.";
			else:
				say ", too trapped in your own lust to do anything but revel in it.";
				say "     Still furiously attending to yourself, the beast eggs you on by rubbing his oozing, spent dick against your face, eventually forcing you to finally cry out in bliss, [if Player is male]spending your [Cum Load Size of Player] load all over the ground[else]feminine portal throbbing achingly against your finger's influence[end if]. The beast responds by going tense, loudly hissing and growling, as though he too feels your bliss, before finally calming down.";
		else:
			say ". You are too [if facecheck is true]overtaken by his radiant[else]trapped in your own[end if] lust to do anything but revel in it.";
			say "     However, you eventually become too exhausted to continue. The beast doesn't seem particularly satisfied with this, and he tries egging you on by rubbing his oozing, spent dick against your face. The whole endeavor proving to be fruitless, he eventually does concede, not pestering you with the matter any further.";
		say "     Appearing somewhat satisfied by making a mess of you, the creature eventually pulls off of you, leaving you an embarrassing, cum-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[else]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";

to say beattheconsort:
	say "     Hissing and growling, it immediately chooses to turn and run the second things turn sour for them, running off into the distance and freeing you to go about your business once more."; [placeholder]

Section 1.1 - Pewter Consort Bind

pewtertorsosuppress is a truth state that varies.

to pewterbind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		now boundstate is true;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		pewtercapassess;
		if Breast Size of Player is 0:
			now pewtertorsosuppress is true;
		else:
			now pewtertorsosuppress is false;
		if pewterheadocc is 0 and pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
			pewteroccupyroll;
		pewterlustapply;
		if enduring is true:
			increase lustatt by 2 + lustadjust;
			decrease humanity of Player by 2;
		else:
			increase lustatt by 4 + (lustadjust * 2);
			decrease humanity of Player by 3 + psycheadjust;
		if lustatt > 99:
			now tempnum is 1;
			pewterlustsate;
			if pewtercuntvar2 > 0:
				say "[impregchance]";
			if pewterassvar2 > 0 and player is mpreg_ok:
				say "[mimpregchance]";
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
			pewterdisengage;
			if a random chance of 1 in 2 succeeds, pewterdisengage;
			now tempnum is 0;
		now enduring is false;
		say "     You are submerged in the writhing flesh of several gray beasts. [one of]You briefly break the surface, gasping for breath before you're pulled back into the sordid depths[or]The sensation of so much movement all around you is disorienting[or]The thick, masculine odor and the loud groans and howls of sex are all that floods your senses[at random]. Presently, you're [pewtercharacterassess]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		[say "     Head: [pewterheadocc] Attend: [pewterheadvar1] Dick: [pewterheadvar2] || Torso: [pewterbodyocc] || Genital: Cock: [pewtercockocc] Attend: [pewtercockvar1] Dick: [pewtercockvar2] | Cunt: [pewtercuntocc] Attend: [pewtercuntvar1] Dick: [pewtercuntvar2] | Ass: [pewterassocc] Attend: [pewterassvar1] Dick: [pewterassvar2][line break]";] [Dev tool]
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Struggle: [bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";
		if humanity of Player < 1:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Pewter Consort":
					now MonsterID is y;
					break;
			now BodyName of Player is "Pewter Consort";
			now FaceName of Player is "Pewter Consort";
			now TailName of Player is "Pewter Consort";
			now SkinName of Player is "Pewter Consort";
			now CockName of Player is "Pewter Consort";
			now tail of Player is tail entry;
			now Face of Player is face entry;
			now Skin of Player is skin entry;
			now Body of Player is body entry;
			now Cock of Player is cock entry;
			now Trixieexit is 1;
			end the story saying "You lost your mind while bound!";
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
				if struggleatt < 3:
					say "     You deliberately endeavor to free yourself of their hold, [if struggleatt is 1]barely making any progress, as you're quickly pulled back within their slick depths[else]managing to make some headway before being pulled back, just a little bit more..[run paragraph on][end if].";
					now tempnum is 0;
					pewterdisengage;
					if BodyName of Player is "Pewter Consort" and player is pure:
						if a random chance of 1 in 8 succeeds:
							infect;
					else if a random chance of 1 in 5 succeeds:
						infect;
					WaitLineBreak;
				else:
					say "     You finally manage to pull yourself free and climb out of the pool. Crawling away and catching your breath, the lot of them appear too preoccupied with attending to each other to pursue you, allowing you to gather your things strewn about and get some additional distance. Eventually, you recover enough from the messy and exhausting ordeal to go about your business once more.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     You choose to submit to their hold, [one of]hissing and caressing you in approval[or]their continued affection arousing and influencing you further[or]absorbed in the frenzy of flesh and motion[at random].";
					LineBreak;
					pewteroccupyroll;
					if a random chance of 2 in 3 succeeds, pewteroccupyroll;
					if BodyName of Player is "Pewter Consort" and player is pure:
						if a random chance of 1 in 8 succeeds:
							infect;
					else if a random chance of 1 in 5 succeeds:
						infect;
					increase lustatt by 6 + (lustadjust * 2);
				else:
					say "     You choose to abide their hold, [one of]hissing and caressing you in approval[or]their continued affection arousing and influencing you further[or]absorbed in the frenzy of flesh and motion[at random].";
					LineBreak;
					pewteroccupyroll;
					if BodyName of Player is "Pewter Consort" and player is pure:
						if a random chance of 1 in 8 succeeds:
							infect;
					else if a random chance of 1 in 5 succeeds:
						infect;
				WaitLineBreak;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					LineBreak;
					if a random chance of 4 in 5 succeeds, pewteroccupyroll;
					if BodyName of Player is "Pewter Consort" and player is pure:
						if a random chance of 1 in 9 succeeds:
							infect;
					else if a random chance of 1 in 6 succeeds:
						infect;
					SanBoost 4;
					now boundrecover is false;
				else:
					say "     You fight to maintain clarity against their influence, [one of]hissing and caressing you nonetheless[or]their continued affection briefly less effective at arousing you further[or]absorbed in the frenzy of flesh and motion regardless[at random].";
					LineBreak;
					if a random chance of 4 in 5 succeeds, pewteroccupyroll;
					if BodyName of Player is "Pewter Consort" and player is pure:
						if a random chance of 1 in 9 succeeds:
							infect;
					else if a random chance of 1 in 6 succeeds:
						infect;
				WaitLineBreak;
				next;
			say "Invalid action.";

to pewterlustsate:
	say "     Unable to hold back any longer, you cry out in bliss, ";
	if Player is male:
		if pewtercockocc > 0:
			if pewtercockocc > 1:
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar1 is 1]one[else][pewtercockvar1][end if] of your dicks firing its [Cum Load Size of Player] load into [if pewtercockvar1 > 1]the consorts['] attending maws[else]the consort's attending maw[end if], the [if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] unloaded into their rider[if pewtercockvar2 > 1]s[end if]";
				else if pewtercockvar1 > 0:
					say "[if pewtercockvar1 is 1]one[else][pewtercockvar1][end if] of your dicks firing its [Cum Load Size of Player] load into [if pewtercockvar1 > 1]the consorts['] attending maws[else]the consort's attending maw[end if]";
				else:
					say "[if pewtercockvar2 is 1]one[else][pewtercockvar2][end if] of your dicks firing its [Cum Load Size of Player] load into [if pewtercockvar2 > 1]the consort's eager ass[else]the consort's eager ass[end if]";
			else:
				if pewtercockvar1 > 0:
					say "[if Cock Count of Player > 1]one of your dicks[else]your dick[end if] firing its [Cum Load Size of Player] load into the consort's attending maw";
				else:
					say "[if Cock Count of Player > 1]one of your dicks[else]your dick[end if] firing its [Cum Load Size of Player] load into the consort's eager ass";
			if Cock Count of Player > pewtercockocc:
				say ", those unattended further sullying your slick surroundings";
		else:
			say "unattended dick[smn] further sullying your slick surroundings";
	else if Player is female:
		if pewtercuntocc > 0:
			if pewtercuntocc > 1:
				if Cunt Count of Player >= pewtercuntvar1 + pewtercuntvar2:
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "the [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] of your cunts tightening around their invading tongues, as with the [if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] being fucked";
					else if pewtercuntvar1 > 0:
						say "the [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] of your cunts tightening around their invading tongues";
					else:
						say "the [if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] of your cunts tightening around their invading dicks";
				else:
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "your cunt[sfn] tightening around the [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] tonguing [itthemf], as with the [if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] fucking the doubtlessly strained thing[sfn]";
					else if pewtercuntvar1 > 0:
						say "your cunt[sfn] tightening around the [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] tonguing [itthemf]";
					else:
						say "your cunt[sfn] tightening around the [if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] fucking [itthemf]";
			else:
				if pewtercuntvar1 > 0:
					say "the[if Cunt Count of Player > 1] one[end if] cunt tightening around [if pewtercuntvar1 is 1]lone[else][pewtercuntvar1][end if] tonguing it";
				else:
					say "the[if Cunt Count of Player > 1] one[end if] cunt tightening around [if pewtercuntvar1 is 1]lone[else][pewtercuntvar1][end if] fucking it";
		else:
			say "unattended cunt[sfn] aching with overwhelming need.";
	else:
		say "causing you to writhe in insatiable bliss";
	say ". Your own orgasm quickly sparks a cascade of cries and hisses, rippling outward until, in mere seconds, the rest of them begin to fire off. Your surroundings becoming rigid and firm, met with a hot rush of cum ";
	if pewterheadvar2 > 0:
		if pewtercuntvar2 > 0 and pewterassvar2 > 0:
			say "flooding your gullet, cunt[if Cunt Count of Player > 1 and pewtercuntvar2 > 1]s[end if], and ass, all at once until it sputters from your beleaguered holes";
		else if pewtercuntvar2 > 0:
			say "flooding your gullet and cunt[if Cunt Count of Player > 1 and pewtercuntvar2 > 1]s[end if] all at once until it sputters from your beleaguered holes";
		else if pewterassvar2 > 0:
			say "flooding your gullet and ass all at once until it sputters from your beleaguered holes";
		else:
			say "flooding your gullet[if pewterheadvar2 > 1] all at once until it sputters from your beleaguered hole[end if]";
	else if pewtercuntvar2 > 0:
		if pewterassvar2 > 0:
			say "flooding your ass and cunt[if Cunt Count of Player > 1 and pewtercuntvar2 > 1]s[end if] all at once until it sputters from your beleaguered holes";
		else:
			say "flooding your cunt[if Cunt Count of Player > 1 and pewtercuntvar2 > 1]s[end if][if pewtercuntvar2 > 1] all at once until it sputters from your beleaguered hole[end if][if Cunt Count of Player > 1 and pewtercuntvar2 > 1]s[end if]";
	else if pewterassvar2 > 0:
		say "flooding your bowels[if pewterassvar2 > 1] all at once until it sputters from your beleaguered hole[end if]";
	if pewterheadvar2 > 0 or pewtercuntvar2 > 0 or pewterassvar2 > 0:
		say ", the rest washing over you";
	else:
		say "washing over your [bodytype of Player] form, utterly drenching you in the sticky mess";
	say ".";
	say "     This persists for a few, fairly prolonged minutes, as when some find bliss they have the effect of making those already-sated find theirs a second time. Eventually, things do calm down, but only so much that the motion returns to the status quo";
	if pewterheadocc + pewterbodyocc + pewtercockocc + pewtercuntocc + pewterassocc > 1:
		say ", your attending consorts returning their primary attention back on you";
	else if pewterheadocc + pewterbodyocc + pewtercockocc + pewtercuntocc + pewterassocc is 1:
		say ", your attending consort returning his primary attention back on you";
	say ". There's seemingly no end to their lust!";

to pewtercapassess:
	if scalevalue of Player < 3:
		now pewterheadcap is 1;
		now pewterbodycap is 2;
		now pewtergenitalcap is 2;
		now scaledr is 3;
	else if scalevalue of Player is 3:
		now pewterheadcap is 2;
		now pewterbodycap is 2;
		now pewtergenitalcap is 3;
		now scaledr is 3;
	else if scalevalue of Player is 4:
		now pewterheadcap is 2;
		now pewterbodycap is 4;
		now pewtergenitalcap is 3;
		now scaledr is 2;
	else:
		now pewterheadcap is 2;
		now pewterbodycap is 6;
		now pewtergenitalcap is 4;
		now scaledr is 1;
	if Breast Size of Player is 0, now pewterbodycap is 1;

to pewteroccupyroll:
	if pewterheadcap > pewterheadocc and a random chance of 1 in 3 succeeds:
		pewterheadapply;
	else if ((pewterbodycap > pewterbodyocc and pewtertorsosuppress is false) or (pewtertorsosuppress is true and pewterbodyocc is 0)) and a random chance of 1 in 2 succeeds:
		pewterbodyapply;
	else if pewtergenitalcap > (pewtercockocc + pewtercuntocc + pewterassocc) and a random chance of 2 in 3 succeeds:
		pewtergenitalapply;

to pewterheadapply:
	if a random chance of 1 in 2 succeeds:
		if pewterheadocc is 0:
			say "     You feel the lips of one of the consort's against your own, his tongue [if HP of Player < 1]pushing its way into[else]flooding[end if] your mouth and [if HP of Player < 1]forcing[else]compelling[end if] you to reciprocate.";
		else if pewterheadvar1 is 1:
			say "     A second creature comes to seek your tongue's affection, forcing your attention between both it and the other's, their twin, writhing organs quickly overwhelming you.";
		else:
			say "     A second creature meets your head, its tongue worming its way in, forcing your attention between attending him and the other's dick, quickly overwhelming you with a swill of saliva and silvery precum.";
		increase pewterheadvar1 by 1;
	else:
		if pewterheadocc is 0:
			say "     You're suddenly forced to contend with the insistent prodding of a consort's dick against your face, eventually [if HP of Player < 1]forced[else]compelled[end if] to open your mouth, immediately flooding your maw's confines and forcing you to taste its heady, masculine flavor.";
		else if pewterheadvar2 is 1:
			say "     A second dick is prodded against your face, forcing your attention between fellating it and the other's, the two oozing tools quickly making you dizzy with their taste and volume.";
		else:
			say "     The dick of a second creature meets your head, the oozing organ forcing its way into your maw as it attends to the tongue of the first, quickly overwhelming you with a swill of saliva and silvery precum.";
		increase pewterheadvar2 by 1;
	increase pewterheadocc by 1;

to pewterbodyapply:
	if pewtertorsosuppress is true:
		say "     You're met with the firm, cum-slicked caress of a consort's touch against your [bodydesc of Player] form, his teasing caress further exacerbating your present arousal.";
	else:
		if pewterbodyocc is 0:
			say "     You feel one of the consort's lips encircle your exposed nipples, teasing and suckling you, sustaining itself with your fluid while also teasing and arousing you.";
		else:
			say "     Another beast moves to suckle one of your unattended teats, joining the [if pewterbodyocc is 1]one other[else][pewterbodyocc] others[end if] already feasting upon you.";
	increase pewterbodyocc by 1;

to pewtergenitalapply:
	if Player is male and ((anallevel > 1 and a random chance of 1 in 2 succeeds) or (player is female and a random chance of 1 in 2 succeeds) or anallevel is 1) and Cock Count of Player > pewtercockocc:
		if a random chance of 1 in 2 succeeds or Cock Length of Player > 14:
			if pewtercockocc is 0:
				say "     You shudder at the sensation of a consort's tongue along the length of [if Cock Count of Player > 1]one of [end if]your [cock size desc of Player] dick[smn], his teasing only brief before his lips envelop its head, eager to taste your emergent sexual fluids as he continues to attend you.";
			else:
				say "     Another consort moves to suck off ";
				if Cock Count of Player - (pewtercockvar1 + pewtercockvar2) is 1:
					say "your lone, unattended dick";
				else:
					say "one of your unattended dicks";
				say ", joining the ";
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar1 is 1]one other[else][pewtercockvar1] others[end if] and the [if pewtercockvar2 is 1]one[else][pewtercockvar2][end if] riding you";
				else if pewtercockvar1 > 0:
					say "[if pewtercockvar1 is 1]one other[else][pewtercockvar1] others[end if] attending you";
				else:
					say "[if pewtercockvar2 is 1]one[else][pewtercockvar2][end if] riding you";
				say ", all eager to milk you dry.";
			increase pewtercockvar1 by 1;
		else:
			if pewtercockocc is 0:
				say "     You writhe at the sensation of a consort's toned ass grinding along the length of [if Cock Count of Player > 1]one of [end if]your [cock size desc of Player] dick[smn], his teasing only brief before he shoves its head past his tight anal ring, eager to take their new guest out for a ride.";
			else:
				say "     Another consort moves to ride ";
				if Cock Count of Player - (pewtercockvar1 + pewtercockvar2) is 1:
					say "your lone, unattended dick";
				else:
					say "one of your unattended dicks";
				say ", joining the ";
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] and the [if pewtercockvar1 is 1]one[else][pewtercockvar1][end if] sucking you off";
				else if pewtercockvar2 > 0:
					say "[if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] taking you";
				else:
					say "[if pewtercockvar1 is 1]one[else][pewtercockvar1][end if] sucking you off";
				say ", all eager to milk you dry.";
			increase pewtercockvar2 by 1;
		increase pewtercockocc by 1;
	else if Player is female and ((anallevel is 3 and a random chance of 1 in 2 succeeds) or anallevel < 3):
		if a random chance of 1 in 2 succeeds:
			if pewtercuntocc is 0:
				say "     You suddenly feel a consort's tongue writhe its way past the supple folds of [if Cunt Count of Player > 1]one of [end if]your cunt[sfn], worming shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you and its saliva.";
			else:
				if Cunt Count of Player > pewtercuntvar1 + pewtercuntvar2:
					say "     Another creature joins in on the fun, its tongue forcing its way into ";
					if Cunt Count of Player - (pewtercuntvar1 + pewtercuntvar2) is 1:
						say "your lone, unattended cunt";
					else:
						say "one of your unattended cunts";
					say ", joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar1 is 1]one other[else][pewtercuntvar1] others[end if] and the [if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] fucking you";
					else if pewtercuntvar1 > 0:
						say "[if pewtercuntvar1 is 1]one other[else][pewtercuntvar1] others[end if] tonguing you";
					else:
						say "[if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] fucking you";
					say ", stuffing another of your holes.";
				else:
					say "     Another creature joins in on the fun, its tongue forcing its way into [if Cunt Count of Player > 1]one of [end if]your already-stuffed cunt[sfn], joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar1 is 1]one other[else][pewtercuntvar1] others[end if] and the [if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] fucking you";
					else if pewtercuntvar1 > 0:
						say "[if pewtercuntvar1 is 1]one other[else][pewtercuntvar1] others[end if] tonguing you";
					else:
						say "[if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] fucking you";
					say ", further putting a strain on your beleaguered hole[sfn].";
			increase pewtercuntvar1 by 1;
		else:
			if pewtercuntocc is 0:
				say "     You suddenly feel a consort's dick squeeze its way past the supple folds of [if Cunt Count of Player > 1]one of [end if]your cunt[sfn], thrusting shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you.";
			else:
				if Cunt Count of Player > pewtercuntvar1 + pewtercuntvar2:
					say "     Another creature joins in on the fun, its cock forcing its way into ";
					if Cunt Count of Player - (pewtercuntvar1 + pewtercuntvar2) is 1:
						say "your lone, unattended cunt";
					else:
						say "one of your unattended cunts";
					say ", joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[else][pewtercuntvar2] others[end if] and the [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] tonguing you";
					else if pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[else][pewtercuntvar2] others[end if] riding you";
					else:
						say "[if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] tonguing you";
					say ", stuffing another of your holes.";
				else:
					say "     Another creature joins in on the fun, its cock forcing its way into [if Cunt Count of Player > 1]one of [end if]your already-stuffed cunt[sfn], joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[else][pewtercuntvar2] others[end if] and the [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] tonguing you";
					else if pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[else][pewtercuntvar2] others[end if] riding you";
					else:
						say "[if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] tonguing you";
					say ", further putting a strain on your stuffed hole[sfn].";
			increase pewtercuntvar2 by 1;
		increase pewtercuntocc by 1;
	else:
		if a random chance of 1 in 2 succeeds and anallevel > 1:
			if pewterassocc is 0:
				say "     You suddenly feel a consort's tongue force its way past your anal ring, worming shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you and its saliva.";
			else:
				say "     Another creature joins in on the fun being had with your tailpipe, squeezing its writhing tongue past the ";
				if pewterassvar1 > 0 and pewterassvar2 > 0:
					say "[if pewterassvar1 is 1]one other[else][pewterassvar1] others[end if] and the [if pewterassvar2 is 1]one[else][pewterassvar2][end if] fucking you";
				else if pewterassvar1 > 0:
					say "[if pewterassvar1 is 1]one other[else][pewterassvar1] others[end if] attending you";
				else:
					say "[if pewterassvar2 is 1]one[else][pewterassvar2][end if] fucking you";
				say ", further putting a strain on your stuffed hole.";
			increase pewterassvar1 by 1;
		else:
			if pewterassocc is 0:
				say "     You suddenly feel a consort's dick squeeze its way past your anal ring, thrusting shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you.";
			else:
				say "     Another creature joins in on the fun being had with your tailpipe, squeezing its cock past the ";
				if pewterassvar1 > 0 and pewterassvar2 > 0:
					say "[if pewterassvar2 is 1]one other[else][pewterassvar2] others[end if] and the [if pewterassvar1 is 1]one[else][pewterassvar1][end if] tonguing you";
				else if pewterassvar2 > 0:
					say "[if pewterassvar2 is 1]one other[else][pewterassvar2] others[end if] riding you";
				else:
					say "[if pewterassvar1 is 1]one[else][pewterassvar1][end if] tonguing you";
				say ", further putting a strain on your stuffed hole.";
			increase pewterassvar2 by 1;
		increase pewterassocc by 1;

to pewterlustapply:
	let tempnum be 1;
	if enduring is true:
		now tempnum is 2;
	if pewterheadocc > 0:
		if pewterheadvar1 > 0:
			increase lustatt by ((pewterheadvar1 * (scaledr + 1)) + lustadjust) / tempnum;
		if pewterheadvar2 > 0:
			increase lustatt by ((pewterheadvar2 * (scaledr + 2)) + (lustadjust * 2)) / tempnum;
	if pewterbodyocc > 0:
		increase lustatt by ((pewterbodyocc * (scaledr + 2)) + lustadjust) / tempnum;
	if pewtercockvar1 > 0:
		increase lustatt by ((pewtercockvar1 * ((scaledr + 1) * 2)) + (lustadjust * 3)) / tempnum;
	if pewtercockvar2 > 0:
		increase lustatt by ((pewtercockvar2 * ((scaledr + 2) * 2)) + (lustadjust * 3)) / tempnum;
	if pewtercuntvar1 > 0:
		increase lustatt by ((pewtercuntvar1 * ((scaledr + 1) * 2)) + (lustadjust * 3)) / tempnum;
	if pewtercuntvar2 > 0:
		increase lustatt by ((pewtercuntvar2 * ((scaledr + 1) * 2)) + (lustadjust * 3)) / tempnum;
	if pewterassvar1 > 0:
		increase lustatt by ((pewterassvar1 * (scaledr + 3)) + (lustadjust * 2)) / tempnum;
	if pewterassvar2 > 0:
		increase lustatt by ((pewterassvar2 * (scaledr + 3)) + (lustadjust * 2)) / tempnum;
	now tempnum is 0;

to pewterdisengage:
	if pewterheadocc > 0 and a random chance of 1 in 4 succeeds:
		say "     [if tempnum is 1]In the frenzy[else]With some effort[end if], you're jostled free of one of the consorts attending your head.";
		if pewterheadvar1 > 0 and (pewterheadvar2 is 0 or a random chance of 1 in 2 succeeds):
			decrease pewterheadvar1 by 1;
		else:
			decrease pewterheadvar2 by 1;
		decrease pewterheadocc by 1;
	else if pewterbodyocc > 0 and a random chance of 1 in 3 succeeds:
		say "     [if tempnum is 1]In the frenzy[else]With some effort[end if], you're jostled free of one of the consorts attending your torso.";
		decrease pewterbodyocc by 1;
	else if (pewtercockocc + pewtercuntocc + pewterassocc) > 0 and a random chance of 1 in 2 succeeds:
		if pewtercockocc > 0 and ((pewtercuntocc is 0 and pewterassocc is 0) or (pewtercuntocc is 0 and a random chance of 1 in 2 succeeds) or (pewterassocc is 0 and a random chance of 1 in 2 succeeds) or (pewterassocc > 0 and pewtercuntocc > 0 and a random chance of 1 in 3 succeeds)):
			say "     [if tempnum is 1]In the frenzy[else]With some effort[end if], you're jostled free of one of the consorts attending your cock.";
			if pewtercockvar1 > 0 and (pewtercockvar2 is 0 or a random chance of 1 in 2 succeeds):
				decrease pewtercockvar1 by 1;
			else:
				decrease pewtercockvar2 by 1;
			decrease pewtercockocc by 1;
		else if pewtercuntocc > 0 and (pewterassocc is 0 or a random chance of 1 in 2 succeeds):
			say "     [if tempnum is 1]In the frenzy[else]With some effort[end if], you're jostled free of one of the consorts attending your cunt.";
			if pewtercuntvar1 > 0 and (pewtercuntvar2 is 0 or a random chance of 1 in 2 succeeds):
				decrease pewtercuntvar1 by 1;
			else:
				decrease pewtercuntvar2 by 1;
			decrease pewtercuntocc by 1;
		else:
			say "     [if tempnum is 1]In the frenzy[else]With some effort[end if], you're jostled free of one of the consorts attending your ass.";
			if pewterassvar1 > 0 and (pewterassvar2 is 0 or a random chance of 1 in 2 succeeds):
				decrease pewterassvar1 by 1;
			else:
				decrease pewterassvar2 by 1;
			decrease pewterassocc by 1;


to say pewtercharacterassess:
	if pewterheadocc is 0 and pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
		say "spared of any of their direct attention, though that will likely change very quickly";
	else:
		if pewterheadocc > 0:
			if pewterheadocc is 1:
				say "made to attend to ";
				if pewterheadvar1 is 1:
					say "the embrace of one's lips upon your own, tongue impishly worming around in your maw";
				else:
					say "one of the creature's dicks lodged firmly in your maw, forcing you to taste its silvery pre";
			else:
				say "split between attending ";
				if pewterheadvar1 is 1 and pewterheadvar2 is 1:
					say "the tongue of one creature and the dick of another, left only with the taste of silvery pre and saliva";
				else if pewterheadvar1 is 2:
					say "the tongues of two creatures, their slick, writhing organs tormenting you in unison";
				else if pewterheadvar2 is 2:
					say "two of the creature's dicks lodged firmly in your maw, forcing you to taste their silvery pre";
			if (pewterbodyocc > 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0) or (pewterbodyocc is 0 and pewtercockocc > 0 and pewtercuntocc is 0 and pewterassocc is 0):
				say " and ";
			else if (pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc > 0 and pewterassocc is 0) or (pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc > 0):
				say " and ";
			else if pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
				say "";
			else:
				say ", ";
		if pewterbodyocc > 0:
			if pewtertorsosuppress is true:
				say "embraced by a consort, its digits slickly caressing your [bodytype of Player] form";
			else:
				say "suckled upon by [if pewterbodyocc is 1]one[else][pewterbodyocc][end if] upon your teat[if pewterbodyocc > 1]s[end if], feeding and attending you";
			if (pewtercockocc > 0 and pewtercuntocc is 0 and pewterassocc is 0) or (pewtercockocc is 0 and pewtercuntocc > 0 and pewterassocc is 0) or (pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc > 0):
				say ", and ";
			else if pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
				say "";
			else:
				say ", ";
		if pewtercockocc > 0 or pewtercuntocc > 0 or pewterassocc > 0:
			say "made to writhe as ";
		if pewtercockocc > 0:
			if pewtercockocc > 1:
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar1 is 1]one[else][pewtercockvar1][end if] of your dicks are sucked off, [if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] being ridden";
				else if pewtercockvar1 > 0:
					say "[if pewtercockvar1 is 1]one[else][pewtercockvar1][end if] of your dicks are sucked off";
				else:
					say "[if pewtercockvar2 is 1]one[else][pewtercockvar2][end if] of your dicks are being ridden";
			else:
				if pewtercockvar1 > 0:
					say "[if Cock Count of Player > 1]one of your dicks are[else]your dick is[end if] sucked off";
				else:
					say "[if Cock Count of Player > 1]one of your dicks are[else]your dick is[end if] being ridden";
			if (pewtercuntocc > 0 and pewterassocc is 0) or (pewtercuntocc is 0 and pewterassocc > 0):
				say ", and ";
			else if pewtercuntocc is 0 and pewterassocc is 0:
				say "";
			else:
				say ", ";
		if pewtercuntocc > 0:
			if pewtercuntocc > 1:
				if Cunt Count of Player >= pewtercuntvar1 + pewtercuntvar2:
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] of your cunts are being tongued, [if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if] being fucked";
					else if pewtercuntvar1 > 0:
						say "[if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if] of your cunts are being tongued";
					else:
						say "[if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if] of your cunts are being fucked";
				else:
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "your cunt[if Cunt Count of Player > 1]s are[else] is[end if] tongued by [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if], fucked by [if pewtercockvar2 is 1]one other[else][pewtercockvar2] others[end if][if Cunt Count of Player > 1] as they share your [Cunt Count of Player] holes[end if]";
					else if pewtercuntvar1 > 0:
						say "your cunt[if Cunt Count of Player > 1]s are[else] is[end if] tongued by [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if]";
					else:
						say "your cunt[if Cunt Count of Player > 1]s are[else] is[end if] fucked by [if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if]";
			else:
				if pewtercuntvar1 > 0:
					say "[if Cunt Count of Player > 1]one of [end if]your cunt[sfn] being tongued by [if pewtercuntvar1 is 1]one[else][pewtercuntvar1][end if]";
				else:
					say "[if Cunt Count of Player > 1]one of [end if]your cunt[sfn] being fucked by [if pewtercuntvar2 is 1]one[else][pewtercuntvar2][end if]";
			if pewterassocc > 0: [here?]
				say ", and ";
			else:
				say "";
		if pewterassocc > 0:
			if pewterassocc > 1:
				if pewterassvar1 > 0 and pewterassvar2 > 0:
					say "your ass is rimmed by [if pewterassvar1 is 1]one[else][pewterassvar1][end if] of them, [if pewterassvar2 is 1]one other[else][pewterassvar2] others[end if] fucking it";
				else if pewterassvar1 > 0:
					say "your ass is rimmed by [pewterassvar1] of them";
				else:
					say "your ass is pounded by [pewterassvar2] of them";
			else:
				if pewterassvar1 > 0:
					say "your ass is being rimmed by one of them";
				else:
					say "your ass is being pounded by one of them";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Pewter Consort"; [name of the overall species of the infection, used for children, ...]
	add "Pewter Consort" to infections of NonOrganicList;
	add "Pewter Consort" to infections of FeralList;
	add "Pewter Consort" to infections of MaleList;
	add "Pewter Consort" to infections of QuadrupedalList;
	add "Pewter Consort" to infections of TailList;
	add "Pewter Consort" to infections of TailweaponList;
	add "Pewter Consort" to infections of FeralMindList;
	now Name entry is "Pewter Consort";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]beast[or]creature[or]consort[at random] [one of]pounces onto you, lashing and nipping you into submission until you finally pry him off[or]bounds nearby to lash you sharply with its tail, driving you backwards[or]clings onto you in an attempt to pin you to the ground, forcing you to pull yourself free[or]grabs one of your appendages with its tail and stumbles you to the ground, quickly scrambling back to your feet[at random].";
	now defeated entry is "[beattheconsort]";
	now victory entry is "[losetopewter]";
	now desc entry is "[pewterdesc]";
	now face entry is "featureless save for a toothy maw. Your vision is strangely grayscale, save for the alluring, entrancing hues emitted from other living beings";
	now body entry is "lean and feral in build, though thankfully your forehands retain their articulation";
	now skin entry is "[consortskinentry]";
	now tail entry is "You are adorned with a lengthy, prehensile tail, which whistles through the air with a lash.";
	now cock entry is "[one of]normal-looking[or]seemingly human[at random] and uncut";
	now face change entry is "[consortfacechange]";
	now body change entry is "the infection takes hold. Tensing up, your body shifts and adjusts to take on the structure of a feral beast, lean and agile. Looking at your forehands, this strain at least gives you fully articulate digits";
	now skin change entry is "[consortskinchange]";
	now ass change entry is "a long tail sprouts from it. Fairly strong and prehensile, it sings as it's lashed through the air";
	now cock change entry is "it tingles with a strange sensation. Checking it out, it appears to be strangely human, but the change compels it to slightly ooze from its uncut head, your seed taking on a silvery appearance";
	now str entry is 14; [14]
	now dex entry is 17; [17]
	now sta entry is 14; [14]
	now per entry is 13; [13]
	now int entry is 13; [13]
	now cha entry is 8; [8]
	now sex entry is "Male";
	now HP entry is 45; [45]
	now lev entry is 6; [6]
	now wdam entry is 6; [6]
	now area entry is "Capitol";
	now Cock Count entry is 1;
	now Cock Length entry is 9;
	now Ball Size entry is 3;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 45;
	now loot entry is "pewter seed"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 45; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;
	now body descriptor entry is "[one of]lean[or]feral[or]bestial[at random]";
	now type entry is "[one of]feral[or]bestial[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


to say consortfacechange:
	if consortinsight is 0:
		say "the infection overtakes it. All facial features save for your mouth meld into it, ";
		if boundstate is true:
			say "your sight going from darkness to an overwhelming wave to vivid colors, your rounded and smooth head fondled by the creatures.";
		else:
			say "leaving your sight in utter blackness and compelling you to fondle your rounded and smooth head. In a scant few seconds, your sight returns to you, but the world around you is now desaturated to the point of being almost entirely gray; however, when you look at your hands they shimmer and glow with a shifting cascade of colors.";
		now consortinsight is 1;
		say "     From what you can gather, this strain can somehow sense the emotions of a living thing";
		if boundstate is true:
			say ". The way it radiates from the writhing bodies surrounding you is overwhelming, making it even more difficult to keep a clear head, exacerbated by the faintly reflective surface of their flesh and their silvery seed";
			now consortinsight is 2;
		else:
			say ". The way it radiates from others is strangely affecting, making it difficult for you not to obsessively fondle your head in idle revels of your own radiance";
		if SkinName of Player is "Pewter Consort" and consortinsight is not 2:
			say ". You find this quickly exacerbated by your faintly metallic skin, which seems to magnify the effect. It takes you a moment to control yourself";
			now consortinsight is 2;
	else:
		say "the infection overtakes it. All facial features save for your mouth meld into it, ";
		if boundstate is true:
			say "your sight going from darkness to an overwhelming wave to vivid colors, your rounded and smooth head fondled by the creatures and exposed once more to their strange empathy";
		else:
			say "leaving your sight in utter blackness and compelling you to fondle your rounded and smooth head. In a scant few seconds, your sight returns to you, exposing you once more to the strange and empathic senses of these creatures";
		if SkinName of Player is "Pewter Consort" and consortinsight is not 2:
			say ". You find this quickly exacerbated by your faintly metallic skin, which seems to magnify the effect. It takes you a moment to control yourself";
			now consortinsight is 2;

to say consortskinchange:
	say "it begins to tingle with the infection's influence. Your skin takes on a gray and faintly metallic appearance, shimmering in the light";
	if FaceName of Player is "Pewter Consort" and consortinsight is not 2:
		say ". You're nearly taken aback by how much this appears to exacerbate your peculiar sense of sight, suggesting that reflective surfaces magnify your senses somehow";
		now consortinsight is 2;

to say consortskinentry:
	if FaceName of Player is "Pewter Consort":
		say "faintly metallic, sensory amplifying";
	else:
		say "gray, faintly metallic";

Section 3 - Item Drop

Table of Game Objects (continued)
name	desc	weight	object
"pewter seed"	"[pewterseeddesc]"	1	pewter seed

pewter seed is a grab object. pewter seed is infectious. The strain of pewter seed is "Pewter Consort". pewter seed is cum.
the scent of pewter seed is "There's a slight, metallic sweetness hidden under its more masculine aroma.".
The usedesc of pewter seed is "     You have little difficulty downing the warm fluid. It makes you a little tingly all over...";

to say pewterseeddesc:
	say "The silvery seed of a strange, eyeless monster";
	if FaceName of Player is "Pewter Consort":
		say ". It shimmers mesmerizingly";
	say ".";


Section 4 - Endings

when play ends:
	if BodyName of Player is "Pewter Consort":
		if humanity of Player < 10:
			if boundstate is true:
				say "     Unable to retain your humanity after being subjected to this perpetual orgy, it eventually becomes all you know, subjected to a seemingly endless cascade of colors and sensation in an almost hypnotic fashion, seemingly sustained by their collective radiance and their sexual fluids. You never manage to leave and observe the fate of the world outside, but at this point it seems of little issue to you...";
			else:
				say "     Overtaken by your infection's control, you lose track of all prior thought, relegating yourself to aimlessly wandering the streets in search of company. Eventually, you find someone to revel with in their warmth. They seem to really enjoy playing hide and seek, but when you finally catch them, it's naught but a few moments of roughhousing before you can make them moan and writhe until they wholly radiate bliss.";
				say "     After playing this game with them a number of times, they grow inclined to join you on your little adventure, eager to find others to play with as much as you...";
		else:
			say "     Your feral, slender body doesn't seem to be regarded very highly by the uninfected, once the military finds and processes you. Once you're inevitably let free back into civilized society, it's a bit hard to maneuver in a world that only ever looks down upon you - both figuratively and literally - but you eventually manage to get by.";
			if FaceName of Player is "Pewter Consort":
				say "     People are particularly disturbed by your seemingly alien, eyeless head, but it eventually proves itself to be somewhat advantageous once you become more accustomed to it and what certain colors mean. You gain a fair measure of coin on the side acting as a lie detector, and it certainly makes your more wanton misadventures all the more exciting.";

Pewter Consort ends here.
