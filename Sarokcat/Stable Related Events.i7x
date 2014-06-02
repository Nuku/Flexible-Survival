Stable Related Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival set in the Stables area."


Section 1 - Kitchenkegger

Kitchenkegger is a situation.
The sarea of Kitchenkegger is "Stable";
when play begins:
	add Kitchenkegger to badspots of guy;
	add Kitchenkegger to badspots of furry;

Instead of Resolving a Kitchenkegger:
	say "Wandering through the halls of the Stables, you hear strange noises coming from behind one of the employee passages, and being curious at the time move to investigate. As you travel down the dimly lit service passages, the strange noise resolves itself into  rather drunken sounding singing, which only serves to increase your curiosity as you continue to approach. You eventually find yourself outside of a set of large double doors marked [']kitchen['] from which the singing seems to originate. Figuring that whatever or whoever is singing doesn[']t sound terribly dangerous, and that if you are ever going to find some useful supplies it would be in a kitchen, you steel yourself for combat as you swing the doors open and step inside.";
	say "Stepping into the kitchen you are in for something of a surprise however, as a trio of what appear to be draft horse hybrids are staggering around singing, even as they expertly prepare several meals from the supplies gathered here. The horses notice you immediately, and cheer slightly as they all grab mugs of some dark frothy liquid and toast your arrival. Feeling rather surprised, you stare at the rather shaggy and relatively smaller horsemen as they chug their drinks, before cheering and refilling them again as they break out into drunken song once again. Relaxing slightly, you find yourself rather surprised as one of them tries to shove a mug full of some dark frothy brew in front of you as well, and you look up to see all three of them smiling happily at you as they lift their own mugs.  Do you take a drink?";
	if player consents:
		say "Feeling rather dubious but unable to turn down the strange chefs hospitality, you lift your mug and they cheer and do likewise. Taking a tentative drink, you find the liquid seems to be a rather finely brewed draft beer, which certainly explains the actions of the drunken chefs. Enjoying the taste and not wanting to annoy your hosts, you drain your drink in several deep swallows before gasping for breath.  Your head swims as you feel a pleasant buzz set in even as your new equine friends clap you on the back companionably and refill your mug.  You drink the next mug much more slowly as you look around, though your attention is soon drawn back to the equines in the room, as they begin to kiss and grope each other even as they sing broken snatches of drunken song. You chuckle with some amusement, and one of the beasts reaches out to involve you in their impromptu orgy, only to be foiled when another one of them grabs them from behind and shoves their rod into their fellow cook. Feeling rather tipsy and much less inhibited now after a few drinks, you nonetheless decide you should probably stay out of the orgy for now, unless you want to stay here permanently, you set your mug down and give the distracted chefs a happy wave as you stagger back out into the halls once again...";
		decrease humanity of player by 10;
		decrease thirst of player by 20;
		if thirst of player is less than 0, now thirst of player is 0;
	otherwise:
		say "Deciding not to drink, you calmly set the mug down and try to look around some more, only to be surprised by the sheer variety of sharp pointy implements the strange horselike chefs are immediately wielding. Looking around you as they move forward, your eyes become locked one of them wielding a cleaver almost as long as your arm.  You quickly decide discretion is the better choice here, as you run out the doors again in a panic, their laughter and renewed singing chasing you down the halls almost all the way to the entryway. Finally relaxing before continuing on your way, you ponder how many sharp pointy dangerous objects are always readily at hand in a large kitchen, and resolve to stay away from such a dangerous place in the future.";
	now Kitchenkegger is resolved;


Section 2 - Tack room

Tack room is a situation.
The sarea of Tack room is "Stable";

