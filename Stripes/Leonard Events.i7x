Version 2 of Leonard Events by Stripes begins here.
[version 2.2 - Random den event #1]

"Adds a batch of random events and encounters with Leonard's Pride to Flexible Survival scattered around the city."
[Note: These will only be accessible after completing Leonard's Quest.]

Section 0 - Den Events

Part 0 - Core Event

lastdenevent is a number that varies.  lastdenevent is usually 255;
leosupplies is a number that varies.

after navigating Lion's Den while hp of Leonard >= 16 and hp of Leonard < 100 and lastdenevent - turns >= 12:
	if hp of Leonard is 16:	[maids]
		say "[leodenscene1]";
	otherwise if hp of Leonard is 17 and a random chance of 2 in 5 succeeds:
		say "[leodenscene2]";
[	otherwise if hp of Leonard is 18 and a random chance of 2 in 5 succeeds:
		say "***";
	otherwise if leodenlist is not empty and a random chance of (the number of entries in leodenlist) in 5 succeeds:
		sort leodenlist in random order;
		if entry 1 of leodenlist is 1:
			say "[leodenspecial1]";
		otherwise if entry 1 of leodenlist is 2:
			say "[leodenspecial2]";
		otherwise if entry 1 of leodenlist is 3:
			say "[leodenspecial3]";
		otherwise if entry 1 of leodenlist is 4:
			say "[leodenspecial4]";					]
	otherwise if a random chance of 1 in 4 succeeds:	[repeatable]
		if 1 is 1:		[more variations coming]
			say "[leosupplyscene]";

Part 1 - Maid Scene

to say leodenscene1:
	say "     When you enter Leonard's home, you find your mate relaxing in his chair with the three maids lavishing attention upon him.  A wave of his paw has the one brushing his beautiful mane step back, allowing him to turn his head and smile at you.  'Ah, my dear mate.  You look weary from your travels.  Take a seat and enjoy a relaxing foot rub.'  As you continue further into the cave, you can see that the regal lion is receiving a foot rub and tongue grooming from one maid on the floor while the last of them is sucking him off.";
	say "     With the arousing scent of the male in the air and the sexy sight of his humbled rivals serving him, you share in Leonard's smile and sit down, raising one of your feet.  The feline with the brush, already moving towards you as you moved to take a seat, kneels in front of you and runs her paws over your leg as she nuzzles your foot.  She purrs happily, kissing and licking at your foot before beginning the massage.";
	if the player is not felinebodied:
		say "     The rubbing and licking quickly starts to have an effect on you.  With each lick, your foot shifts and changes a little more, soon returning to a leonine paw.  As this change starts to creep up your leg, she turns her attention to your other foot, soon remaking it into a lion's paw as well.  The transformation progresses up your legs, across your hips and through the rest of your body, restoring much of your matronly form.";
	say "     The obedient maid is thorough in her attention, rubbing at your feline paws to soothe the aches of walking all around the city.  You'd come to ignore them, but having them massaged away while the servile girl licks and kisses your foot is both soothing and arousing.  The brush of her rough tongue grooming the underside of your foot and between your feline toes is a delight.  She seems pleased as well with her task, purring happily at her opportunity to bestow attention upon her loving matron.";
	say "     While you've been enjoying your foot rub, Leonard's has come to an end, the black-haired maid having sucked him off, freeing his cock for the other girl to climb into his lap.  As the lion's paws opens the front of her French maid's dress so he can grope her breast, she flips up her skirt and gives you a lovely view of her juicy pussy as it sinks down onto your lover's rod.  Watching as his throbbing, leonine cock sinks into her quivering hole, you lick your lips and smile, spreading your legs for the black-haired maid who's now free to service you as well.";
	if cocks of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid.  She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your erection.  Her tongue slides over your balls and up your pulsing rod, the subservient kitty being as thorough in licking your groin as the other is at licking your foot.  As she lowers her muzzle down onto your shaft and sucks hard, you moan softly and run your fingers through her dark hair.  Her oral attention is very enjoyable, clearly having gotten lots of practice sucking off her new master.  Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and cock, it is not long before you cum with a loud rumble of delight, a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt.";
	otherwise if cunts of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid.  She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your damp thighs.  Her tongue slides over your dripping folds and across your pulsing clit, the subservient kitty being as thorough in licking your groin as the other is at licking your foot.  As she slides her raspy tongue into your cunt, sending shivers of delight through you, you moan softly and run your fingers through her dark hair.  Her oral attention is very enjoyable, clearly having gotten lots of practice with her fellow servants.  Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and cunny, it is not long before you cum with a loud rumble of delight, a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt.";
	otherwise:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid.  She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your bare groin.  She mewls sadly at the disappointing sight of your featureless crotch, but continues to lavish attention upon you, running her raspy tongue across your pubis before drifting upwards.  Her paws roam over your leonine body as she licks, nips and kisses at any sensitive spot she can find, doing her best to please her matron.  Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and body, it is a wonderfully pleasurable experience that is capped off by your lover filling the third maid with his cum until it overflows from her stuffed cunt.";
	say "     Their duty done, the trio kiss and caress you both before heading off to snuggle together.  The pair who'd been serving you take considerable pleasure in licking the lion's cum from the third girl.  Feeling much relaxed and pleased after your enjoyable welcome, you muse that you should consider making use of the servants more often as a means to unwind.  But for the moment, you let them go and turn your attention back to your mate, smiling at him and trying to restore your thoughts to the reason you came to see him.";
	if player is felinebodied:
		infect "Feline";
	otherwise:
		felinebodyshift;
	increase morale of player by 1;
	increase libido of player by 5;
	decrease humanity of player by 5;
	if libido of player > 100, now libido of player is 100;
	now hp of Leonard is 17;
	now lastdenevent is turns;


Part 2 - Work Group Scene

to say leodenscene2:
	say "     Your approach to Leonard's cave den is pleasantly interrupted by an encounter with your work group.  They are in a cheerful mood and welcome you with many hugs, kisses and caresses[if player is not felinebodied].  Their kneading paws and licking tongues soon prompt your body to change, restoring your matronly figure[end if].  As you approach the den, you ask them what's got them in such a good mood.";
	say "     'Oh, Master Leonard asked us a while ago to keep an eye out for more sheet music.  You see, we were told to try looking around the...' she starts to say, but is interrupted by Raven gently bopping her on top of the head with the leather satchel she's carrying.";
	say "     'If you tell her, you'll go on forever about it,' she cuts in.  'While we were out looking for some furniture,' she goes on to say while smiling at the others, 'we managed to get our paws on this.'  The dark-haired kitty pats the satchel and shows you a sheet of violin music from the very full case.  From the way the other three are whispering excitely, you're certain they're looking forward to presenting their find to the lion.";
	say "     'And now we've run into you on our way back,' Jasmine adds excitedly.  'Will you be staying for a while?'";
	say "     You respond that you're only stopping by for a little while as always, but add that you can stay and help Leonard thank them for their diligence, if they'd like.  They're all quite pleased with this and snuggle in close as you continue along the path together.  You change the subject to them, asking if they're run into any trouble or if anything in the city's been giving them trouble.";
	attempttowait;
	say "     'Nothing we can't handle, matron.  We've been paying attention to your advice about moving around in the city.  We're smaller than most, so it's easier for us the sneak around when we have to.  Dahlia's really good at spotting trouble, so we manage to avoid a lot of it.'  The other girl, who's been pretty quiet up to now, smiles and nods.";
	say "     Yarrow giggles and hugs her compatriot.  'Yeah, she's smart enough to keep quiet.  Not like me,' she adds, laughing.  'There was this one time when this big wolf heard me joking (keeping everyone's spirits up).  He was such a big, mean looking guy.  Really well hung though - might've been worth the fleas to get a ride on that meat of his.'  She even adds some exaggerated itch-scratching.";
	say "     As the girls all laugh at her antics, she's poked in the ribs by Dahlia and Jasmine takes the opportunity to continue.  'Well, Raven managed to get us out of that one.'";
	say "     'All I did was spot a hole that was too big for him to follow us through.'";
	say "     'Well, you kept your head while the rest of us were crapping our pants (or drooling over his cock - Yarrow pipes in) and so you made sure we all got out of there safe,' Jasmine concludes.  Listening and watching them, you can't help but smile proudly, very pleased with how they've come together as a team.  And with the den coming into view, you let them go on in ahead of you so they can present their gift to the lion without you distracting him right away.";
	attempttowait;
	say "     When you do enter, Leonard smiles and welcomes you.  He passes off the satchel to one of the maids, instructing her to put it away somewhere safe.  Putting his arm around you, resting on your rear, he has many kind words for the work group as he leads you and them off to his bed.  Eager Jasmine is quick to offer herself up to Leonard and mewls in delight as he mounts her with Yarrow snuggled in close beside, fondling them both as they mate.  You snuggle up with Raven and Dahlia, licking and caressing one another as each waits their turn with the gentlemanly male.";
	say "     The six of you make passionate love, the lion making sure to tend to the needs of all four of the hard working girls, giving each of them some personal attention.  You make sure to do the same as well, fingering them to keep them aroused and eager while waiting their turn or allowing them to take pleasure in lavishing attention upon your body.  This feline orgy goes on for quite some time, but eventually the satiated felines are all snuggled up together on the bed.";
	attempttowait;
	say "     With everyone else napping, you're about to drift off as well, but are roused briefly by quiet Dahlia caressing your cheek.  'I wanted to thank you, matron, for saving us,' she whispers softly to you.  'The others don't remember much from before they joined the pride, but I do.  It was a very hard and lonely time on my own.  The other males were mean or rough, mistreating the girls they came across, not like our mate Leonard.";
	say "     'You found us, were kind to us and brought us here to be with him.  We are so much better off together, with our pride family,' she says, smiling as she looks over to the others slumbering happily.  'Remember that when you have doubts and,' she clutches you tightly, 'remember that when you wonder where you belong.  You belong here.  With us.'  She kisses your cheek and rests her head on your chest.  Having said so much, the normally quiet and thoughtful girl falls silent again, and you both lay there in each others arms, saying nothing and simply enjoying being close.  You drift off into slumber with the others, resting peacefully with your feline family.";
	if player is felinebodied:
		infect "Feline";
	otherwise:
		felinebodyshift;
	infect "Feline";
	increase morale of player by 3;
	decrease libido of player by 10;
	decrease humanity of player by 5;
	if libido of player < 0, now libido of player is 0;
	now hp of Leonard is 18;
	now lastdenevent is turns;
	rest;
	follow the turnpass rule;


Part 9 - Supply Delivery

to say leosupplyscene:
	if leosupplies is 0, let leosupplies be a random number between 1 and 2;
	say "     After being welcomed by your mate, you [one of]settle in to take a short break before getting into the reason for your visit[or]enjoy a pleasant snuggling with the sexy lion[or]enjoy some relaxing attention from the cute maids[or]enjoy a pleasant chat with Leonard[cycling].  At this time, a heavily-laden lioness in a red cap arrives at the den.  One of the maids assists her in removing the heavy pack, full of [if leosupplies is 1]foodstuffs[otherwise]bottled water[end if], and carry it inside.  After a cursory examination by a pleased Leonard, he gives some to you before the pack is sent off to the pantry to be stocked.";
	say "     You both thank the kitty for her efforts, the den being in need of more supplies due to the addition of the maids.  The little lioness purrs happily at the praise, especially when Leonard's paw drifts down to her rear.  With his gentle touch, he guides her ";
	if leosupplies is 1:	[food]
		say "towards his bed.  You follow them, eager to show your thanks as well.";
		say "     After helping Leonard out of his suit and you've removed your gear, you lay back on the bed, pulling the cute kitty atop you.  She nuzzles at your chest and licks your nipples, her paws kneading softly.  You run your hands over her, reaching down to grab her ass as she offers it up to the lion's approaching cock.";
		if the player is felinebodied:
			say "     As she's being mounted, you can feel the familiar changes running through your body as the cute girl helps to restore your matronly figure.  She mewls in lustful need as the lion's sizable cock is pushed into her petite body, her paws gripping your shoulders as they those of a strong lioness.  You can't help but mewl yourself as she leans forward slowly and wraps her lips around your nipple.  Shivers of delight run through you as she nurses for your feline milk even while getting pounded by the sexy male.  You purr softly to her, telling her how pleased you both are with her and how much you appreciate the food she's brought for you and for the pride.";
		otherwise:
			say "     As she's being mounted, you can feel a rush of excitement running through your body as the cute girl rubs against you.  She mewls in lustful need and grips your strong shoulders tightly as the lion's sizable cock is pushed into her petite body, wrapping her lips around your nipple.  Shivers of delight run through you as she nurses for your matronly milk even while getting pounded by the sexy male.  You purr softly to her, telling her how pleased you both are with her and how much you appreciate the food she's brought for you and for the pride.";
		say "     Still with your paws on her ass, you can feel it sway with each increasingly strong thrust by the virile male stuffing her.  You lick your lips, longing for your chance to be on the receiving end of him again, but knowing you should wait until the girl's been suitably rewarded.  From the amount of her juices dripping down onto your thigh as the lion pounds her, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long.  But she shows her longing for you as well, [if cunts of player > 0]sliding a paw between your legs to finger your pussy[otherwise if cocks of player > 0]sliding a paw between your legs to stroke your manhood[otherwise]nursing for as much milk as your [breast size desc of player] breasts will give.";
		say "     Things grow more heated when the lion leans overtop of her and takes her by the nape of her neck, growling softly as his hips slam hard against her cute bottom.  She mewls and moans with each thrust, cumming with a fresh flow of juices from her stuffed cunny.  This is soon followed by the lion's climax, the virile scent of his fresh seed being added to the arousing aroma of feline sex in the air.  He keeps thrusting and cumming until her womb is full of his hot load and she's left quite satiated.  Unlike the other kitties though, once the sex is done, she gives you each several hugs and kisses before climbing out of the bed.  She plucks her cap off the coat rack, adjusts her feline ears through it, grabs her empty pack and rushes back out with a quick wave, cum still running down her furry thighs.";
		increase carried of food by 1;
		increase score by 5;
		now leosupplies is 2;
	otherwise:		[water]
		say "to his plush chair.  You follow them, eager to show your thanks as well.";
		say "     After Leonard's taken his seat, you and he lift the eager little feline into his lap.  She mewls happily and grinds her cute ass down onto his stiffening cock, sharing kisses with both of you";
		if scalevalue of player >= 3 and ( cocks of player > 0 or cunts of player > 0):
			say ".  Given her position, you could either choose to be on the receiving end (Y) of the giving side (N) of some oral fun with the hard-working kitty.  Which would you prefer?";
			if the player consents:
				say "[leosupplyoral1]";
			otherwise:
				say "[leosupplyoral2]";
		otherwise:
			say ".  Given your [if scalevalue of player < 3]smaller size[otherwise]present lack of gender[end if], you decide to give the hard-working kitty some added oral attention.";
			say "[leosupplyoral2]";
		say "     As you're all basking in the afterglow, the satiated feline gives you both several hugs and kisses, mewing happily about how much she loves you both.  After she's had a chance to recover, she pulls herself off Leonard's lap and hops back on the floor.  She straightens her cap, grabs her empty pack and rushes back out with a quick wave, cum still running down her furry thighs.";
		increase carried of water bottle by 1;
		increase score by 5;
		now leosupplies is 1;
	if player is felinebodied:
		infect "Feline";
	otherwise:
		felinebodyshift;
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;
	increase feline_meow by 1;
	now lastdenevent is turns;


to say leosupplyoral1:
	say "     Feeling that you could use some relief of your own, you stand beside the plush chair and place your [if bodyname of player is listed in infections of Felinelist]paw[otherwise]hand[end if] on her head, guiding it to your crotch.  Leonard boosts her rear up, getting his cock into position before lowering her down onto it just as you press her muzzle [if cocks of player > 0]over your throbbing shaft[otherwise]to your juicy folds[end if].  She smiles at the opportunity to please you as well as her leonine master, licking lustfully at her matron's loins while she's getting fucked.";
	if cocks of player > 0:
		say "     As she rides in Leonard's lap, she works her muzzle over your throbbing manhood with every bounce.  Her paws knead at your [if cockname of player is listed in infections of Internallist]ass[otherwise]balls[end if] while her lips and tongue do their best to pleasure you even as she's getting fucked.  If the rumble of her purring and the amount of juices flowing from her stuffed cunt are to be judged, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long.  Seeing the lion's thick cock pumping in and out of that tight hole makes you lick your lips and long to feel him inside you again soon.";
		say "     Things grow more heated as everyone's lusts grow higher and higher.  Having a grip on her head already, you rub her ears (which poke through slits cut into her cap) and tell her what a fine, eager kitty she is and how pleased you both are with her hard work.  She seems to blush a little in her ears and sucks down on you all the harder, soon pushing you over the edge.  You pump your [cum load size of player] load down her throat, feeding her your seed.  With the kitty cumming at the taste of it, the lion is set off soon afterwards, filling her sopping cunt with his leonine cum until her womb it stuffed full of his virile output.";
	otherwise:
		say "     As she rides in Leonard's lap, she laps her tongue over your wet pussy with every bounce.  Her paws knead at your ass while her lips and tongue do their best to pleasure you even as she's getting fucked.  If the rumble of her purring and the amount of juices flowing from her stuffed cunt are to be judged, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long.  Seeing the lion's thick cock pumping in and out of that tight hole makes you lick your lips and long to feel him inside you again soon.";
		say "     Things grow more heated as everyone's lusts grow higher and higher.  Having a grip on her head already, you rub her ears (which poke through slits cut into her cap) and tell her what a fine, eager kitty she is and how pleased you both are with her hard work.  She seems to blush a little in her ears and dives her tongue into you while her whiskered muzzle teases your clit, soon pushing you over the edge.  You cry out in delight, your juices soaking her muzzle only to be lapped up by her agile tongue.  With the kitty cumming at the taste of your honeyed waters, the lion is set off soon afterwards, filling her sopping cunt with his leonine cum until her womb it stuffed full of his virile output.";


to say leosupplyoral2:
	say "     You kneal down between Leonard's legs, running your [if bodyname of player is listed in infections of Felinelist]paws[otherwise]hands[end if] along his thighs.  You nuzzle at the cute kitty's belly and down to her juicy pussy, giving it a tender kiss.  As Leonard boosts her up briefly, you raise his shaft into position.  As she's lowered back down onto the lion's rod, you continually lick at her spread lips and at the cock sinking between them.  It is a lovely sight that gets you quite turned on and makes you long for your next chance to be in her position.  If the rumble of her purring and the amount of juices flowing from her stuffed cunt are to be judged, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long.";
	say "     Things grow more heated as everyone's lusts grow higher and higher, your tonguework getting both felines quite worked up.  The kitty mewls and moans, rubbing her paws over your head, urging you to keep going.  Certainly, the copious juices of her arousal, coupled with the musky flavour of Leonard's cock, seems delicious to you and you lap up as much as you can get.  As Leonard is fucking her, he rumbles to her about how she's been such a diligent, hard-working girl in collecting supplies and how pleased you both are with her efforts.  Rubbing one [if bodyname of player is listed in infections of Felinelist]paw[otherwise]hand[end if] at the lion's balls while the other teases her folds, you suck down hard on her clit.  This sends the girl over the edge with a yowl of ecstasy and a fresh rush of her juices.  Her orgasm is soon followed by the pulsing of Leonard's shaft as he cums as well, filling her womb to the point that trickles of his cum overflow around his cock for you to lick up.  Having gotten them both to climax and tasted their mingled up is quite arousing for you and [if cocks of player > 0 or cunts of player > 0]pushes you to cum as well[otherwise]sends a rush of pleasure through you[end if].";


Section 1 - Park

Part 0 - Core Event

leoparklist is a list of numbers that varies.  leoparklist is usually {1, 2, 5, 6, 9}.
leonardwrdesk is a truth state that varies.  leonardwrdesk is normally false.
leonardcabinet is a truth state that varies.  leonardcabinet is normally false.

PridePark is a situation.  PridePark is resolved.
The sarea of PridePark is "Park";

Instead of resolving PridePark:
	if leoparklist is not empty and a random chance of 2 in 5 succeeds:	[unique situations]
		sort leoparklist in random order;
		if entry 1 of leoparklist is 1:
			say "[leoparkscene1]";
		otherwise if entry 1 of leoparklist is 2:
			say "[leoparkscene2]";
		otherwise if entry 1 of leoparklist is 3:
			say "[leoparkscene3]";
		otherwise if entry 1 of leoparklist is 4:
			say "[leoparkscene4]";
		otherwise if entry 1 of leoparklist is 5:
			say "[leoparkscene5]";
		otherwise if entry 1 of leoparklist is 6:
			say "[leoparkscene6]";
		otherwise if entry 1 of leoparklist is 7:
			say "[leoparkscene7]";
		otherwise if entry 1 of leoparklist is 8: 
			say "[leoparkscene8]";
		otherwise if entry 1 of leoparklist is 9:
			say "[leoparkscene9]";
	otherwise:		[randomized situations]
		let t be a random number between 1 and 6;
		if T is 1:					[treed kitty]
			say "     As you're travelling along, you hear the plaintive yowl of a feline and come to a stop.  Hearing it again, you head quickly in that direction[one of], drawn to it by your matronly urges[or], somehow sensing it to be a member of your pride[or], fearing it to be one of your precious pride kitties[purely at random][one of].  Following a short path,[or].  Pushing through the undergrowth,[or].  Running through the woods,[or].  Going around some flowering bushes,[or].  Heading down a short incline,[or].  Leaping a fallen tree,[in random order] you reach a small clearing where one of the feline girls has gotten herself caught in a tree, having fled from a creature.  Spotting you, she [one of]cries out 'Matron!' cheerfully, happy to see you here to rescue her[or]yowls again and clutches the tree even tighter[or]scrambles a little higher and yowls for your help[at random].  Having drawn the creature's attention to you, you prepare to [one of]fight[or]defend your smaller pride sister[or]at least buy her enough time to get away[or]protect your pride member[in random order].";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having beaten your foe, you welcome the poor, scared kitty into your arms and snuggle with her.  She purrs happily and thanks you profusely with make cute kisses";
				if player is felinebodied:
					say ".  She nuzzles at your chest and starts nursing, drawing out your feline milk.  You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random].  Soon she's calmed down and purring happily in your arms.  Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random].  Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				otherwise:
					say ".  She nuzzles at your chest and mewls softly, kneading her paws over your [bodytype of player] body, helping to restore your matronly feline body.  As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you.  You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random].  Soon she's calmed down and purring happily.  Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random].  Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     As you recover from the fight, you look around to see that the feline girl was at least able to get away during the struggle.";
			otherwise if fightoutcome >= 30:
				say "     Taking a moment to make sure that the feline girl has safely come down the tree and is ready to get away, you make a break for it in the other direction, keeping your opponent's attention on you long enough for her to escape.";
		otherwise if T is 2:			[wandering kitty]
			say "     As you walk through the park, you run into another of the cute Feline girls running around.  It takes you but a moment to recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random].  You kneel down and open your arms wide for her, welcoming her with a hug and a kiss.  She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple.  She starts nursing, purring happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a pretty kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes].  You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for another session with Leonard.  After she's been fed and her bond with the pride has been renewed, you release her back in the park with a reminder that Leonard would welcome another visit from her soon.";
				infect "Feline";
				increase libido of player by 2;
				decrease humanity of player by 2;
			otherwise:
				say ", kneading her paws over your [bodytype of player] until your matronly figure is restored and she can begin nursing from your milk.  She purrs happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a pretty kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes].  You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for another session with Leonard.  After she's been fed and her bond with the pride has been renewed, you release her back in the park with a reminder that Leonard would welcome another visit from her soon.";
				felinebodyshift;
				increase libido of player by 2;
				decrease humanity of player by 2;
		otherwise if T is 3:			[wandering kitty 2]
			say "     Travelling through the park, you come across another of the cute Feline girls running around.  She comes over to you excitedly when she spots you, calling out to her matron.  You recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random].  You kneel down and open your arms wide for her, welcoming her with a hug and a kiss.  She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple.  She nurses only briefly, moving her head lower to nuzzle between your legs.";
			otherwise:
				say ", kneading her paws over your [bodytype of player] until your matronly figure is restored and she can begin nursing from your milk.  She nurses only briefly, moving her head lower to nuzzle between your legs.";
				felinebodyshift;
			if cocks of player > 0:
				say "     Finding your stiffening member, she wraps her warm lips around it and starts sucking on your [cock of player] shaft, working to get you fully hard[if cock length of player > 20].  Your massive cock stuffs her muzzle and throat fully, the small kitty mewling in pleasure around it as she somehow copes with it[otherwise if cock length of player > 12].  Your big cock stuffs her muzzle fully, the small kitty mewling in pleasure around it as she purrs happily[otherwise].  Your stiff cock throbs in her muzzle as she licks and sucks at it hungrily[end if].  You moan and rub her ears, telling her [one of]what a good and loyal kitty she is[or]what a sexy kitty she is[or]how nice that feels[or]to be sure to do this for Loenard soon[in random order].  Her paws knead at your [ball size] while she works your maleness with her muzzle eagerly.  When you finally blow, you shoot your load down her throat, leaving her [if cock width of player > 15]hugely bloated as your ample cum stuffs her small body, leaving her full and purring happily as she curls up for a nap[otherwise if cock width of player > 8]tummy a little plump after you pull out.  She snuggles her loving matron tight, licks her lips and heads on her way[otherwise]licking her lips as she releases your spent shaft.  She snuggles her loving matron tight and heads on her way, pleased to have run into you[end if].";
			otherwise if cunts of player > 0:
				say "     Finding her way to your juicy pussy, she presses her muzzle to it and starts licking.  Her raspy tongue plays slowly over your wet folds, lapping up your juices.  You moan and rub her ears, telling her [one of]what a good and loyal kitty she is[or]what a pretty kitty she is[or]how nice that feels[or]to keep licking like a good girl[in random order].  Her paws knead at your thighs, occasionally moving to rub at your clit as she smiles up at you with a wet grin on her muzzle before diving back in.  Her tongue delves into you, lapping until you cum with a rumbling moan of ecstasy.  She snuggles with you, nursing now as you enjoy the afterglow, before giving you a parting kiss and heading off with a girlish giggle.";
			otherwise:
				say "     Finding her way to your bare groin, she whimpers softly and sets to licking at it over and over again.  She kneads her paws at your inner thighs and mewls plaintively.  You cuddle her in your arms and let her nurse for a while before she heads off.";
			infect "Feline";
			increase libido of player by 2;
			decrease humanity of player by 2;
		otherwise if T is 4:			[injured kitty]
			say "     As you travel through the park, you come across another of the cute Feline girls.  She's been hurt and is nursing an injured [one of]footpaw[or]side[or]head[or]shoulder[or]arm[or]leg[purely at random].  It takes you but a moment to recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recalling her helping with the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random].  She mewls plaintively as you approach, smiling softly at the sight of her matron coming to her aid.";
			if medkit is owned or healing booster is owned:
				if medkit is owned:
					let medloss be 0;
					if ( "Expert Medic" is not listed in feats of player and a random chance of 1 in 10 succeeds ) or ( "Expert Medic" is listed in feats of player and a random chance of 8 in 100 succeeds ):
						let medloss be 1;
						delete medkit;
					say "     Your matronly desire to protect your pride girls kicks in and you don't hesitate to help.  Remembering your medkit, you pull it out and start to patch her up.  She winces and mewls softly as you get her bandaged up and give her some meds from the kit[if medloss is 1].  This uses up the last of that medkit, but you feel no regrets over that at the moment[end if].  She snuggles up to you, giving you several kisses in thanks.  You guide her muzzle down to your chest ";
				otherwise if healing booster is owned:
					delete healing booster;
					say "     Your matronly desire to protect your pride girls kicks in and you don't hesitate to help.  Recalling the healing booster you have, you pull it out and inject it close to her wound.  She winces and mewls, but starts to purr as the medecine starts to take effect.  She snuggles up to you, giving you several kisses in thanks.  You guide her muzzle down to your chest ";
				if player is felinebodied:
					say "so she may nurse for your feline milk to help her recover faster.  As she suckles your milk, you [one of]purr to her that you and Leonard will love and protect her[or]purr to her that her pride will take care of her[or]remind her to be more careful[or]purr that the pride will protect her[or]purr to her to continue doing her best for the pride[purely at random].  Once she's had a chance to feed and heal, you release her back into the park with a pat on her bottom.  You feel a little better for having helped your pride.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				otherwise:
					say "which quickly shifts back to its leonine pride mother form, allowing the weak kitty to nurse from you to help her recover faster.  As she suckles your milk, you [one of]purr to her that you and Leonard will love and protect her[or]purr to her that her pride will take care of her[or]remind her to be more careful[or]purr that the pride will protect her[or]purr to her to continue doing her best for the pride[purely at random].  Once she's had a chance to feed and heal, you release her back into the park with a pat on her bottom.  You feel a little better for having helped your pride.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			otherwise:
				if Feline_attached is 0:
					if player is felinebodied:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest.  She clings to you weakly and nuzzles at your chest and starts to nurse from your bosom, suckling your milk.  You make your way quickly back to Leonard's den.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair, smiling when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						infect "Feline";
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
					otherwise:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest.  She clings to you weakly and nuzzles at your chest, kneading her paws over it.  As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat.  You make your way quickly back to Leonard's den.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair, smiling when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						felinebodyshift;
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
				otherwise:
					if player is felinebodied:
						say "     Having any proper means to help her here, lower the feline girl currently at your chest to the ground and lift up the other in her stead.  Surprisingly, the wild feline makes no objection, instead clinging to you with a paw in your hand.  Your injured charge nuzzles at your chest, kneading her paws over it.  As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat.  You make your way quickly back to Leonard's den with the wild girl following quietly at your side.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair with the wild feline nursing from your chest once more.  You all smile when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						infect "Feline";
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
					otherwise:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest.  She clings to you weakly and nuzzles at your chest, kneading her paws over it.  As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat.  You make your way quickly back to Leonard's den.  The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her.  Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of].  He thanks you for helping the poor girl get back here[or].  He reassures you that the maids can take care of the girl from here[or].  He tells you how relieved her is that you're safe[purely at random][one of].  He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or].  He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or].  He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or].  He gives you a tender kiss and tells you how lucky the pride is to have you[at random].  You and Leonard snuggle together in his large chair with the wild feline nursing from your chest once more.  You all smile when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						felinebodyshift;
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
				attempttowait;
				move player to Lion's Den;
				now battleground is "void";
		otherwise if T is 5:			[workgroup on patrol]
			say "     While [one of]walking along the path[or]searching through the woods[or]pausing at a children's play area[or]pushing through the underbrush[purely at random], you're met by your work group as they're out on a patrol[one of][or], keeping an eye out for troublemakers[or], helping to protect the other girls in the pride[or], dealing with stray felines from the broken prides[or] between errands for Leonard[as decreasingly likely outcomes].  [one of]Pleased to see their matron[or]Happy to see you[or]Mewling happily[purely at random], the four of them come up to you and snuggle you tightly.  Much kissing and groping ensues between you all as [one of]you snuggle with the friendly felines[or]you let your pride favourites nurse from you[or]you pet the lovely kitties[or]the lovely kitties pile atop their dear matron[purely at random]";
			if cocks of player > 0:
				if a random chance of 1 in 3 succeeds:
					say ".  After they fondle your [cock of player] cock to erection, you pull Raven, the dark-haired girl, into your lap and fuck her while she nurses.  You purr lovingly to her, telling her how pleased you are with her for watching out for your other special girls.  Not neglecting them, you make sure to give plenty of attention to the other girls as well";
				otherwise:
					say ".  Fondling your [cock of player] cock to erection, they take turns licking it before playing [randomgame] to decide who gets to [one of]ride[or]suck[or]play with[as decreasingly likely outcomes] it.  Regardless of the winner, you make sure to give them all plenty of attention, especially clever Raven, the black-haired one, who's been leading the group in your stead";
			otherwise:
				if a random chance of 1 in 3 succeeds:
					say ".  You push Raven, the black-haired girl, onto her back and bury your face between her legs.  You lick and lap at her pussy, making her moan and mewl in ecstasy.  Wanting to thank her for [one of]keeping an eye on your favourite girls[or]leading the small band in your stead[or]taking care of your personal favourites[or]helping out with your personal girls[purely at random], you [one of]fellate her[or]eat her out[or]lick her pussy[purely at random] until she cums repeatedly";
				otherwise:
					say ".  You push one of the girls onto her back and bury your face between her legs.  You lick and lap at her pussy, making her moan and mewl in ecstacy.  You lavish attention upon the lucky girl, [one of]fellating her[or]eating her out[or]licking her pussy[purely at random] until she cums repeatedly";
			if cunts of player > 0:
				say ".  Your pussy gets fingered and licked by the loving girls while you finger a pair of them in return.  It's a delight for you to hear their mewls of pleasure as you get them off and they help the other two get off as well.";
			otherwise:
				say ".  You finger one of the girls with each hand, pumping fingers into their juicy cunts until they come.  It's a delight for you to hear their mewls of pleasure as you get them off and they help the other two get off as well.";
			say "     Once your fun is all done, you give them parting kisses and hugs, letting them get back to their duties.  Your encouter with them has lifted your spirits and makes you feel closer to your pride.";
			felinebodyshift;
			infect "Feline";
			decrease humanity of player by 3;
			increase morale of player by 1;
			if morale of player < 0, increase morale of player by 2;
		otherwise if T is 6:			[kitty w/small gift/supplies]
			if a random chance of 1 in 2 succeeds:
				say "     In your travels through the park, you run into another of the cute feline girls.  Spotting you, she smiles and comes over [one of]quickly[or]excitedly[or]carefully[at random] with some small item in her paws.  Recognizing her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random], you smile as she approaches.  She comes up to you and offers to show you what she's found, [one of]a piece of fine china[or]a bottle of aged [spiritlist][or]an old book[or]a golden trinket[or]a collection of spices[at random] that has been carefully bundled up.";
				say "     Telling her that you're certain Leonard will be pleased with it, you welcome her into your arms with a hug and a kiss.  She snuggles up to you and is soon nuzzling at your chest";
			otherwise:
				say "     In your travels through the park, you run into another of the cute feline girls.  Spotting you, she smiles and comes over [one of]quickly[or]excitedly[at random] with a full bag in her arms.  Recognizing her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random], you smile as she approaches.  She comes up to you, saying she's collected some supplies for [one of]her master[or]Leonard[or]her leonine master[at random], showing you some ";
				let sup be a random number between 1 and 4;
				if sup is 1 or sup is 2:
					say "[one of]assorted cans[or]canned meat[or]mixed fruit[or]assorted food[at random] in the bag.  She gives you some with a smile, but says they'll need the rest back at the den.";
					increase carried of food by 1;
					increase score by 5;
				otherwise if sup is 3:
					say "bottles of fresh water in the bag.  She gives you a bottle with a smile, but says they'll need the rest back at the den.";
					increase carried of water bottle by 1;
					increase score by 5;
				otherwise:
					say "cans of soda in the bag.  She gives you a can with a smile, but says they'll need the rest back at the den.";
					increase carried of soda by 1;
					increase score by 5;
				say "     You smile at her and rub her head, giving her ears a scritch, telling her what a good kitty she is to share.  You welcome her into your arms with a hug and a kiss.  She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple.  She nurses, purring happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a resourceful kitty she is[or]how kind she is to have gotten a gift for her master[or]about how much her pride cares for her[as decreasingly likely outcomes].  You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for her upcoming session with Leonard.  After she's been fed and she's too excited to wait any longer, you release her back in the park, sending her hurrying on her way back to her master with her gift.";
				infect "Feline";
				increase libido of player by 2;
				decrease humanity of player by 2;
			otherwise:
				say ", kneading her paws over your [bodytype of player] until your matronly figure is restored and she can begin nursing from your milk.  She purrs happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a resourceful kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes].  You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for her upcoming session with Leonard.  After she's been fed and she's too excited to wait any longer, you release her back in the park, sending her hurrying on her way back to her master with her gift.";
				felinebodyshift;
				increase libido of player by 2;
				decrease humanity of player by 2;
	if libido of player > 100, now libido of player is 100;


