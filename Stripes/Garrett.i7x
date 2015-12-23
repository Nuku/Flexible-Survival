Version 1 of Garrett by Stripes begins here.
[ Version 1.2 - More M/M specific sex scenes ]
"Adds a male gryphon milkman NPC to the Flexible Survival game."

Section 0 - Related Scavevents	[Created by Wahn - Transposed from Scavevents]

Gryphon Milkman is a scavevent.
The sarea of Gryphon Milkman is "Outside".
when play begins:
	add Gryphon Milkman to badspots of furry;
	add Gryphon Milkman to badspots of hermaphrodite;

Instead of resolving a Gryphon Milkman:
	project the figure of Garrett_icon;
	say "     As you're out and about looking for supplies, you hear the flapping of wings overhead.  Before you can do much more than look up, a gryphon lands in front of you.  This specimen looks like a pure male, judging from the flat manly chest and the half-hard cock between his legs.  He's wearing only a white peaked cap and a wire carrier with several bottles.";
	say "     'Here, have some milk - it's good for you,' he tells you cheerfully, pushing a milk bottle into your hand and tipping his hat to you.  Then he jumps in the air and flies away, leaving you standing there alone.";
	say "     The milk bottle has a blue silver label with the text 'QaL Dairy'.  The milk is rather cold and smells delicious but there is a faint smell of something almost otherworldly.";
	increase carried of gryphon milk by 1;
	now Gryphon Milkman is resolved;


Free Milk is a scavevent.
The sarea of Free Milk is "Outside".
when play begins:
	add Free Milk to badspots of furry;
	add Free Milk to badspots of hermaphrodite;

Instead of resolving a Free Milk:
	say "     Your search for edible items leads you into a residential area.  As you stand in the middle of the local street, trying to decide which house might contain something useful, you suddenly realize something - there's a milk bottle standing in front of the door of the house over there - and it's full.  Walking over to the house, you take the bottle, it has a blue silver label with the text 'QaL Dairy'.  The milk is rather cold and smells delicious but there is a faint smell of something almost otherworldly.  You wonder where it came from - you'd have thought that with the apocalypse and all, deliveries by the milkman would stop.  And are there even any cows left with these changing infections?";
	increase carried of gryphon milk by 1;
	now Free Milk is resolved;


Abandoned Milk is a scavevent.
The sarea of Abandoned Milk is "Outside".
when play begins:
	add Abandoned Milk to badspots of furry;
	add Abandoned Milk to badspots of hermaphrodite;

Instead of resolving a Abandoned Milk:
	say "     Your search for edible items leads you into a playground and you see near a bench some men's clothing partially torn, as is the wearer had ripped out of them as they changed form. The back of the shirt is badly shredded, almost as if wings or similar had erupted out their back.";
	say "     On the bench you see an empty milk bottle lying on its side. You also see an intact a milk bottle standing there - and it's full!  Walking over to the bench, you take the bottle, it has a blue silver label with the text 'QaL Dairy'.  The milk is rather cold and smells delicious but there is a faint smell of something almost otherworldly.  You wonder what became of the person who drank the other bottle, and hope they are happy however they look now!";
	increase carried of gryphon milk by 1;
	now Abandoned Milk is resolved;


Section 1 - Garrett the Gryphon Milkman

Garrett is a man.  Garrett is in Qytat Plaza.
The description of Garrett is "[garrettdesc]".
The conversation of Garrett is { "Milk!" }.
the scent of the Garrett is "This blue gryphon's scent is quite manly, though there's also the alluring scent of the [']milk['] he delivers as well.".
The icon of Garrett is Figure of Garrett_icon.
garrettinfo1 is a truth state that varies.  garrettinfo1 is usually false.

to say garrettdesc:
	if debugactive is 1:
		say "DEBUG (Garrett) -> HP: [hp of Garrett], XP: [XP of Garrett], gryphon cum: [carried of gryphon cum] <- DEBUG[line break]";
	if hp of Garrett is 0:
		say "     Before you is an unusual sight.  While the blue gryphon creatures you've seen around have been hermaphroditic, this one is purely male.  His also better built than the others, with a stronger build that comes from constant exercise.  In addition, he's wearing a white milkman's cap and there's a wire bottle carrier resting beside him.";
		say "     He seems friendly enough, giving you a polite tip of his cap when he notices you there.  He's presently leaning back in a wooden chair with a magazine in hand, as if he's taking a break from deliveries at the moment.  The cover of the magazine is plastered with nude hunks and promises 'Hot hunky action!' inside.  Seeing this prompts you to notice the heavy furry balls and the bottom of the bulging sheath he's sporting the next time he moves the porno mag to flip pages.";
	otherwise:
		say "     Garrett is an all-male version of those hermaphrodite gryphons you've seen out in the city.  Having the same blue colouration and hybrid anatomy, he lacks any of the female features.  If anything, he's more manly with a stronger build from his work spreading gryphon milk around the city.  His large chest is well-muscled and his shoulders and wings are strong from flying.  He even has big, powerful legs from all his leaps for take-off.  And given he only wears a white milkman's cap as his uniform, all of this is on display.  And speaking of things being on display, you're also given a clear view of his heavy furry balls and extra-thick sheath, showing that this hunk's more manly than the others of his kind in that department as well.";


Section 2 - Dialog

