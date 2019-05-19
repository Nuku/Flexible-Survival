Version 1 of Bradford by Stripes begins here.
[ Version 1.2 - More sex - desk fuck (vag or anal) ]
[ Version 2.0 - More sex scenes + added bounties and story]
"Adds an anthro bull bounty hunter named Bradford to Flexible Survival."

Section 1 - Lead-in Event

Table of GameEventIDs (continued)
Object	Name
Bounty Hunter	"Bounty Hunter"

Bounty Hunter is a situation.
The sarea of Bounty Hunter is "Red".
when play begins:
	add Bounty Hunter to badspots of furry;
	add Bounty Hunter to badspots of guy;

Instead of resolving Bounty Hunter:
	follow the breast descr rule;
	if perception of Player > 15 or "Wary Watcher" is listed in feats of Player:
		say "     Your exploration of the city takes you past a small bar. Noticing no activity, you pause for a moment and peek inside. It's only moments before you were going to be grabbed from behind that you realize that things were actually too quiet. Going back on alert, you're able to dodge the oncoming grapple and roll to the side. Getting up a few feet away, you find it is a tough looking bull-man confronting you.";
	else:
		say "     Your exploration of the city takes you past a small bar. Noticing no activity, you pause for a moment and peek inside. But without warning, you find yourself grappled from behind. He squeezed you in his crushing grip [if strength of Player > 18]before you break yourself free with your enhanced might (8 dmg)[else]until you see spots before he tosses you roughly against the wall (16 dmg)[end if]. Turning, you find it is a tough looking bull man confronting you.";
		if strength of Player > 18:
			decrease HP of Player by 8;
		else:
			decrease HP of Player by 16;
	WaitLineBreak;
	say "     Quick as a whip, the gruff bull pulls a sawed-off shotgun into his hands and points it straight at your chest. This gives you serious pause, during which looks you over with a mean gaze. His eyes look you over up and down, but rather than stop at either your face or your junk, they stop somewhere in between[if Breast Size of Player > 4]. And while they do linger on your [short breast size desc of Player] a little longer, it's not there they stop either[end if]. Eventually he seems satisfied though and lowers the gun, and you heave a large sigh of relief.";
	say "     'Sorry [']bout that. Thought you might've been someone else,' he says, slipping the shotgun into a leather holster at his hip. 'Tellin['] who's who these days ain't easy.'";
	WaitLineBreak;
	say "     No longer being held at gunpoint, you're able to relax and take in your would-be assailant. This tough-looking bull-man is decked out in a torn pair of black jeans, khaki vest and ripped gray t-shirt. His clothing has old stains on it in a few places, though the rips are newer, probably stretched out by his transformation. In addition to the holstered shotgun, he's got a large knife on his other hip. Hanging around his thick neck are a pair of binoculars and a string necklace with an assortment of animal teeth on it.";
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

Table of GameRoomIDs (continued)
Object	Name
Bradford's Camp	"Bradford's Camp"

Bradford's Camp is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Bradford's Camp is "[bradfordcampdesc]".

the scent of Bradford's Camp is "The former accountant's office turned temporary stakeout camp smells of Bradford and wood chips overlaid on that of paperwork.".

to say bradfordcampdesc:
	say "     Tucked away upstairs in a second-story accountant's office is [if HP of Bradford is 0]the bull man's[else]Bradford's[end if] temporary camp. From the scattered supplies, camping stove and sleeping bag, he's been camped out here for at least a few days. Through the lowered blinds, the window gives a good view up and down the street and of the bar across the street. There's a clump of wood shavings piled on the floor near the window. While by no means neat, the place isn't dirty in a disgusting way, just untidy. The bull man typically sits keeping an eye out through the slats of the blinds, binoculars at the ready.";


Section 3 - Bradford

Table of GameCharacterIDs (continued)
object	name
Bradford	"Bradford"

Bradford is a person. Bradford is in Bradford's Camp.
The description of Bradford is "[bradforddesc]".
The conversation of Bradford is { "Moo, mutherfuckah!" }.
the scent of the Bradford is "The bull man has a somewhat musky scent of sweat, but not overpoweringly so.".
The icon of Bradford is Figure of Bradford_icon.

bradfordbounty is a number that varies.
bradfordstory is a number that varies.
bradfordBountyNum is a number that varies. bradfordBountyNum is usually 0.
numOfBountiesLeft is a number that varies. numOfBountiesLeft is usually 6.
demonBruteBountyState is a truth state that varies. demonBruteBountyState is usually false.
twistedPimpBountyState is a truth state that varies. twistedPimpBountyState is usually false.
saberKittyBountyState is a truth state that varies. saberkittyBountyState is usually false.
alphaHuskyBountyState is a truth state that varies. alphaHuskyBountyState is usually false.
latexErmineBountyState is a truth state that varies. latexErmineBountyState is usually false.
spidergirlBountyState is a truth state that varies. spidergirlBountyState is usually false.

