Version 2 of Brookstone Books by Guest Writers begins here.
[ Version 2 - Streamlined browsing ]
[ - Originally Authored By: Anon E Mouse -]

"Adds an area and NPC to Flexible Survival."

Section 1 - Brookstone Books environment

Brookstone Books is a room. Brookstone Books entrance is a door. It is south of Brookstone Books and north of Mall East Wing. The Brookstone Books entrance is open.

Instead of examining the Brookstone Books entrance:
	say "Through the store front windows and entrance, you make out [the other side of the Brookstone Books entrance].";

The description of Brookstone Books is "[bstonebooks]".

To say bstonebooks:
	If findwires is 2 and fixedgens is 2:
		say "     The store seems bright and cheery with all of the lights on. You remember needing to come here on occasion to find an odd book or two. What it lacked in size in comparison to the big chain of bookstores, it made up for it in the wealth of older, hard to find, and out of print books and magazines in addition to newer releases. All the shelves in the store are crammed to capacity with books as well as the tables scattered around the store. Milling about are mall rats and other infected reading a book while either standing near a bookshelf or occupying a chair or little sofa in one of the seating groups.";
	else:
		say "     You head into the bookstore, attracted by the light of lanterns inside. As you walk in, you remember needing to come here on occasion to find an odd book or two. What it lacked in size in comparison to the big chain of bookstores, it made up for it in the wealth of older, hard to find, and out of print books and magazines in addition to newer releases. All the shelves in the store are crammed to capacity with books as well as the tables scattered around the store. Milling about are a mall rat or three reading a book while either standing near a bookshelf or occupying a chair or little sofa in one of the seating groups. Of what you can see from the glow of several candles and lanterns, all the books seem to still be in good condition.";

Beverly is in Brookstone Books.
Bookshelves is in Brookstone Books.

the scent of Brookstone Books is "The store smells of musty tomes mingling with the burning scented candles.".

Section 2 - Beverly

Bevtalk is a number that varies.
Bevkitty is a number that varies.

Beverly is a woman.
The description of Beverly is "     Behind a register counter is what looks like a mouse with green eyes intently reading a book, having not noticed you yet. The thick locks of blonde, curly hair on its head fall cutely around their large ears and flows down to frame their slender neck. From the glow of the candles you can make out that the fur of their face and muzzle appears to be a dark, golden-cream in color, and seems to shine even in the low light. Pierced in her right gray ear are a couple of medium-sized gold hooped earrings.".
The conversation of Beverly is { "Squeak!" }.

the scent of Beverly is "She smells like the books surrounding her mixed with a hint of hay.".

