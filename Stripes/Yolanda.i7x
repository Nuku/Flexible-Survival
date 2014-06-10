Version 1 of Yolanda by Stripes begins here.
[Version 1 - New NPC]

"Adds a dominant Raven NPC named Yolanda to the Flexible Survival game."

Section 1 - Raven Nest

Inside from the Red Apartment is a room called Raven Nest.		[see the Qytat a'th Lundrues.i7x file in the Hellerhound folder for this location.]
Raven Nest is a room.  It is sleepsafe.
The description of Raven Nest is "[ravennestdesc]";

the scent of Raven Nest is "This place smells of birds with a tinge of sexual arousal.";

to say ravennestdesc:
	say "     Inside the apartment building are several small units - likely lower income or student tenants, you'd guess from the remains of their contents.  While they've been broken into and looted of supplies, one on the second floor is still occupied.  While still in disarray, some attempt has been made to organize the apartment for its occupant - a human-sized raven.  Much of the furniture's been removed, though the cushions from several couches (pillaged from the neighbouring units) along with several blankets form a rather comfy nest for the avian.  When you come in, she's [one of]pecking at her food supplies[or]adjusting the blankets of her nest[or]reading a book[or]poking through her collection of shiny gewgaws[cycling].";


Section 2 - Yolanda

Yolanda is a woman.  Yolanda is in The Raven Nest.
The description of Yolanda is "[yolandadesc]".
The conversation of Yolanda is { "Caw!" }.
yolandaqytat is a truth state that varies.  yolandaqytat is usually false.
yolandatreasure is a truth state that varies.  yolandatreasure is usually false.

to say yolandadesc:
	say "     Upon casual examination, Yolanda appears to be a normal raven, but enlarged to human scale and wearing some golden jewelry.  Keeping to the posture of a bird most of the time, it takes a while to realize that she can take on a more human posture when she feels it's necessary and even has small, taloned hands hidden under her wings['] primary feathers.  She has sharp eyes, a sharper beak and an even sharper tongue.";

the scent of Yolanda is "The raven smells of bird feathers and feminine arousal.";


Section 2 - Conversation

Instead of conversing the Yolanda:
	if hp of Yolanda is 0:
		say "     Introducing yourself to the raven, she looks you up and down with a sideways, avian stare.  'Oh sure, just come barging right in.  With manners like that, you're either a looter or some sex fiend.  Probably both, with my luck.'  You try to explain that you're a survivor looking for others until rescue, but the bird just gives you a sharp, laughing caw!  'You'll be waiting a long time for that, honey.  If they haven't gotten off of their asses yet, I doubt they're going to bother trying at this point.";
		say "     'Now, back to the current matter... the name's Yolanda and I ain't in the mood to be raisin['] my tail to just anyone who comes wandering in here.  I get hassled enough by those pesky gryphons who keep popping up around here as it is.'  She pauses to look you over with an avian, sideways stare.  'That said, should you be looking to take a turn on bottom... then I think something might be arranged...' she says with a faint grin in her voice, pulling the corner of a blanket off of an assorted box of leather straps and strap-ons.";
		now hp of Yolanda is 1;
	otherwise if yolandaqytat is false and a random chance of 1 in 3 succeeds:
		say "     'Those blue gryphon herms are always showing up around here.  Those feather-brains have gotten some fool notion in their heads that there's something special around here.  As far as I can tell, they're the only ones around here who're [']special[']... in the Olympic sense.'";
		if findablestairs is 1:
			say "     Mentioning that you heard something about that from one of them acting as a guide for the others, she caws and rolls her eyes.  'Great!  Now they're telling others to come around here to bug me[if hp of Yolanda > 1].  Well, at least you've been able to provide some amusement.'";
		otherwise:
			say "     Inquiring for more details on what the gryphons are doing, she shakes her head.  'I'm not really sure.  All I ever get out of them is nonsense.  Some foolishness about a crazy [bold type]guard gryphon[roman type] who told them about a special stairwell.  And so they keep looking in this here and come up to my apartment to harrass me.  Damn pests, most of them.'";
		now yolandaqytat is true;
[	otherwise if jbfound < 2 and Jewelry Box is unresolved and a random chance of 1 in 3 succeeds:
		say "     'I've got a nice collection of pretties, don't you think?  I'm sure it's all because of some compulsion from being a raven, but that doesn't make them any less lovely,' she muses, holding up a pearl necklace in her talons.  'Besides, if you're right and we do actually get rescued, it won't hurt to have a few things to ensure I'm comfortable.  Should you come across anything particularly nice, be sure to keep me in mind,' she says, brushing a wing sensually along your side.  'A [bold type]jewelry box[roman type] would be a good place to start.  That's where I got most of these.'";
		now jbfound is 1;		]
	otherwise:
		say "     [one of]'You say [']Nevermore['] and I'll peck out your gizzard.'[or]'If you want to be rewarded with a chance to be on top, be on the lookout for some more pretties for my collection.'[or]'I keep seeing those pesky blue gryphons around here.  They're occasionally amusing when I'm willing to put up with their foolishness.'[or]'I've got the place all to myself these days... aside from the occasional nosey visitor,' she adds, giving you a steely gaze.[or]'After the outbreak, I pecked through the other apartments for what I needed.  I'm pretty well off for supplies and even got myself a nice, shiny collection,' she adds, shifting her pile of jewelry and junk with one foot as she admires her trinkets.'[or]'Maybe you can be of some use to me.  Bring me some nice trinkets if you happened to find any.'[or]Setting down a shiny marble she was admiring, she rakes her shiny collection a little closer.[or]'I've already gone through the other apartments a couple of times.  That's how I put together my collections,' she says, glancing from her pile of shiny trinkets and box of sex toys.  'Some of them were mine, obviously, but it's not like anyone's going to be back for theirs, so why should they go to waste?'[at random]";


Section 3 - Sexy Times

the fuckscene of Yolanda is "[sexwithYolanda]".

to say sexwithYolanda:
	if hp of Yolanda is 0:
		say "     That's rather forward of you.  You should probably introduce yourself first.";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     Lacking a gender, you doubt you'll be able to rouse much interest out of the cynical raven.";
	otherwise if lastfuck of Yolanda - turns < 6:
		say "     'More already?  If you're going to go sex crazy, run along and do it somewhere else,' she says, flapping her wing dismissively towards the door.'";
	otherwise:
		say "     '[if hp of Yolanda is 1]Looking for sex?  Why am I not surprised?  Still, I guess I can indulge you if you're willing to play by my rules,' she adds, reaching for her box of sex toys with one foot[otherwise]Back for more?  Well, I guess I can indulge you [one of]as a means to pass the time[or]as a change of pace from banging those gryphons[or]so you don't go nuts for lack of sex[cycling].'  As she speaks, her foot strays towards her box of toys[end if].";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if cunts of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Receive vaginal";
			now sortorder entry is 1;
			now description entry is "take it in the pussy";
		choose a blank row in table of fucking options;
		now title entry is "Receive anal";
		now sortorder entry is 2;
		now description entry is "take it in the ass";
		choose a blank row in table of fucking options;
		now title entry is "Bound for oral";
		now sortorder entry is 6;
		now description entry is "have some kinky oral fun";
		if treasurefound > 0 and yolandatreasure is false:
			choose a blank row in table of fucking options;
			now title entry is "Pirate gold reward";
			now sortorder entry is 10;
			now description entry is "trade a piece of pirate gold for some special fun";
[		if jbfound is 2:
			choose a blank row in table of fucking options;
			now title entry is "Jewelry box reward";
			now sortorder entry is 11;
			now description entry is "give her the jewelry box you found";		]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Receive vaginal":
						say "[yolandasex01]";
					otherwise if nam is "Receive anal":
						say "[yolandasex02]";
					otherwise if nam is "Bound for oral":
						say "[yolandasex03]";
					otherwise if nam is "Pirate gold reward":
						say "[yolandaspecial01]";
					otherwise if nam is "Jewelry box reward":
						say "[yolandaspecial02]";
			otherwise:
				say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
		if hp of Yolanda is 1, now hp of Yolanda is 2;
		now lastfuck of Yolanda is turns;
		wait for any key;
		clear the screen and hyperlink list;


to say yolandasex01:
[	if ( "Kinky" is listed in feats of player and a random chance of 1 in 4 succeeds ) or ( "Submissive" is listed in feats of player and a random chance of 1 in 4 succeeds ) or a random chance of 2 in 5 succeeds:
		say "***sex w/light bondage";
	otherwise:		]
	if 1 is 1:
		say "     Feeling aroused enough to indulge the raven's interest, you get onto all fours for Yolanda.  Offering up your juicy pussy by spreading your folds with a few fingers, you get an appreciative caw from the bird.  After gently nuzzling your cunny with the curve of her beak, she grabs an appropriately [if cunt length of player < 5]small[otherwise if cunt length of player < 10]sized[otherwise if cunt length of player < 15]large[otherwise]huge[end if] dildo from her collection with one of her feet.  Using her rarely-seen hand talons, she affixes it into a [one of]black[or]red[or]pink[as decreasingly likely outcomes] harness and dons the strap-on.  After taking a moment to adjust the fit, making sure you get a good look at the phallus that'll soon be filling you, she strides over to you.";
		say "     'Mmm, yes.  Look at you, so hot and ready,' she says with a sensual rumble as she brushes the tip of the toy across your juicy folds, making your cunt quiver inside.  She gives you a nip with her beak and adjusts herself over you.  Her soft feathers brush across your back as the hard dildo pushes into you, causing you to moan in dual pleasure.  Returning to a more avian posture, she rests herself atop you and starts rocking her hips.  She takes slow thrusts the first few times, but soon picks up the pace and is eventually pounding away at you hard and fast.";
		say "     'Yeah, take it, you perv.  Getting fucked by a girl, fucked by a bird,' she caws, nipping at your shoulders with her beak.  She's right, you find, there being something strangely arousing about getting fucked by a woman/bird wearing a strap-on.  The thought of you being so horny you'd settle for being screwed with a dildo becomes exciting in and of itself, enhancing your pleasure.  And that's on top of the raven's clear experience with the role, working that phallus with practised skill and ease to sexually satisfy you both with a powerful orgasm";
	if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
		say ".  Finished, she pulls the sex toy out of you with a wet slurp and struts around to your front, getting to lick it clean of your own juices before removing and storing it.";
	otherwise:
		say ".  Finished, she pulls the sex toy out of you with a wet slurp, wipes it clean and stores it back in the box with the others.";


to say yolandasex02:
[	if ( "Kinky" is listed in feats of player and a random chance of 1 in 4 succeeds ) or ( "Submissive" is listed in feats of player and a random chance of 1 in 4 succeeds ) or a random chance of 2 in 5 succeeds:
		say "***sex w/light bondage";
	otherwise:		]
	if 1 is 1:
		say "     Feeling particularly kinky, you get onto all fours for Yolanda.  Offering up your tight back door by spreading your cheeks with both hands, you get an appreciative caw from the bird.  After gently nuzzling your rump with the side of her beak while checking you out with a sidelong glance, she grabs an appropriately [if scalevalue of player < 3]small[otherwise if scalevalue of player is 3]sized[otherwise if scalevalue of player is 4]large[otherwise]huge[end if] dildo from her collection with one of her feet.  Using her rarely-seen hand talons, she affixes it into a [one of]black[or]red[or]pink[as decreasingly likely outcomes] harness and dons the strap-on.  After taking a moment to adjust the fit, making sure you get a good look at the phallus that'll soon be filling you, she strides over to you.";
		say "     'Now that's a sight I like to see.  There's nothing quite like stuffing an ass,' she says with a swat of her wing across your bottom.  After taking a moment to apply some lube, she gives you a nip with her beak and adjusts herself over you.  Her soft feathers brush across your back as the hard dildo pushes into you, causing you to moan in dual pleasure.  Returning to a more avian posture, she rests herself atop you and starts rocking her hips.  She takes slow thrusts initially, allowing your crinkled hole to adjust to the penetration, but soon picks up the pace and is eventually pounding away at you hard and fast.";
		say "     'Yeah, take it, you perv.  Bending over and taking it up the ass from a girl, and a bird at that.  You slut,' she caws, nipping at your shoulder with her beak as she grinds her feathered hips hard against you, pressing the dildo [if cocks of player > 0]against your prostate[otherwise]deep inside you[end if].  You can't help but agree, feeling like quite the slut for having allowed a bird/woman to fuck you in the ass with a strap-on.  The thought of you being so horny you'd settle for being screwed with a dildo becomes exciting in and of itself, enhancing your pleasure.  And that's on top of the raven's clear experience with the role.  Yours is by no means the first ass she's filled, working that phallus with practised skill and ease to sexually satisfy you both with a powerful orgasm.  Finished, she rises off of you and slips the sex toy out of your tingling anus with a wet slurp";
	if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
		say ".  After wiping it across each ass cheek, she wipes it clean and stores it back in the box with the others.";
	otherwise:
		say ".  Removing it, she cleans it with a wet wipe and stores it back in the box with the others.";


to say yolandasex03:
	say "     Running a hand along her side and under her tail, you offer to lick her pussy.  She gives a little caw as your fingers slip between her feathers and brush across her cloacal folds.  'Well, that doesn't sound too bad, though it's a little on the vanilla side.  How about we make it a little more fun?' she says, plucking some leather straps from her box of fun.  Before you can decide if you're up for that, she bumps her avian body against you, knocking you over onto her nest of cushions.  Taking a moment to rub her wing against your crotch, she gives a soft, cawing chuckle.  'Oh, come now.  Lemme have my fun, too.  I'll make sure you enjoy it,' she adds.'";
	say "     Allowing her to tie you up, she uses her oft-hidden talon hands to secure your wrists to the old radiator using some leather straps.  A spreader bar is attached to your ankles before being connected to a concealed D-ring in the floor.  And with a few adjustments, you're secured spread eagle across her apartment floor";
	if hp of Yolanda < 3:
		say ".  With you nude and unable to move, the raven strides back and forth, looking you over.";
		say "     'Rather trusting, aren't you?  Letting a strange mutant tie you up.  What's to stop me from leaving you like this?  Or sharing you with those annoying gryphons until you're as feather-brained as them?'  She brushes her wingtip teasingly down your chest to your groin[if cocks of player > 0 and cunts of player > 0].  Your cock[smn] twitch[esmv] and stiffens[smv] further and your puss[yfn] grow[sfv] all the wetter[otherwise if cocks of player > 0].  Your cock[smn] twitch[esmv] and grow[smv] harder in response[otherwise].  Your puss[yfn] grow[sfv] all the wetter in response[end if], though you start to have second thoughts.  You give your bonds a tug to test them, but you're secured tightly.";
		say "     'Ah-ah-ah!' she teases with another feathery touch while slamming her foot down onto the spreader bar.  'No backing out now.  Though I do think I'd rather keep you all to myself.'  And with that, she turns around and sits herself atop you like a bird, burying you in the darkness of her tailfeathers.  She grinds her hips back, pressing her cloaca to your face, urging you to start licking.  The stuffy heat surrounding you only makes the musky scent of her arousal all the stronger in your nose.  Your tongue darts out to get a taste of it and soon you're delving into her dripping cunny.  And true to her word, she [if cocks of player > 0]begins stroking your throbbing cock[smn][otherwise]fingers your wet snatch[esfn][end if] after giving your crotch a beak nuzzle.";
	otherwise:
		say " once again.  The raven struts around your nude form, looking you over with amusement.";
		say "     'And now I've got you tied up and all to myself again,' she says with a chuckling caw.  She brushes her wingtip teasingly down your chest to your groin[if cocks of player > 0 and cunts of player > 0].  Your cock[smn] twitch[esmv] and stiffens[smv] further and your puss[yfn] grow[sfv] all the wetter[otherwise if cocks of player > 0].  Your cock[smn] twitch[esmv] and grow[smv] harder in response[otherwise].  Your puss[yfn] grow[sfv] all the wetter in response[end if], excited at the prospect of what's to come.  You give your bonds a playful tug, finding them quite secure.";
		say "     'Ah-ah-ah!' she teases with another feathery touch while slamming her foot down onto the spreader bar.  'It's too late to back out now.  Now why don't you make yourself useful and get to licking like you promised.'  And with that, she turns around and sits herself atop you like a bird, burying you in the darkness of her tailfeathers.  She grinds her hips back, pressing her cloaca to your face, urging you to start licking.  The stuffy heat surrounding you only makes the musky scent of her arousal all the stronger in your nose.  Your tongue darts out to get a taste of it and soon you're delving into her dripping cunny.  And true to her word, she [if cocks of player > 0]begins stroking your throbbing cock[smn][otherwise]fingers your wet snatch[esfn][end if] after giving your crotch a beak nuzzle.";
	say "     Your hips want to [if cocks of player > 0]thrust into[otherwise]grind against[end if] her touch, but the restraints make it difficult, leaving the bird to set the pace, drawing it out for her own amusement.  She takes her time with you, shifting to light brushes of her feathers whenever it looks like you're getting to close.  With your face buried in her snatch, you can only moan and groan in frustration, licking all the more vehemently in the hopes of getting her off so you can have your release.  And eventually you are rewarded, the raven's femmecum soaking your face as she climaxes.  As you cunt clenches around your tongue, she [if cocks of player > 0]jerks you off to a mind-blowing orgasm[otherwise]frigs your sopping cunny to a mind-blowing orgasm[end if] that leaves you panting and dazed.  You're still basking in the afterglow as Yolanda undoes the cuffs, releasing you for some post-sex snuggles.";
	if hp of Yolanda < 3, now hp of Yolanda is 3;


to say yolandaspecial01:
	say "     Yolanda's eyes lock onto the golden coin when you pull it out.  'That's very pretty.  Pirate gold, you claim?  It's probably some movie prop you found - worthless junk.  Still, it wouldn't look bad in my collection,' she says, making a snap for it with her beak, narrowly missing.  'Alright, we'll trade for it.  I'll let you take a turn on top if you'll give it to me.'  With sex on the brain, you agree to the trade.";
	if cocks of player > 0:
		say "[yolandaspecial01m]";
	otherwise:
		say "[yolandaspecial01f]";

to say yolandaspecial01m:
	say "     The raven turns herself around and raises her tailfeathers.  You're given a good view of her dark-skinned pussy nestled in her feathers.  While tossing aside your gear, she wags her rear end enticingly, helping you to get hard.  Soon you're ready to go and move in behind her, lining up your shaft with her cloacal cunny.  You run your hands through her soft feathers as you sink your [cock of player] shaft into her slick hole[if cock length of player > 24].  Given your immense size, she's quite tight and you tease that she'd best be prepared to become one well-stuffed bird[otherwise if cock length of player > 12].  Given your large size, she's quite snug and you tease that she'd best be prepared become a stuffed bird[otherwise].  You slide easily into her warm cloaca[end if], to which she responds with a sharp caw.";
	say "     Sinking fully into her, you press yourself against her midnight plumage.  Soft and smooth to the touch, you caress and pet her coat while fucking her zealously.  Despite her preference to be the one on top, she seems to be quite enjoying her turn on the bottom, releasing soft caws and moans as you pound away.  Her inner walls are flexible, but strong, allowing you to thrust easily into her, but then gripping and squeezing tightly at your manhood once inside her.  The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";

to say yolandaspecial01f:
	say "     The raven plucks out one of her strap-ons and offers it to you before turning herself around and raising her tailfeathers.  You're given a good view of her dark-skinned pussy nestled in her feathers.  While tossing aside your gear, she wags her rear end enticingly, silently urging you to get ready quickly.  Adjusting the straps, you find the toy she's given you has a mini-vibrator on your end to stimulate your clit while wearing it.  Turning it on low to start, you move in behind her and line up the rubber shaft with her cloacal cunny.  You run your hands through her soft feathers as you sink the false shaft into her slick hole, to which she responds with a sharp caw.";
	say "     After a few test thrusts, you sink fully into her, pressing yourself against her midnight plumage.  Soft and smooth to the touch, you caress and pet her coat while fucking her zealously.  Despite her preference to be the one on top, she seems to be quite enjoying her turn on the bottom, releasing soft caws and moans as you pound away.  The sensation from the vibrating stimulator is accentuated by the thrusts you make, being pressed firmly against your clit when you push into her.  The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";


to say yolandaspecial02:
	say "***jewelry box";
	now jbfound is 3;


Section 4 - Events

jbfound is a number that varies.
[
Jewelry Box is a scavevent.
when play begins:
	add Jewelry Box to badspots of female;
	add Jewelry Box to badspots of furry;

Instead of resolving a Jewelry Box:
	say "     While searching some abandoned homes in the hopes of finding something of use, you discover that this one isn't quite as abandoned as you'd assumed.  Emerging from a side room, a creature appears.";
	let T be a random number between 1 and 5;
	if T is 1:
		challenge "Female Husky";
	otherwise if T is 2:
		challenge "Harpy";
	otherwise if T is 3:
		challenge "Lizard Girl";
	otherwise:
		fight;
	if fightoutcome >= 10 and fightoutcome <= 19:			[player won]
		say "     Defeating and driving off the mutant, you check to make sure nothing else has been attracted by the noise before giving the remainder of the house a quick search.  Unfortunately it seems that someone (possibly your recent opponent) has already consumed any supplies that were here.";
		if jbfound < 2:
			say "     While performing your search, you do come across something of interest though.  In the master bedroom, you find a jewelry box on the dresser.  It is quite ornate, which is what catches your eye at first.  Checking inside, you find several rings and necklaces.  Feeling a little greedy and making the excuse that the owner's either infected or dead, you tuck it into your pack and head out.";
			now jbfound is 2;
		now Jewelry Box is resolved;
	otherwise if fightoutcome >= 20 and fightoutcome <= 29:	[player lost]
		say "     After your defeat and the consequences thereof, you stagger out of the house, giving up on scavenging for the moment.  You make your way back to someplace more familiar and safer to rest and recover.";
	otherwise:									[player fled]
		say "     After making your escape, you give up on scavenging for now and head back to safer territory to rest and recover.";
]

[ hp of Yolanda                      ]
[ 0 = Nothing                        ]
[ 1 = Talked w/her                   ]
[ 2 = Had sex - no bondage           ]
[ 3 = Had sex - bondage              ]

[ jbfound  = Jewelry Box             ]
[ 0 = Not found                      ]
[ 2 = Jewelry box found              ]
[ 3 = Jewelry box given to Yolanda   ]

[ yolandaqytat = Yolanda gave Qy'tat hint ]
[ yolandajb = Yolanda gave Jewelry Box hint ]
[ yolandatreasure = Gave Yolanda pirate gold ]

[ Notes:
other shinnies:
keys w/fob
pyrite (Museum)
light-up toy/ball (State Fair)
]

[
when play ends:
	if jbfound is 2:
		say "***jewelry box in player possession";

when play ends:
	if hp of Yolanda > 1:
		say "***";
]

Yolanda ends here.