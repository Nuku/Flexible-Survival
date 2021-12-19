Version 4 of Centaur Stallion by Stripes begins here.
[ Version 1.2 - WS + oral ]
[ Version 2 - Add cock vore - Written by Rizzy, Coded by Kurainyx]
[ Version 3 - Reworked Victory Menu and added 2 scenes - Vinickus]
[ Version 4 - Added 2 more sex scenes, oral and rimming - Vinickus]

[Adaptation of Centaur Stallion for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Centaur Stallion to Flexible Survival."

Section 1 - Creature Responses

to say centaurstalliondesc:
	setmongender 3; [creature is male]
	project the Figure of CentaurStallion_soft_icon;
	if inasituation is true:
		say ""; [taken care of at the event source]
	else:
		say "     A centaur approaches you, galloping across the plains and unslinging his bow. His body is covered in tan, human flesh from the waist up. From the waist down, everything is covered in the short, brown hairs of a horse. His head is mostly that of a human male at first glance, but with a broad flaring nose and pointed ears. His upper body is human and strongly built, with hard muscles and broad shoulders on that tanned, male body. His arms are human in appearance and quite muscular. Being a centaur, his legs are replaced in their entirety from the waist down by the body of a horse. His muscled, equine body has slender legs leading to a set of four shiny black hooves. A long flowing tail trails behind. Below that equine body is a massive sheath, bloated and full, as are the watermelon-sized balls behind it.";

to say losetocentaurstallion:
	if inasituation is false:
		project the Figure of CentaurStallion_hard_icon;
		if wslevel is 3 and ( ( Cunt Count of Player is 0 and a random chance of 1 in 5 succeeds ) or a random chance of 1 in 4 succeeds ):
			say "     You are bowled over by the powerful centaur, landing in a heap in the dirt. He chuckles darkly at you as he straddles you, slapping his hefty cock across your [bodytype of Player] body a few times. He then gives a soft, exaggerated sigh as he starts to piss on you, his equine urine covering you with its impressive flow. You end up with a mouthful of it as the stream splashes across your face before finally coming to a halt with a few last squirts.";
			say "     Humiliated at being so used, his abuse of you does not end as his wet horsecock slaps against you a few more times. 'Start licking, you messy mare,' he orders. When you don't comply immediately, he stomps his hooves around you threateningly. Given no other option, you take his equine rod in your hands and guide it to your mouth. You lick and suck at it while your hands play along it, stroking along its impressive length. Still tasting his piss on it as the last drops of it leak out, that is soon replaced by drops of precum instead. You keep it up, forcing yourself to take more and more of his two feet of stallion meat into your mouth and throat. When he cums, he ends up pumping the bulk of his heavy load right into your belly, leaving you feeling full from his semen.";
			say "     Having sated himself, he steps back and pops his cock free of your throat and mouth. In the end, you are left wet and smelling strongly of a stable.";
			CreatureSexAftermath "Player" receives "OralCock" from "Centaur Stallion";
		else if vorelevel is 3 and a random chance of 1 in 3 succeeds and scalevalue of Player < 4:
			if HP of Player > 0:
				say "     As you throw up your hands to submit";
			else:
				say "     As you lower your defenses";
			say ", the male centaur gets a more twisted look on his face as he paces around you. Finally, he pushes you down to your knees and moves to press his cock to your face. Believing it to be a mere blowjob, you are surprised when he thrusts forwards, his tip sliding over your face and expanding to take your shoulders in. He moves you to a nearby rock, and he happily moans as his flesh tugs on you, pulling your face deeper into the musky tube half your length and bulging with your body as it pushes over your form.";
			say "     Soon, the centaur has you in up to your waist, and he decides to torture you a bit, the male going for a canter and a slow gallop. Your legs smack against the underside of that gut over and over as he runs, each upwards jerk of his cock pulling more and more of you in. Eventually, all that is left is your feet, and even they disappear from view, the bulge you make going down into a tight chamber filled with musky fluid, straining and stretching with your form. Aroused beyond belief now, the stallion gallops, looking for a mate. The swaying isn't as rocky in here, and you can feel the warm cum starting to help you nod off...";
			WaitLineBreak;
			say "     You're abruptly awoken as gravity shifts, and you can hear the sound of a female moaning. Putting two and two together, you realize that the stallion is fucking a mare, and likely plans to get you out of him that way! You push about, trying to get him to stop, but all that does is make him more aroused. Time goes on, the noise of sex muffled, but the ball you're in shakes with each thrust. Thankfully, you don't have to endure that for long as it feels like the tube above your head sucks on you and pulls up into the main part of his cock. Inch by inch, you slide deeper into the mare before you are shot out into her womb, coated in his spunk and desperate to try and avoid a possible scenario where you become the mare's child due to this. The centaur keeps his cock in though, and try as you might, you can feel something prick your belly button, and sleep overwhelms you...";
			if ublevel < 3:
				say "     You awaken sometime later to feel contractions around your body before you spill out onto the dry grounds of the Plains, the mare you had become child to giving birth to you. The nanites in your head scream as you fight the urge to give in to the infection, and with shaky newborn legs, you gallop away.";
			else:	[Goes into womb loop scene in Centaur Mare file]
				say "[CentaurMareWomb]";
		else: [normal scenes]
			if HP of Player > 1: [submitted]
				say "     Seeing this manly centaur, all mighty and powerful, moving in your direction makes you feel quite helpless, as you fall to your knees and allow him to have his way with you. He seems to find raise his eyebrows at first, cautiously approaching you, but when he notices you are not actually tricking him, his expression shifts to a wide smile as he laughs at you. 'What a little bitch, not even putting up a fight! Either you know your place or you're just a slut!' He continues to taunt and mock you for an action he considers weakness while straddling around you, ordering you to stand while he examines your body.";
			else: [Just lost or threw fight]
				say "     After fighting the centaur stallion for a while, you realize you cannot beat him. He still stands strong while you have taken quite some damage, until your body finally gives in and you collapse on the ground. The centaur then approaches you, laughing and mocking you for losing the combat. 'I almost pity you. Maybe you're meant to be just a bitch...' he trails off in thought as he straddles around you, ordering you to stand, which you do so with quite some difficulty, while he examines your body.";
			if Player is female:
				say "     Noticing your feminine bits, he gives out a pleased grunt. 'Looks like you've got something I can use,' he says, before making a sudden move on you. The centaur stallion pins you to the ground, forcing you on your hands and knees. Next comes a sudden pressure between your legs as you realize his intentions. The wild stallion man fully intends to mount you, his huge equine cock now simply laying on top of your back, feeling heavy, throbbing and already leaking at the mere anticipation of penetrating you. 'Lucky you. Seem like you get to be my mare this time.' Brief moments later, you feel that huge meat of his sliding all the way towards your rear, passing it, then it is slowly pressed against your pussy.";
				if Cunt Tightness of Player < 6:
					say "     You can feel his enlarged, flared glans pressing at your labia, trying to spread open your entrance for him until they finally give in and allow him entry, giving you a mix of pain and pleasure as it continues to push in deeper.";
				else:
					say "     Due to your size, he finds no problem pressing his flared glans against your labia to spread open your entrance for him. They easily give in and allow him entry, giving you delightful pleasure as he continues to push in deeper.";
				say "[if Cunt Depth of Player < 28]With one thrust, he drives as much of his huge cock inside you as he can, your pussy being too small to accomodate his entire length, but the centaur is keen on making it work, at least for him[else]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending a surge of bliss through you as he makes an excited grunt, having found a mare big enough to take his entire length[end if]. He then continues to pound you, pushing in and out of you, grunting in a near bestial manner he fucks you with that gigantic rod, thrusting over and over. With a sound almost like a neigh, he drives deep inside you and cums powerfully, filling you with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground.";
				WaitLineBreak;
				say "     'That's a good mare. Best you know your place when you meet one of us again!' As he is done taunting you, he finally withdraws and trots off proudly.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Centaur Stallion";
			else if Player is submissive and anallevel > 1 and a random chance of 1 in 2 succeeds:
				say "     The centaur stallion snorts in frustration at your lack of a pussy for him to fill and presses you to the ground. 'Not even a pussy for me to fuck?!' he asks in a rhetoric manner, stepping overtop you and stomping his hooves on the hard ground around you. As you attempt to avoid them, your submissive instincts cause you to raise your rear, inadvertently putting it beneath the centaur's swinging cock. 'Oh, I see what you want... You're not a mare, but you crave to be one, huh?' As his equine meat slaps against your rear a few times, he shifts his stance and starts grinding it against your backside, right between your asscheeks. It truly makes you want to beg for it, feeling that warm and massive equine dong poking and rubbing at your needy hole over and over...";
				say "     By the time your rear is covered in precum, the centaur thrusts into you with a grunt of pleasure. He slides his horse cock deeper and deeper, driving into you, its flat glans spreading your insides wide before he truly starts plowing into you. You cannot help but moan beneath him, with his huge cock now deep inside you, as he treats you like the mare you wished to become for him. 'This is what you truly wanted, yeah? All you gotta do is ask...' He thrusts in and out of you, grunting in a near bestial manner as that gigantic rod pounds into you over and over. With a sound almost like a neigh, he drives deep inside you and cums powerfully, filling you with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground.";
				WaitLineBreak;
				say "     'You make a great mare. You should just embrace it, although I ain't gonna lie, I loved drilling your ass too.' As he is done taunting you, he finally withdraws and trots off proudly.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Centaur Stallion";
			else:
				say "     The centaur stallion snorts in frustration at your lack of a pussy for him to fill and presses you to the ground. 'Not even a pussy for me to fuck?!' he asks in a rhetoric manner, stepping overtop you and stomping his hooves on the hard ground around you. As you attempt to avoid them, his huge cock slaps against his equine belly, again and again, growing bigger, thicker and harder. His pre dribbles down onto you, which prompts the centaur to stop messing with you, as he realizes how horny he is. He stops and looks down at you, seeing how powerless you are against a large beast such as himself, and that seems to throw his cock into a fully erect state.";
				say "     You almost cannot believe it as the centaur descends his lower body over you, pinning you down even harder against the ground as his massive cock remains pointed at your face. 'Please me however you can, then. I'm not leaving until you've drained my balls,' he states, ramming his horsecock against your face a couple more times, making demands of you, 'Work it!' You are left with no choice but to give him what he wants, so you press your lips against those flared glans of his while rubbing his shaft with both your hands. Its taste is strong, animalistic, but also very masculine, which causes your mind to think that you actually enjoy this.";
				WaitLineBreak;
				say "     With a lot of licking and rubbing, the centaur's climax finally gives signs as his precum flow becomes more steady. With a loud grunt, blast after blast of centaur cum splatters onto you, leaving you soaked in his semen as he pulls back. He snorts again and trots off, giving you no further words, frustrated and only a little satisfied.";
				CreatureSexAftermath "Player" receives "OralCock" from "Centaur Stallion";
				decrease HP of Player by 10;
			if "Female Preferred" is listed in feats of Player and FemaleList is not banned:		[change target to Mare for infection]
				repeat with y running from 1 to number of filled rows in Table of Random Critters:
					choose row y in Table of Random Critters;
					if Name entry is "Centaur Mare":
						now MonsterID is y;
						break;
	else:
		say "";

to say beatthecentaurstallion:
	if inasituation is false:
		project the Figure of CentaurStallion_hard_icon;
		say "     What kind of sex do you want to have?";
		choose row MonsterID from Table of Random Critters;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if player is male:
			choose a blank row from table of fucking options;
			now title entry is "Fuck his ass";
			now sortorder entry is 1;
			now description entry is "Use the centaur's hole for your own pleasure";
		[]
		choose a blank row from table of fucking options;
		now title entry is "Get fucked";
		now sortorder entry is 2;
		now description entry is "Have the centaur take your ass";
		[]
		if player is female:
			choose a blank row from table of fucking options;
			now title entry is "Get your pussy pounded";
			now sortorder entry is 3;
			now description entry is "Have the centaur take your pussy";
		[]
		choose a blank row from table of fucking options;
		now title entry is "Get rimmed by the centaur";
		now sortorder entry is 4;
		now description entry is "Force that cocky face against your hole";
		[]
		choose a blank row from table of fucking options;
		now title entry is "Suck the centaur's cock";
		now sortorder entry is 5;
		now description entry is "Take that equine cock into your mouth";
		[]
		if player is male:
			choose a blank row from table of fucking options;
			now title entry is "Get the centaur to suck your dick";
			now sortorder entry is 6;
			now description entry is "Force that cocky man between your legs";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if (nam is "Fuck his ass"):
						say "[FuckCentaurAss]";
					else if (nam is "Get fucked"):
						say "[CentaurFucksPlayer]";
					else if (nam is "Get your pussy pounded"):
						say "[CentaurFucksFemalePlayer]";
					else if (nam is "Get rimmed by the centaur"):
						say "[CentaurRimsPlayer]";
					else if (nam is "Suck the centaur's cock"):
						say "[SuckCentaurCock]";
					else if (nam is "Get the centaur to suck your dick"):
						say "[CentaurSucksPlayerCock]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Opting to leave for now, you leave the centaur behind.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else:
		say "";

to say FuckCentaurAss:
	say "     You know what he'd do to you if he won, so you decide to turn it back in kind. There's not much like a good ass, and even if [if cock length of player > 8]it'll be a tight fit[else]it'll be a bit loose[end if], you know it'll be fun to knock this cocky male down a peg. It's always fun to use an ego driven male as just a sleeve, especially when you know they'll like it. So you walk up behind the crumpled man, his legs folded up beneath him as he tries to rest and recover from the brutal smackdown you gave him. That's a boon to you, because now his hole is at just about the perfect height for your dick. All you have to do is give him a nudge, and smack your erection against his ass until he gets the hint, slightly raising his back legs. However, he still tries to cock-block you, in a rather cute way, by keeping his tail right over his hole. It obviously does little to discourage you, as all you have to do is yank it to the side, and yank it you do, forcing a neigh of discomfort from your new bottom-boy.";
	say "     From your new position, and with his tail twined around your hand, all you have to do is press your erection to his hole[if cock length of player > 8]. It takes a bit of force, and some spit, but you manage to pop the tip in, earning yet another neigh of irritation from the centuar. With your tip inside the temp-toy, it's not long before you're half in him. You even find yourself quickly pressing your hips against that horse's ass[else]. It is quite easy to slip all the way into his winking, donut hole, forcing a soft, half-hidden moan from the centaur's human half[end if]. The hole winks around your cock, tightening up [if cock length of player > 8]even more[else]at least a little[end if]. This drives you to start actually fucking the man, pulling halfway out before slamming right back in. You groan out in pleasure, the almost leathery insides providing so much sweet friction. The centaur even starts to get into things himself, even if his face says otherwise. His rear legs begin to shift to allow a better angle, letting you driving downwards more thoroughly, no doubt hitting his button.";
	WaitLineBreak;
	say "     His ever more frequent moans confirm that you're hitting the right spot. The centaur had started out much more subdued, but as you ravage him, his vocals get much louder. Moans carry out from the human half, driving you to pound him even harder. Your hips slam into him at such speed that the moist sounds of fucking, and the sound of flesh slapping against flesh, thoroughly covers the moans from you both. If anyone was nearby, his pride might be slightly saved, but that does little to change your actions. You continue to pound right into his new fuck-chute, all too happy to break this boy in for the rest of the herd. The idea of that, of this centaur getting turned into a bottom-boy for a herd, really drives you closer to the edge. You can't help it, the thought of them smelling your cum on this one, the recognition of why, and the next step of them breaking him in further, really gets you going.";
	say "     So you push that little bit more, pounding into that ass as it tightens around you. It even begins to throb, a loud neigh escaping from that human-half. Looking down, you see cum pooling out from under him, a sign that you've done your job well. With that job done, there's only one thing to do, right? You go all out, fucking his ass as you yank on his tail. One, two, three, ten seconds later you slam into him full force, holding your hips to his rear as you unload what feels like pints of cum right into his stretched hole. Grinning to yourself, you let the rest of your seed dribble out into this broken man, waiting a few minutes before pulling free. You then wipe your cock along the fur on his ass, marking him with what little cum wasn't forced deep inside his body. Satisfied, you turn and grab your thing before walking away, leaving the centaur to whatever his new future may bring.";
	CreatureSexAftermath "Centaur Stallion" receives "AssFuck" from "Player";

to say CentaurFucksPlayer:
	say "     You know this cocky bastard will take this the wrong way, as some kind of proof of his superiority, but that cock is just... too tempting to resist. In either case, you walk up to him, stroking a hand along his side. Your fingers making contact with his coat, draws a flinch, and various twitches throughout the centaur's body, but that's no doubt because of what he thinks you are going to do. He has no idea what you really want, and while it's tempting to tease him a bit longer, his musky scent drives you towards something more direct. So, you reach under his belly and grab his mottled shaft, stroking it, milking it as the centaur rolls onto his side. It's hard to tell how intentional his repositioning is, and how much he's now driven by pure instinct. 'I should've known you were just an aggressive bitch.' Well, that answers that.";
	say "     The centaur knows now, so what's the point in teasing him any longer? With him on his side, it takes only a bit more encouragement to roll him onto his back. His upper, human half grips the ground beneath you both, keeping his stallion cock pointing to the sky. 'This should make it easier for you to ride my massive cock. It's all you bitches ever want anyway.' His remarks almost make you want to change approach, but the scent that wafts off his length draws your eyes to roll up into your head, [if player is male]your length throb between your legs[else if player is female]your pussy twitch in excitement[else]your body shudder[end if], and your mind flood with all sorts of images. There's nothing quite like horse cock.";
	WaitLineBreak;
	say "     As tempting as it would be to just lean in and huff all that musk straight to your brain, there's a far more demanding thought shooting through your skull. The centuar's equine half is beyond broad, so as you try to straddle him, [if scalevalue of player > 3]your feet barely hold firm on each side of it[else]you find that neither foot touches the ground, both simply hanging over it[end if]. This gives an interesting image to the world as you lean forward and grab that equine dick, angling it towards your ass. Centaurs are quite productive, thankfully, and so when that slick tip pokes against your hole, little spurts of seed paint your anus. You could even swear some of it dribbles straight into your ass, breaking through the dam of muscles already. In either case, it takes only a bit of effort to pop the blunt tip inside.";
	say "     Thank god for nanites, as your ass stretches like a dream around that rod, all of that slick pre doing wonders. You start to think that maybe there's something more to that fluid, but before you can muster much focus on that path, the centaur bucks his hips. Just the tip becomes the entire first half of the cock, the thing spearing straight into your rectum as the median ring bumps your ass. 'You looked too busy with your mind, when you should've been busy with that ass.' You would've growled in annoyance, if a moan hadn't escaped your lips instead. 'Thought so,' is all he gets out before your body instinctively pushes against that ring, forcing it to pop right in. From there, it's but a scant few seconds before your ass rests against those grapefruit sized balls.";
	WaitLineBreak;
	say "     After you rest your ass against those boiling balls for a few moments, you pull yourself back up the length, feeling the flared tip pull at your anus as you leave just that bit within your body. This draws a grunt from the centaur, who forces his hips upwards, pushing a few inches back in you. Getting the hint, you slide down once more, but faster, and you then slide back up, and then down, and up once more. You build up a rhythm until you're bouncing up and down fast enough to fill the area with wet slaps. It feels so good, that hard pole driving into your depths, then sliding almost all the way back out. There's nothing like a big dick, and this is among the biggest, the size only further cemented by the light stomach bulge that's visible every time you push yourself against those balls.";
	say "     All things must eventually end, however, and you know this will end with a brilliant explosion, and so you go even faster. The centaur is speechless, panting, but speechless. A grin dusts your features as you work yourself even more, drawing this male closer and closer to his brilliant finish. You soon feel the balls begin to throb every time you push back against them, as his cock pulses inside you, and so you squeeze your hole around his length just a bit more. This forces a particularly loud neigh from the centaur as he shoves his equine hips into you, holding himself balls deep as you rest your ass against those pillowy, throbbing spheres.";
	WaitLineBreak;
	say "     The first shot almost hurts in its brutal velocity, in its vicious heat. However, the shots after that only send waves of ecstasy through you, forcing your [if player is male]length to throb as it fires out its own load all over the horse half of the centaur[else if player is female]pussy to throb and squirt out gobs of your juices all over the horse half of the centaur[else]body to go into convulsions as you are filled with pure pleasure[end if]. Glob after glob of cum fills you, stretches your stomach, and drives you ever more over the edge to pleasure driven insanity. However, after what feels like the hundredth pound of cum, the centaur's orgasm abates, leaving his cock to dribble out much smaller quantities of fluid.";
	say "     While it still feels heavenly to have him slowly fill you with more cum, you should get moving. So you rest against his horse body for only long enough to get your legs to stop shaking, but even then, you find it hard to pull yourself off that orgasmic length. Eventually, you manage to separate from that man, gather your things and hobble off to somewhere new.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Centaur Stallion";

to say CentaurFucksFemalePlayer:
	say "     You know this cocky bastard will take this the wrong way, as some kind of proof of his superiority, but that cock is just... too tempting to resist. In either case, you walk up to him, stroking a hand along his side. Your fingers making contact with his coat, draws a flinch, and various twitches throughout the centaur's body, but that's no doubt because of what he thinks you are going to do. He has no idea what you really want, and while it's tempting to tease him a bit longer, his musky scent drives you towards something more direct. So, you reach under his belly and grab his mottled shaft, stroking it, milking it as the centaur rolls onto his side. It's hard to tell how intentional his repositioning is, and how much he's now driven by pure instinct. 'I should've known you were just an aggressive bitch.' Well, that answers that.";
	say "     The centaur knows now, so what's the point in teasing him any longer? With him on his side, it takes only a bit more encouragement to roll him onto his back. His upper, human half grips the ground beneath you both, keeping his stallion cock pointing to the sky. 'This should make it easier for you to ride my massive cock. It's all you bitches ever want anyway.' His remarks almost make you want to change approach, but the scent that wafts off his length draws your eyes to roll up into your head, [if player is male]your length throb between your legs[else if player is female]your pussy twitch in excitement[else]your body shudder[end if], and your mind flood with all sorts of images. There's nothing quite like horse cock.";
	WaitLineBreak;
	say "     As tempting as it would be to just lean in and huff all that musk straight to your brain, there's a far more demanding thought shooting through your skull. The centuar's equine half is beyond broad, so as you try to straddle him, [if scalevalue of player > 3]your feet barely hold firm on each side of it[else]you find that neither foot touches the ground, both simply hanging over it[end if]. This gives an interesting image to the world as you lean forward and grab that equine dick, angling it towards your already moist pussy. Judging by how wet you are, you would have enough lubrication as it is, but as centaurs are so productive, little spurts of seed are added to the mix of fluids coating your lower lips when that slick tip pokes against your womanhood. You could even swear some of it dribbles straight inside, as you feel its warmth crawling up in you. In either case, it takes only a bit of effort to pop the blunt tip inside.";
	say "     Thank god for nanites, as your pussy stretches like a dream around that rod, all of that slick pre and your own juices doing wonders. You start to think that maybe there's something more to that fluid, but before you can muster much focus on that path, the centaur bucks his hips. Just the tip becomes the entire first half of the cock, the thing spearing straight towards your womb as he thrusts in deep, his median ring bumping against your lower lips. 'You looked too busy with your mind, when you should've been busy with that pussy.' You would've growled in annoyance, if a moan hadn't escaped your lips instead. 'Thought so,' is all he gets out before your body instinctively pushes against that ring, forcing it to pop right in. From there, it's but a scant few seconds before your rear rests against those grapefruit sized balls.";
	WaitLineBreak;
	say "     After a few moments, you pull yourself back up the length, feeling the flared tip pull at your cunt as you leave just that bit within your body. This draws a grunt from the centaur, who forces his hips upwards, pushing a few inches back in you. Getting the hint, you slide down once more, but faster, and you then slide back up, and then down, and up once more. You build up a rhythm until you're bouncing up and down fast enough to fill the area with wet slaps. It feels so good, that hard pole driving into your womanly depths, then sliding almost all the way back out. There's nothing like a big dick, and this is among the biggest, the size only further cemented by the light belly bulge that's visible every time you push yourself against those balls.";
	say "     All things must eventually end, however, and you know this will end with a brilliant explosion, so you go even faster. The centaur is speechless, panting, but speechless. A grin dusts your features as you work yourself even more, drawing this male closer and closer to his brilliant finish. You soon feel the balls begin to throb every time you push back against them, as his cock pulses inside you, and so you squirm around his length just a bit more. This forces a particularly loud neigh from the centaur as he shoves his equine hips into you, holding himself balls deep as you rest your butt against those pillowy, throbbing spheres.";
	WaitLineBreak;
	say "     The first shot almost hurts in its brutal velocity and vicious heat. However, the shots after that only send waves of ecstasy through you, forcing your pussy to throb and squirt out gobs of your juices all over the horse half of the centaur[if player is male], and your cock to pulsate as it fires out its own load all over[end if]. Glob after glob of cum fills you, stretches your womb, and drives you ever more over the edge to pleasure driven insanity. However, after what feels like the hundredth pound of cum, the centaur's orgasm abates, leaving his cock to dribble out much smaller quantities of fluid.";
	say "     While it still feels heavenly to have him slowly fill you with more cum, you should get moving. So you rest against his horse body for only long enough to get your legs to stop shaking, but even then, you find it hard to pull yourself off that orgasmic length. Eventually, you manage to separate from that man, gather your things and hobble off to somewhere new.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Centaur Stallion";

to say CentaurRimsPlayer:
	say "     Having beat the centaur into submission, you wonder if he'd still like a chance at your ass. You know it may not be exactly what he was going for, but what does his opinion matter anyway? The strongest survive out here, and the strongest get their satisfaction. He knows this, and he knows that he'll enjoy it too. That's just how this works. You walk up to the centaur, dropping anything that might get in the way of your plans. Once before him, you know that his darting eyes are simply trying to avoid drinking you in. If he drinks too much, he might just get even more submissive to your whims. It doesn't exactly matter, but you know just how to get him that much more needy. You grab the back of the centuar's human head, forcing him to stare directly at your groin, and then, you shove him right between your legs [if player is male]holding his nose against your testicles[else if player is female]holding his nose against your pussy[else]holding his nose right at the muskiest part of your body[end if].";
	say "     He quickly gets the hint, lapping at your groin as he does whatever he can to please you. There's not much time for that, though. You quickly readjust your grip, pulling him back before spinning around. That puts your ass in full view of the centaur's human face. Your cheeks spread as you hunch over, forcing you to release his head. However, your hole is now fully visible to the world, no doubt cluing the male into what's coming next for his face. It takes very little coaxing, surprisingly enough, to get him to nuzzle at your ass. The centaur's human face brushes over your glutes as his nose gets tantalizingly close to your hole. There's nothing for him to be concerned about, merely musk awaiting his sense of smell. That's all that'll be needed to break him down, though: the smell of a real man.";
	WaitLineBreak;
	say "     You angle your hole towards him, pushing your ass backwards as his breath wafts over your rear. The man knows what's expected of him, and all you have to do is wink your hole at him to draw him to follow through. The centaur's wet tongue tentatively pokes at your taint, sliding up towards your hole as you angle yourself more directly. He seems to be trying to lap over your hole, but that's not enough. You keep your hole pressed right against that mouth, the centaur's face pressed between your cheeks. There's no escaping from your ass, and you doubt he'd even want to at this point. If you can tell anything from his increasingly eager licks, he's falling right in line.";
	say "     That tongue begins to probe at your star, the saliva dripping tip probing further and further into you. At first, it barely gets through the ring of muscles, but as it wiggles back and forth, it gets closer to slithering past your anus. The centaur grows more steadfast as time goes on, fully dedicated to working your hole. The centaur's mouth even begins to suction onto your hole, sucking on it as the tongue digs in deeper. The combination of penetration and suction really starts to drive you towards an orgasmic time. The domination aspect of things drove you for a lot of this, but now that he's getting into it like a good sub, you're just going to enjoy his worship.";
	WaitLineBreak;
	say "     The pleasure radiating out from your ass fills your crotch with warmth. That same warmth even begins to creep up your back and neck, bringing a lightheaded euphoria to the pleasant sensations the centaur is giving you. His lips suckle and wiggle over your hole, all while his tongue pushes all the way into you. The salivating muscle soon strafes left to right, up and down, looking for that... and it finds it. Your [if player is male]prostate gets jabbed, and jabbed again, the tongue beginning to grind into that g-spot[else if player is female]walls quiver around that muscle, your vagina filling with pleasure as the vibrations travel through your groin[else]hole inexplicably quivers around that tongue, almost giving you an orgasmic sensation as it laps at your insides[end if].";
	say "     That ecstasy soon fills you to the brim, your [if player is male]erection straining in the air as it pulses and throbs, the urethra spreading as large globs of cum shoot out. It cakes the ground as the tonguing carries your pleasure forward. Even when your seed begins to only dribble out, you feel like you're still in the clutches of orgasm, your cock jerking in the wind as you almost topple over from the sheer pleasure [else if player is female]pussy throbs as pleasure pulses through your body. You feel yourself tightening up as fluids dribble out from your pleasure stricken vagina. The tongue up your ass only helps to carry on the pleasure, the warmth spreading through your whole body as your toes curl up. Your hands then ball up into fists as you feel the pleasure only heightening[else]body fills with sudden warmth, ecstasy flooding your mind. The tongue buried in your ass manages to twist out screeches of pleasure, your mouth hanging open as your body shudders in desire[end if]. There's not much to do but let the ecstasy continue to shoot through you, drawing out more and more moans.";
	WaitLineBreak;
	say "     That tongue doesn't stop playing along your insides, the centaur all too happy to keep you moaning to the world. However, as it begins to fade back into a euphoric throb, rather than an ecstatic orgasm, you step forward, letting the centaur's tongue slip from your hole. You then give him a grin and a wink, gathering your things before heading off. You got what you wanted, and while the throbbing pleasure slowly fades, you feel all the more empowered to take down any more centaur's in your way.";
	CreatureSexAftermath "Centaur Stallion" receives "Other" from "Player";


to say SuckCentaurCock:
	say "     You know it's a bad idea to give power to such a large beast, but now that he's defeated, maybe it'll be safe enough. Walking towards the male, you see his body shuddering, even his human half flinches away from your approach. However, when you stroke a hand down his side, calmly brushing through his fur, the flinching slows. You don't want to waste time, though, and so you get to pushing him onto his side, revealing his belly to the world. Nevertheless, that's not the most important reveal, as his semi-erect cock is now fully unveiled as well. The tip is broad and throbbing, dripping out a gooey treat for you, and even in defeat, it seems to harden by the second. Although, given that he's no doubt put two and two together, this may not feel like defeat to him.";
	say "     Your hands are soon stroking along the centaur's stomach, tracing their way over the powerful muscles, heading right towards that eager length. You don't feel much like an overly eager mating, but a calm blowjob seems right up your alley. There's little time to waste, and so you stop the subtle movements, suddenly gripping his length in two hands, giving it several good pumps. This brings about ever more white nectar, drawing your tongue to poke at the tip of that cock, sucking the dribbling seed right down your throat. You don't stop there, however, your lips suctioning right onto the crown of that equine shaft. This draws a neighing moan from the human half above you, and that signals an onslought of more precum.";
	WaitLineBreak;
	say "     You almost can't keep up with the growing flow of his seed, the increasingly eager signs of his pleasure. You're no quitter, and so you knuckle down and suckle it all into your mouth. These efforts to gobble down his precum only give him more pleasure, the suctioning along the centuaur's tip forcing a new throbbing through his length. There's little confusion on what that means. There's no reason to stop, not even a reason to slow down, and so you jerk your hands up and down that mottled shaft, letting your lips suckle all the new seed right out of his urethra. It's a double trouble method, your hands keeping his shaft moving while your mouth lathers up his tip. Normally you'd try to shove more of that cock down your throat, but that would only make it harder to gather up more of his earthy flavor.";
	say "     You want to taste it all, to feel every ounce across your tongue. There's nothing to deter you, and even if there was, you'd never let a single thing get between you and this coming meal. There's several more throbs, more pulses through the ever hard length. You know that this can only last so long, but there's no reason to slow. You're going to milk out everything, you're going to drive this stallion to a maddening release, and you're going to make sure he doesn't forget this. So you're soon moving at lightening speed, your hands going fast enough to blur around his shaft, your tongue digging into the centuar's urethra as your lips continue to suckle. The pulses grow faster, the throbbing more needy, and even as his balls pull up, you don't slow.";
	WaitLineBreak;
	say "     The next moment is a predictable one. His urethra dialates, spreads around your tongue, and the cascading that follows is one that you wish you were prepared for. The first shots slam your tongue back into your mouth, push your lips away from the tip, and cause your head to bob back. However, this isn't enough to deter you, as you soon force yourself back onto the tip. Your face and upper torso is already caked with cum, but you're not going to miss out on any of the centuar's masculine taste. That tip is soon sealed against your lips, your tongue flat against the bottom of your mouth as you suck that seed down your gullet. It's hard work, and it takes a lot of patience, but you manage to get a good method going. You swallow every chance you get, drinking down the cum.";
	say "     With each swallow you narrow your lips, letting some of it splash onto your face, and then you open your maw once more, sucking the cum inside again. This goes on and on, and on, until the flow slows, letting you simply suck the cum straight out, leisurely swallowing as time goes on. This itself feels like it goes on for even longer than the previous stage, but even this has to end eventually. Your gut feels swollen at this point anyway, so that may be for the best. You can only take so much, and this virile male has given a lot. In either case, you soon pull back from the cock before you, letting the bits of cum left dribble to the ground. You then find yourself resting against his stomach, dozing off.";
	WaitLineBreak;
	say "     There's a startled moment for you as you wake up. You expect to be surrounded, tied up, or taken to some far off camp, but you realize you're still reasting against the warm body of the centaur from before. His cock is still half hard, but his human half seems to have dozed off. You quickly move to gather your things, ignoring the dried cum across most of your body, and then you head off towards a new adventure.";
	CreatureSexAftermath "Player" receives "OralCock" from "Centaur Stallion";

to say CentaurSucksPlayerCock:
	say "     Looking at the defeated centaur, now so vulnerable and helpless, an idea comes to mind. You could very easily reach for his head and make him do anything you like, and judging by the boner you are getting from this fantasy alone, this might very possibly be what you will be doing. When you stare directly into the stallion man's eyes and make a move toward him, he frowns inquisitively. 'What are you-' he tries to ask, before you [if player is naked]make that evident by grabbing your exposed cock[else]pull out your cock and grab it[end if], then stroke it until it becomes fully erect. You then force the centaur to roll to the side, so that his human half gets closer to the ground, and slide your hand across the back of his head. He eyes you back almost in disbelief, but you reassure him it is what he thinks.";
	say "     Despite his protests, you start slapping his face with your cock before pointing it towards his mouth, then press against his lips to make entry. Reluctant, he lets you have your way, but you really do not give him a choice. Grabbing him by the hair, you guide him towards every spot you want his tongue on and order him to put on an effort, which makes the centaur groan. With this, you lead him over the side of your shaft, have him lick all the way across your dick, towards your gonads, then back up to the tip, before pushing against his lips once more. His tongue welcomes you, feeling nice as it wiggles around your manhood, especially underneath the tip, where the stallion focuses his licking. It looks like he actually knows what he is doing, as this makes you throb immensely...";
	WaitLineBreak;
	say "     Having finally, or at least seemingly, accepted his fate, the centaur cooperates as you pull his head in and out, combining this movement with well-placed thrusts as your excitement grows. With your lust, comes the need for more, intensity rising until you find yourself straight-up facefucking him";
	if player is dominant:
		say ". You make the centaur look at you as you drill his throat, showing him who is in charge, and his whimpering expression sends you a rush of power that makes your cock throb harder than ever. His teary eyes only makes you further want to dominate him, make sure he knows his place and continue to fuck his face harder and harder. You show him no mercy, and he complies like the good horse boy he is, keeping up with you as eagerly as only one of his mares would.";
	else:
		say ". You look back at the centaur's face, noticing his teary eyes, and realize he must really not be used to have his throat fucked. Seeing that you really do not want to go too hard on him, you slow down whenever he needs to catch a breath, but the stallion seems keen on keeping up the pace, perhaps to be done with this ordeal once and for all.";
	say "     When you happen to look at the lower side of his horse body, however, you notice something interesting. The centaur has gotten an erection from this, and not only that. He is grinding his massive horsecock against the ground in an attempt to bring himself some relief while you use his throat for your own pleasure. Who would say he likes sucking dick? You can, now, as he seems more than happy to take yours in his mouth over and over, your rhythm increasing even more. Naturally, this entire experience leads you closer and closer to your point of no return, your climax right about to happen, but you do not want this to be over yet. You slow down, keeping yourself on edge, enjoying the centaur's mouth for just a while longer as he, too, starts to feel it coming on his end.";
	WaitLineBreak;
	say "     With both of you so aroused, it does not take long until you simply explode in his mouth. But you are not content with just blowing it in his face, so you lock your cock in his mouth, shove it several inches in, and make the stallion swallow every drop of spunk you are set on giving him. His own load is also shot right beneath your feet, powerful spurts that nearly soak them due to how far they reach, and quite a great amount of it too. Once it ends, you squeeze the very last remainings for all the cum you had to offer into his mouth, then pull away, smiling at the centaur. He looks at himself, completely petrified at what just happened, humiliated... but his half-hard cock does not lie.";
	say "     Now satisfied and feeling empowered, you decide to gather your things and turn around to walk away, leaving the embarassed centaur behind, to head off towards somewhere new.";
	CreatureSexAftermath "Centaur Stallion" receives "OralCock" from "Player";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Centaur"; [name of the overall species of the infection, used for children, ...]
	add "Centaur Stallion" to infections of EquineList;
	add "Centaur Stallion" to infections of HybridList;
	add "Centaur Stallion" to infections of FurryList;
	add "Centaur Stallion" to infections of MythologicalList;
	add "Centaur Stallion" to infections of MaleList;
	add "Centaur Stallion" to infections of BluntCockList;
	add "Centaur Stallion" to infections of SheathedCockList;
	add "Centaur Stallion" to infections of TaurList;
	add "Centaur Stallion" to infections of TailList;
	now Name entry is "Centaur Stallion"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The centaur stallion fires his bow at you, piercing your shoulder with an arrow![or]The centaur stallion charges at you, knocking you to the ground roughly![or]The centaur rears up and manages to land a heavy hoof on your shoulder![or]The centaur swings a punch at you, bashing you in the jaw![or]The stallion rears up, causing his semi-hard cock to slap against his equine belly and release a spurt of precum onto you and also giving you a good view of his impressive penis and bloated balls![at random]";
	now defeated entry is "[beatthecentaurstallion]";
	now victory entry is "[losetocentaurstallion]";
	now desc entry is "[centaurstalliondesc]";
	now face entry is "mostly human at first glance, but with a broad flaring nose and pointed ears. It has a male cast to it";
	now body entry is "that of a centaur, with a muscled, human upper torso. Your body is chiseled and has well-defined muscles. Broad shouldered and strongly-built, it evokes the male form. Your arms are strong and muscular, and very human in appearance. Your lower body is that of a horse, with a muscular equine form and slender legs leading to a set of shiny black hooves";
	now skin entry is "tanned human flesh from the waist up. From the waist down, everything is covered in the short brown hairs of horse over your";
	now tail entry is "You have a long, flowing tail like a horse coming from just above your behind. It flicks and swishes from time to time.";
	now cock entry is "[one of]black, equine[or]flared, equine[or]sheathed, equine[or]horse-like[at random]";
	now face change entry is "it takes on a human appearance with hard, masculine features. As the changes continue to progress, your nose flares wide and your ears taper up into points";
	now body change entry is "your torso becomes strong and muscled, with broad, manly shoulders. The muscles on your arm and chest become well-defined, as if having had years worth of muscle training within a matter of moments. But as the changes progress, your legs and hips become unsteady and you are no longer able to stand as they twitch uncontrollably. Spots fill your eyes as the rush of this transformation overwhelms your senses. When your vision finally clears, your lower body has become that of a horse";
	now skin change entry is "a sudden itching from below your waist brings to your attention the short brown hairs completely covering you from your waist down. However, from the waist up your skin is tanned and smooth human skin";
	now ass change entry is "a twitching quiver runs down your spine as it extends and grows a horse's tail";
	now cock change entry is "it twitches and throbs as it stiffens and reshapes itself. The head flares like a horse's and releases several spurts of cum on the ground as it turns a glossy black. As your member grows soft again, a sheath forms around the base to keep the swollen member safe and secure";
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 35; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 28; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 60; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "centaur cum";
	now lootchance entry is 33; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "centaur cum";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[at random]";
	now type entry is "centaur"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "Centaur Mare"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hoofstomp"; [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Hoof Stomp

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"hoofstomp"	retaliation rule	--	--	hoofstomp rule	20	--	--	--	--	--


this is the hoofstomp rule:		[double-damage hoof stomping]
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 ); [Double damage]
	if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The centaur rears up to attack you, slamming both hooves into [one of]you[or]your chest[purely at random], knocking your over briefly. [one of]While you're prone,[or]This allows it to use[purely at random] its hard, heavy hooves to [one of]pound at you[or]stomp away at you[or]strike you repeatedly[purely at random] until you manage to get out of the way and get back on your feet. This [one of]powerful[or]strong[or]devastating[purely at random] attack does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield while pinned]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of Player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";



