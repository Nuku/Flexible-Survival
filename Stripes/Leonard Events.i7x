Version 2 of Leonard Events by Stripes begins here.
[version 2.9 - Another one-shot den event]

"Adds a batch of random events and encounters with Leonard's Pride to Flexible Survival scattered around the city."
[Note: These will only be accessible after completing Leonard's Quest.]

Section 0 - Den Events

Part 0 - Core Event System

lastdenevent is a number that varies. lastdenevent is usually 255.
leosupplies is a number that varies.
leodenlist is a list of numbers that varies. leodenlist is usually { 1, 2, 3 }.
leodinner is a truth state that varies. leodinner is usually false.
leoshadowmet is a truth state that varies. leoshadowmet is usually false.
leonardcaraway is a truth state that varies. leonardcaraway is usually false.
lastleomidcoitus is a number that varies.
leopocketwatch is a truth state that varies. leopocketwatch is usually false.


after navigating Lion's Den while hp of Leonard >= 16 and hp of Leonard < 100 and lastdenevent - turns >= 12:
	if hp of Leonard is 16:	[maids]
		say "[leodenscene1]";
	else if hp of Leonard is 17 and a random chance of 2 in 5 succeeds:
		say "[leodenscene2]";
	else if hp of Leonard is 18 and a random chance of 2 in 5 succeeds:
		say "[leodenscene3]";
	else if hp of Leonard is 19 and a random chance of 2 in 5 succeeds:
		say "[leodenscene4]";
	else if hp of Leonard is 20 and a random chance of 2 in 5 succeeds:
		say "[leodenscene5]";
[	else if hp of Leonard is 21 and a random chance of 2 in 5 succeeds:
		say "[leodenscene6]";		]
	else if leodenlist is not empty and a random chance of (the number of entries in leodenlist) in 5 succeeds:
		sort leodenlist in random order;
		if entry 1 of leodenlist is 1:
			let xx be the remainder after dividing turns by 8;
			if xx is 3 or xx is 2 or xx is -5 or xx is -6:		[evening or early night]
				say "[leodenspecial1]";
		else if entry 1 of leodenlist is 2:
			say "[leodenspecial2]";
		else if entry 1 of leodenlist is 3:
			say "[leodenspecial3]";
[		else if entry 1 of leodenlist is 4:
			say "[leodenspecial4]";			]
	else if a random chance of 1 in 4 succeeds:	[repeatable]
		if a random chance of 2 in 5 succeeds:
			say "[leosupplyscene]";
		else if a random chance of 2 in 5 succeeds:
			say "[leomidcoitus]";
		else:
			say "[leopracticesession]";


Part 1 - Maid Scene

to say leodenscene1:
	say "     When you enter Leonard's home, you find your mate relaxing in his chair with the three maids lavishing attention upon him. A wave of his paw has the one brushing his beautiful mane step back, allowing him to turn his head and smile at you. 'Ah, my dear mate. You look weary from your travels. Take a seat and enjoy a relaxing foot rub.'  As you continue further into the cave, you can see that the regal lion is receiving a foot rub and tongue grooming from one maid on the floor while the last of them is sucking him off.";
	say "     With the arousing scent of the male in the air and the sexy sight of his humbled rivals serving him, you share in Leonard's smile and sit down, raising one of your feet. The feline with the brush, already moving towards you as you moved to take a seat, kneels in front of you and runs her paws over your leg as she nuzzles your foot. She purrs happily, kissing and licking at your foot before beginning the massage.";
	if the player is not felinebodied:
		say "     The rubbing and licking quickly starts to have an effect on you. With each lick, your foot shifts and changes a little more, soon returning to a leonine paw. As this change starts to creep up your leg, she turns her attention to your other foot, soon remaking it into a lion's paw as well. The transformation progresses up your legs, across your hips and through the rest of your body, restoring much of your matronly form.";
	say "     The obedient maid is thorough in her attention, rubbing at your feline paws to soothe the aches of walking all around the city. You'd come to ignore them, but having them massaged away while the servile girl licks and kisses your foot is both soothing and arousing. The brush of her rough tongue grooming the underside of your foot and between your feline toes is a delight. She seems pleased as well with her task, purring happily at her opportunity to bestow attention upon her loving matron.";
	say "     While you've been enjoying your foot rub, Leonard's has come to an end, the black-haired maid having sucked him off, freeing his cock for the other girl to climb into his lap. As the lion's paws opens the front of her French maid's dress so he can grope her breast, she flips up her skirt and gives you a lovely view of her juicy pussy as it sinks down onto your lover's rod. Watching as his throbbing, leonine cock sinks into her quivering hole, you lick your lips and smile, spreading your legs for the black-haired maid who's now free to service you as well.";
	if cocks of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your erection. Her tongue slides over your balls and up your pulsing rod, the subservient kitty being as thorough in licking your groin as the other is at licking your foot. As she lowers her muzzle down onto your shaft and sucks hard, you moan softly and run your fingers through her dark hair. Her oral attention is very enjoyable, clearly having gotten lots of practice sucking off her new master. Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and cock, it is not long before you cum with a loud rumble of delight, a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt.";
	else if cunts of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your damp thighs. Her tongue slides over your dripping folds and across your pulsing clit, the subservient kitty being as thorough in licking your groin as the other is at licking your foot. As she slides her raspy tongue into your cunt, sending shivers of delight through you, you moan softly and run your fingers through her dark hair. Her oral attention is very enjoyable, clearly having gotten lots of practice with her fellow servants. Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and cunny, it is not long before you cum with a loud rumble of delight, a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt.";
	else:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your bare groin. She mewls sadly at the disappointing sight of your featureless crotch, but continues to lavish attention upon you, running her raspy tongue across your pubis before drifting upwards. Her paws roam over your leonine body as she licks, nips and kisses at any sensitive spot she can find, doing her best to please her matron. Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and body, it is a wonderfully pleasurable experience that is capped off by your lover filling the third maid with his cum until it overflows from her stuffed cunt.";
	say "     Their duty done, the trio kiss and caress you both before heading off to snuggle together. The pair who'd been serving you take considerable pleasure in licking the lion's cum from the third girl. Feeling much relaxed and pleased after your enjoyable welcome, you muse that you should consider making use of the servants more often as a means to unwind. But for the moment, you let them go and turn your attention back to your mate, smiling at him and trying to restore your thoughts to the reason you came to see him.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	increase morale of player by 1;
	increase libido of player by 5;
	decrease humanity of player by 5;
	if libido of player > 100, now libido of player is 100;
	now hp of Leonard is 17;
	now lastdenevent is turns;


Part 2 - Work Group Scene

to say leodenscene2:
	say "     Your approach to Leonard's cave den is pleasantly interrupted by an encounter with your work group. They are in a cheerful mood and welcome you with many hugs, kisses and caresses[if player is not felinebodied]. Their kneading paws and licking tongues soon prompt your body to change, restoring your matronly figure[end if]. As you approach the den, you ask them what's got them in such a good mood.";
	say "     'Oh, Master Leonard asked us a while ago to keep an eye out for more sheet music. You see, we were told to try looking around the...' she starts to say, but is interrupted by Raven gently bopping her on top of the head with the leather satchel she's carrying.";
	say "     'If you tell her, you'll go on forever about it,' she cuts in. 'While we were out looking for some furniture,' she goes on to say while smiling at the others, 'we managed to get our paws on this.'  The dark-haired kitty pats the satchel and shows you a sheet of violin music from the very full case. From the way the other three are whispering excitedly, you're certain they're looking forward to presenting their find to the lion.";
	say "     'And now we've run into you on our way back,' Jasmine adds excitedly. 'Will you be staying for a while?'";
	say "     You respond that you're only stopping by for a little while as always, but add that you can stay and help Leonard thank them for their diligence, if they'd like. They're all quite pleased with this and snuggle in close as you continue along the path together. You change the subject to them, asking if they've run into any trouble or if anything in the city's been giving them trouble.";
	WaitLineBreak;
	say "     'Nothing we can't handle, matron. We've been paying attention to your advice about moving around in the city. We're smaller than most, so it's easier for us the sneak around when we have to. Dahlia's really good at spotting trouble, so we manage to avoid a lot of it.'  The other girl, who's been pretty quiet up to now, smiles and nods.";
	say "     Yarrow giggles and hugs her compatriot. 'Yeah, she's smart enough to keep quiet. Not like me,' she adds, laughing. 'There was this one time when this big wolf heard me joking (keeping everyone's spirits up). He was such a big, mean looking guy. Really well hung though - might've been worth the fleas to get a ride on that meat of his.'  She even adds some exaggerated itch-scratching.";
	say "     As the girls all laugh at her antics, she's poked in the ribs by Dahlia and Jasmine takes the opportunity to continue. 'Well, Raven managed to get us out of that one.'";
	say "     'All I did was spot a hole that was too big for him to follow us through.'";
	say "     'Well, you kept your head while the rest of us were crapping our pants (or drooling over his cock - Yarrow pipes in) and so you made sure we all got out of there safe,' Jasmine concludes. Listening and watching them, you can't help but smile proudly, very pleased with how they've come together as a team. And with the den coming into view, you let them go on in ahead of you so they can present their gift to the lion without you distracting him right away.";
	WaitLineBreak;
	say "     When you do enter, Leonard smiles and welcomes you. He passes off the satchel to one of the maids, instructing her to put it away somewhere safe. Putting his arm around you, resting on your rear, he has many kind words for the work group as he leads you and them off to his bed. Eager Jasmine is quick to offer herself up to Leonard and mewls in delight as he mounts her with Yarrow snuggled in close beside, fondling them both as they mate. You snuggle up with Raven and Dahlia, licking and caressing one another as each waits their turn with the gentlemanly male.";
	say "     The six of you make passionate love, the lion making sure to tend to the needs of all four of the hard working girls, giving each of them some personal attention. You make sure to do the same as well, fingering them to keep them aroused and eager while waiting their turn or allowing them to take pleasure in lavishing attention upon your body. This feline orgy goes on for quite some time, but eventually the satiated felines are all snuggled up together on the bed.";
	WaitLineBreak;
	say "     With everyone else napping, you're about to drift off as well, but are roused briefly by quiet Dahlia caressing your cheek. 'I wanted to thank you, matron, for saving us,' she whispers softly to you. 'The others don't remember much from before they joined the pride, but I do. It was a very hard and lonely time on my own. The other males were mean or rough, mistreating the girls they came across, not like our mate Leonard.";
	say "     'You found us, were kind to us and brought us here to be with him. We are so much better off together, with our pride family,' she says, smiling as she looks over to the others slumbering happily. 'Remember that when you have doubts and,' she clutches you tightly, 'remember that when you wonder where you belong. You belong here. With us.'  She kisses your cheek and rests her head on your chest. Having said so much, the normally quiet and thoughtful girl falls silent again, and you both lay there in each others arms, saying nothing and simply enjoying being close. You drift off into slumber with the others, resting peacefully with your feline family.";
	if player is felinebodied:
		infect "Feline";
	else:
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


Part 3 - Kitty Rescue

to say leodenscene3:
	say "     You arrive to find Leonard not in the den, with there being a large number of the feline girls hiding in the cave instead. The maids are doing their best to tend to the anxious crowd[if leonardcaraway is true] while Caraway attempts to distract them with her supply of baked treats[end if], but everyone is relieved to see you arrive. There's a lot of chaotic mewling and so many voices you can't make out what's going on. Thankfully, Raven is there to help fill you in while the others from the work group herd the lionesses back into the cave.";
	say "     'Leonard's gone off to deal with some of those feral Felinoids. We caught them trying to round up several of the pride girls for themselves,' Raven explains quickly. 'Our team can cope with one of them, maybe two, but that's it. We tried, we really did, but we had to break it off before we were captured as well. We wanted to go with him, but he ordered us to protect the others. You have to go help him, matron,' she mewls, clutching your hand tightly. You nod with determination, give her a reassuring hug and rush off.";
	WaitLineBreak;
	say "     You head in the direction of Felinoid territory, Raven having given you a rough idea of where they'd encountered the rustling felinoids. Aside from passing another lioness girl on the way, who you order back to the cave as you run past her, you're unharried by the other denizens of the park. Perhaps they can tell something is going down or simply don't dare deal with someone with an angry, determined look such as yours. Regardless, your run through the park is uninterrupted.";
	say "     As get closer, you can hear the roaring sounds of feline violence. You spur yourself on, breaking into a clearing a minute later. There you find Leonard deep in battle with some younger felinoids. Two of the quadrupedal cats have already be knocked out by the lion and another seems about to go down as he's struck by a powerful haymaker across the jaw. And while Leonard seems to be winning, he is scratched up and his suit coat is a shambles. Grabbing the dazed leonid in both paws, your mate tosses him fifteen feet against a tree, finishing that one off.";
	say "     Catching sight of you after throwing his fallen opponent, he smiles with relief and leaps back into the fray with renewed vigour. As he uppercuts another of the felinoids as it tries to pounce you, he calls out for you to help the others. As much as you want to fight by his side, you nod and press forward, the need to help the captured girls more pressing. You run around the edge of the glade and make for the path Leonard pointed out. It is covered in recent pawprints, scattered fur and even a few spots of feline blood, probably from those who resisted too much, giving you a clear trail to follow. Thankfully those making off with the girls didn't make it far with most of their numbers occupied by the raging lion. With a roar of your own, you rush forward and attack the nearest of them.";
	challenge "Felinoid";
	let krsuccessrate be 0;
	if fightoutcome >= 10 and fightoutcome <= 19:
		increase krsuccessrate by 1;
		say "     Having dealt with one of the felinoids, you've slowed the group enough to advance upon another of them.";
		challenge "Felinoid";
		if fightoutcome >= 10 and fightoutcome <= 19:
			increase krsuccessrate by 1;
			say "     Your victories over the large felinoids are enough to destabilize the situation and when you charge at another one, they lose all control. Unable to keep the lionesses corralled, they run off in all directions, though most head back towards the cave den. The felinoids move in to attack you, but you've given Leonard enough time to arrive. Together, you drive off the felinoids, rescuing the lionesses from their would-be captors. While tempted to enjoy some sweet revenge on the fallen creatures, you both head back to the den to check on the pride.";
			say "     As you walk back with Leonard, he pulls you close and rests a paw on your ass. 'Like everyone else, they seek mates of their own and the little lionesses are an obvious choice for them. Such losses are bound to happen; it is the new natural order of things,' he says with a soft sigh before growing harder as he continues. 'But they've not found it as easy as their sires did, many of the feline girls in the park being part of our pride and better protected and better sated these days. And so they tried to steal many at once by cutting off all avenues of escape. It did not matter to them whether the girls were part of our pride or not, only wanting as many as they could get. And after such a loss as that, I don't think they'll try such a thing again. They are not prone to such cooperation normally and their painful lesson should discourage them from trying it again.'";
			increase score by 25;
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     While unable to completely stop them, the delay your fight and the ensuing sex causes does hamper the felinoids. By the time Leonard arrives to assist you, he is still able to save some of the girls who were being captured. Helping those who remain, you head back to the den to nurse your wounds and check on the pride.";
		say "     As you walk hand in hand back with Leonard, he speaks softly to you. 'Like everyone else, they seek mates of their own and the little lionesses are an obvious choice for them. Such losses are bound to happen; it is the new natural order of things,' he says with a soft sigh before growing harder as he continues. 'But they've not found it as easy as their sires did, many of the feline girls in the park being part of our pride and better protected and better sated these days. And so they tried to steal many at once by cutting off all avenues of escape. It did not matter to them whether the girls were part of our pride or not, only wanting as many as they could get. And given how much trouble and the losses they took, I don't think they'll try such a thing again even if they did get away with some girls. They are not prone to such cooperation normally and their painful lesson should discourage them from trying it again.'";
	else if fightoutcome >= 30:
		say "     While unable to completely stop them, the delay you cause by getting some of them to chase you does hamper the felinoids. By the time Leonard arrives to assist you, he is still able to save some of the girls who were being captured. Helping those who remain, you head back to the den to check on the pride.";
		say "     As you walk hand in hand back with Leonard, he speaks softly to you. 'Like everyone else, they seek mates of their own and the little lionesses are an obvious choice for them. Such losses are bound to happen; it is the new natural order of things,' he says with a soft sigh before growing harder as he continues. 'But with this, they tried to steal many at once. It did not matter to them whether the girls were part of our pride or not, only wanting as many as they could get. And given how much trouble and the losses they took, I don't think they'll try such a thing again even if they did get away with some girls. They are not prone to such cooperation normally and their painful lesson should discourage them from trying it again.'";
	say "     Upon returning to the den, [if krsuccessrate > 0]you both are[else]Leonard is[end if] given a hero's welcome by the pride[if krsuccessrate is 2]. Among the girls there are several new faces, dragged along by the others fleeing their captors. From the looks of it, the pride has already begun welcoming them into joining. You and Leonard make their indoctrination into the pride part of the celebration, adding to the festivities[else if krsuccessrate is 1]. From what you can tell, there have been a few losses to the pride, but many of the kitty girls managed to get away during the confusion and make it back home[else]. There's sadly been some losses to the pride, but the group as a whole has been protected and those responsible have been punished[end if]. It is some time before things settle down and the mob of girls finally disperses, the work group going along to provide protection for them.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	now lastdenevent is turns;
	now hp of Leonard is 19;


Part 4 - Special Gift

to say leodenscene4:
	say "     You enter the den to find Raven there as well. She's on the floor between Leonard's legs, cock in mouth, while he's relaxing in his chair. He smiles up at you and pats the kitty's head, purring that you've arrived but for her to keep going. You come up to them, pet the purring girl's back and inquire what brings her here on her own. Before she can respond, Leonard draws you into a passionate kiss. He runs a paw over your chest and down to your hip while your tongues play against each other.";
	say "     When the kiss is broken, he responds for the kitty while encouraging her to continue with her oral ministrations. 'The other girls were here earlier, but they had to get - oh yes, keep going my dear Raven - back to something after their visit. They all had a nice, long visit, but had an appointment to keep. They found something for you my dear - mrrrr, just like that - so I suggested that Raven stay behind a little longer. It's been nice spending some time with herrrr...'  His words trail off into a deep rumble as his excitement builds. Grabbing her head, he stuffs his cock fully into her muzzle and growls in orgasm. Shot after shot of leonine seed is swallowed down by the dark-haired kitty until your lion lover is spent. He gives a contented sigh and releases her head, leaning back in his chair. 'As you can see, she's been very nice company,' he purrs with a smile.";
	say "     Raven, released now that her task is done, puts her arms around you and hugs you tightly. 'It's so good to see you again, my matron,' she purrs. You share several cum-flavoured kisses with her before she nuzzles down to your chest for a drink of matron's milk to wash down her meal of lion seed[if player is not felinebodied]. Her kneading and nursing help encourage your body back into its lovely leonine form[end if]. The feel of those soft lips around your nipple, drawing out your milk, leaves you panting and purring by the time she's had her fill.";
	say "     'Oh, I was so hoping you'd come back before I had to leave. Leonard said you were about due for another visit, so I stuck around a little longer to give you your gift. Ahhh! Your gift! Come see!' she exclaims, rushing off to the back area. You glance over to Leonard to see if he's coming, but he waves you to go along without him with a sleepy yawn. Typical lion, you think to yourself with a grin.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	if cocks of player is 0 and cunts of player is 0, follow the sex change rule;
	WaitLineBreak;
	say "     Given Raven's eagerness, you don't linger any longer and move quickly into the bedroom area of the den. There you find her heaving a heavy duffel bag onto the bed. At her prompting, you open it up to find a bulletproof vest inside. Surprised by the unexpectedly functional gift, you turn to look at her.";
	say "     'It took us some work to get it, but when the girls and I saw it,' she exclaims, 'we knew it was just what you needed. We know you're strong and smart - that's why you're our matron now - but it's not a safe place to be on your own. We've been so worried about you running around in the city like you have been. You don't have to do that any more - there's plenty you can do here for the pride - but you still don't stay. So until you get this urge to wander out of your system, we want you to be safe,' she says with a bit of a quaver in her voice, the corners of her eyes wet with emotion. She puts her arms around you, hugging you tight.";
	say "     A [if humanity of player < 30]large [end if]part of you wants to say you'll stay from now on, but you rein it in. Instead you put your arms around her and hug her tight. Touched by her gift and her words, you give her several tender kisses. These kisses soon become more amorous as her paws cling to you with obvious desire. Still filled with lust and longing after sucking on Leonard's cock, the feline is ready to show you how much she wants you here in a more physical way.";
	WaitLineBreak;
	if cocks of player > 0:
		say "     Knowing what the feline girl needs, you gently lower her onto the plush bed and move atop her. Your paws running over her cute body, you spread her legs and move to mount her. Pressing your lips to hers and your glans to her pussy, you thrust your tongue and [cock size desc of player] cock into her. She releases a muffled mrowl and digs her claws into your back, gripping you with both an emotional and physical need.";
		say "     You pound away at her zeal, eager to show your appreciation for the gift and to leave her thoroughly satisfied with her personal time with the pride's matron. And she's clearly eager to make the most of it as well, her hips rising up into every thrust. Already aching with need from her earlier fun, her pussy quivers and clenches around your meat with an obvious need. You drive her to several orgasms before you finally sink your shaft into her a final time and unload your [cum load size of player] load into her sopping cunt.";
	else:
		say "     Knowing what the feline girl needs, you gently lower her onto the plush bed and move into a 69 position alongside her. Your paws running over her cute body, you raise one of her legs and move your head in between her thighs. Pressing your lips to her juicy folds, you start licking and kissing at them. She releases a soft mrowl and dives in, her muzzle finding its way to your snatch to give you similar treatment. She grips your ass hard, digging her claws into your rump and pulling it tight to her face, gripping you with both an emotional and physical need.";
		say "     You eat her out with zeal, eager to show your appreciation for the gift and to leave her thoroughly satisfied with her personal time with the pride's matron. And she's clearly eager to make the most of it as well, her hips grinding against your face as your tongue laps across her clit. Already aching with need from her earlier fun, her pussy quivers and clenches around your finger with an obvious need when you push it into her. You drive her to several orgasms while your own excitement builds until you both crest with powerful climaxes in quick succession.";
	say "     After it's over, you snuggle and cuddle for a while. Leonard, satisfied that you've had your private time together, comes to join you and snuggles up to you from behind. Raven is the first to fall asleep, the exhaustion of her multiple releases catches up with her and she drifts off for a catnap. You nuzzle the slumbering kitty and give her a tender kiss on her forehead. Leonard, already having grabbed forty winks, is more alert and purrs softly to you, suggesting once again at that you stay with them. As you start to drift off, your muse over how the pride must feel about you always being away. Would it be so bad to stay with them? What out there can compare to the love you receive from Leonard and his loving lionesses?";
	say "     When you awaken later, Raven is preparing to leave, needing to rejoin the others. She's given a heavy satchel and a pat on the rear by Leonard. With a parting hug and a whispered wish of 'Be safe, my matron,' she heads out.";
	increase carried of bulletproof vest by 1;
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	infect "Feline";
	decrease libido of player by 10;
	decrease humanity of player by 5;
	if libido of player < 0, now libido of player is 0;
	now hp of Leonard is 20;
	now lastdenevent is turns;
	rest;
	follow the turnpass rule;


Part 5 - Unexpected Recruit

to say leodenscene5:
	say "     Your trip to the den this time was interrupted when a soldier came running out of the woods. A little wild-eyed from whatever he's fleeing, he ";
	if the player is bodily human and the player is facially human and the player is skintone human and tail of player is "" and ( breast size of player < 10 and cock length of player < 16 and cock width of player < 16 ) and breasts of player <= 2 and ( breast size of player < 2 or ( cock length of player < 7 and cock width of player < 7 ) ):
		say "failed to notice you until he almost the last second. Swerving to avoid you, he ended up running into a tree and knocked himself senseless";
	else:
		say "screamed in shock as he noticed you in front of him. Turning to get away from this new mutated creature, he ended up running right into a tree and knocked himself senseless";
	say ". Already close to the den and having your mate and pride on your mind, you carried the dazed soldier there with not entirely noble intentions.";
	WaitLineBreak;
	say "     Once inside the den, you are greeted by Leonard and the maids. The latter quickly move to take charge of the surprise guest, whisking him off to the bed to lay down. In the meantime, your mate speaks with you. 'Is this some friend of yours, my dear?' he inquires. When you explain what happened, he nods and glances over at the young man. 'And so you brought him to me... I thank you very much, my mate. You've done the right thing. Let us go welcome our guest,' he purrs with a predatory grin that you share.";
	say "     The young soldier, whether from the shock or his unexpected nap, is still somewhat dazed and hasn't fully taken in his present situation. One of the maids is dabbing the bump on his head while the others cuddle him close. His torn jacket's already been slipped off, as has been his belt. A feline paw is under his shirt and another is in his pants while the lioness maids nuzzle him tenderly.";
	say "     The shock of seeing Leonard startles a little life back into him, but he doesn't pull away from the affectionate and tender maids cuddling him. 'I... I... Ah... Wha... Who? Where am I?' he finally manages to blurt out.";
	say "     Leonard, as suave and gentlemanly as ever, smiles to the young man. 'Don't worry, soldier. My name is Leonard and you're safe here in my den. We mean you no harm. You hurt yourself rather badly when you almost crashed into my mate here.'  He indicates to you and you smile, keeping a polite distance for the moment. '[if cunts of player > 0]She[else]He[end if] says you seemed quite agitated and were perhaps fleeing something? What happened to your unit?' he asks in a concerned manner.";
	say "     'There was... some big cat thing - Ah! Not like you though... uh... sir,' he quickly adds. 'Some four-footed beast. Wild and vicious. It took us by surprise and drug off Paul. It got Marcus next... though it might have been a different lion-thing. The others were picked off one by one. In the end, Tony just gave himself up and let it mount him then and there.'";
	say "     Leonard listens attentively during the account, nodding and expressing his condolences as appropriate. 'Yes, the felinoids have been quite beastly pests. We've had our troubles with them as well, but you're safe from them with us. I do hope this experience hasn't put you off of felines as a whole,' he inquires politely. With lioness ears on the man's head and fur rising on his now bared chest, the young man shakes his head and smiles dreamily. 'No, you've all been so nice to me. I'm feeling much better already.'";
	say "     'I can see that,' your mate rumbles. 'But it may not be safe to leave quite yet. It'd be better if you stayed with us a little while longer.'  Leonard, having eased closer, runs his paw over the soldier's increasingly feline and feminine face.";
	say "     'I'd like that,' the transforming soldier purrs, nuzzling against his paw.";
	say "     'I knew you would,' the lion responds, moving in to kiss that cute, new muzzle. There is a brief moment of surprise on the soldier's altered face, perhaps realizing what's happening before his feline instincts override his reason and his resistance vanishes. It is a sight that fills your matronly heart with excitement and, unwilling to wait any longer, you move in to join your mate in welcoming this soon-to-be-newest member to your pride.";
	WaitLineBreak;
	say "     While the maids guide Leonard's stiff cock into their charge's muzzle, you move in between his legs and tug down his pants. Though [']his['] really won't be appropriate for much longer, his cock and balls already quite small even as a fresh, virgin pussy is forming to replace them. You lick your lips and start lapping across it, encouraging the change. You kiss the cock goodbye as it shrinks down to become the clitoris for her new vagina. As much as you may like to stuff [if cocks of player > 0]your cock or [end if]a few fingers into her pristine pussy, you content yourself with some light touching and a thorough licking, saving her deflowering for your mate.";
	say "     During the blow job, Leonard rumbles to her about what a fine, brave kitty she is and how happy the pride is to have her in its service. Excited and wanting to get to the main event, Leonard goes for a quick finish to the oral prelude and releases a lustful roar along with his semen. The new kitty moans in pleasure as she swallows down the lion's first load. And by that point, you've gotten her so hot and bothered that she moves onto all fours and raises her tail unbidden as soon as the lion moves back. 'Do me, sir. Please, I need it,' she mrowls in heated need as she presents herself for his inspection.";
	say "     Rumbling again what a fine kitty she is, Leonard stiffens right back up and thrusts into her, taking her new-found virginity. A shiver of pained delight runs through her as her hymen's broken, but the discomfort disappears almost immediately, leaving only the lustful need for more. Snuggling up beside her, you reach underneath the lioness to caress her stuffed pussy and Leonard's cock while they mate. You and the lion slide her partially atop you so she can start nursing for your matronly milk. As she nurses, you purr to her about how the pride needs brave, loyal lionesses like her. Adding that a strong, obedient lioness like her deserves to be rewarded, Leonard buries his rod deep inside her and drains his balls, claiming her womb with her virile reward. She mrowls loudly in climax in response, kissing you repeatedly as she swears her love and loyalty to her pride.";
	WaitLineBreak;
	say "     After that, the mating winds down into playful snuggling while the maids lick the three of you clean before all of you enjoy a nap on the plush bed together. When you awaken, Leonard is seeing the newest member of the pride off. Now fully a cute lioness, she's also sporting an altered version of her military jacket that's been re-tailored by the maids into a sexy open top. She gives you both a sharp salute and heads off with a smile on her eager face.";
	say "     Taking a seat with Leonard in the sitting room, he passes you a drink. 'I had an informative discussion with our new Olive when she awoke. She doesn't recall much and it's fading quickly, but I queried her on the soldiers coming into the city. The rank and file soldiers clearly aren't being told much, but I was able to glean much. A shrewd gentleman must be able to discern what's going on from the limited details available. If the pride's properly prepared, I think we things could turn out rather well for us. As for Olive, I believe she'll work out quite well for us if her training still holds. If so, her and a few like-minded recruits would make a good team to help protect the other, less combat-ready girls.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	decrease libido of player by 10;
	decrease humanity of player by 20;
	if libido of player < 0, now libido of player is 0;
	now hp of Leonard is 21;
	now lastdenevent is turns;
	rest;
	follow the turnpass rule;


Part 7 - Special Dinner

to say leodenspecial1:
	say "     While on the path towards the lion's den, you are met by a giggling pair of feline girls from the pride. You greet them with hugs and kisses, as well as plenty of playful groping and fondling[if the player is not felinebodied]. Their playful attention helps to restore your matronly figure, allowing them to nurse some milk from you as well[else]. You enjoy their playful attention as they nurse some milk from you[end if].";
	say "     After the feeding, they continue talking and giggling about various inane things. At first it's cute and amusing, but you'd much rather be on your way to see your mate. Being kind to them and knowing they miss their wayward matron, you indulge them for a while, but just as you think you're going to have to be rude to get them to let you continue on you way, another lioness comes running up from the direction of the den. She's got a red ballcap on her head and an empty pack on her back. After giving you a quick hug, she tells the other girls that it's alright now and continues on her way. The other two quickly say their goodbyes and run off, giggling loudly to each other. Finding it all rather suspicious, you continue on your way as the sun starts to set.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	WaitLineBreak;
	say "     Arriving at the den, you are greeted by the delicious scent of cooking food even before you step inside. At the tunnel mouth sits Leonard at a wooden table set for two and [if leonardcaraway is true]an array[else]several[end if] steaming dishes set out. The maids are waiting behind him, smiling politely as they stand at the ready. Seeing you, the gentlemanly lion rises. 'Welcome, my dearest mate. I had heard through the grapevine that you were coming this way and thought you might want to sit and enjoy the sunset with me,' he says with a soft purr in his voice and a smile on his muzzle. 'I do hope those two chatterboxes didn't bore you too badly, but we needed a little extra time to prepare.'  He steps around the table to pull out your chair for you, giving you a loving kiss as you sit down.";
	say "     You and Leonard have a lovely dinner together in the fading light, enjoying the beautiful sunset as your backdrop. You discuss several pride matters as well as your recent adventures in the city. You are served a [if leonardcaraway is true]seven[else]five[end if] course meal by the maids, ending with dessert by candlelight. You can tell as the evening wears on that Leonard's getting aroused by how often he's groping the cute maids and you can't help but give them a few teasing touches yourself[if leonardcaraway is true]. This is especially true when Caraway comes out with the dessert, playing with her pussy to the point she's weak-kneed as she tries to serve you[end if]. By the time you're both finishing up dessert, there is a maid beneath the table at both ends, [if cocks of player > 0]one sucking your cock and another dealing with Leonard's[else if cunts of player > 0]one licking your pussy while another deals with Leonard's cock[else]one licking and rubbing your bare groin while another deals with Leonard's cock[end if].";
	say "     Once dessert is finished, you are Leonard can wait no longer. Rather than go inside or even wait for the table to be cleared, he pushes you down overtop of it and starts riding you as you moan and mewl lustfully for more. The maid girls smile and watch, clearing the dishes and the remains of dinner out of the way while the studly lion's hard thrusting threatens to tumble everything onto the ground. Mindful of the antique table, you grab a handful of the tablecloth in both hands and dig your claws into that rather than the wood. Your cries of lustful mating carry out into the night air, certainly not the only such cries around, but definitely the loudest tonight. He fucks you and fills you twice on the tabletop before taking you inside onto the bed and mating you again there[if leonardcaraway is true]. After mating you repeatedly, Caraway is called over so Leonard can give his compliments to the chef, fucking her to a loud orgasm while you play with her breasts. After the repeated matings, the three of you[else]. After the repeated matings, you both[end if] pass out for a catnap on the bed.[impregchance]";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	now feline_meow is feline_meow / 2;
	now lastdenevent is turns;
	now lastfuck of Leonard is turns;
	remove 1 from leodenlist;
	decrease hunger of player by 30;
	decrease thirst of player by 12;
	if hunger of player < 0, now hunger of player is 0;
	if thirst of player < 0, now thirst of player is 0;
	now leodinner is true;


Part 8 - Shadow #1

to say leodenspecial2:
	say "     You arrive at the den just as Leonard is pulling on his suit coat and preparing to step out. 'Oh, you're here just in time, my dearest. I was about to step out to meet with one of the girls. Come join me,' he says, picking up an old leather satchel bag. Curious that he's going out to see one of his girls instead of meeting with her here, you follow along. It isn't far, just a few minutes away, before you arrive on a darkened path. 'Psst! Boss,' comes a whisper from behind a tree and you spot a kitty girl you've not met before wearing a tan trenchcoat and fedora. She glances around to make doubly sure you two are alone and then motions for you to follow her deeper into the bushes. While physically much like the others, she's found or made a shortened trenchcoat and fedora to fit her small stature. The coat is even fitted with a hole for her tail, you notice.";
	WaitLineBreak;
	say "     'Hey there, boss, toots,' she says with a nod. You're a little surprised by her odd mannerisms and unusually irreverent attitude towards you both. 'I checked into that stuff you were askin['] about, boss. A bunch of [']em are still on edge after the big blow-up we had, but nobody's lookin['] to move on you quite yet. Made it pretty clear to most of [']em that you two aren't easy pickinz. I made sure to hint to a few ears that we've come out of this even bigger than before, so they ain't gonna think we've been softened up neither. They'll be lookin['] to move on some weaker groups instead or against each other for now. I did manage to get some word on that too, if you want the details, boss-cat,' she adds.";
	say "     Leonard questions her for a while about what she's learnt, gaining details on several of the other factions in and around the park, their movements and the growth or recession of their territory. She's even got info on those creatures who haven't formed cohesive groups, detailing how their position's been shifting relative to the others. Of particular note, she talks about the squabbles and escalating conflicts between some of the other creatures. Quite a bit of what she relays is definitely insider information, sometimes even orders or plans made by the various would-be leaders - so much so that you have to ask her how she came by it. 'Oh, you know how it is in my line of work, toots. Found a few stoolies, greased a few palms, sucked a few cocks and got the info ya wanted. Speakin['] of which, ain't it about time for my pay?' she says, turning back to Leonard.";
	WaitLineBreak;
	say "     'Oh, indeed, my dear Shadow,' he says with an obvious smile and a growing erection. Taking her into his arms, he pushes open her heavy coat and presses her back against a tree. After lining up his cock with her pussy, he thrusts deep into her, much to her mewling delight. Despite her earlier attempts to be discrete, she moans and yowls lustfully as the big lion fucks her hard. Your mate motions for you to come join in, clearly eager to reward this girl for her exceptional work. Adjusting his position, Leonard allows you between his legs with clear access to his cock thrusting into Shadow's pussy. You lick and lap at their point of lustful union, savouring the mingling tastes of feline arousal from them.";
	say "     'Mmmm... yeah, boss. Harder,' she cries out as her excitement builds to climax after a few minutes. Leonard empties his load into her with a growl while sinking his claws into the tree as he pulls himself firmly against his strange spy. With the lion's cock pressing her against the tree, you're unable to continue licking until he's emptied his load and withdrawn, but you're there ready and waiting to eat out her cream-filled cunt when he does.";
	say "     Once she finally recovers from the second orgasm you give her, she takes the valise from Leonard and checks its contents quickly. Inside is an odd mix of supplies, sex toys, jewelry and other trinkets, but she seems pleased. She then straightens her coat, flips her collar up, lowers the brim of her hat and slips away with a mention that she'll [']be in touch['].";
	WaitLineBreak;
	say "     As you head back to the den, Leonard motions for you to hold your questions. You're quite curious about this odd exchange and are thankful it isn't long before you're comfortably back in the lion's den. After fixing you both a drink and taking a seat in his plush chair, Leonard explains. 'Shadow's been one of my girls for quite some time, but she could never really find her place in the pride. Try as I might, the poor girl's proven to be sterile and it saddened her that she couldn't bear kittens for me like the others. I assured her it was fine, but it still troubled her.";
	say "     'After one particular unenthusiastic evening with her, I happened to mention wanting some more information on the others in the park. She seemed quite enthused at the opportunity to help the pride and headed off in better spirits than I'd seen from her in some time. It was a distressingly long time before I heard from her again, so long that I'd worried she'd been taken by another creature, but she'd simply thrown herself into it wholeheartedly. She made that coat, plays the role and excels at it. It is all like a grand game for her, though one she seems to take seriously as far as results. She insists on these [']clandestine['] meetings away from the den, accepts my affections as her payment and requires only an assortment of supplies and bribes for her informants. I don't know if it is her monomania with her role or some pre-existing quirk of hers, but it's become clear she's immune to infection from those she dallies with, so I have little worry about the pride losing her.'";
	say "     You'd been aware before that Leonard had been keeping tabs on the area, but you'd not known the details or the extent of it until now. Having learned about this odd, secret member of the pride has left you with a newfound respect for your mate's resourcefulness. You've also learned a lot of information which could be helpful to you in the future when dealing with these creatures.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	increase xp of player by ( intelligence of player * 2 ) + level of player;
	now lastdenevent is turns;
	remove 2 from leodenlist;
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
	now leoshadowmet is true;
	add 11 to leoparklist;	[opens Shadow #2 in Park Events]


Part 9 - Railway Watch

to say leodenspecial3:
	say "     After being welcomed by your mate, you set aside your gear and take a seat in your personal chair. As the maids groom you and give you a foot massage, another lioness girl timidly arrives at the entrance to the den. She's got a small bundle of rags in her paws that she clutches tightly. Greeting her with a smile and a motion to come in draws Leonard's attention and he turns to look at her as well. You hear him give a little sigh before speaking with a bit of forced enthusiasm. 'Oh. Hello there, Mimosa. Do you have something for me there?' he asks.";
	say "     She nods and approaches him with a mix of eagerness and hesitance that seems odd for one of the girls approaching with a gift for the gentlemanly lion. To help put her at ease, you stand beside her and give her ears a scritch before petting her back. 'Can I see it, little one?' you ask softly, holding out your hand for the fist-sized bundle. Unwrapping it, you find a gold pocket watch inside. 'Oh, how lovely! What a fine gift!' you respond right away and your praise helps relax the girl a little.";
	say "     While pocket watches are rare these days, this one is larger than you're used to seeing and you get the feeling right away that it's an antique. Flipping it open, you find it still in working order, its second hand ticking away the time. Checking the markings on the inner cover and face, you figure it to be a classic railway company watch, the kind used by conductors or awarded to one upon his retirement. Based on this, you feel it a safely bet to guess it's at least a century old.";
	WaitLineBreak;
	say "     Passing the golden timepiece to Leonard, he takes it from you with only a quick glance. 'Little one, I recall mentioning the need for a clock so my whole household might know the time,' he rumbles with an edge of frustration in his voice. The little lioness wrings her paws and mumbles meekly. You give her another reassuring pat while glaring up at your mate. He coughs and continues, taking a proper appraisal of the watch at your prompting. 'Well yes, it is certainly a quality piece. As my mate says, it is quite lovely. An antique and likely a collector's item, at least. Does it keep proper time?' he asks, already clipping the chain to his suit coat.";
	say "     The small lioness glances up at Leonard, a little less nervous now. 'I... I th-think so, sir. It was on display for sale at a watchmaker's with a sign saying it had been recently repaired. I didn't have a chance to test it against the clock bef-  Oh, the clock! There's this great clock there. A grandfather taller than me and-' she cuts herself off short after the short burst of enthusiasm, suddenly wringing paws and looking away again. 'I'm s-sorry I didn't get it. It was just so big and then there were m-monsters and...' she mumbles, staring at her feet.";
	WaitLineBreak;
	say "     You put your arms around her and hug her tenderly while giving Leonard another prompting glare and nod. Knowing your mate's moods, you know he's certainly nowhere near as upset as the girl's reaction would warrant, only a touch frustrated by what must a familiar scenario with this one girl. He caresses her cheek with his large paw. 'The watch is very lovely, my dear Mimosa. It is a fine gift. Now why don't you come have a seat with me and tell us about your little adventure?' he purrs, guiding her over to his chair.";
	say "     A little surprised at what seems like a reversal of fortune to the lioness, she's boosted up into Leonard's lap and cuddled into his arms. His paws roam over her body, lightly at first, though soon groping her ass and breasts. He does this while prompting her to relate what happened, asking the occasional question or getting her back on track when derailed with a casual comment. He also slyly prompts her to stroke his cock as a means to stop fidgeting with her hands. Eventually the recounting is put on hold as the heavy petting heats up. She's brought to a mrowling orgasm as Leonard's hot seed is splattered across her chest and tummy.";
	WaitLineBreak;
	say "     While purring happily in a post-orgasmic haze, she licks a pawfull of the messy splatter from her furry fingers while Leonard strokes her hears. 'Now where again did you say this place was, my dear?' he asks casually, though you can tell from how his ears are perked that he's anything but. Between licks, she describes the area and the little shop she found, also mentioning that it's only about a dozen blocks from one of the more distant park entrances. 'And do you think you could find your way there again?' he asks, getting a nod from the girl as she continues her lewd grooming. 'We'll have a few girls go along with you. We can't ask you to carry something like that back all on your own, now can we? I'd be so very [']appreciative['] if you could do that for me,' he rumbles with a fresh caress across her pussy, making her wriggle in his lap.";
	say "     'B-but what about the m-monster?' she asks, suddenly worried again. 'That metal fox thing I saw was super-creepy, c-clicking and clacking its gears as it came towards me.'  She gives a shudder and snuggles a little closer to her powerful mate and protector.";
	WaitLineBreak;
	say "     Leonard nuzzles the girl comfortingly. 'Don't worry about it, my little [italic type]Mimosa pudica[roman type]. We know just who to send with you, don't we my dear?' he says, smiling at you. You give a nod, telling her that you have some special girls who'll be glad to help.";
	say "     Mimosa's eyes go wide as she looks over at you. 'The Matron's personal team? Helping me? I... But... They... Really?' she blurts out, looking quickly back and forth between the two of you, unable to believe her good fortune. She practically leaps out of Leonard's lap to hug you tightly, mewling her thanks over and over again. And eager to show that thanks, her hug soon turns to caresses and nuzzling as her feline muzzle drifts to your groin.";
	WaitLineBreak;
	if cocks of player > 0:
		say "     Nuzzling your cock[smn] with a happy purr, she takes [if cocks of player > 1]one of them[else]it[end if] into her warm muzzle. She licks and suckles at it, eager to show her appreciation to her pride's matron. The cute feline rubs her body against you, smearing the remains of your mate's seed onto you, adding the arousing tingle of the nanites in action to the pleasure you're feeling. Leonard watches on with an appreciative rumble, growing stiff again even after his recent release, though he holds off - perhaps to show you his own thanks later. Her warm muzzle feels great around your [cock of player] cock and, after your arousing show earlier, it isn't long before you're emptying your load down the grateful kitty's throat.";
	else if cunts of player > 0:
		say "     Kissing your puss[yfn] several times, she starts running her raspy tongue across your folds. She works her tongue and fingers in and out of your cunt[sfn], eager to show her appreciation to her pride's matron. The cute feline rubs her body against you, smearing the remains of your mate's seed onto you, adding the arousing tingle of the nanites in action to the pleasure you're feeling. Leonard watches on with an appreciative rumble, growing stiff again even after his recent release, though he holds off - perhaps to show you his own thanks later. Her licking and stroking feels great, especially after the arousing show earlier, and it isn't long before you're mrowling with a climax of your own.";
	else:
		say "     Kissing your bare crotch with a sad mewl, she runs her raspy tongue across it while her paws knead over you. While not quite sexually satisfying, it does feel quite good and you give her ears a scritch and a caress. She works her tongue and fingers, doing her best to show her appreciation to her pride's matron. The cute feline rubs her body against you, smearing the remains of your mate's seed onto you, adding the arousing tingle of the nanites in action to the pleasure you're feeling. Leonard watches on with an appreciative rumble, growing stiff again even after his recent release, though he holds off - perhaps to show you his own thanks later. You enjoy the affectionate attention from the lioness for a while before eventually having her move when the tingling pleasure becomes too much after an unfocused spasm of physical pleasure runs through you.";
	say "     After another round of mewling thanks to both of you, Mimosa's sent on her way with instructions to meet up with your work group. You and Leonard smile as you watch her go, knowing she'll be in good hands with Raven and the others to help her with the retrieval. Your mate gives you a tight hug and a pat on the ass, followed by a tender nuzzle.";
	WaitLineBreak;
	say "     Knowing you're curious about the girl you just met, he explains that she's always been quite timid for a lioness. 'She was such a skittish kitten, taking so much longer than the others to get her to come and accept my affections. But she was all the sweeter for it in the end, longing for it so badly by that point. But she always has such difficulties with my requests. I've even made the simplest of suggestions in the hopes of giving her a confidence boost, but it never seemed to turn out as planned,' he says, rubbing his feline nose with a slight frown.";
	say "     Giving his new pocket watch a quick look with an appreciative eye, his smile returns. 'But she's actually done quite well this time. I'd've been happy with a winding alarm clock at this point and certainly would not have expected her to carry a grandfather clock on her own. And now with your work girls helping to ensure nothing further goes wrong, Mimosa will hopefully make a few friends and gain a little confidence with her success. I don't expect miracles, but it's a strange new world out there and I want her to know she can face it with her pride.";
	infect "Feline";
	now leopocketwatch is true;
	increase feline_meow by 1;
	now lastfuck of Leonard is turns + 8;		[Leonard ready to go]
	now lastdenevent is turns;


Part 10 - Supply Delivery

to say leosupplyscene:
	let leosupplies be 0;
	if leosupplies is 0, let leosupplies be a random number between 1 and 2;
	say "     After being welcomed by your mate, you [one of]settle in to take a short break before getting into the reason for your visit[or]enjoy a pleasant snuggling with the sexy lion[or]enjoy some relaxing attention from the cute maids[or]enjoy a pleasant chat with Leonard[cycling]. At this time, a heavily-laden lioness in a red cap arrives at the den. One of the maids assists her in removing the heavy pack, full of [if leosupplies is 1]foodstuffs[else]bottled water[end if], and carry it inside. After a cursory examination by a pleased Leonard, he gives some to you before the pack is sent off to the pantry to be stocked[if leonardcaraway is true] by a very pleased Caraway[end if].";
	say "     You both thank the kitty for her efforts, the den being in need of more supplies due to the addition of the maids. The little lioness purrs happily at the praise, especially when Leonard's paw drifts down to her rear. With his gentle touch, he guides her ";
	if leosupplies is 1:	[food]
		say "towards his bed. You follow them, eager to show your thanks as well.";
		say "     After helping Leonard out of his suit and you've removed your gear, you lay back on the bed, pulling the cute kitty atop you. She nuzzles at your chest and licks your nipples, her paws kneading softly. You run your hands over her, reaching down to grab her ass as she offers it up to the lion's approaching cock.";
		if the player is not felinebodied:
			say "     As she's being mounted, you can feel the familiar changes running through your body as the cute girl helps to restore your matronly figure. She mewls in lustful need as the lion's sizable cock is pushed into her petite body, her paws gripping your shoulders as they those of a strong lioness. You can't help but mewl yourself as she leans forward slowly and wraps her lips around your nipple. Shivers of delight run through you as she nurses for your feline milk even while getting pounded by the sexy male. You purr softly to her, telling her how pleased you both are with her and how much you appreciate the food she's brought for you and for the pride.";
		else:
			say "     As she's being mounted, you can feel a rush of excitement running through your body as the cute girl rubs against you. She mewls in lustful need and grips your strong shoulders tightly as the lion's sizable cock is pushed into her petite body, wrapping her lips around your nipple. Shivers of delight run through you as she nurses for your matronly milk even while getting pounded by the sexy male. You purr softly to her, telling her how pleased you both are with her and how much you appreciate the food she's brought for you and for the pride.";
		say "     Still with your paws on her ass, you can feel it sway with each increasingly strong thrust by the virile male stuffing her. You lick your lips, longing for your chance to be on the receiving end of him again, but knowing you should wait until the girl's been suitably rewarded. From the amount of her juices dripping down onto your thigh as the lion pounds her, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long. But she shows her longing for you as well, [if cunts of player > 0]sliding a paw between your legs to finger your pussy[else if cocks of player > 0]sliding a paw between your legs to stroke your manhood[else]nursing for as much milk as your [breast size desc of player] breasts will give.";
		say "     Things grow more heated when the lion leans overtop of her and takes her by the nape of her neck, growling softly as his hips slam hard against her cute bottom. She mewls and moans with each thrust, cumming with a fresh flow of juices from her stuffed cunny. This is soon followed by the lion's climax, the virile scent of his fresh seed being added to the arousing aroma of feline sex in the air. He keeps thrusting and cumming until her womb is full of his hot load and she's left quite satiated. Unlike the other kitties though, once the sex is done, she gives you each several hugs and kisses before climbing out of the bed. She plucks her cap off the coat rack, adjusts her feline ears through it, grabs her empty pack and rushes back out with a quick wave, cum still running down her furry thighs.";
		increase carried of food by 1;
		increase score by 5;
		now leosupplies is 2;
	else:		[water]
		say "to his plush chair. You follow them, eager to show your thanks as well.";
		say "     After Leonard's taken his seat, you and he lift the eager little feline into his lap. She mewls happily and grinds her cute ass down onto his stiffening cock, sharing kisses with both of you. ";
		if scalevalue of player >= 3 and ( cocks of player > 0 or cunts of player > 0):
			say "     Given her position, you could either choose to be on the receiving end or the giving side of some oral fun with the hard-working kitty.";
			say "     [bold type]Which would you prefer?[roman type][line break]";	
			Line Break;
			say "     ([link]Y[as]y[end link]) - Recieve oral.";
			say "     ([link]N[as]n[end link]) - Give oral.";
			if the player consents:
				say "[leosupplyoral1]";
			else:
				say "[leosupplyoral2]";
		else:
			say ". Given your [if scalevalue of player < 3]smaller size[else]present lack of gender[end if], you decide to give the hard-working kitty some added oral attention.";
			say "[leosupplyoral2]";
		say "     As you're all basking in the afterglow, the satiated feline gives you both several hugs and kisses, mewing happily about how much she loves you both. After she's had a chance to recover, she pulls herself off Leonard's lap and hops back on the floor. She straightens her cap, grabs her empty pack and rushes back out with a quick wave, cum still running down her furry thighs.";
		increase carried of water bottle by 1;
		increase score by 5;
		now leosupplies is 1;
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;
	increase feline_meow by 1;
	now lastdenevent is turns;


to say leosupplyoral1:
	say "     Feeling that you could use some relief of your own, you stand beside the plush chair and place your [if bodyname of player is listed in infections of Felinelist]paw[else]hand[end if] on her head, guiding it to your crotch. Leonard boosts her rear up, getting his cock into position before lowering her down onto it just as you press her muzzle [if cocks of player > 0]over your throbbing shaft[else]to your juicy folds[end if]. She smiles at the opportunity to please you as well as her leonine master, licking lustfully at her matron's loins while she's getting fucked.";
	if cocks of player > 0:
		say "     As she rides in Leonard's lap, she works her muzzle over your throbbing manhood with every bounce. Her paws knead at your [if cockname of player is listed in infections of Internallist]ass[else]balls[end if] while her lips and tongue do their best to pleasure you even as she's getting fucked. If the rumble of her purring and the amount of juices flowing from her stuffed cunt are to be judged, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long. Seeing the lion's thick cock pumping in and out of that tight hole makes you lick your lips and long to feel him inside you again soon.";
		say "     Things grow more heated as everyone's lusts grow higher and higher. Having a grip on her head already, you rub her ears (which poke through slits cut into her cap) and tell her what a fine, eager kitty she is and how pleased you both are with her hard work. She seems to blush a little in her ears and sucks down on you all the harder, soon pushing you over the edge. You pump your [cum load size of player] load down her throat, feeding her your seed. With the kitty cumming at the taste of it, the lion is set off soon afterwards, filling her sopping cunt with his leonine cum until her womb it stuffed full of his virile output.";
	else:
		say "     As she rides in Leonard's lap, she laps her tongue over your wet pussy with every bounce. Her paws knead at your ass while her lips and tongue do their best to pleasure you even as she's getting fucked. If the rumble of her purring and the amount of juices flowing from her stuffed cunt are to be judged, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long. Seeing the lion's thick cock pumping in and out of that tight hole makes you lick your lips and long to feel him inside you again soon.";
		say "     Things grow more heated as everyone's lusts grow higher and higher. Having a grip on her head already, you rub her ears (which poke through slits cut into her cap) and tell her what a fine, eager kitty she is and how pleased you both are with her hard work. She seems to blush a little in her ears and dives her tongue into you while her whiskered muzzle teases your clit, soon pushing you over the edge. You cry out in delight, your juices soaking her muzzle only to be lapped up by her agile tongue. With the kitty cumming at the taste of your honeyed waters, the lion is set off soon afterwards, filling her sopping cunt with his leonine cum until her womb it stuffed full of his virile output.";


to say leosupplyoral2:
	say "     You kneel down between Leonard's legs, running your [if bodyname of player is listed in infections of Felinelist]paws[else]hands[end if] along his thighs. You nuzzle at the cute kitty's belly and down to her juicy pussy, giving it a tender kiss. As Leonard boosts her up briefly, you raise his shaft into position. As she's lowered back down onto the lion's rod, you continually lick at her spread lips and at the cock sinking between them. It is a lovely sight that gets you quite turned on and makes you long for your next chance to be in her position. If the rumble of her purring and the amount of juices flowing from her stuffed cunt are to be judged, you can tell she's really enjoying getting stuffed after being away on scavenging duty for so long.";
	say "     Things grow more heated as everyone's lusts grow higher and higher, your tonguework getting both felines quite worked up. The kitty mewls and moans, rubbing her paws over your head, urging you to keep going. Certainly, the copious juices of her arousal, coupled with the musky flavour of Leonard's cock, seems delicious to you and you lap up as much as you can get. As Leonard is fucking her, he rumbles to her about how she's been such a diligent, hard-working girl in collecting supplies and how pleased you both are with her efforts. Rubbing one [if bodyname of player is listed in infections of Felinelist]paw[else]hand[end if] at the lion's balls while the other teases her folds, you suck down hard on her clit. This sends the girl over the edge with a yowl of ecstasy and a fresh rush of her juices. Her orgasm is soon followed by the pulsing of Leonard's shaft as he cums as well, filling her womb to the point that trickles of his cum overflow around his cock for you to lick up. Having gotten them both to climax and tasted their mingled up is quite arousing for you and [if cocks of player > 0 or cunts of player > 0]pushes you to cum as well[else]sends a rush of pleasure through you[end if].";


Part 11 - Practice Session

to say leopracticesession:
	project the figure of LeonardViolin_icon;
	say "     As you're approaching Leonard's den, you can hear the soft sounds of his violin being played. Hearing it makes you smile and move more quickly towards your mate's home. When you arrive, you find him attentively practising while the maids listen happily as they snuggle together on a nearby rug. Noticing you, he smiles and continues to play, though with added enthusiasm now. You smile and take a seat in your soft chair, relaxing and enjoying the lovely music.";
	if a random chance of 1 in 3 succeeds:
		say "     While Leonard practices, you notice a [one of]shy[or]nervous[or]curious[or]eager[at random] feline girl poking her head around the edge of the tunnel. You make a faint motion for Leonard, who nods and continues to play, switching from practising to playing one of his more [one of]welcoming[or]exciting[or]alluring[or]sensual[at random] pieces. As he plays, you can see it having an effect on the visitor, getting her to relax and move in a little further to hear better. As Leonard starts up another song, you motion for her to come and sit with you and, captivated by the lovely music, she is easily coaxed into your lap.";
		if the player is felinebodied:
			say "     Now with her in your arms, you guide her muzzle to your chest and have her start nursing from your [breast size desc of player] breasts. As she does, you slip your hand down between her legs, rubbing her pussy and slipping a finger into it. You enjoy her soft moans of pleasure that seem to flow into the passionate, erotic melody Leonard's playing has transitioned into";
		else:
			say "     Now with her in your arms, you snuggle her close and slip your hand down between her legs. You rub across her wet pussy before slipping a finger into it. You enjoy her soft moans of pleasure that seem to flow into the passionate, erotic melody Leonard's playing has transitioned into";
		if cocks of player > 0:
			say ". After some teasing, you shift her over and slide her down over your stiff cock. You nuzzle and purr softly to her as you fuck this newest member of your pride in welcome";
		else:
			say ". You nuzzle and kiss her as you finger her juicy cunny, eager to welcome this newest member of your pride in welcome";
		say ". As the song reaches its climactic apex, so does the sexy lioness's pleasure and she can't help but mrowl as she orgasms[if cocks of player > 0] as you fill her with your seed[end if]. After the song comes to an end, you all applaud the musical lion, who gives a regal bow before taking the newcomer up into his arms and escorting her to the bed. While the maids store away the violin and stand, Leonard does his part for welcoming this new girl as well, with much lustful mrowling and purring before it's done.";
		if player is felinebodied:
			infect "Feline";
		else:
			felinebodyshift;
		decrease humanity of player by 5;
		increase feline_meow by 1;
	else:
		let T be a random number between 1 and 6;
		say "     Leonard plays another two songs, repeating some sections a few times until he's satisfied with the results. After your pleasant surprise of being serenaded, the music has left you feeling ";
		if T is 1:
			say "happier. The four of you clap politely for the musical lion, who smiles and bows before instructing the maids to put his instrument and stand away.";
			if morale of player < -10:		[negative morale decreased by 20%]
				now morale of player is ( 4 * morale of player ) / 5;
			else:
				increase morale of player by 2;
		else if T is 2:
			say "that some of your road weariness has lifted. The four of you clap politely for the musical lion, who smiles and bows before instructing the maids to put his instrument and stand away.";
			increase hp of player by ( hp of player / 10 );
			if hp of player > maxhp of player, now hp of player is maxhp of player;
		else if T is 3:
			say "aroused and eager to be with your loving mate. The four of you clap politely for the musical lion, who smiles and bows before instructing the maids to put his instrument and stand away.";
			increase libido of player by 5;
			if libido of player > 100, now libido of player is 100;
			increase feline_meow by 1;
		else if T is 4:
			say "closer to your loving pride and longing to stay with them. The four of you clap politely for the musical lion, who smiles and bows before instructing the maids to put his instrument and stand away.";
			decrease humanity of player by 5;
		else:
			say "relaxed and content. The four of you clap politely for the musical lion, who smiles and bows before instructing the maids to put his instrument and stand away.";
	now lastdenevent is turns;


Part 12 - Mid-Coitus

to say leomidcoitus:
	say "     Arriving at the den, you're greeted by the sounds and smells of leonine sex before even entering. It gets you [if cocks of player > 0 and cunts of player > 0]hard and wet[else if cocks of player > 0]hard[else if cunts of player > 0]wet[else]aroused[end if] and you move quickly ";
	if lastleomidcoitus is even:
		say "into the den area to find Leonard with one of his feline girls in his lap and speared upon his throbbing cock. Seeing her bouncing in his lap with her wet juices running down his throbbing manhood as he slides her up and down his pole is quite hot. And from the sounds of it, they're getting close.";
		say "     [one of]'It looks like the Matron's here to join us, kitten?' [or]'It seems we have some company, my little kitty,' [or]'Well, it seems you'll get to see the Matron after all this visit,' [or]'Aren't you a lucky kitty, being here when the Matron comes to visit us,' [in random order]Leonard purrs to the girl in his lap. Her bliss-filled face smiles all the more and she gives a needy mewl. Needing no further invitation, you toss off your gear as quick as you can and move in to join them.";
		if cocks of player > 0 and a random chance of 3 in 5 succeeds:
			say "     Stroking your already stiff erection, you motion for Leonard to switch positions. Draping the lusty lioness across the arm of his chair, he resumes pounding her pussy while you move to her muzzle. Stroking her feline head, you stick your [cock of player] cock into her welcoming mouth. She licks and sucks at your shaft [if cock length of player > 20]as best she can given your impressive size[else if cock length of player > 12]as it stuffs her muzzle full[else]eagerly[end if]. Already having gone at it for a while, it isn't long before Leonard's burying his shaft in the kitten's juicy cunt and offloading his hot seed into her. As he breeds the lioness, she mrowls and grinds back onto his shaft, the scent of her juices growing stronger as well as she cums hard. After the mating's over, Leonard remains inside her, enjoying her quivering cunt while she finishes you off and is rewarded with a tasty treat of your hot semen as well. Leonard quickly sends her on her way, clearly having only eyes for you now. The lioness, thoroughly fucked and sated, is not slighted by this and staggers out into the park with a grin of sexual satisfaction upon her muzzle.";
		else if a random chance of 3 in 5 succeeds:
			say "     The sight of their point of union is too tantalizing to resist and you drop to your knees in front of them. Licking your lips in anticipation, you spread her thighs wider and press your muzzle between her legs. 'Oh, Matron,' she moans as you run your tongue across her dripping folds. You focus your first few licks on the girl's stuffed cunny before expanding your range from Leonard's full balls to her clitoris and everything in between. Already having gone at it for a while, your added stimulation soon sends them over the edge into orgasmic release. You're treated to a front row seat as Leonard buries his pulsing rod deep into her cunt and offloads his virile seed into her. As he breeds the lioness, she mrowls lustfully and her cunt quivers as she orgasms. You eagerly lap up the mix of semen and femmecum leaking from her stuffed pussy, eventually extending her orgasm to another yowling peak before it's over. Sliding her from his lap, Leonard quickly sends her on her way, clearly only having eyes for you now. The lioness, thoroughly fucked and sated, is not slighted by this and staggers out into the park with a grin of sexual satisfaction on her muzzle.";
		else:
			say "     Moving in front of them, you hug the lap-rider to your chest. Instinctively, her muzzle finds its way to your breast and starts suckling[if the player is not felinebodied], restoring your matronly figure[end if]. As your milk begins to flow, she does her best to drink it down, though some dribbles run down your chest as the pace of their mating picks up again. Already having gone at it for a while, it isn't much longer before Leonard reaches his peak and thrusts deep into her with a triumphant growl. She mrowls and wriggles in delight as she's bred by the virile lion. With her climax following at the heels of his, she has to stop nursing while waves of pleasure shudder through her. A mix of her hot juices and lion cum leaks from her stuffed cunny. Once spent, she's released from the lion's lap and quickly sent on her way, Leonard clearly only having eyes for you now. The lioness, thoroughly fucked and sated, is not slighted by this and staggers out into the park with a grin of sexual satisfaction on her muzzle.";
	else:
		say "into the den to find being doted upon by his maids once again. This time, one of them is taking a ride in his lap while the other two [one of]kiss and caress them[or]take turns licking at their master's thrusting member[or]suckle from the lucky girl's breasts[in random order]. Upon seeing you arrive, they all smile happily and one of the maids hurries over to you to service her weary matron.";
		say "     After helping you with your gear and into your chair, she[if the player is not felinebodied] strokes and caresses your body until your matronly figure returns. Smiling at your renewed form, she[end if] kneels between your legs and nuzzles at your crotch. Her paws caress your legs and thighs, gently kneading as she starts licking at your [if cocks of player > 0 and cunts of player > 0]throbbing manhood and dripping puss[yfn][else if cocks of player > 0]throbbing manhood[else if cunts of player > 0]dripping puss[yfn][else]barren but sensitive crotch[end if], arousing you further. You caress the dutiful feline's head while enjoying the show of Leonard bouncing the other maid in his lap.";
		if cocks of player > 0:
			say "     With such an enticing show, it isn't long before you're interested in getting the same. Motioning to the maid, she eagerly moves up into your lap and, after sharing a kiss with her [if cock length of player > 12]well-hung [end if]matron, she eases herself down onto your [cock size desc of player] [cock of player] cock. With her sitting facing you, you get the added fun of playing with her breasts and watching her animalistic expressions of lust and pleasure as you fuck her. You enjoy giving the happy feline a thorough pounding before filling her pussy with your creamy load shortly after Leonard's finished with his servant. When you two are done, the three girls curl up on the floor between you, the third of the trio taking turns eating out the cream-filled pussies of her companions.";
		else if cunts of player > 0:
			say "     With such an enticing show, you can't help but grow more aroused. Urging the maid to continue deeper, she eagerly delves her tongue into your [if cunts of player is 1]cunt and lapping up your juices[else]cunts, swapping between them as she laps up your juices[end if]. Purring softly, you caress her fuzzy ears as her raspy tongue plays across your sensitive folds and licks at your clit[sfn]. And all this while watching the erotic show of Leonard having his way with the maid in his lap. When your leonine mate reaches his climax and pumps a hot load into his horny servant, you are not far behind, cumming with a lustful mrowl as the maid between your legs eats you out. When you two are done, the three girls curl up on the floor between you, the third of the trio taking turns swapping between the cream-filled pussy and the dripping snatch of her companions.";
		else:
			say "     Enjoying the pleasant attention, though unable to quite derive full satisfaction from it, you content yourself with watching Leonard having his way with the feline girl in his lap. He bounces her on his thick pole, pounding into her over and over again until finally climaxing. He pumps a hot load into his horny servant while groping her breasts. When he's done, the three girls curl up on the floor between you, the other two taking turns licking at cream-filled pussy of their companion.";
	if player is felinebodied:
		infect "Feline";
	else:
		felinebodyshift;
	increase libido of player by 6;
	if libido of player > 100, now libido of player is 100;
	increase feline_meow by 1;
	increase lastleomidcoitus by 1;
	now lastdenevent is turns;


[***
	say "     When you enter Leonard's home, you find your mate relaxing in his chair with the three maids lavishing attention upon him. A wave of his paw has the one brushing his beautiful mane step back, allowing him to turn his head and smile at you. 'Ah, my dear mate. You look weary from your travels. Take a seat and enjoy a relaxing foot rub.'  As you continue further into the cave, you can see that the regal lion is receiving a foot rub and tongue grooming from one maid on the floor while the last of them is sucking him off.";
	say "     With the arousing scent of the male in the air and the sexy sight of his humbled rivals serving him, you share in Leonard's smile and sit down, raising one of your feet. The feline with the brush, already moving towards you as you moved to take a seat, kneels in front of you and runs her paws over your leg as she nuzzles your foot. She purrs happily, kissing and licking at your foot before beginning the massage.";
	if the player is not felinebodied:
		say "     The rubbing and licking quickly starts to have an effect on you. With each lick, your foot shifts and changes a little more, soon returning to a leonine paw. As this change starts to creep up your leg, she turns her attention to your other foot, soon remaking it into a lion's paw as well. The transformation progresses up your legs, across your hips and through the rest of your body, restoring much of your matronly form.";
	say "     The obedient maid is thorough in her attention, rubbing at your feline paws to soothe the aches of walking all around the city. You'd come to ignore them, but having them massaged away while the servile girl licks and kisses your foot is both soothing and arousing. The brush of her rough tongue grooming the underside of your foot and between your feline toes is a delight. She seems pleased as well with her task, purring happily at her opportunity to bestow attention upon her loving matron.";
	say "     While you've been enjoying your foot rub, Leonard's has come to an end, the black-haired maid having sucked him off, freeing his cock for the other girl to climb into his lap. As the lion's paws opens the front of her French maid's dress so he can grope her breast, she flips up her skirt and gives you a lovely view of her juicy pussy as it sinks down onto your lover's rod. Watching as his throbbing, leonine cock sinks into her quivering hole, you lick your lips and smile, spreading your legs for the black-haired maid who's now free to service you as well.";
	if cocks of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your erection. Her tongue slides over your balls and up your pulsing rod, the subservient kitty being as thorough in licking your groin as the other is at licking your foot. As she lowers her muzzle down onto your shaft and sucks hard, you moan softly and run your fingers through her dark hair. Her oral attention is very enjoyable, clearly having gotten lots of practice sucking off her new master. Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and cock, it is not long before you cum with a loud rumble of delight, a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt.";
	else if cunts of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your damp thighs. Her tongue slides over your dripping folds and across your pulsing clit, the subservient kitty being as thorough in licking your groin as the other is at licking your foot. As she slides her raspy tongue into your cunt, sending shivers of delight through you, you moan softly and run your fingers through her dark hair. Her oral attention is very enjoyable, clearly having gotten lots of practice with her fellow servants. Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and cunny, it is not long before you cum with a loud rumble of delight, a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt.";
	else:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. She shares a brief kiss and fondling with her before sitting between your legs and nuzzling at your bare groin. She mewls sadly at the disappointing sight of your featureless crotch, but continues to lavish attention upon you, running her raspy tongue across your pubis before drifting upwards. Her paws roam over your leonine body as she licks, nips and kisses at any sensitive spot she can find, doing her best to please her matron. Between the sexy show of Leonard fucking one of his ex-rivals while the other two fawn upon your feet and body, it is a wonderfully pleasurable experience that is capped off by your lover filling the third maid with his cum until it overflows from her stuffed cunt.";
	say "     Their duty done, the trio kiss and caress you both before heading off to snuggle together. The pair who'd been serving you take considerable pleasure in licking the lion's cum from the third girl. Feeling much relaxed and pleased after your enjoyable welcome, you muse that you should consider making use of the servants more often as a means to unwind. But for the moment, you let them go and turn your attention back to your mate, smiling at him and trying to restore your thoughts to the reason you came to see him.";
***]


Section 1 - Park

Part 0 - Core Event

leoparklist is a list of numbers that varies. leoparklist is usually {1, 2, 5, 6, 9}.
leonardwrdesk is a truth state that varies. leonardwrdesk is normally false.
leonardcabinet is a truth state that varies. leonardcabinet is normally false.

PridePark is a situation. PridePark is resolved.
The sarea of PridePark is "Park".

Instead of resolving PridePark:
	if leoparklist is not empty and a random chance of 2 in 5 succeeds:	[unique situations]
		sort leoparklist in random order;
		if entry 1 of leoparklist is 1:
			say "[leoparkscene1]";
		else if entry 1 of leoparklist is 2:
			say "[leoparkscene2]";
		else if entry 1 of leoparklist is 3:
			say "[leoparkscene3]";
		else if entry 1 of leoparklist is 4:
			say "[leoparkscene4]";
		else if entry 1 of leoparklist is 5:
			say "[leoparkscene5]";
		else if entry 1 of leoparklist is 6:
			say "[leoparkscene6]";
		else if entry 1 of leoparklist is 7:
			say "[leoparkscene7]";
		else if entry 1 of leoparklist is 8:
			say "[leoparkscene8]";
		else if entry 1 of leoparklist is 9:
			say "[leoparkscene9]";
	else:		[randomized situations]
		let t be a random number between 1 and 7;
		if T is 1:					[treed kitty]
			say "     As you're travelling along, you hear the plaintive yowl of a feline and come to a stop. Hearing it again, you head quickly in that direction[one of], drawn to it by your matronly urges[or], somehow sensing it to be a member of your pride[or], fearing it to be one of your precious pride kitties[purely at random][one of]. Following a short path,[or]. Pushing through the undergrowth,[or]. Running through the woods,[or]. Going around some flowering bushes,[or]. Heading down a short incline,[or]. Leaping a fallen tree,[in random order] you reach a small clearing where one of the feline girls has gotten herself caught in a tree, having fled from a creature. Spotting you, she [one of]cries out 'Matron!' cheerfully, happy to see you here to rescue her[or]yowls again and clutches the tree even tighter[or]scrambles a little higher and yowls for your help[at random]. Having drawn the creature's attention to you, you prepare to [one of]fight[or]defend your smaller pride sister[or]at least buy her enough time to get away[or]protect your pride member[in random order].";
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having beaten your foe, you welcome the poor, scared kitty into your arms and snuggle with her. She purrs happily and thanks you profusely with make cute kisses";
				if player is felinebodied:
					say ". She nuzzles at your chest and starts nursing, drawing out your feline milk. You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random]. Soon she's calmed down and purring happily in your arms. Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random]. Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				else:
					say ". She nuzzles at your chest and mewls softly, kneading her paws over your [bodytype of player] body, helping to restore your matronly feline body. As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you. You purr soothingly to her that [one of]the pride[or]you[or]your pride[purely at random] [one of]loves her[or]will protect her[or]will keep her safe[or]is where she belongs[purely at random]. Soon she's calmed down and purring happily. Once she's been fed, you put her down and release her back into the park[one of], cautioning her to be more careful[or], giving her rear a soft pat[or] after warning her to be more careful[or] after giving her ears a scritch[or] after giving her a final hug[purely at random]. Feeling better for having helped [one of]the pride[or]your pride[or]Leonard's pride[or]your pride sister[or]the cute lioness[or]the kitty girl[purely at random], you head back on your way.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			if fightoutcome >= 20 and fightoutcome <= 29:
				say "     As you recover from the fight, you look around to see that the feline girl was at least able to get away during the struggle.";
			else if fightoutcome >= 30:
				say "     Taking a moment to make sure that the feline girl has safely come down the tree and is ready to get away, you make a break for it in the other direction, keeping your opponent's attention on you long enough for her to escape.";
		else if T is 2:			[wandering kitty]
			say "     As you walk through the park, you run into another of the cute Feline girls running around. It takes you but a moment to recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random]. You kneel down and open your arms wide for her, welcoming her with a hug and a kiss. She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple. She starts nursing, purring happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a pretty kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes]. You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for another session with Leonard. After she's been fed and her bond with the pride has been renewed, you release her back in the park with a reminder that Leonard would welcome another visit from her soon.";
				infect "Feline";
				increase libido of player by 2;
				decrease humanity of player by 2;
			else:
				say ", kneading her paws over your [bodytype of player] until your matronly figure is restored and she can begin nursing from your milk. She purrs happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a pretty kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes]. You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for another session with Leonard. After she's been fed and her bond with the pride has been renewed, you release her back in the park with a reminder that Leonard would welcome another visit from her soon.";
				felinebodyshift;
				increase libido of player by 2;
				decrease humanity of player by 2;
		else if T is 3:			[wandering kitty 2]
			say "     Travelling through the park, you come across another of the cute Feline girls running around. She comes over to you excitedly when she spots you, calling out to her matron. You recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random]. You kneel down and open your arms wide for her, welcoming her with a hug and a kiss. She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple. She nurses only briefly, moving her head lower to nuzzle between your legs.";
			else:
				say ", kneading her paws over your [bodytype of player] body until your matronly figure is restored and she can begin nursing from your milk. She nurses only briefly, moving her head lower to nuzzle between your legs.";
				felinebodyshift;
			if cocks of player > 0:
				say "     Finding your stiffening member, she wraps her warm lips around it and starts sucking on your [cock of player] shaft, working to get you fully hard[if cock length of player > 20]. Your massive cock stuffs her muzzle and throat fully, the small kitty mewling in pleasure around it as she somehow copes with it[else if cock length of player > 12]. Your big cock stuffs her muzzle fully, the small kitty mewling in pleasure around it as she purrs happily[else]. Your stiff cock throbs in her muzzle as she licks and sucks at it hungrily[end if]. You moan and rub her ears, telling her [one of]what a good and loyal kitty she is[or]what a sexy kitty she is[or]how nice that feels[or]to be sure to do this for Loenard soon[in random order]. Her paws knead at your [ball size] while she works your maleness with her muzzle eagerly. When you finally blow, you shoot your load down her throat, leaving her [if cock width of player > 15]hugely bloated as your ample cum stuffs her small body, leaving her full and purring happily as she curls up for a nap[else if cock width of player > 8]tummy a little plump after you pull out. She snuggles her loving matron tight, licks her lips and heads on her way[else]licking her lips as she releases your spent shaft. She snuggles her loving matron tight and heads on her way, pleased to have run into you[end if].";
			else if cunts of player > 0:
				say "     Finding her way to your juicy pussy, she presses her muzzle to it and starts licking. Her raspy tongue plays slowly over your wet folds, lapping up your juices. You moan and rub her ears, telling her [one of]what a good and loyal kitty she is[or]what a pretty kitty she is[or]how nice that feels[or]to keep licking like a good girl[in random order]. Her paws knead at your thighs, occasionally moving to rub at your clit as she smiles up at you with a wet grin on her muzzle before diving back in. Her tongue delves into you, lapping until you cum with a rumbling moan of ecstasy. She snuggles with you, nursing now as you enjoy the afterglow, before giving you a parting kiss and heading off with a girlish giggle.";
			else:
				say "     Finding her way to your bare groin, she whimpers softly and sets to licking at it over and over again. She kneads her paws at your inner thighs and mewls plaintively. You cuddle her in your arms and let her nurse for a while before she heads off.";
			infect "Feline";
			increase libido of player by 2;
			decrease humanity of player by 2;
		else if T is 4:			[wandering kitty 3]
			say "     While exploring in the park, you are met by [one of]one of the Feline girls from your pride[or]a little lioness from your pride[or]one of Leonard's kitty girls[or]one of your smaller pride sisters[purely at random]. You recognize her [one of]from the inter-pride battle[or]from the recital[or]as being at the den before[or]by the strong scent of Leonard upon her[purely at random] and welcome her into your arms. She purrs happily and snuggles with you, running her paws affectionately across her matron's body. ";
			if player is felinebodied:
				say "     She nuzzles your chest and wraps her lips around your nipple so she might nurse from it while you hold her close. As she does, a paw slides down your side and moves between your legs.";
			else:
				say "     She nuzzles at your chest and kneads her paws over your [bodytype of player] torso until your matronly figure is restored and she can begin nursing upon your breast. You hold her close as her cute muzzle plays with your nipple while her paw slides down between your legs.";
				felinebodyshift;
			if cocks of player > 0 and a random chance of 2 in 5 succeeds:
				say "     Taking your cock in paw, she strokes and caresses it, gradually working you up to full erection while grinning around your leaking nipple. She doesn't let up, continuing to nurse even as you bring her hips over your cock and lower her down onto your [cock size desc of player] [cock of player] penis[if cock length of player > 20]. She gives a soft mewl of discomfort initially as you work to press your impressive manhood into the little feline, but her cunt and belly stretch to accommodate you. From the way she's squirming in delight upon your shaft and purring up a storm, it's clear that the extra effort is well worth it to her[else if cock length of player > 12]. She gives a soft mewl as you work to press your enlarged manhood into the little feline, but her cunt stretched to accommodate you. From the way she's squeezing down around you and purring loudly, it's clear she's enjoying herself as well[else]. She mewls in pleasure as you slide your manhood into the little feline, stuffing that cute cunt of hers. From the way she's squeezing down around you and purring, it's clear she's enjoying herself as well[end if]. Keeping hold of her hips, you gently thrust into the cute kitty, fucking her even as she nurses from you. After she's been well fed and well fucked, you drive your cock deep inside her and cum hard, adding your semen to her already full belly[if cock width of player > 15] until she's so full she's sloshing with fluid[else if cock width of player > 8] to make it visibly plumped with fluid[end if]. You ease her off your shaft and back down onto the ground, letting her head on her way with another hug and a reminder to visit the den again soon.";
			else if cocks of player > 0 and anallevel is 3 and a random chance of 3 in 5 succeeds:
				say "     Taking your cock in paw, she strokes and caresses it, gradually working you up to full erection while grinning around your leaking nipple. She doesn't let up, pausing only briefly in her nursing to shift her hips after you move her into position atop your cock so you end up thrusting into her back door, much to your surprise. She moans loudly as your [cock size desc of player] [cock of player] cock pushes its way into her rectum, a smile of delight upon her little face[if cock length of player > 20] despite the effort involved in taking your impressive manhood into her tight hole[else if cock length of player > 12] despite the effort to taking your enlarged manhood into her tight hole[end if]. Rumbling that she's a  dirty little kitty, she only grins and latches back onto your nipple, suckling with added zeal. Knowing Leonard's lust for breeding his girls, you expect she hasn't gotten to satisfy that kinky itch of hers for a while. Keeping hold of her hips, you gently thrust into the cute kitty, fucking that tight ass of hers while she nurses while purring happily. After she's been well fed and well fucked, you drive your cock deep inside her bottom and cum hard, adding your semen to her already full belly[if cock width of player > 15] until she's so full she's sloshing with fluid[else if cock width of player > 8] to make it visibly plumped with fluid[end if]. You ease her off your shaft and back down onto the ground, giving her messy asshole a teasing fingering as you give her another hug and a reminder to visit the den again soon.";
			else if cocks of player > 0:
				say "     Taking your cock in paw, she strokes and caresses it, gradually working you up to full erection while grinning around your leaking nipple. She doesn't let up, working to stroke you off even as she drinks down your milk. Her soft paw works up and down your [cock size desc of player] [cock of player] cock to please you while she feeds. You stroke and caress the cute kitty, rumbling happily as she jerks you off. And from the soft purring and the way she grinds her pussy against your thigh, you can tell she's enjoying herself as well. After getting well fed on your milk, she speeds up her stroking and gets you to cum, splattering your seed all over her cute body. Rubbing her milk-filled tummy (and working your semen into her fur), you give her another hug and a reminder to visit the den again soon.";
			else if cunts of player > 0:
				say "     Placing her paw on your pussy, she strokes and caresses it, gradually working you up to dripping arousal while grinning around your leaking nipple. She doesn't let up, working to finger your even as she drinks down your milk. Her soft paw works at the juicy folds of your [cunt size desc of player] cunt while pumping a pair of fingers into you. You stroke and caress the cute kitty, rumbling happily as she teases your clit. And from the soft purring and the way she grinds her pussy against your thigh, you can tell she's enjoying herself as well. After getting well fed on your milk, she speeds up her stroking and drives you to orgasm, soaking both her paw and your crotch with your female cum. Rubbing her milk-filled tummy while she licks her fingers clean, you give her another hug and a reminder to visit the den again soon.";
			else:
				say "     Finding your groin bare, she mewls softly in disappointment, but doesn't let up. She gently caresses your inner thighs and featureless mound, sending warm tingles of pleasure through you. While it's not enough for orgasm, it is quite enjoyable and sends shivers of delight through you as she nurses. She purrs as well, grinding her pussy against your thigh. After getting well fed on your milk, she releases your nipple speeds up her hips, mewling softly as she orgasms. Rubbing her milk-filled tummy and juicy pussy, you give her another hug and a reminder to visit the den again soon.";
			infect "Feline";
			increase libido of player by 2;
			decrease humanity of player by 2;
		else if T is 5:			[injured kitty]
			say "     As you travel through the park, you come across another of the cute Feline girls. She's been hurt and is nursing an injured [one of]footpaw[or]side[or]head[or]shoulder[or]arm[or]leg[purely at random]. It takes you but a moment to recognize her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recalling her helping with the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random]. She mewls plaintively as you approach, smiling softly at the sight of her matron coming to her aid.";
			if medkit is owned or healing booster is owned:
				if medkit is owned:
					let medloss be 0;
					if ( "Expert Medic" is not listed in feats of player and a random chance of 1 in 10 succeeds ) or ( "Expert Medic" is listed in feats of player and a random chance of 8 in 100 succeeds ):
						let medloss be 1;
						delete medkit;
					say "     Your matronly desire to protect your pride girls kicks in and you don't hesitate to help. Remembering your medkit, you pull it out and start to patch her up. She winces and mewls softly as you get her bandaged up and give her some meds from the kit[if medloss is 1]. This uses up the last of that medkit, but you feel no regrets over that at the moment[end if]. She snuggles up to you, giving you several kisses in thanks. You guide her muzzle down to your chest ";
				else if healing booster is owned:
					delete healing booster;
					say "     Your matronly desire to protect your pride girls kicks in and you don't hesitate to help. Recalling the healing booster you have, you pull it out and inject it close to her wound. She winces and mewls, but starts to purr as the medicine starts to take effect. She snuggles up to you, giving you several kisses in thanks. You guide her muzzle down to your chest ";
				if player is felinebodied:
					say "so she may nurse for your feline milk to help her recover faster. As she suckles your milk, you [one of]purr to her that you and Leonard will love and protect her[or]purr to her that her pride will take care of her[or]remind her to be more careful[or]purr that the pride will protect her[or]purr to her to continue doing her best for the pride[purely at random]. Once she's had a chance to feed and heal, you release her back into the park with a pat on her bottom. You feel a little better for having helped your pride.";
					increase morale of player by 1;
					infect "Feline";
					increase libido of player by 2;
					decrease humanity of player by 2;
				else:
					say "which quickly shifts back to its leonine pride mother form, allowing the weak kitty to nurse from you to help her recover faster. As she suckles your milk, you [one of]purr to her that you and Leonard will love and protect her[or]purr to her that her pride will take care of her[or]remind her to be more careful[or]purr that the pride will protect her[or]purr to her to continue doing her best for the pride[purely at random]. Once she's had a chance to feed and heal, you release her back into the park with a pat on her bottom. You feel a little better for having helped your pride.";
					increase morale of player by 1;
					felinebodyshift;
					increase libido of player by 2;
					decrease humanity of player by 2;
			else:
				if Feline_attached is 0:
					if player is felinebodied:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest. She clings to you weakly and nuzzles at your chest and starts to nurse from your bosom, suckling your milk. You make your way quickly back to Leonard's den. The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her. Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of]. He thanks you for helping the poor girl get back here[or]. He reassures you that the maids can take care of the girl from here[or]. He tells you how relieved her is that you're safe[purely at random][one of]. He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or]. He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or]. He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or]. He gives you a tender kiss and tells you how lucky the pride is to have you[at random]. You and Leonard snuggle together in his large chair, smiling when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						infect "Feline";
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
					else:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest. She clings to you weakly and nuzzles at your chest, kneading her paws over it. As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat. You make your way quickly back to Leonard's den. The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her. Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of]. He thanks you for helping the poor girl get back here[or]. He reassures you that the maids can take care of the girl from here[or]. He tells you how relieved her is that you're safe[purely at random][one of]. He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or]. He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or]. He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or]. He gives you a tender kiss and tells you how lucky the pride is to have you[at random]. You and Leonard snuggle together in his large chair, smiling when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						felinebodyshift;
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
				else:
					if player is felinebodied:
						say "     Having any proper means to help her here, lower the feline girl currently at your chest to the ground and lift up the other in her stead. Surprisingly, the wild feline makes no objection, instead clinging to you with a paw in your hand. Your injured charge nuzzles at your chest, kneading her paws over it. As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat. You make your way quickly back to Leonard's den with the wild girl following quietly at your side. The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her. Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of]. He thanks you for helping the poor girl get back here[or]. He reassures you that the maids can take care of the girl from here[or]. He tells you how relieved her is that you're safe[purely at random][one of]. He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or]. He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or]. He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or]. He gives you a tender kiss and tells you how lucky the pride is to have you[at random]. You and Leonard snuggle together in his large chair with the wild feline nursing from your chest once more. You all smile when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						infect "Feline";
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
					else:
						say "     Having any proper means to help her here, you lift the feline girl carefully into your arms, cradling her to your chest. She clings to you weakly and nuzzles at your chest, kneading her paws over it. As your matronly feline body returns, the injured kitty starts to nurse, the milk soothing her somewhat. You make your way quickly back to Leonard's den. The maids, noticing you first, exclaim in surprise and rush over, soon taking the injured feline from your care so they may tend to her. Leonard, drawn by the commotion, checks to make sure that you are alright before hugging you tightly to his chest[one of]. He thanks you for helping the poor girl get back here[or]. He reassures you that the maids can take care of the girl from here[or]. He tells you how relieved her is that you're safe[purely at random][one of]. He snuggles you close, purring softly to you and giving you several kisses while stroking your sexy rear[or]. He gives you a passionate kiss and holds you tight, telling you again what a fine mate you are[or]. He runs a paw along your feline body and rumbles again about what a matron you've become for the pride[or]. He gives you a tender kiss and tells you how lucky the pride is to have you[at random]. You and Leonard snuggle together in his large chair with the wild feline nursing from your chest once more. You all smile when the maids return later to tell you that the girl has been patched up and is resting comfortably.";
						felinebodyshift;
						increase libido of player by 2;
						decrease humanity of player by 2;
						increase lastfuck of Leonard by 1;
				WaitLineBreak;
				move player to Lion's Den;
				now battleground is "void";
		else if T is 6:			[workgroup on patrol]
			say "     While [one of]walking along the path[or]searching through the woods[or]pausing at a children's play area[or]pushing through the underbrush[or]stopping at one of the barbecue pits[purely at random], you're met by your work group as they're out on a patrol[one of][or], keeping an eye out for troublemakers[or], helping to protect the other girls in the pride[or], dealing with stray felines from the broken prides[or] between errands for Leonard[as decreasingly likely outcomes]. [one of]Pleased to see their matron[or]Happy to see you[or]Mewling happily[purely at random], the four of them come up to you and snuggle you tightly. Much kissing and groping ensues between you all as [one of]you snuggle with the friendly felines[or]you let your pride favourites nurse from you[or]you pet the lovely kitties[or]the lovely kitties pile atop their dear matron[purely at random]";
			if cocks of player > 0:
				if a random chance of 1 in 3 succeeds:
					say ". After they fondle your [cock of player] cock to erection, you pull Raven, the dark-haired girl, into your lap and fuck her while she nurses. You purr lovingly to her, telling her how pleased you are with her for watching out for your other special girls. Not neglecting them, you make sure to give plenty of attention to the other girls as well";
				else:
					say ". Fondling your [cock of player] cock to erection, they take turns licking it before playing [randomgame] to decide who gets to [one of]ride[or]suck[or]play with[as decreasingly likely outcomes] it. Regardless of the winner, you make sure to give them all plenty of attention, especially clever Raven, the black-haired one, who's been leading the group in your stead";
			else:
				if a random chance of 1 in 3 succeeds:
					say ". You push Raven, the black-haired girl, onto her back and bury your face between her legs. You lick and lap at her pussy, making her moan and mewl in ecstasy. Wanting to thank her for [one of]keeping an eye on your favourite girls[or]leading the small band in your stead[or]taking care of your personal favourites[or]helping out with your personal girls[purely at random], you [one of]fellate her[or]eat her out[or]lick her pussy[purely at random] until she cums repeatedly";
				else:
					say ". You push one of the girls onto her back and bury your face between her legs. You lick and lap at her pussy, making her moan and mewl in ecstasy. You lavish attention upon the lucky girl, [one of]fellating her[or]eating her out[or]licking her pussy[purely at random] until she cums repeatedly";
			if cunts of player > 0:
				say ". Your pussy gets fingered and licked by the loving girls while you finger a pair of them in return. It's a delight for you to hear their mewls of pleasure as you get them off and they help the other two get off as well.";
			else:
				say ". You finger one of the girls with each hand, pumping fingers into their juicy cunts until they come. It's a delight for you to hear their mewls of pleasure as you get them off and they help the other two get off as well.";
			say "     Once your fun is all done, you give them parting kisses and hugs, letting them get back to their duties. Your encounter with them has lifted your spirits and makes you feel closer to your pride.";
			felinebodyshift;
			infect "Feline";
			decrease humanity of player by 3;
			increase morale of player by 1;
			if morale of player < 0, increase morale of player by 2;
		else if T is 7:			[kitty w/small gift/supplies]
			if a random chance of 1 in 2 succeeds:
				say "     In your travels through the park, you run into another of the cute feline girls. Spotting you, she smiles and comes over [one of]quickly[or]excitedly[or]carefully[at random] with some small item in her paws. Recognizing her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random], you smile as she approaches. She comes up to you and offers to show you what she's found, [one of]a piece of fine china[or]a bottle of aged [spiritlist][or]an old book[or]a golden trinket[or]a collection of spices[at random] that has been carefully bundled up.";
				say "     Telling her that you're certain Leonard will be pleased with it, you welcome her into your arms with a hug and a kiss. She snuggles up to you and is soon nuzzling at your chest";
			else:
				say "     In your travels through the park, you run into another of the cute feline girls. Spotting you, she smiles and comes over [one of]quickly[or]excitedly[at random] with a full bag in her arms. Recognizing her as [one of]one of Leonard's pride[or]one of your smaller pride sisters[or]a member of your pride[or]a member of the pride[purely at random], [one of]remembering her from the battle[or]recognizing her from the recital[or]having seen her in the den before[or]catching Leonard's scent upon her[purely at random], you smile as she approaches. She comes up to you, saying she's collected some supplies for [one of]her master[or]Leonard[or]her leonine master[at random], showing you some ";
				let sup be a random number between 1 and 4;
				if sup is 1 or sup is 2:
					say "[one of]assorted cans[or]canned meat[or]mixed fruit[or]assorted food[at random] in the bag. She gives you some with a smile, but says they'll need the rest back at the den.";
					increase carried of food by 1;
					increase score by 5;
				else if sup is 3:
					say "bottles of fresh water in the bag. She gives you a bottle with a smile, but says they'll need the rest back at the den.";
					increase carried of water bottle by 1;
					increase score by 5;
				else:
					say "cans of soda in the bag. She gives you a can with a smile, but says they'll need the rest back at the den.";
					increase carried of soda by 1;
					increase score by 5;
				say "     You smile at her and rub her head, giving her ears a scritch, telling her what a good kitty she is to share. You welcome her into your arms with a hug and a kiss. She snuggles up to you and is soon nuzzling at your chest";
			if player is felinebodied:
				say " and wrapping her lips around your nipple. She nurses, purring happily as she does while you rumble to her [one of]about what an good and loyal kitty she is[or]about what a resourceful kitty she is[or]how kind she is to have gotten a gift for her master[or]about how much her pride cares for her[as decreasingly likely outcomes]. You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for her upcoming session with Leonard. After she's been fed and she's too excited to wait any longer, you release her back in the park, sending her hurrying on her way back to her master with her gift.";
				infect "Feline";
				increase libido of player by 2;
				decrease humanity of player by 2;
			else:
				say ", kneading her paws over your [bodytype of player] until your matronly figure is restored and she can begin nursing from your milk. She purrs happily as she does while you rumble to her [one of]about what a good and loyal kitty she is[or]about what a resourceful kitty she is[or]that you and Leonard love her[or]about how much her pride cares for her[as decreasingly likely outcomes]. You pet her lovely, leonine body, patting her bottom and fingering her pussy to get her worked up for her upcoming session with Leonard. After she's been fed and she's too excited to wait any longer, you release her back in the park, sending her hurrying on her way back to her master with her gift.";
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
	say "     As you're travelling through the park, you receive a pleasant surprise as you come across Leonard walking in the park. He smiles to you and welcomes you into his arms, kissing his mate lovingly. 'I decided to take a short walk in the park to [if daytimer is day]take in the pleasant sights. And I am treated by the most pleasant sight of all[else]stretch my legs and get some fresh air. And I am treated to the refreshing sight of my lovely mate[end if],' he purrs, stroking his paw over your face. 'Come, let us walk together, my dear,' he says, offering his arm to you like the refined gentleman he is.";
	say "     You partake in an enjoyable walk with the lion as he talks with you about the pride and how things in the park have been changing. It's clear he's out for more than just to stretch his legs, but is also checking up on the state of things in the area. While he's quelled his primary opponents, things are still very unsettled in the park and other males are still prowling around. But it is not all business either, as he enjoys the natural beauty, smells the flowers and happily greats those other pride kitties he encounters. A few of them stop to nurse from you[if the player is not felinebodied], helping to restore your matronly figure, [end if]but they don't linger long, leaving their master and matron to enjoy their pleasant walk together. It is a very enjoyable and relaxing time for you, as none willing to oppose the two leaders of the most powerful pride in the park. Eventually, the meandering steers back to lion's den and you join him inside.";
	if the player is not felinebodied:
		felinebodyshift;
	else:
		infect "Feline";
	now lastfuck of leonard is turns + 8;
	remove 1 from leoparklist;
