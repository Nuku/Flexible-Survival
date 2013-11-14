Version 4 of Food and Water Finding by Nuku Valente begins here.
[ Version 4 - Upgrade to scavenging events]

"Allows finding food and water while roaming the city."

Section 1 - The Situation

potential resources is a scavevent.
The sarea of potential resources is "Allzones";

Instead of resolving a potential resources:
	let y be "food";
	let x be a random number from 1 to 8;
	if x is 1 or x is 2:
		now y is "food";
	if x is 3 or x is 4:
		now y is "water bottle";
	if x is 5:
		if "Survivalist" is listed in feats of player and a random chance of 1 in 3 succeeds:
			now y is "medkit";
		otherwise if "Three Bags Full" is listed in feats of the player and a random chance of 1 in 5 succeeds:
			now y is "medkit";
		otherwise:
			now y is "dirty water";
	if x is 6:
		now y is "dirty water";
	if x is 7:
		now y is "chips";
	if x is 8:
		now y is "soda";
	if scavengetarget is "food" or scavengetarget is "water bottle" or scavengetarget is "chips" or scavengetarget is "soda":
		if scavengetarget matches the text y:
			let lol be 1;
		otherwise:
			if a random chance of 1 in 3 succeeds:
				if scavengetarget is "food":
					now y is "food";
				if scavengetarget is "water bottle":
					now y is "water bottle";
				if scavengetarget is "chips":
					now y is "chips";
				if scavengetarget is "soda":
					now y is "soda";
				say "Your specific hunting leads you towards your target.";
	say "While wandering about, you're certain you see some [y] and move to get it.";
	now x is a random number from 1 to 5;
	if guy is banned and girl is banned and x is 5, now x is a random number between 1 and 4;
	if x is 1:
		say "It's just laying there [one of]in a busted vending machine[or]on a counter[or]in a wheel barrow[or]discarded in the middle of a street[or]in a bag[or]in a backpack[or]in an abandoned car[or]beneath a pile of discarded clothes[or]a few feet away from the some rather messy cum stains[purely at random].";
		add y to the invent of the player;
	otherwise if x is 2:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is up high, forcing you to climb up after it. It looks ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to climb.";
		if companion of player is bee girl:
			say "As you prepare to make the treacherous climb, Honey grabs your hand and pulls you back.  'Don't risk it.  I can get it for you, honeybunch.'  And with that, her translucent wings start to buzz, flying her up into the air to grab the [y] and bring it to you with a happy smile.";
			add y to invent of player;
		otherwise if companion of player is Exotic Bird:
			say "As you prepare to make the dangerous climb, your bird pet calls out and swooping in.  Its dive takes it past the [y], which it grabs in its talons and drops into your hands, saving you from having to make the climb yourself.";
			add y to invent of player;
		otherwise if companion of player is Gryphoness:
			let gryphlets be libido of gryphoness / 4;
			say "As you prepare to make the risky climb, Denise pulls you back and flaps her wings.  'I can get that for you easily, sweetie,' she says as she takes to the air.  The gryphoness's wings lift her up alongside the [y], letting her take it with ease and brings it back to you, earning a thank-you hug[if gryphlets is 1] from you and your gryphlet child[otherwise if gryphlets is 2]from you and your gryphlet children[end if].";
			add y to invent of player;
		otherwise:
			let bonus be ( the dexterity of the player plus level of the player minus 10 ) divided by 2;
			if hardmode is true and bonus > 10, now bonus is 10;
			if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
			if "Three Bags Full" is listed in feats of the player and bodyname of player is "ewe", increase bonus by 1;
			if "Three Bags Full" is listed in feats of the player and bodyname of player is "ram", increase bonus by 1;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
			increase dice by bonus;
			if difficulty is greater than dice:
				say "You try your best to scale up, but only end up hurting yourself in the process.";
				decrease hp of player by 10;
			otherwise:
				say "Successfully shimmying up, you snag the [y] triumphantly and stuff it into your backpack.";
				add y to the invent of the player;
	otherwise if x is 3:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is up stuck under something heavy. It looks ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to lift.";
		let bonus be ( the strength of the player plus level of the player minus 10 ) divided by 2;
		if hardmode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "You try your best to lift up the barrier, but to no avail, denying you the [y].";
		otherwise:
			say "Successfully hoisting the obstacle up, you snag the [y] triumphantly and stuff it into your backpack.";
			add y to invent of the player;
	otherwise if x is 4:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is in the hands of a sentient!  Though mutant, perhaps you could convince them to give it up.  It looks like they have enough for themselves. They appear ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to sway.";
		let bonus be ( the charisma of the player plus level of the player minus 10 ) divided by 2;
		if hardmode is true and bonus > 10, now bonus is 10;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "Your arguments fall on deaf ears. Wait, does this guy even have ears?";
		otherwise:
			say "After working out the specifics, you are handed the [y] and you stuff it into your backpack";
			add y to the invent of the player;
