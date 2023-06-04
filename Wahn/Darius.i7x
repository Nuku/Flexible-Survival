Version 1 of Darius by Wahn begins here.
[Version 1 - New Character]

[ Character Info:                                               ]
[                                                               ]
[ Darius - Anthro Dalmatian Drug Dealer                         ]
[ - straight, looks down on gay interactions                    ]
[ - loves his dog (not sexually)                                ]
[ - has several bitches in the adjoining flats (mostly forceful ]
[   transformations of unwilling women and men)                 ]
[                                                               ]
[ Ulysses - Darius's Dalmatian dog                              ]
[ - protective of Darius, the bitches, growls/nips at others    ]
[ - fine with Tyke, as the big Doberman feeds him treats        ]
[                                                               ]
[ Tyke - Very muscular Doberman, best bud of Darius             ]
[ - keeps watch over Darius's place when he's out walking the   ]
[   (in exchange for being able to drink what he wants)         ]
[ - fucks around with Joshiro                                   ]
[ - less down on gay stuff than Darius                          ]

[
Scene Idea: Someone is being chased in the streets past Darius and he steps in, beating up the attacker (justification: because the chased guy is a customer of his)
]

[ DariusLostItems                                               ]
[   0: not found anything                                       ]
[   1: Tape 1 found                                             ]
[   2: Tape 2 found                                             ]
[   3: Tapes 1+2 found                                          ]

[ Lust of Darius - sex with men tracking                        ]
[   0: starting state                                           ]
[   1: grinded on an ass and came                               ]
[   2: fucked player ass                                        ]

[ Libido of Darius - aching ass after sex                       ]
[   0: not fucked                                               ]
[   1: recently de-virginized anally                            ]
[   2: recently fucked in the ass                               ]

[ Stamina of Darius - drug status                               ]
[   0: normal                                                   ]
[   1: player spiked one beer                                   ]
[   2: player spiked all beers                                  ]
[   3: unconscious and horny (once)                             ]
[   4: unconscious and horny (every night)                      ]

[ Energy of Darius - Drug Dealing Encounters                    ]

[ Planning                                                      ]
[   Add mention of Darius's Dalmatian (feral, original) dog     ]
[   being the guard of the apartment(s) next door)              ]


DariusLostItems is a number that varies.

Section 1 - Events

after going to Darius's Crib while (HP of Darius is 0 and Darius is in Darius's Crib):
	try looking;
	project the Figure of Darius_face_icon;
	say "     Entering the apartment, you are greeted by an anthro Dalmatian, who grins broadly as he sees you. 'Hey there, I'm Darius.' Some barks coming from the apartment next door distract him after that, and the big male turns his head to shout towards the hole in the wall, 'Keep it down, will ya? Got a customer here!' Chuckling about the noise instantly being reduced, he directs his attention back to you, 'So anyways, want a fix? I got some primo stuff laid out over here.'";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

after going west from Boundary Street East while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	try looking;
	project the Figure of Darius_face_icon;
	say "     Arriving at the street corner, you see an anthro Dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Yo homie! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the tough guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

after going east from Boundary Street West while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	try looking;
	project the Figure of Darius_face_icon;
	say "     Arriving at the street corner, you see an anthro Dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Yo homie! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the tough guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
	now HP of Darius is 1; [player knows his name]
	now PlayerMet of Darius is true;

instead of navigating Entrance to the Red Light District while (HP of Darius is 0 and Darius is in Entrance to the Red Light District):
	say "[NavCheck Entrance to the Red Light District]";
	if NavCheckReturn is false, stop the action;
	move player to Entrance to the Red Light District;
	project the Figure of Darius_face_icon;
	say "     Arriving at the street corner, you see an anthro Dalmatian just casually leaning against a nearby wall. He waves at you and calls out, 'Yo homie! I'm Darius.' Seems like the guy is unconcerned about any hostile intent on your part. Looking at the tough guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
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
		let randomnumber be a random number from 1 to 7;
		if randomnumber is 1 and DariusLostItems is 1: [already found tape #1]
			increase randomnumber by 1;
		else if randomnumber is 2 and DariusLostItems is 2: [already found tape #2]
			decrease randomnumber by 1;
		else if randomnumber < 3 and DariusLostItems is 3:
			increase randomnumber by a random number from 2 to 3;
		if randomnumber is:
			-- 1:
				say "You're just about to give up on the search when you do spot a video tape underneath the couch. Reaching into the dusty crack between it and the floor, you have to strain yourself and stretch your fingers to reach it. The tape looks like a home video. From where you found it, and with the power off anyways, you don't think it'll be missed anytime soon, so you pocket the little square of plastic.";
				add "Darius's Home Vid 1" to tapes of Player;
				if DariusLostItems is 0:
					now DariusLostItems is 1;
				else if DariusLostItems is 2:
					now DariusLostItems is 3;
			-- 2:
				say "You're just about to give up on the search when you remember to check the cracks between the cushions of the couch. Digging around, your fingers encounter numerous pistachio shells, then eventually close around a video tape that you draw out. It looks like a private home video. From where you found it, and with the power off anyways, you don't think it'll be missed anytime soon, so you pocket the little square of plastic.";
				add "Darius's Home Vid 2" to tapes of Player;
				if DariusLostItems is 0:
					now DariusLostItems is 2;
				else if DariusLostItems is 1:
					now DariusLostItems is 3;
			-- 3:
				say "Under the couch cushions, you find an old porn mag. Looks like it was a favorite issue, given that its pages are stuck together with dried cum.";
			-- 4:
				say "On a shelf in the corner, you see a little row of pictures. One shows a muscular black man with a gold chain around his neck holding a Dalmatian with a red collar in his arms, then there's the same guy with three others, beers in hand, and finally a younger version of the black dude, flanked by an elderly man with a hand on his shoulder. Father and son, you'd guess by their similar looks.";
			-- 5:
				say "You find an old pizza box and hurry to close it up again after seeing that something is growing on the inside.";
			-- 6:
				say "A few worn-out boots are standing near the entrance, clearly unused for a while.";
			-- 7:
				say "You find a few pairs of discarded pants that seem to have been failed experiments in cutting a proper and comfortable hole to stick a tail through.";
	else if calcnumber is 2:
		LineBreak;
		say "     Wandering into the kitchen, you open up the cupboards and check them out, finding mostly pots and pans. In a corner behind the kitchen counter, there is a cooler filled with fresh snow, in which half a dozen bottles of beer are chilling. Taking one of them out, you see that it's some kind of craft beer with a flip-top. Sadly, even though there are so many bottles, you're quite sure that its absence would be noticed, so you return the beer to where it came from.";
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
				ItemLoss Bliss Tablet by 12;
			else if calcnumber is 2:
				LineBreak;
				say "     Snatching up a bottle again, you slowly and carefully pull the flip-top to the side, then drop your Bliss tablet into the opening before closing the beer back up. Settling the bottle back between its siblings, you replace the lid of the cooler, then wander back to the middle of the room.";
				now Stamina of Darius is 1;
				ItemLoss Bliss Tablet by 1;
			else:
				LineBreak;
				say "     With a shrug, you put the lid back on the cooler and wander back to the middle of the room.";
		else if carried of Bliss Tablet > 1:
			say "     [bold type]Do you want to dose a bottle with Bliss?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yeah, that could be fun.";
			say "     ([link]N[as]n[end link]) - No, you don't want to drug any of the beer.";
			if Player consents:
				LineBreak;
				say "     Snatching up a bottle again, you slowly and carefully pull the flip-top to the side, then drop two Bliss tablet into the opening before closing the beer back up. Settling the bottle back between its siblings, you replace the lid of the cooler, then wander back to the middle of the room.";
				now Stamina of Darius is 1;
				ItemLoss Bliss Tablet by 1;
			else:
				LineBreak;
				say "     With a shrug, you put the lid back on the cooler and wander back to the middle of the room.";
		else if carried of Bliss Tablet is 1:
			say "     For a moment, the thought of dosing Darius with some of his own drugs comes to mind. Remembering that you just have the one Bliss Tablet though, aren't sure if one would really affect Darius or not. There's a chance that he has tried the drug before, so most likely, you'll need at least two for them to give him a kick. With that in mind, you put the lid back and wander to the middle of the room.";
		else: [no bliss owned]
			say "     As you put the lid back on the cooler, an idle thought comes to your mind and you begin wondering if you could spike the beers with something fun instead of taking them. [bold type]Maybe some of Darius's own lust drugs could be a poetic thing to use on the Dalmatian. [roman type]With that in mind, you wander back to the middle of the room.";
	else:
		LineBreak;
		say "     You keep your hands to yourself, not touching anything in your surroundings.";

Table of GameEventIDs (continued)
Object	Name
JoshiroEncounterTale 1	"JoshiroEncounterTale 1"

JoshiroEncounterTale 1 is a situation.
ResolveFunction of JoshiroEncounterTale 1 is "".
Sarea of JoshiroEncounterTale 1 is "Nowhere".

after going to Darius's Crib while (JoshiroEncounterTale 1 is active and JoshiroEncounterTale 1 is not resolved and a random chance of 1 in 3 succeeds and HP of Darius > 0 and Darius is in Darius's Crib):
	project the Figure of Tyke_clothed_icon;
	say "     As you enter the short hallway to Darius's dingy apartment, you hear voices from ahead. Peeking into the room, it becomes clear that the Dalmatian has another visitor right now. A towering Doberman is standing next to Darius, sporting a ripped physique with a V shaped torso. He is dressed in little but a bandanna around his neck and a flimsy pair of shorts with a broad belt at the top. The outline of his weighty cock is very clearly visible through the fabric. Both canines are holding bottles of beer in their hands. As Darius's visitor takes a swallow from his, barks from what sounds like puppies come from the apartment next door, through the hole that has been knocked into the connecting wall. 'Man, you're one lucky dude Dar. Just grabbing yourself a bitch right from the street and having all the tail you need at home, all the time.' The spotted canine laughs and grins at his buddy, 'What can I say Tyke, you just gotta know how to pick [']em. Hannah is a great bitch, even if she started out as a dude. But not for long once she felt my dick of course.'";
	say "     The Doberman's eyes go wide and he makes a choking sound as his beer goes the wrong way, then coughs and gapes at Darius. 'You lucky dog! So she just switched to a babe right away? I'm still not used to how things work these days. Or maybe they don't do so for everyone. Bitches haven't been all that plentiful for myself I have to say.' Tyke is silent for a few seconds, then adds, 'For example, when things were just starting out with all this shit, an Asian dude crossed my path one morning. I thought I'd just threaten him a little bit and get his money, try out my new bod, but nope, even though he was just a human, he was ready to throw down and we tussled. Had crazy moves and all that shit, that guy. And the weirdest part was - he kept rubbing my junk as he passed me. Couldn't help but get hard from the friction. Then he kicked my paws out from under me and before I know it, the freaky faggot was ramming his ass down my dick!'";
	WaitLineBreak;
	say "     Tyke grumbles as Darius lets out a full-throated laugh and murmurs, 'Yeah yeah, you're lucky we're friends. What am I supposed to do if most people I run into are fucking flamers who just want to ride my cock? I'm not gay or anything, but some of them admittedly do have some sweet holes on them.' A visible twitch goes through the cock barely contained by Tyke's shorts, prompting Darius to comment, 'Seriously? Chubbing up for the love of your life?' The dobie gives him a punch in the shoulder and replies, 'Oh please! Just saying that the dude had a tight ass that really milked my cock. And a huge ego too - 'Joshiro Arashi wins again!' he shouted, raising his arms and posing as if people were taking photos of him bouncing on my cock and being blasted full of nut-milk. Bastard splattered me with his come too, then pulled off my dick and just strutted away.'";
	say "     Darius looks at the other canine thoughtfully and smirks. 'Wait, he just stayed human? Man, I think you're shooting blanks or something. Hannah turned right before my eyes in just a few moments. And you know that she's a fully working bitch. I've got enough puppies to prove it.' The large Doberman replies, 'Nope, that's not it. I left my share of dobie converts out there over the last little while.' 'Yeah, all dudes who sucked you off I bet,' Darius bursts out in amusement. 'Okay, fuck this. I'll go find myself a bitch right now! Can't call me a fag if I drag a preggers puppy machine here, can you?!' Tyke scoffs and grumbles at his buddy, then stomps out of the apartment, passing you without a glance and throwing the front door shut behind him as he leaves.";
	now JoshiroEncounterTale 1 is resolved;

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Darius	"Darius"

Darius is a man.
Darius is in Darius's Crib.
ScaleValue of Darius is 3. [human sized]
Body Weight of Darius is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Darius is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Darius is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Darius is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Darius is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Darius is 5. [length in inches]
Breast Size of Darius is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Darius is 2. [count of nipples]
Asshole Depth of Darius is 8. [inches deep for anal fucking]
Asshole Tightness of Darius is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Darius is 1. [number of cocks]
Cock Girth of Darius is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Darius is 11. [length in inches]
Ball Count of Darius is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Darius is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Darius is 0. [number of cunts]
Cunt Depth of Darius is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Darius is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Darius is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Darius is false.
PlayerRomanced of Darius is false.
PlayerFriended of Darius is false.
PlayerControlled of Darius is false.
PlayerFucked of Darius is false.
OralVirgin of Darius is false.
Virgin of Darius is true.
AnalVirgin of Darius is true.
PenileVirgin of Darius is false.
SexuallyExperienced of Darius is true.
TwistedCapacity of Darius is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Darius is false. [steriles can't knock people up]
MainInfection of Darius is "Dalmatian Male".
Description of Darius is "[DariusDesc]".
Conversation of Darius is { "<This is nothing but a placeholder!>" }.
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

an everyturn rule: [TODO: add chances for Tyke and the bitches to appear]
	if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
		if Stamina of Darius is 1: [one beer spiked with Bliss]
			if Player is in Darius's Crib and Darius is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Stopping by the kitchen, the Dalmatian drug dealer gets a bottle of beer and sips from it. For a moment, you wonder if that was the one you doctored, and after just a little while, it becomes clear that it was. As the large man keeps drinking, the extra ingredient in his booze has a noticeable effect on him, as he gets quite visibly hard in his pants as well as a bit wobbly on his legs. 'Got quite a kick, this one. Top grade craft beer, I tell you,' Darius comments with slightly slurred words and stumbles a little as he makes his way to the couch, dropping onto it. Lifting the bottle once more, he takes another large swig, then calls out to you, 'Getting kinda late. So, buzz off and come back tomorrow if you want some stuff.' With that said, he waves you to the door and starts rubbing his bulge, not even looking if you're really going.";
				say "     You make a few steps that way, but before you're even halfway there, you hear a thunk from behind you. Looks like Darius passed out and dropped is bottle, with the remains of the beer leaking into the carpet now. He's slumped backwards on the couch, the front of his jeans half-open. This would be a perfect opportunity to have some fun with the guy and not have to worry about his domineering personality.";
				wait for any key;
			now Stamina of Darius is 3; [passed out and horny, once]
		else if Stamina of Darius is 2: [all beers spiked with Bliss]
			if Player is in Darius's Crib and Darius is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Stopping by the kitchen, the Dalmatian drug dealer gets a bottle of beer and sips from it. Remembering that you spiked every last one of them, you suppress a grin and keep watching, eager to see the results of your little trick. As the large man keeps drinking, the extra ingredient in his booze has a noticeable effect on him, as he gets quite visibly hard in his pants as well as a bit wobbly on his legs. 'Got quite a kick, this one. Top grade craft beer, I tell you,' Darius comments with slightly slurred words and stumbles a little as he makes his way to the couch, dropping onto it. Lifting the bottle once more, he takes another large swig, then calls out to you, 'Getting kinda late. So, buzz off and come back tomorrow if you want some stuff.' With that said, he waves you to the door and starts rubbing his bulge, not even looking if you're really going.";
				say "     You make a few steps that way, but before you're even halfway there, you hear a thunk from behind you. Looks like Darius passed out and dropped is bottle, with the remains of the beer leaking into the carpet now. He's slumped backwards on the couch, the front of his jeans half-open. This would be a perfect opportunity to have some fun with the guy and not have to worry about his domineering personality.";
			now Stamina of Darius is 4; [nightly passed out state]
		else:
			if Player is in Darius's Crib and Darius is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Stopping by the kitchen, the Dalmatian drug dealer gets a bottle of beer and sips from it. Casually drinking his booze, he eventually comments to you, 'Getting kinda late. Go on and clear out. You can come back tomorrow if you want anything.' With that, the big man shoos you out of his apartment building, pushing the front door shut behind you. The lock is still busted, so you could just walk back in, but no doubt Darius will take the time to pack away all his goods before he enjoys himself with his bitches.";
				wait for any key;
				move player to Boundary Street East;
			now Darius is nowhere;
	[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Darius sleeps]
	[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Darius sleeps in]
	else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
		if Stamina of Darius is 3 or Stamina of Darius is 4: [passed out after once getting dosed]
			if Player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				if Libido of Darius is 1: [after his cherry was popped]
					say "     Slowly waking up from his drunken slumber, Darius finds himself slumped on the couch and pushes himself up with a groan. 'Damn, must have lain down wrong last night on this broke-ass old couch! I should ask Tyke to help me loot a new one.' As the Dalmatian says this, he rubs his lower back and ass, trying to get over the ache he is feeling there, none the wiser that it is from you taking his virginity earlier. Eventually, the guy grunts annoyedly and gets up, putting his pants back in order. Then he notices you being there and puts on his usual toothy smile. With a somewhat predatory expression, he says, 'Hey there. What can I do for ya, dawg? Wanna buy some of the good stuff?'";
				else if Libido of Darius is 2: [after anal sex]
					say "     Slowly waking up from his drunken slumber, Darius finds himself slumped on the couch and pushes himself up with a groan. 'Damned cheap couch. Every time I doze up in here, I'm all itchy afterwards!' As the Dalmatian says this, he reaches behind himself and rubs his ass, trying to get over the ache he is feeling there, none the wiser that it is from you humping and breeding his ass. Eventually, the guy grunts annoyedly and gets up, putting his pants back in order. Then he notices you being there and puts on his usual toothy smile. With a somewhat predatory expression, he says, 'Hey there. What can I do for ya, dawg? Wanna buy some of the good stuff?'";
				else: [non anal aftermath of drugging]
					say "     Slowly waking up from his drunken slumber, Darius finds himself slumped on the couch and looks down over himself with a groan. 'Must have jerked off in my sleep or something, but fuck if I remember anything about it,' he mumbles to himself and shakes his head slowly to clear it. With a grunt, the Dalmatian then gets up and puts his pants back in order, only not actually noticing your presence. He puts on his usual toothy smile and looks at you somewhat predatorily as he says, 'Hey there. What can I do for ya, dawg? Wanna buy some of the good stuff?'";
			if Stamina of Darius is 3: [drugged only once]
				now Stamina of Darius is 0; [no beers drugged]
			else:
				now Stamina of Darius is 2; [back to spiked beers]
			now Libido of Darius is 0; [reset of his anal state]
		else: [normal wake-up]
			if Player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				if HP of Darius is 0: [never seen before]
					say "     A muscled Dalmatian comes into the room through the broken wall of the apartment next door. He seems unconcerned with finding you in his apartment, simply nodding to acknowledge your presence. 'Oh hey, new customer looking for a fix? I'm Darius. What can I do for ya, dawg?'";
					now HP of Darius is 1;
					now PlayerMet of Darius is true;
				else:
					say "     Walking into the room through the broken wall of the apartment next door, Darius grins broadly as he finds you waiting for him. 'Looks like someone really needs his fix. What can I do for ya, dawg?'";
			move Darius to Darius's Crib;
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
		if Player is in Darius's Crib:
			project the Figure of Darius_face_icon;
			say "     The muscular Dalmatian strolls into the kitchen and grabs a can-opener from a drawer, then explains, 'Gotta feed Ulysses, and the bitches.' With a grin on his face, he vanishes through the hole in the wall into the apartment next door, returning a little while later with a big can of [one of]ravioli[or]pineapple[or]peaches[or]beans[or]breakfast meat[or]sausages[or]apple sauce[at random] for himself. Grabbing some plastic cutlery from an industrial sized pack of it, the anthro canine hungrily chows down, eventually throwing the remnants of his meal into a large trashcan and belching in satisfaction.";
	else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
		if Player is in Darius's Crib:
			project the Figure of Darius_face_icon;
			say "     Grabbing a porno mag from a pile in one of his shelves, Darius casually saunters over to his couch and sits back on it, paging through his entertainment and jerking off in an unhurried pace. He doesn't seem to care that you're right there in the room with him and just goes to town, right until the eventual messy finish that adds some more stains to the throw rug in front of the couch.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
		if Player is in Darius's Crib:
			project the Figure of Darius_face_icon;
			say "     'I'm gonna go out for a while,' Darius calls over towards the hole into the next apartment and gets some barks in reply. Then he turns to you and shoos you out of his place of business, pushing the apartment building's front door shut behind you. The lock is still busted, so you could just walk back in, but not before Darius packs his goods away. A short while later, he comes out and walks down the street.";
			wait for any key;
			move player to Boundary Street East;
		else if Player is in Entrance to the Red Light District:
			project the Figure of Darius_face_icon;
			if HP of Darius is 0: [never seen before]
				say "     An anthro Dalmatian comes walking down the street from the east and casually leans against a wall from where he can easily overlook the whole crossroads area. 'Oi there! I'm Darius,' he calls out to you in greeting, unconcerned about any hostile intent on your part. Looking at the though guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
				now HP of Darius is 1;
				now PlayerMet of Darius is true;
			else:
				say "     Darius comes walking down the street from the east and casually leans against a wall from where he can easily overlook the whole crossroads area. The anthro Dalmatian looks unconcerned about any creatures that might come along and get any ideas for him. Looking at the though guy attitude of the male dog, with his muscled upper body, heavy golden neck chain and only a sagging pair of jeans as a sole item of clothing, you can't help but feel like he can indeed take care of himself no matter what.";
		move Darius to Entrance to the Red Light District;
	else if TimekeepingVar is 2 or TimekeepingVar is -6:
		if HP of Darius is 0: [never seen before]
			if Player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Coming into this place from outside, an anthro Dalmatian grins broadly as he finds you waiting for him. 'Hey there, I'm Darius. Looks like someone really needs his fix. What can I do for ya, dawg?'";
			else if Player is in Boundary Street East:
				project the Figure of Darius_face_icon;
				say "     An anthro Dalmatian comes strolling down the street from the west in an unhurried tempo, then stops for a second to say, 'Hey there, I'm Darius. You look like you could use some of my goods. Wanna come in and buy something?' He doesn't wait for a reply and simply enters an apartment building in the southeast, leaving you to decide if you want to follow after him.";
			else if Player is in Entrance to the Red Light District:
				project the Figure of Darius_face_icon;
				say "     An anthro Dalmatian pushes himself off the wall he was leaning against just as you arrive. He gives you a nod in greeting and says, 'Hey there, I'm Darius. You look like you could use some of my special goods. Why don't you come join me in my crib and we can talk business?' Not waiting for a reply, he wanders off to the east in an unhurried tempo. Watching the muscled canine go, you can't help but feel like he is daring any stupid creature with ideas to attack him.";
			now HP of Darius is 1;
			now PlayerMet of Darius is true;
		else:
			if Player is in Darius's Crib:
				project the Figure of Darius_face_icon;
				say "     Coming into his place from outside, Darius grins broadly as he finds you waiting for him. 'Looks like someone really needs his fix. What can I do for ya, dawg?'";
			else if Player is in Boundary Street East:
				project the Figure of Darius_face_icon;
				say "     Darius comes strolling down the street from the west in an unhurried tempo, then enters his apartment building in the southeast, giving you a casual nod as he passes you.";
			else if Player is in Entrance to the Red Light District:
				project the Figure of Darius_face_icon;
				say "     Darius pushes himself off the wall he was leaning against and walks off to the east in an unhurried tempo. Watching the muscled canine go, you can't help but feel like he is daring any stupid creature with ideas to attack him.";
		move Darius to Darius's Crib;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Darius_Dogwalk_First"	Darius_Dogwalk_First	"[EventConditions_Darius_Dogwalk_First]"	Darius's Crib	2500	6	30

to say EventConditions_Darius_Dogwalk_First:
	if PlayerMet of Darius is true and Darius is in Darius's Crib: [Player knows Darius, he's inside]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Darius_Dogwalk_First	"Darius_Dogwalk_First"

Darius_Dogwalk_First is a situation.
ResolveFunction of Darius_Dogwalk_First is "[ResolveEvent Darius_Dogwalk_First]".
Sarea of Darius_Dogwalk_First is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Darius_Dogwalk_First:
	if debugactive is 1:
		say "     DEBUG: Darius taking his dog for a walk (first time).[line break]";
	say "     Walking up to the door of Darius's apartment, you see it opening ahead of you and the Dalmatian standing in the doorway, leash in hand. Behind him, ";
	if "Ulysses Introduced" is not listed in Traits of Darius:
		say "there's a big and fairly large dog with the leash clipped to his red collar, wagging his tail and eager to get out for a walk. ";
	else:
		say "Ulysses waits with his tail raised high and wagging, eager to get out for a walk. ";
	say "Glancing over his shoulder, Darius calls out, 'Gonna be out for a little while, thanks for keeping an eye on things Tyke! And don't finish off all my beer while you do, hah!' and a deep voice from within the apartment calls out, 'Sure thing, man!' With a satisfied smile, the canine drug dealer then steps out into the hallway with you, swinging the door shut behind his dog. 'If you're here to buy some stuff, I gotta disappoint ya. Shop's closed while I take Ulysses for a walk,' Darius says matter of factly as he redirects his attention to you. Meanwhile, the four-legged dog at his side sits down, patiently waiting for his master, and gets a casual pet on the head from Darius.";
	say "     Seeing Ulysses be very relaxed and calm next to Darius, ";
	if "Ulysses Introduced" is not listed in Traits of Darius: [first time]
		say "you find yourself wanting to reach out and pet him too. ";
		if "Buttslut revealed" is not listed in Traits of Darius:
			say "But as you do, a grin spreads over Darius's muzzle and Ulysses tries to take a chunk out of your hand, snapping his teeth just an inch short of your outstretched fingers as Darius tugs him back with a hand on the red collar around the dog's neck. 'Hahaha! He almost had ya! Man, the expression on your face was just priceless! But yeah, don't touch my boy. He's really protective.'";
		else:
			say "As you do, the dog keeps calm and leans into your touch, which has Darius raise an eyebrow in a surprised expression. 'Weird, he's usually really protective.'";
	else:
		say "you find yourself wanting to reach out and pet him too. ";
		if "Buttslut revealed" is not listed in Traits of Darius:
			say "But you nevertheless keep your hands to yourself, since you know that Ulysses is rather protective and prone to nipping at people outside his pack.";
		else:
			say "As you do, the dog keeps calm and leans into your touch, which has Darius raise an eyebrow in a surprised expression. 'Weird, he's usually really protective.'";
		TraitGain "Ulysses Introduced" for Darius;
	say "[Darius_Walk_Choicepoint]";
	now Darius_Dogwalk_First is resolved;

to say Darius_Walk_Choicepoint:
	let Darius_Walk_Choices be a list of text;
	add "Ask if you can join them on their walk around the block." to Darius_Walk_Choices;
	add "Give Darius a nod and leave the building." to Darius_Walk_Choices;
	add "Try to walk past Darius and go into his aparement." to Darius_Walk_Choices;
	let Darius_Walk_Choice be what the player chooses from Darius_Walk_Choices;
	if Darius_Walk_Choice is:
		-- "Ask if you can join them on their walk around the block.": [friendly]
			LineBreak;
			say "     Darius gives you a look with a raised eyebrow, then shrugs his broad, muscular shoulders. 'It's a free country, I don't own the roads - yet, hah!' Then he makes a clicking sound with his tongue, which immediately gets Ulysses standing up and ready to move out. You join in beside them, walking out onto the streets. The route of the walk is a bit of a zigzag, with various piles of trash, wrecked cars and scattered clothing either to be avoided, or closely inspected with a canine nose, as Darius lets Ulysses fairly free roam for the length of his leash. The tough guy definitely sets the overall direction of where you're going, as overly enthusiastic pulling by the dog is immediately curtailed with just a quick tug or verbal command. Overall, the trip around the block is fairly peaceful. Even in the rough surroundings of the Red Light District, most lust-crazed beasts shy away from attacking a group of three.";
			say "     Eventually arriving back at the apartment, Darius leads the way inside, where you see a very large and muscular doberman lounging on the couch. 'Thanks for watching my shit, Tyke.' the Dalmatian drug dealer tells his friend, giving him a fist-bump before the other guy gets going. Then Darius un-clips Ulysses from the leash and sends him through the break in the wall, to guard the bitches that are in the adjoining flats. 'So, you were wanting to buy something? Or what did you want?' the street tough finally asks once you're alone.";
		-- "Give Darius a nod and leave the building.":
			LineBreak;
			say "     With a shrug, you take a step back and then turn around, walking outside closely followed by the pair of Dalmatians.";
			move Player to Boundary Street East;
		-- "Try to walk past Darius and go into his aparement.":
			LineBreak;
			say "     The drug dealer immediately tenses up, raising a hand to stop you. 'Hey, I told ya the store's closed. You'll just have to come back later. And you'd not get far anyways, with Tyke keeping an eye on things! So scram!' A low growl from the dog by his side underlines Darius's command. With a shrug, you take a step back and then turn around, walking outside closely followed by the pair of Dalmatians.";
			move Player to Boundary Street East;

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
4	"Darius_Dogwalk_Repeat"	Darius_Dogwalk_Repeat	"[EventConditions_Darius_Dogwalk_Repeat]"	Darius's Crib	2500	10	25

to say EventConditions_Darius_Dogwalk_Repeat:
	if HP of Darius > 0 and Darius is in Darius's Crib: [Player knows Darius, he's inside]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Darius_Dogwalk_Repeat	"Darius_Dogwalk_Repeat"

