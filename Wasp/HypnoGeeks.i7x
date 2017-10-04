Version 1 of HypnoGeeks by Wasp begins here.

"Adds a pair of geeks with a hypno ray to the campus area of Flexible Survival."

[ HG_Stage - general event tracking variable            ]
[  0 = event not started yet                            ]
[  1 = player followed the geeks                        ]
[  2 = player got zonked                                ]
[  3 = ?                                                ]


HG_Stage is a number that varies.

HypnoGeeks is a situation.
The level of HypnoGeeks is 5. [minimum level to find the event]
The sarea of HypnoGeeks is "Campus".

when play begins: [flags for blocking this event]
	add HypnoGeeks to badspots of guy;
	add HypnoGeeks to badspots of furry;
	
Instead of resolving a HypnoGeeks:
	if HG_Stage is 0: [HG_INTRO]
		say "     Making your way through the campus grounds isn't as difficult as the rest of the city, but you make sure to keep your guard up. A couple of half-dressed stags stumble out of a nearby building, antlers locking together as they wrestle for dominance and move onto the front lawn. A situation that isn't exactly strange these days, but still something you'd rather avoid. Crossing the street, you plan to keep moving forward, but you pause when you hear a loud yelp and a short scuffle. Something's going on around the back side of the building, and unless the collectively sixteen points of buck back there lost interest in each other long enough to hear what's going on, you're the only one that might be able to help.";
		LineBreak;
		say "     [bold type]Someone could be in serious danger. Do you want to investigate?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take a look and see if there's anything you can do to help.";
		say "     ([link]N[as]n[end link]) - Stay on the safe side. They're probably too far gone already.";
		if player consents: [INVESTIGATE]
			LineBreak;
			say "     Crouching low and getting ready for a fight, you creep around the building into a back alley, where you find quite the scene. Two short brown mice stand leering over a muscled hunk of a golden retriever slumped against a dumpster. You stop, hesitating. Even two-on-one, this dog should have knocked these dorks senseless, but the mice don't even look winded. In fact, they look postively pumped, practically bouncing with excitement. The jock, however, looks a bit... spaced out, almost like he was lost in a daydream. You sneak in closer, hiding behind a broken-down car in order to hear their quiet murmurs.";
			say "     'Excelsior, you were right! Look, he's practically drooling!' the mouse on the left pushes up his glasses as he squeaks with giddiness to his companion. The second one proudly hoists a small box-shaped device with a grin, 'I told you it would work! Dad was a genius! Now... what shall we do with our bounty, hmm?' Both of the nerds turn their attention back to their quarry, and with a dark chuckle, the one without the device crouching and shimmying down the retriever's pants and underwear, revealing the canine's sheath. With one hand kneading the dog's balls, he speaks softly enough that you have to crane out from your cover to listen, 'Yeah, that's a good boy... Just focus on how exquisite your masters are making you feel...'";
			WaitLineBreak;
			say "     The retriever nods in response, beginning to pant as his sheath swells up and his red prick slowly rises from its furry pouch. The standing mouse moans at seeing this, his own hand diving into his jeans, 'Oh, Arthur, I knew you had the brains for this operation!' The first mouse, the one you presume is named Arthur, grabs the retreiver's bone and begins to excitedly jerk the dog off. Surprisingly, despite a very present appearance of being lost in pleasure, the jock looks anything but present, lazily staring into the distance, drool dripping from his panting muzzle. These braniac mice must have drugged the poor retriever, which explains why he didn't do more damage to the spindly nerds.";
			say "     With Arthur busy jerking off the muscled hunk, and the other mouse busy jerking off himself, you could rush in there and take them both by surprise, freeing the hunk and allowing him to shake off whatever influence he was under. Or, thinking about it, if you stood back and afterwards followed them back to their hideout, you might be able to obtain whatever it was they were using for your own ends. Not to mention you'd get the benefit of watching these two nerds finish doing their thing.";
			LineBreak;
			say "     [bold type]Do you rescue the golden retriever jock or let the nerdy mice continue and follow them afterwards?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Be a hero and save the dog!";
			say "     ([link]N[as]n[end link]) - Watch the show and follow the mice to their hole.";
			if player consents: [SAVE]
				LineBreak;
				let GroupFightCounter be 0;
				while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
					now inasituation is true; [suppresses the standard texts for the creature - be sure to set that up in the creature file too]
					challenge "Nerdy Mouse";
					increase GroupFightCounter by 1;
				if fightoutcome < 20: [player won]
					say "     <Player won against all of the group. Option for sex scene here>";
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     <Player lost against somone and the group piles onto him. Sex scene here>";
				else if fightoutcome is 30: [fled]
					say "     <Player ran away at some point. Aftermath scene here>";
				now inasituation is false; [back to standard scenes]
			else: [FOLLOW]
				LineBreak;
				say "     ";
			now HG_Stage is 1;
		else: [LEAVE]
			LineBreak;
			say "     Sure enough, a couple of seconds later and the only noises you hear are the wet slaps of mating deer across the street behind you. Shaking your head, you turn around just in time to watch as the buck that ended up on the bottom of the wrestling match loses his antlers and gains new breasts. Looks like that particular doe will be joining the women's division. You continue onwards, thinking about how much has changed since all this went down.";
			now HG_Stage is 0;
	else if HG_Stage is 1: [second time]
		say "     Event Text";
		now HG_Stage is 2;
	else if HG_Stage is 1: [third time]
		say "     Event Text";
		now HG_Stage is 2;
		now HypnoGeeks is resolved;  [it won't happen again]
		
HypnoGeeks ends here.