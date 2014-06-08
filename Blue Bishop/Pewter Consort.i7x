Version 1 of Pewter Consort by Blue Bishop begins here.
[Version 1 - Phase 1 Implementation of Pewter Consort]

"Adds a Pewter Consort creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

consortinsight is a number that varies. [Consort Insight, entails how much the player knows about the Pewter Consort and their perception]
facecheck is a truth state that varies.

when play begins:
	add { "Pewter Consort" } to infections of guy;
	add { "Pewter Consort" } to infections of Tailweapon;

to say losetopewter:
	if facename of player is "Pewter Consort":
		now facecheck is true;
	otherwise:
		now facecheck is false;
	if hp of player > 0:
		say "     You choose to surrender to the lithe assailant, compelling him to back away for a second to assess your action";
	otherwise:
		say "     Too exhausted to fight back any further, you fall to your knees, leaving yourself at the assailant's mercy";
	if a random chance of 1 in 6 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds):
		say ". Pondering what to subject you to for a moment, his maw eventually widens into a bright grin, bouncing up and down with excitement. Circling around to your back, it shoves and nips at you until you're forced to move forward, pushed along down a ruined path by the creature's assertive insistence.";
		say "     In the distance, you begin to hear cacophony of wanton, muffled sounds, suggesting that the beast intends to subject you to his kin";
		if hp of player < 1 and player is not submissive:
			say ". Having recovered slightly, you suddenly attempt to run and avoid what may come to pass. However, the consort is right on your heels, pinning your[if scalevalue of player > 3] larger[end if] form to the ground and compelling you into compliance once more by lashing you with his tail, each sharp, loud smack causing you to tense and writhe. Eventually, he starts compelling you back to your feet and going along again, closer to the sounds.";
		otherwise:
			say ". No doubt eager and excited, the consort clearly feels you're moving too slowly, and you're made to jump when the[if scalevalue of player > 3] smaller[end if] creature lashes you with its tail, it's audible smack filling the air, the sting certainly enough motivation for you to pick up the pace.";
		say "     Once you reach your destination, you see before you [one of]the remnants of a private swimming pool[or]a basement collapsed in on itself, leaving an alcove[or]a hole, carved from the ruins[at random], its contents a writhing, silvery mass of similar creatures, their wanton excess filling what sparse empty space remains with sexual fluids, slicking their dizzying, perpetual motions[if facecheck is true] while your altered vision blinds you with so many colours[end if]. Briefly distracted, the beast that lead you here pushes you forward into the mass, stumbling and falling to meet with the hole's twisted contents.";
		say "     You're given no chance to react before the monsters respond to their new occupant, gripping and folding along your [bodytype of player] form as they pull you deeper into their depths, the remnant onlooker jumping in along with you. What attire you might've had prior pulled from you and flung from the alcove, you're overwhelmed by the feel of a seemingly countless number of hands and bodies writhing and touching shamelessly over the entirety of your exposed form.";
		say "     Eventually submerged in flesh, shrouded in [if facecheck is false]darkness[otherwise]a dizzying array of colours[end if], the sensation is overwhelming, and it's clear they're not going to let you go until you break free of them.";
		wait for any key;
		if hp of player < 1, now struggleatt is 1;
		pewterbind;
	otherwise if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
		say ". Almost immediately, the creature hops around to find a good angle of approach before immediately pouncing your ass, [if scalevalue of player < 4]pinning[otherwise]forcing[end if] you to the ground and pulling away any obstruction in his path. You'd assume the ensuing grinding of its throbbing rod against your behind is an illustration of the creature's over-eagerness causing him to fumble, but quickly becomes clear that the beast is instead marking you by smearing his precum across your[if scalevalue of player > 3] substantial,[end if] [bodytype of player] cheeks.";
		say "     This feral foreplay doesn't last particularly long, as he shows just as much eager expedience in shoving his dick past your anal ring, the slick tool slipping its way into your fleshy abyss with zero resistance[if hp of player < 1], much in spite your impotent protests[end if]. A low, approving growl escaping the beast as he revels in the warmth of these supple confines, you feel his long, slick tongue lavish feverish approval on his new fucktoy. Initially asserting his primal ownership with a few firm thrusts, each motion punctuated with a the sound of his balls slapping loudly against your [if cocks of player > 0 and cockname of player is not listed in infections of internallist]own[otherwise]crotch[end if], he braces himself once he's satisfied, the sound of his ensuing thrusts completely filling the air.";
		say "     [if scalevalue of player < 4]Body rocking against this constant pounding[otherwise]The smaller beast utterly pounding you[end if], he pants and hisses in wanton approval, drooling shamelessly against his plaything as his digits squeeze you more and more tightly. [if hp of player < 1]Unable to resist this persisting assault[otherwise]Overtaken by your own lust[end if], you quickly find yourself aroused as well, [if cocks of player > 0]unattended dick[smn] grinding against the barren earth[otherwise if cunts of player > 0]unattended cunt[sfn] oozing against the open air[otherwise]much in spite your lack of proper outlet[end if]. The beast's motions becoming increasingly erratic in the ensuing minutes, it eventually hisses out in tainted ecstasy, pulling its dick free of you and painting your ass[if scalevalue of player < 4] and back[end if] with successive spurts of his silvery seed";
		if cocks of player > 0 or cunts of player > 0:
			if facecheck is true:
				say ". Feeling his bliss radiate out from him, you can't help but immediately follow suit, [if cocks of player > 0]cock[smn] wasting your [cum load size of player] against the ground[otherwise]cunt[sfn] throbbing against the open air, staining the ground with your sexual fluids[end if], the beast thrusting against you in the moment to ride the waves of your orgasm just a little bit longer.";
				say "     The creature hisses and licks at you, trembling and utterly spent in the wake of your shared bliss. Eventually, he[ if hp of player < 1] thankfully[end if] recovers enough to pull off you and depart, leaving you a sweat and seed-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[otherwise]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";
			otherwise:
				say ". No doubt a little exhausted, it goes limp against your cum-sullied body, loudly panting as it nonetheless impishly revels in grinding its sweat and now ejaculate-slicked torso against yours.";
				if waiterhater is 0, wait for any key;
				say "[line break]";
				say "     However, the creature doesn't seem quite satisfied with you yet, as once he catches his breath he goes right back to pounding your now fairly loose hole. No doubt he's already quite spent and satisfied, but that doesn't stop him from repeating the same ritual once more, this overly prolonged sex quickly becoming exhausting. Nonetheless, eventually all the stimulation is enough to set you off, [if cocks of player > 0]cock[smn] wasting your [cum load size of player] against the ground[otherwise]cunt[sfn] throbbing against the open air, staining the ground with your sexual fluids[end if].";
				say "     The creature hisses and licks at you, trembling and utterly overtaken in the wake of your bliss. Eventually, this[ if hp of player < 1] thankfully[end if] seems to be what he was interested in and he finally departs, leaving you a sweat and seed-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[otherwise]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";
		otherwise:
			say "     Appearing somewhat satisfied by making a mess of you, the creature eventually pulls off of you, leaving off into the distance. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[otherwise]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and move forward[end if].";
	otherwise if cunts of player > 0 and a random chance of 1 in 2 succeeds:
		say ". Almost immediately, the creature hops around to find a good angle of approach before immediately pouncing your ass, [if scalevalue of player < 4]pinning[otherwise]forcing[end if] you to the ground and pulling away any obstruction in his path. You'd assume the ensuing grinding of its throbbing rod against your behind is an illustration of the creature's over-eagerness causing him to fumble, but quickly becomes clear that he is instead marking you by smearing his precum across your[if scalevalue of player > 3] substantial,[end if] [bodytype of player] cheeks.";
		say "     This feral foreplay doesn't last particularly long, and he shows just as much eager expedience in burying his dick into the supple folds of[if cunts of player > 1] one of[end if] your cunt[sfn], the slick tool slipping its way into your eager hole with zero resistance[if hp of player < 1], much in spite your protests[end if]. A low, approving growl as he revels in the warmth of your throbbing confines, you feel his long, slick tongue lavish feverish approval on his new fucktoy. Initially asserting his primal ownership with a few firm thrusts, each motion punctuated with a the sound of his balls slapping loudly against your [if cocks of player > 0 and cockname of player is not listed in infections of internallist]own[otherwise]crotch[end if], he braces himself once he's satisfied, the sound of his ensuing thrusts completely filling the air.";
		say "     [if scalevalue of player < 4]Body rocking against this constant pounding[otherwise]The smaller beast utterly pounding you[end if], it pants and hisses in wanton approval, drooling shamelessly against its plaything as its digits squeeze you more and more tightly. [if hp of player < 1]Unable to resist this persisting assault[otherwise]Overtaken by your own lust[end if], you quickly find yourself aroused as well, [if cocks of player > 0]unattended dick[smn] grinding against the barren earth[otherwise]stuffed portal squeezing its intrusion needily[end if]. The beast's motions becoming increasingly erratic in the ensuing minutes, he eventually hisses out in tainted ecstasy, pulling his dick free of you and painting your ass[if scalevalue of player < 4] and back[end if] with successive spurts of his silvery seed";
		if facecheck is true:
			say ". Feeling his bliss radiate out from him, you can't help but immediately follow suit, [if cocks of player > 0]cock[smn] wasting your [cum load size of player] against the ground[otherwise]used cunt throbbing against the open air, staining the ground with your sexual fluids[end if], the beast thrusting against you in the moment to ride the waves of your orgasm just a little bit longer.";
			say "     The creature hisses and licks at you, trembling and utterly spent in the wake of your shared bliss. Eventually, he[ if hp of player < 1] thankfully[end if] recovers enough to pull off you and depart, leaving you a sweat and seed-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[otherwise]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";
		otherwise:
			say ". No doubt a little exhausted, it goes limp against your cum-sullied body, loudly panting as it nonetheless impishly revels in grinding its sweat and now ejaculate-slicked torso against yours.";
			if waiterhater is 0, wait for any key;
			say "[line break]";
			say "     However, the creature doesn't seem quite satisfied with you yet, as once he catches his breath he goes [if cunts of player > 2]on to pound one of your previously unused pussies[otherwise if cunts of player is 2]on to pound you previously unused pussy[otherwise]right back to pounding your now fairly loose pussy[end if]. No doubt he's already quite spent and satisfied, but that doesn't stop him from repeating the same ritual once more, this overly prolonged sex quickly becoming exhausting. Nonetheless, eventually all the stimulation is enough to set you off, [if cocks of player > 0]cock[smn] wasting your [cum load size of player] against the ground[otherwise]cunt squeezing greedily around the spent cock[end if].";
			say "     The creature hisses and licks at you, trembling and utterly overtaken in the wake of your bliss. Eventually, this[ if hp of player < 1] Thankfully[end if] seems to be what he was interested in and he finally departs, leaving you a sweat and seed-soaked mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[otherwise]Taking a moment to catch your breath, you recover enough to gather your things, clean yourself off to the best of your ability, and move forward[end if].";
	otherwise:
		say ". Eagerly, the beast approaches, forcing you down onto all fours before he climbs onto your back, intent on giving you an optimum vantage point of his drooling dick to your face. The throbbing organ staring at you as it is, its apparently quite human, uncut head half exposed from under it's grey, taut foreskin. Eager though he may be, he doesn't see your attendance as an immediate issue, as he seems rather insistent on moving one of your arms to your own[if cocks of player is 0 and cunts of player is 0], genderless[end if] crotch. Clearly, he wants you to please yourself whilst attending to him[if cocks of player is 0 and cunts of player is 0], not that it'll do you much good[end if].";
		say "     [if hp of player < 1]You're not particularly inclined to humour the beast's insistence, but it doesn't seem interested in progressing until you do so, his infection's influence -- further exacerbated by the scent of his slightly overpowering, male odour -- eventually forcing you to oblige[otherwise]Scent flooded with that of the beast's slightly overpowering, male odor, you ultimately oblige his insistence[end if], free hand [if cocks of player > 1]pumping one of your cocks[otherwise if cocks of player is 1]pumping your cock[otherwise if cunts of player > 1]fondling one of your cunts[otherwise if cunts of player is 1]fondling your cunt[otherwise]fondling you empty groin[end if]. Satisfied, your attention is quickly split when he begins to prod his oozing rod against you, compelled by your rising lust to reciprocate by lavishing it with your tongue's affection, taste quickly flooded with that of the creature's heady precum. On cue, the second he has an opening, he shows no restraint in thrusting his dick into your maw, pounding your pace with his crotch.";
		say "     The feel of the creature's tongue's slick approval against your back, he begins to pant more loudly, his wanton, reckless fervour compelling you to follow this dizzying descent in line. The wet sound of his persisting motion filling the air for a few short minutes, he eventually pulls his tool free of your mouth's influence, this throbbing organ soon spurting its silvery seed all over your face, ";
		if cocks of player > 0 or cunts of player > 0:
			if facecheck is true:
				say "too overtaken by his radiant lust to do anything but also cry out bliss. [if cocks of player > 0]Spending your [cum load size of player] load all over the ground[otherwise]Feminine portal throbbing achingly against your finger's influence[end if]. The beast can't help but rub his oozing, spent dick against your face as he revels in your ecstasy.";
			otherwise:
				say "too trapped in your own lust to do anything but revel in it.";
				say "     Still furiously attending to yourself, the beast eggs you on by rubbing his oozing, spent dick against your face, eventually forcing you to finally cry out in bliss, [if cocks of player > 0]spending your [cum load size of player] load all over the ground[otherwise]feminine portal throbbing achingly against your finger's influence[end if]. The beast responds by going tense, loudly hissing and growling, as though he too feels your bliss, before finally calming down.";
		otherwise:
			say "too [if facecheck is true]overtaken by his radiant[otherwise]trapped in your own[end if] lust to do anything but revel in it.";
			say "     However, you eventually become too exhausted to continue. The beast doesn't seem particularly satisfied with this, and tries egging you on by rubbing his oozing, spend dick against your face. The whole endeavour proving to be fruitless, he eventually does concede, not pestering you with the matter any further.";
		say "     Appearing somewhat satisfied by making a mess of you, the creature eventually pulls off of you, leaving you an embarrassing, cum-stained mess. [if showlocale is true]You hear sounds in the distance, no doubt the sordid affair catching some attention, compelling you to gather your things and quickly flee[otherwise]Eventually, you recover enough to gather your things, clean yourself off to the best of your ability, and depart[end if].";