instead of conversing the Beverly:
	if bevkitty is 0 and bevtalk is 2 and house cat is tamed:
		say "     Beverly looks up from her book and smiles as you walk into the store. 'How are you doing out there?' Telling her you are doing fine, she sighs softly. 'I wish I was strong like you. Then I could go back to my place and find Dinah. I hate thinking about her being all alone...' Just as you are about to ask her who is she talking about, your pet cat appears out of nowhere, hops up onto the counter, and sits down with her tail curled around her legs. Blinking for a moment, Beverly tips her head and stares at the cat for a bit, her whiskers twitching in thought. 'Is that you Dinah?' she finally asks. When the cat turns to blink at Beverly, she claps her paws and happily laughs. 'It is you Dinah! Where did you find her?' You tell Beverly you found her wandering around outside then watch as she hesitantly reaches out to Dinah. She sniffs Beverly's paw a couple times before rubbing her head against it and purring loudly. Smiling wide, Beverly coos softly as she scratches the cats ears then laughs gently. 'I should have known my clever kitty would figure a way outside. You always did...' She scratches the bridge of Dinah's muzzle, her purring growing in volume, before beverly turns her attention back to you. 'I think it'd be best if she stayed with you.' Asking her if she is really fine with that, she nods and chuckles gently. 'SHe loves being outside so it wouldn't be fair to keep her cooped up in here. Besides, I don't think I could if I wanted to.' Smiling as you pet Dinah's back, you promise Beverly that you will take good care of her house cat.";
		now bevkitty is 1;
	else if bevtalk is 0:
		say "     Behind a register counter is what looks like a mouse intently reading a book, her green eyes rapidly moving, not having noticed you yet. As you continue to stand there and watch them, their whiskers and gray ears eventually twitch and they look up, blushing with a squeak when seeing you. 'Oh, hello there.' The mouse's voice is quiet, demure, and sounds feminine. As they continue to blush, they look like they drop down behind the counter then walk around it to stand before you. 'I'm sorry. I didn't notice when you walked in. Sometimes I get a little lost in the books.' Now that they were from behind the counter, you see that the mouse standing before you is definitely female, a voluptuous one at that. She is dressed in a blue blouse that is stretched taut around breasts that are almost as large as her head while hugging her wide hips is a mid-length blue skirt. Her thick locks of golden hair flows around her ears, down her back, and stops just short of her full, bubble butt. You can see swaying slowly behind her a fur covered tail, with a thicker tuft of fur adorning the end of it.";
		say "     'Welcome to my home, Brookstone Books. Feel free to browse around, but because the way things are right now, I ask that you don't remove any books from here, considering some of them are irreplaceable.' Nodding, you begin to look around for any book that might be helpful. After a minute of browsing, you hear a soft sigh behind you. Turning around, Beverly is looking at you. When seeing you are looking at her, she pushes a forefinger against the bridge of her muzzle, as if adjusting a pair of invisible glasses, then gently smiles while brushing a lock of hair from in front of an eye. 'Would you mind terribly if I talked to you? It's been awhile since a new face has shown up around here and it will help to break up the monotony.'";
		if player consents:
			say "     The mouse smiles wide and claps her dainty paws together. 'Really? Oh thank you.' You follow her as she heads back towards the counter then watch as she walks behind it to sit on a stool. After she is comfortable, she smiles brightly at you. 'So what's your name?' After you tell her she nods while continuing to smile. 'My name is Beverly Frisby. I was an elementary school teacher that was working part-time in the evening here at the bookstore, when I could, to make ends meet.' She places the palm of her right paw against the side of her head then chuckles gently and smiles embarrassedly. 'I forgot that I don't need my glasses anymore. Some habits are hard to break. Anyway, I was working on closing one night when there was a commotion coming from the mall. Peeking out the door, I saw what looked like a small group of, at my first thought, was people dressed in animal costumes attacking customers and committing unspeakable acts with them.'";
			say "     Beverly grows quiet for a moment, the inside of her ears growing red while her tail twitches a few times. Snapping out of her thoughts, she smiles and continues. 'Ummm... Where was I? Oh yes... When I saw what was going on I quickly dropped the security gate. As I was locking it, a humanoid mouse reached through the gate and managed to grab some of my hair. I was able to struggle free, but not before...' She stops again and seems to visibly shudder before continuing. 'Not before it managed to ejaculate on me.' Her breathing starts to grow more labored. 'When he, I figured out it was a guy, saw that he couldn't reach me, he left. I didn't wait around to see if he would come back and locked myself in the back room.' Beverly suddenly hugs her arms under her ample breasts while looking away and speaks a little softer.";
			say "     'I felt all alone locked back there as my body continued to transform, made even worse when the power went out. Only when it felt like I had finished changing did I try to feel my way around, eventually finding my purse and digging out the mini-flashlight I had.' She returns her attention to you and smiles gently. 'I was shocked, at first, when I looked in a mirror and saw what was looking back at me. I looked like the mouse that had attacked me. After I recovered from my initial surprise, I got up enough nerve to come out of the storage room, to find humanoid rats wandering the mall. When they didn't attack me and genuinely asked if I was ok, did I calm enough to take stock of my situation. While I was getting things together I noticed that my tail was fur covered, so I got curious to see what I actually was, and found out after perusing a few animal books that I'm actually a gerbil.' Beverly shakes her head slowly as she chuckles ruefully. 'Ever since my transformation I've been here, too afraid to go outside the mall after hearing about some of the things running around out there in the city. The rats have been nice enough to share some food and water they manage to scavenge since they know how hard it is out there right now.' She looks at you with a small smile. 'Thanks for listening to me. I feel better now. Do you want to tell me your story?' You shake your head with a smile and chuckle, telling her maybe later.";
			now bevtalk is 2;
		else:
			Say "     The mouse's ears droop and she looks at you sadly for a moment before sighing softly. 'Th... that's ok... My name is Beverly,' she says, her voice so quiet it's barely a whisper. 'If you need any help, let me know.' Finishing, Beverly walks back behind the counter to continue reading her book. Out the corner of your eye, you see a mallrat giving you a dirty look.";
			now bevtalk is 1;
	else if bevtalk is 1:
		say "     Getting the feeling you are being watched as you browse the books, you turn and look. With wide eyes, Beverly quickly turns back to the book she has in front of her when you glance her way. Do you go over to talk with her?";
		if player consents:
			say "     Feeling bad, you go over to the counter and gently clear your throat. When Beverly looks up, you apologize about earlier and ask if she wants to talk now. Her eyes brighten and she nods with a small smile. 'Yes... yes I would.' When she sees you're listening, she continues. 'I was an elementary school teacher that was working part-time in the evening here at the bookstore, when I could, to make ends meet.' She sighs softly, rests an elbow on the counter, and then rests her cheek in the palm of her dainty paw. 'I was closing one night when there was a commotion coming from the mall. Peeking out the door, I saw what looked like a small group of, at my first thought, was people dressed in animal costumes attacking customers and committing unspeakable acts with them.'";
			say "     Beverly grows quiet for a moment, the inside of her ears growing red while her whisker and tail twitches a few times. Snapping out of her thoughts, she pushes a forefinger against the bridge of her muzzle then chuckles gently and smiles embarrassedly. 'I forgot that I don't need my glasses anymore. Some habits are hard to break. When I saw what was going on I quickly dropped the security gate. As I was locking it, a humanoid mouse reached through the gate and managed to grab some of my hair. I was able to struggle free, but not before...' She stops again and seems to visibly shudder. 'Not before it managed to ejaculate on me,' she says as her breathing starts to grow more labored. 'When he, I figured out it was a guy, saw that he couldn't reach me, he left. I didn't wait around to see if he would come back and locked myself in the back room.' Beverly suddenly hugs her arms under her ample breasts while looking away and speaks a little softer.";
			say "     'I felt all alone locked back there as my body continued to transform, made even worse when the power went out. Only when it felt like I had finished changing did I try to feel my way around, eventually finding my purse and digging out the mini-flashlight I had.' She returns her attention to you and smiles gently. 'Of course it was a bit of a shock when I first looked into a mirror and saw what was looking back at me. I looked like the mouse that had attacked me. After I recovered from my initial surprise, I got up enough nerve to come out of the storage room, to find humanoid rats wandering the mall. When they didn't attack me and genuinely asked if I was ok, did I calm enough to take stock of my situation. While I was getting things together I noticed that my tail was fur covered, so I got curious to see what I actually was, and found out after perusing a few books that I'm actually a gerbil.' Beverly shakes her head slowly as she chuckles ruefully. 'Ever since my transformation I've been here, too afraid to go outside the mall after hearing about some of the things running loose in the city. The rats have been nice enough to share some food and water they manage to scavenge since they know how hard it is out there right now.' She looks at you with a small smile. 'Thanks for listening to me. I feel better now. Do you want to tell me your story?' You shake your head with a smile and chuckle, telling her maybe later.";
			now bevtalk is 2;
		else:
			Say "     Looking at Beverly a moment more, you return to browsing through the books when she doesn't look back up.";
	else:
		say "     [one of]'I hope Dinah is behaving herself.'[or]'I would like to resume teaching, even if I can't be transformed back.'[or]'It's good to see you safe and sane.'[or]'I heard the rats talk about seeing weird things below the mall. Is it true?'[or]'Dinah has always been a pretty smart kitty.'[or]'I remembered there was a class field trip planned for the zoo.'[or]'The jackal lady down the way is beautiful, but kind of strange don't you think?'[or]'How are things going for you out there?'[or]'Maybe when you have some time we can try one of the role playing games.'[or]'I hope Dinah is alright.'[or]'I have a lot of interesting books. You might find something useful among them.'[or]She smiles at you. 'This new look of mine is growing on me... What do you think?'[at random]";