[	add 7 to leoparklist;		[opens next walk]		]
	now battleground is "void";
	move player to Lion's Den;


Part 2 - Special Park Pride 2 - Cabinet

to say leoparkscene2:
	say "     While travelling through the park, you hear an odd sound coming from nearby. Heading cautiously towards the intermittent scraping sound, you spot one of the feline girls sniffling and grunting as she struggles to drag a large cabinet. You're quite surprised to see her trying to drag the finely crafted cabinet all on her own given that it's bigger than she is. Seeing that she's exhausted and on the verge of tears, you rush over to join her. Spotting you, she stops trying to shuffle it past a rock and rushes into your arms. After nursing for a little while to soothe her[if the player is not felinebodied] and restore your matronly figure[end if], you scritch her ears and ask her why she's struggling with the furniture.";
	felinebodyshift;
	say "     'Master Leonard had mentioned that something nicer than the bookshelf was needed for his kitchen if he was going to be able to entertain guests. I'd been looking for a good one for soooo long and this one would fit just right in that open spot and everything. I was so happy when I found this one and I was bringing it back. I had a cart and a blanket to cover it and straps and everything, matron,' she insists. 'But then -sniff- that coyote that's always hanging around spotted me and he was mean and hit me and he took my cart and all the rest of it. He said he needed it for some -sniff- stupid prank and then I was stuck and I couldn't leave the cabinet to find another cart and it was -sniff- supposed to be a surprise and another girl could've gotten it or...'";
	WaitLineBreak;
	say "     By this point, her narrative starts to break down as the tears struggle to return, so you cuddle her in your arms and tell her that you'll help her bring it back to the cave. She smiles up at you and hugs you very tightly, thanking you repeatedly between kisses.";
	say "     After some more playful snuggling, you head over to the cabinet and look it over. It's an older style with round glass windows built into the upper half and several drawers below that. While it's not as large as others you've seen, it will fit much better into the limited space of Leonard's cave. And while you may not be that knowledgeable of such things, it certainly looks like a well-made and older collector's piece. It is fairly heavy and you're impressed that the smaller girl was able to drag it so far, a testament to her determination to please the handsome lion.";
	say "     With your help and a few more breaks along the way, the cabinet arrives safely at Leonard's cave. You allow the feline girl to present it to Leonard, who seems quite pleased with her acquisition and quickly has the maids move it into position[if leonardcaraway is true] under the direction of Leonard's chef, Caraway[end if]. As she'd said, it fits nicely into one side of the kitchen area, freeing that bookshelf to join the others in the sitting room area.";
	WaitLineBreak;
	say "     You hang back during the installation, letting the kitty take the spotlight for her find, but when Leonard's ushers her off to receive her reward, she insists that you come as well. You join them on the bed just as she's helping Leonard out of his suit coat. Spotting the lion's stiff member, you take it in your paw and stroke it while giving him a kiss.";
	say "     He cuddles the hard-working girl close and lickgrooms between her legs, running his tongue over her pussy and getting her to moan in delight. His tongue then moves upwards across her breasts. He rumbles and purrrs to her about what a good, obedient girl she is and compliments her on her determination. As he lifts her up into his arms, you hold his cock in position. You watch closely as he lowers her down onto his stiff cock, seeing her wet folds spread for her handsome lover's glans before sliding down onto his maleness. She mrowls in delight and wraps her arms around him, purring and mewling in delight as he bounces her in his lap, fucking her.";
	say "     You snuggle up behind her and purr to her about what a good and loyal kitty she is and how she never gave up in her goal to please her master. You lick her ears and rub your fingers at her wet folds, pressing them around Leonard's thrusting shaft. Feeling it pumping inside her, you long to have it inside you again, but you know that this is her special time with Leonard and you're determined to make it even better for her by stroking and fingering the kitty through several smaller orgasms and a change of position to lying atop you so she can nurse from your bosom while being fucked. She comes to a loud and powerful orgasm that soaks your paw as the lion finally cums and pumps her small belly full of his seed. Left with a rounded tummy from the lion's output, she purrs happily as her mate and her matron snuggle up on either side of her for a much-needed catnap.";
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
		say "     You hear a plaintive yowl in the distance and your matronly instincts kick in before you even know what's happening. You move as quickly as you can towards the sound. You soon arrive at a pair of wolves who have one of the feline girls pinned and are getting ready to ravage her. Hearing you charging, one remains to deal with their prisoner while the other turns to confront you with a growl.";
		challenge "Painted Wolf Herm";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having dealt with the first of them, you approach the second. Shi's managed to get the feline girl partially tied up in the time you've been occupied and turns to deal with you so shi can enjoy hir prize.";
			challenge "Painted Wolf Herm";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having defeated the second of the wolves, you head over to the kitty girl and free her from her bondage. She hugs herself tightly to you and kisses you repeatedly as she thanks you for saving her";
				if player is felinebodied:
					say ". Nuzzling at your chest, she starts nursing, drawing out your feline milk. You purr soothingly to her that the pride will protect her. Soon she's calmed down and purring happily in your arms. Once she's been fed, you put her down and turn your attention towards the fallen wolves.";
				else:
					say ". Nuzzling at your chest, she mewls softly and kneads her paws over your [bodytype of player] body, helping to restore your matronly feline body. As your feline bosom returns, she wraps her lips around a nipple and starts to nurse milk from you. You purr soothingly to her that the pride will protect her. Soon she's calmed down and purring happily. Once she's been fed, you put her down and turn your attention towards the fallen wolves.";
				say "     With your matronly instincts running strong, you head towards the pair of would-be assailants. The two wolves, still dazed after their defeat, can only struggle weakly as you and the feline girl press them to your bosom. With their muzzles pressed to your nipples, your still-flowing milk dribbles across their lips and soon they start suckling for more. You purr softly to them about how they should calm down and that they should submit like good kitties. At first, they growl a little at these words, but don't stop nursing.";
				say "     The kitty girl, meanwhile, is snuggled between them, stroking their backs. At your prompting, she purrs to them about how she'd welcome them as her sisters. They were just being too rough before, you tell them. If they were good, submissive kitties, they'd all get along so much better. To emphasize this, the kitty slides her paws under them, groping them to draw soft moans.";
				say "     As this treatment progresses, the wolves start to change, becoming smaller and more feminine. There ears turn more feline in shape and their muzzles a little shorter. While still rather lupine by the time it's done, they do have some leonine traits starting to show. Grinning happily at this trio, you give the kitty girl a kiss and a fondle. Dazed from their meal of matronly milk, the other two listen obediently as you tell them to follow the kitty girl back to Leonard's cave where he can help them become proper sisters for their lovely kitty friend. You can't help but grin happily as you watch them go.";
				increase morale of player by 1;
				increase libido of player by 3;
				decrease humanity of player by 3;
		if fightoutcome >= 20 and fightoutcome <= 29:
			say "     Defeated, you are pushed to the ground beside the bound feline girl. The wolves then proceed to mount you both repeatedly, taking turns with each of you. Because you'd tried to keep them from their prize, they are rough and don't hold back, pounding away at you as you moan beneath them. By the time they are done, you are leaking wolf cum from every orifice. Too weak to struggle, you can only watch as they head off with the considerably transformed feline girl. Changing much more dramatically than you, she's well on her way to being a herm wolf herself and has been lost to the pride.[impregchance]";
			decrease morale of player by 3;
			infect "Painted Wolf Herm";
		else if fightoutcome >= 30:
			say "     Forced to flee, you must abandon the feline girl to her lupine fate. It saddens you to lose a member of the pride.";
			decrease morale of player by 3;
	else:
		say "     You come across the signs of a struggle and a few scattered tufts of feline fur and the musky scent of lupine sex. It seems that one of the feline girls was captured and mated here. From the way her paw prints change, it seems she was fucked and transformed into a wolf by her assailants. You are saddened by this, but know there's little you can do about it at this point.";
	remove 5 from leoparklist;