to say beattheconsort:
	say "     Hissing and growling, it immediately chooses to turn and run the second things turn sour for them, running off into the distance and freeing you to go about your business once more."; [placeholder]

to say pewterdesc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	psycheeval;
	libidoeval;
	say "     Met with the sound of a low, droning growl, you are suddenly beset upon by a peculiar beast. The well-toned quadruped's lean flesh a distinct, faintly metallic gray hue, it's no animal you've ever seen, the alien-looking creature's head utterly devoid of any features save for a toothy, slightly agape, and grinning maw. Slowly circling around you, clearly sizing you up, it's somewhat long and flexible tail sways patiently, and you're soon given a clear view of his apparent arousal, oozing a silvery fluid onto the ground.";

Section 1.1 - Pewter Consort Bind

pewtertorsosuppress is a truth state that varies.

to pewterbind:
	now lustatt is libido of player;
	now calcnumber is -1;		
	let trixieexit be 0;
	while trixieexit is 0:
		now boundstate is true;
		if clearnomore is 0, clear the screen;
		pewtercapassess;
		if breast size of player is 0:
			now pewtertorsosuppress is true;
		otherwise:
			now pewtertorsosuppress is false;
		if pewterheadocc is 0 and pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
			pewteroccupyroll;
		pewterlustapply;
		increase lustatt by 4 + (lustadjust * 2);
		decrease humanity of player by 3 + psycheadjust;
		if lustatt > 99:
			now tempnum is 1;
			pewterlustsate;
			if pewtercuntvar2 > 0:
				say "[impregchance]";
			if pewterassvar2 > 0 and "MPreg" is listed in feats of player:
				say "[mimpregchance]";
			decrease libido of player by (libido of player / 10) + 1;
			if libido of player < 0, now libido of player is 0;
			now lustatt is libido of player;
			if struggleatt > 0, decrease struggleatt by 1;
			decrease humanity of player by 15 + (psycheadjust * 5);
			pewterdisengage;
			if a random chance of 1 in 2 succeeds, pewterdisengage;
			now tempnum is 0;
		say "     You are submerged in the writhing flesh of several grey beasts. [one of]You briefly brake the surface, gasping for breath before you're pulled back into the sordid depths[or]The sensation of so much movement all around you is disorienting[or]The thick, masculine odour and the loud groans and howls of sex are all that floods your senses[at random]. Presently, you're [pewtercharacterassess]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, lest you [bold type]A[roman type]bide these questionable circumstances.";				
		[say "     Head: [pewterheadocc] Attend: [pewterheadvar1] Dick: [pewterheadvar2] || Torso: [pewterbodyocc] || Genital: Cock: [pewtercockocc] Attend: [pewtercockvar1] Dick: [pewtercockvar2] | Cunt: [pewtercuntocc] Attend: [pewtercuntvar1] Dick: [pewtercuntvar2] | Ass: [pewterassocc] Attend: [pewterassvar1] Dick: [pewterassvar2][line break]";] [Dev tool]
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link]Abide[as]2[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [bracket]-[if struggleatt > 1][bold type]X[roman type][otherwise]-[end if][if struggleatt > 0][bold type]X[roman type][otherwise]-[end if][close bracket][line break][run paragraph on]";
		if humanity of player < 1:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Pewter Consort":
					now monster is y;
					break;
			now bodyname of player is "Pewter Consort";
			now facename of player is "Pewter Consort";
			now tailname of player is "Pewter Consort";
			now skinname of player is "Pewter Consort";
			now cockname of player is "Pewter Consort";
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			now trixieexit is 1;
			end the game saying "You lost your mind while bound!";
		otherwise:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				say "[line break]";
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     You deliberately endeavour to free yourself of their hold, [if struggleatt is 1]barely making any progress, as you're quickly pulled back within their slick depths[otherwise]managing to make some headway before being pulled back, just a little bit more..[run paragraph on][end if].";
					now tempnum is 0;
					pewterdisengage;
					if bodyname of player is "Pewter Consort" and player is pure:
						if a random chance of 1 in 8 succeeds:
							infect;
					otherwise if a random chance of 1 in 5 succeeds:
						infect;
					wait for any key;
				otherwise:
					say "     You finally manage to pull yourself free and climb out of the pool. Crawling away and catching your breath, the lot of them appear too preoccupied with attending to each other to pursue you, allowing you to gather your things strewn about and get some additional distance. Eventually, you recover enough from the messy and exhausting ordeal to go about your business once more.";
					cleanboundmemory;
					now trixieexit is 1;
					follow the turnpass rule;
				next;
			if keychar in lower case exactly matches the text "a" or keychar in lower case exactly matches the text "2" or keychar in lower case matches the text "abide" or keychar in lower case matches the text " ":
				say "[line break]";
				say "     You choose to abide their hold, [one of]hissing and caressing you in approval[or]their continued affection arousing and influencing you further[or]absorbed in the frenzy of flesh and motion[at random].";
				say "[line break]";
				pewteroccupyroll;
				if bodyname of player is "Pewter Consort" and player is pure:
					if a random chance of 1 in 8 succeeds:
						infect;
				otherwise if a random chance of 1 in 5 succeeds:
					infect;
				wait for any key;
				next;
			say "Invalid action.";
			
pewterheadcap is a number that varies. [Dictates, via scale, how many consorts might occupy a body region]
pewterbodycap is a number that varies.
pewtergenitalcap is a number that varies.
pewterheadocc is a number that varies. [Indicates how many consorts are occupying a body region]
pewterbodyocc is a number that varies.
pewtercockocc is a number that varies.
pewtercuntocc is a number that varies.
pewterassocc is a number that varies.
pewterheadvar1 is a number that varies. [Indicates how many consorts are attending/tounging a body region]
pewterheadvar2 is a number that varies. [Indicates how many consorts are riding/fucking a body region]
pewtercockvar1 is a number that varies.
pewtercockvar2 is a number that varies.
pewtercuntvar1 is a number that varies.
pewtercuntvar2 is a number that varies.
pewterassvar1 is a number that varies.
pewterassvar2 is a number that varies.
scaledr is a number that varies. [Scale Diminishing Return, ensures larger players aren't completely overwhelmed]

to pewterlustsate:
	say "     Unable to hold back any longer, you cry out in bliss, ";
	if cocks of player > 0:
		if pewtercockocc > 0:
			if pewtercockocc > 1:
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar1 is 1]one[otherwise][pewtercockvar1][end if] of your dicks firing its [cum load size of player] load into [if pewtercockvar1 > 1]the consorts' attending maws[otherwise]the consort's attending maw[end if], the [if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if] unloaded into their rider[if pewtercockvar2 > 1]s[end if]";
				otherwise if pewtercockvar1 > 0:
					say "[if pewtercockvar1 is 1]one[otherwise][pewtercockvar1][end if] of your dicks firing its [cum load size of player] load into [if pewtercockvar1 > 1]the consorts' attending maws[otherwise]the consort's attending maw[end if]";
				otherwise:
					say "[if pewtercockvar2 is 1]one[otherwise][pewtercockvar2][end if] of your dicks firing its [cum load size of player] load into [if pewtercockvar2 > 1]the consort's eager ass[otherwise]the consort's eager ass[end if]";
			otherwise:
				if pewtercockvar1 > 0:
					say "[if cocks of player > 1]one of your dicks[otherwise]your dick[end if] firing its [cum load size of player] load into the consort's attending maw";
				otherwise:
					say "[if cocks of player > 1]one of your dicks[otherwise]your dick[end if] firing its [cum load size of player] load into the consort's eager ass";
			if cocks of player > pewtercockocc:
				say ", those unattended further sullying your slick surroundings";
		otherwise:
			say "unattended dick[smn] further sullying your slick surroundings";
	otherwise if cunts of player > 0:
		if pewtercuntocc > 0:
			if pewtercuntocc > 1:
				if cunts of player >= pewtercuntvar1 + pewtercuntvar2:			
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "the [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] of your cunts tightening around their invading tongues, as with the [if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if] being fucked";
					otherwise if pewtercuntvar1 > 0:
						say "the [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] of your cunts tightening around their invading tongues";
					otherwise:
						say "the [if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] of your cunts tightening around their invading dicks";
				otherwise:
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "your cunt[sfn] tightening around the [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] tounging [if cunts of player > 1]them[otherwise]it[end if], as with the [if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others [end if] fucking the doubtlessly strained thing[sfn]";
					otherwise if pewtercuntvar1 > 0:
						say "your cunt[sfn] tightening around the [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] tounging [if cunts of player > 1]them[otherwise]it[end if]";
					otherwise:
						say "your cunt[sfn] tightening around the [if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] fucking [if cunts of player > 1]them[otherwise]it[end if]";
			otherwise:
				if pewtercuntvar1 > 0:
					say "the[if cunts of player > 1] one[end if] cunt tightening around [if pewtercuntvar1 is 1]lone[otherwise][pewtercuntvar1][end if] tonguing it";
				otherwise:
					say "the[if cunts of player > 1] one[end if] cunt tightening around [if pewtercuntvar1 is 1]lone[otherwise][pewtercuntvar1][end if] fucking it";
		otherwise:
			say "unattended cunt[sfn] aching with overwhelming need.";
	otherwise:
		say "causing you to writhe in insatiable bliss";
	say ". Your own orgasm quickly sparks a cascade of cries and hisses, rippling outward until, in mere seconds, the rest of them begin to fire off. Your surroundings becoming rigid and firm, met with a hot rush of cum ";
	if pewterheadvar2 > 0:
		if pewtercuntvar2 > 0 and pewterassvar2 > 0:
			say "flooding your gullet, cunt[if cunts of player > 1 and pewtercuntvar2 > 1]s[end if], and ass, all at once until it sputters from your beleagured holes";
		otherwise if pewtercuntvar2 > 0:
			say "flooding your gullet and cunt[if cunts of player > 1 and pewtercuntvar2 > 1]s[end if] all at once until it sputters from your beleagured holes";
		otherwise if pewterassvar2 > 0:
			say "flooding your gullet and ass all at once until it sputters from your beleagured holes";
		otherwise:
			say "flooding your gullet[if pewterheadvar2 > 1] all at once until it sputters from your beleagured hole[end if]";
	otherwise if pewtercuntvar2 > 0:
		if pewterassvar2 > 0:
			say "flooding your ass and cunt[if cunts of player > 1 and pewtercuntvar2 > 1]s[end if] all at once until it sputters from your beleagured holes";
		otherwise:
			say "flooding your cunt[if cunts of player > 1 and pewtercuntvar2 > 1]s[end if][if pewtercuntvar2 > 1] all at once until it sputters from your beleagured hole[end if][if cunts of player > 1 and pewtercuntvar2 > 1]s[end if]";
	otherwise if pewterassvar2 > 0:
		say "flooding your bowels[if pewterassvar2 > 1] all at once until it sputters from your beleaguered hole[end if]";
	if pewterheadvar2 > 0 or pewtercuntvar2 > 0 or pewterassvar2 > 0:
		say ", the rest washing over you";
	otherwise:
		say "washing over your [bodytype of player] form, utterly drenching you in the sticky mess";
	say ".";
	say "     This persists for a few, fairly prolongued long minuets, as when some find bliss they have the effect of making those already-sated find theirs a second time. Eventually, things do calm down, but only so much that the motion returns to the status quo, ";
	if pewterheadocc + pewterbodyocc + pewtercockocc + pewtercuntocc + pewterassocc > 1:
		say "your attending consorts returning their primary attention back on you, ";
	otherwise if pewterheadocc + pewterbodyocc + pewtercockocc + pewtercuntocc + pewterassocc is 1:
		say "your attending consort returning his primary attention back on you, ";
	say "there's seemingly no end to their lust!";
	
to say pewtercharacterassess:
	if pewterheadocc is 0 and pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
		say "spared of any of their direct attention, though that will likely change very quickly";
	otherwise:
		if pewterheadocc > 0:
			if pewterheadocc is 1:
				say "made to attend to ";
				if pewterheadvar1 is 1:
					say "the embrace of one's lips upon your own, tongue impishly worming around in your maw";
				otherwise:
					say "one of the creature's dick lodged firmly in your maw, forcing you to taste its silvery pre";
			otherwise:
				say "split between attending ";
				if pewterheadvar1 is 1 and pewterheadvar2 is 1:
					say "the tongue of one creature and the dick of another, left only with the taste of silvery pre and saliva";
				otherwise if pewterheadvar1 is 2:
					say "the tongue of two creatures, their slick writhing organs tormenting you in unison";
			if (pewterbodyocc > 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0) or (pewterbodyocc is 0 and pewtercockocc > 0 and pewtercuntocc is 0 and pewterassocc is 0) or (pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc > 0 and pewterassocc is 0) or (pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc > 0):
				say " and ";
			otherwise if pewterbodyocc is 0 and pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
				say "";
			otherwise:
				say ", ";	
		if pewterbodyocc > 0:
			if pewtertorsosuppress is true:
				say "embraced by a consort, its digits slickly caressing your [bodytype of player] form";
			otherwise:
				say "suckled upon by [if pewterbodyocc is 1]one[otherwise][pewterbodyocc][end if] upon your teat[if pewterbodyocc > 1]s[end if], feeding and attending you";
			if (pewtercockocc > 0 and pewtercuntocc is 0 and pewterassocc is 0) or (pewtercockocc is 0 and pewtercuntocc > 0 and pewterassocc is 0) or (pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc > 0):
				say ", and ";
			otherwise if pewtercockocc is 0 and pewtercuntocc is 0 and pewterassocc is 0:
				say "";
			otherwise:
				say ", ";	
		if pewtercockocc > 0 or pewtercuntocc > 0 or pewterassocc > 0:
			say "made to writhe as ";
		if pewtercockocc > 0:
			if pewtercockocc > 1:
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar1 is 1]one[otherwise][pewtercockvar1][end if] of your dicks are sucked off, [if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if] being ridden";
				otherwise if pewtercockvar1 > 0:
					say "[if pewtercockvar1 is 1]one[otherwise][pewtercockvar1][end if] of your dicks are sucked off";
				otherwise:
					say "[if pewtercockvar2 is 1]one[otherwise][pewtercockvar2][end if] of your dicks are being ridden";
			otherwise:
				if pewtercockvar1 > 0:
					say "[if cocks of player > 1]one of your dicks are[otherwise]your dick is[end if] sucked off";
				otherwise:
					say "[if cocks of player > 1]one of your dicks are[otherwise]your dick is[end if] being ridden";
			if (pewtercuntocc > 0 and pewterassocc is 0) or (pewtercuntocc is 0 and pewterassocc > 0):
				say ", and ";
			otherwise if pewtercuntocc is 0 and pewterassocc is 0:
				say "";
			otherwise:
				say ", ";
		if pewtercuntocc > 0:
			if pewtercuntocc > 1:
				if cunts of player >= pewtercuntvar1 + pewtercuntvar2:			
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] of your cunts are being tongued, [if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if] being fucked";
					otherwise if pewtercuntvar1 > 0:
						say "[if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] of your cunts are being tongued";
					otherwise:
						say "[if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] of your cunts are being fucked";
				otherwise:
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "your cunt[if cunts of player > 1]s are[otherwise] is[end if] tongued by [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if], fucked by [if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if][if cunts of player > 1] as they share your [cunts of player] holes[end if]";
					otherwise if pewtercuntvar1 > 0:
						say "your cunt[if cunts of player > 1]s are[otherwise] is[end if] tongued by [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if]";
					otherwise:
						say "your cunt[if cunts of player > 1]s are[otherwise] is[end if] fucked by [if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if]";
			otherwise:
				if pewtercuntvar1 > 0:
					say "[if cunts of player > 1]one of [end if]your cunt[sfn] being tongued by [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if]";
				otherwise:
					say "[if cunts of player > 1]one of [end if]your cunt[sfn] being fucked by [if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if]";
			if pewterassocc > 0:
				say ", and ";
			otherwise:
				say "";
		if pewterassocc > 0:
			if pewterassocc > 1:
				if pewterassvar1 > 0 and pewterassvar2 > 0:
					say "your ass is rimmed by [if pewterassvar1 is 1]one[otherwise][pewterassvar1][end if] of them, [if pewterassvar2 is 1]one other[otherwise][pewterassvar2] others[end if] fucking it";
				otherwise if pewterassvar1 > 0:
					say "your ass is rimmed by [pewterassvar1] of them";
				otherwise:
					say "your ass is pounded by [pewterassvar2] of them";
			otherwise:
				if pewterassvar1 > 0:
					say "your ass is being rimmed by one of them";
				otherwise:
					say "your ass is being pounded by one of them";

