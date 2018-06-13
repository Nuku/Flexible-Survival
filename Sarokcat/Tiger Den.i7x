Version 2 of Tiger Den by Sarokcat begins here.
[Version 2.1 - M/F sex variations]
[Version 2.2 - added washroom - Luneth]

"Adds a tiger den to Flexible Survival with a few anthro tigers, and some small quests vs the tigertaurs..."

Section 1- Tiger den environment

Tiger den is a room. It is fasttravel. Tiger Den is sleepsafe. It is private.
the scent of Tiger den is "The enclosed basement hideout smells strongly of tigers.".
The description of Tiger den is "[tigerden desc]".

to say tigerden desc:
	say "     Sparsely furnished, this large concrete basement garage bears a slight resemblance to your own emergency bunker back at the library, and while it seems to be not quite as well hidden, its size certainly seems to make up for it. Half of the large room is however sectioned off by small movable screens someone has set up, separating the basement into a slightly confusing maze of temporary rooms. In the half of the room that is still open, you can see several tiger-like humans, with alterations ranging from merely tiger furred with some feline features, to those with a full tiger head and only a few human features like hands and walking on two legs, much like the one you rescued. It looks like they have barricaded the defensible entry way with scavenged furniture and items, and with the traps they have placed in the empty maintenance tunnels, it seems like they should be safe from most of the infected as long as they can stay here, although several of the tigers do eye you warily as you move around the den, just in case you decide to do something stupid and cause trouble. Heading east will take you into the tiger's washroom.";

east of Tiger Den is Washroom.
Washroom is a room. The description of Washroom is "[twashroom desc]".
The invent of Washroom is { "dirty water" }.

to say twashroom desc:
	say "     Just a simple employee washroom. More than likely used for when people were on their way home from work, but not wanting to leave while covered in the grime of the day. Inspecting the room you can make out the usual things you would expect of a bathroom. Three toilet stalls line one side of the room, while on the opposite wall a huge mirror takes up most of the upper wall. Underneath the large mirror are a pair of sinks for washing your hands. Straight back from the entrance of the washroom however is a much larger stall with its door slightly ajar, you are able to see inside and notice it is a small shower. Heading west will take you back into the main area of the Tiger Den.";

Section 2- TigerVSTaur

TigerVSTaur is a situation. The level of TigerVSTaur is 9.
The sarea of TigerVSTaur is "Zoo".
when play begins:
	add TigerVSTaur to badspots of hermaphrodite;
	add TigerVSTaur to badspots of furry;
	add TigerVSTaur to badspots of guy;