Part 6 - Special Park Pride 6 - Work Group Fight

to say leoparkscene6:
	say "     While following a wooded path, you hear the sounds of fighting breaking out up ahead. At first, you prepare to turn around and find another route, but the angry growls and snarls of felines changes your mind. Advancing quickly, you find your work group in the midst of a pitched battle with a [if hermaphrodite is not banned]painted wolf[else]bear woman[end if]. The girls seem to be faring quite well and fighting as a unit with the black-haired Raven leading the charge. While it's pretty clear they'll prevail, you rush to their aid rather than risk one of them getting hurt unnecessarily. Seeing you join the fight, the creature makes a hasty retreat. The girls let it go rather than pursue it, instead turning their attention to snuggling their matron.";
	say "     Another feline, the [if hermaphrodite is not banned]wolf[else]bear[end if][']s original opponent, comes out of hiding and purrs happily as she kisses all of her rescuers. You end up spending an enjoyable break with the lovely felines, letting them all nurse from you[if player is not felinebodied], restoring your feline form[end if] before advancing to some more sexual play. Your impromptu orgy with the female felines involves a lot of licking, kissing and fingering of their juicy pussies[if cocks of player > 0]. Your original trio of girls take turns licking and sucking at your cock until you're hard. You then alternate between fucking Raven and the girl they'd been rescuing. You finish by cumming hard into the feline pride member with the work group pairing off with one set licking and sucking you clean with the other two take turns licking the cum from the seeded girl's pussy[else if cunts of player > 0]. The horny felines switch partners several times, sharing their love for their pride mates. They eventually finish up with a pair from the work group taking turns at your pussy with the other two doing the same to the girl they rescued[end if]. Once everyone's had another powerful orgasm, you all snuggle up together in a warm bundle of fur and love on the grass, taking a nap. After some kisses and snuggling when you awaken, the snuggle pile breaks up with the work group returning to their patrolling and the feline girl getting back to her assigned duties.";
	if player is not felinebodied:
		felinebodyshift;
		infect "Feline";
	else:
		infect "Feline";
		infect "Feline";
	remove 6 from leoparklist;
	now battleground is "void";
	rest;

