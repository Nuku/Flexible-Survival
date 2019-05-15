Version 9 of Bovine by Damaged begins here.
[ Version 9.2 - Bull CV victory - Stripes ]
[ Version 10 - Bovine Update and Mpreg Expansion - Vervaine ]

"Adds a Bovine to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

Mooing is a number that varies. [The inverse of how addicted to cow milk you are.]
CowBully is a number that varies. [Beating up cows makes a bull ornery.]
Mooed is a number that varies. [How cowed you are by the feral bull. Not sure if it really does anything.]
Bovine_type is a number that varies. [0 = not chosen, 1 = anthro cow, 2 = feral bull, 3 = anthro bull]
VictoryOverDaBull is a number that varies. [Defeating the feral bull three times gives you the option to make the beast into an anthro.]
BullMaster is a number that varies. [You showed the feral bull who's boss. What kind of milk did you make him drink?]

when play begins:
	add { "Bovine" } to infections of girl;
	add { "Bovine" } to infections of guy;
	add { "Bovine" } to infections of furry;

to say bovine desc:
	let debit be 0;
	if hardmode is true and level of Player > 6, let debit be level of Player - 6;
	choose row MonsterID from the Table of Random Critters;
	if a random number from 1 to 10 > 3:	[Anthro Cow]
		setmongender 4; [creature is female]
		say "[cow desc]";
		now Bovine_type is 1;
		now wdam entry is 5 + ( debit / 4 ); [Amount of Damage cow Does when attacking.]
		now lootchance entry is 20;
	[else if BullMaster is 1:		[Anthro Bull - You fed the feral bull orc cum]
		setmongender 3; [creature is male]
		say "[anthro bull desc]";
		now Bovine_type is 3;
		now wdam entry is 22;
		now lootchance entry is 20;
	else if BullMaster is 2; [Anthro Bull - You fed the feral bull gryphon milk]
		setmongender 5; [creature is a full herm]
		say "[anthro bull desc]";
		now Bovine_type is 3;
		now wdam entry is 22;
		now lootchance entry is 20;
	else if BullMaster is 3; [Anthro Bull - You fed the feral bull cow milk]
		setmongender 6; [creature is a trans female]
		say "[anthro bull desc]";
		now Bovine_type is 3;
		now wdam entry is 22;
		now lootchance entry is 20;
	else if BullMaster is 4; [Anthro Bull - You fed the feral bull dog milk]
		setmongender 7; [creature is a male herm]
		say "[anthro bull desc]";
		now Bovine_type is 3;
		now wdam entry is 22;
		now lootchance entry is 20;
	else if BullMaster is 5; [Anthro Bull - You splashed cow milk across the feral bull's crotch]
		setmongender 8; [creature is a trans male]
		say "[anthro bull desc]";
		now Bovine_type is 3;
		now wdam entry is 22;
		now lootchance entry is 20;]
	else:						[Feral Bull]
		setmongender 3; [creature is male]
		say "[feral bull desc]";
		now Bovine_type is 2;
		if CowBully is 0:
			now wdam entry is 0; [Passive bull is 0, even in hard mode]
		else:
			now wdam entry is 28 + ( ( 2 * debit ) / 5 ); [Check for if the player has beaten up a cow (female bovine), if they have, it's time to roll out the punishment]
		now lootchance entry is 20;

to say losetobovine:
	if Bovine_type is 1:
		say "[LoseToCow]";
	else if bovine_type is 2:
		say "[LoseToFeralBull]";
	[else if bovine_type is 3:
		say "[LoseToAnthroBull]";]

to say LoseToCow:
	if Mooing < 1:
		say "     The cow grabs you and pulls you closer, sitting down in the process. Her strong bovine arms lift you up, pressing your lips to one engorged teat, 'Drink, little calf. Sate yourself,' she says softly, motherly[one of]. The smell of the milk calls to your thirst and[or]. One little drop of milk leaks from the engorged teat and it drips down onto your lips, without thinking your tongue snakes out and pulls it into your mouth. Gasping,[or]. Giving her teat a squeeze, a spray of milk wets your lips and[at random] you push your head forward, latching onto the nipple with your lips and begin sucking happily at her breast. 'See, it's not so bad,' the cow says softly again, rocking you back and forth in her arms as you drink.";
		now thirst of Player is 0;
		now hunger of Player is 0;
		infect;
		now Mooing is 6;
	else:
		say "     [one of]The cow sits down and you run into her waiting arms, mouth reaching to find a spare nipple[or]You see the cow smile down at you, 'You wanted to play a little first. Come on now, it's time for your meal,' she moos softly to you and you race over, leaping into her waiting arms to grip a teat and begin sucking[or]The bovine woman rubs her breasts and gives her teat-like nipples a squeeze, coaxing some of her delicious milk to flow. Licking your lips, you rush over to her and start suckling[at random]. The flood of pure contentment as the milk begins to flow into your throat causes you to grow sleepy, soon causing you to fall asleep completely, still drinking from her.";
		WaitLineBreak;
		say "     You wake up, stomach bulging slightly, the taste of her milk still in your mouth. You let out a breath that sounds more like a [']Moo['] and wander off.";
		now thirst of Player is 0;
		now hunger of Player is 0;
		infect;
		if Mooing < 6:
			now Mooing is 6;
		else if Mooing < 15:
			increase Mooing by 3;

to say LoseToFeralBull:
	let antimoo be 16 - Mooing;
	if Mooing > 15:
		now antimoo is 1;
	if CowBully > 0:
		if Player is female:
			say "     The big bull grunts fiercely, breathing hard after his maddened fight. He prods you with his sharp horns until you huddle on all fours. He scrabbles at your rear with his hooves and you have a few moments to wrench your clothes out of the way before you feel the animal's huge member thrust into you, [if Cunt Length of Player < 28]feeling like it will split you in half. Your cries, when you hear them, sound almost as pitiful as the cow you defeated earlier as you try in vain to brace yourself against the crazed beast's rutting[else]filling your cavernous pussy like few can. Your cries of ecstasy, unknowingly echo the pitiful cries of the cow girl you defeated. All of your attention, however, is focused on bracing yourself against the magnificent brute's powerful rutting thrusts[end if]. He bellows as you feel his burning seed pour into you, filling you up, and making you look very pregnant. Finally done with you, calm after his release, he wanders off to graze.";
			infect "Bovine";
			now CowBully is 0;
			if Mooing > 0:
				fimpregchance;
			now Mooed is 1;
		else if Player is mpreg_ok:
			say "     The huge beast bellows one last time and flies at you, turning away at the last second to your surprise. As he turns around to face you, you see his nostrils flaring; it seems he's scented something about you that's piqued his interest. He knocks you over shoving his face against your rear, and you hear the bull take a big whiff. He snorts and scrabbles at your rear with his hooves. You have a few moments to wrench your clothes down before you feel the beast's huge member thrust into you, [if scalevalue of Player < 4 or player is not twistcapped]feeling like it will split you in half. Your cries, when you hear them, sound almost as pitiful as the cow you defeated earlier as you try in vain to brace yourself against the crazed beast's rutting[else]filling your cavernous depths like few can. Your cries of ecstasy, unknowingly echo the pitiful cries of the cow girl you defeated. All of your attention, however, is focused on bracing yourself against the magnificent brute's powerful rutting thrusts[end if]. He bellows as you feel his burning seed pour into you, filling you up, and making you look very pregnant. Finally done with you, calm after his release, he wanders off to graze.";
			infect "Bovine";
			now CowBully is 0;
			if Mooing > 0:
				mimpregchance;
			now Mooed is 1;
		else:
			say "     The huge beast bellows one last time and flies at you, his head crashing hard into your side. As you cry out, a small part of your brain not overwhelmed with pain remembers a fallen cow, threatening to tattle to her bull. A threat, it seems, you should have taken more seriously. Lying on the ground in a pained daze, you don't resist when the beast shoves his dick in your face. Between the awkward angle and the bull's gigantic member, you can't fit more than the tip in your mouth, let alone the rest of his massive length. Whether the bull grasps this is unclear as he continues to rut against your face, frustrated snorts accompanied by hoof stomps dangerously close to your head. Despite the situation, the bovine male eventually cums, mercifully pulling back as he does, so you're only drenched with his seed rather than drowned by it. The bull, having shown you your place, wanders off to graze. It takes you more than a few minutes to recover, wipe yourself off and leave as quietly as you can.";
			infect "Bovine";
			infect "Bovine";
			decrease CowBully by 1;
			now Mooed is 1;
	else if vorelevel > 1 and a random chance of vorelevel in 5 succeeds and (a random chance of antimoo in 20 succeeds) and scalevalue of Player < 5:
		say "     The bull snorts after knocking you down and stomps overtop of you. His cock, semi-engorged after the fight, slaps against your face, leaving a streak of bovine pre across your face. [if HP of Player > 0]Feeling arousal[else]Still dazed from the fight[end if], you turn your head towards it to get a proper taste, but are instead surprised as the bull pushes his large cock forward. The thick cock slams into you and stretches surprisingly wide, engulfing your whole head. Your initial shock allows the beast a chance to press his advantage and his cock gulps around you, pulling in your shoulders as well. Surrounded by the hot, squeezing flesh of his bestial manhood, you are assaulted by the strong, musky scent of his virility. Any struggles you make are futile and seem to only further excite the big bovine as you are pulled inches at a time along that meaty tunnel. More and more of your [bodytype of Player] body is drawn into that bulging bovine penis.";
		say "     You are eventually deposited into his ballsack and left to bathe in his virile semen while his cum factories churn away. You lose track of time, falling into a lustful haze in the heated chamber, only to be roused much later by some rubbing from the outside. As this continues, you can hear the faint mooing of the excited bull growing louder before you are finally blasted free along with a sticky load of bull semen. Landing in the grassy field, you are set upon by the cow who masturbated the bull to climax. She licks you clean, her sloppy tongue getting as much of bovine seed as she can get before you make your getaway.";
		say "[mooplus]";
		infect "Bovine";
		infect "Bovine";
	else:
		if Mooing < 1:
			say "     The bull seems to lose interest in you and wanders off to find some grass to eat.";
		else:
			if Player is female:
				say "     Lifting his nose to the air, the bull catches your scent and you know exactly what scent that is, cow in heat. Pacing over to you he sniffs at your rear and you feel yourself rising to all fours and presenting your pussy to the beast. His weight is suddenly upon you, you struggle to hold him for a moment until you feel his huge member press at your cleft. Suddenly nothing seems to matter but having him within you. His bellowing thrusts are [if Cunt Length of Player < 28]softened by your attempts to buck forward with him, trying to avoid being impaled by his gigantic rod. Suddenly his breeding tool seems to swell even bigger, stretching your already taxed snatch to the breaking point[else]countered by your own as you rock your hips back against his motion, feeling him deep within you. Suddenly his breeding tool seems to swell even larger, somehow making even your gigantic cunt feel full[end if], and explodes with his orgasm, painting every inch of your insides white. Dismounting, he makes a loud whuffing sound and you feel so happy and full of his seed you lay down and rest just a moment, even as you begin to feel thirsty again...";
				fimpregchance;
				fimpregchance;
				fimpregchance;
				infect "Bovine";
				now mooing is mooing / 2; [increasing milk thirst]
				now Mooed is 1;
			else if Player is mpreg_ok:
				say "     Lifting his nose to the air, the bull catches your scent and you know exactly what scent that is, cow in heat, even if you're not the average cow. Pacing over to you he sniffs at your rear and you feel yourself rising to all fours and presenting your ass to the beast. His weight is suddenly upon you, you struggle to hold him for a moment until you feel his huge member press at your hole. Suddenly nothing seems to matter but having him within you. His bellowing thrusts are [if scalevalue of Player < 5 or player is not twistcapped]softened by your attempts to buck forward with him, trying to avoid being impaled by his gigantic rod. Suddenly his breeding tool seems to swell even bigger, stretching your already taxed snatch to the breaking point[else]countered by your own as you rock your hips back against his motion, feeling him deep within you. Suddenly his breeding tool seems to swell even larger, somehow making even your gigantic hole feel full[end if], and explodes with his orgasm, painting every inch of your insides white. Dismounting, he makes a loud whuffing sound and you feel so happy and full of his seed you lay down and rest just a moment, even as you begin to feel thirsty again...";
				mimpregchance;
				mimpregchance;
				mimpregchance;
				infect "Bovine";
				now mooing is mooing / 2; [increasing milk thirst]
				now Mooed is 1;
			else:
				say "     The bull licks at you a few times but loses interest and wanders off to find some grass to munch on.";
				if mooing < 5:
					now mooing is 5;
				else if mooing > 10:
					now mooing is 10;

to say BeatTheBovine:
	if Bovine_type is 1:
		say "The large cow suddenly drops to her knees mooing, 'All I wanted was for you to be happy. Don't you think you could be happy with me?' She clings to your waist, crying softly in disappointment. You look over the large bovine woman and ponder what you should do. She's clearly interested in fucking you; you could give in to your base desires, but if you did, you might not be any better than the feral monsters roaming the city. There's just something about her that makes you want to be rough with the poor cow girl. (Y=fuck, N=leave)";
		if Player consents:
			say "You take the defeated cow's hands and remove them from your waist, telling her to present herself. She lets out a lustful moo and drops to all fours, turning quickly around. As she does so, her breasts start to leak more of her milk, the sight making you rather thirsty. A thought comes to mind and you realize that you could not only satisfy your sexual urges, but you could also quench your thirst. (Y=Drink+Sex, N=Just Sex)";
			if Player consents:
				if Player is male:
					say "     You grin and tell the cow you've got a slight change of plans. Ordering her onto her back, you lean forward, taking one of her nipples into your mouth, flicking your tongue across it, the rich taste of milk driving you to begin sucking on it. The cow girl moans and her chest heaves as she begs you to fuck her. Still sucking, you shift position on top of her so that your now hard cock is resting against her folds. You pull your hips back, lining the tip of your [cock of Player] cock up with her wet lips and then slamming into her, groaning in pleasure. As you pound away at the cow girl's cunt, she [if Cock Length of Player < 28]slowly gets more and more into it, her legs wrapping around you, drawing you deeper into her. Soon enough you feel your climax building, your balls swelling with cum. With one final thrust, you bury your [cock size desc of Player] length as deep as you can[else]screams her pleasure, her large hands firmly on your ass, making sure you fuck her fully with each stroke. Soon enough you feel your climax building, your balls swelling with cum. With one final thrust, you bury your [cock size desc of Player] length in her, knowing you are filling her utterly[end if], [if Ball Size of Player < 14]giving her your fertile seed[else]flooding her womb with your fertile seed, excess cum leaking out around your dick[end if]. You nearly black out when she reaches her peak, her snatch squeezing your rod tightly and the two of you squirm in ecstasy.";
					say "     After you pump the last of your cum into her, you lie atop the cow girl, nursing from her breast, a warm feeling radiating out from your stomach. The two of you doze briefly in your post-orgasmic stupor, but after a while you get up to head out. As you do, the bovine woman calls out after you, 'That was fun, but I don't think my bull is going to like you very much.' You stop in your tracks, wondering whether you should ask for more information on this bull of hers, but some loud crashing noises nearby send you running as fast as you can before the source of the crashing reaches you.";
					say "[Mooplus]";
					PlayerEat 5;
					PlayerDrink 10;
					infect "Bovine";
					increase CowBully by 1;
				else if Player is female:
					say "     You grin and tell the cow you've got a slight change of plans. Ordering her onto her back, you lean forward, taking one of her nipples into your mouth, flicking your tongue across it, the rich taste of milk driving you to begin sucking on it. The cow girl moans and her chest heaves as she begs you to fuck her. Still sucking, you slide your hand down between her legs and begin to stroke her wet pussy. The cow girl shivers and groans as you play with her cunt, first stroking it and then slowly sliding a finger or four into her. Soon enough, the cow girl returns the favor, her large fingers finding your own tender folds, expertly locating your g-spot and working you up to climax rather quickly. You continue on like this for a while, suckling on the cow girl's tits while the two of you fingerblast each other, until she is finally pushed over the edge and into orgasm, cunt clamping down on your fingers, her body shaking in pleasure.";
					say "     Your own orgasm isn't far behind and you collapse onto the cow as she relentlessly fingers you through your climax. The two of you doze briefly in your post-orgasmic stupor, but you rouse yourself, rubbing your belly, a warm tingle coming from your stomach full of milk. As you stand up to leave, the bovine woman calls out after you, 'That was fun, but I don't think my bull is going to like you very much.' You stop in your tracks, wondering whether you should ask for more information on this bull of hers, but some loud crashing noises nearby send you running as fast as you can before the source of the crashing reaches you.";
					say "[Mooplus]";
					PlayerEat 5;
					PlayerDrink 10;
					infect "Bovine";
					increase CowBully by 1;
				else:
					say "     You look down at yourself and realize that you don't really have any proper equipment to play with the cow girl, but that doesn't mean you can't still sate your thirst. You climb up on top of her and take hold of her breasts, clamping your mouth down over one and beginning to suckle from it. You grin slightly as the cow girl lows lustfully, taking pleasure in your suckling. You gulp down her milk, teasing her squirting teat with your tongue and teeth, squeezing and pulling on the ones not currently in your mouth. When the first one starts to run dry you just switch to another, happily drinking your fill.";
					say "     Once your belly is completely full of the cow girl's delicious milk, you get up and stretch, a warm fuzzy feeling spreading throughout you. You shrug it off, gather your gear and head back out along the path. As you do, the bovine woman calls out after you, 'That was fun, but I don't think my bull is going to like you very much.' You stop in your tracks, wondering whether you should ask for more information on this bull of hers, but some loud crashing noises nearby send you running as fast as you can before the source of the crashing reaches you.";
					say "[Mooplus]";
					PlayerEat 5;
					PlayerDrink 10;
					infect "Bovine";
					increase CowBully by 1;
			else:
				if Player is male:
					say "     You take hold of the cow girl's legs and nudge them apart, grinning and licking your lips at the sight of her massive bovine pussy. The cow girl shivers and whimpers in anticipation as you pull yourself up against her, your [cock of Player] cock grinding against her wet snatch. You line yourself up and thrust in, ramming your length [if Cock Length of Player < 28]as deep inside her as you can manage. Gripping the cow girl's hips tightly as you pound away at her cunt, you can't stop yourself from moaning in pleasure. She groans and begs, 'Please fuck me deeper! I need more!' Annoyed that she seems unfazed by your efforts so far, you hilt yourself in one go to try and satisfy her. She grunts a little, but she says, 'I need more, please, I'm so empty'. You start bucking harder and faster into her, hoping to make up for your size with your passion[else]deep inside her. Gripping the cow girl's hips tightly as you pound away at her cunt, you can't stop yourself from moaning in pleasure. She groans and says, 'Oh yeah, just like that! I want everything you've got!' Pleased that she's loving your efforts so far, you hilt yourself in one go to push her over. She grunts and lets out a loud moo, unable to articulate her approval. You start bucking harder and faster into her[end if], feeling your climax building. You lean forward and wrap your arms underneath her body, your hands taking hold of her shoulders.";
					say "     With one last hard thrust, you bury your [cock size desc of Player] shaft in her depths and cum hard, [if Ball Size of Player < 14]dumping your seed into this cow girl, as she moos her orgasm[else]filling this cow girl up with every last bit of fertile seed you've got, making her moo loudly in orgasm[end if]. When you're finished with her, you get up and wipe your cock off on her ass, a few last spurts of cum splattering on her back. You take a bit of perverse pride at the state you've left the cow in and gather your things before heading back along the path. As you do, the bovine woman calls out after you, 'That was fun, but I don't think my bull is going to like you very much.' You stop in your tracks, wondering whether you should ask for more information on this bull of hers, but some loud crashing noises nearby send you running as fast as you can before the source of the crashing reaches you.";
					increase CowBully by 1;
				else:
					if Player is female:
						say "     You take hold of the cow girl's legs and nudge them apart, grinning and licking your lips at the sight of her massive bovine pussy. The cow girl shivers and whimpers in anticipation as you walk towards her front, drawing your hand along your flank as you do, and shoving your cunt right in her face. You order the cow to lick your snatch, to make you happy, just like she wanted. Her eyes are half-lidded in lust and she quickly begins licking at your pussy, doing her best to try and get you off. You groan and push your cunt back against her muzzle, grinding it up and down. You feel her moan, the cow taking pleasure in your control of the situation, and she falters for a second before resuming her attention on your pussy. Soon enough, she has you on the edge, but you hold her back, waiting until you're ready to orgasm. A 12-foot cow woman is hard to stop however, and you cry out as your femcum covers her face. You hold her to your pussy, and she slurps up as much of your juices as she can get.";
						say "     You step back and stretch a little before gathering your things and heading back along the path, leaving the cow to finish herself off. As you do, the bovine woman calls out after you, 'That was fun, but I don't think my bull is going to like you very much.' You stop in your tracks, wondering whether you should ask for more information on this bull of hers, but some loud crashing noises nearby send you running as fast as you can before the source of the crashing reaches you.";
						increase CowBully by 1;
					else:
						say "     You take hold of the cow girl's legs and nudge them apart, grinning and licking your lips at the sight of her massive bovine pussy. The cow girl moos in lust as you dive in, burying your face in your prize. Your face is almost lost in her dripping folds, your tongue barely plumbing her depths. Still, the bovine woman seems pleased with your skills, mooing loudly as she thrusts back into your face. You slip a hand down to your smooth crotch, rubbing it as you eat out the cow, taking pleasure in her scent, taste, and moans. Too soon, she lets out a loud cry and her snatch clenches around your face, femcum soaking you utterly. The feeling of almost literally drowning in pussy pushes you into ecstasy, strong waves of pleasure coursing through your body, emanating from your flat groin. You fall back in a daze, a stupid grin on your face as you wait for the intense feelings to fade.";
						say "     Eventually they do and you get up, brushing yourself off to leave. As you do, the bovine woman calls out after you, 'That was fun, but I don't think my bull is going to like you very much.' You stop in your tracks, wondering whether you should ask for more information on this bull of hers, but some loud crashing noises nearby send you running as fast as you can before the source of the crashing reaches you.";
						increase CowBully by 1;
		else:
			say "     You shake your head and get rid of those tempting thoughts. You remove the cow's hands from your waist to release yourself and turn around, heading back along the path. As she picks herself up, she calls after you, saying something about going to tell the bull about how mean you were. Uh oh!";
			increase CowBully by 1;
	else if Bovine_type is 2:
		say "     The large bull collapses to the ground, causing a slight shake as his mass settles as the thumps heavily onto his side.";
		if VictoryOverDaBull < 3:
			if bodyname of Player is "Bovine":
				say "     You look over the fallen body of the large bull, your body drawing you to him, urges within your bovine form calling to you. It would be such a shame to waste such a virile specimen.";
				say "     [bold type]Do you follow these urges?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Have sex with the bull.";
				say "     ([link]N[as]n[end link]) - Leave the bull alone.";
				if Player consents:
					LineBreak;
					if Player is female:
						say "     You groan as you feel a heat between your legs grow, quickly becoming a fiery need. You shiver and drop to your knees, quickly stripping down and crawling up to the bull creature. Your eyes lock onto the bull's massive[if Mooing > 0]shaft, already erect and leaking pre. You reach forward and take the bull's length in one hand and his giant balls in another, gently stroking his shaft and massaging his balls[else]balls and sheath. You lick your lips and reach forward, taking his balls in one hand and his shaft in another. You begin stroking his shaft and massaging his balls, making the large bull groan as his bovine shaft quickly slides out and swells up[end if]. Soon the large bull's cock is pulsing and leaking a steady flow of pre. You shiver and moan at his scent, your pussy dripping with need. You climb up on top of the large bull and lower your cunt onto his thick shaft, grinding up and down its length.";
						say "     This makes the bull creature beneath you squirm and groan, bucking his hips as much as his weakened body will let him. You whimper and moo a little, unable to hold back any longer. You grab his shaft and line it up with your pussy before pushing back hard and sliding it deeply into your [bodytype of Player] body. You gasp and groan at the size of it, the way it spreads you wide open and fills you up. It takes some effort to get it in, but the bull beneath you moans out loud, bucking up into you and forcing his shaft in deeper. You gasp and let out a loud moo, quickly recovering from the initial thrust and beginning to ride this bull's huge length. The size of his shaft plus how horny and needy his scent is making you means you won't last long, and soon enough you're cumming hard. This in turn sets of the bull's own massive orgasm. His shaft pulses with each blast of thick fertile cum he pumps into you, emptying his massive balls into your cunt.";
						WaitLineBreak;
						say "     You collapse on top of the large bull and just let him fill you up, your belly swelling up so much from all his cum that it looks like you're pregnant. You pant and lie there for a while, too tired to get up. Eventually though, you push yourself up off his shaft and roll off his massive form, cum pouring out of your cunt. You get up and grab your things, looking back one last time at the bull that fucked you so full, still resting on his side and tongue lolling out of his mouth as he lays on the grass, and smile before you head back along the path.";
						infect "Bovine";
						fimpregchance;
						fimpregchance;
						fimpregchance;
						increase VictoryOverDaBull by 1;
					else if Player is mpreg_ok:
						say "     You groan as you feel a heat in your butt grow, quickly becoming a fiery need. You shiver and drop to your knees, quickly stripping down and crawling up to the bull creature. Your eyes lock onto the bull's massive [if Mooing > 0]shaft, already erect and leaking pre. You reach forward and take the bull's length in one hand and his giant balls in another, gently stroking his shaft and massaging his balls[else]balls and sheath. You lick your lips and reach forward, taking his balls in one hand and his shaft in another. You begin stroking his shaft and massaging his balls, making the large bull groan as his bovine shaft quickly slides out and swells up[end if]. Soon the large bull's cock is pulsing and leaking a steady flow of pre. You shiver and moan at his scent, your prick dripping with your need. You climb up on top of the large bull and lower your ass onto his thick shaft, grinding up and down its length.";
						say "     This makes the bull creature beneath you squirm and groan, bucking his hips as much as his weakened body will let him. You whimper and moo a little, unable to hold back any longer. You grab his shaft and line it up with your hole before pushing back hard and sliding it deeply into your [bodytype of Player] body. You gasp and groan at the size of it, the way it spreads you wide open and fills you up. It takes some effort to get it in, but the bull beneath you moans out loud, bucking up into you and forcing his shaft in deeper. You gasp and let out a loud moo, quickly recovering from the initial thrust and beginning to ride this bull's huge length. The size of his shaft plus how horny and needy his scent is making you means you won't last long, and soon enough you're cumming hard. This in turn sets of the bull's own massive orgasm. His shaft pulses with each blast of thick fertile cum he pumps into you, emptying his massive balls into your rear.";
						WaitLineBreak;
						say "     You collapse on top of the large bull and just let him fill you up, your belly swelling up so much from all his cum that it looks like you're pregnant. You pant and lie there for a while, too tired to get up. Eventually though, you push yourself up off his shaft and roll off his massive form, cum pouring out of your ass. You get up and grab your things, looking back one last time at the bull that fucked you so full, still resting on his side and tongue lolling out of his mouth as he lays on the grass, and smile before you head back along the path.";
						infect "Bovine";
						mimpregchance;
						mimpregchance;
						mimpregchance;
						increase VictoryOverDaBull by 1;
					else:
						say "     You shiver and groan, realizing that you can't fulfill the desire to be mated by this huge bull, but you could easily get a belly full of the creature's thick cum. Licking your lips and dropping to your knees, you strip naked and crawl up to the big male bovine. Your eyes lock onto the bull's massive [if Mooing > 0]shaft, already erect and leaking pre. You reach forward and take the bull's length in one hand and his giant balls in another, gently stroking his shaft and massaging his balls[else]balls and sheath. You lick your lips and reach forward, taking his balls in one hand and his shaft in another. You begin stroking his shaft and massaging his balls, making the large bull groan as his bovine shaft quickly slides out and swells up[end if]. Soon the large bull's cock is pulsing and leaking a steady flow of pre. You position yourself between his legs and lean forward, taking the tip of his massive length into your mouth. You groan and start sucking on it, bobbing your head and stroking his length while your other hand tends to his balls.";
						say "     The bull moans in response and bucks against your mouth, a large spurt of pre being blasted down your throat. You gulp it down and keep working on getting this big beast off. You work as much of the bull's massive dick head into your mouth as you can, but it's just too big for you to take all of it. You run your mouth all over his cock head, swallowing as much pre as the big male will give you. Soon though, you feel his body tense up and his balls clench. You ram his head as deep as it'll go into your mouth and brace yourself for his orgasm. It hits you like a wave, a torrent of cum blasting out of his shaft and down your gullet. You try as best you can to gulp it all down, but it is soon spilling out of your mouth. You keep stroking his shaft and balls, trying to coax every last bit of his cum out. You groan and shiver, your belly starting to swell up with all the cum that he's pumping into you. Your eyes shut as you savor the taste of such a virile stud's cum.";
						say "     Eventually his orgasm tapers of, his balls empty and your [bodytype of Player] belly stuffed full. You lie back, panting hard and grinning like a fool. You stretch out a bit before getting back up, your belly tingling with warmth. You look back at the bull passed out on his side, tongue lolling out of his mouth, and realize that his cum was probably rather infectious, and taking such a large amount might not have been such a good idea. Shrugging and picking up your stuff you realize that what's done is done and you're just going to have to live with it. You turn around and head back along the path.";
						infect "Bovine";
						infect "Bovine";
						increase VictoryOverDaBull by 1;
				else:
					LineBreak;
					say "     Shaking your head clear of those thoughts you turn away from the bull and head back along the path.";
					increase VictoryOverDaBull by 1;
		else if VictoryOverDaBull is 3:			[Considering what you could do with the beaten bull.]
			say "     You look at the massive beast sprawled before you, defeated once more. A thought occurs to you as the 'bull' breathes heavily in a heap; what kind of bull can't defend his herd? Maybe this bull doesn't deserve the title anymore. [if Mooing > 10]Perhaps, [italic type]you[roman type] deserve to be the bull. [end if]You turn away from the pathetic creature and walk away, your mind turning over how you could put the so-called bull in his proper place... milk maybe.";
			increase VictoryOverDaBull by 1;
		[else if (Mooing > 10) and (bodyname of Player is "Bovine") and (facename of Player is "Bovine") and (VictoryOverDaBull > 3):			[You're gonna be the bull but beware, it's a full time job.]
			say "     A.";
		else if VictoryOverDaBull > 3:			[What are you going to do with the bull?]
			say "     Once again, you've beaten the monstrous bull, no longer the fearsome beast after your battle. And perhaps it's time this bull's appearance matched his demeanor. Perhaps you have something in your pack that'll do the trick?";
			LineBreak;
			say "     [bold type]What do you take out of your pack?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Cow Milk - Because you love teats, er, boobs.";
			say "     [link](2)[as]2[end link] - Demon Seed - What could go wrong?";
			say "     [link](3)[as]3[end link] - Dog Milk - You want to fuck this bull like a bitch.";
			say "     [link](4)[as]4[end link] - Gryphon Milk - You want it all.";
			say "     [link](5)[as]5[end link] - Orc Cum - He'll still be breedingstock, just not like he's used to.";
			say "     [link](6)[as]6[end link] - Nothing - The beast is fine as is for now.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 6:
				say "Choice? (1-7)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5 or calcnumber is 6:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to use Cow Milk, [link]2[end link] to use Demon Seed, [link]3[end link] to use Dog Milk, [link]4[end link] to use Gryphon Milk, [link]5[end link] to use Orc Cum, or [link]6[end link] to use Nothing.";
			if calcnumber is 1:
				LineBreak;
				say "     As you pull the cow's milk out of your pack, you are once more struck with an idea - it's almost exhausting at this point. But maybe something interesting would happen if you poured the milk on his dick instead.";
				say "     [bold type]Do you pour the milk on the bull's dick?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if Player consents:
					LineBreak;
					say "     Y.";
				else:
					LineBreak;
					say "     N.";
			else if calcnumber is 2:
				LineBreak;
				say "     B.";
			else if calcnumber is 3:
				LineBreak;
				say "     C.";
			else if calcnumber is 4:
				LineBreak;
				say "     D.";
			else if calcnumber is 5:
				LineBreak;
				say "     E.";
			else:
				LineBreak;
				say "     On second thought, maybe you're not done humiliating the bull as he is. After all, who knows what he'll become if you change him. You put your back to the bull and walk away, content in knowing you [italic type]can[roman type] do whatever you to him... for now.";
				increase VictoryOverDaBull by 1;
		else:
			say "     You step back from the fallen beast, amazed you've managed to defeat it. You leave your foe with an added spring in your step, confident in your ability to protect yourself from the dangers of this new world.";
			increase VictoryOverDaBull by 1;]
to say cow desc:
	project the figure of Bovine_F_icon;
	if Mooed is 0:
		say "A twelve foot tall cow giant stands before you. 'Mmmmoooo,' she says. 'Are you thirsty? I have all the milk you will ever want,' she exclaims, holding one of her four large breasts, milk slowly dribbling from her teat-like nipple.";
	else:
		say "A twelve foot tall cow giant stands before you. 'Mmmmoooo,' she says. 'Oh, he found you then? Come here little one, I have all the milk you will ever want,' she exclaims, holding one of her four large breasts, milk slowly dribbling from her teat-like nipple.";

to say feral bull desc:
	if CowBully is 0:
		say "A huge bull creature stands on four hooves before you, looking more like an enormous minotaur that forgot how to stand up than the dumb brute he is. Glancing at you as he grazes, 'Mmmmoooo' is all he says.";
	else:
		say "A monstrous bull beast stands on four hooves in front of you grazing. As you watch he sniffs the air, the huge muscles in his neck flex, and you witness the creature figuratively transform from docile to murderous rage in moments.";
	if Mooing > 0:
		say "You do notice a member of truly epic proportions slowly start to slide out from beneath the animal's belly.";

to say bovine attack:
	if Bovine_type is 1:
		say "[cow attack]";
	else:
		say "[feral bull attack]";

to say cow attack:
	if a random number from 1 to 20 is 1:
		say "The cow sprays wildly with milk, drenching you, making you cry out as it seems to soak your clothing. All of a sudden a precise follow up spray hits you in the mouth, the pressure forcing you to swallow or drown in it. With a gulp you get a tingling feeling from your belly and are suddenly washed in contentment.";
		if Mooing < 5:
			say "[mooplus]";
		else:
			say "[CowMilkAddict]";
		infect;
	else:
		say "[one of]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your arm, causing it to sting at the pressure.[or]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your stomach, causing you to become short of breath and bend over wheezing as the focused stream hits.[or]Moving in close, she slams her big milk jugs into your face, trying to make you drink, but ends up knocking you back.[at random]";

to say feral bull attack:
	choose row MonsterID from the Table of Random Critters;
	if CowBully > 0:
		say "[one of]The bull lowers his horns, bellowing wildly and charges at you, raking your side painfully.[or]Screaming and bucking around you the huge animal lashes out with his back hooves, knocking you aside like a tin can.[or]Shaking his huge head as he bolts around wildly, he catches you with a horn, dragging you for a while before swinging his head up and throwing you into the air. As you hit the ground you feel real pain blossom into your legs.[at random]";
	else:
		if monsterHP < ( HP entry / 4 ):			[ < 20 for regular play ]
			say "The bull flicks his tail at you. You have finally annoyed him so much he has moved.[combat abort]";
		say "[one of]The big bull snorts softly, trying to eat grass and completely ignoring you.[or]Looks up from his grazing for a moment, making a mooing sound at you, before returning to his meal.[at random]";
		if monsterHP < ( ( HP entry * 7 ) / 10 ):		[ < 56 for regular play ]
			increase monsterHP by 9 + ( HP entry / 5 ); [ +25 HP for regular play ]
		say "You notice that the big animal is almost completely ignoring your attacks as they fail to pierce his tough hide.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Bovine"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[bovine attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[BeatTheBovine]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[LoseToBovine]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[bovine desc]"; [ Description of the creature when you encounter it.]
	now face entry is "drawn forward into a very cow-like muzzle, ending at a large damp nose. Large ears flick back and forward above your head idly"; [ Face description, format as "Your face is (your text)."]
	now body entry is "a cross between a bovine and a humans, large splayed hips lead down to hoofed feet"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]a thick mat of rough fur covering your body, patterned like Holstein Friesian cattle over a thick[else] black and white splotched, furred[end if]"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "A thin, almost useless cow tail extends down over your buttocks, its only use seeming to be to scare flies away."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "bovine"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it draws forward, flowing into a large blunt muzzle even as your ears migrate up your head and stretching out to have a very bovine appearance. Slow thoughts begin to slowly push away your present needs. You find yourself mooing softly under your breath"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "grows and stretches, bones growing hugely into the frame of an anthro cow, forcing your muscles and posture to follow"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it thickens and sprouts a pattern of black and white hair, slowly merging together into a very cow-like appearance"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it stretches and splays around new bones, forming up the wide hips of a cow"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it fills with power but not need, you almost wonder what this particular infection has in store for you"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 22;
	now dex entry is 8;
	now sta entry is 18;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 10;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80; [ How many HP has the monster got? ]
	now lev entry is 6; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 2; [Amount of Damage monster Does when attacking.]
	now area entry is "Park"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 28; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 4; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 4; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 9; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 28; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 8; [ Width of female sex infection will try and give you ]
	now libido entry is 0; [ Amount player Libido will go up if defeated ]
	now loot entry is "cow milk"; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 20; [ Chance of loot dropping 0-100 ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if Player is female]maternal[else]beefy[end if]";
	now type entry is "bovine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Monster Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

to say bovineheat:
	say "You feel your throat go drier and drier. It seems only milk fresh from the cow will fill your growling stomach.";
	increase thirst of Player by 6 minus (Mooing divided by 3);
	if Mooing > 0 and a random chance of 2 in 5 succeeds:
		decrease Mooing by 1;

To say mooplus:			[The more you moo, the less you need milk.]
	if Mooing < 5:
		now Mooing is 5;
	else if Mooing < 15:
		increase Mooing by 3;

To say CowMilkAddict:			[Getting a direct hit feeds you. This seems like a lot of extra steps for a one off thing.]
	PlayerEat 5;
	PlayerDrink 10;

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Bovine"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400; [ This is the number of days a heat 'cycle' lasts, usually 7 ]
	now heat duration entry is 400; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "";  [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is ""; [ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat start entry is ""; [this is a to say block that causes things to happen when the player enters heat..]
	now heat end entry is ""; [this is the same as heat start only it's for ending the cycle.]
	now inheat entry is "[bovineheat]";
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "";

Table of Game Objects (continued)
name	desc	weight	object
"cow milk"	"A fresh bottle of delicious cow milk straight from the source. There is a cork in the top to keep it closed."	1	cow milk

cow milk is a grab object. It is part of the player. It is milky. cow milk is infectious. The strain of cow milk is "Bovine".

the scent of cow milk is "The cow milk smells delicious and mouth watering.".

the usedesc of cow milk is "[cow milk use]";

to say cow milk use:
	say "You pop the cork off the bottle, tilt your head back and chug the milk down. The taste is sweet and creamy and makes you think of farm life. You sigh happily and release a soft [']moo['] as you finish it off.";
	PlayerDrink 10;
	PlayerEat 5;
	if Mooing < 5:
		now Mooing is 5;
	else if Mooing < 15:
		increase Mooing by 3;

an everyturn rule:
	if mooing > 0:
		if the remainder after dividing turns by 3 is 0:
			if bodyname of Player is not "Bovine" and facename of Player is not "Bovine" and cockname of Player is not "Bovine":
				decrease mooing by 1;
			else if a random chance of 1 in 2 succeeds:
				decrease mooing by 1;

Bovine ends here.
