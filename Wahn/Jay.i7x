Version 1 of Jay by Wahn begins here.
[Version 1 - New NPC]

[ JayMarkRelationship                                       ]
[   0: not met yet                                          ]
[   1: met the two of them                                  ]
[   2: met the two of them, player knows their names        ]
[   3: fucked around with, player knows the names           ]

[ thirst of Jay - Suit Quest                                ]
[   0: Suit Quest not started                               ]
[   1: Santa gave the initial suggestion                    ]
[   2: player got detailed info                             ]
[   3: player got sent out to get chocolate milk            ]
[   4: player with Aelias as lover just has to wait a bit   ]
[   5: silk delivered to Santa                              ]
[   6: special dinner talked about with Mark                ]
[   7: trip to Tati's completed                             ]
[   8: player was told to distract Jay                      ]
[   9: Suit Delivered                                       ]

[ XP of Jay                                                 ]
[   0: not yet moving                                       ]
[   1: started his daily rhythm                             ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Jay is a man.
The description of Jay is "[JayDesc]".
The conversation of Jay is { "<This is nothing but a placeholder!>" }.
The icon of Jay is Figure of Jay_elf_outfit_icon.
The scent of Jay is "     Jay must wash regularly, as there is little discernible odor to his skin. What you do detect are motes of cinnamon, spices and a hint of gingerbread, the aroma complementing his appearance. There's also a faint trace of his ursine partner's musk, no doubt courtesy of their frequent lovemaking.".

to say JayDesc:
	if debugactive is 1:
		say "DEBUG -> Thirst: [thirst of Jay], JayMarkRelationship: [JayMarkRelationship], XP: [XP of Jay] <- DEBUG[line break]";
	if thirst of Jay < 9:
		say "     Looking over to the slender male, it is immediately apparent that Jay is a Christmas Elf, being all of four feet tall and dressed in a green and red outfit. He has long brown hair hanging down to below his shoulders, with sharply pointed ears sticking out of it to the sides. The elf has a well-toned physique despite his small stature, lithe and flexible enough to be a gymnast. He moves with feather-light steps, heels raised enough that he stands only on the balls of his feet and his toes. A handsome face bearing a confident expression completes the look of a capable and strong-willed person, no matter how tall or short that he may be.";
		say "     As the elfin man feels your gaze come to rest upon him, he looks right back at you and smiles, then raises one hand for a friendly wave.";
	else:
		say "     Looking over to the slender male, it is immediately apparent that Jay is a Christmas Elf, being all of four feet tall. What isn't quite as stereotypical about him is the well-made business suit he is wearing, the result of quite a bit of effort on part of yourself and Mark, his polar bear husband. Jay has long brown hair hanging down to below his shoulders, with sharply pointed ears sticking out of it to the sides. The elf has a well-toned physique despite his small stature, lithe and flexible enough to be a gymnast. He moves with feather-light steps, heels raised enough that he stands only on the balls of his feet and his toes. A handsome face bearing a confident expression completes the look of a capable and strong-willed person, no matter how tall or short that he may be.";
		say "     As the elfin man feels your gaze come to rest upon him, he looks right back at you and smiles, then raises one hand for a friendly wave.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - Daily Rhythm
[***********************************************************]
[***********************************************************]
[***********************************************************]


an everyturn rule:
	if XP of Jay > 0:
		[if TimekeepingVar is 1 or TimekeepingVar is -7:] [midnight - unused, Jay sleeps]
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Jay sleeps]
		if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - Jay gets up early]
			if player is in Mall East Wing:
				say "     A fairly inconspicuous door in a little nook between two stores opens up and two men that you know come out: Jay the Christmas Elf and his polar bear partner Mark. In the second before they shut and lock the door once more, you glimpse a narrow service corridor behind them. Lifting his much shorter lover to give him a goodbye kiss, Mark then leaves in the direction of the atrium while Jay stays behind to chat with other residents who are also just getting up in the morning. People are clearly happy to see him, usually hanging around a little while before they eventually go on and start their own daily business.";
			move Jay to Mall East Wing;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning, reading]
			if player is in Mall East Wing and Jay is in Mall East Wing:
				say "     Having made his rounds to talk to most of his 'neighbors', Jay eventually drifts over to the [']Brookstone Books['] store and goes inside.";
			if player is in Brookstone Books:
				say "     Jay the Christmas Elf walks into the store and wishes Beverly a good morning, then picks up a paperback novel from a shelf and climbs onto a comfortable sofa in the seating area. Sitting down cross-legged, he starts to page through the book with interest.";
			move Jay to Brookstone Books;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon, class time]
			if player is in Brookstone Books:
				say "     As the morning progresses, teenagers of varied species and apparent ages gravitate into the bookstore, gathering around Jay. He smiles and greets each of them by name, then leads what is soon a dozen kids to a quiet corner of the store, where a narrow blackboard has been set up. An improvised, yet quite interesting and funny lesson for the young people plays out, at the end of which Jay sends his students off with the words, 'See you tomorrow.' After that, the elf himself leaves too, waving to Beverly as he goes.";
			if player is in Mall Foodcourt:
				say "     Jay the Christmas Elf comes walking into the food court from the north, making a beeline for one of the stores. After a short and amicable conversation with the mall rat server on duty, he gets a tablet with a fairly nice lunch handed to him and goes over to a group of tables to eat, then stays sitting there to chat with people passing by.";
			move Jay to Mall Foodcourt;
		[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon - Jay hangs out at the food court]
		[else if TimekeepingVar is 3 or TimekeepingVar is -5:] [evening - Jay hangs out at the food court]
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night - unused, Jay spends time with Jay]
			if player is in Mall Foodcourt and Jay is in Mall Foodcourt:
				say "     Mark the polar bear comes into the food court and walks over to say hello to Jay, who climbs onto the table he was sitting at to give his lover a kiss. Being picked up by the much larger male, the elf is then carried off while having a conversation about how Mark's day went.";
			now Jay is nowhere; [stashed in another dimension]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Talking
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Jay:
	if XP of Jay is 0:
		say "     ERROR: Jay shouldn't be available to talk to yet. Please report to Wahn on the FS Discord/Forum and quote this tracking number for easier bug-fixing: [XP of Jay]";
	else:
		say "[JayTalkMenu]";

