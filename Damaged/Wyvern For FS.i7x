Version 9 of Wyvern For FS by Damaged begins here.
[ Version 9.3 - Bound State Overhaul]

"Adds a Wyvern to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

WYVGEN is a number that varies. [Wyvern Gender, 0 = male, 1 = female]
WYVLEV is a number that varies. [Wyvern Level, 0 = low, 1 = high]
WYVSF is a number that varies. WYVSF is usually 0. [Wyvern Succumb Fate, 0 = not chosen, 1 = male, 2 = random, 3 = female]
wyvorgyroll is a number that varies. 
wyvernbias is a number that varies. [Used in recording player bias for wyvern. 1 = all female, 2 = female bias, 3 = ambivalent, 4 = male bias, 5 = all male]

to say WYVATK:
	if WYVLEV is 0:
		say "[one of]Again the beast sprays you, slowly building up more and more layers of the goop[or]More of the adhesive, thickening stuff hits you.  You can barely stand as the weight starts to drag you down[or]You are assaulted by a volley of the wyvern's goop[at random].";
	otherwise:
		say "The [one of]wyvern[or]massive beast[at random] [one of]slashes at you with it's vicious wing-talons[or]swipes at you with it's impressive tail[or]bites at you with its fierce teeth[or]assaults you with a barrage of its goop[at random]";
		
to say WYVDEF:
	if WYVLEV is 0:
		say "     You manage to pull free of the goop, granting you the chance to retreat into one of the nearby buildings. You listen on, for a while, as the beast tries to break through these confines, the sound of its presence dying down before it eventually retreats entirely, leaving you to go about your business once more.";
	otherwise:
		say "     With one final blow, you manage to fell the massive wyvern, crying out before it crumples to the earth, too weak to contest your will any longer";
		if libido of player > 40 or "Dominant" is listed in feats of player:
			say ". Shall you have some fun with beast?";
			if player consents:
				if WYVGEN is 0:
					wyvmalevic;
				otherwise:
					wyvfemvic;
			otherwise:
				say "     You choose to leave the creature as-is, turning to depart.";
		otherwise:
			say ". Satisfied in your supreme victory, you turn to depart.";

to say WYVVIC:
	if hp of player > 0 and boundstate is false:
		say "     You decide surrender is the best course of action, leaving yourself at the whims of the massive beast. [if WYVGEN is 0]He[otherwise]She[end if] doesn't really regard this gesture -- either that [ghe] doesn't trust you, [ghe] doesn't care, or [ghe]'s simply not all that bright -- and you are quickly struck with a hail of the wyvern's adhesive fluid, pinning you completely to the ground";
	otherwise if boundstate is false:
		if WYVLEV is 0:
			say "     Too drained to contest the massive beast's will any further, the wyvern pins you down to the ground entirely with [ghis] adhesive fluid, any further struggles ultimately proving wholly impotent";
		otherwise:
			say "     Tired of your impudence, the massive beast strikes you down one last time, bringing you to your knees before [ghe] pins you to the earth with [ghis] adhesive fluid, any further struggles ultimately proving wholly impotent";
	if WYVGEN is 0: [male]
		if "Touched by Madness" is listed in feats of player and "MPreg" is listed in feats of player and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or (ublevel is 3 and a random chance of 1 in 4 succeeds)) and scalevalue of player < 4 and boundstate is false:
			say ". The monster circles around you for a moment, intent on asserting his dominance by screeching at you as he eyes you over, sizing you up with a rather peculiar expression.";
			say "     Approaching you, his tongue briefly assesses your [bodytype of player] form, its slick, writhing affection bathing you in his heated breath and saliva. Afflicted with a twisted compulsion, he pulls away before he begins to make a loud, deliberate hacking sound, his maw quickly flooding with the strange fluid, scaled lips clenched only slightly to let it ooze down over you.";
			say "     Thick, warm goo slowly beginning to envelope you, [if hp of player < 1 and player is not submissive]you're instinctively driven to try and pull yourself free with little success[otherwise]compelling you to writhe and twist against its touch[end if], acrid substance soon clinging to your every inch before you feel it gradually harden, encasing you entirely. Your confines are quickly pulled upright and moved around, the wyvern apparently fussing over its shape before he relents. Muffled, bestial groans emitted from your captor, you're forced to watch through your translucent prison as the [if daytimer is day]daylight[otherwise]night's lights[end if] becomes eclipsed by utter darkness, an overwhelming heat enveloping you before you black out.";
			infect;
			if waiterhater is 0, wait for any key;
			if a random chance of wyvorgyroll in 6 succeeds:
				wyvorgy;
				now wyvorgyroll is 1;
				if "Kinky" is listed in feats of player, increase wyvorgyroll by 1;
			otherwise:
				say "     You eventually come to, still encased in your all-too-familiar prison. Having regained your strength, it takes little effort to break free of these now-brittle confines, exposing you to the open air once more. Observing your surroundings, you can find your prior captor off in the distance, watching on as he confines a similar victim, egg-shaped capsule positioned between the beast's powerful thighs before slowly disappearing within the depths of his bestial hole.";
				say "     [if hp of player < 1 and player is not submissive]You shudder to think of the poor fellow who must now share your fate before you quickly retreat, lest you find yourself at the beast's mercy once more[otherwise]You're forced to ponder these implications, the infectious influence of this twisted 'matron' perhaps getting the better of you, before you decide to depart[end if].";
				increase wyvorgyroll by 1;
		otherwise if scalevalue of player < 4 and vorelevel is not 1 and (A random chance of 2 in 3 succeeds or vorelevel is 3) and boundstate is false:
			say "[wyvorescene]";
			[say "     The beast approaches his new captive, thick tongue exposed by his gaping maw; hungry look in his eye, it's very clear what fate it has in store for you. Slick organ moving to caress your exposed body, [if hp of player < 1 and player is not submissive]you endeavour to free yourself once more of your primal bindings, to little avail[otherwise]accepting your troubling circumstance, you're forced to gaze into the fleshy abyss before you, massive portal begging that you might abide it[end if]. Showered by his hot, acrid breath, his saliva appears to dissolve the peculiar material, but this liberation is a false one, as it's quickly traded with his scaled lips.";
			say "     Light slitted through his only slightly agape mouth, it's closure prevented by your lower, engulfed half, he offers you the smallest mercy by not subjecting you to his savage teeth, for what good it might merit. You must contend with the embrace of these slick walls; such fleshy confines eager to accept your imposed occupancy, he merely raises his head, letting gravity set your destination, until only slick heat and darkness remains.";
			say "     Descent hastened by this slippery prison, you are eventually pushed into the belly of this beast. [if hp of player < 1 and player is not submissive]Desperate struggles lost in the wake of your fading consciousness[otherwise]As your vision begins to fade[end if], you can feel yourself tussled about, the wyvern no doubt taking flight again, satisfied with its [if scalevalue of player is 3]meal[otherwise]snack[end if].";
			if waiterhater is 0, wait for any key;
			say "     Eventually you come to, finding yourself back outside, in the city, covered in a mess of saliva and goop. Though your captor's intent might have been more infectious, you can't help but feel considerably drained by the encounter. You eventually clean yourself off and find where you are exactly before returning from whence you came.";
			increase hunger of player by 7;
			increase thirst of player by 5;]
		otherwise if cunt length of player > 15 and ((anallevel is not 3 and a random chance of 1 in 2 succeeds) or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
			if boundstate is false:
				say ". The monster circles around you for a moment, intent on asserting his dominance by screeching at you as he eyes you over.";
			say "     [if scalevalue of player is 5]Climbing on top of[otherwise]Moving over[end if] you, you're exposed to the wyvern's chitinous underside, scaled crotch -- once devoid of any significant feature -- parting as the beast's massive dick spills out from it. Intent on mounting you as you're pinned, the monster barely checks to see if his entry point is free of any obstruction, blunt cockhead testing [if cunts of player > 1]one of your vulnerable cunts[otherwise]your vulnerable cunt[end if].";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you struggle against your bindings and the weight of your massive reptile, to no avail,[otherwise]Thick, slimy tongue caressing your helpless frame, the massive reptile offers you his crude affection[end if] before he shows no restraint in trying to force his organ past the folds of your flesh. Tainted cries of harsh lust firmly squeezed from your lips, the brute lacks any regard for your well being in favour of his need.";
			say "     Thick, coarse scales abrasively grinding against your bound, [bodytype of player] form, he's quite intent on getting the massive thing all the way in there, inch after successive inch reaming itself into your overwhelmingly strained hole. It's not long before he gets what he wants, scaled crotch firmly against your ass, slicked by errant spurts of pre sputtering from you[if scalevalue of player < 4], body visibly bulging with the dick's outline[end if] before he spares you a moment of slight reprieve when it's inched out, only to be pounded back in.";
			say "     Utterly wrecked by the behemoth tool[if cunt length of player < 21], tears streaming from your eyes[end if], ";
			if lust of player > 30:
				say "it's not long before you cry out in orgasm, [if cocks of player > 1]cocks smearing their [cum load size of player] load against both your torsos[otherwise if cocks of player > 0]cock smearing its [cum load size of player] load across both your torsos[otherwise]strained hole throbbing against it's invading organ[end if]. He barely seems to even notice this, relentlessly eager to rail for a seemingly endless length of time before the wyvern finally lets out ear-splitting screech. At first, the initial gouts of the beast's thick, virile seed are slow, but they very quickly intensify until it feels like you're being utterly hosed by them, [if scalevalue of player < 4]forced to watch each gout balloons out your stomach even further[otherwise if scalevalue of player is 4]visibly swelling with each gout[otherwise]wholly filling you[end if] until it sputters from your hole.";
			otherwise:
				say "you're railed by the relentlessly eager wyvern for what seems like forever, finally letting out an ear-splitting screech in bliss. At first, the initial gouts of the beast's thick, virile seed are slow, but they very quickly intensify until it feels like you're being utterly hosed by them, [if scalevalue of player < 4]forced to watch each gout balloons out your stomach even further[otherwise if scalevalue of player is 4]visibly swelling with each gout[otherwise]wholly filling you[end if] until it sputters from your hole. The sensation is intense enough that you're driven to cry out in your own orgasm, [if cocks of player > 1]cocks smearing their [cum load size of player] load against both your torsos[otherwise if cocks of player > 0]cock smearing its [cum load size of player] load across both your torsos[otherwise]strained hole milking it's invading organ[end if], not that the beast even seems to notice.";
			if boundstate is true:
				say "     Suddenly, and with barely any restraint, the massive reptile wrenches its dick from of you, a flood of seed oozing from your gaping hole in its wake, briefly minding his twisted offspring before he takes to flight once more. Barely given a moment to recover, the wyvern kin climb onto you again, reassuming their prior positions, no doubt eager to resume, their own lust heightened from the show.[impregchance][line break]";
				if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
				now lustatt is libido of player;
				if struggleatt > 0, decrease struggleatt by 1;
				if enduring is true:
					decrease humanity of player by 8 + (psycheadjust * 2);
				otherwise:
					decrease humanity of player by 15 + (psycheadjust * 5);
				increase wyvkin1lib by 5;
				increase wyvkin2lib by 5;
				if wyvkinocc > 0, increase wyvkin3lib by 5;
				if wyvkinocc > 0, increase wyvkin4lib by 5;
			otherwise:
				say "     Suddenly, and with barely any restraint, the massive reptile wrenches its dick from of you, a flood of seed oozing from your gaping hole in its wake, before billowing you with a gust of wind as it takes to the air again, abandoning your still-bound form and only appearing marginally satisfied. The whole ordeal probably scared off any locals, because you're given a fair amount of time to recover and slowly pull the goop free of you, getting back up and slowly limping off.[impregchance][line break]";
		otherwise if anallevel is not 1 and (scalevalue of player > 3 or (scalevalue of player is 3 and player is twistcapped)) and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
			if boundstate is false:
				say ". The monster circles around you for a moment, intent on asserting his dominance by screeching at you as he eyes you over.";
			say "     [if scalevalue of player is 5]Climbing on top of[otherwise]Moving over[end if] you, you're exposed to the wyvern's chitinous underside, scaled crotch -- once devoid of any significant feature -- parting as the beast's massive dick spills out from you. Intent on mounting you as you're pinned, the monster barely checks to see if his entry point is free of any obstruction, blunt cockhead testing your vulnerable ass.";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you struggle against your bindings and the weight of your massive reptile, to no avail,[otherwise]Thick, slimy tongue caressing your helpless frame, the massive reptile offers you his crude affection[end if] before he shows no restraint in trying to force his organ past the folds of your flesh. Tainted cries of harsh lust firmly squeezed from your lips, the brute lacks any regard for your well being in favour of his need.";
			say "     Thick, coarse scales abrasively grinding against your bound, [bodytype of player] form, he's quite intent on getting the massive thing all the way in there, inch after successive inch reaming itself into your overwhelmingly strained hole. It's not long before he gets what he wants, scaled crotch firmly against your ass, slicked by errant spurts of pre sputtering from you[if scalevalue of player < 4], body visibly bulging with the dick's outline[end if] before he spares you a moment of slight reprieve when it's inched out, only to be pounded back in.";
			say "     Utterly wrecked by the behemoth tool[if scalevalue of player < 4], tears streaming from your eyes[end if], ";
			if lust of player > 30 and (cocks of player > 0 or cunts of player > 0):
				 say "it's not long before you cry out in orgasm, [if cocks of player > 1]cocks smearing their [cum load size of player] load against both your torsos[otherwise if cocks of player > 0]cock smearing its [cum load size of player] load across both your torsos[otherwise]neglected cunt[sfn] oozing down onto the invading organ[end if]. He doesn't seem to even notice this, relentlessly eager to rail for a seemingly endless length of time before the wyvern finally lets out ear-splitting screech. At first, the initial gouts of the beast's thick, virile seed are slow, but they very quickly intensify until it feels like you're being utterly hosed by them, [if scalevalue of player < 4]forced to watch each gout balloons out your stomach even further[otherwise if scalevalue of player is 4]visibly swelling with each gout[otherwise]wholly filling you[end if] until it sputters from your hole.";
			otherwise:
				say "you're railed by the relentlessly eager wyvern for what seems like forever, finally letting out an ear-splitting screech in bliss. At first, the initial gouts of the beast's thick, virile seed are slow, but they very quickly intensify until it feels like you're being utterly hosed by them, [if scalevalue of player < 4]forced to watch each gout balloons out your stomach even further[otherwise if scalevalue of player is 4]visibly swelling with each gout[otherwise]wholly filling you[end if] until it sputters from your hole";
				if cocks of player > 0 or cunts of player > 0:
					say ". The sensation is intense enough that you're driven to cry out in your own orgasm, [if cocks of player > 1]cocks smearing their [cum load size of player] load against both your torsos[otherwise if cocks of player > 0]cock smearing its [cum load size of player] load across both your torsos[otherwise]strained hole milking it's invading organ[end if], not that the beast even seems to notice.";
				otherwise:
					say ". Without an outlet, you are forced to struggle against this twisted, wanton fervour, not that the beast cares about or even notices your plight.";
			if boundstate is true:
				say "     Suddenly, and with barely any restraint, the massive reptile wrenches its dick from of you, a flood of seed oozing from your gaping hole in its wake, briefly minding his twisted offspring before he takes to flight once more. Barely given a moment to recover, the wyvern kin climb onto you again, reassuming their prior positions, no doubt eager to resume, their own lust heightened from the show.[mimpregchance][line break]";
				if cocks of player > 0 or cunts of player > 0:
					if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
					now lustatt is libido of player;
					if struggleatt > 0, decrease struggleatt by 1;
					if enduring is true:
						decrease humanity of player by 8 + (psycheadjust * 2);
					otherwise:
						decrease humanity of player by 15 + (psycheadjust * 5);
					increase wyvkin1lib by 5;
					increase wyvkin2lib by 5;
					if wyvkinocc > 0, increase wyvkin3lib by 5;
					if wyvkinocc > 0, increase wyvkin4lib by 5;
			otherwise:		
				say "     Suddenly, and with barely any restraint, the massive reptile wrenches its dick from of you, a flood of seed oozing from your gaping hole in its wake, before billowing you with a gust of wind as it takes to the air again, abandoning your still-bound form and only appearing marginally satisfied. The whole ordeal probably scared off any locals, because you're given a fair amount of time to recover and slowly pull the goop free of you, getting back up and slowly limping off.[mimpregchance][line break]";
		otherwise:
			if boundstate is false:
				say ". The monster circles around you for a moment, intent on asserting his dominance by screeching at you as he eyes you over.";
			say "     [if scalevalue of player is 5]Climbing on top of[otherwise]Moving over[end if] you, the wyvern shoves chitinous-scaled crotch firmly against your face and upper torso, the bestial ritual enough to cause the wyvern's dick to spill from its tough confines. Prodding you with his hardening tool, it's clear he intents to have you satisfy him orally, but he's not bright enough to know how to properly present or restrain himself, just as inclined to fuck your face than make you apply any effort.";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you try to pull away from the pre-slicked, needy cock, but this only encourages him to be more insistent, eventually forced to oblige[otherwise]No doubt eager to get things rolling as smoothly as possible you oblige[end if] the beast's need, your tongue caressing along its throbbing length[if scalevalue of player > 3] before your mouth engulfs its blunt head[end if]. Organ occasionally spurting pre against your hold, [if scalevalue of player > 4]he shows no shame in exploiting your impressive size when he starts plunging it deeper down your stuffed gullet[otherwise if scalevalue of player is 4]it becomes increasingly difficult to handle, not that this stops him from trying to forcing it in deeper[otherwise]he firmly grinds the slicked tool against your face[end if], holding little regard for your well being.";
			say "     [if scalevalue of player < 4]Face and body painted with the beast's sexual fluids[otherwise]The beast's sexual fluid gushing from your strained lips[end if], it feels like you're practically bathing in the wyvern's sex, it's overwhelmingly masculine scent and taste all you can feel anymore, and you feel like you're almost going to pass out before you're brought to attention by the monster's loud roar. [if scalevalue of player > 3]The immediate force of his dick's release popping it from your strained maw, y[otherwise]Y[end if]our utterly blasted with his cum, nearly dislodging your body from [if boundstate is true]the wyvern kin's hold[otherwise]your bindings[end if] by how intense the force you're made to take head-on.";
			if boundstate is true:
				say "     With little ceremony or care, you watch as the beast's dick retreats back from whence it hid before he pulls away, briefly minding his twisted offspring before he takes to flight once more. Barely given a moment to recover, the wyvern kin climb onto you again, reassuming their prior positions, no doubt eager to resume, their own lust heightened from the show.";
				increase lustatt by 20;
			otherwise:
				say "     With little ceremony or care, you watch as the beast's dick retreats back from whence it hid before he pulls away, taking to the sky once more. It takes you several moments to figure out up from down after the whole ordeal before you start pulling yourself free of your primitive bondage. Once free, it takes quite a while to clean yourself off and just as long to not feel completely sore all over.";
	otherwise: [female]
		if "Touched by Madness" is listed in feats of player and ((scalevalue of player is 3 and "Twisted Capacity" is listed in feats of player) or scalevalue of player > 3) and (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 4 succeeds)) and boundstate is false:
			say ". The monster circles around your for a moment, intent on asserting her dominance by screeching at you as she eyes you over, sizing you up with a rather peculiar expression...";
			say "     Her eventual approach reveals she is already heavy with eggs, making you wonder [if scalevalue of player is 3]how she'd exactly intends to fit you in there[otherwise]why she'd bother dealing with you in the first place[end if]. [if scalevalue of player is 3]Moving over[otherwise]Climbing on top of[end if] you, Bestial vent poised against [if cunts of player > 1 and cunt length of player > 14 and anallevel is not 3]one of your exposed cunts[otherwise if cunts of player > 0 and cunt length of player > 14 and anallevel is not 3]your exposed cunt[otherwise]anal ring[end if], her pained low grunts elucidate on her twisted intent.";
			if cunts of player > 0 and cunt length of player > 14 and "More Anal" is not listed in feats of player:
				say "     Hardened surface of her emergent shell pushing against the [cunt size desc of player] hole, you find yourself quickly strained to abide to rapidly growing intrusion as it's slowly plunged into your depths. Scaled, rough frame trembling against yours, the wyvern is very intent on forcing you to abide every rough bump and imperfection of the makeshift prison she would have you carry.";
				if scalevalue of player is 5 and cunt length of player > 20:
					say "     You could wager that the worst is over, tapered conclusion of the egg inviting your stuffed portal to pull the remainder in your depths. However, it's soon made clear that the beast isn't done with you yet, and you quickly find yourself contending with a second, no doubt intent on exploiting your higher capacity. This second assault is certainly easier for you to engulf, but that is little reassurance to the fact that you are now encumbered with two of the massive things, their oppressive occupancy visibly bloating you.";
				otherwise:
					say "     Thankfully, you can be safe in assuming that the worst is over, tapered conclusion of the egg inviting your stuffed portal to pull the remainder in your depths. The beast isn't quite satisfied yet, and thrusts her tail upon your stuffed hole, pushing your occupant until it penetrates your cervix, insinuating that you are her egg's twisted mother. [if scalevalue of player is 3]By this point you're practically immobile with the thing, substantially [otherwise]You struggle to retain clarity as you contend with your now-bulging frame,[end if] bloated by this occupant.";
			otherwise:
				say "     Hardened surface of her emergent shell pushing against your tailpipe, you find yourself quickly strained to abide to rapidly growing intrusion as it's slowly plunged into your depths. Scaled, rough frame trembling against yours, the wyvern is very intent on forcing you to abide every rough bump and imperfection of the makeshift prison she would have you carry.";
				if scalevalue of player is 5 and "Twisted Capacity" is listed in feats of player:
					say "     You could wager that the worst is over, tapered conclusion of the egg inviting your stuffed hole to pull the remainder into your bowels. However, it's soon made clear that the beast isn't done with you yet, and you quickly find yourself contending with a second, no doubt intent on exploiting your higher capacity. This second assault is certainly easier for you to engulf, but that is little reassurance to the fact that you are now encumbered with two of the massive things, their oppressive occupancy visibly bloating you.";
				otherwise:
					say "     Thankfully, you can be safe in assuming that the worst is over, tapered conclusion of the egg inviting your stuffed hole to pull the remainder into your bowels. The beast isn't quite satisfied yet, and thrusts her tail upon your stuffed ring, pushing the object further down your labyrinth, intent on making its removal even more difficult for you. [if scalevalue of player is 3]By this point you're practically immobile with the thing, substantially [otherwise]You struggle to retain clarity as you contend with your now-bulging frame,[end if] bloated by this occupant.";
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
		if vorelevel is 3 and (a random chance of 1 in 4 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds)) and boundstate is false:
			say "[wyvorescene]";
		otherwise if scalevalue of player < 4 and ublevel is not 1 and (A random chance of 2 in 3 succeeds or ublevel is 3) and boundstate is false:
			say ". The monster circles around you for a moment, intent on asserting her dominance by screeching at you as she eyes you over.";
			say "     Approaching you, her tongue briefly assesses your [bodytype of player] form, its slick, writhing affection bathing you in her heated breath and saliva. Seemingly satisfied with her catch, she pulls away before she begins to make a loud, deliberate hacking sound, her maw quickly flooding with the strange fluid, scaled lips clenched only slightly to let it ooze down over you.";
			say "     Thick, warm goo slowly beginning to envelope you, [if hp of player < 1 and player is not submissive]you're instinctively driven to try and pull yourself free with little success[otherwise]compelling you to writhe and twist against its touch[end if], acrid substance soon clinging to your every inch before you feel it gradually harden, encasing you entirely. Your confines are quickly pulled upright and moved around, the wyvern apparently fussing over its shape before she relents. Muffled, bestial groans emitted from your captor, you're forced to watch through your translucent prison as the [if daytimer is day]daylight[otherwise]night's lights[end if] becomes eclipsed by utter darkness, an overwhelming heat enveloping you before you black out.";
			infect;
			if waiterhater is 0, wait for any key;
			if a random chance of wyvorgyroll in 6 succeeds:
				wyvorgy;
				now wyvorgyroll is 1;
				if "Kinky" is listed in feats of player, increase wyvorgyroll by 1;
			otherwise:
				say "     You eventually come to, still encased in your all-too-familiar prison. Having regained your strength, it takes little effort to break free of these now-brittle confines, exposing you to the open air once more. Observing your surroundings, you can find your prior captor off in the distance, watching on as she confines a similar victim, egg-shaped capsule positioned between the beast's powerful thighs before slowly disappearing within the depths of her bestial vent.";
				say "     [if hp of player < 1 and player is not submissive]You shudder to think of the poor fellow who must now share your fate before you quickly retreat, lest you find yourself at the beast's mercy once more[otherwise]You're forced to ponder these implications, the infectious influence of this twisted matron perhaps getting the better of you, before you decide to depart[end if].";
				increase wyvorgyroll by 1;
		otherwise if cocks of player > 0 and cock length of player > 12  and a random chance of 1 in 2 succeeds:
			if boundstate is false:
				say ". The monster circles around you for a moment, intent on asserting her dominance by screeching at you as she eyes you over.";
			say "     Maw ripping away anything that might obstruct her object of her desire before [if scalevalue of player is 5]climbing on top of[otherwise]moving over[end if] you, you're exposed to the wyvern's chitinous underside, scaled, bestial vent grinding against your now-exposed, [cock size desc of player] dick[smn]. Intent on riding you as you're pinned, the monster show little regard for your comfort, nipping you firmly until [if hp of player < 1]you're forced into arousal[otherwise]you're sufficiently aroused[end if]";
			say "     Deeply rumbling, her tongue lavishes possessive affection on your face, thick, writhing organ shamelessly smearing you in saliva as she makes some effort to properly mount you. Fumbling a fair bit to properly line up [if cocks of player > 1]one of your tools[otherwise]your tool[end if] with her hole[if scalevalue of player < 4], made especially difficult by your small size[end if]; however, once successful, she's eager to pound her crotch down on the organ with no restraint, ";
			if cockname of player is listed in infections of Knotlist:
				if cock length of player > 15:
					say "engulfing it entirely, up to the knot. Dissatisfied with this, she continually slams her already-stuffed portal against her only slightly-yielding cleft, snorting in annoyance.";
				otherwise:
					say "engulfing it entirely, knot included.";
			otherwise:
				say "engulfing it entirely.";
			say "     Taking a second to brace herself, you're forced to watch the wyvern stare directly into your eyes, as if reveling in your writhing and groaning once she begins to utterly pound you against the ground, showing no restraint in wholly abusing you. Panting, acrid breath washing over you, the beast nips and growls at her new toy, her rough treatment getting worse as things progress, as though to command you into release.";
			say "     [if libido of player > 50]Almost immediately[otherwise]Soon enough[end if] you groan out, your beleaguered bliss squeezed from you, [cum load size of player] load flooding her tight depths[if cocks of player > 2], exposed cocks staining the two of you with a portion of it[otherwise if cocks of player is 2], exposed cock staining the two of you with a portion of it[end if]. As if dependent on your release, you're forced to endure the wyvern's wanton roar as she [if cock length of player > 15 and cockname of player is listed in infections of knotlist]finally ties yourself with her[otherwise if cockname of player is listed in infections of knotlist]ties you one last time[otherwise]hilts your dick one last time[end if], prolonging your orgasm as her hungry portal milks you for every last drop you might offer her.";
			if boundstate is true:
				say "     Once she comes down from her frenzy, she briefly glares at you, tongue offering idle attention as she recovers, before finally wrenching herself free of your tool, briefly minding her twisted offspring before she takes to flight once more. Barely given a moment to recover, the wyvern kin climb onto you again, reassuming their prior positions, no doubt eager to resume, their own lust heightened from the show.";
				if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
				now lustatt is libido of player;
				if struggleatt > 0, decrease struggleatt by 1;
				if enduring is true:
					decrease humanity of player by 8 + (psycheadjust * 2);
				otherwise:
					decrease humanity of player by 15 + (psycheadjust * 5);
				increase wyvkin1lib by 5;
				increase wyvkin2lib by 5;
				if wyvkinocc > 0, increase wyvkin3lib by 5;
				if wyvkinocc > 0, increase wyvkin4lib by 5;
			otherwise:
				say "     Once she comes down from her frenzy, she briefly glares at you, tongue offering idle attention as she recovers, before finally wrenching herself free of your tool, turning away to take to the sky once more. The whole ordeal probably scared off any locals, because you're given a fair amount of time to recover and slowly pull the goop free of you[if cocks of player > 1] and clean the mess of yourself you've made[end if]. Limping off to go about your business, the whole ordeal has no doubt left you quite a bit sore.";
		otherwise:
			if boundstate is false:
				say ". The monster circles around you for a moment, intent on asserting her dominance by screeching at you as she eyes you over.";
			say "     [if scalevalue of player is 5]Climbing on top of[otherwise]Moving over[end if] you, the wyvern shoves her chitinous-scaled crotch firmly against your face and upper torso, bestial vent oozing and slick with arousal. Relentlessly rubbing herself against you, it's clear she intends to have you attend her, but she's not bright enough to know how to properly present or restrain herself, just as inclined to fuck your face than make you apply any effort.";
			say "     [if hp of player < 1 and player is not submissive]Instinctively, you try to pull away from the dripping, needy portal, but this only encourages her to be more insistent, eventually forced to oblige[otherwise]No doubt eager to get things rolling as smoothly as possible you oblige[end if] the beast's need, your tongue caressing along the her firm, scaled cleft. Taut hole occassionally gushing sexual fluids against you, you[if scalevalue of player > 3]r thick organ is quite effective at pleasing the beast, compelling her to press it harder against you[otherwise] feel a little ill-equipped to handle this massive beast, not that she seems to care[end if], holding little regard for your well being.";
			say "     [if scalevalue of player < 3]Face and body painted with the beast's honey[otherwise]The beast's honey gushing from your strained lips[end if], it feels like you're practically bathing in the wyvern's sex, it's overwhelming taste and scent all you seem to feel anymore, and you feel like you're almost going to pass out before you're brought to attention by the monster's loud roar. You're utterly drenched in the ensuing flood of sexual fluids, the weight of her grinding body against yours becoming painfully apparent.";
			if boundstate is true:
				say "     Satisfied, for now, the wyven eventually pulls herself free of you, briefly minding her twisted offspring before she takes to flight once more. Barely given a moment to recover, the wyvern kin climb onto you again, reassuming their prior positions, no doubt eager to resume, their own lust heightened from the show.";
				increase lustatt by 20;
			otherwise:
				say "     Satisfied, the wyvern eventually pulls herself free of you, not giving you much of her regard beyond her need before taking flight once more. It takes you several moments to figure out up from down after the whole ordeal before you start pulling yourself free. Once free, it takes quite a while to clean yourself off and just as long to not feel completely sore all over.";
	if voreloss is false and boundstate is false:
		if WYVGEN is 1 and bodyname of player is "Wyvern":
			if WYVSF < 3:
				increase WYVSF by 1;
				say "     [italic type]Your infection seems to be influencing your mind and making you more inclined towards female wyverns, [if WYVSF is 2]though you could really go either way at this point[otherwise]to the exclusion of all others[end if][roman type].";
			otherwise if WYVSF is 0:
				now WYVSF is 3;
		otherwise if bodyname of player is "Wyvern":
			if WYVSF > 1:
				decrease WYVSF by 1;
				say "     [italic type]Your infection seems to be influencing your mind and making you more inclined towards male wyverns, [if WYVSF is 2]though you could really go either way at this point[otherwise]to the exclusion of all others[end if][roman type].";
			otherwise if WYVSF is 0:
				now WYVSF is 1;

