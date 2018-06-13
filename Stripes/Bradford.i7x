Version 1 of Bradford by Stripes begins here.
[ Version 1.2 - More sex - desk fuck (vag or anal) ]

"Adds an anthro bull bounty hunter named Bradford to Flexible Survival."

Section 1 - Lead-in Event

Bounty Hunter is a situation.
The sarea of Bounty Hunter is "Red".
when play begins:
	add Bounty Hunter to badspots of furry;
	add Bounty Hunter to badspots of guy;

Instead of resolving Bounty Hunter:
	follow the breast descr rule;
	if perception of player > 15 or "Wary Watcher" is listed in feats of player:
		say "     Your exploration of the city takes you past a small bar. Noticing no activity, you pause for a moment and peek inside. It's only moments before you were going to be grabbed from behind that you realize that things were actually too quiet. Going back on alert, you're able to dodge the oncoming grapple and roll to the side. Getting up a few feet away, you find it is a tough looking bull-man confronting you.";
	else:
		say "     Your exploration of the city takes you past a small bar. Noticing no activity, you pause for a moment and peek inside. But without warning, you find yourself grappled from behind. He squeezed you in his crushing grip [if strength of player > 18]before you break yourself free with your enhanced might (8 dmg)[else]until you see spots before he tosses you roughly against the wall (16 dmg)[end if]. Turning, you find it is a tough looking bull man confronting you.";
		if strength of player > 18:
			decrease HP of player by 8;
		else:
			decrease HP of player by 16;
	WaitLineBreak;
	say "     Quick as a whip, the gruff bull pulls a sawed-off shotgun into his hands and points it straight at your chest. This gives you serious pause, during which looks you over with a mean gaze. His eyes look you over up and down, but rather than stop at either your face or your junk, they stop somewhere in between[if breast size of player > 4]. And while they do linger on your [short breast size desc of player] a little longer, it's not there they stop either[end if]. Eventually he seems satisfied though and lowers the gun, and you heave a large sigh of relief.";
	say "     'Sorry [']bout that. Thought you might've been someone else,' he says, slipping the shotgun into a leather holster at his hip. 'Tellin['] who's who these days ain't easy.'";
	WaitLineBreak;
	say "     No longer being held at gunpoint, you're able to relax and take in your would-be assailant. This tough-looking bull-man is decked out in an torn pair of black jeans, khaki vest and ripped gray t-shirt. His clothing has old stains on it in a few places, though the rips are newer, probably stretched out by his transformation. In addition to the holstered shotgun, he's got a large knife on his other hip. Hanging around his thick neck are a pair of binoculars and a string necklace with an assortment of animal teeth on it.";
	say "     This guy's been transformed into a stocky bull of a man. His bovine head is on a short neck and has its horns protruding from the sides of his temples. His body's bulky with muscle, and while he stands only a little above six feet tall, he looks like he could take on someone much larger with his bare hands. Any boots he may have worn have been discarded, his feet now ending in hardened hooves. His bovine coat is predominantly a russet red, with white on his head, down the center of his chest and at the end of his limbs.";
	WaitLineBreak;
	say "     You start to ask him what all of that was about, but he waves you off, saying it's none of your business. He gives you another look over. 'You do seem to be keepin['] it together pretty good though. Care to chat for a bit. I got a bit of a business proposition for you.' And while there's nothing quite like having been held at gunpoint by someone to start a relationship, you do decide to go ahead and hear him out.";
	say "     Crossing the street, he enters another storefront and leads up into what was formerly a second floor accounting office. While straining to look professional, the former businessplace is clearly cheap and trashy. The office furniture is old and mismatched, and the walls are covered in ad posters to have your taxes done and claims about big returns. Given the neighborhood, that's unsurprising.";
	WaitLineBreak;
	move player to Bradford's Camp;
	now Bradford's Camp is known;
	now battleground is "void";
	now HP of Bradford is 1;
	now Bounty Hunter is resolved;


Section 2 - Bradford's Camp

Bradford's Camp is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Bradford's Camp is "[bradfordcampdesc]".

the scent of Bradford's Camp is "The former accountant's office turned temporary stakeout camp smells of Bradford and wood chips overlaid on that of paperwork.".