to say JayTalkMenu:
	LineBreak;
	say "     What do you want to talk about with Jay?";
	if thirst of Jay < 9:
		project the figure of Jay_elf_outfit_icon;
	else:
		project the figure of Jay_suit_icon;
	now Sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Him";
	now sortorder entry is 1;
	now description entry is "Ask Jay about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mark";
	now sortorder entry is 2;
	now description entry is "Talk to Jay about Mark";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about the military";
	now sortorder entry is 3;
	now description entry is "Talk to Jay about the soldiers in the city";
	[]
	if HP of Santa Claws > 0: [player has been in the Christmas village]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about Santa Claws";
		now sortorder entry is 4;
		now description entry is "Talk to Jay about the polar bear Santa";
	[]
	if HP of Krampus > 0: [player has been to see Krampus]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about Krampus";
		now sortorder entry is 5;
		now description entry is "Talk to Jay about the goat demon";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while Sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now Sextablerun is 1;
				if (nam is "Him"):
					say "[JayTalk1]";
				if (nam is "Mark"):
					say "[JayTalk2]";
				if (nam is "Ask him about the military"):
					say "[JayTalk3]";
				if (nam is "Ask him about Santa Claws"):
					say "[JayTalk4]";
				if (nam is "Ask him about Krampus"):
					say "[JayTalk5]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now Sextablerun is 1;
				say "     You step back from the diminutive elf, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JayTalk1: [talk about him]
	if thirst of Jay < 9:
		say "     As you ask Jay about himself, the slender elf takes a deep breath, then draws himself up to his full height of four feet and gives you a cautious look. 'Fine. I will tell you, but only if you swear to me that you will not laugh.' Seeing his serious expression, you agree to the request and wait for him to continue. Frowning as if he had just bitten into a lemon, Jay lets out a sigh and explains, 'I'm a security consultant. A damn good one. What a joke, eh? Who'll come to the skinny dwarf with such a ridiculous outfit and listen to him? No chance anyone'd take me serious at all.' Frustration is clearly visible on his face as the fine-boned male tugs at his colorful garments. 'I'd have burned this stupid thing days ago if I had any alternatives. Oh god, how I wish for a proper suit - or anything normal really. But no, it's either this or kid's clothes, and I'd rather streak around naked than put on Batman undies and such stuff. As stupid as the elf getup is, it at least fits me perfectly.'";
		say "     You continue talking to Jay for a little while longer, learning what made him so successful at his job: a winning personality and the will to just go for what he wants, with little restraint to hold him back. Time will tell if he will be able to reclaim his status once all of you hopefully get out of the city alright. Something tells you that he'll likely make it, your mind putting together a mental image of the elf in a black power suit, bearing down on pale-faced businessmen as he stands [italic type]on top[roman type] of a conference table and dominates the conversation.";
	else:
		say "     As you ask Jay about himself, the slender elf takes a deep breath, then draws himself up to his full height of four feet and gives you a confident smile. 'I'm a security consultant. A damn good one.' Running a hand along the edge of his fine suit, the Christmas Elf continues after a second or two, 'It'll be difficult to re-stablish my contacts looking like this now, but I'm confident that I can do it. Clothes make the man, and with this awesome suit you and Mark got for me, I'm feeling very good about things. And who better to consult people on the outside about security dangers, if not a man who lived through what happened here in the city. That'll go a long way to build up my reputation.'";
		say "     You continue talking to Jay for a little while longer, learning what made him so successful at his job: a winning personality and the will to just go for what he wants, with little restraint to hold him back. Time will tell if he will be able to reclaim his status once all of you hopefully get out of the city alright. He certainly seems sure that make it, and your mind brings up an image of the elf in his suit, bearing down on pale-faced businessmen as he stands [italic type]on top[roman type] of a conference table and dominates the conversation.";