to libidoeval:
	if "Horny Bastard" is listed in feats of player: [lust adjust check]
		now lustadjust is 1;
	otherwise if "Cold Fish" is listed in feats of player:
		now lustadjust is -1;
	otherwise:
		now lustadjust is 0;

to psycheeval:
	if "Weak Psyche" is listed in feats of player: [psyche adjust check]
		now psycheadjust is 1;
	otherwise if "Strong Psyche" is listed in feats of player:
		now psycheadjust is -1;
	otherwise:
		now psycheadjust is 0;

to say WYVDESC:
	if WYVSF is 0:
		now WYVSF is 2;
	choose row monster from the table of random critters;
	if a random chance of 1 in 2 succeeds:
		now WYVGEN is 1;
		femalepronouns;
	otherwise:
		now WYVGEN is 0;
		malepronouns;
	if guy is banned and girl is banned:
		say "     As you explore the city you look up to the sky, watching as a pair of wyverns circle the sky. You're not rightly sure if they're minding you, but something inevitably set them off and, with a disdainful screech, they fly off into the distance. Strange, and you get the odd impression that you won't be seeing them again.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now WYVGEN is 0;
	otherwise:
		if ishunting is true and (guy is warded or girl is warded) and wyvernbias is 0:
			say "     [italic type]Hunting for a wyvern, it appears you have one or both genders warded. In the case of this monster, what is your exact bias?[roman type][line break]";
			wyvernbiasrequest;	
		if guy is banned or wyvernbias is 1:
			now WYVGEN is 1;
			femalepronouns;
			now WYVSF is 3;
		otherwise if girl is banned or wyvernbias is 5:
			now WYVGEN is 0;
			malepronouns;
			now WYVSF is 1;
		otherwise if (guy is warded and girl is warded) or wyvernbias is 3:
			if a random chance of 1 in 2 succeeds:
				now WYVGEN is 1;
				femalepronouns;
			otherwise:
				now WYVGEN is 0;
				malepronouns;
		otherwise if ishunting is true: [Hunting system]
			if wyvernbias is 2 and a random chance of 2 in 3 succeeds:
				now WYVGEN is 1;
				femalepronouns;
			otherwise if wyvernbias is 4 and a random chance of 2 in 3 succeeds:
				now WYVGEN is 0;
				malepronouns;		
		otherwise if ishunting is false:
			if guy is warded or (wyvernbias < 3 and wyvernbias is not 0):
				now WYVGEN is 1;
				femalepronouns;
			otherwise if girl is warded or wyvernbias > 3:
				now WYVGEN is 0;
				malepronouns;
		psycheeval;
		libidoeval;
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
		say "     [if showlocale is true]As you explore the city, you suddenly[otherwise]Suddenly, you[end if] [if ishunting is true]run into a wyvern[otherwise]find yourself ambushed by a wyvern[end if], swooping down to confront you, the earth trembling as it lands. Looking at the beast proper, it appears to be the size of a truck, wings doubling as its foretalons, thick legs supporting its massive weight. From what you can tell it appears to be [bold type][if WYVGEN is 0]male[otherwise]female[end if][roman type].";
		if level of player < 20:
			say "     With a low growl it opens its great maw, hailing you with a barrage of strange, yellowish-white ooze, the strong adhesive fusing you to the ground. You manage to pry some of the viscous fluid free of you, but if feels as though contact with it has drained you slightly. This monster is simply too much for you to handle right now, and your best bet is simply to pull yourself free and make a run for it.";
		otherwise if WYVLEV is 0:
			say "     Being familiar with the great creature's tactics, you dodge as it makes its attempt to catch you with an opening volley of goop.  You feel a rush of excitement, of wild fervour and charge at the gigantic creature before you even realize what you're doing.  Perhaps you're tired of always running from them, perhaps it is some new madness brought on by the infection, but you feel compelled to stand and fight the enormous beast.  [bold type]From this point on, you will face the monster directly.[roman type]";
		otherwise:
			say "     It sets upon you with a hail of its goop, but by this point you're so adept that you easily outmaneuver it. You feel that same crazed compulsion to take on the creature so much larger than you.  You raise your [if weapon object of player is journal]fists[otherwise]weapon in the air[end if] and give a wild battle cry before rushing at it.";
		if level of player >= 20:
			let debit be 0;
			if hardmode is true and level of player > 25:
				now debit is level of player - 25;
			now WYVLEV is 1;
			now hp entry is ( a random number between 200 and 275 ) + ( debit * 5 );
			now monsterhp is hp entry;
			now wdam entry is 18 + ( ( 2 * debit ) / 5 );
			now lev entry is 25 + debit;
			now str entry is 30;
			now dex entry is 28 + ( debit / 4 );
			now sta entry is 20;
			now per entry is 18;
			now libido entry is 60;
			
Section 1-2 - Victory Sex Trees

