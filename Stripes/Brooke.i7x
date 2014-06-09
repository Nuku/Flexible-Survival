Version 1 of Brooke by Stripes begins here.
[Version 1 - New NPC]

"Adds a primarily M/M Otter NPC named Brooke to the Flexible Survival game."


Section 1 - Brooke

Brooke is a man.  Brooke is in The Palomino.
The description of Brooke is "[brookedesc]".
The conversation of Brooke is { "Sneak off with me?" }.
brookeandrewtalk is a truth state that varies.  brookeandrewtalk is usually false.
The icon of Brooke is Figure of Brooke_icon.


to say brookedesc:
	say "     Among the people dancing at the club, this otter catches your eye.  Perhaps its his lovely, cream coloured fur, or his pretty-boy face.  It might be the way he moves his slender and flexible body to the music in a way all his own.  Or maybe the colourful bracelets glowing in the blacklight.  No, if you must be honest with yourself, it's totally that plump sheath, heavy balls and tight booty of his.  For while he wears a tight black t-shirt, numerous bracelets and anklets, he's nude from the waist down.  And from the way he's moving that rudder-like tail of his, he has no problem raising it and showing off his toned rear to the nearby guys.";

the scent of Brooke is "Brooke carries a medley of musky male scents upon him.".


Section 2 - Conversation