[			if "Haggler" is listed in feats of player:
				let aa be a random number from 1 to charisma of player;
				let bb be a random number from 1 to ( difficulty * 2 );
				if aa >= bb:
					add y to invent of player;
					say ".  You even manage to haggle a second one from the mutant";		]
			say ".";
	otherwise if x is 5:
		if guy is banned or a random chance of 1 in 2 succeeds:	[female mutant]
			say "It is in the hands of a sentient!  Seeming peaceful enough, you try to convince her to part with it since she and her nearby friends seem to have enough.  You try to negotiate a trade, but she has no interest in anything you have to offer, instead suggesting you might earn your reward";
			[breakdown of requests/player options here]
			say " with your tongue.  Spreading her legs and lifting the scraps of her clothes, the transformed person bares her pussy to you and tells you to start licking.  Shall you whore yourself out for a [y]?";
			if the player consents:
				say "[scavsex_f01]";
				say ".  You're tossed the [y] by one of her friends";
				add y to the invent of the player;
[				if "Haggler" is listed in feats of player:
					let aa be a random number from 1 to charisma of player;
					let bb be a random number from 1 to ( difficulty * 2 );
					if aa >= bb:
						add y to invent of player;
						say " and even manage to haggle a second one from them";		]
				say ".";
				if "Submissive" is listed in feats of player or "Kinky" is listed in feats of player:
					say "     Despite, or perhaps even in part because, of how dirty you feel for what you've done, you can't help but be a little pleased with yourself and quite turned on by what you've done.";
					increase libido of player by 10;
					increase morale of player by 1;
				otherwise:
					say "     Feeling somewhat dirty for what you've done, you wonder to what depths you'll sink before this is all done.  And despite this, you can't help but feel a little turned on as well.";
					increase libido of player by 5;
					decrease morale of player by 1;
				weakrandominfect;
			otherwise:
				say "     Deciding it and any possible infection that might come with it aren't worth getting a [y].  You decide to look elsewhere for the supplies you need.";
		otherwise:		[male mutant]
			say "It is in the hands of a sentient!  Seeming peaceful enough, you try to convince him to part with it since he and his nearby friends seem to have enough.  You try to negotiate a trade, but he has no interest in anything you have to offer, instead suggesting you might earn your reward";
			[breakdown of requests/player options here]
			say " with your mouth.  Pushing aside the scraps of his clothes and grabbing his junk, the transformed person strokes his cock to erection and tells you to start sucking.  Shall you whore yourself out for a [y]?";
			if the player consents:
				say "[scavsex_m01]";
				say ".  You're tossed the [y] by one of his friends";
				add y to the invent of the player;
[				if "Haggler" is listed in feats of player:
					let aa be a random number from 1 to charisma of player;
					let bb be a random number from 1 to ( difficulty * 2 );
					if aa >= bb:
						add y to invent of player;
						say " and even manage to haggle a second one from them";		]
				say ".";
				if "Submissive" is listed in feats of player or "Kinky" is listed in feats of player:
					say "     Despite, or perhaps even in part because, of how dirty you feel for what you've done, you can't help but be a little pleased with yourself and quite turned on by what you've done.";
					increase libido of player by 10;
					increase morale of player by 1;
				otherwise:
					say "     Feeling somewhat dirty for what you've done, you wonder to what depths you'll sink before this is all done.  And despite this, you can't help but feel a little turned on as well.";
					increase libido of player by 5;
					decrease morale of player by 1;
				weakrandominfect;
			otherwise:
				say "     Deciding it and any possible infection that might come with it aren't worth getting a [y].  You decide to look elsewhere for the supplies you need.";
	say "[line break]";
	if battleground is "Outside" and a random chance of 1 in 6 succeeds, mallrecall;


to say scavsex_f01:
	say "     Deciding that there's worse ways to get by, you drop to your knees and bury your face between her legs.  She moans and giggles as you lick her pussy.  Her friends, watching nearby, giggle as well and move in closer to enjoy the show.  Knowing your reward is on the line, you work to make it speedy but pleasurable.  You stuff a pair of fingers into her [one of]dripping[or]quivering[or]furry[or]scaly[or]super-wide[or]tentacle-rimmed[as decreasingly likely outcomes] vagina while your tongue sets to lashing across her clit.  In a few minutes, you've got her pressing your face to her groin while she cums with a loud cry of ecstacy.";
	say "     When released, you gasp to catch your breath after being smothered against her crotch.  Her excess juices run down your chin and neck";

to say scavsex_m01:
	say "     Deciding that there's worse ways to get by, you drop to your knees and take hold of his cock.  He moans softly and laughs as you stuff his shaft into your mouth.  His friends, watching nearby, chuckle as well and move in closer to enjoy the show.  Knowing your reward is on the line, you work to make it speedy but pleasurable.  You bob your head over his [one of]thick[or]dribbling[or]knotted[or]ridged[or]oversized[or]tentacle[as decreasingly likely outcomes] penis while stroking his [one of][or]plump [or]pulsating [or]fist-sized [as decreasingly likely outcomes]balls in your hand.  Your tongue slides along his shaft and teases his glans, working him to a fast climax that has his groan in much-needed release.";
	say "     By the time he's let you go, it feels like you've swallowed [one of]a cup's worth[or]a pint's worth[or]a quart's worth[as decreasingly likely outcomes] of his [one of]runny[or]creamy[or]thick[or]gooey[or]sludgy[at random] semen.  You have to gasp and cough to clear your throat so you can catch your breath after being stuffed full of his cumming cock.  His unswallowed load runs down your chin and neck";



Food and Water Finding ends here.