Section 4 - Centaur Cum and Centaur Hair

Table of Game Objects (continued)
name	desc	weight	object
"centaur cum"	"Some centaur cum you've managed to collect... Why would you do that!?"	1	centaur cum
"centaur hair"	"Some thick, dark brown hair."	0	centaur hair

centaur cum is a grab object.
Usedesc of centaur cum is "[centaurcumuse]".

It is temporary.
centaur cum is cum.

centaur hair is a grab object.
Usedesc of centaur hair is "[centaurhairuse]".

It is temporary.

to say centaurcumuse:
	say "     With a little shrug, you tilt your head back and slam down the centaur cum, letting the thick, gooey contents of the jar slide down your throat. While it does slake your thirst a little, it also floods your body with infection.";
	PlayerDrink 6;
	if "Female Preferred" is listed in feats of Player and FemaleList is not banned:		[change target to Mare for infection]
		infect "Centaur Mare";
	else:
		infect "Centaur Stallion";

to say centaurhairuse:
	say "     You take the long strands of thick horsehair and stare at them. Feeling a growing compulsion, you place the roots of the tail at [one of]the base of your spine[or]at the back of your head[at random] and feel them start to grow into you.";
	if "Male Preferred" is listed in feats of Player and MaleList is not banned:			[change target to Stallion for infection]
		infect "Centaur Stallion";
	else:
		infect "Centaur Mare";

