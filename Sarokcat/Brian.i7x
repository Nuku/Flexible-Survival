Version 2 of Brian by Sarokcat begins here.
[ Version 2 - Sex w/Brian - finally - added by Stripes]

"Adds a single-mindedly determined rhino named Brian to Flexible Survival."

Section 1- Brian

Briantalk is a number that varies.
LastBrianfucked is a number that varies. LastBrianfucked is usually 250.
Brianfucked is a number that varies. Brianfucked is usually 0.

Brian is a man.
The description of Brian is "You see an exceptionally large and well-built rhino man, obviously heavily infected, over by a series of cracks in the border wall. Easily eight feet tall or more, his body is covered in thick, rough looking grey skin. He balances rather uneasily on his large hoof-like feet. A large, thick cock hangs rather limply between his legs, swaying slightly as he moves. His face is a cross between a human's and a rhino's, though it seems to lean more towards that of a beast's, especially with the large, thick, bony horn that protrudes from the top of his rhino-like muzzle.  He doesn't seem to be the brightest of the infected; whatever he might have been before, this is emphasized by him lowering his head so his horn is facing the wall... and charging forward at the thick concrete wall. There is a resounding impact as he staggers backwards slightly, holding his head, although you do think there are a few new cracks in the wall where he hit...".
The conversation of Brian is { "Ouch!" }.
Brian is in Border Wall.

the scent of Brian is "Brian smells like a male rhino, covered in sweat.".

Instead of conversing the Brian:
	if hp of Brian is 0:
		say "'Huh?' The large rhino-like man stops staring at the wall for a minute, his eyes darting around until they finally focus on you. 'Oh, hey. Sorry, I didn't notice you there,' he says, shrugging his large shoulders before glancing back at the cracked area of the wall. 'The name is Brian, and as you can see, I kind of ran into a rhino just a little way out of the zoo. I, well, I really don't want to talk about what happened with the rhino,' Brian says, his grey skin seeming to flush slightly in embarrassment for a second as he thinks about the encounter. 'You can see the end result plainly enough though,' he says as he gestures at his large, rhino-like form, his horn bobbing slightly as he shakes his head sadly. 'Kinda a big change. I mean, I wasn't a small guy to begin with, but now. Well damn, right?' Brian says with amusement.  'Kinda a bit harder to think clearly though, if ya know what I mean... but hey, at least it made me lots stronger. I should be able to get us out of here in no time now!'  The excited rhino man says, 'I mean, ya know the military is watchin['] all the regular ways out of the city, but way I figures it, they won't be watchin['] this part with the wall, so once I bust my way through, it's clear sailing from there!' Brian says, getting even more excited by the idea. He turns back to the wall, lowers his head, and charges it again. The impact sends him reeling back from the wall, shaking his head, having added a couple more cracks to the already damaged area.";
		increase hp of Brian by 1;
	otherwise:
		say "[one of]'One more should do it!' he says as he charges the wall.[or]'I'll have us out of here in no time!'[or]Brian is too busy holding his head from his last run at the wall to talk to you right now.[or]'Watch this one!' he says as he charges.[or]'Whoa,' Brian mutters as he reels back from the wall.  'I can hear magenta...' he mutters, and you decide it might be best trying to talk to him later.[or]'Chaaaaarge!'[or]'Hey, haven't I seen you somewhere before?' Brian asks blearily, his eyes unfocused as he tries to think.[or]'For the Horde!' Brian shouts as he leads a particularly vigorous charge at the wall.  Sadly, the wall seems unimpressed at this impassioned cry, remaining standing, although Brian doesn't as he lands hard on his ass.[or]'If ya are just gonna stand there and watch, ya could like do some cheering or something,' Brian says as he eyes the wall again.[or]'Eat this, wallface!'[or]'Dude, you don't think all this headbanging is gonna hurt my brain any do yas?'[or]'Die concrete!'[or]'Whoa, I can still hear my brain ringing from that last hit...'[at random]";


the fuckscene of Brian is "[attemptsexwithbrian]".

