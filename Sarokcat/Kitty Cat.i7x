Kitty Cat by Sarokcat begins here.

"Adds a special event to Flexible Survival with a potential pet."

Section 1-house cat

house cat is a pet. The description of the house cat is "The house cat is covered in soft calico fur, and seems to be happy enough to just follow you along and see what happens, and perhaps take care of any extra milk you might come across.  Its whiskers twitch as it smells the area for anything of interest.". house cat is a part of the player.
The weapon damage of house cat is 5.
The level of house cat is 1.
The Dexterity of house cat is 9.
The summondesc of house cat is "You begin to call out for the little house cat you found earlier, only to stop in embarrassment as you turn around to call out for it only to realize it is already washing its paws nearby watching you, obviously amused at your antics.".
The assault of house cat is "[one of]Your opponent moves back from your attack, only to trip over a strategically placed house cat![or]With a loud yowl, the cat launches themselves at your opponents face. Biting and scratching like mad![or]The house cat eyes your opponent carefully, before turning its back on them and licking its paws in utter disdain.  The shocking display of utter indifference seeming to damage your opponents confidence[or]All of a sudden the combat stops for a moment as you and your opponent are startled at a loud yowl, looking down, you barely have a second to realize that your opponent managed to step on your cat[']s tail, before the cat rips into your opponent in fury.[or]Taking advantage of your foes distraction, the cat picks an opportune moment to attack.[or]Spotting something of interest on the other side of the melee, the house cat quickly darts through the combat, somehow managing to claw your opponent as it does so.[at random]".
the fuckscene of house cat is "With all the sex-crazed people out there, you're looking to fuck an ordinary house cat?  You are one crazy pervert.".

instead of sniffing house cat:
	say "Your little kitty smells like a normal tom cat.";

Lost house cat is a situation.
The sarea of Lost house cat is "Outside".

Instead of resolving Lost house cat:
	say "Heading through the streets of the city you spy a small form dart down an alleyway ahead of you, the shape moving to quickly for you to get anything more then an impression of four legs and fur.  Curious you pause for a minute trying to decide whether you should investigate the shape further.";
	If player consents:
		say "Looking down the alleyway you don't see anything out of the usual at first, though the alley provides plenty of places for something to hide if it was small enough.  Searching carefully down the alley, you are about to give up looking when you notice a small cardboard box trembling slightly as you pass close to it.  Kneeling down and approaching the shaking box cautiously, you slowly lift the edge of the box up and look underneath it, only to be hissed at by a small cat, before it darts out from under the box and behind a nearby dumpster, its feline eyes shining out at you warily from the darkened space. You realize that the small cat seems to have been given a large enough scare recently that it is still terribly frightened, if you want it to calm down, perhaps you should offer it something cats like?";
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
				otherwise:
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
						otherwise if calcnumber is 0:
							now chosenmilk is journal;
				if chosenmilk is not journal:
					say "Pulling out some of the milk you found earlier, you manage to find a small container to pour a little bit of it into.  Setting the container down just outside the cat's narrow hiding place, you sit back and try to look nonthreatening as you wait. Slowly getting used to your presence, the cat eventually slips out of hiding, it's whiskers twitching as it follows its nose over to the milk, eyeing you warily it slowly begins to drink, you can almost hear it purr from where you are sitting as it enjoys the taste of the milk.";
					say "Looking the cat over, you realize that under the dust and grime of the city is actually a rather healthy looking cat, far too well-groomed and taken care of to have been on the street for very long.  Drawing a bit closer as it gets used to your presence, you see that it appears to be a rather fine looking calico if it were only cleaned up a bit.  You wonder for a minute what a fine looking cat like this is doing wandering the city alone, before realizing that with the city the way it is now, that most likely the cat's former owners are now some of the creatures wandering the city streets themselves, quite possibly as cat creatures themselves.";
					say "Having finished the milk, the cat looks up at you as if to see if you have any more moving a bit closer as it does so, cautiously you extend your hand to it, which it thoroughly sniffs with its soft nose before sneezing.  Apparently reaching some decision about you, the cat then walks right up to where you are sitting, and begins rubbing itself against your legs.  You begin stroking its fur as it does, and manage to get the worst of the dirt and grime off of it before it gets tired of being petted and begins to examine your pack for signs of more milk.  Stretching as you sit up, you are surprised when you look around and realize how much time has passed while you took care of the little cat.  Deciding you should be heading back, you realize after a few steps that you seem to have a feline following you, after thinking about it a second, you realize that the little cat probably wouldn[']t last much longer out here on the streets alone, you let the little house cat follow you all the way back to the library.";
					delete chosenmilk;
					now house cat is tamed;
					say "(The house cat is now tamed! You can make it your active pet by typing [bold type][link]pet house cat[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
					now Lost house cat is resolved;
				otherwise:
					say "Looking over your supplies, you decide you'd rather not part with the collected milk in the end.  Wanting to keep your hard-earned supplies, you decide the cat will just have to fend for itself.";
					now Lost house cat is resolved;
			otherwise:
				say "Deciding to keep hold of your hard-earned supplies instead, you leave the cat alone and resolve not to stop by here again.";
				now Lost house cat is resolved;
		otherwise:
			say "Checking through your bag with the cat watching your every move, you don[']t seem to have anything that you think might tempt the cat out, and after a little bit of trying to coax it out anyways, you reluctantly give up and leave the alleyway and the cat alone.  Resolving to come back after finding something the cat might like, perhaps some nice milk from one of the gryphons you have seen flying around town?";
	otherwise:
		say "Deciding that with the city in its current state, chasing small furry things down dark alleyways with no idea what you will find at the end of them, is probably the height of stupidity. You put the encounter out of your mind and continue searching the city for things of use instead.";
	if a random chance of 1 in 2 succeeds, mallrecall;


when play ends:
	if house cat is tamed:
		if humanity of player is less than 10:
			say "The house cat stays with you even after you surrender fully to the infection, its body seeming almost to become slightly more human-like as yours becomes more feral.  While life near you is definitely still dangerous and rough, the little cat almost seems to thrive on the challenge and excitement this presents it.  And even though the little cat teases and mocks you occasionally as cats tend to do, you retain enough of your old fondness for the little creature that you allow it its liberties.";
		otherwise:
			say "Back in the outside world, the cat you found in that strange city seems to enjoy following you around and proves to be a nice companion to have around when he isn[']t wandering the streets at night with other cats.  He seems mostly unaffected by the nanites that infested the city, although you swear he seems much smarter than normal cats, and you even think you have seen him using keys and manipulating objects with his paws on occasion.  At one point he seems to take a strong fancy to one of your nearby neighbors, as she lavishes him with attention every time she gets a chance it is obvious she returns his affections.  About a month or so later after a long night out your little house cat brings home a finely marked lady cat, and under the influence of his stare you take her in to care for as well.  A few days later you find that the neighbor your cat was so fond of seems to have gone missing entirely, though there are signs that a few cats got into her apartment recently.  Your little house cat stares at you innocently as you look at him and his fine new lady suspiciously, realizing the new cat was surprisingly comfortable with you and knew the layout of your place immediately. Still with no proof one way or another, you take care of your little cat and his obviously freshly pregnant lady friend.  Though you find yourself wondering sometimes just what gifts the nanite laced city left your cat, as well as just what all he does wandering about the streets at night that he always seems so smug in the morning... you have seen more cats around lately.  Mostly though, you find yourself wondering what you are going to be doing with his impending kittens, and if they will inherit whatever abilities he has gained...";


Kitty Cat ends here.