to say randomgame:
	say "[one of]rock-paper-scissors[or]choosies[or]eeny-meeny-miny-moe[or]roshambo[as decreasingly likely outcomes]";

to say spiritlist:
	say "[one of]bourbon[or]rum[or]wine[at random]";


Part 1 - Special Park Pride 1 - Leonard out for a Walk

to say leoparkscene1:
	say "     As you're travelling through the park, you recieve a pleasant surprise as you come across Leonard walking in the park.  He smiles to you and welcomes you into his arms, kissing his mate lovingly.  'I decided to take a short walk in the park to [if daytimer is day]take in the pleasant sights.  And I am treated by the most pleasant sight of all[otherwise]stretch my legs and get some fresh air.  And I am treated to the refreshing sight of my lovely mate[end if],' he purrs, stroking his paw over your face.  'Come, let us walk together, my dear,' he says, offering his arm to you like the refined gentleman he is.";
	say "     You partake in an enjoyable walk with the lion as he talks with you about the pride and how things in the park have been changing.  It's clear he's out for more than just to stretch his legs, but is also checking up on the state of things in the area.  While he's quelled his primary opponents, things are still very unsettled in the park and other males are still prowling around.  But it is not all business either, as he enjoys the natural beauty, smells the flowers and happily greats those other pride kitties he encounters.  A few of them stop to nurse from you[if the player is not felinebodied], helping to restore your matronly figure, [end if]but they don't linger long, leaving their master and matron to enjoy their pleasant walk together.  It is a very enjoyable and relaxing time for you, as none willing to oppose the two leaders of the most powerful pride in the park.  Eventually, the meandering steers back to lion's den and you join him inside.";
	if the player is not felinebodied:
		felinebodyshift;
	otherwise:
		infect "Feline";
	now lastfuck of leonard is turns + 8;
	remove 1 from leoparklist;