to say attemptsexwithbrian:
	if cocks of player is 0 and cunts of player is 0:
		say "     You consider asking the rhino man for sex, but you can't see yourself being able to tempt him away in your current, genderless state.";
	otherwise if hp of Brian is 0:
		say "     The rhino is repeatedly charging headlong at the concrete wall with all his might.  You should probably talk to him and see what's up before blindly offering sex to this strange and possibly dangerous fellow.";
	otherwise if lastfuck of Brian - turns < 8:
		say "     '[one of]Mmmm... that sounds kinda tempting, but this wall ain't gonna knock itself down[or]Sure.  Lemme just finish up with this first.  Shouldn't be much longer[or]Not tonight.  I've got a headache, honey[or]Just a few more hits first[or]Not today, wall!' he growls, pointing angrily at it and seemingly ignoring you.  'You're goin['] down[in random order],' he says as he lines up for another charge at the wall.";
	otherwise if hp of Brian is 1:
		if cunts of player > 0:
			say "     '[one of]Once we get out of here, I'll be happy to fuck you up on that...[run paragraph on][or]Yeah sure,' he says absently, 'Just as soon as I finish up here.[run paragraph on][or]Maybe when my head stops spinning...[run paragraph on][or]That sounds nice dear.[run paragraph on][or]Fucking you up against the wall?' he says in a puzzled tone, 'That doesn't sound like it would do much damage to the wall...[run paragraph on][or]Huh?[run paragraph on][or]Fucking? Yeah I think I like fucking...[run paragraph on][or]Are you kidding? Have you SEEN how fucking large my cock is now? I mean, I could use it as a battering ram!  Hey wait, that's an idea...[run paragraph on][or]I dunno, maybe later?[run paragraph on][cycling]' Brian says as he looks at you for a minute, before refocusing his attention on the wall.";
		otherwise:
			say "     'Sorry dude, but I only like the ladies.  Well... I think anyways, it can be hard to remember sometimes,' Brian says in an absentminded manner as he stares at the wall.";
		if facename of player is "Rhino" or bodyname of player is "Rhino":
			setmonster "Rhino";
			choose row monster from the table of random critters;
			say "     Brian hesitates for a moment as he eyes your rhino features, clearly tempting the hard-headed mutant.  Even as he moves back into charging position, he glances back at you and is uneven of the mark.  Seeing your opportunity, your instincts kick in and you rush after him.  A few paces behind, you end up tackling him down while he's dazed after running into the wall.  Pinning him beneath you, you give him an aggressive kiss while getting into position";
			if cocks of player > 0:
				say ".  And which position is that going to be?  Shall you [link]fuck him (y)[as]y[end link] or [link]ride him (n)[as]n[end link]?";
				if the player consents:
					say "[sexwithbrian00f]";
					now xp of Brian is 2;
				otherwise:
					say "[sexwithbrian00r]";
			otherwise:
				say " atop him.";
				attempttowait;
				say "[sexwithbrian00r]";
			now hp of Brian is 2;
			now lastfuck of Brian is turns;
			infect "Rhino";
	otherwise:
		say "     'Hmmm... It was awfully nice when you helped me out earlier.  You might be right,' he says, rubbing his head.  'I could use a bit of a fuck break to catch my breath.'  Steadying himself by putting his meaty arms around you, he helps you with your gear while giving you a kiss.  You run your hands over his tough hide, finding the sensitive spots of his nipples, cock and balls.  As you get him good and riled up, you consider how you'd like to have some fun with the good-natured hunk.";
		say "[briansexmenu]";