to say JayTalk2: [talk about Mark]
	say "     'Mark and I have been partners for five years now. He's everything that I have ever wanted,' Jay says with a somewhat dreamy expression, his right hand moving to the little bump in his clothing just above his breastbone. You remember that this is where he carries his commitment ring, the broad gold band held on a leather strap since it is much too big for his small fingers now. 'Let me tell you how we met. It was at a really fancy downtown restaurant called 'Tati's', with European specialities. There I was with the senior partner of a new client company, a dreadful bore of a man that cost all of my self-control to smile and nod to. And then our waiter, Mark, brings the starters. Black shirt, dark-red apron from the waist down, and the cutest smile that you can imagine. Our eyes met for a second then, and when he brought the main course, he winked at me.'";
	say "     A smile crosses Jay's face. 'That was when I knew that I had to have him. And I did. Intercepted his sexy little ass as he was coming out of the kitchen in the back and pulled him into the restrooms. A minute later he was on his knees in the handicap stall and blowing me.' Grabbing his crotch and wiggling his eyebrows, the elf adds, 'Then came dates, more racy moments in public, and eventually I asked him to move in with me and be mine. And now, with all of the changes this strange outbreak has brought with it, I guess that I'm his. It's almost like this body is made to be a bottom; I can't get enough of it. Don't really care, as long as we are together.'";

to say JayTalk3: [talk about the military]
	say "     Pressing his lips together, Jay is in his thoughts for a second, then says, 'When the outbreak of this infection or whatever started, Mark and I ran into a group of soldiers. They did try to protect and evacuate us, but... things went awry fast. Please don't ask me to go into details, I still get the chills when I think back to it. Long story short, we escaped, but most others did not, including those brave men.' The slender elf grimaces and shakes his head as if to clear the mental image away. 'I haven't been outside of the mall since, but Mark tells me that the army hasn't fared much better in other places either. In the end, they focused all of their attention on setting up a quarantine belt around the city and that at least seems to be holding so far. Bad for all of us in here I guess, but I'm actually glad that they did it. My brother and his family live just an hour's drive up the coast.'";