bradfordstory1 is a truth state that varies. bradfordstory1 is usually false.
bradfordstory2 is a truth state that varies. bradfordstory2 is usually false.
bradfordstory3 is a truth state that varies. bradfordstory3 is usually false.
bradfordstory4 is a truth state that varies. bradfordstory4 is usually false.

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
		else if "Female Preferred" is listed in feats of Player:
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
		say "     'Hey there!' the bull responds in greeting. 'You did good. I got a message as soon as you'd finished the bounty. I figgered you'd be up for the challenge. Here's your share of the reward,' he says, passing you a chit for 75 freecred. Seeing your non-plussed expression, he shrugs. 'Look, that one was already a pretty small contract. And I'd already done most of the work on it. Besides, I'm the one who found the contracts in the first place. Don't worry, I'll cut you in on more of the next one, if you're up for it.'";
		say "     Pulling out another sheet from his vest, he checks it before passing it along to you. 'This one's a little further out. These things're runnin['] around in the main part of the city.' You look it over quickly. The image this time is of a smooth, latex-skinned wolf. Among the details mentioned are stuff about [']high viscosity['], [']encasement['] and [']corruptive infection[']. The bounty sheet states that there's [bold type]four remaining[roman type] to complete it.";
		increase freecred by 75;
		extend game by 4;
		now bradfordbounty is 4;
		now HP of Bradford is 3;
	else if HP of Bradford is 2 and "Female Preferred" is listed in feats of Player:
		say "     'How's that contract of ours coming along?' Bradford asks. Passing him the contract, he snorts angrily. 'What happened to it? This one's done gone and changed on us. Says the bounty's been closed due to gender lockin['].' He turns the page towards you so you can see the red [']CLOSED['] stamped across the image. 'Guess we're not gettin['] that one no more,' he grumbles.";
		say "     Taking another sheet from his vest, he checks that one. 'Okay, this one's still active. It's a little further away though - out in the main part of the city.' You look it over quickly. The image this time is of a smooth, latex-skinned wolf. Among the details mentioned are stuff about [']high viscosity['], [']encasement['] and [']corruptive infection[']. The bounty sheet states that there's [bold type]four remaining[roman type] to complete it.";
		now HP of Bradford is 3;
		now bradfordbounty is 4;
	else if HP of Bradford is 3 and bradfordbounty <= 0:
		say "     'Good goin['] with those wolf things. Got sent a message when you finished it up. I hope they weren't too much of a hassle. Here's your cut,' he says, tossing you a credit voucher. Checking it, you find it only worth 125 freecred.";
		let xx be charisma of Player;
		if Breast Size of Player > 6:
			increase xx by 3;
		else if Breast Size of Player > 3:
			increase xx by 2;
		if Player is female, increase xx by 1;
		if "Haggler" is listed in feats of Player:
			increase xx by 3;
		increase xx by level of Player / 5;
		let yy be 0;
		if xx > 17:
			now yy is xx / 2;
			now yy is yy * 5; [done to give an even multiple of 5]
			if yy > 100, now yy is 100;
			say "     Feeling that's unfair given the amount of work you've put in, you tell him that you want a bigger cut. The two of you argue over it for a while, but you don't let up. You remind Bradford that he'd not be getting anything at all if you hadn't gone out to finish those contracts for him[if xx > 22]. You're able to wear him down fairly quickly with your arguments[else]. It takes some time for your arguments to sway him[end if][if Breast Size of Player > 3]. Add to that how your hint that you'd been looking forward to some quality time with him goads him into wanting to keep you pleased[end if]. In the end, you negotiate another [yy] freecred, leaving you much more satisfied with your share of the bounty.";
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
		say "     'This body of mine is like them cows on my da's ranch. Big, dumb Bradfords. Named after [']em and everything. I always hated them and that place. Left as soon as I could. Must be someone's idea of a sick joke, me lookin['] like this.'";
	else:
		say "     Walking up to the bull you ask if you could talk to him about something. 'Sure', he grunts, never taking his eyes away from the window. 'What'dya need?'";
		WaitLineBreak;
		say "[BradfordTalkMenu]";

to say BradfordTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chit Chat";
	now sortorder entry is 1;
	now description entry is "strike up a conversation with the bull";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Bounty Board";
	now sortorder entry is 2;
	now description entry is "ask Bradford if there are any bounties up";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Personal Question";
	now sortorder entry is 3;
	now description entry is "ask Bradford about himself";
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
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Chit Chat":
					say "[chitchatwithBradford]";
				else if nam is "Bounty Board":
					say "[bountyBoardBradford]";
				else if nam is "Personal Question":
					say "[personalQuestionBradford]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the bounty hunter, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say chitchatwithBradford: [smalltalk with Bradford]
	say "[randombodypart]";
	say "     [one of]'You don't get ahead in my line of work by being lazy. Gotta work for your money.'[or]You try to ask about his target, but he tells you to stay out of this one. And with that, he takes another look out the window.[or]Spotting some activity, Bradford grabs his binoculars and checks out the [bodyselector] intently for several seconds. 'Nope.'[or]'I don't mind the added muscles, but this was my favorite outfit,' he says, tugging at his stretched shirt collar.[or]'I appreciate that help with the bounties. With a helpin['] hand around I can get through a lot more, and worry a lot less.'[or]Using his big knife, Bradford quietly whittles at a chunk of wood while watching out the window. 'Some times this job's just about bein['] patient.'[at random]";

to say bountyBoardBradford: [bounties with Bradford]
	if bradfordbounty > 0 and bradfordBountyNum > 0:
		say "     How's that bounty sheet comin['] along? Says you've got to deal with another [bold type][bradfordbounty] [if bradfordBountyNum is 1]Demon Brute(s)[else if bradfordBountyNum is 2]Twisted Punk(s)[else if bradfordBountyNum is 3]Saber Kitt(y|ies)[else if bradfordBountyNum is 4]Alpha Husk(y|ies)[else if bradfordBountyNum is 5]Latex Ermine(s)[else if bradfordBountyNum is 6]Spider Girl(s)[end if][roman type].'";
	else if bradfordbounty <= 0 and bradfordBountyNum > 0:
		now bradfordBountyNum is 0;
		say "     'Good goin['] with those [if bradfordBountyNum is 1]Demon Brutes[else if bradfordBountyNum is 2]Twisted Punks[else if bradfordBountyNum is 3]Saber Kitties[else if bradfordBountyNum is 4]Alpha Huskies[else if bradfordBountyNum is 5]Latex Ermines[else if bradfordBountyNum is 6]Spider Girls[end if][roman type]. Got sent a message when you finished it up. I hope they weren't too much of a hassle. Here's your cut,' he says, tossing you a credit voucher. Checking it, you find it only worth 125 freecred.";
		let xx be charisma of Player;
		if Breast Size of Player > 6:
			increase xx by 3;
		else if Breast Size of Player > 3:
			increase xx by 2;
		if Player is female, increase xx by 1;
		if "Haggler" is listed in feats of Player:
			increase xx by 3;
		increase xx by level of Player / 5;
		let yy be 0;
		if xx > 17:
			now yy is xx / 2;
			now yy is yy * 5; [done to give an even multiple of 5]
			if yy > 100, now yy is 100;
			say "     Feeling that's unfair given the amount of work you've put in, you tell him that you want a bigger cut. The two of you argue over it for a while, but you don't let up. You remind Bradford that he'd not be getting anything at all if you hadn't gone out to finish those contracts for him[if xx > 22]. You're able to wear him down fairly quickly with your arguments[else]. It takes some time for your arguments to sway him[end if][if Breast Size of Player > 3]. Add to that how your hint that you'd been looking forward to some quality time with him goads him into wanting to keep you pleased[end if]. In the end, you negotiate another [yy] freecred, leaving you much more satisfied with your share of the bounty.";
		else:
			now yy is xx / 3;
			now yy is yy * 5; [done to give an even multiple of 5]
			if yy > 50, now yy is 50;
			say "     Feeling that's unfair given the amount of work you've put in, you try to negotiate for a better cut. The two of you argue over it for a while, but you make little headway against the bull-headed steer. In the end, you're only able to get another [yy] freecred out of him, as Bradford claims a lot of his share went to cover the fees and bribes needed to even get the contracts. Still, a little more's better than none.";
		increase freecred by yy + 125;
		increase HP of bradford by 1;
		extend game by 4;
	else:
		say "     'Still lookin['] for bounties huh? Well let's see if we can't find one here...' The bull pads over his backpack and begins shuffling through it, trying to find a contract that needs urgent attention. 'Here's a few that still need doin['].'";
		say "[BradfordBountyMenu]";