Instead of fucking the Beverly:
	if bevtalk is 1:
		say "     'You're a nice person and all, but I'm not up for any kind of relationship right now. Do you mind if we just stick to platonic love?'";
	else:
		say "     'You look like a nice person and all, but I'm not ready for any kind of relationship.'";

Section 3 - Book Browsing

Bookshelves is a man

The description of bookshelves is "     All around the store are bookshelves and tables loaded with old, used, and new books that run the gamut of subjects. Even after having visited the store in the past, you are still amazed by the amount of books the store has to [bold type]browse[roman type] and [bold type]read[roman type] through.".

the scent of the bookshelves is "The books smell of musty tones mingling with the scent of new papers and the burning candles.".

Browsebooks is an action applying to nothing.
understand "browse books" as browsebooks.
understand "browse a book" as browsebooks.
understand "browse shelves" as browsebooks.
understand "look through books" as browsebooks.
understand "read books" as browsebooks.
understand "read a book" as browsebooks.

lastbookshelves is a number that varies. lastbookshelves is usually 255.

check browsebooks:
	If bookshelves is not visible, say "Nani desu ka?" instead;
	if lastbookshelves - turns < 8, say "You should really go take care of other stuff instead of spending all your time reading." instead;

carry out browsebooks:
	say "     In no particular hurry you decide to browse through a few books in the hopes of finding something interesting to read. Who knows, you may end up finding some information that will help you out in the wilds of the city.";
	LineBreak;
	Let X be a random number between 1 and 10;
	If X is 1:
		If bevtalk > 1:
			say "     Not finding anything of interest right now in the bookstore, you walk over to Beverly to see what she is reading. When you approach, she looks up and smiles at you. 'How's it going?' When you ask what she is reading, she giggles softly. 'Just doing a crossword in this magazine of puzzles I found. Want to help?' Nodding, you help her out with the current crossword she is working on. When it's completed you realize, as you yawn and stretch, that the time just flew by. 'Thanks for your help. Some of those clues were pretty tough, weren't they?' ";
			If intelligence of player < 20:
				Let bonus be ((the intelligence of the player minus 10) divided by 2);
				Let diceroll be a random number from 1 to 20;
				Increase diceroll by bonus;
				If diceroll >= 12:
					say "With a chuckle, you nod in agreement. After helping complete the complex crossword, you feel a little bit more intelligent.";
					say "[bold type]Your intelligence has increased by 1![roman type][line break]";
					Increase intelligence of player by 1;
					Follow the turnpass rule;
				else:
					say "You nod and chuckle in agreement. Some of the clues seemed to sail right over your head.";
					Follow the turnpass rule;
			else:
				say "You admit that there were some tough clues, but nothing the two of you couldn't handle.";
				Follow the turnpass rule;
		else:
			say "     Walking around the bookstore and browsing the books, nothing is really grabbing your attention right now. But not one to give up, you continue searching the store a little while longer.";
	else if X is 2:
		If "Survivalist" is listed in feats of player:
			If survfeat is 1:
				say "     When you see the cover for the Army field survival manual as you pass the table it's on, you pause and think about looking through it once again. Though you're glad that you were able to pick up some survival pointers, the thought of re-reading some of the military lingo makes you cringe. But there might a few more nuggets of info, you decide, and make a mental note to come back to it later.";
			else:
				say "     As you search through a stack of books on a table, you happen across an old Army field survival manual. After pulling it out, you begin to thumb through it to see if there is anything you might pick up that you already don't know. Not finding any new information, you close it and put it to the side before continuing to look through the books.";
		else:
			say "[afsm]";
	else if X is 3:
		say "     With all that is going on in the city right now you decide to head to the humor section to see if you can find a good newspaper comic collection. Finding your favorite, you take it, find a chair to relax in, and begin to read. You don't even notice the time go by as you get a few laughs out of your favorite funnies. Your mood noticeably lightened, you rise from the chair with a smile and put the book back, promising yourself to come back to read it again when you're feeling down.";
		Increase humanity of player by 3;
		if morale of player < 0:
			now morale of player is ( 2 * morale of player / 3 );
		else:
			increase morale of player by 2;
		Follow the turnpass rule;
	else if X is 4:
		If "Expert Hunter" is listed in feats of player:
			If huntfeat is 1:
				say "     As you peruse the table where you found [bold type]The Hunter's Almanac[roman type], you find the book and look back through the table of contents to see if there is any other info that catches your eye. Not seeing anything of interest, save for the chapter on setting up a deer stand, you close it and move to another table, making a mental note to come back and read that chapter later if you find nothing else.";
			else:
				say "     While looking through a stack of books on a table, you come across a book titled [bold type]The Hunter's Almanac[roman type] by authors Dewey, Ketchum, and Howe. Chuckling to yourself, and thinking it a humor book, you look through it before realizing it's an actual book discussing the finer points of hunting with humor sprinkled about. But finding it's not telling you anything you don't already know, you close it and continue your search.";
		else:
			say "[thab]";
	else if X is 5:
		If fsnovel is 1:
			say "     While passing a table loaded with children's books you notice one titled [bold type]Boris the Lion's African Adventure[roman type], and not even knowing why, you pause to read it. It's a simple tale, like any preschooler book, about Boris's misadventure of trying to capture Andy the Antelope with no success. But the words at the end manage to inspire you. 'He may be faster. He may be smarter. But I always, always will try harder. One day, one day he will be too slow. One day, one day I will catch him, I know.' You close the book with a smile, your mood lightened.";
			Increase humanity of player by 1;
			if morale of player < 20, increase morale of player by 1;
		else:
			say "     When you pass by a table you notice what looks like a large three ring binder. Thinking it's something Beverly has left out accidentally, you pick it up with the intent to ask her when the hand written title catches your eyes, [bold type]Flexible Survival[roman type]. Thumbing through some of the pages, you see that it's a novel made up of short stories, and as you continue reading some of the pages of each story you soon start to wonder that with the way things currently are, is life now imitating art or some gigantic cosmic joke. With a wry smile you close the binder and return it to the pile of books you found it on.";
			Increase score by 75;
			Now fsnovel is 1;
			Follow the turnpass rule;
	else if X is 6:
		If "Weak Psyche" is listed in feats of player:
			say "     You come across a self-esteem book whilst browsing a shelf. Your curiosity getting the best of you, you pull it out and scan through it real quick before putting it back, deciding that it won't help you the way you are now and don't need any advice the book might give.";
			Stop the action;
		If "Strong Psyche" is listed in feats of player:
			If purfeat is 1:
				say "     While browsing through the self-improvement shelves for any other books that might help, you happen across [bold type]Maintaining your Self-esteem[roman type]. Feeling that you've gotten as much advice as you could out of it, you continue to look over the titles of the other books.";
			else:
				say "     You come across a self-esteem book whilst browsing through the self-improvement shelves. Pulling it out, you scan through it real quick before putting it back, deciding that you already feel pretty good about yourself and your inner peace of mind.";
		else:
			say "[myse]";
	else if X is 7:
		If furry is banned:
			say "     While browsing through some books on a large table, you happen across an illustrated book discussing in great detail the mating rituals of some of the wild animals of [one of]Africa[or]Asia[or]North America[or]South America[or]Europe[or]Australia[at random]. Not interested in the book, you turn up your nose, push it aside, and continue to look through the pile.";
		else:
			say "     While browsing through some books on a large table, you come across a large, highly illustrated book on the mating rituals of some of the wild animals of [one of]Africa[or]Asia[or]North America[or]South America[or]Europe[or]Australia[at random]. Your interest piqued, you turn to see if Beverly is watching and find that she is currently looking through some books in another part of the store. Unable to control yourself, you open the book and browse through it until you are panting softly with arousal. Finding yourself getting too worked up, you snap the book shut with a shiver and quickly turn away from the table.";
			Increase libido of player by 3;
			say "     Even after calming back down so as not to attract the attention of Beverly, you still are feeling a little aroused.";
	else if X is 8:
		If "Haggler" is listed in feats of player:
			If hagfeat is 1:
				say "     You head back to the business and money section to see if there are any other books that might be of help to you. Seeing the spine for [bold type]How to Find a Good Bargain[roman type], you're tempted to read it once more. But only if there is nothing else good to read, you decide, and continue to browse the titles.";
			else:
				say "     While looking through a stack of books on a table, you come across a book titled [bold type]How to Find a Good Bargain [roman type] by author I. M. Weasel. Chuckling to yourself, and thinking it a humor book, you look through it before realizing it's an actual book discussing the finer points of bartering. You manage to pick up a few pointers, but nothing more than that, and close it before continuing your search.";
		else:
			say "[hfgb]";
	else if X is 9:
		if sdbook is 0 and bevtalk > 1:
			say "     Beverly points to a set of shelves in one corner of the store. 'There should be a book over there discussing self defense. It might be of help to you.' You thank her and head for the shelf she pointed to. After a minute of searching you find a book titled [bold type]Self Defense 101[roman type]. Taking it, you settle into a chair and look through your recent acquisition. As you suspected when you picked up the book, it's more or less basic defensive tactics, though you do manage to pick up a few pointers on how to parry and dodge attacks.";
			Increase dexterity of player by 1;
			LineBreak;
			say "[bold type]You're dexterity has increased by 1![roman type][line break]";
			Increase sdbook by 1;
			Follow the turnpass rule;
		else if sdbook is 1:
			say "     Even though you found the pointers in the self defense book pretty basic, you decide to delve into it some more to see if you can pick up anything else from it. You manage to find a few more pieces of advice, though it's all still pretty basic, on using your opponent's energy against them to counter their attack.";
			Increase dexterity of player by 1;
			LineBreak;
			say "[bold type]You're dexterity has increased by 1![roman type][line break]";
			Increase sdbook by 1;
			Follow the turnpass rule;
		else:
			say "     Walking around the bookstore and browsing the books, nothing is really grabbing your attention right now. But not one to give up, you continue searching persistently through the store without success.";
			Follow the turnpass rule;
	else:
		say "     You head over to the magazine racks and peruse through what magazines there are. Coming across [one of]Car and Driver[or]Equus[or]Wired[or]Equine Wellness[or]Entertainment Weekly[or]Reader's Digest[or]Modern Dog[or]Popular Mechanics[or]Time[or]Cat Fancy[or]Field and Stream[or]Predator Xtreme[or]Macworld[or]PCWorld[or]Shonen Jump[at random], you pull it out of the rack and head over to a chair to sit and read it. After reading an article or three, you decide you want to save the rest of the magazine for later and put it back before heading to browse another part of the store.";
		Follow the turnpass rule;