to pewtercapassess:
	if scalevalue of player < 3:
		now pewterheadcap is 1;
		now pewterbodycap is 2;
		now pewtergenitalcap is 2;
		now scaledr is 3;
	otherwise if scalevalue of player is 3:
		now pewterheadcap is 2;
		now pewterbodycap is 2;
		now pewtergenitalcap is 3;
		now scaledr is 3;
	otherwise if scalevalue of player is 4:
		now pewterheadcap is 2;
		now pewterbodycap is 4;
		now pewtergenitalcap is 3;
		now scaledr is 2;
	otherwise:
		now pewterheadcap is 2;
		now pewterbodycap is 6;
		now pewtergenitalcap is 4;
		now scaledr is 1;
	if breast size of player is 0, now pewterbodycap is 1;
		
to pewteroccupyroll:
	if pewterheadcap > pewterheadocc and a random chance of 1 in 3 succeeds:
		pewterheadapply;
	otherwise if ((pewterbodycap > pewterbodyocc and pewtertorsosuppress is false) or (pewtertorsosuppress is true and pewterbodyocc is 0)) and a random chance of 1 in 2 succeeds:
		pewterbodyapply;
	otherwise if pewtergenitalcap > (pewtercockocc + pewtercuntocc + pewterassocc) and a random chance of 2 in 3 succeeds:
		pewtergenitalapply;
		