to say briansexmenu:
	setmonster "Rhino";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Blow him";
	now sortorder entry is 1;
	now description entry is "suck the rhino's cock";
	if breast size of player > 2:
		choose a blank row in table of fucking options;
		now title entry is "Titty-fuck";
		now sortorder entry is 2;
		now description entry is "press his cock between your jugs";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked - vaginal";
		now sortorder entry is 3;
		now description entry is "ride his cock";
	otherwise:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked - anal";
		now sortorder entry is 4;
		now description entry is "have the rhino pound your ass";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 5;
		now description entry is "stuff the rhino's ass";
		if cock length of player > 8:
			choose a blank row in table of fucking options;
			now title entry is "Frottage";
			now sortorder entry is 6;
			now description entry is "grind and stroke your cocks against one another";
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
				if nam is "Blow him":
					say "[sexwithbrian01]";
				otherwise if nam is "Titty-fuck":
					say "[sexwithbrian02]";
				otherwise if nam is "Get fucked - vaginal":
					say "[sexwithbrian03]";
				otherwise if nam is "Get fucked - anal":
					say "[sexwithbrian04]";
				otherwise if nam is "Fuck him":
					if xp of Brian is 0 or xp of Brian is 1:
						say "[sexwithbrian05_prelim]";
					otherwise:
						say "[sexwithbrian05]";
				otherwise if nam is "Frottage":
					say "[sexwithbrian06]";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	infect "Rhino";
	now lastfuck of Brian is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say sexwithbrian00f:		[initial sex w/Brian - fuck him]
	say "     Wanting a go at the muscly rhino's ass, you raise up his hips and get your cock lined up between those firm cheeks.  Clearly pent up, his cock twitches and slaps against his belly, drooling quite a bit of precum even before you've thrust into him.  Still in a bit of a daze, he releases a confused groan as your [cock size desc of player] [cock of player] manhood pushes its way into his near-virgin ass.  He's delightfully tight and his strong muscles grip tightly around your thrusting rod.";
	say "     As you expected, now that he's found himself with a horny rhino thrusting into him, he's more than willing to enjoy it.  His meaty hands move to his dark grey shaft and start stroking it.  He's better hung than the other rhinos running around here and the sight of him pumping at that eighteen inch member turns you on all the more.  Leaning in, you give his rock-hard shaft a kiss on its drooling glans as the sexy male holds it up for you.  You are treated to a taste of his musky pre, its taste strong with masculine virility thanks to its long need for release.";
	attempttowait;
	say "     With the overloaded state of his balls, he ends up getting off a little sooner than you may have liked.  And needing that release more than he realized, his load is a massive one when it comes - thick and heavy blasts going on for a minute or more that splatter his face, the grass behind him and the wall he's been so aggressively ramming.  Between the sight of that and the way his inner muscles clamp down around you like a vice, you end up popping off partway through his release, filling his ass with your [cum load size of player] load.  This leaves him flopped out on the grass, messy with his seed and leaking yours from his creamy pucker.";
	say "     'Now, that wasn't half-bad.  Certainly feels lighter in there,' he adds, rubbing his balls.  'I should be able to get a good head of speed up now,' he says as he starts to rise.  Before he can go charging off, you hold him back for a brief while with a passionate kiss followed by some licking to help get the worst of the sticky mess off his face and horn.";


to say sexwithbrian00r:		[initial sex w/Brian - ride him]
	say "     Wanting the muscly rhino's cock in you, you grab it and grind down onto it.  Clearly pent up, it feels as hard as the wall he's been hitting.  With a [if cunts of player > 0 or the player is twistcapped]moan of pleasure[otherwise]groan of difficulty[end if], you pop the dark grey shaft into your [if cunts of player > 0]juicy[otherwise]tight[end if] hole.  It is thick and filling, forcing your inner walls to stretch and shift to take it all.  Better hung than the other rhino men in the zoo, he's got quite the large horn to take.  Releasing a throaty moan, you bounce up and down in his lap, doing your best to get it all.";
	say "     As you expected, now that he's found himself with a horny rhino on his cock, he's more than willing to enjoy it.  His meaty hands grab your hips and his shaft throbs inside you.  Brian fucks you with the same single-minded enthusiasm as he did with battering the wall.  Leaning in, you give him another kiss, this one more passionate, and grind your hips over his rock-hard pillar.";
	attempttowait;
	say "     With the overloaded state of his balls, the ride is a little shorter than you may have liked, though that is counterbalanced by Brian's zeal.  And needing that release more than he realized, his load is a massive one when it comes - thick and heavy blasts going on for a minute or more.  You're left rounded in the belly even though much of it's leaked out of your overstuffed hole.  Grunting and panting, the buff rhino makes a few last thrusts even after his orgasm has finally stopped.  He gives you a little while to recover before helping you off his virile rod.  Helping you away from the wall, he turns back to his foe and attacks it again with a fresh charge.[impregchance][impregchance]";