the scent of centaur cum is "The contents of the jar smell of men and horses, and musky, male arousal.".

the scent of centaur hair is "The hairs smell of women and horses, and the dry plains outside the city.".



Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Centaur Stallion Infection"	"Infection"	""	Centaur Stallion Infection rule	1000	false

This is the Centaur Stallion Infection rule:
	if Player has a body of "Centaur Stallion" or Player has a body of "Centaur Mare":
		trigger ending "Centaur Stallion Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     As your infection spreads within you, you find yourself drawn back to the open plains at the edge of the city. There, you seek out the other centaurs and join their herd";
			if Player is herm:
				say ". As a herm centaur, you are popular among the other members of the herd and are often mounted by the stallions and sought out by the mares in heat. You happily have sex with them all, whinnying lustfully as you mate with them";
			else if Player is male:
				say ". As a male centaur, you help to guard the territory. When they come into season, you are sought out by several of the mares in heat looking for you to give them a foal";
			else:
				say ". As a female centaur, you help gather food and tend to the young foals. When the time comes and you go into heat, you are mounted often by the stallions, ensuring you bear the herd a foal";
			say ".";
			if centaurmate is 1 or centaurmate is 2:
				say "     Your people are locked in a constant conflict with the tainted, mutant centaurs. You are careful not to tell them that you accidentally let the first of these escape the corrupted tree, but you do inform them of the apple tree and its sinister fruits. Your people eradicate these trees whenever they are found with fiery arrows. Without the apples, the mutant centaurs are more easily contained if never fully purged from your lands. The military, having erected a barricade around the plains, strive to contain the centaur menace in their own way. But the pure centaurs don't see it that way and instead are happy that it keeps the soldiers off their lands.";
		else:
			say "     Your unusual body makes modern life rather difficult for you, as most building, vehicles and even tools are not designed for a body as different as yours. You take to living a simpler, country life, making a comfortable home in a barn you buy and renovate with many modern conveniences. It is roomy and comfortable for someone like you and your home becomes envied by the few other tauric infected in the area, who start to emulate your example. Becoming friends with them, they provide you with a stable of various lovers to satisfy your lustful, equine passions.";


Centaur Stallion ends here.