Instead of Resolving a TigerVSTaur:
	say "     Traveling down the zoo pathways, you hear a strange roaring noise nearby, followed by some violent sounds, after a few seconds the sounds fade somewhat, and you cautiously peek through the greenery to see a strange sight on one of the employee travel paths of the zoo. Two creatures appear to have been fighting here, strangely enough it appears to be a couple of the tigertaurs that have been plaguing the zoo. Closer inspection however, reveals that only one of the combatants happens to be a tigertaur, the other combatant appears to be merely an extremely tiger-like humanoid, with no tiger like lower body at all! The combat is quickly drawing to a close however, as the tigertaurs larger form seems to give it an advantage against the more human-like tiger, and indeed as you watch, the tigerman seems to be growing more and more aroused and less able to resist the tigertaurs advances. You could intervene if you wanted, but it truly doesn't look like the situation is any of your affair. Do you interfere?";
	if player consents:
		say "     You quickly resolve to involve yourself in what is essentially not your conflict, but unable to see it continue without taking some action on your part. You rush from hiding and into the fray, startling both combatants into taking a step back for second startled by your sudden presence, you have only a few seconds however before the conflict will obviously resume, in which to decide just who to aid. The tigertaur seemed to be winning the fight so far, and it might make more sense for you to ally yourself with the obviously superior power, but you could also take the greater risk and try to aid the tiger against the strong tigertaur if you choose. Do you side with the Tigertaur?";
		if player consents:
			say "     Deciding to side with the obviously winning side, you immediately move to cut off the Tiger mans escape, he stares at you hopelessly, as with your help the tigertaur soon manages to pin him down. His attitude soon changes, as the strong tigertaur rubs up against his body, causing him to moan in pleasure as it massages him with its paw-like hands, his body changing into a more suitable one under its lustful attentions. Soon, the tiger-like man has acquired a brand new set of female genitalia, which the taur above the new herm is happy to put to use. You watch, unable to look away and panting in lust at the erotic scene before you, as the tigertaur fucks the tiger underneath her, even while his body changes and shifts, its middle elongating into a tauric form of its own, as large breasts sprout on the newest tigertaurs chest. Soon they both explode into a messy climax, roaring out their pleasure for all to hear, and the first taur pulls herself off the newest tigertaur, it is only as they both turn to look at you that you realize you are still standing there out in the open now next to two very horny tigertaurs. And it looks like they both want to thank you personally for your help in the recent scuffle...";
			challenge "Tigertaur";
			now TigerVSTaur is resolved;
		else:
			say "     Deciding to aid the slightly more human like creature, you quickly engage the tigertaur in combat, as the tiger man falls back and tries to recover!";
			challenge "Tigertaur";
			say "     After a rough fight, you are pushed to your limits, when finally the tiger man you came to aid rushes back into the fight, appearing much recovered and ready to fight again. Unwilling to take on this new opponent after so much fighting already, the tigertaur turns and flees, leaving you exhausted but feeling somewhat relieved at this turn of events. You turn and get a better look at the person you rescued, your eyes scanning up his long lean feline body, taking in his slightly digitigrade legs and powerful stance, as well as his still obviously excited feline cock, before moving up past his strongly muscled chest and lingering for a moment on his clawed but still mostly human hands, finally resting on his tiger-like face, with a short muzzle currently spread in a grin, exposing his sharp carnivore teeth. The powerful appearance of the tigerman makes you nervous for a minute as he stands there, but the minute of nervousness is broken as soon as he begins to speak.";
			say "     'Thanks a ton for your help friend,' the tiger beast says in a pleasant rumbling voice. 'I was in a load of trouble there on my own, and if you hadn't come along when you did, I'm sure I would have been sprouting a new pair of paws and giving in to the infection myself,' he says, before looking around and trotting over and pulling a large pack out of some bushes where it was obviously thrown when the combat started. Hefting the rather large pack easily up on his shoulders, he turns back to you and gestures for you to follow as he starts walking down some of the zoo pathways. Taking the opportunity to introduce yourself [if player is not defaultnamed]as [name of player][end if].";
			WaitLineBreak;
			say "     'The name's Chase,' the tiger man says as he leads you through the mostly unused maze of paths in the animal care area of the zoo, eventually leading you to a small employee entrance into the zoo maintenance tunnels. Glancing around to be sure the coast is clear, he leads you down. 'I worked near here before this all happened, and liked to visit the zoo and the big cats on my lunch break, so when shit started getting weird I ended up heading to the zoo again. Turns out that was even more of a mess than most of the rest of the area, though most of the animals were gone at that point, still was plenty of changed around. Ended up taking shelter in the tiger's cage for while, since well, I figured most of the other creatures wouldn't look there... and hey if I actually encountered one of [']em myself, I would kind of rather end up becoming a tiger than most of the other animals around,' Chase says with a shrug as he leads you through the maze of paths, finally stopping at a large iron door.";
			say "     'Sadly I never did actually encounter a tiger that day, but there must have been enough of whatever is causing the changes left over in their den to change me, I still don't regret it though... this body is so much better than my old one was,' he says, flashing you a grin as he opens the door, revealing a large open area that must have been used to garage the employee buggies at one time. 'And hey!' Chase says as he opens his arms clearly meaning to show off the room. Furniture is placed haphazardly all over, causing the place to look like a major battle took place here at some point. 'At least I'm not alone like this,' the tiger man says with a grin as he points out several other tiger men and tiger women who look up to see what's happening. 'Welcome to the Tiger den,' your guide says somewhat smugly as he leads you further inside.";
			now HP of Chase is 1;
			move player to Tiger den;
			now Tiger den is known;
			now TigerVSTaur is resolved;
			now battleground is "void";  [blocks a post-event fight]
	else:
		say "     Deciding to let the two infected beasts finish their little dominance battle in privacy, you continue along your way without stopping to see what happens.";
		now TigerVSTaur is resolved;

Tiger Den ends here.