Part 7 - Special Park Pride 7 - Walk #2

to say leoparkscene7:
	say "     Travelling through the park, you are surprised to come across Leonard on another excursion from the den. He smiles to you and welcomes you into his arms, kissing his mate lovingly. '[if daytimer is day]I have the maids cleaning up a storm in the den, so I am leaving them to it while I get some fresh air[else]I decided to come out and enjoy a walk in the brisk night air. You can see the stars so much better these days[end if],' he says, offering you his arm to join him in his walk. You smile and take it, wandering the park with your gentlemanly lover for a time.";
	say "     As before, the walk is a mix of business and pleasure, the lion enjoying the scenery and company, but also checking up on the state of things in the park. When others from the pride are met, he checks with them for what news they can give. Most of them aren't very mindful of things outside their own needs and lusts. But even then, Leonard is at least able to glean some news on how often they're seeing the other denizens of the park, helping to give you both a rough idea of the size of those groups and what they're up to. After answering his questions, they are all treated to an opportunity to nurse from you[if the player is not felinebodied], helping to restore your matronly figure[end if]. They don't tarry long, leaving their master and matron to enjoy their walk together. It is both an enjoyable and informative time for you with your mate and the girls. Eventually, the meandering steers back to lion's den and you join him inside.";
	if the player is not felinebodied:
		felinebodyshift;
	else:
		infect "Feline";
	now lastfuck of leonard is turns + 8;
	now battleground is "void";
	move player to Lion's Den;
	remove 7 from leoparklist;
