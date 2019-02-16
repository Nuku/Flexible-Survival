Version 1 of Darius by Wahn begins here.
[Version 1 - New Character]

[ DariusLostItems                                               ]
[   0: not found anything                                       ]
[   1: Tape 1 found                                             ]
[   2: Tape 2 found                                             ]
[   3: Tapes 1+2 found                                          ]

[ Lust of Darius - sex with men tracking                        ]
[   0: starting state                                           ]
[   1: grinded on an ass and came                               ]
[   2: fucked player ass                                        ]

[ libido of Darius - aching ass after sex                       ]
[   0: not fucked                                               ]
[   1: recently de-virginized anally                            ]
[   2: recently fucked in the ass                               ]

[ Stamina of Darius - drug status                               ]
[   0: normal                                                   ]
[   1: player spiked one beer                                   ]
[   2: player spiked all beers                                  ]
[   3: unconscious and horny (once)                             ]
[   4: unconscious and horny (every night)                      ]


DariusLostItems is a number that varies.

Section 1 - Events

after going to Darius's Crib while (HP of Darius is 0 and Darius is in Darius's Crib):
	try looking;
	project the Figure of Darius_face_icon;
	say "     Entering the apartment, you are greeted by an anthro dalmatian, who grins broadly as he sees you. 'Hey there, I'm Darius.' Some barks coming from the apartment next door distract him after that, and the big male turns his head to shout towards the hole in the wall, 'Keep it down, will ya? Got a customer here!' Chuckling about the noise instantly being reduced, he directs his attention back to you, 'So anyways, want a fix? I got some primo stuff laid out over here.'";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

after going west from Boundary Street East while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	try looking;
	project the Figure of Darius_face_icon;
	say "     Arriving at the street corner, you see an anthro dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Yo homie! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the tough guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

after going east from Boundary Street West while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	try looking;
	project the Figure of Darius_face_icon;
	say "     Arriving at the street corner, you see an anthro dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Yo homie! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the tough guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

instead of navigating Entrance to the Red Light District while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	say "[NavCheck Entrance to the Red Light District]";
	if NavCheckReturn is false, stop the action;
	move player to Entrance to the Red Light District;
	project the Figure of Darius_face_icon;
	say "     Arriving at the street corner, you see an anthro dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Yo homie! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the tough guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

after going to Darius's Crib while (Darius is not in Darius's Crib):
	try looking;
	say "     Entering the apartment, you find it empty, with no trace of its occupant. There are sounds from numerous canines coming through the hole in the wall, but for now you're all alone in this room.";
	LineBreak;
	say "     [bold type]Do you use the opportunity to check around?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Search the living area.";
	say "     [link](2)[as]2[end link] - Check out the kitchen.";
	say "     [link](3)[as]3[end link] - Nah, better not.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to search the living area, [link]2[end link] to check out the kitchen or [link]3[end link] to do nothing.";
	if calcnumber is 1:
		LineBreak;
		say "     Searching through the fairly messy room, you dig through lots of items just thrown on the ground. Sadly, it's mostly empty food containers, clothing and trash. ";
		let randomnumber be a random number from 1 to 5;
		if randomnumber is 1 and DariusLostItems is 1: [already found tape #1]
			increase randomnumber by 1;
		else if randomnumber is 2 and DariusLostItems is 2: [already found tape #1]
			decrease randomnumber by 1;
		else if randomnumber < 3 and DariusLostItems is 3:
			increase randomnumber by a random number from 2 to 3;
		if randomnumber is:
			-- 1:
				say "You're just about to give up on the search when you do spot a video tape underneath the couch. Reaching into the dusty crack between it and the floor, you have to strain yourself and stretch your fingers to reach it. The tape looks like a home video. From where you found it, and with the power off anyways, you don't think it'll be missed anytime soon, so you pocket the little square of plastic.";
				add "Darius's Home Vid 1" to tapes of player;
				if DariusLostItems is 0:
					now DariusLostItems is 1;
				else if DariusLostItems is 2:
					now DariusLostItems is 3;
			-- 2:
				say "You're just about to give up on the search when you remember to check the cracks between the cushions of the couch. Digging around, your fingers encounter numerous pistachio shells, then eventually close around a video tape that you draw out. It looks like a private home video. From where you found it, and with the power off anyways, you don't think it'll be missed anytime soon, so you pocket the little square of plastic.";
				add "Darius's Home Vid 2" to tapes of player;
				if DariusLostItems is 0:
					now DariusLostItems is 2;
				else if DariusLostItems is 1:
					now DariusLostItems is 3;
			-- 3:
				say "Under the couch cushions, you find an old porn mag. Looks like it was a favorite issue, given that its pages are stuck together with dried cum.";
			-- 4:
				say "On a shelf in the corner, you see a little row of pictures. One shows a muscular black man with a gold chain around his neck holding a dalmatian with a red collar in his arms, then there's the same guy with three others, beers in hand, and finally a younger version of the black dude, flanked by an elderly man with a hand on his shoulder. Father and son, you'd guess by their similar looks.";
			-- 5:
				say "You find an old pizza box and hurry to close it up again after seeing that something is growing on the inside.";
			-- 6:
				say "A few worn-out boots are standing near the entrance, clearly unused for a while.";
			-- 7:
				say "You find a few pairs of discarded pants that seem to have been failed experiments in cutting a proper and comfortable hole to stick a tail through.";
	else if calcnumber is 2:
		LineBreak;
		say "     Wandering into the kitchen, you open up the cupboards and check them out, finding mostly pots and pans. In a corner behind the kitchen counter, there is a cooler filled with fresh snow, in which a dozen bottles of beer are chilling. Taking one of them out, you see that it's some kind of craft beer with a flip-top. Sadly, even though there are so many bottles, you're quite sure that its absence would be noticed, so you return the beer to where it came from.";
		if carried of Bliss Tablet > 11:
			LineBreak;
			say "     [bold type]You got enough Bliss to drop some in each and every bottle. Do you want to do so?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Yeah, let's do all of them.";
			say "     [link](2)[as]2[end link] - No, one is enough.";
			say "     [link](3)[as]3[end link] - No, you don't want to drug any of the beer.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to spike everything, [link]2[end link] to spike one beer or [link]3[end link] to do nothing.";
			if calcnumber is 1:
				LineBreak;
				say "     Methodically taking the bottles out one by one and slowly pulling the flip-top to the side, you drop a Bliss tablet into each of them. After only a little while, you've spiked the whole stash and returned them into their icy surroundings. Replacing the lid of the cooler, you wander back to the middle of the room.";
				now Stamina of Darius is 2;
				decrease carried of Bliss Tablet by 12;
			else if calcnumber is 2:
				LineBreak;
				say "     Snatching up a bottle again, you slowly and carefully pull the flip-top to the side, then drop your Bliss tablet into the opening before closing the beer back up. Settling the bottle back between its siblings, you replace the lid of the cooler, then wander back to the middle of the room.";
				now Stamina of Darius is 1;
				decrease carried of Bliss Tablet by 1;
			else:
				LineBreak;
				say "     With a shrug, you put the lid back on the cooler and wander back to the middle of the room.";
		else if carried of Bliss Tablet > 0:
			say "     [bold type]Do you want to dose a bottle with Bliss?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yeah, that could be fun.";
			say "     ([link]N[as]n[end link]) - No, you don't want to drug any of the beer.";
			if player consents:
				LineBreak;
				say "     Snatching up a bottle again, you slowly and carefully pull the flip-top to the side, then drop your Bliss tablet into the opening before closing the beer back up. Settling the bottle back between its siblings, you replace the lid of the cooler, then wander back to the middle of the room.";
				now Stamina of Darius is 1;
				decrease carried of Bliss Tablet by 1;
			else:
				LineBreak;
				say "     With a shrug, you put the lid back on the cooler and wander back to the middle of the room.";
		else: [no bliss owned]
			say "As you put the lid back on the cooler, an idle thought comes to your mind and you begin wondering if you could spike the beers with something fun instead of taking them. With that in mind, you wander back to the middle of the room.";
	else:
		LineBreak;
		say "     You keep your hands to yourself, not touching anything in your surroundings.";

Table of GameEventIDs (continued)
Object	Name
JoshiroEncounterTale 1	"JoshiroEncounterTale 1"

JoshiroEncounterTale 1 is a situation.
The sarea of JoshiroEncounterTale 1 is "Nowhere".

after going to Darius's Crib while (JoshiroEncounterTale 1 is active and JoshiroEncounterTale 1 is not resolved and a random chance of 1 in 3 succeeds and HP of Darius > 0 and Darius is in Darius's Crib):
	project the Figure of Tyke_clothed_icon;
	say "     As you enter the short hallway to Darius's dingy apartment, you hear voices from ahead. Peeking into the room, it becomes clear that the dalmatian has another visitor right now. A towering doberman is standing next to Darius, sporting a ripped physique with a V shaped torso. He is dressed in little but a bandanna around his neck and a flimsy pair of shorts with a broad belt at the top. The outline of his weighty cock is very clearly visible through the fabric. Both canines are holding bottles of beer in their hands. As Darius's visitor takes a swallow from his, barks from what sounds like puppies come from the apartment next door, through the hole that has been knocked into the connecting wall. 'Man, you're one lucky dude Dar. Just grabbing yourself a bitch right from the street and having all the tail you need at home, all the time.' The spotted canine laughs and grins at his buddy, 'What can I say Tyke, you just gotta know how to pick [']em. Hannah is a great bitch, even if she started out as a dude. But not for long once she felt my dick of course.'";
	say "     The doberman's eyes go wide and he makes a choking sound as his beer goes the wrong way, then coughs and gapes at Darius. 'You lucky dog! So she just switched to a babe right away? I'm still not used to how things work these days. Or maybe they don't do so for everyone. Bitches haven't been all that plentiful for myself I have to say.' Tyke is silent for a few seconds, then adds, 'For example, when things were just starting out with all this shit, an Asian dude crossed my path one morning. I thought I'd just threaten him a little bit and get his money, try out my new bod, but nope, even though he was just a human, he was ready to throw down and we tussled. Had crazy moves and all that shit, that guy. And the weirdest part was - he kept rubbing my junk as he passed me. Couldn't help but get hard from the friction. Then he kicked my paws out from under me and before I know it, the freaky faggot was ramming his ass down my dick!'";
	WaitLineBreak;
	say "     Tyke grumbles as Darius lets out a full-throated laugh and murmurs, 'Yeah yeah, you're lucky we're friends. What am I supposed to do if most people I run into are fucking flamers who just want to ride my cock? I'm not gay or anything, but some of them admittedly do have some sweet holes on them.' A visible twitch goes through the cock barely contained by Tyke's shorts, prompting Darius to comment, 'Seriously? Chubbing up for the love of your life?' The dobie gives him a punch in the shoulder and replies, 'Oh please! Just saying that the dude had a tight ass that really milked my cock. And a huge ego too - 'Joshiro Arashi wins again!' he shouted, raising his arms and posing as if people were taking photos of him bouncing on my cock and being blasted full of nut-milk. Bastard splattered me with his come too, then pulled off my dick and just strutted away.'";
	say "     Darius looks at the other canine thoughtfully and smirks. 'Wait, he just stayed human? Man, I think you're shooting blanks or something. Hannah turned right before my eyes in just a few moments. And you know that she's a fully working bitch. I've got enough puppies to prove it.' The large doberman replies, 'Nope, that's not it. I left my share of dobie converts out there over the last little while.' 'Yeah, all dudes who sucked you off I bet,' Darius bursts out in amusement. 'Okay, fuck this. I'll go find myself a bitch right now! Can't call me a fag if I drag a preggers puppy machine here, can you?!' Tyke scoffs and grumbles at his buddy, then stomps out of the apartment, passing you without a glance and throwing the front door shut behind him as he leaves.";
	now JoshiroEncounterTale 1 is resolved;

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Darius	"Darius"

Darius is a man.
Darius is in Darius's Crib.
[physical details as of game start]
ScaleValue of Darius is 3. [human sized]
Cocks of Darius is 1. [1 cock]
Cock Length of Darius is 11. [11 incher]
Cock Width of Darius is 4. [ball size]
Testes of Darius is 2. [2 balls]
Cunts of Darius is 0. [no pussy]
Cunt Length of Darius is 0. [no pussy]
Cunt Width of Darius is 0. [no pussy]
Breasts of Darius is 2. [2 nipples]
Breast Size of Darius is 0. [flat chest]
[Basic Interaction states as of game start]
PlayerMet of Darius is false.
PlayerRomanced of Darius is false.
PlayerFriended of Darius is false.
PlayerControlled of Darius is false.
PlayerFucked of Darius is false.
OralVirgin of Darius is false.
Virgin of Darius is true. [doesn't have a pussy, so he'd be virgin if he got one]
AnalVirgin of Darius is true.
PenileVirgin of Darius is false.
SexuallyExperienced of Darius is true.



The description of Darius is "[DariusDesc]".
The conversation of Darius is { "<This is nothing but a placeholder!>" }.
The scent of Darius is "[DariusScent]";

to say DariusScent:
	if Stamina of Darius < 3: [non-drugged]
		say "     Leaning forward to get a sniff of Darius, you find yourself grabbed by the back of your head and pulled in against his chest, burying your nose between the bulging pecs on the tall canine. He chuckles as you can't help but sniff his masculine aroma, with the slight scent of his sweat made oh so very tempting by pheromones that tell you that this is a top dog.";
	else:
		say "     Leaning forward to get a sniff of Darius, you move your nose close to his slowly rising and falling chest. Being able to take him in freely in his passed-out state, you sniff his masculine aroma, with the slight scent of his sweat made oh so very tempting by pheromones that tell you that this is a top dog.";

to say DariusDesc:
	project the Figure of Darius_face_icon;
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Darius] <- DEBUG[line break]";
	if Stamina of Darius < 3: [non-drugged]
		say "     Darius is a proud specimen of an anthro canine, tall and well-built with broad shoulders and a muscled torso. The man clearly knows this quite well, as he happily shows off by keeping his chest bare, a baggy pair of jeans the only article of fabric on his body. Aware of the fact that you're checking him out, he even flexes a little, making the firm bulges of his pecs and bicep twitch suggestively while grinning broadly. Then he lets a hand wander up to his neck, casually stroking along the heavy gold chain he wears, as if to boast that he can afford such accessories.";
	else:
		say "     Darius is a proud specimen of an anthro canine, tall and well-built with broad shoulders and a muscled torso. The man clearly knows this quite well, as he happily shows off by keeping his chest bare, a baggy pair of jeans the only article of fabric on his body. But of course, right now he's completely helpless in a blissed-out state, the result of you spiking his beer with some of his own drug inventory. Slumped on the sofa and dozing at the same time as being hard as a rock in his half-open jeans opens up quite a few fun possibilities. Question is, will you take the opportunity to have some fun with this big doggie on your own terms instead of his?";