Instead of Resolving a Tack room:
	say "Wandering through the narrow halls of the Stables, you come across a rather strangely marked room, labeled [']Tack room[']. Curiosity getting the better of you, you try the door and find it unlocked, a peek inside shows you a rather large room filled with all sorts of saddles and leather instruments lining the walls. The strong scent of well oiled and well used leather fills your nose as you wander carefully into the room, your eyes drawn to the many different types of harnesses and straps hung up carefully along the walls. As you continue to look around you find yourself noticing that more and more of these pieces of equipment are equally sized for usage on more than just horses, and you find yourself growing worried as you wander through the large array of bridles and blinders, as you find quite a few gags, whips, and breaking harnesses as well, and the mingled smell of equine sex underlying the scent of leather.";
	let bonus be (( the Perception of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 14:
		say "As your eyes scan over the leather implements on the walls, you spot a riding whip that looks like it would be useful for more than just sexual play or horses, and decide to slip it into your pack to take it with you, after all given the nature of this place, having a horse whip around certainly couldn[']t hurt... although some of the creatures here might just find it more arousing to be whipped instead of painful...  Still thinking about those creatures and looking around the room, you decide it might be best to leave while you still can, after all, this is obviously an area some of them visit often, and being found in a place with so many ways to restrain a person could be problematical you think as you slip out the door, even though for some reason the idea of being restrained seems increasingly sexy to you as you can[']t help but imagining yourself in one of those nice sexy harnesses...";
		increase carried of horse whip by 1;
		increase score by 5;
	otherwise:
		say "Thinking about those creatures and what they might use this gear for as you look around the room, you decide it might be best to leave while you still can, after all, this is obviously an area some of them visit often, and being found in a place with so many ways to restrain a person could be problematical you think as you slip out the door, even though for some reason the idea of being restrained seems increasingly sexy to you as you can[']t help but imagining yourself in one of those nice sexy harnesses.";
		increase score by 1;
	Now Tack room is resolved;


Section 3 - Onyxroom

Onyxroom is a situation.
The sarea of Onyxroom is "Stable";

Instead of Resolving a Onyxroom:
	say "Exploring deeper into the maze of halls and rooms of the converted hotel,�you find yourself in another hallway much like the others. Checking to make sure you are alone you venture down the hallway noticing that next to each of the doors is a neatly engraved name plate, obviously the name of the room's occupant. Halfway down the hall you see a name plate that reads [']Onyx[']. Taking a deep breath you open the door to the room and go inside. On the walls is an assortment of horse tack done in black leather. Bridles and halters of every description hang neatly from the walls along side reigns and bits, A large, old-fashioned horse collar hangs on another wall. On a stand sits an english saddle. Exploring further you find the closet is filled with fetish clothes and other outfits the dresser drawers are filled with more clothes and an even larger assortment of sex toys. Quickly backing out of the room you don't know if you should feel sorry for [if xp of Onyx > 0]the young man you met in the holding pens[otherwise]its eventual occupant[end if] or a little bit envious.";
	increase score by 1;
	Now Onyxroom is resolved;


Section 4 - Unlucky elevator

Unlucky elevator is a situation.
The sarea of Unlucky elevator is "Stable";

Instead of Resolving a Unlucky elevator:
	say "Wandering through the halls of the old hotel, you come across an elevator that appears to be open and ready for passengers, and while you don[']t actually expect the elevator to work without power to this area of the city, you decide to investigate it anyways. Looking around inside you see that it seems to be a rather normal old style elevator, without much of use to be found in it, however you get a bit of a surprise when you look at the floor buttons. It seems that aside from the ground floor, all of the floor buttons are labeled 13, despite the fact that there are certainly more than 13 floors in the building. You feel a little unsettled as you stare at the similarly labeled buttons, and decide as you step out of the elevator quickly, that you might not want to ride in that rather unlucky seeming elevator even if the power was running, as you quickly continue on your way.";
	increase score by 1;
	Now Unlucky elevator is resolved;


Section 5 - Lupine visit

Lupine visit is a situation.
The sarea of Lupine visit is "Stable";

Instead of Resolving a Lupine visit:
	say "Traveling around the large building, you come across a pair of large horsemen escorting what appears to be a rather well-dressed wolfman carrying a briefcase through the halls. Quickly ducking into a dark corner, you hide as they pass by, the unusual sight of the horsemen escort, as well as the fact that the odd wolfman actually was bothering to wear clothes, makes you wonder just what was going on there. Shrugging, you chalk it up as just another strange happening in the city as you continue on your way with a bit more caution, just in case any more of those horsemen are nearby.";
	increase score by 1;
	Now Lupine visit is resolved;


Section 6 - Soldierstabling

Soldierstabling is a situation.
The sarea of Soldierstabling is "Stable";
Soldierhorsetf is a number that varies.
when play begins:
	add Soldierstabling to badspots of girl;
	add Soldierstabling to badspots of furry;

Instead of Resolving a Soldierstabling:
	if Soldierhorsetf is 0:
		say "Wandering around the large and dimly lit hallways, you think you hear a sound coming from down one of the halls, a low moaning sound, interspersed with several other unidentifiable noises coming from relatively nearby. After pausing for a minute to make sure nothing is coming, you carefully inch down the hallway until you can see into what appears to have once been a small dining room. Now the room is filled with numerous posts and benches, and you can see a number of rather equine people hitched up to the posts, while a few full horsemen wander around among them, stroking and teasing the tied people with amusement.  Blinking you realize that these transforming people are the former soldiers you saw being escorted into the Stables earlier, their forms having already begun to change enough that they are quite hard to recognize. As you look at the features of the bound captives, their partially equine faces a mixture of fear and intense arousal, you find yourself growing increasingly aroused as well, your eyes tracing over their half changed forms, and finding the mix of equine and human features to be surprisingly erotic. You shake yourself as you realize that your hands have started to drift down to your privates, and force yourself to move away from the strange sight of the soldiers turning into sexy equines, though you consider stopping by again next time you are in the area... just to see how they have progressed of course.";
		now Soldierhorsetf is 1;
		increase libido of player by 25;
		if libido of player > 100, now libido of player is 100;
		increase score by 1;
	otherwise if Soldierhorsetf is 1:
		say "Wandering through the large old hotel, you find yourself near the room where the soldiers were being trained last time you were down this way, and finding your curiosity to be getting the better of you, you silently slip down the hallway again until you can peek into the room once more. Looking into the room, you can see that many of the former soldiers have continued their rapid changes, and now appear to be more equine than anything else, and no longer appear to be bothered at all by their changes. You watch as one of the new mares flicks her tail teasingly at one of the handsome stallions wandering around the room, and the sight of the stallion mounting her fills your mind with a strange lust, as you watch the former soldier moan helplessly under the powerful stallion, as he trains her body to respond like a proper mareslut should. Trying to distract yourself from the rather kinky sight you look around only to groan as all you can see are more sexy transforming mares and the handsome stallions helping them transform, your own body seeming to burn with arousal and change as well as you find yourself imagining one of the handsome male beasts hitching you up and training you to be a proper mare... Pulling yourself away from the strange fantasy, you stagger slightly as you hurry back down towards the entrance, just knowing if you stay there much longer you will be begging them to tie you up and transform you as well...";
		now Soldierhorsetf is 2;
		increase libido of player by 25;
		if libido of player > 100, now libido of player is 100;
		infect "Mareslut";
		decrease humanity of player by 5;
	otherwise if Soldierhorsetf is 2:
		say "Returning to the area where the soldiers were being trained, you find you can[']t help but go investigate the training room again yourself, your body growing aroused again in anticipation as you creep up to where you can look inside the room again.  Peeking inside, you find yourself moaning softly with arousal as you look upon the sexy scene inside, the numerous horse creatures making more than enough noise to cover your own soft noises of arousal, as they move against each other in a large orgy. The smell of horsey sex fills the air as the now fully transformed new recruits demonstrate their skills as slutty little maresluts underneath the large stallions in the room, the sight of all the naked sexy horseflesh making you pant with need as you watch the orgy.  You can[']t even see any signs of humanity left in the transformed soldiers as they perform with the stallions eagerly, and somehow knowing that they were formerly proud and independent men only makes their final submissive transformation even more erotic as you watch the show. Finally you catch yourself about to enter the room to join in the fun, and manage to shake yourself out of the lust filled trance the sexy sights and scents of the training room had inspired, dragging yourself reluctantly away down the hall as the sounds of horses having fun slowly fades behind you, you still find yourself idly wondering when the next 'training class' starts, and if they are accepting applicants...";
		now Soldierhorsetf is 3;
		increase libido of player by 25;
		if libido of player > 100, now libido of player is 100;
		infect "Mareslut";
		decrease humanity of player by 5;
	otherwise if Soldierhorsetf is 3:
		say "Your feet guide you through the halls once more to the strange training room you have encountered several times now, and unable to resist your burning curiosity, you once more creep forth to peer into the room. Looking around, you see to your surprise a number of partially clothed humans hitched up in the room, their slight equine features showing through their tattered military clothing as they look around nervously. You can feel a strange grin of amusement crossing your face as you realize this new batch of recruits has no idea what kind of sexy fate lies in store for them, recalling your glimpses of the training of the last group, you nearly run into the room to join them in being trained into a proper little mareslut. Only the sight of the sexy stallions entering to start the days training reminds you of where you are, and you shudder as you turn and run down the hall in the opposite direction. Thinking about what a close call you had there, you resolve not to come down this way again lest you end up losing control of yourself completely, at least until you are ready to be trained into a proper little mare slut that is...";
		increase libido of player by 25;
		if libido of player > 100, now libido of player is 100;
		infect "Mareslut";
		decrease humanity of player by 10;
		Now Soldierstabling is resolved;
		increase score by 5;


Section 7 - Satisfied customer

Satisfied customer is a situation.
The sarea of Satisfied customer is "Stable";
when play begins:
	add Satisfied customer to badspots of furry;

Instead of Resolving a Satisfied customer:
	say "Wandering around the strange sex scented halls of the large hotel, you find a strange sight sprawled half out of one of the rooms ahead. Approaching cautiously, you see that their features are a strange blend of equine and canine, and they appear to be only half conscious as they sprawl there with a smile on their muzzle. Looking them over carefully, you see signs that the person was quite likely one of those german shepherds wandering the city, as they have the traditional shepherd patterning, and something of the build of one of the aggressive canines, the strong scent of sex wafts up from the obviously well-fucked beast, leaving you no doubt as to what they have been doing to end up this way.. The creature seems to notice you after a minute, and focuses their eyes on you for a second, before smiling again and saying, 'That was the best night ever...' The part equine creature whispers up to you, before they pass out at your feet. You shake your head at the obviously satisfied customer, as you cautiously step around their unconscious form, and carefully continue along your way, wondering idly how much longer the part canine is going to be a customer of the whorehouse, instead of an employee... either way, they certainly seem happy about it.";
	increase score by 1;
	Now Satisfied customer is resolved;


Section 8 - Hyenahorsemeet

Hyenahorsemeet is a situation.
hyenastabledeal is a number that varies.
The sarea of Hyenahorsemeet is "Stable";

Instead of Resolving a Hyenahorsemeet:
	say "As you wander down the halls of the hotel aimlessly, you hear a rather harsh burst of laughter in the distance, the unusual sound seeming rather out of place in the horses hotel. Deciding this bears further investigation, you carefully proceed in the direction you heard the sound coming from, coming at last to a small conference room which appears to be occupied. Peeking inside, you see a rather surreal sight, as you find several of those hyenas who are everywhere out on the streets, sitting down and talking rather animatedly with a couple of horsemen that appear to be rather more intelligent than the rest, while a rather large bull like man wearing a suit top, and with polished horns, leans back and listens with unconcealed amusement. You are too far away to catch more than a few snippets of their strange conversation, though the words, 'Territory,' 'Agreements', and 'Recruitment.' Seem to come up often enough for you to pick them up from even this far away. Realizing that several of the hyena gang members are meeting with the horses, you [if hyg < 3]find yourself shuddering as you realize all the ways this could be dangerous, especially given what appears to be the topic of the conversation.  Feeling very disturbed[otherwise if matriarchowned is 1]take note of the members in the room and how they are performing for you.  You are a little displeased that they would enter such important negotiations without informing their matriarch, but if they are successful, all will be forgiven.  Deciding not to upset the talks with your sudden arrival[otherwise if matriarchdefeated is 2]find yourself shuddering when you realize that several gang bitches like yourself could be given over to the Stables as part of the deal.  While part of you resists being separated from the pack, another part of you wants to give in and be used by the strong horses.  Not wanting to be seen and have the decision taken away from you[otherwise]are torn between your loyalties to the hyenas, a bond that urges obedience, and the thought of how dangerous such a pact of cooperation could be.  Unable to reconcile your conflicted loyalties[end if], you carefully slip away from the door and back out into the hotel proper, before anyone can notice you there listening.";
	now hyenastabledeal is 1;
	enable the Stables;
	increase score by 1;
	Now Hyenahorsemeet is resolved;


Section 9 - Waitingcustomer

Waitingcustomer is a situation.
The sarea of Waitingcustomer is "Stable";

Instead of Resolving a Waitingcustomer:
	say "Heading through the mostly empty halls of the sex hotel, you find yourself coming across what appears to be a rather strange looking waiting room, with images of all kinds of sexy horses plastering the walls of the dimly lit room, and a number of benches and other areas set up to provide seating for those who aren[']t fully human anymore. As you look around, you shudder as you hear a noise from behind you, and realize that there was already a creature in here waiting their turn to have some fun, and as it draws closer you are pretty sure that it has decided that now that you are here it doesn[']t have to wait any longer. Cautiously you brace yourself as you turn around to face this new opponent.";
	let T be a random number between one and three;
	if T is 1:
		now battleground is "Zoo";
		fight;
	if T is 2:
		now battleground is "Outside";
		fight;
	if T is 3:
		now battleground is "Red";
		fight;
	now battleground is "Stable";
	say "Recovering from the fight with the waiting creature, you sigh as you wonder just what kind of place they are running here. Gathering your wits around you, you glance around the room one last time, before heading back in the direction of the entryway, though you get the feeling there are plenty of similar waiting rooms likely scattered throughout the hotel...";

Section 10 - Videoshow

Videoshow is a situation.
The sarea of Videoshow is "Stable";

Instead of Resolving a Videoshow:
	say "Wandering around in the area near the entryway, you find yourself peeking through several doors marked 'Employees only', and eventually come across a strange room set up like a small theatre. Interestingly enough, you see that someone has managed to hook the room up to some source of power, and the projector seems ready and able to work at any time. A glance at the label on the film shows that it is labeled as 'Basic Training' which makes you rather curious about the contents.  Do you play the video?";
	if player consents:
		say "Starting the video, you settle down to watch the show, and are mildly surprised when you see several horses trotted out into a training ring on the film.  You find yourself watching with idle curiosity as the trainers begin to put the horses through their paces, though your curiosity changes somewhat as after the horses are taught a few tricks, you see several horsemen led out into the ring and taught the same tricks as well. Soon you find yourself unable to look away as the increasingly sexual video shows some humans led out into the ring to be taught tricks as well, the sight of the men being treated like beasts seems strangely arousing as you continue to watch. The film varies between full horses, horsemen, and still changing humans rather often, as first one group, and then the others are trained to perform an increasingly sexual variety of tricks for the camera.  Before long you find yourself panting with arousal as you watch the trainers reduce their charges to the level of properly trained sexual animals, willing to perform any action on command for their masters, the happy submissive looks on their increasingly equine faces helping you to understand just how enjoyable it is to be a well-trained beastslut for an owner. Eventually however you come to the end of the film, and stare at the blank screen for several minutes panting eagerly before blinking and shaking yourself, barely able to grasp just how well put together the seductive little video was. You shudder for a minute as you realize that while the video certainly taught you several tricks about how to handle beasts and animals, the one it was really trying to train was actually you, and you already feel less human and more animalistic just from one viewing, as thoughts of being trained and owned like a good little beast fill your mind as you stagger out of the training booth...";
		decrease humanity of player by a random number between 25 and 50;
		increase xp of player by a random number between 35 and 75;
		now Videoshow is resolved;
		increase score by 10;
	otherwise:
		say "Deciding to leave well enough alone, you leave the room and continue along your way for now, though maybe you will be back later if you are in the area again...";


Section 11 - Horsegarden

Horsegarden is a situation.
The sarea of Horsegarden is "Stable";

Instead of Resolving a Horsegarden:
	say "Poking around on the ground floor of the hotel, you find a path leading out to a rather large enclosed inner garden, with a number of small tasty looking plants carefully maintained in neat little rows, and a small scenic looking pond positioned in the center of the picturesque grassy garden. You are about to wander out into the rather pleasant looking garden, when you note a small group of horses wandering over to the pond for a drink. You watch the horses carefully for a minute, the rather large beasts appearing to be almost completely normal animals, and you are about to relax when you catch the eye of one of the beasts and see a gleam of intelligence spark in those equine eyes. The horse gives a soft whicker, and soon the whole small herd are watching you with what you can only assume is anticipation as you stand there in the doorway. Looking at the obviously lusty beasts as they slowly start to make their way towards you, you find yourself thinking they are trying almost a little too hard to appear friendly and helpful as they approach. Realizing that several of the stallions are already obviously excited, you step back carefully and reach for the door, only to realize that one of the beasts was slowly creeping up along the wall while the others drew your attention, and is almost upon you. The horse leaps forward to try to snag you with his teeth, but you were far enough back to easily evade the beast, and you slam the door leading out to the garden in his face before quickly hurrying off. As you make your way back towards the entryway, you resolve to avoid the gardens in this place in the future, regardless of how tempting they may seem.";
	increase score by 1;
	Now Horsegarden is resolved;


Section 12 - Transformationledger

Transformationledger is a situation.
The sarea of Transformationledger is "Stable";

Instead of Resolving a Transformationledger:
	say "While looking through the Stables['] halls, you find yourself at a room with a large desk and a large leather bound book sitting open atop it. Out of curiosity, you move into the room and start to thumb through the pages of the strange book, only to discover it's a record of the once human names and their new whorse names of many of the Stables['] occupants, along with the transformations of the whorses working there. The descriptions that stand out are the ones that seem to be special orders, like the horse hyena hybrid slut ordered by the hyena gang or the hawk horse hybrid. Shuddering at some of the descriptions and finding yourself aroused at others you flip to the last page before putting the book away and find your name listed in the last entry and next to it is the name Obsidian. Following that, you see the words new fetishes followed by leather, rubber, bondage... and an invoice that describes an outfit being made for you. With shaking hands you put the book down feeling slightly less human.";
	decrease humanity of player by 15;
	now Transformationledger is resolved;


Stable Related Events ends here.