to say JayTalk4: [talk about Santa Claws]
	say "     As you mention the polar bear mall Santa, Jay smiles immediately, but also takes on a somewhat thoughtful expression. 'I owe that man [italic type]a lot[roman type]. Let me explain: after everything we saw before finding refuge in the Smith Haven Mall, Mark was at the end of his rope. Nothing that I could do would calm him down... He was just crying and sobbing. Then we heard a deep voice ask if we were alright, and there he was, in his big, red suit, reaching out to lay a large clawed hand on Mark's shoulder. Somehow, that contact actually made him relax, and Santa then had Mark let it all out, talking through everything that had happened. He must have sat there with us for an hour, listening and gently encouraging my man, until Mark eventually dozed off in total exhaustion.'";
	say "     Taking a deep breath, Jay hesitates for a second. 'I asked him, then. Asked Santa if he would be willing to take care of my man, in a way that only he could in that moment. Even though there was a chance that Mark would simply forget about me - about us - I couldn't bear to see him like that for one more moment, a shell of himself. So I talked things through with Santa, and when he agreed, we made the offer to Mark, later when he woke up, to be comforted by the bear, and become one himself. He kissed me and said goodbye, just in case, and I went away to give them the privacy that they needed. Some friendly Christmas Elves kept me company, sharing their mulled wine to calm my nerves. Many, many cups of it.' Blushing a little, the slender elf goes on to say, 'It was the next morning when I woke up again, somewhat hung over and feeling, well, shorter. But the important thing were the two furry arms around me, belonging to a mighty white bear, who smiled at me and whispered he loved me...'";
	WaitLineBreak;
	say "     'Things actually worked out very well, that day. Mark was still Mark, and I was still myself, despite having become an elf through the little drinking episode. It has been an adventure to feel each other out with these new bodies ever since,' Jay says and looks a bit dreamily, no doubt imagining what he has been doing with Mark lately. You sense that despite whatever issues he might have with the new diminutive size of his own body in a societal setting, in terms of being together with his lover, there is a lot of pleasure and fun these two had with their great size difference to one another.";

to say JayTalk5: [talk about Krampus]
	say "     As you bring up the goat-demon and his cave adjoining the Christmas village, Jay's expression hardens a bit. He replies, 'Ah, him. Can't say that I like the guy much, to be honest. I've been in the role of dom on and off for years with Mark, but there are some limits we never crossed. Sure, a bit of bondage, or pulling his hair and making him beg like a good little slut as I was thrusting into him, but Krampus... he sticks people in a sack to carry them into his lair and just keeps them there. Then the heavy-duty restraints and whips come out. He seems far too focused on [italic type]punishing[roman type] people, and that just is abuse, not some friendly play like I did with Mark.'";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

Harbor Swap Meet is a situation.
Harbor Swap Meet is resolved.
The sarea of Harbor Swap Meet is "Warehouse".