to wyvmalevic:
	now calcnumber is -1;
	say "     What will you do?";
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [if cocks of player > 0][link]Mount him[as]1[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(2) [if cocks of player > 0][link]Have him suck your dick[as]2[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(3) [if cunts of player > 0][link]Have him eat your cunt[as]3[end link][otherwise][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(4) [if cunts of player > 0][link]Ride his dick[as]4[end link][otherwise][italic type]Female-specific interaction[roman type][end if] [if cunts of player > 0 and cunt length of player < 16][italic type]- Too small![roman type][end if][line break]";
		say "(5) [link]Ride his dick anally[as]5[end link] [if scalevalue of player < 4 and player is not twistcapped][italic type]- Too small![roman type][otherwise if scalevalue of player < 3][italic type]- Too small![roman type][end if][line break]";
		say "(6) [link]Suck him off[as]6[end link][line break]";
		say "[line break]";
		say "(0) [link]Nevermind.[as]0[end link][line break]";	
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			otherwise:
				say "Invalid Choice.";
		if calcnumber is 1:
			if cocks of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvgen_1]"; [Anal Pitching]
				now trixieexit is 1;
		otherwise if calcnumber is 2:
			if cocks of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvgen_2]"; [Oral Receiving Cock]
				now trixieexit is 1;
		otherwise if calcnumber is 3:
			if cunts of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvgen_3]"; [Oral Receiving Cunt]
				now trixieexit is 1;
		otherwise if calcnumber is 4:
			if cunts of player is 0 or cunt length of player < 16:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvmale_1]"; [Cunt Catching]
				now trixieexit is 1;
		otherwise if calcnumber is 5:
			if scalevalue of player < 1: [4 or (scalevalue of player is 3 and player is not twistcapped)]
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvmale_2]"; [Anal Catching]
				now trixieexit is 1;
		otherwise if calcnumber is 6:
			say "[wyvmale_3]"; [Oral Giving Cock]
			now trixieexit is 1;
		otherwise:
			say "     You have some second thoughts and decide to depart, instead."; [turn down]
			now trixieexit is 1;

