Version 1 of Whiptail by Vervaine begins here.
[ Version 1 - New Creature for Dry Plains, Female Only Lizard with Ability to Impregnate ]

"Adds a Whiptail to Flexible Survival's Wandering Monsters Table"

Section 1 - Creature Responses

WhiptailLossCount is a number that varies. WhiptailLossCount is usually 0.

to say WhiptailDesc:
	setmongender 4; [creature is female]
	say "     As you make your way around a large rock formation, you hear a shout, which startles you. Before you stands a reptilian woman of average height, her belly and throat a pale-blue while her limbs and face are a warm-brown lined with pale stripes. Her tail is the same blue as her front and flicks around in a most unlizard-like manner. She's wearing what looks to be a running outfit; a black spandex sports bra covers modest breasts, and compression shorts hug her muscled body closely. 'You're not getting the best of me.' She crouches before charging you with surprising speed!";

to say LoseToWhiptail: [Will she find a vagina? If she doesn't, she's disappointed. If she finds one with some unexpected additions... she may be willing to try new things.]
	if HP of Player > 0:
		say "     You fall to your knees before the lizard woman, and she kicks you to the ground, cautiously keeping her distance.";
	else:
		say "     After one blow too many, you sink to the ground in a pile, and the scaled woman approaches your fallen form slowly.";
	if Player is herm:
		say "     She crouches down to get closer to you before running a hand over your crotch and finds your cock. She sighs, and her hand falls further down, finding your pussy, which draws a surprised gasp from her. 'Now that is interesting. I'd say it's not something you find every day, but times have changed.' She begins undressing you eagerly, tossing your gear and possessions with abandon before stripping down herself.";
		say "[WhiptailHermTrib]";
	else if Player is male:
		say "     She crouches down and runs a hand over your crotch, finding your cock. She removes her hand with a sigh and says, 'Do you have [italic type]anything[roman type] useful for me?' She searches the rest of your belongings, taking what she needs before jogging away.";
		if carried of food > 2:
			say "[bold type]You lose 1 food![roman type][line break]";
			decrease carried of food by 1;
		if carried of water bottle > 2:
			say "[bold type]You lose 1 water bottle![roman type][line break]";
			decrease carried of water bottle by 1;
	else if Player is female:
		say "     She crouches down and runs a hand over your crotch, finding your cleft. She grins and says, 'Looks like it's my lucky day!' She begins undressing you eagerly, tossing your gear and possessions with abandon before stripping down herself.";
		say "[WhiptailTrib]";
	else if Breast Size of Player > 0:
		say "     She crouches down and runs a hand over your crotch, finding nothing. Giving your [breast size desc of Player] a curious glance, she shrugs and says, 'Good thing that I'm a boob girl.' She begins undressing you, tossing your gear and possessions with abandon before stripping down herself.";
		say "[WhiptailTrib]";
	else:
		say "     She crouches down and runs a hand over your crotch, finding nothing. She gives you a bewildered look before saying, 'Well, I hope you have something in your pack for me.' She searches the rest of your belongings, taking what she needs before jogging away.";
		if carried of food > 2:
			say "[bold type]You lose 1 food![roman type][line break]";
			decrease carried of food by 1;
		if carried of water bottle > 2:
			say "[bold type]You lose 1 water bottle![roman type][line break]";
			decrease carried of water bottle by 1;

