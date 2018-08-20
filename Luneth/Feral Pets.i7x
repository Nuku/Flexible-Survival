Version 1 of Feral Pets by Luneth begins here.

the linkaction of Snips is "[snipslinkaction]".
the linkaction of Dinah is "[dinahlinkaction]".
the linkaction of Chirpy is "[chirpylinkaction]".
the linkaction of Hobo is "[hobolinkaction]".

to say snipslinkaction:
	say "Possible Actions: [link]talk[as]talk Snips[end link], [link]smell[as]smell Snips[end link][line break]";

to say dinahlinkaction:
	say "Possible Actions: [link]talk[as]talk Dinah[end link], [link]smell[as]smell Dinah[end link][line break]";

to say chirpylinkaction:
	say "Possible Actions: [link]talk[as]talk Chirpy[end link], [link]smell[as]smell Chirpy[end link][line break]";

to say hobolinkaction:
	say "Possible Actions: [link]talk[as]talk Hobo[end link], [link]smell[as]smell Hobo[end link][line break]";

Section 1.1 - Cute Crab NPC/Pet
[Original content created by Nuku Valente]

Cute Crab is a pet. Cute Crab is a part of the player.
understand "Snips" as Cute Crab.
The description of Cute Crab is "[SnipsDesc]".
The weapon damage of Cute Crab is 6.
The level of Cute Crab is 1.
The Dexterity of Cute Crab is 8.
The summondesc of Cute Crab is "[SummonSnips]".
The dismissdesc of Cute Crab is "[DismissSnips]".
The assault of Cute Crab is "[one of]Your crab snaps with his great pincers![or]Scuttling crazily, you are not even entirely sure when your crab landed a blow.[at random]".
the fuckscene of Cute Crab is "The crab is too small and too cute for that sort of thing - you perv.".

to say SummonSnips:
	remove Snips from play;
	if player is in Computer Lab and Snips is in Computer Lab: [summoning while standing next to him]
		say "     Letting your cute crab Snips know that it's time to head out, Snips quickly climbs onto your foot, ready for adventure!";
	else: [regular summoning]
		say "     Bursting from the ground near you, your cute crab appears. Snips clacks its pincers together in an excited fashion like a castanet player.";

to say DismissSnips:
	move Snips to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     Looking at you for a long moment, he finally relents and burrows under the ground.";
	else: [dismissing him in the Computer Lab]
		say "     Snips quickly scuttles back to the home it has made out of one of the cubicles, cleary more than happy to be able to rest.";

Snips is a man.
The description of Snips is "[Snipsdesc]".

instead of sniffing the Cute Crab:
	say "[SnipsScent]";

instead of sniffing Snips:
	say "[SnipsScent]";

to say SnipsScent:
	say "     The crab's smell is faintly reminiscent of the beach.";

to say Snipsdesc:
	say "     It's so cute! He has huge eyes that seem to stare into your soul and big pincers that go clackity-clack. The little crab has a reddish-yellow shell, while the tips of its claws are a soft pearly-white. His huge eyes stand on slender stalks that seem to follow you wherever you go. The long spindly legs coming out of his small abdomen carry it side to side, however his steps are clumsy, causing him to fall down on occasion.";

instead of conversing the Snips:
	if player is in Computer Lab and Snips is in Computer Lab:
		say "[SnipsTalkMenu]";
	else if companion of player is Cute Crab:
		say "[SnipsTalkMenu]";
	else:
		say "     Snips isn't here.";

instead of conversing Cute Crab:
	if Cute Crab is not tamed:
		say "     Who?";
	else:
		if player is in Computer Lab and Snips is in Computer Lab:
			say "[SnipsTalkMenu]";
		else if companion of player is Cute Crab:
			say "[SnipsTalkMenu]";
		else:
			say "     Snips isn't here.";

Section 1.2 - Cute Crab Menu

to say SnipsTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Snips";
	now sortorder entry is 1;
	now description entry is "Sit back and just watch how Snips goes about his day";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Play with Snips";
	now sortorder entry is 1;
	now description entry is "Spend some time bonding with Snips";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch Snips"):
					say "[SnipsTalk1]";
				if (nam is "Play with Snips"):
					say "[SnipsTalk2]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the cute crab, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SnipsTalk1:
	if number of bunkered people + number of booked people < 3:
		say "     You decide to take a short rest and just watch what your little crab does with his free time. His cubicle is actually pretty sparse. For the most part he just skuttles around. Once in awhile Snips will pick something up in his claws, but after losing interest in it, he is quick to discard it and move on to the next thing that he can get his pincers on. Finally exhausted, your small crab ends up going to the back of the cubicle, more than likely feeling safer with something covering him overhead. Settling down, you're not exactly sure if he is sleeping or not, but he stops moving completely, so the show must be over. Getting back to your feet, you ready yourself to head back out to the task at hand.";
	else if number of bunkered people + number of booked people > 3:
		say "     You decide to take a short rest and just watch what your little crab does with his free time. Someone must have recently fetched some dirt and sand from somewhere, seeing as the ground of Snips's cubicle is completely covered, making it his own little personal beach. You assume that the same person must have also grabbed the medium-sized skillet filled with water. The crab seems to love the upgrade, that is if the bubble blowing is anything to go by. Snips at the moment is busying himself with placing anything that he can find around a small burrow he has made in the soft dirt.";
		if Char-H of Elijah is "2":
			say "     It takes you a moment to notice, but your little crustacean has tucked the toy crab Elijah presented him inside. Adorably, he also makes sure to bring anything shiny he can get his claws on to the entrance of his home. More than likely Elijah was right and the crab just wanted companionship. Settling down, at first Snips gets into a defensive position in front of his home, however once he realizes just which giant has come to visit him he quickly scuttles to your side. After receiving some soothing strokes across his shell Snips is ready for bed apparently, slowly making his way back to his little tunnel. The cute little crab then cuddles up close to his new toy friend and just sit there. You're not exactly sure if he is sleeping or not, but he stops moving completely, so the show must be over. Getting back to your feet, you ready yourself to head back out to the task at hand.";
		else:
			say "     While your little crab does seem happier in his new environment, you can't help but wonder if he ever gets lonely. Settling down, at first Snips doesn't even seem to notice that you have arrived, however once he realizes just which giant has come to visit him he quickly scuttles to your side. After receiving some soothing strokes across his shell Snips is ready for bed apparently, slowly making his way back to his little tunnel. Settling down, you're not exactly sure if he is sleeping or not, but he stops moving completely, so the show must be over. Getting back to your feet, you ready yourself to head back out to the task at hand.";