Instead of conversing the Garrett:
	let nongryph be true;
	if bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon":
		now nongryph is false;
	if hp of Garrett is 0:
		say "     The male gryphon smiles and puts down his magazine as you come speak to him.  'Hey there.  It's nice to have some company.  Things have been a little quiet around here.  Most of the gryphons have gone out into the city.  I was out there for a while, handing out milk, but with the others gone, I'm pretty much out of stock now.  Besides, I'm a little bored of the gryphons all being herms.  Were there... even any other males besides me...' he adds, mostly to himself before trailing off for a bit as he tries to remember.";
		if Gryphon Milkman is unresolved:
			say "     'I do have a little left, if you'd like it[if nongryph is true].  I think you'd look pretty good as a sexy gryphon[end if].'  Before you can even respond, he's pushing a cold bottle of milk into your hands.  'Though I think my [']milk['] would do you even better,' he adds with a lustful grin.";
		otherwise:
			say "     'Actually, didn't I run into you in the city already.  Nice to see you again.  I'm sorry, but I don't really have any other samples to give you.  Only one to a customer.  Though I think my [']milk['] would do you even better,' he adds with a lustful grin.";
		say "     As it stands, I was thinking it might be time to try a different kind of [']milk['].  But for that, I could use a bit of a hand,' he adds with a grin, rubbing his bulging sheath meaningfully.  The tip of his thick, black penis starts to poke free of its fuzzy housing.  'How do you feel about helping a working guy work one out?'";
		now Gryphon Milkman is resolved;
		now Free Milk is resolved;
		now Abandoned Milk is resolved;
		now hp of Garrett is 1;
	otherwise if hp of Garrett >= 2 and a random chance of 1 in 3 succeeds and garrettinfo1 is false:
		say "     'This place is called [']Qytat a'th Lundrues['], the city of the flying.  It's been around for a long, long time, just nobody can usually see us.  We gryphons live here and it takes us from place to place.  We've been here before... well, not [']here['] here, but here,' he says, gesturing wide.'  Not understanding, you ask him to explain further in the hopes of discovering more abut this wonderous place.  'It's hard to explain... I think I understood it better before...' he says, trailing off into thought for a moment.";
		say "     'Anyhow, we came here, but there was a <sqwa-ragh>,' he says, making a strange call.  'A... shockwave kinda thing, but for reality... and we got stuck.  We were going to fix the city, I think, but we got a little distracted.  Gotta find mates and breed, you know.  The elders'll get back to it later, I'm sure.  But speaking of mating, how about some sex?' he adds, snuggling up close and running his paws over your body.";
		now garrettinfo1 is true;
		attempttowait;
		now lastfuck of Garrett is turns + 6;
		say "[sexwithGarrett]";
	otherwise:
		say "     [one of]'[if hp of Garrett is 1]You should give me a hand with my milking sometime[otherwise]I hope you're up for giving me a hand with my milking again sometime soon[end if]'[or]'There used to be more of us living here,' he says confusedly while gesturing to the strangely suspended tent city.  'But... something...  It's all so hazy now.  Must not've been important.  Say!  We should have some fun together[if hp of Garrett > 1] again soon[end if].'[or]'I don't think we were always here.  I mean, I vaguely remember seeing different landscapes beyond our city.  That's odd, isn't it?'[or]'I expect a lot of the other gryphons are out having fun and finding mates, pets and breeders for their harems.  They'll be back when they're done.'[or]'I think the elders said something about a curse when we got here.  They tried to protect us before it... did... something?  I wonder what became of that.  Must've worked since I feel like an awesome stud,' he adds, flexing his muscular bod.[or]'It's tough work going around and spreading gryphon milk around the city, but it'll be worth it if there'll be lots of sexy gryphons.'[or]'After all my hard work giving out bottles of our milk, I could use a bit of a break[if hp of Garrett is 1].  Care to help me enjoy my break even more[otherwise if lastfuck of Garrett - turns < 6].  Will you help me enjoy my break again once I'm loaded back up[otherwise].  I hope you're up to helping me enjoy my break again soon[end if]?' he asks with a smile, tip of his black cock peeking eagerly from its sheath.[or]'I've seen quite a bit of this odd city of yours.  I don't remember it being like this the last time we were here.'[or]'[if hp of Garrett is 1]Once I've collected enough of my personal [']milk['], I'll be able to provide concentrated bottles of it for distribution[otherwise]I'm converting the male gryphon semen I'm collecting to provide concentrated bottles of my new [']milk['] for distribution[end if].'[or]'[if nongryph is true]You should try some of my milk.  I think you'd make quite the sexy gryphon[otherwise]You make for quite the sexy gryphon[end if].'[at random]";


Section 3 - Sex Mechanics

the fuckscene of Garrett is "[sexwithGarrett]".