to pewterheadapply:
	If a random chance of 1 in 2 succeeds:
		if pewterheadocc is 0:
			say "     You feel the lips of one of the consort's against your own, his tongue [if hp of player < 1]pushing its way into[otherwise]flooding[end if] your mouth and [if hp of player < 1]forcing[otherwise]compelling[end if] you to reciprocate.";
		otherwise if pewterheadvar1 is 1:
			say "     A second creature comes to seek your tongue's affection, forcing your attention between both it and the other's, their twin, writhing organs quickly overwhelming you.";
		otherwise:
			say "     A second creature meets your head, it's tongue worming its way in, forcing your attention between attending him and the other's dick, quickly overwhelming you with a swill of saliva and and silvery precum.";
		increase pewterheadvar1 by 1;
	otherwise:
		if pewterheadocc is 0:
			say "     You're suddenly forced to contend with the insistent prodding of a consort's dick against your face, eventually [if hp of player < 1]forced[otherwise]compelled[end if] to open your mouth, immediately flooding your maw's confines and force you to taste it's heady, masculine flavour.";
		otherwise if pewterheadvar2 is 1:
			say "     A second dick is prodded against your face, forcing your attention between fellating it and the other's, the two oozing tools quickly making you dizzy with their taste and volume.";
		otherwise:
			say "     The dick of a second creature meets your head, the oozing organ forcing its way into your maw as it attends to the tongue of the first, quickly overwhelming you with a swill of saliva and and silvery precum.";
		increase pewterheadvar2 by 1;
	increase pewterheadocc by 1;