to say SnipsTalk2:
	if number of bunkered people + number of booked people < 4:
		say "     You settle yourself down on the floor next to Snips's cubicle and gently thump the soft dirt until your little crab comes running to see what is going on. He quickly makes a grab for one of your fingers, holding it firmly in one of his pincers. You can tell that the crustacean is being playful, seeing as his grip isn't causing the pain that you know it's capable of delivering. Eventually, he loosens his grip, instead deciding that it would be more fun to play in the dust. You slowly draw shapes in said dust lightly with your finger, glancing over at the cute little crab, and you see him mimicking your actions with his pincer. While the shapes he draws aren't exactly what you would call shapes, Snips seems to be quite proud of them. Leaning down, you begin to draw a new shape, one you think that is appropriate for him.";
		say "     This time, you draw the constellation of Cancer, the great crab. Your little friend seems ecstatic, dancing around and blowing bubbles, although you're not sure if that's because he recognizes a fellow crustacean or simply because you are spending time with him. Either way it brings a smile to your lips. Once he begins to slow down, you gently pick him up and place him at the back of his cubicle where he sleeps. You say goodnight before getting back to your feet, and ready yourself to head back out to the task at hand.";
		increase humanity of player by 10;
	else if number of bunkered people + number of booked people > 4:
		say "     You settle yourself down on the floor next to Snips's cubicle and gently thump the soft dirt until your little crab comes running to see what is going on. He quickly makes a grab for one of your fingers, holding it firmly in one of his pincers. You can tell that the crustacean is being playful, seeing as his grip isn't causing the pain that you know it's capable of delivering.";
		if Char-H of Elijah is "2":
			say "     Eventually, he loosens his grip, instead scuttling back to his home and grabbing his toy crab friend, reminding you of a toddler grabbing its favorite stuffed animal. As the two of them continue to play around in the dirt, you notice the remains of a past meal in the dirt, mostly some sort of plant life. Snatching up a piece, you place it closer to Snips, wondering if he is hungry or not. He doesn't seem particularly interested in it, that is until you look away. He creeps closer to the food that you placed on the dirt and brings his little friend with him. It ends up becoming a game, with you looking away and glancing back quickly to see if you can catch him, and every time you act like you haven't noticed. When Snips is right on top of the food you look away for a few seconds and are able to hear his munching. Quickly turning your attention back to him, you see that the little bit of food is now missing.";
			say "     Raising an eyebrow at your cute little crab, he quickly points one claw at the toy Elijah gave him. You can't help but burst out laughing, once again being reminded of a child You can almost hear his internal voice say, 'It was them, not me!' Coming down from your laughing fit, Snips blows a few bubbles at you before grabbing his toy and scuttling home. You watch as he cuddles up close to the friend he just accused of eating the food, making you smile once again. You say goodnight before getting back to your feet, and ready yourself to head back out to the task at hand.";
			increase humanity of player by 10;
		else:
			say "     Eventually he loosens his grip, instead deciding that it would be more fun to play in the sand. Picking up a small pebble in the dirt, you hold it out to Snips, who eagerly grabs it from your fingers. He begins to do a strange sort of scuttling dance with the pebble held high like a trophy. You can't help but laugh a bit at the cute little guy's antics, your laughing though gives the crustacean pause. Looking up at you with those huge eyes, it almost feels like he is looking deep inside of your soul. Well it would if not even a second later, he scuttles quickly back to his home and gently places the pebble that you gave him right next to the opening. Deciding that he has had enough of playtime, Snips turns to face you before raising up a single claw almost to say goodbye. He makes his way back into his little tunnel, obviously tuckered out. You say goodnight before getting back to your feet, and ready yourself to head back out to the task at hand.";
			increase humanity of player by 10;

Section 1.3 - Cute Crab Event

Lost Crab is a situation.
The sarea of Lost Crab is "Beach".

Instead of resolving lost crab:
	say "     While you are exploring, you happen across a crab. The crab has unusually large and expressive eyes. It clacks its great pincers at you, but you don't get much feeling of malice from it.";
	if food is owned:
		say "     The crab scuttles towards you and reaches out to poke lightly at where your food is stored. Do you want to give it some?";
		if the player consents:
			delete food;
			say "     The crab munches quite happily at the food, blowing a few bubbles in between bites to show its appreciation. Laying down next to the crab, you can't help but laugh a little bit at how happy it looks just nibbling away at its food. Without a second thought you reach out and stroke the smooth shell, causing the crab to stop eating and just stare at you with its abnormally huge eyes. From somewhere further down the beach, you can hear a loud roar echo out. The little crab doesn't hesitate to scuttle closer to you, seeking shelter. Wrapping an arm around the frightened crustacean, you continue to play protector while it finishes its meal. Once it is finished eating you get up to carry on with your exploration of the area, glancing back down at the crab to say goodbye. You are met with those huge eyes that almost look back at you imploringly.";
			say "     The crab raises its pincers in an act that on a human would almost look like it's asking to be picked up. A little leary of the sharp claws, you lean down scooping up the crab. Thankfully, you had interpreted the action correctly as the crab seems content to now come with you. Deciding that if this little guy... errr girl... whatever it is, is going to join you it needs a name. Thinking to yourself a bit, your eyes immediately are drawn to the sizable claws that its sporting. A name pops into your head: Snips! The name goes with the claws while at the same time is perfect for a cute little crab. Informing your companion of their new name all that you receive in response is a few bubbles blown at you. That decided, you go back to the exploration of the beach.";
			now cute crab is tamed;
			move Snips to Computer Lab;
			say "[bold type](The cute crab is now tamed! You can make it your active pet by typing [link]pet cute crab[as]pet cute crab[end link]. You can see all of the pets that you have tamed with the [link]pet[as]pet[end link] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [link]pet dismiss[as]pet dismiss[end link], or just [link]dismiss[as]dismiss[end link])[roman type]";
		else:
			say "     The crab scuttles away sadly.";
		now lost crab is resolved;
	else:
		say "     The crab peers at you for several quiet moments before scuttling away, mildly disappointed for some reason.";

