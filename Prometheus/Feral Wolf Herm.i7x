Feral Wolf Herm by Prometheus begins here.

"Adds a Feral Wolf Herm to Flexible Survival's Wandering Monsters table, with impreg chance"

to say GenerateTrophyList_Feral_Wolf_Herm:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "herm wolf fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "tennis ball" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Feral Wolf Herm attack:
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		if a random chance of 1 in 2 succeeds:
			if a random chance of 1 in 2 succeeds:
				say "     The Feral Wolf roars as they slam you down onto your back. They then sit back and let out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over their victory[else]standing above you[end if]. Your position forces you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see their thick canine shaft quickly swelling up, getting rather hard, and their engorged lupine cunt. A few drops of musky pre drips from their shaft, landing in your mouth and on your face. The strong smell of their musk makes you shiver and groan slightly as they continue to slowly paint your face with their pre, as well as the excitement from their pussy, drop by drop.";
				say "     After a few minutes of this treatment, the wolf shifts their stance, lying down on your [bodydesc of Player] chest, their cock resting on your face. Once they are properly situated on top of you, they pulls their hips back, lifting their shaft off you. The tip of their length slides up your face until it reaches your lips, where it slips between them as it spurts a few good pumps of pre before the wolf slams their shaft down into your mouth, snarling and growling in dominance.";
				WaitLineBreak;
				say "     The wolf's claws dig into your chest as they rams their shaft down your throat, [if scalevalue of Player > 3]forcing you to oblige their tainted organ. Their twisted pre-cum compels your compliance further upon this imposed task[else]stretching your jaw out uncomfortably. The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum they is pumping into you, making it easier to take their length[end if]. You shiver and moan beneath the wolf as they orally rape you, their big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as theirs.";
				say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is their knot, and that they intend to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest they harm you further, engulfing the knot in its entirety with little difficulty, much to their growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against their knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained their balls into you[end if].";
				WaitLineBreak;
				say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, their length deep in your gullet and making it hard for you to breath. Their thrusts soon becoming erratic, their breathing and snarling turning into hard panting and soft whining, and their shaft swelling up as the wolf seems to be trying to hold themself back from orgasm. The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, their heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum. The wolf collapses on top of you, panting hard and wagging their tail happily, the last bit of their seed spurting out of their shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips.";
				if wslevel is not 1:
					say "     The rest of the length doesn't follow suit though.";
					say "     The wolf stands up and slides most of their length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as they shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of their shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink is their urine. The wolf begins to move down over your body, still spraying the yellow fluid all over you until you are drenched in it. Their strong, musky scent is now permanently soaked into your skin, forever identifying you as their property.";
				say "     Satisfied, they pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
				CreatureSexAftermath "Feral Wolf Herm" receives "OralCock" from "Player";
			else:
				say "     The feral wolf roars as they slam you down onto your back. They then sit back and let out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over their victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see their feminine sex quickly begin to line with dew, getting rather slick, as well as their thick canine shaft quickly swelling up. A few drops of musky pre begin dripping off their cock, landing in your mouth and on your face. The strong smell of their musk makes you shiver and groan slightly as they continue to slowly paint your face with their pre, as well as the excitement from their pussy, drop by drop.";
				say "     After a few minutes of this treatment, the wolf shifts their stance, lying down on your [bodydesc of Player] chest, their pussy resting on your face. Once they are properly situated on top of you, they pull their hips back, lifting their pussy off of you. The outer lips of their cunt slides up your face until it reaches your lips, where it slips slightly between them as a few good squirts of pre enter as the wolf grinds their cunt down onto your mouth, snarling and growling in dominance.";
				say "     The wolf's claws dig into your chest as they continue to smash their pussy down onto your mouth, [if scalevalue of Player > 3]forcing you to oblige, your head getting shoved into their tainted organ. Their twisted pre-cum covers you as it compels your compliance further into this imposed task[else]stretching out slightly out uncomfortably as you are forced bodily into the depths of their cunt. The only relief you get comes in the form of how slick your body is from all the pre-cum they are pumping onto you, making it easier to take their punishment[end if]. You shiver and moan beneath the wolf as they orally rape you, the edge of their cunt smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as theirs.";
				say "     Your mind begins to wander slightly, dreaming of feral studs in rut, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, urgency of the wolf's pussy that is trying to force more of its pre-cum into your mouth. It's not hard to figure out that these tremors are signs of their approaching climax, and that they intend to get off using your mouth no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest they harm you further, licking their pussy in its entirety with little difficulty, much to their growling approval[else]help the wolf get off, so that your less likely to be injured, and force your body open as wide as you can, pressing against the walls of their pussy as it clamps down onto your body painfully in return until they finally pops, their juices welling up more and swirling around you making it impossible to breath until the wolf has well and truly finished their climax onto you[end if].";
				say "     The wolf snarls and growls more, now bucking onto your maw with short, hard strokes, their cunt covering your mouth and making it hard for you to breathe. Their thrusts soon becoming erratic, their breathing and snarling turning into hard panting and soft whining, and their cunt clamps up as the wolf seems to be trying to hold themself back from orgasm.";
				say "     The wolf shoves down in one hard thrust and howls out in climax, claws digging deep into your skin, their body shuddering as their fem-cum comes flooding out, being pumped into your throat and down your stomach, your belly soon swelling slightly with thick wolf fem-cum.";
				say "     The wolf collapses on top of you, panting hard and wagging their tail happily, the last bit of their fem-cum spurting out of their and down onto your face. You lay there for a good number of minutes as the wolf recovers enough to roll off from your face.";
				if wslevel is not 1:
					say "     The wolf stands up and squats down onto your face, leaving just enough of it pressed against your mouth. You wonder what the wolf is up to as they shiver all over and suddenly there's a bitter tasting liquid being sprayed into your mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls their pussy off and it becomes quickly apparent that the bitter liquid you were forced to drink is her urine. The wolf begins to awkwardly move down over your body, still spraying the yellow fluid all over you until you are drenched in it. Their strong, musky scent is now permanently soaked into your skin, forever identifying you as their property.";
				say "     Satisfied, they pad back over to your face and give you a playful lick before bounding off into the streets of the infected city.";
		else:
			if Player is female:
				if anallevel is 1: [Anal excluded]
					if a random chance of 1 in 2 succeeds: [Vaginal]
						if Cunt Depth of Player < 15 or Cunt Tightness of Player < 10:
							say "     They push you over onto your stomach and climb up on top of you, grinding their quickly hardening shaft against your rump. You whimper as they digs their claws into your hips and presses the tip of their shaft against [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if]. Wasting no time, they slams it into you, making you gasp out in both pain and pleasure, their grip on you making it easy for them to pound their shaft you. They growl and bite down on your neck, pulling back slightly in a canine mating bite and you quickly submit to them both in body and mind.";
							say "     Within minutes, you are yipping and barking like a good little breeding bitch, howling out your submission for all to hear. You shiver and moan out, panting harder, as you feel the wolf's thick knot ramming against your cunt's moist lips, begging them to tie you and pump you full of fertile seed. They roar out their dominance and spread your pussy open with their knot, your back arching in pleasure as you are bred. Their knot's soon swollen to three times the size and has locked you to them, their thrusting and quickly speeding up.";
							say "     The wolf arches their back and howls out, their climax hitting hard and driving you over the edge and into orgasm, their thick feral seed being planted deep into your womb and making your belly distend from all the cum they're pumping into you. The wolf pulls their shaft free of you, ";
						else:
							say "     They snarl and quickly mount you, barely giving you a moment before they're ramming their thick canine shaft into you. They bites down on your neck in a mating grip and proceeds to pound your cunt hard and fast, your body quickly submitting to the strong male and rocking back against them. You moan and pant beneath the wolf, your mind slipping into a completely submissive state, leaving you acting like a slutty breeding bitch. The wolf growls more as their knot starts to bump up against your pussy, giving you a few goop hard thrusts before they rams it in.";
							say "     Your eyes go wide and you scream out in pleasure, shivering all over and orgasming hard and clamping down on the wolf's length. The treatment their shaft is receiving is too much for them and they climax hard, howling out into the empty street. Their cum floods into your womb and begins to overflow around their cock. Once you both come down from orgasm, you wait for the wolf's knot to deflate. The wolf gets up and yanks their shaft out of you, ";
						if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
							say "soon turning to position themself over you. Lifting their leg they starts to empty their bladder all over your torso and face, marking you as their before ";
						say "leaving you collapsed on the ground, leaking the wolf's fertile seed as they walks off to find another bitch to fuck.";
						CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf Herm";
					else: [Oral]
						say "     The Feral Wolf roars as they slams you down onto your back. They then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over their victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see their thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off their shaft, landing in your mouth and on your face. The strong smell of their musk makes you shiver and groan slightly as they continues to slowly paint your face with their pre, drop by drop.";
						say "     After a few minutes of this treatment, the wolf shifts their stance, lying down on your [bodydesc of Player] chest, their cock resting on your face. Once they is properly situated on top of you, they pulls their hips back, lifting their shaft off of you. The tip of their length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams their shaft down into your mouth, snarling and growling in dominance.";
						WaitLineBreak;
						say "     The wolf's claws dig into your chest as they rams their shaft down your throat, [if scalevalue of Player > 3]forcing you to oblige their tainted organ. Their twisted pre-cum compels your compliance further upon this imposed task[else]stretching your jaw out uncomfortably. The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum they is pumping into you, making it easier to take their length[end if]. You shiver and moan beneath the wolf as they orally rapes you, their big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
						say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is their knot, and that they intends to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest they harm you further, engulfing the knot in its entirety with little difficulty, much to their growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against their knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained their balls into you[end if].";
						WaitLineBreak;
						say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, their length deep in your gullet and making it hard for you to breath. Their thrusts soon becoming erratic, their breathing and snarling turning into hard panting and soft whining, and their shaft swelling up as the wolf seems to be trying to hold themself back from orgasm. The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, their heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum. The wolf collapses on top of you, panting hard and wagging their tail happily, the last bit of their seed spurting out of their shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips. ";
						if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
							say "     The rest of the length doesn't follow suit though.";
							say "     The wolf stands up and slides most of their length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as they shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of their shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink their urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in the stuff. Their strong, musky scent now soaked into your skin, identifying you as their property.";
						say "     Satisfied, they pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
						CreatureSexAftermath "Feral Wolf Herm" receives "OralCock" from "Player";
				else: [Anal allowed]
					let randomnumber be a random number from 1 to 3;
					if randomnumber is:
						-- 1: [Anal]
							say "     They circle around you a few times, examining your limp form before rolling you onto your stomach and climbing up onto your ass. You look back and whine fearfully as you see the wolf's shaft already rock hard and leaking pre. They leans forward over you and press the tip of their length against your asshole, giving you a threatening snarl before they thrust in. You gasp and scream out in pain as they force you wide open, their bucking fast and hard from the start and causing you to whimper in pain as this big wolf rapes your tight asshole.";
							say "     It's not long until you feel their thick knot being rammed against your tight ring. You start to struggle with all that's left in you, begging the wolf not to try and force it in. All you get for your actions is a mean swipe from their claws and an even more powerful thrust against your hole, making your mouth gape open, speechless and gasping for breath as the wolf uses all their strength to spread you wide open and pop their knot in. They leans forward as far as they can and starts to pound your ass with all their strength, your tight ring quickly bringing them to climax as they howl out, filling you up with their seed.";
							say "     They doesn't wait for their knot to deflate and just pulls it out, making you yelp in pain. You lie there on the ground, shivering from the hard fucking the wolf gave you. ";
							if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
								say "You look as you see them position themself above you. You begin to think that they must want your mouth next when they start to empty their bladder all over your torso and face. ";
							say "Offering you a dark growl as a parting remark, you tremble at what ill intent they might have in store for you should you meet them again.";
							CreatureSexAftermath "Player" receives "AssFuck" from "Feral Wolf Herm";
						-- 2: [Vaginal]
							if Cunt Depth of Player < 15 or Cunt Tightness of Player < 10:
								say "     They pushes you over onto your stomach and climbs up on top of you, grinding their quickly hardening shaft against your rump. You whimper as they dig their claws into your hips and press the tip of their shaft against [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if]. Wasting no time, they slam it into you, making you gasp out in both pain and pleasure, their grip on you making it easy for them to pound their shaft you. They growls and bites down on your neck, pulling back slightly in a canine mating bite and you quickly submit to them both in body and mind.";
								say "     Within minutes, you are yipping and barking like a good little breeding bitch, howling out your submission for all to hear. You shiver and moan out, panting harder, as you feel the wolf's thick knot ramming against your cunt's moist lips, begging them to tie you and pump you full of fertile seed. They roars out their dominance and spreads your pussy open with their knot, your back arching in pleasure as you are bred. Their knot's soon swollen to three times the size and has locked you to them, their thrusting and quickly speeding up.";
								say "     The wolf arches their back and howls out, their climax hitting hard and driving you over the edge and into orgasm, their thick feral seed being planted deep into your womb and making your belly distend from all the cum they're pumping into you. The wolf pulls their shaft free of you, ";
							else:
								say "     They snarls and quickly mounts you, barely giving you a moment before they're ramming their thick canine shaft into you. They bites down on your neck in a mating grip and proceeds to pound your cunt hard and fast, your body quickly submitting to the strong male and rocking back against them. You moan and pant beneath the wolf, your mind slipping into a completely submissive state, leaving you acting like a slutty breeding bitch. The wolf growls more as their knot starts to bump up against your pussy, giving you a few goop hard thrusts before they ram it in.";
								say "     Your eyes go wide and you scream out in pleasure, shivering all over and orgasming hard and clamping down on the wolf's length. The treatment their shaft is receiving is too much for them and they climax hard, howling out into the empty street. Their cum floods into your womb and begins to overflow around their cock. Once you both come down from orgasm, you wait for the wolf's knot to deflate. The wolf gets up and yanks their shaft out of you, ";
							if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
								say "soon turning to position themself over you. Lifting their leg, they start to empty their bladder all over your torso and face, marking you as their before ";
							say "leaving you collapsed on the ground, leaking the wolf's fertile seed as they walk off to find another bitch to fuck.";
							CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf Herm";
						-- 3: [Oral]
							say "     The Feral Wolf roars as they slam you down onto your back. They then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over their victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see their thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off their shaft, landing in your mouth and on your face. The strong smell of their musk makes you shiver and groan slightly as they continue to slowly paint your face with their pre, drop by drop.";
							say "     After a few minutes of this treatment, the wolf shifts their stance, lying down on your [bodydesc of Player] chest, their cock resting on your face. Once they are properly situated on top of you, they pull their hips back, lifting their shaft off of you. The tip of their length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams their shaft down into your mouth, snarling and growling in dominance.";
							WaitLineBreak;
							say "     The wolf's claws dig into your chest as they ram their shaft down your throat, [if scalevalue of Player > 3]forcing you to oblige their tainted organ. Their twisted pre-cum compels your compliance further upon this imposed task[else]stretching your jaw out uncomfortably. The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum they are pumping into you, making it easier to take their length[end if]. You shiver and moan beneath the wolf as they orally rape you, their big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
							say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is their knot, and that they intend to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest they harm you further, engulfing the knot in its entirety with little difficulty, much to their growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against their knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained their balls into you[end if].";
							WaitLineBreak;
							say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, their length deep in your gullet and making it hard for you to breath. Their thrusts soon becoming erratic, their breathing and snarling turning into hard panting and soft whining, and their shaft swelling up as the wolf seems to be trying to hold themself back from orgasm. The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, their heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum. The wolf collapses on top of you, panting hard and wagging their tail happily, the last bit of their seed spurting out of their shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips. ";
							if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
								say "     The rest of the length doesn't follow suit though.";
								say "     The wolf stands up and slides most of their length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as they shiver all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of their shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink their urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in the stuff. Their strong, musky scent now soaked into your skin, identifying you as their property.";
							say "     Satisfied, they pad back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
							CreatureSexAftermath "Feral Wolf Herm" receives "OralCock" from "Player";
			else:
				if a random chance of 1 in 2 succeeds: [Anal]
					say "     They circle around you a few times, examining your limp form before rolling you onto your stomach and climbing up onto your ass. You look back and whine fearfully as you see the wolf's shaft already rock hard and leaking pre. They leans forward over you and press the tip of their length against your asshole, giving you a threatening snarl before they thrust in. You gasp and scream out in pain as they force you wide open, their bucking fast and hard from the start and causing you to whimper in pain as this big wolf rapes your tight asshole.";
					say "     It's not long until you feel their thick knot being rammed against your tight ring. You start to struggle with all that's left in you, begging the wolf not to try and force it in. All you get for your actions is a mean swipe from their claws and an even more powerful thrust against your hole, making your mouth gape open, speechless and gasping for breath as the wolf uses all their strength to spread you wide open and pop their knot in. They leans forward as far as they can and starts to pound your ass with all their strength, your tight ring quickly bringing them to climax as they howl out, filling you up with their seed.";
					say "     They doesn't wait for their knot to deflate and just pulls it out, making you yelp in pain. You lie there on the ground, shivering from the hard fucking the wolf gave you. ";
					if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
						say "You look as you see them position themself above you. You begin to think that they must want your mouth next when they start to empty their bladder all over your torso and face. ";
					say "Offering you a dark growl as a parting remark, you tremble at what ill intent they might have in store for you should you meet them again.";
					CreatureSexAftermath "Player" receives "AssFuck" from "Feral Wolf Herm";
				else:
					say "     The Feral Wolf roars as they slam you down onto your back. They then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over their victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see their thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off their shaft, landing in your mouth and on your face. The strong smell of their musk makes you shiver and groan slightly as they continue to slowly paint your face with their pre, drop by drop.";
					say "     After a few minutes of this treatment, the wolf shifts their stance, lying down on your [bodydesc of Player] chest, their cock resting on your face. Once they are properly situated on top of you, they pull their hips back, lifting their shaft off of you. The tip of their length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams their shaft down into your mouth, snarling and growling in dominance.";
					WaitLineBreak;
					say "     The wolf's claws dig into your chest as they ram their shaft down your throat, [if scalevalue of Player > 3]forcing you to oblige their tainted organ. Their twisted pre-cum compels your compliance further upon this imposed task[else]stretching your jaw out uncomfortably. The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum they are pumping into you, making it easier to take their length[end if]. You shiver and moan beneath the wolf as they orally rape you, their big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
					say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is their knot, and that they intend to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest they harm you further, engulfing the knot in its entirety with little difficulty, much to their growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against their knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained their balls into you[end if].";
					WaitLineBreak;
					say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, their length deep in your gullet and making it hard for you to breath. Their thrusts soon becoming erratic, their breathing and snarling turning into hard panting and soft whining, and their shaft swelling up as the wolf seems to be trying to hold themself back from orgasm. The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, their heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum. The wolf collapses on top of you, panting hard and wagging their tail happily, the last bit of their seed spurting out of their shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips. ";
					if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
						say "     The rest of the length doesn't follow suit though.";
						say "     The wolf stands up and slides most of their length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as they shiver all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of their shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink their urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in the stuff. Their strong, musky scent now soaked into your skin, identifying you as their property.";
					say "     Satisfied, they pad back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
					CreatureSexAftermath "Feral Wolf Herm" receives "OralCock" from "Player";

