Version 6 of Feral Sea Dragon by Blue Bishop begins here.
[Version 6 - Dragonpalooza 2: Housekeeping, Vore, and Victory]
[- Originally Authored By: Tunalord Sefond -]

"Adds a Feral Sea Dragon to Flexible Survival's Wandering Monsters table"


twistfsdfeedmemory is a truth state that varies. twistfsdfeedmemory is usually false.
MFSDUBM is a truth state that varies. MFSDUBM is usually false.

Section 1 - Creature Responses

to say fsdm attack:
	project the Figure of SeaDragon_hard_icon;
	if FemaleList is not banned: [change target to male for infection if valid]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if Name entry is "Feral Sea Dragoness":
				now MonsterID is y;
				break;
		if "Male Preferred" is listed in feats of Player:
			now sex entry is "Male";
		else if "Female Preferred" is listed in feats of Player:
			now sex entry is "Female";
		else if "Herm Preferred" is listed in feats of Player:
			now sex entry is "Both";
		else:
			now sex entry is "Female";
	if vorelevel is not 1 and scalevalue of Player < 4 and (A random chance of 1 in 5 succeeds or (player is kinky and a random chance of 1 in 4 succeeds) or (vorelevel is 3 and a random chance of 1 in 3 succeeds)):
		if HP of Player > 0:
			say "     You immediately throw up your arms and lower your guard, showing you don't wish to fight. He doesn't seem inclined to very much regard your submission as anything more than the opening for him, and he immediately dives for";
		else:
			say "     Seeing an opening, he unloads a deafening roar before making a dive towards";
			now struggleatt is 1;
		say " you, maw wide open!";
		say "     Before you can react, you're engulfed darkness, the sea dragon's slick, supple flesh enveloping you. Awash in the beast's acrid breath, he pulls you into the air by his lips";
		if a random chance of 1 in 2 succeeds:
			say ". Allowing gravity to aid him as he audibly gulps you down, powerful muscles plunging you down his slick depths.";
			say "     Hot, slippery tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy. Given the length of the trip, you're not yet wholly consumed by the sea dragon. You might be able to pull yourself out of here before it's too late!";
			now tempnum2 is 2;
		else:
			say ". His motion so fast, he sends you spinning in the air before immediately catching you by your feet, exposing you to the[if daytimer is night] night[end if] light once more, you access to the fresh, salt air is made brief as the monster uses gravity to aid him as he audibly gulps you down.";
			say "     Allowed one final glimpse of the outside world before it's eclipsed by his toothy maw, his powerful muscles plunges you down his slick depths. Hot tube constricting against you tightly, the creature's elongated gullet bulges visibly with your occupancy. Given the length of the trip, you're not yet wholly consumed by the sea dragon. You might be able to pull yourself out of here before it's too late!";
			now tempnum is 0;
		wait for any key;
		now boundsegment is 1;
		fsdmvore;
	else:
		if HP of Player > 0 and FSDOPEN is 0:
			say "     You immediately throw up your arms and lower your guard, showing you don't wish to fight. [one of]He doesn't immediately buy it, cautiously nosing you until fall over. This certainly amuses him, at least, and while he looks you over[or]He huffs a mocking sound and firmly sweeps his tail over to push you onto your side. He advances to look you over, and[at random] you're given a glimpse of his emergent cock, peeking out from his underside.";
		else if FSDOPEN is 0:
			say "     Seeing an opening, he unloads a deafening roar of dominance and slaps you down with his massive tail, and you're briefly knocked out. When you come to, you can already feel the beast's enquiring tongue over your vulnerable form, your vision clearing to give you a blatant few of his erect cock. There's no question what he has in store for you.";
		if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
			if Player is female and Cunt Depth of Player > 11:
				say "     Circling around to mount you, you soon feel the head of his hard organ press against[if Cunt Count of Player > 1] one of[end if] your [cunt size desc of Player] cunt[sfn]. He makes a soft growling sound as the shaft's flared head sinks slowly inside you, sending waves of intense pleasure before that head is fully engulfed. Quite the tease, he only engulfs the rod half-way before pulling it out almost entirely, the influence of your feral infection driving you to whine out in despair - much to his amusement - before you find solace in its return. The dragon plays this game with you only briefly before he's taken by the imperative of his own bestial need and starts ramming you with his cock proper.";
				say "     You writhe limply under the beast's girth, mind ahaze in pleasure. It's as though this creature's cock was made just for you, your needy cunt constricting against its rigid mass out of a carnal need to have it in you, its motion no doubt lubricated by your sexual fluids mixed with his own.";
				say "     Though you would rather he fuck you forever it's inevitable that he concludes with one final thrust, his hilted dick flooding your womb until it's bloated with his seed, triggering your own climax in response[if Cock Count of Player > 1], all the while your own, [cock size desc of Player], and very much neglected members spill their [Cum Load Size of Player] load across the sand before both[else if Player is male], all the while your own, [cock size desc of Player], and very much neglected member spills its [Cum Load Size of Player] load across the sand before both[else]. Both[end if] of you cry out in celebration of this dual orgasm - his a deep, throaty roar, yours a beautiful-sounding song.[line break]";
				say "     Satisfied, he dismounts you. Forcing his cock free of your abused hole with [one of]a moist sucking[or]a wet popping[at random] sound. Huffing a little, he's kind enough to give you a soft, affectionate lick across your side before he dives back into the water's depths, no doubt waiting for your return";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Sea Dragon";
			else:
				if Player is female: [Lead-in for inadequately sized female]
					say "     Physical form mostly similar to himself, he appears to be using his tongue to inspect your cunt[sfn], the sickeningly slick organ trying to penetrate [if Cunt Count of Player > 1]one of these holes[else]this hole[end if] before finding it to be too small to accommodate the impressive beast. He snorts as he shuffles around a bit, perhaps a little perturbed, but it's clear he intends to have fun with his potential mate regardless.";
				if anallevel > 1 and (a random chance of 1 in 4 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)) and (Cunt Count of Player is 0 or anallevel is 3):
					say "     Moving around to mount you, you soon feel the head of his hard organ press against your [bodytype of Player] anal ring. He makes a [if Player is female]harsh[else]soft[end if] growling sound as the shaft's flared head sinks slowly inside you, sending waves of intense pleasure before that head is fully engulfed";
					if Player is female:
						say ". Quite the tease, he only engulfs the rod half-way before pulling it out almost entirely, the influence of your feral infection driving you to whine out in despair - much to his amusement - before you find solace in its return. He plays this game with you only briefly before he is taken by the imperative of his own feral needs and starts ramming you with his cock properly.";
					else:
						say ". He illustrates quite the reckless abandon when starts ramming his cock down your hole, perhaps a lot less invested in your own personal enjoyment under the pretense that you won't be offering him any offspring down the line";
						if Player is mpreg_ok:
							say ", much to his ignorance";
						say ". Regardless, your infection's influence can't help but compel gratification from the rough treatment of such a virile male[if HP of Player < 1], in spite of your better judgment[end if].";
						say "     You writhe limply under the beast's girth, mind ahaze in pleasure. It's as though this creature's cock was made just for you, your needy ring constricting against its rigid mass out of a carnal need to have it in you, its motion no doubt lubricated in its endeavors by his own sexual fluids.";
						say "     Though you would rather he fuck you forever it's inevitable that he concludes with one final thrust, his hilted dick flooding your bowels until they're bloated with his seed, [if Cock Count of Player > 1]your own neglected, [cock size desc of Player] members wasting their [Cum Load Size of Player] load impotently into the sand[else if Player is male]your own neglected, [cock size desc of Player] member wasting its [Cum Load Size of Player] load impotently into the sand[else if Player is female]triggering your own climax in response[else]struggling weakly as you lack the sexual outlet necessary to satisfy yourself[end if]. [if Player is female]Both of you cry out in celebration of this dual orgasm - his a deep, throaty roar, yours a beautiful-sounding song[else if Player is male]Both of you cry out in celebration of this dual orgasm - his a deep, throaty roar while you feign a feminine-sounding song, driven by your feral-tainted mind to reinforce his more masculine dominion over your lesser male form[else]In the ecstasy of his sole release, he lets out a deep, throaty roar, which you can only abide in frustration and embarrassment[end if].[line break]";
						say "     Satisfied, he dismounts you. [if Player is female]Forcing[else]Wrenching[end if] his cock free of your abused hole with [one of]a moist sucking[or]a wet popping[at random] sound. Huffing a little, [if Player is female]he's kind enough to give you a soft, affectionate lick across your side before he dives back into the water's depths,[else]he nips your ass playfully, amused by his little cock sleeve before he dives back into the water's depths,[end if] no doubt waiting for your return";
					CreatureSexAftermath "Player" receives "AssFuck" from "Feral Sea Dragon";
				else:
					say "     He climbs on top of you, his bulky weight pinning you to the sandy floor. He's shameless in prodding his proud dick against your snout, and by now your feral-tainted mind cannot resist submitting to this virile beast's needs. You open your jaws, your thick tongue the only cushion when it's [if Player is female]firmly[else]harshly[end if] thrusted into the confines of your quickly stuffed maw. Gently suckling it, ";
					if FaceName of Player is "Feral Sea Dragon" or FaceName of Player is "Feral Sea Dragoness":
						say "it's at least good that your elongated neck can";
					else:
						say "it's quite a challenge to";
					say " accommodate the sheer span of his masculine organ as he offers [if Player is female]little[else]no[end if] restraint in burying it entirely within you.";
					say "     Muffled by the obvious obstruction, you can't help but make a soft, song-like sound as your infection drives you to revel in your feral and submissive circumstances, your mind filling with only the desire to please this powerful male. Your tongue caresses its bestial length, his motion picking up a feverish pace as you feel him [if Player is female]licking[else]nipping[end if] you, compelled by his wanton [if Player is female]need[else]aggression[end if], only to finally have him roar out, his throbbing cock pumping your with an immense gouts of his thick, heady cum. Pinned, you can't pull away, and your belly is subsequently stuffed with the entire load of his expansive release.";
					say "     He slowly gathers himself and pulls his rod from your maw, your submissive haze driving you to lick it clean. He seems a bit amused by your obedience, [if Player is female]and regards you with an affectionate nuzzle before he[else]and once he's properly satisfied with making you his little sea dragon bitch he[end if] turns to dive back into the water";
					CreatureSexAftermath "Player" receives "OralCock" from "Feral Sea Dragon";
			say ". It takes several long minutes to recover from your bestial haze, eventually going about your business once more";
		else:
			if anallevel is 1: [short lead-in]
				say "     Slightly pinning yourself against the beach, you partially sink into the sand under the[if scalevalue of Player < 4] massive[end if] beast's weight, though his underside is at least soft enough to not be a particular strain on you. It would appear he's giving you a look-over, determining what fate to subject his new victim to.";
			else: [full lead-in]
				say "     Slightly pinning yourself against the beach, you partially sink into the sand under the[if scalevalue of Player < 4] massive[end if] beast's weight, though his underside is at least soft enough to not be a particular strain on you. You feel his thick tongue begin to probe your more private regions, that sickeningly slick organ having no shame in embarrassing you as much as it can[if Cunt Count of Player > 1], illuminating its clearly perverse intent by prodding your vulnerable cunts, perhaps testing their willingness to accommodate its girth before[else if Player is female], illuminating its clearly perverse intent by prodding your vulnerable cunt, perhaps testing its willingness to accommodate its girth before[else if Player is male]. He gives brief attention to your [cock size desc of Player] cock[smn], certainly enough to make you go right hard, though that doesn't appear to be his main intent. Curiosity sated,[else]. His little exploration only leads him to find your asshole, to which he probes curiously, perhaps more surprised that such a strange, genitalia-devoid creature like yourself could even exist. Curiosity sated,[end if] he pulls himself free, your exposed and saliva-[if scalevalue of Player < 4]drenched[else]sullied[end if] behind chilled by the ocean air.";
			if fsdfeedmemory >= 2 and lastfsdfeeding - turns >= 8 and ((player is kinky and a random chance of 1 in 4 succeeds) or (vorelevel is 1 and a random chance of 1 in 4 succeeds) or a random chance of 1 in 3 succeeds) and "Touched by Madness" is listed in feats of Player:
				If twistfsdfeedmemory is false:
					say "     His exposure to you seems to have an oddly disorienting effect on the sea dragon, and he needs a moment to recover from it before he starts off once more. Oddly enough, he shifts a bit to give you a better view of his face, his expression strangely softened, a blatant contradiction to his normally harsher demeanor.";
					say "     Before you can even try to determine the cause of this, he begins to make a hoarse, hacking sound, a sound you've become all-too familiar with by now, though never by a male of this species. Suddenly, your mouth is assailed by his lips, acrid breath compelling you to gasp for air, only for that now-gaping hole to be flooded with half-eaten fish.";
					say "     You imagine you'd be used to this by now, but this creature's rougher, more belligerent demeanor makes dealing with this all the more difficult, exacerbated by the fact that he clearly isn't experienced with this and ends up slightly overfeeding you.";
					say "     Satisfied and clearly happy for his deed, he lets you off, leaving you to contend with this rather unpleasant - if albeit free - meal. As he returns to the water's depths, it's unclear that this sort of alteration will have any sort of lasting effect on him - at least, when he's around anyone other that you.";
					now twistfsdfeedmemory is true;
				else:
					say "     Shifting around to give you a better view of his face, his softened expression an indication of his now-familiar intent. Beginning to cough up a meal, you find yourself ill-inclined to contest his sudden parental interests. Soon shifting to offer you this pragmatic kiss, you sheepishly abide the flood of partially digested fish.";
					say "     Thankfully, he does appear to be getting better at this, though his more abrasive design still makes the transaction a slightly awkward one. Once satisfied he lets you off with a strangely jovial chirp, leaving you to recover from this whole ordeal. As he returns to the water's depths, you ponder the implications of what has just transpired before setting off.";
				decrease hunger of Player by a random number between 10 and 24;
				now lastfsdfeeding is turns;
				infect;
			else if "Touched by Madness" is listed in feats of Player and player is mpreg_ok and ((player is kinky and a random chance of 1 in 3 succeeds) or a random chance of 1 in 4 succeeds) and scalevalue of Player < 4 and inasituation is false:
				If MFSDUBM is false:
					say "     He pauses as if stopped by some unseen force, the power of which compelling him to move off of you. Baffled for a moment, the dragon is somehow affected by your presence. Before you might do anything with this newfound freedom, though, his perception of the situation returns. Looking at him now, his demeanor has radically shifted; harsh once was his regard; assertive, domineering, his expression now soft and abiding, almost matronly.";
					say "     Bearing down upon you once more, his slick, dripping tongue slathering your smaller frame in an odd show of affection, until you are drenched in his saliva, blatantly arousing you. He doesn't even remotely seem interested in this; rather, he suddenly drags himself over you, soft underbelly and clearly erect cock grinding against your lubricated frame before he stops, showing no desire to spare you of his massive weight. Instinctively, you push against his pressure, but this only abides his tainted intent, and your endeavors backfire when you push yourself past his anal ring.";
					say "     Unable to contest this new, severely twisted desire, he begins to grind himself against the sand, his hole tightening against your frame as your lower torso soon follows, pulling you deeper into his slick depths. This overwhelming heat; this hungry, supple abyss, it [if Player is not neuter]is more than enough to set you off, almost immediately, fate sealed when this is all that the dragon needs to reach his own climax[else]torments you to no end, your fate soon sealed as the dragon reaches climax[end if], and though your fate may seem grim, you find yourself pulled to a destination alien even to this perverse domain before your vision fades. The dragon would no doubt recover and move on, even after soaking his underbelly with his own cum, the occupancy of his new captive not outwardly apparent to those who might see his large form...";
					now MFSDUBM is true;
				else:
					say "     He pulls off of you, his demeanor shifting into something now all-too familiar. [if HP of Player is 0 and player is not submissive]Your better judgment compels you to flee, but this only provokes him into pinning you once more; you will be subject to his perverse verdict regardless. In spite of this assertion, he offers what he doubtlessly now perceives as his twisted offspring plenty of affection, though his thick, fish-smelling tongue's endeavors are dual in nature, preparing you for what is to follow[else]Overwhelmed by his inappropriately maternal pull, he need only turn sideways, exposing his hardening cock and eager hole to you, to compel you forward. Your tongue slathering this hole and cock base with affection as he reciprocates across your frame, now doubtlessly perceiving you as his twisted offspring, what better judgment you might of had deflected by the reality of your lack of choice[end if].";
					say "     Blatantly aroused as you are, his satisfaction is met, [if HP of Player is 0 and player is not submissive]forcing himself down on you once more, and you are offered no choice but to accept his aquatic ring's embrace, smaller form quickly disappearing entirely under him[else]compelling you to enter his hungering ring, though you might only comply with your head and torso before he slams himself upright once more, engulfing the remainder of you with ease[end if].";
					say "     The sound of his conflicted mess of song and roar from such tainted need muffled within these confines, his passage tightens against your wholly engulfed frame, pulling you deeper into his slick depths as he seeks reprieve. This overwhelming heat; this hungry, supple abyss, now all too well-known to you, it [if Player is not neuter]is but a moment before it sets you off, fate sealed when this is all that the dragon needs to reach his own climax[else]torments you to no end, your fate soon sealed as the dragon reaches climax[end if], pulling you into that familiar, final, and inevitable destination before your vision fades. The Dragon would no doubt recover and move on, even after soaking his underbelly with his own cum, the occupancy of his new captive not outwardly apparent to those who might see his large form, and doubtlessly happy that you are his...";
				WaitLineBreak;
				if ((player is kinky and a random chance of 1 in 3 succeeds) or a random chance of 1 in 4 succeeds) and FSDOPEN < 2:
					say "     In due time you come to, the thick, hard walls of an egg surrounding you. However, you feel yourself slightly tumbling and shifting about and when you attempt to break free of the egg you find yourself unable to. The heat is overwhelming, [if Player is not neuter]your arousal quickly rising once more, driving you to pleasure yourself uncontrollably within these confines, making a further mess of yourself[else]your arousal quickly rising once more, forced to abide the torment of these demented confines[end if].";
					infect;
					say "     After what seems like forever, you can see the familiar light of the outside coming through the translucent walls of your prison, compelling you to finally break free, and once you acclimate to the open air it's made very clear -why- you were forced within those confines longer than natural";
					if a random chance of 1 in 2 succeeds and FemaleList is not banned:
						say ". A sea dragoness is before you, looking at her somewhat tired and lust-addled form, it's clear that she happened upon your egg and was compelled to use it for her own sexual gratification - much to your expense.";
						if ((player is kinky and a random chance of 3 in 8 succeeds) or a random chance of 1 in 5 succeeds):
							say "     Looking at her now, she doesn't appear fully satisfied, and looks as though she might concede to using -you- instead of your prior residence. You don't think you can take another fight, so your choice is to run or submit. Run for it?";
							if Player consents:
								let bonus be ( dexterity of Player - 10 ) / 2;
								let target be 14;
								if Player is submissive, increase target by 1;
								let dice be a random number from 1 to 20;
								if bonus + dice > target:
									say "     You make a run for it, successfully getting away from the beast with relative ease. Thankfully, you manage to find your things, strewn across the [if showlocale is true]beach[else]ground[end if].";
									now FSDOPEN is 0;
								else:
									say "     You try to make a run for it, but you stumble and fall onto the [if showlocale is true]sand[else]ground[end if], and in seconds the dragoness is on top of you, ready to subject you to her desire.";
									increase FSDOPEN by 1; [This will deflect the opening submit/lose line]
									say "[fsdf attack]";
							else:
								say "     You decide the best thing to do is just let her have her way with you, the eager dragoness soon pinning you against the [if showlocale is true]sand[else]ground[end if], ready to subject you to her desire.";
								if HP of Player < 1, now HP of Player is 1;
								increase FSDOPEN by 1; [This will deflect the opening submit/lose line]
								say "[fsdf attack]";
						else:
							say "     Doubtlessly exhausted as she is, she turns to depart, leaving you to retreat and gather your belongings - strewn across the beach as they are - along the way.";
							now FSDOPEN is 0;
					else:
						say ". Another sea dragon is before you, [one of]though you instinctively know that it's[or]fairly certain that it's not[at random] the same one that first trapped you. Looking at his somewhat tired and lust-addled form, it's clear that he was compelled to use your egg for his own sexual gratification - much to your expense.";
						if ((player is kinky and a random chance of 3 in 8 succeeds) or a random chance of 1 in 5 succeeds):
							say "     Looking at him now, he doesn't appear fully satisfied, and looks as though he might concede to using -you- instead of your prior residence. You don't think you can take another fight, so your choice is to run or submit. Run for it?";
							if Player consents:
								let bonus be ( dexterity of Player - 10 ) / 2;
								let target be 14;
								if Player is submissive, increase target by 1;
								let dice be a random number from 1 to 20;
								if bonus + dice > target:
									say "     You make a run for it, successfully getting away from the beast with relative ease. Thankfully, you manage to find your things, strewn across the [if showlocale is true]beach[else]ground[end if].";
									now FSDOPEN is 0;
								else:
									say "     You try to make a run for it, but you stumble and fall onto the [if showlocale is true]sand[else]ground[end if], and in seconds the sea dragon is on top of you, ready to subject you to his desire.";
									increase FSDOPEN by 1; [This will deflect the opening submit/lose line, check will need to be added for it]
									say "[fsdm attack]";
							else:
								say "     You decide the best thing to do is just let him have his way with you, the eager sea dragon soon pinning you against the [if showlocale is true]sand[else]ground[end if], ready to subject you to his desire.";
								if HP of Player < 1, now HP of Player is 1;
								increase FSDOPEN by 1; [This will deflect the opening submit/lose line, check will need to be added for it]
								say "[fsdm attack]";
						else:
							say "     Doubtlessly exhausted as he is he turns to depart, leaving you to retreat and gather your belongings - strewn across the beach as they are - along the way.";
							now FSDOPEN is 0;
				else:
					say "     In due time you come to, greeted by the thick and hard confines of an egg, light from the outside spilling through the translucent surface and compelling you to break yourself free. Exposed to the salty air once more, you were thankfully left on the beach, and you clean yourself off before gathering your belongings as they are, strewn across the beach.";
					infect;
					now FSDOPEN is 0;
			else if Player is female and Cunt Depth of Player > 11:
				say "     Finally, and thankfully, you're relinquished of the monster's mass; however, before you can get up you're pinned by his massive bulk a second time, now completely on top of you. He's shifted his weight enough so not to crush you, but now he's in a much better position to impale you with his massive, throbbing dick.";
				say "     You twitch with every irreverent and jerking thrust, only teasing tests [if Cunt Count of Player > 1]for one of[else]of[end if] your [cunt size desc of Player] cunt's willingness to accommodate his flared head. Soon your feel him put on the pressure as he slowly squeezes the rigid organ past your entrance, the intense sensation of which grants you inevitable reprieve when you get past its spade-shaped tip. The beast lets out an airy hiss in his own approval, but only lets you adapt to his girth briefly before he begins fucking you in earnest.";
				say "     His assault quickly becomes relentless in its pace, intent on using you with little regard to your well being. Any protests you might offer up rapidly diminish as you feel his pre incrementally spurt within your depth, what pain and discomfort you might have had driven away in favor of an immense and overwhelming desire to continue to be reamed by this powerful dragon, and soon you are drowning in ecstasy with every forceful thrust.";
				say "     [if Player is male]You orgasm over and over again, sandy ground under you made sticky as your own, [cock size desc of Player] cock[smn] make[smv] a repeated mess of things, driving you into a manic and blinding lust-frenzy[else]You orgasm over and over again, driving you into a manic and blinding lust-frenzy[end if]. The powerful beast begins pressing harder against your beleaguered form as he draws closer to his own release, and if you had any working sense of self-preservation you'd worry over your well-being but by now all you can feel is his flesh, his heat envelop you more and more.";
				say "     You feel like you're going to pass out, the immense pleasure of this monster more than you can handle before he suddenly lets out a deafening roar[if scalevalue of Player < 4]. Your belly bulges as your womb is almost immediately stuffed to its limits with the dragon's cum, each subsequent and torrential spurt squirting out from your stuffed hole[else]. You begin to feel his massive load firing inside you, your belly slowly bulging further and further with each progressive throb[end if]. Slowly, as he regains himself, he crawls off of you, relinquishing you of his now-softened cock[if scalevalue of Player < 4], most of his load gushing out of you as a result[end if]. Still in a lustful haze, you briefly attempt to lick yourself clean of his of his fluids before you collapse from exhaustion. When you come to the dragon's nowhere to be seen, no doubt satisfied with leaving you on this beach exposed and sore as you likely are now.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Sea Dragon";
			else if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (scalevalue of Player > 3 or (scalevalue of Player is 3 and player is twistcapped )) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 2 succeeds)): [standard anal]
				say "     Finally, and thankfully, you're relinquished of the monster's mass; however, before you can get up you're pinned by his massive bulk a second time, now completely on top of you. He's shifted his weight enough so not to crush you, but now he's in a much better position to impale you with his massive, throbbing dick.";
				say "     You twitch with every irreverent and jerking thrust, only teasing tests of your [bodytype of Player] asshole's willingness to accommodate his flared head, [if scalevalue of Player is 3]and when it's clear that - in spite of your small size - you will easily abide him[else]before[end if] you feel him put on the pressure as he slowly squeezes the rigid organ past your tight ring, the intense sensation of which grants you inevitable reprieve when you get past that spade-shaped tip. The beast lets out an airy hiss in approval, but only lets you acclimate to his girth briefly before he begins fucking you in earnest.";
				say "     His assault quickly becomes relentless in its pace, intent on using you with little regard to your well being. Any protests you might offer up rapidly diminish as you feel his pre incrementally spurt within your depth, what pain and discomfort you might have had driven away in favor of an immense and overwhelming desire to continue to be reamed by this powerful dragon, and soon you are drowning in ecstasy with every forceful thrust.";
				say "     [if Player is male]You orgasm over and over again, sandy ground under you made sticky as your own, [cock size desc of Player] cock[smn] make[smv] a mess of things, driving you into a manic and blinding lust-frenzy[else if Player is female]You orgasm over and over again, driving you into a manic and blinding lust-frenzy[else]You are driven into a manic and blinding lust-frenzy, exacerbated by the tormenting lack of any way to satiated it[end if]. The powerful beast begins pressing harder against your beleaguered form as he draws closer to his own release, and if you had any working sense of self-preservation you'd worry over your well-being but by now all you can feel is his flesh, his heat envelop you more and more.";
				say "     You feel like you're going to pass out, the immense pleasure of this monster more than you can handle before he suddenly lets out a deafening roar. You begin to feel his massive load firing inside you, your [if scalevalue of Player is 3]already-bulging belly quickly expanding[else]belly slowly bulging[end if] further and further with each progressive throb. Slowly, as he recovers, he crawls off of you, relinquishing you of his now-softened cock. Still in a lustful haze, you briefly attempt to lick yourself clean of his of his fluids before you collapse from exhaustion. When you come to the dragon's nowhere to be seen, no doubt satisfied with leaving you on this beach exposed and sore as you likely are now.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Feral Sea Dragon";
			else if anallevel is 3 and (a random chance of 1 in 4 succeeds or (player is kinky and a random chance of 2 in 5 succeeds)): [rimjob]
				say "     Carefully, the beast shifts more of its weight over you. [if HP of Player < 1]Much in spite of what protests you can offer against him, he's simply too heavy for you to make any effort of pushing him off[else]Satisfied with his grip on you, he seems more intent on abusing you rather than fucking you properly, an intent of which he obligingly informs you when you feel his tongue begin to force its way past your anal ring[end if].";
				say "     [if scalevalue of Player < 4 and the player is not twistcapped]The slimy organ really puts the strain on you as it's too large to easily fit in that hole, but the beast is diligent if nothing else and in due time you feel it slowly worm its way in. You're so diminutive relative to his own scale that your behind is easily eclipsed by his toothy maw, making you frightful that the beast may have half a mind to swallow you whole, though for now it only has the effect of coating your lower half in his saliva[else]It's initial efforts are probing, curious as to how pliable your hole might be, before the slimy organ begins to worm its way into the depths of your bowels with little obstruction. With a huff and a rumble the unengulfed portion of his long frequently buckles and bends prior to its brief re-immersion, the organ making a mess of your [bodytype of Player] thighs and groin as he fucks you with his tongue[end if].";
				say "     Its fervent motion doubtlessly lubricated by copious amounts of the beast's saliva, you feel his wanton affections grab a hold of you, pulling you further and further into a compliant and aroused state until you are overwhelmed by the ecstasy of the beast's touch.";
				if Player is male:
					say "     Your audible moans amusing to the dragon, it's not long before your [cock size desc of Player], [bodytype of Player] dick[if Cock Count of Player > 1]s explode with their[else] explodes with its[end if] inevitable release[if Ball Size of Player > 4]. You fire off gout after excessive gout of seed against yourself and the beast, so much so that it appears to mildly perturbed, clearly not that interested in your fluids at all, let alone in this much excess[else]. You convulse with every successive throb of your release, spilling your seed against both yourself and the dragon, not that he seems to particularly care[end if]. He continues to milk you dry of your fluids before both his tongue and his body relinquishes its hold on you.";
				else:
					say "     [if Player is female]Your audible moans amusing to the dragon, it's not long before your writhe with each concussive wave of pleasure as you orgasm, your sexual fluids spraying against the beast's irreverent organ. He inevitably pulls his tongue free, taking this opportunity to lick you clean of your climax, savoring your taste before he finally crawls off of you[else]Your audible moans amusing to the dragon, you can only writhe in ecstatic agony as he continues to assault you with no end in sight. You can't satisfy these overwhelming desires and you feel like the beast's irreverent affection will knock you unconscious before he finally relents. Satisfied with his torment, both his tongue and his body relinquish his hold from you[end if].";
				say "     He turns to depart. Still with some energy but still driven into a lustful frenzy by the creature's influence, you try to crawl after him only for him to dive back into the water's depths. You collapse from exhaustion, and it takes you awhile to get back up and clean the mess of bodily fluids the dragon left in his wake.";
				CreatureSexAftermath "Player" receives "Other" from "Feral Sea Dragon";
			else: [oral]
				say "     Eventually, and thankfully, you're relinquished of his weight, only for him move over you entirely. He shifts his weight just enough as to not completely smother you, but enough to hold your safety ransom, a ransom he intends to have you pay in pleasure when he pulls his massive member in front of you.";
				say "     [if Libido of Player > 40 or player is submissive]You feel an overwhelming wave of submission as you can't resist the desire to taste such a powerful cock, immediately obliging and pulling the head between eager[else]You're forced to stare at the dripping cock, occasionally and irreverently prodding you, smearing your face with his pre. Sadly, he's not letting you go anytime soon, so you reluctantly engulf the rod between your[end if] lips[if scalevalue of Player < 4]. The thing is much too big for you, but you do what you can to ensure that your captor is sufficiently pleased[else]. You're big enough to fit the flared and distinctly spade-shaped rod with relative ease, much to the pleasure of your captor, though - due to that spade shape - removing it seems to be a bit of a challenge, not that the beast has any regard for that right now[end if].";
				if humanity of Player > 50:
					say "     [if HP of Player > 0 or player is submissive]Already driven to service this powerful beast, as you taste his masculine fluids this desire becomes increasingly fervent, driving you into a manic and blinding desire to pleasure this male even at the expense of your own restraint and safety[else]Though you were ill-inclined to service the creature before, as you begin to taste his pre you feel an intensifying and overwhelming desire to submit to this beast, the influence of its infection having increasing effect on you, to an almost dizzying degree[end if]";
				else:
					say "     Already driven to service this powerful beast, as you taste his masculine fluids this desire becomes increasingly fervent, driving you into a manic and blinding desire to pleasure this male even at the expense of your own restraint and safety";
				say ". You feel his weight press more and more against you, but all you can do take immense pleasure in the feel of his overwhelming warmth both on top of you and inside you, and you feel like you're about to pass out before your jolted to attention when his cock immediately explodes with his release.";
				say "     [if scalevalue of Player < 4]Your stomach fills with his hot cum almost immediately and his cock is forced free of your hold, absolutely drenching you in his salty and sticky fluids, not that you mind since, by now, you're driven by a mad lust and can only numbly try to lick the fluids clean from his massive form[else]By now the rods engulfed fairly deep in your gullet, forcing you to let out a muffled moan as your stomach slowly bloats with his thick cum, so much so that your large form nearly displaces the beast from his position of having you pinned down, not that he really cares by now. Eventually, the flow stops, but you're still driven mad with lust, and can only weakly lick his softening cock as it's pulled from you[end if]. Thankfully, he lets you off without any more trouble, and just leaves you exhausted and half-buried in the sand before he crawls back into the sea from whence he came.";
				CreatureSexAftermath "Player" receives "OralCock" from "Feral Sea Dragon";
	if FSDOPEN is 0:
		now tempnum is 1;
		fsdbiasshift;
		now tempnum is 0;


