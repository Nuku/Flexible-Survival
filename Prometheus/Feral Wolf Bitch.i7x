Feral Wolf Bitch by Prometheus begins here.
[Based off of Feral Wolf Male by Stripes]
[Primarily written by Lost Directions]

"Adds a Feral Wolf Bitch to Flexible Survival's Wandering Monsters table"

to say GenerateTrophyList_Feral_Wolf_Bitch:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "wolf bitch fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "tennis ball" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

FemFangCount is a number that varies.
FeralWolfBitchFight is a number that varies.
FeralWolfBitchDefeat is a number that varies.

to say Feral Wolf Bitch attack:
	now FeralWolfBitchFight is 2; [lost]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		if FeralWolfBitchDefeat is 0:
			say "     The feral wolf roars as she slams you down onto your back. She then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over her victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see her feminine sex quickly begin to line with dew, getting rather slick. A few drops of musky pre begin dripping off her pussy, landing in your mouth and on your face. The strong smell of her musk makes you shiver and groan slightly as she continues to slowly paint your face with her pre, drop by drop.";
			say "     After a few minutes of this treatment, the wolf shifts her stance, lying down on your [bodydesc of Player] chest, her pussy resting on your face. Once she is properly situated on top of you, she pulls her hips back, lifting her pussy off of you. The outer lips of her cunt slides up your face until it reaches your lips, where it slips slightly between them as spurts of a few good squirts of pre enter as the wolf grinds her cunt down onto your mouth, snarling and growling in dominance.";
			say "     The wolf's claws dig into your chest as she continues to smash her pussy down onto your mouth, [if scalevalue of Player > 3]forcing you to oblige your head getting shoved into her tainted organ. Her twisted pre-cum covers you as it compels your compliance further into this imposed task[else]stretching out slightly out uncomfortably as you are forced bodily into the depths of her cunt. The only relief you get comes in the form of how slick your body is from all the pre-cum she is pumping onto you, making it easier to take her punishment[end if]. You shiver and moan beneath the wolf as she orally rapes you, the edge of her cunt smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as hers.";
			say "     Your mind begins to wander slightly, dreaming of feral studs in rut, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, urgency of the wolf's pussy that is trying to force more of its pre-cum into your mouth. It's not hard to figure out that these tremors are signs of her approaching climax, and that she intends to get off using your mouth no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest she harm you further, licking her pussy in its entirety with little difficulty, much to her growling approval[else]help the wolf get off, so that your less likely to be injured, and force your body open as wide as you can, pressing against the walls of her pussy as it clamps down onto your body painfully in return until she finally pops, her juices welling up more and swirling around you making it impossible to breath until the wolf has well and truly finished her climax onto you[end if].";
			say "     The wolf snarls and growls more, now bucking onto your maw with short, hard strokes, her cunt covering your mouth and making it hard for you to breath. Her thrusts soon becoming erratic, her breathing and snarling turning into hard panting and soft whining, and her cunt clamps up as the wolf seems to be trying to hold herself back from orgasm.";
			say "     The wolf shoves down in one hard thrust and howls out in climax, claws digging deep into your skin, her body shuddering as her fem-cum comes flooding out, being pumped into your throat and down your stomach, your belly soon swelling slightly with thick wolf fem-cum.";
			say "     The wolf collapses on top of you, panting hard and wagging her tail happily, the last bit of her fem-cum spurting out of her and down onto your face. You lay there for a good number of minutes as the wolf recovers enough to roll off from youir face.";
			if wslevel is not 1:
				say "     The wolf stands up and squats down onto your face, leaving just enough of it pressed against mouth. You wonder what the wolf is up as she shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls her pussy off and it becomes quickly apparent that the bitter liquid you were forced to drink is, her urine. The wolf begins to awkwardly move down over your body, still spraying the yellow stuff all over you until you are drenched in it. Her strong, musky scent is now permanently soaked into your skin, forever identifying you as her property.";
			say "     Satisfied, she pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";
			now FeralWolfbitchDefeat is 1;
		else:
			if Player is female:
				say "     Offering you a dark growl as a parting remark, you tremble at what ill intent she might have in store for you should you meet her again.";
				if wslevel is 3 or (wslevel is 2 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds))):
					say "You look as you see her position herself above you. You begin to think that she must want your mouth next when she starts to empty her bladder all over your torso and face. ";
			else:
				say "     The feral wolf roars as she slams you down onto your back. She then sits back and lets out a howl of victory into the [if daytimer is night]night [end if]sky before padding over to your head and [if scalevalue of Player > 3]briefly lording over his victory[else]standing above you[end if]. Your position forcing you to look up into the strong[if BodyName of Player is listed in infections of caninelist]er[end if] canine's crotch, your eyes widening as you see her feminine sex quickly begin to line with dew, getting rather slick. A few drops of musky pre begin dripping off her pussy, landing in your mouth and on your face. The strong smell of her musk makes you shiver and groan slightly as she continues to slowly paint your face with her pre, drop by drop.";
				say "     After a few minutes of this treatment, the wolf shifts her stance, lying down on your [bodydesc of Player] chest, her pussy resting on your face. Once she is properly situated on top of you, she pulls her hips back, lifting her pussy off of you. The outer lips of her cunt slides up your face until it reaches your lips, where it slips slightly between them as spurts of a few good squirts of pre enter as the wolf grinds her cunt down onto your mouth, snarling and growling in dominance.";
				say "     The wolf's claws dig into your chest as she continues to smash her pussy down onto your mouth, [if scalevalue of Player > 3]forcing you to oblige your head getting shoved into her tainted organ. Her twisted pre-cum covers you as it compels your compliance further into this imposed task[else]stretching out slightly out uncomfortably as you are forced bodily into the depths of her cunt. The only relief you get comes in the form of how slick your body is from all the pre-cum she is pumping onto you, making it easier to take her punishment[end if]. You shiver and moan beneath the wolf as she orally rapes you, the edge of her cunt smacking against your nose with each thrust, forcing you to take in the slightly addictive smell of the strong feral beast that is now claiming you as hers.";
				say "     Your mind begins to wander slightly, dreaming of feral studs in rut, when it's suddenly snapped back to reality by the feeling of a large, quickly growing, urgency of the wolf's pussy that is trying to force more of its pre-cum into your mouth. It's not hard to figure out that these tremors are signs of her approaching climax, and that she intends to get off using your mouth no matter what. You quickly decide it's best to [if scalevalue of Player > 3]oblige the wolf, lest she harm you further, licking her pussy in its entirety with little difficulty, much to her growling approval[else]help the wolf get off, so that your less likely to be injured, and force your body open as wide as you can, pressing against the walls of her pussy as it clamps down onto your body painfully in return until she finally pops, her juices welling up more and swirling around you making it impossible to breath until the wolf has well and truly finished her climax onto you[end if].";
				say "     The wolf snarls and growls more, now bucking onto your maw with short, hard strokes, her cunt covering your mouth and making it hard for you to breath. Her thrusts soon becoming erratic, her breathing and snarling turning into hard panting and soft whining, and her cunt clamps up as the wolf seems to be trying to hold herself back from orgasm.";
				say "     The wolf shoves down in one hard thrust and howls out in climax, claws digging deep into your skin, her body shuddering as her fem-cum comes flooding out, being pumped into your throat and down your stomach, your belly soon swelling slightly with thick wolf nectar.";
				say "     The wolf collapses on top of you, panting hard and wagging her tail happily, the last bit of her fem-cum spurting out of her and down onto your face. You lay there for a good number of minutes as the wolf recovers enough to roll off from youir face.";
				if wslevel is not 1:
					say "     The wolf stands up and squats down onto your face, leaving just enough of it pressed against mouth. You wonder what the wolf is up as she shivers all over and suddenly there's a bitter tasting liquid being sprayed into mouth. You are still too weak to fight back against the wolf and have no other choice than to swallow the foul liquid or drown from it. Soon enough the wolf pulls her pussy off and it becomes quickly apparent that the bitter liquid you were forced to drink is, her urine. The wolf begins to awkwardly move down over your body, still spraying the yellow stuff all over you until you are drenched in it. Her strong, musky scent is now permanently soaked into your skin, forever identifying you as her property.";
				say "     Satisfied, she pads back over to your face and gives you a playful lick before bounding off into the streets of the infected city.";