to say BradfordBountyMenu:
	LineBreak;
	say "     What kind of beasts do you want to hunt down?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Demon Brutes";
	now sortorder entry is 1;
	now description entry is "Hunt big purple demons";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Twisted Pimps";
	now sortorder entry is 2;
	now description entry is "Hunt some nasty pimps out on the streets";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Saber Kitties";
	now sortorder entry is 3;
	now description entry is "Hunt sabretoothed muscle hulks";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Alpha Huskies";
	now sortorder entry is 4;
	now description entry is "Hunt big male huskies";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Latex Ermines";
	now sortorder entry is 5;
	now description entry is "Hunt some latex creatures";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Spidergirls";
	now sortorder entry is 6;
	now description entry is "Hunt spidergirls in the underground";
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
				if (nam is "Demon Brutes"):
					say "[demonBruteBounty]";
				else if (nam is "Twisted Pimps"):
					say "[twistedPimpBounty]";
				else if (nam is "Saber Kitties"):
					say "[saberkittyBounty]";
				else if (nam is "Alpha Huskies"):
					say "[alphaHuskyBounty]";
				else if (nam is "Latex Ermines"):
					say "[latexErmineBounty]";
				else if (nam is "Spidergirls"):
					say "[spidergirlBounty]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the bounty hunter, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say demonBruteBounty:
	say "     'Those big purple demons have been runnin['] amok around the city. But it's been getting worse recently. Folks have been get'in kidnapped to hell knows where. Taking a few out might teach them to leave people alone.'";
	if demonBruteBountyState is false:
		now demonBruteBountyState is true;
		now bradfordBountyNum is 1;
		now bradfordbounty is 5;
		say "'Alright, here you go. Says you gotta kill five of [']em, good luck!'";
	else:
		say "'Hmm, looks like you already did this one, sorry. I'll tell you if this ever opens up again.'";

to say twistedPimpBounty:
	say "     'Zephyr's been gettin['] a lot of reports of some females missing in the Red Light District, only to reappear following these dressed up men. Says they put off some kinda pheromone that make women go crazy. Seems more are showing up, so thinning their numbers would help makes things safer around there.'";
	if twistedPimpBountyState is false:
		now twistedPimpBountyState is true;
		now bradfordBountyNum is 2;
		now bradfordbounty is 4;
		say "'Alright, here you go. Says you gotta kill four of [']em, good luck!'";
	else:
		say "'Hmm, looks like you already did this one, sorry. I'll tell you if this ever opens up again.'";

to say saberkittyBounty:
	say "     'Recently there's been reports around the city of busty sabretoothed felines fucking anything they can get their hands on. Doesn't help that it means their infection is spreadin['] like a wildfire. Much as I'd like to see one myself, maybe takin['] a few out would help slow down the spread.'";
	if saberKittyBountyState is false:
		now saberKittyBountyState is true;
		now bradfordBountyNum is 3;
		now bradfordbounty is 6;
		say "'Alright, here you go. Says you gotta kill six of [']em, good luck!'";
	else:
		say "'Hmm, looks like you already did this one, sorry. I'll tell you if this ever opens up again.'";

to say alphaHuskyBounty:
	say "     'Giant huskies have been goin['] around causin['] havok, forcing people to join their packs whether they like it or not, and after gettin['] infected most do. Puttin['] some in line might help in makin['] [']em all be less bold in the future.'";
	if alphaHuskyBountyState is false:
		now alphaHuskyBountyState is true;
		now bradfordBountyNum is 4;
		now bradfordbounty is 4;
		say "'Alright, here you go. Says you gotta kill four of [']em, good luck!'";
	else:
		say "'Hmm, looks like you already did this one, sorry. I'll tell you if this ever opens up again.'";

to say latexErmineBounty:
	say "     'There's been some trouble reported in the High Rise District recently. Somethin['] about a latex ferret or whatever goin['] around and attacking folks. Well, more fucking than attackin['] really... Though it sounds like it gettin['] out of hand.";
	if latexErmineBountyState is false:
		now latexErmineBountyState is true;
		now bradfordBountyNum is 5;
		now bradfordbounty is 5;
		say "'Alright, here you go. Says you gotta kill five of [']em, good luck!'";
	else:
		say "'Hmm, looks like you already did this one, sorry. I'll tell you if this ever opens up again.'";

to say spidergirlBounty:
	say "     'Mall security's gettin['] tired of losin['] maintenance men down in the sewers. Says they keep gettin['] trapped up by some spiders down there. Might help if you could encourage the creepers to find a new home.";
	if spidergirlBountyState is false:
		now spidergirlBountyState is true;
		now bradfordBountyNum is 6;
		now bradfordbounty is 7;
		say "'Alright, here you go. Says you gotta kill seven of [']em, good luck!'";
	else:
		say "'Hmm, looks like you already did this one, sorry. I'll tell you if this ever opens up again.'";

