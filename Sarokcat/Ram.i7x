Version 2 of Ram by Sarokcat begins here.
[Version 2.3 - Reworked player victory scenes. General tidying up. - Lithophene]

"Adds a Ram to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Insertion/Responses

ramlosstick is a number that varies.
novicsex is a number that varies.
ramvar is a number that varies.

to say ramdesc:
	setmongender 3;
	if ramslut is true and a random chance of 1 in 4 succeeds:
		now ramvar is 2;
		cmbtshift;
		say "     As you go about your business, you spot a familiar set of horns and can't hold back your [if libido of player > 45]leer[otherwise]grin[end if] as you approach one of the sissy rams you've broken in. It doesn't seem like he's noticed you yet, but there's no way you could miss that wooly ass of his - you've already had plenty of fun [if player is dominant]fucking it raw[otherwise]pounding away at it[end if]. Just the thought of sinking your cock into his warm depths has your [if cocks of player > 0]cock hardening[otherwise if cocks of player > 1]cocks hardening[otherwise if cocks of player is 0]body tingling[end if] in anticipation. The ram bleats in surprise as you call out to him before turning around to face you. His eyes glaze over as he looks down at your crotch and shivers in lust and need before shaking his head and taking on a fighting stance. You might've managed to break this one in, but it seems that he still feels the need to pretend to put up a fight. [if player is dominant]That's okay, though. You don't mind reminding him that you're his better in every way.[end if]";
	otherwise if "Dominant" is listed in feats of player:
		if ramslut is true and a random chance of 1 in 2 succeeds:
			now ramvar is 2;
			cmbtshift;
			say "     As you go about your business, you spot a familiar set of horns and can't hold back your [if libido of player > 45]leer[otherwise]grin[end if] as you approach one of the sissy rams you've broken in. It doesn't seem like he's noticed you yet, but there's no way you could miss that wooly ass of his. You've already had plenty of fun [if player is dominant]fucking it raw[otherwise]pounding away at it[end if]. Just the thought of sinking your cock into his warm depths has your [if cocks of player > 0]cock hardening[otherwise if cocks of player > 1]cocks hardening[otherwise if cocks of player is 0]body tingling[end if] in anticipation. The sissy ram bleats in surprise as you call out to him before turning around to face you. His eyes glaze over as he looks down at your crotch and shivers in lust and need before shaking his head and taking on a fighting stance. You might've managed to break this one in, but it seems that he still feels the need to pretend to put up a fight. [if player is dominant]That's okay, though. You don't mind reminding him that you're his better in every way.[end if]";
		otherwise:
			now ramvar is 1;
			cmbtshift;
			say "     You're faced with a strong and rugged-looking ram, the horns on his head curling back intimidatingly while the horn between his legs juts proudly forward, ready to breed. [if cocks of player > 0]Judging by the look on his face as he approaches you, he doesn't seem too pleased to see you here. [one of]'Great. Another trespasser to deal with,' he says in irritation[or]'Looks like I've got to teach another punk a lesson,' he says with a wicked grin[or]'You thought you could make a move on my territory?!' he shouts[or]'There's only room for one ram in this flock,' he jeers[or]'You don't stand a chance. Might as well just run,' he mocks[at random] as he readies himself to charge[otherwise if cunts of player > 0]With a confident swagger, the beast looks you up and down and smirks as he approaches you, [one of]'Look at you... How about you be my sexy ewe?' he asks, rubbing his crotch[or]'Oh, I need you in my flock,' he groans lowly, stroking his shaft[or]'Why don't you just give in and let me fuck you?' he asks cockily[or]'I think I'll enjoy claiming you,' he leers haughtily[or]'Come on, baby, just give in to me,' he coos[at random]as he readies himself to try and wrestle you into submission[otherwise]Eyeing you critically, the ram stomps closer, looking ready to try and wrestle you into submission[end if]. It looks like you've got a fight on your hands!";
	otherwise:
		now ramvar is 1;
		cmbtshift;
		say "     You're faced with a strong and rugged-looking ram, the horns on his head curling back intimidatingly while the horn between his legs juts proudly forward, ready to breed. [if cocks of player > 0]Judging by the look on his face as he approaches you, he doesn't seem too pleased to see you here. [one of]'Great. Another trespasser to deal with,' he says in irritation[or]'Looks like I've got to teach another punk a lesson,' he says with a wicked grin[or]'You thought you could make a move on my territory?!' he shouts[or]'There's only room for one ram in this flock,' he jeers[or]'You don't stand a chance. Might as well just run,' he mocks[at random] as he readies himself to charge[otherwise if cunts of player > 0]With a confident swagger, the beast looks you up and down and smirks as he approaches you, [one of]'Look at you... How about you be my sexy ewe?' he asks, rubbing his crotch[or]'Oh, I need you in my flock,' he groans lowly, stroking his shaft[or]'Why don't you just give in and let me fuck you?' he asks cockily[or]'I think I'll enjoy claiming you,' he leers haughtily[or]'Come on, baby, just give in to me,' he coos[at random]as he readies himself to try and wrestle you into submission[otherwise]Eyeing you critically, the ram stomps closer, looking ready to try and wrestle you into submission[end if]. It looks like you've got a fight on your hands!";

to cmbtshift:
	let debit be 0;
	choose row monster from the table of random critters;
	if hardmode is true and level of player > 6, let debit be level of player - 6;
	now hp entry is 50 + ( debit * 4 );
	now monsterhp is hp entry;
	now lev entry is 6 + debit;
	if ramvar is 2:
		now wdam entry is 4 + ( debit / 3 );
		now dex entry is 10 + ( lev entry / 5 );
		now str entry is 12;
		now sta entry is 14;
		now per entry is 12;
	otherwise:
		now wdam entry is 9 + ( debit / 3 );
		now dex entry is 14 + ( lev entry / 5 );
		now str entry is 16;
		now sta entry is 18;
		now per entry is 12;