Instead of resolving a Harbor Swap Meet:
	if thirst of Jay is 2:
		say "     Seeing a spray-painted sign that reads 'Swap Meet', with an arrow pointing to a nearby warehouse, you remember the request from Santa Claws about checking the place for fabric to make Jay a suit. What awaits you in the warehouse are a number of people of all sorts of species, mostly with tarps spread out on the floor in front of them, covered with various wares being presented. A moderate number of customers are scattered inside of the hall, looking over what is on offer or already bartering for this or that. Joining them, you make a circuit through the room and ask around for any fabric or thread that the vendors might have. Sadly none of them can offer you anything usable. You are almost ready to call it a day when a friendly siren that overheard your request points you to a dark corner of the room and says, 'Maybe the taur will help you. Go ring for him.'";
		say "     Thanking the woman, you walk the way that she indicated, and after a few steps it becomes apparent that there is one more trader that you haven't yet spoken to. A small hand bell is hanging from a barely visible silk thread in the corner, connected to a sizable structure far above, strung up between the ceiling and wall of the warehouse. Looks like a vaguely oval spider's nest, fit to hold a horse. Taking hold of the bell, you ring it, which draws the inhabitant of the structure above from the inside, lowering himself to your level by a thick strand of silk. This gives you a few seconds to study the large male: his lower body consists of the legs and abdomen of a big spider, sheathed in gleaming black chitin, while his upper body looks human, with rippling muscles under black skin. He has pale-white hair, bound together as a long ponytail behind his back[if SpidertaurRelationship > 3] and you know him by name - it is Aelias, the very spidertaur that you had several encounters with before[end if].";
		WaitLineBreak;
		if SpidertaurRelationship > 3: [player knows him]
			say "     'If it isn't my lovely little fly, coming for a visit,' Aelias says, his claws clicking on the concrete as he steps forward and draws you into his embrace to share a kiss. 'Were you just eager to see me, or is there something that I can help you with?' As you explain that you need a spindle of very fine silk for making cloth out of, the spidertaur gives you a thoughtful nod. 'Hm, that'll be quite a bit of work. Thick strands I can do quickly, but spooling up hundreds of feet of fine thread takes time. I'll do it, for you, but it'll take some time. Come back later and I'll hopefully have it done by then.' Stroking his hand along the side of your cheek, the spidertaur then starts to pull himself up the strand he slid down on, effortlessly reaching his home away from home above and vanishing inside.";
			now thirst of Jay is 4; [player who is friends with Aelias just has to wait]
		else:
			say "     'Well well, what do we have here. Let me guess: you're a slaver, envious of his competition's unbreakable net or lasso, so you went to find who made it for them. Which is me. Here, let me give you an example - you just try tearing that.' Before you can say anything, he already has reached behind his back to pull a foot-long strand of silk out of a pouch, thick as your index finger. Somewhat amazed and distracted by his demonstration of a rope that will stretch and flex, but never break, no matter how strong the pull, you eventually manage to get a word in edgewise and hastily explain that you're not actually here for that. This takes the wind out of the spidertaur's sails and he goes quiet, giving you a questioning look. 'Fine, what else shall it be then?' he asks, lifting one eyebrow as he looks at you.";
			say "     As you explain that you need a spindle of very fine silk for making cloth out of, the spidertaur gives you a thoughtful nod. 'Hm, that'll be quite a bit of work. Thick strands I can do quickly, but spooling up hundreds of feet of fine thread takes time. I'll do it, but you better be coming back here with my pay ready. For this job, I'll take... five bottles of chocolate milk. Pretty sought after trade good, that stuff. Yeah, that should do. I hear people have been milking some from critters in the high rise district, so now you know where to go.' Waving to you to get going, the spidertaur then starts to pull himself up the strand he slide down on, effortlessly reaching his home away from home above and vanishing inside.";
			now thirst of Jay is 3; [regular players have to pay]
	else if thirst of Jay is 3: [player coming back with the payment (hopefully)]
		if carried of chocolate milk < 5:
			say "     As you see the sign for the swap meet ahead, you remember that you do not actually have the chocolate milk that you agreed to trade to the spidertaur vendor there for his silk. Better come back when you actually have your trade goods together.";
		else:
			say "     Returning to the swap meet, you ring the little bell again and the spidertaur comes down from his nest. Under his arm, he holds a bulging spindle of silk thread. 'You better have my payment, because it was a pain in the ass to keep spinning for hour after hour to make this,' he tells you, an expectant expression on his face. Pulling your backpack off and opening it, you hand him the plastic bottles filled with chocolate milk right away, which he bundles together with a sticky strand of silk, then sticks the packet to the top of his carapace. 'Pleasure doing business with you,' the demi-human says, then hands you his load of silk and starts to pull himself up the strand he slid down on, effortlessly reaching his home away from home above and vanishing inside.";
			say "[SilkDelivery]";
			decrease carried of chocolate milk by 5;
			now Harbor Swap Meet is resolved;
	else if thirst of Jay is 4: [player who is friends with Aelias can pick up the silk easily]
		say "     Returning to the swap meet, you ring the little bell again and Aelias comes down from his nest. Under his arm, he holds a bulging spindle of silk thread. 'Hello my lovely little fly,' he tells you, leaning forward to plant a kiss on your lips, then hands over the load of silk with a smile. 'I hope that this is exactly what you needed. I can tell you, it was a pain in the ass to keep spinning for hour after hour to make it, but what don't I do for my favorite prey. Have fun with it, and I hope to see you for some more action between us soon.' With a little grope of your ass, the spidertaur then starts to pull himself up the strand he slid down on, effortlessly reaching his home away from home above and vanishing inside.";
		say "[SilkDelivery]";
		now Harbor Swap Meet is resolved;