to pewterbodyapply:
	if pewtertorsosuppress is true:
		say "     You're met with the firm, cum-slicked caress of a consort's touch against your [bodydesc of player] form, his teasing caress further exacerbating your present arousal.";
	otherwise:
		if pewterbodyocc is 0:
			say "     You feel one of the consort's lips encircle your exposed nipples, teasing and suckling you, sustaining itself with your fluid whilst also teasing and arousing you.";
		otherwise:
			say "     Another beast moves to suckle one of your unattended teats, joining the [if pewterbodyocc is 1]one other[otherwise][pewterbodyocc] others[end if] already feasting upon you.";
	increase pewterbodyocc by 1;

to pewtergenitalapply:
	if cocks of player > 0 and ((anallevel is not 1 and a random chance of 1 in 2 succeeds) or (cunts of player > 0 and a random chance of 1 in 2 succeeds) or anallevel is 1) and cocks of player > pewtercockocc:
		if a random chance of 1 in 2 succeeds or cock length of player > 14:
			if pewtercockocc is 0:
				say "     You shudder with the sensation of a consort's tongue along the length of[if cocks of player > 1] one of[end if] your [cock size desc of player] dick[smn], his teasing only brief before his lips envelope its head, eager to taste your emergent sexual fluids as he continues to attend you.";
			otherwise:
				say "     Another consort moves to suck off ";
				if cocks of player - (pewtercockvar1 + pewtercockvar2) is 1:
					say "your lone, unattended dick";
				otherwise:
					say "one of your unattended dicks";
				say ", joining the ";
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar1 is 1]one other[otherwise][pewtercockvar1] others[end if] and the [if pewtercockvar2 is 1]one[otherwise][pewtercockvar2][end if] riding you";
				otherwise if pewtercockvar1 > 0:
					say "[if pewtercockvar1 is 1]one other[otherwise][pewtercockvar1] others[end if] attending you";
				otherwise:
					say "[if pewtercockvar2 is 1]one[otherwise][pewtercockvar2][end if] riding you";
				say ", all eager to milk you dry.";
			increase pewtercockvar1 by 1;
		otherwise:
			if pewtercockocc is 0:
				say "     You writhe with the sensation of a consort's toned ass grinding along the length of[if cocks of player > 1] one of[end if] your [cock size desc of player] dick[smn], his teasing only brief before he shoves its head past his tight anal ring, eager to take their new guest out for a ride.";
			otherwise:
				say "     Another consort moves to ride ";
				if cocks of player - (pewtercockvar1 + pewtercockvar2) is 1:
					say "your lone, unattended dick";
				otherwise:
					say "one of your unattended dicks";
				say ", joining the ";
				if pewtercockvar1 > 0 and pewtercockvar2 > 0:
					say "[if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if] and the [if pewtercockvar1 is 1]one[otherwise][pewtercockvar1][end if] sucking you off";
				otherwise if pewtercockvar2 > 0:
					say "[if pewtercockvar2 is 1]one other[otherwise][pewtercockvar2] others[end if] taking you";
				otherwise:
					say "[if pewtercockvar1 is 1]one[otherwise][pewtercockvar1][end if] sucking you off";
				say ", all eager to milk you dry.";
			increase pewtercockvar2 by 1;
		increase pewtercockocc by 1;
	otherwise if cunts of player > 0 and ((anallevel is 3 and a random chance of 1 in 2 succeeds) or anallevel is not 3):
		if a random chance of 1 in 2 succeeds:
			if pewtercuntocc is 0:
				say "     You suddenly feel one of the consort's tongue writhe its way past the supple folds of[if cunts of player > 1] one of[end if] your cunt[sfn], worming shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you and its saliva.";
			otherwise:
				if cunts of player > pewtercuntvar1 + pewtercuntvar2:
					say "     Another creature joins in on the fun, its tongue forcing its way into ";
					if cunts of player - (pewtercuntvar1 + pewtercuntvar2) is 1:
						say "your lone, unattended cunt";
					otherwise:
						say "one of your unattended cunts";
					say ", joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar1 is 1]one other[otherwise][pewtercuntvar1] others[end if] and the [if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] fucking you";
					otherwise if pewtercuntvar1 > 0:
						say "[if pewtercuntvar1 is 1]one other[otherwise][pewtercuntvar1] others[end if] tonguing you";
					otherwise:
						say "[if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] fucking you";
					say ", stuffing another of your holes.";
				otherwise:
					say "     Another creature joins in on the fun, its tongue forcing its way into[if cunts of player > 1] one of[end if] you're already-stuffed cunt[sfn], joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar1 is 1]one other[otherwise][pewtercuntvar1] others[end if] and the [if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] fucking you";
					otherwise if pewtercuntvar1 > 0:
						say "[if pewtercuntvar1 is 1]one other[otherwise][pewtercuntvar1] others[end if] tonguing you";
					otherwise:
						say "[if pewtercuntvar2 is 1]one[otherwise][pewtercuntvar2][end if] fucking you";
					say ", further putting a strain on your beleaguered hole[sfn].";
			increase pewtercuntvar1 by 1;
		otherwise:
			if pewtercuntocc is 0:
				say "     You suddenly feel one of the consort's dick squeeze its way past the supple folds of[if cunts of player > 1] one of[end if] your cunt[sfn], thrusting shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you.";
			otherwise:
				if cunts of player > pewtercuntvar1 + pewtercuntvar2:
					say "     Another creature joins in on the fun, its cock forcing its way into ";
					if cunts of player - (pewtercuntvar1 + pewtercuntvar2) is 1:
						say "your lone, unattended cunt";
					otherwise:
						say "one of your unattended cunts";
					say ", joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[otherwise][pewtercuntvar2] others[end if] and the [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] tonguing you";
					otherwise if pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[otherwise][pewtercuntvar2] others[end if] riding you";
					otherwise:
						say "[if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] tonguing you";
					say ", stuffing another of your holes.";
				otherwise:
					say "     Another creature joins in on the fun, its cock forcing its way into[if cunts of player > 1] one of[end if] you're already-stuffed cunt[sfn], joining the ";
					if pewtercuntvar1 > 0 and pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[otherwise][pewtercuntvar2] others[end if] and the [if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] tonguing you";
					otherwise if pewtercuntvar2 > 0:
						say "[if pewtercuntvar2 is 1]one other[otherwise][pewtercuntvar2] others[end if] riding you";
					otherwise:
						say "[if pewtercuntvar1 is 1]one[otherwise][pewtercuntvar1][end if] tonguing you";
					say ", further putting a strain on your stuffed hole[sfn].";
			increase pewtercuntvar2 by 1;
		increase pewtercuntocc by 1;
	otherwise:
		if a random chance of 1 in 2 succeeds and anallevel is not 1:
			if pewterassocc is 0:
				say "     You suddenly feel one of the consort's tongue force its way past your anal ring, worming shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you and its saliva.";
			otherwise:
				say "     Another creature joins in on the fun being had with your tailpipe, squeezing its writhing tongue past the ";
				if pewterassvar1 > 0 and pewterassvar2 > 0:
					say "[if pewterassvar1 is 1]one other[otherwise][pewterassvar1] others[end if] and the [if pewterassvar2 is 1]one[otherwise][pewterassvar2][end if] fucking you";
				otherwise if pewterassvar1 > 0:
					say "[if pewterassvar1 is 1]one other[otherwise][pewterassvar1] others[end if] attending you";
				otherwise:
					say "[if pewterassvar2 is 1]one[otherwise][pewterassvar2][end if] fucking you";
				say ", further putting a strain on your stuffed hole.";
			increase pewterassvar1 by 1;
		otherwise:
			if pewterassocc is 0:
				say "     You suddenly feel one of the consort's dick squeeze its way past your anal ring, thrusting shamelessly into your tight hole, its motion slicked by the overwhelming prevalence of sexual fluids encompassing you.";
			otherwise:
				say "     Another creature joins in on the fun being had with your tailpipe, squeezing its cock past the ";
				if pewterassvar1 > 0 and pewterassvar2 > 0:
					say "[if pewterassvar2 is 1]one other[otherwise][pewterassvar2] others[end if] and the [if pewterassvar1 is 1]one[otherwise][pewterassvar1][end if] tonguing you";
				otherwise if pewterassvar2 > 0:
					say "[if pewterassvar2 is 1]one other[otherwise][pewterassvar2] others[end if] riding you";
				otherwise:
					say "[if pewterassvar1 is 1]one[otherwise][pewterassvar1][end if] tonguing you";
				say ", further putting a strain on your stuffed hole.";
			increase pewterassvar2 by 1;
		increase pewterassocc by 1;