to say BeatFeralWolfBitch:
	now FeralWolfBitchFight is 1; [victory]
	increase FemFangCount by 40;
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else if inasituation is false and FeralWolfBitchFight is not 3 and (HP of Fang is 0 or hp of Fang is 98):		[Checking to add Fang before running the regular wolf scenes]
		if a random number between 1 and 100 < ( FemFangCount - 95 ) and (player is not neuter ):	[3rd to 5th wolf]
			project the Figure of Fang_face_icon;
			say "     You watch the feral wolf drop low to the ground as she whimpers and cowers before you. She even pisses a little to show her submission to you. From the scars on her muzzle and sides, you can see that she's been beaten roughly by several of the other wolves. This wolf, clearly a lowly member of her pack, might make an obedient, if still somewhat feral, pet. You could take her with you, if you're willing to risk bringing such a beast back with you.";
			say "     [bold type]Shall you try to tame this beastly wolf creature?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				LineBreak;
				say "     Against your better judgment, you take pity on this battered wolf and decide to take her as your own. You decide it best to show this wolf creature who's in charge right away and grab her nape roughly, holding her down while ";
				if Player is herm:
					say "you decide what to do with her. You are getting quite excited by the idea of making this wild beast yours. But being both male and female, there are options open to you if you wish to sexually dominate her.";
					Linebreak;
					say "     [bold type]Would you prefer to fuck the wolf, ride her lupine muzzle, or tame her non-sexually?[roman type][line break]";
					say "     [link](1)[as]1[end link] - Fuck the wolf.";
					say "     [link](2)[as]2[end link] - Ride her muzzle.";
					say "     [link](3)[as]3[end link] - Tame her without sex.";
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
						say "[FeralWolfBitchMaleSex]";
					else if calcnumber is 2:
						LineBreak;
						say "[FeralWolfBitchFemaleSex]";
					else:
						LineBreak;
						say "[FeralWolfBitchNonsexTame]";
				else if Player is male:
					say "you decide what to do with her. You are getting quite excited by the idea of making this wild beast yours. You could sexually dominate her or just make her yours without fucking her.";
					say "     [bold type]Would you prefer to fuck the wolf or tame her non-sexually?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Fuck the wolf.";
					say "     ([link]N[as]n[end link]) - Tame her without sex.";
					if Player consents:
						say "[FeralWolfBitchMaleSex]";
					else:
						say "[FeralWolfbitchNonsexTame]";
				else:
					say "you decide what to do with her. You are getting quite excited by the idea of making this wild beast yours. You could sexually dominate her or just make her yours without fucking her.";
					say "     [bold type]Would you prefer to ride her lupine muzzle or tame her non-sexually?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - Ride her muzzle.";
					say "     ([link]N[as]n[end link]) - Tame her without sex.";
					if Player consents:
						say "[FeralWolfBitchFemaleSex]";
					else:
						say "[FeralWolfBitchNonsexTame]";
				now Fang is Female;
				now HP of Fang is 1;
				now Androginity of Fang is 6;
				now Cock Count of Fang is 0;
				now Cock Girth of Fang is 0;
				now Cock Length of Fang is 0;
				now Ball Count of Fang is 0;
				now Ball Size of Fang is 0;
				now Cunt Count of Fang is 1;
				now Cunt Depth of Fang is 12;
				now Cunt Tightness of Fang is 2;
				now Clit Size of Fang is 3;
				now Virgin of Fang is false;
				now PenileVirgin of Fang is true;
				SetFemalePronouns for Fang;
				move Fang to the Grey Abbey Library;
				move player to the Grey Abbey Library;
				now lastfuck of Fang is turns;
			else:
				LineBreak;
				say "     Not wanting to risk bringing such a beast back to your safehouse, you strike the cowering cur again and continue on your way.";
				if hp of Fang is 98:
					now HP of Fang is 100; [Fang refused completely]
				else:
					now hp of Fang is 99; [Fang refused as Female]
		else:
			say "[FeralWolfBitchVictorySex]";
	else:
		say "[FeralWolfBitchVictorySex]";

