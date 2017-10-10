Version 4 of Feral Wolf For FS by Stripes begins here.
[ Version 4.5 - Relocated to Urban Forest area. ]
[- Originally Authored By: Shadowwolf94 -]

"Adds a Feral Wolf to Flexible Survival's Wandering Monsters table, With Impreg chance"


Section 1 - Monster Responses

fangcount is a number that varies.

FeralWolfdefeat is a number that varies.

to say Feral Wolf attack:
	now wolffight is 2; [lost]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else:
		if FeralWolfdefeat is 0:
			say "     The Feral Wolf roars as he slams you down onto your back. He then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of player > 3]briefly lording over his victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if bodyname of player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see his thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off his shaft, landing in your mouth and on your face. The strong smell of his musk makes you shiver and groan slightly as he continues to slowly paint your face with his pre, drop by drop.";
			say "     After a few minutes of this treatment, the wolf shifts his stance, lying down on your [bodydesc of player] chest, his cock resting on your face. Once he is properly situated on top of you, he pulls his hips back, lifting his shaft off of you. The tip of his length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams his shaft down into your mouth, snarling and growling in dominance.";
			say "     The wolf's claws dig into your chest as he rams his shaft down your throat, [if scalevalue of player > 3]forcing you to oblige his tainted organ[else]stretching your jaw out uncomfortably[end if]. [if scalevalue of player > 3]His twisted pre-cum compels your compliance further upon this imposed task[else]The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum he is pumping into you, making it easier to take his length[end if]. You shiver and moan beneath the wolf as he orally rapes you, his big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
			say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force it's way into your mouth. It's not hard to figure out that this growth is his knot, and that he intends to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of player > 3]oblige the wolf, lest he harm you further, engulfing the knot in its entirety with little difficulty, much to his growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against his knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained his balls into you[end if].";
			say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, his length deep in your gullet and making it hard for you to breath. His thrusts soon becoming erratic, his breathing and snarling turning into hard panting and soft whining, and his shaft swelling up as the wolf seems to be trying to hold himself back from orgasm.";
			say "     The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, his heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum.";
			say "     The wolf collapses on top of you, panting hard and wagging his tail happily, the last bit of his seed spurting out of his shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips.";
			if wslevel is not 1:
				say "     The rest of the length doesn't follow suit though.";
				say "     The wolf stands up and slides most of his length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as he shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of his shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink is his urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in the stuff. His strong, musky scent now permanently soaked into your skin, forever identifying you as his property.";
			say "     Satisfied, he pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
			now FeralWolfdefeat is 1;
		else:
			if cunts of player > 0 and ((anallevel is 3 and a random chance of 1 in 3 succeeds) or (anallevel < 3 and a random chance of 1 in 2 succeeds)):
				if cunt length of player is less than 15 or cunt width of player is less than 10:
					say "     He pushes you over onto your stomach and climbs up on top of you, grinding his quickly hardening shaft against your rump. You whimper as he digs his claws into your hips and presses the tip of his shaft against [if cunts of player > 1]one of your cunts[else]your cunt[end if]. Wasting no time, he slams it into you, making you gasp out in both pain and pleasure, his grip on you making it easy for him to pound his shaft you. He growls and bites down on your neck, pulling back slightly in a canine mating bite and you quickly submit to him both in body and mind.";
					say "     Within minutes, you are yipping and barking like a good little breeding bitch, howling out your submission for all to hear. You shiver and moan out, panting harder, as you feel the wolf's thick knot ramming against your cunt's moist lips, begging him to tie you and pump you full of fertile seed. He roars out his dominance and spreads your pussy open with his knot, your back arching in pleasure as you are bred. His knot's soon swollen to 3 times the size and has locked you to him, his thrusting and quickly speeding up.";
					say "     The wolf arches his back and howls out, his climax hitting hard and driving you over the edge and into orgasm, His thick feral seed being planted deep into your womb and making your belly distend from all the cum he's pumping into you. The wolf pulls his shaft free of you, ";
				else:
					say "     He snarls and quickly mounts you, barely giving you a moment before he's ramming his thick canine shaft into you. He bites down on your neck in a mating grip and proceeds to pound your cunt hard and fast, your body quickly submitting to the strong male and rocking back against him. You moan and pant beneath the wolf, your mind slipping into a completely submissive state, leaving you acting like a slutty breeding bitch. The wolf growls more as his knot starts to bump up against your pussy, giving you a few goop hard thrusts before he rams it in.";
					say "     Your eyes go wide and you scream out in pleasure, shivering all over and orgasming hard and clamping down on the wolf's length. The treatment his shaft is receiving is too much for him and he climax hard, howling out into the empty street. His cum floods into your womb and begins to overflow around his cock. Once you both come down from orgasm, you wait for the wolf's knot to deflate. The wolf gets up and yanks his shaft out of you, ";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds))):
					say "soon turning to position himself over you. Lifting his leg he starts to empty his bladder all over your torso and face, marking you as his before";
				say "leaving you collapsed on the ground, leaking the wolf's fertile seed as he walks off to find another bitch to fuck.[impregchance]";
			else if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds) or ("Mpreg" is listed in feats of player and a random chance of 1 in 5 succeeds)):
				say "     He circles around you a few times, examining your limp form before rolling you onto your stomach and climbing up onto your ass. You look back and whine fearfully as you see the wolf's shaft already rock hard and leaking pre. He leans forward over you and presses the tip of his length against your asshole, giving you a threatening snarl before he thrust in. You gasp and scream out in pain as he forces you wide open, his bucking fast and hard from the start and causing you to whimper in pain as this big wolf rapes your tight asshole.";
				say "     It's not long until you feel his thick knot being rammed against your tight ring. You start to struggle with all that's left in you, begging the wolf not to try and force it in. All you get for your actions is a mean swipe from his claws and an even more powerful thrust against your hole, making your mouth gape open, speechless and gasping for breath as the wolf uses all his strength to spread you wide open and pop his knot in. He leans forward as far as he can and starts to pound your ass with all his strength, you tight ring quickly bringing him to climax as he howls out, filling you up with his seed.[mimpregchance]";
				say "     He doesn't wait for his knot to deflate and just pulls it out, making you yelp in pain. You lie there on the ground, shivering from the hard fucking the wolf gave you. ";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds))):
					say "     You look as you see him position himself above you. You begin to think that he must want your mouth next when he starts to empty his bladder all over your torso and face. ";
				say "     Offering you a dark growl as a parting remark, you tremble at what ill intent he might have in store for you should you meet him again.";
			else:
				say "     The Feral Wolf roars as he slams you down onto your back. He then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of player > 3]briefly lording over his victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if bodyname of player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see his thick canine shaft quickly swelling up, getting rather hard. A few drops of musky pre dripping off his shaft, landing in your mouth and on your face. The strong smell of his musk makes you shiver and groan slightly as he continues to slowly paint your face with his pre, drop by drop.";
				say "     After a few minutes of this treatment, the wolf shifts his stance, lying down on your [bodydesc of player] chest, his cock resting on your face. Once he is properly situated on top of you, he pulls his hips back, lifting his shaft off of you. The tip of his length slides up your face until it reaches your lips, where it slips between them as spurts a few good pumps of pre before the wolf slams his shaft down into your mouth, snarling and growling in dominance.";
				say "     The wolf's claws dig into your chest as he rams his shaft down your throat, [if scalevalue of player > 3]forcing you to oblige his tainted organ[else]stretching your jaw out uncomfortably[end if]. [if scalevalue of player > 3]His twisted pre-cum compels your compliance further upon this imposed task[else]The only relief you get comes in the form of how slick your mouth and gullet are from all the pre-cum he is pumping into you, making it easier to take his length[end if]. You shiver and moan beneath the wolf as he orally rapes you, his big furry balls smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as his.";
				say "     Your mind begins to wander slightly, dreaming of feral bitches in heat, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, part of the wolf's shaft that is trying to force its way into your mouth. It's not hard to figure out that this growth is his knot, and that he intends to tie your mouth with it no matter what. You quickly decide it's best to [if scalevalue of player > 3]oblige the wolf, lest he harm you further, engulfing the knot in its entirety with little difficulty, much to his growling approval[else]help the wolf get it in, so that your less likely to be injured, and force your jaw open as wide as you can, pressing against his knot as it spreads your jaw painfully wider until it finally pops in, swelling up more and making it impossible to take out until the wolf has drained his balls into you[end if].";
				say "     The wolf snarls and growls more, now bucking into your maw with short, hard strokes, his length deep in your gullet and making it hard for you to breath. His thrusts soon becoming erratic, his breathing and snarling turning into hard panting and soft whining, and his shaft swelling up as the wolf seems to be trying to hold himself back from orgasm.";
				say "     The wolf gives one hard thrust and howls out in climax, claws digging deep into your skin, his heavy balls pulling up as their contents come flooding out, being pumped straight down your throat and into your stomach, your belly soon swelling slightly with thick wolf cum.";
				say "     The wolf collapses on top of you, panting hard and wagging his tail happily, the last bit of his seed spurting out of his shaft and down your gullet. You lay there for a good number of minutes before the wolf's knot has deflated enough to be yanked out from between your lips. ";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds))):
					say "     The rest of the length doesn't follow suit though.";
					say "     The wolf stands up and slides most of his length out, leaving just the head and a bit of the shaft in. You wonder what the wolf is up as he shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls the rest of his shaft out and it becomes quickly apparent that the bitter liquid you were forced to drink his urine. The wolf begins to move down over your body, still spraying the yellow stuff all over you until you are drenched in the stuff. His strong, musky scent now soaked into your skin, identifying you as his property.";
				say "     Satisfied, he pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";