Section 2.1 - House Cat NPC/Pet
[Original content created by Sarokcat]

house cat is a pet. house cat is a part of the player.
understand "Dinah" as house cat.
The description of the house cat is "[DinahDesc]".
The weapon damage of house cat is 5.
The level of house cat is 1.
The Dexterity of house cat is 9.
The summondesc of house cat is "[SummonDinah]".
The dismissdesc of house cat is "[DismissDinah]".
The assault of house cat is "[one of]Your opponent moves back from your attack, only to trip over a strategically placed house cat![or]With a loud yowl, Dinah launches herself at your opponents face, biting and scratching like mad![or]The house cat eyes your opponent carefully, before turning her back on them and licking her paws in utter disdain. The shocking display of utter indifference seems to damage your opponents confidence[or]All of a sudden the combat stops for a moment as you and your opponent are startled at a loud yowl. Looking down, you barely have a second to realize that your opponent had managed to step on your cat's tail, before Dinah rips into your opponent in fury.[or]Taking advantage of your foe's distraction, Dinah picks an opportune moment to attack.[or]Spotting something of interest on the other side of the melee, Dinah quickly darts through the combat, somehow managing to claw your opponent as she does so.[at random]".
the fuckscene of house cat is "With all of the sex-crazed people out there, you're looking to fuck an ordinary house cat? You are one crazy pervert.".

to say SummonDinah:
	remove Dinah from play;
	if player is in Computer Lab and Dinah is in Computer Lab: [summoning while standing next to her]
		say "     You call Dinah over to you, watching as she stalks over to your side, walking like a predator on the prowl.";
	else: [regular summoning]
		say "     You begin to call out for Dinah, only to stop in embarrassment as you realize she is already washing her paws nearby, watching you, obviously amused at your antics.";

to say DismissDinah:
	move Dinah to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     You begin to tell Dinah that she can head on home, only to find a pair of glowing eyes watching you from the shadows, right before they fade away completely.";
	else: [dismissing her in the computer lab]
		say "     Reaching down to stroke Dinah's soft fur, you tell her that she can rest for now. Rubbing up against your leg, she then begins to make her way back to her cubicle to laze the day away.";

Dinah is a woman.
The description of Dinah is "[DinahDesc]".

instead of sniffing Dinah:
	say "[DinahScent]";

instead of sniffing house cat:
	say "[DinahScent]";

to say DinahScent:
	say "     Your little kitty smells like a normal cat.";

to say DinahDesc:
	say "     Dinah is covered in soft calico fur, and seems to be happy enough to just follow you along and see what happens, and perhaps take care of any extra milk that you might come across. The pink rhinestone collar she has around her neck seems to sparkle with every move she makes. Her whiskers twitch as she smells the area for anything of interest.";

instead of sniffing house cat:
	say "     Your little kitty smells like a normal cat.";

instead of conversing the Dinah:
	if player is in Computer Lab and Dinah is in Computer Lab:
		say "[DinahTalkMenu]";
	else if companion of player is house cat:
		say "[DinahTalkMenu]";
	else:
		say "     Dinah isn't here.";

instead of conversing house cat:
	if house cat is not tamed:
		say "     Who?";
	else:
		if player is in Computer Lab and Dinah is in Computer Lab:
			say "[DinahTalkMenu]";
		else if companion of player is house cat:
			say "[DinahTalkMenu]";
		else:
			say "     Dinah isn't here.";

Section 2.2 - House Cat Menu

to say DinahTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Dinah";
	now sortorder entry is 1;
	now description entry is "Sit back and just watch how Dinah goes about her day";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch Dinah"):
					say "[DinahTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the house cat, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DinahTalk1:
	say "     You decide to watch Dinah for a bit out of curiosity, just to see how she spends her time. After a few minutes, you are already bored out of your mind. She hasn't moved at all, well other than her tail flicking back and forth. The cat's eyes never seem to leave you though. Her expression is both curious and disinterested all at the same time. Must be a cat thing you guess. Just as you are about to get up to leave, you are forced to do a double take, your whole body frozen as you match her gaze, and the little cat almost seems amused more than anything. Shaking your head a bit, you continue to make your way back out into the Library. You feel a little better once you are out of the computer lab, but you can't seem to get one thing out of your head. Was it just you, or were Dinah's eyes just... glowing?";


Section 2.3 - House Cat Event

Lost house cat is a situation.
The sarea of Lost house cat is "Outside".