to say FeralWolfBitchMaleSex:
	say "     Still holding the wolf down, you move atop him, sliding your hard cock under her tail. She whimpers softly, but raises her tail submissively, accepting her fate readily enough. You scritch her ears and tell her what a good beta she is even as you mount her. This both elevates her above her previous station and helps cement her place beneath you as her alpha. You sink your shaft slowly into her, smiling as she starts pressing back into your thrusts. Her pert cunny spreads for you easily enough, no stranger to having stronger males mounting her. You thrust into her repeatedly, moaning into her ear that she's your wolf now and what a good girl she is. She growls softly in lustful enjoyment as you keep mating with her, excited by the prospect of there being a beta in your pack.";
	say "     'Mmmm... alpha,' she moans, a rarely spoken word coming from the animalistic wolf, showing the completion of her submission to you. Pleased by this, you reach around using the entire length of your arm, putting her into a body lock and getting into a better position as you speed up your thrusting, getting her to cum hard as you drive into her and pump your hot load into the wolf's cunt. She pants and howls in pleasure beneath her new alpha as you claim her as your own.";
	say "     With her new role firmly cemented, you get up and lead her back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call her) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";
	NPCSexAftermath Fang receives "PussyFuck" from Player;

to say FeralWolfBitchFemaleSex:
	say "     Moving your hand to her throat, you roll her over onto her back and grab her midriff. She whimpers softly, but tilts his head back, baring her throat submissively, accepting her fate readily enough. Moving her head forward, back into position for the ride you have in mind as you move to scritch her ears and tell her what a good beta she is even as you move overtop her and line up her muzzle with your wet slit. This both elevates her above her previous station and helps cement her place beneath you as her alpha. You sink your cunt slowly onto her, smiling as she holds herself still, letting you have your way with her. She angles her muzzle as she licks the walls of your passage as you ride her furry, lupine muzzle while moaning that she's your wolf now and what a good girl she is. She growls softly in response, muffled by your muff as you finish mating her, perhaps excited by the prospect of being a beta in your pack?";
	say "     'Mmmm... alpha,' she moans, a muffled word coming from the animalistic wolf, showing the completion of her submission to you. Pleased by this, you press yourself down onto her firmly as you orgasm, being sure to move your body and pussy off of her muzzle, letting her breathe as you position yourself to sit down next to her. You lean in to kiss her fem-cum drenched lupine muzzle, sliding your tongue into her even as you cum a second time from the memory of the sensation. Breaking the kiss, she pants as she inhales fresh air, softly growling a second time 'Alpha', perhaps to make sure you heard her if you didn't the first time?";
	say "     With her new role firmly cemented, you get up once your legs recover from the ride you just went on and lead her back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call her) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";