to say personalQuestionBradford:
	if HP of bradford > 4 and bradfordstory2 is false:
		now bradfordstory2 is true;
		say "     Padding over to him you ask if you could get to know more about his story, the bull still hasn't told you much, and he seems adamant about keeping it that way. But surprisingly this time he turned away from the window and set his binoculars down. Taking a seat in a nearby chair he shrugged. 'Well, there ain't too much to tell really. Born and raised on my da's ranch outside the city. Youngest of three sisters and two older brothers. There wasn't a damn second in the house that was quiet, always a ruckus, somethin goin[']. It was kinda nice, beats the quiet.' He grinned, like he was proud of something. 'We all worked on the ranch, worked our asses off. I hated it, didn't fit me right, and I always wanted to go into the city. Guess I got my wish now.' His smile turned solemn.";
		say "     A silent beat ran between the two of you before he let out a soft cough and asked about yourself. After telling a few stories and moving to a more humorous topic he finally got up and returned to his post, wishing you good luck on your journey.";
	else if HP of bradford > 5 and bradfordstory3 is false:
		now bradfordstory3 is true;
		say "     You ask if you could know more about him again, and possibly pick up where you left off before. When he lets out a sigh you're almost certain he's going to say no, but then he turns to face you, leaning against the window. 'Ain't really much else to say. Ranch work wasn't for me. Got out at soon as I could, luckily the city here was hiring some factory workers. Funny how the ranch followed me here in the way. Never liked takin['] care of the Bradfords much, now I'm one myself. It's got perks sure but, the horns, the tail, my stupid snout, took some time gettin['] used to. Though now I have these strange thoughts sometimes, been hearin['] that some folks have been gettin['] it too. Like I just wanna forget my old life and just fuck like an animal.' He paused before shooting you a rueful smile. 'Not that I haven't had the chance to. Bounties and the company of others have been keepin['] me sane. It's something I really do appreciate.' He nods gratefully at you, and then motions with his binoculars that he's going back on watch.";
	else if HP of bradford > 6 and bradfordstory4 is false:
		now bradfordstory4 is true;
		say "     Wondering if you could ask more about his past the bull simply shrugs, eyes still looking through his binoculars and out the window. 'Go for it, can't promise nothin[']. But I'll tell you what I can.' When you ask him why he became a bounty hunter Bradford seemed to pause, taking the binoculars away from his eyes to ponder the question, as if he didn't know the answer himself. 'Well, at the time it just seemed like the right thing to do. It was bad at the beginning, people were scared. Scared of the changes happening, scared because no one seemed to be coming to help. I thought I could do somethin['].' He pointed at he sawed-off shotgun he had leaning against the wall. 'Can't say I'm the best at shootin['], but I'm a hell of a crackshot. Ma's the one who taught me, now I can use what I learned to help others, if... things get out of hand. This nanomachine thing, strange how it works. Fixes us all up right quick, even a gunshot don't take us out anymore. Leaves a hell of a scar though, and more changed than we were before... Anyways, Zephyr heard about my escapades and gave me a contract, said if I help them, they'd help me too.' The bull shrugged again, 'That's about the gist of it.' And before you can say anything else he returns to his post.";
	else:
		say "     When you try to probe the bull for more information about his past and himself, Bradford shrugged before shaking his head, simply going back to his watch without a word.";

Section 5 - Sex Mechanics

the fuckscene of Bradford is "[sexwithBradford]".
to say sexwithBradford:
	say "[bradforddebug]";
	if HP of Bradford < 4:
		say "     'Look. That's [if Breast Size of Player > 3]mighty [end if]temptin['], but I've got business to take care of. You should get back to those [if HP of Bradford is 2]cock cannon[else if HP of Bradford is 3]latex wolf[end if] bounties,' he adds. With that, he turns back to the window, making another scan up and down the street.";
	else if lastfuck of Bradford - turns < 8:
		say "     'As fun as that sounds, I can't let myself get too distracted. [']Sides, I could use a bit of a break after that last go we had,' he adds with a grin.";
	else if TimekeepingVar is 1 or TimekeepingVar is -7 and HP of Bradford > 6:
		say "[sexwithBradfordMidnight]";
	else:
		say "     Though he never takes the binoculars away from his eyes you can see him grin as he continues to look out the window. 'Sure, what'd you have in mind?'";
		say "[Bradfordsexmenu]";
		clear the screen and hyperlink list;

to say Bradfordsexmenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fellatio";
	now sortorder entry is 1;
	now description entry is "suck on that thick bovine cock";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "Desktop Fuck";
	now sortorder entry is 2;
	now description entry is "bend over and take it from behind";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Wall Fuck";
	now sortorder entry is 3;
	now description entry is "have Bradford fuck you against a wall";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Lap Ride";
		now sortorder entry is 4;
		now description entry is "take Bradford's cock for a ride";
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
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fellatio":
					say "[sexwithBradfordOralStart]";
				else if nam is "Desktop Fuck":
					say "[sexwithBradfordDesktop]";
				else if nam is "Wall Fuck":
					say "[sexwithBradfordWall]";
				else if nam is "Lap Ride":
					say "[sexwithBradfordLapride]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the bounty hunter, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now lastfuck of Bradford is turns;
	clear the screen and hyperlink list;

Section 6 - Sex Scenes

to say sexwithBradfordOralStart:
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "[sexwithBradfordOral1]";
		-- 2:
			say "[sexwithBradfordOral2]";

