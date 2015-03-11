Version 1 of Garrett by Stripes begins here.
[Version 1 - Initial NPC]
"Adds a male gryphon milkman NPC to the Flexible Survival game."

Section 0 - Related Scavevents	[Created by Wahn - Transposed from Scavevents]

Gryphon Milkman is a scavevent.
The sarea of Gryphon Milkman is "Outside".
when play begins:
	add Gryphon Milkman to badspots of furry;
	add Gryphon Milkman to badspots of hermaphrodite;

Instead of resolving a Gryphon Milkman:
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
	say "Your search for edible items leads you into a playground and you see near a bench some men's clothing partially torn, as is the wearer had ripped out of them as they changed form. The back of the shirt is badly shredded, almost as if wings or similar had erupted out their back.";
	say "On the bench you see an empty milk bottle lying on its side. You also see an intact a milk bottle standing there - and it's full!  Walking over to the bench, you take the bottle, it has a blue silver label with the text 'QaL Dairy'.  The milk is rather cold and smells delicious but there is a faint smell of something almost otherworldly.  You wonder what became of the person who drank the other bottle, and hope they are happy however they look now!";
	increase carried of gryphon milk by 1;
	now Abandoned Milk is resolved;


Section 1 - Garrett the Gryphon Milkman

Garrett is a man.  Garrett is in Qytat Plaza.
The description of Garrett is "[garrettdesc]".
The conversation of Garrett is { "Milk!" }.
the scent of the Garrett is "This blue gryphon's scent is quite manly, though there's also the alluring scent of the [']milk['] he delivers as well.".
garrettinfo1 is a truth state that varies.  garrettinfo1 is usually false.

to say garrettdesc:
	if debugactive is 1:
		say "DEBUG (Garrett) -> HP: [hp of Garrett], XP: [XP of Garrett], gryphon cum: [carried of gryphon cum] <- DEBUG[line break]";
	if hp of Garrett is 0:
		say "     Before you is an unusual sight.  While the blue gryphon creatures you've seen around have been hermaphroditic, this one is purely male.  His also better built than the others, with a stronger build that comes from constant exercise.  In addition, he's wearing a white milkman's cap and there's a wire bottle carrier resting beside him.";
		say "     He seems friendly enough, giving you a polite tip of his cap when he notices you there.  He's presently leaning back in a wooden chair with a magazine in hand, as if he's taking a break from deliveries at the moment.  The cover of the magazine is plastered with nude hunks and promises 'Hot hunky action!' inside.  Seeing this prompts you to notice the heavy furry balls and the bottom of the bulging sheath he's sporting the next time he moves the porno mag to flip pages.";
	otherwise:
		say "     Garrett is an all-male version of those hermaphrodite gryphons you've seen out in the city.  Having the same blue colouration and hybrid anatomy, he lacks any of the female features.  If anything, he's more manly with a stronger build from his work spreading gryphon milk around the city.  His large chest is well muscled and his shoulders and wings are strong from flying.  He even has big, powerful legs from all his leaps for take-off.  And given he only wears a white milkman's cap as his uniform, all of this is on display.  And speaking of things being on display, you're also given a clear view of his heavy furry balls and extra-thick sheath, showing that this hunk's more manly than the others of his kind in that department as well.";


Section 2 - Dialog

Instead of conversing the Garrett:
	let nongryph be true;
	if bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon":
		now nongryph is false;
	if hp of Garrett is 0:
		say "     The male gryphon smiles and puts down his magazine as you come speak to him.  'Hey there.  It's nice to have some company.  Things have been a little quiet around here.  Most of the gryphons have gone out into the city.  I was out there for a while, handing out milk, but with the others gone, I'm pretty much out of stock now.  Besides, I'm a little bored of the gryphons all being herms now.  I don't think it was always that way... maybe...' he adds, mostly to himself before trailing off for a bit as he tries to remember.";
		if Gryphon Milkman is unresolved:
			say "     I do have a little left, if you'd like it[if nongryph is true].  I think you'd look pretty good as a sexy gryphon[end if].'  Before you can even respond, he's pushing a cold bottle of milk into your hands.  'Though I think my [']milk['] would do you even better,' he adds with a lustful grin.";
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
	let player_puregryph be false;
	if ( bodyname of player is "Hermaphrodite Gryphon" or bodyname of player is "Feral Gryphon" ) and player is pure:
		now player_puregryph is true;
	if hp of Garrett is 0:
		say "     You know those blue gryphons are always ready and willing for sex, but you should probably get to know him a little before making such an offer.";
	otherwise if lastfuck of Garrett - turns < 6:
		say "     'That sounds like fun, but I could use a bit of time to reload,' he says, rubbing his recently emptied balls.  'Besides, the semen we've already collected needs some time to be processed.'";
[	otherwise cocks of player > 0 and cunts of player is 0:		[male players only]
		if hp of Garrett is 1:
			say "[garrett_handjob_1]";
		otherwise if player_hgryph is true and a random chance of anallevel in 5 succeeds and anallevel is not 1:
			say "***garrett fucks the player.  Semen collected from both.";
		otherwise if a random chance of anallevel in 5 succeeds and anallevel is not 1:
			say "***player fucks garrett.  Semen collected from Garrett.";
		otherwise if player_hgryph is true:
			say "***mutual jack-off session.  Semen collected from both.";
		otherwise:
			say "[garrett_handjob_1]";
		now lastfuck of Garrett is turns;		]
	otherwise:
		say "[garrett_handjob_1]";
		now lastfuck of Garrett is turns;


Section 4 - Sex Scenees

to say garrett_handjob_1:
	setmonster "Hermaphrodite Gryphon";
	choose row monster from the table of random critters;
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
		if xp of garrett is 0 or xp of garrett is 1:
			increase xp of garrett by 1;
			say ".  I'm going to need to collect some more before I've got enough to run through the processor again.  I hope you'll be willing to help me with that once I'm ready to go again.  And if you're a pure gryphon stud by then, you can even help add to the mix.'";
		otherwise:
			say ".  That should be enough to run it through the processor and get some more of my male gryphon milk ready for market.  As thanks for helping out, you can have another bottle,' he says, pushing one into your hands with a grin.  'Let's see if we can't get you to become a sexy gryphon stud so you can help add to the product in a more personal manner.'";
			increase carried of gryphon cum by 1;
			now xp of garrett is 0;
	if bodyname of player is "Feral Gryphon" and player is pure and guy is not banned:
		say "     Consuming Garrett's spunk causes your body to tingle as your existing gryphon infection is stimulated.";
		infect "Feral Gryphon";
	otherwise:
		if name entry is "Hermaphrodite Gryphon":
			now sex entry is "Male";
			infect;
			now sex entry is "Both";
		otherwise:
			say "ERROR: Hermaphrodite Gryphon infection not found.";
	if hp of Garrett is 1, now hp of Garrett is 2;


Section 5 - Gryphon Cum

Table of Game Objects (continued)
name	desc	weight	object
"gryphon cum"	"A milk bottle of processed gryphon cum that's somehow always pleasantly warm."	2	gryphon cum

gryphon cum is a grab object. It is a part of the player. gryphon cum is temporary.

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


Section X - Notes

[       hp of Garrett      ]
[ 0 = not talked           ]
[ 1 = talked to Garrett    ]
[ 2 = masturbated Garrett  ]

[      xp of Garrett     ]
[ 0 = no saved spunk     ]
[ 1 = one sample saved   ]
[ 2 = two samples saved  ]
[ 3+ = enough samples saved - reset to zero upon giving another bottle  ]


Garrett ends here.