to say FeralWolfBitchNonsexTame:
	say "     Moving your hand to her throat, you roll her over onto her back and hold her down, looking firmly into her eyes. She whimpers softly, but tilts her head back, baring her throat submissively, accepting her fate as subservient to you readily enough. You smile at her willing submission and whisper what a good beta she will make. This both elevates her above her previous station and helps cement her place beneath you as her alpha. In a display of power over her, you ignore her glistening arousal making itself known and instead focus on grooming twigs, dust, and debris from her fur. If she is going to belong to you, then she is going to look presentable while keeping on guard. She whines in confusion for a moment, but a stern glare silences her and the wolf accepts that she won't be getting off at the moment. Seeing her acceptance, you lean up next to her ear and whisper that she's your wolf now and what a good girl she is. She pants excitedly at your praise and the prospect of being a beta in your pack.";
	say "     'Alpha,' she replies, a rarely spoken word coming from the animalistic wolf, showing the completion of her submission to you. Pleased by this, you ruffle the fur on her head, showing yourself to be a superior who will care for her and consider her welfare as part of your pack. You decide that this is sufficient affection and dominance that she should be bonded with you sufficiently to listen to your commands and guard your current home vigilantly so, with her new role firmly cemented, you get up and lead her back to the Library, pausing on the way to grab some rope. You leash up Fang (as you decide to uncreatively call her) just inside the Library to act as a door guard, protecting your bunker and its contents while you're away.";

