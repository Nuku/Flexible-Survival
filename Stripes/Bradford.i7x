Version 1 of Bradford by Stripes begins here.
[ Version 1.0 ]

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
		say "     Your exploration of the city takes you past a small bar.  Noticing no activity, you pause for a moment and peek inside.  It's only moments before you were going to be grabbed from behind that you realize that things were actually too quiet.  Going back on alert, you're able to dodge the oncoming grapple and roll to the side.  Getting up a few feet away, you find it is a tough looking bull-man confronting you.";	
	otherwise:
		say "     Your exploration of the city takes you past a small bar.  Noticing no activity, you pause for a moment and peek inside.  But without warning, you find yourself grappled from behind.  He squeezed you in his crushing grip [if strength of player > 18]before you break yourself free with your enhanced might (8 dmg)[otherwise]until you see spots before he tosses you roughly against the wall (16 dmg)[end if].  Turning, you find it is a tough looking bull man confronting you.";
		if strength of player > 18:
			decrease hp of player by 8;
		otherwise:
			decrease hp of player by 16;
	attempttowait;
	say "     Quick as a whip, the gruff bull pulls a sawed-off shotgun into his hands and points it straight at your chest.  This gives you serious pause, during which looks you over with a mean gaze.  His eyes look you over up and down, but rather than stop at either your face or your junk, they stop somewhere in between[if breast size of player > 4].  And while they do linger on your [short breast size desc of player] a little longer, it's not there they stop either.  Eventually he seems satisfied though and lowers the gun, and you heave a large sigh of relief.";
	say "     'Sorry [']bout that.  Thought you might've been someone else,' he says, slipping the shotgun into a leather holster at his hip.  'Tellin['] who's who these days ain't easy.'";
	attempttowait;
	say "     No longer being held at gunpoint, you're able to relax and take in your would-be assailant.  This tough-looking bull-man is decked out in an torn pair of black jeans, khaki vest and ripped grey t-shirt.  His clothing has old stains on it in a few places, though the rips are newer, probably stretched out by his transformation.  In addition to the holstered shotgun, he's got a large knife on his other hip.  Hanging around his thick neck are a pair of binoculars and a string necklace with an assortment of animal teeth on it.";
	say "     This guy's been transformed into a stocky bull of a man.  His bovine head is on a short neck and has its horns protruding from the sides of his temples.  His body's bulky with muscle, and while he stands only a little above six feet tall, he looks like he could take on someone much larger with his bare hands.  Any boots he may have worn have been discarded, his feet now ending in hardened hooves.  His bovine coat is predominantly a russet red, with white on his head, down the center of his chest and at the end of his limbs.";
	attempttowait;
	say "     You start to ask him what all of that was about, but he waves you off, saying it's none of your business.  He gives you another look over.  'You do seem to be keepin['] it together pretty good though.  Care to chat for a bit.  I got a bit of a business proposition for you.'  And while there's nothing quite like having been held at gunpoint by someone to start a relationship, you do decide to go ahead and hear him out.";
	say "     Crossing the street, he enters another storefront and leads up into what was formerly a second floor accounting office.  While straining to look professional, the former businessplace looks cheap and trashy.  The office furniture is old and mismatched, and the walls are covered in ad posters to have your taxes done.  Given the neighbourhood, that's unsurprising.";
	attempttowait;
	move player to Bradford's Camp;
	now Bradford's Camp is known;
	now battleground is "void";
	now hp of Bradford is 1;
	now Bounty Hunter is resolved;


Section 2 - Bradford's Camp

Bradford's Camp is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Bradford's Camp is "[bradfordcampdesc]".

the scent of Bradford's Camp is "The former accountant's office turned temporary stakeout camp smells of Bradford and wood chips overlaid on that of paperwork.".

to say bradfordcampdesc:
     say "	   Tucked away upstairs in a second-story accountant's office is [if hp of Bradford is 0]the bull man's[otherwise]Bradford's[end if] temporary camp.  From the scattered supplies, camping stove and sleeping bag, he's been camped out here for at least a few days.  Through the lowered blinds, the window gives a good view up and down the street and of the bar across the street.  There's a clump of wood shavings piled on the floor near the window.  While by no means neat, the place isn't dirty in a disgusting way, just untidy.  The bull man typically sits keeping an eye out through the slats of the blinds, binoculars at the ready.";


Section 3 - Bradford

Bradford is a person.  Bradford is in Bradford's Camp.
The description of Bradford is "[bradforddesc]".
The conversation of Bradford is { "Moo, mutherfuckah!" }.
the scent of the Bradford is "The bull man has a somewhat musky scent of sweat, but not overpoweringly so.".