to say BeatFeralWolfHerm:[victory]
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else:
		say "[FeralWolfHermVictorySex]";

to say FeralWolfHermVictorySex:
	if inasituation is true and FeralWolfSpecialFightNumber < 1: [dealt with in the event]
		say "";
		stop the action;
	if inasituation is false: [standard text]
		say "     You watch the feral wolf drop to the ground in defeat, slumped over on their side. You can see that they are still very hard, their cock dripping with pre, and their cunt dripping with arousal. You realize that this feral wolf is completely at your mercy.";
	say "     [bold type]You could easily have your way with them if you want.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		if Player is male:
			if Player is female:
				LineBreak;
				say "     Deciding to have some fun with this poor wolf, you stop and think about how exactly you want to use them. Being a herm, you could easily roll them over and ride their thick canine shaft, or you could mount that tight little ass of his. (Y=Ride, N=Fuck)";
				if Player consents:
					say "     You lick your lips and smile, striding over to the wolf, your cock[smn] getting nice and hard, your cunt[sfn] slick with fem juices. You push the wolf over onto their back and straddle them, grinding [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] up and down their thick length, making them squirm and moan.";
					say "     After a few minutes of teasing the poor wolf, you take hold of their throbbing cock and line it up with [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] before sliding down onto it. As you do so, you gasp and moan in pleasure, arching your back as it slides in, your hands gripping the wolf's chest fur, your own cock[smn] twitching and leaking pre onto the wolf's belly.";
					say "     You start to ride their canine cock, slowly at first but quickly picking up speed. By now the wolf has gained some of their strength back and is eagerly bucking up into your snatch, their cock throbbing and spurting pre into your depths. You shiver and groan, looking down at the wolf beneath you, seeing that they clearly isn't going to last much longer, and you don't think you will either.";
					WaitLineBreak;
					say "     You start panting hard and begin slamming down on their length. You feel their knot swelling, slipping in and out of your cunt, steadily gaining size. Soon it's too big to just slip in, so you pull yourself almost completely of their cock before slamming back down and forcing that knot inside you.";
					say "     This last act pushes the wolf over the edge and they erupts into an orgasm, their knot swelling up so much that it ties you together and makes a tight seal inside your cunt, making sure not a single drop of the wolf's cum slips out. Their orgasm, in turn, sets off your own, your cunt quivering around their shaft and milking it for all it's got, your cock[smn] spurting cum all over the wolf and yourself, and your belly slightly distending from all the cum that's being pumped inside you.";
					say "     You lie there for a while, waiting for their knot to deflate, your cunt nice and full of wolf cum. When their knot finally does deflate, you make sure to hold your cunt closed as best as you can when you slide of their length, managing to keep all that wonderful cum inside you. Before you leave, you glance back at the wolf and smile, part of you hoping you'll meet them again so they can fill you up again.";
					CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf Herm";
				else:
					say "     The feral creature sinks to the ground, then slumps over, panting and defeated. You look at them and smile, walking over to them to roll them over onto their chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. They closes their eyes and shiver before raising their rump up into the air, tail up high and showing off their ass. You laugh and climb on top of the wolf, pressing the tip of your shaft against their tight ring and teasing it lightly. The wolf below you groans and claws at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation and spread their tail hole wide open, gasping out and moaning at how tight the wolf is. You take hold of their hips and begin slamming your length into the big canine's ass, their back arching as they moans loudly, enjoying the good fucking you're giving them.";
					say "     Soon you are panting hard and climaxing hard, filling the formerly dominant wolf with your thick cum. Once you finish, you pull out of the wolf and walk around front to present your shaft to them for cleaning[if HP of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
					CreatureSexAftermath "Feral Wolf Herm" receives "AssFuck" from "Player";
			else:
				LineBreak;
				say "     The feral creature sinks to the ground, then slumps over, panting and defeated. You look at them and smile, walking over to them to roll them over onto their chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. They closes their eyes and shivers before raising their rump up into the air, tail up high and showing off their ass. You laugh and climb on top of the wolf, pressing the tip of your shaft against their tight ring and teasing it lightly. The wolf below you groans and claws at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation and spread their tail hole wide open, gasping out and moaning at how tight the wolf is. You take hold of their hips and begin slamming your length into the big canine's ass, their back arching as they moans loudly, enjoying the good fucking you're giving them.";
				say "     Soon you are panting hard and climaxing hard, filling the formerly dominant wolf with your thick cum. Once you finish, you pull out of the wolf and walk around front to present your shaft to them for cleaning[if HP of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
				CreatureSexAftermath "Feral Wolf Herm" receives "AssFuck" from "Player";
		else:
			if Player is female:
				LineBreak;
				say "     You lick your lips and smile, striding over to the wolf, your cunt[sfn] slick with fem juices. You push the wolf over onto their back and straddle them, grinding [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] up and down their thick length, making them squirm and moan.";
				say "     After a few minutes of teasing the poor wolf you take hold of their throbbing cock and line it up with [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] before sliding down onto it. As you do so, you gasp and moan in pleasure, arching your back as it slides in, your hands gripping the wolf's chest fur.";
				say "     You start to ride their canine cock, slowly at first but quickly picking up speed. By now the wolf has gained some of their strength back and is eagerly bucking up into your snatch, their cock throbbing and spurting pre into your depths. You shiver and groan, looking down at the wolf beneath you, seeing that they clearly isn't going to last much longer, and you don't think you will either.";
				WaitLineBreak;
				say "     You start panting hard and begin slamming down on their length. You feel their knot swelling, slipping in and out of your cunt, steadily gaining size. Soon it's too big to just slip in, so you pull yourself almost completely of their cock before slamming back down and forcing that knot inside you.";
				say "     This last act pushes the wolf over the edge and they erupts into an orgasm, their knot swelling up so much that it ties you together and makes a tight seal inside your cunt, making sure not a single drop of the wolf's cum slips out. Their orgasm, in turn, sets off your own, your cunt quivering around their shaft and milking it for all it's got, your belly slightly distending from all the cum that's being pumped inside you.";
				say "     You lie there for a while, waiting for their knot to deflate, your cunt nice and full of wolf cum. When their knot finally does deflate, you make sure to hold your cunt closed as best as you can when you slide of their length, managing to keep all that wonderful cum inside you. Before you leave, you glance back at the wolf and smile, part of you hoping you'll meet them again so they can fill you up again.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf Herm";
			else:
				LineBreak;
				say "     Before you can do anything though, you realize you lack any proper equipment to use on the wolf. You sigh and sadly walk away.";
	else:
		WaitLineBreak;
		say "     Deciding against it, you turn around and head off, leaving the wolf to the mercy of any other creature that might come across it.";