[	add 7 to leoparklist;		[opens next walk]		]
	now battleground is "void";
	move player to Lion's Den;


Part 2 - Special Park Pride 2 - Cabinet

to say leoparkscene2:
	say "     While travelling through the park, you hear an odd sound coming from nearby.  Heading cautiously towards the intermittent scraping sound, you spot one of the feline girls sniffling and grunting as she struggles to drag a large cabinet.  You're quite surprised to see her trying to drag the finely crafted cabinet all on her own given that it's bigger than she is.  Seeing that she's exhausted and on the verge of tears, you rush over to join her.  Spotting you, she stops trying to shuffle it past a rock and rushes into your arms.  After nursing for a little while to soothe her[if the player is not felinebodied] and restore your matronly figure[end if], you scritch her ears and ask her why she's struggling with the furniture.";
	felinebodyshift;
	say "     'Master Leonard had mentioned that something nicer than the bookshelf was needed for his kitchen if he was going to be able to entertain guests.  I'd been looking for a good one for soooo long and this one would fit just right in that open spot and everything.  I was so happy when I found this one and I was bringing it back.  I had a cart and a blanket to cover it and straps and everything, matron,' she insists.  'But then -sniff- that coyote that's always hanging around spotted me and he was mean and hit me and he took my cart and all the rest of it.  He said he needed it for some -sniff- stupid prank and then I was stuck and I couldn't leave the cabinet to find another cart and it was -sniff- supposed to be a surprise and another girl could've gotten it or...'";
	attempttowait;
	say "     By this point, her narrative starts to break down as the tears struggle to return, so you cuddle her in your arms and tell her that you'll help her bring it back to the cave.  She smiles up at you and hugs you very tightly, thanking you repeatedly between kisses.";
	say "     After some more playful snuggling, you head over to the cabinet and look it over.  It's an older style with round glass windows built into the upper half and several drawers below that.  While it's not as large as others you've seen, it will fit much better into the limited space of Leonard's cave.  And while you may not be that knowledgeable of such things, it certainly looks like a well-made and older collector's piece.  It is fairly heavy and you're impressed that the smaller girl was able to drag it so far, a testament to her determination to please the handsome lion.";
	say "     With your help and a few more breaks along the way, the cabinet arrives safely at Leonard's cave.  You allow the feline girl to present it to Leonard, who seems quite pleased with her acquisition and quickly has the maids move it into position.  As she'd said, it fits nicely into one side of the kitchen area, freeing that bookshelf to join the others in the sitting room area.";
	attempttowait;
	say "     You hang back during the installation, letting the kitty take the spotlight for her find, but when Leonard's ushers her off to receive her reward, she insists that you come as well.  You join them on the bed just as she's helping Leonard out of his suit coat.  Spotting the lion's stiff member, you take it in your paw and stroke it while giving him a kiss.";
	say "     He cuddles the hard-working girl close and lickgrooms between her legs, running his tongue over her pussy and getting her to moan in delight.  His tongue then moves upwards across her breasts.  He rumbles and purrrs to her about what a good, obedient girl she is and compliments her on her determination.  As he lifts her up into his arms, you hold his cock in position.  You watch closely as he lowers her down onto his stiff cock, seeing her wet folds spread for her handsome lover's glans before sliding down onto his maleness.  She mrowls in delight and wraps her arms around him, purring and mewling in delight as he bounces her in his lap, fucking her.";
	say "     You snuggle up behind her and purr to her about what a good and loyal kitty she is and how she never gave up in her goal to please her master.  You lick her ears and rub your fingers at her wet folds, pressing them around Leonard's thrusting shaft.  Feeling it pumping inside her, you long to have it inside you again, but you know that this is her special time with Leonard and you're determined to make it even better for her by stroking and fingering the kitty through several smaller orgasms and a change of position to lying atop you so she can nurse from your bosom while being fucked.  She comes to a loud and powerful orgasm that soaks your paw as the lion finally cums and pumps her small belly full of his seed.  Left with a rounded tummy from the lion's output, she purrs happily as her mate and her matron snuggle up on either side of her for a much-needed catnap.";
	infect "Feline";
	now battleground is "void";
	remove 2 from leoparklist;
	now leonardcabinet is true;
	move player to Lion's Den;