to wyvfemvic:
	now calcnumber is -1;
	say "     What will you do?";
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [if cocks of player > 0][link]Mount her[as]1[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(2) [if cocks of player > 0][link]Mount her anally[as]2[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(3) [if cocks of player > 0][link]Have her suck your dick[as]3[end link][otherwise][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(4) [if cunts of player > 0][link]Have her eat your cunt[as]4[end link][otherwise][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(5) [link]Attend her cunt[as]5[end link][line break]";
		say "[line break]";
		say "(0) [link]Nevermind.[as]0[end link][line break]";	
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			otherwise:
				say "Invalid Choice.";
		if calcnumber is 1:
			if cocks of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvfem_1]"; [Cunt Pitching]
				now trixieexit is 1;
		if calcnumber is 2:
			if cocks of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvgen_1]"; [Anal Pitching]
				now trixieexit is 1;
		otherwise if calcnumber is 3:
			if cocks of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvgen_2]"; [Oral Receiving Cock]
				now trixieexit is 1;
		otherwise if calcnumber is 4:
			if cunts of player is 0:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			otherwise:
				say "[wyvgen_3]"; [Oral Receiving Cunt]
				now trixieexit is 1;
		otherwise if calcnumber is 5:
			say "[wyvfem_2]"; [Oral Giving Cock]
			now trixieexit is 1;
		otherwise:
			say "     You have some second thoughts and decide to depart, instead."; [turn down]
			now trixieexit is 1;

callwyvernbias is an action applying to nothing.
understand "wyvern bias" as callwyvernbias;

carry out callwyvernbias:
	wyvernbiasrequest;

Section 1-3 - Wyvern Sex Pools

to say wyvgen_1: [Anal Pitching]
	say "     [if scalevalue of player < 5]Given how massive the wyvern is, it takes you a bit of effort to properly position the beast[otherwise]With a little work, you manage to position the wyvern[end if] for your entry, whose exhausted form can only abide your preparations. Rough, chitinous scales obfuscating the hole, you're forced to use a digit to find where it's hiding, your exploration soon rewarded as they eventually part around your appendage to expose soft, supple flesh to your touch.";
	say "     Your bit of exploration causes the monster to writhe and growl in impotent protest, soon betrayed by [if WYVGEN is 0]his own arousal, his impressive dick beginning to emerge from its housing[otherwise]her own arousal, her unattended hole beginning to ooze sexual fluids[end if]. Ready for you, shall you engage in a bit of foreplay? Else you'll get straight to the point.";
	if player consents:
		say "     Exploiting the wyvern's apparent arousal, your attention momentarily moves away from [ghis] ass and to [ghis] dripping, bestial [if WYVGEN is 0]dick, rubbing up along it's length[otherwise]cunt, lightly caressing across its entrance[end if]. Unable to resist your touch, the monster can't help but groan loudly and writhe against the earth, further making an embarrassing mess of [ghim]self. Satisfied with your brief tease, you move onto the more pressing matter.";
		now tempnum2 is 1;
	otherwise:
		now tempnum2 is 0;
	if cocks of player > 1 and (WYVGEN is 1 or cock length of player < 20): [1 = Yes, anal only. 2 = Shared, ass and cunt. 0 = No.]
		say "     You figure you can use [if cocks of player is 2]both[otherwise]two[end if] of your cocks, shall you? [if WYVGEN is 1 and cock length of player > 19]You're probably too well-endowed for her to fit both of them in [ghis] ass, so the only choice you have is to go for both holes.[end if]";
		if player consents:
			if WYVGEN is 0:
				now tempnum is 1;
			otherwise:
				if cock length of player > 19:
					now tempnum is 2;
				otherwise:
					say "Shall you penetrate [ghis] ass exclusively? Else you'll make use of both holes.";
					if player consents:
						now tempnum is 1;
					otherwise:
						now tempnum is 2;
		otherwise:
			now tempnum is 0;
	otherwise:
		now tempnum is 0;
	say "     Briefly testing [ghis] hole[if tempnum is 2]s[end if] with your [cock size desc of player] dick[if tempnum > 0]s[end if], you show little restraint in plunging [if tempnum > 0]them[otherwise]it[end if] into the wyvern's depths, [if cock length of player < 13 and tempnum is not 1]your small size relative to [ghim] making the task fairly easy[otherwise if cock length of player < 9 and tempnum is 1]your small size relative to [ghim] making the task fairly easy, even with forcing both cocks in there[otherwise if tempnum is 1]each successive inch making [ghim] groan loudly, no doubt strained by both cocks[otherwise]each successive inch making [ghim] groan loudly, no doubt strained by your impressive intrusion[end if]. Taking a brief moment to revel [ghis] supple, yielding bowels, you eventually begin fucking the beast proper, [if scalevalue of player > 3]each powerful thrust sending a tremor across [ghis] body[otherwise]gripping [ghis] larger form tightly[end if].";
	say "     The wyvern growling lowly, [if scalevalue of player < 4][ghe]'s no doubt a shameful sight to see, being railed by [ghis] diminutive prey[otherwise][end if], [if WYVGEN is 0]his proud, unattended dick bobbing slightly against open air[otherwise if WYVGEN is 1 and tempnum is not 2]her unattended cunt oozing against the open air[otherwise]her twin holes throbbing needily against your dicks[end if]. As time goes on, your pace continuing to pick up, it's clear that you won't be able to hold back for much longer. Shall you pull out at the last second?";
	if player consents:
		say "     You wrench [if tempnum > 0]both of your cocks[otherwise]your cock[end if] free of the wyvern, furiously pumping [if cocks of player > 2]two of them[otherwise if cocks of player is 2]both of them[otherwise]it[end if] before you're finally overtaken with bliss, pumping your [cum load size of player] all over the[if scalevalue of player < 4] massive[end if] beast[if cock width of player > 19], making a glaring mess of [ghim][end if]";
		if tempnum2 is 1:
			say ". This shaming is enough to set [ghim] off as well, roaring out as [ghis] [if WYVGEN is 0]own, monstrous, and unattended dick twitches and sputters his seed across the earth[otherwise if tempnum is 2]oozing portals aches against the open air[otherwise]oozing, unattended pussy aches for attention[end if].";
		otherwise:
			say ". [if WYVGEN is 0]He[otherwise]She[end if] can only twitch and groan as [ghe]'s shamed so, growling weakly as [ghis] [if WYVGEN is 0]own, unattended dick throbbing and oozing[otherwise if tempnum is not 2]oozing portals aching for additional attention[otherwise]oozing, unattended pussy aching for attention[end if] against the open air.";
	otherwise:
		say "     With one final thrust, you [if cockname of player is listed in infections of knotlist]tie[otherwise]hilt[end if] your cock[if tempnum > 0]s[end if] within the wyvern, gripping [ghim] tightly as the[if scalevalue of player < 4] massive[end if] beast's tight hole[if tempnum is 2]s are[otherwise] is[end if] pumped full with your [cum load size of player] load[if cock width of player > 19], quickly beginning to leak with your excess seed[end if]";
		if tempnum2 is 1:
			say ". This is enough to set [ghim] off as well, roaring out as [ghis] [if WYVGEN is 0]own, monstrous, and unattended dick twitches and sputters his seed across the earth[otherwise if tempnum is 2]greedy portals squeezes and milks your invading dicks of every last drop[otherwise]greedy pucker squeezes and milkes you tightly of every last drop[end if].";
		otherwise:
			say ". [if WYVGEN is 0]He[otherwise]She[end if] can only twitch and groan as [ghe]'s shamed so, growling weakly as [ghis] [if WYVGEN is 0]own, unattended dick throbs and oozes[otherwise if tempnum is not 2]stuffed portals ache for additional attention[otherwise]oozing, unattended pussy ache for attention[end if] against the open air.";
	say "     You need a moment to catch your breath, but you eventually pull away from the monster. Observing the mess you've made, [ghis] form a writhing, lust-hazed, and exhausted pile of scales. No doubt it'll take the beast a while to recover from that, and you choose to depart, leaving [ghim] to the mercy of those in the vicinity who might risk the opportunity for some sloppy seconds.";
	
to say wyvgen_2: [Oral Receiving Cock]
	say "     Circling around to meet the wyvern at his front, the defeated beast growls lowly at you. Not immediately compliant though [ghe] may be, it's clear [ghe]'s too spent to put up any fight for long. Carefully, you expose your eager, [cock size desc of player] dick[smn] before [ghim]. At first inclined to nip impotently at [if cocks of player > 1]one of them[otherwise]it[end if], you're forced to swat the monster down until [ghe]'s gentler, eventually meeting it with [ghis] coarse, saliva-slicked tongue.";
	say "     Prehensile appendage slathering its affection on your tool, you can't help but thrust against the wyvern's snout, eventually forcing [ghim] to engulf it within the confines of [ghis] scaled maw[if cocks of player > 2], its brothers grinding against [ghim] and[otherwise if cocks of player is 2], its brother grinding against [ghim] and[otherwise],[end if] no doubt filling [ghis] senses with the taste and scent of your precum. Unable to resist [ghis] growing, wanton need, the beast grinds [ghim]self against the ground, [ghis] own arousal brought about by your lewd task.";
	say "     Eventually, [ghis] fervour drives [ghim] to hilt your organ entirely within [ghis] greedy hole -- a feat [if cock length of player < 18]not particularly difficult given how large [ghe] is[otherwise]no doubt putting some strain on [ghim], given how well-endowed you are[end if][if scalevalue of player < 5] -- pinning you against a wall[end if]. As you quickly approach your inevitable bliss, so too does your massive companion become more determined to suck you dry. Perhaps you should pry yourself free at the last second and shame the beast? Otherwise, you'll properly reward [ghis] compliance.";
	if player consents:
		say "     It takes a bit of work[if scalevalue of player < 5] to pull yourself from the wall[end if], but you manage to wrench your throbbing organ from the wyvern at the last second, [if cock width of player > 20]drenching[otherwise]sullying[end if] the beast across [ghis] face with your [cum load size of player] load, who can only growl and whine in a wanton haze";
	otherwise:
		say "     In a few short seconds it's clear that you can hold back no longer, a cry forced out of you[if scalevalue of player < 5] from against the wall[end if] before you unleash your [cum load size of player] load into the wyvern's abyssal gullet[if cock width of player > 20] until the impressive load begins to ooze from [ghis] scaled lips[end if], [if cocks of player > 2]your exposed dicks staining the side of [ghis] muzzle as [ghe] loudly growls[otherwise if cocks of player is 2]your exposed dick staining the side of [ghis] muzzle as [ghe] loudly growls[otherwise]loudly growling[end if] in tainted approval";
	say ". Eventually, you manage to pull away from the monster, after [ghe] spent a moment idly licking your spent tool[smn].";
	say "     Satisfied, you leave the wyvern, who you can clear see is lost in the throes of [ghis] own lust, having made a rather embarrassing, sticky mess of the ground [ghe]'s relegated [ghim]self to grinding against.";
	
to say wyvgen_3: [Oral Receiving Cunt]
	say "     Circling around to meet the wyvern at his front, the defeated beast growls lowly at you. Not immediately compliant though [ghe] may be, it's clear [ghe]'s too spent to put up any fight for long. Carefully, you expose your eager, [cunt size desc of player] unt[smn] before [ghim], at first inclined to nip impotently at [if cunts of player > 1]one of them[otherwise]it[end if], forcing you to swat the monster down until [ghe]'s gentler, eventually meeting it with [ghis] coarse, saliva-slicked tongue.";
	say "     Prehensile appendage slathering its affection on your feminine portal, you can't help but press against the wyvern's snout, eventually forcing [ghim] to worm the slick organ within the confines of your hole[if cocks of player > 0], hardening dick[smn] grinding against his snout and[otherwise if cunts of player > 2], its unattended sisters oozing against the [ghis] lips and[otherwise if cunts of player is 2], its unattended sister oozing against the [ghis] lips and[otherwise],[end if] no doubt filling [ghis] senses with the taste and scent of your honey. Unable to resist [ghis] growing, wanton need, the beast grinds [ghim]self against the ground, [ghis] own arousal brought about by your lewd task.";
	say "     Eventually, [ghis] fervour drives [ghim] to dig [ghis] tongue entirely within your greedy hole -- an act [if cunt length of player < 15]quickly stretching you to your limits, given how large [ghe] is[otherwise]your sizeable hole can easily abide, in spite [ghis] large size[end if][if scalevalue of player < 5] -- pinning you against a wall[end if]. As you quickly approach your inevitable bliss, so too does your massive companion become more determined to taste your ecstasy.";
	say "     In a few short seconds it's clear that you can hold back no longer, a cry forced out of you[if scalevalue of player < 5] from against the wall[end if] before you are wracked in the throes of bliss, pussy tightening around the wyvern's writhing appendage, [if cocks of player > 0]your unattended cock[smn] staining the side of [ghis] muzzle as [ghe] loudly growls[otherwise]loudly growling[end if] in tainted approval. Eventually, you manage to pull away from the monster, after [ghe] spent a moment idly licking your stretched and dripping hole.";
	say "     Satisfied, you leave the wyvern, who you can clear see is lost in the throes of [ghis] own lust, having made a rather embarrassing, sticky mess of the ground [ghe]'s relegated [ghim]self to grinding against.";

to say wyvmale_1: [Cunt Catching]
	say "     [if scalevalue of player < 5]Perhaps the hardest part of this task is to roll the wyvern onto his back, the exhausted beast eventually complying with your endeavour[otherwise]It takes a little work, but you manage to roll the wyvern onto his back, the exhausted beast offering little in the way of any protest[end if]. Chitinous undercarriage exposed before you, your curious hands fondle his otherwise unmarked crotch until the affection is enough to bring him to attention, scales parting to gradually expose his massive, draconic dick before you. Shall you engage in a bit of foreplay? Otherwise, you'll skip straight to the fun part.";
	if player consents:
		say "     [if scalevalue of player < 4]Difficult for you to grip[otherwise]Firmly gripping[end if] around the girth of the wyvern's hardening dick, your kneading attendance invites the monster to growl lowly, overtaken by his wanton need, precum oozing from the tip of its blunt head. Compelled to taste his emergent sexual fluids, your head lowers, tongue teasing along his leaking cockhead, taste awash in his heady, masculine aura.";
		say "     You continue this ritual for a fair length of time, bestial tool[if scalevalue of player > 3] quickly[end if] slick with a mix of sexual fluids and saliva, before you feel you should get to the task at hand.";
		now tempnum is 1;
	otherwise:
		now tempnum is 0;
	say "     [if scalevalue of player < 5]Crawling[otherwise]Climbing[end if] on top of him, you line up[if cunts of player > 1] one of[end if] your exposed, [cunt size desc of player] cunt[sfn] with the beast's impressive, oozing dick. Slowly forcing yourself down on his blunt head, [if tempnum is 1 and cunt length of player < 19]it no doubt gives you a lot of resistance, though your prior affection has eased it somewhat[otherwise if cunt length of player < 19]it no doubt gives you a lot of resistance, exacerbated by its lack of lubrication[otherwise if tempnum is 1]it doesn't give you much resistance, especially thanks to your prior work[otherwise]it doesn't give you much resistance, though a lack of prior lubrication doesn't help[end if], a loud groan squeezed from the wyvern by your[if cunt length of player < 19] tight,[end if] supple folds. [if cocks of player > 0]Your own dick[smn] driven hard[otherwise if cunts of player > 2]Unattended cunts aching[otherwise if cunts of player is 2]Unattended cunts aching[otherwise]Your body trembling[end if] as you slowly engulf the tool, inch by inch, until you feel properly acclimated to its presence, gradually building up a motion of fucking yourself with the beast.";
	say "     Your scaled companion writhing and groaning as your pace begins to pick up, he claws impotently at the earth, your bowels hit with a powerful spurt of pre with each of your body's descent. Instinctively, you're driven to [if cocks of player > 1]jerk off one of your cocks, unable to resist[otherwise if cocks of player is 1]jerk of your cock, unable to resist[otherwise if cunts of player > 2]fondle one of your unattended pussies, unable to resist[otherwise if cunts of player is 2]fondle your unattended pussy, unable to resist[otherwise]fondle yourself, eager to satisfy[end if] your own need. You can sense that the wyvern is about to blow, shall you pull off at the last second?";
	if player consents:
		say "     Who should be the target of his release? Shall you take the brunt of his load? Else you'll give the beast a taste of his own medicine.";
		if player consents:
			say "     At the very last second, you pull free of the monster's dick, grinding your backside against it for a few brief seconds before its owner roars out, painting you[if scalevalue of player is 3] utterly[otherwise]r ass and back[end if] with his virile seed. Succumbing to your own bliss, [if cocks of player > 1]your cocks fire off your [cum load size of player] load, staining the beast's scales along with his own[otherwise if cocks of player is 1]your cock fires off your [cum load size of player] load, staining the beast's scales along with his own[otherwise]your cunt[sfn] aching and staining the dragon's scales with your sexual fluids, mixing with his own[end if].";
			now tempnum is 1;
		otherwise:
			say "     At the very last second, you pull free of the monster's dick, pulling to grind your crotch against it for a few brief seconds before its owner roars out, painting the beast in his his own, voluminous seed. Succumbing to your own bliss, [if cocks of player > 1]your cocks fire off your [cum load size of player] load, staining the beast's scales along with his own[otherwise if cocks of player is 1]your cock fires off your [cum load size of player] load, staining the beast's scales along with his own[otherwise]your cunt[sfn] aching and staining the dragon's scales with your sexual fluids, mixing with his own[end if].";
			now tempnum is 0;
	otherwise:
		say "     With one final plunge, you hilt the monster's dick within you[if scalevalue of player < 5] to the best of your ability[end if], more than enough to make its owner roar out, assaulting you with gout after successive gout flooding your womb[if scalevalue of player < 5], causing your body to visibly bloat until it sputters from your stuffed hole[otherwise]until it begins to ooze from your stuffed hole[end if]. Succumbing to your own bliss, [if cocks of player > 1]your own cocks fire off your [cum load size of player] load, staining the beast's scales[otherwise if cocks of player is 1]your own cock fires off your [cum load size of player] load, staining the beast's scales[otherwise if cunts of player > 0]your stuffed cunt squeezing hungrily around the throbbing organ[end if]. [impregchance][line break]";
		now tempnum is 0;
	say "     Taking a moment to catch your breath, you eventually pull yourself free of the wyvern and his tool, its audible departure from your ass loudly echoing through the air. You set him off with a smack, though his lingering exhaustion makes him slow to comply. Satisfied, you go on your merry way... Though now perhaps a little sore from the whole affair[if tempnum is 1], to say nothing of being a cum-drenched mess[end if].";

to say wyvmale_2: [Anal Catching]
	say "     [if scalevalue of player < 5]Perhaps the hardest part of this task is to roll the wyvern onto his back, the exhausted beast eventually complying with your endeavour[otherwise]It takes a little work, but you manage to roll the wyvern onto his back, the exhausted beast offering little in the way of any protest[end if]. Chitinous undercarriage exposed before you, your curious hands fondle his otherwise unmarked crotch until the affection is enough to bring him to attention, scales parting to gradually expose his massive, draconic dick before you. Shall you engage in a bit of foreplay? Otherwise, you'll skip straight to the fun part.";
	if player consents:
		say "     [if scalevalue of player < 4]Difficult for you to grip[otherwise]Firmly gripping[end if] around the girth of the wyvern's hardening dick, your kneading attendance invites the monster to growl lowly, overtaken by his wanton need, precum oozing from the tip of its blunt head. Compelled to taste his emergent sexual fluids, your head lowers, tongue teasing along his leaking cockhead, taste awash in his heady, masculine aura.";
		say "     You continue this ritual for a fair length of time, bestial tool[if scalevalue of player > 3] quickly[end if] slick with a mix of sexual fluids and saliva, before you feel you should get to the task at hand.";
		now tempnum is 1;
	otherwise:
		now tempnum is 0;
	say "     [if scalevalue of player < 5]Crawling[otherwise]Climbing[end if] on top of him, you line your ass with the beast's impressive, oozing dick. Slowly forcing yourself down on his blunt head, [if tempnum is 1 and scalevalue of player < 5]it no doubt gives you a lot of resistance, though your prior affection has eased it somewhat[otherwise if scalevalue of player < 5]it no doubt gives you a lot of resistance, exacerbated by its lack of lubrication[otherwise if tempnum is 1]it doesn't give you much resistance, especially thanks to your prior work[otherwise]it doesn't give you much resistance, though a lack of prior lubrication doesn't help[end if], a loud groan squeezed from the wyvern by your[if scalevalue of player < 5] tight[end if] hole. [if cocks of player > 0]Your own dick[smn] driven hard[otherwise if cunts of player > 0]Unattended cunt[sfn] aching[otherwise]Your body trembling[end if] as you slowly engulf the tool, inch by inch, until you feel properly acclimated to its presence, gradually building up a motion of fucking yourself with the beast.";
	say "     Your scaled companion writhing and groaning as your pace begins to pick up, he claws impotently at the earth, your bowels hit with a powerful spurt of pre with each of your body's descent. Instinctively, you're driven to [if cocks of player > 1]jerk off one of your cocks, unable to resist[otherwise if cocks of player is 1]jerk of your cock, unable to resist[otherwise if cunts of player > 1]fondle one of your pussies, unable to resist[otherwise if cunts of player is 1]fondle your pussy, unable to resist[otherwise]fondle yourself, though you lack any proper outlet to satisfy[end if] your own need. You can sense that the wyvern is about to blow, shall you pull off at the last second?";
	if player consents:
		say "     Who should be the target of his release? Shall you take the brunt of his load? Else you'll give the beast a taste of his own medicine.";
		if player consents:
			say "     At the very last second, you pull free of the monster's dick, grinding your backside against it for a few brief seconds before its owner roars out, painting you[if scalevalue of player is 3] utterly[otherwise]r ass and back[end if] with his virile seed. Succumbing to your own bliss, [if cocks of player > 1]your cocks fire off your [cum load size of player] load, staining the beast's scales along with his[otherwise if cocks of player is 1]your cock fires off your [cum load size of player] load, staining the beast's scales along with his[otherwise if cunts of player > 1]your cunts aching and staining the dragon's scales with your sexual fluids, mixing with his own[otherwise]body writhing and twisting in insatiable need[end if].";
			now tempnum is 1;
		otherwise:
			say "     At the very last second, you pull free of the monster's dick, pulling to grind your crotch against it for a few brief seconds before its owner roars out, painting the beast in his his own, voluminous seed. Succumbing to your own bliss, [if cocks of player > 1]your cocks fire off your [cum load size of player] load, staining the beast's scales along with his[otherwise if cocks of player is 1]your cock fires off your [cum load size of player] load, staining the beast's scales along with his[otherwise if cunts of player > 1]your cunts aching and staining the dragon's scales with your sexual fluids, mixing with his own[otherwise]body writhing and twisting in insatiable need[end if].";
			now tempnum is 0;
	otherwise:
		say "     With one final plunge, you hilt the monster's dick within you[if scalevalue of player < 5] to the best of your ability[end if], more than enough to make its owner roar out, assaulting you with gout after successive gout flooding your bowels[if scalevalue of player < 5], causing your body to visibly bloat until it sputters from your stuffed hole[otherwise]until it begins to ooze from your stuffed hole[end if]. Succumbing to your own bliss, [if cocks of player > 1]your cocks fire off your [cum load size of player] load, staining the beast's scales[otherwise if cocks of player is 1]your cock fires off your [cum load size of player] load, staining the beast's scales[otherwise if cunts of player > 1]your cunts aching and staining the dragon's scales with your sexual fluids[otherwise]body writhing and twisting in insatiable need[end if].";
		now tempnum is 0;
	say "     Taking a moment to catch your breath, you eventually pull yourself free of the wyvern and his tool, its audible departure from your ass loudly echoing through the air. You set him off with a smack, though his lingering exhaustion makes him slow to comply. Satisfied, you go on your merry way... Though now perhaps a little sore from the whole affair[if tempnum is 1], to say nothing of being a cum-drenched mess[end if].";

to say wyvmale_3: [Oral Giving Cock]
	say "      After managing to get the wyvern on his back, you curiously fondle his thickly scaled undercarriage, the beast growling in impotent protest of your inspection. The coarse, seemingly chitinous array obstructs any identifying mark of where the creature houses his dick, but it only takes a bit of work for the scales to part, gradually exposing his impressive tool.";
	say "     Organ's supple flesh in stark contrast to the wyvern's rough exterior, it doesn't take long before you fondling brings him to full attention, throbbing and dribbling pre from its blunt head onto himself. Shall you lavish your full affection of his offering? Otherwise, you'll keep your distance.";
	if player consents:
		say "     Unable to resist the opportunity, you move your head in closer, tongue caressing along its length, tasting the beast's flesh. Its shaft slightly mimics the plated scales of his undercarriage along its sides, giving it a distinctive ribbing, ending at its mostly flat head, it's [if scalevalue of player is 1]almost as big as you are![run paragraph on][otherwise if scalevalue of player is 2]at least half your size![run paragraph on][otherwise if scalevalue of player is 3]size is extremely intimidating.[run paragraph on][otherwise if scalevalue of player is 4]size is somewhat intimidating.[run paragraph on][otherwise]size is impressive, though it's nothing you can't handle.[run paragraph on][end if] Your attendee growling lowly in approval, he can't help but writhe against the attention you offer him, his persistent oozing compelling your taste, tongue awash in the beast's masculine flavour.";
	otherwise:
		say "     Remaining aloof, you continued to knead and pump the beast's [if scalevalue of player < 4]extremely intimidating[otherwise if scalevalue of player is 4]somewhat intimidating[otherwise]impressive[end if] flesh. Your attendee growling lowly in approval, he can't help but writhe against the attention you offer him, its persistent oozing noticeably staining his torso with precum.";
	say "     As you gradually pick up the pace, so too does the wyvern's breath become more shallow, clawing weakly at the ground as your grow more and more determined to set him off. As he rapidly approaches his bliss, shall you finish this by sucking him off? Otherwise, you'll leave him to fire into the open air.";
	if player consents:
		say "     Closing in, your lips firmly embracing its sputtering head, [if scalevalue of player < 4]it's much too large for you to fit[otherwise if scalevalue of player is 4]you try your best to engulf it[otherwise]you're quick to exploit your large size, engulfing it entirely[end if] within the confines of your maw, tongue lapping eagerly against his flesh. This is more than enough to set the wyvern off, roaring out in bestial ecstasy as your eager hole is quickly flooded with wave after wave of his virile cum, [if scalevalue of player < 4]very quickly becoming too much for you and sputtering from your lips[otherwise if scalevalue of player is 4]which proves quite a challenge to keep up with, soon oozing from your lips[otherwise]proving not to be that much of a challenge for you to keep up with, milking him for every last drop[end if].";
	otherwise:
		say "     In a few, brief seconds you manage to set off the wyvern, roaring out in bestial ecstasy as his scaled body is splattered with wave after wave of his virile cum. No doubt this is quite an embarrassing sight for the once intimidating beast, now nothing but a shameful, lust-hazed mess of a creature.";
	say "      Taking a moment to catch your breath and clean yourself of the substantial mess he's made, you set off and leave the exhausted and spent monster, satisfied with your work... Albeit a bit aroused yourself from all of it.";
	increase libido of player by 3;

to say wyvfem_1: [Cunt Pitching]
	say "     [if scalevalue of player < 5]Given how massive the wyvern is, it takes you a bit of effort to properly position the beast[otherwise]With a little work, you manage to position the wyvern[end if] for your entry, whose exhausted form can only abide your preparations. Rough, chitinous scales obfuscating the hole, you're forced to use a digit to find where it's hiding, your exploration soon rewarded as they eventually part around your appendage to expose soft, supple flesh to your touch.";
	say "     Your bit of exploration causes the monster to writhe and growl in impotent protest, soon betrayed by her own arousal, assaulted hole quickly becoming slick from your continued attention. Ready for you, shall you engage in a bit of foreplay? Else you'll get straight to the point.";
	if player consents:
		say "     Exploiting the wyvern's apparent arousal, you continue to lightly caress and tease her bestial vent. Unable to resist your touch, the monster can't help but groan loudly and writhe against the earth, further making an embarrassing mess of herself. Satisfied with your brief tease, you move onto the more pressing matter.";
		now tempnum2 is 1;
	otherwise:
		now tempnum2 is 0;
	if cocks of player > 1 and (WYVGEN is 1 or cock length of player < 20): [1 = Yes, cunt. 2 = Shared, ass and cunt. 0 = No.]
		say "     You figure you can use [if cocks of player is 2]both[otherwise]two[end if] of your cocks, shall you? [if WYVGEN is 1 and cock length of player > 19]You're probably too well-endowed for her to fit both of them in [ghis] cunt, so the only choice you have is to go for both holes.[end if]";
		if player consents:
			if WYVGEN is 0:
				now tempnum is 1;
			otherwise:
				if cock length of player > 19:
					now tempnum is 2;
				otherwise:
					say "     Shall you penetrate her cunt exclusively? Else you'll make use of both holes.";
					if player consents:
						now tempnum is 1;
					otherwise:
						now tempnum is 2;
		otherwise:
			now tempnum is 0;
	otherwise:
		now tempnum is 0;
	say "     Briefly testing her hole[if tempnum is 2]s[end if] with your [cock size desc of player] dick[if tempnum > 0]s[end if], you show little restraint in plunging [if tempnum > 0]them[otherwise]it[end if] into the wyvern's depths, [if cock length of player < 13 and tempnum is not 1]your small size relative to her making the task fairly easy[otherwise if cock length of player < 10 and tempnum is 1]your small size relative to [ghim] making the task fairly easy, even with forcing both cocks in there[otherwise if tempnum is 1]each successive inch making her groan loudly, no doubt strained by both cocks[otherwise]each successive inch making her groan loudly, no doubt strained by your impressive intrusion[end if]. Taking a brief moment to revel in her supple, yielding pussy, you eventually begin fucking the beast proper, [if scalevalue of player > 3]each powerful thrust sending a tremor across her body[otherwise]gripping her larger form tightly[end if].";
	say "     The wyvern growling lowly, she's no doubt a shameful sight to see, the predator now being railed by her[if scalevalue of player < 4] diminutive[end if] prey, [if tempnum is 2]her stuffed holes squeezing against their [cock size desc of player] intrusions[otherwise if tempnum is 1]her stuffed hole squeezing against its [cock size desc of player] intrusions[otherwise]her stuffed hole squeezing against its [cock size desc of player] intrusion[end if]. As time goes on, your pace continuing to pick up, it's clear that you won't be able to hold back for much longer. Shall you pull out at the last second?";
	if player consents:
		say "     You wrench [if tempnum > 0]both of your cocks[otherwise]your cock[end if] free of the wyvern, furiously jerking [if cocks of player > 2]two of them[otherwise if cocks of player is 2]both of them[otherwise]it[end if] before you're finally overtaken with bliss, pumping your [cum load size of player] all over the[if scalevalue of player < 4] massive[end if] beast[if cock width of player > 19], making a glaring mess of her[end if]";
		if tempnum2 is 1:
			say ". This shaming is enough to set her off as well, roaring out as her oozing portal aches against the open air.";
		otherwise:
			say ". She can only twitch and groan as [ghe]'s shamed so, growling weakly as her oozing portal aches for additional attention against the open air.";
	otherwise:
		say "     With one final thrust, you [if cockname of player is listed in infections of knotlist]tie[otherwise]hilt[end if] your cock[if tempnum > 0]s[end if] within the wyvern, gripping her tightly as the[if scalevalue of player < 4] massive[end if] beast's tight hole[if tempnum is 2]s are[otherwise] is[end if] pumped full with your [cum load size of player] load[if cock width of player > 19], quickly beginning to leak with your excess seed[end if]";
		if tempnum2 is 1:
			say ". This is enough to set [ghim] off as well, roaring out as her [if tempnum is 2]greedy portals squeezes and milks your invading dicks of every last drop[otherwise]greedy portal squeezes and milkes you tightly of every last drop[end if].";
		otherwise:
			say ". She can only twitch and groan as [ghe]'s shamed so, growling weakly as her [if tempnum is 2]stuffed, barely sated portals ache for additional attention[otherwise]stuffed, barely sated portal aches for additional attention[end if] against the open air.";
	say "     You need a moment to catch your breath, but you eventually pull away from the monster. Observing the mess you've made, her form a writhing, lust-hazed, and exhausted pile of scales. No doubt it'll take the beast a while to recover from that, and you choose to depart, leaving her to the mercy of those in the vicinity who might risk the opportunity for some sloppy seconds.";

to say wyvfem_2: [Oral Giving Cunt]
	say "      After managing to get the wyvern on her back, you curiously fondle her thickly scaled undercarriage, the beast growling in impotent protest of your inspection. The coarse, chitinous array obstructs any identifying mark of where the creature houses her cunt, but it only takes a bit of work for the scales to part around your querying digit, exposing her soft flesh to your touch.";
	say "     Supple entrance in stark contrast to the wyvern's rough exterior, it doesn't take long before you fingering causes her to grow slick, blatantly aroused by your attendance. Shall you lavish your full affection on her offering? Otherwise, you'll keep your distance.";
	if player consents:
		say "     Unable to resist the opportunity, you move your head in closer, tongue plunging within her depths, tasting the wyvern's flesh. Her bestial vent yielding and inviting, it squeezes around your[if scalevalue of player > 3] substantive[end if] appendage, eager to abide its slick, writhing occupancy. Your attendee growling lowly in approval, she can't help but writhe against the attention you offer her, her persistent oozing compelling you to revel in the taste of her primal honey.";
	otherwise:
		say "     Remaining aloof, you continued to fondle the beast's vent. Your attendee growling lowly in approval, she can't help but writhe against the attention you offer her, its persistent oozing noticeably staining your digits with her primal honey.";
	say "     As you gradually pick up the pace, so too does the wyvern's breath become more shallow, clawing weakly at the ground as your grow more and more determined to set her off. As she rapidly approaches her bliss, shall you finish this by tonguing her? Otherwise, you'll leave your fingers to do that job.";
	if player consents:
		say "     Closing in, your lips firmly embracing its throbbing, slick entrance, tongue eagerly diving into her inviting depths. This is more than enough to set the wyvern off, roaring out in bestial ecstasy, writhing appendage squeezed by her aching hole, your eager maw is quickly flooded with a wave of her bestial honey, [if scalevalue of player < 4]very quickly dripping from your lips and staining the ground[otherwise]compelling you to swallow down every last drop[end if].";
	otherwise:
		say "     In a few, brief seconds you manage to set off the wyvern, roaring out in bestial ecstasy as the floor is quickly stained with her bestial honey. No doubt this is quite an embarrassing sight for the once intimidating beast, now nothing but a shameful, lust-hazed mess of a creature.";
	say "      Taking a moment to catch your breath and clean yourself of the substantial mess she's made, you set off and leave the exhausted and spent monster, satisfied with your work... Albeit a bit aroused yourself from all of it.";
	increase libido of player by 3;

Section 2 - Monster Insertion

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
	now face change entry is "as you're forced to abide the audible sound of bones shifting in shape, head drawn out into a long, draconic muzzle with a sharp row of feral teeth";  [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you must abide a fairly substantial infection, doubled over as you must endure the change. Torso becoming increasingly massive and feral, your hind legs become thick, muscular thing, whilst your arms shift in shape to that of a set of thick, bat-like wings. You retain a number of fingers on each hand, allowing articulation, but you imagine this comes at the expense of not being able to fly"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "hard, almost chitinous scales grow from your person. A muted brown shade, they render your surface coarse and intimidating";  [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a fairly long tail erupts from it. Heavy and fully prehensile, it takes you a moment to adjust to its ponderous weight"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "burning heat encapsulates your member, pulled back into your body along with your balls. After some coaxing, you can conjure up your cock from its new home, now a blunted, feral looking thing"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 17;
	now dex entry is 12;
	now sta entry is 17;
	now per entry is 13;
	now int entry is 12;
	now cha entry is 9;
	now sex entry is "Male"; 
	now hp entry is 35;
	now lev entry is 3;
	now wdam entry is 6;	
	now area entry is "Outside";
	now cocks entry is 1;
	now cock length entry is 19;	
	now cock width entry is 12;		
	now breasts entry is 0;	
	now breast size entry is 0;
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 25;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 16;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 25;			[ Amount player Libido will go up if defeated ]
	now loot entry is "wyvern goop";			[ Loot monster drops, ]
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

Section 3 - Vore Bound State

to say wyvorescene:
	say ".";
	say "     The beast approaches [ghis] new captive, intent on asserting total dominance as it pins your already-bound body to the ground with one of its wing-limbs, body awash in [ghis] hot, acrid breath as you're made to endure the wyvern's loud, ear-splitting screech. Appearing satisfied by the gesture, you see a hungry look in [ghis] eyes, still-agape maw's thick tongue soon lavishing smug affection across your [bodytype of player] form. It's clear what [ghe] has in store for you.";
	say "     It appears that [ghis] saliva can dissolve the material binding you,[if hp of player < 1] but this brief liberation isn't enough for you to attempt retreat, as [ghe]'s[end if] eager instead to grip you by [ghis] powerful jaws. Wrenching the remainder of your tethered body from the ground, you're blanketed in utter darkness, forced to contend with the full attendance of that warm, writhing appendage as it wraps around you.";
	say "     Your fate sealed, the massive beast need but only lift its head, slick walls wrapped around you shoving you further into [ghis] fleshy abyss, [ghis] gullet soon bulging visibly to abide its new occupant";
	if hp of player < 1:
		say ". However, not intent on being consumed so easily and now free from your prior bondage, you physically struggle to stop your descent, hands pushing yourself away from that final portal to [ghis] stomach. The wyvern growling and groaning in the wake of your discontent, it's become a fight to escape!";
		now boundsegment is 1;
	otherwise:
		say ". Not putting up a fight, even as you're now liberated from your prior bondage, all it one takes is one final, powerful gulp to squeeze you past that final portal to [ghis] stomach. Surrounded by supple, saliva-slicked walls, you begin to feel yourself slowly being drained. You don't imagine you'll last long in here...";
		now boundsegment is 0;
	if waiterhater is 0, wait for any key;
	wyvore;

to wyvore:
	now lustatt is libido of player;
	now calcnumber is -1;		
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if hp of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if cocks of player > 0]jerk yourself off[otherwise]fondle yourself[end if], writhing and twisting in these dark, damp confines until you finally find reprieve, [if cocks of player > 0]unloading your [cum load size of player] load against the supple flesh[otherwise if cunts of player > 0]cunt throbbing firmly against the supple flesh[otherwise]a particularly trying task given your lack of outlet[end if][if cocks of player > 0 and cock width of player > 20]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
			now lustatt is libido of player;
			if struggleatt > 0, decrease struggleatt by 1;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			otherwise:
				decrease humanity of player by 15 + (psycheadjust * 5);
		increase boundcounter by 1;
		if boundcounter is 4:
			say "     The wyvern's body churns and [ghe] seems to have reached a point where [ghe] can keep you down. It seems your prolonged presence here has given you no other choice but to leave the beast through the other way out.";
			now boundmod is 1;
		if boundsegment is not 1:
			if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
				increase hunger of player by 1;
				increase thirst of player by 2;
			otherwise if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
				increase thirst of player by 1;
			say "     Bathed in saliva and utter darkness, you're lost in a slick, constraining sea of flesh, trapped in the belly of a wyvern. [one of]Your captor growls lowly in satisfaction, sending vibrations to tremor across your vulnerable form[or]Your body tingles as its slowly being drained[or]You become disoriented as you find yourself tussled about from any movement by the beast[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[otherwise][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[otherwise][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		otherwise:
			say "     Strong walls of the wyvern's gullet squeezing all around you, it's a task simply to keep yourself from reaching your ultimate destination. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[otherwise][bold type]A[roman type]bide[end if] them, or you can try to [if boundrecover is true][bold type]R[roman type]ecover[otherwise][bold type]E[roman type]ndure[end if][line break] and succumb to your inevitable fate![line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[otherwise]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[otherwise]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of player]	Thirst: [thirst of player]	Struggle: [wyvstrugglebar][line break][run paragraph on]";
		if humanity of player < 1:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Wyvern":
					now monster is y;
					break;
			now bodyname of player is "Wyvern";
			now facename of player is "Wyvern";
			now tailname of player is "Wyvern";
			now skinname of player is "Wyvern";
			now cockname of player is "Wyvern";
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			now voreloss is true;
			now trixieexit is 1;
			end the game saying "You became a Wyvern's meal!";
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
				if boundcounter > 0, decrease boundcounter by 1;
				if boundsegment is 1:
					if struggleatt is 1:
						say "     You manage to start forcing yourself back up through [ghis] gullet, getting yourself turned around to face your exit. You look like you're about to be free, the outside's [if daytimer is day]daylight[otherwise]night lights[end if] visible through the beast's maws, before [ghe] rears [ghis] head once more, pulling you back into the depths of [ghis] gullet. You've been set back, but you at least made some headway.";
						increase lustatt by 7 + (lustadjust * 2);
						wyvhumanityroll;
						wait for any key;
					otherwise:	
						say "     Fighting with the wyvern's endeavour for what seems like forever, [ghe] just gets fed up with your protests, throat's muscles -- once pulling you further in -- now push you back out, the wyvern hacking you out until you fall onto the ground, landing in a puddle of [ghis] saliva. Screeching down at you, you still manage to get to your feet and dive over to someplace where you can hide.";
						say "     [if WYVGEN is 1]She[otherwise]He[end if] only pursues you briefly, trying to retrieve you once more, but [ghe]'s clearly frustrated enough with you that [ghe] eventually just gives up, turning off and taking flight once more to find easier prey. Catching your breath for a moment, you eventually, cautiously step out from hiding, going back to your own business once it's clear you're in no immediate danger.";
						cleanboundmemory;
						now pewtergenitalcap is 0;
						now trixieexit is 1;
						follow the turnpass rule;
				otherwise:
					if struggleatt < 3:
						say "     You struggle to free yourself of the wyvern's stomach, [if struggleatt is 1]barely registering for the beast[otherwise]the beast beginning to growl in discontent.[run paragraph on].[run paragraph on][end if].";
						increase lustatt by 7 + (lustadjust * 2);
						wyvhumanityroll;
						wait for any key;
					otherwise:
						if boundmod is not 1:
							say "     Unable to keep you down any longer, the belly's slick walls constrict around you squeezing you back up from whence you came; however, not intent on letting [ghis] recent meal off that easy, [ghe] keeps you firmly confined to [ghis] gullet, desperately trying to swallow you back down!";
							now tempnum2 is 1;
							wait for any key;
							now boundsegment is 1;
							now struggleatt is 1;
						otherwise:
							say "     Your continued protests eventually causes the wyvern's stomach to groan and churn, your quivering prison soon constricting around your [bodytype of player] form you squeeze you out, downwards into the beast's fleshy tubes. Your captor rumbling lowly in displeasure, you're strung along these tight, slick confines until you're greeted once more with the dry, open air.";
							say "     The rest of you following quickly thereafter, you collapse unceremoniously onto the ground with an audibly wet sound. Taking a moment to acclimate to the outside world once more, you're eyes fall on the wyvern, who can only snort at you in disdain before turning to take flight once more, no doubt having had enough of your trouble. It takes you a while to clean yourself off and make your less-than-dignified escape.";
							cleanboundmemory;
							now trixieexit is 1;
							follow the turnpass rule;		
				next;
			otherwise if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				say "[line break]";
				if obliging is true:
					if boundsegment is 1:
						say "     You find yourself actively submitting to the wyvern's will. In mere seconds, the beast intent on exploiting this, you're plunged[if tempnum2 is 1] back[end if] into the depths of [ghis] stomach with a single gulp, the beast growling in approval of its [if tempnum2 is 1]returning[otherwise]new[end if] meal. Your body tingles as you begin to feel yourself being slowly drained by these [if tempnum2 is 1]familiar[otherwise]new[end if] confines.";
						now tempnum2 is 0;
						now boundsegment is 0;
					otherwise:
						say "     You're driven to submit to your inevitable fate as the wyvern's meal. Your captor [one of]choosing to mull around for a bit as [ghe] drains you[or]taunting you with [ghis] talon's caress over [ghis] slightly bulging belly[or]half-heartedly pursuing other potential victims who have the proper sense to run and hide[at random].";
					increase lustatt by 14 + (lustadjust * 4);
				otherwise:
					if boundsegment is 1:
						say "     You find yourself unwilling to protest against the wyvern's will. In mere seconds, the beast intent on exploiting this, you're plunged[if tempnum2 is 1] back[end if] into the depths of [ghis] stomach with a single gulp, the beast growling in approval of its [if tempnum2 is 1]returning[otherwise]new[end if] meal. Your body tingles as you begin to feel yourself being slowly drained by these [if tempnum2 is 1]familiar[otherwise]new[end if] confines.";
						now tempnum2 is 0;
						now boundsegment is 0;
					otherwise:
						say "     You abide your fate as a meal for the wyvern for a little longer. Your captor [one of]choosing to mull around for a bit as [ghe] drains you[or]taunting you with [ghis] talon's caress over [ghis] slightly bulging belly[or]half-heartedly pursuing other potential victims who have the proper sense to run and hide[at random].";
					increase lustatt by 7 + (lustadjust * 2);
				say "[line break]";
				wyvhumanityroll;
				wait for any key;
				next;
			otherwise:
				say "[line break]";
				now enduring is true;
				if boundrecover is true:
					if boundsegment is 1:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity";
						if a random chance of 1 in 2 succeeds:
							say ". However, the beast exploits this moment of vulnerabilty, plunging you [if tempnum2 is 1] back[end if] into the depths of [ghis] stomach with a single, powerful gulp, the beast growling in approval of its [if tempnum2 is 1]returning[otherwise]new[end if] meal. Your body tingles as you begin to feel yourself being slowly drained by these [if tempnum2 is 1]familiar[otherwise]new[end if] confines.";
							now tempnum2 is 0;
							now boundsegment is 0;
						otherwise:
							say ". Given your stubbornness, he seems to have some brief difficulty swallowing you down, buying you some time as his powerful muscles squeezes tightly against you.";
					otherwise:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					increase humanity of player by 3;
					if a random chance of 2 in 3 succeeds:
						decrease thirst of player by 2;
						decrease hunger of player by 1;
					otherwise:
						decrease thirst of player by 1;
					now boundrecover is false;
					if humanity of player > 100, now humanity of player is 100;
				otherwise:
					if boundsegment is 1:
						say "     You actively attempt to endure the wyvern's influence on you";
						if a random chance of 1 in 2 succeeds:
							say ". However, the beast manages to overcome your resistance, you're plunged[if tempnum2 is 1] back[end if] into the depths of [ghis] stomach with a single, powerful gulp, the beast growling in approval of its [if tempnum2 is 1]returning[otherwise]new[end if] meal. Your body tingles as you begin to feel yourself being slowly drained by these [if tempnum2 is 1]familiar[otherwise]new[end if] confines.";
							now tempnum2 is 0;
							now boundsegment is 0;
						otherwise:
							say ". Given your stubbornness, he seems to have some brief difficulty swallowing you down, buying you some time as his powerful muscles squeezes tightly against you.";
					otherwise:
						say "     You oblige your fate as a meal for the wyvern for a little longer. Your captor [one of]choosing to mull around for a bit as [ghe] drains you[or]taunting you with [ghis] talon's caress over [ghis] slightly bulging belly[or]half-heartedly pursuing other potential victims who have the proper sense to run and hide[at random].";
				say "[line break]";
				increase lustatt by 3 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";
			
boundsegment is a number that varies.
boundmod is a number that varies.
boundcounter is a number that varies.

to say wyvstrugglebar:
	if boundsegment is 1:
		say "< [bracket]-[if struggleatt > 0][bold type]X[roman type][otherwise]-[end if][close bracket] [italic type][bracket]---[close bracket][roman type]";
	otherwise:
		say "[if boundmod is 0]< [italic type][bracket]--[close bracket][roman type] [end if][bracket]-[if struggleatt > 1][bold type]X[roman type][otherwise]-[end if][if struggleatt > 0][bold type]X[roman type][otherwise]-[end if][close bracket] [if boundmod is 1] >[end if]";

Section 3-2 - Wyvern Nest Orgy Bound State

to wyvernkinroll:
	if a random chance of 1 in 4 succeeds:
		now wyvkinocc is 1;
		if a random chance of 1 in 4 succeeds:
			now wyvkinocc is 2;
	otherwise if a random chance of 1 in 4 succeeds:
		now wyvkinocc is 1;
	otherwise:
		now wyvkinocc is 0;
	if girl is banned or wyvernbias is 5 or (girl is warded and ishunting is false):
		now wyvkin1gen is 1;
		[say "First is male.";]
		now wyvkin2gen is 1;
		[say "Second is Male.";]
		if wyvkinocc > 0:
			now wyvkin3gen is 1;
			[say "Third is Male.";]
		if wyvkinocc is 2:
			now wyvkin4gen is 1;
			[say "Fourth is Male.";]
	otherwise if guy is banned or wyvernbias is 1 or (guy is warded and ishunting is false):
		now wyvkin1gen is 0;
		[say "First is female.";]
		now wyvkin2gen is 0;
		[say "Second is Female.";]
		if wyvkinocc > 0:
			now wyvkin3gen is 0;
			[say "Third is Female.";]
		if wyvkinocc is 2:
			now wyvkin4gen is 0;
			[say "Fourth is Female.";]
	otherwise:
		if wyvernbias is 2:
			if a random chance of 2 in 3 succeeds:
				now wyvkin1gen is 0;
			otherwise:
				now wyvkin1gen is 1;
			if a random chance of 2 in 3 succeeds:
				now wyvkin2gen is 0;
			otherwise:
				now wyvkin2gen is 1;
			if wyvkinocc > 0:
				if a random chance of 2 in 3 succeeds:
					now wyvkin3gen is 0;
				otherwise:
					now wyvkin3gen is 1;
			if wyvkinocc > 1:
				if a random chance of 2 in 3 succeeds:
					now wyvkin3gen is 0;
				otherwise:
					now wyvkin3gen is 1;
		otherwise if wyvernbias is 4:
			if a random chance of 2 in 3 succeeds:
				now wyvkin1gen is 1;
			otherwise:
				now wyvkin1gen is 0;
			if a random chance of 2 in 3 succeeds:
				now wyvkin2gen is 1;
			otherwise:
				now wyvkin2gen is 0;
			if wyvkinocc > 0:
				if a random chance of 2 in 3 succeeds:
					now wyvkin3gen is 1;
				otherwise:
					now wyvkin3gen is 0;
			if wyvkinocc > 1:
				if a random chance of 2 in 3 succeeds:
					now wyvkin3gen is 1;
				otherwise:
					now wyvkin3gen is 0;
		otherwise:
			if a random chance of 1 in 2 succeeds:
				now wyvkin1gen is 0;
			otherwise:
				now wyvkin1gen is 1;
			if a random chance of 1 in 2 succeeds:
				now wyvkin2gen is 0;
			otherwise:
				now wyvkin2gen is 1;
			if wyvkinocc > 0:
				if a random chance of 1 in 2 succeeds:
					now wyvkin3gen is 0;
				otherwise:
					now wyvkin3gen is 1;
			if wyvkinocc > 1:
				if a random chance of 1 in 2 succeeds:
					now wyvkin3gen is 0;
				otherwise:
					now wyvkin3gen is 1;
			
wyvkin1gen is a number that varies.
wyvkin2gen is a number that varies.
wyvkin3gen is a number that varies.
wyvkin4gen is a number that varies.
wyvkinocc is a number that varies.
wyvkin1att is a number that varies.
wyvkin2att is a number that varies.
wyvkin3att is a number that varies.
wyvkin4att is a number that varies.
wyvkinatt is a number that varies.
wyvkin1lib is a number that varies.
wyvkin2lib is a number that varies.
wyvkin3lib is a number that varies.
wyvkin4lib is a number that varies.
wyvkinassign is a number that varies.

to wyvorgy:
	now lustatt is libido of player;
	wyvernkinroll;
	say "     You eventually come to, still encased in your all-too-familiar prison. Having regained your strength, it takes little effort to break free of these now-brittle confines, exposing you to the open air once more. Observing your surroundings, [one of]a most baffling[or]a very familiar[stopping] sight is displayed before you...";
	say "     Strong air billowing against you, you see the cityscape all around you. It appears you've been dropped off at the top of a now-decrepit skyscraper, left in a nest that appears to have been assembled by various ruinous scraps of furniture and wrecked parts. Of course, it doesn't take long before your sight falls on the other occupants of this nest.";
	say "     [if wyvkinocc is 0]A pair of[otherwise if wyvkinocc is 1]Three[otherwise]Four[end if] wyverns glare back at you, a hungry look in their eyes. Much smaller than what you normally see, you deduce that they are the kin of the beast that flew off with you, either their actual offspring or other survivors who succumbed to a similar fate as you.";
	say "     Slowly stepping towards you, blatantly aroused, it's clear they intend to have their new companion sate their ever-burning need";
	if wyvkin1gen is 1 and wyvkin2gen is 1 and ((wyvkinocc > 0 and wyvkin3gen is 1) or wyvkinocc is 0) and ((wyvkinocc > 1 and wyvkin4gen is 1) or wyvkinocc < 2):
		say ". They [bold type]all[roman type] appear to be male, already-exposed and oozing dicks throbbing against the open air";
	otherwise if wyvkin1gen is 0 and wyvkin2gen is 0 and ((wyvkinocc > 0 and wyvkin3gen is 0) or wyvkinocc is 0) and ((wyvkinocc > 1 and wyvkin4gen is 0) or wyvkinocc < 2):
		say ". They [bold type]all[roman type] appear to be female, leaving a trail of sexual fluids";
	otherwise:
		if wyvkinocc > 1:
			if wyvkin1gen + wyvkin2gen + wyvkin3gen + wyvkin4gen < 2:
				say ". [bold type]Three[roman type] of them appear";
			otherwise if wyvkin1gen + wyvkin2gen + wyvkin3gen + wyvkin4gen < 3:
				say ". [bold type]Two[roman type] of them appear";
			otherwise:
				say ". [bold type]One[roman type] of them appears";
		otherwise if wyvkinocc is 1:
			if wyvkin1gen + wyvkin2gen + wyvkin3gen < 2:
				say ". [bold type]Two[roman type] of them appear";
			otherwise:
				say ". [bold type]One[roman type] of them appears";
		otherwise:
			say ". [bold type]One[roman type] of them appears";	
		say " to be female, the other ";
		if wyvkinocc > 1:
			if wyvkin1gen + wyvkin2gen + wyvkin3gen + wyvkin4gen > 2:
				say "[bold type]Three[roman type]";
			otherwise if wyvkin1gen + wyvkin2gen + wyvkin3gen + wyvkin4gen > 1:
				say "[bold type]Two[roman type]";
			otherwise:
				say "[bold type]One[roman type]";
		otherwise if wyvkinocc is 1:
			if wyvkin1gen + wyvkin2gen + wyvkin3gen > 1:
				say "[bold type]Two[roman type]";
			otherwise:
				say "[bold type]One[roman type]";
		otherwise:
			say "[bold type]One[roman type]";	
		say " being male, blatantly aroused";
	say " as they approach, easily overtaking and pinning you to the ground. Bickering between each other on who should go first, you'll likely want to pull yourself out of this pile of junk before they have their way with you, or worse yet, their [if WYVGEN is 0]'matron'[otherwise]matron[end if] return...";
	wait for any key;
	now calcnumber is -1;		
	let trixieexit be 0;
	while trixieexit is 0:
		if hp of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		now boundstate is true;
		if clearnomore is 0, clear the screen;
		if (wyvkinocc + 2) > wyvkinatt and a random chance of 4 in 5 succeeds:
			wyvernattendassess;
		wyvernkinlustapply;
		wyvernkinlustcheck;
		wyvernlustapply;
		if lustatt > 99:
			now tempnum is 1;
			say "     Overtaken by lust, you cry out in bliss[if pewterheadocc > 0], words muffled by the wyvern you're forced to attend[end if]. [if pewtercockocc > 0]Firing your [cum load size of player] into the riding beast[otherwise if cocks of player > 0]Firing your [cum load size of player] load impotently into the open air[otherwise if pewtercuntocc is 2]Stuffed cunt squeezing against its bestial intrusions[otherwise if pewtercuntocc is 1]Stuffed cunt squeezing against its bestial intrusion[otherwise if pewterassocc is 2]Stuffed asshole squeezing against its bestial intrusions[otherwise if pewterassocc is 1]Stuffed asshole squeezing against its bestial intrusion[otherwise]Writhing weakly[end if], the oversized reptiles hiss and screech in approval, no doubt further aroused by your display, though they show no sign of relenting...";
			if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
			now lustatt is libido of player;
			if struggleatt > 0, decrease struggleatt by 1;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			otherwise:
				decrease humanity of player by 15 + (psycheadjust * 5);
			if wyvkin1att > 0 or wyvkin1att < 9:
				increase wyvkin1lib by 20;
			otherwise:
				increase wyvkin1lib by 7;
			if wyvkin2att > 0 or wyvkin2att < 9:
				increase wyvkin2lib by 20;
			otherwise:
				increase wyvkin2lib by 7;
			if wyvkinocc > 0 and (wyvkin3att > 0 or wyvkin3att < 9):
				increase wyvkin3lib by 20;
			otherwise if wyvkinocc > 0:
				increase wyvkin3lib by 7;
			if wyvkinocc is 2 and (wyvkin3att > 0 or wyvkin3att < 9):
				increase wyvkin3lib by 20;
			otherwise if wyvkinocc > 1:
				increase wyvkin3lib by 7;
			wyvernkinlustcheck;
			now tempnum is 0;
		say "     Pinned to the ground by the [bold type][if wyvkinocc is 2]four[otherwise if wyvkinocc is 1]three[otherwise]two[end if][roman type] wyverns, you're trapped within the confines of some sort of twisted nest, now at the mercy of the monstrous offspring of the reptile who first kidnapped you. Wyvern A is [if wyvkin1att is 1]kissing you[otherwise if wyvkin1att is 2]forcing you to suck his dick[otherwise if wyvkin1att is 3]forcing you to eat her cunt[otherwise if wyvkin1att is 4]grinding against your torso[otherwise if wyvkin1att is 5]fucking you[otherwise if wyvkin1att is 6]fucking your ass[otherwise if wyvkin1att is 7]riding your dick[otherwise if wyvkin1att is 8]grinding against your crotch[otherwise]watching you[end if][if wyvkinocc is 0] and[otherwise],[end if] Wyvern B is [if wyvkin2att is 1]kissing you[otherwise if wyvkin2att is 2]forcing you to suck of his dick[otherwise if wyvkin2att is 3]forcing you to eat her cunt[otherwise if wyvkin2att is 4]grinding against your torso[otherwise if wyvkin2att is 5]fucking you[otherwise if wyvkin2att is 6]fucking your ass[otherwise if wyvkin2att is 7]riding your dick[otherwise if wyvkin2att is 8]grinding against your crotch[otherwise]watching you[end if]";
		if wyvkinocc > 0:
			say ",[if wyvkinocc is 1] and[end if] Wyvern C is [if wyvkin3att is 1]kissing you[otherwise if wyvkin3att is 2]forcing you to suck his dick[otherwise if wyvkin3att is 3]forcing you to eat her cunt[otherwise if wyvkin3att is 4]grinding against your torso[otherwise if wyvkin3att is 5]fucking you[otherwise if wyvkin3att is 6]fucking your ass[otherwise if wyvkin3att is 7]riding your dick[otherwise if wyvkin3att is 8]grinding against your crotch[otherwise]watching you[end if]";
		if wyvkinocc > 1:
			say ", and Wyvern D is [if wyvkin4att is 1]kissing you[otherwise if wyvkin4att is 2]forcing you to suck his dick[otherwise if wyvkin4att is 3]forcing you to eat her cunt[otherwise if wyvkin4att is 4]grinding against your torso[otherwise if wyvkin4att is 5]fucking you[otherwise if wyvkin4att is 6]fucking your ass[otherwise if wyvkin4att is 7]riding your dick[otherwise if wyvkin4att is 8]grinding against your crotch[otherwise]watching you[end if]";
		say ". You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[otherwise][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[otherwise][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[otherwise]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[otherwise]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100 [Bold type]A:[roman type] [if wyvkin1gen is 1]Male[otherwise]Female[end if]: [wyvkin1lib]/100 [Bold type]B:[roman type] [if wyvkin2gen is 1]Male[otherwise]Female[end if]: [wyvkin2lib]/100 [Bold type]C[roman type] [if wyvkinocc < 1]--[otherwise if wyvkin3gen is 1]Male[otherwise]Female[end if]: [wyvkin3lib]/100 [Bold type]D:[roman type] [if wyvkinocc < 2]--[otherwise if wyvkin4gen is 1]Male[otherwise]Female[end if]: [wyvkin4lib]/100	Struggle: _-[if struggleatt > 2][bold type]X[roman type][otherwise]-[end if][if struggleatt > 1][bold type]X[roman type][otherwise]-[end if][if struggleatt > 0][bold type]X[roman type][otherwise]-[end if]_[line break][run paragraph on]";
		if humanity of player < 1:
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Wyvern":
					now monster is y;
					break;
			now bodyname of player is "Wyvern";
			now facename of player is "Wyvern";
			now tailname of player is "Wyvern";
			now skinname of player is "Wyvern";
			now cockname of player is "Wyvern";
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
				if struggleatt < 4:
					say "     You struggle to free yourself of the wyvern kin atop you, [if struggleatt is 1]getting pretty much nowhere with the endeavour[otherwise if struggleatt is 2]getting slight leverage, though not enough to free yourself just yet,[otherwise]almost completely free of their hold[end if] and causing the wyverns to screech and nip at you, not quite intent on letting you go.";
					now tempnum is 0;
					wyverndisengage;
					wyvernmatron;
					wyvernsanityroll;
					wait for any key;
				otherwise:
					say "     Finally managing to pull yourself free, you scramble over to the nest's edge and climb out, the wyvern kin screeching as they try to follow pursuit. Situated at the top of a skyscraper, you manage to find an entrance into the building, quickly [if scalevalue of player < 4]forcing[otherwise]squeezing[end if] your way inside and slamming the door shut behind you, pinning yourself against the door as the beasts cry and bang at it.";
					say "     Eventually, they concede and return back to the nest, allowing you to go through the ordeal of making your way down the ruined tower and back onto the streets. You manage to avoid any additional problems on your way out, other than the whole trip is a tad time-consuming, and you go about your business once more, free of the strange occurrence.";
					cleanboundmemory;
					now trixieexit is 1;
					follow the turnpass rule;
				next;
			otherwise if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				say "[line break]";
				if obliging is true:
					say "     You choose to submit to the wyvern kin's continued abuse, [one of]much to their screeching, biting approval[or]though they're certainly not easier on you for it[or]of which they happily exploit[at random].";
					say "[line break]";
					wyvernlustapply;
					if a random chance of 1 in 2 succeeds, increase tempnum2 by 1;
					wyvernmatron;
					wyvernsanityroll;
				otherwise:
					say "     You choose to abide the wyvern kin's continued abuse, [one of]much to their screeching, biting approval[or]though they're certainly not easier on you for it[or]of which they happily exploit[at random].";
					say "[line break]";
					wyvernmatron;
					wyvernsanityroll;
				wait for any key;
				next;
			otherwise:
				say "[line break]";
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
					say "[line break]";
					wyvernmatron;
					wyvernsanityroll;
					now boundrecover is false;
				otherwise:
					say "     You fight to retain clarity in spite of the wyvern kin's continued abuse, [one of]nonetheless continuing to screech and nip at you[or]though they're certainly not easy for you[or]of which they hardly seem to regard[at random].";
					say "[line break]";
					wyvernmatron;
					wyvernsanityroll;
				wait for any key;
				next;
			say "Invalid action.";
	
to wyvernattendassess:
	if wyvkin1att is 0 and a random chance of 1 in 4 succeeds:
		now wyvkinassign is 1;
		if wyvkin1gen is 1:
			now tempnum is 1;
		otherwise:
			now tempnum is 0;
		wyvernattendroll;
		increase wyvkinatt by 1;
	otherwise if wyvkin2att is 0 and a random chance of 1 in 3 succeeds:
		now wyvkinassign is 2;
		if wyvkin2gen is 1:
			now tempnum is 1;
		otherwise:
			now tempnum is 0;
		wyvernattendroll;
		increase wyvkinatt by 1;
	otherwise if wyvkinocc > 0 and wyvkin3att is 0 and a random chance of 1 in 2 succeeds:
		now wyvkinassign is 3;
		if wyvkin3gen is 1:
			now tempnum is 1;
		otherwise:
			now tempnum is 0;
		wyvernattendroll;
		increase wyvkinatt by 1;
	otherwise if wyvkinocc > 1 and wyvkin4att is 0:
		now wyvkinassign is 4;
		if wyvkin4gen is 1:
			now tempnum is 1;
		otherwise:
			now tempnum is 0;
		wyvernattendroll;
		increase wyvkinatt by 1;
		
to wyvernattendroll:
	let pewtercockvar2 be 1;
	while pewtercockvar2 is 1:
		if pewterheadocc is 0 and a random chance of 1 in 3 succeeds:
			wyvernheadapply;
			now pewtercockvar2 is 0;
		otherwise if pewterbodyocc is 0 and a random chance of 1 in 2 succeeds:
			wyvernbodyapply;
			now pewtercockvar2 is 0;
		otherwise if (scalevalue of player > 2 and pewtergenitalcap < 2) or pewtergenitalcap is 0:
			wyverngenitalapply;
			now pewtercockvar2 is 0;

to wyvernheadapply:
	If a random chance of 1 in 2 succeeds:
		if wyvkinassign is 1:
			now wyvkin1att is 1;
			say "     Wyvern [bold type]A[roman type]";
		otherwise if wyvkinassign is 2:
			now wyvkin2att is 1;
			say "     Wyvern [bold type]B[roman type]";
		otherwise if wyvkinassign is 3:
			now wyvkin3att is 1;
			say "     Wyvern [bold type]C[roman type]";
		otherwise if wyvkinassign is 4:
			now wyvkin4att is 1;
			say "     Wyvern [bold type]D[roman type]";
		say ", feeling particularly affectionate, forces its scaled lips on your own, thick, coarse tongue escaping his maw to force its way into yours. Writhing, slick appendage [if scalevalue of player < 4]much too large for you[otherwise]overwhelming you[end if], the beast insists on forcing it down your throat, gaping maw [if scalevalue of player < 3]practically engulfing your head[otherwise]pressed firmly against you[end if].";
		increase pewterheadvar1 by 1;
	otherwise:
		if tempnum is 1:
			increase pewterheadvar2 by 1;
			if wyvkinassign is 1:
				now wyvkin1att is 2;
				say "     Wyvern [bold type]A[roman type]";
			otherwise if wyvkinassign is 2:
				now wyvkin2att is 2;
				say "     Wyvern [bold type]B[roman type]";
			otherwise if wyvkinassign is 3:
				now wyvkin3att is 2;
				say "     Wyvern [bold type]C[roman type]";
			otherwise if wyvkinassign is 4:
				now wyvkin4att is 2;
				say "     Wyvern [bold type]D[roman type]";
			say " moves to climb up on you, his drooling, bestial cock prodding insistently against your face. Intense, masculine scent causing you to gasp, he's quick to exploit this, forcing its blunt head down your maw. [if scalevalue of player < 4]Way too much for you to take at once[otherwise]Quite a lot to take all at once[end if], it's a fight to keep a clear head with him trying to ram it down your throat.";
		otherwise:
			increase pewterheadvar3 by 1;
			if wyvkinassign is 1:
				now wyvkin1att is 3;
				say "     Wyvern [bold type]A[roman type]";
			otherwise if wyvkinassign is 2:
				now wyvkin2att is 3;
				say "     Wyvern [bold type]B[roman type]";
			otherwise if wyvkinassign is 3:
				now wyvkin3att is 3;
				say "     Wyvern [bold type]C[roman type]";
			otherwise if wyvkinassign is 4:
				now wyvkin4att is 3;
				say "     Wyvern [bold type]D[roman type]";
			say " moves to climb up on you, her oozing, bestial cunt grinding insistently against your face. [if scalevalue of player < 4]Quite a lot to take all at once[otherwise]Showing absolutely no restraint[end if], your face is smeared with her tainted honey, making it very difficult to think straight.";
	increase pewterheadocc by 1;

pewterheadvar3 is a number that varies.

to wyvernbodyapply:
	increase pewterbodyocc by 1;
	if wyvkinassign is 1:
		now wyvkin1att is 4;
		say "     Wyvern [bold type]A[roman type]";
	otherwise if wyvkinassign is 2:
		now wyvkin2att is 4;
		say "     Wyvern [bold type]B[roman type]";
	otherwise if wyvkinassign is 3:
		now wyvkin3att is 4;
		say "     Wyvern [bold type]C[roman type]";
	otherwise if wyvkinassign is 4:
		now wyvkin4att is 4;
		say "     Wyvern [bold type]D[roman type]";
	say " moves to lick and nip at your [bodytype of player] form, grinding itself against your torso[if breast size of player > 0] as their abuse eventually shifts to your breasts[end if]. [if scalevalue of player < 4]Not having much room to work with[otherwise]Having plenty of room to work with[end if], it shows no restraint in making a sticky, sore mess of your [bodydesc of player] form.";
	
to wyverngenitalapply:
	if tempnum is 1: [Male]
		if cunts of player > 0:
			increase pewtercuntocc by 1;
			if wyvkinassign is 1:
				now wyvkin1att is 5;
				say "     Wyvern [bold type]A[roman type]";
			otherwise if wyvkinassign is 2:
				now wyvkin2att is 5;
				say "     Wyvern [bold type]B[roman type]";
			otherwise if wyvkinassign is 3:
				now wyvkin3att is 5;
				say "     Wyvern [bold type]C[roman type]";
			otherwise if wyvkinassign is 4:
				now wyvkin4att is 5;
				say "     Wyvern [bold type]D[roman type]";
			say ", screeching eagerly, rams his cock into[if cunts of player > 1] one of[end if] your cunt[sfn][if pewtercuntocc > 1], joining the other wyvern already in there[end if]. Wracked with intense spasms as the beast shows no restraint in inching it in deeper, you're given little time to acclimate to this[if pewtercuntocc > 1] second[end if] intrusion.";
		otherwise:
			increase pewterassocc by 1;
			if wyvkinassign is 1:
				now wyvkin1att is 6;
				say "     Wyvern [bold type]A[roman type]";
			otherwise if wyvkinassign is 2:
				now wyvkin2att is 6;
				say "     Wyvern [bold type]B[roman type]";
			otherwise if wyvkinassign is 3:
				now wyvkin3att is 6;
				say "     Wyvern [bold type]C[roman type]";
			otherwise if wyvkinassign is 4:
				now wyvkin4att is 6;
				say "     Wyvern [bold type]D[roman type]";
			say ", screeching eagerly, rams his cock up your ass[if pewterassocc > 1], joining the other wyvern already in there[end if]. Wracked with intense spasms as the beast shows no restraint in inching it in deeper, you're given little time to acclimate to this[if pewterassocc > 1] second[end if] intrusion.";
		increase pewtergenitalcap by 1;
	otherwise if pewtercockocc < 1: [female]
		if cocks of player > 0:
			if wyvkinassign is 1:
				now wyvkin1att is 7;
				say "     Wyvern [bold type]A[roman type]";
			otherwise if wyvkinassign is 2:
				now wyvkin2att is 7;
				say "     Wyvern [bold type]B[roman type]";
			otherwise if wyvkinassign is 3:
				now wyvkin3att is 7;
				say "     Wyvern [bold type]C[roman type]";
			otherwise if wyvkinassign is 4:
				now wyvkin4att is 7;
				say "     Wyvern [bold type]D[roman type]";
			say ", [if scalevalue of player < 4]crawling[otherwise]climbing[end if] on top of you, positions herself over[if cocks of player > 1] one of[end if] your dick[smn] before firmly ramming her tight, bestial cunt down on it. Screeching loudly at you, the beast eagerly rides against your[if scalevalue of player < 3] smaller,[end if] [bodytype of player] form.";
		otherwise:
			if wyvkinassign is 1:
				now wyvkin1att is 8;
				say "     Wyvern [bold type]A[roman type]";
			otherwise if wyvkinassign is 2:
				now wyvkin2att is 8;
				say "     Wyvern [bold type]B[roman type]";
			otherwise if wyvkinassign is 3:
				now wyvkin3att is 8;
				say "     Wyvern [bold type]C[roman type]";
			otherwise if wyvkinassign is 4:
				now wyvkin4att is 8;
				say "     Wyvern [bold type]D[roman type]";
			say ", [if scalevalue of player < 4]crawling[otherwise]climbing[end if] on top of you, grinds her dripping, bestial cunt against your [if cocks of player > 0]over-endowed dick[otherwise if cunts of player > 0]own[otherwise]genital-less crotch[end if]. Screeching loudly at you, the beast desperately writhes against your[if scalevalue of player < 3] smaller,[end if] [bodytype of player] form.";
		increase pewtercockocc by 1;
		increase pewtergenitalcap by 1;

to wyvernkinlustapply:
	if wyvkin1att > 0:
		if wyvkin1att is 1:
			[say "Kiss lust apply +18.";] [Dev tool]
			increase wyvkin1lib by 18;
		otherwise if wyvkin1att is 2:
			[say "Cock Fellation lust apply +24.";]
			increase wyvkin1lib by 24;
		otherwise if wyvkin1att is 3:
			increase wyvkin1lib by 24;
			[say "Cunt attendance lust apply +24.";]
		otherwise if wyvkin1att is 4:
			increase wyvkin1lib by 18;
			[say "Torso Attend +18.";]
		otherwise if wyvkin1att is 5:
			increase wyvkin1lib by 24;
			[say "Cunt penetration +24.";]
		otherwise if wyvkin1att is 6:
			increase wyvkin1lib by 24;
			[say "Anal penetration +24.";]
		otherwise if wyvkin1att is 7:
			increase wyvkin1lib by 24;
			[say "Player Being ridden +24.";]
		otherwise if wyvkin1att is 8:
			increase wyvkin1lib by 20;
			[say "Sapphic grind +20.";]
	otherwise:
		increase wyvkin1lib by 10;
		[say "Wyvern Watching +10.";]
	if wyvkin2att > 0:
		if wyvkin2att is 1:
			[say "Kiss lust apply +18.";]
			increase wyvkin2lib by 18;
		otherwise if wyvkin2att is 2:
			[say "Cock Fellation lust apply +24.";]
			increase wyvkin2lib by 24;
		otherwise if wyvkin2att is 3:
			increase wyvkin2lib by 24;
			[say "Cunt attendance lust apply +24.";]
		otherwise if wyvkin2att is 4:
			increase wyvkin2lib by 18;
			[say "Torso Attend +18.";]
		otherwise if wyvkin2att is 5:
			increase wyvkin2lib by 24;
			[say "Cunt penetration +24.";]
		otherwise if wyvkin2att is 6:
			increase wyvkin2lib by 24;
			[say "Anal penetration +24.";]
		otherwise if wyvkin2att is 7:
			increase wyvkin2lib by 24;
			[say "Player Being ridden +24.";]
		otherwise if wyvkin2att is 8:
			increase wyvkin2lib by 20;
			[say "Sapphic grind +20.";]
	otherwise:
		increase wyvkin2lib by 10;
		[say "Wyvern Watching +10.";]
	if wyvkin3att > 0 and wyvkinocc > 0:
		if wyvkin3att is 1:
			[say "Kiss lust apply +18.";]
			increase wyvkin3lib by 18;
		otherwise if wyvkin3att is 2:
			[say "Cock Fellation lust apply +24.";]
			increase wyvkin3lib by 24;
		otherwise if wyvkin3att is 3:
			increase wyvkin3lib by 24;
			[say "Cunt attendance lust apply +24.";]
		otherwise if wyvkin3att is 4:
			increase wyvkin3lib by 18;
			[say "Torso Attend +18.";]
		otherwise if wyvkin3att is 5:
			increase wyvkin3lib by 24;
			[say "Cunt penetration +24.";]
		otherwise if wyvkin3att is 6:
			increase wyvkin3lib by 24;
			[say "Anal penetration +24.";]
		otherwise if wyvkin3att is 7:
			increase wyvkin3lib by 24;
			[say "Player Being ridden +24.";]
		otherwise if wyvkin3att is 8:
			increase wyvkin3lib by 20;
			[say "Sapphic grind +20.";]
	otherwise if wyvkinocc > 0:
		increase wyvkin3lib by 10;
		[say "Wyvern Watching +10.";]
	if wyvkin4att > 0 and wyvkinocc > 1:
		if wyvkin4att is 1:
			[say "Kiss lust apply +18.";]
			increase wyvkin4lib by 18;
		otherwise if wyvkin4att is 2:
			[say "Cock Fellation lust apply +24.";]
			increase wyvkin4lib by 24;
		otherwise if wyvkin4att is 3:
			increase wyvkin4lib by 24;
			[say "Cunt attendance lust apply +24.";]
		otherwise if wyvkin4att is 4:
			increase wyvkin4lib by 18;
			[say "Torso Attend +18.";]
		otherwise if wyvkin4att is 5:
			increase wyvkin4lib by 24;
			[say "Cunt penetration +24.";]
		otherwise if wyvkin4att is 6:
			increase wyvkin4lib by 24;
			[say "Anal penetration +24.";]
		otherwise if wyvkin4att is 7:
			increase wyvkin4lib by 24;
			[say "Player Being ridden +24.";]
		otherwise if wyvkin4att is 8:
			increase wyvkin4lib by 20;
			[say "Sapphic grind +20.";]
	otherwise if wyvkinocc > 1:
		increase wyvkin4lib by 10;
		[say "Wyvern Watching +10.";]

to wyvernlustapply:
	if pewterheadocc > 0:
		increase lustatt by (pewterheadvar1 * 5) + lustadjust;
		increase lustatt by (pewterheadvar2 * 6) + lustadjust;
		increase lustatt by (pewterheadvar3 * 6) + lustadjust;
	if pewterbodyocc > 0:
		increase lustatt by 5 + lustadjust;
	if pewtergenitalcap > 0:
		increase lustatt by (pewterassocc * 6) + lustadjust;
		increase lustatt by (pewtercuntocc * 7) + (lustadjust * 2);
		increase lustatt by (pewtercockocc * 7) + (lustadjust * 2);

to wyvernkinlustcheck:
	while wyvkin1lib > 99 or wyvkin2lib > 99 or wyvkin3lib > 99 or wyvkin4lib > 99:
		if wyvkin1lib > 99:
			now wyvkin1lib is 0;
			say "     Wyvern [bold type]A[roman type] orgasms";
			if wyvkin1att is 1:
				say "! Their continued, fierce tonguing of your quickly strained maw is more than enough to set them off, the beast's idle grinding against you quickly slicked by the feel of their hot [if wyvkin3gen is 1]cum[otherwise]sex[end if]";
			otherwise if wyvkin1att is 2:
				say "! A sudden flood of the beast's virile cum flooding your stuffed maw, [if scalevalue of player < 4]quickly overwhelmed and sputtering from you[otherwise]forcing you to swallow down every last drop[end if] before the flow finally subsides";
			otherwise if wyvkin1att is 3:
				say "! A sudden wave of bestial honey assaulting your face, driving you to swallow down the ensuing flood out of fear you might drown in it, [if scalevalue of player < 4]quickly overwhelming your smaller form[otherwise]your senses lost in a haze of the monster's sex[end if]";
			otherwise if wyvkin1att is 4:
				say "! Biting roughly down against you, you feel your [bodydesc of player] form awash in a flood of the beast's hot fluids, [if wyvkin1gen is 1]his[otherwise]her[end if] persisted abuse finally rewarded";
			otherwise if wyvkin1att is 5:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your womb, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin1att is 6:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your bowels, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin1att is 7:
				say "! You're immediately assaulted with the beast's tight hole tightly squeezing your strained dick, briefly [if cockname of player is listed in infections of knotlist]tying[otherwise]hilting[end if] it within her, screeching and rigid as she writhes with each successive throb";
			otherwise if wyvkin1att is 8:
				say "! Crotch quickly stained with the beast's honey, her grinding becomes much more rough, screeching and rigid as she writhes with each successive throb";
			otherwise:
				say "! Even though [if wyvkinocc > 1]the lack of room forces them to simply watch[otherwise]they're simply watching[end if] the whole scene, it's enough for them to get off, impotently staining the nest with their sex";
			if wyvkin1att is 5:
				say "[impregchance]";
			otherwise if wyvkin1att is 6:
				say "[mimpregchance]";
			if wyvkin1att > 0:
				increase lustatt by 10 + (lustadjust * 2);
				increase wyvkin2lib by 20;
				if wyvkinocc > 0, increase wyvkin3lib by 20;
				if wyvkinocc > 1, increase wyvkin4lib by 20;
				if wyvkin2lib > 99 or wyvkin3lib > 99 or wyvkin4lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue getting off, going back to what they were once doing. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
				if enduring is true:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 6 succeeds:
							infect;
					otherwise if a random chance of 1 in 4 succeeds:
						infect;
				otherwise:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 5 succeeds:
							infect;
					otherwise if a random chance of 1 in 3 succeeds:
						infect;
			otherwise:
				increase lustatt by 2 + lustadjust;
				increase wyvkin2lib by 5;
				if wyvkin2lib > 99 or wyvkin3lib > 99 or wyvkin4lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue watching, screeching lowly in approval towards your persisting abuse. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
				if wyvkinocc > 0, increase wyvkin3lib by 7;
				if wyvkinocc > 1, increase wyvkin4lib by 7;
		if wyvkin2lib > 99:
			now wyvkin2lib is 0;
			say "     Wyvern [bold type]B[roman type] orgasms";
			if wyvkin2att is 1:
				say "! Their continued, fierce tonguing of your quickly strained maw is more than enough to set them off, the beast's idle grinding against you quickly slicked by the feel of their hot [if wyvkin3gen is 1]cum[otherwise]sex[end if]";
			otherwise if wyvkin2att is 2:
				say "! A sudden flood of the beast's virile cum flooding your stuffed maw, [if scalevalue of player < 4]quickly overwhelmed and sputtering from you[otherwise]forcing you to swallow down every last drop[end if] before the flow finally subsides";
			otherwise if wyvkin2att is 3:
				say "! A sudden wave of bestial honey assaulting your face, driving you to swallow down the ensuing flood out of fear you might drown in it, [if scalevalue of player < 4]quickly overwhelming your smaller form[otherwise]your senses lost in a haze of the monster's sex[end if]";
			otherwise if wyvkin2att is 4:
				say "! Biting roughly down against you, you feel your [bodydesc of player] form awash in a flood of the beast's hot fluids, [if wyvkin2gen is 1]his[otherwise]her[end if] continued abuse finally rewarded";
			otherwise if wyvkin2att is 5:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your womb, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin2att is 6:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your bowels, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin2att is 7:
				say "! You're immediately assaulted with the beast's tight hole tightly squeezing your strained dick, briefly [if cockname of player is listed in infections of knotlist]tying[otherwise]hilting[end if] it within her, screeching and rigid as she writhes with each successive throb";
			otherwise if wyvkin2att is 8:
				say "! Crotch quickly stained with the beast's honey, her grinding becomes much more rough, screeching and rigid as she writhes with each successive throb";
			otherwise:
				say "! Even though [if wyvkinocc > 1]the lack of room forces them to simply watch[otherwise]they're simply watching[end if] the whole scene, it's enough for them to get off, impotently staining the nest with their sex";
			if wyvkin2att is 5:
				say "[impregchance]";
			otherwise if wyvkin2att is 6:
				say "[mimpregchance]";
			if wyvkin2att > 0:
				increase lustatt by 10 + (lustadjust * 2);
				increase wyvkin1lib by 20;
				if wyvkinocc > 0, increase wyvkin3lib by 20;
				if wyvkinocc > 1, increase wyvkin4lib by 20;
				if wyvkin1lib > 99 or wyvkin3lib > 99 or wyvkin4lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue getting off, going back to what they were once doing. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
				if enduring is true:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 6 succeeds:
							infect;
					otherwise if a random chance of 1 in 4 succeeds:
						infect;
				otherwise:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 5 succeeds:
							infect;
					otherwise if a random chance of 1 in 3 succeeds:
						infect;
			otherwise:
				increase lustatt by 2 + lustadjust;
				increase wyvkin1lib by 7;
				if wyvkin1lib > 99 or wyvkin3lib > 99 or wyvkin4lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue watching, screeching lowly in approval towards your persisting abuse. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
				if wyvkinocc > 0, increase wyvkin3lib by 7;
				if wyvkinocc > 1, increase wyvkin4lib by 7;
		if wyvkin3lib > 99:
			now wyvkin3lib is 0;
			say "     Wyvern [bold type]C[roman type] orgasms";
			if wyvkin3att is 1:
				say "! Their continued, fierce tonguing of your quickly strained maw is more than enough to set them off, the beast's idle grinding against you quickly slicked by the feel of their hot [if wyvkin3gen is 1]cum[otherwise]sex[end if]";
			otherwise if wyvkin3att is 2:
				say "! A sudden flood of the beast's virile cum flooding your stuffed maw, [if scalevalue of player < 4]quickly overwhelmed and sputtering from you[otherwise]forcing you to swallow down every last drop[end if] before the flow finally subsides";
			otherwise if wyvkin3att is 3:
				say "! A sudden wave of bestial honey assaulting your face, driving you to swallow down the ensuing flood out of fear you might drown in it, [if scalevalue of player < 4]quickly overwhelming your smaller form[otherwise]your senses lost in a haze of the monster's sex[end if]";
			otherwise if wyvkin3att is 4:
				say "! Biting roughly down against you, you feel your [bodydesc of player] form awash in a flood of the beast's hot fluids, [if wyvkin3gen is 1]his[otherwise]her[end if] continued abuse finally rewarded";
			otherwise if wyvkin3att is 5:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your womb, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin3att is 6:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your bowels, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin3att is 7:
				say "! You're immediately assaulted with the beast's tight hole tightly squeezing your strained dick, briefly [if cockname of player is listed in infections of knotlist]tying[otherwise]hilting[end if] it within her, screeching and rigid as she writhes with each successive throb";
			otherwise if wyvkin3att is 8:
				say "! Crotch quickly stained with the beast's honey, her grinding becomes much more rough, screeching and rigid as she writhes with each successive throb";
			otherwise:
				say "! Even though [if wyvkinocc > 1]the lack of room forces them to simply watch[otherwise]they're simply watching[end if] the whole scene, it's enough for them to get off, impotently staining the nest with their sex";
			if wyvkin3att is 5:
				say "[impregchance]";
			otherwise if wyvkin3att is 6:
				say "[mimpregchance]";
			if wyvkin3att > 0:
				increase lustatt by 10 + (lustadjust * 2);
				increase wyvkin1lib by 20;
				increase wyvkin2lib by 20;
				if wyvkinocc > 1, increase wyvkin4lib by 20;
				if wyvkin1lib > 99 or wyvkin2lib > 99 or wyvkin4lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue getting off, going back to what they were once doing. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
				if enduring is true:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 6 succeeds:
							infect;
					otherwise if a random chance of 1 in 4 succeeds:
						infect;
				otherwise:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 5 succeeds:
							infect;
					otherwise if a random chance of 1 in 3 succeeds:
						infect;
			otherwise:
				increase lustatt by 2 + lustadjust;
				increase wyvkin1lib by 7;
				increase wyvkin2lib by 7;
				if wyvkinocc > 1, increase wyvkin4lib by 7;
				if wyvkin1lib > 99 or wyvkin2lib > 99 or wyvkin4lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue watching, screeching lowly in approval towards your persisting abuse. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
		if wyvkin4lib > 99:
			now wyvkin4lib is 0;
			say "     Wyvern [bold type]D[roman type] orgasms";
			if wyvkin4att is 1:
				say "! Their continued, fierce tonguing of your quickly strained maw is more than enough to set them off, the beast's idle grinding against you quickly slicked by the feel of their hot [if wyvkin3gen is 1]cum[otherwise]sex[end if]";
			otherwise if wyvkin4att is 2:
				say "! A sudden flood of the beast's virile cum flooding your stuffed maw, [if scalevalue of player < 4]quickly overwhelmed and sputtering from you[otherwise]forcing you to swallow down every last drop[end if] before the flow finally subsides";
			otherwise if wyvkin4att is 3:
				say "! A sudden wave of bestial honey assaulting your face, driving you to swallow down the ensuing flood out of fear you might drown in it, [if scalevalue of player < 4]quickly overwhelming your smaller form[otherwise]your senses lost in a haze of the monster's sex[end if]";
			otherwise if wyvkin4att is 4:
				say "! Biting roughly down against you, you feel your [bodydesc of player] form awash in a flood of the beast's hot fluids, [if wyvkin4gen is 1]his[otherwise]her[end if] continued abuse finally rewarded";
			otherwise if wyvkin4att is 5:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your womb, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin4att is 6:
				say "! You're immediately assaulted with a flood of the beast's virile cum within your bowels, screeching and rigid as they thrust into you with each successive wave";
			otherwise if wyvkin4att is 7:
				say "! You're immediately assaulted with the beast's tight hole tightly squeezing your strained dick, briefly [if cockname of player is listed in infections of knotlist]tying[otherwise]hilting[end if] it within her, screeching and rigid as she writhes with each successive throb";
			otherwise if wyvkin4att is 8:
				say "! Crotch quickly stained with the beast's honey, her grinding becomes much more rough, screeching and rigid as she writhes with each successive throb";
			otherwise:
				say "! Even though [if wyvkinocc > 1]the lack of room forces them to simply watch[otherwise]they're simply watching[end if] the whole scene, it's enough for them to get off, impotently staining the nest with their sex";
			if wyvkin4att is 5:
				say "[impregchance]";
			otherwise if wyvkin4att is 6:
				say "[mimpregchance]";
			if wyvkin4att > 0:
				increase lustatt by 10 + (lustadjust * 2);
				increase wyvkin1lib by 20;
				increase wyvkin2lib by 20;
				increase wyvkin3lib by 20;
				if wyvkin1lib > 99 or wyvkin2lib > 99 or wyvkin3lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue getting off, going back to what they were once doing. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";
				if enduring is true:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 6 succeeds:
							infect;
					otherwise if a random chance of 1 in 4 succeeds:
						infect;
				otherwise:
					if bodyname of player is "Wyvern" and player is pure:
						if a random chance of 1 in 5 succeeds:
							infect;
					otherwise if a random chance of 1 in 3 succeeds:
						infect;
			otherwise:
				increase lustatt by 2 + lustadjust;
				increase wyvkin1lib by 7;
				increase wyvkin2lib by 7;
				increase wyvkin3lib by 7;
				if wyvkin1lib > 99 or wyvkin2lib > 99 or wyvkin3lib > 99:
					say ".";
				otherwise:
					say ". Taking only a few seconds to rest, the continued attendance of their companion[if wyvkinocc > 0]s[end if] is more than enough to drive them to continue watching, screeching lowly in approval towards your persisting abuse. Said companion[if wyvkinocc > 0]s[end if], meanwhile, [if wyvkinocc > 0]have[otherwise]has[end if] no doubt become more aroused by seeing them climax.";

to wyverndisengage:
	if (wyvkin1att > 0 or wyvkin2att > 0 or wyvkin3att > 0 or wyvkin4att > 0) And a random chance of 1 in 2 succeeds:
		let tempnum be 1;
		say "     In the tussle, you manage to wrench ";
		while tempnum is 1:
			if pewterheadocc > 0 and a random chance of 1 in 3 succeeds:
				if (wyvkin1att is 1 or wyvkin1att is 2 or wyvkin1att is 3):
					now wyvkin1att is 0;
					say "wyvern [bold type]A[roman type] from your head.";
				otherwise if (wyvkin2att is 1 or wyvkin2att is 2 or wyvkin2att is 3):
					now wyvkin2att is 0;
					say "wyvern [bold type]B[roman type] from your head.";
				otherwise if (wyvkin3att is 1 or wyvkin3att is 2 or wyvkin3att is 3):
					now wyvkin3att is 0;
					say "wyvern [bold type]C[roman type] from your head.";
				otherwise:
					now wyvkin4att is 0;
					say "wyvern [bold type]D[roman type] from your head.";
				now pewterheadocc is 0;
				decrease wyvkinatt by 1;
				now tempnum is 0;
			otherwise if pewterbodyocc > 0 and a random chance of 1 in 2 succeeds:
				if wyvkin1att is 4:
					now wyvkin1att is 0;
					say "wyvern [bold type]A[roman type] from your torso.";
				otherwise if wyvkin2att is 4:
					now wyvkin2att is 0;
					say "wyvern [bold type]B[roman type] from your torso.";
				otherwise if wyvkin3att is 4:
					now wyvkin3att is 0;
					say "wyvern [bold type]C[roman type] from your torso.";
				otherwise:
					now wyvkin4att is 0;
					say "wyvern [bold type]A[roman type] from your torso.";
				now pewterbodyocc is 0;
				decrease wyvkinatt by 1;
				now tempnum is 0;
			otherwise if pewtergenitalcap > 0:
				if (wyvkin1att is 5 or wyvkin1att is 6 or wyvkin1att is 7 or wyvkin1att is 8):
					now wyvkin1att is 0;
					say "wyvern [bold type]A[roman type] from your [if wyvkin1att is 5]cunt[otherwise if wyvkin1att is 6]ass[otherwise if wyvkin1att is 7]dick[otherwise]crotch[end if].";
				otherwise if (wyvkin2att is 5 or wyvkin2att is 6 or wyvkin2att is 7 or wyvkin2att is 8):
					now wyvkin2att is 0;
					say "wyvern [bold type]B[roman type] from your [if wyvkin2att is 5]cunt[otherwise if wyvkin2att is 6]ass[otherwise if wyvkin2att is 7]dick[otherwise]crotch[end if].";
				otherwise if (wyvkin3att is 5 or wyvkin3att is 6 or wyvkin3att is 7 or wyvkin3att is 8):
					now wyvkin3att is 0;
					say "wyvern [bold type]C[roman type] from your [if wyvkin3att is 5]cunt[otherwise if wyvkin3att is 6]ass[otherwise if wyvkin3att is 7]dick[otherwise]crotch[end if].";
				otherwise:
					now wyvkin4att is 0;
					say "wyvern [bold type]D[roman type] from your [if wyvkin4att is 5]cunt[otherwise if wyvkin4att is 6]ass[otherwise if wyvkin4att is 7]dick[otherwise]crotch[end if].";
				decrease wyvkinatt by 1;
				decrease pewtergenitalcap by 1;
				now tempnum is 0;
				
tempnum2 is a number that varies.

to wyvernmatron:
	if a random chance of tempnum2 in 14 succeeds:
		say "     [bold type]The [if WYVGEN is 0]'Matron'[otherwise]Matron[end if] returns![roman type] [if WYVGEN is 0]His[otherwise]Her[end if] bestial offspring now have their attention split between [ghim] and you, eager to see what their parent has in store...";
		if waiterhater is 0, wait for any key;
		if wyvkinocc < 2:
			say "     Not paying much heed to your current predicament, the massive wyvern screeches loudly before squatting down, body trembling as you're made to watch on, white, crudely shaped egg gradually forcing its way out from between [ghis] powerful legs. It doesn't take long, but the air is filled with the monster's screeching and growling until the white orb softly falls to the ground.";
			say "     The wyvern turns to inspect the egg as [ghe] catches [ghis] breath. From what you can tell, the drop was enough to stir the occupant from its prior slumber. Helping it break free of the tough shell, the air is eventually filled with the noise of another wyvern kin emerging into this world, tumbling from its prison. You're not rightly sure if this is the beast's legitimate offspring or someone who succumbed to a similar fate to you[if WYVGEN is 0], probably the latter[end if].";
			say "     And with that, the wyvern matron takes to the air once more, perhaps to find more potential offspring or perhaps to hunt for food. In either case, the new kin quickly notices your predicament and begins its approach, no doubt eager to join in. From what you can gather, they appear to be ";
			if wyvkinocc is 1:
				if girl is banned or wyvernbias is 5 or (girl is warded and ishunting is false):
					now wyvkin4gen is 1;
					say "[bold type]male[roman type].";
				otherwise if guy is banned or wyvernbias is 1 or (guy is warded and ishunting is false):
					now wyvkin4gen is 0;
					say "[bold type]female[roman type].";
				otherwise:
					if wyvernbias is 2:
						if a random chance of 2 in 3 succeeds:
							now wyvkin4gen is 0;
							say "[bold type]female[roman type].";
						otherwise:
							now wyvkin4gen is 1;
							say "[bold type]male[roman type].";
					otherwise if wyvernbias is 4:
						if a random chance of 2 in 3 succeeds:
							now wyvkin4gen is 1;
							say "[bold type]male[roman type].";
						otherwise:
							now wyvkin4gen is 0;
							say "[bold type]female[roman type].";
					otherwise if (wyvernbias is 3 or wyvernbias is 0):
						if a random chance of 1 in 2 succeeds:
							now wyvkin4gen is 1;
							say "[bold type]male[roman type].";
						otherwise:
							now wyvkin4gen is 0;
							say "[bold type]female[roman type].";
				now wyvkinocc is 2;
			otherwise:
				if girl is banned or wyvernbias is 5 or (girl is warded and ishunting is false):
					now wyvkin3gen is 1;
					say "[bold type]male[roman type].";
				otherwise if guy is banned or wyvernbias is 1 or (guy is warded and ishunting is false):
					now wyvkin3gen is 0;
					say "[bold type]female[roman type].";
				otherwise:
					if wyvernbias is 2:
						if a random chance of 2 in 3 succeeds:
							now wyvkin3gen is 0;
							say "[bold type]female[roman type].";
						otherwise:
							now wyvkin3gen is 1;
							say "[bold type]male[roman type].";
					otherwise if wyvernbias is 4:
						if a random chance of 2 in 3 succeeds:
							now wyvkin3gen is 1;
							say "[bold type]male[roman type].";
						otherwise:
							now wyvkin3gen is 0;
							say "[bold type]female[roman type].";
					otherwise if (wyvernbias is 3 or wyvernbias is 0):
						if a random chance of 1 in 2 succeeds:
							now wyvkin3gen is 1;
							say "[bold type]male[roman type].";
						otherwise:
							now wyvkin3gen is 0;
							say "[bold type]female[roman type].";
				now wyvkinocc is 1;
		otherwise:
			say "     As you can imagine, the wyvern has little interest in adding more to an already fairly crowded nest, and instead is here to check up on [ghis] children. Now giving your situation [ghis] proper attention, [ghis] appears to feel that you haven't fully succumbed to your new circumstance, and screeches at [ghis] other children until they pull free of you. Though they still pin you down, you're now exposed and left at the mercy of larger beast, eager to have some fun with you...";
			if waiterhater is 0, wait for any key;
			say "[WYVVIC]";
			if bodyname of player is "Wyvern" and player is pure:
				if a random chance of 1 in 4 succeeds:
					infect;
			otherwise if a random chance of 1 in 2 succeeds:
				infect;
			increase wyvkin1lib by 25;
			increase wyvkin2lib by 25;
			if wyvkinocc > 0, increase wyvkin3lib by 25;
			if wyvkinocc > 0, increase wyvkin4lib by 25;
		now tempnum2 is 0;
	otherwise:
		increase tempnum2 by 1;
			
to wyvernsanityroll:
	now tempnum is 0;
	if wyvkin1att > 0:
		increase tempnum by 1;
	if wyvkin2att > 0:
		increase tempnum by 1;
	if wyvkinocc > 0 and wyvkin3att > 0:
		increase tempnum by 1;
	if wyvkinocc > 0 and wyvkin4att > 0:
		increase tempnum by 1;
	if enduring is true, now tempnum is tempnum / 2;
	if tempnum > 0:
		decrease humanity of player by (tempnum + psycheadjust);

Section 4 - Miscellaneous

when play ends:
	if bodyname of player is "Wyvern":
		if humanity of player < 10:
			if voreloss is true:
				say "     The distinct bulge that you once occupied gradually receding, the wyvern punctuates your utter defeat with a concussive screech, you ultimately ending up as nothing more than a mere meal to this beast. Satisfied, [ghe] takes flight once more, no doubt to subject other victims to a similar fate...";
			otherwise if boundstate is true:
				say "     Mind completely lost in a haze of lust, you succumb to your fate in the wyvern’s nest. You never quite grow to the same scale as your captor-turned-parent, and your time in this nest has driven you to remain within, forever the beast’s tainted offspring.";
				say "     Not being particularly bright, the wyvern [ghim]self doesn't notice that you remain when your kin eventually fly off on their own and are replaced, eager to feed and play with you whenever free. Your siblings, as they come and go, also have plenty of time to play with their eager ";
				if "Submissive" is listed in feats of player:
					say "little fucktoy...";
				otherwise:
					say "companion...";
			otherwise:
				if WYVSF is 0:
					if guy is banned or wyvernbias < 3 or guy is warded:
						now WYVSF is 3;
					otherwise if girl is banned or wyvernbias > 3 or girl is warded:
						now WYVSF is 1;
					otherwise:
						now WYVSF is 2;
				if WYVSF is 2:
					let tempnum be a random number between 1 and 2;
					if tempnum is 1:
						now WYVSF is 1;
					otherwise if tempnum is 2:
						now WYVSF is 3;
				say "     Your feral urges overtake you, reaching your final stage of infection. Compelled to take to the sky with now fully-formed wings, you seek out the first wyvern you might find";
				if WYVSF is 1:
					say ". You happen upon a male wyvern, no doubt requiring a moment to understand your pleas to be its mate. More than eager to oblige";
					if cunts of player > 0:
						say ", your life is soon filled with the sounds and sensations of constant breeding, offering up countless eggs in the wake of your new mate's wanton need.";
					otherwise:
						say ", it never crosses the beast's thick skull that--as a [if cocks of player > 0]male[otherwise]neuter[end if]--you might be completely incapable of offering him offspring; he fucks you all the same";
						if "MPreg" is listed in feats of player:
							say ", and when you do eventually offer him offspring this comes at no surprise to him.";
						otherwise:
							say ".";
					if "Submissive" is listed in feats of player:
						say "     So inclined to be this beast's little cum dumpster, you find that this behavior is inevitably rewarded when you quickly find that you are subject to a great number of additional mates, all eager to fill your hole. By your feral reasoning, you only find great joy in being used so frequently.";               
				otherwise if WYVSF is 3:
					say ". You happen upon a female wyvern, no doubt requiring a moment to understand your pleas to be her mate. More than eager to oblige";
					if cocks of player > 0:
						say ", your life soon filled with the sounds and sensations of constant breeding, constantly filling your new mate with seed, when you can.";
					otherwise:
						say ", it quickly becomes clear that you don't have the equipment to breed with her. Regardless, you often help her hunt for new 'offspring', sometimes partaking in the act yourself. You grow rather fond of your new children, their initial struggles eventually melting away in favour of childlike obedience.";
		otherwise:
			say "     The military is a little reluctant to release such a brutish-looking creature from custody when you're inevitably brought in, but when it's made clear that you're not going to cause trouble you're let off back into the world.";
			say "     You could never quite get the whole 'flying' thing down pat, so you generally keep yourself to the ground, as difficult as this sometimes makes maneuvering the world, though that people are so often inclined to give you space is a slight balm to this particular sting.";
			say "     You often find employment working in medieval fairs as the main attraction, a beast to be slain by some knight in shining armour. This isn't a particularly dignified job, but you fit in the roll quite well, and the audience seems to enjoy it.";
			say "     During your free time, you do occasionally find companionship in suitors brave enough to request the sort of affection only you can provide, which more than alleviates your still slightly pervasive libido.";

to wyvernbiasrequest:
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [link]Female Exclusive[as]1[end link][line break]";
		say "(2) [link]Female Bias[as]2[end link][line break]";
		say "(3) [link]Ambivalent[as]3[end link][line break]";
		say "(4) [link]Male Bias[as]4[end link][line break]";
		say "(5) [link]Male Exclusive[as]5[end link][line break]";
		while 1 is 1:
			say "Choice? (1-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 1 and calcnumber <= 5:
				break;
			otherwise:
				say "Invalid Choice.";
		if calcnumber is 1:
			say "     [italic type]Female Exclusive: Only encounter female wyverns. Is this your choice?[roman type][line break]";
			if player consents:
				say "[italic type]Set. If you need to change this at any time, simply say [bold type]wyvern bias[roman type].";
				wait for any key;
				now wyvernbias is 1;
				now trixieexit is 1;
		if calcnumber is 2:
			say "     [italic type]Female Bias: Only encounter female wyverns at random, when hunting females are most likely. Is this your choice?[roman type][line break]";
			if player consents:
				say "[italic type]Set. If you need to change this at any time, simply say [bold type]wyvern bias[roman type].";
				wait for any key;
				now wyvernbias is 2;
				now trixieexit is 1;
		otherwise if calcnumber is 3:
			say "     [italic type]Ambivalent: It's always a 50/50 chance, hunting or no. Is this your choice?[roman type][line break]";
			if player consents:
				say "[italic type]Set. If you need to change this at any time, simply say [bold type]wyvern bias[roman type].";
				wait for any key;
				now wyvernbias is 3;
				now trixieexit is 1;
		otherwise if calcnumber is 4:
			say "     [italic type]Male Bias: Only encounter male wyverns at random, when hunting male are most likely. Is this your choice?[roman type][line break]";
			if player consents:
				say "[italic type]Set. If you need to change this at any time, simply say [bold type]wyvern bias[roman type].";
				wait for any key;
				now wyvernbias is 4;
				now trixieexit is 1;
		otherwise if calcnumber is 5:
			say "     [italic type]Male Exclusive: Only encounter Male wyverns. Is this your choice?[roman type][line break]";
			if player consents:
				say "[italic type]Set. If you need to change this at any time, simply say [bold type]wyvern bias[roman type].";
				wait for any key;
				now wyvernbias is 5;
				now trixieexit is 1;

Table of Game Objects(continued)
name	desc	weight	object
"wyvern goop"	"Thick, whitish-yellow ooze. You've kept the stuff wrapped up so that it doesn't completely harden."	1	wyvern goop

the scent of wyvern goop is "      The sticky gel has an acrid, spicy scent.";

To say wyvern goop use:
	say "     Consuming the goop does seem to sate your hunger slightly, though you quickly find your thoughts wracked with a more feral need.";
	decrease hunger of player by 3;
	if hunger of player < 0:
		now hunger of player is 0;
	decrease thirst of player by 4;
	if thirst of player < 0:
		now thirst of player is 0;
	decrease humanity of player by 4;
	increase libido of player by 1;
	
wyvern goop is a grab object. wyvern goop is infectious. The strain of wyvern goop is "Wyvern".
wyvern goop has a usedesc "[wyvern goop use]".

Wyvern For FS ends here.
