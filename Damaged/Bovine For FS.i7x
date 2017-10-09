Version 9 of Bovine For FS by Damaged begins here.
[ Version 9.2 - Bull CV victory - Stripes ]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Bovine to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]
Mooing is a number that varies.
CowKiller is a number that varies.
Mooed is a number that varies.
Bovine_type is a number that varies. [0 = not chosen, 1 = cow, 2 = bull]
Bull_run is a number that varies.


to say bovine desc:
	let debit be 0;
	if hardmode is true and level of player > 6, let debit be level of player - 6;
	choose row monster from the table of random critters;
	if a random number from 1 to 10 > 3:	[FEMALE COW]
		setmongender 4;		[creature is female]
		say "[cow desc]";
		now Bovine_type is 1;
		now wdam entry is 2 + ( debit / 4 );	[-Amount of Damage cow Does when attacking.-]
		now lootchance entry is 20;
	else:						[MALE BULL]
		setmongender 3;		[creature is male]
		say "[bull desc]";
		now Bovine_type is 2;
		if CowKiller is 0:
			now wdam entry is 0;			[Passive bull is 0, even in hard mode]
		else:
			now wdam entry is 28 + ( ( 2 * debit ) / 5 );		[check for if the player has killed a cow (female bovine), if they have, it's time to roll out the punishment]
		now lootchance entry is 20;

to say cow vict:
	if Mooing < 1:
		say "The cow grabs you and pulls you closer, sitting down in the process.  Its strong bovine arms lift you up, pressing your lips to one engorged teat, 'Drink, little heifer.  Sate yourself,' it says softly, motherly[one of].  The smell of the milk calls to your thirst and[or].  One little drop of milk leaks from the engorged teat and it drips down onto your lip, without thinking your tongue snakes out and pulls it in to your mouth.  Gasping,[or].  Giving her teat a squeeze, a spray of milk wets your lips and[at random] you push your head forward, latching onto the nipple with your lips and begin sucking happily at the breast.  'See, it's not so bad,' the cow says softly again, rocking you back and fourth in her arms as you drink.";
		now thirst of player is 0;
		now hunger of player is 0;
		infect;
		now Mooing is 6;
	else:
		say "[one of]The cow sits down and you run into her waiting arms, mouth reaching to find a spare nipple[or]You see the cow smile down at you, 'You wanted to play a little first. Come on now, it's time for your meal,' she moos softly to you and you race over, leaping into her waiting arms to grip a teat and begin sucking[or]The bovine woman rubs her breasts and gives her teat-like nipples a squeeze, coaxing some of her delicious milk to flow.  Licking your lips, you rush over to her and start suckling[at random].  The flood of pure contentment as the milk begins to flow into your throat causes you to grow sleepy, soon causing you to fall asleep completely, still drinking from her.[line break]You wake up, stomach bulging slightly, the taste of her milk still in your mouth. You let out a breath that sounds more like a [']Moo['] and wander off.";
		now thirst of player is 0;
		now hunger of player is 0;
		infect;
		if Mooing < 6:
			now Mooing is 6;
		else if Mooing < 15:
			increase Mooing by 3;

to say bull vict:
	let antimoo be 16 - Mooing;
	if Mooing > 15:
		now antimoo is 1;
	if CowKiller > 0:
		if cunts of player > 0:
			say "The big bull grunts fiercely, breathing hard after its maddened fight. It prods you with its sharp horns until you huddle on all fours.[line break]Without any warning, you feel the animal's huge member thrust into you, feeling like it will split you in half. Your cries, when you hear them, sound almost the same as the cow you remember hurting as you try in vain to brace yourself against the crazed beast's rutting. It makes a bellowing cry as you feel its burning seed pour into you, filling you out, making you look, if not a little, then very pregnant.[line break]Finally done with you, and calming after its release, it wanders off to graze.";
			say "It seems the scent of your fucking has covered completely whatever smell that remained on you of the bovine cow attack from earlier.";
			infect;
			now CowKiller is 0;
			if Mooing > 0:
				say "[impregchance]";
			now Mooed is 1;
		else:
			say "The huge beast bellows one last time and flies at you, its head crashing hard into your side. Your cry then reminds you of the cow you remember striking down.[line break]The bull seems to have calmed, it wanders off to graze.";
			say "Your blood seems to have covered the scent of the bovine cow attack from earlier.";
			decrease CowKiller by 1;
	else if vorelevel > 1 and a random chance of vorelevel in 5 succeeds and ( a random chance of antimoo in 20 succeeds or cunts of player is 0 ) and scalevalue of player < 4:
		say "     The bull snorts after knocking you down and stomps overtop of you.  Its cock, semi-engorged after the fight, slaps against your face, leaving a streak of bovine pre across your face[if hp of player > 0].  Feeling arousal[else].  Still dazed from the fight[end if], you turn your head towards it to get a proper taste, but are instead surprised as the bull pushes its large cock forward.  The thick cock slams into you and stretches surprisingly wide, engulfing your whole head.  Your initial shock allows the beast a chance to press its advantage and its cock gulps around you, pulling in your shoulders as well.  Surrounded by the hot, squeezing flesh of its bestial manhood, you are assaulted by the strong, musky scent of its virility.  Any struggles you make are futile and seem to only further excite the big bovine as you are pulled inches at a time along that meaty tunnel.  More and more of your [bodytype of player] body is drawn into that bulging bovine penis.";
		say "     You are eventually deposited into its ballsac and left to bathe in its virile semen while its cum factories churn away.  You lose track of time, falling into a lustful haze in the heated chamber, only to be roused much later by some rubbing from the outside.  As this continues, you can hear the faint mooing of the excited bull growing louder before you are finally blasted free along with a sticky load of bull semen.  Landing in the grassy field, you are set upon by the cow who masturbated the bull to climax.  She licks you clean, her sloppy tongue getting as much of bovine seed as she can get before you make your getaway.";
		say "[mooplus]";
		infect;
		infect;
	else:
		if Mooing < 1:
			say "The bull seems to lose interest in you and wanders off to find some grass to eat.";
		else:
			if cunts of player > 0:
				say "Lifting its nose to the air, the bull catches your scent and you know exactly what scent that is, cow in heat.[line break]Pacing over to you it sniffs at your rear and you feel yourself rising to all fours and presenting your rear to the beast.[line break]His weight is suddenly upon you, you struggle to hold him for a moment until you feel his huge member press at your entrance. Suddenly nothing seems to matter but having him within you.[line break]His bellowing thrusts are countered by your own as you rock your hips back against his motion, feeling him deep within.[line break]Suddenly his breeding tool seems to swell even bigger, somehow filling your cavernous depths and exploding, painting every inch of your insides white.[line break][impregchance][impregchance][impregchance][line break]Dismounting he makes a loud whuffing sound and you feel so happy and full of his seed you lay down and rest just a moment, even as you begin to feel thirsty again...";
				infect;
				now mooing is mooing / 2;	[increasing milk thirst]
				now Mooed is 1;
			else:
				say "The bull licks at you a few times but loses interest and wanders off to find some grass to munch on.";
				if mooing < 5:
					now mooing is 5;
				else if mooing > 10:
					now mooing is 10;

To say mooplus:
	if Mooing < 5:
		now Mooing is 5;
	else if Mooing < 15:
		increase Mooing by 3;


to say Deadcow:
	increase CowKiller by 1;

To say dessicate:
	decrease hunger of player by 5;
	decrease thirst of player by 10;
	if hunger of player < 0, now hunger of player is 0;
	if thirst of player < 0, now thirst of player is 0;

to say cow attack:
	if a random number from 1 to 20 is 1:
		say "The cow sprays wildly with milk, drenching you, making you cry out as it seems to soak your clothing. All of a sudden a precise follow up spray hits you in the mouth, the pressure forcing you to swallow or drown in it.[line break] With a gulp you get a tingling feeling from your belly and are suddenly washed in contentment.";
		if Mooing < 5:
			say "[mooplus]";
		else:
			say "[dessicate]";
		infect;
	else:
		say "[one of]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your arm, causing it to sting at the pressure.[or]Reaches up to her chest, squeezing down on a teat expertly, spraying milk at you, hitting your stomach, causing you to become short of breath and bend over wheezing as the focused stream hits.[or]Moving in close, she slams her big milk jugs into your face, trying to make you drink, but ends up knocking you back.[at random]";

to say cow desc:
	project the figure of Bovine_F_icon;
	if Mooed is 0:
		say "A twelve foot tall cow beast stands before you, 'Mmmmoooo' it says, 'Are you thirsty? I have all the milk you will ever want.' it exclaims, holding one of its four large breasts, milk slowly dribbling from its teat-like nipple.";
	else:
		say "A twelve foot tall cow beast stands before you, 'Mmmmoooo' it says, 'Oh he found you then? Come here little one, I have all the milk you will ever want.' it exclaims, holding one of its four large breasts, milk slowly dribbling from its teat-like nipple.";

to say bull attack:
	choose row monster from the table of random critters;
	if CowKiller > 0:
		say "[one of]The bull lowers its horns, bellowing wildly and charges at you, raking your side painfully.[or]Screaming and bucking around you the huge animal lashes out with its back hooves, knocking you aside like a tin can.[or]Shaking its huge head as it bolts around wildly, it catches you with a horn, dragging you for a while before swinging its head up and throwing you into the air. As you hit the ground you feel real pain blossom into your legs.[at random]";
	else:
		if monsterhp < ( hp entry / 4 ):			[ < 20 for regular play ]
			say "The bull flicks its tail at you. You have finally annoyed him so much he has moved.[combat abort]";
		say "[one of]The big bull snorts softly, trying to eat grass and completely ignoring you.[or]Looks up from its grazing for a moment, making a mooing sound at you, before returning to its meal.[at random]";
		if monsterhp < ( ( hp entry * 7 ) / 10 ):		[ < 56 for regular play ]
			increase monsterhp by 9 + ( hp entry / 5 );	[ +25 hp for regular play ]
		say "You notice that the big animal is almost completely ignoring your attacks as they fail to pierce its tough hide.";

to say bull desc:
	if CowKiller is 0:
		say "A huge bull stands before you, 'Mmmmoooo' is all it says.";
	else:
		say "A monstrous bull stands in front of you grazing. As you watch it sniffs the air and you witness the creature figuratively transform from docile to murderous rage in moments.";
	if Mooing > 0:
		say "You do notice a member of truly epic proportions slowly start to slide out from beneath the animal's belly.";

to say bovine attack:
	if Bovine_type is 1:
		say "[cow attack]";
	else:
		say "[bull attack]";

to say bovine defeat:
	if Bovine_type is 1:
		say "[Deadcow]The large female cow suddenly drops to her knees mooing, 'All I wanted was for you to be happy. Don't you think you could be happy with me?' She clings to your waist, crying softly in disappointment or fear. You look over the large cow and ponder what you should do. She's clearly too weak to fight back now, you could easily pin her down and rape her, but if you did, you might not be any better than these ferals.  There's just something about her that makes you want to be rough with the poor heifer. (Y=rape, N=leave)";
		If the player consents:
			say "You walk over to the defeated cow and push her onto her back. She lets out a distressed moo and tries to get up and away from you, but you quickly pin her down. She struggles in your grasp, obviously rather upset with your actions. While she struggles, her breasts start to leak more of her milk, the sight making your rather thirty. A thought comes to mind and you realize that you could not only satisfy your sexual urges on her, but you could also quench your thirst too. (Y=Drink+Sex, N=Just Sex)";
			If the player consents:
				If cocks of player > 0:
					say "You grin and lean forward, taking one of her nipples into your mouth, flicking your tongue across it, the rich taste of milk driving you to begin sucking on it. The cow girl moans and struggles more, begging you to let her go, say that this isn't how her milk is supposed to be taken. You ignore her and keep sucking, shifting your position on top of her so that your now hard cock is resting against her folds.[line break]You pull your hips back, lining the tip of your [cock of player] cock up with her wet folds and then slamming into her, moaning out in pleasure. As you pound away at the cow girl's cunt, she slowly stops resisting as the pleasure of being fucked overrides the disdain of being taken by someone other than her bull. Soon enough you feel your climax building, your balls swelling slightly with cum. With one final thrust, you bury your [cock size desc of player] length in the cow girls depths, flooding her womb with your fertile seed. You barely even notice that she's also peaked and squirming in ecstasy.[line break]After you pump the last of your cum into her, you lie atop the cow girl, nursing from her breast. A warm feeling radiating out from your stomach. After a while you get up and stretch before you head out along the path.";
					say "[Mooplus]";
					decrease hunger of player by 5;
					decrease thirst of player by 10;
					if thirst of player < 0, now thirst of player is 0;
					if hunger of player < 0, now hunger of player is 0;
					infect;
				else if cunts of player > 0:
					say "You grin and lean forward, taking one of her nipples into your mouth, flicking your tongue across it, the rich taste of milk driving you to begin sucking on it. The cow girl moans and struggles more, begging you to let her go, say that this isn't how her milk is supposed to be taken. You ignore her and keep sucking, sliding your hand down between her legs and beginning to stroke her wet pussy.[line break]The cow girl shivers and groans as you play with her cunt, first stroking it and then slowly sliding a finger or two into her. Soon enough, the cow girl has stopped resisting you completely, allowing you to tend to your own tender folds, your fingers quickly finding your g-spot and working you up to climax rather quickly. You continue on like this for a while, suckling on the cow girls tits while you finger yourself and her, until she is finally pushed over the edge and into orgasm, cunt clamping down on your fingers, her body shaking in pleasure. Having gotten the cow off, you decide it's time to go. You stand up and rub your belly, a warm tingle coming from your stomach full of milk. You shrug at this and head off along the path.";
					say "[Mooplus]";
					decrease hunger of player by 5;
					decrease thirst of player by 10;
					if thirst of player < 0, now thirst of player is 0;
					if hunger of player < 0, now hunger of player is 0;
					infect;
				else:
					say "You look down at yourself and realize that you don't really have any proper equipment to play with the cow girl, but that doesn't mean you can't still get your drink. You climb up on top of her and take hold of her breasts, clamping your mouth down over one and beginning to suckle from it. You grin slightly as the cow girl twists and moos, struggling in vain to get you off.[line break]You gulp down her milk, teasing her squirting teat with your tongue and teeth, squeezing and pulling on the one not currently in your mouth. When the first one starts to run dry you just switch to the other, happily drinking your fill.[line break]Once your belly is completely full of the cow girls delicious milk, you get up and stretch, a warm fuzzy feeling spreading throughout you. You shrug it off, gather your gear and head back out along the path.";
					say "[Mooplus]";
					decrease hunger of player by 5;
					decrease thirst of player by 10;
					if thirst of player < 0, now thirst of player is 0;
					if hunger of player < 0, now hunger of player is 0;
					infect;
			else:
				if cocks of player > 0:
					say "You take hold of the cow girls legs and spread them open with ease, grinning and licking your lips at the sight of her delicate bovine pussy. The cow girl shivers and whimpers in fear as you pull yourself up against her, your [cock of player] cock grinding against her wet fold.[line break]You line yourself up and thrust in without any regard to the cow girls feelings. Ramming your length deep inside her, you moan out is pleasure, gripping the cow girls hips tightly as you pound away at her cunt. She groans and begs you to stop, pleading that only her bull should do that. Getting annoyed by this you tell her to shut up, slamming your length into her painfully to make your point. She whimpers and cries a little, but is silent from then on.[line break]You start bucking harder and faster into her, feeling your climax building. You lean forward and wrap your arms underneath her body, your hands taking hold of her shoulders. With one last hard thrust, you bury your [cock size desc of player] shaft in her depths and cum hard, filling this cow girl up with every last bit of fertile seed you've got, making her moo loudly in orgasm.[line break]When you're just about finished with the poor girl, you get up and wipe your cock off on her breasts, as few last spurts of cum splattering on her face. You laugh at the state you've left that heifer in and gather your things before heading back along the path.";
				else:
					if cunts of player > 0:
						say "You take hold of the cow girls legs and spread them open with ease, grinning and licking your lips at the sight of her delicate bovine pussy. The cow girl shivers and whimpers in fear as you climb on top of her, swinging yourself around and shoving your cunt right in her face. 'Lick it bitch!' you command. 'Or else I'll show you just how much that little slut hole of yours can stretch.' Holding up your hand in a fist so she gets the idea. Fear shoots through her eyes and she quickly begins licking at your pussy, doing her best to try and get you off as fast as she can.[line break]You groan and push your cunt back against her muzzle, grinding it up and down. You then lean down and bury your head in her crotch, nuzzling and licking at her bovine depths. You hear her gasp in surprise and moan, faltering for a second before resuming her attention on your pussy. You grin at this and play with her cunt more, flicking your tongue in and out of her, sliding a finger or two in and pressing them hard against her walls.[line break]Soon enough you have her on the edge of orgasm, but you hold her there, waiting till she gets you off. This is that long, as the cow girl quickly starts to pick up on what pleasures you the most and soon you are both crying out in orgasm, fem juices covering both of your faces.[line break]You lick your lips and savor her taste before turning back around and using her breasts to wipe your face off. The cow girl blushes and moos in embarrassment at the way you use her, clearly upset with your actions. You get up and stretch a little before gathering your things and heading back along the path, grinning like a fool.";
					else:
						say "You take hold of the cow girls legs and spread them open with ease, grinning and licking your lips at the sight of her delicate bovine pussy. The cow girl moos in fear, but then asked, 'W..What are you going to do to me, you are neither a male nor a female.' This stops you. You realize the truth of her words and growl in anger, leaning forward and smacking the bovine girls tender folds. She yelps out in pain and cringes, watching you in fear as you turn around and grab your gear, heading back off along the path, yelling to her that you'll be back for her cunt later even as she staggers off, calling for her bull.  Uh oh!";
		else:
			say "You shake your head and get rid of those dark thoughts.  You give the heifer a final hard smack, to silence her and get to release you.  Turning around, you head on your way heading back along the path.  As she runs off, she whines something about going to tell the bull about how mean you were.  Uh oh!";
	else:
		say "The large bull collapses to the ground, causing a slight shake as its mass settles as the thumps heavily onto his side.";
		if bodyname of player is "Bovine":
			say "You look over the fallen body of the large bull, your body drawing you to it, urges within your bovine form calling to you.  It would be such a shame to waste such a virile specimen. Do you follow these urges? (Y=Sex, N=Leave)";
			if the player consents:
				if cunts of player > 0:
					say "You groan as you feel a heat between your legs grow, quickly becoming a fiery need. You shiver and drop to your knees, quickly stripping down and crawling up to the bull creature. [if Mooing > 0]Your eyes lock onto the bull's massive shaft, already erect and leaking pre. You reach forward and take the bull's length in one hand and his giant balls in another, gently stroking his shaft and massaging his balls.[else]Your eyes lock onto the bull's massive balls and sheath. You lick your lips and reach forward, taking his balls in one hand and his shaft in another. You begin stroking his shaft and massaging his balls, making the large bull groan as his bovine shaft quickly slides out and swells up.[end if] Soon the large bull's cock is pulsing with need and leaking a steady flow of pre.[line break]You shiver and moan at his scent, your pussy dripping with need. You climb up on top of the large bull and lower your cunt on top his thick shaft, grinding up and down its length. This makes the bull creature beneath you squirm and groan, bucking his hips as much as his weakened body will let him. You whimper and moo a little, unable to hold back any longer. You grab hold of his shaft and line it up with your pussy before pushing back against it hard and sliding it deeply into your [bodytype of player] body.[line break]You gasp and groan at the size of it, the way it spreads you wide open and fills you up.  It takes some effort to get it in, but the bull beneath you moans out loud, bucking up into you and forcing his shaft in deeper. You gasp and let out a loud moo, quickly recovering from the initial thrust and beginning to ride this bull's huge length.[line break]The size of his shaft plus how horny and needy his scent is making you means you won't last long, and soon enough you're cumming hard. This in turn sets of the bull's own massive orgasm. His shaft pulses with each blast of thick fertile cum he pumps into you, emptying his massive balls into your cunt. You collapse on top of the large bull and just let him fill you up, you're belly swelling up so much from all his cum that it looks like you're pregnant.[line break][impregchance][impregchance][impregchance][line break]You pant and lie there for a while, too tired to get up. Eventually though, you push yourself up off his shaft and roll off his massive form, cum pouring out of your cunt. You get up and grab your things, looking back one last time at the bull that fucked you so full, still resting on his side and tongue lolling out of his mouth as he lays on the grass, and smile before you head back along the path.";
					infect;
				else:
					say "You shiver and groan, realizing that you can't fulfill the desire to be mated by this huge bull, but you could easily get a belly full of the creature's thick cum. Licking your lips and dropping to your knees, you strip naked and crawl up to the big male bovine. [if Mooing > 0]Your eyes lock onto the bull's massive shaft, already erect and leaking pre. You reach forward and take the bull's length in one hand and his giant balls in another, gently stroking his shaft and massaging his balls.[else]Your eyes lock onto the bulls massive balls and sheath. You lick your lips and reach forward, taking his balls in one hand and his shaft in another. You begin stroking his shaft and massaging his balls, making the large bull groan as his bovine shaft quickly slides out and swells up.[end if] Soon the large bull's cock is pulsing with need and leaking a steady flow of pre.[line break]You position yourself between his legs and lean forward, taking the tip of his massive length into your mouth. You groan and start sucking on it, bobbing your head gently and gently stroking his length while your other hand tends to his balls. The bull moans in responds and bucks a little into your mouth, a large spurt of pre being blasted down your throat. You gulp it down and keep working on getting this big beast off.[line break]You work as much of the bull's massive shaft into your mouth as you can, but it's just too big for you to take all of it. You bob up and down his length, swallowing as much pre as the big male will give you. Soon though, you feel his body tense up and his balls clench. You ram his cock as deep as it'll go into your mouth and brace yourself for his orgasm. It hits you like a wave, a torrent of cum blasting out of his shaft and down your gullet. You try as best you can to gulp it all down, but it is soon spilling out of your mouth. You keep stroking his shaft and balls, trying to coax every last bit of his cum out.[line break]You groan and shiver, your belly starting to swell up with all the cum that he's pumping into you. You're eyes shut as you savor the taste of such a virile stud's cum. Eventually his orgasm tapers of, his balls empty and your [bodytype of player] belly stuffed full. You lie back on top of the bull, panting hard and grinning like a fool. You stretch out a bit before getting back up, you're belly tingling with warmth. You look back at the bull passed out on his side, tongue lolling out of his mouth, and realize that his cum was probably rather infectious, and taking such a large amount might not have been such a good idea. Shrugging and picking up your stuff you realize that what's done is done and you're just going to have to live with it. You turn around and head back along the path.";
					infect;
					infect;
			else:
				say "Shaking your head clear of those thoughts you turn away from the bull and head back along the path.";

to say bovine vict:
	if Bovine_type is 1:
		say "[cow vict]";
	else:
		say "[bull vict]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bovine"; [Name of your new Monster]
	now attack entry is "[bovine attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[bovine defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[bovine vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[bovine desc]";[ Description of the creature when you encounter it.]
	now face entry is "drawn forward into a very cow-like muzzle, ending at a large damp nose. Large ears flick back and forward above your head idly";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "a cross between a bovine and a humans, large splayed hips lead down to hoofed feet";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]a thick mat of rough fur covering your body, patterned like a friesian cow over a thick[else]cow patterned, furred[end if]";[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "A thin, almost useless cow tail extends down over your buttocks, its only use seems to be to scare flies away.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "bovine";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it draws forward, flowing into a large blunt cows muzzle even as your ears migrate up your head and stretching out to have a very bovine appearance. Slow thoughts begin to slowly push away your present needs. You find yourself mooing softly under your breath"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "grows and stretches, bones growing hugely into the frame of a cow beast, forcing your muscles and posture to follow"; [ body change text. format as "Your body feels funny as (your text)." ]
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
	now hp entry is 80;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 2;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;			[ Number of Breasts infection will give you. ]
	now breast size entry is 9;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 28;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;		[ Width of female sex  infection will try and give you ]
	now libido entry is 0;			[ Amount player Libido will go up if defeated ]
	now loot entry is "cow milk";			[ Loot monster drops, ]
	now lootchance entry is 20;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if cunts of player > 0]maternal[else]beefy[end if]";
	now type entry is "bovine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Monster Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

