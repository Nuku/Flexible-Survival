Version 1 of Jimmy by Stripes begins here.
[Version 1.1 - Dialogue tweaked for Police Station survivors, still needs survivor info section]
"Adds corgi NPC named Jimmy to the Flexible Survival game."

Section 1 - Event

[Situation opened by Good Alexandra]
Automaton Activity is a situation. The level of Automaton Activity is 6. It is resolved.
The sarea of Automaton Activity is "Capitol".

instead of resolving Automaton Activity:
	if HP of Jimmy is 0:
		say "ERROR-Jimmy-0E: Premature event activation.";
		now Automaton Activity is resolved;
	else if HP of Jimmy is 1:
		say "     Remembering Alexandra's request to check up on the automatons, you follow some tracks through the ash-filled streets. They end up leading you to a half-destroyed building with a few of the metallic people around it. As you watch, they dig through the rubble, eventually breaking into the building and pulling out a short, male corgi. The little guy struggles against them, swearing and snapping at them as he cries for help, but is no match for their robotic strength. A female automaton starts groping him with obvious intent. Knowing you certainly can't go back to Alexandra and tell her you didn't try to help him, you [if weapon object of player is journal]raise your fists[else]ready your weapon[end if] and charge at them. Noticing your approach, one of them turns mechanically towards you, trying to catch you as well.";
		challenge "Automaton";
		if fightoutcome >= 10 and fightoutcome <= 19:			[player won]
			say "     Having dealt with the automaton, you rush towards the others. Grabbing the robotic woman by the shoulders, you pull her off the corgi's cock and shove her aside. He seems somewhat dazed, his eyes having become amber lights. Giving him a shake, he blinks a few times and his eyes return to normal as he comes to his senses. You smile and tell him you're here to help before shoving back another of the automatons. He nods and gets onto all fours, running as quickly as he can on his short, stumpy limbs. 'Come on then, let's get out of here.' After another swing to break away from the advancing automatons, you run after him. When you catch up to the little guy, he's at a crossroads, looking around the devastated streets for a place to go. Telling him you know someplace he'll be safe, you lead him out of the ash-covered ruins around the capitol building and to the police station.";
			say "     Once you're sure you won't be pursued, you slow to a walk and listen to him tell his tale. 'My name's Jimmy,' the corgi says as his short legs stride quickly to keep pace with you, 'and I've been stuck in that building since this craziness started. There was some food for a while, but eventually that ran out and I had to start eating from a bag of dog food. Tasty stuff, let me tell you,' he adds cheerfully. 'But, as you can probably guess, eating it caused me to change into a corgi. Well, at least I'm super-cute now,' he says with a canine grin, running his paws over his short, canine body.";
			say "     'When I heard the rubble being moved, I thought I was being rescued and called out for help. Little did I know those sex robots were the ones digging me out. Thanks so much for pulling me out of that mess,' he says, giving you a quick little hug with his stubby arms. Perhaps he's always been a positive fellow or he's just happy at finally having gotten out of the collapsed building, but his infection might also have changed his personality. Even if that's the case, there are certainly much worse mental changes out there, so he should be fine as the police station's first rescue.";
			say "     Your trip back to the police station is long, but uneventful. And Alexandra's certainly quite pleased with your success as well. She's already gotten a few bunks set up it what was once the locker room. Jimmy hops up onto one of the bunks and starts bouncing up and down on it, delighted to have a bed again. You and Alexandra can't help but grin, finding him adorably cute.";
			now HP of Jimmy is 3;
			if HP of Alexandra < 57, now HP of Alexandra is 57;
			now Automaton Activity is resolved;
			now battleground is "void";
			move Jimmy to Police Lockerroom;
			move player to Police Station;
		else if fightoutcome >= 20 and fightoutcome <= 29:	[player lost]
			say "     During the automaton's sexual assault, you did manage to spot the corgi guy manage to squirm free. He then dropped to all fours and ran off as quickly as his stubby little legs could carry him. His small size helped him to weave between the automatons and make his escape. After your assailant steps away, you rush off after him before another of the robotic people can grab you, but you've lost track of him for now. You hope you can find the little guy before something else does.";
			now HP of Jimmy is 2;
		else:
			say "     As you make your escape from the automaton attacking you, you spot the corgi guy managing to squirm free. He drops to all fours and runs off as quickly as his stubby little legs can carry him. While his small size helps him weave between the automatons and make his escape, he heads off in a direction separate from yours. By the time you're able to circle around, you've lost track of him for now. You hope you can find the little guy before something else does.";
			now HP of Jimmy is 2;
	else if HP of Jimmy is 2:
		say "     Heading back to the area where you encountered the automatons digging out the corgi survivor, you begin searching around in the hopes of locating him.";
		let bonus be ( the perception of the player minus 10 ) divided by 2;
		increase bonus by lust of Jimmy;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
		if (dice + bonus) >= 14:
			say "Luck favours you as you're able to spot a few small pawprints heading into an alleyway. Heading in slowly, you find the small corgi huddled behind a dumpster on a pile of cardboard boxes. He's startled at first, eyes flashing with an amber glow for a moment, but his eyes return to normal when he recognizes you as the one who tried to save him earlier. 'Pull up some cardboard and have a seat. It's not much, but beggars can't be choosers, friend,' he says cheerfully. Telling him that you know someplace that'll be much safer and more comfortable than an alley, he hops onto feet and smiles happily. 'Come on then, let's get out of here.' With that, you lead him out of the ash-covered ruins around the capitol building and to the police station.";
			say "     As you take the make the long trek back, you listen to him tell his tale. 'My name's Jimmy,' the corgi says as his short legs stride quickly to keep pace with you, 'and I was stuck in that building since this craziness started. There was some food for a while, but eventually that ran out and I had to start eating from a bag of dog food. Tasty stuff, let me tell you,' he adds cheerfully. 'But, as you can probably guess, eating it caused me to change into a corgi. Well, at least I'm super-cute now,' he says with a canine grin, running his paws over his short, canine body.";
			say "     'When I heard the rubble being moved, I thought I was being rescued and called out for help. Little did I know those sex robots were the ones digging me out. Thanks so much for pulling me out of that mess,' he says, giving you a quick little hug with his stubby arms. Perhaps he's always been a positive fellow or he's just happy at finally having gotten out of the collapsed building, but his infection might also have changed his personality. Even if that's the case, there are certainly much worse mental changes out there, so he should be fine as the police station's first rescue.";
			say "     Your trip back to the police station is long, but uneventful. And Alexandra's certainly quite pleased with your success as well. She's already gotten a few bunks set up it what was once the locker room. Jimmy hops up onto one of the bunks and starts bouncing up and down on it, delighted to have a bed again. You and Alexandra can't help but grin, finding him adorably cute.";
			now lust of Jimmy is 0;
			now HP of Jimmy is 3;
			if HP of Alexandra < 57, now HP of Alexandra is 57;
			now Automaton Activity is resolved;
			now battleground is "void";
			move Jimmy to Police Lockerroom;
			move player to Police Station;
	else:
		say "***ERROR-Jimmy-[HP of Jimmy]E: Result exceeds event parameters.";
		now Automaton Activity is resolved;


