Version 4 of Feral Wolf by Stripes begins here.
[ Version 4.5 - Relocated to Urban Forest area. ]
[- Originally Authored By: Shadowwolf94 -]

"Adds a Feral Wolf to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

fangcount is a number that varies.

FeralWolfdefeat is a number that varies.

to say Feral Wolf attack:
	now wolffight is 2; [lost]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		if FeralWolfdefeat is 0:
			say "     The Feral Wolf roars as he slams you down onto your back. He then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over his victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see his thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off his shaft, landing in your mouth and on your face. The strong smell of his musk makes you shiver and groan slightly as he continues to slowly paint your face with his pre, drop by drop.";
			say "     After a few minutes of this treatment, the wolf shifts his stance, lying down on your [bodydesc of Player] chest, his cock resting on your face. Once he is properly situated on top of you, he pulls his hips back, lifting his shaft off of you. The tip of his length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams his shaft down into your mouth, snarling and growling in dominance.";
			say "     The wolf's claws dig into your chest as he rams his shaft down your throat, [if scalevalue of Player > 3]forcing you to oblige his tainted organ. His twisted pre-cum compels your compliance further upon this imposed task[else]stretching your jaw out uncomfortably. The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum he is pumping into you, making it easier to take his length[end if]. You shiver and moan beneath the wolf as he orally rapes you, his big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
			say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is his knot, and that he intends to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest he harm you further, engulfing the knot in its entirety with little difficulty, much to his growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against his knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained his balls into you[end if].";
			say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, his length deep in your gullet and making it hard for you to breath. His thrusts soon becoming erratic, his breathing and snarling turning into hard panting and soft whining, and his shaft swelling up as the wolf seems to be trying to hold himself back from orgasm.";
			say "     The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, his heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum.";
			say "     The wolf collapses on top of you, panting hard and wagging his tail happily, the last bit of his seed spurting out of his shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips.";
			if wslevel is not 1:
				say "     The rest of the length doesn't follow suit though.";
				say "     The wolf stands up and slides most of his length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as he shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of his shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink is his urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in it. His strong, musky scent is now permanently soaked into your skin, forever identifying you as his property.";
			say "     Satisfied, he pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
			now FeralWolfdefeat is 1;
		else:
			if Player is female and ((anallevel is 3 and a random chance of 1 in 3 succeeds) or (anallevel < 3 and a random chance of 1 in 2 succeeds)):
				if Cunt Depth of Player < 15 or Cunt Tightness of Player < 10:
					say "     He pushes you over onto your stomach and climbs up on top of you, grinding his quickly hardening shaft against your rump. You whimper as he digs his claws into your hips and presses the tip of his shaft against [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if]. Wasting no time, he slams it into you, making you gasp out in both pain and pleasure, his grip on you making it easy for him to pound his shaft you. He growls and bites down on your neck, pulling back slightly in a canine mating bite and you quickly submit to him both in body and mind.";
					say "     Within minutes, you are yipping and barking like a good little breeding bitch, howling out your submission for all to hear. You shiver and moan out, panting harder, as you feel the wolf's thick knot ramming against your cunt's moist lips, begging him to tie you and pump you full of fertile seed. He roars out his dominance and spreads your pussy open with his knot, your back arching in pleasure as you are bred. His knot's soon swollen to 3 times the size and has locked you to him, his thrusting and quickly speeding up.";
					say "     The wolf arches his back and howls out, his climax hitting hard and driving you over the edge and into orgasm, his thick feral seed being planted deep into your womb and making your belly distend from all the cum he's pumping into you. The wolf pulls his shaft free of you, ";
				else:
					say "     He snarls and quickly mounts you, barely giving you a moment before he's ramming his thick canine shaft into you. He bites down on your neck in a mating grip and proceeds to pound your cunt hard and fast, your body quickly submitting to the strong male and rocking back against him. You moan and pant beneath the wolf, your mind slipping into a completely submissive state, leaving you acting like a slutty breeding bitch. The wolf growls more as his knot starts to bump up against your pussy, giving you a few goop hard thrusts before he rams it in.";
					say "     Your eyes go wide and you scream out in pleasure, shivering all over and orgasming hard and clamping down on the wolf's length. The treatment his shaft is receiving is too much for him and he climax hard, howling out into the empty street. His cum floods into your womb and begins to overflow around his cock. Once you both come down from orgasm, you wait for the wolf's knot to deflate. The wolf gets up and yanks his shaft out of you, ";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
					say "soon turning to position himself over you. Lifting his leg he starts to empty his bladder all over your torso and face, marking you as his before ";
				say "leaving you collapsed on the ground, leaking the wolf's fertile seed as he walks off to find another bitch to fuck.[impregchance]";
			else if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds) or (player is mpreg_ok and a random chance of 1 in 5 succeeds)):
				say "     He circles around you a few times, examining your limp form before rolling you onto your stomach and climbing up onto your ass. You look back and whine fearfully as you see the wolf's shaft already rock hard and leaking pre. He leans forward over you and presses the tip of his length against your asshole, giving you a threatening snarl before he thrust in. You gasp and scream out in pain as he forces you wide open, his bucking fast and hard from the start and causing you to whimper in pain as this big wolf rapes your tight asshole.";
				say "     It's not long until you feel his thick knot being rammed against your tight ring. You start to struggle with all that's left in you, begging the wolf not to try and force it in. All you get for your actions is a mean swipe from his claws and an even more powerful thrust against your hole, making your mouth gape open, speechless and gasping for breath as the wolf uses all his strength to spread you wide open and pop his knot in. He leans forward as far as he can and starts to pound your ass with all his strength, your tight ring quickly bringing him to climax as he howls out, filling you up with his seed.[mimpregchance]";
				say "     He doesn't wait for his knot to deflate and just pulls it out, making you yelp in pain. You lie there on the ground, shivering from the hard fucking the wolf gave you. ";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
					say "You look as you see him position himself above you. You begin to think that he must want your mouth next when he starts to empty his bladder all over your torso and face. ";
				say "Offering you a dark growl as a parting remark, you tremble at what ill intent he might have in store for you should you meet him again.";
			else:
				say "     The Feral Wolf roars as he slams you down onto your back. He then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over his victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see his thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off his shaft, landing in your mouth and on your face. The strong smell of his musk makes you shiver and groan slightly as he continues to slowly paint your face with his pre, drop by drop.";
				say "     After a few minutes of this treatment, the wolf shifts his stance, lying down on your [bodydesc of Player] chest, his cock resting on your face. Once he is properly situated on top of you, he pulls his hips back, lifting his shaft off of you. The tip of his length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams his shaft down into your mouth, snarling and growling in dominance.";
				say "     The wolf's claws dig into your chest as he rams his shaft down your throat, [if scalevalue of Player > 3]forcing you to oblige his tainted organ. His twisted pre-cum compels your compliance further upon this imposed task[else]stretching your jaw out uncomfortably. The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum he is pumping into you, making it easier to take his length[end if]. You shiver and moan beneath the wolf as he orally rapes you, his big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
				say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is his knot, and that he intends to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest he harm you further, engulfing the knot in its entirety with little difficulty, much to his growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against his knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained his balls into you[end if].";
				say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, his length deep in your gullet and making it hard for you to breath. His thrusts soon becoming erratic, his breathing and snarling turning into hard panting and soft whining, and his shaft swelling up as the wolf seems to be trying to hold himself back from orgasm.";
				say "     The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, his heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum.";
				say "     The wolf collapses on top of you, panting hard and wagging his tail happily, the last bit of his seed spurting out of his shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips. ";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
					say "     The rest of the length doesn't follow suit though.";
					say "     The wolf stands up and slides most of his length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as he shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of his shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink his urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in the stuff. His strong, musky scent now soaked into your skin, identifying you as his property.";
				say "     Satisfied, he pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";