Instead of resolving Lost house cat:
	say "     Heading through the streets of the city, you spy a small form dart down an alleyway ahead of you, the shape moving too quickly for you to get anything more than an impression of four legs and fur. Curious, you pause for a minute, trying to decide whether you should investigate the shape further.";
	If player consents:
		say "     Looking down the alleyway, you don't see anything out of the usual at first, though the alley provides plenty of places for something to hide if it was small enough. Searching carefully, you are about to give up looking when you notice a small cardboard box trembling slightly as you pass close to it. Kneeling down and approaching the shaking box cautiously, you slowly lift the edge of the box up and look underneath it, only to be hissed at by a small cat, before it darts out from under the box and behind a nearby dumpster, its feline eyes shining out at you warily from the darkened space. You realize that the small cat seems to have been given a large enough scare recently that it is still terribly frightened. If you want it to calm down, perhaps you should offer it something that cats like?";
		blank out the whole of table of itemselection;
		repeat with Q running through owned milky grab objects:
			choose a blank row in table of itemselection;
			now object entry is Q;
			now holding entry is carried of Q;
			now objname entry is printed name of Q;
		if there is an object in row 1 of table of itemselection:
			say "Do you give the cat some milk?";
			if the player consents:
				let chosenmilk be pocketknife;
				if the number of filled rows in table of itemselection is 1:
					choose row 1 in table of itemselection;
					now chosenmilk is object entry;
				else:
					sort table of itemselection in object order;
					say "Which milk would you prefer to use? (no different results)[line break]";
					repeat with y running from 1 to number of filled rows in table of itemselection:
						choose row y from the table of itemselection;
						say "[link][y] - [objname entry][as][y][end link] ([holding entry])[line break]";
					say "[link][bracket]0[close bracket][end link] - NONE[line break]";
					while chosenmilk is pocketknife:
						say "Pick the corresponding number (0-[number of filled rows in table of itemselection])> [run paragraph on]";
						get a number;
						if calcnumber > 0 and calcnumber <= number of filled rows in table of itemselection:
							choose row calcnumber in table of itemselection;
							now chosenmilk is object entry;
						else if calcnumber is 0:
							now chosenmilk is journal;
				if chosenmilk is not journal:
					say "     Pulling out some of the milk that you found earlier, you manage to find a small container to pour a little bit of it into. Setting the container down just outside of the cat's narrow hiding place, you sit back and try to look nonthreatening as you wait. Slowly getting used to your presence, the cat eventually slips out of hiding, its whiskers twitching as it follows its nose over to the milk, eyeing you warily while it slowly begins to drink. You can almost hear it purr from where you are sitting as it enjoys the taste of the milk.";
					say "     Looking the cat over, you realize that under the dust and grime of the city is actually a rather healthy-looking feline, far too well-groomed and taken care of to have been on the street for very long. Drawing a bit closer as it gets used to your presence, you see that it appears to be a fine-looking calico if it were only cleaned up a bit. You wonder for a minute what a cat like this is doing wandering through the city alone before realizing that, with the city the way it is now, the cat's former owners could possibly be some of the creatures roaming the streets themselves.";
					WaitLineBreak;
					say "     Having finished the milk, the cat looks up at you as if to see if you have any more, moving a bit closer as it does so. You cautiously extend your hand to it, which it thoroughly sniffs with its soft nose before sneezing. Apparently reaching some decision about you, the cat then walks right up to where you are sitting and begins rubbing itself against your legs. You begin stroking its fur as it does, managing to get the worst of the dirt and grime off of it before it gets tired of being petted and begins to examine your pack for signs of more milk. You are able get a better look at its neck, a small pink rhinestone collar slightly covered by its soft fur.";
					say "     Fingering the tiny silver name tag you are able to read the name Dinah. Obviously the cat is a pretty little girl going by the name at least. Stretching as you sit up, you are surprised when you look around and realize how much time has passed while you took care of the little cat. Deciding that you should be heading back, you realize after a few steps that you seem to have a feline following you, but after thinking about it a second, you realize that the little house cat probably wouldn't last much longer out here on the streets alone. You let Dinah follow you all the way back to the Library.";
					delete chosenmilk;
					now house cat is tamed;
					move Dinah to Computer Lab;
					say "(The house cat is now tamed! You can make it your active pet by typing [bold type][link]pet house cat[end link][roman type]. You can see all of the pets that you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
					now Lost house cat is resolved;
				else:
					say "     Looking over your supplies, you decide that you'd rather not part with the collected milk in the end. Wanting to keep your hard-earned supplies, you decide that the cat will just have to fend for itself.";
					now Lost house cat is resolved;
			else:
				say "     Deciding to keep hold of your hard-earned supplies instead, you leave the cat alone and resolve not to stop by here again.";
				now Lost house cat is resolved;
		else:
			say "     Checking through your bag with the cat watching your every move, you don't seem to have anything that you think might tempt the cat out, and after a little bit of trying to coax it out anyways, you reluctantly give up and leave the alleyway and the cat alone. You resolve to come back after finding something the cat might like, perhaps some nice milk from one of the gryphons you have seen flying around town?";
	else:
		say "     Deciding that with the city in its current state, chasing small furry things down dark alleyways with no idea what you will find at the end of them is probably the height of stupidity. You put the encounter out of your mind and continue searching the city for things of use instead.";


Section 2.4 - House Cat Ending

when play ends:
	if house cat is tamed:
		if humanity of player < 10:
			say "     Dinah stays with you even after you surrender fully to the infection, her body seeming almost to become slightly more human-like as yours becomes more feral. While life near you is definitely still dangerous and rough, the little cat almost seems to thrive on the challenge and excitement this presents her. And even though she still teases and mocks you occasionally as cats tend to do, you retain enough of your old fondness for the little creature that you allow Dinah her liberties.";
		else:
			say "     Back in the outside world, the cat you found in that strange city seems to enjoy following you around and proves to be a nice companion to have around when she isn't wandering the streets at night with other cats. She seems mostly unaffected by the nanites that infested the city, although you swear she seems much smarter than normal cats, and you even think you have seen her using keys and manipulating objects with her paws on occasion. At one point, she seems to take a strong fancy to one of your nearby neighbors, as he lavishes Dinah with attention every time he gets a chance, and it is obvious she returns his affections. About a month or so later after a long night out, your Dinah brings home a finely marked tom cat, and under the influence of her stare, you take him in to care for as well.";
			say "     A few days later, you find that the neighbor your cat was so fond of seems to have gone missing entirely, though there are signs that a few cats got into his apartment recently. Your Dinah stares at you innocently as you look at her and her fine new male suspiciously, realizing that the new cat was surprisingly comfortable with you and knew the layout of your place immediately. Still with no proof one way or another, you take care of Dinah and her new mate, who has obviously gotten her freshly pregnant. Though you find yourself wondering sometimes just what gifts the nanite-laced city left your cat, as well as just what all she does wandering about the streets at night that she always seems so smug about in the morning... Not to mention that you have seen more cats around lately. Mostly though, you find yourself wondering what you are going to be doing with her impending kittens, and if they will inherit whatever abilities she has gained...";