Section 2 - Jimmy the Corgi

Jimmy is a man.
The description of Jimmy is "[jimmydesc]".
The conversation of Jimmy is { "Yay!" }.
The icon of Jimmy is Figure of Jimmy_icon.

the scent of the Jimmy is "Jimmy smells pleasantly of dog.".

to say jimmydesc:
	if HP of Jimmy < 3:
		say "ERROR-Jimmy-[HP of Jimmy]L: You should not be able to see me.";
	else:
		say "     Jimmy, having been transformed into a corgi, is quite short. He stands roughly 3 1/2 feet tall, mostly due to his very short legs. He is furry coat is a golden brown across most of his body, though white at his muzzle and chest. His arms, also short, end in paw-like hands covered in clean, white fur. He wears one of the police dog vests he's found and cleaned up, looking adorably cute in it. Despite, or perhaps because of, his transformation, he seems perpetually happy. He works cheerfully around the station to clean up the mess here.";

Instead of conversing the Jimmy:
	if HP of Jimmy < 3:
		say "ERROR-Jimmy-[HP of Jimmy]T: You should not be able to talk to me.";
	else if HP of Jimmy is 3:
		say "     'Thanks again for helping me get here. This place is so much better than where I was stuck before, even though there's a lot of sticky messes to clean up. Still, once I get it all cleaned up, it'll be fun to make a few sticky messes of my own,' he laughs with a wink at you. 'Oh, do you like my new outfit,' he asks, doing a wobbly spin to show off the police dog vest he found. It is the kind worn by the dogs of the K-9 unit and looks absolutely adorable on him. It makes you want to scoop him up and hug him tight.";
		now HP of Jimmy is 4;
	else if HP of Alexandra >= 63 and sgtimer - turns >= 8 and sgtimer is not 255:
		say "     Speaking with Jimmy, he inform you that one of the survivors from the bingo hall had left a note for any of the missing scouts who might return, telling them where the rest of you had gone. 'Since they'd be left there alone without directions or help to get here, I'd like you to go back there and check it out one last time. Besides, some of those scattered by the wolves may have escaped there.' Agreeing that it's worth a shot, you promise him you'll return to check on the [bold type]survivor group[roman type]'s bingo hall one last time.";
		now sgtimer is 255;
		now Survivor Group is unresolved;