to say beatferalwolf:
	now wolffight is 1; [victory]
	increase fangcount by 40;
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else if inasituation is false and wolffight is not 3 and HP of Fang is 0:		[Checking to add Fang before running the regular wolf scenes]
		if a random number between 1 and 100 < ( fangcount - 95 ) and (player is not neuter ):	[3rd to 5th wolf]
			project the Figure of Fang_face_icon;
			say "     You watch the feral wolf drop low to the ground as he whimpers and cowers before you. He even pisses a little to show his submission to you. From the scars on his muzzle and sides, you can see that he's been beaten roughly by several of the other wolves. This wolf, clearly a lowly member of his pack, might make an obedient, if still somewhat feral, pet. You could take him off with you, if you're willing to risk bringing such a beast back with you.";
			say "     [bold type]Shall you try to tame this beastly wolf creature?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				LineBreak;
				say "     Against your better judgment, you take pity on this battered wolf and decide to take him as your own. You decide it best to show this wolf creature who's in charge right away and grab his nape roughly, holding him down while ";
				if Player is herm:
					say "you decide what to do with him. You are getting quite excited by the idea of making this wild beast yours. But being both male and female, there are options open to you if you wish to sexually dominate him.";
					Linebreak;
					say "     [bold type]Would you prefer to fuck the wolf, ride his lupine cock, or tame him non-sexually?[roman type][line break]";
					say "     [link](1)[as]1[end link] - Fuck the wolf.";
					say "     [link](2)[as]2[end link] - Ride his cock.";
					say "     [link](3)[as]3[end link] - Tame him without sex.";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>[run paragraph on]";
						get a number;
						if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
							break;
						else:
							say "Invalid choice. Type [link]1[end link] to follow, [link]2[end link] to leave it or [link]3[end link] to avoid this area.";
					if calcnumber is 1:
						LineBreak;
						say "[feralwolfmalesex]";
					else if calcnumber is 2:
						LineBreak;
						say "[feralwolffemalesex]";
					else:
						LineBreak;
						say "[FeralWolfNonSexTame]";
				else if Player is male:
					say "you decide what to do with him. You are getting quite excited by the idea of making this wild beast yours. You could sexually dominate him or just make him yours without fucking him.";
					say "     [bold type]Would you prefer to fuck the wolf or tame him non-sexually?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck the wolf.";
					say "     ([link]N[as]n[end link]) - Tame him without sex.";
					if Player consents:
						say "[feralwolfmalesex]";
					else:
						say "[FeralWolfNonSexTame]";
				else:
					say "you decide what to do with him. You are getting quite excited by the idea of making this wild beast yours. You could sexually dominate him or just make him yours without fucking him.";
					say "     [bold type]Would you prefer to ride his lupine cock or tame him non-sexually?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Ride his cock.";
					say "     ([link]N[as]n[end link]) - Tame him without sex.";
					if Player consents:
						say "[feralwolffemalesex]";
					else:
						say "[FeralWolfNonSexTame]";
				now HP of Fang is 1;
				move Fang to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now lastfuck of Fang is turns;
			else:
				LineBreak;
				say "     Not wanting to risk bringing such a beast back to your safehouse, you strike the cowering cur again and continue on your way.";
				now HP of Fang is 100; [Fang refused]
		else:
			say "[FeralWolfVictorySex]";
	else:
		say "[FeralWolfVictorySex]";

