Version 1 of Feral Pets by Luneth begins here.

Section 1 - Cute Crab NPC/Pet
[Originally created by Nuku Valente]

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
		say "     Letting your cute crab Snips know it's time to head out head out. Snips quickly climbs onto your foot, ready for adventure!";
	else: [regular summoning]
		say "     Bursting from the ground near you, your cute crab appears. Snips clacks its pincers together in an excited fashion like a castanet player.";

to say DismissSnips:
	move Snips to Computer Lab;
	if player is not in Computer Lab: [regular dismiss]
		say "     Looking at you for a long moment, it finally relents and burrows under the ground.";
	else: [dismissing him in the Computer Lab]
		say "     Snips quickly scuttles back to the home it has made out of one of the cubicles, cleary more than happy to be able to rest.";

Snips is a man.
The description of Snips is "[Snipsdesc]".

instead of sniffing the Cute Crab:
	say "[SnipsScent]";

instead of sniffing Snips:
	say "[SnipsScent]"

to say SnipsScent:
	say "     The crab's smell is faintly reminiscent of the beach.";

to say Snipsdesc:
	say "     It's so cute! It has huge eyes that seem to stare into your soul and big pincers that go clackity clack.";

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
	say "[link]100 - Nevermind[as]100[end link][line break]";
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
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You back away from the cute crab, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SnipsTalk1:
	if number of bunkered people + number of booked people < 3:
		say "     You decide to take a short rest and just watch what your little crab does with his free time. His cubicle is actually pretty sparse, for the most part he just skuttles around. Once in awhile Snips will pick something up in his claws, but after losing interest he is quick to discard it and move on to the next thing he can get his pincers on. Finally exhausted, your small crab ends up going to back of the cubicle, more than likely feeling safer with something covering him overhead. [if Char-H of Elijah is "2"]Snips cuddles close to the toy crab Elijah presented him.[else]Settling down, your not exactly sure if he is sleeping or not, but he stops moving completely so the show must be over. Getting back to your feet, you ready yourself to head back out to the task at hand.[end if]";
	else if number of bunkered people + number of booked people > 3:
		say "     You decide to take a short rest and just watch what your little crab does with his free time. Someone must have recently fetched some dirt and sand from somewhere, seeing as the ground of Snips cubicle is completely covered, making it his own little personal beach. You assume the same person must have also grabbed the medium sized skillet filled with water. The crab seems to love the upgrade, that is if the bubble blowing is anything to go by. Snips at the moment is busying himself with placing anything he can find around a small burrow he has made in the soft dirt.";
		if Char-H of Elijah is "2":
			say "     It takes you a moment to notice, but your little crustacean has tucked the toy crab Elijah presented him inside. Adorably, he also makes sure to bring anything shiny he can get his claws on to the entrance of his home. More than likely Elijah was right and the crab just wanted companionship. Settling down, at first Snips gets into a defensive position in front of his home, however once he realizes just which giant has come to visit him he quickly scuttles to your side. After receiving some soothing strokes across his shell Snips is ready for bed apparently, slowly making his way back to his little tunnel. The cute little crab then cuddles up close to his new toy friend and just sites there, your not exactly sure if he is sleeping or not, but he stops moving completely so the show must be over. Getting back to your feet, you ready yourself to head back out to the task at hand.";
		else:
			say "     While your little crab does seem happier in his new environment, you can't help but wonder if he ever gets lonely. Settling down, at first Snips doesn't even seem to notice that you have arrived, however once he realizes just which giant has come to visit him he quickly scuttles to your side. After receiving some soothing strokes across his shell Snips is ready for bed apparently, slowly making his way back to his little tunnel. Settling down, your not exactly sure if he is sleeping or not, but he stops moving completely so the show must be over. Getting back to your feet, you ready yourself to head back out to the task at hand.";