Section 3.1 - Exotic Bird NPC/Pet
[Original content created by Sarokcat]

Exotic Bird is a pet. Exotic Bird is a part of the player.
understand "Chirpy" as Exotic Bird.
The description of the exotic bird is "[ChirpyDesc]".
The weapon damage of Exotic Bird is 2.
The level of Exotic Bird is 1.
The Dexterity of Exotic Bird is 15.
The summondesc of Exotic Bird is "[SummonChirpy]".
The dismissdesc of Exotic Bird is "[SummonChirpy]".
The assault of Exotic Bird is "[one of]Chirpy dive bombs your opponent![or]Chirpy flaps her wings in your adversary's face, blinding it![or]Diving down to engage, your bird friend scratches at your opponent with her talons![or]Your opponent jumps and twists around in pain with Chirpy pecking at its scalp.[or]Taking advantage of your foe's momentary distraction, Chirpy manages to land a few quick attacks.[or]Your bird friend takes a moment to relieve herself, fortuitously right on your opponent.[at random]".
The fuckscene of exotic bird is "The exotic bird is too small for that sort of thing.".

to say SummonChirpy:
	remove Chirpy from play;
	if player is in Computer Lab and Chirpy is in Computer Lab: [summoning while standing next to her]
		say "     Reaching out, you lightly pet Chirpy's brightly colored feathers. With a tip of your head, she instantly flutters over, landing softly on your shoulder.";
	else: [regular summoning]
		say "     Hearing you whistle, Chirpy flaps over and takes up position overhead, keeping an eye out for any threats.";

to say DismissChirpy:
	move Chirpy to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     You let out a loud high pitch whistle, followed by a swish of your arm. Chirpy glances down at you from the air, knowing the meaning, and begins to fly back to the Library.";
	else: [dismissing her in the computer lab]
		say "     Walking over to the little bird's cubicle, Chirpy happily flutters over to the desk to find ways to amuse herself till you have need of her again.";

Chirpy is a woman.
The description of Chirpy is "[ChirpyDesc]".

instead of sniffing Chirpy:
	say "[ChirpyScent]";

instead of sniffing Exotic Bird:
	say "[ChirpyScent]";

to say ChirpyScent:
	say "     It smells like an exotic bird with a faint, tropical scent to it.";

to say ChirpyDesc:
	say "     This exotic bird is nice and happy now! You aren't sure just what kind of exotic bird Chirpy is, but she has brilliantly colored feathers and lovely plumage on the back of her head. The bird is only slightly larger than a parrot, but she seems to have taken a liking to you, and will occasionally stop and rest on your shoulder, though the rest of the time she is flying nearby.";

instead of sniffing Exotic Bird:
	say "     It smells like an exotic bird with a faint, tropical scent to it.";

instead of conversing the Chirpy:
	if player is in Computer Lab and Chirpy is in Computer Lab:
		say "[ChirpyTalkMenu]";
	else if companion of player is Exotic Bird:
		say "[ChirpyTalkMenu]";
	else:
		say "     Chirpy isn't here.";

instead of conversing Exotic Bird:
	if Exotic Bird is not tamed:
		say "     Who?";
	else:
		if player is in Computer Lab and Chirpy is in Computer Lab:
			say "[ChirpyTalkMenu]";
		else if companion of player is Exotic Bird:
			say "[ChirpyTalkMenu]";
		else:
			say "     Chirpy isn't here.";

Section 3.2 - Exotic Bird Menu

to say ChirpyTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Chirpy";
	now sortorder entry is 1;
	now description entry is "Sit back and just watch how Chirpy goes about her day";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch Chirpy"):
					say "[ChirpyTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the exotic bird, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ChirpyTalk1:
	say "     WIP";

Section 3.3 - Exotic Bird Event