Darius_Dogwalk_Repeat is a situation.
ResolveFunction of Darius_Dogwalk_Repeat is "[ResolveEvent Darius_Dogwalk_Repeat]".
Sarea of Darius_Dogwalk_Repeat is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Darius_Dogwalk_Repeat:
	if debugactive is 1:
		say "     DEBUG: Darius taking his dog for a walk (repeat).[line break]";
	say "     Walking up to the door of Darius's apartment, you see it opening ahead of you and the Dalmatian standing in the doorway, leash in hand. Behind him, Ulysses waits with his tail raised high and wagging, eager to get out for a walk. Glancing over his shoulder, Darius calls out, 'Gonna be out for a little while, thanks for keeping an eye on things Tyke! And don't finish off all my beer while you do, hah!' and a deep voice from within the apartment calls out, 'Sure thing, man!' With a satisfied smile, the canine drug dealer then steps out into the hallway with you, swinging the door shut behind his dog. 'If you're here to buy some stuff, I gotta disappoint ya. Shop's closed while I take Ulysses for a walk,' Darius says matter of factly as he redirects his attention to you. Meanwhile, the four-legged dog at his side sits down, patiently waiting for his master, and gets a casual pet on the head from Darius.";
	say "     Seeing Ulysses be very relaxed and calm next to Darius, you find yourself wanting to reach out and pet him too. ";
	if "Buttslut revealed" is not listed in Traits of Darius:
		say "Nevertheless, you keep your hands to yourself, knowing that Ulysses is rather protective and prone to nipping at people outside his pack.";
	else:
		say "As you do, the dog keeps calm and leans into your touch, which has Darius raise an eyebrow in a surprised expression. 'Weird, he's usually really protective.'";
	say "[Darius_Walk_Choicepoint]";

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Darius_StreetDealing"	Darius_StreetDealing	"[EventConditions_Darius_StreetDealing]"	Entrance to the Red Light District	2500	10	75

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
3	"Darius_StreetDealing"	Darius_StreetDealing	"[EventConditions_Darius_StreetDealing]"	Entrance to the Red Light District	2500	10	75