to say SnipsTalk2:
	if number of bunkered people + number of booked people < 3:
		say "     You settle yourself down on the floor next to Snips cubicle and gently thump the soft dirt until your little crab comes running to see what is going on. He quickly makes a grab for one of your fingers, holding it firmly in one of his pincers. You can tell that the crustacean is being playful, seeing as his grip isn't causing the pain that you know it's capable of delivering. Eventually he loosens his grip, instead deciding it would be more fun to play in the dust. You slowly draw shapes in said dust lightly with your finger, glancing over at the cute little crab you see him mimicking your actions with his pincer. While the shapes he draws aren't exactly what you would call shapes Snips seems to be quite proud of them. Leaning down, you begin to draw a new shape, one you think is appropriate for him.";
		say "     This time you draw the shape of the constellation of cancer the great crab. Your little friend seems ecstatic, dancing around and blowing bubbles, although your not sure if that's because he recognizes a fellow crustacean or simply because you are spending time with him. Either way it brings a smile to your lips. Once he begins to slow down, you gently pick him up and place him at the back of his cubicle where he sleeps. You say goodnight before getting back to your feet, you ready yourself to head back out to the task at hand.";
		increase humanity of player by 10;
	else if number of bunkered people + number of booked people > 3:
		say "     You settle yourself down on the floor next to Snips cubicle and gently thump the soft dirt until your little crab comes running to see what is going on. He quickly makes a grab for one of your fingers, holding it firmly in one of his pincers. You can tell that the crustacean is being playful, seeing as his grip isn't causing the pain that you know it's capable of delivering.";
		if Char-H of Elijah is "2":
			say "     Eventually he loosens his grip, instead scuttling back to his home and grabbing his toy crab friend, reminding you of a toddler grabbing its favorite stuffed animal. As the two of them continue to play around in the dirt, you notice the remains of past meal in the dirt, mostly some sort of plant life. Snatching up a piece, you place it closer to Snips, wondering if he is hungry or not. Afterwards he doesn't seem particularly interested in it, that is until you look away. He has crept closer to the food you placed on the dirt and brought his little friend with him. It end up becoming a game, with you looking away and glancing back quickly to see if you can catch him, every time you act like you haven't noticed. When Snips is right on top of the food you look away for a few seconds and are able to hear his munching. Quickly turning your attention back to him you see the little bit of food is now missing.";
			say "     Raising an eyebrow at your cute little crab, he quickly point one claw at the toy Elijah gave him. You can't help but burst out laughing at once again being reminded of a child, you can almost hear his internal voice say ‘It was them, not me!’ Coming down from your laughing fit, Snips blows a few bubbles at you before grabbing his toy and scuttling home. You watch as he cuddles up close to the friend he just accused of eating the food, making you smile once again. You say goodnight before getting back to your feet, you ready yourself to head back out to the task at hand.";
			increase humanity of player by 10;
		else:
			say "     Eventually he loosens his grip, instead deciding it would be more fun to play in the sand. Picking up a small pebble in the dirt, you hold it out to Snips who eagerly grabs it from your fingers. The begins to do a strange sort of scuttling dance with the pebble held high like a trophy. You can't help but laugh at bit at the cute little guys antics, your laughing though gives the crustacean pause. Looking up at you with those huge eyes, it almost feels like he is looking deep inside your soul, well it would if not even a second later he scuttles quickly back to his home and gently places the pebble you gave him right next to opening. Deciding he has had enough of playtime, Snips turn to face you before raising up a single claw almost to say goodbye. He makes his way back into his little tunnel, obviously tuckered out. You say goodnight before getting back to your feet, you ready yourself to head back out to the task at hand.";
			increase humanity of player by 10;

Lost Crab is a situation.
The sarea of Lost Crab is "Beach".

Instead of resolving lost crab:
	say "     While you are exploring, you happen across a crab. The crab has unusually large and expressive eyes. It clacks its great pincers at you, but you don't get much feeling of malice from it.";
	if food is owned:
		say "     The crab scuttles towards you and reaches out to poke lightly at where the food is stored. Do you want to give it some?";
		if the player consents:
			delete food;
			say "     The crab munches quite happily at the food, blowing a few bubbles inbetween bites to show its appreciation. Laying down next to the crab, you can't help but laugh a little bit at how happy it looks just nibbling away at its food. Without a second thought you reach out and stroke the smooth shell, causing the crab to stop eating and just stare at you with its abnormally huge eyes. From somewhere further down the beach you make can hear a loud roar echo out. The little crab doesn't hesitate to scuttle closer to you seeking shelter. Wrapping an arm around the frightened crustacean, you continue to play protector while it finishes its meal. Once it is finished eating you get up to carry on with your exploration of the area, glancing back down at the crab to say goodbye you are met with those huge eyes that almost look back at you imploringly.";
			say "     The crab raises its pincers in an act that on a human would almost look like being asked to be picked up. A little leary of the sharp claws you lean down scooping up the crab, thankfully you interpreted the action correctly as the crab seems content to now come with you. Deciding that if this little guy… errr girl… whatever it is, is going to join you it needs a name. Thinking to yourself a bit, your eyes immediately are drawn to the sizable claws its sporting. A name pops into your head, Snips! The name goes with the claws while at the same time is perfect for a cute little crab. Informing your companion of their new name all that you receive in response is a few bubbles blown at you. That decided, you go back to the exploration of the beach.";
			now cute crab is tamed;
			say "[bold type](The cute crab is now tamed! You can make it your active pet by typing [link]pet cute crab[as]pet cute crab[end link]. You can see all the pets you have tamed with the [link]pet[as]pet[end link] command. Pets will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [link]pet dismiss[as]pet dismiss[end link], or just [link]dismiss[as]dismiss[end link])[roman type]";
		else:
			say "     The crab scuttles away sadly.";
		now lost crab is resolved;
	else:
		say "     The crab peers at you for several quiet moments before scuttling away, mildly disappointed for some reason.";

Feral Pets ends here.
