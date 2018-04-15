Campus Gym by UrsaOmega begins here.
[Version 1 - first release]
[Adds a gym to the campus where you can boost your stats and (of course) have sweaty sex]

[
***HP States of Randy***
0: Haven't met Randy
1: Met Randy
2: Fucked Randy

]

Section 1 - Finding the gym

Working Out is a situation.
the sarea of Working Out is "Campus".

Instead of resolving a Working Out:
	say "     You come across a large building; through the glass windows you can see rows of exercise equipment. The whole setup is still in remarkably good shape. This must have been the campus's gym! Interestingly enough, it appears to still be occupied; you can see some figures moving inside. Do you want to check inside now?";
	if player consents:
		say "You mark the location of the gym on your map before walking through the entrance into the strange gym.";
		move player to Campus Gym;
	else:
		say "You mark the location on your map - it might be worth checking out later.";
	change southwest exit of Athletic Street to Campus Gym;
	change northeast exit of Campus Gym to Athletic Street;
	now Working Out is resolved;

Section 2 - Campus Gym

Campus Gym is a room. It is fasttravel. It is private.

The description of Campus Gym is "The interior of the gym is in even better shape than the exterior; the equipment all appears to be clean, and in good order, and the room itself has been kept quite pristine and orderly. Gear and supplies stacked against some of the walls is the only indicator that something is off outside. Some of the equipment is occupied by humanoid figures, focusing on their workouts.".

instead of sniffing Campus Gym:
	say "The room smells like sweat and hard work.";

Section 3 - Randy

Randy is a man.
Randy is in Campus Gym.
The description of Randy is "A tall, muscular male rhino-man wearing a tank top and track pants. A nametag states his name as simply 'Randy'. From the way he walks around the gym floor helping people, you suspect he's a former (current?) staff member of the gym.".
The conversation of Randy is { "What's up?" }.
lastworkout is a number that varies. lastworkout is usually 500.
workoutprice is a number that varies. workoutprice is usually 100.
the HP of Randy is usually 0.
wrestlechance is a number that varies. wrestlechance is 50.