to say bradfordcampdesc:
     say "	   Tucked away upstairs in a second-story accountant's office is [if HP of Bradford is 0]the bull man's[else]Bradford's[end if] temporary camp. From the scattered supplies, camping stove and sleeping bag, he's been camped out here for at least a few days. Through the lowered blinds, the window gives a good view up and down the street and of the bar across the street. There's a clump of wood shavings piled on the floor near the window. While by no means neat, the place isn't dirty in a disgusting way, just untidy. The bull man typically sits keeping an eye out through the slats of the blinds, binoculars at the ready.";


Section 3 - Bradford

Bradford is a person. Bradford is in Bradford's Camp.
The description of Bradford is "[bradforddesc]".
The conversation of Bradford is { "Moo, mutherfuckah!" }.
the scent of the Bradford is "The bull man has a somewhat musky scent of sweat, but not overpoweringly so.".
The icon of Bradford is Figure of Bradford_icon.

bradfordbounty is a number that varies.
bradfordstory1 is a truth state that varies. bradfordstory1 is usually false.

to say bradforddesc:
	say "[bradforddebug]";
	say "     [if HP of Bradford < 2]This guy's[else]Bradford's[end if] been transformed into a stocky bull of a man standing a little over six feet tall. His bovine head is on a short neck and has its horns protruding from the sides of his temples. He's wearing a pair of torn black jeans, khaki vest and ripped gray shirt. His clothing has a few old stains on it and shows several newer rips where his transformation's strained the material to fit his bulked-up muscles. He's armed and ready, carrying a sawed-off shotgun in a holster at his side and has a large knife on his other hip. Hanging around his thick neck are a pair of binoculars and a string necklace with an assortment of pointy animal teeth on it. Any boots he may have worn have been discarded, his feet now ending in hardened hooves. His bovine coat is predominantly a russet red, with white on his head, down the center of his chest and at the end of his limbs.";


Section 4 - Dialog

