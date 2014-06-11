Random Situations by Maw begins here.

Chapter 1 - Is a

Husky Group is a situation.
The validation of it is the Nohusky rule.
Husky Group Take Two is a situation.
Husky Group Take Two is resolved.
Bloated Hunter is a situation.
The validation of it is the Dasvalid rule.
Bloated Hunter is bad.
Hidden Cache is a situation.
The validation of it is the Dasvalid rule.
Hidden Cache is good.
[Beast's Den is a situation. [Req: Hunters]
Beast's Den has a rule called Dasvalid.
Beast's Den is bad.]
Susan Sighting is a situation.
Nerd's Opinion is a situation.
Nerd's Opinion is resolved.
Novelstudies is a number that varies.
[Susan's Location is a situation.]

Chapter 2 - Rules 

This is the Nohusky rule:
	if tribe of player is Huskies:
		rule fails;
	if Local Survey is not complete:
		rule fails;
	rule succeeds;

This is the Dasvalid rule:
	if hunting is complete, the rule succeeds;
	rule fails;

Chapter 4 - Situation Code

Part 1 - Husky Group + Husky Group Take Two (Inter-linked)

Instead of resolving Husky Group:
	say "When your scouts return from their patrol, the head of the group informs you about a pack of mentally lost Husky Bitches that nearly jumped them from the bush. The lead scout blushing some with a wag of his new-found curled tail. Oh dear... oh dear indeed! You insist that he go to the your science adviser to have the nanites overpowered by your species['] own. Unless of course, they wanted to keep the tail, and likely other changes. You assure them that they cannot stay if things get out of hand with their new infection.[line break][line break]";
	now Husky Group is resolved;
	now Husky Group Take Two is not resolved;

Instead of resolving Husky Group Take Two:
	let ohnoes be a random number from 1 to 2;
	if ohnoes is 1:
		say "You step into a scene in the village that you were not expecting at all. Remembering one of your scouts had recently been infected by a group of husky females and having been slightly infected by the species['] nanites. Well--it seems allowing them to stay has been a grave mistake on your part. As you head out for the morning rounds, you spot that same scout--only this time they were a completely different image of what they used to be. Completely turned into a panting, drooling, and lost to their lusts, female husky. Straddling one of your villagers as she wiped her heat drenched sex on the other[']s chest. Quickly calling your guard before things could get further out of hand, they quickly apprehend the female, and other infected villagers before dragging them off and out of the village. Likely never to be seen, nor heard from again. Learning from some mistakes can end up biting you in the ass if you[']re not careful![line break][line break]";
		let x be (population of tribe of player) divided by 20;
		if x is less than 1, now x is 1;
		decrease the population of the tribe of player by x;
		say "After an emergency census, you have learned you lost [x] people to the outbreak, but you are assured it has been dealt with permanently and the threat has been completely isolated. Your Science Adviser has given the green light to let the populace resume its day-to-day activities.[line break][line break]";
	otherwise:
		say "Strolling out into the center of your village, you spot that one individual that had their prior engagement with a group of Slutty Huskies not just a few months ago. They seemed to be working diligently enough, and even socially accepted amongst their peers. Even with that curled, fluffed tail wagging to-and-fro from their pert bottom. Who would have thought that you made the right decision about keeping them within the walls of the village? So many things could have gone very poorly if the infection did not cease at their tail alone! Maybe that very same scout[']s situation could mean a brighter tomorrow for your tribe![line break][line break]";
	now Husky Group Take Two is resolved;

Part 2 - Bloated Hunter

Instead of resolving Bloated Hunter:
	if "Male" is listed in the gender of the tribe of player:
		say "One of your hunters returns looking rather... round around the middle. His stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular male wasn't at all overweight, nor pregnant the morning you saw him last. His distended stomach could tell numerous stories, and the most likely one was likely the truth. His hands/paws holding the lip of his bulging stomach up, hoisting and carrying it as he waddled down the road. Mumbling incoherently to himself. Thankfully it didn[']t look as if he was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently--at the male as he wanders on by. That sickly sloshing stomach most certainly causing your own to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of his.[end if][line break][line break]";
	otherwise:
		if "Female" is listed in the gender of the tribe of player:
			say "One of your huntresses returns looking rather... round around the middle. Her stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular girl wasn't at all overweight, nor pregnant the morning you saw her last. Her distended stomach could tell numerous stories, and the most likely one was likely the truth. Her hands/paws holding the lip of her bulging stomach up, hoisting and carrying it as she waddled down the road. Mumbling incoherently to herself. Thankfully it didn[']t look as if she was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently--at the female as she wanders on by. That sickly sloshing stomach most certainly causing your own stomach to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of hers.[end if][line break][line break]";
		otherwise:
			if "Hermaphrodite" is listed in the gender of the tribe of player:
				say "One of your huntresses returns looking rather... round around the middle. Her stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular girl wasn't at all overweight, nor pregnant the morning you saw her last. Her distended stomach could tell numerous stories, and the most likely one was likely the truth. Her hands/paws holding the lip of her bulging stomach up, hoisting and carrying it as she waddled down the road. Mumbling incoherently to herself. Thankfully it didn[']t look as if she was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently--at the female as she wanders on by. That sickly sloshing stomach most certainly causing your own stomach to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of hers.[end if][line break][line break]";
	now Bloated Hunter is resolved.

Part 3 - Hidden Cache + Nerd's Opinion (Inter-linked)

Instead of resolving Hidden Cache:
	say "Returning from their hunt, a group of your hunters are carrying a large wooden crate. Looking cracked and weathered, the panels of wood long since begun their rotting in the dampness of the forest beyond. Setting it down with a thump upon the ground in-front of you, they use a crow-bar to pry the top open--showing you an amazing collection of pre-outbreak books, kept safe for the most part by a thin lining of plastic to keep the humidity and rain from ultimately destroying the books.[if (perception of the tribe of player) is greater than 50] You find one of them holds a distinct familiarity about it, and upon reading the title, [']Of Mice and Men['], you are greeted with flashing images of your past in your more young adult years, sitting down in a desk with row upon row of eager young peers at your side.[end if] Thinking it best that these be stored and studied by your science team, you instruct the hunters to place them in a safe storage--carefully!";
	increase science of the tribe of player by 15;
	now Hidden Cache is resolved;
	now Nerd's Opinion is unresolved;

Instead of resolving Nerd's Opinion:
	say "[italic type]You meet with your science adviser about the recent finding of an antique stash of old, post-world literature.[roman type][line break]";
	if tribe of player is huskies:
		say "She informs you that your hunters did indeed in fact find a stash of pre-outbreak literature, and from what she could gather, it was being sent to a high-school not even fifty miles away, 'Well, considering the importance of literature to the undeveloped mind--you should try and have these stories told in our own words.' She pauses for a moment, letting her pen click against the clip-board she carried before setting it down. Her lips parting once more, 'They may be just stories, but because it isn't about what happens in them, and the most notable factor in these stories is the moral, the theme of a novel. To what we can relate to real-life situations in a singular statement, though not at all too specific. It's a generalization. Such as, [']Animals may seem wild, savage and mindless beasts that prey upon others for a living--though is humanity any different in that regards?['] That may be a little [italic type]too[roman type] general, but the idea stands the same.' She nods to her own words, completely oblivious to if you understood or not. With you finding it best that she decide upon this herself, you allow her to give the books to the entertainers, so they can enact a play of them.[line break][line break]";
		now Novelstudies is 2;
	if tribe of player is gryphons:
		say "The lovely, motherly gryphon strides up to you with quite the smile on her face, 'Hey there chief!' She exclaimed, seeming to be quite excited about something in particular--what that would be though is a mystery to you. She steps foot and stands her ground in-front of you, smirk upon her beak all the while, 'You would not believe what the huntresses have found!' She wiggles in excitement before continuing, 'That crate you brought to me is by far one of the greatest treasures we could have hoped for. Children[']s novels! Can you believe it?!' The gryphon woman jumps up with quite a bit of enthusiasm, 'We can now help teach our young morals, and better prepare them for choices in life! We[']ll start having people write copies of the books for their future families!'[if (perception of the tribe of player) is greater than 50] She quickly pulls a familiar book from her lab-coat[']s pocket, offering it to you with a warm smile, 'Here, I heard you took interest in this book when the crate was found.' She hands you the small novel entitled, [']Of Mice and Men['].[end if] She prances away with a skip in her step. Boy--was she excited! Then again, with how motherly she always is, it doesn't come much as a surprise she would be so excited by some books.[line break][line break]";
		if (perception of the tribe of player) is greater than 50:
			increase (mood of the tribe of player) by 5;
			say "After reading the book, you feel a sense of happiness overwhelm you. The moral of the story sticking with you for a life-time.[line break][line break]";
		now Novelstudies is 2;
	if tribe of player is latex foxes:
		say "The nerdy vixen could be seen adjusting her glasses as she padded towards you, her thighs squeaking with every step.[if turns minus lastfuck of nerd is less than fuckfrequency of nerd and lastfuck of nerd is greater than 0] You can't help but notice she[']s slightly waddling, likely due to the roughness of your last encounter. You can still see thick globs of white, sticky substance running down those glossy thighs. Though she seemed unperturbed by this; however, you can not help but snicker quietly to yourself.[end if] She eyes you for a moment before speaking, 'Books is good boss, but I only can understand the pictures...' She frowns, staring at you for a moment, seeming to be slightly embarrassed. It seems your tribe isn't the sharpest of tools in the shed. So you all opt to sell them off to the highest bidder![line break][line break]";
		let x be a random number from 100 to 400;
		say "Selling the books, you earned [bold type]$[x].[roman type]";
		if x is greater than 300:
			say "Who knew books could sell for so much?";
		if x is less than 200:
			say "For some reason, you feel ripped off, but it's money!";
		otherwise:
			say " ";
		increase (creds of tribe of player) by x;
	now Nerd's Opinion is resolved.
	
Part 4 - Beast's Den

[Instead of resolving Beast's Den:
	if perception of the tribe of player is greater than 80:
		say "Your hunters have informed you of a nearby cave, which they believe is inhabited by a large creature of some sort. They decided that it wouldn[']t be a great idea to explore, and was far to risky to attempt.[line break][line break]";
	otherwise:
		say "Your hunters have informed you of a nearby cave, do you want to explore it? [bold type](Y/N)[roman type][line break][line break]";
		if player consents:
			if Intelligence of the tribe of player is greater than 50:
				say "";
			otherwise:
				say "";
		otherwise:
			say "You decide it would be best to leave the cave alone, and that whatever lurks within probably would not be so friendly.[line break][line break]";
	now Beast's Den is resolved;]

Part 5 - Susan Sighting

Instead of resolving Susan Sighting:
	say "Spotting an unusual creature off in the distance from your village, you go to take a peek at the grazing creature. She immediately notices your presence with a flicker of her ears. The tan and cream furred doe was completely nude. Involuntarily your eyes were drawn downwards towards the black, swinging human shaft between her legs. Letting out a snort, she falls onto her hooves from her once bipedal stance and runs off. Odd...[line break][line break]";
	now Susan Sighting is resolved;
	[now Susan's Location is not resolved;]

Random Situations ends here.