bradfordbounty is a number that varies.
bradfordstory1 is a truth state that varies.  bradfordstory1 is usually false.

to say bradforddesc:
	say "[bradforddebug]";
	say "     [if hp of Bradford < 2]This guy's[otherwise]Bradford's[end if] been transformed into a stocky bull of a man standing a little over six feet tall.  His bovine head is on a short neck and has its horns protruding from the sides of his temples.  He's wearing a pair of torn black jeans, khaki vest and ripped gry shirt.  His clothing has a few old stains on it and shows several newer rips where his transformation's strained the material to fit his bulked-up muscles.  He's armed and ready, carrying a sawed-off shotgun in a holster at his side and has a large knife on his other hip.  Hanging around his thick neck are a pair of binoculars and a string necklace with an assortment of pointy animal teeth on it.  Any boots he may have worn have been discarded, his feet now ending in hardened hooves.  His bovine coat is predominantly a russet red, with white on his head, down the center of his chest and at the end of his limbs.  Any boots he may have worn have been discarded, his feet now ending in hardened hooves.  His bovine coat is predominantly a russet red, with white on his head, down the center of his chest and at the end of his limbs.";


Section 4 - Dialog

Instead of conversing the Bradford:
	say "[bradforddebug]";
	if hp of Bradford is 0:
		say "***Unknown error.  Adjusting.";
		now hp of Bradford is 1;
		now Bounty Hunter is resolved;
		now Bradford's Camp is known;
	otherwise if hp of Bradford is 1:
		say "     'The name's Bradford,' he says, holding out his hand to shake.  'I didn't mean to start us off on the wrong foot.  Like I said - kinda tough to tell who's who out there these days.  Makes my job as a bounty hunter all the harder.  Which is what I wanted to talk about.'  He takes a breath and uses the moment to peek through the blinds, scanning up and down the street.";
		say "     'Now, as you can prob'bly guess, I'm lookin['] for someone who should be comin['] by here sooner or later.  But it's takin['] longer'n expected.  With all them monsters about, there's plenty of bounty contracts for a guy like me, but I don't want to miss my chance with this guy.  Whole reason I came to this God-forsaken city in the first place.  Ended up bullified for my troubles.  Ain't no way I'm leavin['] without him.  But that ain't why I called you up here.'";
		say "     As he pauses to take another peek out between the blinds, you consider pointing out that his target might not have survived the city at all, let alone be identifiable.  Either the bull knows something or he's clinging to some false hope.  Either way, best not to risk upsetting him.";
		attempttowait;
		say "     'Now, like I said, I got me a mite more contracts than I can handle on my own.  Couple of [']em I've got partially done, having dealt with some of the beasties earlier on.  But they ain't comin['] around here much anymore, so if'n you can finish those contracts off for me, I'd be appreciative and cut you in on the bounty.  And that's on top of the per-head reward them Zephyr guys are a-givin['].'";
		if humorous is banned:
			say "     He pulls out a folded printout from his vest pocket and looks it over.  'Hmm...  Now ain't that odd.  This one's done gone and changed on me.  Says the bounty's been closed due to bannin['].'  He turns the page towards you so you can see the red [']BANNED['] stamped across the image of a walking phallus creature.  'Guess we're not gettin['] that one no more,' he grumbles.";
			attempttowait;
			say "     Taking another sheet from his vest, he checks that one.  'Okay, this one's still active.  It's a little further away though.'  You look it over quickly.  The top of the page has [']BOUNTY['] printed across it with more details under the greyscale image of a smooth, latex-skinned wolf.  Among the details are mentions of [']high viscosity['], [']encasement['] and [']corruptive infection['].  Another odd detail is how it stated the bounty is for eight of them, but there's another printed number marking that there's [bold type]four remaining[roman type] to complete the bounty.";
			say "     'You take this and see if you can track down a few more of these things.  I was able to get a bunch of [']em before I got here.  Once you've got to last of th['], come back here and I'll cut you in on the reward.'";
			now bradfordbounty is 4;
			now hp of Bradford is 3;
		otherwise if "Female Preferred" is listed in feats of player:
			say "     He pulls out a folded printout from his vest pocket and looks it over.  'Hmm...  Now ain't that odd.  This one's done gone and changed on me.  Says the bounty's been closed due to gender lockin['].'  He turns the page towards you so you can see the red [']CLOSED['] stamped across the image of a walking phallus creature.  'Guess we're not gettin['] that one no more,' he grumbles.";
			attempttowait;
			say "     Taking another sheet from his vest, he checks that one.  'Okay, this one's still active.  It's a little further away though - out in the main part of the city.'  You look it over quickly.  The top of the page has [']BOUNTY['] printed across it with more details under the greyscale image of a smooth, latex-skinned wolf.  Among the details are mentions of [']high viscosity['], [']encasement['] and [']corruptive infection['].  Another odd detail is how it states the bounty is for eight of them, but there's another printed number marking that there's [bold type]four remaining[roman type] to complete the bounty.";
			say "     'You take this and see if you can track down a few more of these things.  I was able to get a bunch of [']em before I got here.  Once you've got to last of th['], come back here and I'll cut you in on the reward.'";
			now bradfordbounty is 4;
			now hp of Bradford is 3;
		otherwise:
			say "     He pulls out a print-out sheet with a grayscale image of a walking phallus.  The top of the page has [']BOUNTY['] across it and more details typed out below the image.  Among that is mention of stuff like [']high output['], [']long-range semen launching['] and [']concerns about spreading the infection at a distance['].  Another odd detail is how it stated the bounty is for eight of them, but there's another printed number marking that there's [bold type]three remaining[roman type] to complete the bounty.";
			say "     'You take this and see if you can track down a few more of these things.  I was able to get most of [']em, but I guess they've learned not to come around here.  Once you've got to last of [']em, come back here and I'll cut you in on the reward.'";
			now bradfordbounty is 3;
			now hp of Bradford is 2;
	otherwise if hp of Bradford is 2 and bradfordbounty <= 0:
		say "     'Hey there!' the bull responds in greeting.  'You done good.  I got a message as soon as you'd finished the bounty.  I figgered you'd be up for the challenge.  Here's your share of the reward,' he says, passing you a chit for 75 freecred.  Seeing your non-plussed expression, he shrugs.  'Look, that one was already a pretty small contract.  And I'd already done most of the work on it.  Besides, I'm the one who found the contracts in the first place.  Don't worry, I'll cut you in on more of the next one, if you're up for it.'";
		say "     Pulling out another sheet from his vest, he checks it before passing it along to you.  'This one's a little further out.  These things're runnin['] around in the main part of the city.'  You look it over quickly.  The image this time is of a smooth, latex-skinned wolf.  Among the details mentioned are stuff about [']high viscosity['], [']encasement['] and [']corruptive infection['].  The bounty sheet states that there's [bold type]four remaining[roman type] to complete it.";
		increase freecred by 75;
		extend game by 4;
		now bradfordbounty is 4;
		now hp of Bradford is 3;
	otherwise if hp of Bradford is 2 and "Female Preferred" is listed in feats of player:
		say "     'How's that contract of ours coming along?' Bradford asks.  Passing him the contract, he snorts angrily.  'What happened to it?  This one's done gone and changed on us.  Says the bounty's been closed due to gender lockin['].'  He turns the page towards you so you can see the red [']CLOSED['] stamped across the image.  'Guess we're not gettin['] that one no more,' he grumbles.";
		say "     Taking another sheet from his vest, he checks that one.  'Okay, this one's still active.  It's a little further away though - out in the main part of the city.'  You look it over quickly.  The image this time is of a smooth, latex-skinned wolf.  Among the details mentioned are stuff about [']high viscosity['], [']encasement['] and [']corruptive infection['].  The bounty sheet states that there's [bold type]four remaining[roman type] to complete it.";
		now hp of Bradford is 3;
		now bradfordbounty is 4;
	otherwise if hp of Bradford is 3 and bradfordbounty <= 0:
		say "     'Good goin['] with those wolf things.  Got sent a message when you finished it up.  I hope they weren't too much of a hassle.  Here's your cut,' he says, tossing you a credit voucher.  Checking it, you find it only worth 125 freecred.";
		let xx be charisma of player;
		if breast size of player > 6:
			increase xx by 3;
		otherwise if breast size of player > 3:
			increase xx by 2;
		if cunts of player > 0, increase xx by 1;
		if "Haggler" is listed in feats of player:
			increase xx by 3;
		increase xx by level of player / 5;
		let yy be 0;
		if xx > 17:
			now yy is xx / 2;
			now yy is yy * 5;	[done to give an even multiple of 5]
			if yy > 100, now yy is 100;
			say "     Feeling that's unfair given the amount of work you've put in, you tell him that you want a bigger cut.  The two of you argue over it for a while, but you don't let up.  You remind Bradford that he'd not be getting anything at all if you hadn't gone out to finish those contracts for him[if xx > 22].  You're able to wear him down fairly quickly with your arguments[otherwise].  It takes some time for your arguments to sway him[end if][if breast size of player > 3].  Add to that how your hint that you'd been looking forward to some quality time with him goads him into wanting to keep you pleased[end if].  In the end, you negotiate another [yy] freecred, leaving you much more satisfied with your share of the bounty.";
		otherwise:
			now yy is xx / 3;
			now yy is yy * 5;	[done to give an even multiple of 5]
			if yy > 50, now yy is 50;
			say "     Feeling that's unfair given the amount of work you've put in, you try to negotiate for a better cut.  The two of you argue over it for a while, but you make little headway against the bull-headed steer.  In the end, you're only able to get another [yy] freecred out of him, as Bradford claims a lot of his share went to cover the fees and bribes needed to even get the contracts.  Still, a little more's better than none.";
		increase freecred by yy + 125;
		now hp of Bradford is 4;
		extend game by 4;
	otherwise if hp of Bradford < 4:
		say "[randombodypart]";
		say "     [one of]'How's that bounty sheet comin['] along?  Says you've got to deal with another [bold type][bradfordbounty] [if hp of Bradford is 2]cock cannon(s)[otherwise if hp of Bradford is 3]latex wolf(ves)[end if][roman type].'[or]'You don't get ahead in my line of work by being lazy.  Gotta work for your money.'[or]You try to ask about his target, but he just grumbles for you to focus on your part of the job and he'll do his.  And with that, he takes another look out the window.[or]Spotting some activity, Bradford grabs his binoculars and checks out the [bodyselector] intently for several seconds.  'Nope.'[or]'I don't mind the added muscles, but this was my favorite outfit,' he says, tugging at his stretched shirt collar.[or]'Shouldn't you be out there working on those bounties?'[at random]";
	otherwise if bradfordstory1 is false and a random chance of 1 in 3 succeeds:
		now bradfordstory1 is true;
		say "     'This body of mine is like them cows on my da's ranch.  Big, dumb Brafords.  Named after [']em and everything.  I always hated them and that place.  Left as soon as I could.  Must be someone's idea of a sick joke, me lookin['] like this.'";
	otherwise:
		say "[randombodypart]";
		say "     [one of]'You don't get ahead in my line of work by being lazy.  Gotta work for your money.'[or]You try to ask about his target, but he tells you to stay out of this one.  And with that, he takes another look out the window.[or]Spotting some activity, Bradford grabs his binoculars and checks out the [bodyselector] intently for several seconds.  'Nope.'[or]'I don't mind the added muscles, but this was my favorite outfit,' he says, tugging at his stretched shirt collar.[or]'I appreciate that help with the bounties.  Those're all I've got that're active right now.'[at random]";


