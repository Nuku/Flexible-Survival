Version 1 of HypnoGeeks by Wasp begins here.

"Adds a pair of geeks with a hypno ray to the campus area of Flexible Survival."

[ HG_Stage - general event tracking variable            ]
[  0 = event not started yet                            ]
[  1 = player followed the geeks                        ]
[  2 = player got zonked - Not yet implemented          ]
[  3 = player took control - Not yet implemented        ]

HG_Stage is a number that varies.
HG_Flashback_Turns is a number that varies. HG_Flashback_Turns is usually 0.

Table of GameEventIDs (continued)
Object	Name
HypnoGeeks	"HypnoGeeks"

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
			say "     Crouching low and getting ready for a fight, you creep around the building into a back alley, where you find quite the scene. Two short brown mice stand leering over a muscled hunk of a golden retriever slumped against a dumpster. You stop, hesitating. Even two-on-one, this dog should have knocked these dorks senseless, but the mice don't even look winded. In fact, they look positively pumped, practically bouncing with excitement. The jock, however, looks a bit... spaced out, almost like he was lost in a daydream. You sneak in closer, hiding behind a broken-down car in order to hear their quiet murmurs.";
			say "     'Excelsior, you were right! Look, he's practically drooling!' the mouse on the left pushes up his glasses as he squeaks with giddiness to his companion. The second one proudly hoists a small box-shaped device with a grin, 'I told you it would work! Dad was a genius! Now... what shall we do with our bounty, hmm?' Both of the nerds turn their attention back to their quarry, and with a dark chuckle, the one without the device crouching and shimmying down the retriever's pants and underwear, revealing the canine's sheath. With one hand kneading the dog's balls, he speaks softly enough that you have to crane out from your cover to listen, 'Yeah, that's a good boy... Just focus on how exquisite your masters are making you feel...'";
			WaitLineBreak;
			say "     The retriever nods in response, beginning to pant as his sheath swells up and his red prick slowly rises from its furry pouch. The standing mouse moans at seeing this, his own hand diving into his jeans, 'Oh, Arthur, I knew you had the brains for this operation!' The first mouse, the one you presume is named Arthur, grabs the retriever's bone and begins to excitedly jerk the dog off. Surprisingly, despite a very present appearance of being lost in pleasure, the jock looks anything but present, lazily staring into the distance, drool dripping from his panting muzzle. These brainiac mice must have drugged the poor retriever, which explains why he didn't do more damage to the spindly nerds.";
			say "     With Arthur busy jerking off the muscled hunk, and the other mouse busy jerking off himself, you could rush in there and take them both by surprise, freeing the hunk and allowing him to shake off whatever influence he was under. Or, thinking about it, if you stood back and afterwards followed them back to their hideout, you might be able to obtain whatever it was they were using for your own ends. Not to mention you'd get the benefit of watching these two nerds finish doing their thing.";
			LineBreak;
			say "     [bold type]Do you rescue the golden retriever jock or let the nerdy mice continue and follow them afterwards?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Be a hero and save the dog!";
			say "     ([link]N[as]n[end link]) - Watch the show and follow the mice to their hole.";
			if player consents: [SAVE]
				LineBreak;
				let GroupFightCounter be 0;
				now fightoutcome is 0; [reset]
				while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
					now inasituation is true; [suppresses the standard texts for the creature - be sure to set that up in the creature file too]
					challenge "Nerdy Mouse";
					increase GroupFightCounter by 1;
				if fightoutcome < 20: [player won]
					say "     You stand triumphantly over the two mice, which isn't exactly saying much. For all the effort just pulled, you're not even winded. You step over their bodies and move to the retriever's side. Being careful not to get the jock's drool on you, you give him a few slaps on the face to wake him up. Thankfully, the big lug soon blinks a couple of times and sits up, startled and confused. As soon as he looks at you, the muscular dog's brows draw together and his lips pull back from sharp teeth, so you throw your hands up in a consoling gesture and explain what happened. A couple more blinks and some glances to the unconciuos mice and he nods his head, believing your story, 'That's crazy, bro. Did you get a load of whatever they used to make me all dumb?'";
					say "     Resisting the urge to joke about 'making' him dumb, you quickly scan the scene of the fight. It doesn't take long to spot the device that not-Arthur was holding before your surprise attack. You walk over and pick it up, giving it a quick inspection. The black box features a cracked lens at one end and a small, button keypad on the other. You push a couple of buttons to test it and are rewarded with a loud spark and plume of black smoke in your face. Yeah, you think, as you drop it back to the ground, you aren't getting anything out of that. It must have broken in the fight, but at least the mice won't be able to use it either, once they finally wake up.";
					WaitLineBreak;
					say "     'Killer, dude! Can't believe these dumb nerds have stuff like this,' the canine you saved says as he steps up beside you and looks down at the broken device. He laughs and puts his arm around your shoulders, 'Who knows what they would have done to me had you not showed up. My girl would probably be really mad if they were making me screw other chicks.' He stops and gets a horrified look on his face, prompting you to ask what he's thinking, 'Aw, man, just...what if they wanted me to screw other bros? Do you think 'No Homo' counts when you're bein['] brainwashed or whatever? That is not what Landon does.' The jock shudders before he lets go of you. You make a mental note that this Landon has yet to zip up his pants, nor has his raging erection subsided since your rescue, but you don't say anything, letting him continue, 'Anyways, bro, you helped me out so I'll help you out. I got some supplies I can share with ya to show my thanks.' He hands you a bottle of water and a packet of food which you graciously accept.";
					say "     Landon stands close to you as you pack his reward for his rescuer away, so you don't see when the mice scamper off, but sure enough, as soon as you lift your head, the nerds have vanished. The muscled hunk starts to walk off, but he turns around and gives you a wink, 'Maybe I'll see you around, bro?' You nod, and have to wonder if maybe that little box did more damage than he realizes. Either way, you pack the supplies away and make your way back onto the road where you entered. Out of curiosity, you look back to where those deer were fighting from before, but all you see is a single cum-stained varsity jacket, lying forgotten on the lawn. Must have gotten hot and heavy. You shrug and continue onwards, happy that you could help at least one person out in this crazy mouse-zap-dog world.";
					LineBreak;
					say "[bold type]You gain 1 food![roman type][line break]";
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of food by 1;
					increase carried of water bottle by 1;
					now Resolution of HypnoGeeks is 1; [saved the dog, saved the world]
					now HypnoGeeks is resolved; [saved the dog, saved the world]
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     With one last blow, you crumple backwards next to the very retriever you meant to save. You look up and see his quivering erection, never having shrunk an inch since you interrupted the nerds['] fun. Refusing to become their next plaything, you struggle to push yourself up, but pause when you come face to face with the hunk's quivering erection. You're surprised to find that it hasn't shrunk an inch while you were fighting for his honor. Taking advantage of your distraction, a small foot plants into your battered side and, without any energy to resist, you collapse on your side, staring up at your betters. 'Look at this little twerp!' Their banter isn't that great, you muse, 'Guess we're superior to him in mind [italic type]and[roman type] in body!'";
					say "     That gets a laugh out of his companion, but before you can come up with a witty retort, the other one, Arthur, hushes you. There's a glint of unbridled lust in his eyes as the nerd leans in close, 'Don't worry, you'll be a good boy just like our other pet over here.' Spotting a moment to get in a jab, you spit in the mouse's face, blood and saliva globbing into his short whiskers. Arthur's smile is wiped from his face as he straightens back up and looks to the mouse with the black box, 'Reese, hit him up with the ray. I'm tired of him being able to think.' Nodding to Arthur, the mouse you now know is named Reese points the box at you, allowing you to see the lens rotating as it focuses on your defiant sneer, and with a --";
					LineBreak;
					LineBreak;
					say "     [bold type][italic type]FLASH![roman type]";
					WaitLineBreak;
					say "     ...Your eyes flutter open. That...was odd. You aren't sure what happened, but you're lying, groggily, on some grassy field, a thick string of drool connecting the corner of your mouth to the ground below. Wiping it off on your sleeve, you stand up and that's when you notice the wetness coming out of your rear. Looking around and seeing no immediate witnesses, you reach back and feel around, getting a glob on your finger. Bringing it up, you plan on taking a small whiff, but as soon as the rich, musky smell of dominance hits your nostrils, you can't help but pop it into your mouth, savoring the mousey taste. Then you freeze. What the hell are you doing? Thinking right now is like swimming through a murky jello. Remembering how exposed you are, you grab your pack and do your best to scurry back to safety.";
					now HG_Flashback_Turns is a random number between 5 and 15;
					now Resolution of HypnoGeeks is 2; [player got zonked, yo]
					now HG_Stage is 2; [player got zonked, yo]
				else if fightoutcome is 30: [fled]
					say "     You just cannot deal with this right now, you decide, and after feinting to the side, you make your break from the two mice and escape back down the road where you came from, without looking back. You left the golden retriever jock to his fate with those two mice, but who knows? Maybe the next time you come across a dude in distress, you'll be able to actually help. For now, however, you keep your sanity to fight another day.";
					now HG_Stage is 0; [repeat event]
				now inasituation is false; [back to standard scenes]
			else: [FOLLOW]
				LineBreak;
				say "     Deciding to let this play out for a better deal, you sit back and watch as the mice continue to play with their prize. Unzipping your pants, you get to work taking care of your own[if player is male]dick[else if player is female]vagina[else]crotch[end if]. The one named Arthur has sped up his manhandling of the jock, paying special attention to his balls and his growing knot. The spaced-out retriever's panting becomes more rapid, his thick dog paws curling in rapture as his body shudders with lust and, of course, whatever is coursing through his system. 'Yeah, that's it,' Arthur leans in to murmur into his victim's ear, forcing you to perk your ears to catch the words, 'Good boys can't help but feel this way around their mousey masters, isn't that right?'";
				say "     You're distracted by a moan, which turns out to be the other mouse, hand quickly pumping in his own pants as he watches the scene. Arthur's low droning continues in the background as you focus on the one hanging back closer to you. Just before you turn your attention back to watching as the dog unwittingly becomes these mice's slut, you stop as you notice the masturbating geek pull up the box he's been holding, pointing it at the jock. As he pushes a button, a flash erupts from the other end. Pausing your own self-help, you quickly look to Arthur and the dog, trying to see what, exactly the device did. You're not sure if it was the flash or simply Arthur knowing his way around a dog's knot, but all you see is the retriever finally bursting as thick ropes of canine cum pulse from his lengthy prick.";
				WaitLineBreak;
				say "     Now that the show is over, you quickly finish up your business, [if player is male]splattering your own cum onto the ground in front of you[else if player is female]splattering your own juices onto the ground in front of you[else]bringing yourself to your own orgasm[end if], biting your finger to avoid making any sound. Spent, you take a moment to recover, shaking your head as the adrenaline dies down. A giggle breaks you from your thoughts, and you look up in time to watch Arthur laugh at his partner, 'You just freaking creamed your own pants, Reese! I can't believe it!' The mouse closest to you, who you now know is named Reese, blushes a deep shade of red underneath his short fur.";
				say "     'Wha- We're...out in the middle of the alley. I didn't want to be caught with my pants down. Literally.' Arthur chuckled, a smug grin on his muzzle, 'Look, man, you could have [italic type]literally[roman type] gone on the ground just like this sack of meat over here, but you went in your own pants. I think you just wanted to smell like yourself.' Reese shook his head, stammering as he adjusted his glasses, 'J-Just get him up so we can take him back to the dorms, okay?' Getting ready to move, you watch as the two mice spend some time just trying to figure out how to pick up the heavy jock in the first place, before one of them finally decides to get the bright idea of stealing a wheelbarrow from the campus gardening club and rolling the still-drooling mutt into it. You shake your head in disbelief. Weren't these things supposed to be smart or something? Nerds.";
				WaitLineBreak;
				say "     Eventually, the two mice are ready to move on, and as you follow them out of the alley and toward their destination, you listen to the verbal jabs they throw at each other. They practically sound like a married couple, so they've either been with each other for a while or just really hit it off. Either way, once you arrive behind what you think is the building for the male dorms, you're forced to hang back as they push the hunk through the back door. You spend some time thinking of how, exactly, you're going to find out which room they went to, when fortune strikes, and you see none other than Arthur himself opening the curtains of one of the windows on the first floor. Quickly counting along the back of the building, you think you've figured out which dorm's theirs, or at the very least, which one they're keeping the retriever in. Resolving to come back once you've prepared yourself, you head back out into the campus proper. Those mice won't know what hit them.";
				now HG_Stage is 1; [player followed them]
				now Resolution of HypnoGeeks is 3; [player followed them and knows where they live]
				now HypnoGeeks is resolved; [Temporary end]
		else: [LEAVE]
			LineBreak;
			say "     Sure enough, a couple of seconds later and the only noises you hear are the wet slaps of mating deer across the street behind you. Shaking your head, you turn around just in time to watch as the buck that ended up on the bottom of the wrestling match loses his antlers and gains new breasts. Looks like that particular doe will be joining the women's division. You continue onwards, thinking about how much has changed since all this went down.";
			now HG_Stage is 0;
	[
	else if HG_Stage is 1: [second time]
		say "     Event Text";
		now HG_Stage is 2;
	else if HG_Stage is 1: [third time]
		say "     Event Text";
		now HG_Stage is 2;
		now HypnoGeeks is resolved;  [it won't happen again]
	]

HypnoGeeks ends here.