to say FeralWolfBitchVictorySex:
	if inasituation is true and FeralWolfBitchSpecialFightNumber < 1: [dealt with in the event]
		say "";
		stop the action;
	if inasituation is false: [standard text]
		say "     You watch the feral wolf drop to the ground in defeat, slumped over on her side. You can see that she is still very wet, her cunt dripping with pre. You realize that this feral wolf is completely at your mercy.";
	say "     [bold type]You could easily have your way with her if you want.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		if Player is male:
			if Player is female:
				LineBreak;
				say "     . (Y=Ride, N=Fuck)";
				if Player consents:
					say "     Moving your hand to her back, you roll her over, the wolf accepting her fate readily enough. Having allowed herself to be moved into the position best suited for the ride you have in mind, you scritch her ears to reassure her that she will walk away from this, as you move overtop her and line up her muzzle with your wet slit. This both in order to calm her and convince her to join in on the effort of getting you to your climax. You sink your cunt slowly onto her, moaning slightly as she holds herself still, letting you go down on her muzzle without any fuss. As you begin to piston your hips in order to get this done as fast as possible, she angles her muzzle as she licks the walls of your passage, her lupine muzzle getting slathered in pre-cum as you whisper huskily what a good girl she is. She growls softly in response, muffled by your muff as you continue mating her, as her tail starts to wag in response.";
					say "     She moans incoherently, a muffled sound coming from the animalistic wolf as you see her orgasm, the sound and shudders from her body rippling through you. Pleased by this, you press yourself down onto her firmly as you orgasm, being sure to move your body and pussy off of her muzzle, letting her breathe as you position yourself to sit down next to her. You lean in to kiss her fem-cum drenched lupine muzzle directly on the tip of her nose, as you cum a second time from the memory of the sensation. Lifting your head after the surprisingly chaste kiss on top of the not-so-chaste ride, she pants as she inhales fresh air, softly growling out something she probably wants you to hear, being as tired as you both are, you look back at her to see if she would repeat that, however is seems that she passed out from the exertion.";
					say "     Having gotten off and shown the wolfess who is boss, you get up once your legs recover from the ride you just went on, picking up your things and getting on your way.";
					CreatureSexAftermath "Feral Wolf Bitch" receives "OralPussy" from "Player";
				else:
					say "     The feral creature sinks to the ground, then slumps over, panting and defeated. You look at her and smile, walking over to her to roll her over onto her chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. She closes her eyes and shivers before raising her rump up into the air, tail up high and showing off her ass and pussy. You laugh and climb on top of the wolf, pressing the tip of your shaft against her dew speckled pussy and begin teasing it lightly. The wolf below you groans and claws at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation and spread her pussy entrance wide open, gasping out and moaning at how warm the wolf is. You take hold of her hips and begin slamming your length into the big canine's cunt, her back arching as she moans loudly, enjoying the good fucking you're giving her.";
					say "     Soon you are panting hard and climaxing hard, filling the formerly dominant wolf with your thick cum. Once you finish, you pull out of the wolf and walk around front to present your shaft to her for cleaning[if HP of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
					CreatureSexAftermath "Feral Wolf Bitch" receives "PussyFuck" from "Player";
			else:
				LineBreak;
				say "     The feral creature sinks to the ground, then slumps over, panting and defeated. You look at her and smile, walking over to her to roll her over onto her chest. The wolf looks back at you and whimpers, quickly understanding what you plan to do. She closes her eyes and shivers before raising her rump up into the air, tail up high and showing off her ass and pussy. You laugh and climb on top of the wolf, pressing the tip of your shaft against her dew speckled pussy and teasing it lightly. The wolf below you groans and claws at the ground, pushing back against your length, obviously eager to be fucked. You waste no time after such an open invitation and spread her pussy entrance wide open, gasping out and moaning at how warm the wolf is. You take hold of her hips and begin slamming your length into the big canine's cunt, her back arching as she moans loudly, enjoying the good fucking you're giving her.";
				say "     Soon you are panting hard and climaxing hard, filling the formerly dominant wolf with your thick cum. Once you finish, you pull out of the wolf and walk around front to present your shaft to her for cleaning[if HP of Fang is 0]. Smiling to yourself, you think of how much fun it would be to have a wolf like this for a pet[end if].";
				CreatureSexAftermath "Feral Wolf Bitch" receives "PussyFuck" from "Player";
		else:
			if Player is female:
				LineBreak;
				say "     Moving your hand to her back, you roll her over, the wolf accepting her fate readily enough. Having allowed herself to be moved into the position best suited for the ride you have in mind, you scritch her ears to reassure her that she will walk away from this, as you move overtop her and line up her muzzle with your wet slit. This both in order to calm her and convince her to join in on the effort of getting you to your climax. You sink your cunt slowly onto her, moaning slightly as she holds herself still, letting you go down on her muzzle without any fuss. As you begin to piston your hips in order to get this done as fast as possible, she angles her muzzle as she licks the walls of your passage, her lupine muzzle getting slathered in pre-cum as you whisper huskily what a good girl she is. She growls softly in response, muffled by your muff as you continue mating her, as her tail starts to wag in response.";
				say "     She moans incoherently, a muffled sound coming from the animalistic wolf as you see her orgasm, the sound and shudders from her body rippling through you. Pleased by this, you press yourself down onto her firmly as you orgasm, being sure to move your body and pussy off of her muzzle, letting her breathe as you position yourself to sit down next to her. You lean in to kiss her fem-cum drenched lupine muzzle directly on the tip of her nose, as you cum a second time from the memory of the sensation. Lifting your head after the surprisingly chaste kiss on top of the not-so-chaste ride, she pants as she inhales fresh air, softly growling out something she probably wants you to hear, being as tired as you both are, you look back at her to see if she would repeat that, however is seems that she passed out from the exertion.";
				say "     Having gotten off and shown the wolfess who is boss, you get up once your legs recover from the ride you just went on, picking up your things and getting on your way.";
				CreatureSexAftermath "Feral Wolf Bitch" receives "OralPussy" from "Player";
			else:
				LineBreak;
				say "     Before you can do anything though, you realize you lack any proper equipment to use on the wolf. You sigh and sadly walk away.";
	else:
		WaitLineBreak;
		say "     Deciding against it, you turn around and head off, leaving the wolf to the mercy of any other creature that might come across it.";