to say beatferalwolf:
	now wolffight is 1; [victory]
	increase fangcount by 40;
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else if inasituation is false and wolffight is not 3 and hp of Fang is 0:		[Checking to add Fang before running the regular wolf scenes]
		if a random number between 1 and 100 < ( fangcount - 95 ) and (cocks of player > 0 or cunts of player > 0 ):	[3rd to 5th wolf]
			say "     You watch the feral wolf drop low to the ground as he whimpers and cowers before you. He even pisses a little to show his submission to you. From the scars on his muzzle and sides, you can see that he's been beaten roughly by several of the other wolves. This wolf, clearly a lowly member of his pack, might make a obedient, if still somewhat feral, pet. You could take him off with you, if you're willing to risk bringing such a beast back with you.";
			say "     [bold type]Shall you try to tame this beastly wolf creature?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				WaitLineBreak;
				say "     Against your better judgment, you take pity on this battered wolf and decide to take him as your own. You decide it best to show this wolf creature who's in charge right away and grab his nape roughly, holding him down while ";
				if cocks of player > 0 and cunts of player > 0:
					say "you decide what to do with him. You are getting quite aroused by the prospect of sexually dominating this wild beast and making it yours. But being both male and female, there are options open to you.";
					say "     [bold type] Would you prefer to fuck the wolf or ride his lupine cock?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck the wolf.";
					say "     ([link]N[as]n[end link]) - Ride his cock.";
					if the player consents:
						WaitLineBreak;
						say "[feralwolfmalesex]";
					else:
						WaitLineBreak;
						say "[feralwolffemalesex]";
				else if cocks of player > 0:
					WaitLineBreak;
					say "you stroke your swelling cock. You are getting quite aroused by the prospect of sexually dominating this wild beast and making it yours.";
					say "[feralwolfmalesex]";
				else:
					WaitLineBreak;
					say "you rub your fingers over your damp pussy. You are getting quite aroused by the prospect of sexually dominating this wild beast and making it yours.";
					say "[feralwolffemalesex]";
				now hp of Fang is 1;
				move Fang to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now lastfuck of Fang is turns;
			else:
				WaitLineBreak;
				say "     Not wanting to risk bringing such a beast back to your safehouse, you strike the cowering cur again and continue on your way.";
				now hp of Fang is 100; [Fang refused]
		else:
			say "[FeralWolfVictorySex]";
	else:
		say "[FeralWolfVictorySex]";