to say feralwolfmalesex:
	say "     Still holding the wolf down, you move atop him, sliding your hard cock under his tail. He whimpers softly, but raises his tail submissively, accepting his fate readily enough. You scritch his ears and tell him what a good beta he is even as you mount him. This both elevates him above his previous station and helps cement his place beneath you as his alpha. You sink your shaft slowly into him, smiling as he starts pressing back into your thrusts. His tight rump spreads for you easily enough, no stranger to having stronger males atop him. You thrust into him repeatedly, moaning into his ear that he's your wolf now and what a good boy he is. He growls softly in lustful enjoyment as you keep mating him, excited by the prospect of being a beta in your pack.";
	say "     'Mmmm... alpha,' he moans, a rarely spoken word coming from the animalistic wolf, showing the completion of his submission to you. Pleased by this, you reach around and start stroking his throbbing, knotted cock as you keep thrusting, getting him to cum hard as you drive into him and pump your hot load into the wolf's bowels. He pants and howls in pleasure beneath his new alpha as you claim him as your own.";
	say "     With his new role firmly cemented, you get up and lead him back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call him) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";
	NPCSexAftermath Fang receives "AssFuck" from Player;

to say feralwolffemalesex:
	say "     Moving your hand to his throat, you roll him over onto his back and grab his sheath. He whimpers softly, but tilts his head back, baring his throat submissively, accepting his fate readily enough. Rubbing his maleness firmly, you grin as you watch his stiffening, red cock sliding from its sheath. You move to scritch his ears and tell him what a good beta he is even as you move overtop him and line up his cock with your wet slit. This both elevates him above his previous station and helps cement his place beneath you as his alpha. You sink your cunt slowly onto him, smiling as he holds himself back, letting you set the pace. He moans and pants as you start riding his throbbing, lupine cock while moaning in his ear that he's your wolf now and what a good boy he is. He growls softly in lustful enjoyment as you keep mating him, excited by the prospect of being a beta in your pack.";
	say "     'Mmmm... alpha,' he moans, a rarely spoken word coming from the animalistic wolf, showing the completion of his submission to you. Pleased by this, you press yourself down onto him firmly and push his swelling knot into you, tying your new wolf to you. You lean in to kiss his lupine muzzle, sliding your tongue into his long muzzle even as you cum hard. Breaking the kiss, he pants and howls in pleasure beneath his new alpha as you claim him as your own.";
	say "     With his new role firmly cemented, you get up once his knot goes down and lead him back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call him) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";
	NPCSexAftermath Player receives "PussyFuck" from Fang;