to say bovineheat:
	say "You feel your throat go drier and drier.  It seems only milk fresh from the cow will fill your growling stomach.";
	increase thirst of player by 6 minus (Mooing divided by 3);
	if Mooing is greater than 0 and a random chance of 2 in 5 succeeds:
		decrease Mooing by 1;


When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Bovine";	[ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 400;					[ This is the number of days a heat 'cycle' lasts, usually 7 ]
	now heat duration entry is 400;					[ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "";  [ This is the text that is written to the screen when the player comes into heat]
	now description text entry is "";				[ This text is used to describe the monster female anatomy in heat. delete entire line if you don't wish to enter one.]
	now heat start entry is "";		[this is a to say block that causes things to happen when the player enters heat..]
	now heat end entry is "";		[this is the same as heat start only it's for ending the cycle.]
	now inheat entry is "[bovineheat]";
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "";

Table of Game Objects(continued)
name	desc	weight	object
"cow milk"	"A fresh bottle of delicious cow milk straight from the source. There is a cork in the top to keep it closed."	1	cow milk

cow milk is a grab object.  it is part of the player.  it is milky.  cow milk is infectious. The strain of cow milk is "Bovine".

the scent of cow milk is "The cow milk smells delicious and mouth watering.".

the usedesc of cow milk is "[cow milk use]";

to say cow milk use:
	say "You pop the cork off the bottle, tilt your head back and chug the milk down. The taste is sweet and creamy and makes you think of farm life.  You sigh happily and release a soft [']moo['] as you finish it off.";
	decrease thirst of player by 10;
	decrease hunger of player by 5;
	if Mooing < 5:
		now Mooing is 5;
	else if Mooing < 15:
		increase Mooing by 3;

an everyturn rule:
	if mooing > 0:
		if the remainder after dividing turns by 3 is 0:
			if bodyname of player is not "Bovine" and facename of player is not "Bovine" and cockname of player is not "Bovine":
				decrease mooing by 1;
			else if a random chance of 1 in 2 succeeds:
				decrease mooing by 1;


[ +++++ ]
[ Edit this to have the correct Name as well]
Bovine For FS ends here.