Instead of conversing the Bradford:
	say "[bradforddebug]";
	if HP of Bradford is 0:
		say "***Unknown error. Adjusting.";
		now HP of Bradford is 1;
		now Bounty Hunter is resolved;
		now Bradford's Camp is known;
	else if HP of Bradford is 1:
		say "     'The name's Bradford,' he says, holding out his hand to shake. 'I didn't mean to start us off on the wrong foot. Like I said - kinda tough to tell who's who out there these days. Makes my job as a bounty hunter all the harder. Which is what I wanted to talk about.' He takes a breath and uses the moment to peek through the blinds, scanning up and down the street.";
		say "     'Now, as you can prob'bly guess, I'm lookin['] for someone who should be comin['] by here sooner or later. But it's takin['] longer'n expected. With all them monsters about, there's plenty of bounty contracts for a guy like me, but I don't want to miss my chance with this guy. Whole reason I came to this God-forsaken city in the first place. Ended up bullified for my troubles. Ain't no way I'm leavin['] without him. But that ain't why I called you up here.'";
		say "     As he pauses to take another peek out between the blinds, you consider pointing out that his target might not have survived the city at all, let alone be identifiable. Either the bull knows something or he's clinging to some false hope. Either way, best not to risk upsetting him.";
		WaitLineBreak;
		say "     'Now, like I said, I got me a mite more contracts than I can handle on my own. Couple of [']em I've got partially done, having dealt with some of the beasties earlier on. But they ain't comin['] around here much anymore, so if'n you can finish those contracts off for me, I'd be appreciative and cut you in on the bounty. And that's on top of the per-head reward them Zephyr guys are a-givin['].'";
		if humorous is banned:
			say "     He pulls out a folded printout from his vest pocket and looks it over. 'Hmm... Now ain't that odd. This one's done gone and changed on me. Says the bounty's been closed due to bannin['].' He turns the page towards you so you can see the red [']BANNED['] stamped across the image of a walking phallus creature. 'Guess we're not gettin['] that one no more,' he grumbles.";
			WaitLineBreak;
			say "     Taking another sheet from his vest, he checks that one. 'Okay, this one's still active. It's a little further away though.' You look it over quickly. The top of the page has [']BOUNTY['] printed across it with more details under the grayscale image of a smooth, latex-skinned wolf. Among the details are mentions of [']high viscosity['], [']encasement['] and [']corruptive infection[']. Another odd detail is how it stated the bounty is for eight of them, but there's another printed number marking that there's [bold type]four remaining[roman type] to complete the bounty.";
			say "     'You take this and see if you can track down a few more of these things. I was able to get a bunch of [']em before I got here. Once you've got to last of th['], come back here and I'll cut you in on the reward.'";
			now bradfordbounty is 4;
			now HP of Bradford is 3;
		else if "Female Preferred" is listed in feats of player:
			say "     He pulls out a folded printout from his vest pocket and looks it over. 'Hmm... Now ain't that odd. This one's done gone and changed on me. Says the bounty's been closed due to gender lockin['].' He turns the page towards you so you can see the red [']CLOSED['] stamped across the image of a walking phallus creature. 'Guess we're not gettin['] that one no more,' he grumbles.";
			WaitLineBreak;
			say "     Taking another sheet from his vest, he checks that one. 'Okay, this one's still active. It's a little further away though - out in the main part of the city.' You look it over quickly. The top of the page has [']BOUNTY['] printed across it with more details under the grayscale image of a smooth, latex-skinned wolf. Among the details are mentions of [']high viscosity['], [']encasement['] and [']corruptive infection[']. Another odd detail is how it states the bounty is for eight of them, but there's another printed number marking that there's [bold type]four remaining[roman type] to complete the bounty.";
			say "     'You take this and see if you can track down a few more of these things. I was able to get a bunch of [']em before I got here. Once you've got to last of th['], come back here and I'll cut you in on the reward.'";
			now bradfordbounty is 4;
			now HP of Bradford is 3;
		else:
			say "     He pulls out a print-out sheet with a grayscale image of a walking phallus. The top of the page has [']BOUNTY['] across it and more details typed out below the image. Among that is mention of stuff like [']high output['], [']long-range semen launching['] and [']concerns about spreading the infection at a distance[']. Another odd detail is how it stated the bounty is for eight of them, but there's another printed number marking that there's [bold type]three remaining[roman type] to complete the bounty.";
			say "     'You take this and see if you can track down a few more of these things. I was able to get most of [']em, but I guess they've learned not to come around here. Once you've got to last of [']em, come back here and I'll cut you in on the reward.'";
			now bradfordbounty is 3;
			now HP of Bradford is 2;
	else if HP of Bradford is 2 and bradfordbounty <= 0:
		say "     'Hey there!' the bull responds in greeting. 'You done good. I got a message as soon as you'd finished the bounty. I figgered you'd be up for the challenge. Here's your share of the reward,' he says, passing you a chit for 75 freecred. Seeing your non-plussed expression, he shrugs. 'Look, that one was already a pretty small contract. And I'd already done most of the work on it. Besides, I'm the one who found the contracts in the first place. Don't worry, I'll cut you in on more of the next one, if you're up for it.'";
		say "     Pulling out another sheet from his vest, he checks it before passing it along to you. 'This one's a little further out. These things're runnin['] around in the main part of the city.' You look it over quickly. The image this time is of a smooth, latex-skinned wolf. Among the details mentioned are stuff about [']high viscosity['], [']encasement['] and [']corruptive infection[']. The bounty sheet states that there's [bold type]four remaining[roman type] to complete it.";
		increase freecred by 75;
		extend game by 4;
		now bradfordbounty is 4;
		now HP of Bradford is 3;
	else if HP of Bradford is 2 and "Female Preferred" is listed in feats of player:
		say "     'How's that contract of ours coming along?' Bradford asks. Passing him the contract, he snorts angrily. 'What happened to it? This one's done gone and changed on us. Says the bounty's been closed due to gender lockin['].' He turns the page towards you so you can see the red [']CLOSED['] stamped across the image. 'Guess we're not gettin['] that one no more,' he grumbles.";
		say "     Taking another sheet from his vest, he checks that one. 'Okay, this one's still active. It's a little further away though - out in the main part of the city.' You look it over quickly. The image this time is of a smooth, latex-skinned wolf. Among the details mentioned are stuff about [']high viscosity['], [']encasement['] and [']corruptive infection[']. The bounty sheet states that there's [bold type]four remaining[roman type] to complete it.";
		now HP of Bradford is 3;
		now bradfordbounty is 4;
	else if HP of Bradford is 3 and bradfordbounty <= 0:
		say "     'Good goin['] with those wolf things. Got sent a message when you finished it up. I hope they weren't too much of a hassle. Here's your cut,' he says, tossing you a credit voucher. Checking it, you find it only worth 125 freecred.";
		let xx be charisma of player;
		if breast size of player > 6:
			increase xx by 3;
		else if breast size of player > 3:
			increase xx by 2;
		if player is female, increase xx by 1;
		if "Haggler" is listed in feats of player:
			increase xx by 3;
		increase xx by level of player / 5;
		let yy be 0;
		if xx > 17:
			now yy is xx / 2;
			now yy is yy * 5; [done to give an even multiple of 5]
			if yy > 100, now yy is 100;
			say "     Feeling that's unfair given the amount of work you've put in, you tell him that you want a bigger cut. The two of you argue over it for a while, but you don't let up. You remind Bradford that he'd not be getting anything at all if you hadn't gone out to finish those contracts for him[if xx > 22]. You're able to wear him down fairly quickly with your arguments[else]. It takes some time for your arguments to sway him[end if][if breast size of player > 3]. Add to that how your hint that you'd been looking forward to some quality time with him goads him into wanting to keep you pleased[end if]. In the end, you negotiate another [yy] freecred, leaving you much more satisfied with your share of the bounty.";
		else:
			now yy is xx / 3;
			now yy is yy * 5; [done to give an even multiple of 5]
			if yy > 50, now yy is 50;
			say "     Feeling that's unfair given the amount of work you've put in, you try to negotiate for a better cut. The two of you argue over it for a while, but you make little headway against the bull-headed steer. In the end, you're only able to get another [yy] freecred out of him, as Bradford claims a lot of his share went to cover the fees and bribes needed to even get the contracts. Still, a little more's better than none.";
		increase freecred by yy + 125;
		now HP of Bradford is 4;
		extend game by 4;
	else if HP of Bradford < 4:
		say "[randombodypart]";
		say "     [one of]'How's that bounty sheet comin['] along? Says you've got to deal with another [bold type][bradfordbounty] [if HP of Bradford is 2]cock cannon(s)[else if HP of Bradford is 3]latex wol(f|ves)[end if][roman type].'[or]'You don't get ahead in my line of work by being lazy. Gotta work for your money.'[or]You try to ask about his target, but he just grumbles for you to focus on your part of the job and he'll do his. And with that, he takes another look out the window.[or]Spotting some activity, Bradford grabs his binoculars and checks out the [bodyselector] intently for several seconds. 'Nope.'[or]'I don't mind the added muscles, but this was my favorite outfit,' he says, tugging at his stretched shirt collar.[or]'Shouldn't you be out there working on those bounties?'[or]Using his big knife, Bradford quietly whittles at a chunk of wood while watching out the window. 'Some times this job's just about bein['] patient.'[at random]";
	else if bradfordstory1 is false and a random chance of 1 in 3 succeeds:
		now bradfordstory1 is true;
		say "     'This body of mine is like them cows on my da's ranch. Big, dumb Brafords. Named after [']em and everything. I always hated them and that place. Left as soon as I could. Must be someone's idea of a sick joke, me lookin['] like this.'";
	else:
		say "[randombodypart]";
		say "     [one of]'You don't get ahead in my line of work by being lazy. Gotta work for your money.'[or]You try to ask about his target, but he tells you to stay out of this one. And with that, he takes another look out the window.[or]Spotting some activity, Bradford grabs his binoculars and checks out the [bodyselector] intently for several seconds. 'Nope.'[or]'I don't mind the added muscles, but this was my favorite outfit,' he says, tugging at his stretched shirt collar.[or]'I appreciate that help with the bounties. Those're all I've got that're active right now.'[or]Using his big knife, Bradford quietly whittles at a chunk of wood while watching out the window. 'Some times this job's just about bein['] patient.'[at random]";