Section 4 - Books

survfeat is a number that varies.
hagfeat is a number that varies.
huntfeat is a number that varies.
purfeat is a number that varies.
sdbook is a number that varies.
fsnovel is a number that varies.
afsmread is a number that varies. afsmread is normally 255.
thabread is a number that varies. thabread is normally 255.
myseread is a number that varies. myseread is normally 255.
hfgbread is a number that varies. hfgbread is normally 255.

To say afsm:
	If afsmread - turns < 12 and survfeat is 1:
		say "     Feeling that you are ready for another go at the Army survival manual, you head back to the table you had left it on. Not seeing it immediately, you search through the stack of books and still don't find it. You are about to ask Beverly if she had seen it when you spot a rat sitting in a large chair and reading the book. With a shrug, you figure they will be done with it soon enough and go to the magazine rack to find a magazine to read instead.";
		Follow the turnpass rule;
	else:
		If survfeat is 1:
			say "     Feeling that you're ready for another go at the Army field survival manual, you pick it up and continue right where you left off. After awhile of reading your eyelids begin to grow heavy, and just as you had about enough of even more of the military acronyms, you reach the end of it. While rubbing your eyes, you sigh in relief and close the book. As you put the manual back onto the pile you found it on, you feel that you gained enough understanding of how you can best to survive in the much changed city.";
			Add "Survivalist" to feats of player;
			Follow the turnpass rule;
		else:
			say "     Going to one corner of the store, you search through a pile of books stacked on a table and find an old Army field survival manual. Finding it promising, you grab an unoccupied chair, sit down, and start to look through it. After reading for a spell, your mind begins to ache dully from all the complicated jargon. With your head swimming with so many military acronyms you decide to give it a rest for now and let your head clear. You get up and put the book back on the table where you found it before wandering off to another part of the bookstore.";
			Now afsmread is turns;
			Now survfeat is 1;
			Follow the turnpass rule;

