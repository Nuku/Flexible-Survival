Version 1 of Ranae by Kurainyx begins here.
[ Version 1.0 - Created Ranae - Kurainyx ]
[ Version 2.0 - Add one luxury item event and oral vore/bound state - Kurainyx]
[ Version 3.0 - Add two more luxury item events, anal vore scene, and a second bound state ending - Kurainyx]

"Adds a female frog NPC to Flexible Survival"

[  Hunger of Ranae                                         ]
[  0: Never met                                            ]
[  1: Met Ranae but did not give her food and water        ]
[  2: Gave Ranae one round of food and water               ]
[  3: Gave Ranae two rounds of food and water              ]
[  4: Gave Ranae three rounds of food and water            ]
[  5: Found black dress                                    ]
[  6: Gave Ranae black dress                               ]
[  7: Gave Ranae four rounds of food and water             ]
[  8: Gave Ranae one round of chips and soda               ]
[  9: Ranae moves into library                             ]

[  Perception of Ranae (Figurine)                          ]
[  0: Never found Figurine                                 ]
[  1: Found Figurine                                       ]
[  2: Gave Ranae Figurine                                  ]

[  Intelligence of Ranae (Drapes)                          ]
[  0: Never found Drapes                                   ]
[  1: Found Drapes                                         ]
[  2: Gave Ranae Drapes                                    ]

[  Charisma of Ranae (Bracelet)                            ]
[  0: Never found Bracelet                                 ]
[  1: Found Bracelet                                       ]
[  2: Gave Ranae Bracelet                                  ]



Table of GameCharacterIDs (continued)
object	name
Ranae	"Ranae"

Table of GameEventIDs (continued)
Object	Name
Starving Frog	"Starving Frog"
Rundown Boutique	"Rundown Boutique"
Boarded-up Building	"Boarded-up Building"
Ransacked Shop	"Ransacked Shop"
Trench Coat Salesman	"Trench Coat Salesman"