To say fsdm loss:
	project the Figure of SeaDragon_hard_icon;
	if a random chance of fsdsub in 9 succeeds:
		now boundmod is 1;
		say "     Before you can land the final blow, the dragon suddenly backs away and concedes to you. His demeanor rather peculiar, you can summize that you've defeated this one before, and has succumbed to newfound, submissive inclinations";
		if Libido of Player < 40 and "Dominant" is not listed in feats of Player:
			say ". In no mood to humor his need, you send him off, slowly retreating back into the water's depths. You go about your business once more, now that the matter has been attended to.";
		else:
			say ". Shall you oblige his desire? Otherwise, you'll shoo him off.";
			if Player consents:
				fsdmvicmenu;
				now boundmod is 0;
			else:
				say "     You choose to leave the dragon with his need unsated, going about your business once more.";
	else:
		now boundmod is 0;
		say "     Bested by you, the dragon lets out one final roar before collapsing from exhaustion";
		if Libido of Player < 40 and "Dominant" is not listed in feats of Player:
			say ". As he slowly retreats back into the water's depths, you turn to depart, having nothing else to gain from the encounter.";
		else:
			say ". While he's laying there, do you exploit this opportunity to have a bit of fun? Otherwise, you'll let the beast retreat.";
			if Player consents:
				fsdmvicmenu;
			else:
				say "     You turn to depart, having nothing else to gain from this encounter.";