to say sexwithBrian01:		[oral on Brian]
	say "     With an excited snort, the rhino puts a hand around his meaty rod and points it to your mouth as you kneel down.  You place a hand on his plump orbs and rub them as you start licking along his thick shaft.  Twirling your tongue over his glans, you gather up the gooey pre that wells up from it.  It is rich and flavourful, strong with the musky scent of his virile manhood.  Add to that the musky scent of his exertion and you find the muscular stud deliciously arousing.";
	say "     It takes some effort to get his impressive cock into your mouth and down your throat, but you're too horny to give up.  Eventually, your face is buried in his crotch and his heavy balls are nestled against your chest.  Having succeeded, you slowly pull back and forward again, gradually increasing the pace as you bob over the grey pillar of meat.";
	attempttowait;
	say "     Brian pants and grunts happily, his strong hands surprisingly tender as he caresses your head.  As his moans of pleasure rise, you can tell he's getting close and begin fervently bobbing your head back and forth around his shaft, working your tongue along its entirety while doing so.  This soon brings him over the edge and you're treated to blast after blast of his gooey load.  You swallow down as much as you can of the rich spunk, but it comes too fast and too thick to consume completely.  You end up with a sticky mess overflowing from your mouth and down your chest.";
	say "     Once spent, Brian breathes a happy sigh of relief and rubs his balls.  Lighter for having been drained, at least for the moment, they weigh a little less heavily in his hand. The rhino smiles happily, then thanks you with a big kiss, not minding that it's flavoured with his own spunk.  After the kiss though, his break is over and he returns to his attempts to batter through the wall with his head.";


to say sexwithBrian02:		[titty-fuck]
	say "     Wanting that rock-hard pillar nestled between your breasts, you lower yourself to your knees and squeeze it between your tits.  The rhino moans happily and rubs his meaty hand over your head.  'Mmm... now that's what I'm talkin['] about.  Ain't nothing like a sexy pair of tits,' he says with a grin.  His grey shaft throbs and drools precum as you rub your breasts around it.  Licking your lips, you give its glans several kisses and licks while working your bosom around it.  You tweak and pinch your nipples, playing with yourself as you work to get the rhino off.  He thrusts gently, mostly letting you take care of it at your own pace.  In time, he's panting and grunting that he's about to blow, so you lean in and lick frantically at his glans while working your titties against his meat until he blows.  Wads of thick rhino cum splatter across your face and into your mouth.  You lick up great gobs of it, but much of it ends up painting your face and dripping down onto your breasts.  You lick up as much of it as you can get and rub the rest into your tits as a final show for the burly rhino stud.";


to say sexwithBrian03:		[vaginal on player]
	say "     You get into proper position beneath him, letting the horny rhino line up his throbbing member with your wet cunt.  Wanting to savour it[if cunt length of player < 10] and take it easy on you[end if], he starts by teasing his glans across your folds and lightly prodding at your vaginal opening.  Able to feel the throb of his meat, you can tell he's quite excited by the prospect of stuffing your pussy.  You grind back against him with a wiggle of your rear, inviting the big stud in.  And when he does mount you properly, popping that thick cock of his a few inches into your heated and dripping cunny, you can't help but moan in pleasure.";
	say "     Brian works his shaft into you with steadily deeper thrusts, letting you enjoy every new inch of pulsing rhino-meat he plows into you.  Reaching around, he [if breast size of player > 1]fondles your breasts, his touch remarkably tender for someone with such meaty hands.  He teases your nipples and[otherwise]caresses your [bodydesc of player] body, his touch remarkably tender for someone with such meaty hands.  Sensually stroking your [bodytype of player] form, he[end if] gets you moaning beneath him as you enjoy the pleasurable attention you're receiving.  Your cunt tugs wantonly at his cock, encouraging the randy rhino to drive further into you.  His copious precum adds to your own juices so that a musky mess runs down your thighs with each slurping motion.  By the time he's fully inside you, Brian fucks you with the same single-minded enthusiasm as he did with battering the wall - and your body loves it.";
	attempttowait;
	say "     Your rhino stud pants and grunts as his excitement builds and builds.  You can feel the heavy slap of his overfull balls and the throb of his triple-sized cock inside you as his climax approaches.  And like before, it is a powerful one when it arrives, one thick and potent blast after another until your womb is stuffed and his excess semen overflows around his softening shaft.  Somewhere during this heavy breeding, your own orgasm is reached[if cocks of player > 0]; you cry out in orgasmic bliss as your cunt milks his manhood for its virile seed and you empty your load onto the grass[else] and you cry out in orgasmic bliss as your cunt milks his manhood for its virile seed[end if].  A spunky mess drools from your well-stuffed cunny once that grey cork is removed, though you're still left feeling deliciously warm and gooey inside from the sheer amount of it he's deposited in you.[fimpregchance]";