an everyturn rule:
	if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
		if Stamina of Darius is 1: [one beer spiked with Bliss]
			if player is in Darius's Crib and Darius is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Stopping by the kitchen, the dalmatian drug dealer gets a bottle of beer and sips from it. For a moment, you wonder if that was the one you doctored, and after just a little while, it becomes clear that it was. As the large man keeps drinking, the extra ingredient in his booze has a noticeable effect on him, as he gets quite visibly hard in his pants as well as a bit wobbly on his legs. 'Got quite a kick, this one. Top grade craft beer, I tell you,' Darius comments with slightly slurred words and stumbles a little as he makes his way to the couch, dropping onto it. Lifting the bottle once more, he takes another large swig, then calls out to you, 'Getting kinda late. So, buzz off and come back tomorrow if you want some stuff.' With that said, he waves you to the door and starts rubbing his bulge, not even looking if you're really going.";
				say "     You make a few steps that way, but before you're even halfway there, you hear a thunk from behind you. Looks like Darius passed out and dropped is bottle, with the remains of the beer leaking into the carpet now. He's slumped backwards on the couch, the front of his jeans half-open. This would be a perfect opportunity to have some fun with the guy and not have to worry about his domineering personality.";
				wait for any key;
			now Stamina of Darius is 3; [passed out and horny, once]
		else if Stamina of Darius is 2: [all beers spiked with Bliss]
			if player is in Darius's Crib and Darius is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Stopping by the kitchen, the dalmatian drug dealer gets a bottle of beer and sips from it. Remembering that you spiked every last one of them, you suppress a grin and keep watching, eager to see the results of your little trick. As the large man keeps drinking, the extra ingredient in his booze has a noticeable effect on him, as he gets quite visibly hard in his pants as well as a bit wobbly on his legs. 'Got quite a kick, this one. Top grade craft beer, I tell you,' Darius comments with slightly slurred words and stumbles a little as he makes his way to the couch, dropping onto it. Lifting the bottle once more, he takes another large swig, then calls out to you, 'Getting kinda late. So, buzz off and come back tomorrow if you want some stuff.' With that said, he waves you to the door and starts rubbing his bulge, not even looking if you're really going.";
				say "     You make a few steps that way, but before you're even halfway there, you hear a thunk from behind you. Looks like Darius passed out and dropped is bottle, with the remains of the beer leaking into the carpet now. He's slumped backwards on the couch, the front of his jeans half-open. This would be a perfect opportunity to have some fun with the guy and not have to worry about his domineering personality.";
			now Stamina of Darius is 4; [nightly passed out state]
		else:
			if player is in Darius's Crib and Darius is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Stopping by the kitchen, the dalmatian drug dealer gets a bottle of beer and sips from it. Casually drinking his booze, he eventually comments to you, 'Getting kinda late. Go on and clear out. You can come back tomorrow if you want anything.' With that, the big man shoos you out of his apartment building, pushing the front door shut behind you. The lock is still busted, so you could just walk back in, but no doubt Darius will take the time to pack away all his goods before he enjoys himself with his bitches.";
				wait for any key;
				move player to Boundary Street East;
			now Darius is nowhere;
	[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Darius sleeps]
	[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Darius sleeps in]
	else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
		if Stamina of Darius is 3 or Stamina of Darius is 4: [passed out after once getting dosed]
			if player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				if libido of Darius is 1: [after his cherry was popped]
					say "     Slowly waking up from his drunken slumber, Darius finds himself slumped on the couch and pushes himself up with a groan. 'Damn, must have lain down wrong last night on this broke-ass old couch! I should ask Tyke to help me loot a new one.' As the dalmatian says this, he rubs his lower back and ass, trying to get over the ache he is feeling there, none the wiser that it is from you taking his virginity earlier. Eventually, the guy grunts annoyedly and gets up, putting his pants back in order. Then he notices you being there and puts on his usual toothy smile. With a somewhat predatory expression, he says, 'Hey there. What can I do for ya, dawg? Wanna buy some of the good stuff?'";
				else if libido of Darius is 2: [after anal sex]
					say "     Slowly waking up from his drunken slumber, Darius finds himself slumped on the couch and pushes himself up with a groan. 'Damned cheap couch. Every time I doze up in here, I'm all itchy afterwards!' As the dalmatian says this, he reaches behind himself and rubs his ass, trying to get over the ache he is feeling there, none the wiser that it is from you humping and breeding his ass. Eventually, the guy grunts annoyedly and gets up, putting his pants back in order. Then he notices you being there and puts on his usual toothy smile. With a somewhat predatory expression, he says, 'Hey there. What can I do for ya, dawg? Wanna buy some of the good stuff?'";
				else: [non anal aftermath of drugging]
					say "     Slowly waking up from his drunken slumber, Darius finds himself slumped on the couch and looks down over himself with a groan. 'Must have been a fun night, but fuck if I remember anything about it,' he mumbles to himself and shakes his head slowly to clear it. With a grunt, the dalmatian then gets up and puts his pants back in order, only not actually noticing your presence. He puts on his usual toothy smile and looks at you somewhat predatorily as he says, 'Hey there. What can I do for ya, dawg? Wanna buy some of the good stuff?'";
			if Stamina of Darius is 3: [drugged only once]
				now Stamina of Darius is 0; [no beers drugged]
			else:
				now Stamina of Darius is 2; [back to spiked beers]
			now libido of Darius is 0; [reset of his anal state]
		else: [normal wake-up]
			if player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				if HP of Darius is 0: [never seen before]
					say "     A muscled dalmatian comes into the room through the broken wall of the apartment next door. He seems unconcerned with finding you in his apartment, simply nodding to acknowledge your presence. 'Oh hey, new customer looking for a fix? I'm Darius. What can I do for ya, dawg?'";
					now HP of Darius is 1;
					now PlayerMet of Darius is true;
				else:
					say "     Walking into the room through the broken wall of the apartment next door, Darius grins broadly as he finds you waiting for him. 'Looks like someone really needs his fix. What can I do for ya, dawg?'";
			move Darius to Darius's Crib;
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
		if player is in Darius's Crib:
			project the Figure of Darius_face_icon;
			say "     The muscular dalmatian strolls into the kitchen and grabs a can-opener from a drawer, then explains, 'Gotta feed Hannah and my other little bitches.' With a grin on his face, he vanishes through the hole in the wall into the apartment next door, returning a little while later with a big can of [one of]ravioli[or]pineapple[or]peaches[or]beans[or]breakfast meat[or]sausages[or]apple sauce[at random] for himself. Grabbing some plastic cutlery from an industrial sized pack of it, the anthro canine hungrily chows down, eventually throwing the remnants of his meal into a large trashcan and belching in satisfaction.";
	else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
		if player is in Darius's Crib:
			project the Figure of Darius_face_icon;
			say "     Grabbing a porno mag from a pile in one of his shelves, Darius casually saunters over to his couch and sits back on it, paging through his entertainment and jerking off in an unhurried pace. He doesn't seem to care that you're right there in the room with him and just goes to town, right until the eventual messy finish that adds some more stains to the throw rug in front of the couch.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
		if player is in Darius's Crib:
			project the Figure of Darius_face_icon;
			say "     'I'm gonna go out for a while,' Darius calls over towards the hole into the next apartment and gets some barks in reply. Then he turns to you and shoos you out of his place of business, pushing the apartment building's front door shut behind you. The lock is still busted, so you could just walk back in, but not before Darius packs his goods away. A short while later, he comes out and walks down the street.";
			wait for any key;
			move player to Boundary Street East;
		else if player is in Entrance to the Red Light District:
			project the Figure of Darius_face_icon;
			if HP of Darius is 0: [never seen before]
				say "     An anthro dalmatian comes walking down the street from the east and casually leans against a wall from where he can easily overlook the whole crossroads area. 'Oi there! I'm Darius,' he calls out to you in greeting, unconcerned about any hostile intent on your part. Looking at the though guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
				now HP of Darius is 1;
				now PlayerMet of Darius is true;
			else:
				say "     Darius comes walking down the street from the east and casually leans against a wall from where he can easily overlook the whole crossroads area. The anthro dalmatian looks unconcerned about any creatures that might come along and get any ideas for him. Looking at the though guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
		move Darius to Entrance to the Red Light District;
	else if TimekeepingVar is 2 or TimekeepingVar is -6:
		if HP of Darius is 0: [never seen before]
			if player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Coming into this place from outside, an anthro dalmatian grins broadly as he finds you waiting for him. 'Hey there, I'm Darius. Looks like someone really needs his fix. What can I do for ya, dawg?'";
			else if player is in Boundary Street East:
				project the Figure of Darius_face_icon;
				say "     An anthro dalmatian comes strolling down the street from the west in an unhurried tempo, then stops for a second to say, 'Hey there, I'm Darius. You look like you could use some of my goods. Wanna come in and buy something?' He doesn't wait for a reply and simply enters an apartment building in the southeast, leaving you to decide if you want to follow after him.";
			else if player is in Entrance to the Red Light District:
				project the Figure of Darius_face_icon;
				say "     An anthro dalmatian pushes himself off the wall he was leaning against just as you arrive. He gives you a nod in greeting and says, 'Hey there, I'm Darius. You look like you could use some of my special goods. Why don't you come join me in my crib and we can talk business?' Not waiting for a reply, he wanders off to the east in an unhurried tempo. Watching the muscled canine go, you can't help but feel like he is daring any stupid creature with ideas to attack him.";
			now HP of Darius is 1;
			now PlayerMet of Darius is true;
		else:
			if player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Coming into his place from outside, Darius grins broadly as he finds you waiting for him. 'Looks like someone really needs his fix. What can I do for ya, dawg?'";
			else if player is in Boundary Street East:
				project the Figure of Darius_face_icon;
				say "     Darius comes strolling down the street from the west in an unhurried tempo, then enters his apartment building in the southeast, giving you a casual nod as he passes you.";
			else if player is in Entrance to the Red Light District:
				project the Figure of Darius_face_icon;
				say "     Darius pushes himself off the wall he was leaning against and walks off to the east in an unhurried tempo. Watching the muscled canine go, you can't help but feel like he is daring any stupid creature with ideas to attack him.";
		move Darius to Darius's Crib;