to say feralwolfmalesex:
	say "     Still holding the wolf down, you move atop him, sliding your hard cock under his tail. He whimpers softly, but raises his tail submissively, accepting his fate readily enough. You scritch his ears and tell him what a good beta he is even as you mount him. This both elevates him above his previous station and helps cement his place beneath you as his alpha. You sink your shaft slowly into him, smiling as he starts pressing back into your thrusts. His tight rump spreads for you easily enough, no stranger to having stronger males atop him. You thrust into him repeatedly, moaning into his ear that he's your wolf now and what a good boy he is. He growls softly in lustful enjoyment as you keep mating him, excited by the prospect of being a beta in your pack.";
	say "     'Mmmm... alpha' he moans, a rarely spoken word coming from the animalistic wolf, showing the completion of his submission to you. Pleased by this, you reach around and start stroking his throbbing, knotted cock as you keep thrusting, getting him to cum hard as you drive into him and pump your hot load into the wolf's bowels. He pants and howls in pleasure beneath his new alpha as you claim him as your own.";
	say "     With his new role firmly cemented, you get up and lead him back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call him) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";

to say feralwolffemalesex:
	say "     Moving your hand to his throat, you roll him over onto his back and grab his sheath. He whimpers softly, but tilts his head back, baring his throat submissively, accepting his fate readily enough. Rubbing his maleness firmly, you grin as you watch his stiffening, red cock sliding from its sheath. You move to scritch his ears and tell him what a good beta he is even as you move overtop him and line up his cock with your wet slit. This both elevates him above his previous station and helps cement his place beneath you as his alpha. You sink your cunt slowly onto him, smiling as he holds himself back, letting you set the pace. He moans and pants as you start riding his throbbing, lupine cock while moaning in his ear that he's your wolf now and what a good boy he is. He growls softly in lustful enjoyment as you keep mating him, excited by the prospect of being a beta in your pack.";
	say "     'Mmmm... alpha' he moans, a rarely spoken word coming from the animalistic wolf, showing the completion of his submission to you. Pleased by this, you press yourself down onto him firmly and push his swelling knot into you, tying your new wolf to you. You lean in to kiss his lupine muzzle, sliding your tongue into his long muzzle even as you cum hard. Breaking the kiss, he pants and howls in pleasure beneath his new alpha as you claim him as your own.[impregchance]";
	say "     With his new role firmly cemented, you get up once his knot goes down and lead him back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call him) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";


