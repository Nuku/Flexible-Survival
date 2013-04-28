Version 8 of Wyvern For FS by Damaged begins here.
[ Version 8 - Complete overhaul via Blue Bishop. Implementation overseen and level variance coded by Stripes. ]

"Adds a Wyvern to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 

Section 2 - Monster Insertion

WYVGEN is a number that varies; [Wyvern Gender, 0 = male, 1 = female]
WYVLEV is a number that varies; [Wyvern Level, 0 = low, 1 = high]
WYVSF is a number that varies. WYVSF is usually 0; [Wyvern Succumb Fate, 0 = not chosen, 1 = male, 2 = random, 3 = female]

to say WYVATK:
	if WYVLEV is 0:
		say "[one of]Again the beast sprays you, slowly building up more and more layers of the goop[or]More of the adhesive, thickening stuff hits you.  You can barely stand as the weight starts to drag you down[or]You are assaulted by a volley of the wyvern's goop[at random].";
	otherwise:
		say "The [one of]wyvern[or]massive beast[at random]  [one of]slashes at you with it's vicious wing-talons[or]swipes at you with it's impressive tail[or]bites at you with its fierce teeth[or]assaults you with a barrage of its goop[at random]";
		
to say WYVDEF:
	if WYVLEV is 0:
		say "You manage to pull free of the goop, granting you the chance to retreat into one of the nearby buildings. You listen on, for a while, as the beast tries to break through these confines, the sound of its presence dying down before it eventually retreats entirely, leaving you to go about your business once more.";
	otherwise:
		say "With one final blow, you manage to fell the massive wyvern, offering up one final cry before it falls to the earth, too weak to contest your will any further. Satisfied in your victory, you depart from the occurence entirely.";