[	else if population of Police Station > 0:
		say "***";]
	else:
		say "     [one of]'It's nice to be able to sleep in a proper bed again. Sleeping on the floor's not so bad when you're a dog, but being on the bed's much better. And you can have a lot more fun in bed, too,' he adds with a cute chuckle.[or]'Do keep a look out for some doggy treats while you're out there. I've grown a taste for them,' he says, licking his chops.[or][if population of Police Station is 0]'There's always more stuff to do around here, but that just means we'll be able to have more friends.'[else]'There's even more to do around here now that we've got people in our shelter. It feels great to be helping them out though, so I don't mind. Besides, they give me plenty of scritches and hugs and... well, you know,' he says with a tail wag and a lick of his muzzle.[end if][or]'It's nice here and all, but I'm looking forward to the rescue Alexandra keeps talking about.'[or]'Thanks for helping [if population of Police Station > 0]all of [end if]us. Keep up the search for others.'[or]'I don't mind being this short now. It makes me the perfect height for oral sex,' he says with a grin and a wink.[or][if HP of Alexandra >= 65]'I don't like having that- that- robot bitch here,' he growls.[else if HP of Alexandra >= 63]'The newcomers are getting settled in nicely. They've even voted to make me their representative,' he says happily[else]'Clean up's been going well,' he says cheerfully, tail wagging even as he lugs a bucket of grimy mop water with both hands.[end if][at random]";
[***]

the fuckscene of Jimmy is "[sexwithJimmy]".

to say sexwithJimmy:
	if HP of Jimmy < 3:
		say "ERROR-Jimmy-[HP of Jimmy]F: You shouldn't be able to find me.";
	else if HP of Jimmy is 3:
		say "     You should probably try talking to him some more first.";
	else if lastfuck of Jimmy - turns < 6:
		say "     You'd played around with the cute corgi recently. Maybe you should give him a bit more of a break before getting back to it.";
	else if player is neuter:
		say "     There's not much point in playing with him given your lack of genitals.";
	else:
		if HP of Jimmy >= 5 and cocks of player > 0 and a random chance of anallevel in 7 succeeds:
			say "[Jimmysex02]";
		else:
			say "[Jimmysex01]";
		now lastfuck of Jimmy is turns;