FeralWolfBitchSpecialFightNumber is a number that varies.

to say FeralWolfBitchDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		say "     A feral-looking wolf on four feet, almost three quarters your height, with great muscles under dense black fur. She has dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine teeth. Her legs are thick and powerful looking, her whole form obviously built for hunting fast prey. Her fur is matted with grime, muck, and some other substance, giving her a very rugged look. When she sees you, her lips peel in a snarl, exposing those deadly teeth. [one of]'Grrrrrrrr!' she growls[or]She barks aggressively[or]She howls[at random], charging at you with feral rage in her eyes.";
	else:
		if FeralWolfBitchSpecialFightNumber is 0:
			say ""; [dealt with at the source]
		else if FeralWolfBitchSpecialFightNumber is 1: [description of one of the wolves of the wolf pack in the forest]
			say "     A member of the wolf-pack steps forward, growling as she closes up to you. She is a feral-looking wolf on four feet, almost three quarters your height, with great muscles under dense black fur. She has dark [one of]red[or]yellow[or]blue[at random] eyes and white, sharp, canine teeth. Her legs are thick and powerful looking, her whole form obviously built for hunting fast prey. Her fur is matted with grime, muck, and some other substance, giving her a very rugged look.";
			say "     As her pack's chosen prey, the beast doesn't hesitate one second before she pounces on you, lips peeled back to expose her dangerous teeth. [one of]'Grrrrrrrr!' she growls[or]She barks aggressively[or]She howls[at random], a look of feral rage in her eyes.";
		else if FeralWolfSpecialFightNumber is 2: [description of the leader of the wolf pack in the forest]
			say "     Finally the last member steps forward, growling as she closes up to you. She looks bigger than the other ones, almost a third of your height, with great muscles under dense white fur. She has icy blue eyes and white, sharp, canine teeth. Her legs are thick and powerful looking, her whole form obviously built for hunting fast prey. Her fur is almost as dark as coal, and it doesn't shine, almost as if absorbing all the light around her.";
			say "     As her pack's last standing predator, the beast doesn't hesitate one second before she pounces on you, lips peeled back to expose her dangerous teeth. [one of]'Grrrrrrrr!' she growls[or]She barks aggressively[or]She howls[at random], a look of feral rage in her eyes.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Feral Wolf"; [name of the overall species of the infection, used for children, ...]
	add "Feral Wolf Bitch" to infections of CanineList;
	add "Feral Wolf Bitch" to infections of FeralList;
	add "Feral Wolf Bitch" to infections of NatureList;
	add "Feral Wolf Bitch" to infections of FemaleList;
	add "Feral Wolf Bitch" to infections of TaperedCockList;
	add "Feral Wolf Bitch" to infections of KnottedCockList;
	add "Feral Wolf Bitch" to infections of SheathedCockList;
	add "Feral Wolf Bitch" to infections of QuadrupedalList;
	add "Feral Wolf Bitch" to infections of FeralmindList;
	add "Feral Wolf Bitch" to infections of PackmindList;
	add "Feral Wolf Bitch" to infections of TailList;
	now Name entry is "Feral Wolf Bitch"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She slams into you and bites down.[or]She roars and swipes at you with her claws.[or]She pounces you and pins you down, tearing into you with her claws.[at random]";
	now defeated entry is "[BeatFeralWolfBitch]";
	now victory entry is "[Feral Wolf Bitch attack]";
	now desc entry is "[FeralWolfBitchDesc]"; [ Description of the creature when you encounter it.]
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
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 8; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 1; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 2;
	now SeductionImmune entry is false;
	now libido entry is 40; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "wolf bitch fur";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "wolf bitch milk";
	now CumItem entry is "wolf fem-cum";
	now TrophyFunction entry is "[GenerateTrophyList_Feral_Wolf_Bitch]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]powerful[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "Feral Wolf Male"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is ""; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;



Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Feral Wolf Bitch Infection"	"Infection"	""	Feral Wolf Bitch Infection rule	1000	false
"FemaleFang's Beta"	"NPCSharedInfection"	""	Fang's Beta rule	1000	false