[	add 10 to leoparklist;		[opens next walk]	]


Part 8 - Special Park Pride 8 - Infected Kitty #2

to say leoparkscene8:
	say "***Special 8.";
	remove 8 from leoparklist;


Part 9 - Special Park Pride 9 - Writing Desk

to say leoparkscene9:
	now tempnum is 0;
	say "     You are surprised as your path through the park is cut off by a large writing desk carried jointly by your work group. When you call out to them, they put their heavy load down and rush into your arms, snuggling and kissing you. They purr and snuggle with you running their paws over your [bodydesc of player] body[if the player is not felinebodied], working to restore the sexy figure of their matron[end if]. Raven, seeming rather grumpy, is pushed to the front and allowed to nurse from your bosom, which does much to lift her spirits. As she's suckling your milk, you stroke her dark hair and ask the others about what's going on.";
	if player is not felinebodied:
		felinebodyshift;
		now tempnum is 1;
	say "     'Master Leonard had mentioned that a writing desk would be handy for writing letters and his memoires. Since it was a big job, he entrusted it to us,' Jasmine says with obvious pride. 'It took us a while to find a really good one, but Raven talked to a pretty butterfly girl who told us where to find this one. It's just been a lot of work to bring it all this way and we're getting really tired.'";
	say "     'But we're almost there,' Raven adds with a smile, her mood much improved after her refreshing drink of matron milk.";
	say "     When you offer to help them take it the rest of the way, you are immediately buried underneath a pile of grateful kitties. They kiss, snuggle and grope you lovingly for several minutes, during which they all get to take a drink of your milk, before it's decided to get back to work. The writing desk is quite large and is considerably taller than the girls trying to carry it. It's an older style with the narrow build and a door that lowers to become the writing area as well as a shelving section above it. While not as ostentatious as big office desks can be, it will fit much better into the limited space of Leonard's cave. And while you may not be that knowledgeable of such things, it certainly looks like a well-made and older collector's piece. It is made of solid wood and is quite heavy, making it clear how much work the girls have been putting into this gift for their leonine mate and master.";
	WaitLineBreak;
	say "     Carrying the desk on its back, you hold the middle of the heavier lower end and a girl takes each corner. Once you've gotten moving, Yarrow (on your right) turns to you. 'Matron, I've got a riddle for you. Why is a raven like a writing desk?'";
	say "     'Argh!' Raven growls from the front and the girl on your right laughs merrily. Dahlia (to your left) explains that she's been asking that riddle about a dozen times since they started. They're clearly just having some teasing fun and even the black-haired lioness has a bit of a smile.";
	say "     'Well, do you know why a raven is like writing desk?' the girl asks again.";
	say "     Deciding to turn the tables on her, you smile and nod. 'I do, my sweet kitty. A raven is like a writing desk because they'll both hurt really, really hard when they hit you upside the head and I'm pretty sure one of them will really soon if you don't stop teasing poor Raven - though I can't be sure which it'll be.'  The others start giggling, which breaks out into full laughter as Raven gives Yarrow a dark, toothy grin.";
	say "     Your added help and companionship keep the girls in good spirits and help them get the writing desk back to the tunnel den without the need for another break. Leonard happily greets you all, having heard your laughing as you approached. He's quite pleased with the great find, being very complimentary of its craftsmanship and at the amount of work the girls clearly went through to bring it to him. He gives all the girls hugs and kisses while the maids get it put into place. It gets fitted nicely to one side of the tunnel and, with some proper propping up, is made to sit level. The Chippendale chair is placed in front of it, giving Leonard a proper writing space.";
	WaitLineBreak;
	say "     You let the girls snuggle up to Leonard during the installation, but follow along with Leonard afterwards as he escorts them towards the plush bed. It seems Leonard would enjoy your assistance in ensuring all four girls are properly rewarded for their efforts, something you're more than happy to help him with. With Jasmine and Dahlia in your arms, you watch as Raven and Yarrow lick and kiss at the lion's cock. There's no sign of discord despite the earlier teasing, showing how close they've all become. The dark-haired girl even moves back to lick at her friend's pussy while Yarrow sucks the lion off.";
	if cocks of player > 0 and cunts of player > 0:
		say "     Meanwhile, you have two girls of your own to tend to. They nurse from your bosom side by side while fingering your pussy and stroking your cock. After their drink, they give you a cute mewl and several kisses before Jasmine climbs into your lap and down onto your cock. Dahlia nuzzles under her tail and licks at her juicy pussy and your thrusting cock. Looking over, you spot the others in a similar position with Raven getting a ride on Leonard's throbbing manhood while Yarrow returns the favour by licking Raven's stuffed snatch. The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	else if cocks of player > 0:
		say "     Meanwhile, you have two girls of your own to tend to. They nurse from your bosom side by side while stroking your cock. After their drink, they give you a cute mewl and several kisses before Jasmine climbs into your lap and down onto your cock. Dahlia nuzzles under her tail and licks at her juicy pussy and your thrusting cock. Looking over, you spot the others in a similar position with Raven getting a ride on Leonard's throbbing manhood while Yarrow returns the favour by licking Raven's stuffed snatch. The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	else:
		say "     Meanwhile, you have two girls of your own to tend to. They nurse from your bosom side by side while fingering your pussy. They do this together, a pair of fingers from each of them stuffed into you and moving together to send shivers of delight through your body. After their drink, they give you a cute mewl and several kisses before you push them onto their backs. You bury your face between Jasmine's legs and start licking at her pussy with you finger Dahlia. A quick glance over shows that Raven's now in Leonard's lap, riding his cock while Yarrow returns the favour by licking at her stuffed snatch.";
		say "     After getting Jasmine to cum, you switch your mouth to Dahlia's pussy and finger Jasmine. The girls kiss one another while watching Leonard fuck the other two. Once he's done with them, the pairs switch so Leonard may breed them all while you lick and finger the others to another climax. The six of you have a long and enjoyable orgy together, lavishing attention upon the girls for their hard work and making sure they're all amply rewarded by you both before it eventually winds down into a pile of warm kitties snuggling together for a nap.";
	if tempnum is 0:
		infect "Feline";
		infect "Feline";
	else:
		infect "Feline";
	now lastfuck of leonard is turns;
	now battleground is "void";
	remove 9 from leoparklist;
	now leonardwrdesk is true;
	move player to Lion's Den;