Part 3 - Special Park Pride 3 - Wounded Non-Pride Kitty

to say leoparkscene3:
	say "***Special 3.";
	remove 3 from leoparklist;


Part 4 - Special Park Pride 4 - Infected Kitty

to say leoparkscene4:
	say "***Special 4.";
	remove 4 from leoparklist;
	add 8 to leoparklist;


Part 5 - Special Park Pride 5 - Kitty Rescue

to say leoparkscene5:
	if hermaphrodite is not banned:
		say "     You hear a plaintive yowl in the distance and your matronly instincts kick in before you even know what's happening.  You move as quickly as you can towards the sound.  You soon arrive at a pair of wolves who have one of the feline girls pinned and are getting ready to ravage her.  Hearing you charging, one remains to deal with their prisoner while the other turns to confront you with a growl.";
		challenge "Painted Wolf Herm";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having dealt with the first of them, you approach the second.  Shi's managed to get the feline girl partially tied up in the time you've been occupied and turns to deal with you so shi can enjoy hir prize.";
			challenge "Painted Wolf Herm";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having defeated the second of the wolves, you head over to the kitty girl and free her from her bondage.  She hugs herself tightly to you and kisses you repeatedly as she thanks you for saving her";
				if player is felinebodied:
					say ".  Nuzzling at your chest, she starts nursing, drawing out your feline milk.  You purr soothingly to her that the pride will protect her.  Soon she's calmed down and purring happily in your arms.  Once she's been fed, you put her down and turn your attention towards the fallen wolves.";
				otherwise:
					say ".  Nuzzling at your chest, she mewls softly and kneads her paws over your [bodytype of player] body, helping to restore your matronly feline body.  As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you.  You purr soothingly to her that the pride will protect her.  Soon she's calmed down and purring happily.  Once she's been fed, you put her down and turn your attention towards the fallen wolves.";
				say "     With your matronly instincts running strong, you head towards the pair of would-be assailants.  The two wolves, still dazed after their defeat, can only struggle weakly as you and the feline girl press them to your bosom.  With their muzzles pressed to your nipples, your still-flowing milk dribbles across their lips and soon they start suckling for more.  You purr softly to them about how they should calm down and that they'd submit like good kitties.  At first, they growl a little at these words, but don't stop nursing.";
				say "     The kitty girl, meanwhile, is snuggled between them, stroking their backs.  At your prompting, she purrs to them about how she'd welcome them as her sisters.  They were just being too rough before, you tell them.  If they were good, submissive kitties, they'd all get along so much better.  To emphasize this, the kitty slides her paws under them, groping them to draw soft moans.";
				say "     As this treatment progresses, the wolves start to change, becoming smaller and more feminine.  There ears turn more feline in shape and their muzzles a little shorter.  While still rather lupine by the time it's done, they do have some leonine traits starting to show.  Grinning happily at this trio, you give the kitty girl a kiss and a fondle.  Dazed from their meal of matronly milk, the other two listen obediently as you tell them to follow the kitty girl back to Leonard's cave where he can help them become proper sisters for their lovely kitty friend.  You can't help but grin happily as you watch them go.";
				increase morale of player by 1;
				increase libido of player by 3;
				decrease humanity of player by 3;
		if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Defeated, you are pushed to the ground beside the bound feline girl.  The wolves then proceed to mount you both repeatedly, taking turns with each of you.  Because you'd tried to keep them from their prize, they are rough and don't hold back, pounding away at you as you moan beneath them.  By the time they are done, you are leaking wolf cum from every orifice.  Too weak to struggle, you can only watch as they head off with the considerably transformed feline girl.  Changing much more dramatically than you, she's well on her way to being a herm wolf herself and has been lost to the pride.[impregchance]";
			decrease morale of player by 3;
			infect "Painted Wolf Herm";
		otherwise if fightoutcome >= 30:
			say "     Forced to flee, you must abandon the feline girl to her lupine fate.  It saddens you to lose a member of the pride.";
			decrease morale of player by 3;
	otherwise:
		say "     You come across the signs of a struggle and a few scattered tufts of feline fur and the musky scent of lupine sex.  It seems that one of the feline girls was captured and mated here.  From the way her paw prints change, it seems she was fucked and transformed into a wolf by her assailants.  You are saddened by this, but know there's little you can do about it at this point.";
	remove 5 from leoparklist;