to say sexwithGarrett:
	setmonster "Hermaphrodite Gryphon";
	choose row monster from the table of random critters;
	if hp of Garrett is 0:
		say "     You know those blue gryphons are always ready and willing for sex, but you should probably get to know him a little before making such an offer.";
	otherwise if lastfuck of Garrett - turns < 6:
		say "     'That sounds like fun, but I could use a bit of time to reload,' he says, rubbing his recently emptied balls.  'Besides, the semen we've already collected needs some time to be processed.'";
	otherwise if ( cocks of player > 0 and cunts of player is 0 ) and hp of Garrett > 5:		[male players only]
		say "[garrettsexmenu]";
	otherwise if ( cocks of player > 0 and cunts of player is 0 ) and hp of Garrett > 1:		[male players only]
		let player_puregryph be false;
		if ( bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon" ) and player is pure:
			now player_puregryph is true;
		if player_puregryph is true:
			if ( hp of Garrett >= 3 and a random chance of anallevel in 5 succeeds ) and anallevel is not 1:
				say "[garrett_analtop_2]";
			otherwise if ( hp of Garrett >= 4 and a random chance of anallevel in 5 succeeds ) and anallevel is not 1:
				say "[garrett_analbottom_2]";
			otherwise:
				say "[garrett_handjob_2]";
		otherwise:
			if ( hp of Garrett >= 3 and a random chance of anallevel in 5 succeeds ) and anallevel is not 1:
				say "[garrett_analtop_1]";
			otherwise if ( hp of Garrett >= 4 and a random chance of anallevel in 5 succeeds ) and anallevel is not 1:
				say "[garrett_analbottom_1]";
			otherwise:
				say "[garrett_handjob_1]";
		say "[garrettinfect]";
		now lastfuck of Garrett is turns;
		if nohgryphonsex > 2, now nohgryphonsex is 2;
	otherwise:		[first time or non-male]
		say "[garrett_handjob_1]";
		say "[garrettinfect]";
		now lastfuck of Garrett is turns;
		if nohgryphonsex > 2, now nohgryphonsex is 2;

to say garrettsexmenu:
	let player_puregryph be false;
	if ( bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon" ) and player is pure:
		now player_puregryph is true;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Hand job";
	now sortorder entry is 1;
	now description entry is "share a mutual hand-job with the male gryphon";
	choose a blank row in table of fucking options;
	now title entry is "Get fucked";
	now sortorder entry is 2;
	now description entry is "let Garrett mount you and fill you";
	choose a blank row in table of fucking options;
	now title entry is "Fuck him";
	now sortorder entry is 3;
	now description entry is "pound the gryphon stud's ass";
	if player_puregryph is true:
		if lasthgryphon_TG is not 255:
			choose a blank row in table of fucking options;
			now title entry is "Gryphon 3some";
			now sortorder entry is 6;
			now description entry is "have a threesome with another male gryphon";
		if lastfgryphon_TF is not 255:
			choose a blank row in table of fucking options;
			now title entry is "Feral 3some";
			now sortorder entry is 7;
			now description entry is "have a threesome with a feral gryphon";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Hand job":
					if player_puregryph is true:
						say "[garrett_handjob_2]";
					otherwise:
						say "[garrett_handjob_1]";
				otherwise if nam is "Get fucked":
					if player_puregryph is true:
						say "[garrett_analtop_2]";
					otherwise:
						say "[garrett_analtop_1]";
				otherwise if nam is "Fuck him":
					if player_puregryph is true:
						say "[garrett_analbottom_2]";
					otherwise:
						say "[garrett_analbottom_1]";
				otherwise if nam is "Gryphon 3some":
					say "[garrett_gryphon_3some]";
				otherwise if nam is "Feral 3some":
					say "[garrett_feral_3some]";
	say "[garrettinfect]";
	now lastfuck of Garrett is turns;


Section 4 - Sex Scenees

to say garrett_handjob_1:
	let player_puregryph be false;
	if ( bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon" ) and player is pure:
		now player_puregryph is true;
	if hp of Garrett is 1:
		say "     'That's great.  This'll be so much more fun with a helping hand.'  He enfolds one of his strong wings around you and pulls you in close.  Guiding your hand to his crotch, it's placed on his growing erection.  He must be at least a good eighteen inches when fully hard, making him much better hung than his herm counterparts.  Tilting your head [if scalevalue of player > 3]down[otherwise if scalevalue of player < 3]up[otherwise]towards him[end if], he gives you a lustful kiss.  With his cock in hand, you start stroking him, causing the buff male to moan softly in satisfaction.  His taloned paws run over your [bodytype of player] body, further urging you to continue.";
	otherwise:
		say "     'Thanks a lot.  I really appreciate all the help you've been giving me.  I want to make as much of this as I can and getting a helping hand really helps boost productivity[if cocks of player > 0 and cunts of player is 0].  Nothing like a hot guy to get my motor running and my balls churning[end if].  I can just imagine all those gryphon studs this stuff'll help make,' he adds, grinding his stiffening erection against your [bodytype of player] body.  Your hand slips down to his foot-and-a-half-long erection and start stroking it as he pulls you into a lustful kiss.";
	if cocks of player > 0:
		say "     A paw of his finds its way to your [cock of player] cock and starts stroking it as well.  His touch is strong, but gentle, working to please you with his steady pumping.  He works your manhood with an eagerness that further excites you, as does the throbbing of his own cock in your hand.  You fall into a rhythm together, stroking one another in unison.  In time, the two of you build towards orgasm.  The kiss is broken when he moves his beak down to nip at your neck and shoulder.  He moans needfully and pumps you harder, driving you to climax first.  You spray shot after shot of your sticky seed from your pulsing rod until finally drained.";
	otherwise if cunts of player > 0:
		say "     A paw of his finds its way to your [cunt size desc of player] pussy and strokes across its damp folds.  His touch is strong, but gentle, pleasuring you with his taloned fingers.  He slips [if cunt width of player < 5]one of them[otherwise if cunt width of player < 12]two of them[otherwise]three of them[end if] into your cunny and pumps away while his remaining digits play across your wet folds.  He pumps into you with a steady motion and you fall into a rhythm together, stroking him in time to his fingering.  His enthusiasm for playing with your pussy isn't that high, but he's still a horny gryphon and performs adequately.  In time, you build towards orgasm and end up crying out as your vaginal walls flutter around his probing digit[if cunt width of player >= 5]s[end if].  You're left panting and satisfied by the time he moves his hand away.";
	otherwise:
		say "     A paw of his finds its way to your butt and gives it a firm squeeze.  His touch is strong, but gentle, as he slips his taloned fingers between your cheeks and probes at your asshole.  He breaks the kiss momentarily to lick [if scalevalue of player > 2 or the player is twistcapped]a pair of fingers before pushed those lubed digits into your bottom[otherwise]a finger before pushing that lubed digit into your bottom[end if].  He pumps into your clenching butthole, making you moan into those kisses.  He pumps into you with a steady motion and you fall into a rhythm together, stroking him in time to his fingering.  The attention your receiving is pleasant and exciting, providing arousing stimulation for your genderless body while you work at stroking the studly male off.  Only when he's approaching orgasm does he slip out of your pleasantly tingly and warmed rump.";
	attempttowait;
	say "     Garrett grabs an empty bottle [if cocks of player is 0]with his other hand [end if]and holds it in front of his cock.  With the bottle ready, he stops holding back with a satisfied groan of release.  Blast after blast of gooey gryphon seed sprays into the bottle and across his hand.  Excited and amused by this sight, you do your best to hold his mighty rod steady as it throbs in your hand, trying to help the gryphon stud collect as much of his semen as possible.  When finally done, the bottle is [if cocks of player > 0]mostly [otherwise]about half-[end if]full and his paw and the bottle are quite sticky with the excess.  He grins and makes a kinky show of licking some of the excess from his hand.  This naughty sight is very arousing and, when offered, you join him in licking his paw and the outside of the bottle clean of his milky white spooge without a care for the potential consequences.";
	if hp of Garrett is 1:
		say "     He sets aside the [if cocks of player > 0]mostly filled[otherwise]half-full[end if] bottle after capping it and gives you an appreciative nuzzle.  'I really appreciate your help with that.  You see, I've taken to collecting my semen so I can run it through the milk processor.  That way I'll end up with some good, wholesome, male gryphon [']milk['] to give out,' he reveals with a grin.  'And as thanks for your help, you can take the first bottle that got finished just a little while ago.  I hope you'll be willing to give me a hand making more[if player_puregryph is true and cocks of player > 0 and cunts of player is 0].  As a studly gryphon, you can even help speed up the process by adding your spunk to the mix next time[otherwise].  And maybe once you're fully a male gryphon like me, you can even help speed up the process by adding your spunk to the mix[end if],' he adds with a lustful grin as he imagines just that.";
		increase carried of gryphon cum by 1;
		now xp of garrett is 1;
	otherwise:
		say "     'Thanks again for your help with that.  It's so much more fun to get a helping hand with that,' he says with a satisfied grin";
		if xp of garrett < 3:
			increase xp of garrett by 1;
			say ".  I'm going to need to collect some more before I've got enough to run through the processor again.  I hope you'll be willing to help me with that once I'm ready to go again.  And if you're a pure gryphon stud by then, you can even help add to the mix.'";
		otherwise:
			say ".  That should be enough to run it through the processor and get some more of my male gryphon milk ready for market.  As thanks for helping out, you can have another bottle,' he says, pushing one into your hands with a grin.  'Let's see if we can't get you to become a sexy gryphon stud so you can help add to the product in a more personal manner.'";
			increase carried of gryphon cum by 1;
			now xp of garrett is 0;
	if hp of Garrett is 1:
		now hp of Garrett is 2;
	otherwise if hp of Garrett is 2 and a random chance of 1 in 2 succeeds:
		now hp of Garrett is 3;

to say garrett_handjob_2:
	let player_puregryph be false;
	say "     'Since you're fully a gryphon stud, why don't we get you in on this?' he says, taking your cock in hand.  'The more, the merrier.'  His taloned fingers brush over your manhood, making it throb and stiffen.  He smiles and nuzzles you, letting his own erection brush against your fur.  You take hold of his black cock and start returning the favour, drawing a pleased rumble from him.";
	say "     His touch is strong, but gentle, working to please you with his steady pumping.  He works your [cock size desc of player] manhood with an eagerness that further excites you, as does the throbbing of his eighteen inch cock in your hand.  You swap between stroking each other off and grinding your cocks against one another while kissing.  You even take turns briefly on your knees, licking and sucking the other's gryphon cock.";
	attempttowait;
	say "     As you build towards your climax, he slips around behind you, still pumping at your pulsing rod while holding a [if cock width of player >= 24]bucket[otherwise if cock width of player >= 16]jug[otherwise]bottle[end if] to catch your approaching load.  This reminds you that he plans to convert your semen into a batch of his infectious gryphon milk.  Aroused as you are at this point, the thought of that is quite exciting.  You [one of]picture some thirsty soldier drinking the tainted milk and becoming a male studly male gryphon[or]imagine some survivor finding a bottle of your tainted milk and becoming a sexy male gryphon like you[or]imagine someone finding a bottle of your tainted milk and turning into a horny gryphon stud[at random].  Picturing that happening in your mind is enough to put you over the top and you cry out as your orgasm, spurting shot after shot of sticky sperm into the waiting container.  You clench your beak and focus on the erotic fantasy in your mind, trying to get as much out of your climax as you can so it might come to be.";
	say "     Once you've been fully drained, you return your attention to Garrett with even greater enthusiasm.  You take his large cock in one hand and caress his balls with the other, urging him to hold another container.  You nuzzle and nip at the studly gryphon's neck, moaning for him to add his cum.  With the bottle ready, he stops holding back with a satisfied groan of release.  Blast after blast of gooey gryphon seed sprays into the bottle and across his hand.  Excited and amused by this sight, you do your best to hold his mighty rod steady while fondling his pulsing orbs, trying to help the gryphon stud release as much of his semen as possible.  When finally done, the bottle is mostly full and his paw and the bottle are quite sticky with the excess.  He grins and the two of you snuggle together in your mutual afterglow, licking the excess cum from your hands and the outside of the containers.";
	attempttowait;
	increase xp of Garrett by 1;
	if cock width of player > 15 or a random chance of 1 in 2 succeeds, increase xp of Garrett by 1;
	say "     'Mmmm... good stuff,' he purrs while licking a big gob of your cum from his hand.  'It's definitely more fun and faster having help with the production";
	if xp of Garrett < 3:
		say ".  I'm going to need to collect some more before I've got enough to run through the processor again.  I hope you'll be willing to help me with that once I'm ready to go again.'";
	otherwise:
		say ".  That should be enough to run it through the processor and get some more male gryphon milk ready for market.  As thanks for helping out, you can have another bottle,' he says, pushing one into your hands with a grin.  'With you helping now as a gryphon stud, I can make so much more of this stuff.'";
		increase carried of gryphon cum by 1;
		now xp of garrett is 0;
	if hp of Garrett is 2, now hp of Garrett is 3;

to say garrett_analtop_1:
	setmonster "Hermaphrodite Gryphon";
	choose row monster from the table of random critters;
	say "     Garrett strokes his own cock as he gives your ass a playful swat.  'Come on.  I'm in the mood to showing you just how good having some of my special gryphon milk in you can be,' he says.  He nudges you to lean over his wooden chair and grinds his stiff manhood against your rear.  Feeling dribbles of his pre wet your ass, you can tell just how he plans on giving you this sample.";
	say "     [if anallevel is 3 and a random chance of 1 in 2 succeeds]Dipping one of his fingers into a bottle, he splatters the gooey [']milk['] across your asshole before wriggling the digit into it[otherwise]Pouring some of a bottle's contents onto his cock, he gets himself lubed up and ready[end if].  He takes his time thrusting into you initially, letting his oversized cock stretch your [if the player is twistcapped]accommodating [end if]anus slowly.  The feel of that ebon member of his pressing its way into you sends shivers of delight through you that make your cock throb and pulse all the harder.  The sensation is accompanied by the arousing tingles of the refined semen suffusing into you.  After sinking about halfway into you, he reaches around and runs his sticky hand over your [cock size desc of player] penis, spreading that tingly sensation to it as well.";
	attempttowait;
	say "     Bending over your leaning back, he [if breast size of player is 0]runs his free hand over your manly chest[otherwise]grips your hip[end if] as he starts thrusting in and out of your back door.  The horny milkman nips and nuzzles at your shoulders and neck as he pounds away at you with increasing zeal.  All the while, his hand keeps working at your cock and balls, coaxing it to drool and dribble.  He spreads your precum across your pulsing shaft, making his stroking grip smoother and slicker, increasing your pleasure.";
	say "     'Mmm... yeah... feels good, doesn't it?  Just think, soon you can be even sexier as a gryphon stud.  I can hardly wait,' he rumbles in your ear.  He fucks you harder and faster as he talks, building himself up to his release.  The pounding at your prostate is soon followed by the wet pop of his knot into you.  Hot splashes of the gryphon's copious cum shoot into your ass, finally pushing you over the edge into orgasm yourself.  Crying out lustfully, you start unloading your balls in [if cock width of player >= 24]massive spurts[otherwise if cock width of player >= 16]large spurts[otherwise]sticky spurts[end if] while Garrett pumps your cock dry.  By the time you're done and drained, your lower bowels are warm and wet with the productive gryphon's load sloshing around inside you.  He remains inside you for a while, nuzzling at you as he waits for his knot to eventually go down before pulling out.  By the time it does, only a little of his seed leaks out, your body keeping the rest so it might be absorbed.[movichance]";
	if hp of Garrett is 3 and a random chance of 1 in 2 succeeds, now hp of Garrett is 4;

to say garrett_analtop_2:
	setmonster "Hermaphrodite Gryphon";
	choose row monster from the table of random critters;
	say "     Garrett strokes his own cock as he gives your ass a playful swat.  'Come on.  Let's milk a nice, big load out of you,' he says.  He nudges you to lean on his wooden chair, places a [if cock width of player >= 24]bucket[otherwise if cock width of player >= 16]jug[otherwise]bowl[end if] on the seat to catch load before moving up behind you.  'And there's nothing better for getting a nice, big load out of someone than proper stimulation.'  Grinding his stiff manhood against your rear gets your tail to raise for him as he makes it 100% clear just what kind of stimulation he has in mind for you.";
	say "     [if anallevel is 3 and a random chance of 1 in 2 succeeds]Taking a moment to lube your asshole with several probing licks[otherwise]Teasing your asshole with his glans for a few soft presses[end if], he draws a needy moan from you.  He takes his time thrusting into you initially, letting his oversized cock stretch your [if the player is twistcapped]accommodating [end if]anus slowly.  The feel of that ebon member of his pressing its way into you sends shivers of delight through you that make your cock throb and pulse all the harder.  After sinking about halfway into you, he reaches around and runs his hand over your [cock size desc of player] penis.";
	attempttowait;
	say "     Bending over your leaning back, he [if breast size of player is 0]runs his free hand over your manly chest[otherwise]grips your hip[end if] as he starts thrusting in and out of your back door.  The horny milkman nips and nuzzles at your shoulders and neck as he pounds away at you with increasing zeal.  All the while, his hand keeps working at your cock and balls, coaxing it to drool and dribble.  He spreads your precum across your pulsing shaft, making his stroking grip smoother and slicker, increasing your pleasure.";
	say "     'Mmm... yeah... feels good, doesn't it?  Just think, soon we'll have plenty more sexy gryphon studs around to do this with.  I can hardly wait,' he rumbles in your ear.  He fucks you harder and faster as he talks, building himself up to his release.  The pounding at your prostate is soon followed by the wet pop of his knot into you.  Hot splashes of the gryphon's copious cum shoot into your ass, finally pushing you over the edge into orgasm yourself.  Crying out lustfully, you start unloading your balls in [if cock width of player >= 24]massive spurts[otherwise if cock width of player >= 16]large spurts[otherwise]sticky spurts[end if] while Garrett aims your cock so much of your semen lands in the waiting container.  By the time you're done and drained, your lower bowels are warm and wet with the productive gryphon's load sloshing around inside you.  He remains inside you for a while, nuzzling at you as he waits for his knot to eventually go down before pulling out.  By the time it does, only a little of his seed leaks out, your body keeping the rest so it might be absorbed.[movichance]";
	attempttowait;
	if cock width of player > 15 or a random chance of 3 in 4 succeeds, increase xp of Garrett by 1;
	say "     'I must say, that's a fine ass you've got there,' he says, caressing your warmth-filled bottom.  'It's nice to have such a sexy and willing helper";
	if xp of Garrett < 3:
		say ".  That won't quite be enough to run through the processor, but I don't mind giving you some of the raw stuff to help you be a bigger stud.  I hope you'll be willing to help me collect even more once I'm ready to go again.'";
	otherwise:
		say ".  That should be enough to run it through the processor and get some more male gryphon milk ready for market.  As thanks for helping out, you can have another bottle of the processed,' he says, pushing one into your hands with a grin.  'Though you certainly seemed to enjoy your recent dose of the raw materials,' he adds with a caress to your warmth-filled bottom.";
		increase carried of gryphon cum by 1;
		now xp of garrett is 0;
	if hp of Garrett is 3, now hp of Garrett is 4;

to say garrett_analbottom_1:
	say "     When you offer having sex with the gryphon again, Garrett turns and raises his leonine tail with a grin.  'Great to hear.  Nothing like a guy's hard cock in my ass to make me extra-productive.'  Leaning on his chair, he reaches back to place a taloned paw on one cheek to hold them apart.  With his crinkled hole on tantalizing display, you stiffen to full hardness and move to mount the horny milkman.";
	say "     Moving up behind him, you place a hand on his other cheek and press your rod between them.  After a few teasing strokes across the soft fur of his bottom, you get lined up with his tailhole and sink slowly into him.  His passage is quite slick and easy to penetrate, making you conclude he's been using some of his own product.  The feel of that warm hole squeezing around your meat has you thrusting lustfully in no time.  The gryphon releases satisfied moans as you pound away.";
	attempttowait;
	say "     He proves to be a very eager and talented bottom, proving this horny stud's quite willing and able to be on either end for a sexy male.  His toned ass squeezes firmly around you with each thrust you make.  Your hands move from his hips to run over his muscular, masculine body.  His shoulders and thighs are particularly firm, but you can also feel the hard abs under his belly fur.  One of your hands ends up on his, helping to stroke his throbbing manhood.";
	say "     When your climax comes, he pushes back into your thrusts, moaning for you to give him your hot seed.  And give it to him you do, sinking fully into him and pumping your [cum load size of player] load into his clenching bowels.  The feel of your hot cream and throbbing manhood inside him soon become too much for him to hold back any longer.  His impressive shaft pulses within your mutual grip, shooting numerous globs of gryphon spunk into the jug resting on the chair's seat.  By the time his climax ends, it's over half full and the chair is streaked with overspray.";
	attempttowait;
	increase xp of Garrett by 1;
	say "     Turning his head back, he nuzzles and kisses you while waiting for your knot to go down and pop free.  When it does, he clenches his leaky hole to keep your sticky spunk inside while stretching his impressive body and wings out.  The studly gryphon runs a paw [if breast size of player is 0]along your side[otherwise]down your chest[end if].  'That was real fun.  And it'll be even better once we've got you as a sexy man-gryphon.  The herms are great, but it's just not the same";
	if xp of Garrett < 3:
		say ".  Taste it and you'll agree,' he says, holding out his cock as it drools out the last dregs of his load.  Licking your lips at the sight of it, you get on your knees and slurp up those gooey droplets.  You moan softly at the taste of his virile spunk and suck every last drop, part of you eager for the tainted nature of the seed you're accepting into yourself.";
	otherwise:
		say ".  This'll be enough to top up the processor for another batch, so you should take another bottle.  It'll help make you into a gryphon stud faster so you can help me make even more.'";
		now xp of garrett is 0;
	if hp of Garrett is 4 and a random chance of 1 in 2 succeeds, now hp of Garrett is 5;

to say garrett_analbottom_2:
	say "     When you offer having sex with the gryphon again, Garrett turns and raises his leonine tail with a grin.  'Great to hear.  I could go for having a studly gryphon in me.'  Leaning on his chair, he reaches back to place a taloned paw on one cheek to hold them apart.  With his crinkled hole on tantalizing display, you stiffen to full hardness and move to mount the horny milkman.";
	say "     Moving up behind him, you place a hand on his other cheek and press your rod between them.  After a few teasing strokes across the soft fur of his bottom, you get lined up with his tailhole and sink slowly into him.  His passage is slick and easy to penetrate, making you conclude he's been using some of his own product as lube.  The feel of that warm hole squeezing around your meat has you thrusting lustfully in no time.  The gryphon releases satisfied moans as you pound away.";
	attempttowait;
	say "     He proves to be a very eager and talented bottom, proving this horny stud's quite willing and able to be on either end for a sexy male.  His toned ass squeezes firmly around you with each thrust you make.  Your hands move from his hips to run over his muscular, masculine body.  His shoulders and thighs are particularly firm, but you can also feel the hard abs under his belly fur.  One of your paws ends up on his, helping to stroke his throbbing manhood.";
	say "     When your climax comes, he pushes back into your thrusts, moaning for you to give him your hot seed.  And give it to him you do, popping your knot past his anal sphincter and pumping your [cum load size of player] load into his clenching bowels.  The feel of your hot cream and throbbing knot inside him soon become too much for him to hold back any longer.  His impressive shaft pulses within your mutual grip, shooting numerous globs of gryphon spunk into the jug resting on the chair's seat.  By the time his climax ends, it's mostly full and the chair is streaked with overspray.";
	attempttowait;
	increase xp of Garrett by 1;
	if a random chance of 1 in 2 succeeds, increase xp of Garrett by 1;
	say "     Turning his head back, he nuzzles and kisses you before easing himself off your spent shaft.  When it does, he clenches his leaky hole to keep your sticky spunk inside while stretching his impressive body and wings out.  The studly gryphon runs a paw [if breast size of player is 0]along your side[otherwise]down your chest[end if].  'That was wonderful, you sexy beast.  Mmm... feels good to have a proper man-stud atop me again.  The herms are great, but it's just not the same.  And if we keep collecting loads like this, there'll be many more males of us around soon enough";
	if xp of Garrett < 3:
		say ".'";
	otherwise:
		say ".  This should be more than enough to top up the processor to make more of my special milk.  Speaking of, you should take another bottle; I'll have more for myself once that next batch is done.'";
		now xp of garrett is 0;
	if hp of Garrett is 4, now hp of Garrett is 5;

to say garrett_gryphon_3some:
	say "     Just as you and Garrett are getting warmed up with some playful groping and beak nuzzles, you hear some rustling from one of the floating huts.  Looking up, you spot another anthro gryphon poking his head out of the door flap.  Spotting the two of you, he grins and glides down.";
	say "     'Oh hey!  It's you,' he says happily.  'I was hoping I'd get a chance to [one of]see you again[or]thank you properly[or]finish what we started[at random].'  With him closer, you recognize him as the gryphon herm you recently gender-shifted into a [if the remainder after dividing hgryphon_TGcount by 4 is 1]twink[otherwise if the remainder after dividing hgryphon_TGcount by 4 is 2]stud[otherwise if the remainder after dividing hgryphon_TGcount by 4 is 3]girly-boy[otherwise]dude[end if].  It appears he was indeed able to follow your instructions and find his way here.  And from the way his cock is rising from his sheath, he's quite happy to be here as well.";
	attempttowait;
	[***other sub-variations can be start from here]
	say "     Garrett pushes you into the newcomer's arms and moves in behind you.  Soon the two of you are fondling one another while Garrett moves in behind you.  Feeling his stiff manhood grinding at your rear, you raise your tail and grind right back against it.  As the stud behind you pushes his thick rod into your ass, the [if the remainder after dividing hgryphon_TGcount by 4 is 1]horny twink[otherwise if the remainder after dividing hgryphon_TGcount by 4 is 2]other horny male[otherwise if the remainder after dividing hgryphon_TGcount by 4 is 3]effeminate male[otherwise]other randy male[end if] drops to his knees and starts sucking your [cock size desc of player] cock[if cock length of player > 24].  He has some difficulty taking your big member at first, but he's nothing if not persistently eager and eventually gets it stuffed into his beak and down his throat thanks to some firm thrusting from Garrett[otherwise].  He takes your hard member into his beak with a long moan heavy with lust[end if].  Thus you end up between the two, Garrett's thrusts into you driving your cock into the other male's sucking mouth.";
	say "     The new male works his tongue and palate over your cock with lustful zeal.  The gryphon cum he's been ingesting has definitely made him into quite the horny gay slut.  Though what does that say about you if you're the one getting pounded in the ass while sucked off by another guy?  You can't help but moan at the thought of all the hot gay gryphon sex you could be having, especially if you help Garrett gather a few more volunteers like this guy.";
	attempttowait;
	say "     With two sexy males working you over so well, it's not too long before you're rumbling with pleasure.  Your cock throbs in the gryphon's [if cock length of player < 8]mouth[otherwise]throat[end if] and your ass squeezes all the harder around Garrett's pulsing rod.  Moaning that you're geting close, Garrett grabs your hips all the harder and makes several sharp thrusts into you.  Soon your tailhole is forced open enough to accept the stud's knot and he successfully ties with you.  This added pressure against your prostate sends you over the top and you unload your [cum load size of player] load down the newcomer's throat.  He swallows down every last drop he can get[if cock width of player > 36], leaving him bloated and full in the end[otherwise if cock width of player > 24], giving him a pleasantly rounded belly in the end[end if].  Your cocksucking friend releases your spent shaft to share a long, sloppy kiss with you while waiting for Garrett's swollen knot to go down.";
	if hp of Garrett is 6, now hp of Garrett is 7;
	now lasthgryphon_TG is 255;

to say garrett_feral_3some:
	say "     After some quick foreplay, Garrett gets down on all fours and raises his tail to you.  As you're spreading a little of his special milk onto his pucker to lube it up, you hear a sharp call above.  Looking up, the two of you spot a large, feral gryphon coming in for a landing.  Setting down beside you both, it gives a softer coo and approaches in a friendly manner, cock slipping from its plump sheath.  Recognizing it as the gryphon you recently treated to some of the milky semen, you smile and offer the open bottle towards it.  Smelling the musky fluid, it strides over and happily drinks it all down as you pour it into its open beak.";
	say "     '[if fgryphon_TFcount + hgryphon_TGcount > 1]Another[otherwise]A[end if] new friend of yours, I see,' Garrett says cheerfully even as he grinds his butt back against your erection as a reminder of what you were doing before the newcomer's arrival.  Given how the feral gryphon's sniffing and licking you both, you can tell he's eager as well.  Rather than wait any longer, you get your cock lined up and sink it slowly into the he-gryphon's toned ass.  Its grip is hot and tight, squeezing and milking at your cock, his very body encouraging you to fuck it.";
	attempttowait;
	say "     Just as you're settling into a good rhythm, you feel the feral gryphon move in behind and then overtop you.  Horny with gay lust, you moan softly and brace yourself, letting the hybrid beast push that thick cock of his into your ass.  You release a rumbling moan as your ass gets spread open by his throbbing rod.  After a few playful nips while making sure he's well and truly buried in you, he starts pounding into you with a bestial zeal that has you and Garrett moaning beneath it.  Each hard, fast push it makes drives your own cock into the sexy stud beneath you, ensure he shares in the animalistic fucking.";
	say "     The creatures goes at it hard and fast, but it is not a wild and mindless pounding.  His thrusting is measured and steady (if fast and hard), and he nuzzles, licks and nips you both affectionately rather than giving the hard mating bites one would normally expect from such a beast.  It's clear that the he-gryphon spunk he's been given has made him into an affectionate gay sex beast rather than the wild creature of animal desires he once was.  From the way he's going at you, the animal lust is still there, but controlled and focused on hot, gay gryphon sex.  And with you sandwiched between two hot and lustful gay gryphons, one anthro and the other feral, you can't help but feel the same homosexual lust.";
	attempttowait;
	say "     Subject to the energetic fucking of the beast atop you as well as Garrett's experienced ass upon your cock, you get worked up to a powerful climax in relatively short order.  Your black, knotted cock ends up forced into the stud's welcoming ass and you unload your hot spunk into him.  Shot after shot of sticky seed sprays into his clenching bowels.  This soon drives him over the edge and he blasts his copious load into the empty milk bottle, doing an admirable job of nearly refilling it with fresh, unprocessed [']milk['].";
	say "     The feral gryphon, feeling your asshole quivering around his bestial penis as you climax, grinds his knot against your speared tailhole all the harder.  Soon your back door gives way and the thick knot plunges into you, tying the three of you together.  Your waning orgasm surges with a few final shots to paint Garrett's bowels while the feral atop you unloads his gooey seed into yours.  The sexy creature sighs a soft '[one of]Ahhh yeah[or]Oooo baby[or]Fuuuuck[or]So hawt[at random]!' of sexual satisfaction as he breeds your ass until it's full.  You end up pinned in a sandwich between the two sated males as your beastly lover flops down atop you in a sleepy daze of sexual satisfaction.  It is quite some time before the knots tying the three of you together to down and the feral can be coaxed off of you.  Still a feral at heart, he ends up leaving after sex, but you know he'll be back to visit Garrett for more sex and milking from time to time.";
	if hp of Garrett is 6, now hp of Garrett is 7;
	now lastfgryphon_TF is 255;


Section 5 - Gryphon Cum

Table of Game Objects (continued)
name	desc	weight	object
"gryphon cum"	"A milk bottle of processed gryphon cum that's somehow always pleasantly warm."	2	gryphon cum

gryphon cum is a grab object. It is a part of the player. gryphon cum is temporary. gryphon cum is cum.

The usedesc of gryphon cum is "[drinkgryphoncum]";

to say drinkgryphoncum:
	say "[line break]     Popping the top off the bottle, you catch the heady and arousing scent of masculine gryphon cum.  It makes your mouth water and you quickly start guzzling it down.  The refined semen drink has a strong, exciting flavour that is also refreshing and satisfying.";
	increase libido of player by 5;
	decrease thirst of player by 6;
	decrease hunger of player by 3;
	if thirst of player is less than 0, now thirst of player is 0;
	if hunger of player is less than 0, now hunger of player is 0;
	setmonster "Hermaphrodite Gryphon";
	choose row monster from the table of random critters;
	if name entry is "Hermaphrodite Gryphon":
		now sex entry is "Male";
		infect;
		now sex entry is "Both";
	otherwise:
		say "ERROR: Hermaphrodite Gryphon infection not found.";

the scent of gryphon cum is "The bottle's contents is the tantalizingly arousing scent of male gryphon semen.".

to say garrettinfect:
	if bodyname of player is "Feral Gryphon" and player is pure and guy is not banned:
		say "     Absorbing Garrett's spunk causes your body to tingle as your existing gryphon infection is stimulated.";
		infect "Feral Gryphon";
	otherwise:
		setmonster "Hermaphrodite Gryphon";
		choose row monster from the table of random critters;
		if name entry is "Hermaphrodite Gryphon":
			now sex entry is "Male";
			infect;
			now sex entry is "Both";
		otherwise:
			say "ERROR: Hermaphrodite Gryphon infection not found.";


Section 6 - Endings

when play ends:
	if bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon":
		let xx be 0;	[do nothing - see those forms for endings]
	otherwise if hp of Garrett >= 7 and humanity of player >= 10:
		say "     Some time after you settle into your new life, you notice a new product on the market - he-gryphon milk.  The musky, milky fluid (now microwaved to be non-infectious) is marketed as an exotic drink that temporarily stimulates and enhances male-on-male pleasure in the consumer.  It pleases you to see that Garrett's product has become somewhat of a success, especially among the gay community and with guys looking for that little boost to help them try how things are on the fabulous side of the fence[if cocks of player > 0 and cunts of player is 0].  You pick some up on the rare occasion you want to inject a little extra oomph into some hot gay fun you're planning[end if].";


Section X - Notes

[        hp of Garrett        ]
[ 0 = not talked              ]
[ 1 = talked to Garrett       ]
[ 2 = masturbated Garrett     ]
[ 3 = Garrett ready to top    ]
[ 4 = Garrett ready to bottom ]
[ 5 = topped Garrett          ]
[ 6 = gave milk to gryphons   ]
[ 7 = had a gay gryphon 3some ]


[       xp of Garrett      ]
[ 0 = no saved spunk       ]
[ 1 = one sample saved     ]
[ 2 = two samples saved    ]
[ 3+ = enough samples saved - reset to zero upon giving another bottle  ]

[  hgryphon_TGcount  ]
[ remainder / 4      ]
[ 1 = twink          ]
[ 2 = stud           ]
[ 3 = girly-boy      ]
[ 4 = dude           ]

[  lasthgryphon_TG  ]

Garrett ends here.