to pewterlustapply:
	if pewterheadocc > 0:
		if pewterheadvar1 > 0:
			increase lustatt by ((pewterheadvar1 * (scaledr + 1)) + lustadjust);
		if pewterheadvar2 > 0:
			increase lustatt by ((pewterheadvar2 * (scaledr + 2)) + (lustadjust * 2));
	if pewterbodyocc > 0:
		increase lustatt by ((pewterbodyocc * (scaledr + 2)) + lustadjust);
	if pewtercockvar1 > 0:
		increase lustatt by ((pewtercockvar1 * ((scaledr + 1) * 2)) + (lustadjust * 3));
	if pewtercockvar2 > 0:
		increase lustatt by ((pewtercockvar2 * ((scaledr + 2) * 2)) + (lustadjust * 3));
	if pewtercuntvar1 > 0:
		increase lustatt by ((pewtercuntvar1 * ((scaledr + 1) * 2)) + (lustadjust * 3));
	if pewtercuntvar2 > 0:
		increase lustatt by ((pewtercuntvar2 * ((scaledr + 1) * 2)) + (lustadjust * 3));
	if pewterassvar1 > 0:
		increase lustatt by ((pewterassvar1 * (scaledr + 3)) + (lustadjust * 2));
	if pewterassvar2 > 0:
		increase lustatt by ((pewterassvar2 * (scaledr + 3)) + (lustadjust * 2));