to say fsdm desc:
	project the Figure of SeaDragon_soft_icon;
	setmongender 3; [creature is male]
	psycheeval;
	libidoeval;
	now FSDOPEN is 0;
	now firebreathcount is 0;
	now firebreathready is false;
	now tempnum2 is 0;
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     You notice something in the water, which appears to be a large shadow on its approach towards you. Suddenly, the prior silence is shattered with the concussive crashing of waves as a massive beast hurls itself from under its surface, landing on the beach close to you. [one of]The dragon sniffs the air before seeing you, its eyes agleam with particular hunger[or]Looking at you, the dragon roars its challenge with a frightening glare[or]The dragon eyes you unnervingly as it seems to consider you for some purpose[at random]. You'd imagine its fin-like limbs would be ill-equipped to move across land, but he's quick to prove otherwise as the massive bulk begins rushing down upon you.";

Section 1-2 - Player Victory

to fsdmvicmenu:
	now tempnum2 is 2;
	now calcnumber is -1;
	say "     What will you do?";
	let Trixieexit be 0;
	while Trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [if Player is male][link]Mount him[as]1[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(2) [if Player is male][link]Have him suck your dick[as]2[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(3) [if Player is female][link]Have him eat your cunt[as]3[end link][else][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(4) [if Player is female][link]Ride his dick[as]4[end link][else][italic type]Female-specific interaction[roman type][end if] [if Player is female and Cunt Depth of Player < 12][italic type]- Too small![roman type][end if][line break]";
		say "(5) [link]Ride his dick anally[as]5[end link] [if scalevalue of Player is 3 and player is not twistcapped][italic type]- Too small![roman type][else if scalevalue of Player < 4][italic type]- Too small![roman type][end if][line break]";
		say "(6) [link]Suck him off[as]6[end link][line break]";
		LineBreak;
		say "(0) [link]Nevermind.[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Choice.";
		if calcnumber is 1:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDM_1]"; [Anal Pitching]
				fsdmsubshift;
				now tempnum is 1;
				fsdbiasshift;
				now tempnum is 0;
				now Trixieexit is 1;
		else if calcnumber is 2:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDM_2]"; [Oral Receiving Cock]
				fsdmsubshift;
				now tempnum is 1;
				fsdbiasshift;
				now tempnum is 0;
				now Trixieexit is 1;
		else if calcnumber is 3:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDM_3]"; [Oral Receiving Cunt]
				fsdmsubshift;
				now tempnum is 1;
				fsdbiasshift;
				now tempnum is 0;
				now Trixieexit is 1;
		else if calcnumber is 4:
			if Player is not female or Cunt Depth of Player < 12:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDM_4]"; [Cunt Catching]
				if a random chance of 2 in 3 succeeds or "Dominant" is listed in feats of Player:
					fsdmsubshift;
				now tempnum is 1;
				fsdbiasshift;
				now tempnum is 0;
				now Trixieexit is 1;
		else if calcnumber is 5:
			if scalevalue of Player < 3 or (scalevalue of Player is 3 and player is not twistcapped):
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[FSDM_5]"; [Anal Catching]
				if a random chance of 1 in 2 succeeds or "Dominant" is listed in feats of Player:
					fsdmsubshift;
				now tempnum is 1;
				fsdbiasshift;
				now tempnum is 0;
				now Trixieexit is 1;
		else if calcnumber is 6:
			say "[FSDM_6]"; [Oral Giving Cock]
			if a random chance of 1 in 2 succeeds or "Dominant" is listed in feats of Player:
				fsdmsubshift;
			now tempnum is 1;
			fsdbiasshift;
			now tempnum is 0;
			now Trixieexit is 1;
		else:
			say "     You have some second thoughts and choose against having your way with the dragon, leaving him to go about your business once more."; [turn down]
			now Trixieexit is 1;

fsdsub is a number that varies.
[fsdmposture is a number that varies.[@Tag:NotSaved]]
fsdbias is a number that varies.

to fsdmsubshift:
	if fsdsub < 7:
		increase fsdsub by 1;
	else if fsdsub is 7:
		increase fsdsub by 1;
		say "     [italic type]You imagine that you've reached the maximum number of sea dragons you can turn submissive, though you'll likely still catch stragglers here or there[roman type].";

to fsdbiasshift:
	if tempnum is 1: [Male]
		if fsdbias is 0:
			now fsdbias is 1;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male beast. Surely you fate is tied to him, should you succumb[roman type].";
		else if fsdbias is 4:
			now fsdbias is 3;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male beast. Your fate remains tied to a female, should you succumb, but continued exposure will cause a shift in your bias[roman type].";
		else if fsdbias is 3 or fsdbias is 2:
			now fsdbias is 1;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male beast. Surely your fate is tied to him, should you succumb[roman type].";
	else: [Female]
		if fsdbias is 0:
			now fsdbias is 4;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female beast. Surely you fate is tied to her, should you succumb[roman type].";
		else if fsdbias is 1:
			now fsdbias is 2;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female beast. Your fate remains tied to a male, should you succumb, but continued exposure will cause a shift in your bias[roman type].";
		else if fsdbias is 3 or fsdbias is 2:
			now fsdbias is 4;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female beast. Surely your fate is tied to her, should you succumb[roman type].";


[to fsdpostureshift:
	if tempnum2 is 1:
		if fsdmposture is 0:
			now fsdmposture is 1;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your submission to the beast[if Player is dominant], even against your dominant inclinations[end if]. Surely this is a sign of your fate, should you succumb[roman type].";
		else if fsdmposture is 4:
			decrease fsdmposture by 1;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, whispering of your submission to the beast[if Player is dominant], even against your dominant inclinations[end if]. You still feel fairly dominant towards them, but losing to them again will likely cause your posture to switch[roman type].";
		else if fsdmposture is 2 or fsdmposture is 3:
			now fsdmposture is 1;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your submission to the beast[if Player is dominant], even against your dominant inclinations[end if]. Surely this is a sign of your fate, should you succumb[roman type].";
	else if tempnum2 is 2:
		if fsdmposture is 0:
			now fsdmposture is 4;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your victory, reveling in your dominance of the beast[if Player is submissive], even against your submissive inclinations[end if]. Surely this is a sign of your fate, should you succumb[roman type].";
		else if fsdmposture is 1:
			increase fsdmposture by 1;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your victory, whispering of your dominance of the beast[if Player is submissive], even against your submissive inclinations[end if]. You still feel fairly submissive towards them, but defeating them again will likely cause your posture to switch[roman type].";
		else if fsdmposture is 2 or fsdmposture is 3:
			now fsdmposture is 4;
			if BodyName of Player is "Feral Sea Dragon" or BodyName of Player is "Feral Sea Dragoness":
				say "     [italic type]Your tainted mind echoes with your victory, reveling in your dominance of the beast[if Player is submissive], even against your submissive inclinations[end if]. Surely this is a sign of your fate, should you succumb[roman type].";
	now tempnum2 is 0;]