To say thab:
	If thabread - turns < 12 and huntfeat is 1:
		say "     Picking [bold type]The Hunter's Almanac[roman type] off of the table you left it on, you head for a chair to settle in and read the chapter on tracking. At least that was the plan. When seeing a humorous illustration of the problems of an inept hunter introducing a chapter you had skipped, you end up reading the chapter instead. Before you know it, time has passed and you are no closer to reading the section on tracking. Done with reading for now, you put the book back, telling yourself that you will read the chapter next time.";
		Follow the turnpass rule;
	else:
		If huntfeat is 1:
			say "     You figure you're ready for another go at [bold type]The Hunter's Almanac[roman type] and decide to skip to the chapter about following your quarry's tracks to read the finer ways of tracking. Even though you intended to just skim it, you find that there's a lot of good points made and find an unoccupied chair to relax in and read. When you're done reading the chapter you snap the book close with a smile, optimistic that whatever you're looking for will now be easier to find.";
			Add "Expert Hunter" to feats of player;
			Follow the turnpass rule;
		else:
			say "     Walking by a table, a book titled [bold type]The Hunter's Almanac[roman type] catches your eye. Stopping to read the cover, you grin and chuckle softly at the last names of the authors Dewey, Ketchum, and Howe. Thinking it's a humorous look at hunting, you decide to thumb through it, and find that it's actually a book discussing the finer points of being a hunter with humor sprinkled throughout. Leaning against a wall, you quickly peruse through the table of contents, skipping the chapters about gun and ammo selection, field dressing your catch, and anything else that wouldn't be of great help. The chapter discussing setting up a proper deer stand piquing your interest, you decide to start there. After some time though, you eventually lose interest and decide you will come back later to read the chapter on following your quarry's tracks.";
			Now thabread is turns;
			Now huntfeat is 1;
			Follow the turnpass rule;