to say sexwithBradfordOral1: [Fellatio]
	say "     Bradford smiles at the offer, rubbing his bulging crotch. 'I could certainly use a bit of relief. These big bull balls of mine could use a drainin['].' With that, he unzips his fly and pulls out his plump, bovine cock. It's a girthy ten-inch length of brick-red flesh that's throbbing and ready to go. 'Get on your knees and blow me while I keep watch,' he adds, giving his manhood an enticing shake.";
	say "     The sight of his meat makes your mouth water. You move between his legs and take a hold of his shaft, stroking and fondling it as you run your tongue up and down it. He gives a soft moan and his cock throbs in your hands as a gooey dollop of precum leaks out. Leaning in, you lick the sticky glob from his glans before opening wide and stuffing his cock into your mouth.";
	WaitLineBreak;
	if scalevalue of Player is 1 or scalevalue of Player is 2:
		say "     [if scalevalue of Player is 1]Your tiny[else if scalevalue of Player is 2]Your below-average[end if] size makes it more difficult to handle his thick cock, but you work at it until the nanites allow your mouth and throat to stretch enough to take him fully in";
	else if scalevalue of Player is 3:
		say "     His enhanced size has you briefly taking it slow before, your mouth stuffed full by his cock. You work it over with your mouth and tongue until the nanites allow your throat to stretch enough to take him fully in";
	else:
		say "     Your enlarged form means you have no difficulty handling his thick cock. You work it over with your mouth and soon you're taking it down to the base with its end stuffed down your throat";
	say ". Once you've got that deep red rod completely down to the base, you suck down on it hard while kneading his balls. He groans in pleasure and rubs your head, moaning how good you're making him feel. You smile around his bull meat and suck harder even as you draw your head back. You slide most of the way off his shaft, getting to the point you can fellate across his glans before stuffing it back into your mouth and down your [if scalevalue of Player < 3]tight [end if]throat.";
	say "     You go to town on his cock while he sits on watch, taking your time as neither of you are in a rush to finish[if Breast Size of Player > 3]. Though when you swap out to a titfuck for a little while, you really get him worked up[end if]. Sensing his climax approaching, you pick up the pace and take him fully into your hungry mouth again. You can feel the powerful throbbing of his oncoming orgasm moments before his eventual release. Hot blasts of thick bull semen shoot into your mouth and pour down your throat. His cum tastes nice, strong with flavor and virility, but with a milkier flavor that encourages to drink down more and more of it until he's spent and you're full of warm spunk.";
	if mooing > 4:
		now mooing is ( mooing * 3 ) / 5;
	else:
		now mooing is 0;
	if HP of Bradford < 7, increase HP of Bradford by 1;

		to say sexwithBradfordOral2: [Fellatio number 2]
			say "     After listening to your suggestion Bradford lets out a soft and gruff chuckle before setting down his binoculars and turning to face you. 'Was gettin['] to wonder when you'd come around again.' He smiled, eyes filled with restrained lust. 'Now why don't you come on over here and give your favorite bull some attention.' As he takes a seat on a nearby chair his hand reaches down to unzip his pants, letting his bovine cock spill out from the newly opened hole in his pants, already hanging semi-erect. Upon getting a look at his almost foot-long shaft you're quick to [if Player is submissive] drop down onto your hands and knees, hips swaying as you crawl over to him, eyes locked on that thick cock in front of you[else]saunter over to him, eager to service his giant shaft[end if].";
			say "     Kneeling before him you wrap your fingers around his cock, feeling the hot piece of meat pulse gently against your fingertips, a shot of pre spurts out of his shaft at first contact, splattering across your fingers and glancing off the side of your cheek. Eagerly you begin to stroke his length up and down, coating his shaft with his own pre until it's slick and glistening under your digits, only then, when it's twitching at full mast do you press your lips against his tip, and take it inside your mouth.";
			WaitLineBreak;
			say "     A low and satisfied sigh escapes the bovine as you start to sink your mouth deeper onto his cock, quickly rewarded with another thick dose of salty pre that coats your tongue and drips down the back of your throat. Grunting softly you begin to gently suck on his girthy shaft, your tongue dancing along his pole until your face is pressed against his crotch and you feel his shaft penetrate deep down your throat. It's not long after that a calloused hand moves to rest against the back of your head, guiding you into a slow bobbing motion that has you pulling back to the tip of his shaft, only to plunge yourself all the way back down	again. 'That's it...' you hear him mumble.";
			say "     After a good few minutes you notice Bradford's breath start to get a bit more ragged, his other hand having come to join the one already pumping your mouth against his cock. Soon his hips begin to thrust, meeting your lips every time to impale his length deeper into you, until finally with a loud moan he spills his seed, thick and creamy cum filling your mouth as you desperately try to swallow it all. Gulp after gulp you drink down his sticky seed, his prolific load drooling out of the sides of your mouth and down your chin. Once his climax begins to slow down the bull pulls back, letting his cock slip out of your mouth with a satisfying pop before a few more spurts coat your face and neck.";
			WaitLineBreak;
			say "     'Thanks, I really needed that.' He grunted, leaning back in his chair with a satisfied smile that only the best of blowjobs could bring out. 'I really was gettin['] blue in the balls before you showed up, now it's good to know I can get some relief now and then.' He takes his time tucking his now flaccid cock back into his pants, before finally turning back to resume his post at the window, leaving you to lick up the cum that had plastered your fingers and prepare to continue your journey. 'Now back to work. Thanks again, swing back around soon y'hear?'";
			if HP of Bradford < 7, increase HP of Bradford by 1;