to say ram_attack:
	if cunts of player > 0:
		say "     Knocking you to the ground, the powerful male grins as he stands over your defeated form, 'And now to claim you as part of my flock,' He says teasingly, as he pushes your legs apart with one of his rough hooflike hands, his touch making you shudder slightly, as his masculine musk fills your head, causing your pussy to moisten eagerly. You feel yourself moaning submissively, as he runs his hooves over your body teasingly, even as he settles himself between your legs, the feeling of his thick cock rubbing up against your crotch making you feel even more submissive as you spread your legs wider for him.";
		say "     'Now that's a good eager little ewe,' the ram mutters smugly, as he enjoys your body's automatic response to his dominant scent and actions. You try to protest, only to find yourself bleating just like a ewe as he sheathes himself in you in one swift move, the feel of his thick cock pressing into your body making your mind explode with pleasure. As the powerful ram thrusts into you again and again, you can feel your protests fading, and you can feel your dominant urges fading with each thrust, replaced by feelings of happy submission to your ram. With the intense pleasure of his cock stroking your insides, you can't help but embrace your new instincts, and you pant eagerly as you begin to clutch the powerful ram to your body tightly.";
		say "     Happy at this newest evidence of his complete victory over your body, the Ram lets out a triumphant cry as he shoots his seed into you, making you moan happily in response. After a minute of lying there with his cock still twitching inside you, the ram pulls himself out of your body, making you blink as you look up at the powerful beast. Standing up the ram grins down at you, 'Now that you know what it's like to be a proper ewe, I expect you will come running next time I call.' He says teasingly as you nod absently. 'I need to go find a few more members for the flock, so once you are a proper ewe, be sure to hunt me down, that's an order from your new Ram.' He says with amusement as he turns and jogs off into the city. Leaving you lying there on the ground, your mind still fogged with submissive bliss, a strong desire to obey and do just what your ram ordered welling up within you, even as you try to hold on to your remaining humanity. [impregchance]";
		if girl is not banned:
			infect "Ewe";
		otherwise:
			infect "Ram";
	otherwise if ramvar is 2 and hp of player > 0:
		if cocks of player is 0:
			say "     Confused by your own submissive behavior, the ram seems unsure of what to do with himself. For a second, you're almost certain he's about to turn around and leave before a firm look of determination crosses his features. Approaching you, he eases you onto your back before reaching down for your cock... only to find none. Considering you've turned him into your cockhungry [if rambjvirg is false]slut[otherwise]bottom[end if], the ram seems more than a little confused and disappointed that you aren't packing anything for him to play with. With a sad bleat, he rubs at where your cock once was before getting up and leaving you alone on the ground.";
		otherwise:
			say "     Confused by your own submissive behavior, the ram seems unsure of what to do with himself. For a second, you're almost certain he's about to turn around and leave before a firm look of determination crosses his features. Approaching you, he eases you onto your back before reaching down to stroke your [cock of player] cock to fullness[if cockname of player is not listed in infections of internallist], making sure to massage your balls with his hoof-like hands[end if]. Tentatively, [if rambjvirg is false]he brings his muzzle down over your cock to suckle on your [cock size desc of player] manhood before [end if]straddling your thighs and sinking your length into his waiting tailhole. Bleating in ecstasy, he pistons himself on your [if cock length of player > 18]massive[otherwise if cock length of player > 12]impressive[otherwise if cock length of player > 6]sizable[otherwise]average[end if] rod, bucking atop you desperately while trying to make this as pleasurable for you as it is for him. Clenching tight around you, the ram soon bucks roughly atop you as he bleats in orgasm and sprays his seed across your chest and stomach, prompting you to unload your own virile cum into his warm bowels. Collapsing atop you, he nuzzles your chest for a short while before climbing off of you and setting off.";
			if guy is not banned:
				infect "Ram";
	otherwise if ramvar is 2:
		if cocks of player is 0:
			say "     Confused at somehow managing to beat you, the ram seems unsure of what to do with himself. For a second, you're almost certain he's about to turn around and leave before a firm look of determination crosses his features. Approaching you, he eases you onto your back before reaching down for your cock... only to find none. Considering you've turned him into your cockhungry [if rambjvirg is false]slut[otherwise]bottom[end if], the ram seems more than a little confused and disappointed that you aren't packing anything for him to play with. With a sad bleat, he rubs at where your cock once was before getting up and leaving you alone on the ground.";
		otherwise:
			say "     Confused at somehow managing to beat you, the ram seems unsure of what to do with himself. For a second, you're almost certain he's about to turn around and leave before a firm look of determination crosses his features. Approaching you, he eases you onto your back before reaching down to stroke your [cock of player] cock to fullness[if cockname of player is not listed in infections of internallist], making sure to massage your balls with his hoof-like hands[end if]. Tentatively, [if rambjvirg is false]he brings his muzzle down over your cock to suckle on your [cock size desc of player] manhood before [end if]straddling your thighs and sinking your length into his waiting tailhole. Bleating in ecstasy, he pistons himself on your [if cock length of player > 18]massive[otherwise if cock length of player > 12]impressive[otherwise if cock length of player > 6]sizable[otherwise]average[end if] rod, bucking atop you desperately while trying to make this as pleasurable for you as it is for him. Clenching tight around you, the ram soon bucks roughly atop you as he bleats in orgasm and sprays his seed across your chest and stomach, prompting you to unload your own virile cum into his warm bowels. Collapsing atop you, he nuzzles your chest for a short while before climbing off of you and setting off.";
			if guy is not banned:
				infect "Ram";
	otherwise if "Male Preferred" is listed in feats of player:
		say "     The beast pushes you down to the ground roughly, pinning you there as he pumps his own cock eagerly. You are forced to watch as his hoof-hands rub at his balls and cock, an impressive set of genitals on the woolly victor, unable to look away even as he starts to pump harder. You groan in defeat as he shoots his sticky seed all over your body, marking you as his.";
		say "     'Ah, that was good,' The ram says happily as he rubs his cock some more. 'Almost nothing feels as good as defeating a trespasser in my territory.' The ram says as he gets off you, before turning to depart, leaving you to contend with the mess he left in his wake.";
		if guy is not banned:
			infect "Ram";
	otherwise:
		say "     The beast pushes you down to the ground roughly, pinning you there as he pumps his own cock eagerly. You are forced to watch as his hoof-hands rub at his balls and cock, an impressive set of genitals on the woolly victor, unable to look away even as he starts to pump harder. You groan in defeat as he shoots his sticky seed all over your body, marking you as his.";
		say "     'Ah that was good,' the ram says happily as he rubs his cock some more. 'Almost nothing feels as good as defeating a trespasser in my territory.' The ram says as he gets off you, before grinning evilly as he looks down at your helpless form. 'Now once you're done transforming into a proper ewe for me, you come find me right away. That's an order from your ram,' the powerful ram says, before chuckling as he heads back into the city. You are left lying there covered in his seed, and with a surprisingly strong desire to hunt him down again, just like he told you to...";
		if girl is not banned:
			infect "Ewe";
		otherwise:
			infect "Ram";

To say ram_loss:
	if novicsex > 2:
		say "     The ram groans as you knock him to the ground, the beast staring up at you fearfully as he signals his defeat. When you shift your weight as if to move closer, the formerly brave beast panics and scrambles away awkwardly, making you chuckle at the sight as he disappears back into the city.";
	otherwise if ramlosstick < 3:
		say "     The ram groans as you knock him to the ground, the beast staring up at you fearfully as he signals his defeat. When you shift your weight as if to move closer, the formerly brave beast panics and scrambles away awkwardly before you can get close enough to grab him.";
		increase ramlosstick by 1;
	otherwise if ramslut is true and ramvar is 2:
		say "[subramdefeat]";
	otherwise:
		say "     With a particularly vicious shove, you knock the stubborn ram to the ground, leaving him winded. [if player is dominant]Grinning smugly, you approach the once-proud ram and pin him down with a firm foot on his chest[otherwise]You can't help but smile from your victory as you step closer to the ram[end if]. [if player is dominant]Considering his vulnerable position, will[otherwise]Will[end if] you have some fun with him?";
		if the player consents:
			if (cunts of player > 0) and (cocks of player > 0):
				say "     [line break]";
				say "     Would you rather [link]ride his cock (Y)[as]y[end link] or [link]fuck his ass (N)[as]n[end link]?";
				if the player consents:
					say "[genericramride]";
				otherwise:
					say "[genericramfuck]";
			otherwise if cunts of player > 0:
				say "[genericramride]";
			otherwise if cocks of player > 0:
				say "[genericramfuck]";
			otherwise if (cunts of player is 0) and (cocks of player is 0):
				say "     Without the proper equipment, there's not much for you to do with the beaten ram. Helpless as he is, you could [link]ride his cock (Y)[as]y[end link] or [link]leave him be (N)[as]n[end link].";
				if the player consents:
					say "[genericramride1]";
				otherwise:
					say "     With a huff, you step back and watch as the ram staggers to his feet in a hurry and scrambles away in relief.";
			now novicsex is 0;
		otherwise:
			increase novicsex by 1;
			say "     Staring down at the once-proud beast, you shrug your shoulders in disinterest. [if player is dominant]You sneer at the ram beneath you before stepping off of him. Seizing the opportunity, the formerly brave beast staggers onto his feet and scrambles away in a hurry[otherwise]Confused by your lack of action, the beast staggers to his feet and scrambles away while he can[end if].";