to say FeralWolfVictorySex:
	if inasituation is false: [standard text]
		Say "You watch the feral wolf drop to the ground in defeat, slumped over on his side. You can see that he is still very hard, his cock dripping with pre. You realize that this feral wolf is completely at your mercy.";
	say "     [bold type]You could easily have your way with him if you want.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		If cocks of player > 0:
			If cunts of player > 0:
				WaitLineBreak;
				Say "Deciding to have some fun with this poor wolf, you stop and think about how exactly you want to use him. Being a herm, you could easily roll him over and ride his thick canine shaft, or you could mount that tight little ass of his. (Y=Ride, N=Fuck)";
				If the player consents:
					Say "You lick your lips and smile, striding over to the wolf, your [if cocks of player > 1]cocks[else]cock[end if] getting nice and hard, your [if cunts of player > 1]cunts[else]cunt[end if] slick with fem juices. You push the wolf over onto his back and straddle him, grinding [if cunts of player > 1]one of your cunts[else]your cunt[end if] up and down his thick length, making him squirm and moan.[line break]After a few minutes of teasing the poor wolf you take hold of his throbbing cock and line it up with [if cunts of player > 1]one of your cunts[else]your cunt[end if] before sliding down onto it. As you do so, you gasp and moan in pleasure, arching your back as it slides in, your hands gripping the wolf's chest fur, your own [if cocks of player > 1]cocks[else]cock[end if] twitching and leaking pre onto the wolf's belly.[line break]You start to ride his canine cock, slowly at first but quickly picking up speed. By now the wolf has gained some of his strength back and is eagerly bucking up into your snatch, his cock throbbing and spurting pre into your depths. You shiver and groan, looking down at the wolf beneath you, seeing that he clearly isn't going to last much longer, and you don't think you will either.[line break]You start panting hard and begin slamming down on his length. You feel his knot swelling, slipping in and out of your cunt, steadily gaining size. Soon it's too big to just slip in, so you pull yourself almost completely of his cock before slamming back down and forcing that knot inside you.[line break]This last act pushes the wolf over the edge and he erupts into an orgasm, his knot swelling up so much that it ties you together and makes a tight seal inside your cunt, making sure not a single drop of the wolf's cum slips out.[line break]His orgasm, in turn, sets off your own, your cunt quivering around his shaft and milking it for all it's got. Your [if cocks of player > 1]cocks[else]cock[end if] spurting cum all over the wolf and yourself. Your belly slightly distending from all the cum that's being pumped inside you. [impregchance][impregchance] You lie there for a while, waiting for his knot to deflate, your cunt nice and full of wolf cum. When his knot finally does deflate, you make sure to hold your cunt closed as best as you can when you slide of his length, managing to keep all that wonderful cum inside you. Before you leave, you glance back at the wolf and smile, part of you hoping you'll meet him again so he can fill you up again.";
				else:
					Say "The feral creature sinks to the ground, then slumps over, panting and defeated. You look at him and smile, walking over to him you roll him over onto his chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. He closes his eyes and shiver before raising his rump up into the air, tail up high and showing off his ass. You laugh and climb on top of the wolf, pressing the tip of your shaft against his tight ring and teasing it lightly. The wolf below you groans and claws lightly at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation as that and spread his tail hole wide open, gasping out and moaning at how tight the wolf is. You take hold of his hips and begin slamming your length into the big canine's ass, his back arching as he moans loudly, enjoying the good fucking you're giving him.[line break]So you are panting hard and climaxing hard, filling the formerly dominate wolf with your thick cum. Once you finish you pull out of the wolf and walk around front and present your shaft to him for cleaning[if hp of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
			else:
				WaitLineBreak;
				Say "The feral creature sinks to the ground, then slumps over, panting and defeated. You look at him and smile, walking over to him you roll him over onto his chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. He closes his eyes and shiver before raising his rump up into the air, tail up high and showing off his ass. You laugh and climb on top of the wolf, pressing the tip of your shaft against his tight ring and teasing it lightly. The wolf below you groans and claws lightly at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation as that and spread his tail hole wide open, gasping out and moaning at how tight the wolf is. You take hold of his hips and begin slamming your length into the big canine's ass, his back arching as he moans loudly, enjoying the good fucking you're giving him.[line break]So you are panting hard and climaxing hard, filling the formerly dominate wolf with your thick cum. Once you finish you pull out of the wolf and walk around front and present your shaft to him for cleaning[if hp of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
		else:
			if cunts of player > 0:
				WaitLineBreak;
				Say "You lick your lips and smile, striding over to the wolf, your [if cunts of player > 1]cunts[else]cunt[end if] slick with fem juices. You push the wolf over onto his back and straddle him, grinding [if cunts of player > 1]one of your cunts[else]your cunt[end if] up and down his thick length, making him squirm and moan.[line break]After a few minutes of teasing the poor wolf you take hold of his throbbing cock and line it up with [if cunts of player > 1]one of your cunts[else]your cunt[end if] before sliding down onto it. As you do so, you gasp and moan in pleasure, arching your back as it slides in, your hands gripping the wolf's chest fur.[line break]You start to ride his canine cock, slowly at first but quickly picking up speed. By now the wolf has gained some of his strength back and is eagerly bucking up into your snatch, his cock throbbing and spurting pre into your depths. You shiver and groan, looking down at the wolf beneath you, seeing that he clearly isn't going to last much longer, and you don't think you will either.[line break]You start panting hard and begin slamming down on his length. You feel his knot swelling, slipping in and out of your cunt, steadily gaining size. Soon it's too big to just slip in, so you pull yourself almost completely of his cock before slamming back down and forcing that knot inside you.[line break]This last act pushes the wolf over the edge and he erupts into an orgasm, his knot swelling up so much that it ties you together and makes a tight seal inside your cunt, making sure not a single drop of the wolf's cum slips out.[line break]His orgasm, in turn, sets off your own, your cunt quivering around his shaft and milking it for all it's got. Your belly slightly distending from all the cum that's being pumped inside you. [impregchance][impregchance] You lie there for a while, waiting for his knot to deflate, your cunt nice and full of wolf cum. When his knot finally does deflate, you make sure to hold your cunt closed as best as you can when you slide of his length, managing to keep all that wonderful cum inside you. Before you leave, you glance back at the wolf and smile, part of you hoping you'll meet him again so he can fill you up again.";
			else:
				WaitLineBreak;
				Say "Before you can do anything though, you realize you lack any proper equipment to use on the wolf. You sigh and sadly walk away.";
	else:
		WaitLineBreak;
		Say "Deciding against it, you turn around and head off, leaving the wolf to the mercy of any other creature that might come across it.";