Section 3 - Conversation

instead of conversing the Darius:
	if Stamina of Darius > 2:
		say "     He's currently half-passed out after you dosed his beer with aphrodisiac drugs. You can talk at him, but there really isn't anything he could reply right now.";
	else:
		say "[DariusTalkMenu]";

to say DariusTalkMenu:
	project the Figure of Darius_face_icon;
	LineBreak;
	say "     What do you want to talk about with Darius?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about himself";
	now sortorder entry is 1;
	now description entry is "Make Darius tell you about his background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about the red light district";
	now sortorder entry is 2;
	now description entry is "Make Darius tell you about the area";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about what he sells";
	now sortorder entry is 3;
	now description entry is "Get some info on the drugs Darius got on offer";
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
				if (nam is "Ask him about himself"):
					say "[DariusTalk1]";
				else if (nam is "Talk about the red light district"):
					say "[DariusTalk2]";
				else if (nam is "Ask about what he sells"):
					say "[DariusTalk3]";
				wait for any key;
				say "[DariusTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the muscular dalmatian, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DariusTalk1: [himself]
	say "     Darius shrugs as you ask him about himself. 'No big story to tell, really. I'm a black dude from the hood. Been doing fairly well before all this shit started. Solid customer base, right stuff to sell. Of course, half the fuckers vanished early in the outbreak, turned into who knows what, and the supply dried up. But there are new goods to have too, and some of it is some primo shit! You should have a look at my inventory sometime too.' Nodding to him, you chat a little longer, then turn your attention back to the matter of survival in this fallen city.";

to say DariusTalk2: [red light district]
	say "     Darius shrugs as you ask him about the red light district. 'Nothing much to say, dawg. This is my neighborhood, been living in the area all my life. Things have always been rather wild hereabouts. More so now, with people actually having fur and showing their claws and teeth. But don't you think it was all sunshine and rainbows before. It always was a place where the strong and tough survive and get to the top.'";

to say DariusTalk3: [drugs]
	say "     As you quietly ask him about the stuff he sells, Darius grins at you and says, 'The regular kinds of pick-me-ups are kinda hard to get, what with the chaos and the quarantine, but I can offer you all new products. Great stuff, definitively. You'll be surprised what people can cook up out of some of the things that grow or wander the streets these days. [']Bliss['] will really get your blood boiling, and the [']PowerUp['] tablets make you feel like you're a rhino or something. As for the baggies of [']Pixie Dust['] - they're not for snorting, no. Actual magic I got from a special little dude. Or not so little, if he wants to be. That's the effect the dust has.'";
	say "     'I also got something for people who wanna join the best breed of dogs there is. Fur from yours truly that can make a man of anyone, or cum for the ladies. And believe me, the person who drinks it will be a slutty bitch before long, no matter what they start out with.' Darius grins at you as he says this, followed by a boastful addition of, 'Of course, pretty girls can get that for free too, right from the tap.' He grabs his crotch demonstratively as he says this.";
	LineBreak;
	if Darius is in Entrance to the Red Light District:
		say "     [bold type]'Just come to my place if you wanna buy shit. I'll be back there shortly,'[roman type] Darius says and points to the east, explaining that he lives in an apartment building there.";

Section 4 - Fucking

instead of fucking the Darius:
	if Stamina of Darius < 3:
		say "[SexWithDarius]";
	else:
		say "[BlissedDariusSexMenu]";