to say WYVVIC:
	if hp of player > 0:
		say "     You decide surrender is the best course of action, submitting yourself to your bestial assailant's whims. [if WYVGEN is 0]He[otherwise]She[end if] doesn't really quite regard this gesture--either that [if WYVGEN is 0]he[otherwise]she[end if] doesn't trust you, [if WYVGEN is 0]he[otherwise]she[end if] doesn't care, or [if WYVGEN is 0]he[otherwise]she[end if]'s simply not all that bright--you are struck with a hail of the wyvern's goop, pinning you to the ground.";
	otherwise:
		if WYVLEV is 0:
			say "     Too drained to contest [if WYVGEN is 0]his[otherwise]her[end if] will any further, the wyvern would pin you down to the ground entirely with [if WYVGEN is 0]his[otherwise]her[end if] goop, any further struggles ultimately proving wholly impotent.";
		otherwise:
			say "     Tired of your impudence, [if WYVGEN is 0]he[otherwise]she[end if] strikes you down one last time, bringing you too your knees before [if WYVGEN is 0]he[otherwise]she[end if] pins you to the earth with [if WYVGEN is 0]his[otherwise]her[end if] goop, any further struggles ultimately proving wholly impotent.";
	if WYVGEN is 0:
		if "Touched by Madness" is listed in feats of player and "Mpreg" is listed in feats of player and (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 4 succeeds)) and scalevalue of player < 4:
			say "     He advances upon your vulnerable frame, looking down upon you with an oddly curious expression. Inflicted by some twisted compulsion, he would size you up before she starts making a more substantive hacking sound, followed by a flood of the strange fluid escaping from his lips, onto you.";
			say "     [if hp of player < 1 and player is not submissive]Purely by instinct, you try to pull yourself free and liberate you from this twisted fate, acrid substance clinging to your every inch; however, it is for naught, as this too soon[otherwise]Against what better judgment you might of had, you let the acrid substance wash over you, it's thick, slimy consistency caressing every inch of your exposed for until it[end if] hardens around you, encasing you entirely. Your confines are quickly pulled from the ground and tussled around a bit, as if by inspection, before the wyvern relents. Muffled, bestial groans emitted from your captor, you're forced to watch through your translucent prison as the [if daytimer is day]daylight[otherwise]night's lights[end if] are eclipsed by utter blackness, an overwhelming heat enveloping you before your consciousness fades entirely";
			if waiterhater is 0, wait for any key;
			say "     You eventually come to, still encased in the all-too-familiar prison of times prior. Made brittle through exposure, it takes little effort to break free of these twisted confines, exposing you to the open air once more. Observing your surroundings, you can find your prior captor off in the distance, compelled to watch on as she would confine a similar victim, egg-shaped capsule positioned between the beast's powerful thighs before slowly disappearing within the depths of his male vent.";
			say "     [if hp of player < 1 and player is not submissive]You shudder to think of the poor fellow who must now share your fate before you quickly retreat, lest you find yourself at the beast's mercy once more[otherwise]You're forced to ponder these implications, the infectious influence of this twisted 'matron' perhaps getting the better of you, before you decide to depart[end if].";
		otherwise if (cunt length of player > 19 and scalevalue of player > 3) or ((cunt length of player > 19 and scalevalue of player is 3) and (("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 2 succeeds))):
			say "     Approaching you, you're given a rather intimate view of the wyvern and his increasingly apparent arousal, massive cock emerging from it's chitinous scaled slit. Intent on mounting you whilst you're pinned to the ground, as you are, the beast would ensure his entry point is exposed before he [if scalevalue of player is 5]climbs[otherwise]crawls[end if] on top of you, blunt dick testing [if cunts of player > 1]one of your vulnerable cunts[otherwise]your vulnerable cunt[end if].";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you would struggle against your bindings and the weight of your reptilian assailant, much to little avail,[otherwise]Thick, slimy tongue caressing your helpless frame, your reptilian companion would offer up crude affection[end if] before he begins the rough ritual of forcing his dick past the folds of your flesh. Tainted cries of harsh lust escaping your lips, his lack of regard in favour of his wanton need a telling show of his brutish demeanour.";
			say "     Thick, coarse scales abrasively grinding against your bound, [bodytype of player] form, he's quite intent on getting the massive thing all the way in there, and ";
			if lust of player > 33:
				say "it's not long before you cry out in orgasm, [if cocks of player > 1]cocks smearing their load against both your torsos[otherwise if cocks of player > 0]cock smearing its load across both your torsos[otherwise]needy hole throbbing against it's invading organ[end if]. He doesn't really regard this, and would continue fucking you for a good while before you must abide an ear-splitting roar from the wyvern, followed by his thick, virile seed flooding your beleaguered depths until you are [if scalevalue of player < 5]quickly bloated by[otherwise]made heavy with[end if] it.";
			otherwise:
				say "after a good long while you find you must abide an ear-splitting roar from the wyvern followed by his thick, virile seed flooding your beleaguered depths until you are [if scalevalue of player < 5]quickly bloated by[otherwise]made heavy with[end if] it. In the wake of this, you are driven to cry out in orgasm, [if cocks of player > 1]cocks smearing their load against both your torsos[otherwise if cocks of player > 0]cock smearing its load across both your torsos[otherwise]needy hole milking it's invading organ of every last drop[end if], not that he regards this much.";
				say "     You're eventually [if hp of player < 1 and player is not submissive]spared[otherwise]relinquished[end if] of the beast's countenance, rather harshly pulling his dick free of your used cunt before taking off to the air, leaving you in his wake. You eventually manage to pull the goop free of your arms and recover from the encounter, compelling you to move on from it.[impregchance]";
		otherwise if "Less Anal" is not listed in feats of player and ((cunts of player > 0 and "More Anal" is listed in feats of player) or cunts of player is 0) and ((scalevalue of player is 3 and "Twisted Capacity" is listed in feats of player and (("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 2 succeeds))) or (scalevalue of player > 3 and ("More Anal" is listed in feats of player or "Mpreg" is listed in feats of player))):
			say "     Approaching you, you're given a rather intimate view of the wyvern and his increasingly apparent arousal, massive cock emerging from it's chitinous scaled slit. Intent on mounting you whilst you're pinned to the ground, as you are, the beast would ensure his entry point is exposed before he [if scalevalue of player is 5]climbs[otherwise]crawls[end if] on top of you, blunt dick testing your vulnerable anal ring.";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you would struggle against your bindings and the weight of your reptilian assailant, much to little avail,[otherwise]Thick, slimy tongue caressing your helpless frame, your reptilian companion would offer up crude affection[end if] before he begins the rough ritual of forcing his dick into your pucker. Tainted cries of harsh lust escaping your lips, his lack of regard in favour of his wanton need a telling show of his brutish demeanour.";
			say "     Thick, coarse scales abrasively grinding against your bound, [bodytype of player] form, he's quite intent on getting the massive thing all the way in there[if scalevalue of player is 3]--even if you quickly begin to bulge with its occupancy[end if], and ";
			if lust of player > 33 and (Cocks of player > 0 or cunts of player > 0):
				say "it's not long before you cry out in orgasm, [if cocks of player > 1]cocks smearing their load against both your torsos[otherwise if cocks of player > 0]cock smearing its load across both your torsos[otherwise]neglected cunt[sfn] dripping down onto the invading organ[end if]. He doesn't really regard this, and would continue fucking you for a good while before you must abide an ear-splitting roar from the wyvern, followed by his thick, virile seed flooding your beleaguered depths until you are [if scalevalue of player < 5]quickly bloated by[otherwise]made heavy with[end if] it.";
			otherwise:
				say "after a good long while you find you must abide an ear-splitting roar from the wyvern followed by his thick, virile seed flooding your beleaguered depths until you are [if scalevalue of player < 5]quickly bloated by[otherwise]made heavy with[end if] it";
				if cocks of player > 0 or cunts of player > 0:
					say ". In the wake of this, you are driven to cry out in orgasm, [if cocks of player > 1]cocks smearing their load against both your torsos[otherwise if cocks of player > 0]cock smearing its load across both your torsos[otherwise]neglected cunt[sfn] dripping down onto the invading organ[end if], not that he regards this much.";
				otherwise:
					say ". Without an outlet, you are forced to struggle against this twisted, wanton fervor, not that he would regard your torment.";
			say "     You're eventually [if hp of player < 1 and player is not submissive]spared[otherwise]relinquished[end if] of the beast's countenance, rather harshly pulling his dick free of your used ass before taking off to the air, leaving you in his wake. You eventually manage to pull the goop free of your arms and recover from the encounter, compelling you to move on.[mimpregchance]";
		otherwise if scalevalue of player < 3:
			say "     The beast would circle around your for a moment, looking you over before deciding what fate he might subject you to. Your bindings prevent you from getting a good view of him for a moment, and you are only met with the wyvern's shadow before you're face is prodded by his soft, quickly growing malehood, clearly intent on having you suck him off as the rest of him [if scalevalue of player is 5]climbs on top of[otherwise]moves over[end if] you.";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you try to pull away from the pre-slicked, needy cock, but this only encourages him to be more insistent on thrusting it upon you, until you ultimately concede to engulf its tip without your mouth[otherwise]Against any better judgment you might have had, you immediately engulf the pre-slicked, needy thing with your mouth, the creature deeply rumbling in lustful approval to your obliging inclination[end if]. Organ growing more and more against your hold, [if scalevalue of player is 5]he shows no shame in exploiting your impressive size when he starts plunging it deeper into your quickly stuffed mouth[otherwise]it becomes increasingly difficult to handle, not that this would stop him from trying to forcing it in deeper[end if], offering up little regard for your well being.";
			say "     It's not long before the beast roars out, beleaguered gullet immediately flooded with his this thick, musky load, [if scalevalue of player is 5]forcing you to swallow every last drop[otherwise]quickly spurting free of your hold and against your exposed body.[end if]. Satisfied, he eventually does pull himself free of you, not giving you much regard beyond his need before taking flight once more. After some time you do manage to free yourself of your bindings, though handling your [if scalevalue of player < 5]cum-soaked form and [end if]lust-addled mind is another matter altogether.";
		otherwise:
			say "     The beast approaches his new captive, thick tongue exposed by his gaping maw; hungry look in his eye, it's would fully elucidate upon what fate it has in store for you. Slick organ moving to caress your exposed body, [if hp of player < 1 and player is not submissive]you endeavour to free yourself once more of your primal bindings, to little avail[otherwise]accepting your troubling circumstance, you're forced to gaze into the fleshy abyss before you, massive portal begging that you might abide it[end if]. Showered by his hot, acrid breath, his saliva appears to dissolve the goop, but this liberation is a false one, as it's quickly traded with his scaled lips.";
			say "     Light slitted through his only slightly agape mouth, it's closure prevented by your lower, engulfed half, he would offer you the smallest mercy by not subjecting you to his savage teeth, for what good it might merit. You must contend with the embrace of these slick walls; such fleshy confines eager to accept your imposed occupancy, he would merely raise his head, letting gravity set your destination, until only slick heat and darkness remains.";
			say "     Descent hastened by this slippery prison, you are eventually pushed into the the belly of this beast. [if hp of player < 1 and player is not submissive]Desperate struggles lost in the wake of your fading consciousness[otherwise]As your vision begins to fade[end if], you can feel yourself tussled about, the wyvern no doubt taking flight again, satisfied with its [if scalevalue of player is 3]meal[otherwise]snack[end if].";
			if waiterhater is 0, wait for any key;
			say "     Eventually you come to, finding yourself back outside, in the city, covered in a mess of saliva and goop. Though your captor's intent might have been more infectious, you can't help but feel considerably drained by the encounter. You eventually clean yourself off and find where you are exactly before returning from whence you came.";
			increase hunger of player by 7;
			increase thirst of player by 5;
	otherwise:
		if "Touched by Madness" is listed in feats of player and ((scalevalue of player is 3 and "Twisted Capacity" is listed in feats of player) or scalevalue of player < 3) and (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 4 succeeds)):
			say "     As she would advance upon you, the beast would behave somewhat oddly, as if compelled by an otherworldly force. Her approach reveals she is already heavy with eggs, making you wonder [if scalevalue of player is 3]how she'd exactly intends to fit you in there[otherwise]why she'd bother dealing with you in the first place[end if]. [if scalevalue of player is 3]Moving over[otherwise]Climbing on top of[end if] you, Bestial vent poised against [if cunts of player > 1 and cunt length of player > 14 and anallevel is not 3]one of your exposed cunts[otherwise if cunts of player > 0 and cunt length of player > 14 and anallevel is not 3]your exposed cunt[otherwise]anal ring[end if], her pained low grunts elucidate on her twisted intent.";
			if cunts of player > 0 and cunt length of player > 14 and "More Anal" is not listed in feats of player:
				say "     Hardened surface of her emergent shell pushing against the [cunt size desc of player] hole, you find yourself quickly strained to abide to rapidly growing intrusion as it's slowly plunged into your depths. Scaled, rough frame trembling against yours, the wyvern is very intent on forcing you to abide every rough bump and imperfection of the makeshift prison she would have you carry.";
				if scalevalue of player is 5 and cunt length of player > 20:
					say "     You could wager that the worst is over, tapered conclusion of the egg inviting your stuffed portal to pull the remainder in your depths. However, it's soon made clear that the beast isn't done with you yet, and you quickly find yourself contending with a second, no doubt intent on exploiting your higher capacity. This second assault is certainly easier for you to engulf, but that is little reassurance to the fact that you are now encumbered with two of the massive things, their oppressive occupancy visibly bloating you.";
				otherwise:
					say "     Thankfully, you can be safe in assuming that the worst is over, tapered conclusion of the egg inviting your stuffed portal to pull the remainder in your depths. The beast isn't quite satisfied yet, and would thrust her tail upon your stuffed hole, pushing your occupant until it penetrates your cervix, insinuating that you are her egg's twisted mother. [if scalevalue of player is 3]By this point you're practically immobile with the thing, substantially [otherwise]You struggle to retain clarity as you contend with your now-bulging frame,[end if] bloated by this occupant.";
			otherwise:
				say "     Hardened surface of her emergent shell pushing against your tailpipe, you find yourself quickly strained to abide to rapidly growing intrusion as it's slowly plunged into your depths. Scaled, rough frame trembling against yours, the wyvern is very intent on forcing you to abide every rough bump and imperfection of the makeshift prison she would have you carry.";
				if scalevalue of player is 5 and "Twisted Capacity" is listed in feats of player:
					say "     You could wager that the worst is over, tapered conclusion of the egg inviting your stuffed hole to pull the remainder into your bowels. However, it's soon made clear that the beast isn't done with you yet, and you quickly find yourself contending with a second, no doubt intent on exploiting your higher capacity. This second assault is certainly easier for you to engulf, but that is little reassurance to the fact that you are now encumbered with two of the massive things, their oppressive occupancy visibly bloating you.";
				otherwise:
					say "     Thankfully, you can be safe in assuming that the worst is over, tapered conclusion of the egg inviting your stuffed hole to pull the remainder into your bowels. The beast isn't quite satisfied yet, and would thrust her tail upon your stuffed ring, pushing the object further down your labyrinth, intent on making its removal even more difficult for you. [if scalevalue of player is 3]By this point you're practically immobile with the thing, substantially [otherwise]You struggle to retain clarity as you contend with your now-bulging frame,[end if] bloated by this occupant.";
			say "     Wholly satisfied with what she has wrought, she pulls off of you, departing into the air once more. Freeing yourself of your bindings is one matter, the tainted burden you bear is another. Squatted down in the open area, to at odds with your circumstance to find embarrassment for them, you do manage to";
			if cunts of player > 0 and cunt length of player > 14 and "More Anal" is not listed in feats of player:
				if scalevalue of player is 5 and cunt length of player > 20:
					say "lay both of the eggs after some";
				otherwise:
					say "lay the egg after [if scalevalue of player is 3]a substantial amount of[otherwise]some[end if]";
			otherwise:
				if scalevalue of player is 5 and "Twisted Capacity" is listed in feats of player:
					say "'lay' both of the eggs after some";
				otherwise:
					say "'lay' the egg after [if scalevalue of player is 3]a substantial amount of[otherwise]some[end if]";
			say "effort, [if scalevalue of player is 3]brutally[otherwise]very[end if] sore after the whole endeavour. Looking at them now, they appear to be stirring, no doubt roused by this particular ritual, and you set yourself to hobble off before you must contend with them as well, no doubt quite aroused by the whole venture[if hp of player < 1 and player is not submissive], much in spite your better judgment[end if].";
		otherwise if (cock length of player > 14 and scalevalue of player > 3) or ((cock length of player > 14 and scalevalue of player is 3) and (("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 2 succeeds))):
			say "     Deep rumbles, illuminations of wanton hunger, she would approach you. With little regard for your comfort, she would clear anything that might obstruct her need before you're forced to contend with her tongue's perverse caress across your exposed [if cockname of player is listed in infections of Internallist]male slit[otherwise]cock[smn][end if]. [if hp of player < 1 and player is not submissive]Involuntary moans of twisted pleasure, you find it difficult to contend[otherwise]You're compelled to moan audibly in response to[end if] the beast's tainted affections, driving you fully aroused with little effort.";
			say "     Satisfied, she would [if scalevalue of player is 5]climb on top of[otherwise]set herself over[end if] you, her efforts to line up with [if cocks of player > 1]one of your dicks[otherwise]your dick[end if] with her reptilian vent is fairly clumsy--not that you could help her[if hp of player < 1 and player is not submissive] if you even wanted to[end if]--before she successfully sinks its head into the depths of her bestial hole. By this point, she offers little pretense for restrain before wholly abusing you, riding you fast and hard with no regard for what input you might offer up, frequently nipping you, as if you demand your release.";
			say "     [if libido of player > 50]Almost immediately[otherwise]Soon enough[end if] you groan out in beleaguered bliss, [cum load size of player] flooding her demanding depths[if cocks of player > 2], exposed cocks staining the two of you with a portion of it[otherwise if cocks of player is 2], exposed cock staining the two of you with a portion of it[end if]. In the wake of this, you must abide your screeching roar, her own orgasm dependant on yours, that she might milk you for every last drop you might offer her. It's but a moments rest before she wrenches herself free of you, briefly stumbling about before she takes flight once more, leaving you in her wake.";
			say "     You eventually manage to pull yourself free of the bindings, [if cocks of player > 1]taking a moment to clean yourself off of your own seed[otherwise]gathering yourself for a moment[end if] before departing from this circumstance, no doubt quite sore from the whole ordeal.";
		otherwise if scalevalue of player > 3:
			say "     The beast would circle around your for a moment, looking you over before deciding what fate she might subject you to. Your bindings prevent you from getting a good view of her for a moment before she [if scalevalue of player is 5]climbs on top of[otherwise]moves over[end if] you, chitinous, hard scales of her bestial vent grinding against the side of your face, clearly intent on having you pleasure herself.";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you try to pull away from the dripping, needy portal, but this only encourages her to be more insistent on thrusting it upon you, until you ultimately concede to oblige, thrusting your tongue into her foreboding depths[otherwise]Against any better judgment you might have had, you immediately thrust your tongue upon her curious depths, the creature deeply rumbling in tainted approval to your obliging inclination[end if]. Face becoming increasingly doused by her wanton sex, [if scalevalue of player is 5]Your thick organ is quite effective at pleasing the beast, compelling her to press it harder against you[otherwise]you feel a little ill-equipped to handle this massive beast, not that she would relent in thrusting it against you[end if], offering up little regard for your well being.";
			say "     In due time you're rewarded by the beast's loud roars, beleaguered face drenched in her tainted honey, [if scalevalue of player is 5]forced to consume the flood lest it coat the rest of you[otherwise]quickly followed by the rest of your torso[end if]. Satisfied, she eventually does pull herself free of you, not giving you much regard beyond her need before taking flight once more. You eventually manage to free yourself of the goop bindings, though handling your [if scalevalue of player < 5]fluid-soaked form and [end if]lust-addled mind is another matter altogether.";
		otherwise:
			say "     She advances upon your vulnerable frame, looking down upon you with a briefly curious expression. She would inflict this ritual of sizing you up before she starts making a more substantive hacking sound, followed by a flood of the strange fluid escaping from her lips, onto you.";
			say "     [if hp of player < 1 and player is not submissive]Purely by instinct, you try to pull yourself free and liberate you from this twisted fate, acrid substance clinging to your every inch; however, it is for naught, as this too soon hardens around you[otherwise]Against what better judgment you might of had, you let the acrid substance wash over you, it's thick, slimy consistency caressing every inch of your exposed for until it hardens around you[end if], encasing you entirely. Your confines are quickly pulled from the ground and tussled around a bit, as if by inspection, before the wyvern relents. Muffled, bestial groans emitted from your captor, you're forced to watch through your translucent prison as the [if daytimer is day]daylight[otherwise]night's lights[end if] are eclipsed by utter blackness, an overwhelming heat enveloping you before your consciousness fades entirely.";
			infect;
			if waiterhater is 0, wait for any key;
			say "     You eventually come to, still encased in the all-too-familiar prison of times prior. Made brittle through exposure, it takes little effort to break free of these twisted confines, exposing you to the open air once more. Observing your surroundings, you can find your prior captor off in the distance, compelled to watch on as she would confine a similar victim, egg-shaped capsule positioned between the beast's powerful thighs before slowly disappearing within the depths of her bestial vent.";
			say "     [if hp of player < 1 and player is not submissive]You shudder to think of the poor fellow who must now share your fate before you quickly retreat, lest you find yourself at the beast's mercy once more[otherwise]You're forced to ponder these implications, the infectious influence of this twisted matron perhaps getting the better of you, before you decide to depart[end if].";

to say WYVDESC:
	choose row monster from the table of random critters;
	now WYVGEN is a random number between 0 and 1;
	if guy is banned and girl is banned:
		say "     As you explore the city, you look up to the sky, watching as a pair of wyverns circle the sky. You're not rightly sure if they're minding you, but something inevitably set them off and, with a disdainful screech, they fly off into the distance. Strange, and you get the odd impression that you won't be seeing them again.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now WYVGEN is 0;
	otherwise if guy is banned:
		now WYVGEN is 1;
	otherwise if girl is banned:
		now WYVGEN is 0;
	otherwise if guy is warded and girl is warded:
		now WYVGEN is a random number between 0 and 1;
	otherwise if ishunting is true: [hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now WYVGEN is 1;
		otherwise if girl is warded and a random chance of 1 in 3 succeeds:
			now WYVGEN is 0;
	otherwise if ishunting is false:
		if guy is warded:
			now WYVGEN is 1;
		otherwise if girl is warded:
			now WYVGEN is 0;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if WYVGEN is 1:
		now sex entry is "Male";
	otherwise:
		now sex entry is "Female";
	say "     [if showlocale is true]As you explore the city[otherwise]Suddenly[end if], you are set upon by a Wyvern, swooping down to confront you and forcing you to pull back. Looking at the thing proper, it would appear to be the size of a truck, wings doubling as talons for the grounded beast, thick legs supporting its massive weight. By your wagering it's a [bold type][if WYVGEN is 0]male[otherwise]female[end if][roman type].";
	if level of player < 20:
		say "     Immediately, it would open its great maw, spitting a yellowish-white goop upon you, sticking to your frame. You manage to pry some of the stuff free of you, but it's had a clearly draining effect on you and the beast looks to prepare another bout. By your wagering you can't take this monster on directly, and it's best that you pull yourself free and make a run for it.";
	otherwise if WYVLEV is 0:
		say "     Being familiar with the great creature's tactics, you dodge as it makes its attempt to catch you with an opening volley of goop.  You feel a rush of excitement, of wild fervour and charge at the gigantic creature before you even realize what you're doing.  Perhaps you're tired of always running from them, perhaps it is some new madness brought on by the infection, but you feel compelled to stand and fight the enormous beast.  [bold type]From this point on, you will face the monster directly.[roman type]";
	otherwise:
		say "     It would set upon you with a hail of its goop, but by this point you're so adept that you easily outmaneuver it. You feel that same crazed compulsion to take on the creature so much larger than you.  You [if weapon object of player is journal]raise your fists[otherwise]raise your weapon in the air[end if] and give a wild battle cry before rushing at it.";
	if level of player >= 20:
		if hardmode is true and level of player > 20, let debit be level of player - 20;
		now WYVLEV is 1;
		now hp entry is ( a random number between 180 and 240 ) + ( debit * 6 );
		now monsterhp is hp entry;
		now wdam entry is 18 + ( ( 2 * debit ) / 5 );
		now str entry is 24;
		now dex entry is 22 + (debit / 5);
		now sta entry is 20;
		now per entry is 18;
		now libido entry is 60;


Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Wyvern"; [Name of your new Monster]
	now attack entry is "[WYVATK]"; [Text used when the monster makes an Attack]
	now defeated entry is "[WYVDEF]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[WYVVIC]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[WYVDESC]";[ Description of the creature when you encounter it.]
	now face entry is "elongated, draconic in shape with a set of fierce teeth, and completely devoid of other features like ears or hair"; [ Face description, format as the text "Your face is (your text)."]
	now body entry is "large and muscular; Feral in build, you find it difficult to stand on your hind legs for very long, relegated to supporting the remainder of your weight with your winged forelimbs."; [ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "hard, substantively scaled and mute brown"; [ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "You have a somewhat long and heavy tail, fierce, spiked adornments at its prehensile tip."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "feral, somewhat blunt-shaped"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as you're forced to abide the audible sound of bones shifting in shape, head drawn out into a long, draconic muzzle with a sharp row of feral teeth.";  [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you must abide a fairly substantial infection, doubled over as you must endure the change. Torso becoming increasingly massive and feral, your hind legs become thick, muscular thing, whilst your arms shift in shape to that of a set of thick, bat-like wings. You retain a number of fingers on each hand, allowing articulation, but you imagine this comes at the expense of not being able to fly"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "hard, almost chitinous scales grow from your person. A muted brown shade, they render your surface coarse and intimidating.";  [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a fairly long tail erupts from it. Heavy and fully prehensile, it takes you a moment to adjust to its ponderous weight"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "burning heat encapsulates your member as it pulls back into your body along with your balls. After some coaxing, you can conjure up your cock from its new home, now a blunted, feral looking thing"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 12;
	now sta entry is 17;
	now per entry is 13;
	now int entry is 12;
	now cha entry is 9;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 35;			[ How many HP has the monster got? ]
	now lev entry is 3;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 6;			[Amount of Damage monster Does when attacking.]
	now area entry is "Outside";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 19;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 12;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 25;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 16;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 0;			[ Amount player Libido will go up if defeated ]
	now loot entry is "Wyvern Goop";			[ Loot monster drops, ]
	now lootchance entry is 60;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 5;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]bulky[or]draconic[or]winged[at random]";
	now type entry is "[one of]wyvern[or]draconic[or]reptilian[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Wyvern":
		if humanity of player < 10:
			if WYVSF is 0:
				if guy is banned:
					let WYVSF be 3;
				otherwise if girl is banned:
					let WYVSF be 1;
				otherwise:
					let WYVSF be 2;
			if WYVSF is 2:
				let tempnum be a random number between 1 and 2;
				if tempnum is 1:
					let WYVSF be 1;
				otherwise if tempnum is 2:
					let WYVSF be 3;
			say "     Your feral urges overtake you, compelled to take to the sky with now fully-formed wings, seeking out the first wyvern you might find";
			if WYVSF is 1:
				say ". You happen upon a male wyvern, no doubt requiring a moment to understand your pleas to be its mate. More than eager to oblige";
				if cunts of player > 0:
					say ", your life is soon filled with the sounds and sensations of constant breeding, offering up countless eggs in the wake of your new mate's wanton need.";
				otherwise:
					say ", it never crosses the beast's thick skull that--as a [if cocks of player > 0]male[otherwise]neuter[end if]--you might be completely incapable of offering him offspring; he fucks you all the same";
					if "Mpreg" is listed in feats of player:
						say ", and when you do eventually offer him offspring this comes at no surprise to him.";
					otherwise:
						say ".";
				if "Submissive" is listed in feats of player:
					say "So inclined to be this beast's little cum dumpster, you find that this behavior is inevitably rewarded when you quickly find that you are subject to a great number of additional mates, all eager to fill your hole. By your feral reasoning, you only find great joy in being used so frequently.";               
			otherwise if WYVSF is 3:
				say ". You happen upon a female wyvern, no doubt requiring a moment to understand your pleas to be her mate. More than eager to oblige";
				if cocks of player > 0:
					say ", your life soon filled with the sounds and sensations of constant breeding, constantly filling your new mate with seed, when you can.";
				otherwise:
					say ", it quickly becomes clear that you don't have the equipment to breed with her. Regardless, you often help her hunt for new 'offspring', sometimes partaking in the act yourself. You grow rather fond of your new children, their initial struggles eventually melting away in favour of childlike obedience.";
		otherwise:
			say "     The military is a little reluctant to release such a brutish-looking creature from custody when you're inevitably brought in, but when it's made clear that you're not going to cause trouble you're let off back into the world.";
			say "     You could never quite get the whole 'flying' thing down pat, so you generally keep yourself to the ground, as difficult as this sometimes makes maneuvering the world a bit of a challenge, though that people are often inclined to give you space is a slight balm to this particular sting.";
			say "     You often find employment working in medieval faires as the main attraction, a 'beast' to be 'slain' by some knight in shining armour. You try to deflect how utterly demeaning the act is from your mind by focusing on how doubtlessly uncomfortable the poor colleague is in all that metal attire, and the audience seems to enjoy it.";
			say "     During your free time, you do occasionally find companionship in suiters brave enough to request the sort of affection only you can provide, which more than alleviates your still slightly pervasive libido.";
	
[ +++++ ]

Table of Game Objects(continued)
name	desc	weight	object
"Wyvern Goop"	"Thick, white and yellow, you've kept the stuff wrapped up so that it doesn't completely harden."	1	Wyvern Goop

the scent of Wyvern Goop is "The sticky gel has an acrid, spicy scent.";

To say wyvern goop use: [Note, requires full reassement]
	say "Consuming the goop does seem to sate your hunger slightly, though you quickly find your thoughts wracked with a more feral need.";
	decrease hunger of player by 3;
	if hunger of player < 0:
		now hunger of player is 0;
	decrease thirst of player by 5;
	if thirst of player < 0;
		now thirst of player is 0:
	decrease humanity of player by 5;
	
Wyvern Goop is a grab object. Wyvern Goop is infectious. The strain of Wyvern is "Wyvern";
Wyvern Goop has a usedesc "[wyvern goop use]";

[ +++++ ]	
[ Edit this to have the correct Name as wall]
Wyvern For FS ends here.