Ranae is a woman.
[physical details as of game start]
[size numbers not properly adjusted]
ScaleValue of Ranae is 3. [human sized]
Cock Count of Ranae is 0. [no cock]
Cock Length of Ranae is 0. [no cock length]
Ball Size of Ranae is 0. [no ball size]
Ball Count of Ranae is 0. [no balls]
Cunt Count of Ranae is 1. [1 pussy]
Cunt Depth of Ranae is 7.
Cunt Tightness of Ranae is 2.
Nipple Count of Ranae is 2. [2 nipples]
Breast Size of Ranae is 3. [C cup at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Ranae is false. [can not take oversized members without pain]
Sterile of Ranae is true.
PlayerMet of Ranae is false.
PlayerRomanced of Ranae is false.
PlayerFriended of Ranae is false.
PlayerControlled of Ranae is false.
PlayerFucked of Ranae is false.
OralVirgin of Ranae is true.
Virgin of Ranae is true.
AnalVirgin of Ranae is true.
PenileVirgin of Ranae is true.
SexuallyExperienced of Ranae is false.
[MainInfection of Ranae is "".]


Section 1 - Events

Starving Frog is a situation.
The sarea of Starving Frog is "Mall".

Rundown Boutique is a situation.
The sarea of Rundown Boutique is "Outside".
Rundown Boutique is inactive.

Boarded-up Building is a situation.
The sarea of Boarded-up Building is "Outside".
Boarded-up Building is inactive.

Ransacked Shop is a situation.
The sarea of Ransacked Shop is "Outside".
Ransacked Shop is inactive.

Trench Coat Salesman is a situation.
The sarea of Trench Coat Salesman is "Outside".
Trench Coat Salesman is inactive.

when play begins:
	add Starving Frog to badspots of girl;
	add Starving Frog to badspots of furry;

Instead of resolving a Starving Frog:
	now hunger of Ranae is 1;		[Met Ranae]
	say "     While wandering through the sewers, you hear the splashing of water and someone softly mumbling coming down from one of the passageways. Creeping down the tunnel, you round the corner and spot a frog woman digging through a flooded hole in the wall. She looks rather thin, and her skin is a dull green. 'Come on, come on...' she says to herself as she continues to search the hole. After a few moments, she withdraws her arms from the crevice with a weary sigh. 'Nothing...' The female amphibian moves to leave, but she freezes when she happens to turn in your direction and spots you. With a startled yelp, she hastily backpedals away from you.";
	if BodyName of Player is "Human" and player is pure:
		say "     However, she soon stops her retreat when she gets a good look at you. 'W-wait, you're still human? Does this mean that you're not going to attack me?' ";
	else:
		say "     'Stay back!' she cries, her eyes wide with fear. ";
	say "You quickly explain that you are merely exploring and that you mean her no harm. Eventually, after a bit more coaxing, the frog calms down and slowly walks toward you. 'Sorry about that,' she apologizes. 'Just can't be too careful with all of the craziness going on.' When you ask her what she was doing earlier, she replies, 'I was trying to find some food and clean water, but... um... I'm not exactly doing well. Oh, um, my name is Ranae, by the way.'";
	say "     As you introduce yourself, you're able to look at her a bit closer. She was not kidding about her miserable search for supplies. It looks like she hasn't been eating well, if at all, for a few days. Her green-speckled skin is drawn tight across her body, the colors muted, and her skin lacks the shine of most amphibians. Her legs are thin and stringy, and her dirty clothes hang loosely on her frame. The frog coughs to draw your attention back. 'Look, um, you seem to be doing alright with the whole surviving thing... a lot better than I am... It's just that, I'm really in a bad spot, and I would really appreciate it if you could spare me some food and water.'";
	if carried of food > 0 and carried of water bottle > 0:
		say "     [bold type]Do you donate some food and water to Ranae?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give some food and water to the frog.";
		say "     ([link]N[as]n[end link]) - Don't give the woman any supplies.";
		if Player consents:
			LineBreak;
			say "     Ranae's eyes grow wide as you dig out a bottle of water and a package of food from your pack and hold them out to her. She moves closer, her gaze locked on the precious supplies, but when her hands reach for the rations, she hesitates and looks back up at you. You give her a smile and a nod, and the frog squeals in delight as she takes your gifts. 'Oh my god! Finally, water! I never thought that I'd miss clean water!' she cries before popping the cap off of the bottle and begin guzzling down the life-giving liquid. The amphibian drains the entire bottle in a matter of moments, and she promptly rips into the food right afterwards. The entire time, you just awkwardly stand there, watching as Ranae gorges herself, her loud chomping echoing through the sewer. It doesn't take long for her to finish devouring her meal, and you can already see that her belly is no longer concaved. The frog licks her fingers to get the last crumbs, only to freeze when she glances in your direction, and her face flushes red when she realizes that you're still here.";
			say "     'Um, excuse me?' Ranae sheepishly offers, to which you merely wave off with a smile. 'I really can't thank you enough for your kindness. I'm afraid that I don't have anything to offer you in return... Oh, wait. I know! Could you please follow me?' You oblige Ranae and let her lead you through the sewers until you reach a tall, narrow hole in the wall. It's a bit of a squeeze, but you follow the frog through it, and you find yourself in a dark, dank enclosed space that's about the size of a walk-in closet. The only items that marks the dreary room as a living space are a few pillows and a ragged blanket in the corner. 'It's not much, but it's mine,' Ranae explains. 'I know that it doesn't come close to repaying you, but if you ever need a place to rest or someone to talk to, I'll be here.'";
			decrease carried of food by 1;
			decrease carried of water bottle by 1;
			now hunger of Ranae is 2;		[Gave Ranae one round of food and water]
			now Resolution of Starving Frog is 2;	[Gave supplies to Ranae]
		else:
			LineBreak;
			say "     When you tell Ranae that you aren't able to spare any supplies, her shoulders droop in dejection, and she listlessly gazes down at the ground. 'I... I understand... Thanks for at least listening... I guess...' An awkward silence passes between the two of you. Eventually, Ranae meekly asks, 'Um, do you maybe want to see where I live? You know... just in case...' Although she doesn't finish her sentence, it's obvious that she's clinging to the hope that you'll help her out later. You let the frog lead you through the sewers until you reach a tall, narrow hole in the wall. It's a bit of a squeeze, but you follow the frog through it, and you find yourself in an dark, dank enclosed space that's about the size of a walk-in closet. The only items that marks the dreary room as a living space are a few pillows and a ragged blanket in the corner. 'It's not much, but it's mine,' Ranae explains. 'I'll be here if you ever need a place to rest or someone to talk to... or help me out...' She adds that last part in a whisper that you barely hear it.";
			now hunger of Ranae is 1;		[Met Ranae but did not give her food and water]
			now Resolution of Starving Frog is 1;	[Did not give supplies to Ranae]
	else:
		WaitLineBreak;
		say "     When you tell Ranae that you aren't able to spare any supplies, her shoulders droop in dejection, and she listlessly gazes down at the ground. 'I... I understand... Thanks for at least listening... I guess...' An awkward silence passes between the two of you. Eventually, Ranae meekly asks, 'Um, do you maybe want to see where I live? You know... just in case...' Although she doesn't finish her sentence, it's obvious that she's clinging to the hope that you'll help her out later. You let the frog lead you through the sewers until you reach a tall, narrow hole in the wall. It's a bit of a squeeze, but you follow the frog through it, and you find yourself in an dark, dank enclosed space that's about the size of a walk-in closet. The only items that marks the dreary room as a living space are a few pillows and a ragged blanket in the corner. 'It's not much, but it's mine,' Ranae explains. 'I'll be here if you ever need a place to rest or someone to talk to... or help me out...' She adds that last part in a whisper that you barely hear it.";
		now hunger of Ranae is 1;		[Met Ranae but did not give her food and water]
		now Resolution of Starving Frog is 1;	[Did not give supplies to Ranae]
	now Starving Frog is resolved;
	now Froggy Hideout is known;
	move Ranae to Froggy Hideout;
	move player to Froggy Hideout;

Instead of resolving a Rundown Boutique:
	say "     During your search for supplies, you come to a small shop in the middle of a quiet street. Looking through the display window, you note that the place used to be a clothes boutique for women, judging by the number of dresses that are littering the floor. Seeing that nobody seems to be occupying the building, you decide to go in and look around for supplies. Digging through the wreckage, it soon becomes obvious that a number of people had been here before you since you find nothing of use. All of the clothes that you inspect are either covered in cum or damaged, which is a shame because many of the dresses would've looked beautiful if they had been kept in pristine condition. In the corner, you see a doorway leading to the backroom, as well as a pair of female mannequins that someone had jokingly set up so that they were touching each other's breasts.";
	say "     Entering the backroom, you find that it's the same story as the front when you don't turn up anything useful. Besides a bunch of empty boxes, the only thing of note are several tall lockers along the wall, presumably for the former employees. All but one had been plundered, and that remaining locker is securely shut by a built-in lock that could only be unlocked by a key. Just as you turn around to give up your search, you lose your balance when you trip on a small box. You flail about and manage to keep yourself from falling, but not before you hit some boxes. As you curse your clumsiness, you pause when you spot a key that had been hidden under the box pile you had just knocked over. Figuring that it was at least worth a try, you pick up the key and use it on the locker. To your surprise, it actually works, and the locker opens to reveal a brown paper bag and a black dress hanging on a hook. Hardly believing your luck, you first look into the paper bag and find a bag of chips, a soda can, and a bottle of water packed inside.";
	increase carried of chips by 1;
	increase carried of soda by 1;
	increase carried of water bottle by 1;
	say "[bold type]You gained a bag of chips, one soda, and a bottle of water[roman type]";
	WaitLineBreak;
	say "     With your pack filled with new supplies, you go on to inspect the dress that's still hanging in the locker. Carefully pulling it out, you find that it is a sleek one piece dress, and most importantly, there's not even a scratch on it. Unfortunately, a dress such as this would not be practical for you[if scalevalue of Player < 3], given how you're too small for it[else if scalevalue of Player > 3], given how you're too large for it[end if]. However, you recall how Ranae has been looking for some new clothes, and this dress seems to be the perfect size for her. Safely stowing the garment away, you exit the boutique and make a note to visit the frog woman soon with your gift.";
	now hunger of Ranae is 5;		[Found black dress]
	now Rundown Boutique is resolved;

Instead of resolving a Boarded-up Building:		[Figurine]
	say "     Exploring through one of the city's many streets, you come to a two-story building that has wooden boards covering every window and doorway. Chances are that the building was abandoned and boarded-up before all of the chaos started, but you figure you might as well try your luck and take a look inside. That is, if you can find a way to get in. Examining the boards up close, you find that all of them are securely in place, barring any chance of an easy entrance. You briefly consider trying to force your way in, but you dismiss the idea as it would take too much effort, not to mention that the noise would likely attract unwanted attention. Searching for an alternate route, you move into a small alleyway to the right of the building.";
	say "     Curiously, you find a ladder peeking out from under a tarp that seems to have been hastily thrown over it. Even more curious is the fact that the ladder is located under a large boarded-up window on the second floor. Figuring that it's at least worth investigating, you pull out the ladder from the tarp, prop it against the wall, and use it to climb up to the window. To your surprise, the wood blocking your way budges when you touch it, and with a bit more pushing, you're able to move the board to the side, finally giving you a way in. When you climb through the window, you're disappointed to find that the room you have snuck into, as well as the adjacent ones, are all completely bare, confirming that the place was abandoned some time ago.";
	WaitLineBreak;
	say "     However, not wanting to give up so quickly, you make your way to the opposite side of the building and find a sleeping bag and a small pack tucked away in the corner. You quickly check to make sure that there's nothing else in the rest of the building before you search through the makeshift camp. Judging by the layer of dust on the items, it looks like the owner of the meager belongings will not be returning. Searching through the pack, you find a tin of food, which you happily pocket, as well as an odd object wrapped up with newspaper. Peeling away the paper, you find a small figurine of a woman attached to a dome-like wooden base.";
	say "     The tiny female is wearing a green dress that completely covers her legs, and she has one arm raised up high with another stretched out in a dancing pose. Turning the object around, you find a wind-up key at the back of the base. You give the key a few turns, which makes the figurine start to slowly spin around as the soft sounds of a music box begins playing. Although the song and dance is short, it is charming enough to make you smile a little. As you look over the figurine, wondering what you're going to do with it, the dancer's green dress grabs your attention, the color almost the same shade as Ranae's skin. Perhaps the frog girl will appreciate a gift like this. After covering the gift back up with newspaper and safely tucking the gift away in your pack, you exit the building through the same window you crawled in through, making a note to bring your find to Ranae when you have the time.";
	say "     [bold type]You found a can of food[roman type]";
	increase carried of food by 1;
	now perception of Ranae is 1;		[Found figurine]
	now Boarded-up Building is resolved;

Instead of resolving a Ransacked Shop:		[Drapes]
	say "     Walking through a street, the sight of a small shop catches your eye. Though the door remains intact, the display window in the front of the building has been completely shattered, glass shards littering the nearby sidewalk. It's obvious the place was ransacked, but you briefly wonder why this particular shop was robbed, given how the adjacent stores seemed to be untouched, but your question is soon answered when you glance up at the place's storefront sign, or rather, what used to be it. You're unable to read the shop's name because the sign is completely covered with graffiti drawings of dicks and other crude images, along with spray-painted words such as [']cheap bastard,['] [']lying asshole,['] and other spiteful titles. It looks like that the owner of the shop wasn't popular, and you guess that someone took advantage of the city's chaos to take action against the supposed swindler.";
	say "     Taking a look through the broken window, you see that although the shop has been looted, there still seems to be various items lying around. Figuring that it's at least worth a quick look, you climb in through the window, careful to avoid the broken glass. Searching around, you find an assortment of items, all with handmade price tags attached to them, and you guess that this place used to be a sort of pawn shop. Unfortunately, anything worthwhile seems to already be gone, and all of the things that have been left behind are either of little use or too bulky to safely carry out of here. It doesn't take long for you to finish searching the small storefront, and you head through a doorway in the back, only to find a room barely bigger than a closet. With a small desk and a filing cabinet with three drawers in one corner and several small boxes in another, this tiny space doubled as an office and a storage room.";
	say "     Searching through the filing cabinet first, you find receipts and business-related papers in the top two drawers that pretty much confirms that the shop had been cheating their customers out of a fair deal. When you open the bottom drawer, you find some books, but more importantly, a bottle of water. With the current state of the place and the reputation of the former store owner, you have no qualms taking the precious supply for yourself. You then move on to the boxes, opening them one by one as you search their contents. At first, all you find are various odd knick-knacks or low-quality items that don't look like they would have sold, but you pause when you eventually come upon a bundle of green fabric, its color reminding you of Ranae. Unfolding your find, you see that the fabric is actually a set of drapes with an embroidered pattern of swirls decorating its front. Thinking that the frog staying in the library might like these drapes to help decorate her living space, you stow them into your bag. Finding nothing else of interest in the shop, you climb back through the broken window and resume your exploration.";
	say "     [bold type]You found a bottle of water[roman type]";
	increase carried of water bottle by 1;
	now intelligence of Ranae is 1;		[Found drapes]
	now Ransacked Shop is resolved;

Instead of resolving a Trench Coat Salesman:		[Bracelet]
	say "     As you make your way through the city, you stop when you hear someone call out with a 'Pssst.' Looking around, you see your caller standing in a nearby alleyway, waving you over with a black and brown paw. Though the person doesn't seem to be hostile, the long trench coat that almost reach down to their feet and a fedora hat that covers their face doesn't completely put you at ease. Cautiously walking over to the suspicious figure, you're able to see that the person is a male raccoon. 'Hey, you want to buy something?' the raccoon asks as he uses a hand to grab one side of his coat and pull it wide open. Though this act reveals that he's wearing nothing underneath his coat, essentially showing you his furry body, your gaze is focused on the rings, necklaces, bracelets, watches, and other shiny accessories that adorn the inside of his coat. 'I got only the finest stuff here,' the raccoon says with a smirk. 'C'mon, pick a few. I'll give you a good price on them.' However, you aren't able to browse his wares for long before someone from behind yells, 'Hey, you!'";
	say "     Spinning around, you see two harpies approaching, but for some reason, they both seem to be ignoring you in favor of angrily glaring at the raccoon. 'You sold us fake jewelry!' one of the winged females accuses, and the other one promptly adds, 'Yeah! You're going to pay for trying to trick us!' The raccoon yelps and swiftly bolts into the alley, and you have to jump out of the way of the two raging harpies as they pursue the sleazy salesman. The din caused by the wild chase soon fades away, leaving you by yourself. Shaking your head over the odd scenario, you're about to leave when something shimmering on the ground catches your eye. Picking up the object, you see that it's a silver-colored bracelet with its center holding several emeralds arranged in a circular pattern. The raccoon must have dropped this bracelet in his haste to escape, but given the unsatisfied harpies from earlier, this is no doubt just another piece of fake jewelry. Still, the bracelet looks nice enough. Perhaps Ranae would like it.";
	now charisma of Ranae is 1;		[Found bracelet]
	now Trench Coat Salesman is resolved;


Section 2 - Froggy Hideout

Table of GameRoomIDs (continued)
Object	Name
Froggy Hideout	"Froggy Hideout"

Froggy Hideout is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Froggy Hideout is "     You are in Ranae's tiny home in the sewers. There's just enough light for you to make out the frog woman herself as she sits on a few pillows and a ragged blanket, all while looking up at you with an expectant gaze.".

instead of navigating Froggy Hideout:
	say "[NavCheck Froggy Hideout]";
	if NavCheckReturn is false, stop the action;
	move player to Froggy Hideout;
	if hunger of Ranae is 1:
		say "     'Oh, hey there[if Player is not defaultnamed], [name of Player][end if],' Ranae greets when you squeeze into her tiny home. The frog gives you a smile, but it's a weak one, and it quickly disappears after a gloomy sigh. 'I... I really hate to be a bother, but things haven't improved since the last time I saw you. I'm still barely scraping by, and it would mean so much if you could spare me some food and water... I mean, if you had any... or wanted to...'";
	else if hunger of Ranae is 2:
		say "     Ranae is sitting quietly on one of the few pillows that decorate her hovel, a despondent frown marring her face. However, as soon as you enter the hole, she smiles widely and quickly gets up to greet you with a hug. 'Hey there[if Player is not defaultnamed], [name of Player][end if]! Did you come here just to visit me, or is there maybe, um, some other reason you're here?' she asks. Despite staring at you with big, hopeful eyes, you notice her gaze constantly flicks toward your pack. Red floods Ranae's cheeks when she realizes you're looking at her with both skepticism and amusement, and she hastily apologizes, 'S-sorry. I really am glad to see you. It's just that-' She's interrupted when her stomach rumbles, and you can't help but chuckle in amusement as the blushing frog turns more red than green.";
	else if hunger of Ranae is 4:
		say "     'Hey there[if Player is not defaultnamed], [name of Player][end if],' Ranae greets when you squeeze into her tiny home. 'You've been a big help in getting me back on my feet, and I'm actually managing to do alright in getting my own supplies.' She glances down at the tattered rags that used to be her clothes. 'I just wish that I could find some better clothes. I'm getting tired of wearing these dirty things.' As the frog woman tells you of her clothing plight, you make a note to keep an eye out for any shops or [bold type]boutiques[roman type] that might have something suitable for her.";
	else if hunger of Ranae is 5:
		say "     When you step into Ranae's home, the frog woman is quick to give you a hug. 'It's always so good to see you[if Player is not defaultnamed], [name of Player][end if]. How are you?' As the green lady backs away from the hug, you see that she's no longer wearing anything. Noticing your stare, Ranae blushes and folds one arm across her chest to cover her breasts while the other moves down to block her cunt. 'Um, yeah. Sorry about this. My clothes finally gave out a little while ago. I know that going without clothes is sort of the norm in all of this craziness, but it just doesn't feel right to walk around nude. I really hope that I find something to wear soon.'";
		say "     In response to Ranae's plight, you pull out the black dress that you had found at the boutique and present it to the naked frog, whose eyes grow wide at the prize. 'Is... is that really for me?' she asks, unable to stop staring at the dress. You nod and let the amphibian slowly take it from you. 'This... It's beautiful...' Ranae says, gingerly holding the garment up and feeling the silky material. 'Thank you...' Unable to contain her excitement any longer, she squeals in delight and quickly slips into the dress. The low cut dress is clearly made to show off the wearer's body, with only two narrow strips holding the dress on Ranae's shoulders to prominently display both her arms and the top of her breasts. The fabric clings close to her skin, showing hints of her lithe figure, but given her bodacious rear, the fabric actually accentuates the rounded curves of her ass. Like her arms, her legs are left open to be shown off to the world as the hemline of the dress stops right at her knees. Although not the most practical clothing for the city's current situation, Ranae is undeniably ecstatic about her new dress, not to mention looking so much more sexier.";
		say "     'It's absolutely perfect,' Ranae says, slowly twirling around to get a look at the new her. 'I still can't believe you actually got this just for me.' Eventually, she stops her one woman fashion show and walks over to you with a mischievous smirk. Playfully scratching the underside of your chin with a finger, she teases, 'Careful now. If I didn't know any better, I'd think that you're out to spoil me.'";
		now hunger of Ranae is 6;		[Gave dress to Ranae]


Section 3 - Ranae

The description of Ranae is "[RanaeDesc]".
The conversation of Ranae is { "Ribbit" }.
The scent of the Ranae is "[RanaeScent]".

to say RanaeDesc:
	say "     Ranae is a pretty-looking frog woman. ";
	if hunger of Ranae is 0:
		say "However, she is also unhealthily thin, and is in dire need of some food and water. ";
	else:
		say "She has a lithe build with a modest pair of breasts on her chest. The only exception of her pert figure is her ass. While not the largest, the amphibian female's butt is still a very much respectable size, and the perfectly round figure more than made up for any size concerns. ";
	if hunger of Ranae < 5:
		say "The clothes that she is wearing are little better than dirty rags, and they look like they're going to fall apart at any moment.";
	else:
		say "She still wears the black dress that you found for her. The low cut dress is clearly made to show off the wearer's body, the hemline ending right above her knees, and only two narrow strips hold the dress on Ranae's shoulders to prominently display both her arms and the top of her breasts. The fabric sticks close to her skin, showing hints of her lithe figure, but given her bodacious rear, the fabric actually accentuates the rounded curves of her ass. [if charisma of Ranae is 2]The emerald bracelet on her right wrist has not left her since you gave it to her.[end if]Before, Ranae had a certain charm, but now, she is downright gorgeous.";

to say RanaeScent:
	say "     Ranae has a faint scent that reminds you of lakes.";

Instead of conversing the Ranae:
	Linebreak;
	if hunger of Ranae is 9:
		say "     'What do you want, servant?' Ranae asks haughtily";
	else:
		say "     'Hello there[if player is not defaultnamed], [name of player][end if],' Ranae says as you approach her.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Check up on her";
	now sortorder entry is 1;
	now description entry is "See how Ranae is doing and ask if she needs anything";
	[]
	if hunger of Ranae < 4 or hunger of Ranae is 6:
		choose a blank row in table of fucking options;
		now title entry is "Give Ranae supplies";
		now sortorder entry is 2;
		now description entry is "Donate food and water to the hungry frog";
	[]
	if hunger of Ranae > 6 and hunger of Ranae < 9:
		choose a blank row in table of fucking options;
		now title entry is "Give Ranae junk food";
		now sortorder entry is 3;
		now description entry is "Gift some chips and soda to the hungry frog";
	[]
	if hunger of Ranae is 9:
		choose a blank row in table of fucking options;
		now title entry is "Give Ranae a gift";
		now sortorder entry is 3;
		now description entry is "Give Ranae something that she might like from your scavenging";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Check up on her":
					say "[RanaeCheckUp]";
				if nam is "Give Ranae supplies":
					say "[RanaeSupplies]";
				if nam is "Give Ranae junk food":
					say "[RanaeJunkFood]";
				if nam is "Give Ranae a gift":
					say "[RanaeGift]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the frog, shaking your head slightly. Ranae pouts a bit, but she lets you be.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RanaeCheckUp:
	if debugactive is 1:
		say "DEBUG -> Hunger: [hunger of Ranae] Perception: [perception of Ranae]<- DEBUG[line break]";
	if hunger of Ranae is 1:
		say "     Ranae gives you a friendly, albeit weak, smile, but it dissolves into a frown. 'I'm, um, still not doing well, and I could really use some food and water... if you feel like helping me, that is...'";
	else if hunger of Ranae < 4:
		say "     'I'm feeling better, thanks to you,' Ranae says with a smile. 'I still could use some more food and water. If you can't though, I understand.'";
	else if hunger of Ranae < 5:
		say "     'I'm doing pretty good,' Ranae says in a cheerful tone. 'I'm even managing to do some of my own scavenging. I've been trying to get some new clothes because these ones I'm wearing feel like they're going to rip soon.";
	else if hunger of Ranae < 7:
		say "     'I feel great, thanks to this,' Ranae says as she runs a hand through her dress. 'As for food and water, I'm doing alright, but with how you keep ginving me stuff, who am I to refuse your generosity?'";
	else if hunger of Ranae < 9:
		say "     'Things are going just great,' Ranae says. 'It will be even better when you bring me the chips and soda that I asked for.'";
	else if perception of Ranae is 2 and intelligence of Ranae is 2 and charisma of Ranae is 2:
		say "     'I'm very satisfied with your work, my servant,' Ranae tells you. 'After all of the gifts that you have given me, I am tempted to take you home with me after all of this craziness is over.'";
	else:
		say "     'Did you bring me anything?' Ranae asks. 'I bet that there's all sorts of nice things in the city just waiting for you to pick up for me.'";

to say RanaeSupplies:
	if carried of food > 0 and carried of water bottle > 0:
		if hunger of Ranae is 1:
			say "     Ranae's eyes grow wide as you dig out a bottle of water and a package of food from your pack and hold them out to her. She moves closer, her gaze locked on the precious supplies, but when her hands reach for the rations, she hesitates and looks back up at you. You give her a smile and a nod, and the frog squeals in delight as she takes your gifts. 'Oh my god! Finally, water! I never thought that I'd miss clean water!' she cries before popping the cap off of the bottle and begin guzzling down the life-giving liquid. The amphibian drains the entire bottle in a matter of moments, and she promptly rips into the food right afterwards. The entire time, you just awkwardly stand there, watching as Ranae gorges herself, her loud chomping echoing through the sewer. It doesn't take long for her to finish devouring her meal, and you can already see that her belly is no longer concaved. The frog licks her fingers to get the last crumbs, only to freeze when she glances in your direction, and her face flushes red when she realizes that you're still here.'Um, excuse me?' Ranae sheepishly offers, to which you merely wave off with a smile.";
			now hunger of Ranae is 2;		[Gave Ranae one round of food and water]
		else if hunger of Ranae is 2:
			say "     A wide smile graces Ranae's face when you take out another helping of water and food and hold them out to her. Again, she looks up at you, silently asking your permission, and after you give her a nod, she gleefully accepts your offerings. 'Thank you, thank you, thank you!' she exclaims before tearing into the supplies. Just like before, Ranae's ravenous hunger makes her forgo her decency and table manners, but despite her loud, sloppy eating, you find the act oddly endearing and cute. Unsurprisingly, Ranae finishes her meal in a matter of moments, and she sighs in contentment, only to make an embarrassed meep as she turns to you with her face flushed red and a nervous chuckle. 'S-sorry... again...' she apologizes. 'I think I'll be less messy the next time since I'm not starving anymore. Er, n-not that I'm implying that I expect you to help me again... although I certainly would not object if you did.'";
			now hunger of Ranae is 3;		[Gave Ranae two rounds of food and water]
		else if hunger of Ranae is 3:
			say "     Ranae's attention immediately focuses on the food and water you pull out of your pack, and this time, she doesn't hesitate to take the offering when you hold it out to her. As usual, she chugs down the water at a frightening rate, however, this time, she stop when there is about a third of the water left before she screws the cap back on. She does the same with the food, quickly gorging herself but leaving a portion of it for later. 'Thank you so much for everything. I'm feeling a lot better,' Ranae comments as she pats her filled stomach. Even without her mentioning it, the contrast between now and when you first met the frog lady is as clear as day and night. Her now vibrant green skin is looking healthily moist, giving it a faint sheen. No longer being just skin and bones, Ranae has quite the lithe build with a modest pair of breasts on her chest. The only exception of her pert figure is her ass. While not the largest, the amphibian female's butt was still a very much respectable size, and the perfectly round figure more than made up for any size concerns.";
			say "     Ranae clears her throat, breaking your stare of her bodacious butt. 'S-seems that you like a certain part of me,' she remarks, along with a giggle tinged with both embarrassment and delight. She brings her hands to her boobs and then slowly drags them through her body, going down her sides and then circling her curvaceous rear. 'It's a good thing that I'm feeling stronger now because I think I know the perfect way I can repay you for your kindness.' She ends her offer with a smoldering gaze, however, after a few moments, her face grows red as she averts her gaze. 'Th-that is, if you want to, of course.'";
			now hunger of Ranae is 4;		[Gave Ranae three rounds of food and water]
			now Rundown Boutique is active;		[Event to get dress for Ranae]
		else if hunger of Ranae is 6:
			say "     Ranae giggles as you present her with another round of supplies. 'You know, I would've been fine with trying to find my own supplies, but you just keep giving them to me. How can I say no to someone who just wants to keep serving me?' The frog woman takes your offering, quickly stashing them away in the corner, before giving you a nod of approval. 'Tell you what: if you really are intent on serving me, find me some junk food, like some [bold type]chips and soda[roman type]. The stuff you've been giving me is alright and all, but they're also getting boring.'";
			now hunger of Ranae is 7;		[Gave Ranae four rounds of food and water]
		else:
			say "     Error encountered. Please report this bug on the Discord channel. Ranae Hu: [hunger of Ranae]";
		decrease carried of food by 1;
		decrease carried of water bottle by 1;
	else:
		say "     You don't have any food and/or water to give to Ranae.";

to say RanaeJunkFood:
	if carried of chips > 0 and carried of soda > 0:
		if hunger of Ranae is 7:
			say "     When you hold out your newest offering, Ranae eagerly takes them from you with a grin. She opens the chips first, but her grin shrinks slightly when she peers inside. 'Aww. Half of the chips in here are crushed. Still, I suppose given the circumstances, I cannot fault you for this.' She picks out an unbroken chip and eats it, giving a hum of satisfaction as she savors the salty treat. She eats a few more chips before setting the bag aside and then move on to the soda. Opening the can, she takes a sip and nods in approval. 'At least this soda is still fizzy. Good work. I could use some more though. I know that too much junk food is not good for you, but after everything I went through, I deserve to indulge myself a bit.'";
			now hunger of Ranae is 8;		[Gave Ranae one round of chips and soda]
		else if hunger of Ranae is 8:
			say "     You barely take out more chips and soda from your pack before Ranae snatches them from you and moves to stash them in the corner. However, she pauses when she looks over the supplies that had been accumulating there. 'You know, this place is getting a bit cramped, and I'm going to run out of space if you keep bringing me stuff. I need someplace bigger and better.' The library that you have been using as your base of operations quickly comes to mind, and when you mention it to the frog, her eyes widen in surprise. 'I know that place. You actually have that whole building to yourself?' Before you could tell Ranae more about the library, she shoves a few pillows into your arms. 'Come on. I can't wait to see my new home. A place as grand as that will be perfect for me!' Despite having to carry all of Ranae's belongings, it was hardly a burden since all she was bringing was a few pillows and her supplies, most of which were actually gifts from you. Thankfully, the journey back to the library went without a hitch. ";
			if number of booked people + number of bunkered people > 0:
				say "As the two of you enter the library, Ranae pauses when she sees one of the other denizens that live with you. 'Really? There's others here.' Ranae lets out an exasperated sigh as she looks around the area. 'At least it's better than that hole in the wall I was in.'";
			now hunger of Ranae is 9;		[Ranae moved to library]
			now Froggy Hideout is unknown;
			move player to Sitting Area;
			move Ranae to Sitting Area;
			now Boarded-up Building is active;
			now Ransacked Shop is active;
			now Trench Coat Salesman is active;
		else:
			say "     Error encountered. Please report this bug on the Discord channel. Ranae Hu: [hunger of Ranae]";
		decrease carried of chips by 1;
		decrease carried of soda by 1;
	else:
		say "     You don't have any chips and/or soda to give to Ranae.";

to say RanaeGift:
	if perception of Ranae is 2 and intelligence of Ranae is 2 and charisma of Ranae is 2:
		say "     'I'm very satisfied with your work, my servant,' Ranae tells you. 'After all of the gifts that you have given me, I am tempted to take you home with me after all of this craziness is over.'";
	else:
		say "     'Did you bring me something?' Ranae asks when as you approach her.";
		if perception of Ranae is 1:	[Figurine]
			say "     Recalling your recent search inside of the boarded-up building, you dig out the newspaper-wrapped object you found and give it to her. The frog woman arches her brow in skepticism, but she accepts your offering without a word before quickly tearing off the paper. Ranae grins as she holds up the dancing figurine and remarks, 'Ohhh, I like this. I used to have one of these things.' She turns the windup key a few times, making the soft tinkling of the music box starts playing, and she watches the tiny dancer spin around with rapt attention and a growing grin on her face. A few moments later, the figurine comes to a stop, and Ranae gently places her new possession on a nearby desk. Giving you a nod of satisfaction, she says, 'Good job, servant. You always know the best things to give me.'";
			now perception of Ranae is 2;
		else if intelligence of Ranae is 1:	[Drapes]
			say "     Ranae's eyes light up when she sees you approach with the drapes that you found. She quickly runs up to you and holds up a piece of the fabric to inspect it. 'Nice. Very nice. This place might be safe and all, but it's also pretty drab. These will not only liven things up, but a woman like me needs her privacy.' The frog lady nods in satisfaction as she finishes looking over the drapes and drops it back in your hands. 'Well, what are you waiting for? Set it up for me!' Fortunately, you find a few stands for the drapes in one of the library's storerooms, and it's not long before Ranae's spot is surrounded by decorative green fabric.";
			now intelligence of Ranae is 2;
		else if charisma of Ranae is 1:	[Bracelet]
			say "     As soon as you pull out the emerald bracelet that you [italic type]found[roman type], Ranae's eyes fly wide open, and she quickly snatches the jewlery from you. 'Oh my gosh!' the frog gushes as she holds the bracelet in her left hand and adoringly rubs it with her right one, a giddy smile on her face. 'It's so pretty! You really do know how to spoil a girl.' She slips the bracelet through her right hand, letting it hang on her wrist. Holding her arm up to the light, she giggles in joy over her new accessory. 'It's a perfect fit! I love it!' As Ranae continues to fawn over her bracelet, you realize that the frog isn't aware that the bracelet is a fake. You briefly wonder if you should tell her that, but with how happy she is, you decide to keep quiet.";
			now charisma of Ranae is 2;
		else:
			say "     You pull out several knickknacks and trinkets that you have found during your exploration, but none of them seems to catch Ranae's eye. When you run out of stuff to show to the frog woman, she snorts in annoyance and gives you a dismissive wave with her hand. 'Go and find me stuff that's actually interesting,' she commands before sending you on your way.";

instead of fucking the Ranae:
	LineBreak;
	if (lastfuck of Ranae - turns < 6): [Had sex in the last 18 hours = 6 turns]
		if hunger of Ranae is 9:
			say "     'Seriously? Now?' Ranae complains with a huff. 'I just played with you. If you must insist on having another session with me, ask me again after I rest some more.'";
		else:
			say "     Sorry, but I'm still a bit tired from the last time,' Ranae apologizes. 'Maybe a bit later.'";
	else:
		if hunger of Ranae is 9:
			say "     Ranae smirks. 'Glad to. Now, what shall I do with my servant?'";
		else:
			say "     Ranae smirks. 'Glad to. What shall we do[if player is not defaultnamed], [name of player][end if]?'";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if hunger of Ranae > 3:
			choose a blank row in table of fucking options;
			now title entry is "Ass Worship";
			now sortorder entry is 1;
			now description entry is "Worship that frog booty";
		[]
		if hunger of Ranae > 8:
			choose a blank row in table of fucking options;
			now title entry is "Facesit";
			now sortorder entry is 2;
			now description entry is "Let Ranae use your face as a seat";
		[]
		if vorelevel > 1:
			choose a blank row in table of fucking options;
			now title entry is "Oral Vore";
			now sortorder entry is 3;
			now description entry is "Let Ranae swallow you whole";
		[]
		if vorelevel > 1:
			choose a blank row in table of fucking options;
			now title entry is "Anal Vore";
			now sortorder entry is 4;
			now description entry is "Get an inside look of Ranae's ass";
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
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Ass Worship":
						say "[RanaeAss]";
					if nam is "Facesit":
						say "[RanaeFacesit]";
					if nam is "Oral Vore":
						say "[RanaeOralVore]";
					if nam is "Anal Vore":
						say "[RanaeAnalVore]";
					now lastfuck of Ranae is turns;
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the frog, shaking your head slightly. Ranae pouts a bit, but she lets you be.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say RanaeAss:		[Player sticks their face into Ranae's booty]
	say "     Ranae giggles when she notices your gaze go down to her rear. 'It seems that you're quite taken by my butt. Would you like to take a closer look?' The frog woman moves over to the pile of pillows in the corner and lies down on her hands and knees, arching her back so that her ample ass is presented to you. She then looks back at you with a smoldering gaze. 'Come on. You know you want to,' she beckons, punctuating her comment with a gentle sway of her rump that makes those green globes jiggle enticingly. Taking the invitation, you move over to the laying amphibian and kneel down right before that tempting ass. Your hands knead into Ranae's rear, earning you a moan of delight from the frog as you admire the smooth, supple texture. You can't help but revel in the pliant warmth of Ranae's rump, and soon, driven by your lewd desires, you bend down even further and push your head into the crevice between those wondrous green cheeks. 'Oooh, someone is eager,' Ranae commented, only to squeal when your tongue starts to drag across her smooth skin. Blissfully smothered in between two soft mounds, you continue to lick the frog's rear while your hands continue to massage the sides of her bodacious butt and relish the feel of the malleable flesh.";
	say "     You barely hear Ranae's lustful pants as you continue your oral ministrations, and eventually, the frog woman moans as she achieves her climax. Her body goes limp as it falls onto the pillows, and with a bit of reluctance, you pull yourself away from her alluring rear to admire your work. Ranae is breathing heavily from exhaustion, and despite one of the pillows that she is lying on being stained by her juices, the satisfied smile on her face tells you that she doesn't mind one bit. 'Oh wow. That... that was... wow...' Ranae says after a moment of rest, and you lean in to give each of her rear cheeks a kiss, one after the other. She sits up to look at you with a dreamy smile. 'Thanks for that. I thought that I would just be letting you have some fun, but instead, you made it all about me. [one of]A girl like me can get used to attention like that[or]I certainly would not mind having this sort of attention again[or]Careful, or I might just get addicted to this sort of attention[at random].'";

to say RanaeFacesit:		[Ranae sits on the player's face]
	say "     'You're staring at my ass,' Ranae states. Despite the firmness in her tone, it doesn't carry the bite of an accusation. In fact, you could detect a hint of amusement within it. The frog grins mischievously as she beckons you closer, to which you oblige without question. 'I know that you're enamored with me, so it obviously means that your love applies to all parts of me, including my rear. It's a good thing too, because I need a comfier seat.' Before you can ask what she means, Ranae pushes you, making you fall backwards, but fortunately, the seductive amphibian had been subtly maneuvering you around her room so that you would fall on some pillows. Ranae then turns around, looking back at your prone form with a smirk, as she slowly sheds her dress. Though you appreciate the frog woman's body while she reveals her lithe figure, the main attraction comes when she lets the fabric slip below her hips, allowing you to ogle her round, green ass.";
	say "     As Ranae shakes her hips, your gaze is locked onto the hypnotic sway of that jiggling booty. So captivated you are with that perfect rump, you swear that it is growing bigger, encompassing your vision. In fact, Ranae's ass really is encompassing your vision as the frog lady moves to stand over your lying form, her rump poised right over your face. 'Be a good [if Player is male]boy[else]girl[end if] and worship me,' is all Ranae says before your world becomes cushy, green flesh. The frog's bodacious ass is big enough to cover your entire face, leaving only the very top of your head free. The air becomes heavy and stifling as the amphibian's scent floods your senses.";
	WaitLineBreak;
	say "     As Ranae shifts around to make herself more comfortable on her new seat, you are buried deeper into that succulent fresh, and eventually, you feel the entrance to her rear hole drag across your mouth. Obeying the silent command, your tongue teases the edges of that musky entrance, and your oral ministrations earns you a satisfied moan from the domineering frog, and the wondrous cheeks clench in response, smothering you even more in warm softness. You can feel Ranae's juices start to drip from her cunt and onto your body, but you hardly care as you drive your tongue deep into her sphincter. ";
	if Player is male:
		say "Suddenly, you feel the frog's grasp [if Cock Count of Player > 1]one of your cocks[else]your cock[end if], and you let out a moan of your own when she begins moving her hand up and down your shaft. 'I suppose my seat has earned a bit of a reward,' Ranae says through her husky panting. 'Just make sure you keep doing your job.'";
	else if Player is female:
		say "Suddenly, you feel the frog's fingers tease the lips of [if Cunt Count of Player > 1]one of your cunts[else]your cunt[end if], and you let out a moan of your own when those fingers plunge into your pussy. 'I suppose my seat has earned a bit of a reward,' Ranae says through her husky panting. 'Just make sure you keep doing your job.'";
	else:
		say "Suddenly, you feel the frog's fingers caress your groin, and you let out a moan of your own. 'I suppose my seat has earned a bit of a reward,' Ranae says through her husky panting. 'Just make sure you keep doing your job.'";
	say "     As you continue to lavish her wondrous rear with attention, probing your tongue into the tight, hot passage and caressing every inch of it, Ranae's breathing gets even more ragged, and soon, with a squeal, she achieves her orgasm. While your body is drenched in her juices, your face is squeezed tightly by her ass, and the mix of her intoxicating musk and the sensual embrace of her rear cheeks gives you your own climax[if Player is male], your cum spraying onto the amphibian's hand[else if Player is female], your femcum splashing onto the amphibian's hand[end if].";
	say "     You remain under Ranae's plush ass as she recovers from her release, not that you mind staying in your blissful situation. Eventually though, the magnificent ass rises off of your face, exposing you to the open air again with the frog woman smirking down at you. 'You make for a wonderful chair[if Player is male], even if you do make quite the mess,' she says as she uses your body to wipe your cum off of her hand[else if Player is female], even if you do make quite the mess,' she says as she uses your body to wipe your femcum off of her hand[else],' she says[end if]. 'Do make sure that you're around the next time I need a seat.'";

to say RanaeOralVore:		[Ranae swallows player whole and bound state]
	say "     Before you can say anything, Ranae curtly states in a tone that brooks no argument, 'I'm hungry.' Seeing that she will not take 'no' for an answer, you ask Ranae if she's asking you to get her more food. In response, she saunters right up to you with a devilish grin. 'No, I don't want those boring things. I want [italic type]you[roman type],' she says, and she pokes you in the chest with her index finger as she licks her lips with her long tongue. 'You've given me so many nice things, and now, you're going to give yourself to me.' Despite the ominous words, there's a sense of thrill, and along with your eccentric drive to constantly please the demanding woman, you don't refuse her outlandish command, nor do you resist when she pushes you onto her mattress. The hungry frog is upon you before you can react, locking you in place beneath her as a hungry glint flashes in her eyes. 'I'm going to enjoy this,' Ranae remarks before she lifts up your head toward her open maw. Though the amphibian predator is forceful in shoving you inside of mouth, she takes her time to savor your flavor, her long tongue licking every inch of your face.";
	if scalevalue of Player < 3:
		say "     Because of your small body, it doesn't take much effort for Ranae to stuff the rest of you into her mouth, and before you know it, you're disappearing down her gullet. The slick muscles in her throat squish into you from all sides, slowly dragging you deeper into the amphibian. Your journey through the churning darkness doesn't take long before you eventually feel yourself push up against a wall, but it only takes a moment for you to be squeezed through it, dumping you into the frog's stomach. Situating yourself in the twisted confines, you find that there's little room for you to move about. ";
	else:
		say "     Despite being [if scalevalue of Player is 3]the same size as[else]larger than[end if] the frog, Ranae is determined to make you her meal. As she continues to cram you inside of her, the hardest part soon comes when she gets to your shoulders. Amidst all of the pushes and squeezing she does to try and gulp you down, somehow, her mouth slowly stretches wider and wider until finally, she manages to take in your shoulders, allowing her to resume consuming you. With the widest part of you taken care of, the rest of your body follows suit down her gullet without much resistance. The journey down her constricting throat is brief. In fact, parts of your legs are still squirming outside of the frog by the time your head arrives in her stomach. No doubt that the infectious nanites is somehow letting her body stretch inhumanely, Ranae eventually manages to gulp you all down, and you're forced to curl up into a ball to fit inside of her stomach. ";
	say "     'You were simply delicious,' Ranae compliments while she pats her belly, which is now extremely distended to house you. 'Be a good little servant and stay in there. I'll let you out later... if I feel like it.'";
	wait for any key;
	RanaeBind;

to say RanaeAnalVore:		[Ranae swallows player whole with her ass and bound state]
	say "     As Ranae looks over your [BodyName of player] form, you see a sudden glint in her eyes, one born of mischievousness and a hint of insanity. 'I just had an interesting idea,' the female frog informs as she sashays over to you. 'We're going to try something different... very different.' Before you can ask for more details, she pushes you onto the nearby mattress and leers down at you. 'Mmm, something tell me that I'm going to enjoy this... a lot.' Ranae lets her dress slip down to the floor, but you barely have time to take in her naked body before she moves over your prone body, turns around, and drops her bodacious green booty right on your face. You're smothered under her wondrous globes, the combination of her smooth skin and the musky aroma emanating from her rear already starting to arouse you. You're given no respite as the dominating amphibian rocks her hips, wedging you further between her cheeks.";
	say "     At first, you assume that she wants you to service her with your tongue, but when you try to lick into her crevice, the task is made difficult from her constant movements as she continues to aggressively grind her ass into your face until, somehow, her sphincter stretches to take in your head. Although slightly muffled by her cushioned behind, Ranae moans loudly with pleasure over your anal insertion, and you can feel the muscles of her rectum clamp down as they work on drawing in the rest of your body. Your hands instinctively move to the green globes smothering you to try and push back, but all of your efforts amount to is the equivalent of squeezing and groping the cushy derriere. Ranae moans again from your unintentional massage, and with a giggle, she says, 'With how you've been enamored by my ass, I thought that you would love a closer look at it. Just relax and let it happen. I'm enjoying this, and you can too.'";
	WaitLineBreak;
	say "     The heady smell of her musk is amplified now that you're inside the source of it, and you feel the anal walls of the frog constantly clench and squeeze to pull in the rest of your hapless form. Your forced journey into the frog has a bit of a bump when your shoulders reach Ranae's rear hole, but it doesn't stop the twisted amphibian as her anus somehow opens even wider to take [if scalevalue of player > 3]in your larger form[else]you in[end if]. Even though her ass is stretched to inhuman levels, by the sound of Ranae's delighted cries, she's having the time of her life reducing you to nothing more than a giant, squirming dildo. Slowly but surely, the frog takes you in through her back entrance, and when your shoulders finally fully pop into the dark, musky tunnel, Ranae is brought to her climax. She howls in ecstasy and drenches the bottom half of your body with her femcum just before it too is swallowed by her rear, the frog's ass claiming all of you as her own.";
	say "     Ranae's orgasm is drawn out by you utterly filling her, your squirming body rubbing all over her inner depths, but you barely notice her ecstasy as the tight constricting tunnel of her anal walls draw you deeper into the horny female. Slick flesh rubs into you from all angles as you're ferried through the churning darkness. Your journey eventually comes to an end when you feel yourself being pushed up against a wall, but it only takes a moment for you to be squeezed through it and into a small chamber that forces you to curl up into a ball. As you situate yourself in the twisted confines, you realize that you had ended up in the frog's stomach. 'That... that was awesome,' Ranae comments, her voice weary but clearly pleased. She flops back onto the mattress and then pats her belly, which is now extremely distended to house you. 'It was so hot that I got to use you both as a toy and a meal. Now, be a good little servant and stay in there. I'll let you out later... if I feel like it.'";
	wait for any key;
	RanaeBind;


Section 4 - Bound State


to RanaeBind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     Your cloistered captivity inside of Ranae is stifling, but there's also no denying that being inside of her stomach is somehow strangely arousing. You're not sure if it's whether the domineering frog exerting her influence on you or if it's you finding the caress of her inside walls pleasurable, but one thing is for certain and that is the growing pressure in your loins. The taut flesh pressing down on you restricts you from tending to your impending climax, but that same soft, supple flesh takes care of that for you, rubbing into every angle of your body, including your [if Player is herm]cock[smn] and cunt[sfn][else if Player is male]cock[smn][else if Player is female]cunt[sfn][else]groin[end if]. It isn't long until you are pushed to orgasm, your throes of pleasure reduced to mere wiggles by your cramped confines. 'Ooh, someone is having fun in there,' Ranae commends, chuckling as she feels your movements. 'Just stay in there, and you'll feel much more of that.' Despite your mind regaining some clarity from your release, a part of you wants to obey your amphibious captor's suggestion.";
			LineBreak;
			now struggleatt is 0;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 5 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 13 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		say "     You're within Ranae's stomach. [one of]You can feel Ranae's hands rub you from the outside while she murmurs, 'Feels so good...'[or]Although you're cramped inside of the amphibian, you find your confinement oddly pleasurable because of your fleshy surroundings constantly knead your helpless form[or]'Mine... All mine...' Ranae coos as she hugs her bulging belly[at random]. You can [bold type]S[roman type]truggle to let Ranae know that you want to be let out, [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] to continue pleasing the frog, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] to try and stay inside of the amphibian for as long as you can.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [RanaeStruggle]";
		if humanity of Player < 1:
			LineBreak;
			say "     You're not sure how long you've spent inside of the amphibious predator, but you eventually find yourself unwilling and unable to resist Ranae's influence. Subjected to the endless churning of her stomach, you feel completely worn out from the constant rubbing and squishing and allow yourself to submit to the frog. Between your exhaustion and no longer having the will to struggle, the touches of the surrounding slick flesh start to feel like they are kneading and massaging your weary body. The warm, comforting embrace of Ranae's stomach lulls you into a state of bliss, and you would do anything to spend more time inside of the hungry frog, which includes devoting yourself to tend to her every need. Even as your eyes grow heavy and eventually close from a mix of exhaustion and pleasure, your thoughts dwell on your froggy mistress and how to better serve her.";
			wait for any key;
			if a random chance of 1 in 2 succeeds:
				say "     Coming to an unknown time later, you find yourself lying on the floor of Ranae's part of the library. You briefly wonder if you really did spend time in the amphibious woman's stomach, but judging by the fluids still covering your body, Ranae had indeed eaten you, and she had spat you out some time after you passed out. 'Look who's finally up,' the frog herself says. She's lounging on her mattress, looking you nonchalantly. 'What? Did you really think I was going to eat you for real?' she asks with a snort. 'I'm not going to waste a good servant just like that. That being said though...' Ranae smirks and puts on a show of slowly licking her lips with her long tongue. 'You're a really tasty treat, and I might not be able to resist keeping you when dinner time comes around again. Until then, go and find me more stuff.' Although you understand the implied risk of letting Ranae eating you again, a part of you actually yearns for you to return to the pleasurable embrace of her stomach. Shakily getting back on your feet, you clean yourself off and leave, thoughts of the hungry frog still on your mind.";
				now humanity of Player is 25;
				cleanboundmemory;
				now Trixieexit is 1;
				follow the turnpass rule;
				wait for any key;
			else:
				if perception of Ranae is 2 and intelligence of Ranae is 2 and charisma of Ranae is 2:
					say "     You awaken some time later, only to find yourself still within Ranae's stomach. You're unsure how long you've been trapped inside of the frog, and by all means, you should be worried if she intends to digest you, but instead, you feel calm and relaxed. The pliant flesh of her churning stomach caresses every inch of your weary body, all while the soft, rhythmic beating of her heart echoes in the background, the dulcet sounds acting almost like a lullaby, further pacifying you. There's nothing but warmth, comfort, and safety within Ranae, and you eventually fall asleep again. Every time you come to, you find that you are still within the amphibian's embrace, and sometimes, you either feel Ranae cradle her filled belly or hear her words of how you're such a good servant to her before you are lulled back into restful slumber. Thoughts of time and your responsibilities disappear, replaced by nothing more than adoration and submission for your amphibian mistress, and you are more than willing to remain inside of her, even if it means that you will eventually fade away, your final act of servitude as her servant.";
					say "     However, ending up as food for her doesn't seem to be on the menu just yet as after some more time had passed, you feel your surroundings churn violently before pushing you up and out of Ranae's stomach, and after a short trip through the constricting tunnel of her throat, you are spat out of the frog and onto the floor. Shivering from the cold and the hard ground, you already long to be returned to the warm, soft embrace of your mistress. You can see that you are back in Ranae's space in the library, and the domineering frog herself is smiling at you with both smugness and pride. 'Aww, what's the matter? Already missing being eaten by me?' she teases. 'I'll have to admit, you're absolutely delicious, and I was tempted to actually make you into my dinner. But that would be such a waste of a good servant. You've done nothing but obediently follow my orders and shower me with gifts. I'm not going to get rid all of that just for a quick meal. Don't worry though. I know how much that you loved being inside of me, and you're lucky that I like having you fill my belly, so here's how things are going to go. From now on, you're mine. You're going to be at my beck and call, twenty-four seven, which includes being my belly filler. Got it?'";
					say "     You agree to Ranae's terms without hesitation, binding yourself to a lifetime of servitude to the domineering frog.";
					now voreloss is true;
					now BodyName of player is "Froggy Servant";
					now Trixieexit is 1;
					end the story saying "You became a fulltime servant for a frog.";
				else:
					say "     'That's a good [if cocks of player > 1]boy[else]girl[end if]. No more struggling. Just give yourself to me,' Ranae says, even though your movements had ceased some time ago. The frog woman hugs her bulging belly and giggles softly. 'You know, I'm actually going to miss you. With how you kept on spoiling me, I would've loved to keep you around as my servant. Unfortunately, this city has all sorts of crazy stuff going on, and I'm not going to let some freaks take you away from me. At least this way, I get to keep you forever, not to mention having you as a tasty treat.' Ranae pauses for a moment when her stomach gurgles, and she smiles as she uses her hands to rub gentle circles over her belly. 'Rest well, my servant. You're mine now... All mine...'";
					now voreloss is true;
					now BodyName of player is "Frog Food";
					now Trixieexit is 1;
					end the story saying "You let a frog have her way with you.";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 2:
					say "     [one of]'What are you doing in there?' an annoyed Ranae asks as she pokes your struggling form[or]'Don't you want to stay inside of me? It would please me so much,' Ranae teases[or]'Aren't you a feisty one?' Ranae says as she places her hands on your squirming form[at random].";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
					wait for any key;
				else:
					say "     As you continue to move about inside of the frog, Ranae asks, 'Why are you making such a fuss? You're supposed to be serving me.' You respond with some more movement, and eventually Ranae relents, 'Hmph. Fine. Be that way. You owe me for this.' Your surroundings start to tremble violently, and before you know it, you feel yourself being pushed upwards from your cramped cell and into a constricting tunnel stomach, only for it to end a moment later when you see the light of the outside world again as your head exits Ranae's mouth. The frog woman [if scalevalue of Player < 3]unceremoniously spits you out onto the floor[else]grunts and groans as she slowly but steadily lets your body slip out of her mouth, unceremoniously dumping you on the floor[end if]. After catching her breath, Ranae says, 'Why did you have to go and ruin my fun? It's not like I was going to keep you in there forever.' The smirk the frog puts on makes you question that statement, and Ranae giggles mischievously at your skeptic face.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
					wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					decrease struggleatt by 1;
					say "     [one of]'That's right. Just stay inside there and please me,' Ranae says as she caresses her belly[or]'Such a good servant,' Ranae praises[or]Ranae hums happily while she kneads your trapped form through her belly[at random].";
					wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					decrease struggleatt by 1;
					say "     [one of]'That's right. Just stay inside there and please me,' Ranae says as she caresses her belly[or]'Such a good servant,' Ranae praises[or]Ranae hums happily while she kneads your trapped form through her belly[at random].";
					wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
					SanBoost 3;
				else:
					say "     You try to calm yourself down, focusing on delaying your next climax to gather your thoughts.";
					wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to say RanaeStruggle:
say "< [bracket]-[if struggleatt > 0]X[else]-[end if][close bracket]";


Section 5 - Endings


when play ends:
	if BodyName of player is "Froggy Servant":
		say "     When the military comes, you and Ranae are processed together. Though your subservient attitude to your froggy mistress raises a few eyebrows, the both of you are eventually deemed safe and released back into the outside world. With you in tow, Ranae is quick to make contact with her parents. The reunion is met with all sorts of surprise on the parents' side when they find that not only is their daughter now an anthropomorphic frog, but she has a much more confident and domineering attitude, especially when she introduces you as her servant. Nonetheless, they are more than happy to welcome you and their froggy daughter. With Ranae's parents both being influential business people, the frog gets a managerial position in a small company, with you as her personal assistant. While you tend to your mistress's every need, Ranae finds great success in her new role, thanks to the assertiveness that she gained. With the money Ranae rakes in from her work, you have the opportunity to live close to the lap of luxury, but instead, you find more comfort in the stomach of your mistress whenever she has you fulfil your role as her belly filler.";


Ranae ends here.