to say SexWithDarius:
	project the Figure of Darius_face_icon;
	if (lastfuck of Darius - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Yo slut, don't get greedy. I'm saving some of this spunk for Hannah, my breeding bitch,' the dalmatian barks out amusedly. Then he turns away from you, not really interested in sex right now.";
	else if Darius is not in Darius's Crib:
		say "[DariusStreetBJ]";
	else: [ready for sex]
		say "     As you walk up to Darius, the dalmatian calmly crosses his arms in front of his chest and smirks. 'So, couldn't resist the chance to be with a real man for a change, eh?'";
		say "[DariusSexMenu]";

to say DariusSexMenu:
	LineBreak;
	now sextablerun is 0;
	say "     [bold type]What do you want to do with him?[roman type][line break]";
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer a BJ";
	now sortorder entry is 1;
	now description entry is "Suck Darius off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Present yourself for fucking";
	now sortorder entry is 2;
	now description entry is "Ask him to give you some love with his red rocket";
	[]
	if Lust of Darius > 0 and cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Let him grind on your ass";
		now sortorder entry is 3;
		now description entry is "Ask him to give you some love with his red rocket";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 4;
		now description entry is "Tell the dalmatian you wanna ride his ass";
	[]
	sort the table of fucking options in sortorder order;
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
				if (nam is "Offer a BJ"):
					say "[DariusSex1]";
				if (nam is "Present yourself for fucking"):
					say "[DariusSex2]";
				if (nam is "Let him grind on your ass"):
					say "[DariusButtJobIntro]";
				if (nam is "Ask to fuck him"):
					say "[DariusSex3]";
				if PlayerFucked of Darius is false:
					now PlayerFucked of Darius is true;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the muscular dalmatian, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DariusStreetBJ:
	if player is female: [female + herm]
		say "     As you walk up to Darius and offer sex, the dalmatian chuckles heartily and grins at you. 'Wanna do it right out here in the street, eh? Such a slut!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively and looks up and down along the street. Then goes one step further and unzips himself, revealing his furry sheath and the cock-head already poking out of it. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to worship me properly!' With that said, the big man wraps his fingers around the base of his cock, stroking it a little until it is fully hard, standing proudly erect and pointing at you. 'You like this, don't you,' the anthro canine says more as a statement than a question, then steps up before you can even think of replying, sliding his arm around your chest to pull you into a demanding kiss. His tongue explores your mouth while he keeps you tightly pressed against his chest and grinds his erection lightly against your thigh.";
		say "     'Wanna get started on it, sweetcheeks?' Darius adds after a little while, nodding down to the throbbing shaft between the two of you, its pointed tip already dripping beads of pre-cum. You follow his suggestion, guided down to your knees by a hand on your shoulder. Seen at eye-level, the drug dealer's prick is quite a weighty piece of man-meat, and the full orbs of his balls tempt you into cupping them, followed by some gentle fondling. 'Yeaahhh! That's nice, but I want more!' the large male grunts urgently, pushing your head towards his cock. Darius's muzzle opens for a grunt as you then slip your lips over the tip of his cock and start sucking, together with pumps along his length by your hand. He is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that Darius enjoys himself quite a bit.";
		WaitLineBreak;
		say "     Soon you feel the horny Dalmatian's hand wander down from the top of your head to cupping its back, giving him a more secure grip. He starts to push you deeper onto his long schlong, murmuring under his breath how great your lips feel. Darius goes further with every new push into your mouth, until finally, your nose is buried in the fur of his crotch and his cock in the tight confines of your throat. He holds you pressed against his groin for a second, then allows you to pull back and take a breath, followed by another go. Sliding in and out, the spotted canine all too soon abandons such niceties, as his libido rises to higher and higher levels and the need to fuck supplants any other. 'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face.";
		say "     You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius must really love to hold you tight with his dick all the way in, reveling in the sensation of being deep-throated by a receptive female. The tenor of his voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		WaitLineBreak;
		say "     Both of the large man's hands encircle your head a second after you unsuccessfully try to pull off and Darius shoves your head away from his crotch forcefully. After a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters. He is quick to catch the throbbing shaft with one hand, the other still keeping a hold of your head, and any further shots of cum after that get aimed right at your face, covering it in the drug dealer's creamy load. You're forced to close your eyes so he doesn't get any cum into them, leaving you helpless on your knees before Darius.";
		say "     For a little while, you mainly hear the anthro canine's satisfied panting, as well as some chuckles as he brushes his softening cock over your face. Then the sound of movement some little distance away reaches your ears, followed by ";
		let randomnumber be a random number from 1 to 7;
		if randomnumber is:
			-- 1: [pimp]
				say "a growl coming from Darius, followed by the words, 'What are you looking at, asshat? Do I have to teach you another lesson? My girls are my girls, not [']talent['] you can pick up at your leisure!' The dalmatian moves a step or two and growls again, followed by hasty footsteps of the other person running away. Wiping the cum off one closed eye and hastily opening it, you catch a glimpse of a twisted pimp, right before he turns a not too distant corner.";
			-- 2: [Kyle]
				say "someone giving a slow, acknowledging clap and Darius replies, 'What can I say, you know no one can resist my dick!' A man's voice replies in a teasing tone, 'If only it didn't come with fleas as part of the deal!' The dalmatian snorts and throws back the words, 'Up yours, Kyle!' 'I knew it'd be only a matter of time till you wanted to go for my ass after all. Doggies are all butt-sniffers, hah! Fine by me, but maybe a flea bath should come first.' After some over-played choking noises, Darius shoots back, 'Get out of here, you perv! As if I wanted to have anything to do with your ass.' Laughing, the other guy strolls a few steps away, then calls out, 'Oh, and by the way: The next load's done. Come pick it up when you have the time.'";
				say "     Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a handsome incubus with crimson skin, a grimy sleeveless shirt and quite low-hanging pants, then he vanishes from of sight around a corner.";
			-- 3: [kobolds]
				say "whispered conversation by several squeaky voices. 'Impressive how big a full-sized dick can be, eh you lil['] freaks?' Darius calls out with a chuckle in his voice, and you can hear him smacking the length of his shaft into his palm. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. About thirty feet away, a quartet of small lizard-people are standing in a bunch, gaping at you and the dalmatian towering over you. 'Get out of here, or I'll have to charge you for the peepshow,' the anthro canine barks with a chuckle and waves them off, and the kobolds quickly scurry out of sight.";
			-- 4: [succubus]
				say "the musical notes of a woman's chuckle. 'Oh darling, why are you wasting your seed on an amateur? I could show you untold pleasures instead. Just come with me,' she adds in a seductive tone. Somehow, you can't help but feel some tension in the back of your neck, as there is a predatory undertone to those words. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. Not too far away, a succubus is standing, slightly bent forward to present her breasts to Darius. 'Yeah, yeah. But at what price? I know that shit like your hot bod ain't free!' Darius barks back, shaking his head. The sex demon lets out a huff at the rejection, then saunters off, looking for another victim.";
			-- 5: [cock cannon]
				say "Darius cursing and scrambling for something lying on the ground. 'Fuck off freak!' he barks aggressively, followed by the sound of something hitting flesh and a weird squeal. Alarmed, you wipe the cum from your eyelids and blink them open quickly. A cock cannon is standing in the street about 40 feet away, its dickhead running through all the colorful stages of a bruise as it is rapidly repaired by the nanites in the creature. Looks like Darius hit it with a thrown brick, and even as you are still taking everything in, he sends another one flying. It's a narrow miss, but still enough to send the weird beast scurrying away.";
			-- 6: [Brennan ...or a similar survivor if Brennan isn't around]
				say "Darius calling out, 'What are you looking at, dude? Can't a guy enjoy some oral from a willing slut on the street in his own neighborhood?' A masculine voice replies, 'Oh, err... sorry about that. Just moving through the area.' Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a fairly muscular and seemingly uninfected human a little ways away, his back turned to you as he ducks around a corner[if BrennanRelationship > 0 and BrennanRelationship < 50]. That was Brennan! Though he must not have recognized you, as he only saw you kneeling from behind and Darius held most of his attention[end if].";
			-- 7: [street animal]
				say "Darius letting out a bark and a chuckle before he goes back to dick-slapping your face again. 'Just a street [one of]dog[or]cat[at random]. A regular one, so no need to get your panties in a twist,' the dalmatian explains. You stay in your submissive position for a while, giving Darius all the time he wants to savor you being covered by his cum, until the drug dealer eventually puts his schlong away and leaves you to you clean yourself up.";
	else: [male + neuter]
		say "     As you walk up to Darius and offer sex, the dalmatian chuckles heartily and grins at you. 'Wanna do it right out here in the street, eh? Typical cock-gobbling fag!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively and looks up and down along the street. Then goes one step further and unzips himself, revealing his furry sheath and the cock-head poking out of it a little bit. 'Better be ready to worship me properly, you man-whore!' With that said, the big man clamps his large hand around the back of your head, pushing you down to his crotch. Given the sudden wrench, you can't help but stumble and fall to your knees as you face-plant against the anthro canine's sheath and balls. He doesn't let go with his hand either, just rubbing your cheek up and down against his junk in a demonstration of dominance that gets the drug dealer hard and erect quite quickly.";
		say "     'Open up slut!' the anthro canine barks out a command, pulling your head away from his crotch just long enough for opening your mouth. Then he rams his schlong between your lips, forcing it in - ready or not. Darius is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that the big dog is really into face-fucking. He starts to push you deeper onto his long schlong with barely any time to get used to the thick canine shaft. Chuckling at your gurgles and choking noises, the Dalmatian's length goes down your throat until finally, your nose is buried in the fur of his crotch and it feels like he's halfway to your stomach. Darius holds you pressed against his crotch for a long moment, then allows you to pull back and take a desperate breath, followed by another go.";
		WaitLineBreak;
		say "     Sliding in and out, the spotted canine takes you hard and fast, only getting more intense as his libido builds up and the need to fuck pushes aside even the minuscule amount of restraint he showed before. 'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, reveling in the sensation of your inner muscles twitching as your air begins to run out.";
		say "     The tenor of Darius's voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the [']bitch['] that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe! Both of the large man's hands encircle your head a second after you unsuccessfully try to pull off and Darius shoves your head away from his crotch forcefully.";
		WaitLineBreak;
		say "     After a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters. He is quick to catch the throbbing shaft with one hand, the other still keeping a hold of your head, and any further shots of cum after that get aimed right at your face, covering it in the drug dealer's creamy load. You're forced to close your eyes so he doesn't get any cum into them, leaving you helpless on your knees before Darius. 'Yo should see yourself, faggot! Dirty cum-pig! Just what you needed from me, ain't that right?!'";
		say "     For a little while, you mainly hear the anthro canine's satisfied panting, as well as some chuckles as he brushes his softening cock over your face. Then the sound of movement some little distance away reaches your ears, followed by ";
		let randomnumber be a random number from 1 to 7;
		if randomnumber is:
			-- 1: [pimp]
				say "a growl coming from Darius, followed by the words, 'What are you looking at, asshat? Do I have to teach you another lesson? This is a dude, not someone you can recruit anyways!' The dalmatian moves a step or two and growls again, followed by hasty footsteps of the other person running away. Wiping the cum off one closed eye and hastily opening it, you catch a glimpse of a twisted pimp, right before he turns a not too distant corner.";
			-- 2: [Kyle]
				say "someone giving a slow, acknowledging clap and Darius replies, 'What can I say, you dirty fags are all hungry for my dick!' A man's voice replies in a teasing tone, 'If only it didn't come with fleas as part of the deal!' The dalmatian snorts and throws back the words, 'Up yours, Kyle!' 'I knew it'd be only a matter of time till you wanted to go for my ass after all. Doggies are all butt-sniffers, hah! Fine by me, but maybe a flea bath should come first.' After some over-played choking noises, Darius shoots back, 'Get out of here, you perv! As if I wanted to have anything to do with your ass.' Laughing, the other guy strolls a few steps away, then calls out, 'Oh, and by the way: The next load's done. Come pick it up when you have the time.'";
				say "     Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a handsome incubus with crimson skin, a grimy sleeveless shirt and quite low-hanging pants, then he vanishes from of sight around a corner.";
			-- 3: [kobolds]
				say "whispered conversation by several squeaky voices. 'Impressive how big a full-sized dick can be, eh you lil['] freaks?' Darius calls out with a chuckle in his voice, and you can hear him smacking the length of his shaft into his palm. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. About thirty feet away, a quartet of small lizard-people are standing in a bunch, gaping at you and the dalmatian towering over you. 'Get out of here, or I'll have to charge you for the peepshow,' the anthro canine barks with a chuckle and waves them off, and the kobolds quickly scurry out of sight.";
			-- 4: [succubus]
				say "the musical notes of a woman's chuckle. 'Oh darling, why are you wasting your seed like this? Try a real woman! I could show you untold pleasures instead. Just come with me,' she adds in a seductive tone. Somehow, you can't help but feel some tension in the back of your neck, as there is a predatory undertone to those words. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. Not too far away, a succubus is standing, slightly bent forward to present her breasts to Darius. 'Yeah, yeah. But at what price? I know that shit like your hot bod ain't free!' Darius barks back, shaking his head. The sex demon lets out a huff at the rejection, then saunters off, looking for another victim.";
			-- 5: [cock cannon]
				say "Darius cursing and scrambling for something lying on the ground. 'Fuck off freak!' he barks aggressively, followed by the sound of something hitting flesh and a weird squeal. Alarmed, you wipe the cum from your eyelids and blink them open quickly. A cock cannon is standing in the street about 40 feet away, its dickhead running through all the colorful stages of a bruise as it is rapidly repaired by the nanites in the creature. Looks like Darius hit it with a thrown brick, and even as you are still taking everything in, he sends another one flying. It's a narrow miss, but still enough to send the weird beast scurrying away.";
			-- 6: [Brennan ...or a similar survivor if Brennan isn't around]
				say "Darius calling out, 'What are you looking at, dude? This is my neighborhood, and it's rude to staring at a guy just because he feeds a faggy cum-pig!' A masculine voice replies, 'Oh, err... sorry about that. Just moving through the area.' Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a fairly muscular and seemingly uninfected human a little ways away, his back turned to you as he ducks around a corner[if BrennanRelationship > 0 and BrennanRelationship < 50]. That was Brennan! Though he must not have recognized you, as he only saw you kneeling from behind and Darius held most of his attention[end if].";
			-- 7: [street animal]
				say "Darius letting out a bark and a chuckle before he goes back to dick-slapping your face again. 'Just a street [one of]dog[or]cat[at random]. A regular one, so no need to get your panties in a twist,' the dalmatian explains. You stay in your submissive position for a while, giving Darius all the time he wants to savor you being covered by his cum, until the drug dealer eventually puts his schlong away and leaves you to you clean yourself up.";
	infect "Dalmatian Bitch";
	now lastfuck of Darius is turns;

to say DariusSex1: [oral]
	if player is female: [female + herm]
		say "     As you step up to the large canine and offer to suck him off, Darius lets out a hearty chuckle. 'Wanna wrap your lips around this thick piece of meat, babe? I'm always happy to give a girl what she needs!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to worship me properly!' With that said, the big man undoes his belt-buckle in well-practiced haste, followed by the zipper and him shoving his jeans down. As he kicks the garment off, your eyes are inevitably drawn to the red shaft rapidly pushing out of his sheath, as well as the weighty balls swinging below, furry with the typical white and black dalmatian pattern.";
		say "     'You like it, don't you,' the anthro canine says more as a statement than a question, his fingers closing around the shaft to wag it in your direction. Grinning broadly, Darius steps up before you can even think of replying, sliding his arm around your chest to pull you into a demanding kiss. His tongue explores your mouth while he keeps you tightly pressed against his chest and grinds his erection lightly against your thigh. 'Wanna get started on it, sweetcheeks?' Darius adds after a little while, nodding down to the throbbing shaft between the two of you, its pointed tip already dripping beads of pre-cum. You follow his suggestion, guided down to your knees by a hand on your shoulder. Seen at eye-level, the drug dealer's prick is quite a weighty piece of man-meat, and the full orbs of his balls tempt you into cupping them, followed by some gentle fondling.";
		WaitLineBreak;
		say "     'Yeaahhh! Just like that!' the large male grunts in satisfaction as you lean in to slide your tongue up along the underside of his shaft, then give its head a little peck as you reach it. His hand moves to rest on top of your head, not really pushing you to anything (yet?), but definitively giving some light encouragement to keep working on his cock. Wrapping your fingers around his shaft makes quite sure that you have his full attention, and you stroke up and down slowly, drawing a content moan from your horny partner. Glancing up, you meet the eyes of the dalmatian and see him pant in lustful heat, enjoying your touch. His muzzle opens for a deeper grunt as you then slip your lips over the tip of his cock and start sucking, together with pumps along his length by your hand. He is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that Darius enjoys himself quite a bit.";
		say "     The dominant male leaves you to worship his dick at your own pace for a while, but eventually you feel his hand wander down from the top of your head to cupping its back, giving him a more secure grip. He starts to push you deeper onto his long schlong, murmuring under his breath how great your lips feel. Darius goes further with every new push into your mouth, inching his way down the length of his cock until finally, your nose is buried in the fur of his crotch and his cock in the tight confines of your throat. He holds you tight against his crotch for a second, then allows you to pull back and take a breath, followed by another go. Sliding in and out, the spotted canine all too soon abandons such niceties, as his libido rises to higher and higher levels and the need to fuck supplants any other.";
		WaitLineBreak;
		say "     'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, reveling in the sensation of being deep-throated by a receptive female. The tenor of his voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		say "     Your own choking noises around the thick shaft as it throbs with more blasts of cum, as well as your hands that grip his thighs in painful intensity, are barely enough to reach the horny canine in the grip of his orgasm. Looking up with pleading eyes as you struggle, you see Darius turn his head down and look at you, his expression of annoyance quickly giving way to one of shocked urgency as he barks out, 'Oh, fuck!' With that, he shoves your head away from his crotch with both hands, and after a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters.";
		WaitLineBreak;
		say "     Blinking away the strobing stars that lack of oxygen was beginning to give you as you limply hang in the Dalmatian's grasp, the next thing you consciously hear is his amused chuckling. As you manage focus on the drug dealer, he is looking at you with a wide grin, then says, 'Dayum! That was one great load! Sorry babe, I guess I got a little carried away at the end.' Seems like that's the only apology for being almost choked by his prick you'll get, as the next thing that Darius does is wipe off what cum landed on him and feeding it to you, pushing his goop-covered fingers into your mouth so you can suck it all off.";
	else: [male + neuter]
		say "     As you step up to the large canine and offer to suck him off, Darius lets out a hearty chuckle. 'You're just a typical cock-gobbling fag, aren't you? Damn man-whores just can't resist this mighty prick!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'Fine by me. On your knees, fucker!' With that said, the big man clamps both of his hands on your shoulders and shoves you down into a submissive position before him. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you find yourself face to face with Darius's furry crotch. Weighty balls with irregular black spots on them swing before your eyes as the man shoves his jeans the rest of the way down, then kicks them off.";
		say "     The anthro dog's many canine teeth show in an impressive line-up as he gives you a human-like grin, then grabs the top of your head and shoves you against his crotch and the cock-head just pushing out from his sheath. With Darius's tight grip not giving you much choice of the matter, your face is rubbed up and down against his manhood. You find your nose buried against the hairy sack of his balls most of the time, breathing in the masculine musk of the aggressive male. 'Open up you lil['] fag,' he growls demandingly at you and pulls your head back, then smacks the by now fully erect cock against your forehead. From there, it leaves a trail of pre-cum down as he brushes his dickhead over your skin in a show of dominance. The pointy tip of the canine shaft wanders down between your eyes, then along one side of your nose and finally arrives at your lips, bringing with it the first taste of his pre.";
		WaitLineBreak;
		say "     It doesn't really matter why you open your mouth - to reply, or simply to obey the horny dog - Darius shoves his hard prick between your lips right away as you do, barking in satisfaction as he buries his bone in a warm and tight cave. Shifting his grip so that your head is clamped between two strong-fingered paws, the large canine proceeds to fuck your mouth in a rapid tempo, mercilessly pounding in and out and with his balls slapping against your chin with every harsh thrust. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, reveling in the sensation of being deep-throated by a gay cock-sleeve.";
		say "     In fact, he only really lets you pull back when you are already beginning to see stars, reluctantly giving in to the weakening patter of your hands against his thighs and allowing for hasty gulps of air before he goes back to more rapid face-fucking. 'Yeah, that's right boy! Take my big dick!' he growls harshly as he makes use of you, the tenor of his voice soon gaining a definite air of urgency. His weighty balls smack against your face ever faster as the big male really takes out all the stops, then rams in all the way with a forceful thrust and starts to unload his balls down your throat. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		WaitLineBreak;
		say "     Your own choking noises around the thick shaft as it throbs with more blasts of cum, as well as your hands that grip his thighs in painful intensity, are barely enough to reach the horny canine in the grip of his orgasm. Looking up with pleading eyes as you struggle, you see Darius turn his head down and look at you, his expression of annoyance quickly giving way to one of shocked urgency as he barks out, 'Oh, fuck!' With that, he shoves your head away from his crotch with both hands, and after a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters.";
		say "     Blinking away the strobing stars that lack of oxygen was beginning to give you as you limply hang in the Dalmatian's grasp, the next thing you consciously hear is his amused chuckling. As you manage focus on the drug dealer, he is looking at you with a wide grin, then says, 'Dayum! That was one great load! Got a nice fuckhole, faggot! So much that I got a bit carried away, hah. Whoops, I guess.' Seems like that's the only hint of apology for being almost choked by his prick you'll get, as the next thing that Darius does is wipe off what cum landed on him and feeding it to you, pushing his goop-covered fingers into your mouth so you can suck it all off.";
	infect "Dalmatian Bitch";
	now lastfuck of Darius is turns;

to say DariusSex2: [ask to be fucked]
	SetMonsterRandomDalOffspring;
	if player is female: [female + herm]
		say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'So you wanna feel my hard shaft all the way up there babe? I'm always happy to give a girl what she needs!' Bringing one hand on the front of his jeans, the dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to milk my cock me properly!' With that said, the big man undoes his belt-buckle in well-practiced haste, followed by the zipper and him shoving his jeans down. As he kicks the garment off, your eyes are inevitably drawn to the red shaft rapidly pushing out of his sheath, as well as the weighty balls swinging below, furry with the typical white and black dalmatian pattern.";
		say "     'You like it, don't you,' the anthro canine says more as a statement than a question, his fingers closing around the shaft to wag it in your direction. Grinning broadly, Darius lets himself fall back on his sofa, coming to sit in a broad-legged fashion that allows open access to his erection. 'Why don't you come here and give it a good lick, sweetcheeks?' the muscular canine calls out to you, nodding down to the throbbing shaft with its pointed tip already dripping beads of pre-cum. You quickly pull off what equipment and clothes you have, dropping it all on your way over to the waiting male. As you get on your knees and see it at eye level, the drug dealer's prick stands straight and erect waiting for you, and you can't help but want to touch it. Fingers wandering over the weighty piece of man-meat and the furry orbs of his balls, you cup and fondle the large man eagerly.";
		WaitLineBreak;
		say "     Leaning forward a little, Darius hooks a paw-hand behind your head and pulls you towards his crotch a gentle but firm pressure until your nose bumps into his erection. 'Yeaahhh! Just like that!' the large male grunts in satisfaction as you obediently start to slide to slide your tongue up along the underside of his shaft, then give its head a little peck as you reach it. His hand moves to rest on top of your head, encouraging you to keep lapping at his manhood and getting it nice and wet with spit. Darius enjoys being serviced by you for a little while, then eventually slides his hands under your armpits pulling up and towards him. Halfway on top of the sitting male, you're drawn into a hungry bout of making out with him, with the canine's long tongue exploring your mouth eagerly. Meanwhile, his hands touch and stoke your body, until you find yourself lifted and held aloft by strong arms, which then spread your legs as Darius lowers your crotch towards his.";
		say "     The dominant male grins broadly as his erect shaft bumps the naked skin of your inner thighs, followed by sliding along towards the by now dripping wet gash of your pussy. 'Take it, baby!' Darius grunts in satisfaction as his manhood nudges your nether lips apart, then slides right in as he pulls you down on the cock. The canine shaft is hot and hard, rubbing some very sensitive spots and driving you wild as the horny drug dealer fills you to the brim. 'Ride me!' comes Darius's next command and he bounces you on his lap, making you gasp at the sensation of him moving inside you. After that taste of feeling his thick prick, you can't help but keep pumping your hips up and down all on your own, eager to be fucked by him.";
		WaitLineBreak;
		say "     With a grunt of satisfaction, Darius leans back on his couch and interlaces his fingers behind his head, perfectly happy to let you do all the work. Not that you're complaining, as you're well-filled by his large doggie cock no matter what, feeling its sides rub and stretch your inner walls. 'Not bad, you sexy bitch, but how about you flex that pussy around my cock a little? Work those muscles!' One of his hands reaches out to grip the side of your body, stroking it encouragingly as he keeps your eyes locked to his with a demanding stare. Wanting to please the large male, you tighten your muscles and do your best to milk his dick inside your pussy, which earns you a satisfied growl from Darius. 'Fucking ace! That's more like it! Work that pussy baby!' The dalmatian is enjoying himself quite a bit now, and before long, you can feel the base of his cock start to swell, the beginning of a typical canine knot.";
		say "     Not at all one to take things slow - or ask permission - Darius thrusts his hips up hard a second later while pulling down on your hips with both his hands on your hips. You can't help but let out a startled yelp as he pops his knot into your pussy with that single savage shove. The pain of his entrance is quickly outweighed by the amazing sensation of fullness and his still growing bulge stretching your inner walls around itself. Of course this doesn't mean that he is content with simply putting it in, and the powerful male grinds his hips against you, his dickhead bumping your deepest insides while the knot tugs against your nether lips from the inside every time he pulls back even just minutely. After a few more deeply penetrating thrusts, Darius lets out an urgent bark and hammers into with all his might one last time, then his cock starts to erupt into you. Spurt after spurt of rich canine seed is shot deep into you, his countless little swimmers starting their search for an egg to merge with.";
		WaitLineBreak;
		say "     Grunting and panting in lust, Darius's whole body trembles and twitches with every further shot of cum that he is depositing deep inside you, happily breeding your already filled womb. When he eventually winds down a little from the lengthy and quite voluminous orgasm, the dalmatian puts his hand on your stomach and gives it a gentle rub. ";
		if player is impreg_now: [player is already pregnant]
			say "'Too bad you already have some buns in the oven, babe. I'd really love to add a few pups to the count. Be sure to come back to me when it's time to start a new litter!' You nod distractedly at him, more focused right now on the fact that you yourself haven't yet gotten off yet. Tied to the large canine as you are, with the knot and all, Darius doesn't really have a choice of wandering off now that he's done, but it still takes some pointed hints to remind him that you want to orgasm too.";
		else:
			say "'Let's hope it takes, babe. I wanna see you swollen with my pups! To be really sure, you'll just have to come back fore more! Gonna put a litter in you for sure!' You nod distractedly at him, more focused right now on the fact that you yourself haven't yet gotten off yet. Tied to the large canine as you are, with the knot and all, Darius doesn't really have a choice of wandering off now that he's done, but it still takes some pointed hints to remind him that you want to orgasm too.";
		say "[fimpregchance]";
		if player is male: [herms]
			say "     'Oh. Yeah...' he murmurs somewhat sheepishly, then moves his hands to begin stimulating your clit, switching up between it and pinching your nipples but completely ignoring the erect cock of your own shaft. The amazing time you had while getting fucked, and bred, means that he doesn't have all that much work to push you the final distance to where you want to go, and soon you can feel yourself getting quite close. 'I don't mind a girl with some extra, but you better not get any cock-snot on me!' the dalmatian warns you and waits for you to grasp your cock and aim it to the side before he goes on to rub your pleasure-button with his thumb. Moments later, you feel the wave of your own climax braking over you and call out in pleasure, squirting femcum to trickle down into his crotch-fur and splattering the couch next to Darius with your own cum.";
		else:
			say "     'Oh. Yeah...' he murmurs somewhat sheepishly, then moves his hands to begin stimulating your clit, switching up between it and pinching your nipples. The amazing time you had while getting fucked, and bred, means that he doesn't have all that much work to push you the final distance to where you want to go, and soon you can feel yourself getting quite close. Moments later, you feel the wave of your own climax braking over you and call out in pleasure, squirting femcum to trickle down into his crotch-fur.";
	else: [male player]
		if Sloppy Seconds is not resolved: [Darius isn't too into butt sex (yet)]
			say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'You're just a typical cock-hungry fag, aren't you? Damn man-whore, what makes you think I'd dirty my cock by sticking it up your ass?' Shaking his head with a scrunched-up nose, the dalmatian is about to turn away when you bring up that he doesn't actually have to stick it [italic type]in[roman type] your ass to have some fun. He could just fuck the crack of your ass, kinda similar to a titjob. Raising one eyebrow and giving you an amused look, Darius replies, 'Yo fuckhole, you really are desperate to feel a real man against your body, ain't that right? Fine, I'll fuck your whiny ass! You better be clean down there, or we'll have some words.' Eager to get it on with the dominant dog, you [SelfStripCrotch], then turn around and demonstratively spread your cheeks for Darius.";
			say "[DariusButtJob]";
		else: [Darius got forced to fuck Joshiro before, so he has an increased liking of anal sex]
			say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'You're just a typical cock-hungry fag, aren't you? Damn man-whores, waving your butts in front of proper men and always begging for dick! What'cha trying to do, turn me into a pansy like you? Fat chance of that!' Shaking his head with a scrunched-up nose, you realize that while the dalmatian is standing there with his arms crossed, he hasn't actually rejected your offer out of hand or turned away. Seems like his encounter with Tyke and Joshiro had a bit of an effect on his opinion on anal sex. Clearing your throat and playing in to his earlier words, you tell him that he's of course far too strong a man to [']be made gay['], but you just couldn't help yourself from the desire to try and feel his mighty shaft. Raising one eyebrow and giving you a proud look, Darius replies, 'Ain't that right, eh! Stupid fuckhole, thinking you can convert me! I'll show ya, fuck that whiny ass and stay as straight as ever! You better be clean down there, or we'll have some words.'";
			say "     Eager to get it on with the dominant dog, you [SelfStripCrotch], then turn around and demonstratively spread your cheeks for Darius. The dalmatian sniffs the air in your direction and then grunts, 'You'll do, slut!' Right after that, he gives your ass a meaty slap and calls out, 'On your knees, faggot!' As you get down on the stained throw-rug in front of Darius's couch, feeling the spots of dried cum in the fabric against your naked skin, the drug dealer moves up close behind you. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you see his jeans fly to the side, kicked off by the powerful male. Something warm and firm touches the top of your shoulder a second later: the anthro dog's dick, with a reddish skin color and pointy tip. He casually grinds against your upper body for a moment, including rubbing his weighty balls against the back of your shoulder, then soon gives you a shove that sends you falling forward, catching yourself on all fours.";
			WaitLineBreak;
			say "     Darius is on top of you before you really have a chance to react, one of his strong hands pushing down on the middle of your back. Face-planting on the carpet, you find your cheek pressed into it[if player is submissive] and your arousal soaring as the canine man puts you down like the submissive slut you are[else] and some annoyance at the harsh treatment rise in you[end if]. Your eyes are still trying to focus on the peanut (or is it a pistachio?) lying just at the end of your nose when you feel Darius's breath against your ear. 'You asked for it, bitch boy! Now stay like that! Present your fuckhole like any good slut would, or I'll kick you out on the street naked!' Chuckling and licking your cheek in a possessive way, Darius then pushes himself up while bracing on your back, then takes his hand away. Even though you're no longer forced into position, you stay as you are, waiting for what the dominant male will do with you.";
			say "     'Shake that booty!' he commands, and you obey, earning you a laugh from the dalmatian. His erection gets slapped against both your buttocks, switching up between them several times, then finally slots into place right between them, resting hotly in the crack of your ass. You can feel it leaking pre-cum on the small of your back, then your ass-crack itself as Darius pulls backwards and liberally rubs his fluids over your skin with his dickhead. Soon, his strong hands grasp the sides of your hips and the dalmatian begins to thrust back and forth in the now well-lubed groove of your butt. 'You don't feel half bad, for a faggotty buttslut,' Darius tells you with a grunt in between the pants and lusty growls he makes as he grinds into you. He clearly is enjoying himself quite a bit if the dripping mess he's making of your behind is any indication. That doggy cock is leaking a lot of pre!";
			WaitLineBreak;
			say "     Eventually, the muscular canine remembers that he did intend out to prove a point, not just rub against you. You can feel his warm breath wash over your skin as he leans in and growls into your ear, 'Gonna show you how a straight guy fucks fag bitches! Back that ass up for me now!' With that said, he waits impatiently for you to push against him and present yourself, following up with demanding directions to stretch your ass a bit higher and nudging it into just the right position before he rams himself in deep. He laughs at your whimper at the sudden and forceful penetration, relentlessly pushing in further. Soon, the bulge of his not yet swollen knot bumps your entrance and is popped in with a vicious thrust, leaving you fully impaled and Darius's furry balls resting against your ass. 'Not bad, bitch boy,' Darius grunts derisively, his large cock throbbing as it stretches your inner walls around it. Even quicker than the penetration, the large male yanks his shaft out, leaving you feeling strangely empty for a second or two, until he thrusts back in all the way.";
			say "     Darius mutters words like 'Thought you could turn a guy like me!', 'Stupid fag!' and 'Gonna show him!' under his breath as he keeps going in and out, smirking as he watches your pucker tremble and twitch after pulling out. He always waits for a second or two for it to start pulling together again before he shoves his prick back in, pre-knot bulge and all. Seems like he enjoys your groans as he does so, indifferent to the fact that it makes you see stars in front of your eyes from the mix of pain and pleasure. At some point, Darius switches over to more regular humping from just playing around with your hole, drilling you hard and deep at a rapid pace. The room is filled by the slapping sounds of his swinging balls against your buttocks, with the thrusts pushing you across the carpet little by little since you can't really brace yourself in the [']ass up, head down['] position you're in.";
			WaitLineBreak;
			say "     Pushed along by Darius forceful fucking, you eventually find yourself bumping against the front of the drug dealer's old couch, with it finally stopping you from getting more rug-burn than you already have. Darius doesn't seem to care much either way, and a short glimpse over your shoulder reveals that he's panting heavily as he humps your ass. As his eyes meet yours, the expression of lust and pleasure on his face becomes somewhat guarded, as if he feels like he got [']caught['], and the big man quickly pushes down on your back with one paw-hand, making you face-plant on the carpet again. 'Stay down, fag!' the muscular canine growls as he continues pounding you with a little additional fervor. Soon, his grunts and moans take on a more urgent tone, interspersed with muttered words along the lines of, 'Yeah bitch boy! Take it! You like the feel of my cock, don'tcha!'";
			say "     After just a few more hard thrusts, you feel something happening inside you - it's Darius's knot, expanding noticeably as he shouts, 'Ffuuckking fag! Take my load!' A heavy throb of his cock and growing know heralds the first heavy splurge of cum into your ass, after which your top unexpectedly wrenches his dick from your hungry hole. You can't help but whimper as he large knot brutally stretches your pucker and the canine's shaft swings up to slap Darius's abs. His next two shots of cum splash down on your back before he catches his dick with a hand and rams it back into your hole, ending at the by now fully grown knot pressing hotly against your hole. 'Not gonna knot no dude!' you hear the dominant top muttering under his breath, even as he continues to flood your insides with his cum. Something about the warmth spreading inside you and the whole sexy situation with the hunky dalmatian rubs you in a very right way, and you join Darius in orgasm moments later.";
			WaitLineBreak;
			say "     Your cock throbs hard as it erupts with cum without even being touched. With your seed pulsing onto the carpet and soaking into it, you can't help but wonder about the other stains on what you've had your face pushed against this whole time. Then the thought is washed away by a fresh throb of Darius's cock against your prostate, making you all tingly as you ride out your own orgasm together with his. The grunting canine grips your shoulder tightly as he falls forward in the grasp of his orgasm, panting with each further shot of creamy seed that paints your innards white. When Darius's orgasm eventually winds down, the dalmatian looks down at you and comments, 'Damn, what a mess you made fag. Also, I feel as straight as ever, told you that you couldn't get to me.'";
			say "     With a grunt, he pulls his shaft out of your freshly bred ass, accompanied by a slurping noise and a small gush of cum oozing out to trickle down your crack. Chuckling at the sight of your sweaty, cum-splattered body, Darius stands up and takes a few steps to the side to pick up his jeans. As he shakes them out and prepares to get dressed, he throws you a short glance and adds, 'Hey, you should wipe yourself off, or rub it in, or whatever you freaks do. Can't have a filthy man-slut stretched out in the middle of my place. Got a rep to maintain, ya see?' With that said, he looks away, not really interested in your naked form now that he's gotten his rocks off.";
	infect "Dalmatian Bitch";
	now lastfuck of Darius is turns;

to say DariusButtJobIntro:
	say "     As you step up to the large canine and ask him to grind against your ass again, Darius lets out a hearty chuckle. 'Liked it before, eh fag? Wanting a big, strong man to use you as a toy. What a fucking man-whore you are!' The tone of his voice makes it clear to you that the large dalmatian is winding himself up, smugly reveling in his dominance, and you can see the bulge of his jeans grow as the canine's cock starts to push out of its sheath. Playing into his power-fantasy, you act suitably deferential, agreeing with his insults and begging to be taken by Darius. You even turn around and wiggle your rear at him, offering the crack of your ass and stressing that it'll be kinda similar to a titjob. Raising one eyebrow and giving you an amused look, Darius replies, 'Yo fuckhole, you really are desperate to feel a real man against your body, ain't that right? Fine, I'll fuck your whiny ass! You better be clean down there, or we'll have some words.' Eager to get it on with the dominant dog, you [SelfStripCrotch], then demonstratively spread your cheeks for Darius.";
	say "[DariusButtJob]";

to say DariusButtJob:
	say "     The dalmatian sniffs the air in your direction and then grunts, 'You'll do, slut!' Right after that, he gives your ass a meaty slap and calls out, 'On your knees, faggot!' As you get down on the stained throw-rug in front of Darius's couch, feeling the spots of dried cum in the fabric against your naked skin, the drug dealer moves up close behind you. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you see his jeans fly to the side, kicked off by the powerful male. Something warm and firm touches the top of your shoulder a second later: the anthro dog's dick, with a reddish skin color and pointy tip. He casually grinds against your upper body for a moment, including rubbing his weighty balls against the back of your shoulder, then soon gives you a shove that sends you falling forward, catching yourself on all fours.";
	WaitLineBreak;
	say "     Darius is on top of you before you really have a chance to react, one of his strong hands pushing down on the middle of your back. Face-planting on the carpet, you find your cheek pressed into it[if player is submissive] and your arousal soaring as the canine man puts you down like the submissive slut you are[else] and some annoyance at the harsh treatment rise in you[end if]. Your eyes are still trying to focus on the peanut (or is it a pistachio?) lying just at the end of your nose when you feel Darius's breath against your ear. 'You asked for it, bitch boy! Now stay like that! Present your fuckhole like any good slut would, or I'll kick you out on the street naked!' Chuckling and licking your cheek in a possessive way, Darius then pushes himself up while bracing on your back, then takes his hand away. Even though you're no longer forced into position, you stay as you are, waiting for what the dominant male will do with you.";
	say "     'Shake that booty!' he commands, and you obey, earning you a laugh from the dalmatian. His erection gets slapped against both your buttocks, switching up between them several times, then finally slots into place right between them, resting hotly in the crack of your ass. You can feel it leaking pre-cum on the small of your back, then your ass-crack itself as Darius pulls backwards and liberally rubs his fluids over your skin with his dickhead. Soon, his strong hands grasp the sides of your hips and the dalmatian begins to thrust back and forth in the now well-lubed groove of your butt. 'You don't feel half bad, for a faggotty buttslut,' Darius tells you with a grunt in between the pants and lusty growls he makes as he grinds into you. He clearly is enjoying himself quite a bit if the dripping mess he's making of your behind is any indication. That doggy cock is leaking a lot of pre!";
	WaitLineBreak;
	say "     In between the regular humping, Darius also loves to really slam into your ass from time to time, a move that would have driven him balls deep if he had actually been fucking your hole. Now, there still is a satisfying slap as his crotch and swinging balls meet your buttocks, but the main effect his thrust has on you is that it pushes you a little across the carpet every time, since you can't really brace yourself in the [']ass up, head down['] position you're in. This goes so far that you eventually find yourself bumping against the front of the drug dealer's old couch, with it finally stopping you from getting any more rug-burn than you already have. Darius doesn't seem to care much either way, a short glimpse over your shoulder reveals that he's panting heavily as he humps your ass, eyes closed as he imagines one hot bitch or other.";
	say "     The grunts of the muscular canine do take on a bit of additional urgency as he continues to grind into your crack, interspersed with muttered words along the lines of, 'Yeah baby! Take it! Fucking hot bitch! You like the feel of my cock, don'tcha!' Soon after, things come to an explosive crescendo when Darius fingers clamp extra tight on your hips and he hammers against your ass with even greater force and his cock explodes with a geyser of cum! A heavy splurt hits the back of your head and you can feel his knot swell up between your buttocks. It rubs the sides of your ass-crack with its rounded curve as Darius continues to cum, all over your back, head and even the side of the couch. The grunting canine grips your shoulder tightly as he falls forward in the grasp of his orgasm, panting with each further shot of creamy seed that paints you white.";
	WaitLineBreak;
	say "     When Darius's orgasm eventually winds down, the dalmatian looks down at you and comments, 'Damn, what a mess. Gotta admit that you were more fun than I'd thought, fag. That ass of yours felt like a really juicy pair of tits on my shaft.' Chuckling, he stands up and takes a few steps to the side to pick up his jeans. As Darius shakes it out and prepares to get dressed, he throws you a short glance and adds, 'Hey, you should wipe yourself off, or rub it in, or whatever you freaks do. Can't have a filthy man-slut stretched out in the middle of my place. Got a rep to maintain, ya see?' With that said, he looks away, not really interested in your naked form now that he's gotten his rocks off.";
	if Lust of Darius is 0: [never did anything with a guy]
		now Lust of Darius is 1; [grinded against an ass and came]

to say DariusSex3: [ask to fuck him]
	say "     As you step up to the large canine and say that you want to fuck him, Darius bursts out with an amused chuckle and shakes his head in disbelief. 'Are you tripping on something, dude? I don't swing that way! Even if I did, I wouldn't just lift my tail for any horny bastard waltzing in here.' Waving his hand dismissively at you, he gives you an unimpressed stare, then raises one eyebrow. 'So, what now? I want some action, slut! And don't embarrass yourself with stupid offers again.'";


to say BlissedDariusSexMenu:
	LineBreak;
	now sextablerun is 0;
	say "     [bold type]What do you want to do with the unconscious hunk?[roman type][line break]";
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give him a BJ";
	now sortorder entry is 1;
	now description entry is "Suck Darius off";
	[
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his muzzle";
		now sortorder entry is 2;
		now description entry is "Face-fuck the dalmatian";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Sink your pussy onto his dick";
		now sortorder entry is 3;
		now description entry is "Ride the Dalmatian's red rocket";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sink your asshole onto his dick";
	now sortorder entry is 4;
	now description entry is "Ride the Dalmatian's red rocket";
	]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 5;
		now description entry is "Take the Dalmatian's ass";
	[]
	sort the table of fucking options in sortorder order;
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
				if (nam is "Give him a BJ"):
					say "[BlissedDariusSex1]";
				if (nam is "Fuck his muzzle"):
					say "[BlissedDariusSex2]";
				if (nam is "Sink your pussy onto his dick"):
					say "[BlissedDariusSex3]";
				if (nam is "Sink your asshole onto his dick"):
					say "[BlissedDariusSex4]";
				if (nam is "Fuck him"):
					say "[BlissedDariusSex5]";
				if PlayerFucked of Darius is false:
					now PlayerFucked of Darius is true;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the muscular dalmatian, leaving him slumped on the sofa.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BlissedDariusSex1:
	say "     Approaching the unconscious man, your eyes wander over his muscular form leaning back against the backrest of the sofa. His broad chest rises and falls in a slow and even rhythm, a sign that he's very unlikely to wake up, no matter what you do to him. Sitting down next to him, you slide a hand down over his firm pecs and abs, feeling them and the softness of his fur. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nipples and pinching them lightly would likely make him punch you if he was awake, but now all that happens is that they get hard, and even more so as you lean in and playfully suck on first one, then the other. After a little while of just enjoying Darius's chest, you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your unconscious dog.";
	say "     Wrapping your fingers around the warmth of his rod, you hold Darius's shaft upright and stroke up and down its length. He's at least ten inches long, with a nice and red shaft complete with tapered tip and the pre-knot bulge typical for canines at the base. Nice thickness too, and the furry orbs of his balls lie nicely in your hand as you cup and squeeze them. Completing your leisurely inspection of his manhood, you lean forward and lick a drop of pre off the tip. The flavor of the virile male unfolds on your tongue, making you hungry for more, so you slide your lips over his dickhead and sink down onto his shaft. Darius lets out a pleased grunt as his erection is enveloped by something warm and tight, but even this isn't enough to rouse him from his drugged slumber, so you're not slammed onto his shaft by a hand on your head but instead can take him at your own pace.";
	WaitLineBreak;
	say "     Eventually having taken the canine shaft right up to the bulge at the base, with it tickling your tonsils, you wait for a few seconds, then slide back off, playing your tongue over the shaft as you go. After pulling the head out of your mouth with a playful and intentional pop, you take some deep breaths and feast your eyes on the long piece of man-meat before your eyes. Then it's back down onto the sleeping Dalmatian's cock, sucking and bobbing on its hard length while your fingers caress his balls. Giving the drugged dealer a leisurely blow-job, your mouth is filled with his taste as he leaks pre onto your tongue in little dribs and spurts. You can feel his balls tighten a little as the anthro's arousal mounts and the bulge of his knot starts to inflate a little right before your eyes. This makes you go down on him with even greater fervor, eager to taste the strong man's load.";
	say "     It doesn't take much longer before the dalmatian lets out an urgent grunt, his hips humping up reflexively even though he is still out for the count overall. You can feel the throb in his balls and his cock as the first spurt of cum shoots out, right down your throat, followed by a second in close succession. The third splash of canine seed you take on your tongue instead, having pulled back far enough that you can taste Darius's rich man-milk. His orgasm doesn't let up for quite a while and the dal floods your mouth with his load, forcing you to gulp down cum several times just to keep from drowning in the seer volume of it. When Darius's climax eventually peters off, you feel like you had half a meal of cum in your stomach, which might just be the truth, as the anthro dog gave you a big and creamy load of protein.";
	WaitLineBreak;
	say "     Pulling off the slowly softening canine cock, you smack your lips and lick off any last dribs of cum from his dickhead, then gently lay his dick onto his abs. Tugging the jeans back into position, you raise their zipper at least as far as it was before, then stand up, leaving the dalmatian passed out on his couch and none the wiser. In all likelihood, he'll not remember a thing about what just happened here.";
	PlayerEat 15;

to say BlissedDariusSex2:
	say "...";

to say BlissedDariusSex3:
	say "...";

to say BlissedDariusSex4:
	say "...";

to say BlissedDariusSex5:
	if AnalVirgin of Darius is true: [first time]
		say "     Approaching the unconscious man, your eyes wander over his muscular form leaning back against the backrest of the sofa. His broad chest rises and falls in a slow and even rhythm, a sign that he's very unlikely to wake up, no matter what you do to him. Sitting down next to him, you slide a hand down over his firm pecs and abs, feeling them and the softness of his fur. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nipples and pinching them lightly would likely make him punch you if he was awake, but now all that happens is that they get hard, and even more so as you lean in and playfully suck on first one, then the other. The short hair of his chest tickles against your chin as you play with the dalmatian. After a little while of just enjoying Darius's chest, you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog.";
		say "     Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this powerful canine that you have in your power right now. Then you reach over to grab the wrist of the arm on his far side and start pulling. It is a definite workout to move him, broad-shouldered and muscular as he is, but with some effort you roll Darius over. Inspecting your handiwork, you can't help but grin at the fact that his open jeans slipped down a little, revealing the start of a pair of firm, furry buttocks. Planting your hands on his thighs, you give a heave and drag him off the couch just a little further, his lower body fully over the edge now. Bending those powerful anthro legs of his at the knee and planting them against the shaggy carpet, it's fairly easy to prop his ass up a little in an approximation of the classic doggy-style position.";
		WaitLineBreak;
		say "     Hands trembling a little in anticipation, you hook your fingers over the top of Darius's jeans and pull them down over his rounded rear end, then halfway to his knees. Covered in the same black and white pattern as the rest of him, the passed-out drug dealer's ass is a sweet sight to behold, and you playfully grope it, squeezing and caressing those buttocks. As you pull them apart, your target comes into sight: a pink, twinkled tail-star, obviously virgin and quite unyielding as you brush over it with a fingertip. Gathering a nice and large gob of spit, you let that drip off your tongue outstretched into Darius's crack and rub it over his pucker, then start to worm the tip of your index finger inside him. Other than a low grunt, the man doesn't react to the penetration, so you keep going, adding more spit as needed to eventually penetrate him all the way to your knuckle.";
		say "     Even with Darius passed out and unable to consciously flex and tighten his inner muscles, it's still a bit of a laborious process to open his ass up, completely virgin as it is. But of course, you can take your time since it's not like your doggy is going anywhere. You finger him playfully, especially after finding out that stroking the canine's prostate in just the right way makes his tail wag reflexively. A second finger eventually follows the first at being slowly inserted to stretch that tight chute, while your [cock of player] shaft is hard and ready to take the plunge into this big dog. A small hitch for that though is that you don't think spit will be enough to lube your entry, so you glance around, letting your eyes wander over Darius's apartment on the search for anything else you could use. With him being straight, you come up woefully short for any readily available booty lube.";
		WaitLineBreak;
		say "     Fingers curling against the Dalmatian's prostate and watching his tail wag, you wonder if your stud will be out long enough for you to go out and scavenge lube, then freeze in your tracks as an alternative springs to mind. With a grin spreading over your face, you reach down between his legs and touch the furry orbs of his balls, rolling them between your fingers and feeling their fullness. His erect cock is right beyond, hot against your hand as you take hold of it and hard as a rock. The tip is wet and dripping with copious amounts of pre. Seems you've been pushing the right buttons to get the big puppy wound up something fierce. Having found your lube-dispenser, you stand up and strip out of your clothes and gear, getting into position behind Darius with your hard dick swinging. Then you get back to stroking him, as well as rubbing his prostate at the same time, which makes the passed-out guy moan into the sofa cushions.";
		say "     The combined assault on two fronts isn't something that Darius can withstand for long, and you can feel his cock throb hard in your grasp soon after, showing that he's just about ready to blow. Now taking out your fingers from his ass, you cup the hand under the tip of his shaft and jerk him furiously, driving the anthro over the edge in short notice. Hearing him grunt, you feel the first wet splash of cum land in your hand, followed by another and another. Milking the man, you get quite an impressive load out of him, a large handful of creamy white doggy cum. Once his orgasm ebbs off, you raise the hand slowly as not to spill and, then bring it to the top of his crack. With the fingers of your other hand pressing lightly against his pucker, you let a part of the Dalmatian's cum trickle down onto them and then slide into him, lubing the drugged man up with his own seed.";
		WaitLineBreak;
		say "     Working your digits in and out of his increasingly wet and slippery hole, you finger Darius for a little while, then finally stretch his opening as far as you can with your fingers and let the lion's share of his cum slide inside. Quickly wrapping your cum-slick fingers around your [cock of player] erection, you give it a few good pumps, then line yourself up with the cream-filled opening and push in against it. Even with all the prep-work, his virgin hole resists your penetration for a second or two, before finally yielding to stretch around your girth. With a satisfied grunt, you push into the strong, passed-out male, reveling in the knowledge that it is his own doggy seed that you can feel squishing around your length as it is driven deep inside. He's tight as only a virgin can be, and you have to pause for a moment several times so you don't blow your load before you're fully inside his vice-like ass.";
		say "     When you finally bottom out inside the helpless, drugged male, you can't help but chuckle at doing this to such a straight macho man. Hands wandering over his broad, muscular back, you enjoy your dominance over him as you pull out almost all the way and ram yourself home once more, drawing a grunt from the anthro. His hole flexes a little in reaction to you sliding against his prostate, giving you an amazing sensation that has you wanting more. Letting yourself be drawn in by the feelings that his sweet little hole gives you, the slap of your hips against his ass quickly comes faster and faster as you build up a solid rhythm. Soon, you're humping Darius like a stag in rut, driving yourself deep and grinding against his ass before withdrawing again.";
		WaitLineBreak;
		say "     Your hands gravitate to his hips all of their own as you fuck Darius, getting a firm grip of him so that you can pull him towards every new thrust into that amazingly tight, yet yielding chute. As good as he feels around you, a familiar feeling of tightness rises in your balls before much longer. A grand finale, you wrench your shaft fully from his hole with a wet pop and watch the opening pull tight reflexively, glistening from the spit, cum and pre used to lube it. Then you hammer into him with a single thrust, only stopping when your balls press against his furry buttocks and you erupt into his innermost depth. Spurt after spurt of cum wash over his inner walls, claiming his ass as having been conquered by your craftiness and virility. Panting, you sink down on Darius's back as you continue to flood his fuckhole with your seed, enjoying the softness of his fur and the masculine aroma that rises in your nose.";
		say "     Staying on top of - and inside - the dalmatian until your orgasm eventually ebbs off, and some time after that too, you savor the moment of having taken his cherry, then slowly withdraw yourself from his ass. Looking down at it, you see his pucker squeeze tight, looking pretty much as it did before you started, except for the fact that a dollop of cum is pushed out by the contraction. Sighing at the guaranteed explosion of outrage should Darius ever realize what you did today, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab the cum off him, then slip a finger inside his hole to remove what more you can reach. Surprisingly, it isn't much, even as you go knuckle-deep several times and wipe your digit clean. Maybe you shot so deep in his amazingly tight hole that it won't leak out?";
		WaitLineBreak;
		say "     With a grin at the lucky turn of easy cleanup, you bunch up all the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, especially after just having orgasmed, but you manage to get him mostly dressed again and stretched out on the sofa, lying on his front. As you lift his hips a little to pull the jeans back into place at his front, you can feel wetness from his cock, leaking some little amount of cum onto the couch. You wonder for a moment if that might be something which could betray your activities, but then several other telltale stains on the cushions, making it clear that this is far from the first time someone had sex on the piece of furniture. All of your cleanup tasks now dealt with, you get dressed and take up your gear once more.";
		now AnalVirgin of Darius is false;
	else: [repeat fucking]
		say "     Approaching the unconscious man for another bit of sexy fun, your eyes wander over his muscular form leaning back against the backrest of the sofa. His broad chest rises and falls in a slow and even rhythm, a sign that he's very unlikely to wake up, no matter what you do to him. Sitting down next to him, you slide a hand down over his firm pecs and abs, feeling them and the softness of his fur. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nipples and pinching them lightly would likely make him punch you if he was awake, but now all that happens is that they get hard, and even more so as you lean in and playfully suck on first one, then the other. After a little while of just enjoying Darius's chest, you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog.";
		say "     Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this powerful canine that you have in your power right now. Then you get up and move between his legs, sliding your hands down his sides until you arrive at the edge of his jeans and pushing them under him. Giving Darius's hips a lift, you hook your fingers under his jeans and pull, sliding the open pants over his buttocks and off his hips entirely. After that, you tug his hips just past the edge of the sofa cushions and push his legs together, allowing you to easily pull the piece of clothing down along their length, finally pulling it off and throwing it aside. Darius is now fully naked on the sofa, still passed out and hard as a rock. Your own [cock of player] shaft grows more erect by the second as you think back to popping the macho dalmatian's cherry, and you quickly strip down to get ready for another go at his sweet ass.";
		WaitLineBreak;
		say "     With a grin on your face, you spread Darius's legs and crouch down between them. One hand goes straight for his cock, wrapping its fingers around the hard pole of his red rocket, the other comes to rest on his furry balls, rolling them between your fingers and giving light squeezes to the well-filled cum factories. Your drugged doggie lets out a low grunt as you squeeze the slight bulge of his pre-knot at the base of his cock, but sleeps on peacefully other than that, even as you go on to masturbate him right away. Hand sliding up and down over the hot shaft of his, you enjoy the knowledge that you're the one in power right now and pump him in anticipation of what will come next. Given your singular attention at getting him off and the quick rhythm of stroking and caressing you're subjecting the man to, it doesn't take all that long before he tenses on the sofa.";
		say "     Darius lets out a groan as his hips hump up reflexively just in time for a first large gush of cum shooting from his dickhead and right into your cupped palm. Milking him for more of his slick and creamy seed, you gather every drop you can, then bring your hand down between his legs. Dipping a finger in the canine seed, you extend the digit between his buttocks and brush over the unconscious drug dealer's pucker. Wiggling the tip of your finger, you're inside him a heartbeat later, sliding deeper steadily and seeking out the special spot you know lies in there. With a playful brush against his prostate, you cause his tail to wag rapidly, beating against the side of the sofa. Even though he is still almost as tight around your finger as when he was an anal virgin, you can feel the difference clearly, as his opening and chute stretch more readily than before. Might be the result of you breaking him in well, or some nanite magic, but it's not all that important in the end.";
		WaitLineBreak;
		say "     After going back for more cum-lube a few times and slipping him two fingers before much longer, you wrap the hand with the rest of Darius's load around your own erection. Stroking up and down along your length, you get your cock literally dripping wet with canine cum. Eager to bury yourself in the strong male, the next thing you do is lifting his legs and hooking them over your shoulders as you line yourself up with his opening. As your dickhead touches his pucker, you look up at Darius's face, seeing his eyebrows draw together to accompany a wince when you pop inside him. Yet after you slide into his hole and your shaft rubs the sensitive prostate inside, his features relax and even seem to betray some pleasure, with his tongue flopping out the side of Darius's muzzle. Warm and tight, the large male feels amazing around your cock and you sink yourself inside his ass with relish, only stopping when you're buried balls deep.";
		say "     Holding that position for a moment, you let your eyes wander over the drug dealer, gleefully taking it all in: A strong, dominant guy, laid out helplessly before you, naked and now impaled on your cock! Secure in the knowledge that if he didn't wake up from you pushing your dick into him, there is little chance of anything else rousing Darius right now, you lean forward and playfully pinch his nipples, getting them hard and pointy. Then you start thrusting into his ass, sliding your dick out till just the tip is in, followed by a harsh jab forward that feels oh so very good. He's yours to use for your own pleasure right now, and you savor the chance to enjoy the anthro's tight hole, railing him in a steady rhythm. Funnily, his tail is wagging up a storm beneath, as rubbing his prostate in the right way apparently gets it moving in some sort of automatic reflex even if the doggy is passed out. Hands gripping Darius's thighs tightly as you fuck the man, you keep a firm hold of him.";
		WaitLineBreak;
		say "     Hammering into that amazingly tight, yet yielding chute, a familiar feeling of tightness rises in your balls before much longer. A grand finale, you wrench your shaft fully from his hole with a wet pop and watch the opening pull tight reflexively, glistening wetly from his cum and your pre. Then you hammer into him with a single thrust, only stopping when your balls press against his furry buttocks and you erupt into his innermost depth. Spurt after spurt of cum wash over his inner walls, reaffirming your claim on his ass and proving by your craftiness and virility. Panting, you sink down on Darius's chest as you continue to flood his fuckhole with your seed, enjoying the softness of his fur and the masculine aroma that rises in your nose. Staying on top of - and inside - the dalmatian until your orgasm eventually ebbs off, and some time after that too, you savor the moment of having bred him yet again, then slowly withdraw yourself from his ass.";
		say "     Looking down at it, you see his pucker squeeze tight, looking pretty much as it did before you started, except for the fact that a dollop of cum is pushed out by the contraction. Sighing at the guaranteed explosion of outrage should Darius ever realize what you did today, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab the cum off him, then slip a finger inside his hole. Going knuckle-deep several times and wiping off only small dabs of cum, you start thinking that there just might be something to the theory you thought up before. Maybe it is true that you shot so deep in his amazingly tight hole that it won't leak out. Or Darius is just a born'n bred cumdump of course.";
		WaitLineBreak;
		say "     With a grin at the easy cleanup, you bunch up all the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, especially after just having orgasmed, but you manage to get him mostly dressed again and stretched out on the sofa, lying on his back. All of your cleanup tasks now dealt with, you get dressed and take up your gear once more.";


Darius ends here.