to pewterdisengage:
	if pewterheadocc > 0 and a random chance of 1 in 4 succeeds:
		say "     [if tempnum is 1]In the frenzy[otherwise]With some effort[end if], you're jostled free of one of the consorts attending your head.";
		if pewterheadvar1 > 0 and (pewterheadvar2 is 0 or a random chance of 1 in 2 succeeds):
			decrease pewterheadvar1 by 1;
		otherwise:
			decrease pewterheadvar2 by 1;
		decrease pewterheadocc by 1;
	otherwise if pewterbodyocc > 0 and a random chance of 1 in 3 succeeds:
		say "     [if tempnum is 1]In the frenzy[otherwise]With some effort[end if], you're jostled free of one of the consorts attending your torso.";
		decrease pewterbodyocc by 1;
	otherwise if (pewtercockocc + pewtercuntocc + pewterassocc) > 0 and a random chance of 1 in 2 succeeds:
		if pewtercockocc > 0 and ((pewtercuntocc is 0 and pewterassocc is 0) or (pewtercuntocc is 0 and a random chance of 1 in 2 succeeds) or (pewterassocc is 0 and a random chance of 1 in 2 succeeds) or (pewterassocc > 0 and pewtercuntocc > 0 and a random chance of 1 in 3 succeeds)):
			say "     [if tempnum is 1]In the frenzy[otherwise]With some effort[end if], you're jostled free of one of the consorts attending your cock.";
			if pewtercockvar1 > 0 and (pewtercockvar2 is 0 or a random chance of 1 in 2 succeeds):
				decrease pewtercockvar1 by 1;
			otherwise:
				decrease pewtercockvar2 by 1;
			decrease pewtercockocc by 1;		
		otherwise if pewtercuntocc > 0 and (pewterassocc is 0 or a random chance of 1 in 2 succeeds):
			say "     [if tempnum is 1]In the frenzy[otherwise]With some effort[end if], you're jostled free of one of the consorts attending your cunt.";
			if pewtercuntvar1 > 0 and (pewtercuntvar2 is 0 or a random chance of 1 in 2 succeeds):
				decrease pewtercuntvar1 by 1;
			otherwise:
				decrease pewtercuntvar2 by 1;
			decrease pewtercuntocc by 1;		
		otherwise:
			say "     [if tempnum is 1]In the frenzy[otherwise]With some effort[end if], you're jostled free of one of the consorts attending your ass.";
			if pewterassvar1 > 0 and (pewterassvar2 is 0 or a random chance of 1 in 2 succeeds):
				decrease pewterassvar1 by 1;
			otherwise:
				decrease pewterassvar2 by 1;
			decrease pewterassocc by 1;		
				
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Pewter Consort";
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
	now ass change entry is "a long tail sprouts from it. Fairly strong and prehensile, it sings as it's lashed through the air.";
	now cock change entry is "it tingles with a strange sensation. Checking it out, it appears to be strangely human, but the change compels it to slightly ooze from its uncut head, your seed taking on a silvery appearance";
	now str entry is 14; [14]
	now dex entry is 17; [17]
	now sta entry is 14; [14]
	now per entry is 13; [13]
	now int entry is 13; [13]
	now cha entry is 8; [8]
	now sex entry is "Male";
	now hp entry is 45; [45]
	now lev entry is 6; [6]
	now wdam entry is 6; [6]
	now area entry is "Capitol";
	now cocks entry is 1;	
	now cock length entry is 9;	
	now cock width entry is 6;	
	now breasts entry is 0;		
	now breast size entry is 0;	
	now male breast size entry is 0;    
	now cunts entry is 0;		
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 45;		
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;	
	now body descriptor entry is "[one of]lean[or]feral[or]bestial[at random]";	
	now type entry is "[one of]feral[or]bestial[at random]";	
	now magic entry is false;		
	now resbypass entry is false;		
	now non-infectious entry is false;
	blank out the nocturnal entry;
	now altcombat entry is "default";
	