instead of conversing Randy:
	if (lastworkout - turns < 8):
		say "You're still pretty exhausted from your last workout. Maybe some other time?";
	else:
		say "[if HP of Randy is 0]     'Hey there! Always good to see a fresh face around here... Especially when that face doesn't belong to somethin['] that's tryin['] to rape or kill me. The name's Randy, and this here is my gym. Well, it wasn't mine originally, but after everything went down, I kinda adopted it. I've always liked this place, an['] I felt some kinda loyalty to it, ya know? So I kept it runnin[']! It's more important than ever, really - you'll need an extra muscle or two to get around outside, right? Plus, I've turned some of the back rooms into shelters for people who aren't too far gone. Say, you wouldn't happen to be needin['] some physical trainin['], would ya? I'd be happy to teach ya, but I'm afraid I'm gonna need some freecred for my trouble. My going rate is 100 freecred a session, with a 35 increase each session... Gotta trade for supplies for the survivors, and supplies ain't cheap right now. You interested?'[else] 'Back for more! What kinda training ya wanna do today? All sessions cost [workoutprice] freecred each!'[end if]";
		if HP of Randy is 0, now HP of Randy is 1; [if you haven't met him... You have now!]
		if freecred >= workoutprice:
			setmonster "Rhino";
			now sextablerun is 0;
			blank out the whole of table of fucking options;
			choose a blank row in table of fucking options;
			now title entry is "Strength training";
			now sortorder entry is 1;
			now description entry is "Increase your strength stat.";
			choose a blank row in table of fucking options;
			now title entry is "Dexterity training";
			now sortorder entry is 2;
			now description entry is "Increase your dexterity stat.";
			choose a blank row in table of fucking options;
			now title entry is "Stamina training";
			now sortorder entry is 3;
			now description entry is "Increase your stamina stat.";
			choose a blank row in table of fucking options;
			now title entry is "Leave";
			now sortorder entry is 4;
			now description entry is "Decide against training for the moment.";
			sort the table of fucking options in sortorder order;
			while sextablerun is 0:
				repeat with y running from 1 to number of filled rows in table of fucking options:
					choose row y from the table of fucking options;
					say "[link][y] - [title entry][as][y][end link][line break]";
				say "Pick the corresponding number> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
					now current menu selection is calcnumber;
					choose row calcnumber in table of fucking options;
					say "[title entry]: [description entry][line break]";
					say "Is this what you want?";
					if player consents:
						let nam be title entry;
						clear the screen and hyperlink list;
						now sextablerun is 1;
						if nam is "Strength training":
							say "[strtraining]";
						else if (nam is "Dexterity training"):
							say "[dextraining]";
						else if (nam is "Stamina training"):
							say "[statraining]";
						else if (nam is "Leave"):
							say "You decide not to train right now.";
		else:
			say "You can't afford training right now...";

the fuckscene of Randy is "[randysex]".

to say randysex:
	if HP of Randy < 2:
		say " 'Whoa, hey - slow down there a bit. Can't say I'm not flattered, but I hardly know ya!'";
	else if (lastfuck of Randy - turns < 6):
		say "'Gosh, I'm still tired from last time. Give me a bit more recovery time, would ya?'";
	else:
		setmonster "Rhino";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Naked wrestling";
		now sortorder entry is 1;
		now description entry is "Wrestle and fuck Randy.";
		choose a blank row in table of fucking options;
		now title entry is "Shower sex";
		now sortorder entry is 2;
		now description entry is "Take a shower with Randy.";
		choose a blank row in table of fucking options;
		now title entry is "Endurance sex";
		now sortorder entry is 3;
		now description entry is "Practice your sexual stamina with Randy.";
		choose a blank row in table of fucking options;
		now title entry is "Leave";
		now sortorder entry is 4;
		now description entry is "Forget about fucking Randy for now.";
		sort the table of fucking options in sortorder order;
		while sextablerun is 0:
			repeat with y running from 1 to number of filled rows in table of fucking options:
				choose row y from the table of fucking options;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Naked wrestling":
						say "[wrestlesex]";
					else if (nam is "Shower sex"):
						say "[showersex]";
					else if (nam is "Endurance sex"):
						say "[endurancesex]";
					else if (nam is "Leave"):
						say "You decide not to fuck Randy right now.";

to say strtraining:
	say "     You hand over the freecred and Randy leads you over to the weightlifting equipment, directing you to an unused set. He looks you over, formulating your workout in his head. Instructing you on proper form, he gives you a beginner weight to test you out. [if strength of player > 25]You heft it over your head with one hand as easily as if it were made of feathers. Randy gives an awed whistle. 'Alright, now you're just showin['] off. I doubt you'll get much in the way of trainin['] from this, but for my own curiosity, let me find something more, uh, suited to your abilities.'[else if strength of player > 18]You heft it over your head with little effort. Randy nods appreciatively. 'Not bad. I doubt I'll be able to bulk you up more than that. Still, never a bad idea to keep yerself in top shape, eh?'[else if strength of player > 13] It takes quite a bit of exertion from your part, but you're able to lift the weight... Just barely. Randy gives you an amused snort. 'Well, we'll start here, and work our way up. Definitely some room for improvin'.'[else]Try as you might, you can't even begin to lift the weight. Randy gives a heavy sigh. 'I'll go an['] find somethin' lighter. We've got some work to do...'[end if]";
	decrease freecred by workoutprice;
	if strength of player < 18:
		say "     You lift for what feels like hours, toiling under Randy's guidance to work your various muscle groups out. By the time you're finished, you feel like your limbs are made of jelly. You know that after you're done wincing, you'll be a bit stronger.";
		say "[bold type]Your strength has increased by 1![roman type]";
		increase strength of player by 1;
		increase workoutprice by 35;
	else:
		say "     You lift for what feels like hours under Randy's approving observation, relishing the tense-relax rhythm of your muscles as you hoist an increasingly heavy series of weights. You feel victorious as you lift the final, heaviest one, the burn in your limbs only serving to drive you to greater feats of strength. Randy, grinning from your performance, give you a pat on the back, and you feel ready to take on the world!";
		say "[bold type]Your morale has increased by 5![roman type]";
		increase morale of player by 5;
	now lastworkout is turns;
	follow the turnpass rule;
	if waiterhater is 0, wait for any key;
	say "     Randy looks over your worked-out body with a different light in his eyes. 'You know, yer not half bad lookin['] after a workout... Pretty sexy, if you don't mind me sayin[']. Actually, if yer not too tuckered out, would you be interested in some, uh... Naked wrestling? It's kind of a popular pasttime around here...' The rhino-man is blushing through his thick grey skin. Do you want to try some [']naked wrestling['] with him?";
	if player consents:
		say "[wrestlesex]";
		if HP of Randy < 2, now HP of Randy is 2;
	else:
		say "You politely decline his offer. He looks a bit disappointed, but he seems to understand. ";

to say dextraining:
	say "     You hand over the freecred and Randy leads you over to an area with padded yoga mats and mirrors. He positions you on one mat, then takes his position facing you. He leads you through a number of different motions, beginning with some simple warmups and moving into increasingly complex movements. You [if dexterity of player > 25]follow Randy's movements easily, the two of you moving in perfect synch. You handle even the most difficult positions effortlessly, your body moving like flowing water[else if dexterity of player > 18]follow along just fine, but some of the more complex movements make you stumble. Randy helps you through them, and soon you're moving along with him easily[else if dexterity of player > 13]struggle to follow even the most basic movements, your inflexible and uncoordinated body rebelling against you. Thankfully, Randy is patient with you, helping you through some simple motions[else]trip over yourself just trying to get into the first position. Thankfully, Randy is patient with you, and you pick up the techniques quickly[end if].";
	decrease freecred by workoutprice;
	if dexterity of player < 18:
		say "     After the session, you feel much more flexible than when you started... Not to mention much more relaxed.";
		say "[bold type]Your dexterity has increased by 1![roman type]";
		increase dexterity of player by 1;
		increase workoutprice by 35;
		follow the turnpass rule;
	else:
		say "     After the session, you feel proud that you were able to handle the session with ease; you feel centered, both physically and mentally, ready to take on any challenges today throws at you.";
		say "[bold type]Your morale has increased by 5![roman type]";
		increase morale of player by 5;
		LineBreak;
	now lastworkout is turns;
	say "     Randy comes up to you with a smile on his face and you note a slight bulge in his pants. 'Hey, uh...' he says embarrassedly, '...You wanna grab a shower? You know, uh, together?'";
	if player consents:
		say "[showersex]";
		if HP of Randy < 2, now HP of Randy is 2;
	else:
		say "You politely decline his offer. He looks a bit disappointed, but he seems to understand. ";

to say statraining:
	say "     You hand over the freecred and Randy leads you over to a set of treadmills. He sets you up on one of them, starting you on a walking pace. He continually increases the pace [if stamina of player > 25]and you tackle each speed as easily as if you were taking a walk in the park. By the end of your session, you've practically run a marathon, but you find yourself only slightly winded; Randy practically gives you a standing ovation.[else if stamina of player > 18]and you tackle each speed competently, managing to keep your pace on everything but the fastest sprint. You finally yield as you're about to be thrown off the treadmill by the high speed; Randy nods approvingly at your impressive performance.[else if stamina of player > 13]and you try your best to keep pace with the treadmill, huffing and puffing as you push your stamina to the limit. Randy tries to cheer you on, but you have to yield far sooner than you wanted to, gasping for breath.[end if]";
	decrease freecred by workoutprice;
	if stamina of player < 18:
		say "     Your legs feel like rubber and you gulp down every breath of air like it's your last, but you feel like you'll be able to run just a little bit further next time thanks to your training.";
		increase stamina of player by 1;
		increase workoutprice by 35;
		follow the turnpass rule;
	else:
		say "     Your ability to handle everything the treadmill could throw at you put you in a good mood - your body's ability to handle even the greatest of challenges lifts your spirits.";
		increase morale of player by 10;
	now lastworkout is turns;
	say "Randy gives me a lusty grin. 'Hey, uh, would you be interested in some stamina training of a... Different kind?'";
	if player consents:
		say "[endurancesex]";
		if HP of Randy < 2, now HP of Randy is 2;
	else:
		say "You politely decline his offer. He looks a bit disappointed, but he seems to understand. ";

to say wrestlesex:
	say "     'C'mon, then, we've got private rooms for just this sort of thing!' he says with a wide grin. He takes your hand and leads you to one of the rooms in the back of the gym. The room has mirrored walls and a padded floor - it was probably used for teaching private classes before. Upon closing the door, Randy starts shedding his clothing, motioning for you to do the same. You raise an eyebrow at him before following suit. 'Not one for foreplay, are you?' you quip as he adopts an odd, wide stance. 'This [italic type]is[roman type] the foreplay!' he responds before launching himself at you!";
	say "     Thankfully, your experience in the city has prepared you for surprise attacks and you quickly lower yourself as well, stopping the flying mass of grey flesh - just barely. 'Wait - you meant actual wrestling?' you ask. Randy laughs before responding: 'Yeah! How else are we going to decide who goes where?!' He switches to a grapple, attempting to take you down to the mat. You could actually wrestle him (Y)... Or just throw the fight to get him inside you (N).";
	[adjusting chance of coming out on top]
	now wrestlechance is 50;
	if strength of player > 25, increase wrestlechance by 10;
	if strength of player > 20, increase wrestlechance by 10;
	if strength of player > 15, increase wrestlechance by 10;
	if bodytype of player is "Wrestling Wolf", increase wrestlechance by 15;
	if player is submissive, decrease wrestlechance by 25;
	if player consents:
		if a random chance of wrestlechance in 100 succeeds: [success - player tops]
			say "     You return the grapple, but the rhino's strength is overwhelming, and your combined bodies fall to the mat with a soft thud. Randy rolls on top of you, rubbing his hardening cock against your [bodydesc of player] body as he attempts to pin you. Gathering your strength, you reverse the pin, ending up straddling his muscular form. [if cocks of player > 0]You take the opportunity to frot your cocks together a bit while giving him a lewd smile. [else if cunts of player > 0]You take the opportunity to rub your moist cunt against him while giving him a lewd smile. [end if]He manages to slip out from under you, retreating back a few steps and re-adopting his wide stance. You scramble to your feet and do the same. You and your opponent circle each other before lunging at each other again. You exchange grapples like this for several minutes until, finally, you have a sweating, panting Randy pinned beneath you. 'Yield! I yield. Jeez, yer a strong one,' he says with a dopy grin. Now that you've established your positions, you can get down to the good stuff.";
			if waiterhater is 0, wait for any key;
			say "     Both you and Randy are panting and covered in a thin sheen of sweat from your bout, and run your hands over his grey-skinned, fit body, admiring the tone of his muscles. You lean down and tease one of his nipples with your tongue as you reach a hand down between his legs, stroking his rock-hard rhino cock. He moans as you suck on his nipple before you move your tongue downwards across his washboard abs; the salty taste of his sweat is almost pleasant on your tongue.";
			say "     You work your way down his front, licking and nipping at his tough skin, until you come to his stiff manhood. You take a good whiff of his masculine musk before leaning back to survey his entire body again[if cocks of player > 0], your own cock painfully hard[else if cunts of player > 0], your cunt wet with arousal[end if], and you find yourself with a choice between using his mouth (Y) or going for his [if cocks of player > 0]ass[else]cock[end if] (N).";
			if player consents:			[Oral]
				say "     You move your body over Randy's prone form, straddling him and presenting him with your [if cocks of player > 0][cock size desc of player] [cock of player] cock[else if cunts of player > 0]wet cunt[else]asshole[end if]. He licks his lips eagerly before diving in, [if cocks of player > 0]licking up your length with his thick tongue[else if cunts of player > 0]teasing your labia with his thick tongue[else]teasing your tight anus with his thick tongue[end if]. Soon he's [if cocks of player > 0]engulfed your entire length in his muzzle, suckling on it and caressing it with his tongue[else if cunts of player > 0]tongue-fucking you while sucking on your clit intensely[else]tongue-fucking your ass enthusiastically[end if].";
				if cocks of player > 0:
					say "     You grab his thick horn, pulling him down your length. He gives a soft grunt of surprise, but begins bobbing his head up and your [cock of player] cock more eagerly than before, doubling down on his oral stimulation. Your cock slips into his throat effortlessly; you wonder how much experience Randy has with this sort of thing. Feeling your orgasm coming on, you start humping his face, relishing the wet warmth of his mouth. Meanwhile, he moves one of his hands to his think rhino cock, stroking in time with your thrusts. One swipe of his tongue under your tip is enough to send you over the edge, filling his mouth with your [cum load size of player] load, which Randy happily sucks down.";
				else if cunts of player > 0:
					say "     You grind your cunt into Randy's face, moaning as he stimulates you expertly with his thick tongue. Sometimes he pulls back, stimulating you simply through blowing his hot breath on your sensitive skin, and sometimes he buries his muzzle as deep as it can go beneath your folds, stimulating you deep and hard with his tongue. His sucking, licking stimulation grows too great for you to handle and you clamp your legs around his head, clenching around his tongue and crying out as you ride out your orgasm, covering his muzzle in femcum.";
				else:
					say "You press your asshole down into Randy's muzzle harder, and he obliges, tonguefucking your hole with more force. Sometimes he pulls back to tease your ring before diving his muzzle back between your buttcheeks, penetrating you deeply with his thick tongue. You moan as he drives you to an anal orgasm, your muscles spasming around his thick tongue as your rear blooms with warm pleasure.";
				if waiterhater is 0, wait for any key;
				say "     Randy's hand is flying up and down his cock now, and he cums with a tensing of muscles and a grunt, spurting rhino cum over the both of you. You disentangle your bodies, collapsing on the padded floor side by side, panting after your session. Randy smacks his lips dramatically, cleaning stray juices from his muzzle. [if HP of Randy is 0]'Damn, haven't been fucked like that in a long time!'[else]'Fuck, you're good at that!'[end if], Randy pants. 'Rematch sometime?' he says hopefully as you disentangle your bodies. He finds a towel and you dry off before getting your gear together and leaving.";
				infect "Rhino";
				now lastfuck of Randy is turns;
				stop the action;
			else:
				if cocks of player > 0:		[Anal]
					say "     You position yourself behind Randy, rubbing your [cock size desc of player] [cock of player] cock between his tight buttcheeks while you raise his thick legs over your shoulders. Realizing you have no lube, you wet a few fingers in your mouth before dipping them between his thighs. Randy lets out a manly sigh as you tease his tight, muscular anus with your slick fingers, spreading your saliva around the rim of his hole. Randy rolls his hips back against you eagerly, and you press a finger inside of him, finding him tight but accommodating - he seems to be no shy virgin when it comes to taking it under the tail. You slip a few more fingers in, scissoring them outward to stretch and lubricate his ass. Of course, you make sure to tease his prostate in the process, making his thick rhino meat twich and drip precum. Finally, you decide he's ready to be fucked, and withdraw your fingers before replacing them with the tip of your [cock of player] cock.";
					if waiterhater is 0:
						wait for any key;
					say "     You quickly establish a rhythm, slowly pulling your length from the hot embrace of his ass before feeding it back in, relishing the way his ring spreads around your [cock of player] cock. You move a spare hand to Randy's thick rhino meat, which has been drooling precum like a broken tap ever since you first pinned him. You spread some of that precum over his length, using it to help you slowly stroke him in time with your thrusts. 'C'mon, you can fuck me harder than that!' Randy says huskily. You oblige, pounding his hole with quick, powerful thrusts, speeding up the jerking of his cock in kind. The room fills with the sound of flesh hitting flesh and your combined grunting and sighing.";
					if waiterhater is 0, wait for any key;
					say "     Your frantic fucking reaches a crescendo as he starts to squeeze his powerful rear around your length, embracing you each time you withdraw from his ass. The gripping sensation is too much for you, and you cross the finish line with a deep thrust, pumping your [cum load size of player] load in his guts. Your hand brings Randy do his own orgasm, his rhino cock stiffening and spurting cum between your bodies. You collapse over the rhino man, panting and sweating from the exertion. [if HP of Randy < 2]'Damn, haven't been fucked like that in a long time!'[else]'Fuck, you're good at that!'[end if], Randy pants. 'Rematch sometime?' he says hopefully as you disentangle your bodies. He finds a towel and you dry off before getting your gear together and leaving.";
					infect "Rhino";
					now lastfuck of Randy is turns;
					stop the action;
				if cocks of player is 0:			[Riding]
					say "     You straddle Randy's body, reaching one hand down between your legs to position his thick rhino meat at the entrance to your [if cunts of player > 0]pussy[else]ass[end if]. Your wrestling has gotten him quite worked up, and his flared tip is dripping a copious supply of precum between your thighs. You start to sink down on his length, sighing as his glans spreads your [if cunts of player > 0]labia[else]asshole[end if] open. You slid down until you feel his hefty balls rest against your bare, [bodydesc of player] ass. Every bit of your [if cunts of player > 0]vagina[else]rectum[end if] feels stuffed with the grey malehood of the rhino. You roll your hips, working your body up and down his cock.";
					say "     Randy grunts and tries to thrust up into you, but being pinned under your body, you control the pace; you tease him by pulling off his cock slowly before slamming yourself back down, loving the feeling of being filled with thick rhino dick. Each time he bottoms out in you, you bear down on him, gripping him with your internal muscles, eliciting a moan and a jet of warm precum from Randy each time. As his orgasm nears, he brings his muscular hands to your hips, pulling you down into his powerful thrusts. With a cry, he bottoms out inside you before unloading, filling you up with thick rhino cream.[impregchance]";
					say "     You collapse on top of him, panting and sweating, dully aware of the seed dripping from your well-worked [if cunts of player > 0]snatch[else]anus[end if]. [if HP of Randy is 1]'Damn, haven't been fucked like that in a long time!'[else]'Fuck, you're good at that!'[end if], Randy pants. 'Rematch sometime?' he says hopefully as you disentangle your bodies. He finds a towel and you dry off before getting your gear together and leaving.";
					infect "Rhino";
					now lastfuck of Randy is turns;
					stop the action;
		else:					[Lose wrestling - get topped]
			say "     You return the grapple, but the rhino's strength is overwhelming, and your combined bodies fall to the mat with a soft thud. Randy rolls on top of you, rubbing his hardening cock against your [bodydesc of player] body as he attempts to pin you. Gathering your strength, you attempt to reverse the pin, ending up pinned under his muscular form. [if cocks of player > 0]He takes the opportunity to frot your cocks together a bit while giving you a lewd smile[else]He takes the opportunity to hump his cock against your skin while giving you a lewd smile[end if]. You manage to slip out from under him, retreating back a few steps and adopting a combatative stance. Randy does the same, adopting a confident grin. You and your opponent circle each other before lunging at each other again. You exchange grapples like this for several minutes until, finally, your exhausted form is pinned beneath a sweating, panting Randy. 'Good fight. I'm glad I came out on top... I've been wantin['] to do this since you came in!' he says with a dopy grin. Now that you've established your positions, you can get down to the good stuff.";
	else:						[Throw fight - get topped]
		say "     You return the grapple, but the rhino's strength is overwhelming, and your combined bodies fall to the mat with a soft thud. You give a good show of wrestling him, but your eagerness has you pinned under him without much effort. You look up at him eagerly, wiggling your hips seductively. 'Hah, not much in the mood for fightin['], are ya? Well, I can't say I'm disappointed... Been wantin['] to do this ever since you came in! Randy says, giving you a lecherous grin as he strokes his cock.";
	say "     You raise your rear up and wrap your legs around your muscled lover. Randy grunts in approval before stopping. 'Heh, first part of any good workout is the warmup...' he says with a playful grin.";
	if waiterhater is 0, wait for any key;
	if cunts of player > 0:
		say "     He moves a thick hand between your legs, feeling your growing wetness down there. He rubs your mound with his hand; the rough texture of his skin makes you shudder. He slips a finger into your moist gash, pushing it in up to the knuckle. He swirls it around a bit, curling in to rub at your sensitive spots, making you gasp and moan. He adds a few more thick fingers, scissoring them in and out of your cunt to prepare it for what's to come.";
	else:
		say "     He wets a few fingers in his mouth before moving them between your [bodydesc of player] butt cheeks. You gasp as his slick fingers find your anus and rub the saliva around the rim of your hole. Once you're relaxed, he slips one thick finger inside you, working it in up the knuckle. He works it around inside you, curling it to stimulate your prostate. He adds a few more fingers, scissoring them in and out of your ass to prepare it for what's to come.";
	say "     Judging you to be ready, he removes his fingers from you and replaces them with the flared tip of his cock. He presses against your [if cunts of player > 0]netherlips[else]asshole[end if], coaxing your entrance open with his glans. With a grunt and sigh from both your mouths, he sinks into your tight passage, spreading you around his rhinohood. Finally, he bottoms out in you, his hefty ballsack resting against your bare ass. He leaves it there for a minute, letting you adjust to his girth, while his muscular hands roam your body, tweaking your nipples and teasing your sensitive spots.";
	if waiterhater is 0, wait for any key;
	say "     He slowly withdraws his cock, leaving only the flared tip inside before sheathing himself in you again in one titanic thrust. He fucks you with long, body-quaking thrusts, each gyration of his hips filling you up with hot rhino flesh. [if cocks of player > 0]He angles his thrusts to maximize the stimulation to your prostate, making you leak precum like a leaky faucet. [end if]The rhino works your body expertly, and you lose yourself in motion of your sweaty bodies, your entire world focused on the rhino cock penetrating you.";
	if cocks of player > 0:
		say "Randy reaches down and grips [if cocks of player > 1]one of [end if]your [cock size desc of player] [cock of player] cock[smn], stroking it in time with his thrusts. ";
	say " You feel your orgasm rapidly approaching, and you tighten your legs around Randy as he leans over you, increasing the speed and intensity of his thrusts. He hilts himself deep inside you and comes with a great bellow, and you feel your [if cunts of player > 0]womb[else]rectum[end if] fill with hot, thick rhino seed[impregchance]. You're not far behind him, thanks to his stimulation, and you [if cocks of player > 0]shoot your own [cum load size of player] load across your chest[else if cunts of player > 0]cry out as pleasure blossoms in your lower half your cunt clenches around his thick manhood[else]cry out as pleasure blossoms in your lower half and your ass clenches around his thick cock[end if].";
	say "     [if HP of Randy is 0]'Damn, haven't had that good of a fuck in a long time!'[else]'Fuck, you're good at that!' [end if]Randy pants. 'Rematch sometime?' he says hopefully as you disentangle your bodies. He finds a towel and you dry off before getting your gear together and leaving.";
	infect "Rhino";
	now lastfuck of Randy is turns;

to say showersex:
								[intro shower]
	say "     Randy breaks into a wide grin at your acceptance of his offer. 'Mmm, feeling a bit dirty, huh? Well, the showers are this way...' he says, leading you to the back of the gym. A number of tiled shower cubicles have been set up here for customers to wash up after their workouts. A number of people are milling about here, either in towels or stark naked, but none of them pay you any notice as Randy guides you to an empty shower. He's already undressing himself, discarding his clothing carelessly. You follow suit, teasing him a bit as you remove your gear.";
	if waiterhater is 0, wait for any key;
	say "     He turns the water on, and you shiver a bit as the cold water hits you. Luckily, the water warms up quickly, and he produces some soap. You proceed to scrub each other, taking the opportunity to give some special attention to certain sensitive spots. The warm water and the rhino's hands work out the knots of tension in your [bodydesc of player] body, and you feel like putty in his arms.";
	say "     Soon he's groping your rear, his erect cock pressed against your [if cocks of player > 0]own[else]belly[end if] as he gives you a lusty smile. It seems your rhino has lusty intentions for you and is about to make his move. Would you rather suck him off (Y) or have him fuck you (N)?";
	if player consents: [give him oral]
		say "     You drop to your knees before your muscled lover, bringing his sizable cock in front of your face. Reaching out, you stroke it to full erection, then lean over and drag your tongue up the underside of it. When you come to the flare at the tip of his cock, you engulf it in your maw, lavishing attention on his glans with your tongue. You are rewarded with a manly sigh and a gush of salty precum as you slide your lips down his shaft. Slowly, you pull off his cock, making sure to tease his sensitive spots with your tongue. You establish a rhythm, bobbing your head up and down his length; Randy grunts approvingly and puts a guiding hand to the back of your head";
		if anallevel > 1:
			LineBreak;
			say "     You feel a little mischievous and move a hand up to play with his ballsack a bit before moving your hand between his tight, muscular cheeks, probing for his asshole. He jumps a bit at your touch, but relaxes and spreads his legs a bit, giving you access to his intimate regions, while saying 'Heh, kinky lil' thing, aren't ya?' The warm shower has relaxed Randy enough for you to first slide one, then two, fingers into his hole; you quickly seek out his prostate and stroke it, making Randy cry out and give your suckling mouth another hefty dose of pre.";
		if waiterhater is 0, wait for any key;
		say "     Your stimulation proves quite effective, as Randy is forced to brace himself against the wall of the shower to keep himself from collapsing on top of you. He begins to thrust himself into your mouth more forcefully, taking care not to feed you more than you can handle. His cock slips into your throat, and you smile as you take his cock to the root, his balls smacking against your chin. He increases the pace, and[if anallevel > 1], aided by your massaging fingers,[end if] orgasms explosively with as masculine a moan as he can muster[if anallevel > 1] with your fingers stuffed up his butt[end if]. Most of his load goes straight into your stomach, but he pulls out to shoot the last few ropes across your tongue, filling your mouth with his pungent male taste. You rise off your knees[if anallevel > 1], pulling your fingers free of his rear with a soft, wet sound,[end if] and Randy pulls you into a startlingly tender kiss as he explores his taste in your mouth.";
		infect "Rhino";
		if cocks of player > 0:
			say "     Noticing your own rock-hard [cock size desc of player] [cock of player] cock[smn], he reaches down and strokes it; the feeling of his hand and the hot water on your cock is heavenly. You break the kiss to moan into his shoulder as he strokes you expertly, varying the pace and making sure to give special attention to the sensitive spots at the tip. You cling to him as you cum, your seed washing away with the shower's flow.";
	else:					[fuckin']
		if dexterity of player > 15 and a random chance of 2 in 3  succeeds:	[Flexible enough to do face-to-face up against wall]
			say "     Randy pulls your body close before grabbing you with both arms and hoists you up, pushing your back up against the tiled wall of the shower. You gasp with surprise, but your flexible body adopts the position just fine, and you find yourself aroused by the muscular rhino grinding his body against yours. His hands move to grip your [bodydesc of player] ass, spreading your cheeks as he positions the flared tip of his cock at your [if cunts of player > 0]netherlips[else]anus[end if].";
			if waiterhater is 0, wait for any key;
			say "     He pushes in slowly, letting you sink down onto his shaft by your own weight. [if cunts of player > 0]The glans spreads your labia delightfully, and you moan as his cock plunges into your depths, spreading you around his thick meat. [else]The glans spreads your tight pucker delightfully, and you moan as his cock slides into your rectum, spreading you open around his thick meat. [end if]He has only the warm water and his copious precum to lubricate you, but your relaxing shower and the inexorable pull of gravity brings you to a rest at the base of his cock, his hefty balls resting against your bare ass.";
			say "     Randy leaves himself hilted inside you for a bit, letting you clench around his cock while he plants thick-lipped nibbles and kisses on your neck. [if cocks of player > 0]Your own [cock size desc of player] [cock of player] cock pulses needily, sandwiched between your bodies. [end if]Soon, he's thrusting up into you, filling you up with rhino meat as you wrap your legs tightly around him and grip his neck tightly with your arms. Each thrust pushes you back against the tile, filling the shower stall with the sound of wet flesh hitting wet flesh hitting tile. You gasp and moan as the rhino works you against the wall. The angle of each stroke [if cunts of player > 0] rubs your clit in just the right way[else if cocks of player > 0]makes his flared cock tip brush directly on your prostate[else]stimulates parts of your ass you didn't know you had[end if], giving you a little jolt of pleasure with each thrust.";
			if waiterhater is 0, wait for any key;
			say "     The rhino man's thorough stimulation of your nether regions eventually grows too great for you to handle, and you cry out as you ride out your orgasm wrapped around his cock[if cocks of player > 0], your own [cock of player] cock shooting its [cum load size of player] load into the space between your two bodies[end if]. Your orgasmic contractions around his cock quickly bring him to his own orgasm; he grunts as he fills your [if cunts of player > 0]pussy[else]ass[end if] with thick rhino cum.";
			LineBreak;
			say "     Randy holds you there for a while, kissing and nuzzling you while you both come down from your afterglow. Both your muscles start to get tired, so he finally lets you down, his cock sliding free of your body with a wet pop.";
			impregchance;
		else:				[pushed facefirst into wall]
			say "     Suddenly, Randy flips you around so you're facing the tiled wall. He pushes his body against yours, his stiff erection rubbing the small of your back as he plants thick-lipped nibbles along your shoulder and neck. One muscular hand wanders to your hips to hold them steady while the other positions the flared glans of his cock at your [if cunts of player > 0]labia[else]tight pucker[end if]. You moan as he rolls his hips, pressing his cock against your entrance insistently.";
			if waiterhater is 0, wait for any key;
			say "     With only the warm water of the shower and Randy's copious precum, he manages to pop the flared head inside your [if cunts of player > 0]cunt[else]ass[end if] as you grunt in unison. He begins with short thrusts, penetrating deeper on each time until his hefty balls come to rest against your bare ass. He leaves himself hilted inside you, and you clench around his thick length while his hands roam your body [if cocks of player > 0]coming to grip your [cock size desc of player] [cock of player] cock, slowly stroking it[else]stroking sensitive spots and tweaking your nipples, making you moan as your horned lover stimulates you inside and out[end if].";
			if waiterhater is 0, wait for any key;
			say "     He begins to thrust in and out of you; slowly at first, but soon he's pounding you from behind, the sound of wet flesh hitting wet flesh filling the stall. You gasp and moan as the rhino works you against the wall, spreading your legs and bracing yourself against the tile so you can push back against those powerful thrusts. The angle of each stroke [if cunts of player > 0] rubs your clit in just the right way[else if cocks of player > 0]makes his flared cock tip brush directly on your prostate[else]stimulates parts of your ass you didn't know you had[end if], giving you a little jolt of pleasure with each thrust.[if cocks of player > 0] Randy continues his reacharound as well, stroking your [cock of player] cock in time with his pounding.[end if]";
			if waiterhater is 0, wait for any key;
			say "     Randy draws out your lovemaking for as long as he can, but can't hold out forever; with a great thrust he hilts himself deep inside you, bellowing as he fills your [if cunts of player > 0]pussy[else]bowels[end if] with hot, thick rhino cum. You come as well, crying out as you [if cocks of player > 0]shoot your [cum load size of player] load against the tile of the shower[else]clench around the thick cock invading your depths[end if]. He slips his flagging cock from you with a wet pop, then simply hugs you, enjoying the rest of your shower as your afterglow fades.";
			impregchance;
								[finish scene]
	say "     You hold on to each other for a bit longer, taking a private moment together away from your troubles; you hardly notice when you run out of hot water. You eventually reluctantly, remove yourselves from the stall, drying yourselves off and putting your gear back on before heading out.";
	infect "Rhino";
	now lastfuck of Randy is turns;

to say endurancesex:
	say "     Randy leads you to one of the empty rooms in the back, closing the door behind you. Judging by the layout, you suspect this room was once some sort of personal training room, but it seems like the gym regulars use it for something a little more personal now. Randy grabs a few towels from a pile against one of the walls and lays them out on the floor, then starts disrobing. You follow suit, and soon you're both admiring each other's naked bodies. 'Alright, let's do a little... Hands-on trainin[']' Randy rumbles.";
	if waiterhater is 0, wait for any key;
	if cocks of player > 0:	[Males and herms fuck him]
		say "     He gets on all fours, his shapely rump pointed towards you. 'Fuck me 'til one of us taps out. If I only get one orgasm out of this, I'll be disappointed, ya hear? And go easy, I don't let everyone have a go at me!'";
		if anallevel is 3:
			say "     You kneel behind the prostrated rhino, bringing your [bodytype of player] face to his taut rump. 'Hey, what're you- ah!' Randy gasps as you caress his grey, wrinkled tailhole with your tongue, coating the ring of muscle liberally with your saliva. Randy gives a masculine sigh of pleasure and spreads his legs a bit, giving you better access to eat his ass out. Once his pucker is dripping with your spit, you dive in, locking your lips on his hole as you push your tongue into him, teasing his ass a bit before withdrawing. You replace your tongue with a finger, which presses easily into his passage; you work it in and out before adding a few more, scissoring them to stretch him out some; you make sure to brush his prostate a bit, drawing a gasp from Randy. Satisfied he's warmed up enough, you remove your fingers.";
			if waiterhater is 0, wait for any key;
		say "     You press your [cock size desc of player] [cock of player] cock against his hole; [if anallevel is 3]the tip slips in easily, thanks to your copious preparation[else]rubbing your tip against his hole a bit, you spread your precum around to lube it up and help relax the taut muscle[end if]. He winces and grunts as you slide into his tight ass, but takes it like a pro, relaxing and pushing back against you. Soon you're hilted deep inside him, your balls pressed against his. You grip his hips firmly and slowly pull your cock out of his, relishing the feeling of his muscular passage gripping your length until just the head is still inside; then, with a titantic thrust, you push back in, planting your malehood back in his guts. 'Yeah, that's the stuff! Hard and deep!' Randy grunts. You oblige, pounding him ferociously, the sound of flesh hitting flesh filling the room. Randy knows just how to work your manhood, squeezing and relaxing at just the right times heighten your pleasure as you fuck him. Propping himself up on one arm, he reaches the other between his legs to stroke his own length, rock hard from the pummeling you're giving his prostate. You grunt and sweat together, reveling in each other's bodies as you rut.";
		if waiterhater is 0, wait for any key;
		if (libido of player + stamina of player) < 50:
			say "     Speeding up your pace, you start to feel your climax rising; with a grunt you thrust yourself deep and come, filling his ass with your [cum load size of player] load. He's not far behind, roaring out his own orgasm as he shoots his seed over the towel below. You try to keep fucking him, but your flagging cock and libido have other ideas. Randy shoots you a look over his shoulder. 'That was it, huh? Not if I have anything to say about it...' he says with a lusty grin. Pushing up off the ground with his muscular body, he forces you onto your back on the floor. Twisting around to face you, he bears down on your softening cock still in his ass. You gasp at the sensation on your oversensitive malehood, but soon you're hard again inside him. He moves up and down on your length, using his muscular legs to slam himself down on you over and over again until you're both crying out in climax once again, thick ropes of rhino seed coating your chest. 'Now, that's more like it!' Randy says breathlessly. Randy gets off of you and you both get cleaned up and dressed.";
		else:			[Higher libido + stamina = more fuckin' power!]
			say "     Speeding up your pace, you start to feel your climax rising; with a grunt you thrust yourself deep and come, filling his ass with your [cum load size of player] load. He's not far behind, roaring out his own orgasm as he shoots his seed over the towel below. You keep thrusting as you come, pushing your hot seed deeper into his ass. You rest for barely a minute before you start again, your own cum squelching around your cock as you begin to rut your horny rhino a second time. 'Yeah! That's the stuff! Fill me again, stud!' Randy grunts as you pound him with renewed vigor, your spent seed acting as lubricant. He's hard again, too, stroking along with your thrusts as you fuck him. You go for much longer this time before you come, again shooting your load into his ass while he comes on the now-soaked towel beneath him. You pull your softening cock from his hole, admiring your handiwork as your cum drips from his used ass. 'Damn, that was good. I'm not sure if I'll be able to sit right for a while...' Randy says breathlessly. You help him up and you both get cleaned up and dressed.";
	else: [Females and genderless ride him]
		say "     He lies back, his huge, grey malehood on full display. He strokes it to full erection before beckoning you over. 'Fuck me 'til one of us taps out. If I only get one orgasm out of this, I'll be disappointed, ya hear? Don't hold back!' You straddle his naked body, bringing his leaking, flared tip of his cock to your needy [if cunts of player > 0]feminine folds[else]rear pucker[end if] with one hand. You tease him, rubbing his glans over your entrance until it's dripping with his precum[if cunts of player > 0] and your females juices[end if]. He places his meaty hands on your hips, tugging you down onto his cock, the flared tip slipping past your [if cunts of player > 0]labia[else]anus[end if] with a slick pop. You moan as you slide down his length, his thick meat spreading you open in the most satisfying way as you come to a rest on top of him, his malehood hilted deep within you. Pushing yourself up off his cock until only his glans is inside you, you propel yourself down, filling your [if cunts of player > 0]pussy[else]pucker[end if] back up with that warm, thick man-meat. You start off with a slow pace, luxuriating in the feeling of his malehood stretching you, but you quickly speed up, slamming your hips up and down on top of him. You vary the pace to try and draw things out, but you feel your orgasm coming on quickly.";
		if (libido of player + stamina of player) < 50:
			say "     You bounce on his length a few more times before you reach your climax, your [if cunts of player > 0]cunt[else]ass[end if] spasming around his length as you ride out your orgasm. He's not far behind, grunting as he thrusts his hips up into before cumming, hot spurts of rhino cum shooting up into you and dripping down your thighs. You try to ride his flagging erection some more, but you just don't have it in you. Randy adopts a disappointed look. 'That was it, huh? Not if I have anything to say about it...' he says with a lusty grin. He gets out from underneath you, repositioning you so you're on all fours with him taking his place behind you. One muscular hand holds your hips steady while the other guides his already hard cock between your legs, searching for your already-used entrance. Finding your [if cunts of player > 0]dripping vagina[else]oozing pucker[end if], he pushes his flared tip back in, causing some of his seed to squelch out around his cock and drip down your thighs. Thanks to your previous fucking, he slides in easily, and begins fucking you again. He quickly works himself up to quick, deep thrusts as he ruts you a second time. His meaty cock drives your pleasure even higher, and your arms nearly give out as he drives you to another body-shaking orgasm. Hilting deep inside you, he roars out his second orgasm, once again filling you with warm rhino creme. He pulls his softening cock out of you and admires his handiwork; you can feel his double load dripping in thick white rivulets from your well-bred [if cunts of player > 0]cunt[else]ass[end if]. 'Now, that's how you fuck!' he says breathlessly. He helps you up and you both get cleaned up and dressed";
		else:
			say "     You bounce on his length a few more times before you reach your climax, your [if cunts of player > 0]cunt[else]ass[end if] spasming around his length as you ride out your orgasm. He's not far behind, grunting as he thrusts his hips up into before cumming, hot spurts of rhino cum shooting up into you and dripping down your thighs. You continue to ride his erection as he orgasms, enjoying the feeling of warmth spreading throughout your [if cunts of player > 0]vagina[else]guts[end if]. You only rest for a second before you're moving up and down his flagging length again, working him back to full erection. His cum squelches out around his cock, dripping down his length as you ride him for a second time. 'Damn, you're insatiable!' he exclaims as you pick up the pace; now he's moving his hips to counter your movements, your bodies pounding together with each thrust. You quickly work yourself to a second screaming orgasm, clamping down around Randy's thick length again; as before, he's not far behind, grunting as he shoots another load of hot, sticky rhino cum into your [if cunts of player > 0]cunt[else]rectum[end if]. You collapse on top of him, enjoying the feeling of the slick seed dripping from your well-used [if cunts of player > 0]netherlips[else]pucker[end if]. 'Damn, that was good. I'm gonna be a bit sore later...' he says breathlessly as you get off him. You help him up and you both get cleaned off and dressed.";
		impregchance;
		impregchance;
		infect "Rhino";
		infect "Rhino";
		now lastfuck of Randy is turns;

Campus Gym ends here.