Scared bird is a situation.
The sarea of Scared bird is "Zoo".
Instead of resolving Scared bird:
	say "     Traveling along the Zoo paths, you hear a strange noise from up ahead. Moving carefully to investigate the area where you heard the noise, you look around the tree there but don't actually see anything. You are about to turn to leave when you hear the sound again from up in the branches. Looking up, you are surprised to see a rather scared-looking exotic bird taking shelter up in the branches, its brilliant plumage obvious at this distance as it huddles nervously above you. You realize that it must have escaped from one of the exotic bird exhibits, and you sigh when you realize that its chances of survival in this violent city without help are pretty slim. Maybe you should try convincing it to come along with you instead of just hiding here?";
	if carried of food is 0:
		say "     A quick glance shows that you don't have any food with which to try and coax the bird down with. You'll have to try again later once you've found some food.";
	else:
		if player consents:
			say "Making soft noises at the bird, you attempt to coax it down with a bit of food and friendly words, trying hard to convince it that you want to be its friend.";
			let bonus be (( the Charisma of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll > 17:
				say "     Your honeyed words and sweet tones eventually manage to coax the scared bird down out of the tree, where you feed it a bit of food as it begins to get used to your presence. Given a closer look, you are impressed by the bird's wonderfully bright feathers, but you still have no clue exactly what type of bird it is. Sighing, you decide that your knowledge of birds is just too insufficient for what is obviously a rare species of bird, and resolve to try to find out just what kind of bird it is, if you ever manage to get out of this crazy city that is. After several hours of coaxing and calming the bird, it seems quite happy to go along with you as you head back into the city, obviously happy not to be alone any longer.";
				say "     Landing on your shoulder, the chipper little bird cuddles up to your neck. You should probably give your new little friend a name. Hmm... a chipper bird name. Chirpy... that sounds like a good name for her. Trying out the name for her, she seems to like it, singing her sweet melody happily.";
				delete food;
				now Exotic Bird is tamed;
				move Chirpy to Computer Lab;
				say "(The exotic bird is now tamed! You can make it your active pet by typing [bold type][link]pet exotic bird[end link][roman type]. You can see all of the pets that you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
				now Scared bird is resolved;
			else:
				say "     Sadly, the bird seems too scared to heed your blandishments, and it stays up in the tree shaking and occasionally letting out a soft piteous cry. You obviously aren't going to convince it to trust you right now. Maybe you should try again later.";
		else:
			say "     Deciding that you wouldn't have the least idea of how to care for a truly exotic bird yourself, and that you are having enough trouble keeping yourself alive, you decide to leave the bird to its fate. At least it has wings, right?";
			now Scared bird is resolved;

Section 3.4 - Exotic Bird Ending

when play ends:
	if Exotic Bird is tamed:
		if humanity of player < 10:
			say "     When you give in to your feral instincts, the exotic bird that you rescued seems to sense your new state of mind, and keeps at a safe distance, though she never strays too far, often helping you out of trouble or calling out to warn you of danger. In thanks, you often leave her little offerings of whatever is handy. It makes for a strange sort of partnership, but a happy enough one.";
		else:
			say "     After your rescue, you take the bird that you rescued to several specialists, who are amazed to find that a member of its rare species survived the city, and they thank you profusely for your help in bringing her back safely. Impressed at your ability to get the bird to trust you, not only do they offer you a reward for saving Chirpy, but they ask you to stop by occasionally not just to visit your now happy bird friend, but also to ask questions about any other strange birds and species that you might have encountered in the city.";

Section 4.1 - Helper Dog NPC/Pet
[Original content created by Stripes]

helper dog is a pet. helper dog is a part of the player.
understand "Hobo" as helper dog.
The description of helper dog is "[HoboDesc]".
The weapon damage of helper dog is 6.
The level of helper dog is 5.
The Dexterity of helper dog is 15.
The summondesc of helper dog is "[SummonHobo]".
The dismissdesc of helper dog is "[DismissHobo]".
The assault of helper dog is "[one of]The helper dog jogs between your enemy's legs, snapping at them![or]Growling menacingly, Hobo snaps at your foe, allowing you to score another glancing blow![or]Barking loudly, your loyal dog charges and bites the enemy![or]Your faithful companion bites your opponent's ankle, growling deep in its throat until the leg finally pulls free![or]With a loud bark, the helper dog leaps at your enemy and bites their arm![or]Moving around behind them, Hobo grabs their arm and pulls back, knocking them off balance for you to score a quick hit![or]In an surprising piece of cleverness, your helper dog pulls a rope he's found across your enemy's path, causing them to stumble briefly![at random]".
the fuckscene of helper dog is "You make the offer to your canine companion, but he is uninterested.".

to say SummonHobo:
	remove Hobo from play;
	if player is in Computer Lab and Hobo is in Computer Lab: [summoning while standing next to him]
		say "     Leaning down, you ruffle one of Hobo's ears, telling him that it's time to get back out into the city. He happily wags his tail as he begins to trail you.[hoboreset]";
	else: [regular summoning]
		say "     Coming obediently to your call, Hobo moves to your side, ready and eager to assist you.[hoboreset]";

to say DismissHobo:
	move Hobo to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     Softly patting Hobo's flank you tell him that it's time to head home. He happily starts to run off but stops when he notices you not following. With a curt nod to him, he tilts his head then resumes his run back to the Library.";
	else: [dismissing him in the Computer Lab]
		say "     Walking over to the cubicle that Hobo has made into his own little house, you lean down, giving the faithful dog a tight hug. With a final ear rub that leaves Hobo's tail wagging, you tell him to take it easy at home for awhile.";

Hobo is a man.
The description of Hobo is "[HoboDesc]".

instead of sniffing the Helper Dog:
	say "[HoboScent]";

instead of sniffing Hobo:
	say "[HoboScent]";

to say HoboScent:
	say "     Your Hobo smells like a normal dog, surprisingly given the circumstances.";

to say Hobodesc:
	say "     Hobo is a black and white shepherd with soulful and intelligent brown eyes. He will follow you and loyally assist you with your troubles.";

instead of conversing the Hobo:
	if player is in Computer Lab and Hobo is in Computer Lab:
		say "[HoboTalkMenu]";
	else if companion of player is helper dog:
		say "[HoboTalkMenu]";
	else:
		say "     Hobo isn't here.";

instead of conversing helper dog:
	if helper dog is not tamed:
		say "     Who?";
	else:
		if player is in Computer Lab and Hobo is in Computer Lab:
			say "[HoboTalkMenu]";
		else if companion of player is helper dog:
			say "[HoboTalkMenu]";
		else:
			say "     Hobo isn't here.";


Section 4.2 - Helper Dog Menu

to say HoboTalkMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Watch Hobo";
	now sortorder entry is 1;
	now description entry is "Sit back and just watch how Hobo goes about his day";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Watch Hobo"):
					say "[HoboTalk1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the helper dog, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HoboTalk1:
	say "     WIP";

Section 4.3 - Helper Dog Event

Mournful Dog is a situation.
The sarea of Mournful Dog is "Hospital".
hdog is a number that varies.
dogfoodcount is a number that varies.

Instead of resolving a Mournful Dog:
	if hdog is 0:			[first time finding]
		say "     While searching through a hallway of patient rooms, you open one to a terrible smell of decay. You retch several times[if humanity of player < 50], barely hearing the soft growling coming from within,[end if] before recovering and taking stock of the room. There is a body on the hospital bed, clearly long dead and unremoved. On the floor beside it is a [if humanity of player < 50]growling[else]sad[end if] dog. The dog is a black and white shepherd wearing a bright vest on its bony flanks, denoting it as a helper dog.";
		say "     It seems that the poor beast's master passed away, and in the ensuing chaos at the Hospital, was left here since. It is unclear if they died before the outbreak took hold or if they were too weak and the infection finished them off before it could change and heal them. The dog, probably hostile to the infected hospital staff, has continued to protect its master and kept them from the removing the body.";
		increase score by 1;
		now hdog is 1;
		if food is not owned:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly. Unfortunately, you have no food to spare. Perhaps you should try to find it again later when you have some to give it.";
		if food is owned:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly. Do you offer it some food?";
			if the player consents:
				delete food;
				increase dogfoodcount by 3;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let featbonus be 0;
				if "Good Teacher" is listed in feats of player, increase featbonus by 1;
				if "Ringmaster" is listed in feats of player, increase featbonus by 1;
				let dice be a random number from 1 to 20;
				let total be ( dice plus bonus plus dogfoodcount plus featbonus);
				say "You roll 1d20([dice])+[bonus]+[dogfoodcount + featbonus] vs 22 and score [total]: ";
				if total > 21:
					say "     You are able to coax the dog into letting you come close and pet it. It wags its tail as you pat its head and check its tag, finding only the name 'Hobo'. Reaching over, you pull the sheets over his former master's body, then you both leave together.";
					now helper dog is tamed;
					move Hobo to Computer Lab;
					say "     (The helper dog is now tamed! You can make it your active pet by typing [bold type][link]pet helper dog[as]pet helper dog[end link][roman type]. You can see all of the pets that you have tamed with the [bold type][link]pet[as]pet[end link][roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[as]pet dismiss[end link][roman type], or just [bold type][link]dismiss[as]dismiss[end link][roman type])";
					increase score by 10;
					now Mournful Dog is resolved;
				else:
					say "     The dog accepts the food from you, but won't let you get close. Maybe you should come back and try again another time.";
			else:
				say "     Hardening your heart to the mournful dog's needs, you close the door and decide to move on.";
				now Mournful Dog is resolved;
	else:
		say "     Your passage through the halls finds you at the room with the dead patient and their pet dog. You pinch your nose and poke in again to check on the dog, finding it still there. It perks up a little as you arrive, but still won't approach. It seems in slightly better condition than when you were here last time, but is still quite malnourished.";
		if food is not owned:
			say "     Having no food to spare, you cannot give any to the dog. Perhaps you should find some and return later.";
		if food is owned:
			say "     The dog, clearly reluctant to leave its master, has not been able to feed itself properly. Do you offer it some food?";
			if the player consents:
				delete food;
				increase dogfoodcount by 3;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let featbonus be 0;
				if "Good Teacher" is listed in feats of player, increase featbonus by 1;
				if "Ringmaster" is listed in feats of player, increase featbonus by 1;
				let dice be a random number from 1 to 20;
				let total be ( dice plus bonus plus dogfoodcount plus featbonus);
				say "You roll 1d20([dice])+[bonus]+[dogfoodcount + featbonus] vs 22 and score [total]: ";
				if total > 21:
					say "     You are able to coax the dog into letting you come close and pet it. It wags its tail as you pat its head. Reaching over, you pull the sheets over his former master's body, then you both leave together.";
					now helper dog is tamed;
					say "(The helper dog is now tamed! You can make it your active pet by typing [bold type]pet helper dog[roman type]. You can see all of the pets that you have tamed with the [bold type]pet[roman type] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type]pet dismiss[roman type], or just [bold type]dismiss[roman type])";
					now lastfuck of helper dog is turns;
					increase score by 10;
					now Mournful Dog is resolved;
				else:
					say "     The dog accepts the food from you, but won't let you get close. Maybe you should come back and try again another time.";
			else:
				say "     Hardening your heart to the mournful dog's needs, you decide you can't afford to spare food for the animal and move on.";
				now Mournful Dog is resolved;

hobo-water-gift is a truth state that varies. hobo-water-gift is usually false.
hobo-food-gift is a truth state that varies. hobo-food-gift is usually false.
hobo-water-reminder is a number that varies. hobo-water-reminder is usually 255.
hobo-food-reminder is a number that varies. hobo-food-reminder is usually 255.
hobo-journal is a number that varies. hobo-journal is usually 255.
hobo-libidosupp is a truth state that varies. hobo-libidosupp is usually false.
hobo-medical is a number that varies. hobo-medical is usually 255.
hobo-medical-gift is a number that varies.
hobo-grmilk is a truth state that varies. hobo-grmilk is usually false.
hobo-grmilkhelp is a number that varies. hobo-grmilkhelp is usually -50000.

to say hoboreset:
	now lastfuck of helper dog is turns;

an everyturn rule:
	if companion of player is helper dog and skipturnblocker is 0:
		if lastfuck of helper dog - turns >= 4:
			if thirst of player > 50 and carried of water bottle is 0 and carried of soda is 0 and hobo-water-gift is false:
				say "     Just as you're thinking once again that your mouth and throat are terribly dry, Hobo pads up to you and drops something at your feet. Looking down, you see that it's a [bold type]bottle of water[roman type], clean and unopened. Surprised at the dog's cleverness, you pat Hobo's head as you pick up the drink.";
				increase carried of water bottle by 1;
				now hobo-water-gift is true;
				now hobo-water-reminder is turns;
				now lastfuck of helper dog is turns;
			else if hunger of player > 50 and carried of food is 0 and carried of chips is 0 and hobo-food-gift is false:
				say "     Your stomach grumbles with hunger as you check your pack again for anything worth eating, or at least worth risking eating. Just as you set your pack back down, you here a second soft thump behind you. Turning, you see that Hobo has dropped a plastic bag with some [bold type]food[roman type] in it on the ground. The black and white shepherd sits there giving you an odd look. You pick up the bag and pat his head, surprised at how clever he is.";
				increase carried of food by 1;
				now hobo-food-gift is true;
				now hobo-food-reminder is turns;
				now lastfuck of helper dog is turns;
			else if humanity of player <= 25 and humanity of player > 0 and journal is owned and hobo-journal - turns >= 8:
				if bodyname of player is "human" and facename of player is "human":
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking that he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else if facename of player is "human":
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as your [bodyname of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking that he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else if bodyname of player is "human":
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as your [facename of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking that he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else if bodyname of player is not facename of player:
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as a jumble of [bodyname of player] and [facename of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking that he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				else:
					say "     While taking a break, your mind starts to wander into strange, confused thoughts focused on sex and depravity more than survival as a jumble of [bodyname of player] instincts affect your mind. You hear a soft whine beside you before Hobo buries his nose in your pack. Thinking that he might be sniffing after some food, you go to grab him, but he instead pulls out your journal and drops it in your lap. Looking down at it, you pat the clever dog on the head in thanks for the reminder. You need to take better care of yourself if you want to get through this.";
				now hobo-journal is turns;
				now lastfuck of helper dog is turns;
			else if libido of player > 80 and inheat is true and slutfucked > 5 and hobo-libidosupp is false:
				if libido suppressant is not owned:
					say "     As you continue to struggle to cope with your heat and its urges, you are momentarily distracted from your thoughts of sex by the helper dog dropping something at your feet. Stopping to take a look at it, you find it to be a syringe filled with a cloudy, orange fluid. The label marks it as a [bold type]libido suppressant[roman type]. Hmm... perhaps that will help. What a clever dog.";
					increase carried of libido suppressant by 1;
				else:
					say "     As you continue to struggle to cope with your heat and its urges, you are momentarily distracted from your thoughts of sex when you catch the helper dog rummaging through your pack. You tell him to stop and are about to pull him away when he pulls a syringe of cloudy, orange fluid from your pack, the libido suppressant. Delicately holding it in his mouth, he pads over to you and drops it in your hand. Hmmm... perhaps that will help. What a clever dog.";
				now hobo-libidosupp is true;
				now lastfuck of helper dog is turns;
			else if HP of player < stamina of player and ( medkit is owned or healing booster is owned ) and hobo-medical - turns >= 8:
				say "     Feeling worn out and aching from your injuries, you pause to take a short break. During this, [one of]Hobo pulls your [if medkit is owned]medkit[else]healing booster[end if] from your backpack with his muzzle and offers it to you[or]Hobo barks to get your attention, having dropped your [if medkit is owned]medkit[else]healing booster[end if] at your feet[or]you close your eyes for a moment, only to be started when something is dropped in your lap. There you find your [if medkit is owned]medkit[else]healing booster[end if] and the helper dog at your side[at random]. You pat the caring canine's head.";
				now hobo-medical is turns;
				now lastfuck of helper dog is turns;
			else if medkit is not owned and healing booster is not owned and hobo-medical - turns >= 16 and hobo-medical-gift < 2:
				if hobo-medical-gift is 0:
					say "     You stop and look around when you notice that Hobo has disappeared from your side. You take a quick look around the area for him, only to eventually find him back where you started with a [bold type]medkit[roman type] at his feet. You pet the clever dog on the head as you take the medkit.";
					increase carried of medkit by 1;
				else if hobo-medical-gift is 1:
					say "     Hobo reappears at your side before you even knew he was gone, holding something in his muzzle. Taking the syringe from him, you examine it. It is labeled as a [bold type]healing booster[roman type] and contains a clear, blue fluid. You pat the dog's head, thanking the clever shepherd for it.";
					increase carried of healing booster by 1;
				now hobo-medical is turns;
				increase hobo-medical-gift by 1;
				now lastfuck of helper dog is turns;
			else if thirst of player > 40 and carried of water bottle > 0 and hobo-water-reminder - turns >= 12:
				say "     While taking a short break, you catch Hobo nosing around in your pack. He pulls out a bottle of water and drops it at your feet with a bark. Looking at it, you're reminded that you've gotten quite thirsty. You should really take better care of yourself.";
				now hobo-water-reminder is turns;
				now lastfuck of helper dog is turns;
			else if hunger of player > 40 and carried of water bottle > 0 and hobo-water-reminder - turns >= 12:
				say "     While taking a short break, you catch Hobo nosing around in your pack. He pulls out some food and drops it at your feet with a bark. Looking at it, you're reminded that you've gotten quite hungry. You should really take better care of yourself.";
				now hobo-food-reminder is turns;
				now lastfuck of helper dog is turns;
			else if humanity of player <= 40 and humanity of player > 0 and journal is owned and hobo-journal - turns >= 16:
				say "     After taking a short break, you go to pick up your pack again, finding that your journal's sitting atop it. Hobo, resting beside your pack, looks up at you and barks once.";
				now hobo-journal is turns;
				now lastfuck of helper dog is turns;
			else if HP of doctor matt is 2 and carried of gryphon milk < 2 and hobo-grmilk is false and hobo-grmilkhelp - turns >= 8 and furry is not banned and hermaphrodite is not banned:
				say "     Before you even notice, Hobo returns to your side, carrying something in his mouth. As you take it from him, he gives a meaningful bark. Examining it, you find it to be an old-style glass bottle filled with milk. Surprisingly, it is still cold and smells delicious. You're about to taste a sample of it, when Hobo grabs your sleeve and pulls on your arm, keeping you from doing so. Reminded of the request from Dr. Matt for [bold type]gryphon milk[roman type], you cap the milk and tuck it away, wondering at just how smart this dog really is.";
				now hobo-grmilk is true;
				now lastfuck of helper dog is turns;

Section 4.4 - Helper Dog Ending

when play ends:
	if helper dog is tamed:
		if humanity of player < 10:
			say "     As you give in to your feral instincts, Hobo looks at you mournfully. He then turns and wanders off to find another poor, needy soul to help. Perhaps he will be more successful next time.";
		else:
			say "     After your rescue, you are able to convince the distracted military that Hobo isn't a threat. He certainly seems quite normal to them and is an intelligent and helpful animal. Once you arrive at the safety of the military compound and disembark with the others extracted with you, you spot Hobo in the distance. He looks back at you once and, as if satisfied you are now safe, turns and continues on, perhaps to find another poor soul in need of his help.";


Feral Pets ends here.