to say FSDM_1: [Anal Pitching]
	if boundmod is 1:
		say "     It doesn't take much before the[if scalevalue of Player < 4] massive[end if] beast obliges your endeavor to expose his undercarriage, churring lowly in tainted compliance";
	else:
		say "     Taking a [if scalevalue of Player < 4]considerable[else]fair[end if] amount of work in forcing the beast to expose his undercarriage, he's a very stubborn creature, growling and hissing at you in weak protest";
	say ". You see his hole as clear as day. Shall you stretch him out a bit before proceeding? Otherwise, you'll get straight to the point.";
	if Player consents:
		say "     Hand reaching down to fondle along the sea dragon's slick, muscled hide, pinched to subtle cleft, a digit lewdly hooks itself within it's confines, shoving its way into the supple flesh of his bowels. [if boundmod is 1]Groaning loudly, the beast obliges being subjected to this act, pressing against your touch and inviting[else]Though the beast doesn't care for being subjected to this act, growling and writhing in endeavor to free himself of your touch, he does eventually calm down, allowing[end if] another digit to delve into its depths, followed by another...";
		say "     His hole easily obliges this intrusion, [if scalevalue of Player < 4]even as you begin to[else]and only begins to really show any resistance when you start to[end if] fist him. [if boundmod is 1]Eager to be abused so, the monster's overtaken[else]As noncompliant as he might be, the monster can't help but be influenced[end if] by his own lust, bestial dick[if boundmod is 1] quickly[end if] growing out from under your limb's persistent pounding. Eventually satisfied, you pull your arm free and get to the task at hand.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	If Cock Count of Player > 1 and Cock Length of Player < 20:
		say "     You could probably force [if Cock Count of Player > 2]two[else]both[end if] of your dicks in there, shall you?";
		if Player consents:
			now tempnum2 is 1;
		else:
			now tempnum2 is 0;
	say "     Exposing your [cock size desc of Player] dick[smn] to the open air, [if tempnum is 1]your prior bit of fun has already left you hard, quickly sinking[else]it takes a little work to get you fully hard before slowly sinking[end if] [if tempnum2 is 1 and Cock Count of Player > 2]the head of two of them[else if tempnum2 is 1]the head of both of them[else]its head[end if] into the monster's[if Cock Length of Player > 18 or tempnum2 is 1] tight[end if] asshole";
	if boundmod is 1:
		if tempnum is 1:
			say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you no resistance, your earlier work seems to have made inching yourself in deeper a fair bit easier[else]He gives you virtually no resistance, given your earlier work[end if], especially given his clear enjoyment from it.";
		else:
			say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you only slight resistance; even though he wasn't prepared for it, he certainly wants it[else]He gives you barely any resistance, clearly wanting it even if he hasn't received and preparation[end if].";
	else:
		if tempnum is 1:
			say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you a bit of resistance, your earlier work seems to have made inching yourself in deeper a fair bit easier[else]He gives you practically no resistance, given your earlier work[end if].";
		else:
			say ". [if Cock Length of Player > 18 or tempnum2 is 1]Giving you a considerable resistance, he's clearly never been trained to take this much[else]He gives you a fair bit of resistance, clearly showing no experience for this[end if].";
	say "     [if boundmod is 1]Churr[else]Growl[end if]ing and moaning loudly, the[if scalevalue of Player < 4] massive[end if] beast [if boundmod is 1]revels in being[else]can't do a thing but allow himself to be[end if] railed, ";
	if boundmod is 1:
		say "[if tempnum is 0]his own dick quickly growing out and exposing itself to the open air under yours, bobbing wildly[else]his own, eagerly dripping dick bobbing wildly in the open air[end if]";
	else:
		say "[if tempnum is 0]his clear disinterest betrayed by his own dick, growing out and exposing itself to the open air under yours, bobbing wildly[else]his own dripping dick bobbing wildly in the open air[end if]";
	say ". [if boundmod is 1]Now-submissive sea dragon's relegation to a mere fucktoy all he cares about[else]Once-dominant sea dragon now relegated to a mere fucktoy[end if], he's quickly lost in a haze of lust under your[if scalevalue of Player < 4] diminutive[end if] body's weight, [bodytype of Player] form trembling with each[if scalevalue of Player > 3] powerful[end if] thrust.";
	say "     As time passes, your grip along the thick girth of the beast tightens, drawing ever close to bliss. [if boundmod is 1]Monster twisting and pressing against you, he can't get enough of[else]Tainted mind twisted to acclimate to this new relegation, the monster groans and writhes against[end if] your cock[if tempnum2 is 1]s[end if]. Shall you pull out at the last second?";
	if Player consents:
		say "     Just at the cusp of ecstasy, you wrench your tool[if tempnum2 is 1]s[end if] free of the sea dragon's tight hole, grinding against his hide until you're set off, firing your [Cum Load Size of Player] against his underside, [if Ball Size of Player > 5]utterly drenching it[else]making an embarrassing mess of it[end if]. It doesn't seem to be enough to set him off, his unattended dick dribbling against the open air. Should you help him out?";
		if Player consents:
			say "     Simple handjob? Otherwise, you'll suck him off.";
			if Player consents:
				say "     Stained by your own seed, you grab his impressive, slick organ, rapidly pumping along its length. [if boundmod is 1]Groaning deeply, the needy[else]Growling deeply, the[end if] sea dragon doesn't take long before your attendance gives him reprieve, quickly sputtering its virile load into the sand and further making an embarrassing mess of himself.";
			else:
				say "     Moving in, your lips embracing along the tapered head of his impressive, slick organ, [if scalevalue of Player < 4]your tongue caresses along the tip as your hands pump[else]your head rapidly bobs against it, tongue caressing[end if] along its length. [if boundmod is 1]Groaning deeply, the needy[else]Growling deeply, the[end if] sea dragon doesn't need long before your affection sets him off, quickly sputtering its virile, overpowering load into your maw[if scalevalue of Player < 4], quickly overtaking you and forcing what you cannot swallow to sputter from your lips[else], eagerly swallowing it down[end if].";
			say "     Stepping away, satisfied, you wipe yourself clean against his slick hide and depart, [if boundmod is 1]contending with the cum-stained monster's insistence on your continued abuse before he finally drags[else]leaving the spent and cum-stained monster to eventually drag[end if] himself back into the sea";
			if boundmod is 1:
				say ", no doubt eager to be abused by you again, some day...";
			else:
				say ". You'd imagine he'd be embarrassed by the whole ordeal, but you're not sure as to the long-term implications of such a dominant creature being abused in such a way...";
		else:
			say "     Stepping away, satisfied, you wipe yourself clean against his slick hide and depart, [if boundmod is 1]contending with the cum-stained monster's insistence on your continued abuse before he finally drags[else]leaving the spent and cum-stained monster to eventually drag[end if] himself back into the sea, its lust left unsated";
			if boundmod is 1:
				say ", and no doubt eager to be abused by you again, some day...";
			else:
				say ". You'd imagine he'd be embarrassed by the whole ordeal, but you're not sure as to the long-term implications of such a dominant creature being abused in such a way...";
	else:
		say "     In one final thrust, you [if Player is knotted]tie[else]hilt[end if] your tool[if tempnum2 is 1]s[end if] within the sea dragon's tight hole, crying out as you're set off, unleashing your [Cum Load Size of Player] load into his supple bowels[if Ball Size of Player > 5] and quickly beginning to sputter from him[end if]. This is more than enough to set the beast off, roaring out weakly as his unattended dick wastes its virile load across the sand and his underside, further making an embarrassing mess of himself.";
		say "     Wrenching yourself free, satisfied, you wipe yourself clean against his slick hide and depart, [if boundmod is 1]contending with the cum-stained monster's insistence on your continued abuse before he finally drags[else]leaving the spent and cum-stained monster to eventually drag[end if] himself back into the sea";
		if boundmod is 1:
			say ", no doubt eager to be abused by you again, some day...";
		else:
			say ". You'd imagine he'd be embarrassed by the whole ordeal, but you're not sure as to the long-term implications of such a dominant creature being abused in such a way...";
	now tempnum is 0;
	now tempnum2 is 0;
	CreatureSexAftermath "Feral Sea Dragon" receives "AssFuck" from "Player";

to say FSDM_2: [Oral Receiving Cock]
	say "     Circling around the sea dragon to meet his head, the exhausted beast can only ";
	if boundmod is 1:
		say "whimper submissively towards you. Exposing your aroused, [cock size desc of Player] dick[smn] before him, he seems somewhat eager to attend your need. Perhaps you should start off with a bit of";
	else:
		say "glower at you with a low growl. Exposing your aroused, [cock size desc of Player] dick[smn] before him, it's clear he doesn't seem particularly inclined to humor your need. Shall you try to win him over with";
	say " affection? Otherwise, you'll get straight to the point.";
	if Player consents:
		now tempnum is 1;
		say "     Kneeling down to stroke along the seawater-slicked sides of the beast's muzzle, he [if boundmod is 1]presses softly against your touch[else]seems fairly ambivalent towards this gesture[end if]. Your own head moving to caress his, the monsters breath against you is bitter with the odor of saltwater and fish. You could go further. Shall you? Otherwise, you'll get back on track.";
		if Player consents:
			now tempnum is 2;
			say "     [if boundmod is 1]Practically on cue, the dragon's lips part[else]Digits curving along the dragon's lips, you're able to coax them sufficiently agape[end if] to allow your tongue access, taste soon awash in his now familiar scent. [if boundmod is not 1]Not immediately receptive towards this gesture, the beast's will eventually does buckle under his own lust, and shows that he's willing to[else]Immediately receptive towards the gesture, the beast shudders under the weight of his rising lust, more than eager to[end if] reciprocate.";
			say "     His own slick, writhing appendage invading your maw, ";
			if boundmod is 1:
				say "[if scalevalue of Player < 4]his size no doubt somewhat overwhelming, though he shows some restraint,[else]you're able to keep up the eager beast with little issue as[end if]";
			else:
				say "[if scalevalue of Player < 4]its size easily overwhelms you, the beast no doubt reveling in his superior stance within this ritual as[else]you're able to keep up the impressive beast with little issue,[end if]";
			say " your taste is overwhelmed by his overpowering saliva. Eventually, [if boundmod is 1 or scalevalue of Player > 3]you find yourself satisfied with your bit of fun and you[else]the foreplay becomes too much for you and you have to[end if] get back on track.";
	else:
		now tempnum is 0;
	if boundmod is 1:
		say "     [if tempnum is 1]Eager to begin[else if tempnum is 2]Eager and drooling to begin[else]With little effort[end if]";
	else:
		say "     [if tempnum is 1]Having warmed up to you slightly[else if tempnum is 2]Having warmed up to you by a bit now[else]With persistent chastising, along with the cock's persistent prodding against his snout[end if]";
	say ", he obliges your need, scaled lips parting to envelop [if Cock Count of Player > 1]one of your tools[else]your tool[end if] within its depths. Thick tongue slathering along its[if Cock Length of Player > 11] substantive[end if] length, [if Cock Length of Player > 19]the dragon's elongated neck easily handles your impressive organ[else]the dragon shows no difficulty in handling your throbbing organ[end if]. The touch of his saliva[if tempnum is 2], along with that lingering in your maw,[end if] [one of]seeming to intensify[or]intensifying[stopping] your arousal, you can't help but thrust against his snout, the dragon [if boundmod is 1]rumbling in approval[else]snorting in disdain[end if].";
	say "     Writhing against the beast's touch, [if boundmod is 1]happily[else]slowly[end if] [if Cock Length of Player > 14]bobbing along[else]attending to[end if] your organ, you find it difficult to keep a clear head as you rapidly approach ecstasy. You don't think you'll be able to hold back for any longer, shall you pull out at the last second? Otherwise, you'll reward the obedient little sea dragon.";
	if Player consents:
		say "     Immediately, you wrench your dick free of his lips, strings of precum and saliva trailing from the creature's maw. A couple seconds of grinding against his snout, and you cry out, unleashing your [Cum Load Size of Player] against the beast's [if boundmod is 1]obliging and lust-hazed[else]disgruntled[end if] visage. [if boundmod is 1]Whining softly, the beast idly licks at its face as he's[else]Rumbling lowly in detest, the beast can't do anything but oblige being[end if] shamed like this.";
	else:
		say "     It's not long before you finally cry out in bliss, firing your [Cum Load Size of Player] load into the creature's[if boundmod is 1] obliging[end if] maw. [if boundmod is 1]Whining softly, he's gulps audibly in an eager desire[else]Rumbling in detest, he can only oblige being forced[end if] to swallow your cum[if Ball Size of Player > 5], the sheer volume of which quickly causing it to ooze from his lips[end if].";
	say "     Satisfied, you step away from the dragon, writhing against the sand with a need to satisfy his own, lingering lust in the wake of your task. No doubt the beast will have to attend to his own need after your turn and depart.";
	CreatureSexAftermath "Feral Sea Dragon" receives "OralCock" from "Player";

to say FSDM_3: [Oral Receiving Cunt]
	say "     Circling around the sea dragon to meet his head, the exhausted beast can only ";
	if boundmod is 1:
		say "whimper submissively towards you. Exposing your already oozing, [cunt size desc of Player] cunt[sfn] before him, he seems somewhat eager to attend your need. Perhaps you should start off with a bit of";
	else:
		say "glower at you with a low growl. Exposing your already oozing, [cunt size desc of Player] cunt[sfn] before him, it's clear he doesn't seem particularly inclined to humor your need. Shall you try to win him over with";
	say " affection? Otherwise, you'll get straight to the point.";
	if Player consents:
		now tempnum is 1;
		say "     Kneeling down to stroke along the seawater-slicked sides of the beast's muzzle, he [if boundmod is 1]presses softly against your touch[else]seems fairly ambivalent towards this gesture[end if]. Your own head moving to caress his, the monsters breath against you is bitter with the odor of saltwater and fish. You could go further. Shall you? Otherwise, you'll get back on track.";
		if Player consents:
			now tempnum is 2;
			say "     [if boundmod is 1]Practically on cue, the dragon's lips part[else]Digits curving along the dragon's lips, you're able to coax them sufficiently agape[end if] to allow your tongue access, taste soon awash in his now familiar scent. [if boundmod is not 1]Not immediately receptive towards this gesture, the beast's will eventually does buckle under his own lust, and shows that he's willing to[else]Immediately receptive towards the gesture, the beast shudders under the weight of his rising lust, more than eager to[end if] reciprocate.";
			say "     His own slick, writhing appendage invading your maw, ";
			if boundmod is 1:
				say "[if scalevalue of Player < 4]his size no doubt somewhat overwhelming, though he shows some restraint,[else]you're able to keep up the eager beast with little issue as[end if]";
			else:
				say "[if scalevalue of Player < 4]its size easily overwhelms you, the beast no doubt reveling in his superior stance within this ritual as[else]you're able to keep up the impressive beast with little issue,[end if]";
			say " your taste is overwhelmed by his overpowering saliva. Eventually, [if boundmod is 1 or scalevalue of Player > 3]you find yourself satisfied with your bit of fun and you[else]the foreplay becomes too much for you and you have to[end if] get back on track.";
	else:
		now tempnum is 0;
	if boundmod is 1:
		say "     [if tempnum is 1]Eager to begin[else if tempnum is 2]Eager and drooling to begin[else]With little effort[end if]";
	else:
		say "     [if tempnum is 1]Having warmed up to you slightly[else if tempnum is 2]Having warmed up to you by a bit now[else]With persistent chastising, along with the cock's persistent prodding against his snout[end if]";
	say ", he obliges your need, scaled lips parting to envelop [if Cock Count of Player > 1]one of your pussies[else]your pussy[end if] within its embrace. Thick tongue slathering along its supple entrance, [if Cunt Depth of Player > 17]he easily thrusts the slick, writhing organ into your pliable depths[else]he thrusts the slick, writhing organ into your depths, quickly straining you with its impressive size[end if]. The touch of his saliva[if tempnum is 2], along with that lingering in your maw,[end if] [one of]seeming to intensify[or]intensifying[stopping] your arousal, you can't help but press against his snout, the dragon [if boundmod is 1]rumbling in approval[else]snorting in disdain[end if].";
	say "     Writhing against the beast's touch, [if boundmod is 1]happily[else]slowly[end if] making you twitch and writhe with each motion of his worming appendage, you find it difficult to keep a clear head as you rapidly approach ecstasy";
	if Player is male:
		say ". You don't think you'll be able to hold back for any longer, dick[smn] drooling against the open air. Shall you pull out at the last second and shame the sea dragon with your cum? Otherwise, you'll spare him the humiliation.";
		if Player consents:
			say "     Immediately, you wrench yourself free of his tongue, strings of saliva trailing from the creature's maw following the organ's loud departure. A couple seconds of grinding your throbbing, [cock size desc of Player] cock[smn] against his snout and you finally cry out, unleashing your [Cum Load Size of Player] against the beast's [if boundmod is 1]obliging and lust-hazed[else]disgruntled[end if] visage. [if boundmod is 1]Whining softly, the beast idly licks at its face as he's[else]Rumbling lowly in detest, the beast can't do anything but oblige being[end if] shamed like this.";
		else:
			say "     It's not long before you finally cry out in bliss, firing your [Cum Load Size of Player] load into the open air as your stuffed hole throbs against the creature's[if boundmod is 1] obliging[end if] tongue. [if boundmod is 1]Whining softly, he revels in tasting[else]Rumbling in detest, he can only oblige being forced taste[end if] your juices. After a fair length of time lost in the throes of your lust, your need dies down, allowing you a moment to catch your breath.";
	else:
		say ". Lost in a haze of your need, you cling tightly to the beast, driving him to attend your ever-harder.";
		say "     It's not long before you finally cry out in bliss, your stuffed hole throbbing against the creature's[if boundmod is 1] obliging[end if] tongue. [if boundmod is 1]Whining softly, he revels in tasting[else]Rumbling in detest, he can only oblige being forced taste[end if] your juices. After a fair length of time lost in the throes of your lust, your need dies down, allowing you a moment to catch your breath.";
	say "     Satisfied, you finally step away from the dragon, writhing against the sand with a need to satisfy his own, lingering lust in the wake of your task. No doubt the beast will have to attend to his own need after your turn and depart.";
	CreatureSexAftermath "Feral Sea Dragon" receives "OralPussy" from "Player";