to say Jimmysex01:		[oral]
	if cocks of player > 0 and cunts of player > 0:
		say "     Jimmy smiles happily at the prospect of having fun with you. The small corgi fellow nuzzles between your legs, his cute muzzle homing in on your groin. Taking your cock[smn] in hand, he starts licking and lapping across your stiffening meat, eagerly lapping up your precum. After giving your penis[esmn] a thorough tongue-bath, he nuzzles down to your cunt[sfn] to give your juicy folds the same treatment. The corgi's questing tongue delves into your hot tunnel, causing shivers of delight to ripple along your inner walls.";
		say "     He is very thorough in his licking, moving his attention back and forth between your cock[smn] and puss[yfn]. As your climax approaches, he slides his muzzle down over [if cocks of player > 1]one of your [cock size desc of player] cocks[else]your [cock size desc of player] cock[end if], sucking hungrily on it. While blowing you, his little paws rub over you, one kneading your thigh and the other slipping a few digits into your [cunt size desc of player] cunt. You cum a few moments later, shooting your [cum load size of player] load into the cute little guy[if cock width of player > 30]. Your enormous load causes the small corgi's belly to bulge out so much his little legs can no longer reach the ground. He releases a wet, giggling moan as he flails his limbs in the air[one of][or], accidentally rolling onto his back[or], accidentally rolling onto his side[or], accidentally rolling onto his face[as decreasingly likely outcomes][else if cock width of player > 20]. Your huge load causes the small corgi's belly to visibly bloat, leaving his little legs barely able to reach the ground. He releases a wet, giggling moan at this[end if]. Jimmy grins and licks his chops. 'Mmm... good stuff.'";
	else if cocks of player > 0:
		say "     Jimmy smiles happily at the prospect of having fun with you. The small corgi fellow nuzzles between your legs, his cute muzzle homing in on your groin. Taking your cock[smn] in hand, he starts licking and lapping across your stiffening meat, eagerly lapping up your precum. While giving your penis[esmn] a thorough tongue-bath, he rubs his paws over [if cocks of player > 1]your other cocks and [else if cocks of player is 2]your other cock and [end if]your [ball size]. The canine tongue slathers across your cockflesh, running along the shaft and swirling over your glans.";
		say "     He is very thorough in his licking, moving his attention between your dick[smn] and your scrotum. As your climax approaches, he slides his muzzle down over [if cocks of player > 1]one of your [cock size desc of player] cocks[else]your [cock size desc of player] cock[end if], sucking hungrily on it. While blowing you, his little paws rub over you, one kneading your thigh and the other caressing your balls, eager for their contents. You cum a few moments later, shooting your [cum load size of player] load into the cute little guy[if cock width of player > 30]. Your enormous load causes the small corgi's belly to bulge out so much his little legs can no longer reach the ground. He releases a wet, giggling moan as he flails his limbs in the air[one of][or], accidentally rolling onto his back[or], accidentally rolling onto his side[or], accidentally rolling onto his face[as decreasingly likely outcomes][else if cock width of player > 20]. Your huge load causes the small corgi's belly to visibly bloat, leaving his little legs barely able to reach the ground. He releases a wet, giggling moan at this[end if]. Jimmy grins and licks his chops. 'Mmm... good stuff.'";
	else:
		say "     Jimmy smiles happily at the prospect of having fun with you. The small corgi fellow nuzzles between your legs, his cute muzzle homing in on your groin. Nosing at your puss[yfn], he takes in your scent before sliding his tongue slowly across your juicy folds. He lavishes attention upon your cunt[sfn], [if cunts of player > 1]swapping between them[else], working his playful tongue in such delightful ways[end if] in his quest to please you. After giving your sensitive folds a thorough tongue-bath, the corgi's hard-working tongue delves into your hot tunnel[sfn], causing shivers to delight to ripple along your inner walls.";
		say "     He is very thorough in his licking, moving his attention back and forth between your [if cunts of player > 1][cunt size desc of player] cunts to lap across their folds, clit and inner walls[else]the juicy fold, throbbing clit and quivering inner walls of your [cunt size desc of player] cunt[end if]. While eating you out, his little paws rub over you, one kneading your thigh and the other brushing across your pussy lips. As your climax approaches, he buries his muzzle between your legs, diving his tongue as deep as he can and squirming it around inside you. You cum a few moments later, your hot juices soaking the little guy's muzzle, drenching his furry face. When your orgasm slakes off, Jimmy withdraws that delightful tongue of his and licks his chops with a happy grin. 'Mmm... good stuff.'";