Section 5 - Sex Mechanics

the fuckscene of Bradford is "[sexwithBradford]".

to say sexwithBradford:
	say "[bradforddebug]";
	if HP of Bradford < 4:
		say "     'Look. That's[if breast size of player > 3]mighty [end if]temptin['], but I've got business to take care of. You should get back to those [if HP of Bradford is 2]cock cannon[else if HP of Bradford is 3]latex wolf[end if] bounties,' he adds. With that, he turns back to the window, making another scan up and down the street.";
	else if lastfuck of Bradford - turns < 8:
		say "     'As fun as that sounds, I can't let myself get too distracted. [']Sides, I could use a bit of a break after that last go we had,' he adds with a grin.";
	else:
		if HP of Bradford is 5 or ( HP of Bradford > 5 and a random chance of 1 in 4 succeeds ):
			say "[sexwithBradford03]"; [desktop fuck]
		else if player is female and a random chance of 2 in 3 succeeds:
			say "[sexwithBradford01]"; [vaginal]
		else:
			say "[sexwithBradford02]"; [oral]
		now lastfuck of Bradford is turns;
		if HP of Bradford < 6, increase HP of Bradford by 1;


Section 6 - Sex Scenes

to say sexwithBradford01:		[vaginal - lap ride]
	setmonster "Bovine";
	choose row monster from the table of random critters;
	say "     Bradford looks away from the window to run his eyes up and down you[if breast size of player > 3] appreciatively[end if]. 'Alright. I could use a bit of a break. It don't look like nothin's happenin['] out there. Feel good to let off a bit of steam.' He unzips his fly and pulls out his plump bull-cock. It's a girthy ten-inch length of brick-red flesh that's throbbing and ready to go.";
	say "     The sight of his bovine shaft gets you all the more excited. You straddle his lap and grind your [cunt size desc of player] pussy down atop it. You love the warm feel of it and how it pulses and throbs with need at your touch. After this little bit of teasing[if breast size of player > 3], during which he bares your chest and starts fondling your boobs[end if], you lower yourself [if cunt length of player < 4]slowly down onto the pulsing rod. Given the size of his manhood, you really have to take your time to start, enduring the ache of stuffing yourself until that fades and the pleasure rises to replace it[else if cunt length of player < 7]gradually down onto the pulsing rod. Given the size of his manhood, you have to take your time to start, but it is deliciously satisfying for the added effort[else if cunt length of player > 18]with ease down onto the pulsing rod. Given the size of your spacious cunt, you have little difficulty taking the bull's thick shaft, letting you jump right into action[else]down onto the pulsing rod. His enlarged cock stuffs you nice and full for a satisfying fit that has you moan with pleasure as you take it into you[end if].";
	WaitLineBreak;
	if breast size of player > 3:
		say "     The gruff bull can't keep his hands off your [short breast size desc of player] breasts. His meaty hands grope your bosom and play with your nipples. 'Ain't nothin['] I like more than a big set of tits[if breast size of player > 6] - and yours are great[end if],' he says appreciatively as he lavishes yours with attention. His big, broad tongue slathers across your nipples before his big, bovine lips wrap around it and suck hard. You writhe in pleasure in his lap, riding him all the harder in response. Given how good he's making you feel, you know he's definitely handled his fair share and more of big knockers.";
	say "     The two of you go at it hot and heavy and the feel of his thick, bovine meat inside you is wonderful. Grabbing the bull by the horns, you moan for more. This drives him to thrust up into you all the harder. You're soon bouncing in the strong bull's lap, riding him like a rodeo bull. You manage to stay on the ride until the two of you finally cum. You feel the first of several blasts of bull semen shoot up into you, sending you into climactic release as well. Losing your grip as orgasmic pleasure courses through you, you're tossed by a particularly hard thrust and accompanyingly impressive shot of semen. You land on the floor in front of him, laughing in delight and moaning in pleasure even as he pumps a few final streams of white across you. He smiles down at you and offers a hand to help you up, pulling you into a tongue-filled kiss while you run your hands over his muscly body. Only after the long kiss does he release you and tuck himself back into his pants. As soon as that's done, he's back to keeping watch.[impregchance]";
	if mooing > 4:
		now mooing is ( mooing * 3 ) / 5;
	else:
		now mooing is 0;