to say sexwithBrian04:		[anal on player]
	say "     You get into proper position beneath him, letting the horny rhino line up his throbbing member with your waiting asshole.  Wanting to start easy on you, he simply presses his broad glans against your back door and prods lightly against it.  Able to feel the throb of his meat and the drooling precum from it, you can tell he's quite excited by the prospect of mounting your ass.  You grind back against him as you relax your pucker, inviting the big stud in.  And when he does penetrate you properly, popping that thick cock of his a few inches into your backside, you can't help but [if scalevalue of player > 3 or player is twistcapped]moan in pleasure[otherwise]whimper a bit at first[end if].";
	say "     As Brian works his shaft into you with steadily deeper thrusts, he reaches around to take your [cock size desc of player] cock in hand and stroke your [cock of player] meat[if cock length of player > 18].  He seems quite impressed with your [cock size desc of player] size and pumps it with both hands[end if].  Enjoying the attention you're receiving, your pleasure grows and your inner walls slacken, allowing the randy rhino to drive further into you.  His copious pre drools into you, helping to lubricate your anal walls as they're stuffed full of his dark grey shaft.  By the time he's fully inside you, Brian fucks you with the same single-minded enthusiasm as he did with battering the wall - and your body loves it.";
	attempttowait;
	say "     Your rhino stud pants and grunts as his excitement builds and builds.  You can feel the heavy slap of his overfull balls and the throb of his triple-sized cock inside you as his climax approaches.  And like before, it is a powerful one when it arrives, one thick and potent blast after another until your belly is stuffed and his excess semen overflows around his softening shaft.  Somewhere during this heavy seeding, your own orgasm is reached and you dump your sticky load onto the grass as Brian pumps it out of you.  When it's all over, he gives you a little while to recover before pulling out.  A spunky mess drools from your well-fucked ass once that grey cork is removed, though you're still left feeling deliciously warm and gooey inside from the sheer amount of it he's deposited in you.[mimpregchance]";


to say sexwithBrian05_prelim:		[anal on Brian preliminary - not been fucked before]
	setmonster "Rhino";
	choose row monster from the table of random critters;
	if xp of Brian is 0:		[not suggested before]
		say "     When you suggest the rhino take a turn as bottom, he edges back a step.  'Hey now.  I don't know about that.  I mean, aside from that other rhino, there ain't been nobody in there...' he starts to protest.  As you're pondering a way to convince him, he snaps his fingers.  'We'll wrassle for it.  That seems fair,' he says with a big smile on his face.  Looking at his bulging muscles, you have trouble seeing how that's quite fair.  You don't even get a chance to refuse before he's coming at you.";
	otherwise:					[trying again]
		say "     'Alright,' he says confidently.  'We'll wrassle for it again.'  And with that, the rhino adopts a stance to charge.";
	let playernum be ( ( strength of player ) * 2 ) + dexterity of player + stamina of player + level of player;
	if "Martial Artist" is listed in feats of player, increase playernum by 4;
	if "Black Belt" is listed in feats of player, increase playernum by 4;
	if "Dominant" is listed in feats of player, increase playernum by 2;
	if "Submissive" is listed in feats of player, decrease playernum by 2;
	let briannum be 75;  [approx equiv for Rhino]
	if hardmode is true, increase briannum by level of player / 2;
	now briannum is a random number between 1 and briannum;
	now playernum is a random number between 1 and playernum;
	say "     [special-style-1][playernum][roman type] vs [special-style-2][briannum][roman type]: ";
	if playernum > briannum:
		say "It is a tough match against your burly opponent, but you eventually manage to get him to the ground beneath you.  Pinning him down, he's forced to concede to you.  'Nice going,' he pants. 'I guess that's that, then.'  Being a good sport (and quite aroused after the exciting tussle), he seems quite ready to let you claim your victory prize.  Quite turned on yourself, you're ready and raring to get to it as well.";
		attempttowait;
		say "[sexwithBrian05]";
	otherwise:
		say "Try as you might, you end up pinned beneath the muscly rhino as he uses his great strength against you.  With you in such a position and the burly male hard after the exciting tussle, he seems quite ready now to claim his victory prize.  And you're too turned on by this point to be that upset about how things turned out.  You raise your ass, offering your [if cunts of player > 0]juicy pussy[otherwise]crinkled hole[end if] to him.";
		attempttowait;
		if cunts of player > 0:
			say "[sexwithBrian03]";
		otherwise:
			say "[sexwithBrian04]";
		now xp of Brian is 1;