Part 6 - Special Park Pride 6 - Work Group Fight

to say leoparkscene6:
	say "     While following a wooded path, you hear the sounds of fighting breaking out up ahead.  At first, you prepare to turn around and find another route, but the angry growls and snarls of felines changes your mind.  Advancing quickly, you find your work group in the midst of a pitched battle with a [if hermaphrodite is not banned]painted wolf[otherwise]bear woman[end if].  The girls seem to be faring quite well and fighting as a unit with the black-haired Raven leading the charge.  While it's pretty clear they'll prevail, you rush to their aid rather than risk one of them getting hurt unnecessarily.  Seeing you join the fight, the creature makes a hasty retreat.  The girls let it go rather than pursue it, instead turning their attention to snuggling their matron.";
	say "     Another feline, the [if hermaphrodite is not banned]wolf[otherwise]bear[end if][']s original opponent, comes out of hiding and purrs happily as she kisses all of her rescuers.  You end up spending an enjoyable break with the lovely felines, letting them all nurse from you[if player is not felinebodied], restoring your feline form[end if] before advancing to some more sexual play.  Your impromptu orgy with the female felines involves a lot of licking, kissing and fingering of their juicy pussies[if cocks of player > 0].  Your original trio of girls take turns licking and sucking at your cock until you're hard.  You then alternate between fucking Raven and the girl they'd been rescuing.  You finish by cumming hard into the feline pride member with the work group pairing off with one set licking and sucking you clean with the other two take turns licking the cum from the seeded girl's pussy[otherwise if cunts of player > 0].  The horny felines switch partners several times, sharing their love for their pride mates.  They eventually finish up with a pair from the work group taking turns at your pussy with the other two doing the same to the girl they rescued[end if].  Once everyone's had another powerful orgasm, you all snuggle up together in a warm bundle of fur and love on the grass, taking a nap.  After some kisses and snuggling when you awaken, the snuggle pile breaks up with the work group returning to their patrolling and the feline girl getting back to her assigned duties.";
	if player is not felinebodied:
		felinebodyshift;
		infect "Feline";
	otherwise:
		infect "Feline";
		infect "Feline";
	remove 6 from leoparklist;
	now battleground is "void";
	rest;