to say BeatTheWhiptail: [Catch her if you can. Beware, she's got no time for penis.]
	if WhiptailLossCount is 0:
		say "     The reptilian beauty takes a step back, breathing heavily after your fight. She pivots and takes off running; as you begin to chase after her, you feel a strong tug on your ankles, and you stumble, falling to the ground. Looking behind you, you see a disembodied tail wrapping itself around your legs, realizing that the lizard woman must have detached her tail to stop your pursuit. You eventually disentangle yourself, but by then, the whiptail is long gone.";
		increase WhiptailLossCount by 1;
	else if WhiptailLossCount is 1:
		say "     The reptilian beauty takes a step back, breathing heavily after your fight. She pivots and takes off running, but this time, you're prepared for her trap. Or so you think; while looking down to avoid getting caught, you end up running slightly off course. When you attempt to correct your course, you feel a familiar pressure around your ankles. As the striped, brown back of your foe disappears into the distance, you sigh and begin working your legs out of the tail's hold.";
		increase WhiptailLossCount by 1;
	else if WhiptailLossCount > 1:
		say "     The reptilian beauty takes a step back, but you're wise to her tricks now, lunging forward to grab her before she takes off.";
		let bonus be (( the strength of the player minus 10 ) divided by 2);
		let xx be WhiptailLossCount / 2;
		if xx > 8, now xx is 8;
		increase bonus by xx;
		let diceroll be a random number from 1 to 20;
		say "     You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Strength Check)";
		increase diceroll by bonus;
		if diceroll > 18:
			say "     You grab her wrist and hold on as she attempts to break your grasp. When she turns to run or perhaps to aim her tail properly, an idea pops into your head, and you leap forward, knocking her down and landing on top of her. In the confusion, you plant yourself solidly on top of her and wait patiently for her to realize that she's the one who's stuck now. What will you do, now that you've caught her at last?";
			say "[WhiptailVanquishedSexMenu]";
		else:
			say "     You grab her wrist, but she moves her arm in a circular motion and is able to break free. She turns to run, and you get an excellent view of her tail detaching as it flies at your face. Blinded and breathless as her tail constricts your neck, you spend the next few minutes trying to free yourself from its grasp. By the time you do, the whiptail is long gone. Perhaps you'll have better luck next time.";

to say WhiptailVanquishedSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is herm:
		choose a blank row in table of fucking options;
		now title entry is "Herm Oral";
		now sortorder entry is 1;
		now description entry is "Have her go down on all of you";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Herm Pussy Fuck";
		now sortorder entry is 2;
		now description entry is "Fuck her for full satisfaction";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blowjob";
		now sortorder entry is 3;
		now description entry is "Have her blow you";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Pussy Fuck";
		now sortorder entry is 4;
		now description entry is "Fuck her pussy";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get Cunnilingus";
		now sortorder entry is 5;
		now description entry is "Have her go down on you";
	[]
		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 6;
		now description entry is "Eat each other out";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Cunnilingus";
	now sortorder entry is 7;
	now description entry is "Go down on her";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Humping";
	now sortorder entry is 8;
	now description entry is "Rub your way to orgasm";
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
				if (nam is "Herm Oral"):
					say "[Whiptail VanquishedSex1]";
				if (nam is "Herm Pussy Fuck"):
					say "[Whiptail VanquishedSex2]";
				if (nam is "Blowjob"):
					say "[Whiptail VanquishedSex3]";
				if (nam is "Pussy Fuck"):
					say "[Whiptail VanquishedSex4]";
				if (nam is "Get Cunnilingus"):
					say "[Whiptail VanquishedSex5]";
				if (nam is "69"):
					say "[Whiptail VanquishedSex6]";
				if (nam is "Give Cunnilingus"):
					say "[Whiptail VanquishedSex7]";
				if (nam is "Humping"):
					say "[Whiptail VanquishedSex8]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You stand up and walk away, shaking your head at the thought of what you almost did.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say WhiptailHermTrib:			[Maybe penis isn't so bad.]
	say "     Stripped bare before each other, you give each other appraising glances. While you remember from bio class that only mammals have breasts, the nanites appear to have compromised, giving the lizard lady palmable, featureless mounds. As you reach to test their firmness, she touches your [cock size desc of Player] cock tentatively a few times, watching it sway. You give her breasts a light squeeze, delighting in the gasp it draws from your captor. A minute passes as the two of you fondle the fascinating objects before each other before your hands are pulled away from her chest and held firmly above your head. The reptilian beauty positions herself between your legs, pinning your arms with disconcerting ease with strong, sure hands, and begins to grind her cunt against your own. You are surprised at how turned on you are by such an act; your cunt is almost immediately moist, and your cock begins leaking soon after. But you don't waste time wondering why it feels so good, surrendering yourself to the feeling.";
	say "     Waves of pleasure running through you, you don't notice when she removes a hand from pinning you until it touches your dick. With a slow, firm grip, the whiptail pumps your rod hesitantly, as though she's afraid to go too fast. You assure her that she can go faster, and when she does, your moans put a grin on her face. 'I've always been a natural when it comes to women, and I guess having a cock makes no difference!' Her dual assault on both sets of your genitals prevents you from commenting on her performance, but you're sure she understands. You can feel your pleasure reaching its peak, and, desperate to reach it, you begin bucking into her with your need.";
	say "     You orgasm first, soaking yourself with femcum and spraying the two of you with your seed. The whiptail is caught off guard, but feeling you spasm in pleasure below her drives her quickly to follow you. You lay together for a while in each other's juices, panting from your exertions. Suddenly, she rolls you over and scoots away, grabbing her things at a distance from your prone form. You've just managed to roll onto your back again as she finishes dressing. She gives you a stern look, saying, 'This was fun, but I don't trust you. Stay away if you know what's good for you!' She jogs away, and you begin picking your belongings up from where she scattered them, readying yourself to survive in this new, confusing world.";
	fimpregchance;

to say WhiptailTrib:			[Surprisingly, there may be no father at all!]
	say "     Stripped bare before each other, you give each other appraising glances. While you remember from bio class that only mammals have breasts, the nanites appear to have compromised, giving the lizard lady palmable, featureless mounds. As you reach to test their firmness, she touches your [if Player is female]cleft, lightly drawing her fingers over your folds[else]smooth skin between your thighs[end if]. You give her breasts a light squeeze, delighting in the gasp it draws from your captor. A minute passes as the two of you fondle each othe rbefore your hands are pulled away from her chest and held firmly above your head. The reptilian beauty positions herself between your legs, pinning your arms with disconcerting ease with strong, sure hands, and begins to grind her cunt against [if Player is female]your own[else]your smooth mound[end if]. You are surprised at how turned on you are by such an act; your [if Player is female]cunt is almost immediately moist, your juices lubricating the whiptail's efforts[else]featureless mound sending tingles of sensation throughout your body[end if]. But you don't waste time wondering why it feels so good, surrendering yourself to the feeling.";
	say "     Waves of pleasure running through you, you don't notice when she removes a hand from pinning you until it touches one of your boobs. With a practiced hand, she teases your nipple, gently squeezing your [breast size desc of Player] breasts. She grins as her ministrations draw moan after moan from your lips. 'I'm a natural when it comes to women[if Player is not female]and, apparently, the feminine-adjacent too[end if], as you can tell!' Her dual assault on your tits and your [if Player is female]pussy[else]mound[end if] prevents you from commenting on her performance, but you're sure she understands. You can feel your pleasure reaching its peak, and, desperate to reach it, you begin bucking into her with your need.";
	say "     You orgasm first, [if Player is female]soaking yourself with femcum. The whiptail snorts with lust as she feels your orgasm, and your spasms of pleasure below her drives her quickly to follow you[else]letting out a loud cry as you become overwhelmed with feeling, pleasure crashing throughout your body. The whiptail is caught off guard, but feeling you spasm in pleasure below her drives her quickly to follow you[end if]. You lay together for a while in [if Player is female]each other's juices[else]a tangle of limbs[end if], panting from your exertions. Suddenly, she rolls you over and scoots away, grabbing her things at a distance from your prone form. You've just managed to roll onto your back again as she finishes dressing. She gives you a stern look, saying, 'This was fun, but I don't trust you. Stay away if you know what's good for you!' She jogs away, and you begin picking your belongings up from where she scattered them, readying yourself to survive in this new, confusing world.";
	fimpregchance;
	mimpregchance;

to say Whiptail VanquishedSex1:			[Two oral scenes for the price of one.]
	say "     You free your [Cock of Player] dick from its confines, grasping it by the base and smacking it against the whiptail's face. She grimaces as you do so, moving her head out of the way when you try to line up with her mouth. You decide that it's better to attract flies with honey, and suckle on two fingers before shoving them into your snatch. When you feel your juices really flowing, you pull out, shuddering as you do, and hold your fingers under your captive's nose. You see her eyes dilate, and you tell her that if she blows you, she'll get to eat you out. She casts her eyes downwards, but her mouth opens. You sigh as your rod enters her warm mouth and begin to thrust. This stops as you feel her teeth scrape against your prick, and you give her a tersely worded primer on cocksucking before continuing to fuck her face. Thankfully, she's a quick learner, and you're free to enjoy her throat.";
	say "     [if Cock Length of Player < 6]She makes you feel like you have a horse cock, with the way she's gagging on your dick, and your rod throbs with each choking gasp[else if Cock Length of Player > 5 and Cock Length of Player < 12]She can barely fit your cock in her mouth, but she gives it her all, and you moan each time she manages to work another inch of your length into her[else if Cock Length of Player > 11]She only manages to fit your head in her mouth but gives it a good licking, slobbering on as much of your massive head as she can[end if]. Much as you love a good face-fuck, you're hoping her oral skills can be put to better use lower down. Pulling your prick out with an audible pop, you tell the lizard woman that you're going to give her what she wants if she's good. She obediently waits as you strip fully, licking her lips as you sink down to your knees, pussy dripping onto her face below.";
	say "     No guidance necessary, the whiptail is a wizard with her tongue, and it's all you can do to pull back occasionally to give her air. You abandon even that courtesy in time, as the lizard woman brings you to the edge several times, only to stop, depriving you of completion. You grind against her face more insistently, jacking your rod furiously, and she gets the message loud and clear. Finally, the reptilian beauty grants you release, and you cum hard. As the whiptail laps at the femcum that runs down her face, your cock shoots its load over her head, forming a sizeable puddle before sinking into the parched earth. You sit there, idly humping her face as you ride out your orgasm, until the last wave fades away. You roll off of her, quickly dressing and gathering your things, and leave her where she lays to continue the everyday struggle to survive in this new world.";

to say Whiptail VanquishedSex2:			[A tail, in my vagina? It's more likely than you think.]
	say "     You pull off your clothing, keeping a close eye on your captured lizard lady as you do. She makes no attempt to escape, instead slowly removing her own clothing. When you're both full nude, you kneel between her legs, avoiding her tail. Stroking your [Cock of Player] rod above her waiting pussy, you let your precum fall onto her blue scales. Leaning into her body, you begin rubbing your cock along her cleft, teasing her before making your entrance. Or, so you thought; the only lubrication for your hot-dogging is from your own pre. Realizing you'll have to work a little harder, you shift position a little for easier access to the whiptail's pert breasts. Running your hands lightly over them, sucking lightly here and there, you feel her body begin to respond. As you tease her, the lizard woman bites her lips, suppressing a few moans, and, finally, you see her snatch become wet. You fall back against her, your cock sliding freely between her folds, signaling her readiness at last.";
	say "     Lining up your [Cock of Player] cock, you slide into her snug opening, [if Cock Length of Player < 9]slowly hilting yourself inside of her[else if Cock Length of Player > 8 and Cock Length of Player < 12]your hips not quite meeting hers as you bottom out[else if Cock Length of Player > 11]getting around halfway in before you reach her limit[end if]. Holding still for a moment so you can both enjoy filling the lizard woman's snatch, you soon begin pulling out so you can fuck in earnest. As you rut against her, you ask if she's ever been stuffed like this before as you bury as much of your rod into her as you can with each stroke. You miss the gleam in her eyes when she answers, 'Not quite like this, no...' You're not in the dark for long though, as you feel a tickling sensation at your butt which continues lower until it finds your own pussy. A quick glance backwards confirms your suspicions; it's the reptilian beauty's tail! It begins to enter you, and you gasp as your pleasure doubles.";
	say "     [if Cunt Depth of Player < 6]Her tail fills you up almost instantly, stretching you to your limit[else if Cunt Depth of Player > 5]Her tail makes you feel pleasantly full[end if], and you stop fucking the whiptail as you give yourself to this new sensation. You feel each twist and turn, and somehow, the tip of her tail easily finds your g-spot, sparking new waves of pleasure. Before you get too distracted, the whiptail pulls at your hips, saying she'll stop if you stop. Not wanting to miss out, you begin thrusting again, and soon, both of you are panting as your holes are being pounded in rhythm. It's not long until you're overwhelmed, and you cry out as your empty your seed into her womb, your cunt squeezing the tail fucking you, soaking it with femcum. The whiptail isn't far behind you as you feel her twat squeeze you in turn, and she stifles her own cry of release. She withdraws her tail, and you collapse on top of her, overwhelmed from your orgasms. But you can't wait around for long, and you're dressed and put together not five minutes later, ready to survive in this harsh, new world. You leave the whiptail to her own devices as you walk into the grass.";
	fimpregchance;

to say Whiptail VanquishedSex3:			[She's not great but it's what you wanted.]
	say "     You free your [Cock of Player] dick from its confines, grasping it by the base and smacking it against the whiptail's face. She grimaces as you do so, moving her head out of the way when you try to line up with her mouth. You tell her that turnabout is fair play; she attacked you, and you won, fair's fair. She snorts at your idea of 'fair', but her mouth opens. You sigh as your rod enters her warm mouth and begin to thrust. This stops as you feel her teeth scrape against your prick, and you give her a tersely worded primer on cocksucking before continuing to fuck her face. Thankfully, she's a quick learner, and you're free to enjoy her throat.";
	say "     [if Cock Length of Player < 6]She makes you feel like you have a horse cock, with the way she's gagging on your dick, and your rod throbs with each choking gasp[else if Cock Length of Player > 5 and Cock Length of Player < 12]She can barely fit your cock in her mouth, but she gives it her all, and you moan each time she manages to work another inch of your length into her[else if Cock Length of Player > 11]She only manages to fit your head in her mouth but gives it a good licking, slobbering on as much of your massive head as she can[end if]. Much as you love a good face-fuck, this isn't one, and you need to bring this middling affair to a close. You tell the whiptail to prepare herself for your next move, and you pull out of her mouth with an audible pop.";
	say "     You shift position, bracing your upper body on the ground above her head so your groin is right in line with the lizard woman's face. The whiptail swallows nervously before tentatively opening her mouth wide for you. [if Cock Length of Player < 6]You slam your prick home in her throat, pistoning in and out while chasing your orgasm[else if Cock Length of Player > 5 and Cock Length of Player < 12]Knowing her limits, you make smooth, half-strokes into her maw. You can feel the entrance of her throat teasing your head, but you can't quite get it in[else if Cock Length of Player > 11]You make short thrusts, fully withdrawing each time, making the most of her small mouth[end if]. Finally, your wild rutting takes you over the edge, and you cum hard [if Cock Length of Player < 6]down her throat, into her belly[else if Cock Length of Player > 5]into her waiting mouth[end if]. The reptilian beauty gags as you fill her with your seed, but you hold yourself in her until you're finished. You roll off of her, quickly dressing and gathering your things, and leave her where she lays to continue the everyday struggle to survive in this new world.";

to say Whiptail VanquishedSex4:			[A hole's a hole.]
	say "     You pull the whiptail's sports bra over her head, freeing her small chest and giving you a makeshift rope to bind her hands. Trusting in the power of spandex, you slide down the lizard woman's body until you reach her running shorts. Yanking them down to her ankles, the reptilian beauty is now fully bare before you, her body yours for the taking. You take in the striking contrast of her scales as the brown of her limbs abruptly becomes the light-blue that covers her torso. You reach out and give her boobs a light squeeze, enjoying the muffled gasp it pulls from the reptilian beauty. Tracing a line down from her chest to her snatch, you slip a finger inside of her... or try to. Seems like the whiptail needs a little encouragement before you fuck her, and you have no objection to taking some time to play. Your hands return to her breasts, teasing and squeezing while you suckle on first one, then the other. The reptilian woman is soon panting under your skilled attention.";
	say "     Still using your mouth to pleasure her sensitive chest, your hand reaches down to check your progress. Her pussy is much more welcoming now, and you're eager to reap your reward. You fumble to free your [Cock of Player] cock and line it up with her cleft before [if Cock Length of Player < 9]slowly hilting yourself inside of her[else if Cock Length of Player > 8 and Cock Length of Player < 12]entering her slowly, your hips not quite meeting hers as you bottom out[else if Cock Length of Player > 11]getting around halfway in before you reach her limit[end if]. The whiptail lets out a muffled cry as you stretch her inner walls, and you hold yourself as her tight cunny grips your rod. A few moments of panting silence pass before you decide that you can't wait anymore and begin grinding into her pussy. You savor the feeling of [if Cock Length of Player < 9]filling her completely[else if Cock Length of Player > 8]stuffing her to her limit[end if] before withdrawing to begin rutting with abandon.";
	say "     [if Cock Length of Player < 9]You slam your dick home with each thrust, your grunts punctuating each time she envelops you[else if Cock Length of Player > 8 and Cock Length of Player < 12]Your prick is too large to fit fully into her cunt, and the tantalizing inches of space between her hips and yours causes you to growl in frustration[else if Cock Length of Player > 11]Knowing this small snatch can't fully satisfy, you stuff her as much as possible, taking as much pleasure as you can from the vice grip of her pussy on your cockhead[end if]. It's not long before her cunny pushes you over the edge, and you cum directly into her womb, with the majority of your seed being forced out of her and onto the ground. You withdraw after you feel the last pulse run through your dick, and a river of cum follows, soaking the lizard woman's legs and the ground beneath her. You roll off of her and gather your things, preparing to return to your main task of survival, now that you've had your fun.";

to say Whiptail VanquishedSex5:			[She loves eating out.]
	say "     You position yourself so your crotch is right in front of the whiptail's face. Putting a hand under her head, you pull her muzzle into your groin, asking her if she likes what she smells. The lizard woman's dilated pupils as she rubs her face into your pussy is all the answer you need, and you pull back, in order to strip. She patiently waits for you to free yourself, and as you lower yourself back into place, she licks her lips in anticipation. Presenting your cunt to her, she doesn't wait for an invitation and dives right in, hungrily lapping at your folds. She sucks your clit into her mouth, and you moan from the intense feelings now flowing through you. Your moaning intensifies as she adds her fingers to the mix, gently entering your dripping cleft. You gasp as she finds a spot within you that sends sparks directly to your brain, and you hump against her face, desperate to find release from this ecstatic torment.";
	say "     The whiptail seems to sense your wild need and pulls back from you for a moment. You shudder as you fall a bit from the cresting wave that you were riding and look down at your tormentor. Her muzzle is wet with your juices, and her fingers are idly twisting inside of you still, making you squirm. Determined to maintain control, you thrust yourself back into her face, and she meekly continues eating your snatch. Finally, the reptilian beauty grants you release, and you cum hard. As the whiptail licks at the femcum that runs down her face, you lean back panting, waiting for the edge to leave you. When it doesn't, you don't even think as you hump back into the whiptail's face; if you're not done yet, neither is she. This time, you can feel her tongue enter you, and soon, you're moaning in lust again, chasing your next orgasm.";
	say "     It's not long before you're cumming again, more femcum soaking the face of the reptilian beauty beneath you. Once more, however, the wave of pleasure continues to build rather than break, and you growl in frustration until the whiptail's fingers find your clit. Surely this time, you think, will be the last as you throw your head back and fondle your [Breast Size of Player] breasts, giving yourself fully to the nigh overwhelming sensation coursing through your veins. At long last, the wave breaks, and you cum for a third and final time, the lizard woman's face now thoroughly soaked. You sit there, idly teasing your nipples as you ride out your orgasm, until the last wave fades away. You roll off of her, quickly dressing and gathering your things and leave her where she lays to continue the everyday struggle to survive in this new world.";

to say Whiptail VanquishedSex6:			[Reciprocation is key.]
	say "     An idea strikes you, and you flip yourself around, placing your groin in the whiptail's face as you pull her running shorts off. Once you've gotten them to her ankles, you tug your own clothes off before burying your own face in her crotch. The lizard woman picks up what you're laying down, moving in to lick your cunt, and you give yourself a moment to enjoy her efforts. Her tongue seems to have a homing signal on your most sensitive spots, and you dive into her pussy to play catch up, knowing you can't last long. You attack the dripping snatch before you with gusto, eagerly lapping at her folds. You feel, more than hear, the whiptail's moans of appreciation as your tongue reaches extra deep. Not wanting to cum alone, you start probing her with your fingers, adding as much stimulation as you can muster. Despite your best efforts, you are the first to orgasm, and you shudder in ecstasy. The reptilian beauty is not far behind, however, driven over the edge by your skillful fingers.";
	say "     A loud slurp precedes the whiptail's rhetorical question, 'Ready for round two?' Knowing the answer already, she immediately returns to your soaked cunny, and you return to your work as well. This time, surely, you'll make her cum before you! You continue fingerblasting her cleft while moving your tongue to her clit. At your first touch, she bucks into your face; just the reaction you were hoping for. Teasing her gently at first, then quickly ramping up, you gleefully note that her moaning is both louder and more frequent. Soon, your hand is covered in her femcum, giving round two to you. As her reward, you allow yourself to orgasm not too long after. The two of you panting in lust, you wait only a few moments before diving back in, determined to break the tie.";
	say "     You lose count soon after round two; how many rounds, who 'won', or whether there needed to be another tiebreaker. Thankfully, both of you tap out at the same time, and you roll off of the whiptail with a groan of exhausted contentment. Long minutes pass with the two of you lying side by side on your backs, naked and fulfilled. Reality soon reasserts itself, however, and the two of you dress yourselves, gather your gear, and head your separate ways. You take a last look back as the lizard woman jogs into the distance, disappearing into the tall, unnatural grass.";
	fimpregchance;

to say Whiptail VanquishedSex7:			[You need the lizard pussy.]
	say "     All of this fighting has made you horny and hungry - figuratively speaking. You roll off of the whiptail and tug her compression shorts down, tossing them off to the side as they clear her feet. Crawling between her legs, carefully avoiding her tail, you see your prize laid out before you. The reptilian beauty looks down at you, her small chest heaving in anticipation. You move in, face first, taking a deep whiff of her sex before running your tongue over her folds, up to her clit. The sharp intake of breath you hear encourages you, and you begin eating out the lizard woman in earnest. As your tongue explores her cleft, her gasps become moans, and her hands find your head, pressing your face deeper into her. You come up for air and move up to pay closer attention to her clitoris, but the hands grasping your head pull you back as the whiptail cries out from the intensity. She holds you back for several moments, before pulling you up from between her legs.";
	say "     Your journey up her pale-blue belly ends at her chest, still covered by that pesky sports bra. Working together, you manage to free her boobs from the black spandex, tossing the bra in hopefully the same direction as her shorts. You fall back to the ground together, resting your face between her breasts before moving to the left one, lipping at it lightly. Despite the lack of nipple, the whiptail's boobs are no less sensitive, and you've got her moaning in no time. Your right hand gently holds her other breast, squeezing and caressing, making sure not to leave a boob untouched. But this is not what you started out to do, and you move back down the lizard woman's stomach, making your way back to her snatch. You return to her clit, this time resisting her attempts to remove you. Your right hand still groping at her chest, you start fingering her with your left hand, and her legs tighten around your head. Even though your hearing is now muffled slightly, you can still hear the reptilian beauty's moans, and you know it won't be long until she peaks.";
	say "     The three pronged stimulation is too much for the whiptail to bear, and she lets out a scream that you feel more than hear. Your face is doused with the lizard woman's femcum, not that you mind, slurping it up like a starving sod in the desert. Eventually, the strong legs holding you in place relax, the reptilian beauty worn out from her orgasm. Extricating yourself from her muscled, brown limbs, you survey the fruits of your labor; an exhausted but satisfied woman, idly stretching as she comes down from the ecstasy she had just experienced. Brushing yourself off, you about-face and wander into the plains, returning to the task of survival.";

to say Whiptail VanquishedSex8:			[A strange urge overcomes you.]
	say "     Sitting atop the whiptail, coming down from the adrenaline rush of your battle, a sudden wave of lust washes over you. You start thrusting awkwardly at the air, drawing some grunts from the lizard woman below you. Your thoughts fall away to a single point; your need to grind out an orgasm. You strip quickly, the whiptail following suit, though you miss her little grin. You hold her arms down, lie between her thighs, and begin thrusting mindlessly against her body. [if Player is male]Your [Cock of Player] cock throbs as you hump against the reptilian beauty below you, pleasure running down your dick, into the rest of your body[else if Player is female]You hump your crotch against the reptilian beauty, pleasure emanating from your pussy filling your body[else]You grind your smooth groin against the reptilian beauty, tingles of pleasure running through your body[end if]. Even though your body is practically pulsing in erotic ecstasy, you don't feel anywhere close to orgasming";
	say "     Frustration mounting, you continue grinding against the lizard woman, single-minded in your pursuit of release. Still, it eludes you, and you let out a low growl, words escaping you. A laugh draws your attention, your eyes snap up to meet the whiptail's as she says, 'My, my, my; missing something, are we? Let's see what we can do about that.' With frightening ease, the lizard woman rolls you over, and now, it's you with your arms held firmly above your head. A fleeting thought to struggle vanishes as she begins grinding against you. The pleasure you felt before returns, this time accompanied by a sensation [if Player is male]in your balls[else if Player is female]in your snatch[else]in your groin[end if], and you know your orgasm is close. As the whiptail humps her cunt into you, you feel the wave build and build until at last it crashes over you, and you scream in pleasure and relief.";
	say "     [if Player is male]You cum, the first blasts covering the lizard woman's tits in your seed, the rest splashing on your own chest[else if Player is female]You cum, and you feel your juices running down your thighs, chest heaving as you pant[else]An explosion of feeling races from your featureless crotch, and your back arches in ecstasy[end if]. The reptilian beauty pats your cheek and rolls off of you, finding her discarded clothing. As she dresses she says, 'That's the first time someone's been affected so strongly. You might want to work on that; someone might take advantage. She leaves you crumpled in a heap, jogging into the distance.";
	fimpregchance;
	mimpregchance;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Whiptail Lizard";
	add "Whiptail" to infections of ReptileList;
	add "Whiptail" to infections of NatureList;
	add "Whiptail" to infections of FurryList;
	add "Whiptail" to infections of FemaleList;
	add "Whiptail" to infections of BipedalList;
	add "Whiptail" to infections of TailList;
	now Name entry is "Whiptail";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She dashes in, giving you the ol['] one-two punch.[or]She brings her left leg up, and snaps it out in one smooth motion, right into your gut.[or]She spins as though she's about to run, but the tail smacking your face lets you know how wrong you were.[at random]";
	now defeated entry is "[BeatTheWhiptail]";
	now victory entry is "[LoseToWhiptail]";
	now desc entry is "[WhiptailDesc]";
	now face entry is "a mixture of reptile and human, with prominent brows and a short muzzle. You have large, dark eyes, a curious lack of ears, and a pale-blue lower jaw contrasting the rest of your brown face scales";
	now body entry is "svelte with muscle, built for quick bursts of speed and powerful strikes. Though humanoid, you are completely covered in scales, brown with lighter stripes on your back, arms, and legs, and a pale-blue for your front and tail";
	now skin entry is "shimmering, scaled";
	now tail entry is "You have a long, thick tail that is strangely dexterous sitting over your firm ass. It's pretty useful for helping you in a variety of situations.";
	now cock entry is "reptilian";
	now face change entry is "it reshapes itself, giving you rounded features and a blunt muzzle. You feel your skin tingle as it changes to scales, and your hair falls away";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a strong, compact new shape";
	now skin change entry is "scales erupt, your back and limbs turning a warm-brown, broken up by light-white stripes. Your front and tail are a pale-blue, like a faded robin's egg";
	now ass change entry is "it becomes tight and firmly muscled. Your muscles clench as a long, thick tail rapidly forms above it, making you stumble around for a moment before you adjust to using it for balance";
	now cock change entry is "it becomes blue and thin, a cone of slick pleasure";
	now str entry is 22;
	now dex entry is 16;
	now sta entry is 22;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 75;                 [ How many HP has the monster got? ]
	now lev entry is 9;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 10;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Plains";         [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]taut[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "reptilian";      [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 1;       [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
   [ Row used to designate any special combat features, "default" for standard combat. ]

Whiptail ends here.