to say genericramfuck:
	say "     [if cunts of player > 0]You could ride him, but you'd much rather fuck the ram's ass.[end if]Having come to a decision, you smirk down at the ram [if player is dominant]smugly[otherwise]coyly[end if] as you pull your [cock size desc of player] [cock of player] cock out. 'I think I'll fuck you now.' At your words, his eyes go comically wide before he makes one last attempt at escaping. Scoffing, you use his own momentum against him and roll him over onto all fours. Without warning, you force your [if cock length of player > 18]massive[otherwise if cock length of player > 12]impressive[otherwise if cock length of player > 6]sizable[otherwise]average[end if] cock into his tailhole and pound away at the ram until you feel your orgasm closing in. With one final push, you drive your cock as deep as it'll go into the ram's ass and cum hard into his warm depths, claiming his insides with your [if cock width of player > 10]plentiful [end if]seed. Catching your breath, you pull your wet cock out and slap it against his [if cock width of player >  10]leaking[otherwise]worn[end if] pucker before stroking his wooly rump and telling him what a good [if player is dominant]little sissy[otherwise]lay[end if] he is. Standing up, you see him viciously pumping his cock until he sprays his seed onto the ground with a loud bleat of pleasure. ";
	say "     [line break]";
	if a random chance of 1 in 2 succeeds or "Dominant" is listed in feats of player:
		ramtrainingshift;

to say genericramride:
	say "     [if cocks of player > 0]You could fuck him, but you'd much rather ride the ram's cock.[end if] Having come to a decision, you smirk down at the ram [if player is dominant]smugly[otherwise]coyly[end if] before pouncing atop his prone form and tell him exactly what you intend to do. The ram bleats in surprise as you reach down and stroke his softening cock back to fullness, [if player is dominant]giving it a tight squeeze to remind him you're the one in charge[otherwise]giving it special attention[end if] before sinking your juicy cunt down onto it with a low moan. Exhausted as he is, he makes no effort to force you off of him as you [if cunt length of player < 5]try and take as much of his cock into you as you can[otherwise]take his entire length into you[end if] and ride him hard and fast. Bleating and moaning, the two of you keep bucking and thrusting until you both reach a loud, crashing orgasm together[if cocks of player > 0], shooting your [cum load size of player] load over the ram's chest[end if]. Catching your breath, you slide off of him and moan at warm feeling of his warm semen slipping out of your pussy. Standing up, you tell him what a good [if player is dominant]obedient toy[otherwise]lay[end if] he is.[impregchance]";
	say "     [line break]";
	if a random chance of 1 in 2 succeeds:
		if girl is not banned:
			infect "Ewe";
		otherwise:
			infect "Ram";

to say genericramride1:
	say "     Having come to a decision, you smirk down at the ram [if player is dominant]smugly[otherwise]coyly[end if] before pouncing atop his prone form and tell him exactly what you intend to do. The ram bleats in surprise as you reach down and stroke his softening cock back to fullness, [if player is dominant]giving it a tight squeeze to remind him you're the one in charge[otherwise]giving it special attention[end if] before lining up his cockhead with your backdoor. Exhausted as he is, he makes no effort to force you off of him as you sink his entire length into you, savoring the feel of his cock stretching out your inner walls as you start rocking your body and riding him hard and fast. Bleating and moaning, the two of you keep bucking and thrusting until you both reach a loud, crashing orgasm together, your anal muscles tightening around his pulsing manhood. Catching your breath, you slide off of him and moan at warm feeling of his warm semen spilling out of your hole. Standing up, you tell him what a good [if player is dominant]obedient toy[otherwise]lay[end if] he is.[mimpregchance]";
	say "     [line break]";
	if a random chance of 1 in 2 succeeds:
		if girl is not banned:
			infect "Ewe";
		otherwise:
			infect "Ram";

Section 2 - Breaking in the Ram

ramslut is a truth state that varies. ramslut is usually false.
ramtraining is a number that varies.
rambjvirg is a truth state that varies. rambjvirg is usually true.

to ramtrainingshift:
	if "Submissive" is listed in feats of player:
		now ramtraining is 0;
	otherwise if ramtraining < 5:
		increase ramtraining by 1;
	otherwise if ramtraining is 5:
		now ramslut is true;

to say subramdefeat:
	if cocks of player is 0:
		say "      Already used to this old song and dance, you move as if to land the final blow on the ram before he raises his hoof-like hands in defeat. [if player is dominant]Smirking[otherwise]Grinning[end if], you gesture for your [if player is dominant]sissy [end if]ram to get on his knees. Eagerly, he drops onto them and reaches for where your cock should be... only to find none. Considering you've turned him into your cockhungry [if rambjvirg is false]slut[otherwise]bottom[end if], the ram seems more than a little confused and disappointed that you aren't packing anything for him to play with.";
	otherwise:
		if libido of player > 60: [Fuck him - Invol.]
			say "[subramsex1]";
		otherwise:
			say "     Already used to this old song and dance, you move as if to land the final blow on the ram before he raises his hoof-like hands in defeat. Finally done with false pretenses, the ram turns around and shakes his furry rump at you[if anallevel is 3], bleating and moaning as he spreads his cheeks for you while slipping a finger in and out of his twitching pucker[end if]. If you wanted to, you could have some fun with him. Will you?";
			if the player consents:
				say "[subramsex]";
			otherwise:
				say "     [line break]";
				say "     [if player is dominant]Growling, you shove him onto the ground and remind him that he isn't in any position to make demands. Your sissy ram whimpers submissively as you loom over him before slowly crawling away[otherwise]Shrugging your shoulders, you tell him that his little display has put you out of the mood. His cheeks redden in shame and embarassment as he turns and shuffles away awkwardly[end if].";