to say FeralWolfHermDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		say "     A feral-looking wolf on all fours, almost five foot tall at the shoulder, with great muscles under dense black fur. They have dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine teeth. Their legs are thick and powerful looking, their whole form obviously built for hunting fast prey. Their fur is matted with grime, muck, and some other substance, giving them a very rugged look. When they sees you, their lips peel in a snarl, exposing those deadly teeth. [one of]'Grrrrrrrr!' they growls[or]They barks aggressively[or]They howls[at random], charging at you with feral rage in their eyes.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Feral Wolf"; [name of the overall species of the infection, used for children, ...]
	add "Feral Wolf Herm" to infections of CanineList;
	add "Feral Wolf Herm" to infections of FeralList;
	add "Feral Wolf Herm" to infections of NatureList;
	add "Feral Wolf Herm" to infections of HermList;
	add "Feral Wolf Herm" to infections of TaperedCockList;
	add "Feral Wolf Herm" to infections of KnottedCockList;
	add "Feral Wolf Herm" to infections of SheathedCockList;
	add "Feral Wolf Herm" to infections of QuadrupedalList;
	add "Feral Wolf Herm" to infections of FeralmindList;
	add "Feral Wolf Herm" to infections of PackmindList;
	add "Feral Wolf Herm" to infections of TailList;
	now Name entry is "Feral Wolf Herm"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]They slam into you and bites down.[or]They roar and swipe at you with their claws.[or]They pounce you and pin you down, tearing into you with their claws.[at random]";
	now defeated entry is "[BeatFeralWolfHerm]";
	now victory entry is "[Feral Wolf Herm attack]";
	now desc entry is "[FeralWolfHermDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "feral wolf face, with a long canine snout filled with the sharp teeth of a predator"; [ Face description, format as "Your face is (your text)."]
	now body entry is "that of an average-sized and well-muscled wolf, with large canine features that give you a wild and deadly appearance"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]black furred[or]roughly furred[or]furry[at random]"; [ skin Description, format as "Your body is covered in (your text) skin"]
	now tail entry is "You have a long black tail that trails behind you, your lupine tail displaying your emotions quite clearly."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feral canine[or]wolf[or]pitch black[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face stretches and creaks as it warps into a long canine snout"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your bones creak and crack as they morph into a more suitable form for hunting, leaving you with the strong body of a feral wolf"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "rough black fur spreads rapidly over your form, leaving you more capable to endure the elements"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a long, bushy black tail emerges from above your ass, twitching about lightly"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your shaft swells with sudden arousal as the end tapers out to a point, a thick knot swelling up at the base, giving it a distinct canine shape, the entire length turning pitch black"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 15;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 17;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45;
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 8; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 2;
	now SeductionImmune entry is false;
	now libido entry is 40; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "herm wolf fur";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "wolf bitch milk";
	now CumItem entry is "wolf cum";
	now TrophyFunction entry is "[GenerateTrophyList_Feral_Wolf_Herm]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]powerful[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
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
	now Asshole Depth entry is 10; [inches deep for anal fucking]
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

Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"herm wolf fur"	"A tuft of black, gray, and brown fur that looks like it has been pulled out of the coat of a wolf. It's nicely soft."	0	herm wolf fur

herm wolf fur is a grab object.
It is temporary.
Usedesc of herm wolf fur is "[HermWolfFurUse]";

to say HermWolfFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Feral Wolf Herm";

instead of sniffing herm wolf fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";


Feral Wolf Herm ends here.