to say FSDM_4: [Cunt Catching]
	if boundmod is 1:
		say "     Thankfully, heavy though the sea dragon may be, he offers little protest as you force him onto his back. Tainted beast eager to be used, he offers no resistance";
	else:
		say "     Given the sheer weight of the sea dragon, it takes a fair bit of work to turn just to get him to roll onto his back[if scalevalue of Player > 3], even as large as you are[end if]. Stubborn beast ill-inclined to so easily oblige his better, there's little he can actually do to contest";
	say " you as you [if scalevalue of Player < 4]crawl[else]climb[end if] on top of his now-exposed underbelly.";
	say "     Genital slit revealed under your prying gaze, you move a hand to caress along its length, the monster [if boundmod is 1]rumbling deeply in wanton need[else]growling lowly in impotent regard[end if] for your touch. [if boundmod is 1]Grown acclimated to this abuse, he easily succumbs to his own, overwhelming lust, your attention immediately[else]As much as he postures about his disdain for you, even he cannot resist his own, overriding lust, your attention[end if] rewarded with the spaded head of his bestial dick peeking from its home and eagerly inviting your touch. Shall your continued preparation be more affectionate? Otherwise, you'll keep your distance.";
	if Player consents:
		say "     Head [if scalevalue of Player < 4]moving[else]descending[end if] on his carnal offering, your tongue caresses along the length of the sea dragon's impressive, emergent organ. Airy hiss of [if boundmod2 is 1]eager approval from the beast, he easily obliges[else]conflicted approval from the beast, he's hard-pressed to resist[end if] the influence of your continued attendance.";
		say "     As his cock grows to full attention, its full length proves [if scalevalue of Player < 4]extremely intimidating, and probably impossible to take if not for your pliable assets[else if scalevalue of Player is 4]quite intimidating, though you imagine it won't be too difficult for you[else]rather intimidating, though it's nothing someone of your size can't handle[end if]. His length is streamlined and easy to grip around its girth[if scalevalue of Player < 4], even for someone of your size[end if], and its head flares out distinctively, dribbling tip inviting you to taste the monster's heady precum.";
		say "     Eventually slick with a mixture of saliva and precum, you move onto the matter of mounting him";
		now tempnum is 1;
	else:
		say "     Continuing to knead along the length the sea dragon's [if scalevalue of Player < 4]extremely intimidating[else if scalevalue of Player is 4]intimidating[else]impressive[end if], emergent organ, it's not long before your continued attendance brings him to full, drooling attention. Airy hiss escaping the beast's maw, he[if tempnum is 1] eagerly approves your continued[else]'s clearly having a difficult time resisting your[end if] influence.";
		say "     Flared head's now-persistent drooling compelling you to slick his length with precum, he should be ready for you";
		now tempnum is 0;
	say ". [if scalevalue of Player < 4]Crawling[else]Moving[end if] over the sea dragon's throbbing rod, you carefully position yourself over its tip before you make your slow descent. Shall you pace yourself out? Otherwise, you'll put him through a rough ride.";
	if Player consents:
		say "     Slowly forcing the dragon's pointed tip through the folds of[if Cunt Count of Player > 1] one of[end if] your cunt's lips, you're [if Cunt Depth of Player < 14]fairly[else if Cunt Depth of Player < 18]briefly[else]barely[end if] strained as you engulf the beast's flared head. Descent slicked by [if tempnum is 1]your prior attendance[else]his sexual fluids[end if], the sea dragon groans and writhes as each successive inch in engulfed. Once you manage to take the head, the rest of his shaft seems comparatively easy to tackle, your speed slightly rising as you begin to ride the creature proper.";
		say "     [if Player is male]Dick[smn] waving against the open air, you move to jerk yourself off as[else if Cunt Count of Player > 2]Fondling one of your unattended pussies,[else if Cunt Count of Player is 2]Fondling your unattended pussy[else]Fondling your stuffed pussy,[end if] your motion starts to pick up its pace, motion slicked by sweat as the beast's increasingly shallow breath intensifies your endeavor, each descent coaxing him free of his breath";
	else:
		say "     Unceremoniously, you force yourself down on the dragon's point tip, squeezed through the folds of[if Cunt Count of Player > 1] one of[end if] your cunt's lips as it's quickly engulfed, [if Cunt Depth of Player < 14]fairly[else if Cunt Depth of Player < 18]briefly[else]barely[end if] strained by the beast's flared head. Descent thankfully slicked by [if tempnum is 1]your prior attendance[else]his sexual fluids[end if], the sea dragon grunts and tenses as you rapidly engulf inch after inch of his flesh. Once you've impaled yourself with the head, the rest is much easier to take, plunging yourself down as you begin to ride the creature proper.";
		say "     [if Player is male]Dick[smn] quickly bobbing against the open air, you move to furiously jerk yourself off as[else if Cunt Count of Player > 2]Unattended pussies aching against the open air, you move to furiously fondle yourself as[else if Cunt Count of Player is 2]Unattended pussy aching against the open air, you move to furiously fondle yourself as[else]Furiously fondling your stuffed pussy,[end if] your motion reaches a feverish pace, motion slicked by sweat as the beast's increasingly shallow breath seems to exacerbate your endeavor, each descent forcing his breath from him";
	say ". It's clear neither of you can hold back any longer. Shall you pull out at the last second?";
	if Player consents:
		say "     Shall you shame the beast with his own release?";
		if Player consents:
			now tempnum2 is 1;
		else:
			say "     Finally, shall you revel in his release, or waste it against the open air?";
			if Player consents:
				now tempnum2 is 2;
			else:
				now tempnum2 is 3;
		say "     Unable to hold back any more, you wrench yourself free of the sea dragon's painfully throbbing dick, briefly waving in the open air, unattended before you [if Cock Count of Player < 0]frot[else]grind[end if] yourself against its length. Monster roaring out[if boundmod is 1] meekly[end if] in bliss, his cock sputters a hail of his thick seed, painting [if tempnum2 is 1]his upper torso and face with his own load, who can only writhe and groan in detest at such humiliation[else if tempnum2 is 2]your [bodytype of Player] form with his virile, heady load, until you're practically drenched in the white fluid[else]the sandy floor with his load, wholly spent[end if].";
		if Player is male:
			say "     Your own bliss quickly following suit, your cock[smn] unleash your [Cum Load Size of Player] load on the beast, [if tempnum2 is 1 and Ball Size of Player > 4]further embarrassing him as he's now utterly drenched in cum[else if tempnum2 is 1]further embarrassing him as your cum also stains him[else if Ball Size of Player > 5]utterly drenching him in your cum[else]staining him with your cum[end if]";
		else:
			say "     Your own bliss quickly following suit, you oozing cunt[sfn] aching against the beast, [if tempnum2 is 1]further embarrassing him as he's stained with your juices[else]staining him with your juices[end if]";
		say ". The dragon can only rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
	else:
		now tempnum2 is 0;
		say "     Unable to hold back for any longer, the sea dragon finally roars out in bliss, body wracked with wave after successive wave of thick seeds from his sputtering dick, [if scalevalue of Player < 4]blatantly bloating to abide it, until it begins to sputter from your stuffed hole[else][bodytype of Player] body visibly bloating to abide it[end if]";
		if Player is male:
			say ". Your own cock[smn] unleashing your [Cum Load Size of Player] load, you [if Ball Size of Player > 4]utterly drench the beast[else]stain the beast[end if] with your cum, who can only rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
		else:
			say ". Your stuffed cunt throbbing against the powerful intrusion, you stain the beast with your juices, who can only rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
	say "     Once things die down, you slowly dismount the creature[if tempnum2 is 0], dick's audibly wet departure from your stretched lips echoing through the air[end if]. The beast can only writhe and rumble as he lays there on the sand, a shameful, used mess. Satisfied with what you have wrought, you choose to go on your merry way, leaving your friend to wallow on the beach.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Sea Dragon";

to say FSDM_5: [Anal Catching]
	if boundmod is 1:
		say "     Thankfully, heavy though the sea dragon may be, he offers little protest as you force him onto his back. Tainted beast eager to be used, he offers no resistance to";
	else:
		say "     Given the sheer weight of the sea dragon, it takes a fair bit of work to turn just to get him to roll onto his back[if scalevalue of Player > 3], even as large as you are[end if]. Stubborn beast ill-inclined to so easily oblige his better, there's little he can actually do to contest";
	say " you as you [if scalevalue of Player < 4]crawl[else]climb[end if] on top of his now-exposed underbelly.";
	say "     Genital slit revealed under your prying gaze, you move a hand to caress along its length, the monster [if boundmod is 1]rumbling deeply in wanton need[else]growling lowly in impotent regard[end if] for your touch. [if boundmod is 1]Grown acclimated to this abuse, he easily succumbs to his own, overwhelming lust, your attention immediately[else]As much as he postures about his disdain for you, even he cannot resist his own, overriding lust, your attention[end if] rewarded with the spaded head of his bestial dick peeking from its home and eagerly inviting your touch. Shall your continued preparation be more affectionate? Otherwise, you'll keep your distance.";
	if Player consents:
		say "     Head [if scalevalue of Player < 4]moving[else]descending[end if] on his carnal offering, your tongue caresses along the length of the sea dragon's impressive, emergent organ. Airy hiss of [if boundmod2 is 1]eager approval from the beast, he easily obliges[else]conflicted approval from the beast, he's hard-pressed to resist[end if] the influence of your continued attendance.";
		say "     As his cock grows to full attention, its full length proves [if scalevalue of Player < 4]extremely intimidating, and probably impossible to take if not for your uncanny talent[else if scalevalue of Player is 4]quite intimidating, though you imagine it won't be too difficult for you[else]rather intimidating, though it's nothing someone of your size can't handle[end if]. His length is streamlined and easy to grip around its girth[if scalevalue of Player < 4], even for someone of your size[end if], and its head flares out distinctively, dribbling tip inviting you to taste the monster's heady precum.";
		say "     Eventually slick with a mixture of saliva and precum, you move onto the matter of mounting him";
		now tempnum is 1;
	else:
		say "     Continuing to knead along the length the sea dragon's [if scalevalue of Player < 4]extremely intimidating[else if scalevalue of Player is 4]intimidating[else]impressive[end if], emergent organ, it's not long before your continued attendance brings him to full, drooling attention. Airy hiss escaping the beast's maw, he[if tempnum is 1] eagerly approves your continued[else]'s clearly having a difficult time resisting your[end if] influence.";
		say "     Flared head's now-persistent drooling compelling you to slick his length with precum, he should be ready for you";
		now tempnum is 0;
	say ". [if scalevalue of Player < 4]Crawling[else]Moving[end if] over the sea dragon's throbbing rod, you carefully position yourself over its tip before you make your slow descent. Shall you pace yourself out? Otherwise, you'll put him through a rough ride.";
	if Player consents:
		say "     Slowly forcing the dragon's pointed tip through your anal ring, you're [if scalevalue of Player < 4]fairly[else if scalevalue of Player is 4]briefly[else]barely[end if] strained as you engulf the beast's flared head. Descent slicked by [if tempnum is 1]your prior attendance[else]his sexual fluids[end if], the sea dragon groans and writhes as each successive inch in engulfed. Once you manage to take the head, the rest of his shaft seems comparatively easy to tackle, your speed slightly rising as you begin to ride the creature proper.";
		say "     [if Player is male]Dick[smn] waving against the open air, you move to jerk yourself off as[else if Player is female]Cunt[sfn] aching against the open air, you move to fondle yourself as[else]Fondling your genderless form,[end if] your motion starts to pick up its pace, motion slicked by sweat as the beast's increasingly shallow breath intensifies your endeavor, each descent coaxing him free of his breath";
	else:
		say "     Unceremoniously, you force yourself down on the dragon's point tip, squeezed through your anal ring as it's quickly engulfed, [if scalevalue of Player < 4]fairly[else if scalevalue of Player is 4]briefly[else]barely[end if] strained by the beast's flared head. Descent thankfully slicked by [if tempnum is 1]your prior attendance[else]his sexual fluids[end if], the sea dragon grunts and tenses as you rapidly engulf inch after inch of his flesh. Once you've impaled yourself with the head, the rest is much easier to take, plunging yourself down as you begin to ride the creature proper.";
		say "     [if Player is male]Dick[smn] quickly bobbing against the open air, you move to furiously jerk yourself off as[else if Player is female]Cunt[sfn] aching against the open air, you move to furiously fondle yourself as[else]Furiously fondling your genderless form,[end if] your motion reaches a feverish pace, motion slicked by sweat as the beast's increasingly shallow breath seems to exacerbate your endeavor, each descent forcing his breath from him";
	say ". It's clear neither of you can hold back any longer. Shall you pull out at the last second?";
	if Player consents:
		say "     Shall you shame the beast with his own release?";
		if Player consents:
			now tempnum2 is 1;
		else:
			say "     Finally, shall you revel in his release, or waste it against the open air?";
			if Player consents:
				now tempnum2 is 2;
			else:
				now tempnum2 is 3;
		say "     Unable to hold back any more, you wrench yourself free of the sea dragon's painfully throbbing dick, briefly waving in the open air, unattended before you [if Cock Count of Player < 0]frot[else]grind[end if] yourself against its length. Monster roaring out[if boundmod is 1] meekly[end if] in bliss, his cock sputters a hail of his thick seed, painting [if tempnum2 is 1]his upper torso and face with his own load, who can only writhe and groan in detest at such humiliation[else if tempnum2 is 2]your [bodytype of Player] form with his virile, heady load, until you're practically drenched in the white fluid[else]the sandy floor with his load, wholly spent[end if].";
		if Player is male:
			say "     Your own bliss quickly following suit, your cock[smn] unleash your [Cum Load Size of Player] load on the beast, [if tempnum2 is 1 and Ball Size of Player > 4]further embarrassing him as he's now utterly drenched in cum[else if tempnum2 is 1]further embarrassing him as your cum also stains him[else if Ball Size of Player > 5]utterly drenching him in your cum[else]staining him with your cum[end if]";
		else if Player is female:
			say "     Your own bliss quickly following suit, your cunt[sfn] aching against the beast, [if tempnum2 is 1]further embarrassing him as he's stained with your juices[else]staining him with your juices[end if]";
		if Player is not neuter:
			say ". The dragon can only rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
	else:
		now tempnum2 is 0;
		say "     Unable to hold back for any longer, the sea dragon finally roars out in bliss, body wracked with wave after successive wave of thick seeds from his sputtering dick, [if scalevalue of Player < 4]blatantly bloating to abide it, until it begins to sputter from your stuffed hole[else][bodytype of Player] body visibly bloating to abide it[end if]";
		if Player is male:
			say ". Your own cock[smn] unleashing your [Cum Load Size of Player] load, you [if Ball Size of Player > 4]utterly drench the beast[else]stain the beast[end if] with your cum, who can only rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
		else if Player is female:
			say ". Your cunt[sfn] aching against the open air, you stain the beast with your juices, who can only rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
		else:
			say ". Without an outlet, you can only writhe and moan in insatiable need, forcing the dragon to rumble and [if boundmod is 1]moan in approval, lost in a haze of[else]groan in disdain, muffled under the throes of his[end if] tainted ecstasy.";
	say "     Once things die down, you slowly dismount the creature[if tempnum2 is 0], dick's audibly wet departure from your hole echoing through the air[end if]. The beast can only writhe and rumble as he lays there on the sand, a shameful, used mess. Satisfied with what you have wrought, you choose to go on your merry way, leaving your friend to wallow on the beach.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Feral Sea Dragon";