This is the Feral Wolf Bitch Infection rule:
	if HP of Fang is listed in { 3, 4 }:
		make no decision; [Moved to FemaleFang's Beta]
	if BodySpeciesName of Player is "Feral Wolf":
		trigger ending "Feral Wolf Bitch Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if Player is  female:
				say "Giving in to your feral nature, you prowl the city street, looking for worthy males to dominate and satisfy your lustful needs. Your mind is gone and now only the most primal of instincts remain.";
			else:
				say "Giving in to your feral nature, you prowl the city street, looking for worthy packmates to join you in your wandering. Your mind is gone and now only the most primal of instincts remain.";
		else:
			say "Returning to modern society proves to be hard for you. Your feral tendencies make it hard for you to be accepted in large urban areas, so you move out to a more secluded area in the mountains. You make your living by hunting deer and the like, your wolf senses giving you a major edge over anything else, and soon enough you have a comfortable and stable life to live till you're a gray muzzle.";

This is the FemaleFang's Beta rule:
	if HP of Fang is listed in { 3, 4 } and Fang is Female and BodySpeciesName of Player is "Feral Wolf":
		trigger ending "FemaleFang's Beta";
		if humanity of Player < 10:
			say "     Giving in to your feral nature, you return to the Library and submit yourself to Fang again, letting her take you as she pleases. After a wild fucking, she leads you off into the city to form a pack of her own with you as her [if Player is female]slutty beta bitch[else]slutty beta stud[end if].";
		else if Felinoid companion is tamed:
			say "     When the military comes, you worry about how they'll react to you and Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. But you are surprised as they move towards her and she slowly stretches and stands upright, resembling the larger alpha wolves you've seen in the city than the feral wolfess she once was. Despite a little unsteadiness on her reformed legs, she speaks confidently, telling a tale about how you rescued her from a fate of being a fucktoy in a wolf pack and brought her to safety. She alludes in passing that your current form is a result of the rescue, but doesn't elaborate. Having heard many tales from those barely able to escape after being transformed, the soldiers don't question this rather loosely accurate story. You pad over to your alpha and lean against her while she scritches your ears.";
			say "     When they turn their attention to your felinoid companion, they are easily enough swayed to feel similar sympathy for him when you tell them about how you both got away from those plant vines in the park, his injury and eventual recovery. You add that he's been a loyal bodyguard since then. There are some concerns, but they are inclined to trust your word. It certainly helps that the big feline is on his best behavior and makes no trouble for the soldiers.";
			say "     At the military's camp, Fang and the felinoid are given a quick examination, but somehow manage to avoid closer scrutiny. You suspect the one female aid who left their examination room with a rather musky scent on her played a part in it somehow. Fang seems particularly pleased with herself as well, but that may just have been your imagination. Regardless, given how bad things are getting the city, they don't get around to fully testing your seemingly obedient pair of companions, accepting your word that they're loyal guardians you found and nothing more.";
			say "     Still having some humanity, despite your more animal form, Fang takes charge of you once your release from the military. She moves in with another female wolf and soon becomes the mistress of her ranch house as she submits as Fang's newest packmate. You live with her in this newly acquired home, to which she adds a few others with lupine infections, adding them to her little pack of lovers. While the others quickly become nothing but slutty pets, she keeps you as her [if female]beta.[else]beta breeding stud letting you lead your life outside the home and with your other friends and lovers. You are still expected to satisfy Fang and the other slutty pack-mates. Fang, being a fertile alpha, soon has pups growing in her tummy with the other females growing round with pups as well.";
			say "     Even your felinoid companion is made to accept Fang as his superior after a short struggle. With you as her lupine mate, the big wolf is clearly the victor between the two and she celebrates by having the feline lick her pussy clean of your seed after tauntingly fucking you in front of the cowed cat. Over time, Fang trains him well, keeping his lustful urges reined in around you though several other females are drawn in by the felinoid's musk. The wolf generously allows the cat to breed some of them, turning them into a small harem of felinoid females to keep him satisfied and spread his cubs into the area. The others she dominates, keeping them for you to breed, giving the big wolf a sizable stable of breeding bitches among the local women. Even as these wolf and felinoid cubs spread out, they always respect Fang's ownership of you.";
		else:
			say "     When the military comes, you worry about how they'll react to you and Fang. Secretly your lupine alpha, you keep that fact hidden when speaking to the military. But you are surprised as they move towards her and she slowly stretches and stands upright, resembling the larger alpha wolves you've seen in the city than the feral wolf she once was. Despite a little unsteadiness on her reformed legs, she speaks confidently, telling a tale about how you rescued her from a fate of being a fucktoy in a wolf pack and brought her to safety. She alludes in passing that your current form is a result of the rescue, but doesn't elaborate. Having heard many tales from those barely able to escape after being transformed, the soldiers don't question this rather loosely accurate story. You pad over to your alpha and lean against her while she scritches your ears.";
			say "     Still having some humanity, despite your more animal form, Fang takes charge of you once your release from the military. She moves in with another female wolf and soon becomes the mistress of her ranch house as she submits as her newest packmate. You live with her in this newly acquired home, to which she adds a few others with lupine infections, adding them to her little pack of lovers. While the others quickly become nothing but slutty pets, she does keep you as [if female] as her beta.[else] the beta breeding stud, letting you lead your life outside the home and with your other friends and lovers. You are still expected to satisfy Fang and the other slutty pack-mates. Fang, being a fertile alpha, soon has pups growing in her tummy with the other females growing round with pups as well.";



Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"wolf bitch fur"	"A tuft of black, gray, and brown fur that looks like it has been pulled out of the coat of a wolf. It's nicely soft."	0	wolf bitch fur

wolf bitch fur is a grab object.
It is temporary.
wolf bitch fur is infectious.
Strain of wolf bitch fur is "Feral Wolf Bitch".
Usedesc of wolf bitch fur is "[WolfBitchFurUse]";

to say WolfBitchFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";

instead of sniffing wolf bitch fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"wolf fem-cum"	"A vial of thick, musky, clear liquid. [']Infection sample - species: wolf['] is written on the side."	1	wolf fem-cum

wolf fem-cum is a grab object. wolf fem-cum is cum.
Wolf Fem-cum is infectious. Strain of Wolf Fem-cum is "Feral Wolf Male".

instead of sniffing wolf fem-cum:
	say "The wolf fem-cum smells of wolves and pussy, naturally.";

Usedesc of Wolf Fem-cum is "[Wolf Fem-cum use]";

to say Wolf Fem-cum use:
	say "You shrug and gulp down the clear liquid, gasping as you feel a sudden heat in your groin. Moaning as you rub your crotch, you realize that you need to get bred, NOW!";
	if Libido of Player < 75:
		now Libido of Player is 75;

Table of Game Objects (continued)
name	desc	weight	object
"wolf bitch milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Wolf Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	wolf bitch milk

wolf bitch milk is a grab object.
wolf bitch milk is milky.
Purified of wolf bitch milk is "distilled milk".
wolf bitch milk is infectious.
Strain of wolf bitch milk is "Feral Wolf Bitch".
Usedesc of wolf bitch milk is "[wolf bitch milk use]";

to say wolf bitch milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the wolf milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing wolf bitch milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Feral Wolf Bitch ends here.