to say subramsex:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fuck the ram";
	now sortorder entry is 1;
	now description entry is "Pound the submissive ram's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Have him blow you";
	now sortorder entry is 2;
	now description entry is "Make the horny ram suck you off";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck the ram"):
					say "[subramsex1]";
				if (nam is "Have him blow you"):
					say "[subramsex2]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     Changing your mind, [if player is dominant]you shove the ram onto the ground and tell him exactly that before ordering him to scram. Your sissy ram whimpers submissively as you loom over him before slowly crawling away[otherwise]you shrug your shoulders and tell him exactly that.[end if].";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say subramsex1: [Fuck him]
	say "     [line break]";
	if player is dominant:
		say "     Smirking, you gesture for the submissive ram to get on his knees. Eagerly, he drops onto them and reaches for your cock[if cocks of player > 1]s, taking one in each hand[end if] and starts to stroke [if cocks of player > 1]them[otherwise]it[end if] to fullness. Chuckling at his initiative, you tease the broken-in male about how much he clearly likes being the ewe in the relationship. He bleats out what might be a complaint, but given the expert handjob he's currently giving you, you're willing to let it slide as you thrust into his hoof-like hands eagerly. Satisfied with the foreplay, you shove the ram onto the ground and order him to get on all fours.";
		say "     Bleating happily, he gets into position and presents his ass to you[if anallevel is 3], spreading his wooly cheeks apart for you to see his winking pucker begging to be filled[end if]. You can't help but take a moment to relish in what you've turned the once-proud ram into - your toy. Your plaything. Your slut. With a wicked grin, you press your cockhead against his tailhole, putting just enough pressure against it to feel the panting ram's anal ring yielding. Leaning over his prone figure, you ask him how badly he needs your cock, grinning broadly as the only answer is a needy whimper that has him squirming against you. Continuing on like this, you tease the submissive anthro mercilessly, just a hair's breadth away from sinking your length into him, until he is absolutely desperate and begging for you to fuck him. Relenting with a satisfied grunt, you finally plunge into his [if cock length of player > 24]incredibly tight[otherwise if cock length of player > 12]tight[otherwise]loose[end if] backdoor in one swift motion.";
		WaitLineBreak;
		say "     Getting a good grip on his hips, you start to pound his wooly ass hard and fast[if cockname of player is not listed in infections of internallist], your balls slapping against his own each time you hilt inside of him[end if]. It takes little to no time at all before he starts moaning and bleating loudly, pushing back against you needily just like you've trained him to. Soon, you feel yourself drawing close to the edge and fucking him in earnest before exploding in a powerful orgasm, [if cock width of player > 20]filling him with your bountiful seed[otherwise]coating his insides with your cum[end if]. After catching your breath, you pull out and [if anallevel is 3 and libido of player > 50]spread his cheeks with your hands so you can lap at your own seed spilling out of your slut's worn hole[otherwise]slap your meat against his worn hole[end if] before moving back a little and stroking the ram's [one of]well-bred[or]cum-dripping[or]freshly fucked[at random] rump, telling him what a good little slut he is.";
	otherwise:
		say "     Grinning, you gesture for the submissive ram to get on his knees. Eagerly, he drops onto them and reaches for your cock[if cocks of player > 1]s, taking one in each hand[end if] and starts to stroke [if cocks of player > 1]them[otherwise]it[end if] to fullness. Chuckling at his initiative, you tease the broken-in male about how much he clearly likes being the ewe in the relationship. He bleats out what might be a complaint, but given the expert handjob he's currently giving you, you just give a little laugh as you thrust into his hoof-like hands eagerly. Satisfied with the foreplay, you smile as you ask the ram if he's in the mood to get fucked.";
		say "     Bleating happily, the ram gets into position and presents his ass to you[if anallevel is 3], spreading his wooly cheeks apart for you to see his winking pucker begging to be filled[end if]. You can't help but take a moment to relish in what the once-proud ram has turned into - your ever-loyal bottom boy, desperate to be filled by your seed. With a cheeky grin, you press your cockhead against his tailhole, putting just enough pressure against it to feel the panting ram's anal ring yielding. Leaning over his prone figure, you ask him how badly he needs your cock, grinning broadly as the only answer is a needy whimper that has him squirming against you. Continuing on like this, you tease the submissive anthro mercilessly, just a hair's breadth away from sinking your length into him, until he is absolutely desperate and begging for you to fuck him. Relenting with a satisfied grunt, you finally plunge into his [if cock length of player > 24]incredibly tight[otherwise if cock length of player > 12]tight[otherwise]loose[end if] backdoor in one swift motion.";
		WaitLineBreak;
		say "     Getting a good grip on his hips, you start to pound his wooly ass hard and fast[if cockname of player is not listed in infections of internallist], your balls slapping against his own each time you hilt inside of him[end if]. It takes little to no time at all before he starts moaning and bleating loudly, pushing back against you needily just like you've come to expect of him. Soon, you feel yourself drawing close to the edge and fucking him in earnest before exploding in a powerful orgasm, [if cock width of player > 20]filling him with your bountiful seed[otherwise]coating his insides with your cum[end if]. After catching your breath, you pull out and [if anallevel is 3 and libido of player > 50]spread his cheeks with your hands so you can lap at your own seed spilling out of the ram's worn hole[otherwise]slap your meat against his worn hole[end if] before moving back a little and stroking the ram's [one of]well-bred[or]cum-dripping[or]freshly fucked[at random]  rump, telling him what a good lay he is.";