to say EventConditions_Darius_StreetDealing:
	if HP of Darius > 0 and Darius is in Entrance to the Red Light District: [Player knows Darius, he's inside]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Darius_StreetDealing	"Darius_StreetDealing"

Darius_StreetDealing is a situation.
ResolveFunction of Darius_StreetDealing is "[ResolveEvent Darius_StreetDealing]".
Sarea of Darius_StreetDealing is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Darius_StreetDealing:
	if debugactive is 1:
		say "     DEBUG: Darius is dealing on the streets.[line break]";
	say "     As you arrive in the street crossing that marks the entrance of the Red Light District, your gaze falls on Darius, the drug-dealer Dalmatian, who's ";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "casually leaning against a building wall, close to the corner, surveying the street with both arms crossed in front of his broad, muscular chest. There's a cigarette in his hand, which he takes a drag from, then blows a stream of smoke into the air. He gives you a glance, followed by a slight nod to acknowledge your presence. 'Sup?' he asks, watching you as you come closer and say hello in turn. The Dalmatian drug dealer sucks on his cig and then blows a smoke ring, grinning slightly as he sees your gaze following it. 'Neat, eh?' Darius adds in an amused tone, then blows another ring, a tighter one, moving faster and slipping through the middle of the first.";
			say "     Turning his head to look straight at you, the drug-dealing dog then pats his pants pockets and says, 'Just letting you know that if you wanna buy something, you'll have to come to my place. Mostly here to watch for new clients passing by through the Red Light District. Only got a few samples with me. Join me in my crib later, eh?' That said, he twitches his muzzle towards a building to the southeast, near the end of the road. 'And while I'm not against chatting with ya, this ain't the time to do it. Some of those folks making their way to get their rocks off in there are a bit... twitchy, and might not show up if you're standing here with me, ya know?' While he's not flat out telling you to go away, the pointed stare and a shrug of Darius's broad shoulders makes clear that this conversation is over for now.";
		-- 2:
			say "standing at the entrance of an alleyway, just exchanging some words with a [one of]poodle[or]Belgian shepherd[or]pit bull[or]lion[or]leopard[or]cow[or]lizard[or]fish[at random] person dressed in baggy clothes and a hoody, hiding their features. The spotted dog holds out two small baggies to the other person, laying across his open palm as he points at one, then the other with a blunt, canine claw, explaining something in a low voice. As you come a little closer, you manage to overhear, '...know what? Why don't you take em both, have a little taste, eh? And I got plenty more of the one you like best, haha!' The prospective customer raises a hand to take something, then freezes as they see you from the corner of their eye, before quickly snatching up both bags and pushing them in their pocket. 'Thanks, I'll be back later,' they say, then hurry deeper into the alley, shading their face from you with the hoody.";
			say "     Turning his head to look straight at you, the drug-dealing dog spears you with a somewhat displeased expression, 'Man, ya can't simply stroll up to me chatting up a new client. Who knows, they might get too scared to come back, so watch yourself in the future! Some of those folks are ashamed of coming to the district to get their rocks off, in one way or another. If you want something, join me in my crib later, eh?' That said, he twitches his muzzle towards a building to the southeast, near the end of the road. 'Not against shooting the shit with ya, but this ain't the time to do it.' He's not flat out telling you to go away, but the pointed stare and a shrug of Darius's broad shoulders makes clear that this conversation is over for now.";
		-- 3:
			say "casually leaning against a building wall, close to the corner, surveying the street with both arms crossed in front of his broad, muscular chest. Then suddenly, there is a little bit of metallic noise from behind a nearby car wreck, as if someone had lightly kicked an empty can or something. Both your and Darius's attention is drawn towards whatever made that sound - which is revealed to be a quite lean street mutt, on the search for any food he can find. The beast is thin, but thankfully not starved-looking. Darius pushes himself off the wall as he sees the dog, then clicks his tongue and calls out, 'Hey boy, come here!' The mutt is unconvinced at first, even though his tail half-raises and gives a hopeful wag, but when the dal's hand fishes a dog treat out of his pocket, he quickly dashes over to hungrily accept it. Darius feeds the street dog a few more dog biscuits, patting his head and stroking the beast affectionately.";
			say "     Scratching the mutt under his chin and letting his gaze wander over the canine's body, Darius seems pleased that there are no signs of the dog being hurt, and he keeps giving him long strokes. The dealer inevitably runs out of treats, patting his pocket and letting out a sigh, then holding out an empty hand that the mutt licks a few times. 'Sorry, that's it. Don't have no more with me,' Darius says in a bit of a sad tone. He continues to give the animal some love and pats for a little while, before both of them eventually go their ways, the dog continuing his search and the dealer focusing on spotting any prospective customers...";
	increase Energy of Darius by 1; [drug dealing encounters]

Table of NavInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Darius_Hare&Pug"	Darius_Hare&Pug	"[EventConditions_Darius_Hare&Pug]"	Entrance to the Red Light District	2500	10	60

Table of WalkInEvents (continued)
Priority	Name	EventObject	EventConditions	EventRoom	LastEncounterTurn	CoolDownTurns	EncounterPercentage
2	"Darius_Hare&Pug"	Darius_Hare&Pug	"[EventConditions_Darius_Hare&Pug]"	Entrance to the Red Light District	2500	10	60

to say EventConditions_Darius_Hare&Pug:
	if HP of Darius > 0 and Darius is in Entrance to the Red Light District: [Player knows Darius, he's inside]
		now CurrentWalkinEvent_ConditionsMet is true;

Table of GameEventIDs (continued)
Object	Name
Darius_Hare&Pug	"Darius_Hare&Pug"

Darius_Hare&Pug is a situation.
ResolveFunction of Darius_Hare&Pug is "[ResolveEvent Darius_Hare&Pug]".
Sarea of Darius_Hare&Pug is "Nowhere". [standard walkins that cannot be hunted for are Nowhere, but walkin events can also be made huntable as an alternate access way]

to say ResolveEvent Darius_Hare&Pug:
	if debugactive is 1:
		say "     DEBUG: Darius is dealing on the streets.[line break]";
	say "     As you arrive in the street crossing that marks the entrance of the Red Light District, your gaze falls on Darius, the drug-dealer Dalmatian, who's just casually leaning against a building wall, close to the corner, surveying the street with both arms crossed in front of his broad, muscular chest. Then suddenly, you hear someone shout, 'No! Leave me alone!', followed by something that's more of a bark than words, and running footsteps. An eye-blink later, someone comes running around the corner in full flight, dodging onto the middle of the street to avoid a car wreck at the side of the road. The guy's a hare, judging by his enormous ears and a very tall, spindly body, plus a rather 'twitchy' air about his person. Fast on his feet too, though very stressed out, so unfortunately he makes a mistake in turning towards the east, which you know is a dead end street where his speed won't help him.";
	say "     Not far behind the hare is his pursuer: A stocky pug with a cruel expression on his wrinkled, smooshed-looking face. The canine appears to have given up on most human trappings and is fully naked, half-hard dog-cock swinging in the wind as he runs. The dog takes the corner much more sharply than the hare, trying to cut him off and dodging the wrecked car on the sidewalk side, which lays his path just past where Darius is standing. Too committed to the chase, the pug only has eyes for his prey and pays the Dalmatian no mind - a fatal decision, as Darius readies himself and bursts into motion, clotheslining him to send him sprawling onto the ground. Already breathing heavily from the chase, now the dog's wheezing through his messed-up nostrils, barely getting enough air. Before the pug knows what's happening, Darius is on top of him, adding a kick or two to subdue the other canine before wrenching him upwards by the scruff of his neck.";
	WaitLineBreak;
	say "     'And here I thought word had spread. You must be new, you ugly fucker!' the dealer barks at the pug, who whines, 'What-' only to be smacked in the nose with a lighter punch. 'Shut up. I'm talking!' Darius growls, then points after the still running hare. 'That guy you tried to... well, with a pervy fuck like you I don't even think you wanted to mug him, just push him down and fuck, ain't that right? Fucking disgrace of a dog. Fuckin['] fag!' ";
	if "TrafficDrone#006Vid Watched" is listed in Traits of Player:
		say "Remembering the video you watched, in which Darius ran down a male jogger, then fucked him after forcefully transforming the man into a bitch, you can't help but feel that he's being pretty hypocritial right now. But hey, he's a drug dealer, so what else can one expect? ";
	say "Then Darius gives the pug a shake, with a disgusted expression on his face. 'Anyhow - that guy's one of my best clients. Horny like a randy goat, but none of the skills to get laid, so he's been mainlining Bliss for weeks! You think I'll let an asshole like you ruin that deal for me?! Fuck naw! And you can't jump anyone else coming along this street either! Those are my customers!' Opening his muzzle to reply, the pug's slapped again, and again, with Darius then shoving him away from himself, face-planting on the street.";
	say "     'Get your stinking ass out of here, fucker! Hell, I can't even turn you into a bitch, ugly as you are! Bet you'd produce the most hideous pups imaginable! So, scram! Gonna give you a worse beating if I see you again. That's all you're fuckin['] worth!' Darius growls and barks at the other man, who whimpers in fear, after getting beat up and being told that only his looks prevented him from being taken as a breeding fucktoy by Darius. Still wheezing audibly though the limited airways of his flat nose, the thug gets up groggily, then limps away while throwing scared glances over his shoulder. After following the other guy with his eyes until he's sure the pug is gone, Darius fishes a plastic baggie with some square pills out of his pocket, then starts to walk after the hare. You can hear him say to himself, 'Gotta give him these as a freebie, so he chills the fuck out...'";
	now Darius_Hare&Pug is resolved;

Section 3 - Conversation

instead of conversing the Darius:
	if Stamina of Darius > 2: [TODO: Add in a drugged talk menu, lets have him spill his secrets]
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
	now title entry is "Ask how he became a Dalmatian";
	now sortorder entry is 2;
	now description entry is "Find out how Darius transformed";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about the red light district";
	now sortorder entry is 3;
	now description entry is "Make Darius tell you about the area";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about what he sells";
	now sortorder entry is 4;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask him about himself"):
					say "[DariusTalk1]";
				else if (nam is "Ask how he became a Dalmatian"):
					say "[Darius_TransformationTalk]";
				else if (nam is "Talk about the red light district"):
					say "[DariusTalk2]";
				else if (nam is "Ask about what he sells"):
					say "[DariusTalk3]";
				wait for any key;
				say "[DariusTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the muscular Dalmatian, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DariusTalk1: [himself]
	say "     Darius shrugs as you ask him about himself. 'No big story to tell, really. I'm a black dude from the hood. Been doing fairly well before all this shit started. Solid customer base, right stuff to sell. Of course, half the fuckers vanished early in the outbreak, turned into who knows what, and the supply dried up. But there are new goods to have too, and some of it is some primo shit! You should have a look at my inventory sometime too.' Nodding to him, you chat a little longer, then turn your attention back to the matter of survival in this fallen city.";

to say Darius_TransformationTalk:
	say "     As you ask your question, Darius gives a shrug and says, 'Must have come from havin Ulysses around. I mean, it's kinda obvious...' That said, the drug dealer raises a hand to his muzzle and gives a sharp whistle, which brings a large Dalmatian dog trotting into the room from the adjoining apartment, entering through the break in the wall. Ulysses looks like a beast of an animal, very muscular and tall, and he pads over to his master, who scratches him behind the ears. 'He's a good boy. Wouldn't trade him for the world. And as for me being a dog too now - I gotta say, I really dig it!' Seeing the canine standing very relaxed and calm next to Darius, ";
	if "Ulysses Introduced" is not listed in Traits of Darius: [first time]
		say "you find yourself wanting to reach out and pet him too. ";
		if "Buttslut revealed" is not listed in Traits of Darius:
			say "But as you do, a grin spreads over Darius's muzzle and Ulysses tries to take a chunk out of your hand, snapping his teeth just an inch short of your outstretched fingers as Darius tugs him back with a hand on the red collar around the dog's neck.";
			say "     'Hahaha! He almost had ya! Man, the expression on your face was just priceless! But yeah, don't touch my boy. He's really protective, and guards my bitches when I'm out!' Still grinning, he gives his Dalmatian a pat on his head and rub-down of his chest fur, then clicks his tongue and points over to the break in the wall, with Ulysses obediently going back to the other apartment.";
		else:
			say "As you do, the dog keeps calm and leans into your touch, which has Darius raise an eyebrow in a surprised expression. 'Weird, he's usually really protective, and guards my bitches when I'm out!' With a shrug, he gives his Dalmatian a pat on his head and rub-down of his chest fur, then clicks his tongue and points over to the break in the wall, with Ulysses obediently going back to the other apartment.";
		TraitGain "Ulysses Introduced" for Darius;
	else:
		say "you find yourself wanting to reach out and pet him too. ";
		if "Buttslut revealed" is not listed in Traits of Darius:
			say "But you nevertheless keep your hands to yourself, since you know that Ulysses is rather protective and prone to nipping at people outside his pack.";
		else:
			say "As you do, the dog keeps calm and leans into your touch, which has Darius raise an eyebrow in a surprised expression. 'Weird, he's usually really protective, and guards my bitches when I'm out!' With a shrug, he gives his Dalmatian a pat on his head and rub-down of his chest fur, then clicks his tongue and points over to the break in the wall, with Ulysses obediently going back to the other apartment.";

to say DariusTalk2: [red light district]
	say "     Darius shrugs as you ask him about the red light district. 'Nothing much to say, dawg. This is my neighborhood, been living in the area all my life. Things have always been rather wild hereabouts. More so now, with people actually having fur and showing their claws and teeth. But don't you think it was all sunshine and rainbows before. It always was a place where the strong and tough survive and get to the top.'";

to say DariusTalk3: [drugs]
	say "     As you quietly ask him about the stuff he sells, Darius grins at you and says, 'The regular kinds of pick-me-ups are kinda hard to get, what with the chaos and the quarantine, but I can offer you all new products. Great stuff, definitely. You'll be surprised what people can cook up out of some of the things that grow or wander the streets these days. [']Bliss['] will really get your blood boiling, and the [']PowerUp['] tablets make you feel like you're a rhino or something. As for the baggies of [']Pixie Dust['] - they're not for snorting, no. Actual magic I got from a special little dude. Or not so little, if he wants to be. That's the effect the dust has.'";
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
		say "     'Yo slut, don't get greedy. I'm saving some of this spunk for Hannah, my fave breeding bitch,' the Dalmatian barks out amusedly. Then he turns away from you, not really interested in sex right now.";
	else if Darius is not in Darius's Crib:
		say "[DariusStreetBJ]";
	else: [ready for sex]
		say "     As you walk up to Darius, the Dalmatian calmly crosses his arms in front of his chest and smirks. 'So, couldn't resist the chance to be with a real man for a change, eh?'";
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
	if Lust of Darius > 0 and Cock Count of Player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Let him grind on your ass";
		now sortorder entry is 3;
		now description entry is "Ask him to give you some love with his red rocket";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Ask to fuck him";
		now sortorder entry is 4;
		now description entry is "Tell the Dalmatian you wanna ride his ass";
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
			if Player consents:
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
			say "     You step back from the muscular Dalmatian, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say DariusStreetBJ:
	if Player is female: [female + herm]
		say "     As you walk up to Darius and offer sex, the Dalmatian chuckles heartily and grins at you. 'Wanna do it right out here in the street, eh? Such a slut!' Bringing one hand on the front of his jeans, the Dalmatian gropes his crotch suggestively and looks up and down along the street. Then goes one step further and unzips himself, revealing his furry sheath and the cock-head already poking out of it. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to worship me properly!' With that said, the big man wraps his fingers around the base of his cock, stroking it a little until it is fully hard, standing proudly erect and pointing at you. 'You like this, don't you,' the anthro canine says more as a statement than a question, then steps up before you can even think of replying, sliding his arm around your chest to pull you into a demanding kiss. His tongue explores your mouth while he keeps you tightly pressed against his chest and grinds his erection lightly against your thigh.";
		say "     'Wanna get started on it, sweetcheeks?' Darius adds after a little while, nodding down to the throbbing shaft between the two of you, its pointed tip already dripping beads of pre-cum. You follow his suggestion, guided down to your knees by a hand on your shoulder. Seen at eye-level, the drug dealer's prick is quite a weighty piece of man-meat, and the full orbs of his balls tempt you into cupping them, followed by some gentle fondling. 'Yeaahhh! That's nice, but I want more!' the large male grunts urgently, pushing your head towards his cock. Darius's muzzle opens for a grunt as you then slip your lips over the tip of his cock and start sucking, together with pumps along his length by your hand. He is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that Darius enjoys himself quite a bit.";
		WaitLineBreak;
		say "     Soon you feel the horny Dalmatian's hand wander down from the top of your head to cupping its back, giving him a more secure grip. He starts to push you deeper onto his long schlong, murmuring under his breath how great your lips feel. Darius goes further with every new push into your mouth, until finally, your nose is buried in the fur of his crotch and his cock in the tight confines of your throat. He holds you pressed against his groin for a second, then allows you to pull back and take a breath, followed by another go. Sliding in and out, the spotted canine all too soon abandons such niceties, as his libido rises to higher and higher levels and the need to fuck supplants any other. 'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face.";
		say "     You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius must really love to hold you tight with his dick all the way in, reveling in the sensation of being deep-throated by a receptive female. The tenor of his voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the Dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		WaitLineBreak;
		say "     Both of the large man's hands encircle your head a second after you unsuccessfully try to pull off and Darius shoves your head away from his crotch forcefully. After a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters. He is quick to catch the throbbing shaft with one hand, the other still keeping a hold of your head, and any further shots of cum after that get aimed right at your face, covering it in the drug dealer's creamy load. You're forced to close your eyes so he doesn't get any cum into them, leaving you helpless on your knees before Darius.";
		say "     For a little while, you mainly hear the anthro canine's satisfied panting, as well as some chuckles as he brushes his softening cock over your face. Then the sound of movement some little distance away reaches your ears, followed by ";
		let randomnumber be a random number from 1 to 7;
		if randomnumber is:
			-- 1: [pimp]
				say "a growl coming from Darius, followed by the words, 'What are you looking at, asshat? Do I have to teach you another lesson? My girls are my girls, not [']talent['] you can pick up at your leisure!' The Dalmatian moves a step or two and growls again, followed by hasty footsteps of the other person running away. Wiping the cum off one closed eye and hastily opening it, you catch a glimpse of a twisted pimp, right before he turns a not too distant corner.";
			-- 2: [Kyle]
				say "someone giving a slow, acknowledging clap and Darius replies, 'What can I say, you know no one can resist my dick!' A man's voice replies in a teasing tone, 'If only it didn't come with fleas as part of the deal!' The Dalmatian snorts and throws back the words, 'Up yours, Kyle!' 'I knew it'd be only a matter of time till you wanted to go for my ass after all. Doggies are all butt-sniffers, hah! Fine by me, but maybe a flea bath should come first.' After some over-played choking noises, Darius shoots back, 'Get out of here, you perv! As if I wanted to have anything to do with your ass.' Laughing, the other guy strolls a few steps away, then calls out, 'Oh, and by the way: The next load's done. Come pick it up when you have the time.'";
				say "     Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a handsome incubus with crimson skin, a grimy sleeveless shirt and quite low-hanging pants, then he vanishes from of sight around a corner.";
			-- 3: [kobolds]
				say "whispered conversation by several squeaky voices. 'Impressive how big a full-sized dick can be, eh you li'l freaks?' Darius calls out with a chuckle in his voice, and you can hear him smacking the length of his shaft into his palm. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. About thirty feet away, a quartet of small lizard-people are standing in a bunch, gaping at you and the Dalmatian towering over you. 'Get out of here, or I'll have to charge you for the peepshow,' the anthro canine barks with a chuckle and waves them off, and the kobolds quickly scurry out of sight.";
			-- 4: [succubus]
				say "the musical notes of a woman's chuckle. 'Oh darling, why are you wasting your seed on an amateur? I could show you untold pleasures instead. Just come with me,' she adds in a seductive tone. Somehow, you can't help but feel some tension in the back of your neck, as there is a predatory undertone to those words. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. Not too far away, a succubus is standing, slightly bent forward to present her breasts to Darius. 'Yeah, yeah. But at what price? I know that shit like your hot bod ain't free!' Darius barks back, shaking his head. The sex demon lets out a huff at the rejection, then saunters off, looking for another victim.";
			-- 5: [cock cannon]
				say "Darius cursing and scrambling for something lying on the ground. 'Fuck off freak!' he barks aggressively, followed by the sound of something hitting flesh and a weird squeal. Alarmed, you wipe the cum from your eyelids and blink them open quickly. A cock cannon is standing in the street about 40 feet away, its dickhead running through all the colorful stages of a bruise as it is rapidly repaired by the nanites in the creature. Looks like Darius hit it with a thrown brick, and even as you are still taking everything in, he sends another one flying. It's a narrow miss, but still enough to send the weird beast scurrying away.";
			-- 6: [Brennan ...or a similar survivor if Brennan isn't around]
				say "Darius calling out, 'What are you looking at, dude? Can't a guy enjoy some oral from a willing slut on the street in his own neighborhood?' A masculine voice replies, 'Oh, err... sorry about that. Just moving through the area.' Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a fairly muscular and seemingly uninfected human a little ways away, his back turned to you as he ducks around a corner[if BrennanRelationship > 0 and BrennanRelationship < 50]. That was Brennan! Though he must not have recognized you, as he only saw you kneeling from behind and Darius held most of his attention[end if].";
			-- 7: [street animal]
				say "Darius letting out a bark and a chuckle before he goes back to dick-slapping your face again. 'Just a street [one of]dog[or]cat[at random]. A regular one, so no need to get your panties in a twist,' the Dalmatian explains. You stay in your submissive position for a while, giving Darius all the time he wants to savor you being covered by his cum, until the drug dealer eventually puts his schlong away and leaves you to you clean yourself up.";
	else: [male + neuter]
		say "     As you walk up to Darius and offer sex, the Dalmatian chuckles heartily and grins at you. 'Wanna do it right out here in the street, eh? Typical cock-gobbling fag!' Bringing one hand on the front of his jeans, the Dalmatian gropes his crotch suggestively and looks up and down along the street. Then goes one step further and unzips himself, revealing his furry sheath and the cock-head poking out of it a little bit. 'Better be ready to worship me properly, you man-whore!' With that said, the big man clamps his large hand around the back of your head, pushing you down to his crotch. Given the sudden wrench, you can't help but stumble and fall to your knees as you face-plant against the anthro canine's sheath and balls. He doesn't let go with his hand either, just rubbing your cheek up and down against his junk in a demonstration of dominance that gets the drug dealer hard and erect quite quickly.";
		say "     'Open up slut!' the anthro canine barks out a command, pulling your head away from his crotch just long enough for opening your mouth. Then he rams his schlong between your lips, forcing it in - ready or not. Darius is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that the big dog is really into face-fucking. He starts to push you deeper onto his long schlong with barely any time to get used to the thick canine shaft. Chuckling at your gurgles and choking noises, the Dalmatian's length goes down your throat until finally, your nose is buried in the fur of his crotch and it feels like he's halfway to your stomach. Darius holds you pressed against his crotch for a long moment, then allows you to pull back and take a desperate breath, followed by another go.";
		WaitLineBreak;
		say "     Sliding in and out, the spotted canine takes you hard and fast, only getting more intense as his libido builds up and the need to fuck pushes aside even the minuscule amount of restraint he showed before. 'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, reveling in the sensation of your inner muscles twitching as your air begins to run out.";
		say "     The tenor of Darius's voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the Dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the [']bitch['] that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe! Both of the large man's hands encircle your head a second after you unsuccessfully try to pull off and Darius shoves your head away from his crotch forcefully.";
		WaitLineBreak;
		say "     After a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters. He is quick to catch the throbbing shaft with one hand, the other still keeping a hold of your head, and any further shots of cum after that get aimed right at your face, covering it in the drug dealer's creamy load. You're forced to close your eyes so he doesn't get any cum into them, leaving you helpless on your knees before Darius. 'You should see yourself, faggot! Dirty cum-pig! Just what you needed from me, ain't that right?!'";
		say "     For a little while, you mainly hear the anthro canine's satisfied panting, as well as some chuckles as he brushes his softening cock over your face. Then the sound of movement some little distance away reaches your ears, followed by ";
		let randomnumber be a random number from 1 to 7;
		if randomnumber is:
			-- 1: [pimp]
				say "a growl coming from Darius, followed by the words, 'What are you looking at, asshat? Do I have to teach you another lesson? This is a dude, not someone you can recruit anyways!' The Dalmatian moves a step or two and growls again, followed by hasty footsteps of the other person running away. Wiping the cum off one closed eye and hastily opening it, you catch a glimpse of a twisted pimp, right before he turns a not too distant corner.";
			-- 2: [Kyle]
				say "someone giving a slow, acknowledging clap and Darius replies, 'What can I say, you dirty fags are all hungry for my dick!' A man's voice replies in a teasing tone, 'If only it didn't come with fleas as part of the deal!' The Dalmatian snorts and throws back the words, 'Up yours, Kyle!' 'I knew it'd be only a matter of time till you wanted to go for my ass after all. Doggies are all butt-sniffers, hah! Fine by me, but maybe a flea bath should come first.' After some over-played choking noises, Darius shoots back, 'Get out of here, you perv! As if I wanted to have anything to do with your ass.' Laughing, the other guy strolls a few steps away, then calls out, 'Oh, and by the way: The next load's done. Come pick it up when you have the time.'";
				say "     Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a handsome incubus with crimson skin, a grimy sleeveless shirt and quite low-hanging pants, then he vanishes from of sight around a corner.";
			-- 3: [kobolds]
				say "whispered conversation by several squeaky voices. 'Impressive how big a full-sized dick can be, eh you li'l freaks?' Darius calls out with a chuckle in his voice, and you can hear him smacking the length of his shaft into his palm. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. About thirty feet away, a quartet of small lizard-people are standing in a bunch, gaping at you and the Dalmatian towering over you. 'Get out of here, or I'll have to charge you for the peepshow,' the anthro canine barks with a chuckle and waves them off, and the kobolds quickly scurry out of sight.";
			-- 4: [succubus]
				say "the musical notes of a woman's chuckle. 'Oh darling, why are you wasting your seed like this? Try a real woman! I could show you untold pleasures instead. Just come with me,' she adds in a seductive tone. Somehow, you can't help but feel some tension in the back of your neck, as there is a predatory undertone to those words. Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. Not too far away, a succubus is standing, slightly bent forward to present her breasts to Darius. 'Yeah, yeah. But at what price? I know that shit like your hot bod ain't free!' Darius barks back, shaking his head. The sex demon lets out a huff at the rejection, then saunters off, looking for another victim.";
			-- 5: [cock cannon]
				say "Darius cursing and scrambling for something lying on the ground. 'Fuck off freak!' he barks aggressively, followed by the sound of something hitting flesh and a weird squeal. Alarmed, you wipe the cum from your eyelids and blink them open quickly. A cock cannon is standing in the street about 40 feet away, its dickhead running through all the colorful stages of a bruise as it is rapidly repaired by the nanites in the creature. Looks like Darius hit it with a thrown brick, and even as you are still taking everything in, he sends another one flying. It's a narrow miss, but still enough to send the weird beast scurrying away.";
			-- 6: [Brennan ...or a similar survivor if Brennan isn't around]
				say "Darius calling out, 'What are you looking at, dude? This is my neighborhood, and it's rude to staring at a guy just because he feeds a faggy cum-pig!' A masculine voice replies, 'Oh, err... sorry about that. Just moving through the area.' Wiping away the cum from your eyelids, you blink them open quickly, curious who Darius is talking to. For a moment, you see a fairly muscular and seemingly uninfected human a little ways away, his back turned to you as he ducks around a corner[if BrennanRelationship > 0 and BrennanRelationship < 50]. That was Brennan! Though he must not have recognized you, as he only saw you kneeling from behind and Darius held most of his attention[end if].";
			-- 7: [street animal]
				say "Darius letting out a bark and a chuckle before he goes back to dick-slapping your face again. 'Just a street [one of]dog[or]cat[at random]. A regular one, so no need to get your panties in a twist,' the Dalmatian explains. You stay in your submissive position for a while, giving Darius all the time he wants to savor you being covered by his cum, until the drug dealer eventually puts his schlong away and leaves you to you clean yourself up.";
	infect "Dalmatian Bitch";
	NPCSexAftermath Player receives "OralCock" from Darius;

to say DariusSex1: [oral]
	if Player is female: [female + herm]
		say "     As you step up to the large canine and offer to suck him off, Darius lets out a hearty chuckle. 'Wanna wrap your lips around this thick piece of meat, babe? I'm always happy to give a girl what she needs!' Bringing one hand on the front of his jeans, the Dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to worship me properly!' With that said, the big man undoes his belt-buckle in well-practiced haste, followed by the zipper and him shoving his jeans down. As he kicks the garment off, your eyes are inevitably drawn to the red shaft rapidly pushing out of his sheath, as well as the weighty balls swinging below, furry with the typical white and black Dalmatian pattern.";
		say "     'You like it, don't you,' the anthro canine says more as a statement than a question, his fingers closing around the shaft to wag it in your direction. Grinning broadly, Darius steps up before you can even think of replying, sliding his arm around your chest to pull you into a demanding kiss. His tongue explores your mouth while he keeps you tightly pressed against his chest and grinds his erection lightly against your thigh. 'Wanna get started on it, sweetcheeks?' Darius adds after a little while, nodding down to the throbbing shaft between the two of you, its pointed tip already dripping beads of pre-cum. You follow his suggestion, guided down to your knees by a hand on your shoulder. Seen at eye-level, the drug dealer's prick is quite a weighty piece of man-meat, and the full orbs of his balls tempt you into cupping them, followed by some gentle fondling.";
		WaitLineBreak;
		say "     'Yeaahhh! Just like that!' the large male grunts in satisfaction as you lean in to slide your tongue up along the underside of his shaft, then give its head a little peck as you reach it. His hand moves to rest on top of your head, not really pushing you to anything (yet?), but definitely giving some light encouragement to keep working on his cock. Wrapping your fingers around his shaft makes quite sure that you have his full attention, and you stroke up and down slowly, drawing a content moan from your horny partner. Glancing up, you meet the eyes of the Dalmatian and see him pant in lustful heat, enjoying your touch. His muzzle opens for a deeper grunt as you then slip your lips over the tip of his cock and start sucking, together with pumps along his length by your hand. He is leaking pre like a faucet, covering your tongue in his manly, somewhat nutty taste and making it clear that Darius enjoys himself quite a bit.";
		say "     The dominant male leaves you to worship his dick at your own pace for a while, but eventually you feel his hand wander down from the top of your head to cupping its back, giving him a more secure grip. He starts to push you deeper onto his long schlong, murmuring under his breath how great your lips feel. Darius goes further with every new push into your mouth, inching his way down the length of his cock until finally, your nose is buried in the fur of his crotch and his cock in the tight confines of your throat. He holds you tight against his crotch for a second, then allows you to pull back and take a breath, followed by another go. Sliding in and out, the spotted canine all too soon abandons such niceties, as his libido rises to higher and higher levels and the need to fuck supplants any other.";
		WaitLineBreak;
		say "     'Take my big dick!' Darius growls in a deep-throated tone as he face-fucks you ever harsher, the satisfaction of burying his bone in a warm and tight cave written on his face. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, reveling in the sensation of being deep-throated by a receptive female. The tenor of his voice soon gains an air of definite urgency, and his weighty balls smack against your face with full force as the Dalmatian suddenly rams himself all the way in. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		say "     Your own choking noises around the thick shaft as it throbs with more blasts of cum, as well as your hands that grip his thighs in painful intensity, are barely enough to reach the horny canine in the grip of his orgasm. Looking up with pleading eyes as you struggle, you see Darius turn his head down and look at you, his expression of annoyance quickly giving way to one of shocked urgency as he barks out, 'Oh, fuck!' With that, he shoves your head away from his crotch with both hands, and after a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters.";
		WaitLineBreak;
		say "     Blinking away the strobing stars that lack of oxygen was beginning to give you as you limply hang in the Dalmatian's grasp, the next thing you consciously hear is his amused chuckling. As you manage focus on the drug dealer, he is looking at you with a wide grin, then says, 'Dayum! That was one great load! Sorry babe, I guess I got a little carried away at the end.' Seems like that's the only apology for being almost choked by his prick you'll get, as the next thing that Darius does is wipe off what cum landed on him and feeding it to you, pushing his goop-covered fingers into your mouth so you can suck it all off.";
	else: [male + neuter]
		say "     As you step up to the large canine and offer to suck him off, Darius lets out a hearty chuckle. 'You're just a typical cock-gobbling fag, aren't you? Damn man-whores just can't resist this mighty prick!' Bringing one hand on the front of his jeans, the Dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'Fine by me. On your knees, fucker!' With that said, the big man clamps both of his hands on your shoulders and shoves you down into a submissive position before him. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you find yourself face to face with Darius's furry crotch. Weighty balls with irregular black spots on them swing before your eyes as the man shoves his jeans the rest of the way down, then kicks them off.";
		say "     The anthro dog's many canine teeth show in an impressive line-up as he gives you a human-like grin, then grabs the top of your head and shoves you against his crotch and the cock-head just pushing out from his sheath. With Darius's tight grip not giving you much choice of the matter, your face is rubbed up and down against his manhood. You find your nose buried against the hairy sack of his balls most of the time, breathing in the masculine musk of the aggressive male. 'Open up you li'l fag,' he growls demandingly at you and pulls your head back, then smacks the by now fully erect cock against your forehead. From there, it leaves a trail of pre-cum down as he brushes his dickhead over your skin in a show of dominance. The pointy tip of the canine shaft wanders down between your eyes, then along one side of your nose and finally arrives at your lips, bringing with it the first taste of his pre.";
		WaitLineBreak;
		say "     It doesn't really matter why you open your mouth - to reply, or simply to obey the horny dog - Darius shoves his hard prick between your lips right away as you do, barking in satisfaction as he buries his bone in a warm and tight cave. Shifting his grip so that your head is clamped between two strong-fingered paws, the large canine proceeds to fuck your mouth in a rapid tempo, mercilessly pounding in and out and with his balls slapping against your chin with every harsh thrust. You do your best to service the demanding male, pressing your tongue against his slick manhood and flexing the muscles in your throat every time he pushes in that far. Darius really loves to hold you tight with his dick all the way in, reveling in the sensation of being deep-throated by a gay cock-sleeve.";
		say "     In fact, he only really lets you pull back when you are already beginning to see stars, reluctantly giving in to the weakening patter of your hands against his thighs and allowing for hasty gulps of air before he goes back to more rapid face-fucking. 'Yeah, that's right boy! Take my big dick!' he growls harshly as he makes use of you, the tenor of his voice soon gaining a definite air of urgency. His weighty balls smack against your face ever faster as the big male really takes out all the stops, then rams in all the way with a forceful thrust and starts to unload his balls down your throat. As the pointy cock throbs against your tongue, you feel the weird sensation of him cumming right down your esophagus, creamy whiteness covering its inner walls. Yet you have little time to focus on that as you can feel the bulge of Darius's cock expand all of a sudden, his body trying to knot with the bitch that got him off. The problem is that he's not balls-deep in a pussy but rather your mouth, and you need to breathe!";
		WaitLineBreak;
		say "     Your own choking noises around the thick shaft as it throbs with more blasts of cum, as well as your hands that grip his thighs in painful intensity, are barely enough to reach the horny canine in the grip of his orgasm. Looking up with pleading eyes as you struggle, you see Darius turn his head down and look at you, his expression of annoyance quickly giving way to one of shocked urgency as he barks out, 'Oh, fuck!' With that, he shoves your head away from his crotch with both hands, and after a second of feeling your lips stretch painfully wide, you're off his prick and sucking in big gulps of air while Darius's erection whips up to smack his abs, spurting out more streaks of cum to shower him, you and the immediate surroundings in white splatters.";
		say "     Blinking away the strobing stars that lack of oxygen was beginning to give you as you limply hang in the Dalmatian's grasp, the next thing you consciously hear is his amused chuckling. As you manage focus on the drug dealer, he is looking at you with a wide grin, then says, 'Dayum! That was one great load! Got a nice fuckhole, faggot! So much that I got a bit carried away, hah. Whoops, I guess.' Seems like that's the only hint of apology for being almost choked by his prick you'll get, as the next thing that Darius does is wipe off what cum landed on him and feeding it to you, pushing his goop-covered fingers into your mouth so you can suck it all off.";
	infect "Dalmatian Bitch";
	NPCSexAftermath Player receives "OralCock" from Darius;

to say DariusSex2: [ask to be fucked]
	SetMonsterRandomDalOffspring;
	if Player is female: [female + herm]
		say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'So you wanna feel my hard shaft all the way up there babe? I'm always happy to give a girl what she needs!' Bringing one hand on the front of his jeans, the Dalmatian gropes his crotch suggestively, then adds an air-thrust of his hips in your direction. 'I'm getting hard from just thinking of the fun we'll have! Better be ready to milk my cock me properly!' With that said, the big man undoes his belt-buckle in well-practiced haste, followed by the zipper and him shoving his jeans down. As he kicks the garment off, your eyes are inevitably drawn to the red shaft rapidly pushing out of his sheath, as well as the weighty balls swinging below, furry with the typical white and black Dalmatian pattern.";
		say "     'You like it, don't you,' the anthro canine says more as a statement than a question, his fingers closing around the shaft to wag it in your direction. Grinning broadly, Darius lets himself fall back on his sofa, coming to sit in a broad-legged fashion that allows open access to his erection. 'Why don't you come here and give it a good lick, sweetcheeks?' the muscular canine calls out to you, nodding down to the throbbing shaft with its pointed tip already dripping beads of pre-cum. You quickly pull off what equipment and clothes you have, dropping it all on your way over to the waiting male. As you get on your knees and see it at eye level, the drug dealer's prick stands straight and erect waiting for you, and you can't help but want to touch it. Fingers wandering over the weighty piece of man-meat and the furry orbs of his balls, you cup and fondle the large man eagerly.";
		WaitLineBreak;
		say "     Leaning forward a little, Darius hooks a paw-hand behind your head and pulls you towards his crotch a gentle but firm pressure until your nose bumps into his erection. 'Yeaahhh! Just like that!' the large male grunts in satisfaction as you obediently start to slide to slide your tongue up along the underside of his shaft, then give its head a little peck as you reach it. His hand moves to rest on top of your head, encouraging you to keep lapping at his manhood and getting it nice and wet with spit. Darius enjoys being serviced by you for a little while, then eventually slides his hands under your armpits pulling up and towards him. Halfway on top of the sitting male, you're drawn into a hungry bout of making out with him, with the canine's long tongue exploring your mouth eagerly. Meanwhile, his hands touch and stoke your body, until you find yourself lifted and held aloft by strong arms, which then spread your legs as Darius lowers your crotch towards his.";
		say "     The dominant male grins broadly as his erect shaft bumps the naked skin of your inner thighs, followed by sliding along towards the by now dripping wet gash of your pussy. 'Take it, baby!' Darius grunts in satisfaction as his manhood nudges your nether lips apart, then slides right in as he pulls you down on the cock. The canine shaft is hot and hard, rubbing some very sensitive spots and driving you wild as the horny drug dealer fills you to the brim. 'Ride me!' comes Darius's next command and he bounces you on his lap, making you gasp at the sensation of him moving inside you. After that taste of feeling his thick prick, you can't help but keep pumping your hips up and down all on your own, eager to be fucked by him.";
		WaitLineBreak;
		say "     With a grunt of satisfaction, Darius leans back on his couch and interlaces his fingers behind his head, perfectly happy to let you do all the work. Not that you're complaining, as you're well-filled by his large doggie cock no matter what, feeling its sides rub and stretch your inner walls. 'Not bad, you sexy bitch, but how about you flex that pussy around my cock a little? Work those muscles!' One of his hands reaches out to grip the side of your body, stroking it encouragingly as he keeps your eyes locked to his with a demanding stare. Wanting to please the large male, you tighten your muscles and do your best to milk his dick inside your pussy, which earns you a satisfied growl from Darius. 'Fucking ace! That's more like it! Work that pussy baby!' The Dalmatian is enjoying himself quite a bit now, and before long, you can feel the base of his cock start to swell, the beginning of a typical canine knot.";
		say "     Not at all one to take things slow - or ask permission - Darius thrusts his hips up hard a second later while pulling down on your hips with both his hands on your hips. You can't help but let out a startled yelp as he pops his knot into your pussy with that single savage shove. The pain of his entrance is quickly outweighed by the amazing sensation of fullness and his still growing bulge stretching your inner walls around itself. Of course this doesn't mean that he is content with simply putting it in, and the powerful male grinds his hips against you, his dickhead bumping your deepest insides while the knot tugs against your nether lips from the inside every time he pulls back even just minutely. After a few more deeply penetrating thrusts, Darius lets out an urgent bark and hammers into with all his might one last time, then his cock starts to erupt into you. Spurt after spurt of rich canine seed is shot deep into you, his countless little swimmers starting their search for an egg to merge with.";
		WaitLineBreak;
		say "     Grunting and panting in lust, Darius's whole body trembles and twitches with every further shot of cum that he is depositing deep inside you, happily breeding your already filled womb. When he eventually winds down a little from the lengthy and quite voluminous orgasm, the Dalmatian puts his hand on your stomach and gives it a gentle rub. ";
		if Player is impreg_now: [player is already pregnant]
			say "'Too bad you already have some buns in the oven, babe. I'd really love to add a few pups to the count. Be sure to come back to me when it's time to start a new litter!' You nod distractedly at him, more focused right now on the fact that you yourself haven't yet gotten off yet. Tied to the large canine as you are, with the knot and all, Darius doesn't really have a choice of wandering off now that he's done, but it still takes some pointed hints to remind him that you want to orgasm too.";
		else:
			say "'Let's hope it takes, babe. I wanna see you swollen with my pups! To be really sure, you'll just have to come back fore more! Gonna put a litter in you for sure!' You nod distractedly at him, more focused right now on the fact that you yourself haven't yet gotten off yet. Tied to the large canine as you are, with the knot and all, Darius doesn't really have a choice of wandering off now that he's done, but it still takes some pointed hints to remind him that you want to orgasm too.";
		NPCSexAftermath Player receives "PussyFuck" from Darius;
		if Player is male: [herms]
			say "     'Oh. Yeah...' he murmurs somewhat sheepishly, then moves his hands to begin stimulating your clit, switching up between it and pinching your nipples but completely ignoring the erect cock of your own shaft. The amazing time you had while getting fucked, and bred, means that he doesn't have all that much work to push you the final distance to where you want to go, and soon you can feel yourself getting quite close. 'I don't mind a girl with some extra, but you better not get any cock-snot on me!' the Dalmatian warns you and waits for you to grasp your cock and aim it to the side before he goes on to rub your pleasure-button with his thumb. Moments later, you feel the wave of your own climax braking over you and call out in pleasure, squirting femcum to trickle down into his crotch-fur and splattering the couch next to Darius with your own cum.";
		else:
			say "     'Oh. Yeah...' he murmurs somewhat sheepishly, then moves his hands to begin stimulating your clit, switching up between it and pinching your nipples. The amazing time you had while getting fucked, and bred, means that he doesn't have all that much work to push you the final distance to where you want to go, and soon you can feel yourself getting quite close. Moments later, you feel the wave of your own climax braking over you and call out in pleasure, squirting femcum to trickle down into his crotch-fur.";
	else: [male player]
		if Sloppy Seconds is not resolved: [Darius isn't too into butt sex (yet)] [TODO: add alternate way to get him to open up about anal]
			say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'You're just a typical cock-hungry fag, aren't you? Damn man-whore, what makes you think I'd dirty my cock by sticking it up your ass?' Shaking his head with a scrunched-up nose, the Dalmatian is about to turn away when you bring up that he doesn't actually have to stick it [italic type]in[roman type] your ass to have some fun. He could just fuck the crack of your ass, kinda similar to a titjob. Raising one eyebrow and giving you an amused look, Darius replies, 'Yo fuckhole, you really are desperate to feel a real man against your body, ain't that right? Fine, I'll fuck your whiny ass! You better be clean down there, or we'll have some words.' Eager to get it on with the dominant dog, you [SelfStripCrotch], then turn around and demonstratively spread your cheeks for Darius.";
			say "[DariusButtJob]";
		else if Sloppy Seconds is resolved or CuckList is banned: [Darius got forced to fuck Joshiro before, so he has an increased liking of anal sex]
			say "     As you step up to the large canine and offer to let him fuck you, Darius lets out a hearty chuckle. 'You're just a typical cock-hungry fag, aren't you? Damn man-whores, waving your butts in front of proper men and always begging for dick! What'cha trying to do, turn me into a pansy like you? Fat chance of that!' Shaking his head with a scrunched-up nose, you realize that while the Dalmatian is standing there with his arms crossed, he hasn't actually rejected your offer out of hand or turned away. [if Sloppy Seconds is resolved]Seems like his encounter with Tyke and Joshiro had a bit of an effect on his opinion on anal sex. [end if]Clearing your throat and playing in to his earlier words, you tell him that he's of course far too strong a man to [']be made gay['], but you just couldn't help yourself from the desire to try and feel his mighty shaft. Raising one eyebrow and giving you a proud look, Darius replies, 'Ain't that right, eh! Stupid fuckhole, thinking you can convert me! I'll show ya, fuck that whiny ass and stay as straight as ever! You better be clean down there, or we'll have some words.'";
			say "     Eager to get it on with the dominant dog, you [SelfStripCrotch], then turn around and demonstratively spread your cheeks for Darius. The Dalmatian sniffs the air in your direction and then grunts, 'You'll do, slut!' Right after that, he gives your ass a meaty slap and calls out, 'On your knees, faggot!' As you get down on the stained throw-rug in front of Darius's couch, feeling the spots of dried cum in the fabric against your naked skin, the drug dealer moves up close behind you. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you see his jeans fly to the side, kicked off by the powerful male. Something warm and firm touches the top of your shoulder a second later: the anthro dog's dick, with a reddish skin color and pointy tip. He casually grinds against your upper body for a moment, including rubbing his weighty balls against the back of your shoulder, then soon gives you a shove that sends you falling forward, catching yourself on all fours.";
			WaitLineBreak;
			say "     Darius is on top of you before you really have a chance to react, one of his strong hands pushing down on the middle of your back. Face-planting on the carpet, you find your cheek pressed into it[if Player is submissive] and your arousal soaring as the canine man puts you down like the submissive slut you are[else] and some annoyance at the harsh treatment rise in you[end if]. Your eyes are still trying to focus on the peanut (or is it a pistachio?) lying just at the end of your nose when you feel Darius's breath against your ear. 'You asked for it, bitch boy! Now stay like that! Present your fuckhole like any good slut would, or I'll kick you out on the street naked!' Chuckling and licking your cheek in a possessive way, Darius then pushes himself up while bracing on your back, then takes his hand away. Even though you're no longer forced into position, you stay as you are, waiting for what the dominant male will do with you.";
			say "     'Shake that booty!' he commands, and you obey, earning you a laugh from the Dalmatian. His erection gets slapped against both your buttocks, switching up between them several times, then finally slots into place right between them, resting hotly in the crack of your ass. You can feel it leaking pre-cum on the small of your back, then your ass-crack itself as Darius pulls backwards and liberally rubs his fluids over your skin with his dickhead. Soon, his strong hands grasp the sides of your hips and the Dalmatian begins to thrust back and forth in the now well-lubed groove of your butt. 'You don't feel half bad, for a faggotty buttslut,' Darius tells you with a grunt in between the pants and lusty growls he makes as he grinds into you. He clearly is enjoying himself quite a bit if the dripping mess he's making of your behind is any indication. That doggy cock is leaking a lot of pre!";
			WaitLineBreak;
			say "     Eventually, the muscular canine remembers that he did intend out to prove a point, not just rub against you. You can feel his warm breath wash over your skin as he leans in and growls into your ear, 'Gonna show you how a straight guy fucks fag bitches! Back that ass up for me now!' With that said, he waits impatiently for you to push against him and present yourself, following up with demanding directions to stretch your ass a bit higher and nudging it into just the right position before he rams himself in deep. He laughs at your whimper at the sudden and forceful penetration, relentlessly pushing in further. Soon, the bulge of his not yet swollen knot bumps your entrance and is popped in with a vicious thrust, leaving you fully impaled and Darius's furry balls resting against your ass. 'Not bad, bitch boy,' Darius grunts derisively, his large cock throbbing as it stretches your inner walls around it. Even quicker than the penetration, the large male yanks his shaft out, leaving you feeling strangely empty for a second or two, until he thrusts back in all the way.";
			say "     Darius mutters words like 'Thought you could turn a guy like me!', 'Stupid fag!' and 'Gonna show him!' under his breath as he keeps going in and out, smirking as he watches your pucker tremble and twitch after pulling out. He always waits for a second or two for it to start pulling together again before he shoves his prick back in, pre-knot bulge and all. Seems like he enjoys your groans as he does so, indifferent to the fact that it makes you see stars in front of your eyes from the mix of pain and pleasure. At some point, Darius switches over to more regular humping from just playing around with your hole, drilling you hard and deep at a rapid pace. The room is filled by the slapping sounds of his swinging balls against your buttocks, with the thrusts pushing you across the carpet little by little since you can't really brace yourself in the [']ass up, head down['] position you're in.";
			WaitLineBreak;
			say "     Pushed along by Darius forceful fucking, you eventually find yourself bumping against the front of the drug dealer's old couch, with it finally stopping you from getting more rug-burn than you already have. Darius doesn't seem to care much either way, and a short glimpse over your shoulder reveals that he's panting heavily as he humps your ass. As his eyes meet yours, the expression of lust and pleasure on his face becomes somewhat guarded, as if he feels like he got [']caught['], and the big man quickly pushes down on your back with one paw-hand, making you face-plant on the carpet again. 'Stay down, fag!' the muscular canine growls as he continues pounding you with a little additional fervor. Soon, his grunts and moans take on a more urgent tone, interspersed with muttered words along the lines of, 'Yeah bitch boy! Take it! You like the feel of my cock, don'tcha!'";
			say "     After just a few more hard thrusts, you feel something happening inside you - it's Darius's knot, expanding noticeably as he shouts, 'Ffuuckking fag! Take my load!' A heavy throb of his cock and growing know heralds the first heavy splurge of cum into your ass, after which your top unexpectedly wrenches his dick from your hungry hole. You can't help but whimper as he large knot brutally stretches your pucker and the canine's shaft swings up to slap Darius's abs. His next two shots of cum splash down on your back before he catches his dick with a hand and rams it back into your hole, ending at the by now fully grown knot pressing hotly against your hole. 'Not gonna knot no dude!' you hear the dominant top muttering under his breath, even as he continues to flood your insides with his cum. Something about the warmth spreading inside you and the whole sexy situation with the hunky Dalmatian rubs you in a very right way, and you join Darius in orgasm moments later.";
			WaitLineBreak;
			say "     Your cock throbs hard as it erupts with cum without even being touched. With your seed pulsing onto the carpet and soaking into it, you can't help but wonder about the other stains on what you've had your face pushed against this whole time. Then the thought is washed away by a fresh throb of Darius's cock against your prostate, making you all tingly as you ride out your own orgasm together with his. The grunting canine grips your shoulder tightly as he falls forward in the grasp of his orgasm, panting with each further shot of creamy seed that paints your innards white. When Darius's orgasm eventually winds down, the Dalmatian looks down at you and comments, 'Damn, what a mess you made fag. Also, I feel as straight as ever, told you that you couldn't get to me.'";
			say "     With a grunt, he pulls his shaft out of your freshly bred ass, accompanied by a slurping noise and a small gush of cum oozing out to trickle down your crack. Chuckling at the sight of your sweaty, cum-splattered body, Darius stands up and takes a few steps to the side to pick up his jeans. As he shakes them out and prepares to get dressed, he throws you a short glance and adds, 'Hey, you should wipe yourself off, or rub it in, or whatever you freaks do. Can't have a filthy man-slut stretched out in the middle of my place. Got a rep to maintain, ya see?' With that said, he looks away, not really interested in your naked form now that he's gotten his rocks off.";
			NPCSexAftermath Player receives "AssFuck" from Darius;
	infect "Dalmatian Bitch";

to say DariusButtJobIntro:
	say "     As you step up to the large canine and ask him to grind against your ass again, Darius lets out a hearty chuckle. 'Liked it before, eh fag? Wanting a big, strong man to use you as a toy. What a fucking man-whore you are!' The tone of his voice makes it clear to you that the large Dalmatian is winding himself up, smugly reveling in his dominance, and you can see the bulge of his jeans grow as the canine's cock starts to push out of its sheath. Playing into his power-fantasy, you act suitably deferential, agreeing with his insults and begging to be taken by Darius. You even turn around and wiggle your rear at him, offering the crack of your ass and stressing that it'll be kinda similar to a titjob. Raising one eyebrow and giving you an amused look, Darius replies, 'Yo fuckhole, you really are desperate to feel a real man against your body, ain't that right? Fine, I'll fuck your whiny ass! You better be clean down there, or we'll have some words.' Eager to get it on with the dominant dog, you [SelfStripCrotch], then demonstratively spread your cheeks for Darius.";
	say "[DariusButtJob]";

to say DariusButtJob:
	say "     The Dalmatian sniffs the air in your direction and then grunts, 'You'll do, slut!' Right after that, he gives your ass a meaty slap and calls out, 'On your knees, faggot!' As you get down on the stained throw-rug in front of Darius's couch, feeling the spots of dried cum in the fabric against your naked skin, the drug dealer moves up close behind you. After the quickfire sounds of belt-buckle clinking and a zipper being pulled down, you see his jeans fly to the side, kicked off by the powerful male. Something warm and firm touches the top of your shoulder a second later: the anthro dog's dick, with a reddish skin color and pointy tip. He casually grinds against your upper body for a moment, including rubbing his weighty balls against the back of your shoulder, then soon gives you a shove that sends you falling forward, catching yourself on all fours.";
	WaitLineBreak;
	say "     Darius is on top of you before you really have a chance to react, one of his strong hands pushing down on the middle of your back. Face-planting on the carpet, you find your cheek pressed into it[if Player is submissive] and your arousal soaring as the canine man puts you down like the submissive slut you are[else] and some annoyance at the harsh treatment rise in you[end if]. Your eyes are still trying to focus on the peanut (or is it a pistachio?) lying just at the end of your nose when you feel Darius's breath against your ear. 'You asked for it, bitch boy! Now stay like that! Present your fuckhole like any good slut would, or I'll kick you out on the street naked!' Chuckling and licking your cheek in a possessive way, Darius then pushes himself up while bracing on your back, then takes his hand away. Even though you're no longer forced into position, you stay as you are, waiting for what the dominant male will do with you.";
	say "     'Shake that booty!' he commands, and you obey, earning you a laugh from the Dalmatian. His erection gets slapped against both your buttocks, switching up between them several times, then finally slots into place right between them, resting hotly in the crack of your ass. You can feel it leaking pre-cum on the small of your back, then your ass-crack itself as Darius pulls backwards and liberally rubs his fluids over your skin with his dickhead. Soon, his strong hands grasp the sides of your hips and the Dalmatian begins to thrust back and forth in the now well-lubed groove of your butt. 'You don't feel half bad, for a faggotty buttslut,' Darius tells you with a grunt in between the pants and lusty growls he makes as he grinds into you. He clearly is enjoying himself quite a bit if the dripping mess he's making of your behind is any indication. That doggy cock is leaking a lot of pre!";
	WaitLineBreak;
	say "     In between the regular humping, Darius also loves to really slam into your ass from time to time, a move that would have driven him balls deep if he had actually been fucking your hole. Now, there still is a satisfying slap as his crotch and swinging balls meet your buttocks, but the main effect his thrust has on you is that it pushes you a little across the carpet every time, since you can't really brace yourself in the [']ass up, head down['] position you're in. This goes so far that you eventually find yourself bumping against the front of the drug dealer's old couch, with it finally stopping you from getting any more rug-burn than you already have. Darius doesn't seem to care much either way, a short glimpse over your shoulder reveals that he's panting heavily as he humps your ass, eyes closed as he imagines one hot bitch or other.";
	say "     The grunts of the muscular canine do take on a bit of additional urgency as he continues to grind into your crack, interspersed with muttered words along the lines of, 'Yeah baby! Take it! Fucking hot bitch! You like the feel of my cock, don'tcha!' Soon after, things come to an explosive crescendo when Darius fingers clamp extra tight on your hips and he hammers against your ass with even greater force and his cock explodes with a geyser of cum! A heavy splurt hits the back of your head and you can feel his knot swell up between your buttocks. It rubs the sides of your ass-crack with its rounded curve as Darius continues to cum, all over your back, head and even the side of the couch. The grunting canine grips your shoulder tightly as he falls forward in the grasp of his orgasm, panting with each further shot of creamy seed that paints you white.";
	WaitLineBreak;
	say "     When Darius's orgasm eventually winds down, the Dalmatian looks down at you and comments, 'Damn, what a mess. Gotta admit that you were more fun than I'd thought, fag. That ass of yours felt like a really juicy pair of tits on my shaft.' Chuckling, he stands up and takes a few steps to the side to pick up his jeans. As Darius shakes it out and prepares to get dressed, he throws you a short glance and adds, 'Hey, you should wipe yourself off, or rub it in, or whatever you freaks do. Can't have a filthy man-slut stretched out in the middle of my place. Got a rep to maintain, ya see?' With that said, he looks away, not really interested in your naked form now that he's gotten his rocks off.";
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
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger the Dalmatian's ass";
	now sortorder entry is 2;
	now description entry is "Slip Darius a finger and open up his tailhole";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat the Dalmatian's ass";
	now sortorder entry is 3;
	now description entry is "Get your tongue in, worshiping his tailstar";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Hotdog the Dalmatian's ass";
		now sortorder entry is 4;
		now description entry is "Grind your dick against his crack";
	[
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his muzzle";
		now sortorder entry is 2;
		now description entry is "Face-fuck the Dalmatian";
	[]
	if Player is female:
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
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 5;
		now description entry is "Take the Dalmatian's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Gather some of his fur";
	now sortorder entry is 20;
	now description entry is "Harvest Dalmatian fur from Darius";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fill up a bottle with Dalmatian cum";
	now sortorder entry is 21;
	now description entry is "Harvest Dalmatian cum from Darius";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Give him a BJ"):
					say "[BlissedDarius_BJ]";
				else if (nam is "Finger the Dalmatian's ass"):
					say "[BlissedDarBlissedDarius_Fingering]";
				else if (nam is "Eat the Dalmatian's ass"):
					say "[BlissedDarius_AssEating]";
				else if (nam is "Hotdog the Dalmatian's ass"):
					say "[BlissedDarBlissedDarius_Hotdogging]";
				else if (nam is "Fuck his muzzle"):
					say "[BlissedDarius_FaceFuck]";
				[
				else if (nam is "Sink your pussy onto his dick"):
					say "[BlissedDariusSex3]";
				else if (nam is "Sink your asshole onto his dick"):
					say "[BlissedDariusSex4]";
				]
				else if (nam is "Fuck him"):
					say "[BlissedDarius_Fucking]";
				else if (nam is "Gather some of his fur"):
					say "[BlissedDariusHarvest1]";
				else if (nam is "Fill up a bottle with Dalmatian cum"):
					say "[BlissedDariusHarvest2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the muscular Dalmatian, leaving him slumped on the sofa.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BlissedDarius_BJ:
	say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa, the man's slightly spread legs and the bulge in his pants. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you slide a hand down over his firm pecs and abs, feeling them and the softness of his fur. You savor the moment of having this hunk for yourself right now, docile and passed out. All your attention then focuses on his lower half, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your unconscious dog.";
	say "     Wrapping your fingers around the warmth of his rod, you hold Darius's shaft upright and stroke up and down its length. He's at least ten inches long, with a nice and red shaft complete with tapered tip and the pre-knot bulge typical for canines. He's pretty thick too, and the furry orbs of his balls lie nicely in your hand as you cup and squeeze them. Completing your leisurely inspection of his manhood, you lean forward and lick a drop of pre off the tip. The flavor of the virile male unfolds on your tongue, making you hungry for more, so you slide your lips over his dickhead and sink down onto his shaft. Darius lets out a pleased grunt as his erection is enveloped by something warm and tight, but even this isn't enough to rouse him from his drugged slumber, so you're not slammed onto his shaft by a hand on your head but instead can take him at your own pace.";
	WaitLineBreak;
	say "     Eventually having taken the canine erection right up to the bulge at the base, with it tickling your tonsils, you wait for a few seconds, then slide back off, playing your tongue over the shaft as you go. After pulling the head out of your mouth with a playful and intentional pop, you take some deep breaths and feast your eyes on the long piece of doggy dick before your eyes. Then it's back down onto the sleeping Dalmatian's cock, sucking and bobbing on its hard length while your fingers caress his balls. Giving the drugged dealer a leisurely blow-job, your mouth is filled with his taste as he leaks pre onto your tongue in little dribs and spurts. You can feel his balls tighten a little as the anthro's arousal mounts, with little sounds of pleasure passing his lips as he unconsciously reacts to what you're doing. Glancing up, you grin at the dog, seeing his head limply leaned back against the sofa and the muzzle having opened a little, with the tip of his tongue poking out to the side.";
	say "     With your gaze still on Darius's face, you pull back off his dick, then lap at the pointy head with the tip of your tongue, amusedly watching him start to pant from the slow stimulation. To put another level on this playful interaction, your hands move to grope the drug dealer, fingers wrapping around the pre-knot bulge around the base of his dick and squeezing it firmly, while your other hand cups and fondles the dog's furry balls. He's very warm to the touch and hard as a rock in your grasp, showing just how much you've already wound the man up, even though he can't tell you verbally right now. If he was awake, he'd no doubt be itching to shoot his load down your throat, but right now you've got all the time in the world. And so you play around in a relaxed way, finding all the little spots and things to do that draw small yips and twitches from Darius.";
	WaitLineBreak;
	say "     As time goes on though, a little bit of a whining undertone starts to creep into the sounds he makes, likely from him getting blue balls. With all this stimulation, his balls must be getting tight, working overtime to prepare the long-overdue orgasm that they're expecing. You keep at it for a little while longer, enjoying the feel of power over the dog that this gives you, before finally relenting and getting back to a bit more active work on the red rocket of Darius's dick. Pressing down on the bulge of his pre-knot and feeling it throb, itching to swell up to go with an orgasm, you open your mouth and go down on the drugged dealer, eager to taste the Darius's load. As you bob up and down on his hard rod, the Dalmatian's small pants and sounds escalate to full-on moaning, spurring you on to suck him off and drive your doggy plaything over the edge.";
	say "     It doesn't take much longer before the Dalmatian lets out an urgent grunt, his hips humping up reflexively even though he is still out for the count overall. You can feel the throb in his balls and his cock as the first spurt of cum shoots out, right down your throat, followed by a second in close succession. The third splash of canine seed you take on your tongue instead, having pulled back far enough that you can taste Darius's rich seed. His orgasm doesn't let up for quite a while and the dal floods your mouth with his load, forcing you to gulp down cum several times just to keep from drowning in the seer volume of it. When Darius's climax eventually peters off, you feel like you had half a meal of cum in your stomach, which might just be the truth, as the anthro dog gave you a big and creamy load of protein.";
	WaitLineBreak;
	say "     Pulling off the slowly softening canine cock, you smack your lips and lick off any last dribs of cum from his dickhead, then gently lay his dick onto his abs. Tugging the jeans back into position, you raise their zipper at least as far as it was before, then stand up, leaving the Dalmatian passed out on his couch and none the wiser. In all likelihood, he'll not remember a thing about what just happened here.";
	PlayerEat 15;
	NPCSexAftermath Player receives "OralCock" from Darius;

to say BlissedDarius_AssEating: [rimming]
	say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa, imagining the curve of his ass without those pants in the way. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you rest your hand on one of his firm pecs, feeling the warmth of his fur, and the faint beat of his heart under your fingertips. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nips and pinching them draws a soft groan from Darius, with the little nubs getting delightfully hard and sticking out. You snicker at seeing the rough thug with stiff nipples, like an innocent virgin - while he would likely punch you in the face if he were awake for this.";
	say "     Instead, you have all the time in the world to lean in and playfully suck on first one, then the other nipple. The short hair of his chest tickles against your chin as you play with the Dalmatian. After a little while of just enjoying Darius's chest, you slowly move the hand down, reaching the curve of the bulging pec before tracing over the dips and rises of Darius's hard abs, contrasted by the softness of his coat. Going further, you reach where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog. Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this tough thug of a canine that you've [']brought to his knees[']. Then you reach over to grab the wrist of the arm on his far side and start pulling on Darius's limp form.";
	WaitLineBreak;
	say "     It's a definite workout to move him, broad-shouldered and muscular as he is, but with some effort you roll Darius over. Inspecting your handiwork, you can't help but grin at the fact that his open jeans slipped down a little, revealing the start of a pair of firm, furry buttocks. Planting your hands on his thighs, you give a heave and drag him off the couch just a little further, his lower body fully over the edge now. Bending those powerful anthro legs of his at the knee and planting them against the shaggy carpet, it's fairly easy to prop his ass up a little in an approximation of the classic doggy-style position. Then as the final stroke, you hook your fingers over his beltline on both sides, then pull the jeans down all the way to his knees. Stepping back for a second, you feast your eyes on the Dalmatian you just posed - his muscular torso resting on the sofa face first, and that glorious ass presented for all to see.";
	say "     How funny would it be to have some of his other customers walk in on this, or Darius's bitches coming to check on him. Almost expectantly, you glance over to the entrance door with its broken lock, then at the hole in the wall in the far corner, leading to the adjoining apartment that the drug dealer has also claimed to house his bitches. Waiting for a few seconds, all is quiet out front, and from next door you vaguely hear some yipping, from the throat of what must be one of the many puppies Darius has fathered since this whole mess of a situation started. Seems like the Dal bitches are busy with their offspring, and ";
	if "Ulysses Introduced" is listed in Traits of Darius:
		say "Ulysses must be dutifully guarding them, so";
	say "no one else is coming either to interrupt your play-time with the blissed-out, drugged thug! Barely able to contain your eagerness, you brush aside an empty bottle and some dropped prezels from the carpet, then kneel behind Darius.";
	WaitLineBreak;
	say "     Your hands move to grope his round buns almost on their own accord, giving those firm, soft-furred buns a hard squeeze. Groping this tough, no-nonsense dealer makes you feel amazing, not just from the warmth of his ass in your grasp, but also from the sensation of being able to do whatever you want with a guy like him, with the added thrill of being right in the middle of his living room, surrounded by two unsecured entrances. Your heart beats rapidly in your chest as you pull his cheeks apart, then hook your thumb under the currently limply hanging tail of your canine plaything. As you pull the Dalmaian's slender appendage to the side, the pink, wrinkled star of his pucker is revealed, looking delightfully relaxed and unspoiled for you to enjoy. Inspecting his crack, you are relieved to see that he's a straight man keeping up with proper cleanlyness despite the ongoing nanite apocalypse.";
	say "     Unable to keep yourself back any further, you smoosh your face in between Darius's buttocks, enjoying the feeling of his furred warmth against your cheeks. Huffing the slightly musky, intoxicating scent of the very masculine street thug, you open your mouth and stick out your tongue, tracing it over his wrinkled tail-star. It is almost a shame the man is blissed-out and not even registering what you're doing, as there is no tension in the ring muscle, with it just having its natural tight shape. ";
	if "Buttslut Revealed" is listed in Traits of Darius:
		say "You're really looking forward to doing this to him when he's fully conscious again, to feel his rose-bud tremble at your touch, and hear Darius pant in anticipation of what you'll do to him next. But despite this, having a little bit of variety is fun in its own right, and you also love to relive everything you had to do to break this man in for accepting to be your thug buttslut. ";
	else:
		say "How much better would it be to feel the rose-bud tremble at your touch, and hear Darius pant in anticipation of what you'll do to him next - but then again, if he wasn't unconscious, the proud thug would more likely smash in your face rather than letting his ass be eaten patiently. ";
	say "Brushing aside those thoughts, you push your tongue forwards, worming against the anthro's back door and finding ready access to slide into the tight passage. ";
	if "Blissed_Rimmed" is not listed in Traits of Darius: [first time]
		say "As he feels the new sensation of someone invading his private area like this, Darius lets out a shocked yip even while being drugged, his back arching and arms flailing as if he was trying to crawl somewhere, trying to get away from your tongue. You can't help but worry if you pushed things too far, and are about to be grabbed by an enraged Dalmatian, but no - he's still blissed out, mostly reacting on autopilot, and when you wiggle your tongue, the muscular man slumps back forward with a breathy moan. His pucker trembles and twitches around your probing appendage, with him panting arousedly as you explore the sensitive spots in his tight rear. His body sure is registering that something good is happening, as his tail raises from where it was hanging, now standing upright in a little curve, which almost feels like an invitation.";
	else:
		say "There is a little yip from Darius as you enter his body, more of a panted breath than a conscious sound, as he is still well and truly out for the count. His body seems to be registering that something good is happening though, as there is a reaction when you begin to wiggle your tongue playfully - his tail raises from where it was hanging, now standing upright in a little curve, which almost feels like an invitation.";
	WaitLineBreak;
	say "     For a while, you simply focus on pleasuring the asshole of your drugged thug, one hand angling up his tail so he doesn't wag it in your face, the other still planted on his buttocks and massaging while you swirl around your tongue. While Darius isn't exactly a vocal partner in his current state, that doesn't mean that he isn't reacting at all to your stimulation, just that you have to pay more attention to read his signals. Each halting breath and subconscious sigh passing his lips is a victory in its own right, and you can feel the muscles of his ass tighten slightly every time you wiggle your tongue-tip in a certain way. And as for the tail - well, doesn't take a genius to figure out what the slow, pleased wag of that means. Conscious or not, Darius's body sure seems to appreciate what you're doing, and seems very sensitive to having its asshole eaten by someone dedicated to the task and taking their time to really find all the pleasure spots to hit.";
	say "     Curious about Darius's own reaction to what you're doing, you crane your neck to glance past the side of the Dalmatian's hip, to see the fully erect red rocket of his canine cock. And on the tip of his dick, a thick droplet of pre-cum is hanging precariously, then falls - drawing a long string of goop before hitting the carpet. You've got him wet and dripping pre! A chuckle excapes your lips as you see just how much you've wound the man up by eating his ass, and you go back at eating his crack with a vengeance, really pulling out all the stops now. If he's close to dropping a load, you want to push him properly over the edge, to train this big, tough man's body that it can get off with no one touching his dick at all! Tongue sunk deep into his passage, you wriggle and twist it wildly, hitting all the most sensitive spots that you explored over the last little while.";
	WaitLineBreak;
	say "     Giving Darius a wild and enthusiastic rimming, you get him moaning out loud in his drugged sleep, with the noises building up to a deep grunt as his anal muscles start rhythmically twitching. The tough-guy dog is cumming, hands-free! A sudden idea strikes you, and you blindly reach around him while still having your face buried in the drug-dealer's crack, until you feel a splash of wetness hit your hand. Doing your best to catch the rich, goopy bounty of Darius's nut-milk in your cupped palm, you can feel it be splattered with streaks of warm cum. After his orgasm eventually winds down, you carefully bring your hand with the goopy white load from underneath the anthro dog. Dipping a finger into his cum, you brush your fingertip over the wrinkled hole to spread it like lube, then go back for more and slowly work your digit into his body, waiting for him to relax after each new inch slides in and he instinctively tightens up.";
	say "     Bit by bit, you scoop up more of the cum, or even just let it drip down on your finger as it goes in and out, playfully pushing more and more of Darius's own load into this sweet hole. When everything you managed to catch is eventually gone, you lick your hand clean not to waste any of his nut-milk before getting right back to eating his ass, now filled with a creamy treat of Dalmatian cum. As much fun as it was to tongue the anthro dog before, now it's even better, as you switch back and forth between pushing cum deeper into his ass with your fingers, then seeing if you can reach it with your tongue, both tasting his load as well as painting his insides with a mix of your spit and his cum. Darius surely would be shocked by being made to take his own cum deep inside his ass, and you playing around with using him as a treat to be eaten out and rimmed to your heart's content, which makes the little game just so much better! You continue to feast upon his asshole for a nice little while, until all of his load is either swallowed and in your stomach, or pushed so deep that it's not coming out easily. As you pull your face out of his musky crack, you grin at the image of leaving him with cum up his backside, with Darius being none the wiser.";
	WaitLineBreak;
	say "     To make sure things stay like that too, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab off the spots of cum that missed making it into his hole and which you're not wanting to suck out of his fur. With a grin, you bunch up the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, with him being fairly heavy with muscle, but you manage to get him mostly dressed again and stretched out on the sofa, lying on his front. As you lift his hips a little to pull the jeans back into place at his front, you can feel wetness from his cock, leaking some little amount of cum onto the couch. You wonder for a moment if that might be something which could betray your activities, but then several other telltale stains on the cushions, making it clear that this is far from the first time someone had sex on the piece of furniture. All of your cleanup tasks now dealt with, you get dressed and take up your gear once more.";
	LineBreak;
	if Player is male:
		if "Dildo Trained (Small)" is not listed in Traits of Darius and "Dildo Trained (Big)" is not listed in Traits of Darius:
			say "     Throwing Darius a glance over your shoulder, you can't help but wonder about getting him ready to be fucked by actual dicks. Given that he's a straight guy, more than ready for violence when not drugged, and you're doing this in secret, it'd really be best to gradually work up to it. You'll have to train his body to expect pleasure from his ass (as you did right now), and then slowly stretch that hole over time before you put a real cock in it. For the latter, you'll need some equipment - varied sizes of sex toys, and lube for sure. [bold type]Might be a good idea to check the nearby porn stores...[roman type][line break]";
		else if "Dildo Trained (Big)" is listed in Traits of Darius:
			say "     Throwing Darius a glance over your shoulder, you grin broadly. This was fun! Even though you've trained his asshole to accept dicks now, a bout of kinky rimming is a nice variety of pleasure to have with him.";
		else if "Dildo Trained (Small)" is listed in Traits of Darius:
			say "     Throwing Darius a glance over your shoulder, you grin broadly. This was fun! Even though you've working on training to accept real dicks too, a bout of kinky rimming is a nice variety of pleasure to have with him. Though of course, that doesn't mean you're not looking forward to digging out the shoebox full of sex toys and lube you've hidden under the sofa and having another session with the drug dealer soon...";
	TraitGain "Blissed_Rimmed" for Darius;
	NPCSexAftermath Player receives "OralAss" from Darius;

to say BlissedDarBlissedDarius_Fingering:
	say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa, rubbing your hands together as you imagine the curve of his ass without those pants in the way. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you rest your hand on one of his firm pecs, feeling the warmth of his fur, and the faint beat of his heart under your fingertips. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nips and pinching them draws a soft groan from Darius, with the little nubs getting delightfully hard and sticking out. You snicker at seeing the rough thug with stiff nipples, like an innocent virgin - while he would likely punch you in the face if he were awake for this.";
	say "     Instead, you have all the time in the world to lean in and playfully suck on first one, then the other nipple. The short hair of his chest tickles against your chin as you play with the Dalmatian. After a little while of just enjoying Darius's chest, you slowly move the hand down, reaching the curve of the bulging pec before tracing over the dips and rises of Darius's hard abs, contrasted by the softness of his coat. Going further, you reach where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog. Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this tough thug of a canine that you have in your power right now. Then you reach over to grab the wrist of the arm on his far side and start pulling on Darius's limp form.";
	WaitLineBreak;
	say "     It's a definite workout to move him, broad-shouldered and muscular as he is, but with some effort you roll Darius over. Inspecting your handiwork, you can't help but grin at the fact that his open jeans slipped down a little, revealing the start of a pair of firm, furry buttocks. Getting up and walking around the sofa, you snake your hands underneath his armpits and heave to, dragging the heavy Dalmatian up against the backrest. One by one, you pull his arms closer to yourself, hooking them over the sofa's upper edge. That should keep him in place nicely, with his chest against the back cushions, and the arms keeping him from sliding back. Giving the dog a grin as you look at his form limply hanging over the piece of furniture, you circle the sofa with a skip in your step. Rubbing your hands in anticipation, you let your gaze sweep over the drugged man, going through your ideas of what to do next.";
	say "     You reach out for the drug dealer's rear end, giving his mid-length tail a slow stroke, followed massaging the spot where it connects to the dog's lower back. Then suddenly, Darius's right leg starts to twitch and move, with his blunt claws scraping over the carpet and knocking aside an empty bottle. For a second, you almost think he's waking up, but no - he's still hanging over the back of the sofa where you draped him. Must have been touching his tail that made him move. Playfully experimenting a little, you rub and squeeze the area where Darius's tail is attached, until you find just the sweet spot. You just have to push right there and wiggle your fingertip, and presto: Darius's right lower leg will lightly kick back, with the paw moving as if he was scratching himself! Or he would be, if he was a four-legged dog and curled up. Seems like some of the dog-reflexes got rewired elsewhere when being applied to a human shape.";
	WaitLineBreak;
	say "     Eventually, pushing aside your fascination at making Darius move how you like, you get back to man-handling the passed-out guy. The scratch-reflex doesn't help you with that, so it takes some effort, but with patient dedication, you manage to heave the muscled mass of the anthro to push his legs into place beneath, making his lower body 'kneel' on the sofa's seat. This props Darius's ass up quite nicely, in an approximation of the classic doggy-style position. Then as the final stroke, you hook your fingers over his beltline on both sides, and work the jeans down over his ass and along the thighs, all the way to his knees. Stepping back for a second, you feast your eyes on the Dalmatian you just posed: Mostly naked with his glorious ass invitingly exposed as he hangs limply over the backrest of the sofa.";
	say "     How funny would it be to have some of his other customers walk in on this, or Darius's bitches coming to check on him. Almost expectantly, you glance over to the entrance door with its broken lock, then at the hole in the wall in the far corner, leading to the adjoining apartment that the drug dealer has also claimed to house his bitches. Waiting for a few seconds, all is quiet out front, and from next door you vaguely hear some yipping, from the throat of what must be one of the many puppies Darius has fathered since this whole mess of a situation started. Seems like the Dal bitches are busy with their offspring, and ";
	if "Ulysses Introduced" is listed in Traits of Darius:
		say "Ulysses must be dutifully guarding them, so";
	say "no one else is coming either to interrupt your play-time with the blissed-out, drugged thug! Barely able to contain your eagerness, you put your hands on his rear end, spreading the spotted buttocks to reveal his tail-star. Its pink, wrinkled opening looks small and very tight, ";
	if "Dildo Trained (Small)" is not listed in Traits of Darius and "Dildo Trained (Big)" is not listed in Traits of Darius:
		say "as is only to be expected by a straight man's backside.";
	else if "Dildo Trained (Big)" is listed in Traits of Darius:
		say "betraying nothing about the fact that you've put some serious effort into training him with well-sized dildos. Of course, that's the beauty about going for a proud, pussy-loving guy - he's not gonna give it up to just anyone, so that ass is gonna stay [italic type]tight[roman type] for a long while!";
	else if "Dildo Trained (Small)" is listed in Traits of Darius:
		say "betraying nothing about the fact that you've started training him to accept something up his ass. Not that you haven't advanced past the small, beginner's dildos, but with some patience, he'll be well broken in soon!";
	WaitLineBreak;
	say "     Hooking the thumb of one hand under the Dalmatian's tail to keep it bent to the side and out of your way, you lean over Darius's ass. After gathering a large gob of spit and allowing it to drip right into the tough-guy dog's buttcrack, your index finger leads the way trailing up and down between the furred buns, brushing the wetness over his pucker. Circling around the hole with your fingertip, you stroke his sensitive skin and feel it twitching in reaction ";
	if "Blissed_Fingered" is not listed in Traits of Darius: [first time]
		say "of this uninvited touching of his private area. Then you go one step further, placing the tip of your finger right over the slightly clenched hole in the center. You can feel a building tension in him as you slowly press inwards, increasing the pressure little by little. This dog is [italic type]tight[roman type]! Adding another big gob of saliva spit right at the opening, you slicken up your finger with the improvised lube and get right back to wiggling the digit against Darius's back door.";
		say "      As the first segment of your finger enters him, Darius lets out a shocked yip even in his drugged state, his back arching and arms flailing as if he was trying to crawl somewhere, uncoordinatedly trying to get away. You can't help but worry if you pushed things too far, and are about to be grabbed by an enraged Dalmatian, but no - he's still blissed out, mostly reacting on autopilot, and a moment later, his instinctive clench around your fingertip relaxes again, allowing you to slip more of your finger inside him. It's slow going, but you wiggle deeper and deeper, until eventually feeling the bump of the drug dealer's prostate under your fingertip. When you give that a rub, grinning excitedly, the muscular man slumps back forward with a breathy moan, all the fight leaving him to be replaced with arousal. His pucker trembles and twitches around your probing appendage, with him panting arousedly as you explore the sensitive spots in his tight rear.";
	else:
		say "of being touched in his private area yet again. There is something amusing about the fact that Darius's is reacting almost like an innocent virgin, despite all that you've done to him, and you continue the slow approach with a chuckle on your lips. Of course, his body does remember what happened last time, so there isn't as much of a reaction as you tap your fingertip right on top of his slightly clenched hole. Adding another big gob of saliva spit right at the opening, you slicken up your finger with the improvised lube and get right back to wiggling the digit against Darius's back door.";
		say "      As the first segment of your finger enters him, Darius's back passage clenches instinctively, not as bone-crushingly tight as the first time, but still quite noticable around your exploring digit. The dog himself is panting, and you listen to his breath quickening a little as you keep going, adding another inch or half inch every time he relaxes a little. It's slow going, but you wiggle deeper and deeper, until eventually feeling the bump of the drug dealer's prostate under your fingertip. When you give that a rub, grinning excitedly, most of the built-up tension leaves the broad-shouldered man's body as he lets out a breathy moan as he starts to get aroused. His pucker trembles and twitches around your probing appendage, with Darius panting in lust as you explore the sensitive spots in his tight rear.";
	WaitLineBreak;
	say "     The Dalmatian's body sure is registering that something good is happening, as his tail raises from where you had been holding its limp length, to stand upright in a little curve, which feels like an invitation you're more than happy to follow along with. After another brush over his prostate, you withdraw your finger from Darius's asshole, slowly and gently as not to give him a shock, then add more spit before sliding back into him. Best to have him be wet and slippery as you begin to pump your digit in and out, working to get the man used to sensation of such movements past his pucker. And of course, you aim straight for his magic button on every push inside, fanning the dog's arousal higher and higher as you finger-bang him. Soon, he's well past just panting a little bit - the guy's moaning notiably now, and making little humping motions with his hips too!";
	say "     Curious about any physical reaction to what you're doing, you crane your neck to glance past the side of the Dalmatian's hip, to see the fully erect red rocket of his canine cock. And on the tip of his dick, a thick droplet of pre-cum is hanging precariously, then falls - drawing a long string of goop before hitting the cushions of the sofa. You've got him wet and dripping pre! A chuckle excapes your lips as you see just how much you've wound the man up. Grinning, you pull out all the stops now, sliding your finger in and out quickly, intermixed with grinding it deep into him and massaging his prostate. If he's close to dropping a load, you want to push him properly over the edge, to train this big, tough man's body that it can get off with no one touching his dick at all! Your finger inside him to the knuckles, you wriggle and twist it wildly, hitting all the most sensitive spots that you explored over the last little while.";
	WaitLineBreak;
	say "     Giving Darius a wild and enthusiastic finger-bang, you get him moaning out loud in his drugged sleep, with the noises building up to a deep grunt as his anal muscles start rhythmically twitching. The tough-guy dog is cumming, hands-free! You grin to yourself about how you didn't even have to touch his thick cock, with your anal training being enough to get Darius off, simply by having your index finger rubbing Darius's most senstivie spot. Glancing past the anthro's hips you can see his red rocket of a doggie dick swing up and down, twitching with every spurt of cum that rockets up the semen tube and sprays onto the cushions of the sofa. You keep up your stimulation throughout his climax, counting each flexing of his anal muscles that accompanies a cumshot as a victory for your intended cause, driving home the point that his ass gives pleasure. And all that with Darius's conscious mind being none the wiser right now.";
	say "     To make sure things stay like that too, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab off the wetness. With a grin, you bunch up the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, with him being fairly heavy with muscle, but you manage to get him mostly dressed again and stretched out on the sofa, lying on his front. As you lift his hips a little to pull the jeans back into place at his front, you can feel wetness from his cock, leaking some little amount of cum onto the couch. You wonder for a moment if that might be something which could betray your activities, but then several other telltale stains on the cushions, making it clear that this is far from the first time someone had sex on the piece of furniture. All of your cleanup tasks now dealt with, you put your gear back in order and take a step towards the door leading outside.";
	WaitLineBreak;
	if "Dildo Trained (Small)" is not listed in Traits of Darius and "Dildo Trained (Big)" is not listed in Traits of Darius:
		say "     Throwing Darius a glance over your shoulder, you can't help but wonder about getting him ready to be fucked by actual dicks. Given that he's a straight guy, more than ready for violence when not drugged, and you're doing this in secret, it'd really be best to gradually work up to it. You'll have to train his body to expect pleasure from his ass (as you did right now), and then slowly stretch that hole over time before you put a real cock in it. For the latter, you'll need some equipment - varied sizes of sex toys, and lube for sure. [bold type]Might be a good idea to check the nearby porn stores...[roman type][line break]";
	else if "Dildo Trained (Big)" is listed in Traits of Darius:
		say "     Throwing Darius a glance over your shoulder, you grin broadly. This was fun! Even though you've trained his asshole to accept dicks now, a bout of relaxed fingering is a nice variety of pleasure to have with him.";
	else if "Dildo Trained (Small)" is listed in Traits of Darius:
		say "     Throwing Darius a glance over your shoulder, you grin broadly. This was fun! Even though you've working on training to accept real dicks too, a bout of relaxed finger is a nice variety of pleasure to have with him. Though of course, that doesn't mean you're not looking forward to digging out the shoebox full of sex toys and lube you've hidden under the sofa and having another session with the drug dealer soon...";
	TraitGain "Blissed_Fingered" for Darius;
	NPCSexAftermath Darius receives "Stroking" from Player;

to say BlissedDarBlissedDarius_Hotdogging:
	say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa, rubbing your crotch as you imagine the curve of his ass without those pants in the way.. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you rest your hand on one of his firm pecs, feeling the warmth of his fur, and the faint beat of his heart under your fingertips. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nips and pinching them draws a soft groan from Darius, with the little nubs getting delightfully hard and sticking out. You snicker at seeing the rough thug with stiff nipples, like an innocent virgin - while he would likely punch you in the face if he were awake for this.";
	say "     Instead, you have all the time in the world to lean in and playfully suck on first one, then the other nipple. The short hair of his chest tickles against your chin as you play with the Dalmatian. After a little while of just enjoying Darius's chest, you slowly move the hand down, reaching the curve of the bulging pec before tracing over the dips and rises of Darius's hard abs, contrasted by the softness of his coat. Going further, you reach where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog. Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this tough thug of a canine that you have in your power right now. Then you reach over to grab the wrist of the arm on his far side and start pulling on Darius's limp form.";
	WaitLineBreak;
	say "     It's a definite workout to move him, broad-shouldered and muscular as he is, but with some effort you roll Darius over. Inspecting your handiwork, you can't help but grin at the fact that his open jeans slipped down a little, revealing the start of a pair of firm, furry buttocks. Getting up and walking around the sofa, you snake your hands underneath his armpits and heave to, dragging the heavy Dalmatian up against the backrest. One by one, you pull his arms closer to yourself, hooking them over the sofa's upper edge. That should keep him in place nicely, with his chest against the back cushions, and the arms keeping him from sliding back. Giving the dog a grin as you look at his form limply hanging over the piece of furniture, you circle the sofa with a skip in your step. Rubbing your hands in anticipation, you let your gaze sweep over the drugged man, going through your ideas of what to do next.";
	say "     You reach out for the drug dealer's rear end, giving his mid-length tail a slow stroke, followed massaging the spot where it connects to the dog's lower back. Then suddenly, Darius's right leg starts to twitch and move, with his blunt claws scraping over the carpet and knocking aside an empty bottle. For a second, you almost think he's waking up, but no - he's still hanging over the back of the sofa where you draped him. Must have been touching his tail that made him move. Playfully experimenting a little, you rub and squeeze the area where Darius's tail is attached, until you find just the sweet spot. You just have to push right there and wiggle your fingertip, and presto: Darius's right lower leg will lightly kick back, with the paw moving as if he was scratching himself! Or he would be, if he was a four-legged dog and curled up. Seems like some of the dog-reflexes got rewired elsewhere when being applied to a human shape.";
	WaitLineBreak;
	say "     Eventually pushing aside your fascination of making Darius move at your command, at least a little bit, you then get back to man-handling the passed-out guy. The scratch-reflex doesn't help you with that, so it takes some effort, but with patient dedication, you manage to heave the muscled mass of the anthro to push his legs into place beneath, making his lower body 'kneel' on the sofa's seat. This props Darius's ass up quite nicely, in an approximation of the classic doggy-style position. Then as the final stroke, you hook your fingers over his beltline on both sides, and work the jeans down over his ass and along the thighs, all the way to his knees. Stepping back for a second, you feast your eyes on the Dalmatian you just posed: Mostly naked with his glorious ass invitingly exposed as he hangs limply over the backrest of the sofa.";
	say "     How funny would it be to have some of his other customers walk in on this, or Darius's bitches coming to check on him. Almost expectantly, you glance over to the entrance door with its broken lock, then at the hole in the wall in the far corner, leading to the adjoining apartment that the drug dealer has also claimed to house his bitches. Waiting for a few seconds, all is quiet out front, and from next door you vaguely hear some yipping, from the throat of what must be one of the many puppies Darius has fathered since this whole mess of a situation started. Seems like the Dal bitches are busy with their offspring, and ";
	if "Ulysses Introduced" is listed in Traits of Darius:
		say "Ulysses must be dutifully guarding them, so";
	say "no one else is coming either to interrupt your play-time with the blissed-out, drugged thug! Barely able to contain your eagerness, you [if Player is not naked]quickly strip down, braving the potential for exposure if anyone walked in. [else]proudly stand tall in your nakedness, braving the potential for exposure if anyone walked in. [end if]Then you step right up behind the humanoid dog, ignoring the dropped snack-prezel you just crushed into the carpet, and wrap your fingers around the base of your [Cock of Player] shaft.";
	WaitLineBreak;
	say "     You're more than a little hard already, your cock throbbing under your fingertips with the rhythm of your heart. What a delicious opportunity simply drugging Darius with some of his own product! Licking your lips, you then close the last bit of distance, simply be leaning forward and brushing the head of your erection along the crack between the Dalmatian's spotted buttocks. His body feels warm and soft against your manhood, drawing you in to keep going. Taking hold of the dog's tail with one hand and gently pulling it out of the way, you continue to guide your cock with the other. Small touches and movements gradually grow, with you first just rubbing up and down, then honing in on the wrinkled tail-star. You can hear a slight snort of indrawn breath, and a slight twitch goes through Darius's body when you press your glans right up against his opening. His conscious self might be knocked out right now, but it seems that the dog's instinctive reactions are still on point, registering being touched in that very private area.";
	say "     Relenting from pushing in against the unconscious guy's pucker, you instead line your whole manhood up with his crack, sliding it into place like a hot dog between its buns. Darius's rear feels very nice as it cradles your erection in warmth and soft fur, and you proceed to grind your crotch forward, mock-fucking against the dog's ass. Thrusting between the spotted buttocks, you put your hands on his cheeks and squish them together to make the sensations even more pleasurable. And not just for yourself apparently, as you don't have to hold up his tail much longer, with the appendage starting a steady, pleased wag all on its own accord. Looks like rubbing your dick against the dog's crack and over his pucker gets him very relaxed and chill, just riding the high that the bliss in his system is giving him. Darius's own cock is hard and ready due to the overall state of arousal he is in. Not too surprising, as you're basically massaging his hole, going through fucking motions and doing everything but penetrating him.";
	WaitLineBreak;
	say "     Taking care not to touch his dick, as you want to drive home that his ass is a source of pleasure, you straighten yourself back up. With a lusty grunt on your lips, you grab hold of the muscular man's hips and start to rail his buttocks in earnest now, really laying into Darius and making your balls smack against his taint with every thrust. He himself seems to pick up on that too, as you can hear some panted moans from his muzzle. Fingers digging into the furred sides of the unconscious drug dealer, you can feel a familiar tightness rise in your balls, giving you the momentary thought how hot it would be to just blast your essence all over his broad back. All that spotted fur, streaked with your cum and marked as your fucktoy. But of course, spraying your seed all over Darius wouldn't be something that you could hide afterwards. You can't really wash the scent off if it soaks into his fur, and your scent would be all over him then.";
	say "     With a sigh, you resolve to do the next best thing - which is lining your cock up with his tailstar, then slowly rubbing the tip of your erection over it. Not that you plan on pushing into him, but... you can sure fill him up! Imagining the shocked reaction of a sober and conscious Darius for what you've got planned, you hold your erection right up agains his opening, savouring the moment as you slowly jerk your cock with one hand. It doesn't take long at all before you push yourself over the edge, dickhead pressed tight against Darius's pucker, not quite pushing in, but literally being one single step short. Accompanied by a very satisfied grunt, you begin to unload into him! Thick, creamy spurts of cum blast right into Darius's asshole, giving his prostate a very stimulating massage with every new spurt. Then suddenly, you hear him moaning out loud in his drugged sleep, with the noises building up to a deep grunt as his anal muscles start rhythmically twitching. The tough-guy dog is cumming, hands-free!";
	WaitLineBreak;
	say "     Keeping yourself pressed tightly against the Dalmatian's tailstar, the high of your orgasm is made even better by the twitches you feel against your dickhead, knowing that you pushed this straight guy over the edge! It costs you serious self-control not to just follow up and ram into him and let the rest of your load drain deep in your canine fucktoy. As much fun as that would be, it wouldn't do for your doggie to wake up with a sore hole later, so you keep things at simply filling him, not letting any drop escape and thus forcing your load deeper and deeper into Darius as your cock keeps spurting more into him. Only when you're fully done, with the last little spurts having ebbed off, do you pull back and inspect your handiwork. Such a pretty little hole, with just a hint of whiteness showing in the middle of it. Looks like you found one big advantage of doing things like this: Darius's hole didn't get stretched out, so it isn't gaping and leaking cum. Instead, you fired your load through the tiniest of openings, trapping your seed inside the dog, with Darius being none the wiser.";
	say "     To make sure things stay like that too, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab off the miniscule amount of cum visible. Then you glance around to see the mess that Darius made of the backrest, cumming all over it, and give that a casual wipedown too. Not that this'll get the sofa clean, but then, given some telltale stains already on it, this doesn't seem to be the first time that someone had sex on the piece of furniture. With a grin, you bunch up the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, with him being fairly heavy with muscle, but you manage to get him mostly dressed again, as well as stretched out on the sofa, lying on his front. Just for good measure, you arrange that his ass so it's still a little raised, giving your load plenty of time to soak his innards without leaking out. All of your cleanup tasks now dealt with, you get dressed and take up your gear once more.";
	LineBreak;
	if "Dildo Trained (Small)" is not listed in Traits of Darius and "Dildo Trained (Big)" is not listed in Traits of Darius:
		say "     Throwing Darius a glance over your shoulder, you can't help but wonder about getting him ready to be fucked by actual dicks. Given that he's a straight guy, more than ready for violence when not drugged, and you're doing this in secret, it'd really be best to gradually work up to it. You'll have to train his body to expect pleasure from his ass (as you did right now), and then slowly stretch that hole over time before you put a real cock in it. For the latter, you'll need some equipment - varied sizes of sex toys, and lube for sure. [bold type]Might be a good idea to check the nearby porn stores...[roman type][line break]";
	else if "Dildo Trained (Big)" is listed in Traits of Darius:
		say "     Throwing Darius a glance over your shoulder, you grin broadly. This was fun! Even though you've trained his asshole to accept dicks now, a bout of kinky hotdogging is a nice variety of pleasure to have with him.";
	else if "Dildo Trained (Small)" is listed in Traits of Darius:
		say "     Throwing Darius a glance over your shoulder, you grin broadly. This was fun! Even though you've working on training to accept real dicks too, a bout of kinky hotdogging is a nice variety of pleasure to have with him. Though of course, that doesn't mean you're not looking forward to digging out the shoebox full of sex toys and lube you've hidden under the sofa and having another session with the drug dealer soon...";
	TraitGain "Blissed_Hotdogged" for Darius;
	NPCSexAftermath Player receives "Stroking" from Darius;

[reference that you'd need to train him to actually fuck -> Porn Store Connection with Lisa (telling her what you're doing, and her eagerly helping)]

[Stage 2]

to say BlissedDarius_FaceFuck: [using a spreader, aquired from Lisa]
	say "...";
	NPCSexAftermath Darius receives "OralCock" from Player;

to say BlissedDarius_SmallToys:
	say "...";
	NPCSexAftermath Darius receives "AssDildoFuck" from Player;

to say BlissedDarius_BigToys:
	say "...";
	NPCSexAftermath Darius receives "AssDildoFuck" from Player;

[Stage 3]

to say BlissedDarius_Vibro: [for long term training and buttslittness]
	say "...";
	NPCSexAftermath Darius receives "AssDildoFuck" from Player;

to say BlissedDarius_Fucking:
	say "     <Writer's Note: Darius is being expanded to allow for a more involved, gradual process of getting him to be a buttslut. As such, there are training scenes with sex toys intended to come before actual fucking, but those haven't been written yet. For now, you'll get the 'old' sex scene straight away, which does not contain any mentions of the training that is supposed to have happened before.>";
	LineBreak;
	if AnalVirgin of Darius is true: [first time]
		say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you slide a hand down over his firm pecs and abs, feeling them and the softness of his fur. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nipples and pinching them lightly would likely make him punch you if he was awake, but now all that happens is that they get hard, and even more so as you lean in and playfully suck on first one, then the other. The short hair of his chest tickles against your chin as you play with the Dalmatian. After a little while of just enjoying Darius's chest, you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog.";
		say "     Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this this tough thug of a canine that you have in your power right now. Then you reach over to grab the wrist of the arm on his far side and start pulling. It is a definite workout to move him, broad-shouldered and muscular as he is, but with some effort you roll Darius over. Inspecting your handiwork, you can't help but grin at the fact that his open jeans slipped down a little, revealing the start of a pair of firm, furry buttocks. Planting your hands on his thighs, you give a heave and drag him off the couch just a little further, his lower body fully over the edge now. Bending those powerful anthro legs of his at the knee and planting them against the shaggy carpet, it's fairly easy to prop his ass up a little in an approximation of the classic doggy-style position.";
		WaitLineBreak;
		say "     Hands trembling a little in anticipation, you hook your fingers over the top of Darius's jeans and pull them down over his rounded rear end, then halfway to his knees. Covered in the same black and white pattern as the rest of him, the passed-out drug dealer's ass is a sweet sight to behold, and you playfully grope it, squeezing and caressing those buttocks. As you pull them apart, your target comes into sight: a pink, twinkled tail-star, obviously virgin and quite unyielding as you brush over it with a fingertip. Gathering a nice and large gob of spit, you let that drip off your tongue outstretched into Darius's crack and rub it over his pucker, then start to worm the tip of your index finger inside him. Other than a low grunt, the man doesn't react to the penetration, so you keep going, adding more spit as needed to eventually penetrate him all the way to your knuckle.";
		say "     Even with Darius passed out and unable to consciously flex and tighten his inner muscles, it's still a bit of a laborious process to open his ass up, completely virgin as it is. But of course, you can take your time since it's not like your doggy is going anywhere. You finger him playfully, especially after finding out that stroking the canine's prostate in just the right way makes his tail wag reflexively. A second finger eventually follows the first at being slowly inserted to stretch that tight chute, while your [Cock of Player] shaft is hard and ready to take the plunge into this big dog. A small hitch for that though is that you don't think spit will be enough to lube your entry, so you glance around, letting your eyes wander over Darius's apartment on the search for anything else you could use. With him being straight, you come up woefully short for any readily available booty lube.";
		WaitLineBreak;
		say "     Fingers curling against the Dalmatian's prostate and watching his tail wag, you wonder if your stud will be out long enough for you to go out and scavenge lube, then freeze in your tracks as an alternative springs to mind. With a grin spreading over your face, you reach down between his legs and touch the furry orbs of his balls, rolling them between your fingers and feeling their fullness. His erect cock is right beyond, hot against your hand as you take hold of it and hard as a rock. The tip is wet and dripping with copious amounts of pre. Seems you've been pushing the right buttons to get the big puppy wound up something fierce. Having found your lube-dispenser, you stand up and strip out of your clothes and gear, getting into position behind Darius with your hard dick swinging. Then you get back to stroking him, as well as rubbing his prostate at the same time, which makes the passed-out guy moan into the sofa cushions.";
		say "     The combined assault on two fronts isn't something that Darius can withstand for long, and you can feel his cock throb hard in your grasp soon after, showing that he's just about ready to blow. Now taking out your fingers from his ass, you cup the hand under the tip of his shaft and jerk him furiously, driving the anthro over the edge in short notice. Hearing him grunt, you feel the first wet splash of cum land in your hand, followed by another and another. Milking the man, you get quite an impressive load out of him, a large handful of creamy white doggy cum. Once his orgasm ebbs off, you raise the hand slowly as not to spill and, then bring it to the top of his crack. With the fingers of your other hand pressing lightly against his pucker, you let a part of the Dalmatian's cum trickle down onto them and then slide into him, lubing the drugged man up with his own seed.";
		WaitLineBreak;
		say "     Working your digits in and out of his increasingly wet and slippery hole, you finger Darius for a little while, then finally stretch his opening as far as you can with your fingers and let the lion's share of his cum slide inside. Quickly wrapping your cum-slick fingers around your [Cock of Player] erection, you give it a few good pumps, then line yourself up with the cream-filled opening and push in against it. Even with all the prep-work, his virgin hole resists your penetration for a second or two, before finally yielding to stretch around your girth. With a satisfied grunt, you push into the strong, passed-out male, reveling in the knowledge that it is his own doggy seed that you can feel squishing around your length as it is driven deep inside. He's tight as only a virgin can be, and you have to pause for a moment several times so you don't blow your load before you're fully inside his vice-like ass.";
		say "     When you finally bottom out inside the helpless, drugged male, you can't help but chuckle at doing this to such a straight macho man. Hands wandering over his broad, muscular back, you enjoy your dominance over him as you pull out almost all the way and ram yourself home once more, drawing a grunt from the anthro. His hole flexes a little in reaction to you sliding against his prostate, giving you an amazing sensation that has you wanting more. Letting yourself be drawn in by the feelings that his sweet little hole gives you, the slap of your hips against his ass quickly comes faster and faster as you build up a solid rhythm. Soon, you're humping Darius like a stag in rut, driving yourself deep and grinding against his ass before withdrawing again.";
		WaitLineBreak;
		say "     Your hands gravitate to his hips all of their own as you fuck Darius, getting a firm grip of him so that you can pull him towards every new thrust into that amazingly tight, yet yielding chute. As good as he feels around you, a familiar feeling of tightness rises in your balls before much longer. In a grand finale, you wrench your shaft fully from his hole with a wet pop and watch the opening pull tight reflexively, glistening from the spit, cum and pre used to lube it. Then you hammer into him with a single thrust, only stopping when your balls press against his furry buttocks and you erupt into his innermost depth. Spurt after spurt of cum wash over his inner walls, claiming his ass as having been conquered by your craftiness and virility. Panting, you sink down on Darius's back as you continue to flood his fuckhole with your seed, enjoying the softness of his fur and the masculine aroma that rises in your nose.";
		say "     Staying on top of - and inside - the Dalmatian until your orgasm eventually ebbs off, and some time after that too, you savor the moment of having taken his cherry, then slowly withdraw yourself from his ass. Looking down at it, you see his pucker squeeze tight, looking pretty much as it did before you started, except for the fact that a dollop of cum is pushed out by the contraction. Sighing at the guaranteed explosion of outrage should Darius ever realize what you did today, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab the cum off him, then slip a finger inside his hole to remove what more you can reach. Surprisingly, it isn't much, even as you go knuckle-deep several times and wipe your digit clean. Maybe you shot so deep in his amazingly tight hole that it won't leak out?";
		WaitLineBreak;
		say "     With a grin at the lucky turn of easy cleanup, you bunch up all the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, especially after just having orgasmed, but you manage to get him mostly dressed again and stretched out on the sofa, lying on his front. As you lift his hips a little to pull the jeans back into place at his front, you can feel wetness from his cock, leaking some little amount of cum onto the couch. You wonder for a moment if that might be something which could betray your activities, but then several other telltale stains on the cushions, making it clear that this is far from the first time someone had sex on the piece of furniture. All of your cleanup tasks now dealt with, you get dressed and take up your gear once more.";
		now AnalVirgin of Darius is false;
	else: [repeat fucking]
		say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you slide a hand down over his firm pecs and abs, feeling them and the softness of his fur. You savor the moment of having this hunk for yourself right now, docile and passed out. Teasing his nipples and pinching them lightly would likely make him punch you if he was awake, but now all that happens is that they get hard, and even more so as you lean in and playfully suck on first one, then the other. After a little while of just enjoying Darius's chest, you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your drugged dog.";
		say "     Yet getting to his dick isn't really your goal right now, so you only play for it for a short moment, giving the guy a nice and slow stroke or two, reveling in the virility of this powerful canine that you have in your power right now. Then you get up and move between his legs, sliding your hands down his sides until you arrive at the edge of his jeans and pushing them under him. Giving Darius's hips a lift, you hook your fingers under his jeans and pull, sliding the open pants over his buttocks and off his hips entirely. After that, you tug his hips just past the edge of the sofa cushions and push his legs together, allowing you to easily pull the piece of clothing down along their length, finally pulling it off and throwing it aside. Darius is now fully naked on the sofa, still passed out and hard as a rock. Your own [Cock of Player] shaft grows more erect by the second as you think back to popping the macho Dalmatian's cherry, and you quickly strip down to get ready for another go at his sweet ass.";
		WaitLineBreak;
		say "     With a grin on your face, you spread Darius's legs and crouch down between them. One hand goes straight for his cock, wrapping its fingers around the hard pole of his red rocket, the other comes to rest on his furry balls, rolling them between your fingers and giving light squeezes to the well-filled cum factories. Your drugged doggie lets out a low grunt as you squeeze the slight bulge of his pre-knot at the base of his cock, but sleeps on peacefully other than that, even as you go on to masturbate him right away. Hand sliding up and down over the hot shaft of his, you enjoy the knowledge that you're the one in power right now and pump him in anticipation of what will come next. Given your singular attention at getting him off and the quick rhythm of stroking and caressing you're subjecting the man to, it doesn't take all that long before he tenses on the sofa.";
		say "     Darius lets out a groan as his hips hump up reflexively just in time for a first large gush of cum shooting from his dickhead and right into your cupped palm. Milking him for more of his slick and creamy seed, you gather every drop you can, then bring your hand down between his legs. Dipping a finger in the canine seed, you extend the digit between his buttocks and brush over the unconscious drug dealer's pucker. Wiggling the tip of your finger, you're inside him a heartbeat later, sliding deeper steadily and seeking out the special spot you know lies in there. With a playful brush against his prostate, you cause his tail to wag rapidly, beating against the side of the sofa. Even though he is still almost as tight around your finger as when he was an anal virgin, you can feel the difference clearly, as his opening and chute stretch more readily than before. Might be the result of you breaking him in well, or some nanite magic, but it's not all that important in the end.";
		WaitLineBreak;
		say "     After going back for more cum-lube a few times and slipping him two fingers before much longer, you wrap the hand with the rest of Darius's load around your own erection. Stroking up and down along your length, you get your cock literally dripping wet with canine cum. Eager to bury yourself in the strong male, the next thing you do is lifting his legs and hooking them over your shoulders as you line yourself up with his opening. As your dickhead touches his pucker, you look up at Darius's face, seeing his eyebrows draw together to accompany a wince when you pop inside him. Yet after you slide into his hole and your shaft rubs the sensitive prostate inside, his features relax and even seem to betray some pleasure, with his tongue flopping out the side of Darius's muzzle. Warm and tight, the large male feels amazing around your cock and you sink yourself inside his ass with relish, only stopping when you're buried balls deep.";
		say "     Holding that position for a moment, you let your eyes wander over the drug dealer, gleefully taking it all in: A strong, dominant guy, laid out helplessly before you, naked and now impaled on your cock! Secure in the knowledge that if he didn't wake up from you pushing your dick into him, there is little chance of anything else rousing Darius right now, you lean forward and playfully pinch his nipples, getting them hard and pointy. Then you start thrusting into his ass, sliding your dick out till just the tip is in, followed by a harsh jab forward that feels oh so very good. He's yours to use for your own pleasure right now, and you savor the chance to enjoy the anthro's tight hole, railing him in a steady rhythm. Funnily, his tail is wagging up a storm beneath, as rubbing his prostate in the right way apparently gets it moving in some sort of automatic reflex even if the doggy is passed out. Hands gripping Darius's thighs tightly as you fuck the man, you keep a firm hold of him.";
		WaitLineBreak;
		say "     Hammering into that amazingly tight, yet yielding chute, a familiar feeling of tightness rises in your balls before much longer. A grand finale, you wrench your shaft fully from his hole with a wet pop and watch the opening pull tight reflexively, glistening wetly from his cum and your pre. Then you hammer into him with a single thrust, only stopping when your balls press against his furry buttocks and you erupt into his innermost depth. Spurt after spurt of cum wash over his inner walls, reaffirming your claim on his ass and proving by your craftiness and virility. Panting, you sink down on Darius's chest as you continue to flood his fuckhole with your seed, enjoying the softness of his fur and the masculine aroma that rises in your nose. Staying on top of - and inside - the Dalmatian until your orgasm eventually ebbs off, and some time after that too, you savor the moment of having bred him yet again, then slowly withdraw yourself from his ass.";
		say "     Looking down at it, you see his pucker squeeze tight, looking pretty much as it did before you started, except for the fact that a dollop of cum is pushed out by the contraction. Sighing at the guaranteed explosion of outrage should Darius ever realize what you did today, you stroll over towards the kitchen and snatch a roll of paper towels up, then return to your unconscious play-toy to clean him up. Wiping over his crack with a few of the absorbent sheets, you dab the cum off him, then slip a finger inside his hole. Going knuckle-deep several times and wiping off only small dabs of cum, you start thinking that there just might be something to the theory you thought up before. Maybe it is true that you shot so deep in his amazingly tight hole that it won't leak out. Or Darius is just a born'n bred cumdump of course.";
		WaitLineBreak;
		say "     With a grin at the easy cleanup, you bunch up all the paper towels to discard them well away from Darius's apartment, then get to tugging and sliding his jeans back into place. It's fairly exhausting, especially after just having orgasmed, but you manage to get him mostly dressed again and stretched out on the sofa, lying on his back. All of your cleanup tasks now dealt with, you get dressed and take up your gear once more.";
	NPCSexAftermath Darius receives "AssFuck" from Player;

to say BlissedDariusHarvest1: [fur harvest]
	say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you rest your hand on one of his firm pecs, feeling the warmth of his fur, and the faint beat of his heart under your fingertips. Then you slowly move the hand down, reaching the curve of the bulging pec before tracing over the dips and rises of Darius's hard abs, contrasted by the softness of his coat. You savor the moment of having this hunk all to yourself for now, passed out and docile.";
	say "     Teasing his nips and pinching them draws a soft groan from Darius, with the little nubs getting delightfully hard and sticking out. You snicker at seeing the rough thug with stiff nipples, like an innocent virgin - while he would likely punch you in the face if he were awake for this. Seeing the short fur covering his muscular chest, you find yourself momentarily stumped for what you're going to do, as there isn't really any suitable tuft to grab and pull off his coat. He doesn't have hair on his head or a beard, so you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your unconscious dog. Nothing like proper pubes though, it's all just the same short fur all over his body. Hmpf - it's not like you can just grab a razor and shave him, that much of an invasion of his person would be noticed for sure!";
	WaitLineBreak;
	say "     Finding yourself slightly miffed at the current situation, you glance to the side, gaze coming to rest on the somewhat shabby sofa the Dalmatian passed out on. But hey - this thing isn't just old, it's also got a dusting of short black and white hairs stuck in between the weave of its cushions! Looking back at Darius, you realize that while he may not have hair to pull out, Dalmatians shed almost constantly, as evidenced by what he left on that sofa! Since harvesting the fur from the sofa would take a vacuum, and likely get you all sorts of it mixed together, you have a look around, lucking out as you find a dog-brush in the bathroom. Just what you need to give Darius a little makeover. Armed with this tool, it is just a question of snatching up one of the little plastic baggies the man has thousands of in a cardboard box (likely to package his 'special merchandize') and getting to work on your pacified Dalmatian.";
	say "     Stroking over his muscled chest with the brush as well as your hands is oddly nice, in a mixture of feeling his soft fur as well as worshiping a masculine man's firm physique, and you fall into a comfortable rhythm doing it: Stroking with the brush, again, and again, then with your hand to scoop what came out of his undercoat together and finally transferring the little pinch of fur that yielded into the plastic bag. It is funny to see Darius's reaction to being brushed too, as he makes little pleased noises with every stroke of the dog brush massaging his skin, even while passed out. You can't really tell how long you spent doing it, grooming this powerful canine with quiet attention, but at the end of your efforts, you do have a small but likely sufficient amount of his fur gathered in the bag. And on top of that, you somehow feel pretty good and calm now.";
	WaitLineBreak;
	say "     A chuckle bubbles up in your throat as you realize that Darius would make the strangest therapy dog ever - an anthro, drug-dealing thug, knocked out with a mixture of his own drugs and alcohol. But despite all of this, just sitting here with him being calm and accepting to being touched (not that he has any choice) really relaxed you. You can barely imagine what he'd say if he learned about this little session between the two of you. Shaking your head, you seal your bag of fur with the ziplock strip at the top, putting it in your backpack, then turn back to Darius and tug his jeans back into position. Raising the zipper at least as far as it was before, you then stand up, leaving the Dalmatian passed out on his couch and none the wiser. In all likelihood, he'll not remember a thing about what just happened here.";
	ItemGain "dalmatian male fur" by 1;
	SanBoost 15;

to say BlissedDariusHarvest2: [cum harvest]
	say "     Approaching the unconscious canine, your eyes wander over his muscular form leaning back against the backrest of the sofa. Darius's broad chest rises and falls in a slow and even rhythm, with the thuggish man's face looking more relaxed and peaceful now, no sign of the sneer or cruel grin usually on his features. The dog looks like he's simply in a deep sleep, with his left ear twitching a little bit from time to time. But of course, he's not going to wake up right now, no matter what you do to him. Sitting down next to him, you rest your hand on one of his firm pecs, feeling the warmth of his fur, and the faint beat of his heart under your fingertips. Then you slowly move the hand down, reaching the curve of the bulging pec before tracing over the dips and rises of Darius's hard abs, contrasted by the softness of his coat. You savor the moment of having this hunk all to yourself for now, passed out and docile.";
	say "     Teasing his nips and pinching them draws a soft groan from Darius, with the little nubs getting delightfully hard and sticking out. You snicker at seeing the rough thug with stiff nipples, like an innocent virgin - while he would likely punch you in the face if he were awake for this. With a broad grin, you lean in and playfully suck on first one, then the other. After a while of just enjoying Darius's chest, you turn your attention lower, where the sexy anthro's cock is barely hidden by a half-drawn zipper. It is an easy task to just pull it the rest of the way and tug the sides of his jeans aside, revealing the proudly erect red rocket of your unconscious dog. Wrapping your fingers around the warmth of his rod, you hold Darius's shaft upright and stroke up and down its length. He's at least ten inches long, with a nice and red shaft complete with tapered tip and the pre-knot bulge typical for canines at the base. Nice thickness too, and the furry orbs of his balls lie nicely in your hand as you cup and squeeze them.";
	WaitLineBreak;
	say "     Completing your leisurely inspection of his manhood, you lean forward and lick a drop of pre off the tip. The flavor of the virile male unfolds on your tongue, strengthening your intention of milking his balls dry. Yeah, you'll fill a bottle with his nut-milk for later use - maybe as a tasty treat, or maybe to use for creating a litter or two of Dalmatian pups, haha! With a grin on your face, you pull out an empty plastic bottle, unscrewing its lid and setting it down on the sofa for future use. Then you get back to handling the drugged dealer's proudly erect manhood, one hand stroking its length and the other cupping his balls and starting an invigorating massage of the bulging cum-factories. Jerking up and down on the hard rod, you watch excitedly as more beads of pre-cum well up from his cum-slit, making the pointy head of his cock wet and shiny. Your moving hand spreads the goop along his red rocket's length, slickening it up and making it even easier to slide your fingers along Darius's shaft. The man joins in too, even in his drugged state, as you can feel him instinctively humping his hips forward a little bit, to grind into your grasp.";
	if LastFuck of Darius - turns > 8: [gushing cumshot]
		say "     You can feel his balls pull up a little in their sack, heralding a soon to come eruption of the creamy white nectar that is his nut-milk. You're ready when the moment comes - or at least you thought you were, with your bottle's opening already lined up above the Dalmatian's cum-slit as his knot starts to swell. His balls must have worked overtime, as they really churn out a lot of cum, with his hard cock erupting like a geyser in your hand, sending thud after thick thud spurting out and hitting the end of your bottle with wet splashing noises. On top of that, as you squeeze your hand tightly around the base of his cock to keep him steady, Darius suddenly thrusts his hips forward violently, almost knocking the bottle out of your grasp. Drugged-out as he is, there is panting and grunting coming from Darius, with his animalistic side really slipping out as his conscious mind isn't keeping things in check. You can feel his cum-factories pulse in your grasp as they send forth a thick load of potent sperm, not into a receptive bitch's womb this time, but rather your chosen receptable. With you massaging his nuts to stimulate them, Darius's eruption keeps going for quite a while before eventually, the spurts start ebbing off a little bit, marking the end of your collection. His big load filled the bottle more than a third, which is impressive in its own right, but you want more and don't plan on stopping anytime soon!";
	else: [regular load]
		say "     You can feel his balls pull up a little in their sack, heralding a soon to come eruption of the creamy white nectar that is his nut-milk. You're ready when the moment comes, with your bottle's opening already lined up above the Dalmatian's cum-slit as his knot starts to swell, and you can hear his spurting cum hit the end of the bottle with a wet thud, followed by another and another. Drugged-out as he is, there's little noise from Darius, except some slightly heavier breathing and grunts as he orgasms. You can feel his cum-factories pulse in your grasp as they send forth a thick load of potent sperm, not into a receptive bitch's womb this time, but rather your chosen receptable. Even with you massaging his nuts to stimulate them, Darius's eruption soon ebbs off, with smaller and smaller spurts adding decreasing amounts of further cum to your collection. There's only a small-ish amount of the white liquid in your bottle so far, but then, you don't plan on stopping anytime soon, not before this bottle is properly filled!";
	WaitLineBreak;
	say "     With the Dalmatian unable to protest about being too sensitive right after cumming, you just start working on his dick right away, not even giving it the chance of going soft before you're jerking it again. You can't quite tell how long you milk the muscular man's erection, but you put him through his paces six times in a row. On the seventh go-around, only some clear liquid comes out of his cum-slit, and the you drugged dealer makes a somewhat uncomfortable whining sound in his throat. Looks like you reached the end of his capacity for right now. Looking at your bottle, ";
	if LastFuck of Darius - turns > 8: [gushing cumshot]	
		say "you see that it is almost filled to the brim with thug dog-milk, which will do nicely for your purposes. Putting the cap on it, you carefully stash away your loot of purloined cum.";
	else:
		say "you see that you at least managed to fill it halfway with thug dog-milk, which will do nicely for your purposes. Putting the cap on it, you carefully stash away your loot of purloined cum.";
	say "     Leaning forward to give his softening canine dickhead a little lick, getting another faint taste of what you milked from him, you smack your lips, then gently lay his dick onto his abs. Tugging the jeans back into position, you raise his zipper at least as far as it was before, then stand up, leaving the Dalmatian passed out on his couch and none the wiser. In all likelihood, he'll not remember a thing about what just happened here - though you'd imagine he might have some sore balls when he wakes up.";
	ItemGain "dalmatian male cum" by 1;
	NPCSexAftermath Darius receives "Stroking" from Player;

Darius ends here.