to say sexwithBradford02:
	say "     Bradford smiles at the offer, rubbing his bulging crotch. 'I could certainly use a bit of relief. These big bull balls of mine could use a drainin['].' With that, he unzips his fly and pulls out his plump, bovine cock. It's a girthy ten-inch length of brick-red flesh that's throbbing and ready to go. 'Get on your knees and blow me while I keep watch,' he adds, giving his manhood an enticing shake.";
	say "     The sight of his meat makes your mouth water. You move between his legs and take a hold of his shaft, stroking and fondling it as you run your tongue up and down it. He gives a soft moan and his cock throbs in your hands as a gooey dollop of precum leaks out. Leaning in, you lick the sticky glob from his glans before opening wide and stuffing his cock into your mouth.";
	WaitLineBreak;
	if scalevalue of player is 1 or scalevalue of player is 2:
		say "     [if scalevalue of player is 1]Your tiny[else if scalevalue of player is 2]Your below-average[end if] size makes it more difficult to handle his thick cock, but you work at it until the nanites allow your mouth and throat to stretch enough to take him fully in";
	else if scalevalue of player is 3:
		say "     His enhanced size has you briefly taking it slow before, your mouth stuffed full by his cock. You work it over with your mouth and tongue until the nanites allow your throat to stretch enough to take him fully in";
	else:
		say "     Your enlarged form means you have no difficulty handling his thick cock. You work it over with your mouth and soon you're taking it down to the base with its end stuffed down your throat";
	say ". Once you've got that deep red rod completely down to the base, you suck down on it hard while kneading his balls. He groans in pleasure and rubs your head, moaning how good you're making him feel. You smile around his bull meat and suck harder even as you draw your head back. You slide most of the way off his shaft, getting to the point you can fellate across his glans before stuffing it back into your mouth and down your [if scalevalue of player < 3]tight [end if]throat.";
	say "     You go to town on his cock while he sits on watch, taking your time as neither of you are in a rush to finish[if breast size of player > 3]. Though when you swap out to a titfuck for a little while, you really get him worked up[end if]. Sensing his climax approaching, you pick up the pace and take him fully into your hungry mouth again. You can feel the powerful throbbing of his oncoming orgasm moments before his eventual release. Hot blasts of thick bull semen shoot into your mouth and pour down your throat. His cum tastes nice, strong with flavor and virility, but with a milkier flavor that encourages to drink down more and more of it until he's spent and you're full of warm spunk.";
	if mooing > 4:
		now mooing is ( mooing * 3 ) / 5;
	else:
		now mooing is 0;