to say subramsex2: [Get blown]
	if rambjvirg is true: [First time]
		say "     [line break]";
		if player is dominant:
			say "     Smirking, you ask him if he's ever sucked a cock before. 'No,' he admits meekly as he turns to face you - not that it surprises you considering you were the one to first claim his black cherry, 'But I, uh... wouldn't mind trying. With you.' Well, who are you to tell your little slut no? Pulling out your [cock size desc of player] [cock of player] cock, you slowly stroke it to fullness while watching your sissy ram's pupils dilate with lust. Once you're fully hard, you shove him onto his knees before slapping your [cock size desc of player] manhood against his cheeks and watch as he stares at your length [if cock length of player > 12]with worry[otherwise]in admiration[end if]. A quick reprimand from you gets him moving.";
			say "     Sticking his tongue out, your sissy ram tentatively laps at the precum [if cock width of player > 16]pouring[otherwise]leaking[end if] out of your slit. His inexperience being obvious, he does this for a while before finally moving on to trace the length of your [cock size desc of player] [cock of player] dick with his tongue. Growing impatient, you tell your little sissy to open wide. Without even questioning it, he opens his muzzle for you and you seize the opportunity to force your cock into his maw. Grabbing onto his horns, you fuck your little sissy's muzzle hard and fast, expecting him to adjust to the rough treatment you're giving him. Eventually, he starts to get the hang of it.";
			WaitLineBreak;
			say "     Feeling your orgasm closing in, you thrust deeply one last time and hilt your shaft against his muzzle before shooting your [cum load size of player] load down the submissive ram's throat. Satisfied, you pull out of [if cock length of player < 7]his mouth[otherwise]his throat[end if] with a wet slurp. Grinning smugly, you ask him how he liked tasting a cock for the first time. Considering he looks blissed out of his mind, you're inclined to believe it was pretty damn good for him.";
		otherwise:
			say "     Grinning, you ask him if he's ever sucked a cock before. 'No,' he admits meekly as he turns to face you - not that it surprises you considering you were the one to first claim his black cherry, 'But I, uh... wouldn't mind trying. With you.' Well, who are you to tell the ram no? Pulling out your [cock size desc of player] [cock of player] cock, you slowly stroke it to fullness while watching his pupils dilate with lust. Once you're fully hard, you ease him onto his knees before holding out your manhood near his muzzle and watch as he stares at your length [if cock length of player > 12]with worry[otherwise]in admiration[end if]. Some gentle urging from you gets him moving.";
			say "     Sticking his tongue out, the ram tentatively laps at the precum [if cock width of player > 16]pouring[otherwise]leaking[end if] out of your slit. His inexperience being obvious, he does this for a while before finally moving on to trace the length of your [cock size desc of player] [cock of player] dick with his tongue. Groaning, you tell the ram that you'd appreciate it if he hurried up and got to the good part. Chastised, he opens his maw and tries to take your [cock size desc of player] cock as best he can. Running your hands through the soft wool of his head, you give him tips and advice as he sucks you off with eager determination, slowly getting the hang of it as he tries his very best to pleasure you.";
			WaitLineBreak;
			say "     Feeling your orgasm closing in, you warn the submissive ram that you're getting close. This only seems to edge him on to take you deeper as you shoot your [cum load size of player] load down his throat. Satisfied, you pull out of [if cock length of player < 7]his mouth[otherwise]his throat[end if] with a wet slurp. Grinning, you ask him how he liked tasting a cock for the first time. Considering he looks blissed out of his mind, you're inclined to believe it was pretty damn good for him.";
		now rambjvirg is false;
	otherwise: [Repeat]
		say "     [line break]";
		if player is dominant:
			say "     Sensing your intent, the ram turns to face you and drops to his knees as you approach. Looking up at you with hooded eyes, the desire to suck your cock is painted on the ram's face, patently obvious in the way he licks and bites his lips. It seems you made an eager cumslut out of him, and he's just too proud to ask for it. You're more than happy to oblige his need, so you run your hand along his jawline and let him suck sensually on your fingers for a moment, reveling at the sight of what you turned the once-proud ram into. Satisfied with the foreplay, you pull your hand back with a wet pop and grab your [cock size desc of player] cock, dangling it in front of the his lips.";
			say "     Without hesitation, he gets to lapping along the length of your manhood, moaning and bleating softly as he worships your meat. Not needing to be prompted this time, he opens his muzzle and starts to take your cock into [if cock length of player > 7]his throat[otherwise]his maw[end if], hollowing out his cheeks and starting to suck you off in earnest. Unwilling to hold back, you grab onto his horns and start to pull his head down as you fuck his mouth roughly. Moaning, [if cockname of player is not listed in infections of internallist]you feel him start to massage your balls reverentially[otherwise]you feel his hoof-like hands clutch at your ass, pulling you closer[end if] as he takes you deep into [if cock length of player < 7]his mouth[otherwise]his throat[end if].";
			WaitLineBreak;
			say "     Feeling your orgasm closing in, you grip his horns tighter and pull his muzzle flat against you before shooting your [cum load size of player] load down his throat with a loud groan. Satisfied, you pull out of [if cock length of player < 7]his mouth[otherwise]his throat[end if] with a loud slurp. Grinning smugly, you look down at the look of pure bliss on the ram's face and can't help but feel proud at what a good little cocksucker he's turned into.";
		otherwise:
			say "     Sensing your intent, the ram turns to face you and drops to his knees as you approach. Looking up at you with hooded eyes, the desire to suck your cock is painted on the ram's face, patently obvious in the way he licks and bites his lips. It seems you made an eager cumslut out of him, and he's just too proud to ask for it. You're more than happy to oblige his need, so you run your hand along his jawline tenderly and let him suck sensually on your fingers for a moment, stroking at the soft wool on his head in encouragement. Satisfied with the foreplay, you pull your hand back with a wet pop and grab your [cock size desc of player] cock, dangling it in front of the his lips.";
			say "     Without hesitation, he gets to lapping along the length of your cock, moaning and bleating softly as he worships your meat. Not needing to be prompted this time, he opens his muzzle and starts to take your cock into [if cock length of player > 7]his throat[otherwise]his maw[end if], hollowing out his cheeks and starting to suck you off in earnest. Running your hands through the soft wool of his head, you whisper sweet nothings to your ram as he does his best to pleasure you. Moaning, [if cockname of player is not listed in infections of internallist]you feel him start to massage your balls reverentially[otherwise]you feel his hoof-like hands clutch at your ass, pulling you closer[end if] as he takes you deep into [if cock length of player < 7]his mouth[otherwise]his throat[end if].";
			WaitLineBreak;
			say "     Feeling your orgasm closing in, you warn the ram that you're getting close. This only seems to edge him on to take you deeper until you're shooting your [cum load size of player] load down his throat. Satisfied, you pull out of [if cock length of player < 7]his mouth[otherwise]his throat[end if] with a loud slurp. Grinning, you look down at the look of pure bliss on the ram's face and can't help but feel proud at what an attentive bottom he's turned into.";

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Ram" to infections of guy;
	add "Ram" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Ram";
	now attack entry is "[if ramvar is 1][one of]He rubs his [']specially treated['] wool on you, causing you to moan at the sensitive sensation.[or]He rushes forward, knocking you back with his short horns.[or]The ram strikes out with one of his hoof-like fists, the strike sending you reeling.[or]He smirks at you before letting out a loud sheep call, the noise echoing in your head making your thoughts wooly.[or]The powerful ram strikes you with his hoof-like fist, sending you reeling.[or]The male ram grins happily as he tries to wrestle you to the ground.[at random][otherwise][one of]The submissive ram strikes you weakly with a hoof-like fist, barely marking you.[or]The submissive ram grins coyly as he tries to wrestle you to the ground.[or]The submissive ram rubs himself against you, weakly trying to knock you over.[or]The submissive ram rushes forward, grazing you with his short horns while copping a feel of your crotch.[or]Dodging back, the submissive ram tries to distract you by wiggling his wooly rump before tossing a weak punch your way.[at random][end if] ";
	now defeated entry is "[ram_loss]";
	now victory entry is "[ram_attack]";
	now desc entry is "[ramdesc]";
	now face entry is "short blunt muzzle on your flattened face, your sheep-like ears sticking straight out from the side of your head, and two small horns extending from your forehead and curling backwards";
	now body entry is "strong and rugged, equally well built for fighting other rams or keeping predators at bay. Your strong leg muscles give you extra power when charging forward. Your arms are thinner and end in hoof-like hands that have a little trouble manipulating things, but you don't need them to butt heads with anyone who crosses you";
	now skin entry is "[one of]thickly wooled[or]wool covered[or]thick fleeced[at random]";
	now tail entry is "A short round sheep-like nub of a tail sits right over your ass, occasionally flicking one way or another in response to some stimulus.";
	now cock entry is "[one of]bestial[or]ram[at random]";
	now face change entry is "your face pushes forward into a short blunt muzzle, like a ram's, as two small horns push their way out of the sides of your forehead";
	now body change entry is "[one of]your frame grows larger and more bulky, and your hands and feet fuse into darker and more hoof-like versions of themselves, though they still seem fairly adequate for manipulating objects[or]it grows thicker and more muscular, your hands and feet becoming more like a sheep's hooves, as your leg muscles bunch and shift, perfect for propelling yourself forward quickly[at random]";
	now skin change entry is "a strong itching seems to spread underneath the skin, as before your eyes a thick coat of coarse woolly hair begins to cover your body";
	now ass change entry is "your ass expands into a more rounded shape. A short round nub of a tail startling you as it pushes its way out above your ass";
	now cock change entry is "it twists and warps between your legs, growing thicker as it takes on a black and pink tint, before drawing up into a new sheath between your legs";
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is "Male";
	now hp entry is 50;
	now lev entry is 6;
	now wdam entry is 9;
	now area entry is "Outside";
	now cocks entry is 1;
	now cock length entry is 9;
	now cock width entry is 6;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 0;
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 30;
	now loot entry is "tainted wool";
	now lootchance entry is 40;
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]stocky[at random]";
	now type entry is "ovine";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;  [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;  [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";  [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects (continued)
name	desc	weight	object
"tainted wool"	"A small bundle of rough wool you found in the city, strangely enough, it has a rather pleasant musky scent coming from it."	1	tainted wool

tainted wool is a grab object. It is part of the player.

The usedesc of tainted wool is "[taintedwooleffect]";

to say taintedwooleffect:
	say "You take out the small bundle of wool you acquired earlier, and your head swims slightly as your nose fills with its strong musky odor. Feeling a bit aroused by the strange scent, you slowly start to rub the wool up against your cheek in order to enjoy the smell better. The feeling of the soft wool rubbing against your body, as well as the arousing aroma, make you lose track of time for a minute, until you realize you can feel your body starting to change.";
	if girl is not banned:
		infect "Ewe";
	otherwise:
		infect "Ram";


instead of sniffing Tainted wool:
	say "The wool smells of ram musk.";


when play ends:
	if bodyname of player is "Ram":
		let ram be "Ram";
		let ewe be "Ewe";
		if ewefucked > 0:
			if humanity of player is less than 10:
				if cocks of player is greater than 0:
					say "Your mind giving out under the strain of the infection, you head out into the city, Mary following along like a good little ewe. You quickly set about finding more members to convert to your flock, increasing your numbers for a time and protecting the trail of Ewes following you. Unfortunately you aren't alone in the city and are beset on all sides by different predators and infected until finally you and your small flock are captured by a group of hyenas. At first it is somewhat disconcerting to be surrounded by predators, but soon you realize it isn't all bad. As the only male you are indispensable to them, and you are kept in some comfort, your only duty is to breed the Ewes all day and relax. Eventually you don't even mind one or two of your flock disappearing every now and then, and you even come to enjoy being sheared...";
				otherwise:
					say "Your mind beginning to fray at the edges, you head back to the store where Mary is waiting for you. Without the makings of a real ram, you aren't quite able to form a flock of your own  with your friendly little ewe, fortunately though, Mary has a plan for you both. Taking advantage of your increased strength, the two of you head out into the city together, your dimly recalled familiarity with the city, as well as Mary's expertise in scavenging serving you well as you look for a safe location to set up. Eventually finding a suitable spot, the two of you set out to trap yourselves a nice ram or two for you both to share. It isn't long before you have one of those rams wandering around without a flock trussed up and protesting in your new hideout, the two of you easily able to overpower his surprised form. His protesting stops quickly however, when he realizes that the two of you need a nice male like him for your flock, and he resolves to do his duty eagerly. He is somewhat surprised to find himself relegated to the role of a breeding stud, the two of you visiting him whenever the urge strikes you, and ignoring him otherwise. Your strength protecting the small flock instead of his, while Mary's smarts helps your small group survive in the dangerous city, while he warms both of your beds at night. Your lust fogged mind is happy to have found such a lovely flock to be a part of, as you cuddle happily up against Mary the two of you spending plenty of lustful time together without your new ram, even as she makes plans for the soldiers which are sure to come soon... and you feel a smile stretching your sheep-like muzzle as you realize your flock will probably be growing larger very soon indeed.";
			otherwise:
				if cocks of player is greater than 0:
					say "You and Mary are quite happy when the rescue arrives, allowing you to leave the city once you are determined to be safe enough. You travel together for a while, but it is lonely with only the two of you. You decide to settle down and raise a larger flock eventually, opening a small clothing and fabric store before settling down to breed some new young lambs. The demand for your hand-spun clothing and well-made designs quickly outstrips your ability to keep up, and so you find yourself hiring on a few other young women to help, who eventually join the flock eagerly after a gift of some of your [']specially treated['] wool garments. You soon enough have a rather brisk business going, and a small but ever increasing flock to take care of you. Though the next time the building inspector complains about the multiple occupancy you just might have to invite her into the flock as well...";
				otherwise:
					say "You and Mary are quite happy when the rescue arrives, the two of you more than happy to prove yourselves safe to the nice soldiers who examine you. Once they let you go, you both head out together into the world outside the city, your changed forms make it hard to fit in however, and a flock of just two members seems rather lonely sometimes. At Mary's urging, you both head out into the country, where you can start a small sheep farm of your own, both of you agreeing that at least having some fellow sheep around should be rather comforting to your changed senses. When your flock arrives, the two of you feel much better immediately, and you discover the other sheep follow you around without protest when you lead them places, making your job much easier than normal. You find one of the rams eyeing you and Mary rather often however, and are almost unsurprised to return home one day to find Mary bleating away happily underneath him. The sight is strangely arousing, as he finishes mating her, and she blushingly explains that her season crept up on her, and he was just so tempting and right there... Letting her know you aren't upset, she smiles happily, before teasingly reminding you that your own season will be coming soon. Blushing in surprise, you look at the handsome ram nosing around your flock member, and much to Mary's amusement, you let her know that you can hardly wait...";
		otherwise if ramfucked > 0:
			if humanity of player is less than 10:
				if cunts of player is greater than 0:
					say "Returning to the store, feeling somewhat more dominant and bestial than before, you resolve to talk to Leon about things this time. However when you arrive and walk in, Leon and several other members of the flock pounce on you eagerly, the ewes holding you down for your dominant ram, as he makes sure to breed you again and again. Your urge to struggle fades, as he inducts you into the flock like a proper ewe, mating you again and again like the beasts you both are, your bleating calls of pleasure filling the store, even as the musky aroma of your flock surrounds you. When Leon is finally done claiming you as his own, you can hardly remember why you would have wanted to protest belonging to your handsome ram, your will overcome by your new urges, and the powerful males pheromones. You feel a silly smile spreading across your muzzle as the rest of the flock hug and stroke your more powerful body, making you feel nice and welcome as they help you settle in to your new home. Fitting in is surprisingly easy, as is just letting your powerful ram and the rest of the flock do your thinking for you, and your larger size and muscles ensure you a lovely position underneath your new master more often than not. Soon your belly is swelling pleasantly with the promise of new life, and your lust-filled sheep-like mind, can think of little that will be better than presenting your powerful male with lovely little baby sheep for his flock, and then having him fill you up with even more of them...";
				otherwise if cocks of player > 0:
					if lust of Leon < 2:
						say "Returning to the store, Leon tries to bar the doors to keep you out, however the rest of the ewes are helpless to resist the sight of your powerful male body, and the ewe you rescued earlier unlocks the side door for you. You grin as you sneak up on the nervous Leon, before finally leaping on the flock leader and wrestling him to the ground. You enjoy having the formerly dominant male pinned underneath you, while the rest of his flock watches your struggle with increasing arousal. Finally Leon is forced to admit defeat, as you hold him down and tease his all to pliable body until he submits. As your new flock gathers happily around their new leader, their cheers and the soft strokes of their hoof-like hands making you feel strong and powerful, you proceed to celebrate your position by making Leon drink your masculine seed time and time again. Soon the former ram is just as female and needy as any of your other ewes, a change you help her celebrate by filling her with your offspring right away. You enjoy several long nights of bestial mating, as you claim the entire flock one by one, ensuring their loyalty to their new ram and master. Settling in to the store is easy enough, and quite enjoyable to your instinct driven mind, your ewes taking good care of you, while you make sure they are all nice and well bred, though you single out two of them as your special favorites. Both Mary, and the formerly male Leon, share your bed every night, often with another flock member of two, and you enjoy watching them grow increasingly more submissive as their bellies grow round with proof of your ram-like virility. Eventually the Military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, you can only grin at them in amusement, more than happy with your new life here in the changed city. A viewpoint you share with some of the most promising soldiers, adding them to your flock when they won't be missed, your flock growing slowly and steadily, and becoming the largest flock in the city, giving you quite a bit of bargaining power when the military are finally forced to come to the bargaining table...";
					otherwise if nes is 100:
						say "     Having become a full-fledged member of the flock, you work alongside the other ewes while Leon cares for you all. And while the studly ram certainly prefers the others, you are by no means neglected - there's just a lot of breeding to be done. Some of the females, Mary among them, do occasionally try to solicit you for attention, but you know your place and are content there, so you never give in. Whenever one does harass you too much, a word to Leon is enough to have him remind the ewe that he is the only true ram around.";
						say "     Eventually the military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, Leon is more than happy with his new life here in the changed city. A viewpoint you are able to help your ram entice some of the visiting soldiers with, adding them to the flock when they won't be missed. The flock grows slowly and steadily to become the largest flock in the city.";
					otherwise:
						say "     Overwhelmed by your new instinctive desires and feeling alone without a flock, you waste no time in returning to the store. There the flock is waiting for you, the studly ram is pleased to see you giving up your wandering ways and accepts you as his submissive male ewe. There you work along the other ewes while Leon cares for you all. And while the studly ram certainly prefers the others, you are by no means neglected - there's just a lot of breeding to be done. Some of the females, Mary among them, do occasionally try to solicit you for attention, but you know your place and are content there, so you never give in. Whenever one harasses you too much, a word to Leon is enough to have him remind the ewe that he is the only true ram around.";
						say "     Eventually the military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, Leon is more than happy with his new life here in the changed city. A viewpoint you are able to help your ram entice some of the visiting soldiers with, adding them to the flock when they won't be missed. The flock grows slowly and steadily to become the largest flock in the city.";
				otherwise:
					if lust of Leon < 2:
						say "     Overwhelmed by your new instinctive desires and feeling alone without a flock, you make your way back to the store and the sheep there. But you are barred from entry, Leon not wanting another ram among his flock, even a neutered one. Knowing you have no real means to sway the ram, you eventually give up and wander off into the predator-filled city on your own.";
						say "     [one of]Your wanderings take you to a wooded area growing in the heart of the city. Timidly, you slip into the forest and follow its paths. There you are a beset by a large wolf with an evil sneer on his muzzle, who captures you and brings you back to his wooded lair. At first you fear he's going to eat you, but you're instead given to his pups as a playtoy and practice prey. And while they do play rough at times, nipping and biting, they also use you for fucking practice upon growing older[or]Finding yourself out on the plains outside the city, you drift around there until you come across a large farm still in operation[if McDermott Farm Entrance is known]. And while there's something vaguely familiar about the place and its residents, your mind it too gone to recall properly[end if]. There you feel at ease with the other animal residents and settle there, [if skinname of player is ram or skinname of player is ewe]living in one of the barns and contributing your wool through regular shearing[otherwise]helping where you can as a farmhand[end if][or][if skinname of player is ewe or skinname of player is ram]You quickly find yourself captured by a herm cougar. And while she's disappointed to find you genderless, she decides to keep you regardless. You are collared and chained to her bed. Trapped there, she makes use of you and your fluffy body as a living pillow, calling you her [italic type]dakimakura[roman type]. You are frequently stained with her semen and juices as she masturbates against your fleecy coat or humps you while asleep. Things get especially messy whenever she brings others back to her lair for a romp. And while you come to enjoy your indolent lifestyle and your affectionate mistress, you give up on ever being more than a cherished object[otherwise]You quickly find yourself captured by a herm cougar. Disappointed to find you genderless, she brings you with her regardless. You are collared and chained in her kitchen to act as her cook and maid for the lustful feline. And you are subjected to those lusts as well, the puma having you provide oral pleasure or an ass to fuck as part of your duties. While this isn't too bad on most occasions, things are much more difficult on you whenever your mistress invites her friends over for a romp. Then you are constantly harassed while trying to cook for the predators, frequently groped or even fucked while trying to prepare or serve their meals[end if][at random]";
					otherwise:
						say "     Overwhelmed by your new instinctive desires and feeling alone without a flock, you waste no time in returning to the store. There the flock is waiting for you, the studly ram is a little disappointed to see you in your current state, but welcomes you nonetheless. As a neutered wether, you are no threat to his position and he does make sure to give you the occasional attention like you'd received previously when male. At the store, you work along the other ewes while Leon cares for you all. And while Leon certainly prefers the others, as there's just a lot of breeding to be done, he does permit you to help by orally pleasing the ewes most in need while he's rutting another.";
						say "     Eventually the military come through the city, and your flock sells some of the soldiers some basic equipment and items, and even arranges for some basic resupply from outside the city to fill the shelves back up again. While the soldiers suggest you should probably evacuate several times, Leon is more than happy with his new life here in the changed city. A viewpoint you are able to help your ram entice some of the visiting soldiers with, adding them to the flock when they won't be missed. Your being a passive, submissive wether helps to put them at ease. And once a candidate is alone with you, Leon appears to mount and make a ewe out of them. The flock grows slowly and steadily to become the largest flock in the city.";
			otherwise:
				if cunts of player is greater than 0:
					say "When the rescue arrives, you return to the store where you join Leon and the rest in evacuating, and your new more powerful body serves you well as you aid your powerful ram in fending off any trouble. Soon after your release from the military camp, Leon leads you all to a secluded community out in the countryside, where you can all settle down in peace. The flock settles into their new life with surprising ease, taking up several jobs in town, as well as starting up a small ranch of their own nearby, and you are happily in the middle of it all. Your more powerful form, as well as your still sharp mind, quickly making you Leon's favorite, as well as his second in command. You enjoy the challenge of settling any problems with the concerned townspeople or visitors, especially when sometimes the settlement results in a new flock member or two, and coming home to the warm arms of your ram every night is a wonderful feeling as well. Looking around at your new life, you are hard pressed to think of how things could get any better than this, a grin crossing your muzzle as you look around at your increasingly sheep owned community.";
				otherwise if cocks of player > 0:
					if lust of Leon < 2:
						say "When the soldiers arrive, you guide them to the store and the flock of sheep taking shelter there, enjoying the joyous response of the flock of your arrival with soldiers. Leon is rather reluctant to let another male ram join them, but under the circumstances he can't actually refuse, and you and the rest of the sheep end up going through the military base together. You make a number of [']close['] friends among the ewes as they try testing you for infectiousness, before being forced to give up and let you go so they could focus on events in the city itself. Once free and out of the military's hands, you and Leon lock horns for a bit over your exact position regarding the flock, since the ewes are very much in love with you both. Eventually for the peace of the flock, he ends up acknowledging you as an equal, much to your amusement, and the two of you end up leading your new flock together as you look for some place to settle down. Eventually purchasing a large parcel of land, and creating your own small self-sufficient community. With the efforts of two rams, your flock and town begins to grow rather quickly, with the few visitors to your small community often ending up as nice new ewes for one or the other of you to play with. You have several small fights with Leon over the years, but a strange sort of friendship and rivalry develops between you, and keeps you working together through the roughest of times. As you settle down and listen to the latest news on the radio while your large flock gathers around you comfortably like the extended family you have all become, you feel a smile stretching your sheep-like muzzle, as you listen to the news about the complete failure of the military containment, knowing your flock is already ready for the new world that is sure to arrive soon enough.";
					otherwise:
						say "     When the soldiers arrive, you guide them to the store and the flock of sheep taking shelter there. The flock greet you with a joyous response, Leon welcoming you into his fleecy arms. And while he's reluctant to allow his excited flock to leave the store, he can't actually refuse under the circumstances either. You and the rest of the sheep end up going through the military base together. And while Leon manages his ewes, your less aggressive nature allows you to help him deal with the processing procedures for the sheep. This helps give a better impression of your flock overall so things go more smoothly. You even manage to arrange access to some of the other survivors with ovine infections, leading to several more ewes being drawn into Leon's flock.";
						say "     Upon release, Leon searches for a place to have his flock settle down. While several large stores and businesses are checked out, they prove to be insufficient for the large and growing flock's needs. In the end, Leon makes a large land purchase outside of a small country town and a homestead is established there. There's some tension early on with some townsfolk, but your passive nature helps smooth things over even as the flock's size and influence spreads into the community. Over time, those problems go away as more and more of the people become flock members themselves. Eventually, the whole of the valley town is sheep-run with Leon in charge.";
						say "     As troubles outside the valley grow, your community becomes a safe stopover point and the general store established does business with those passing through. On occasion, these travellers don't end up leaving, drawn into the flock by Leon's confidence and your soft words. In time, when the flock's grown large enough, some of Leon's male heirs leave with a collection of ewes, moving on to establish themselves in other nearby towns and spreading the central flock's influence further.";
				otherwise:
					if lust of Leon < 2:
						say "***survived and refused as wether.";
					otherwise:
						say "***survived and accepted as wether.";
		otherwise:
			if humanity of player is less than 10:
				if cocks of player is greater than 0:
					say "Giving in to your new powerful instincts, you waste no time in wandering through the streets of the city, desperately looking for ewes or unchanged people to add to your flock. [one of]Being far too late to find any unclaimed people to transform, you wander aimlessly, your mind growing increasingly more feral and bestial until you submit completely to your instincts. Eventually when the military come you are rescued, however there is little hope for them to rehabilitate someone as far gone mentally as you are, and so you end up spending much of your time locked up on the base, though occasionally some of the scientists, or female soldiers will sneak into your cell to enjoy the kinds of pleasures only a true ram can give them...[or]Finding it hard to put together a flock of your own at this point, you end up challenging many of the other rams wandering the city, trying to prove your dominance and take their flocks. After several near fights, you eventually manage to win yourself a small flock, which you lead proudly, fending off attacks by other rams, and doing your best to avoid the more predatory beasts at the same time. You lie low when the military assault the city, and you and your flock come out again once they have been driven back. Gathering up the remnants of the less intelligent flocks which were scattered by the assault, you soon have the largest and most powerful flock around, and happily claim yourself a nice piece of grazing land near the park. While you still lose the occasional sheep to the predators, as the flock leader you lead a happy and prosperous life, your only job to ensure that the rest of the sheep are well bred and filled with your seed... a job you enjoy heartily.[at random]";
				otherwise:
					say "Submitting completely to your new confusing instincts, you wander the city aimlessly, your ram-like dominant instincts warring with your female bodies submissive needs. Eventually you end up driving away several interested rams, and even a few ewes, until finally you are caught by one of the powerful predators in the city. The powerful [one of]Tigertaur[or]Wolflike[or]Bear[or]Panthertaur[or]Gryphon[or]Hyena[at random] beast pinning you down roughly, and you find yourself overwhelmed by his predatory musk and actions. The male beast is surprised at your eager bodies response to finally finding a more powerful and dominant male, as you moan and rub against them teasingly. Seemingly amused, the male predator wastes no time in giving you what your body so desperately needs, his exotic cock causing your mind to explode in pleasure as he breeds you again and again throughout the night. Eventually when he moves to leave, you find yourself following him along eagerly, much to his amusement, the predatory male taking you back to his den, where he breeds you again several more times, as you bleat submissively underneath him, happy to finally have found a properly dominant male to submit to. You adapt to your new life as his predatory plaything with surprising ease, and before long you have his lovely babies on the way, and you just can't help but look forward to taking care of them for him.";
			otherwise:
				if cocks of player is greater than 0:
					say "You feel somewhat grateful when the rescue arrives, as they take you to their base to make sure you are no longer infectious. Once there, you waste no time in convincing the all too pliable female nurses to clear you for release, teasing them with your ram-like musk, and making them promise to follow after you as soon as they can. Grinning you head out into the world eagerly, already planning out the best way to acquire a nice flock to play with, and the best way to make a living. You eventually find yourself in one of the major cities, making some contacts, and working for minimum wage, under a lazy and abusive male supervisor, which is an offense to your Ram like dignity. When one of the nurses finally shows up, you waste no time in teasing and playing with her, enjoying how she begs and pleads for you to change her and make her your ewe. Once you finally give in and finish changing her, you have an amusing idea, which your new ewe eagerly goes along with, luring your offensive supervisor out with tempting glimpses of her changed body. When he is fully distracted and in your apartment, you strike, your ewe eagerly holding him down while you make a lovely new ewe for your flock, with your two first flock members by your side, it is easy enough to acquire several more. Soon you quit your old job entirely, and are able to relax in style, having your new ewes work for you, or often enough renting your shapely flock members out to curious people for a night or two of mind blowing sex, and some of those who come back often enough end up finding out just how mind-blowing the sex can be as a female ewe as well. It's a ram's life...";
				otherwise:
					say "When the rescue comes, several of the soldiers are amused by your sheep-like new body, and make several jokes as they return you to their base. Feeling somewhat aggressive, you end up challenging several of the soldiers to wrestling matches, which your new form lets you win handily. Flush with victory, you end up offering to have some fun with some of the recently defeated soldiers, an offer they heartily accept. Several hours and one amazing orgy later, you and a group of rather embarrassed looking new rams will emerge from the barracks, much to the amusement of their fellow squadmates. Your new friends will call in several favors in order to sneak themselves and you out of the camp without anyone else noticing, which leads you all piling in for a road trip to the nearest soldiers house. Several hours spent in the car with their masculine musk nearly drives you crazy, and your female scent is equally distracting to your new mates, and when you eventually arrive at the house, you are barely through the door before sheep-like bodies are rubbing up against each other again. After several days of near constant rutting, you finally feel somewhat satiated, and start to think clearly again, and though you still enjoy the approving looks of your mates as they stroke your soft fleece, your burning need is mostly sated. Once they introduce themselves, you begin planning your next steps, all of the males amusingly enough bowing to your dominance as you go over who they know who might make good additions to your small flock, as well as family members they think would benefit from your new changes. Soon you are on a new road trip together, your new rams making several phone calls to get people ready, while you head out to gather up  your soon to be flock members before you can all find someplace safe to settle down together, a smile stretching your muzzle as you look forward to how much fun you and your new flock are going to have together.";


Ram ends here.