to say Jimmysex02:
	if HP of Jimmy is 4:	[not had anal yet]
		say "***will not be accessible until later - first time via regular sex.";
	else:
		say "     Jimmy's tail wags excitedly at the prospect of having some more fun with you. Bending over, the little guy wiggles his ass in the air. 'How about you fill me up again?' he asks as he shows that tempting, crinkled hole of his. It's already pre-lubed, the corgi clearly having hoped for another chance to ride your cock. With such a tantalizing offer, you find it hard to refuse the cute little guy. Wrapping your arms around him, you sit him in your lap and onto your throbbing erection. After sharing a kiss with him, tongues darting across one another, you ease him down slowly, letting your [cock of player] cock pop into his tight tailhole[if cock length of player > 15]. Given the size of your [cock size desc of player] manhood, you have to take it very slow and aren't able to fully bury yourself into him, but that doesn't stop the two of you from enjoying it immensely[else if cock length of player > 7]. Given the size of your [cock size desc of player] manhood, you have to start carefully, but soon you're able to fully bury yourself into his fuzzy rear, much to your immense mutual enjoyment[else]. Your [cock size desc of player] manhood slides fairly easily into his prepped hole and soon you're buried fully in his fuzzy bottom, much to your immense mutual enjoyment[end if].";
	say "     Partly opening up his K9 unit vest, you slip a hand into it, rubbing his fuzzy chest. You bounce the cute fellow easily up and down on your cock. He pants and moans in delight as you fuck his cute ass. His own canine cock throbs, releasing spurts of precum onto the ground between your feet with every push against his prostate. The little guy's anus is wonderfully tight[if HP of Jimmy >= 5] even with his earlier preparation[end if], squeezing it hard each time you push into him[one of], and soon you can't help but bounce him even faster in your lap[or]. Taking a hold of his canine cock with your free hand, you stroke his pulsing rod[or], and soon you're pulling him down even harder with every thrust you make[in random order]. This proves too much for the little guy, his knot swelling up and soon she's spurting dog cum across the floor in long streaks as he cries out in ecstasy. Feeling him clamp down around your shaft, you push deep into him one last time and unleash your [cum load size of player] load into the happy doggy.";
	say "     Easing him off your shaft and setting him back down, he has to clutch your leg for support as he's still weak at the knees. '[if HP of Jimmy is 4]Oh wow! I mean... I'd never... that was awesome. I wish I knew how great that felt; I'd've been doing that for years had I known[else][one of]That just keeps getting better and better[or]Oh, how I ache, but it's such a good ache[or]Mmmm... I feel so warm and full[at random][end if].' Cuddling the cute guy, you help him wipe up the mess you two've made with some rags. After sharing another kiss, he flops out on his cot, rubbing his [if cock width of player > 24]bulging [else if cock width of player >= 12]rounded [else]tummy with a happy smile on his doggy muzzle.";
	if HP of Jimmy is 4, now HP of Jimmy is 5;


[          HP of Jimmy         ]
[ 0 - task not started         ]
[ 1 - task started             ]
[ 2 - Jimmy ran off            ]
[ 3 - Jimmy rescued            ]
[ 4 - spoke to Jimmy           ]
[ 5 - had anal sex             ]

Jimmy ends here.