to say FSDM_6: [Oral Giving Cock]
	say "     Given his [if scalevalue of Player < 4]sheer size and weight[else]substantial weight[end if], it takes a bit of work to coax the sea dragon into rolling onto his side[if boundmod is 1], though he seems compliant enough to help you with that endeavor[end if]. Softer underside exposed to your touch, the [if boundmod is 1]creature whimpers submissively[else]lowly growling creature shows little interest[end if] as you fondle around to find his bestial, male vent, [if boundmod is 1]driven by prior influence to oblige your touch, moaning as your digits penetrate his tight hole, easily coaxing[else]though he's too exhausted to contend you as your digits penetrates his tight hole, succumbing to his tainted need as your fingering around is enough to coax[end if] his impressive dick from its housing.";
	say "     Gripping around and casually pumping along its growing length, the monster [if boundmod is 1]can't help but revel in being so shamefully exposed, throbbing organ quickly hard and dribbling pre, staining[else]is clearly torn between discontent with being so shamefully exposed and his rising lust, throbbing organ soon oozing to stain[end if] his torso. Positioning yourself on top of him proper, you have the opportunity to lavish your tongue's affection on him. Shall you? Otherwise, you'll keep your distance.";
	if Player consents:
		say "     Lowering yourself to the sea dragon's throbbing tool, your scent is flooded with a cocktail of saltwater and his masculine odor, inviting your tongue to caress along its length. Impressive organ [if scalevalue of Player < 2]seemingly larger than you are[else if scalevalue of Player is 2]nearly as large as you are[else if scalevalue of Player is 3]seemingly much too large for you[else]nothing you can't handle[end if], its body is fairly streamlined, punctuated by a distinctly flared, spade-shaped head, its owner letting out an airy hiss of pleasure as your slick, writhing appendage works its way up to the oozing tip.";
		now tempnum is 1;
	else if anallevel > 1:
		say "     Very well. Shall you be a bit rougher on the beast and stimulate him anally? Otherwise, you'll keep things simple.";
		if Player consents:
			say "     Shifting a bit to allow a free hand access to the sea dragon's tailpipe, forcing a digit into its tight, supple depths. [if boundmod is not 1]Lowly growling[else]Weakly whimpering[end if] as you assault him so, you show little restraint in forcing another, and another, until you're properly fisting the beast. Writh[if boundmod is 1]ing lustfully[else]e though he may[end if] against your[if scalevalue of Player > 3] substantial[end if] intrusion, his [if scalevalue of Player < 4]very intimidatingly large[else]impressive[end if] cock sputters pre with each plunge, strained by your persisting abuse.";
			now tempnum is 2;
		else:
			now tempnum is 0;
	else:
		now tempnum is 0;
	say "     Your continued attention quickly picks up in pace, fueled by your own[if Player is neuter], insatiable[end if] lust";
	if boundmod is 1 and player is not neuter:
		say ". Driven by his newfound submissive instinct, the beast moves his head down to meet your crotch, intent on attending you in turn. Shall you oblige his offering?";
		if Player consents:
			say "     Eagerly, the sea dragon's thick tongue [if Cock Count of Player > 1]wraps around one of your dicks, throbbing[else if Cock Count of Player is 1]wraps around your dick, throbbing[else if Cunt Count of Player > 1]caresses one of your cunts, aching[else]caresses your cunt, aching[end if] needily against the slick, writhing organ's touch";
			now tempnum2 is 1;
		else:
			say "     Swatting the sea dragon away, he's left to be the only one on the receiving end of any affection, [if Cock Count of Player > 1]your own, unattended dicks throbbing against the open air[else if Player is male]your own, unattended dick throbbing against the open air[else if Cunt Count of Player > 1]your unattended cunts aching against the open air[else if Player is female]your unattended cunt aching against the open air[end if]";
			now tempnum2 is 0;
	else:
		say " [if Cock Count of Player > 1]as your own, unattended dicks throb against the open air[else if Player is male]as your own, unattended dick throbs against the open air[else if Cunt Count of Player > 1]as your unattended cunts ache against the open air[else if Player is female]as your unattended cunt aches against the open air[end if]";
		now tempnum2 is 0;
	say ". The dragon's breath becomes increasingly shallow, [if tempnum2 is 1]crotch awash in his hot breath[else]body trembling[end if] with each powerful exhale, [if tempnum is 1]tool now slick with a mix of saliva and sex[else if tempnum is 2]his stuffed hole aching against you[else]his tool's sputtering becoming more substantial with each passing second[end if], indicating his imminent bliss";
	if tempnum is 1:
		say ". Shall you engulf the head within your mouth at the last second?";
		if Player consents:
			now boundsegment is 1;
			say "     [if scalevalue of Player > 3]Easily submerging[else]Submerging[end if] the monster's drooling cockhead between your lips[if scalevalue of Player < 4], no doubt strained to contain such an impressive tool[end if], it's more than enough";
		else:
			say "     Alright, shall you aim his release with the specific intent of shaming him?";
			if Player consents:
				now boundsegment is 2;
			else:
				now boundsegment is 0;
	else:
		say ". Shall you aim his release with the specific intent of shaming him?";
		if Player consents:
			now boundsegment is 2;
	say "[if boundsegment is not 1]     Continuing to work on him, you eventually manage[end if] to set the beast off, air filled with the sound of his weakened roar[if tempnum is 2] as his anal ring tightens around your intrusion[end if]";
	if boundmod is 1:
		if boundsegment is 1:
			say ". [if scalevalue of Player < 4][one of]At first, you assume he might overtake you again, but instead his submissive influence seems to diminish and elongate his release, slowing the pace enough for you to keep up[or]Submissive influence diminishing and elongating his release, you're allowed to feast on every last drop of his heady seed[stopping][else]Not that someone of your size needs it, but his submissive influence has diminished and elongated his release, prolonging your persistent milking of his heady seed[end if]";
		else:
			say ". [if boundsegment is 2]Aiming the monster's impressive tool towards his face, he's hailed by a flood of his heady seed, reveling in being made an embarrassing mess of himself[else]Monster's impressive tool throbbing with each gout of heady seed, it quickly makes a bit of a mess, wasted as it's spent across the sand[end if]";
		if tempnum2 is 1:
			say ". The whole [if boundsegment is 1]ordeal[else]sight[end if], combined with the sea dragon's own attendance, is more that enough to set you off, your [if Player is male]own, [Cum Load Size of Player] load flooding his maw as it encircles your tool[else] cunt aching against his tongue's slathering affection[end if].";
		else:
			say ".";
		say "     Once everything dies down, you pull yourself free of the monster, a spent and [if boundsegment is 2]shameful[else]exhausted[end if] mess, too weakened and lost in a haze of lingering need to really do anything but lay there now. Satisfied with your work, you choose to leave here[if tempnum2 is 0], a fair bit lust-addled though you may be[end if].";
	else:
		if boundsegment is 1:
			say ". [if scalevalue of Player < 4]It's extremely difficult for you to keep up with the ensuing flood of heady seed, quickly sputtering from your maw[else]You're briefly taken aback by the ensuing flood of heady seed, but it's nothing someone of your size can't handle[end if]";
		else:
			say ". [if boundsegment is 2]Aiming the monster's impressive tool towards his face, he's hailed by a flood of his heady seed, quickly making an embarrassing mess of himself[else]Monster's impressive tool throbbing with each gout of heady seed, it quickly makes a bit of a mess, wasted as it's spent across the sand[end if]";
		say ". Once his flow dies down, you pull away from the sea dragon, a spent and [if boundsegment is 2]shameful[else]exhausted[end if] mess, too weakened to really do anything but lay there now. Satisfied with your work, you choose to leave here, a fair bit lust-addled though you may be.";
	CreatureSexAftermath "Player" receives "OralCock" from "Feral Sea Dragon";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Feral Sea Dragon"; [name of the overall species of the infection, used for children, ...]
	add "Feral Sea Dragon" to infections of ReptileList;
	add "Feral Sea Dragon" to infections of FeralList;
	add "Feral Sea Dragon" to infections of MythologicalList;
	add "Feral Sea Dragon" to infections of FemaleList;
	add "Feral Sea Dragon" to infections of MaleList;
	add "Feral Sea Dragon" to infections of BarbedCockList;
	add "Feral Sea Dragon" to infections of InternalCockList;
	add "Feral Sea Dragon" to infections of QuadrupedalList;
	add "Feral Sea Dragon" to infections of SwimList;
	add "Feral Sea Dragon" to infections of TailList;
	add "Feral Sea Dragon" to infections of OviImpregnatorList;
	add "Feral Sea Dragon" to infections of FirebreathList;
	add "Feral Sea Dragon" to infections of TailweaponList;
	now Name entry is "Feral Sea Dragon";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The dragons massive head slams against you.[or]The dragon slaps you against a cluster of rocks with its rudder like tail.[or]It slams you into the soft sand by hammering you with its narrow tail.[or]He stomps you into the soft sand with its webbed hand like paw.[at random]";
	now defeated entry is "[fsdm loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[fsdm attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[fsdm desc]"; [ Description of the creature when you encounter it.]
	now face entry is "very much draconic in shape, adorned with a set of barbed and savage teeth. Clearly aquatic in design, ridges and fins adorn the sides of your head, and you find it a challenge to maneuver any building with such an elongated neck"; [ Reference "You have a (your text) face."]
	now body entry is "distinctly bloated and bulky fare, though somewhat streamlined in presentation, inferring that you'd be better suited for hauling it underwater, if your webbed and finned limbs were any indication"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]light blue, smooth[or]light blue[or]light blue, delicate[at random]"; [Reference "Your body is covered in (your text) skin"]
	now tail entry is "You have a long, somewhat bulky tail, top adorned with a sail-like fin.";
	now cock entry is "[one of]spade-tipped and tapered[or]black[at random]";
	now face change entry is "you undergo the effects of this infectious strain. Your face draws forward, narrowing into a distinctly draconic muzzle, the features of which are subtly masculine and finned for aquatic travel, and you nearly fall over as you find your neck suddenly elongated"; [Reference "Your face feels funny as (your text)." ]
	now body change entry is "you undergo the effects of this infectious strain. Your features become increasingly rounded to appeal to a more aquatic environment, though thankfully your limbs retain their articulation and mobility so that you move around on land without too much difficulty"; [ Reference "Your body feels funny as (your text)." ]
	now skin change entry is "it toughens, thick but supple hide sprouting from your flesh to cover the whole of your body. Curiously, it feels better suited for aquatic life than one on land"; [ Reference "Your skin feels funny as (your text)." ]
	now ass change entry is "you undergo the effects of this infectious strain. You nearly lose balance as a long, large - though relatively lightweight - tail explodes from your behind. It's distinguished with a fin across its top, inferring its more aquatic application"; [ Reference "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock turns black. It gradually tapers towards the tip, the flair spreading to give it a distinctly spade shape";
	now str entry is 30;
	now dex entry is 14;
	now sta entry is 28;
	now per entry is 12;
	now int entry is 6;
	now cha entry is 3;
	now sex entry is "Male";
	now HP entry is 100;
	now lev entry is 10;
	now wdam entry is 25;
	now area entry is "Beach";
	now Cock Count entry is 1;
	now Cock Length entry is 21;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 21;
	now Cunt Tightness entry is 15;
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 0;
	now MilkItem entry is "";
	now CumItem entry is "sea dragon cum";
	now TrophyFunction entry is "-";
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]large[or]bulky[or]aquatic[or]muscled[at random]";
	now type entry is "[one of]draconic[or]reptilian[purely at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "firebreath"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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