To say myse:
	If myseread - turns < 12 and purfeat is 1:
		say "     As you wander the bookstore, you find yourself back in the self-improvement section. Since you are here, you decide to pick back up where you left off with [bold type]Maintaining your Self-esteem[roman type]. You find the book and head to a chair to get comfy before reading. Just like last time, you find the novel informative, but dull. You read for just a little bit more until you can't keep your eyes open. Snapping the book closed you return it to the shelf, telling yourself that you will finish the book no matter what.";
		Follow the turnpass rule;
	else:
		If purfeat is 1:
			say "     You head back to the self-improvement section to pull the self-help book off the shelf, find an unoccupied chair to sit in, and pick up where you left off. Only when Beverly comes over to check on you do you look up. After blinking a couple times, you chuckle quietly and tell her you're ok. Spending a little more time with the book, you gleam as much info as you can from it until you feel that you have more of a mental grip of your current situation.";
			Add "Strong Psyche" to feats of player;
			Follow the turnpass rule;
		else:
			say "     You wander the store for a few minutes until you come across the self-improvement section. Shrugging your shoulders, you peruse the titles until one seems promising, simply titled [bold type]Maintaining your Self-esteem[roman type]. Pulling it off the shelf, you begin to leaf through it, and though informative, find it quickly getting dull. Putting it back on the shelf, you promise to yourself that you'll make an effort to finish it.";
			Now myseread is turns;
			Now purfeat is 1;
			Follow the turnpass rule;