Instead of conversing the Brooke:
	if hp of Brooke is 0:
		now hp of Brooke is 1;
		say "     Working your way over to the dancing otter, you smile at him and try to get a few words in between songs.  'Oh, hey there!  I saw you arrive earlier,' he responds.  'The name's Brooke.  [if hp of Andrew > 1]I couldn't help noticing you and Andrew having fun, too.  [end if][if cocks of player > 0]I was kind of hoping you'd swing by.  I wouldn't mind getting sneaking out back to get to know you a little better[otherwise]I hope you have a good time at the club[end if].'  Since the next song's picking up, your brief introduction comes to an end with a wink from the otter cutey.";
	otherwise if xp of Brooke is 0:		[***adjust for post sex later]
		if cocks of player > 0:
			say "     [one of]'Why don't we go make out, hot stuff?'[or][if dexterity of player < 16]'You could use a little practice with your dance moves,' he teases before showing off an energetic routine[otherwise if dexterity of player < 20]'You dance pretty well, hot stuff,' he says, letting his flexible body slide along yours for a moment[otherwise]'You really know how to move that hot bod of yours, don't you?' he says with a smile.  Dancing up alongside you, he lets his flexible body grind against you to the rhythm of the beat[end if].[or][if hp of Andrew is 0]'Have you met Andrew yet?' he asks, motioning to a wolf sitting in one of the private booths.  'He's a friend of mine and I think he'd really like to get to know you better,' he says, letting a paw rub across your groin and giving your manhood a firm squeeze.[otherwise if hp of Andrew is 1 or hp of Andrew is 2]'I noticed you talking to Andrew earlier.  If you two hit it off, perhaps the three of us can have a little fun together.'[otherwise if hp of Andrew > 2]'I couldn't help noticing you and Andrew getting to know each other better,' he says with a wink.  'He's quite a lot of fun.  We could have fun like that too, if you'd like.'[end if][or]'Oh, I love this song,' he says excitedly and throws himself into an energetic dance routine.[or]Showing off, he goes into a frenetic set of dance moves that waves his arms, sways his body and ends with him flashing his rear to you.[or]'You'd be much better off just staying in here with us party animals than taking your chance out in the city.'[or]'Personally, I love the changes that've been made to this place since this all started.  I mean, it was a good club before, but now it's awesome.'[or]'I'm glad everyone's managed to keep this place open.  It's a lot more fun than just hiding while we wait for help.'[in random order]";
		otherwise:
			say "[randomdesc]";
			say "     [one of]'I'm going to slip off for a bit with this new friend of mine,' he says with a grin, running his paws over the body of a studly male [bodyselector].[or][if dexterity of player < 16]'You could use a little practice with your dance moves,' he teases before showing off an energetic routine of his own[otherwise if dexterity of player < 20]'You dance pretty well,' he says[otherwise]'You really know how to move that hot bod of yours, don't you?' he says with a smile.  Dancing up alongside you, falls into step with you and you joins in[end if].[or]'Oh, I love this song,' he says excitedly and throws himself into an energetic dance routine.[or]Showing off, he goes into a frenetic set of dance moves that waves his arms, sways his body and ends with him flashing his rear to several of the other guys around him.[or]'You'd be much better off just staying in here with us party animals than taking your chance out in the city.'[or]'Personally, I love the changes that've been made to this place since this all started.  I mean, it was a good club before, but now it's awesome.'[or]'I'm glad everyone's managed to keep this place open.  It's a lot more fun than just hiding while we wait for help.'[in random order]";
	otherwise if brookeandrewtalk is false and a random chance of 1 in 3 succeeds:
		say "     'Yeah, I knew Andrew from the club before all this mess.  Oh, I had the hots for him back then - nothing romantic, just wanting to jump his bones.  But he wasn't interested in girls, let alone someone like the old me.  I think he always knew, and he was never mean about it, but I just wasn't what he was looking for.  But now,' the otter says with a smile, running his webbed paws down his slender and sexy boytoy body, 'I can get his motor running... or that of most guys here.'";
		now brookeandrewtalk is true;
	otherwise:
		if cocks of player > 0:
			say "     [one of]'Why don't we go make out, hot stuff?'[or][if dexterity of player < 16]'You could use a little practice with your dance moves,' he teases before showing off an energetic routine[otherwise if dexterity of player < 20]'You dance pretty well, hot stuff,' he says, letting his flexible body slide along yours for a moment[otherwise]'You really know how to move that hot bod of yours, don't you?' he says with a smile.  Dancing up alongside you, he lets his flexible body grind against you to the rhythm of the beat[end if].[or]'I don't know if it's my transformation or his, but I think Andrew's even hotter now that he's a sexy wolf.  And MMm-mm-mm, boy is he hung,' the otter giggles, wiggling his hips in a lewd display.[or]'We should have another threesome with Andrew again soon.  I had a lot of fun.  And from how much you came, I can tell you did too,' he chirrs, rubbing up against you sensually.[or]'Oh, I love this song,' he says excitedly and throws himself into an energetic dance routine.[or]Showing off, he goes into a frenetic set of dance moves that waves his arms, sways his body and ends with him flashing his rear to you.[or]'You'd be much better off just staying in here with us party animals than taking your chance out in the city.'[or]'Personally, I love the changes that've been made to this place since this all started.  I mean, it was a good club before, but now it's awesome.'[or]'I'm glad everyone's managed to keep this place open.  It's a lot more fun than just hiding while we wait for help.'[in random order]";
		otherwise:
			say "[randomdesc]";
			say "     [one of]'I'm going to slip off for a bit with this new friend of mine,' he says with a grin, running his paws over the body of a studly male [bodyselector].[or]'I don't know if it's my transformation or his, but I think Andrew's even hotter now that he's a sexy wolf.  And MMm-mm-mm, boy is he hung,' the otter giggles, wiggling his hips in a lewd display.[or]'Oh, I love this song,' he says excitedly and throws himself into an energetic dance routine.[or]Showing off, he goes into a frenetic set of dance moves that waves his arms, sways his body and ends with him flashing his rear to several of the other guys around him.[or]'You'd be much better off just staying in here with us party animals than taking your chance out in the city.'[or]'Personally, I love the changes that've been made to this place since this all started.  I mean, it was a good club before, but now it's awesome.'[or]'I'm glad everyone's managed to keep this place open.  It's a lot more fun than just hiding while we wait for help.'[in random order]";


Section 3 - Sexy Times

the fuckscene of Brooke is "[sexwithBrooke]".