to say consortfacechange:
	if consortinsight is 0:
		say "the infection overtakes it. All facial features save for your mouth meld into it, ";
		if boundstate is true:
			say "your sight going from darkness to an overwhelming wave to vivid colours, your rounded and smooth head fondled by the creatures.";
		otherwise:
			say "leaving your sight in utter blackness and compelling you to fondle your rounded and smooth head. In a scant few seconds, your sight returns to you, but the world around you is now desaturated to the point of being almost entirely gray; however, when you look at your hands they shimmer and glow with a shifting cascade of colours.";
		now consortinsight is 1;
		say "     From what you can gather, this strain can somehow sense the emotions of a living thing";
		if boundstate is true:
			say ". The way it radiates from the writhing bodies surrounding you is overwhelming, making it even more difficult to keep a clear head, exacerbated by the faintly reflective surface of their flesh and their silvery seed";
			now consortinsight is 2;
		otherwise:
			say ". The way it radiates from others is strangely affecting, making it difficult for you not to obsessively fondle your head in idle revels of your own radiance";
		if skinname of player is "Pewter Consort" and consortinsight is not 2:
			say ". You find this quickly exacerbated by your faintly metallic skin, which seems to magnify the effect. It takes you a moment to control yourself";
			now consortinsight is 2;
	otherwise:
		say "the infection overtakes it. All facial features save for your mouth meld into it, ";
		if boundstate is true:
			say "your sight going from darkness to an overwhelming wave to vivid colours, your rounded and smooth head fondled by the creatures and exposed once more to their strange empathy";
		otherwise:
			say "leaving your sight in utter blackness and compelling you to fondle your rounded and smooth head. In a scant few seconds, your sight returns to you, exposing you once more to the strange and empathic senses of these creatures";
		if skinname of player is "Pewter Consort" and consortinsight is not 2:
			say ". You find this quickly exacerbated by your faintly metallic skin, which seems to magnify the effect. It takes you a moment to control yourself";
			now consortinsight is 2;

to say consortskinchange:
	say "it begins to tingle with the infection's influence. Your skin takes on a gray and faintly metallic appearance, shimmering in the light";
	if facename of player is "Pewter Consort" and consortinsight is not 2:
		say ". You're nearly taken aback by how much this appears to exacerbate your peculiar sense of sight, suggesting that reflective surfaces magnify your senses somehow";
		now consortinsight is 2;

to say consortskinentry:
	if facename of player is "Pewter Consort":
		say "faintly metallic, sensory amplifying";
	otherwise:
		say "gray, faintly metallic";

Section 3 - Endings

when play ends:
	if bodyname of player is "Pewter Consort":
		if humanity of player is less than 10:
			if boundstate is true:
				say "     Unable to retain your humanity after being subjected to this perpetual orgy, it eventually becomes all you know, subjected to a seemingly endless cascade of colours and sensation in an almost hypnotic fashion, seemingly sustained by their collective radiance and their sexual fluids. You never manage to leave and observe the fate of the world outside, but at this point it seems of little issue to you...";
			otherwise:
				say "     Overtaken by your infection's control, you lose track of all prior thought, relegating yourself to aimlessly wandering the streets in search of company. Eventually, you find someone to revel with in their warmth. They seem to really enjoy playing hide and seek, but when you finally catch them, it's naught but a few moments of roughhousing before you can make them moan and writhe until they wholly radiate bliss.";
				say "     After playing this game with them a number of times, they grow inclined to join you on your little adventure, eager to find others to play with as much as you…";
		otherwise:
			say "     Your feral, slender body doesn't seem to be regarded very highly by the uninfected, once the military finds and processes you. Once you're inevitably let free back into civilized society, it's a bit hard to maneuver in a world that only ever looks down upon you--both figuratively and literally--but you eventually manage to get by.";
	if facename of player is "Pewter Consort" and humanity of player > 9:
		say "     People are particularly detracted by your seemingly alien, eyeless head, but it eventually proves itself to be somewhat advantageous once you become more accustomed to it and what certain colours mean. You gain a fair measure of coin on the side acting as a lie detector, and it certainly makes your more wanton misadventures all the more exciting.";
				
Pewter Consort ends here.