to say FeralWolfNonSexTame:
	say "     Moving your hand to his throat, you roll him over onto his back and hold him down, looking firmly into his eyes. He whimpers softly, but tilts his head back, baring his throat submissively, accepting his fate as subservient to you readily enough. You smile at his willing submission and whisper what a good beta he will make. This both elevates him above his previous station and helps cement his place beneath you as his alpha. In a display of power over him, you ignore his arousal and instead focus on grooming twigs, dust, and debris form his fur. If he is going to belong to you, then he is going to look presentable while keeping on guard. He whines for a moment, but a stern glare silences him and the wolf accepts that he won't be getting off at the moment. Seeing his acceptance, you lean up next to his ear and whisper that he's your wolf now and what a good boy he is. He pants excitedly at your praise and the prospect of being a beta in your pack.";
	say "     'Alpha,' he replies, a rarely spoken word coming from the animalistic wolf, showing the completion of his submission to you. Pleased by this, you ruffle the fur on his head, showing yourself to be a superior who will care for him and consider his welfare as part of your pack. You decide that this is sufficient affection and dominance that he should be bonded with you sufficiently to listen to your commands and guard your current home vigilantly so, with his new role firmly cemented, you get up and lead him back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call him) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";

to say FeralWolfVictorySex:
	if inasituation is true and FeralWolfSpecialFightNumber < 1: [dealt with in the event]
		say "";
		stop the action;
	if inasituation is false: [standard text]
		say "     You watch the feral wolf drop to the ground in defeat, slumped over on his side. You can see that he is still very hard, his cock dripping with pre. You realize that this feral wolf is completely at your mercy.";
	say "     [bold type]You could easily have your way with him if you want.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		if Player is male:
			if Player is female:
				LineBreak;
				say "     Deciding to have some fun with this poor wolf, you stop and think about how exactly you want to use him. Being a herm, you could easily roll him over and ride his thick canine shaft, or you could mount that tight little ass of his. (Y=Ride, N=Fuck)";
				if Player consents:
					say "     You lick your lips and smile, striding over to the wolf, your cock[smn] getting nice and hard, your cunt[sfn] slick with fem juices. You push the wolf over onto his back and straddle him, grinding [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] up and down his thick length, making him squirm and moan.";
					say "     After a few minutes of teasing the poor wolf, you take hold of his throbbing cock and line it up with [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] before sliding down onto it. As you do so, you gasp and moan in pleasure, arching your back as it slides in, your hands gripping the wolf's chest fur, your own cock[smn] twitching and leaking pre onto the wolf's belly.";
					say "     You start to ride his canine cock, slowly at first but quickly picking up speed. By now the wolf has gained some of his strength back and is eagerly bucking up into your snatch, his cock throbbing and spurting pre into your depths. You shiver and groan, looking down at the wolf beneath you, seeing that he clearly isn't going to last much longer, and you don't think you will either.";
					WaitLineBreak;
					say "     You start panting hard and begin slamming down on his length. You feel his knot swelling, slipping in and out of your cunt, steadily gaining size. Soon it's too big to just slip in, so you pull yourself almost completely of his cock before slamming back down and forcing that knot inside you.";
					say "     This last act pushes the wolf over the edge and he erupts into an orgasm, his knot swelling up so much that it ties you together and makes a tight seal inside your cunt, making sure not a single drop of the wolf's cum slips out. His orgasm, in turn, sets off your own, your cunt quivering around his shaft and milking it for all it's got, your cock[smn] spurting cum all over the wolf and yourself, and your belly slightly distending from all the cum that's being pumped inside you.";
					say "     You lie there for a while, waiting for his knot to deflate, your cunt nice and full of wolf cum. When his knot finally does deflate, you make sure to hold your cunt closed as best as you can when you slide of his length, managing to keep all that wonderful cum inside you. Before you leave, you glance back at the wolf and smile, part of you hoping you'll meet him again so he can fill you up again.";
					CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf";
				else:
					say "     The feral creature sinks to the ground, then slumps over, panting and defeated. You look at him and smile, walking over to him to roll him over onto his chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. He closes his eyes and shivers before raising his rump up into the air, tail up high and showing off his ass. You laugh and climb on top of the wolf, pressing the tip of your shaft against his tight ring and teasing it lightly. The wolf below you groans and claws at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation and spread his tail hole wide open, gasping out and moaning at how tight the wolf is. You take hold of his hips and begin slamming your length into the big canine's ass, his back arching as he moans loudly, enjoying the good fucking you're giving him.";
					say "     Soon you are panting hard and climaxing hard, filling the formerly dominant wolf with your thick cum. Once you finish, you pull out of the wolf and walk around front to present your shaft to him for cleaning[if HP of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
					CreatureSexAftermath "Feral Wolf" receives "AssFuck" from "Player";
			else:
				LineBreak;
				say "     The feral creature sinks to the ground, then slumps over, panting and defeated. You look at him and smile, walking over to him to roll him over onto his chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. He closes his eyes and shivers before raising his rump up into the air, tail up high and showing off his ass. You laugh and climb on top of the wolf, pressing the tip of your shaft against his tight ring and teasing it lightly. The wolf below you groans and claws at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation and spread his tail hole wide open, gasping out and moaning at how tight the wolf is. You take hold of his hips and begin slamming your length into the big canine's ass, his back arching as he moans loudly, enjoying the good fucking you're giving him.";
				say "     Soon you are panting hard and climaxing hard, filling the formerly dominant wolf with your thick cum. Once you finish, you pull out of the wolf and walk around front to present your shaft to him for cleaning[if HP of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
				CreatureSexAftermath "Feral Wolf" receives "AssFuck" from "Player";
		else:
			if Player is female:
				LineBreak;
				say "     You lick your lips and smile, striding over to the wolf, your cunt[sfn] slick with fem juices. You push the wolf over onto his back and straddle him, grinding [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] up and down his thick length, making him squirm and moan.";
				say "     After a few minutes of teasing the poor wolf you take hold of his throbbing cock and line it up with [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if] before sliding down onto it. As you do so, you gasp and moan in pleasure, arching your back as it slides in, your hands gripping the wolf's chest fur.";
				say "     You start to ride his canine cock, slowly at first but quickly picking up speed. By now the wolf has gained some of his strength back and is eagerly bucking up into your snatch, his cock throbbing and spurting pre into your depths. You shiver and groan, looking down at the wolf beneath you, seeing that he clearly isn't going to last much longer, and you don't think you will either.";
				WaitLineBreak;
				say "     You start panting hard and begin slamming down on his length. You feel his knot swelling, slipping in and out of your cunt, steadily gaining size. Soon it's too big to just slip in, so you pull yourself almost completely of his cock before slamming back down and forcing that knot inside you.";
				say "     This last act pushes the wolf over the edge and he erupts into an orgasm, his knot swelling up so much that it ties you together and makes a tight seal inside your cunt, making sure not a single drop of the wolf's cum slips out. His orgasm, in turn, sets off your own, your cunt quivering around his shaft and milking it for all it's got, your belly slightly distending from all the cum that's being pumped inside you.";
				say "     You lie there for a while, waiting for his knot to deflate, your cunt nice and full of wolf cum. When his knot finally does deflate, you make sure to hold your cunt closed as best as you can when you slide of his length, managing to keep all that wonderful cum inside you. Before you leave, you glance back at the wolf and smile, part of you hoping you'll meet him again so he can fill you up again.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf";
			else:
				LineBreak;
				say "     Before you can do anything though, you realize you lack any proper equipment to use on the wolf. You sigh and sadly walk away.";
	else:
		WaitLineBreak;
		say "     Deciding against it, you turn around and head off, leaving the wolf to the mercy of any other creature that might come across it.";