to say sexwithBradfordDesktop:	[desktop fuck]
	say "     Bradford just smiles and nods at your suggestion of more sex. You can see that bulge in his crotch strain the material a little further as he looks you over. 'Alright[if Breast Size of Player > 3], sexy[end if]. Bend yourself over that desk and let's do this,' he says, rising from his seat.";
	say "     As he strides over to join you at the desk, he undoes his fly and pulls out that thick slab of bovine meat he's packing. The brick-red shaft is as big and juicy as you remember, an impressive ten inches of thick bull cock. Seeing it again, and those hefty balls beneath it, makes you all the more eager to have it in you. You strip down quickly and get yourself bent over the desk, waving your rear towards him, offering yourself to the bull stud's manhood.";
	WaitLineBreak;
	if Player is female:
		say "     Moving into position, the studly bull lets his big cock fall across your rear with a meaty slap. You can feel the wet dribble from a spurt of precum as it hits. He rubs his large hands across your buns before gripping them and lining himself up[if Cunt Depth of Player < 4]. Given the small size of your cunt, he has to take his time to start, sinking his pulsing rod very slowly into you. You whimper and chew your lip, enduring the initial ache until it fades and the pleasure rises to replace it. Once you're ready, you moan for him to start fucking you[else if Cunt Depth of Player < 7]. Given the size of his manhood, he has to push his pulsing rod into you gradually. It is deliciously satisfying for the added effort and soon you're moaning for him to start fucking you[else if Cunt Depth of Player > 18]. He eases his big cock into your spacious cunt and you have little difficulty taking the bull's thick shaft. This lets him jump right into action and start fucking you[else]. His enlarged cock stuffs you nice and full, providing a satisfying fit. You wriggle with delight as it sinks into you and you push back onto it, moaning for him to fuck you[end if]. With a leering grin, he pulls back several inches before thrusting sharply into you, pushing another moan out of you. After a few more of these to tease you, he switches to steadily fucking your quivering cunny. And while you enjoy this, you're quite eager to just get screwed senseless by this point and moan for him to pound you.";
	else:
		say "     Moving into position, the studly bull spreads some spit across his shaft and onto his asshole. Add to that the precum he's already drooling and at least it's enough to get things started. He grinds his sticky glans against your tight hole, giving it a few test prods, coaxing you to relax your back door before thrusting into it[if Player is twistcapped]. Not that he needs be too concerned given the extraordinary stretching capacity of your asshole. His large cock sinks into you with ease, the two of you sighing in satisfaction upon penetration. Seeing your lack of difficulty, he gets to fucking you right away[else if scalevalue of Player < 3]. Given your [Body Size Adjective of Player] size, getting that enlarged cock into you is a slow and difficult process. His large cock sinks into you small amounts at a time, drawing out the initial penetration painfully, frustratingly long. Eventually though, he manages to get it fully into you and your hole's adjusted to deal with it, allowing him to finally start fucking you[else if scalevalue of Player is 3]. Given the enlarged size of his manhood, getting it into you is not an easy process. His large cock only moves an uncomfortable inch at a time. Eventually though, he has it buried fully inside you and your hole's adjusted to accommodate it, allowing him to start fucking you properly[else if scalevalue of Player is 4]. Given your large size, you're able to accept his enlarged cock a few inches at a time. In short order, he's fully buried inside your snug hole and you've adjusted to deal with it, finding it a satisfying fit once inside. He gives a few grinds against your sensitive insides before to finally starting to fucking you properly[else]. Given your huge size, you're able to accept his enlarged cock fairly easily. After the initial penetration, you just need a moment before your hole's adjusted to deal with it and he's able to start fucking you properly[end if]. And while you appreciate his care, you're quite eager to just get screwed senseless by this point and moan for him to pound you.";
	say "     And pound you he does. With a firm grip on your buns, he adds power to his thrusts, driving his shaft with increasing strength into your needy hole. You grip the desk hard and push back into his thrusts, loving the feel of that throbbing cock sawing in and out of you. The heavy bull pants and grunts atop you as he fucks you, those big balls of his slapping [if Player is male and CockName of Player is not listed in infections of Internallist]against your own[else if Player is female]your thighs[else]your ass[end if]. In your increasingly lust-addled state, you delight in how that thick rod of his stuffs you [if scalevalue of Player < 4]so full[else]nicely[end if] and how it throbs with virility.";
	if Breast Size of Player > 3:
		say "     The stocky bull reaches around you, his strong hands cupping your [short breast size desc of Player] tits. He gropes them, playing with your nipples and caressing the sensitive globes. 'I must say, you've got some [if Breast Size of Player > 6]really [end if]fine tits on you,' he says in your ear. His expert touches add to your delight as he pounds away at you with greater zeal, clearly turned on by having some [if Breast Size of Player > 6]giant[else]big[end if] boobs to play with.";
	say "     At such a pace, he still manages to prove himself to have endurance as well, pounding you with skill as well as strength until you're both panting hard with your approaching release. The first quivers of your [if Player is female]cunt orgasming[else]asshole spasming in orgasm[end if] around his cock is what pushes him over the edge, sending him into climactic release as well. When he finally blows, he groans a restrained bovine low, trying to not give away his hideout but unable to completely remain quiet. You can feel hot splash after hot splash of bovine seed shooting [if Player is female]into your vagina[else if Player is male]against your prostate[else]into your bowels[end if] as he unloads those pendulous balls.[impregchance]";
	say "     After unloading messily into you, he [if Breast Size of Player > 6]remains atop you for a while, playing with your giant knockers before pulling out and getting off of you[else if Breast Size of Player > 3]continues to play with your big knockers for a while before pulling out and getting off of you[end if]pulls out and gets off of you. He can't hide a smug grin as he watches his excess semen leak from your [if Player is female]well-stuffed pussy[else]well-stretched pucker[end if]. 'Thanks, [if Player is female]babe[else]dude[end if]. Guess I really needed that. Hope ya don't mind the mess - you look pretty hot like that,' he adds, fingering your creamy hole before returning to his post. With how good having his hot semen in you feels, you decide to hold that position for a while, content to enjoy having it pooled inside you.";
	if mooing > 4:
		now mooing is ( mooing * 3 ) / 5;
	else:
		now mooing is 0;
	if HP of Bradford < 7, increase HP of Bradford by 1;