to say sexwithBrooke:
	[puts sea otter as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "sea otter":
			now monster is y;
			break;
	if hp of Brooke is 0:
		say "     That's rather forward of you.  You should probably introduce yourself first.";
	otherwise if cocks of player is 0:
		say "     'I appreciate the offer, but I'm looking for guys.'";
	otherwise if lastfuck of Brooke - turns < 6:
		say "     'Maybe later.  I want to dance for a bit.'";
	otherwise if hp of Brooke is 1:
		say "[brookesex00]";
		now lastfuck of Brooke is turns;
		brookeinfect;
	otherwise:
		say "     Heading over to the dancing otter, you grind up against him and give his ass a pat.  He grins happily at this and rubs his lithe body against yours.  'Mmm... someone's looking playful.  I'm free if you want to slip off somewhere for a little fun.  What did you have in mind?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 1;
		now description entry is "stuff the otter's ass";
		choose a blank row in table of fucking options;
		now title entry is "Blow job";
		now sortorder entry is 2;
		now description entry is "have him suck you off";
[		if hp of Brooke >= 3:
			choose a blank row in table of fucking options;
			now title entry is "Get fucked";
			now sortorder entry is 3;
			now description entry is "take your turn on the receiving end";		]
		if hp of Brooke >= 3 and hp of Andrew >= 3 and lastfuck of Andrew - turns >= 6:
			choose a blank row in table of fucking options;
			now title entry is "Threesome w/Andrew";
			now sortorder entry is 9;
			now description entry is "have a threesome with the hot males";
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
					if nam is "Fuck him":
						say "[brookesex01]";
					otherwise if nam is "Blow job":
						say "[brookesex02]";
					otherwise if nam is "Get fucked":
						say "[brookesex03]";
					otherwise if nam is "Threesome w/Andrew":
						say "[brookesex04]";
			otherwise:
				say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
		now lastfuck of Brooke is turns;
		brookeinfect;
		wait for any key;
		clear the screen and hyperlink list;


to say brookesex00:		[first time scene]
	say "     Deciding to take the dancing otter up on his offer, you exit the dance floor with him.  He ends up leading you into the washroom hallway and makes out with in the shadowy cul-de-sac at the end.  While by no means private, it's a lot less public than out of the dance floor.  And to guess from the strong scent of sex around you, you'd say this spot's been a popular choice.  Catching quite a bit of otter in the mix of musky scents, you can guess you're by no means the first guy he's taken back here.";
	say "     Putting his arms around you, the cream-coloured otter gives you a big kiss.  His slender body rubs against yours and you can feel the athletic body under that sleek fur.  Your hands drift to his ass and give those firm cheeks a squeeze.  He releases an excited chirp and grinds his swelling sheath against your hip.  'Let's see what we've got to play with,' he purrs, reaching for your manhood and stroking you to erection.  Looking over your [cock size desc of player] cock, he [if cock length of player < 5]licks his lips at your dainty little rod[otherwise if cock length of player < 8]smiles appreciatively at the sight of your average sized rod[otherwise if cock length of player < 15]licks his lips at the sight of your meaty rod[otherwise if cock length of player < 25]chirrs excitedly at the heft of your impressive rod[otherwise]is wide-eyed and even drools a bit at the sight of your colossal rod[end if].  He drops to his knees and sets himself to task licking your glans before [if cock length of player > 14]taking your enlarged cock into his muzzle with a lustful effort[otherwise]taking your [cock of player] cock into his muzzle[end if].";
	say "     [if cock length of player > 14]After managing to get that muzzleful of cock he so greatly desires, [end if]Brooke works your shaft with his tongue and mouth.  [if cockname of player is not listed in infections of internallist]Fondling your nuts[otherwise]Caressing your thigh[end if], the otter displays his considerable experience in giving these back hall blow jobs.  You're achingly hard and dribbling precum across his artful tongue.  Aiming to get you riled up, it's not long before you're breathing heavily with arousal.";
	attempttowait;
	if anallevel > 1:
		say "    And it's at this point the otter pulls his muzzle away, turns himself around and raises his tail.  Veritably wild with arousal, you press him up against the wall and drive your slick cock between his cheeks.  He spreads [if cock length of player < 15]easily for you[otherwise if cock length of player < 25]slowly and steadily for you[end if], welcoming your [cock of player] penis into his gripping ass.  'Oh yeah, that's the stuff,' he churrs excitedly, pushing himself back onto your meat even as you mount him.  With your hands on his shoulders, you start thrusting into the eager male, the slick sounds of sex drowned out by the club's music.";
		say "     As you fuck the wriggling otter, the slap of your hips fall into synch with the thumping of the base.  His rear grinds, squeezes and rocks over your thrusting pole delightfully.  Already quite worked up by the blow job warm-up, you don't last for much longer.  The otter, face pressed to the wall and hand around his cock, is masturbating himself wildly.  Able to hear his moans and panting above the music, you can tell he's close as well.  Reaching around, you fondle his hefty balls and drive deep into him, unleashing your [cum load size of player] load into the sexy male's bowels.  Feeling your hot seed filling him is enough to push him over the top and he cums hard.  Blasting his load across the wall, it adds to the sticky stain already there.";
		attempttowait;
		say "     When you're done, the otter sighs softly and curls his tail around your waist.  The thick tail holds you gently, as if quietly asking for you to stay buried in him a little longer.  Happy to oblige, you wrap your arms around him and he turns his head back to nuzzle you in return.  'Mmm... that was great.  I still can't get over how much better anal is now that I'm a guy.  Uh- a guy otter,' he adds quickly, blushing and looking away.";
		say "     'You used to be a girl?' you blurt out before you can stop yourself.";
		say "     'Yes, but please don't make this weird,' he says in a hushed plea.  'It's not like I was looking to become a guy or anything.  You know how this crazy transformation thing is - it just turned out that way[if cocks of player > 0 and cunts of player > 0].  I'm sure you know what that's like given your current state[end if].  But it's not like I mind.  It's far better to be the sexiest guy on the dance floor than the frumpy girl with two left feet.  And going from straight girl to gay otter boytoy means I can finally get all the hot dickings I've ever wanted and more,' he winks and giggles weakly, trying to throw off his earlier nervousness.";
		attempttowait;
		say "     [if level of player < 4]Given what you've seen, you suspect that plenty of others you've seen out there have had their gender swapped around[otherwise]Having seen much out in the city, you know that plenty of those you've met have similarly had their gender jumbled around[end if].  Saying as much, you reassure the otter that you're happy as long as he's happy.  And to further reassure him, you point out that your cock's still buried between those sexy buns of his.";
		say "     'Mmm... indeed it is.  Does that mean you're looking for another go?' he chirrs with a wiggle of his ass.  His creamy hole gives your [cock of player] cock a squeeze, making you throb.  But just as you're starting to become aroused, Brooke pulls off with a teasing grin.  Turning around, the otter gives you a kiss and strokes your cock with his paw.  'I really appreciate your offer and your understanding, but I could use a break.  Besides, now you're left wanting more and you'll come back for another go at this sexy ass of mine,' he giggles, raising his tail to show off his creamy buns and cum-slick pucker.  And with that, he bounds back out onto the dance floor with the same excited energy as before.";
		now hp of Brooke is 3;
	otherwise:
		say "     The sexy otter bobs his muzzle along your shaft in time to the music while his agile tongue does some very artful tricks[if cockname of player is not listed in infections of internallist].  He rolls your [ball size] around in his palm and sucks down harder, thirsting for their contents[end if].  The otter shows a lot of both enthusiasm and skill as he does his best to drain your balls down his throat.  Given his sexy boytoy body and eagerness, it's clear he's had plenty of practice learning how to best use his new muzzle to satisfy a cock.";
		say "     And satisfy he does, your [cock size desc of player] penis pulse and throbs against his tongue and palate.  Groaning that you're about to blow, he sucks down all the harder, pushing you over the edge.  As you orgasm, the otter gulps down your [cum load size of player] load while frantically masturbating himself.  Soon he's moaning around your cock as he cums as well, adding fresh splatters of otterseed to the sticky mess on the floor.";
		attempttowait;
		say "     When you're done, the otter sighs softly and slowly slides his muzzle from your shaft.  He stays nuzzled against your thigh and gives your spent shaft the occasional kiss while his tail curls loosely around your legs.  The thick tail holds you gently, as if quietly asking for you to stay with him a little longer.  Happy to oblige, you rub your head over his fuzzy head, which he then starts to nuzzle against.  'Mmm... that was great.  Have guys just gotten tastier or is it because I'm one now?  Uh- I mean- umm-' he mumbles, blushing and looking away.";
		say "     'You used to be a girl?' you blurt out before you can stop yourself.";
		say "     'Yes, but please don't make this weird,' he says in a hushed plea.  'It's not like I was looking to become a guy or anything.  You know how this crazy transformation thing is - it just turned out that way[if cocks of player > 0 and cunts of player > 0].  I'm sure you know what that's like given your current state[end if].  But it's not like I mind.  It's far better to be the sexiest guy on the dance floor than the frumpy girl with two left feet.  And going from straight girl to gay otter boytoy means I can finally get all the hot dickings I've ever wanted and more,' he winks and giggles weakly, trying to throw off his earlier nervousness.";
		attempttowait;
		say "     [if level of player < 4]Given what you've seen, you suspect that plenty of others you've seen out there have had their gender swapped around[otherwise]Having seen much out in the city, you know that plenty of those you've met have similarly had their gender jumbled around[end if].  Saying as much, you reassure the otter that you're happy as long as he's happy.  And to further reassure him, you point out that your stiffy's still rubbing against that sexy muzzle of his.";
		say "     'Mmm... indeed it is.  Does that mean you're looking for another go?' he chirrs and gives your cock a slow lick.  His lips press to your glans and his tonguetip flicks out to slide over it while he gives your [cock of player] cock a squeeze, making you throb.  But just as you're starting to become aroused, Brooke moves away with a teasing grin.  Getting up, the otter gives you a kiss and strokes your cock with his paw.  'I really appreciate your offer and your understanding, but I could use a break.  Besides, now you're left wanting more and maybe I can get you to take this sexy ass of mine next time,' he giggles, raising his tail to show off his tight buns and pink pucker.  And with that, he bounds back out onto the dance floor with the same excited energy as before.";
		now hp of Brooke is 2;


to say brookesex01:		[Fuck him]
	say "     Telling him you'd like [if hp of Brooke >= 3]another[otherwise]a[end if] go at that sexy ass of his, you head off with him into the shadowy hallway to fuck.  Eager as well, the otter only gives your cock a quick licking this time before facing the wall and raising his tail.  '[one of]Come on, hot stuff.  Fuck me[or]Come and get it, stud[or]Show me what you've got[in random order],' he purrs.  Moving up behind him, you press your [cock size desc of player] penis between his cheeks and grind against him before getting lined up.  Kissing his neck, you sink your shaft into his tight yet yielding anus to your mutual delight.";
	say "     [if cock length of player > 24]It takes the sexy otter a few thrusts to adjust to the impressive size of your manhood so he can take it fully, but there is no real difficulty beyond that.  And once in, you start to pound away at him[otherwise]After easily burying your [cock of player] manhood in the sexy otter, you start to pound away at him[end if].  With him moaning for more, you press him hard against the wall and drill your cock into that wiggling butt of his over and over again.  His rocking hips, moving to the music of the club, soon sets the pace of you thrusting in time to the beat.  His anal muscles squeeze and tug at your cock as he rides back into your thrusts harder.";
	say "     Hearing him moaning and panting over the music gets you all the more excited.  Reaching around, you take his cock in hand and pump it.  Having a good nine inches of ottermeat and a hefty set of balls to go with it, Brooke's transformation's made him into quite the stud.  Stroking his pulsing rod is soon enough to push to lustful lutrine over the top and he groans loudly, cumming hard.  His sticky seed splatters onto the messy wall.  With his ass clamping down around you in orgasm, you only manage a few last thrusts before you're cumming as well.  You empty your [cum load size of player] load into his bowels even as the press of your spurting cock against his prostate forces the last few spurts from him.  By the time you're done, you're both left panting for breath and thoroughly satisfied.  Keeping your cock in him until it goes soft and slips out, you snuggle with the otter.  When you do slip free, the otter cutey gives you a flash of his creamy booty and dances right back onto the dance floor with a contented smile on his face.";
	if hp of Brooke < 4, increase hp of Brooke by 1;


to say brookesex02:		[Blow job]
	say "     Opting for a blow job, you take the otter's hand in yours and head into the shadowy hallway.  You start by making out, kissing each other lustfully while your hands run over the other's body.  You slip a hand under the otter's dark shirt to rub his smooth, creamy fur.  Tweaking his nipples, you delight in the excited chirps he makes.  His webbed paws make their way across your back and sides before eventually ending up at your crotch.  Taking your [cock size desc of player] cock in paw, he strokes you to erection before getting down on his knees.";
	say "     Nuzzling and licking at your shaft, he purrs happily, taking in the rich scent of your arousal.  After sliding his tongue up and down it a few times[if cockname of player is not listed in infections of internallist] and even giving your balls a thorough licking[end if], he opens his muzzle wide and lets your [cock of player] cock slide into his hot, wet maw.  You moan and rub your hands over his fuzzy head while he [if cock length of player < 14]works your oversized cock down his throat[otherwise]hungrily sucks your cock[end if].  His tongue plays across your shaft while he bobs his head to the music.  The [one of]dance track playing sets an energetic pace that quickly has you panting and moaning[or]trance song playing sets a slowly building pace that allows you to savour his well-practiced tonguework[or]the electronica song playing having an alternating rhythm that builds you close to your peak before dialing back down every time you seem to be getting close[or]techno song playing drives the otter with its fast pace, urging you towards a quick orgasm[in random order].  By the time the song's wrapping up, you can't hold back any longer and pull the otter's face to your crotch.  Cumming hard, you blast your hot seed down your sexy lover's throat.  Once you're drained, Brooke bounces back to his feet, gives you a sticky kiss and bounds back onto the dance floor with increased energy.";


to say brookesex03:		[Get fucked]
	say "***";


to say brookesex04:		[Threesome w/Andrew]
	say "     When you suggest a threesome with Andrew, the otter grins excitedly.  Grabbing your wrist, he practically drags you over to wolf's personal booth in the corner.  He greets you both casually, though from the growing bulge at his crotch, you can tell he knows what's up and is looking forward to the opportunity.  Putting an arm around each of you, he gives you each a kiss.  Before long though, his paws have instead moved to your crotches and taken hold of your stiffening shafts.  'Shall we have a little fun together, boys?' he says with a fae giggle in his voice.  Brooke smiles eagerly and blushes a bit at the ears and nosetip.  'Oh, so cute as always, Brooke,' Andrew says with a smile, stroking the otter's cheek.";
	[if xp of Brooke is even]
	if 1 is 1:
		say "     'And you,' the wolf adds as he nuzzles you again.  'How about you be the meat in our furry sandwich?'  Not waiting for your answer, he guides you down overtop of Brooke, who's already laying atop the table with his ass in the air.  Guided in by the wolf, your [cock size desc of player] cock slips into the eager otter's sexy ass.  The cute lutrine gives a soft moan and pushes upwards, urging you to mount him fully.  Even as you're sinking into him, Andrew moves in on your ass and pops his lupine cock into your back door.  The feel of his big cock spreading you open causes you to moan and thrust firmly into the otter beneath you.";
		say "     With the three of you sandwiched together on the table, Andrew starts thrusting away, setting the pace for your threesome.  And with you stuck between the wolf and the otter, you're quickly moaning and panting between the wolf cock stuffing your ass and the feel of the otter's squeezing asshole around your own [cock of player] shaft.  You do your best to hold out, shifting your focus onto stroking the otter's throbbing shaft.  It pulses and throbs between your fingers, drooling precum with every push you're made to drive into him.";
		attempttowait;
		say "     Noticing that some of the nearby clubgoers are watching the show, Andrew makes a show of taking slow, hard and deep thrusts into you.  When you both moan in synch at this, the wolf grins and licks your ear.  'Oh, you like that, don't you?  Both of you beneath me, putting on a show for everyone of how much you just love getting fucked.  Such sexy sluts you both are,' he pants between thrusts, his excitement growing as he rides the two of you.";
		say "     Between the powerful pounding and his exhibitionist teasing, you end up crying out in lustful release.  You blast shot after shot of rich cum into the otter's ass.  Feeling your seed painting his insides, he pushes his ass up hard one last time and cums himself.  His pulsing rod throbs in your hand, spraying lutrine semen out in sticky bursts.  And just as your climax is waning, you feel the thick bulge of the wolf's knot knocking down your back door.  With a few firm pushes, he ends up tied with you and empties his gooey load into your ass, plumping up your belly a little with his impressive output.";
		attempttowait;
		say "     When Andrew flops down atop you, the spectators know the show's over and return to their own activities.  For many of them, aroused by the display, this ends up being some sex of their own.  You're stuck like this between them, the sated wolf and the bliss-filled otter, until that knot goes down.";
		if xp of Brooke is 0:
			say "     While waiting, the wolf gives you both some licking kisses.  'Brooke makes for a pretty sexy boytoy, doesn't [']he[']?' Andrew says with a grin.  The otter squirms beneath you, blushing but also grinding back onto your half-hard cock even as he does.  'Oh yes,' the wolf continues.  'I knew sweet Brooke here from before all this started.  And I must say, he's so much happier now, aren't you sweetie?'  The otter can only nod and moan softly, still in a post-orgasmic haze of bliss.";
	increase xp of Brooke by 1;
	now lastfuck of Andrew is turns;
	andrewinfect;


Section 8 - Infection Mechanic

to brookeinfect:
	[puts sea otter as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "sea otter":
			now monster is y;
			break;
	let tempvalue be sex entry;
	now non-infectious entry is false;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	infect "sea otter";
	now non-infectious entry is true;
	now sex entry is tempvalue;

[ hp of Brooke                      ]
[ 0 = Nothing                       ]
[ 1 = Talked w/him                  ]
[ 2 = Received oral                 ]
[ 3 = Fucked him                    ]
[ 4 = Fucked him again              ]
[ 5 = Fucked by him                 ]

Brooke ends here.