To say hfgb:
	If hfgbread - turns < 12 and hagfeat is 1:
		say "     Your interest in [bold type]How to Find a Good Bargain[roman type] returning, you head back to the shelf where you left it. Not finding it, you spend a few minutes carefully scanning the books to make sure you haven't missed it. Still not finding it, you look around the store to see if maybe one of the rats has it, and find a couple of them sitting at a table reading a book. Wanting to see if it's the one you are looking for, you walk by them, take a glance, and see that it is. Disappointed, you head to the magazine rack to grab a magazine instead to read.";
		Follow the turnpass rule;
	else:
		If hagfeat is 1:
			say "     Deciding that you want to get further into [bold type]How to Find a Good Bargain[roman type], you head back to the shelf to grab it then sit down to read. Before you even realize it, you're finished with the book. Having found it quite informative, you go back to re-read some of the finer points of bargaining. When you are done you put the book back on the shelf, confident that you are able to easily wheel and deal with anyone you come across.";
			Add "Haggler" to feats of player;
			Follow the turnpass rule;
		else:
			say "     Wandering over to the business and money section on a whim, you start to look through the books on the shelves. Not finding anything of interest, you are just about to move on when a book titled [bold type]How to Find a Good Bargain[roman type] catches your eye. Pulling it out and thumbing through a few pages, you decide to give it a read. Finding an unoccupied chair nearby, you sit down and begin to peruse your new find. After just a few chapters you feel you are only able to just grasp the basics of wheeling and dealing. Getting up and shelving it for now, you decide to come back to it later.";
			Now hfgbread is turns;
			Now hagfeat is 1;
			Follow the turnpass rule;

Brookstone Books ends here.