to say sexwithBradford03:	[desktop fuck]
	say "     Bradford just smiles and nods at your suggestion of more sex. You can see that bulge in his crotch strain the material a little further as he looks you over. 'Alright[if breast size of player > 3], sexy[end if]. Bend yourself over that desk and let's do this,' he says, rising from his seat.";
	say "     As he strides over to join you at the desk, he undoes his fly and pulls out that thick slab of bovine meat he's packing. The brick-red shaft is as big and juicy as you remember, an impressive ten inches of thick bull cock. Seeing it again, and those hefty balls beneath it, makes you all the more eager to have it in you. You strip down quickly and get yourself bent over the desk, waving your rear towards him, offering yourself to the bull stud's manhood.";
	WaitLineBreak;
	if player is female:
		say "     Moving into position, the studly bull lets his big cock fall across your rear with a meaty slap. You can feel the wet dribble from a spurt of precum as it hits. He rubs his large hands across your buns before gripping them and lining himself up[if cunt length of player < 4]. Given the small size of your cunt, he has to take his time to start, sinking his pulsing rod very slowly into you. You whimper and chew your lip, enduring the initial ache until it fades and the pleasure rises to replace it. Once you're ready, you moan for him to start fucking you[else if cunt length of player < 7]. Given the size of his manhood, he has to push his pulsing rod into you gradually. It is deliciously satisfying for the added effort and soon you're moaning for him to start fucking you[else if cunt length of player > 18]. He eases his big cock into your spacious cunt and you have little difficulty taking the bull's thick shaft. This lets him jump right into action and start fucking you[else]. His enlarged cock stuffs you nice and full, providing a satisfying fit. You wriggle with delight as it sinks into you and you push back onto it, moaning for him to fuck you[end if]. With a leering grin, he pulls back several inches before thrusting sharply into you, pushing another moan out of you. After a few more of these to tease you, he switches to steadily fucking your quivering cunny. And while you enjoy this, you're quite eager to just get screwed senseless by this point and moan for him to pound you.";
	else:
		say "     Moving into position, the studly bull spreads some spit across his shaft and onto his asshole. Add to that the precum he's already drooling and at least it's enough to get things started. He grinds his sticky glans against your tight hole, giving it a few test prods, coaxing you to relax your back door before thrusting into it[if player is twistcapped]. Not that he needs be too concerned given the extraordinary stretching capacity of your asshole. His large cock sinks into you with ease, the two of you sighing in satisfaction upon penetration. Seeing your lack of difficulty, he gets to fucking you right away[else if scalevalue of player < 3]. Given your [body size of player] size, getting that enlarged cock into you is a slow and difficult process. His large cock sinks into you small amounts at a time, drawing out the initial penetration painfully, frustratingly long. Eventually though, he manages to get it fully into you and your hole's adjusted to deal with it, allowing him to finally start fucking you[else if scalevalue of player is 3]. Given the enlarged size of his manhood, getting it into you is not an easy process. His large cock only moves an uncomfortable inch at a time. Eventually though, he has it buried fully inside you and your hole's adjusted to accommodate it, allowing him to start fucking you properly[else if scalevalue of player is 4]. Given your large size, you're able to accept his enlarged cock a few inches at a time. In short order, he's fully buried inside your snug hole and you've adjusted to deal with it, finding it a satisfying fit once inside. He gives a few grinds against your sensitive insides before to finally starting to fucking you properly[else]. Given your huge size, you're able to accept his enlarged cock fairly easily. After the initial penetration, you just need a moment before your hole's adjusted to deal with it and he's able to start fucking you properly[end if]. And while you appreciate his care, you're quite eager to just get screwed senseless by this point and moan for him to pound you.";
	say "     And pound you he does. With a firm grip on your buns, he adds power to his thrusts, driving his shaft with increasing strength into your needy hole. You grip the desk hard and push back into his thrusts, loving the feel of that throbbing cock sawing in and out of you. The heavy bull pants and grunts atop you as he fucks you, those big balls of his slapping [if player is male and cockname of player is not listed in infections of Internallist]against your own[else if player is female]your thighs[else]your ass[end if]. In your increasingly lust-addled state, you delight in how that thick rod of his stuffs you [if scalevalue of player < 4]so full[else]nicely[end if] and how it throbs with virility.";
	if breast size of player > 3:
		say "     The stocky bull reaches around you, his strong hands cupping your [short breast size desc of player] tits. He gropes them, playing with your nipples and caressing the sensitive globes. 'I must say, you've got some [if breast size of player > 6]really [end if]fine tits on you,' he says in your ear. His expert touches add to your delight as he pounds away at you with greater zeal, clearly turned on by having some [if breast size of player > 6]giant[else]big[end if] boobs to play with.";
	say "     At such a pace, he still manages to prove himself to have endurance as well, pounding you with skill as well as strength until you're both panting hard with your approaching release. The first quivers of your [if player is female]cunt orgasming[else]asshole spasming in orgasm[end if] around his cock is what pushes him over the edge, sending him into climactic release as well. When he finally blows, he groans a restrained bovine low, trying to not give away his hideout but unable to completely remain quiet. You can feel hot splash after hot splash of bovine seed shooting [if player is female]into your vagina[else if player is male]against your prostate[else]into your bowels[end if] as he unloads those pendulous balls.[impregchance]";
	say "     After unloading messily into you, he [if breast size of player > 6]remains atop you for a while, playing with your giant knockers before pulling out and getting off of you[else if breast size of player > 3]continues to play with your big knockers for a while before pulling out and getting off of you[end if]pulls out and gets off of you. He can't hide a smug grin as he watches his excess semen leak from your [if player is female]well-stuffed pussy[else]well-stretched pucker[end if]. 'Thanks, [if player is female]babe[else]dude[end if]. Guess I really needed that. Hope ya don't mind the mess - you look pretty hot like that,' he adds, fingering your creamy hole before returning to his post. With how good having his hot semen in you feels, you decide to hold that position for a while, content to enjoy having it pooled inside you.";
	if mooing > 4:
		now mooing is ( mooing * 3 ) / 5;
	else:
		now mooing is 0;


Section 9 - Endings

[ To appear later ]

Section X - Notes & Debugging

to say bradforddebug:
	if debugactive is 1:
		say "DEBUG (Bradford) -> HP: [HP of Bradford] <- DEBUG[line break]";


[                   HP of Bradford                   ]
[ 0 = not met                                        ]
[ 1 = met Bradford                                   ]
[ 2 = talked to Bradford - contract #1 (Cock Cannon) ]
[ 3 = completed contract #1 / start #2 (Latex Wolf)  ]
[ 4 = completed contract #2 / open for sex           ]
[ 5 = had sex with Bradford once                     ]
[ 6 = had sex again - opens next material (later)    ]

Bradford ends here.