boundmod2 is a number that varies.

Section 3 - Vore Bound State

to fsdmvore:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if Player is male]jerk yourself off[else]fondle yourself[end if], writhing and twisting in these dark, damp confines until you finally find reprieve, [if Player is male]unloading your [Cum Load Size of Player] load against the supple flesh[else if Player is female]cunt throbbing firmly against the supple flesh[else]a particularly trying task given your lack of outlet[end if][if Player is male and Ball Size of Player > 5]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if struggleatt > 0, decrease struggleatt by 1;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
		if boundsegment is not 2, increase boundcounter by 1;
		if boundcounter is 5:
			say "     The sea dragon's body churns and he seems to have reached a point where he can keep you down. It seems your prolongued presence here has given you no other choice but to leave the beast through the other way out.";
			now boundmod2 is 1;
			increase boundcounter by 1;
		if boundsegment is 1:
			say "     Lost in utter blackness of the sea dragon's gullet, you feel yourself constantly being pushed downward to your inevitable destination, slick tunnel tightly wrapped around you. Your captor [one of]rumbles lowly, causing your prison to tremble as he mocks you[or]seems to be trying to physically force you the rest of the way down with one of his fins[or]audibly endeavors to swallow you down, each attempt constricting you more firmly[purely at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		else if boundsegment is 2:
			say "     Swimming in the ocean, you're briefly free of the sea dragon's hold. It doesn't appear you'll be free for long, though, as he's making his way to you right now. You imagine your only active option is to [bold type]S[roman type]truggle your way to the beach, else you can succumb [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] he beast's intent on having you once more. You probably figure this isn't the best time to try and [if boundrecover is true][bold type]R[roman type]ecover[else][bold type]E[roman type]ndure[end if], as it'll have the same effect of getting you caught again.[line break]";
		else:
			if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
				increase hunger of Player by 1;
				increase thirst of Player by 2;
			else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
				increase thirst of Player by 1;
			say "     Submerged in a churning mass of flesh, you're utterly lost in the sea dragon's stomach, the whole affair a disorienting mess as you feel yourself getting slowly drained. [one of]The prison smells of fish and seawater, making it hard to focus[or]The beast rumbles lowly, clearly enjoying how his meal writhes around[or]Your captor happily swims about, deliberately exacerbating your situation[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [fsdstrugglebar][line break][run paragraph on]";
		if humanity of Player < 1:
			now Trixieexit is 1;
			trigger ending "Feral Sea Dragon Vore";
			the Player was ended by "Vore by Feral Sea Dragon";
			end the story saying "You became a Feral Sea Dragon's meal!";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if 1 is 1:
					say ""; [There's an error with the new inform, this is to "Fix" it...]
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				if boundsegment is 1, increase boundmod by 1;
				if boundmod > 2 and boundsegment is 1:
					say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through his tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here...";
					if tempnum2 is not 4:
						now tempnum2 is 4;
						say "     Roaring out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragon moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
					now boundmod is 0;
					now boundsegment is 0;
					now struggleatt is -1;
					wait for any key;
				increase struggleatt by 1;
				if boundcounter > 0, decrease boundcounter by 1;
				if boundsegment is 2:
					if struggleatt < 2:
						say "     You desperately swim back to the beach, the beast in hot pursuit. Just a little further...";
						wait for any key;
					else:
						say "     You barely manage to get to the beach before sprinting inland, out of the sea dragon's reach. Exhausted and panting as the monster finally gives up and returns back to the ocean, it takes a while for you to clean yourself off and recover from the whole ordeal. Eventually, once you're ready, you go about your business once more.";
						cleanboundmemory;
						now Trixieexit is 1;
						follow the turnpass rule;
				else if boundsegment is 1:
					if struggleatt < 3:
						say "     [if tempnum2 is 2]Properly righting your orientation, you[else]You[end if] writhe and shimmy your way up the beast's gullet, against his muscle's endeavor. You [if struggleatt is 1]don't seem to be getting anywhere[else]think you might be seeing light[end if]...";
						increase lustatt by 7 + (lustadjust * 2);
						if tempnum2 is 2, now tempnum2 is 0;
						wyvhumanityroll;
						wait for any key;
					else:
						say "     Unable to keep you down any longer, the sea dragon groans and spits you out ";
						if tempnum2 is 4:
							say "into the waters with an audible splash. The sudden shock of light and cool waters stuns you for a moment, but eventually you swim back up to the surface. Roaring angrily at you, your captor isn't about to let its once-meal off so easily. You'll have to swim back to the beach before he can catch up with you!";
							now boundcounter is 0;
							now boundsegment is 2;
							now struggleatt is 0;
						else:
							say "onto the sandy beach, your impact punctuated with a puff of sand. The sudden shock of light and firm earth briefly stuns you, but you eventually stumble to your feet and get a sense of what's going on. Roaring angrily at you, your captor isn't about to let its once-meal off so easy, and you're forced to retreat further inland, where he can't reach you.";
							say "     Exhausted and panting as the monster finally gives up and returns back to the ocean, it takes a while for you to clean yourself off and recover from the whole ordeal. Eventually, once you're ready, you go about your business once more.";
							cleanboundmemory;
							now tempnum2 is 0;
							now Trixieexit is 1;
							follow the turnpass rule;
				else:
					if struggleatt < 3 and struggleatt is not 0:
						say "     You continue to struggle and protest against these twisted confines, trying to upset the beast's stomach enough to free you. [if struggleatt is 1]You don't seem to make any headway[else]He begins to groan as your prison rumbles[end if]...";
						increase lustatt by 7 + (lustadjust * 2);
						wyvhumanityroll;
						wait for any key;
					else if struggleatt is not 0:
						if boundmod2 is not 1:
							say "     Body finally churning, it can no longer take your protests, constricting around you as it squeezes you back up the sea dragon's gullet. Groaning lowly in discontent, the beast has little interest in letting you go so easy, even if it's a struggle for him to keep you down. You still have a ways to go!";
							wait for any key;
							now boundsegment is 1;
							now struggleatt is 1;
						else:
							say "     Body loudly groaning, you feel it constrict around you as you're forced down past a tight ring, descending into the sea dragon's bowels. Twisted and pushed around the monster's labyrinth of flesh, your trip meets its inevitable destination as you're forced past that final ring and hit with a wall of cool seawater. Desperately climbing to the surface, you're exposed to the elements of the outside once more.";
							if a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds):
								say "     Roaring angrily at you as he wheels around, your captor isn't about to let his meal escape, even after being ejected so embarrassingly. You'll have to swim back before he catches up with you!";
								now boundsegment is 2;
								now boundcounter is 0;
								now struggleatt is 0;
							else:
								say "     Grumbling lowly at you, your captor isn't exactly eager to eat you again after being ejected so embarrassingly, and instead decides to swim off into the distance. Free to swim back to the beach, you sit there for a bit to recover and dry yourself off, an exhausted mess. Eventually, once you're ready, you go about your business once more.";
								cleanboundmemory;
								now tempnum2 is 0;
								now Trixieexit is 1;
								follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					if boundsegment is 1, increase boundmod by 4;
					if boundsegment is 2:
						say "     Overtaken by desire to return, you submit to your fate, the sea dragon immediately catching up on you. Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragon's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, he pulls you into the air with his maw. Allowing gravity to aid him as he audibly gulps you down, powerful muscles plunging you down his slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragon's warm, inviting gullet. Just as you wanted!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through his tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
						increase lustatt by 14 + (lustadjust * 2);
						if tempnum2 is not 4:
							now tempnum2 is 4;
							say "     Roaring out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragon moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
						now boundmod is 0;
						now boundsegment is 0;
						now struggleatt is 0;
					else:
						say "     You actively submit to your current confines, [one of]the beast rumbling lowly in approval of your compliance[or]your captor contently swimming as he enjoys his meal[or]the beast offering an airy cackle towards your eagerness[at random].";
						increase lustatt by 14 + (lustadjust * 2);
						wyvhumanityroll;
				else:
					if boundsegment is 1, increase boundmod by 2;
					if boundsegment is 2:
						say "     Perhaps too exhausted to continue, you concede to your fate, the sea dragon immediately catching up on you. Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragon's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, he pulls you into the air with his maw. Allowing gravity to aid him as he audibly gulps you down, powerful muscles plunging you down his slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragon's gullet. You've started all the way back from the beginning!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						if boundmod > 2:
							say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through his tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
							increase lustatt by 7 + (lustadjust * 2);
							if tempnum2 is not 4:
								now tempnum2 is 4;
								say "     Roaring out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragon moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
							now boundmod is 0;
							now boundsegment is 0;
							now struggleatt is 0;
						else:
							say "     You choose to abide your fate. No doubt it won't take long before the beast has his way...";
							increase lustatt by 7 + (lustadjust * 2);
					else:
						say "     You abide your current confines, [one of]the beast rumbling lowly in approval of your compliance[or]your captor contently swimming as he enjoys his meal[or]the beast offering an airy cackle towards your submission[at random].";
						increase lustatt by 7 + (lustadjust * 2);
						wyvhumanityroll;
				LineBreak;
				wait for any key;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundsegment is 1 and a random chance of 2 in 3 succeeds, increase boundmod by 1;
				if boundrecover is true:
					SanBoost 3;
					if boundsegment is 2:
						say "     You choose this, of all times, to try and recover from your prior captivity, only for the sea dragon to catch up on you. Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragon's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, he pulls you into the air with his maw. Allowing gravity to aid him as he audibly gulps you down, powerful muscles plunging you down his slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragon's gullet. You've started all the way back from the beginning!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						if boundmod > 2:
							say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity... However, the beast doesn't spare you this moment to really appreciate it.";
							say "     [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through his tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
							increase lustatt by 4 + lustadjust;
							if tempnum2 is not 4:
								now tempnum2 is 4;
								say "     Roaring out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragon moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
							now boundmod is 0;
							now boundsegment is 0;
							now struggleatt is 0;
						else:
							say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity... But you don't have much time in here.";
							increase lustatt by 4 + lustadjust;
					else:
						say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
						increase lustatt by 4 + lustadjust;
						wyvhumanityroll;
					now boundrecover is false;
				else:
					if boundsegment is 2:
						say "     By some curious whim, you consider enduring right now, but it's utterly useless to you at this moment, and the sea dragon ends up catching up to you! Maw agape to scoop you up from the water, you're engulfed darkness, the sea dragon's slick, supple flesh enveloping you once more. Awash in the beast's now-familiar, acrid breath, he pulls you into the air with his maw. Allowing gravity to aid him as he audibly gulps you down, powerful muscles plunging you down his slick depths. Hot tube constricting against you tightly, the monster's elongated gullet bulges visibly with your occupancy.";
						say "     Once again in the sea dragon's gullet. You've started all the way back from the beginning!";
						now boundsegment is 1;
						now boundcounter is 0;
						now boundmod is 0;
					else if boundsegment is 1:
						if boundmod > 2:
							say "     Resist though you may, you can't hold your position forever. [if struggleatt > 1]Briefly given a glimpse of the outside world, you're suddenly plunged back into the black depths of the monster's throat, punctuating your failed escape[else]Your descent inevitable, the monster punctuates your ultimate fate[end if] with one final gulp. Squeezed[if tempnum2 is 4] back[end if] through his tight ring, you're confined to the slightly looser - albeit no less slick and dark - prison of the sea dragon's stomach. Your surroundings slowly draining you, you imagine you won't last long in here!";
							increase lustatt by 4 + (lustadjust * 2);
							if tempnum2 is not 4:
								now tempnum2 is 4;
								say "     Roaring out in satisfaction over your [if HP of Player < 1]utter defeat[else]ultimate fate[end if], the sea dragon moves around to take to the ocean once more, tussling you about in the process. The motion doesn't get any less disorienting once he's swimming in the ocean, a dizzying sensation of your prison moving up and down with each wave. No doubt this will make the ordeal of escaping all the more of a challenge.";
							now boundmod is 0;
							now boundsegment is 0;
							now struggleatt is 0;
						else:
							say "     You choose this moment to endure. Even though you're stalling, there's no doubt that it won't take long before the beast has his way...";
							increase lustatt by 4 + lustadjust;
					else:
						say "     You endure your current confines, [one of]the beast rumbling lowly towards you[or]your captor contently swimming as he enjoys his meal[or]the beast offering an airy cackle towards his victim[at random].";
						increase lustatt by 4 + lustadjust;
						wyvhumanityroll;
				LineBreak;
				wait for any key;
				next;
			say "Invalid action.";

to say fsdstrugglebar:
	if boundsegment is 1:
		say "[if tempnum2 is 4][italic type]~--~ [roman type][end if]< [bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket] [if boundmod > 1]}} [else if boundmod > 0]} [end if][italic type][bracket]---[close bracket][roman type]";
	else if boundsegment is 2:
		say "~-[if struggleatt > 0][bold type]X[roman type][else]-[end if]~ [italic type][bracket]---[close bracket][roman type] [italic type][bracket]---[close bracket][roman type]";
	else:
		say "[if boundmod2 is 0][italic type]~--~[roman type] < [italic type][bracket]---[close bracket][roman type] [end if][bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket] [if boundmod2 is 1] > [italic type]~--~[roman type][end if]";

Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Feral Sea Dragon Vore"	"Voreloss"	""	Feral Sea Dragon Vore rule	10	false
"Feral Sea Dragon Infection"	"Infection"	""	Feral Sea Dragon Infection rule	1000	false