to say SilkDelivery:
	say "     Eager to deliver the silk, you make your way to the mall directly after that, taking care to avoid any chance of hostile encounters during your travel. It wouldn't do to see your precious load damaged or lost after all. Thankfully, the trip is uneventful, and you arrive at the Smith Haven Mall without any trouble. After a quick stroll through the crowded place, you present the thread to Santa, who accepts it with a broad smile on his furry face. 'Thank you for putting so much effort into our little project. I am sure that Jay will be thrilled by the end result.' He calls his elven foreman, Walter, over and hands the red-headed elf the spindle, after which both you and Santa watch for a few minutes as a bustle of activity immediately starts up, with Walter giving out assignments and the elves falling into line like an expertly drilled work crew. Santa nods in satisfaction, then says to you, 'They will take a while to prepare the suit itself, so I would suggest that you speak with Mark about arranging a fitting situation to give Jay his present. Trust me, the suit will be ready when you need it.'";
	now thirst of Jay is 5; [silk obtained and delivered]
	WaitLineBreak;
	move player to Christmas Village;


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 5 - Fucking
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Jay:
	if player is not male:
		say "     Looking you up and down, Jay gives you a friendly smile, but at the same time shakes his head. 'Thanks for the offer, but I'm as gay as a three dollar bill. Got a husband to prove it, too. I'm flattered, but you're at the wrong address here I'm afraid...'";
	else:
		if thirst of Jay < 9:
			say "     Looking you up and down and letting his gaze rest on your crotch for a few seconds, Jay clears his throat and looks up at your face, 'That's an interesting offer, my friend. Mark and me only really do things together as a couple, with maybe an odd threesome from time to time. Although there might be exceptions for good friends that we both really like.' The sexy wink that Jay gives you after saying this makes you wonder about ways to get on that select list of people. Likely it wouldn't be easy, but quite rewarding indeed.";
		else:
			say "     <WIP: Sorry, sexing up either Jay or Mark isn't quite done yet>";

[
	if (lastfuck of Jay - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Jay doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Jay, <positive reaction at being approached for sex>";
		wait for any key;
		say "[JaySexMenu]";
]

to say JaySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Jay suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Jay off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
	[]
	sort the table of fucking options in sortorder order;
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
				if (nam is "Get a blowjob"):
					say "[JaySex1]";
				if (nam is "Suck Jay off"):
					say "[JaySex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the slender elf, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JaySex1: [oral on the player]
	say "     A";

to say JaySex2: [oral on Jay]
	say "     A";

[ Collected Comments and ideas ]

[ Song: Between the boyish figure and brazen desires of the bottoming elf, there's ample room for some content involving the player sharing the horny male with his far larger lover, spit-roasting him on all fours while giving sawing, asynchronous thrusts back and forth into his well-stretched jaw and jealously gripping asshole. Letting out all those pesky inhibitions with every firm thrust as he moans and drools around throbbing dick, all too happy to wrap his arms around the waist of the one screwing his pretty face while his seizing rear massages the pole splitting it wide open. ]

[ Once everything is said and done, the two could even give an extended show of Mark pulling his still-trembling partner against his broad, snowy muzzle, tongue extending to draw several slow, firm licks through the valley of his buns before its tip presses sinuously against that circle-pet star, gliding into that cum-soaked passage with unwavering resolve. Knowing his lover inside and out, Mark's able to draw a cornucopia of pleasured sounds from his submissive mate, from gurgling moans to breathy cries as his tongue sweeps across every sensitive nerve of his clenching anal lining, only to dip below to grind roughly against his prostate, forcibly milking long strands of thick, stringy pre from the flaring tip of Jay's dick. ]

[ Oh, what a show that would be. Something the player could paw off to in their post-sex haze, riling themselves up on the myriad sounds and expressions the horny elf makes as he's orally ravaged into blissful oblivion. ]

Jay ends here.