to say sexwithBradfordWall: [fucked in the ass against a wall]
	say "     'Ready for another round?' His gruff laugh bounces off the walls of his small hideout as he steps down from his post to look at you. 'Now why don't you get those clothes off so we can have some fun.' A large hand is already at his zipper, the bulge in his pants straining to contain the massive package he has hidden underneath.";
	say "     Just as you finish dropping the last of your clothing into a heap on the ground his arms are around you, pressing you against the nearest wall. Calloused fingers hungrily explore your naked body. Behind you, you feel his muscular chest press against your back, his hands moving slowly downwards, brushing across your hips before they lay resting against your rump. 'Anyone ever tell you that you have a great ass?' His rough hands squeeze your buttcheeks to emphasize the point, thick fingers kneading them like bread. As you're about to respond something large and gently throbbing presses up against your ass, stifling anything you were about to say into a surprised moan. Not long after, you gasp as a hot gout of pre splashes against your pucker, which is quickly rubbed in by the throbbing shaft threatening to penetrate you.";
	WaitLineBreak;
	say "     Pinned against the wall with your hands flat on the hard surface, you could only pant softly as Bradford took his time, sawing his ten-inch shaft back and forth until he finally pushes it in with a low grunt. And with a quick thrust he was hilted inside of you, all ten inches throbbing hotly for a moment, before he begins to thrust in earnest. In no position to resist, all you can do is moan as he pounds into your accommodating hole, each push sending a pleasurable shudder through your whole body.";
	say "     Amidst the thorough pounding Bradford was giving you from behind, you suddenly feel a calloused hand brush against your thigh, and making its way between your legs. [if Player is purefemale]Pressed against the wall, you aren't able to look down as his fingers touch your dripping slit, another moan escaping your already lips. It's not long after the initial teasing that he's sunk two fingers inside, causing another moan to escape your already parted lips, every thrust of his fingers moving in time with that thick cock fucking your ass[else]Shoved against the wall, you aren't able to look down as his fingers touch your already drooling cock, your own shaft already plastering the wall with sticky pre. Hand firmly wrapped around your leaky length he begins to stroke in time with every thrust, coaxing another moan out of your already parted lips[end if].";
	WaitLineBreak;
	say "     Now sandwiched between two pleasures you can't help but roll your hips, moving in time back and forth, indulging in one sensation, before shifting to spear yourself back onto his cock. Over and over again, you're fucked senseless until the hand against your hip is the only thing holding you up, along with the ten-inch cock still buried inside your ass. Blissful seconds turn to minutes, but under the constant stimulation you can only last for so long. Fireworks go off in your brain and you cum hard, [if Player is purefemale]your cunt clamping down around his exploring digits, your juices drenching his hand[else]your cock painting the wall white, the excess splashing along his hand as well as coating a good portion of your chest[end if]. Still convulsing in climatic orgasm, your spasming hole finally wear the bull down, a loud moan that sounds more like a mooing cow echoes through the encampment before his hot load pours into your ass. The last thing you remember before passing out is being pumped full of bull, and the continuous shuddering of your orgasm-wracked body...";
	say "     After what must have been hours you wake up to find yourself swaddled in warmth, a fur blanket over your naked body and the cushion of a firm mattress supporting your back. Looking around in confusion you see that Bradford had returned to his post, binoculars at the ready. It's only the rustling of the sheets that attracts his attention, a friendly smile playing across his face as he turns to you. 'Hey there, was wonderin['] when you'd wake up. Hope you don't mind me putting you to bed, but you seemed all tuckered out after our last stress relief session.' As he recounts your wild sexcapade your face turns blush red, the memories of the sweltering moment playing in your head while you start to get dressed. 'Though I didn't mind, it's nice to have someone around here now and then.' Once you're fully clothed you pad over to the bull on duty, leaning in for a warm hug that Bradford wholeheartedly returns, accompanied by a soft pat on your rump. 'Make sure you be careful out there y'hear? I've gotten used to seeing you around, so don't be a stranger!'";
	if HP of Bradford < 7, increase HP of Bradford by 1;

to say sexwithBradfordLapride:		[vaginal - lap ride]
	setmonster "Bovine";
	choose row MonsterID from the Table of Random Critters;
	say "     Bradford looks away from the window to run his eyes up and down you[if Breast Size of Player > 3] appreciatively[end if]. 'Alright. I could use a bit of a break. It don't look like nothin's happenin['] out there. Feel good to let off a bit of steam.' He unzips his fly and pulls out his plump bull-cock. It's a girthy ten-inch length of brick-red flesh that's throbbing and ready to go.";
	say "     The sight of his bovine shaft gets you all the more excited. You straddle his lap and grind your [cunt size desc of Player] pussy down atop it. You love the warm feel of it and how it pulses and throbs with need at your touch. After this little bit of teasing[if Breast Size of Player > 3], during which he bares your chest and starts fondling your boobs[end if], you lower yourself [if Cunt Depth of Player < 4]slowly down onto the pulsing rod. Given the size of his manhood, you really have to take your time to start, enduring the ache of stuffing yourself until that fades and the pleasure rises to replace it[else if Cunt Depth of Player < 7]gradually down onto the pulsing rod. Given the size of his manhood, you have to take your time to start, but it is deliciously satisfying for the added effort[else if Cunt Depth of Player > 18]with ease down onto the pulsing rod. Given the size of your spacious cunt, you have little difficulty taking the bull's thick shaft, letting you jump right into action[else]down onto the pulsing rod. His enlarged cock stuffs you nice and full for a satisfying fit that has you moan with pleasure as you take it into you[end if].";
	WaitLineBreak;
	if Breast Size of Player > 3:
		say "     The gruff bull can't keep his hands off your [short breast size desc of Player] breasts. His meaty hands grope your bosom and play with your nipples. 'Ain't nothin['] I like more than a big set of tits[if Breast Size of Player > 6] - and yours are great[end if],' he says appreciatively as he lavishes yours with attention. His big, broad tongue slathers across your nipples before his big, bovine lips wrap around it and suck hard. You writhe in pleasure in his lap, riding him all the harder in response. Given how good he's making you feel, you know he's definitely handled his fair share and more of big knockers.";
	say "     The two of you go at it hot and heavy and the feel of his thick, bovine meat inside you is wonderful. Grabbing the bull by the horns, you moan for more. This drives him to thrust up into you all the harder. You're soon bouncing in the strong bull's lap, riding him like a rodeo bull. You manage to stay on the ride until the two of you finally cum. You feel the first of several blasts of bull semen shoot up into you, sending you into climactic release as well. Losing your grip as orgasmic pleasure courses through you, you're tossed by a particularly hard thrust and accompanying impressive shot of semen. You land on the floor in front of him, laughing in delight and moaning in pleasure even as he pumps a few final streams of white across you. He smiles down at you and offers a hand to help you up, pulling you into a tongue-filled kiss while you run your hands over his muscly body. Only after the long kiss does he release you and tuck himself back into his pants. As soon as that's done, he's back to keeping watch.[impregchance]";
	if mooing > 4:
		now mooing is ( mooing * 3 ) / 5;
	else:
		now mooing is 0;
	if HP of Bradford < 7, increase HP of Bradford by 1;

