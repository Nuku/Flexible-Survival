Random Situations by Maw begins here.

Chapter 1 - Is a

Husky Group is a situation.
Husky Group has a rule called Dasvalidtoo.
Husky Group Take Two is a situation.
Bloated Hunter is a situation.
Bloated Hunter is bad.
Bloated Hunter has a rule called Dasvalid. [Req: Hunters]
Nerd Rage is a situation. [Req: Lost Physics]
Nerd Rage is bad.
Hidden Cache is a situation.
Hidden Cache is good.
Hidden Cache has a rule called Dasvalid. [Req: Hunters]
Lost Physics Homework is a situation.
Lost Physics Homework is good.
Beast's Den is a situation. [Req: Hunters]
Beast's Den is bad.
Susan Sighting is a situation.
Nerd Rage is resolved. 
Hidden Cache is resolved.
Bloated Hunter is resolved.
Beast's Den is resolved.
Husky Group Take Two is resolved.

Chapter 2 - Dem be das rules

This is the Dasvalidtoo rule:
	if the tribe of player is not huskies: 
		if settler is complete, the rule succeeds;
	otherwise:
		rule fails;

This is the Dasvalid rule:
	if hunter is complete, the rule succeeds;
	rule fails;

Chapter 3 - Situation

Instead of resolving Husky Group:
	say "When your scouts return from their patrol, the head of the group informs you about a pack of mentally lost Husky Bitches that nearly jumped them from the bush. The lead scout blushing some with a wag of his new-found curled tail. Oh dear... oh dear indeed! You insist that he go to the your science advisor to have the nanites overpowered by your species[apostrophe] own. Unless of course, they wanted to keep the tail, and likely other changes. You assure them that they cannot stay if things get out of hand with their new infection.[line break][line break]";
	now Husky Group is resolved;
	now Husky Group Take Two is not resolved;

Instead of resolving Husky Group Take Two:
	let ohnoes be a random number between 0 and 1;
	if ohnoes is 1:
		say "You step into a scene in the village that you were not expecting at all. Remembering one of your scouts had recently been infected by a group of husky females and having been slightly infected by the species[apostrophe] nanites. Well--it seems allowing them to stay has been a grave mistake on your part. As you head out for the morning rounds, you spot that same scout--only this time they were a completely different image of what they used to be. Completely turned into a panting, drooling, and lost to their lusts, female husky. Straddling one of your villagers as she wiped her heat drenched sex on the other[apostrophe]s chest. Quickly calling your guard before things could get further out of hand, they quickly apprehend the female, and other infected villagers before dragging them off and out of the village. Likely never to be seen, nor heard from again. Learning from some mistakes can end up biting you in the ass if you[apostrophe]re not careful![line break][line break]";
		let x be (population of tribe of player) divided by 20;
		if x is less than 1, now x is 1;
		decrease the population of the tribe of player by x;
		say "After an emergency census, you have learned you lost [x] people to the outbreak, but you are assured it has been dealt with permanently and the threat has been completely isolated. Your Science Advisor has given the green light to let the populace resume its day-to-day activities.[line break][line break]";
	otherwise:
		say "Strolling out into the center of your village, you spot that one individual that had their prior engagement with a group of Slutty Huskies not just a few months ago. They seemed to be working dilligantly enough, and even socially accepted amongst their peers. Even with that curled, fluffed tail wagging to-and-fro from their pert bottom. Who would have thought that you made the right decision about keeping them within the walls of the village? So many things could have gone very poorly if the infection did not cease at their tail alone! Maybe that very same scout[apostrophe]s situation could mean a brighter tomorrow for your tribe![line break][line break]";
	now Husky Group Take Two is resolved;
		
Instead of resolving Bloated Hunter:
	if "Male" is listed in the gender of the tribe of player:
		say "One of your hunters returns looking rather... round around the middle. His stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular male wasn't at all overweight, nor pregnant the morning you saw him last. His distended stomach could tell numerous stories, and the most likely one was likely the truth. His hands/paws holding the lip of his bulging stomach up, hoisting and carrying it as he waddled down the road. Mumbling incoherently to himself. Thankfully it didn[apostrophe]t look as if he was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently at the male as he wanders on by. That sickly sloshing stomach most certainly causing your own to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of his.[end if][line break][line break]";
	otherwise:
		if "Female" is listed in the gender of the tribe of player:
			say "One of your hunteresses returns looking rather... round around the middle. Her stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular girl wasn't at all overweight, nor pregnant the morning you saw her last. Her distended stomach could tell numerous stories, and the most likely one was likely the truth. Her hands/paws holding the lip of ber bulging stomach up, hoisting and carrying it as she waddled down the road. Mumbling incoherently to herself. Thankfully it didn[apostrophe]t look as if she was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently at the female as she wanders on by. That sickly sloshing stomach most certainly causing your own stomach to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of hers.[end if][line break][line break]";
		otherwise:
			if "Hermaphrodite" is listed in the gender of the tribe of player:
				say "One of your hunteresses returns looking rather... round around the middle. Her stomach gurgling loudly, bloated beyond recognition, even you yourself were not oblivious enough to know that this particular girl wasn't at all overweight, nor pregnant the morning you saw her last. Her distended stomach could tell numerous stories, and the most likely one was likely the truth. Her hands/paws holding the lip of ber bulging stomach up, hoisting and carrying it as she waddled down the road. Mumbling incoherently to herself. Thankfully it didn[apostrophe]t look as if she was infected with a different strain of nanites. [if Husky Group is resolved and Husky Group Take Two is resolved]Knowing damn well what the infection could potentially do to your tribe, you stare--quite intently at the female as she wanders on by. That sickly sloshing stomach most certainly causing your own stomach to be clenching up tightly, churning at the thought of a nanite outbreak in your settlement.[otherwise] Watching with a tilted head and cocked brow, you listen to the sounds of the contents of that stomach sickly sloshing about with every step of hers.[end if][line break][line break]";
	now Bloated Hunter is resolved.
	
Instead of resolving Nerd Rage:
	if the species is Latex Foxes:
		say "boobies";
	if the species is huskies:
		say "boobies";
	if the species is Blue Gryphons:
		say "boobies";
		now Nerd rage is resolved;
		stop the action;
	decrease science of tribe of player by 5;
	say "Because of the accident, your science points have dropped by 5 points!";
	now Nerd Rage is resolved;

Instead of resolving Hidden Cache:
	say "boobies";
	increase creds by 50;
	now Hidden Cache is resolved;
	
Instead of resolving Beast's Den:
	say "boobies";
	now Beast's Den is resolved;
	
Instead of resolving Lost Physics Homework:
	say "boobies";
	now Lost Physics Homework is resolved;
	now Nerd Rage is not resolved;

Instead of resolving Susan Sighting:
	say "boobies";
	now Susan Sighting is resolved;

Random Situations ends here.