FeralWolfSpecialFightNumber is a number that varies.

to say FeralWolfDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		say "     A feral-looking wolf on four feet, almost three quarters your height, with great muscles under dense black fur. He has dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine teeth. His legs are thick and powerful looking, his whole form obviously built for hunting fast prey. His fur is matted with grime, muck, and some other substance, giving him a very rugged look. When he sees you, his lips peel in a snarl, exposing those deadly teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], charging at you with feral rage in his eyes.";
	else:
		if FeralWolfSpecialFightNumber is 0:
			say ""; [dealt with at the source]
		else if FeralWolfSpecialFightNumber is 1: [description of one of the wolves of the wolf pack in the forest]
			say "     A member of the wolf-pack steps forward, growling as he closes up to you. He is a feral-looking wolf on four feet, almost three quarters your height, with great muscles under dense black fur. He has dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine teeth. His legs are thick and powerful looking, his whole form obviously built for hunting fast prey. His fur is matted with grime, muck, and some other substance, giving him a very rugged look.";
			say "     As his pack's chosen prey, the beast doesn't hesitate one second before he pounces on you, lips peeled back to expose his dangerous teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], a look of feral rage in his eyes.";
		else if FeralWolfSpecialFightNumber is 2: [description of the leader of the wolf pack in the forest]
			say "     Finally the last member steps forward, growling as he closes up to you. He looks bigger than the other ones, almost a third of your height, with great muscles under dense white fur. He has icy blue eyes and white, sharp, canine teeth. His legs are thick and powerful looking, his whole form obviously built for hunting fast prey. His fur is almost as dark as coal, and it doesn't shine, almost as if absorbing all the light around him.";
			say "     As his pack's last standing predator, the beast doesn't hesitate one second before he pounces on you, lips peeled back to expose his dangerous teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], a look of feral rage in his eyes.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Feral Wolf"; [name of the overall species of the infection, used for children, ...]
	add "Feral Wolf" to infections of CanineList;
	add "Feral Wolf" to infections of FeralList;
	add "Feral Wolf" to infections of NatureList;
	add "Feral Wolf" to infections of MaleList;
	add "Feral Wolf" to infections of TaperedCockList;
	add "Feral Wolf" to infections of KnottedCockList;
	add "Feral Wolf" to infections of SheathedCockList;
	add "Feral Wolf" to infections of QuadrupedalList;
	add "Feral Wolf" to infections of FeralmindList;
	add "Feral Wolf" to infections of PackmindList;
	add "Feral Wolf" to infections of TailList;
	now Name entry is "Feral Wolf"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He slams into you and bites down.[or]He roars and swipes at you with his claws.[or]He pounces you and pins you down, tearing into you with his claws.[at random]";
	now defeated entry is "[beatferalwolf]";
	now victory entry is "[Feral Wolf attack]";
	now desc entry is "[FeralWolfDesc]"; [ Description of the creature when you encounter it.]
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
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45;
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 15; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 9; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 10;
	now libido entry is 50; [ Amount player Libido will go up if defeated ]
	now loot entry is "wolf cum";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "wolf cum";
	now TrophyFunction entry is "-";
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


Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Feral Wolf Infection"	"Infection"	""	Feral Wolf Infection rule	1000	false
"Fang's Beta"	"NPCSharedInfection"	""	Fang's Beta rule	1000	false