FeralWolfSpecialFightNumber is a number that varies;

to say FeralWolfDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		say "     A large canine on all fours. A feral looking wolf on four feet, almost three quarts your height, with great muscles under dense black fur. He has dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine, teeth. His legs a thick and powerful looking, his whole form obviously built for hunting fast prey. His fur is matted with grime, muck, and some other substance, giving him a very rugged look. When he sees you, his lips peel in a snarl, expose those deadly teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], charging at you with feral rage in his eyes.";
	else:
		if FeralWolfSpecialFightNumber is 1: [description of one of the wolves of the wolf pack in the forest]
			say "     A member of the wolf-pack steps forward, growling as he closes up to you. He is a feral looking wolf on four feet, almost three quarts your height, with great muscles under dense black fur. He has dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine, teeth. His legs are thick and powerful looking, his whole form obviously built for hunting fast prey. His fur is matted with grime, muck, and some other substance, giving him a very rugged look.";
			say "     As his pack's chosen prey, the beast doesn't hesitate one second before he pounces on you, lips peeled back to expose his dangerous teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], a look of feral rage in his eyes.";
		else if FeralWolfSpecialFightNumber is 2: [description of the leader of the wolf pakc in the forest]
			say "     Finally the last member steps foward, growling as he closes up to you. He looks bigger than the other ones, almost a third of your height, with great muscles under dense white fur. He has icy blue eyes and white, sharp, canine, teeth. His legs are thick and powerful looking, his whole form obviously built for hunting fast prey. His fur is almost as dark as coal, it doesn't shine, almost af if absorbing all the light around him.";
			say "     As his pack's last standing predator, the beast doesn't hesitate one second before he pounces on you, lips peeled back to expose his dangerous teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], a look of feral rage in his eyes.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Feral Wolf" to infections of guy;
	add "Feral Wolf" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Feral Wolf"; [Name of your new Monster]
	now attack entry is "[one of]He slams into you and bites down.[or]He roars and swipes at you with his claws.[or]He pounces you and pins you down, tearing into you with his claws.[at random]";
	now defeated entry is "[beatferalwolf]";
	now victory entry is  "[Feral Wolf attack]";
	now desc entry is "[FeralWolfDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "feral wolf face, with an long canine snout willed with the sharp teeth of a predator filling your maw"; [ Face description, format as the text "You have a (your text) face."]
	now body entry is "that of an average sized and well muscled wolf, with large canine features that give you a wild and deadly appearance"; [ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]black furred[or]roughly furred[or]furry[at random]"; [ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a long black tail that trails behind you. The wolf tail showing your emotions quite clearly."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feral canine[or]wolf[or]pitch black[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face stretches and creaks as it warps into a long canine snout"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your bones creak and crack as they morph into a more suitable form for hunting, leaving you with the strong body of a feral wolf"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "rough black fur spreads rapidly over your form, leaving you more capable to endure the elements."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a long, bushy black tail emerges from above your ass, twitching about lightly"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your shaft swells with sudden arousal as the end tapers out to a point, a thick knot swelling up at the base, giving it a distinct canine shape, the entire length turning pitch black"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 15;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 17;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;
	now lev entry is 4; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 15; [ Length infection will make cock grow to if cocks]
	now cock width entry is 9; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 6; [ Number of Breasts infection will give you. ]
	now breast size entry is 9; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 2; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;
	now cunt width entry is 10;
	now libido entry is 50; [ Amount player Libido will go up if defeated ]
	now loot entry is "wolf cum";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]powerful[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Feral Wolf":
		if hp of Fang is 3 or hp of Fang is 4:				[alpha Fang]
			if humanity of player < 10:
				say "     Giving in to your feral nature, you return to the Library and submit yourself to Fang again, letting him take you as he pleases. After a wild fucking, he leads you off into the city to form a pack of his own with you as his [if cunts of player > 0]alpha bitch[else]slutty beta[end if][if coleenalpha is 0 and hp of Fang is 3]. Taking Sandra with him, she becomes his special bunny fucktoy, a role that she enjoys greatly. She bears him many quick-footed pups who become runners for the pack, chasing down prey so the stronger wolves can catch them and take them down[end if].";
			else if Felinoid companion is tamed:
				say "     When the military comes, you worry about how they'll react to you and Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. But you are surprised as they move towards him and he slowly stretches and stands upright, resembling the larger alpha wolves you've seen in the city than the feral wolf he once was. Despite a little unsteadiness on his reformed legs, he speaks confidently, telling a tale about how you rescued him from a fate of being an omega in a wolf pack and brought him here to safety. He alludes in passing that your current form is a result of the rescue, but doesn't elaborate. Having heard many tales from those barely able to escape after being transformed, the soldiers don't question this rather loosely accurate story. You pad over to your alpha and lean against him while he scritches your ears.";
				say "     When they turn their attention to your felinoid companion, they are easily enough swayed to feel similar sympathy for him when you tell them about how you both got away from those plant vines in the park, his injury and eventual recovery. You add that he's been a loyal bodyguard since then. There are some concerns, but they are inclined to trust your word. It certainly helps that the big feline is on his best behaviour and makes no trouble for the soldiers.";
				say "     At the military's camp, Fang and the felinoid are given a quick examination, but somehow manage to avoid closer scrutiny. You suspect the one female aid who left their examination room with a rather musky scent on her played a part in it somehow. Fang seems particularly pleased with himself as well, but that may just have been your imagination. Regardless, given how bad things are getting the city, they don't get around to fully testing your seemingly obedient pair of companions, accepting your word that they're loyal guardians you found and nothing more.";
				say "     Still having some humanity, despite your more animal form, Fang takes charge of you once your release from the military. He moves in with another female wolf and soon becomes the master of her ranch house as she submits as his newest bitch. You live with him in his newly acquired home, to which he adds a few others with lupine infections, adding them to his little pack of lovers. While the others quickly become nothing but slutty pets, he does keep you as the beta among them, letting you lead your life outside the home and with your other friends and lovers. You sometimes even get to partake in some fun with the other slutty pack-mates. Fang, being a virile alpha, soon has the females growing round with his pups.";
				say "     Even your felinoid companion is made to accept Fang as his superior after a short struggle. With you as his lupine mate, the big wolf is clearly the victor between the two and he celebrates by having the feline lick him clean after tauntingly fucking you in front of the cowed cat. Over time, Fang trains him well, keeping his lustful urges reined in around you though several other females are drawn in by the felinoid's musk. The wolf generously allows the cat to breed some of them, turning them into a small harem of felinoid females to keep him satisfied and spread his cubs into the area. The others he keeps for himself, giving the big wolf a sizable stable of bitches among the local women. Even as these wolf and felinoid cubs spread out, they always respect Fang's ownership of you.";
			else:
				say "     When the military comes, you worry about how they'll react to you and Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. But you are surprised as they move towards him and he slowly stretches and stands upright, resembling the larger alpha wolves you've seen in the city than the feral wolf he once was. Despite a little unsteadiness on his reformed legs, he speaks confidently, telling a tale about how you rescued him from a fate of being an omega in a wolf pack and brought him here to safety. He alludes in passing that your current form is a result of the rescue, but doesn't elaborate. Having heard many tales from those barely able to escape after being transformed, the soldiers don't question this rather loosely accurate story. You pad over to your alpha and lean against him while he scritches your ears.";
				say "     Still having some humanity, despite your more animal form, Fang takes charge of you once your release from the military. He moves in with another female wolf and soon becomes the master of her ranch house as she submits as his newest bitch. You live with him in his newly acquired home, to which he adds a few others with lupine infections, adding them to his little pack of lovers. While the others quickly become nothing but slutty pets, he does keep you as the beta among them, letting you lead your life outside the home and with your other friends and lovers. You sometimes even get to partake in some fun with the other slutty pack-mates. Fang, being a virile alpha, soon has the females growing round with his pups.";
			if hp of Fang is 3 and humanity of player >= 10:
				say "     Sandra, lustful for the big wolf, comes over to visit often. Fang fucks her like a wild animal, stuffing his throbbing cock into her and keeping her coming back for more. The kinky bunny also enjoys watching the wolf ravage you as well, finding the sight of it very arousing between her own turns beneath the alpha wolf. The bunny's tummy grows large after one of these visits and Fang has her move in, adding her to his harem of lovers. She eventually gives birth to a pair of wolf cubs with bunny ears and a tail. These quiet, taciturn boys are never lacking in companionship, always having numerous lovers drawn in by the strong bodies and brooding nature, eager to bend over for them.";
		else:						[no Alpha Fang]
			if humanity of player is less than 10:
				if cocks of player > 0:
					say "Giving in to your feral nature, you prowl the city street, looking for females to mount and dominate. Your mind is gone and now only the most primal of instincts remain.";
				else:
					say "Giving in to your feral nature, you prowl the city street, looking for a worthy male to mount and breed you. Your mind is gone and now only the most primal of instincts remain.";
			else:
				say "Returning to modern society proves to be hard for you. Your feral tendencies make it hard for you to be accepted in large urban areas, so you move out to a more secluded area in the mountains. You make your living by hunting deer and the like, your wolf senses giving you a major edge over anything else, and soon enough you have a comfortable and stable life to live till you're a grey muzzle.";

Table of Game Objects(continued)
name	desc	weight	object
"wolf cum"	"A vial of thick, creamy, white liquid. [']DNA sample - species: wolf['] is written on the side."	1	wolf cum

wolf cum is a grab object. wolf cum is cum.

instead of sniffing wolf cum:
	say "The wolf semen smells of wolves and cum, naturally.";

the usedesc of Wolf Cum is "[Wolf Cum use]";

to say Wolf Cum use:
	say "You shrug and gulp down the creamy liquid, gasping as you feel a sudden heat in your groin. Moaning as you rub your crotch, you realize that you need to get fucked, NOW!";
	if libido of player < 75:
		now libido of player is 75;

Wolf Cum is infectious. The strain of Wolf Cum is "Feral Wolf".

Feral Wolf For FS ends here.