Part 7 - Special Park Pride 7 - Walk #2

to say leoparkscene7:
	say "***Special 7.";
	remove 7 from leoparklist;
[	add 10 to leoparklist;		[opens next walk]	]


Part 8 - Special Park Pride 8 - Infected Kitty #2

to say leoparkscene8:
	say "***Special 8.";
	remove 8 from leoparklist;


Part 9 - Special Park Pride 9 - Writing Desk

to say leoparkscene9:
	now tempnum is 0;
	say "     You are surprised as your path through the park is cut off by a large writing desk carried jointly by your work group.  When you call out to them, they put their heavy load down and rush into your arms, snuggling and kissing you.  They purr and snuggle with you running their paws over your [bodydesc of player] body[if the player is not felinebodied], working to restore the sexy figure of their matron[end if].  Raven, seeming rather grumpy, is pushed to the front and allowed to nurse from your bosom, which does much to lift her spirits.  As she's suckling your milk, you stroke her dark hair and ask the others about what's going on.";
	if player is not felinebodied:
		felinebodyshift;
		now tempnum is 1;
	say "     'Master Leonard had mentioned that a writing desk would be handy for writing letters and about his life.  Since it was a big job, he entrusted it to us,' Jasmine says with obvious pride.  'It took us a while to find a really good one, but Raven talked to a pretty butterfly girl who told us where to find this one.  It's just been a lot of work to bring it all this way and we're getting really tired.'";
	say "     'But we're almost there,' Raven adds with a smile, her mood much improved after her refreshing drink of matron milk.";
	say "     When you offer to help them take it the rest of the way, you are immediately buried underneath a pile of grateful kitties.  They kiss, snuggle and grope you lovingly for several minutes, during which they all get to take a drink of your milk, before it's decided to get back to work.  The writing desk is quite large and is considerably taller than the girls trying to carry it.  It's an older style with the narrow build and a door that lowers to become the writing area as well as a shelving section above it.  While not as ostentacious as big office desks can be, it will fit much better into the limited space of Leonard's cave.  And while you may not be that knowledgeable of such things, it certainly looks like a well-made and older collector's piece.  It is made of solid wood and is quite heavy, making it clear how much work the girls have been putting into this gift for their leonine mate and master.";
	attempttowait;
	say "     Carrying the desk on its back, you hold the middle of the heavier lower end and a girl takes each corner.  Once you've gotten moving, Yarrow (on your right) turns to you.  'Matron, I've got a riddle for you.  Why is a raven like a writing desk?'";
	say "     'Argh!' Raven growls from the front and the girl on your right laughs merrily.  Dahlia (to your left) explains that she's been asking that riddle about a dozen times since they started.  They're clearly just having some teasing fun and even the black-haired lioness has a bit of a smile.";
	say "     'Well, do you know why a raven is like writing desk?' the girl asks again.";
	say "     Deciding to turn the tables on her, you smile and nod.  'I do, my sweet kitty.  A raven is like a writing desk because they'll both hurt really, really hard when they hit you upside the head and I'm pretty sure one of them will really soon if you don't stop teasing poor Raven - though I can't be sure which it'll be.'  The others start giggling, which breaks out into full laughter as Raven gives Yarrow a dark, toothy grin.";
	say "     Your added help and companionship keep the girls in good spirits and help them get the writing desk back to the tunnel den without the need for another break.  Leonard happily greets you all, having heard your laughing as you approached.  He's quite pleased with the great find, being very complimentary of its craftsmanship and at the amount of work the girls clearly went through to bring it to him.  He gives all the girls hugs and kisses while the maids get it put into place.  It gets fitted nicely to one side of the tunnel and, with some proper propping up, is made to sit level.  The Chippendale chair is placed in front of it, giving Leonard a proper writing space.";
	attempttowait;
	say "     You let the girls snuggle up to Leonard during the installation, but follow along with Leonard afterwards as he escorts them towards the plush bed.  It seems Leonard would enjoy your assistance in ensuring all four girls are properly rewarded for their efforts, something you're more than happy to help him with.  With Jasmine and Dahlia in your arms, you watch as Raven and Yarrow lick and kiss at the lion's cock.  There's no sign of discord despite the earlier teasing, showing how close they've all become.  The dark-haired girl even moves back to lick at her friend's pussy while Yarrow sucks the lion off.";
	if cocks of player > 0 and cunts of player > 0:
		say "     Meanwhile, you have two girls of your own to tend to.  They nurse from your bosom side by side while fingering your pussy and stroking your cock.  After their drink, they give you a cute mewl and several kisses before Jasmine climbs into your lap and down onto your cock.  Dahlia nuzzles under her tail and licks at her juicy pussy and your thrusting cock.  Looking over, you spot the others in a similar position with Raven getting a ride on Leonard's throbbing manhood while Yarrow returns the favour by licking Raven's stuffed snatch.  The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	otherwise if cocks of player > 0:
		say "     Meanwhile, you have two girls of your own to tend to.  They nurse from your bosom side by side while stroking your cock.  After their drink, they give you a cute mewl and several kisses before Jasmine climbs into your lap and down onto your cock.  Dahlia nuzzles under her tail and licks at her juicy pussy and your thrusting cock.  Looking over, you spot the others in a similar position with Raven getting a ride on Leonard's throbbing manhood while Yarrow returns the favour by licking Raven's stuffed snatch.  The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	otherwise:
		say "     Meanwhile, you have two girls of your own to tend to.  They nurse from your bosom side by side while fingering your pussy.  They do this together, a pair of fingers from each of them stuffed into you and moving together to send shivers of delight through your body.  After their drink, they give you a cute mewl and several kisses before you push them onto their backs.  You bury your face between Jasmine's legs and start licking at her pussy with you finger Dahlia.  A quick glance over shows that Raven's now in Leonard's lap, riding his cock while Yarrow returns the favour by licking at her stuffed snatch.";
		say "     After getting Jasmine to cum, you switch your mouth to Dahlia's pussy and finger Jasmine.  The girls kiss one another while watching Leonard fuck the other two.  Once he's done with them, the pairs switch so Leonard may breed them all while you lick and finger the others to another climax.  The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	if tempnum is 0:
		infect "Feline";
		infect "Feline";
	otherwise:
		infect "Feline";
	now lastfuck of leonard is turns;
	now battleground is "void";
	remove 9 from leoparklist;
	now leonardwrdesk is true;
	move player to Lion's Den;




to felinebodyshift:
	[puts Feline as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feline":
			now monster is y;
			break;
	now bodyname of player is "Feline";
	attributeinfect;
	now body of player is body entry;
	follow the breast change rule;
	follow the sex change rule;


Leonard Events ends here.