Section 5 - Sex Mechanics

the fuckscene of Bradford is "[sexwithBradford]".

to say sexwithBradford:
	say "[bradforddebug]";
	if hp of Bradford < 4:
		say "     'Look.  That's[if breast size of player > 3]mighty [end if]temptin['], but I've got business to take care of.  You should get back to those [if hp of Bradford is 2]cock cannon[otherwise if hp of Bradford is 3]latex wolf[end if] bounties,' he adds.  With that, he turns back to the window, making another scan up and down the street.";
	otherwise if lastfuck of Bradford - turns < 4:
		say "     'As fun as that sounds, I can't let myself get too distracted.  [']Sides, I could use a bit of a break after that last go we had,' he adds with a grin.";
	otherwise if 1 is 1:	[***]
		say "[bracket]***Sex content to come soon. - The Mgmt[close bracket][line break]";
	otherwise if cunts of player > 0:
		say "[sexwithBradford01]";	[vaginal]
		now lastfuck of Bradford is turns;
	otherwise:
		say "[sexwithBradford02]";	[oral]
		now lastfuck of Bradford is turns;


Section 6 - Sex Scenes

to say sexwithBradford01:
	say "***vaginal***";

to say sexwithBradford02:
	say "***oral***";


Section 9 - Endings

[ To appear later ]

Section X - Notes & Debugging

to say bradforddebug:
	if debugactive is 1:
		say "DEBUG (Bradford) -> HP: [hp of Bradford] <- DEBUG[line break]";
	

[                   hp of Bradford                   ]
[ 0 = not met                                        ]
[ 1 = met Bradford                                   ]
[ 2 = talked to Bradford - contract #1 (Cock Cannon) ]
[ 3 = completed contract #1 / start #2 (Latex Wolf)  ]
[ 4 = completed contract #2 / open for sex           ]

Bradford ends here.