This is the Feral Sea Dragon Vore rule:
	if ending "Feral Sea Dragon Vore" is triggered:
		say "     Your strength completely sapped, you black out. The sea dragon's meager bulge receding as you're unmade, the beast roars out in utter satisfaction once he's finished, your ultimate fate to be nothing more than a meal for a monster. Sated for now, the creature would no doubt seek other victims to sate his substantial hunger...";
		the Player is vored;

This is the Feral Sea Dragon Infection rule:
	if Player has a body of "Feral Sea Dragon" or Player has a body of "Feral Sea Dragoness":
		trigger ending "Feral Sea Dragon Infection";
		if humanity of Player < 10:
			say "     Losing your mind to your feral compulsions your instincts draw you back to the beach - which is perhaps for the better as the infection reaches its natural conclusion and you lose almost all land-based articulation and mobility. You find yourself [if Player is female]singing[else if Player is male]roaring[else]crying[end if] out into the ocean, in search of a mate.";
			if fsdbias is 0:
				if Player is female and (Cock Count of Player is 0 or (player is male and a random chance of 1 in 2 succeeds)):
					if MaleList is banned or MaleList is warded:
						now fsdbias is 4;
					else:
						now fsdbias is 1;
				else:
					if FemaleList is banned or FemaleList is warded:
						now fsdbias is 1;
					else:
						now fsdbias is 4;
			if fsdbias is 4 or fsdbias is 3:
				say "     Your gesture is inevitably reciprocated with the song of an eager female";
				if fsddom > 5:
					say ", followed by another, and another... Before you even have a chance to offer yourself, you're beset by at least half a dozen dragonesses, nipping and teasing their new";
					if BodyName of Player is "Feral Sea Dragon" and player is male:
						say ", male-looking";
					say " toy. You're dragged off and forced to spend the rest of your years forced to remain within the confines of a cave, forced to attend your many mistress's every whim and desire.";
					if Player is male:
						say "     Your days and constantly filled with rough sex, passed around by each and every one, frequently exhausted by their insatiable need for offspring. The harem quickly swells in size, but your position at the bottom of the totem pole never changes[if MaleList is not banned and MaleList is not warded]. Even the males - which are generally not regarded highly - are allowed to constantly use you as their little cum dumpster[end if]...";
					else:
						say "     Your inability to offer them offspring proves particularly trying on you, as you're forced even harder to attend to their insatiable lust";
						if MaleList is not banned and MaleList is not warded:
							say ". They eventually manage to gather some males to feed their need for children, their persistent abuse leading them to take it out on you, your position at the bottom of the totem pole never changing even as the harem swells in size.";
						else if Player is female and ublevel is not 1:
							say ". However, a way is quickly learned to attend to their need for children, following when a trespasser was proving insufficient in satisfying one of the dragonesses by their assets alone. Frequently, you watch on as many a hapless victims are captured and turned, though even after they have changed, your position at the bottom of the totem pole doesn't shift, used by them as well...";
						else:
							say ". Even as the harem swells in size, you position at the bottom of the totem pole never changes, abused by even the lowliest of dragonesses...";
				else if fsddom > 0:
					say ". As she approaches, you shyly offer yourself, a gesture which the dragoness eagerly obliges, apparently having grown fond of such a submissive attitude";
					if BodyName of Player is "Feral Sea Dragon" and player is male:
						say ", especially when made by one who appears male";
					say ". You're relegated to remain within your mistress's cave, your future filled with eagerly servicing her every whim and desire.";
					if Player is male:
						say "     You're roughly forced to breed with her often, happily obliging her insatiable need for offspring. The dragoness eventually gathering up a harem, you're frequently used by the other females, who have also grown increasingly dominant.";
					else:
						say "     Your inability to breed with her proves somewhat inconvenient to her overwhelming need for offspring, but she has you attend to her insatiable lust regardless. In need of more, the dragoness eventually builds up a harem";
						if MaleList is not banned and MaleList is not warded:
							say ". She eventually manages to gather some males to feed her need for children, their persistent abuse leading them to take it out on you, though they can never satisfy you quite as well as she does...";
						else if ublevel is not 1:
							say " of similarly dominant females. However, in a bit of fun with one of your occasional trespassers going overboard, a way to attend her need for children is quickly found, and the lot of you soon find yourself seeking out new victims, filling your dragoness and her consort's wombs by forcing hapless strangers up her needy cunt...";
						else:
							say " of similarly dominant females. It's especially fun when unsuspecting trespassers stumble on the lot of you...";
				else if Player is submissive:
					say ". As she approaches, you shyly offer yourself, a gesture which seems to confuse the dragoness, clearly not used to such a submissive gesture";
					if BodyName of Player is "Feral Sea Dragon" and player is male:
						say ", especially by one who appears male";
					say ". Eventually, however, the beast grows comfortable in a position of being your mistress, your future filled with eagerly servicing her every whim and desire.";
					if Player is male:
						say "     You're made to breed with her often, happily obliging her need for offspring, [if MaleList is banned or MaleList is warded]and while often tempted to offer yourself to your female kin[else]and though your more dominant male kin often try to take your place,[end if] it's by the dragoness's insistence that you remain her only mate.";
					else:
						say "     Your inability to breed with her proves somewhat inconvenient to her overwhelming need for offspring, but she has you sate her lust regardless";
						if ublevel is not 1:
							say ". However, in a bit of fun with one of your occasion trespassers going overboard, the two of you quickly learn a way to fix that, and the two of you soon find yourself seeking out new victims, filling your dragoness's womb by forcing hapless strangers up her needy cunt...";
						else:
							say ". It's especially fun when unsuspecting trespassers stumble on the two of you...";
				else:
					if Player is male:
						say ". Compelled to swim into the water's depths you meet up with your new mate; though, as you approach, the sea dragoness would tease you by swimming off, eliciting your chase. It's made apparent of her intent when she leads you to a hidden cavern, offering herself before you as you approach. Such an offer the creature shows great pleasure in it's acceptance when you're compelled by your feral lust to mount her. Rutting her fast and hard, you claim her and this territory as your own.";
						say "     As she bears your offspring you gather other dragonesses in the area for your personal harem, and it's not long before you possess a great number of them[if MaleList is not banned and MaleList is not warded and player is female], occasionally subduing a male to use for yourself[end if]. As time would pass, your children would spread to the far corners of the world, until all who fare the sea do so with an ever-present fear of your kin.";
					else:
						say ". Compelled to swim into the water's depths you meet up with your new mate; though, as you approach, the sea dragoness would tease you by swimming off, eliciting your chase. It's made apparent of her intent when she leads you to a hidden cavern, offering herself before you as you approach. Such an offer the creature shows great pleasure in it's acceptance when you're compelled by your feral lust to attend her.";
						say "     Though neither of you can bear offspring for the other, ";
						if ublevel is not 1:
							say "the two of you soon learn a way around when a bout of fun with a trespasser leads to them getting stuffed up [if Player is not female]your mate's cunt[else]one of your cunts[end if], only to be born again as one of your kin. As time would pass, your children would spread to the far corners of the world, until all who fare the sea do so with an ever-present fear of your kin...";
						else:
							say "the two of you nonetheless remain fond of each other's company, and occasionally having fun with those who trespass on your land...";
			else:
				if fsdsub > 5:
					say "     Your call is met with a distant roar, followed by another, and another... Soon, the beach is flooded with sea dragons, twisted by your will into submission, all of them want nothing more than to be your consort.";
					if Player is male:
						say "     Happy to oblige their need, you immediately lunge towards one such offering, plunging your dick down his eager hole, the beast roaring out meekly as you fuck him right then and there";
					else:
						say "     Happy to oblige their need, you immediately lunge towards one such offering, climbing atop him and forcibly riding him then and there, beast rumbling lowly as he's revels in being nothing more than a toy for your pleasure";
					say ". The other closing in to attend you as you pleasure yourself, they all get their own turn in time...";
					say "     You eventually claim one of their homes as your own, no doubt the most impressive of which, since ambitions of its original owner having melted away to instead be replaced by his need for you. Your days are soon filled with the constant abuse of your new servants, all eagerly attending your every need and whim.";
					say "     As time passes, your harem grows even larger, ";
					if Player is male:
						say "[if FemaleList is not banned and FemaleList is not warded]bestial need requiring you to sate a desire for offspring by collecting some females just for you[else]offering you barely a moment of free time[end if]";
					else:
						say "offering you barely a moment of free time";
					say ". You quickly build a reputation and a legend surrounding your ferocity, though by this point you are so fat and attended to that they're clearly over-embellished, not that you seem to really care...";
				else if fsdsub > 0:
					say "     Your call is met with a distant roar, the male slowly rising from the water before bowing its head at you. No doubt this is one of the sea dragons you subdued, mind now twisted into submission, and your feral instincts show no restraint in claiming him as your consort.";
					if Player is male:
						say "     Forced onto his back, you immediately plunge your dick down his abused hole, the beast roaring out meekly as you fuck him right then and there";
					else:
						say "     Forced onto his back you climb atop him and forcibly ride him then and there, beast rumbling lowly as he's relegated to nothing more than a toy for your pleasure";
					say ". After you assert your dominance, you make him lead you to his cave and claim it as your own.";
					say "     Your days are filled with the constant abuse of your new servant, forcing him to attend to your every whim and desire. Over time ";
					if Player is male:
						say "[if FemaleList is not banned and FemaleList is not warded]your harem slowly grows in size, your overwhelming, bestial need requiring you to sate a desire for offspring by collecting some females just for you[else]you subjugate more of them under your will[end if], and though you have plenty a subjects to sate your lust";
					else:
						say "you subjugate more of them under your will, and though your bestial need[if Player is female] for offspring[end if] is plenty sated by your subjects";
					say " you remain particularly fond of abusing your first...";
				else if "Dominant" is listed in feats of Player:
					say "     Your call is met with a distant roar, the male quickly approaching and attempting to subdue you into becoming one of his consorts... However, empowered by your strain, you'll have none of this, and you turn the tables on the sea dragon, forcing him to become yours instead!";
					if Player is male:
						say "     Just as he rolls over in submission, you plunge your dick down his virgin hole, causing the beast to cry out as you fuck him right then and there";
					else:
						say "     Just as he rolls onto his back in submission, you climb atop him and forcibly ride him then and there, humiliating him as you relegate him to nothing more than a toy for your pleasure";
					say ". After you assert your dominance, you make him lead you to his cave and claim it as your own.";
					say "     Your days are filled with the constant abuse of your new toy, forcing him to attend to your every whim and desire. As time passes, the monster grows fond of sating your eternal, bestial need, eager to be used.";
				else if Player is male:
					say "     You're met with the distant roar of a male, and though you find yourself hesitating in regards to this turn of event your input on the matter becomes irrelevant when the dragon suddenly rises up from the waters to meet you. He sees your hesitation and responds immediately by forcing you onto your side, his already-emergent cock plunged firmly into your unsuspecting hole. You cry out, ";
					if BodyName of Player is "Feral Sea Dragoness":
						say "the monster frequently mocking your protests, often citing your dragoness appearance as reason for why you should enjoy being the property of such a fertile male until you concede and hide yourself under his dominant form, pumped full of his seed.";
					else:
						say "your protests only pleasuring the monster further as he ravages you, until you concede and hide yourself under his dominant form while he pumps you full of his seed.";
					say "     Eventually, you're pulled back into the depths with him. The craven beast keeps you in his home as his own personal fucktoy, [if FemaleList is banned or FemaleList is warded]ravaging you daily without relent until you look forward to his abuse, feeding you in half-eaten fish and his own, thick seed[else]and though he must gather females to satisfy his need for offspring, he's never one to neglect you of his harsh affections. He refuses to share any of said females with you; not that you mind, however, as by now you've grown to love his abuse[end if]";
					if Player is mpreg_ok:
						say ". You can imagine his surprise when he finds out that you're actually getting pregnant from being fucked silly by him. He, of course, attributes this to his exceptional virility, though he's now at least a bit more kind to you";
					say ".";
				else:
					say "     Your call is met with a distant roar, and you're soon drawn to meet each other within the water's depths. Offering yourself to him, he regards you with a rumble of immediate approval, an approval he is quick to illustrate when he promptly crawls over your form and drives his hardening cock into your needy cunt. He mates you with a clear and immediate fervor; the first of a great many times";
					if "Sterile" is listed in feats of Player:
						say ". Very much in spite your inability to bear children for him, he keeps you along for his own personal pleasure. Of course, this means he has to gather additional females to bear his offspring, and you find yourself taking great joy in helping to rear these children before they're sent out into the world.";
					else:
						say ". You constantly bear your mate's children for him, giving birth and attending to your offspring briefly before they are sent off to fend for themselves in the wild, only to be filled again with his seed. Soon your mate gathers more females for his harem, but as his first he regards you with the most reverence[if Player is male]. On occasion he even lets you mate with a number of his other consorts yourself, when he so allows it[end if].";
		else:
			say "     No doubt the soldiers are a bit reluctant to process you, given your sea dragon appearance, but once it's clear that you're posing no threat, you get through with little issue.";
			say "     The uninfected - as a whole - are a little ill-at-ease towards any infected, and you are no different, especially once the infection eventually advances to the point where your form becomes fully feral. You find yourself in need of aid for dealing with more articulated tasks as a result, but you grow to appreciate your form for its own sort of elegance.";
			say "     Eventually, you find that you manage to strike up a job lifeguard/mascot for a beach resort, which is especially helpful since you only really ever find yourself comfortable at sea. Moreover, the beachgoers find themselves increasingly fond of your presence, giving you quite a reputation.";
			if "Horny bastard" is listed in feats of Player:
				say "     That reputation soon turns sour, however, as your rampant libido, combined with your feral strain, drives you into nearly raping one of the swimmers. Out of a job and from public view, you're eventually forced to work in the sex trade, like so many infected. On the bright side, you no longer find yourself at odds with your need for sex...";
			else:
				say "     You frequently find yourself a bit at odds with your libido, combined with your feral strain, but you cleverly find a way to deal with that problem by offering a 'late night swimming' service, under the table. You find yourself with plenty a wild nights, a bit of extra cash, and your employers are none the wiser...";

Feral Sea Dragon ends here.