Part 10 - Special Park Pride 10 - Walk #3

to say leoparkscene10:
	say "***Special 10.";
	remove 10 from leoparklist;


Part 11 - Shadow 2

to say leoparkscene11:
	let tempnum be 0;
	say "     While going along a wooded path, you are surprised to see Shadow pop out from around a tree. This feline girl, Leonard's snoop, is wearing her usual fedora and kitty-sized trenchcoat. 'Hey, boss-lady... uh... Matron,' she whispers, nervously glancing back behind her. She seems quite on edge compared to her usual self.";
	say "     When you ask her what's wrong, she glances back again. Looking that way, you can see another feline girl waiting deeper in the trees. The lioness is in quite a bad state herself, looking rather battered and dishevelled. 'Nothin's wrong. Just need a little assist from you. I got a new recruit for...' she starts to say, but you give her a stern glare. 'Okay, look - it's not a big deal, but you've got to keep it from the boss-cat, is all. Promise?' she asks, giving you the cute kitty eyes and everything, surely one of the many tools in her spy arsenal and definitely an effective one. You agree, but only as long as it doesn't cause trouble down the line.";
	WaitLineBreak;
	say "     'Strictly speakin['], I'm not supposed to be doin['] it, but I've started keepin['] a few contacts in the other prides ever since that big dust-up we had. Just a girl or two at the periphery of the lion's circle of mates. No one they notice often and so are a little needier for some companionship. I pose as a prideless stray, [']bump into['] them from time to time and get a little info out during the pillow talk afterwards. Most of [']em don't know much, but it's enough to hear what inter-pride rivalries are on the go.'";
	say "     'And that girl...?' you start to ask, leaving it hanging.";
	say "     'Yeah, she's one of [']em. My cover's not blown or nothin[']; it's just that she's in a bad situation. Her male's been treatin['] her quite beastly for a while and it's only gettin['] worse. You see, she's... well, there's been no kittens.'  It all suddenly falls into place for you and you try your best to hide your realization behind righteous anger as Shadow continues. 'I just found out when I went to see her again. And since Leonard was able to find a place fo... I mean, he's been such a good master to us all, I know he'd be good to her even if she can't...'  Shadow's voice goes soft and her lip quivers, but then she presses on. 'So I just need you to welcome her into the pride and be the one to bring her to the boss-cat to finish the job. Let him know about her [']problem['], so there's no surprises. Just keep my part in this between you and me.'";
	WaitLineBreak;
	say "     Knowing full well how much this must mean to the little spy given her own sterility, you nod and agree to her plan. 'Great,' Shadow says, smiling broadly. 'Okay, let's go see her. She's really edgy though and doesn't know quite who we were going to meet up with. I only told her it was a friend of mine, so let me calm her down, boss-lady.'  You let Shadow go ahead and she embraces the other girl, who becomes less agitated as they talk. As you see Shadow's paws drift to more intimate touches, you come closer.";
	say "     '...fun with my friend, like I said. You'll feel so much better,' she purrs to her, her voice smoother and more sensual than her mannerisms while playing the reporting snoop. As you emerge fully from behind the branches and she sees you, the wounded girl gives a little gasp [if player is felinebodied]at your matronly figure[else]at your non-Feline form[end if] and turns to look at Shadow. The surprisingly tenderhearted spy nuzzles her and reassures her again that it'll be alright and that you just want to help her feel better. You purr softly in agreement and put your arms around them both even as Shadow guides her friend's muzzle to your chest[if player is felinebodied] to begin nursing[else]. As she puts her lips around your nipple and starts suckling, your more matronly figure gradually reappears[end if].";
	if player is not felinebodied:
		now tempnum is 1;
		felinebodyshift;
	WaitLineBreak;
	if cocks of player > 0:
		say "     While she nurses, you and Shadow pet and caress the feline girl. Drinking down your matronly milk calms her further and you both purr soothingly to her. At first, you simply start by how pretty she is and how much you enjoy being with her. After she's had her fill of milk, Shadow kisses her tenderly before guiding her muzzle lower, moving it to your crotch. She eyes your cock nervously, with a mix of desire and worry. 'Don't worry, my friend, the matron would never hurt you. She's been so kind to all of us.'";
		say "     'All of you?' she mumbles in a milk-induced haze.";
		say "     'Yes, all of my pride sisters. They'll all want to meet you too. But let's play with the matron first.'  Shadow leans in beside her and gives your shaft a slow lick, then smiles at the girl. Seeing her friend take a taste is enough to re-ignite her desire for your manhood and she starts licking at it. Soon the two of them are taking turns licking and sucking at your cock, much to your delight. And while she might be a little tentative at first, the new girl is soon going at it with great enthusiasm.";
		say "     You stroke the girls['] heads, purring softly to them as they lavish attention upon you. Your [cock of player] cock throbs and dribbles precum steadily, which they eagerly lap up. As things continue to heat up, Shadow lowers herself to lapping at your balls so her friend can focus on sucking your cock. You catch a glimpse of the sneaky kitty's paw also drifting between the new girl's legs and pumping a few fingers into her cunt slowly, more to get her worked up than to satisfy her. Knowing she'll be hot and ready for a fucking soon makes you grin happily even as you cum, shooting your hot load into her little muzzle.";
	else:
		say "     While she nurses, you and Shadow pet and caress the feline girl. Drinking down your matronly milk calms her further and you both purr soothingly to her. At first, you simply start by how pretty she is and how much you enjoy being with her. After she's had her fill of milk, Shadow kisses her tenderly before guiding her muzzle lower, moving it to your crotch. She licks her lips at the sight of your juicy folds before leaning in to start licking at them. 'That's right, my friend, the matron would never hurt you. She's been so kind to all of us.'";
		say "     'All of you?' she mumbles in a milk-induced haze.";
		say "     'Yes, all of my pride sisters. They'll all want to meet you too. But let's play with the matron first.'  Shadow nuzzles in beside her and gives your pussy a slow lick, brushing her tongue against her friend's. This playful fun has them tongue-fighting to lap at your cunny between all the French kisses the two kitties share. It is a delight to watch and to enjoy as the new girl eats you out with great enthusiasm.";
		say "     You stroke the girls['] heads, purring softly to them as they lavish attention upon you. Your [cunt size desc of player] pussy quivers and drips with your feminine juices as they work you over. As things continue to heat up, Shadow moves to nuzzling her friend and nibbling her ears so the new kitty can have full access to your cunt. You catch a glimpse of the sneaky kitty's paw also drifting between the new girl's legs and pumping a few fingers into her cunt slowly, more to get her worked up than to satisfy her. Knowing she'll be hot and ready for a fucking soon makes you grin happily even as you cum, soaking her little muzzle while she laps her raspy tongue across your clit.";
	WaitLineBreak;
	say "     When you're finished, you and Shadow start to lead her towards the den, telling her that you've got an extra special friend for her to meet. While you walk, Shadow continues to teasingly caress her friend while telling her how good it will be. When you get within sight of the tunnel, the Shadow stops to wait in the trees so you may continue on with the pride's newest recruit. 'Go on inside. My special friend's in there. He'll be so happy to see you.'";
	say "     'He?' the girl asks with longing mixed into her obvious trepidation.";
	say "     'Our mate. He'll welcome you into our pride and will take proper care of you, I promise.'";
	say "     You smile down to her as you stroke her soothingly. 'I'll explain your situation to him and he'll be very understanding, I promise. My mate is a gentleman and he'll be a gentleman to you too.'  She clings tightly to you as you go forward, entering the cave. She relaxes somewhat when she finds it so well maintained and decorated, clearly far better than whatever den her previous mate was using, if he kept one at all.";
	say "     Leonard, seeing you with a new recruit, welcomes you warmly. He is quite eager to welcome her as well, though you pass her off briefly to the maids to clean her up while you talk to him. You bend the truth a little, telling him you came across her in the woods. You add that you've learnt her former pride leader was rough on her because she couldn't give him kittens. 'Like Shadow,' the lion mutters sadly before speaking with greater determination. 'I shall do better this time, my dear. You were right to bring her here, my kind and loving mate,' he adds, giving you a passionate kiss and a grope as promise of fun later.";
	say "     With Leonard made aware of the situation and the new girl looking far prettier for a quick grooming by the three eager and kinky maids, they are both quite eager to get to it. The gentlemanly lion gently guides her to his bed and lavishing attention upon her, soothing her with words that he's simply happy to have her in his pride and that he'll cherish her as much as any other of his girls, no matter what. As their cuddling grows more heated and turns to mating, you leave them to it, having your own fun with the maids in the living area. Eventually you are worn and drift off to sleep in your soft chair with the three sated maids curled up at your feet.";
	WaitLineBreak;
	say "     When you awaken, it is to a kiss from your mate and the smell of fine cooking wafting through the air. 'It seems you've had quite the find, my dear,' he purrs happily. 'I awoke to an empty bed to discover our pride's newest member in the kitchen, cooking up a storm. All on her own, I might add. She simply wanted to thank us all for welcoming her so nicely. I suspect our little Caraway may have been a chef before, though she doesn't remember. I've already had a sample and it's quite delightful. But you should judge for yourself. Come, it's just about done.'";
	say "     True to his word, the new girl, rechristened Caraway, is finishing up the last touches on several dishes while the maids serve them to you both before taking their own helpings. As Leonard said, it is all delicious, having turned the den's eclectic mix of supplies into a lovely meal. There's even a sweet dessert flavoured with nuts and wine. Caraway seems in fine spirits, having found a happy home and a place for herself in her new pride. After the meal, she whispers to you that she's saved some for Shadow and slips outside to give it to her in thanks for all her help.";
	if tempnum is 0:
		infect "Feline";
		infect "Feline";
	else:
		infect "Feline";
	now lastfuck of leonard is turns + 8;
	now battleground is "void";
	decrease hunger of player by 12;
	if hunger of player < 0, now hunger of player is 0;
	remove 11 from leoparklist;
	now leonardcaraway is true;	[***]
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


Table of Game Objects (continued)
name	desc	weight	object
"bulletproof vest"	"A bulletproof vest - a gift that might save your life."	10	bulletproof vest

bulletproof vest is equipment. It is not temporary.
The AC of bulletproof vest is 50.
The effectiveness of bulletproof vest is 55.
The placement of bulletproof vest is "body".
The descmod of bulletproof vest is "You are wearing the bulletproof vest you were given.".
The slot of bulletproof vest is "body".

the scent of bulletproof vest is "The bulletproof vest has picked up a bit of your scent, but is else odourless.".


Leonard Events ends here.