to say sexwithBradfordMidnight: [night sex with Bradford]
	say "     At your suggestion, you're surprised to see Bradford close the window he usually has open, setting his binoculars on a nearby table before approaching you. 'Alright, been meanin['] to get some shuteye soon anyhow, nothing much here ever happens at night.' Moving one hand down to unzip his pants, you take that as a sign to get rid of your own, as well as any other article of clothing you may be wearing. He closes in fast, muscular arms wrapping around your side to hold your hips gently in his calloused hands. With the glow of the bright moon serving as your only source of light your vision is encompassed by shadows and bulging abs. He kisses you, his broad tongue finding its way into your willing mouth with more passion than your used to seeing from the bull, his roaming hands mirroring yours as you both fumble to the hard mattress on the ground. By the time you get there his own clothing had disappeared, a breadcrumb trail leading to your sweltering bodies tangled up on the makeshift bed.";
	say "     Not wasting any time you straddle his hips, feeling his now rigid cock press between your asscheeks, pre already oozing out the tip of his ten-inch dick and slathering against your backdoor pucker. For a moment you both enjoy the hot closeness, your hands on his bare chiseled chest as you both breath raggedly in the dim moonlight.";
	WaitLineBreak;
	if Player is purefemale:
		say "     Hands placed gently on your hips you feel Bradford start to move, shifting his body, guiding yours up so your repositioned on top of his cock, your pussy now pressed against the tip of his oozing shaft, threatening to spread your cunt and thrust into you at any second. But he takes it slow, your weight in his strong arms, teasing his tip against your dripping slit until your hips jerk on their own, a cry of restrained pleasure that you don't remember uttering. But then it slides in, almost too easily, slick with your own fem juices as well as the leaking pre that soon starts to fill your passage. You both let gravity carry you the rest of the way on your simmering descent, the bull easing you with gentle care until you're fully seated on his length, your hips fleshly pressed against his. You moan softly, feeling your pussy stretch around his cock, slowly conforming the fit its girth as you squeeze down, getting a sense of just how good it felt to feel his shaft pulse and throb inside you. In time you start to move, gyrating your hips while riding his cock. Up and down, again and again. With every thrust you feel him drive deeper, your mixed lubricant making each plunge slick and smooth.";
	else:
		say "     Hands placed gently on your hips you feel Bradford start to move, shifting his body, guiding you up so that his oozing shaft is precariously pressed against the entrance to your slick ass. Letting some of your weight rest on his cock the tip of his length threatens to spread you open, your own cock standing rigid at attention as you wait for the pleasurable descent you know is coming. Slowly he begins to let you fall, gravity helping as inch after inch gets fed into you. Moaning softly you can't help but buck your hips, a spurt of your own pre splashing onto the bull's chest as he continues your descent, until finally you're sitting flesh against his hips, his cock fully sheathed inside of you. It's only now that you realize how heavy you were breathing, soft pants that led to occasional moans while he shifted his hips, stirring his cock inside you, letting you get used to its girth and heat. You squeeze down, reveling in the raw sensation of his pulsing shaft leaking inside of you. In time you start to move, gyrating your hips while riding his cock. Up and down, again and again. With every thrust you feel him drive deeper, his leaking pre making each plunge slick and smooth. All the while you can't help but use a hand to pump your cock, matching each stroke with the deep sensation of the bull plowing into you.";
	say "     You moan every time you feel him bottom out inside of you, the mounting pleasure only driving you both to into a passionate frenzy that sends you both careening over the edge. Your eyes roll into the back of your head as you arch your back, waves of pure bliss washing over you as you cum hard, [if Player is purefemale]your cunt spasming around Bradford's twitching shaft, milking every last drop of cum out of his balls while he pours spurt after spurt of thick seed into your pussy. His creamy and fertile cum fill your womb and the quantity gushes out between the two of you, staining the mattress beneath you[else]your ass squeezing his cock tight while you cum onto the bull's chest, your seed spilling out while his own fill your ass to max capacity, before drooling out between the two of you to stain the mattress below[end if].";
	WaitLineBreak;
	say "     After you finally come down from you high you're left panting heavily on the bull's chest. Shifting to the side he slides you off of him and onto the bed beside him. He tosses the thick fur blanket over you both before wrapping his muscular arms around you once more, drawing you close to body. His cock is still seated deep inside you, pulsing occasionally, staying semi-erect. 'Mmh, that was really somethin['].' His voice rumbles behind you, low and warm. He makes no offer to release you from his grasp, cuddling against you under the blankets, and you make no move to leave. Lulled by the soft sound of the bull's breathing along with the rhythmic feeling of his chest breathing in and out, you slowly drift to sleep, your exhausted body welcoming the dark blanket of unconsciousness.";
	say "     It was the warm rays of light streaking across your face that first awake you. Mind still groggy you try to remember where you are, before recalling the events of last night. Large bull arms still encompass you, making you feel like a living body pillow pressed against the muscular bull. Your movements must have woken him up because only a few seconds later you feel him shift, his arms slowly releasing you just enough so you can turn to face him, a warm, if not sleepy smile plastered across his face. 'Mornin[']', the bull grumbles. You both let a comfortable silence pass between the two of you, simply enjoying the warmth of each other's bodies until you begrudgingly start to get up. Getting your clothes back on you turn to embrace the bull in a tight hug, your lips meeting once more with the same amount of passion you had last night. 'Wasn't so bad sharing a bed with someone, maybe we should do it again sometime.'. After wholeheartedly agreeing you say your goodbyes and start planning for the rest of your day.";
	if HP of Bradford < 8, increase HP of Bradford by 1;
	follow the turnpass rule;
	follow the turnpass rule;

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