This is the Feral Wolf Infection rule:
	if HP of Fang is listed in { 3, 4 }:
		make no decision; [Moved to Fang's Beta]
	if Player has a body of "Feral Wolf":
		trigger ending "Feral Wolf Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is male:
				say "Giving in to your feral nature, you prowl the city street, looking for females to mount and dominate. Your mind is gone and now only the most primal of instincts remain.";
			else:
				say "Giving in to your feral nature, you prowl the city street, looking for a worthy male to mount and breed you. Your mind is gone and now only the most primal of instincts remain.";
		else:
			say "Returning to modern society proves to be hard for you. Your feral tendencies make it hard for you to be accepted in large urban areas, so you move out to a more secluded area in the mountains. You make your living by hunting deer and the like, your wolf senses giving you a major edge over anything else, and soon enough you have a comfortable and stable life to live till you're a gray muzzle.";

This is the Fang's Beta rule:
	if HP of Fang is listed in { 3, 4 } and Player has a body of "Feral Wolf":
		trigger ending "Fang's Beta";
		if humanity of Player < 10:
			say "     Giving in to your feral nature, you return to the Library and submit yourself to Fang again, letting him take you as he pleases. After a wild fucking, he leads you off into the city to form a pack of his own with you as his [if Player is female]alpha bitch[else]slutty beta[end if][if ColleenAlpha is 0 and HP of Fang is 3]. Taking Sandra with him, she becomes his special bunny fucktoy, a role that she enjoys greatly. She bears him many quick-footed pups who become runners for the pack, chasing down prey so the stronger wolves can catch them and take them down[end if].";
		else if Felinoid companion is tamed:
			say "     When the military comes, you worry about how they'll react to you and Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. But you are surprised as they move towards him and he slowly stretches and stands upright, resembling the larger alpha wolves you've seen in the city than the feral wolf he once was. Despite a little unsteadiness on his reformed legs, he speaks confidently, telling a tale about how you rescued him from a fate of being an omega in a wolf pack and brought him here to safety. He alludes in passing that your current form is a result of the rescue, but doesn't elaborate. Having heard many tales from those barely able to escape after being transformed, the soldiers don't question this rather loosely accurate story. You pad over to your alpha and lean against him while he scritches your ears.";
			say "     When they turn their attention to your felinoid companion, they are easily enough swayed to feel similar sympathy for him when you tell them about how you both got away from those plant vines in the park, his injury and eventual recovery. You add that he's been a loyal bodyguard since then. There are some concerns, but they are inclined to trust your word. It certainly helps that the big feline is on his best behavior and makes no trouble for the soldiers.";
			say "     At the military's camp, Fang and the felinoid are given a quick examination, but somehow manage to avoid closer scrutiny. You suspect the one female aid who left their examination room with a rather musky scent on her played a part in it somehow. Fang seems particularly pleased with himself as well, but that may just have been your imagination. Regardless, given how bad things are getting the city, they don't get around to fully testing your seemingly obedient pair of companions, accepting your word that they're loyal guardians you found and nothing more.";
			say "     Still having some humanity, despite your more animal form, Fang takes charge of you once your release from the military. He moves in with another female wolf and soon becomes the master of her ranch house as she submits as his newest bitch. You live with him in his newly acquired home, to which he adds a few others with lupine infections, adding them to his little pack of lovers. While the others quickly become nothing but slutty pets, he does keep you as the beta among them, letting you lead your life outside the home and with your other friends and lovers. You sometimes even get to partake in some fun with the other slutty pack-mates. Fang, being a virile alpha, soon has the females growing round with his pups.";
			say "     Even your felinoid companion is made to accept Fang as his superior after a short struggle. With you as his lupine mate, the big wolf is clearly the victor between the two and he celebrates by having the feline lick him clean after tauntingly fucking you in front of the cowed cat. Over time, Fang trains him well, keeping his lustful urges reined in around you though several other females are drawn in by the felinoid's musk. The wolf generously allows the cat to breed some of them, turning them into a small harem of felinoid females to keep him satisfied and spread his cubs into the area. The others he keeps for himself, giving the big wolf a sizable stable of bitches among the local women. Even as these wolf and felinoid cubs spread out, they always respect Fang's ownership of you.";
		else:
			say "     When the military comes, you worry about how they'll react to you and Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. But you are surprised as they move towards him and he slowly stretches and stands upright, resembling the larger alpha wolves you've seen in the city than the feral wolf he once was. Despite a little unsteadiness on his reformed legs, he speaks confidently, telling a tale about how you rescued him from a fate of being an omega in a wolf pack and brought him here to safety. He alludes in passing that your current form is a result of the rescue, but doesn't elaborate. Having heard many tales from those barely able to escape after being transformed, the soldiers don't question this rather loosely accurate story. You pad over to your alpha and lean against him while he scritches your ears.";
			say "     Still having some humanity, despite your more animal form, Fang takes charge of you once your release from the military. He moves in with another female wolf and soon becomes the master of her ranch house as she submits as his newest bitch. You live with him in his newly acquired home, to which he adds a few others with lupine infections, adding them to his little pack of lovers. While the others quickly become nothing but slutty pets, he does keep you as the beta among them, letting you lead your life outside the home and with your other friends and lovers. You sometimes even get to partake in some fun with the other slutty pack-mates. Fang, being a virile alpha, soon has the females growing round with his pups.";
		if HP of Fang is 3 and humanity of Player >= 10:
			say "     Sandra, lustful for the big wolf, comes over to visit often. Fang fucks her like a wild animal, stuffing his throbbing cock into her and keeping her coming back for more. The kinky bunny also enjoys watching the wolf ravage you as well, finding the sight of it very arousing between her own turns beneath the alpha wolf. The bunny's tummy grows large after one of these visits and Fang has her move in, adding her to his harem of lovers. She eventually gives birth to a pair of wolf cubs with bunny ears and a tail. These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";


Section 4 - Wolf Cum

Table of Game Objects (continued)
name	desc	weight	object
"wolf cum"	"A vial of thick, creamy, white liquid. [']Infection sample - species: wolf['] is written on the side."	1	wolf cum

wolf cum is a grab object. wolf cum is cum.
Wolf Cum is infectious. Strain of Wolf Cum is "Feral Wolf".

instead of sniffing wolf cum:
	say "The wolf semen smells of wolves and cum, naturally.";

Usedesc of Wolf Cum is "[Wolf Cum use]";

to say Wolf Cum use:
	say "You shrug and gulp down the creamy liquid, gasping as you feel a sudden heat in your groin. Moaning as you rub your crotch, you realize that you need to get fucked, NOW!";
	if Libido of Player < 75:
		now Libido of Player is 75;



Feral Wolf ends here.