to say sexwithBrian05:		[anal on Brian]
	say "     The sexy rhino stud moves into proper position beneath you and flicks his thin tail up, giving you a fine view of his muscular backside and the pinkish-grey ring nestled between those cheeks.  Lining up your cock, you press it against his backdoor, drawing a [if xp of Brian < 2]brief twinge of concern[otherwise]soft moan of anticipation[end if] from the big guy.  Running your hands along his strong back, you knead his tense shoulders to help him relax before penetrating him.  The feel of his hole around you is hot and tight when you do enter him, though it yields as the initial shock turns to pleasure for the rhino.";
	say "     The rhino's huge cock throbs between his legs, twitching and spurting pre each time you grind against his prostate[if xp of Brian < 2].  As you expected, now that he's found himself on the receiving end of a good fucking[otherwise].  Having been on the receiving end before thanks to you[end if], he's quite willing to enjoy it.  Your [cock size desc of player] penis thrusts into him again and again while the panting male pushes himself back onto your meat each and every time.  Like the rest of his body, his anal muscles are strong and grip tightly around your shaft, milking at it as he works his hips over your pole.";
	attempttowait;
	say "     After getting a good, hard pounding, the rhino's in need of release.  You can feel it pulsing in your hand and know it's ready to blow, so you quicken your pace and pump Brian's grey meat.  The rhino groans and you feel his urethra bulge for an ephemeral moment before his thick seed starts spewing forth in gooey bursts.  They splatter onto the grass beneath him in musky white stains.  Encouraged by his own orgasm, as well as how his inner walls clamp down around you like a vice, you end up popping off partway through his release.  You fill your muscular lover's ass with your [cum load size of player] load, painting his insides with your semen.  You pump and thrust away until you're both drained and flop out on the grass to recover.";
	if xp of Brian < 2:
		say "     'Now, that wasn't half-bad,' he pants.  'Feels kind of strange and sticky, but nice and warm, too.  I'd be up for that again sometime,' he adds as he starts to rise.  'Got to get back to that wall though.  It ain't gonna knock itself down.'  Before he can go charging off, you do hold him back briefly so you can share a passionate kiss with the big lug.";
		now xp of Brian is 2;


to say sexwithBrian06:		[frottage]
	say "     Enjoying being pressed up against him, you decide to enjoy the same pleasure in an even more intimate manner.  Rubbing your groin against his, you press your throbbing meat to his own.  [if cock length of player < 18]The rhino can't help but smile smugly at how his impressive cock outsizes yours[otherwise if cock length of player is 18]The rhino grins happily at how you're just as well hung as he is[otherwise]You can't help but grin smugly at how your [cock size desc of player] cock[smn] outsize[smv] even his impressive meat[end if].  Each of you put a hand around the grinding cocks, mutually stroking them as you kiss.  Precum drools from your shafts and gets spread across his rhino penis and your [cock of player] length[smn], making them nice and slick.  The feel of his steely grey pillar throbbing against your erection[smn] is wonderful, two fine studs enjoying the sensation of their virile cocks pressed between them.  And when the two of you cum, the eruption of musky semen splatters across you both; a deliciously manly mess that clings to your flesh and leaves you both reeking of sex and your lover.";


[ hp of Brian ]
[ 0 = Not talked to him ]
[ 1 = Talked to him ]
[ 2 = Pounced and had sex ]

[ xp of Brian (anal sex on Brian) ]
[ 0 = Brian not yet fucked ]
[ 1 = Offered to fuck him, but lost ]
[ 2 = Brian has been fucked ]

[ Brian's stats ]
[ cock length = 18 inches ]
[ cock width (ball size) ~ 16 ]
[ other stats comparable to Rhino infection ]

Brian ends here.
