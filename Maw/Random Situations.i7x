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
Beast's Den is bad.
Susan Sighting is a situation.
Nerd's Opinion is a situation.
Nerd's Opinion is resolved.]

Chapter 2 - Dem ich das rules

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

Instead of resolving Husky Group:
	say "When your scouts return from their patrol, the head of the group informs you about a pack of mentally lost Husky Bitches that nearly jumped them from the bush. The lead scout blushing some with a wag of his new-found curled tail. Oh dear... oh dear indeed! You insist that he go to the your science adviser to have the nanites overpowered by your species[apostrophe] own. Unless of course, they wanted to keep the tail, and likely other changes. You assure them that they cannot stay if things get out of hand with their new infection.[line break][line break]";
	now Husky Group is resolved;
	now Husky Group Take Two is not resolved;

Instead of resolving Husky Group Take Two:
	let ohnoes be a random number from 1 to 2;
	if ohnoes is 1:
		say "You step into a scene in the village that you were not expecting at all. Remembering one of your scouts had recently been infected by a group of husky females and having been slightly infected by the species[apostrophe] nanites. Well--it seems allowing them to stay has been a grave mistake on your part. As you head out for the morning rounds, you spot that same scout--only this time they were a completely different image of what they used to be. Completely turned into a panting, drooling, and lost to their lusts, female husky. Straddling one of your villagers as she wiped her heat drenched sex on the other[apostrophe]s chest. Quickly calling your guard before things could get further out of hand, they quickly apprehend the female, and other infected villagers before dragging them off and out of the village. Likely never to be seen, nor heard from again. Learning from some mistakes can end up biting you in the ass if you[apostrophe]re not careful![line break][line break]";
		let x be (population of tribe of player) divided by 20;
		if x is less than 1, now x is 1;
		decrease the population of the tribe of player by x;
		say "After an emergency census, you have learned you lost [x] people to the outbreak, but you are assured it has been dealt with permanently and the threat has been completely isolated. Your Science Adviser has given the green light to let the populace resume its day-to-day activities.[line break][line break]";
	otherwise:
		say "Strolling out into the center of your village, you spot that one individual that had their prior engagement with a group of Slutty Huskies not just a few months ago. They seemed to be working diligently enough, and even socially accepted amongst their peers. Even with that curled, fluffed tail wagging to-and-fro from their pert bottom. Who would have thought that you made the right decision about keeping them within the walls of the village? So many things could have gone very poorly if the infection did not cease at their tail alone! Maybe that very same scout[apostrophe]s situation could mean a brighter tomorrow for your tribe![line break][line break]";
	now Husky Group Take Two is resolved;
		
Instead of resolving Bloated Hunter:
	if "Male" is listed in the gender of the tribe of player:
		say "One of your hunters returns looking rather... round around the middle. His stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular male wasn't at all overweight, nor pregnant the morning you saw him last. His distended stomach could tell numerous stories, and the most likely one was likely the truth. His hands/paws holding the lip of his bulging stomach up, hoisting and carrying it as he waddled down the road. Mumbling incoherently to himself. Thankfully it didn[apostrophe]t look as if he was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently--at the male as he wanders on by. That sickly sloshing stomach most certainly causing your own to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of his.[end if][line break][line break]";
	otherwise:
		if "Female" is listed in the gender of the tribe of player:
			say "One of your huntresses returns looking rather... round around the middle. Her stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular girl wasn't at all overweight, nor pregnant the morning you saw her last. Her distended stomach could tell numerous stories, and the most likely one was likely the truth. Her hands/paws holding the lip of her bulging stomach up, hoisting and carrying it as she waddled down the road. Mumbling incoherently to herself. Thankfully it didn[apostrophe]t look as if she was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently--at the female as she wanders on by. That sickly sloshing stomach most certainly causing your own stomach to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of hers.[end if][line break][line break]";
		otherwise:
			if "Hermaphrodite" is listed in the gender of the tribe of player:
				say "One of your huntresses returns looking rather... round around the middle. Her stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular girl wasn't at all overweight, nor pregnant the morning you saw her last. Her distended stomach could tell numerous stories, and the most likely one was likely the truth. Her hands/paws holding the lip of her bulging stomach up, hoisting and carrying it as she waddled down the road. Mumbling incoherently to herself. Thankfully it didn[apostrophe]t look as if she was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently--at the female as she wanders on by. That sickly sloshing stomach most certainly causing your own stomach to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of hers.[end if][line break][line break]";
	now Bloated Hunter is resolved.

Instead of resolving Hidden Cache:
	say "Returning from their hunt, a group of your hunters are carrying a large wooden crate. Looking cracked and weathered, the panels of wood long since begun their rotting in the dampness of the forest beyond. Setting it down with a thump upon the ground in-front of you, they use a crow-bar to pry the top open--showing you an amazing collection of pre-outbreak books, kept safe for the most part by a thin lining of plastic to keep the humidity and rain from ultimately destroying the books.[if (perception of the tribe of player) is greater than 50] You find one of them holds a distinct familiarity about it, and upon reading the title, [apostrophe]Of Mice and Men[apostrophe] you are greeted with flashing images of your past in your more young adult years, sitting down in a desk with row upon row of eager young peers at your side.[end if] Thinking it best that these be stored and studied by your science team, you instruct the hunters to place them in a safe storage--carefully!";
	increase science of the tribe of player by 15;
	now Hidden Cache is resolved;
	[now Nerd's Opinion is unresolved;

Instead of resolving Nerd's Opinion:
	say "[italic type]You meet with your science adviser about the recent finding of an antique stash of old, post-world literature.[roman type][line break]";
	if tribe of player is huskies:
		say "She informs you that your hunters did indeed infact find a stash of pre-outbreak literature, and from what she could gather, it was being sent to a high-school not even fifty miles away, 'Well, considering the importance of literature to the undeveloped mind--you should try and have these stories told in our own words.' She pauses for a moment, letting her pen click against the clip-board she carried before setting it down. Her lips parting once more, 'They may be just stories, but because it isn't about what happens in them, and the most notable factor in these stories is the moral, the theme of a novel. To what we can relate to real-life situations in a singular statement, though not at all too specific. It's a generalization. Such as, [apostrophe]Animals may seem wild, savage and mindless beasts that prey upon others for a living--though is humanity any different in that regards?[apostrophe] That may be a little [italic type]too[roman type] general, but the idea stands the same.' She nods to her own words, completely oblivious to if you understood or not. With you finding it best that she decide upon this herself, you allow her to give the books to the entertainers, so they can enact a play of them.";
	if tribe of player is gryphons:
		say "";
	if tribe of player is latex foxes:
		say "";
	now Nerd's Opinion is resolved.

Instead of resolving Beast's Den:
	say "boobies";
	now Beast's Den is resolved;

Instead of resolving Susan Sighting:
	say "boobies";
	now Susan Sighting is resolved;]

Random Situations ends here.
