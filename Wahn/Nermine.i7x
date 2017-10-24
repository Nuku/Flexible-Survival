Version 4 of Nermine by Wahn begins here.
[ Version 3.1 - Wereraptor Curse bad end by Stripes.]
[ Version 3.2 - Extra Scenes for Jackals fucking Nermine in her store, Nermine set to consistently speak of herself in the third person (by Wahn)]
[ Version 3.2.1 - Fix for Nermine's first convo]
[ Version 3.3 - Brutus + David quest tie-in]
[ Version 3.4 - Quest with Bastet]
[ Version 4 - Rework by Wahn]

"Adds Nermine and her Mysterious Shop to Flexible Survival to handle many of the player's mystical needs."

[ Libido of Nermine (quest progress with Bastet and the Fennec       ]
[  0: never met them                                                 ]
[  1: the fennec walked off with the ritual supplies                 ]
[  2: the bet was declared                                           ]

RomanceBooksFound is a number that varies.
NermineTalk is a number that varies.
NermineAroused is a number that varies.
NermineFeat is a number that varies.
NermineQuest is a number that varies.
NermineFucked is a number that varies. Nerminefucked is usually 0.
JackalBoyTF is a number that varies.
JackalManTF is a number that varies.
Nerminehelpstatus is a number that varies.
wrcurseNermine is a number that varies.
wrlastNermine is a number that varies. wrlastNermine is normally 255.
AngryHorguth is a number that varies.
NermineFennecTurn is a number that varies.

Section 1 - The Mysterious Shop

The Mysterious Shop is a room. The Mysterious Shop Entrance is a door. It is south of The Mysterious Shop and north of Mall West Wing. The Mysterious Shop Entrance is open.

The description of The Mysterious Shop Entrance is "     People in here keep giving one of the stores on the north side strange looks - and you can see why as you inspect it closer. The [bold type]mysterious shop[roman type] does not seem to... belong there. It is as if someone transplanted it to this location from an old-timey street with brick walls, taking a foot or two of the walls around with it to kind of merge and meld with the normal mall side walls. The wood-framed big glass window allows you a view into a store that looks over-stuffed with all sorts of strange and unusual items.".

The description of The Mysterious Shop is "Bells jingle softly as you enter this rather quiet and eccentric shop, this strange shop seems to be still open and doing fine even without power. Softly scented candles cast a dim light over shelves covered with strange and unusual items which seem to be displayed in no discernible order. You can't see any of the normal things you would expect to find in a mall shop however, no nicely packed boxes, no brand name items clamoring for your attention, no well marked shelves, just a rather large strange assortment of items spread out as far as the eye can see. Children's toys are placed next to expensive looking decorations, candle holders lying next to ornamental fans from the orient, almost as if someone merely grabbed anything that interested them, and then spread their new treasures out for people to see. Compared to most other shops you have been in, this one seems quite strange and mysterious indeed although with the city in the state it is currently in you probably shouldn't be too surprised at the strange things you find, although for some reason you can never quite remember seeing this shop here before...".

Nermine is in The Mysterious Shop.
Bargain Bin is in The Mysterious Shop.

the scent of Mysterious Shop is "The mysterious shop smells of scented candles and ancient secrets.".

Section 2 - Nermine

Nermine is a woman.
The description of Nermine is "[Nerminedescribing]".
The conversation of Nermine is { "Mysteeerious!" }.
The icon of Nermine is Figure of Nermine_icon.

the linkaction of Nermine is "[nerminelinkaction]".

to say nerminelinkaction:
	if NermineTalk > 0 and RareQuesting is 0:
		say "Possible Actions: [link]talk[as]talk Nermine[end link], [link]smell[as]smell Nermine[end link], [link]fuck[as]fuck Nermine[end link], [link]help[as]help Nermine[end link][line break]";
	else:
		say "Possible Actions: [link]talk[as]talk Nermine[end link], [link]smell[as]smell Nermine[end link], [link]fuck[as]fuck Nermine[end link][line break]";

the scent of Nermine is "Nermine smells like a female jackal. Her scent is subtle and alluring.".

to say Nerminedescribing:
	if debugactive is 1:
		say "     DEBUG-> NermineTalk: [NermineTalk], LIBIDO: [libido of Nermine] <- DEBUG[line break]";
	if RareQuesting is 13: [naked jackal bitch for the jackalman player]
		say "     The lovely full bodied jackal-woman you know so well is going around the store completely naked now, her soft fur shining lustrously in the candlelight, her soft breasts hanging out for all to see and appreciate, and her tail wagging eagerly behind her as she sorts through the stock. Turning to look at you, you can see a look of loving adoration on her face, the soft swirls of silver paint only seeming to make the situation seem even more erotic as she licks her lips at you eagerly.";
	else if JackalBoyTF is 4: [mistress of the jackalboy player]
		say "     You smile happily as you look at your lovely mistress, her strong dominant form making you feel protected and safe as she moves around the shop straightening things. You find yourself almost instinctively moving forward to ask if you can help, only to stop as she turns and gives you a soft knowing smile, the sight of your mistresses silver painted face as she looks at you makes you smile as well, as you know you couldn't find a better or more beautiful canine mistresses to serve anywhere else.";
	else: [regular Nermine]
		say "     You spot what must be the store owner, her strange countenance making you blink several times in surprise. Leaning up against the store counter next to the register is a lovely female jackaless, her soft black fur shining softly as she is framed in the soft light from the candles on the counter. The rather Anubis-like figure seems to be currently dressed in a rather loose fitting white t-shirt and a very short black skirt, as she leans forward on the counter, her face is brushed with soft swirls of silver paint as she grins at you.";

instead of conversing the Nermine:
	if NermineTalk is 0: [never talked to Nermine before]
		say "     'Ah, a new customer!' The strange jackal says with a grin as you approach the counter, her voice soft and beautiful though tinged with a strange accent you don't quite recognize. 'This jackal's name is Nermine, and she will be happy to help her visitor out with whatever is needed!' The jackal-woman continues, the candlelight shining off her eyes and her silver makeup as she tilts her head to get a better look at you. 'The dear visitor looks like plenty of problems are weighing on [ObjectPro of player] - but there is no need to worry! Whatever arduous issue there may be, Nermine's shop probably has some solution for it.' Nermine says with a small smile, 'Of course, one is to use a solution at their own risk and all that, and some of the humble storekeeper's items might not come that cheaply...' She continues, her light voice seeming tinged with amusement as she gestures around at the strange array of items scattered around the shop.";
		say "     'Or perhaps the dear visitor is looking to try their luck? Nermine has several items that might be beneficial and fun to try out at a low and affordable price...' She gestures at the small bin near the counter marked 'Bargain bin'. 'Either way, please do let Nermine know what she can do for - or with - her visitor.' The sexy Jackaless says this with a wink of her silver-painted eye, making you wonder if she meant that last comment to be quite as suggestive as it sounded...";
		increase NermineTalk by 1;
	LineBreak;
	say "What do you want to talk with Nermine about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Her and her store";
	now sortorder entry is 1;
	now description entry is "Talk about Nermine and her strange shop";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The possibility of her helping you";
	now sortorder entry is 2;
	now description entry is "Discuss with the jackaless if she can help you deal with your troubles";
	[]
	if (wrcursestatus >= 3 and wrcursestatus < 100 and wrcurseNermine < 14):
		choose a blank row in table of fucking options;
		now title entry is "The wereraptor curse";
		now sortorder entry is 3;
		now description entry is "Ask the jackaless for help with the curse";
	[]
	if (hp of Hayato is 10 or hp of Hayato is 14):
		choose a blank row in table of fucking options;
		now title entry is "Hayato";
		now sortorder entry is 4;
		now description entry is "Ask the jackaless about Hayato";
		sort the table of fucking options in sortorder order;
	[]
	if (hellgatherquest > 0 and hellgatherquest < 6):
		choose a blank row in table of fucking options;
		now title entry is "The nightmare";
		now sortorder entry is 5;
		now description entry is "Talk about the mythical horse creature";
		sort the table of fucking options in sortorder order;
	[]
	if (demon brute is tamed):
		choose a blank row in table of fucking options;
		now title entry is "Brutus";
		now sortorder entry is 6;
		now description entry is "Talk about your demonic companion";
		sort the table of fucking options in sortorder order;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The rare items counter";
	now sortorder entry is 7;
	now description entry is "Ask nermine about the counter with rare treasures she has laid out";
	[]
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
				if (nam is "Her and her store"):
					say "[NermineTalk1]";
				if (nam is "The possibility of her helping you"):
					NermineRequestHelp;
				if (nam is "The wereraptor curse"):
					say "[NermineTalk2]";
				if (nam is "Hayato"):
					say "[NermineTalk3]";
				if (nam is "The nightmare"):
					say "[NermineTalk4]";
				if (nam is "Brutus"):
					say "[NermineTalk5]";
				if (nam is "The rare items counter"):
					say "[RareItemQuestTalk]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the jackaless, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say NermineTalk1:
	if debugactive is 1:
		say "     DEBUG-> NermineTalk [NermineTalk] <- DEBUG[line break]";
	if NermineTalk is 1:
		say "     The jackaless gives you a friendly... if somewhat calculating... smile and says '[one of]Does the visitor need help finding what is of their desire? Nermine can help!'[or]The visitor should not hesitate to ask Nermine any questions [SubjectPro of player] might have!'[or]Nermine's visitor says the shop was not here before? She must regrettably disagree - her store has been here before the mall was, and now is again. In the time in between? It may have been somewhere else...[or]Does not the candlelight seem rather romantic and mysterious in Nermine's visitor's opinion too?'[or]Would the dear visitor like to try one of the new vanishing drinks? Nermine will give a free sample as soon as she can find where they went...'[or]Nermine has heard there is a nice museum in this town now. Maybe her visitor should check it out and find something interesting there to take.'[or]Nermine keeps meaning to go see what happened at the Egypt exhibit. But then, it would not do to leave the store unattended for long...'[or]Nermine does enjoy the more... flexible state of reality as it is now hereabouts. It reminds her of the old times, and she gets much fewer odd looks from the customers now...'[or]Did the dear visitor know that jackals were considered to be very mystical animals and sacred to Anubis?'[or][if cocks of player > 0]What a very fine [cockname of player] cock Nermine's visitor has there[else]'Nermine thinks the dear visitor would look quite fetching with a [cockname of player] cock[end if]!' Nermine says with a smile, making you blush.[or]Nermine would like to compliment her visitor's [skin of player] skin, but she very much prefers her own soft fur. It is a lovely shade of black, would the guest not agree?'[at random]";
	else if NermineTalk is 2:
		say "     Is the visitor enjoying Nermine's special brand of help?' The jackal-woman asks you with a sultry smile, 'Nermine is certainly enjoying having helper as nice and cute as [ObjectPro of player]...' Nermine says as she licks her lips playfully. 'Of course if the eager helper is not happy Nermine can fix things for [ObjectPro of player] to the way they were before. But that would be such a shame...' The jackal-woman lets her voice trail off as she gives you a lonely look. Do you ask her to undo the 'help' she has given you?'";
		if player consents:
			say "     'That is too bad,' Nermine says, a sad look tugging at her muzzle as she eyes you reproachfully. 'Well if her visitor does not need Nermine's help, they can do without it.' She says, reaching out one of her black claw-tipped hands to trace some symbol on your forehead, sending a strange shiver through your body. 'There. Now [SubjectPro of player] will no longer have help from this poor lonely jackal, and be able to be infected again like any other,' she says as she turns back to watching the store, snubbing you due to your ungrateful request.";
			now NermineTalk is 1;
			now JackalBoyTF is 5; [transformation rejected and disabled]
		else:
			say "     'Nermine knew her visitor would love to stay the same!' The happy Jackal says with a smile, even as she reaches across the counter to give you a soft lick on the cheek, 'She is looking forward to being very helpful to her little helper in the future...' She says as she grins at you, making you flush.";
			Now NermineTalk is 1;
	else if NermineTalk is 3:
		say "     'Nermine can see that you are certainly looking even more handsome than ever, probably as a result of all the hard work you have been doing to help her.' The jackaless says with a smile as she looks you over, 'Now if you want Nermine could help return you to your boring old form, and then you would susceptible to other changes again... but it would seem like such a shame to do so.' Nermine says with a soft smile on her face. Do you ask her to undo the changes from the strange ankhs?";
		if player consents:
			say "     'That makes Nermine very sad,' Nermine says, a sad look tugging at her muzzle as she eyes you reproachfully. 'Well if you don't want to be nice and handsome, Nermine supposes she will just have to fix that.' She says, reaching out with one of her black claw tipped hands to trace some symbol on your forehead, sending a strange shiver through your body. 'There, can be infected again like any other, though don't expect Nermine to ask for any more help from such an ungrateful person, she doesn't need to be left disappointed and heartbroken any more than necessary.' She says with a sniff as she turns back to watching the store, ignoring her ungrateful former associate.";
			now NermineTalk is 1;
			now JackalManTF is 5;
		else:
			say "     'Nermine knew you would love your new look as much as she does!' The happy Jackal says with a smile, even as she leans across the counter to give you a soft lick on the cheek, 'Nermine is looking forward to seeing much more of her handsome associate in the future.' She says as she grins at you, making your body flush eagerly.";
			Now NermineTalk is 1;
	else if NermineTalk is 4:
		say "     'Ah, Nermine is happy to be addressed by her handsome master,' The naked jackal-woman says as she saunters over eagerly, 'What can Nermine help her master with?' She says as she poses slightly for your pleasure, stroking one of her clawed hands down her furred side teasingly. 'Sadly Nermine cannot merely give her master items from the shop, everything must be bought or traded for as part of old agreement,' The jackal-woman says with a soft sigh, before perking up slightly, 'Still! Nermine can give her amazingly handsome jackal master herself, whenever or wherever they decide they want to use her.' Nermine says with a happy grin as she licks her lips at the very arousing thought, obviously hoping you will decide to 'use' her often.";

to say NermineTalk2:
	if debugactive is 1:
		say "     DEBUG-> WRCURSENERMINE [wrcurseNermine], WRCURSESTATUS [wrcursestatus][line break]";
	if wrcurseNermine is 0 and wrcursestatus >= 3 and wrcursestatus < 100:
		say "     You decide to confide in Nermine about your wereraptor curse in the hopes that she can provide a cure. She gives you a disdainful, cross look. 'Oh, so Nermine is being gypsy now, dealing in werewolves and curses for you? Maybe you are wanting your palm read as well?' she growls. After taking a deep breath to calm herself, she continues. 'Nermine is not knowing much about these matters, but unless she has time to learn more, she cannot do much for the moment. Be letting her consult my books and Nermine will be seeing what she can do. Nermine will be needing at least a day for this.'";
		say "     Nermine grins. 'If you cannot be waiting, perhaps there is another way though. Stronger power would be removing this old, weak curse. If you were to be [bold type]helping Nermine[roman type], perhaps Nermine could be helping you as well,' she says, giving you a coy smile and a flutter of her long lashes. 'Otherwise, be coming back tomorrow.'";
		now wrcurseNermine is 1;
		now wrlastNermine is turns;
	else if wrcurseNermine is 1 and wrcursestatus >= 3 and wrcursestatus < 100 and wrlastNermine - turns >= 8:
		say "     Nermine sets aside the book she was leafing through and smiles at you. 'Nermine is having good news. While this is not Nermine's normal area of expertise, she is having books on many such subjects and is finding something which may helping with your raptor problem.' She shows you the open book. The text in it appears to be hand written, but you don't recognize the language or even the alphabet. She points out a drawing of some flowers on the opposite page. 'Nermine is first needing roots of this plant. It is monkshood and the flowers are being a purple colour like this,' she adds, indicating a lilac purple section of one of the hanging carpets on the wall. 'They are usually growing closer to the mountains, but there is a greenhouse at the college campus that is having many plants. Perhaps you can be finding it there?'";
		now wrcurseNermine is 2;
		now Greenhouse is unresolved;
	else if wrcurseNermine is 2 and wrcursestatus >= 3 and wrcursestatus < 100 and a random chance of 1 in 3 succeeds:
		say "     'If you are wanting Nermine's help with your nightly problem, then you are needing to get monkshood root. Be looking for the purple flower in the greenhouse at the college campus. But if finding it is too much trouble, you could always just be deciding to [bold type]help Nermine[roman type] and we could be dealing with your problem by giving you something better,' she adds with a coy smile and wink of her silver painted eye.";
	else if wrcurseNermine is 3 and wrcursestatus >= 3 and wrcursestatus < 100 and wolfsbane is not owned:
		say "     In speaking to Nermine, you realize that you don't have the monkshood with you. You try to remember what you did with it. If you can't find it again, you'll have to take Nermine up on her offer to help her in trade for whatever she has planned or find something else powerful enough to overpower your curse... which may leave you even worse off than before.";
		now wrcurseNermine is 4;
	else if wrcurseNermine is 4 and wrcursestatus >= 3 and wrcursestatus < 100 and wolfsbane is not owned and a random chance of 1 in 3 succeeds:
		say "     In speaking to Nermine, you realize that you don't have the monkshood with you. You try to remember what you did with it. If you can't find it again, you'll have to take Nermine up on her offer to help her in trade for whatever she has planned or find something else powerful enough to overpower your curse... which may leave you even worse off than before.";
	else if ( wrcurseNermine is 3 or wrcurseNermine is 4 ) and wrcursestatus >= 3 and wrcursestatus < 100 and wolfsbane is owned:
		say "     Pulling out the wolfsbane, you set it on the counter. You feel ill just from touching it, but Nermine doesn't seem to have an adverse reaction to its smell. Once she places it in a glass jar you feel a little better, but still suffer from a lingering uneasiness in your stomach. 'Nermine will be preparing the potion while you are to be getting the next thing you are needing.";
		say "     'There is a shipment of items that were going to be auctioned off. Among them is the silver knife you are wanting. It is looking like this.' She pulls out a published listing from the auction house, pointing out the knife. 'Cure is not needing this specific knife, but knife is special, so should be working better for this. Nermine will be it keeping as her payment, so don't be becoming attached to it,' she adds with a wink. She slips you the listing after circling the lot number in red. She goes on to tell you the location of the warehouse, but cautions you that the Warehouse District was a dangerous part of the city even before the outbreak[if Warehouse District is unknown]. She does provide you with a route she assures you will safely get you to the dockside area[end if].";
		now carried of wolfsbane is 0;
		now Warehouse District is known;
		now wrcurseNermine is 5;
		now Getting the Knife is unresolved;
	else if wrcurseNermine is 5 and wrcursestatus >= 3 and wrcursestatus < 100 and a random chance of 1 in 3 succeeds:
		say "     'You will be needing the silver knife to be helping with your curse. Attempt to be [bold type]getting the knife[roman type] from the warehouse Nermine told you about. While you are doing this, she will be preparing the monkshood potion. But if it's proving to be too much difficult for you, perhaps you would help Nermine as her assistant. There are many things you could be assisting her with,' she says with a sexy rumble, letting her eyes roam over your body.";
	else if wrcurseNermine is 6 and wrcursestatus >= 3 and wrcursestatus < 100 and silver knife is not owned:
		say "     You recall that you don't have the silver knife on you at the moment. You'll need that if you want to be rid of your wereraptor curse. If you can't find it again, you'll have to use some more drastic means to deal with it.";
		now wrcurseNermine is 7;
	else if wrcurseNermine is 7 and wrcursestatus >= 3 and wrcursestatus < 100 and silver knife is not owned and a random chance of 1 in 3 succeeds:
		say "     You recall that you don't have the silver knife on you at the moment. You'll need that if you want to be rid of your wereraptor curse. If you can't find it again, you'll have to use some more drastic means to deal with it.";
	else if ( wrcurseNermine is 6 or wrcurseNermine is 7 ) and wrcursestatus >= 3 and wrcursestatus < 100 and silver knife is owned:
		say "     Pulling out the silver knife, you place it carefully on the counter and move your head quickly away. Despite being rather plain, Nermine takes a long time to examine the knife. 'Excellent. Nermine is thinking this knife will be working very nicely for what we are needing tonight.'";
		say "     She pulls some of the monkshood root from the jar and starts carving it up with the knife on a small cutting board she must have placed in anticipation. You cover your nose and back away. While the jackal seems undisturbed by it, you feel waves of nausea strike you. You move to stand by the door, taking in what fresh air you can while you wait for her to finish and add the finely cut root to a small potion. Only once she's cleaned it up and the bottle is closed do you feel well enough to approach again.";
		attempttowait;
		say "     She passes you the potion and freshly cleaned blade, which you take carefully. 'Now you are ready for the final step. For it, you are needing to be finding the body of the creature you are becoming. A true one, not those cursed like you,' she emphasizes with a point of her clawed finger. 'You will be needing to check the dinosaur exhibit in the museum and find the right skeleton. They are old bones, but it is an old curse, so it should still be working.";
		say "     'The ritual is needed to be completed under the light of the moon. Nermine know this is meaning you may be transforming, but it must be done at night so it can be drawn out of you. To do this, you must be drinking the potion (a thought which makes you ill just to consider) and then be spilling your blood onto it with the knife (which sends a shiver along your spine). This is meant as sacrifice to appease the spirits and be drawing the curse out of you. Is old magic and old magic is often... crude like this. The beast within you can sense the power of the silver and of the monkshood. This is why they are affecting you so, but you are needing to be strong and do as you must to be freeing yourself.'";
		say "     Having received the items and your instructions, all that remains is to do it. You try to remind yourself that you need to go ahead with it, but you are repulsed by the prospect. Besides, isn't monkshood poison? She certainly seemed to use a lot of it. Feeling uncertain and unsettled, you try to decide what to do next.";
		now Dinosaur Skeleton is unresolved;
		now wrcurseNermine is 8;
	else if wrcurseNermine is 8 and wrcursestatus >= 3 and wrcursestatus < 100 and a random chance of 1 in 3 succeeds:
		say "     'You will need to be going to the Museum and finding the proper [bold type]dinosaur skeleton[roman type] you are needing. You must be performing the ritual at night. Drink the potion, spill your own blood and the curse is being draw out of you. Hopefully.'";
	else if wrcurseNermine is 9:
		now wrcurseNermine is 10;  [This should not occur, but bumping to failure by default.]
		say "     Nermine gives you an appraising look and shakes her head sadly. You know there's no point in asking her for more assistance with your curse. You will have to find another means to deal with it before it consumes you.";
		now wrcurseNermine is 13;  [Quest closed - fail]
	else if wrcurseNermine is 10:
		say "     Nermine gives you an appraising look and shakes her head sadly. You know there's no point in asking her for more assistance with your curse. You will have to find another means to deal with it before it consumes you.";
		now wrcurseNermine is 13;  [Quest closed - fail]
	else if wrcurseNermine is 11:
		say "     Nermine smiles as she looks you over. 'Nermine is seeing that you are doing much better now. She was being hopeful that you would be succeeding. Now perhaps that Nermine has helped you, perhaps you would be willing to help Nermine, maybe?' she says with a wink and a swish of her tail as she places the silver knife into her display case for rare items with delicate care. 'You are talented. Perhaps you might even talk to Nermine about adding to my collection here,' she says, patting the case as she seals it up.";
		now wrcurseNermine is 13;  [Quest closed - succeed]
	else if wrcurseNermine is 12:
		say "     Nermine looks you over. 'Nermine is seeing that you are deciding to be keeping your raptor nature. Such is the fate of many of who come to my store, getting what they sought, but not as they originally intended. Nermine is hoping you are making the right decision.'";
		now wrcurseNermine is 14;  [Quest closed - wereraptor]

to say NermineTalk3:
	if debugactive is 1:
		say "     DEBUG-> HP OF HAYATO [hp of Hayato] <- DEBUG[line break]";
	if hp of Hayato is 10:
		say "     Figuring that Nermine's the one who gave Hayato the chastity device now locking him up, you decide to ask her about it. 'Ah... Nermine was knowing an interested buyer would be coming eventually to be purchasing the oni. Not enough room in store to keep him here, but is good advertising. Besides, the muscled oni is not being my style, even if still virgin. Nermine is preferring something that looks sexy in black,' she says, running her eyes over you appraisingly. You try to tell her that you're just looking to help Hayato out, but she waves that off. 'Chastity belt on oni is old piece, but still working good. Right now is being used not quite for intended purpose. Magic can be blocking arousal of wearer, yes, but normally meant to discipline and control them.'";
		say "     She dangles an old, wrought iron key in front of you, but snatches it away as you reach for it. 'You are interested in purchasing oni for yourself, yes?' she asks. You tell her that you want the key to free him, to which she grins. 'If you are to be purchasing oni, then Nermine is needing suitable replacement. Nermine is hearing there is Japanese [bold type]noh mask[roman type] in office of teacher at city college. She is wanting you to go there and get it for Nermine. May be difficult, but you are to be getting oni sex slave in return,' she says with a naughty grin, once more flashing the key before tucking it behind the counter.";
		say "     While your intention in coming here was just to see if there was a way to free him, it seems that she'll end up selling him off to someone else if you don't give her what she wants. A horny little corner of your mind is tempted by her offer as well. You don't want to betray his trust, but you find yourself looking forward to having some fun with the virgin oni once you've got that chastity belt off him. It looks like you'll be [if reaching the college is unresolved]searching for a means of [bold type]reaching the college[roman type] then[else]returning to the college campus[end if].";
		now hp of Hayato is 11;
		now Noh Mask is unresolved;
	else if hp of Hayato is 14:
		say "     You take the noh mask out of your pack. You carefully unwrap it and pass it to Nermine. 'Ah, yes. Quite old, very lovely.' She runs a furry finger along it. 'And a long, sordid history. Excellent. Just as Nermine had been told.' With care, she places it on a shelf behind the counter where it can smile alluringly at customers.";
		say "     'Now, here is key you are wanting. Oni is to be yours for your amusement,' she says with a coy playfulness. Despite her canine muzzle, she has an expression not unlike that on the porcelain mask.";
		now hp of Hayato is 15;

to say NermineTalk4:
	if debugactive is 1:
		say "     DEBUG-> HELLGATHERQUEST [hellgatherquest] <- DEBUG[line break]";
	if hellgatherquest is 5:
		say "     'Welcome back again, Nermine sees you have acquired the items she needs,' The jackal-woman says with a sly smile as you set the bag from Harold out on the counter. 'Now Nermine has finished dealing with the collar as you requested, and should have these items ground and mixed and properly ready for little white mare soon enough, now all that remains is for Nermine to talk about payment with sexy equine stud here...' She says with a teasing wink as she looks you up and down for a minute, her request making you quite nervous, before she sighs slightly, her black furred shoulders slumping a bit. 'Unfortunately, Sexy equine has little Nermine wants right now, and is far to busy to send off on long quest to fetch items for a lonely jackaless, so it looks like Nermine will have to ask for same thing she did of earlier stablemaster at this point. Access to the stables when Nermine wants it, and a favor of Nermine's choosing in the future.' She says with a shrug and a smile as she cocks her head at you inquiringly.[line break]";
		say "     Hardly believing your luck you nod in agreement eagerly, and the jackal-woman grins slightly before heading to the back room for a while after telling you to stay there and touch nothing. Not wanting to get in trouble, or to be more honest, be turned into anything embarrassing given what you have learned so far about this strange shop, you wait for quite a while in her shop without messing with anything, until eventually Nermine returns with a small box and a pouch. 'Now Nermine warns would be Nightmare to be careful with the choker, it will prove just as effective on you as it will on current stablemaster, so be careful not to try it on yourself.' She says teasingly as she hands you the items, her words sending a shiver down your spine as you stow them away carefully and turn to leave. Though just as you are about to leave, you hear the shopkeeper say 'And Nermine hopes this one will remember their agreement better than the last one did, though maybe Nermine will still get to use curse she was preparing after all..' you hear her mutter, and quickly duck out of the shop before the creepy and strange shopkeeper decides to try cursing you just in case...";
		now hellgatherquest is 6;
	else if hellgatherquest is 4:
		say "     'Back again? Collar is not done yet, it must be strong indeed to bind a Nightmare after all, and you still do not have the ingredients for your next mixture from the barkeep at the palomino either. Perhaps handsome equine was entranced by Nermine's beauty and wished to admire her some more?' The jackal-woman says with a teasing grin as she winks at you, before going back to dealing with the items in the shop, some of which seem to be trying to make a break for the door...";
	else if hellgatherquest is 3:
		say "     'And the triumphant warrior returns! Or is it triumphant thief?' Nermine says with a soft chuckle as you set the golden collar down on the counter in front of her, 'Nermine is sure it doesn't really matter which, though she does hope museum guardian is not too injured from battle... is convenient to have certain items all in one place instead of looted and scattered around city after all... besides, if satyrs got loose Nermine just knows her inventory would be in constant danger of being partied with and stolen.' The jackal-woman says with a soft sigh, before shaking her head and whisking the golden choker you worked so hard for away behind the counter. 'Now Nermine needs to get working on finishing the preparations on this item, but is still more little mare needs as you said, ingredients to make sure the Nightmare's seed doesn't make you nice and submissive little slut like all the others...' She says with a chuckle as a canine grin spreads across her black and silver muzzle, 'Now normally Nermine would send you off to museum again to gather the ingredients from some of the creatures there, but one is sure that her equine visitor is probably not welcome there for a little while now.' Nermine grins as she winks at you before continuing, 'Fortunately for her visitor, Nermine has alternate method for you to gather ingredients for her, Is bar recently reopened in town, well bar club what have you, is called palomino or some such. Bartender there has been gathering ingredients as well from around town, and should have what Nermine needs as well. Of course you might have to befriend him first to get him to give you ingredients, but that is customers problem, not Nermine's' The jackal shopkeeper says with a grin, before handing you a small list to give to the bartender at the palomino.";
		now hellgatherquest is 4;
	else if hellgatherquest is 2:
		say "     'Little would be Nightmare is coming back to visit with Nermine again?' The jackal-woman says with a soft grin, 'Well Nermine likes horses as well as next jackal, but is still preferable to canines herself. Nermine thinks maybe little equine should focus on getting the focus from museum instead of hanging around teasing jackal shopkeepers with handsome naked body...' Nermine says with a teasing wink and an appraising glance at your body before going back to what she was doing and leaving you to your own devices.";
	else if hellgatherquest is 1:
		say "     'Ah you is coming to Nermine from the horses she sees,' The Jackal shopkeeper says with mild amusement as she looks your changed form up and down, 'And now Nermine gets better look at what silly little mare has been doing with ingredients she orders, Nermine certainly approves.' Nermine says with amusement and a rather predatory grin on her silver brushed muzzle as she takes in your rather strange equine form, even as you preen under her appreciative gaze. 'So there is to be rival Nightmare in town is there? Well and good, old one never did finish paying for books, Nermine had plans for him eventually... but this will be much more amusing.' She says with a soft smile, followed by a chuckle as she takes in your look of confusion. 'Ah you did not know what you were becoming? Is rather interesting legend, Nermine will tell you,' The shopkeeper says with a wicked smile as she leans forward on the counter, her ample breasts pressing forward temptingly as she talks.[line break]";
		say "     'The Nightmare is an old legend, of black horse with flaming red mane and eyes, that travels land and tempts maidens in the night, the flaming eyes were said to fascinate, and they were said to be unimaginably powerful creatures of lust and violence.' Nermine says with relish as she slowly recounts several strange tales of dark horses riding off with maidens in the middle of the night, and inspiring disturbing and lustful dreams from all around them whenever they visited... her words causing you to listen with rapt attention as you realize just how tempting such a powerful existence sounds. 'Though of course, were none around for quite while, until one you called stable master visited Nermine a while back. He had of course already started to change, but didn't want to be just another horse... We struck bargain he and I, and he held up only most of his...' Nermine says with a soft sigh, as she shakes her jackal head in disgust, 'Is always way of those with power, is to be thinking they can do anything, is also why Nermine will be having you pay her in advance.' The jackal-woman says with a smirk on her muzzle as she grins at you, something about her attitude making you both nervous, and aroused at the same time.[line break]";
		say "     'Now then, first things first, Nermine assumes you are here for item little mare commissioned, and maybe some more of the special ingredients... Well item is not quite done, Nermine has most of the materials, but she still needs the focus.' She says in a much more business-like tone as she moves around behind the counter, 'If you want the item to be done soon, you will need to find Nermine a suitable item for the focus, fortunately for little want to be stablemaster, Nermine knows where such an item can be found.' The jackal-woman says with a soft smile as she leans forward to speak in a lower tone, 'Now nightmares may not be quite like demons or others, but like any of the mythic beasts, it has its weakness, which Nermine knows well, so she needs you to fetch her very specific type of item for her to work on. Is one in museum in town that would work, nice golden choker, will make wonderful collar to bring Nightmare to heel, unfortunately is old and rather finely crafted gold, and museum guardian will not let it go easily, Nermine suggests you go prepared for a fight.' The jackal-woman says with a sly wink, before leaning back and proceeding to promptly ignore you, and you sigh realizing that it is off to the city museum with you, to hunt for a golden focus of some kind...";
		now hellgatherquest is 2;

to say NermineTalk5:
	if libido of David is 86: [ritual successful]
		say "     The jackaless shopkeeper gives you a nod and asks, 'Was the dear customer's ritual a success?' She smiles as you tell her about it, a knowing gleam in her eyes. 'Nermine of course wants to see her visitors fully satisfied. Be assured the enchantment on the amulet will hold any additional number of... less formidable beasts than the wild spirit of your demonic pet. So should there be a need for any more ritual ingredients, she can supply more.'";
		now libido of David is 87; [talked to Nermine]
	else if libido of David is 85:
		say "     The jackaless shopkeeper gives you a nod and asks, 'Was the dear customer's ritual a success? Ah, no - Nermine senses it has not been done yet. She hopes that there are no problems... or doubts on her customer's part. As the humble shopkeeper must remind them, all deals are final.' That said, she gives you a friendly smile, though you can see the iron will of an unrelenting salesperson shine out from underneath. Seems like the ball is in your court, and the only options are to hang on to the ritual supplies or actually let Brutus have his wish.";
	if libido of David is 84: [Brutus wants to bind David]
		say "     As you ask her for the ingredients on Brutus shopping list, the jackaless shakes her head. 'You are wanting to get a new pet? Nermine is sorry, but she already told you that it is not possible to capture another demon right now. She does not have any more sin-spice for the summoning - and neither the mandragora root that helps bend such formidable will to serve. With what the dear customer listed, one could only...' Brows rising as her eyes are drawn to the amulet around your neck, a slight smile plays over the shopkeeper's muzzle before she continues, 'Ah. Not demon summoning after all... Nermine sees now. Her humble store can after all supply what you need. Of course, there remains the question of payment for her services...'";
		say "     Stroking a finger along the side of her muzzle as she mulls it over, the jackal shopkeeper finally says, 'A momentary use of the dear visitor's pet would suffice. Nermine does have a special order to fill, whose training will benefit from encountering a demon. It is fortuitous to have a tamed one at hand.' Picking up a small silver bell, she rings it, filling the store with a crystal-like jingle. A moment later, the slender shape of a male elf walks in from the back room, taking graceful steps on fleet feet, like a dancer. He looks about as old as a teenage human, and even though such things can be hard to tell with elves, the somewhat shy and unsure way he says, 'Yes, mistress?' tells you that he can't be much older than he appears. Besides a number of small piercings that glisten at the belly-button, nipples and earlobes, his only articles of clothing are a belly-dancer's billowing sleeves and leg-coverings, almost completely transparent and decorated with a row of little metal disks on wrists and ankles that tinkle as he moves.";
		WaitLineBreak;
		say "     'Come greet the visitor Cassim,' Nermine continues, looking with keen eyes at how the elven servant performs as he steps up to you and gives a deep bow, his hands pressed together before his chest. 'As-salamu alaykum,' the elf says as he lifts his head again, looking at you with shyly with almond-shaped eyes, 'How may I serve, effendi?' Before you can reply, Nermine interjects, 'Well done boy. You are learning. Our guest has brought along another opportunity for you to broaden your horizons.' With that, both of them turn to you again, Nermine with an expectant expression, Cassim in taunt anticipation at his next task.";
		LineBreak;
		say "     Do you [if companion of player is not demon brute]summon and [end if]command Brutus to introduce the slender elf to his thick piece of a cock?";
		if player consents:
			LineBreak;
			say "     As Brutus steps forward after your command, Cassim's eyes widen and he can't help but stare at the demon's rippling muscles - and even more so at the massive shaft hanging between the purple giant's legs. It is clear that this is the biggest penis he's ever seen - making it kind of admirable that the smaller elf stands his ground, showing no fear - although he does gulp visibly as Brutus quickly gets fully hard and the massive erection twitches in Cassim's direction. Coming to a stance with his clawed feet set apart a bit, your demonic companions sets his hands on his hips and says, 'Come here, elf boy!'";
			say "     With only an eye-blink of hesitation, the slender male steps forward, accompanied by a slight tinkle from his costume. Brutus immediately puts a large hand on his body, squeezing the elven teen's buttocks through their gauzy, sheer coverings, then strokes up Cassim's back before carefully taking hold of his head and guiding it down to his crotch. Having his beardless face rubbed against Brutus long cock and heavy balls, Cassim's nostrils flare as he gets a good long whiff of Brutus very masculine scent... and the elf can't help but give an aroused moan. There is no need for further prompting, as the almost naked servant starts to lick Brutus erection all on his own, using his slender hands to hold the heavy shaft and play with the demon's big balls.";
			WaitLineBreak;
			say "     You watch the cute little elf service Brutus, looking very fine in his belly-dancer's outfit, until eventually there is a lusty rumble from the purple giant and he says, 'I wanna fuck.' From one moment to the next, Cassim is pulled up by the much larger demon, held against his muscle-packed chest as Brutus gives him an aggressive and hungry kiss. The elven teen is carried along with effortless ease as Brutus strides over towards the store's counter, pushing various items on it to the side as he lays is smallish partner on the flat surface. With him now lying on his back, legs held spread by Brutus, you can hear Cassim give needy moans and see his relatively thin - but admirably long - cock stand erect in the diaphanous pants on his legs.";
			say "     Not in a mood to wait even a little bit longer, Brutus simply takes hold of Cassim's belly-dancer pants and gives them a quick pull, ripping the thin cloth off the elf's naked body. He's on top of the elven servant just a moment later, pushing his forked tongue into his mouth while at the same time lining the purple shaft between his legs up with Cassim's pucker. It looks impossible that this pairing could even remotely fit, such a lightweight as the pretty little elf taking a big demon's shaft, but somehow it does. Pressing forward, Brutus shaft stretches Cassim's ring wide as the cockhead pops in, accompanied by an aroused gasp by the elf. In a breathless tone, the young elf pants, 'Wow! You... are... really big... Effendi. I love it!'";
			WaitLineBreak;
			say "     More and more of Brutus massive manhood presses into the teen lying before him, accompanied by Cassim's breathless pants and the demon's own lusty growls. Eventually it is all in, and as Cassim moans, 'I feel so full, Effendi. Feels good,' you can literally see an obscene little bulge in his stomach, made by Brutus cock. At this point, the demon is well past any intelligible words and just gives an aroused bellow, leaning forward to give Cassim a forceful kiss, one big hand pressing him down on the counter as Brutus tongue invades the elf's mouth. And then, the thrusting starts - with the purple giant pulling back and jabbing his erect shaft deep into his smaller partner's needy hole.";
			say "     It really is a sight to behold just how flexible the little elf truly is, inside and out - with his pucker stretched tight around the full width of Brutus cock in one moment, then pulling closed to look like a virgin's dainty little asshole - even if it is by now a bit reddened from the workout he's getting. One thing is for sure though... the boy is an expertly trained bottom, with Brutus just setting a capstone on that. Cassim is quite obviously aroused by being taken hard and deep, with his erect elven manhood standing proudly as he squirms enticingly under Brutus thrusts, using not only his inner muscles but his whole body to gyrate this way or that, creating ever new sensations for the large demon fucking him.";
			WaitLineBreak;
			say "     Brutus seems to revel in pounding someone he can't accidentally break, filling the room of this little store with grunts and bellows, slaps of his balls against an elvish butt and the needy whimpers of his tight bottom boy. Of course, the sounds of sex are nothing new to Nermine's store - you're sure that there is a lot of this going on, with all the deals the jackaless makes. By now, the noise of Brutus coupling even has drawn some mall-rats to gather in front of the window, peering in with interest at the show they're getting.";
			say "     Pounding into Cassim with unrelenting sexual fury, Brutus bellows eventually get more and more intense and also deeper, rumbling in his wide chest. He soon also starts to do especially demanding penetrations - pulling out his whole shaft, glistening and wet with precum, then ramming all of it down Cassim's hole in one single thrust, reducing the little elven teen to unintelligible babbling in a language you do not understand. It doesn't take more than a few more moments before the elf starts bucking and shaking, giving a scream of, 'Oooh - I - I'm coming Effendi!' The lithe body stretched out on the counter goes tense from head to to, then starts twitching as a first blast of cum rockets out of his cock to land on his cheek with a splat. Another and another follow, soon forming a white and creamy line down Cassim's front.";
			WaitLineBreak;
			say "     With his partner orgasming and his muscles twitching around Brutus cock, the demon reaches his own point of no return before more than two or three of Cassim's cumshots are in the air. He shouts, 'I'm gonna breed you good, you elven slut!' and gives a loud roar that shakes ancient vases and magical artifacts on their shelves. Gripping the counter hard enough to leave deep claw-marks in its wooden sides, the demon then starts to fill the elf boy with his heavy load. Pulsing with rhythmic movements, the purple demon's balls send a lot of cum to gush into Cassim - so much so, that his thin shape even starts to swell a bit, then a bit more, as his belly is filled with all that cum. Even as Brutus eventually pulls out, accompanied by a mighty gush of his demonic seed, the elf still looks maybe three months pregnant, with all the further cum locked inside his body by a quickly closing pucker.";
			say "     His lusts fulfilled, the purple giant gives an appreciative grunt and remarks, 'Nice fuckhole on this one. He will serve his master well.' Then he walks back to you and takes the usual place as your bodyguard and servant again. In his wake, he leaves behind the breathlessly gasping elf on the shop counter and quite a bit of cum oozing down the counter end, not to talk of a trail of drops falling down from his wet and glistening cock - yet Nermine seems wholly unconcerned with the mess. Maybe she'll make Cassim clean it or she has some magical way of fixing things up. No matter what, with a satisfied smile at the worn-out elf boy, she quickly gathers a number of ingredients from bowls in the shelves, small drawers and even a little lockbox, then presents you with a leather bag full of everything Brutus needs for his ritual. He takes it from her, then makes the bag disappear in a cloud of purple smoke somehow. 'A pleasure of doing business, dear customer. Nermine wishes good luck in the endeavor. Please come again.'";
			WaitLineBreak;
			say "     With your deal concluded, the jackaless walks over to Cassim on her slender paws, then says to the elf, 'Nermine is proud to see that the gentle elf has learned his instructions so well. She will let him rest a moment, then the next lesson will commence. There is much to learn yet.'";
			now libido of David is 85; [Ritual ready]
		else:
			LineBreak;
			say "     Deciding you don't want to make this deal right now, you shake your head at the jackaless, who gives a sigh. 'Ah, it seems that right now is not a good time. Go back and practice, Cassim. Your moves must be perfect.' Bowing reverently before her, the elf says, 'At once, mistress.' Then he vanishes into the back room again, the movement of his fleet feet accompanied by slight tinkling noises.";
	else if libido of David is 68:
		say "     As you bring up Brutus and David, Nermine steps up to you on quiet paws and says, 'May this humble shopkeeper have a look? She is very interested in seeing her customers are satisfied.' As you give a nod of consent, she hooks a finger under the band of your amulet, pulling it up till Brutus tooth dangles in full view, now with the metal band bearing David's name around its base. 'A magnificent success, Nermine can gladly say in congratulations. The enchantment holds strong, stronger than before in fact - your human and demon must really have been meant for each other.'";
	else if libido of David is 66:
		say "     As you explain roughly what has been going on with David and Brutus, and the solution Lilith sold so dearly to you, Nermine's brows rise in surprise, and she remarks, 'The humble shopkeeper's customer is making unexpected choices with his pet - it is unheard of, to her knowledge. Going through the effort to bind a demon, then trying to redeem him and leaving such... leeway of choice to it afterwards. But that is the gentlebeing's choice, of course.' Falling silent as she thinks, she strokes a finger along the side of her muzzle distractedly for a few times, then eventually says, 'Ah. Nermine thinks your demoness['] plan could work. Binding the demon to his human would make the man his master, and following the hierarchy is something that is in their blood.' There is a competitive spark in Nermine's eye as she says, 'Nermine wishes the best to your endeavour, and she hopes you might think of her first if such matters come up in the future. Her price would have been less severe...'";
	else if libido of David is 63:
		say "     The jackaless shopkeeper gives you a nod and asks, 'Was the dear customer's ritual a success? Ah, no - Nermine senses it has not been done yet. She hopes that there are no problems... or doubts on her customer's part. As the humble shopkeeper must remind them, all deals are final.' That said, she gives you a friendly smile, though you can see the iron will of an unrelenting salesperson shine out from underneath. Seems like the ball is in your court, and the only options are to hang on to the ritual supplies or actually do it, sharing control over your demonic companion with David.";
	else if libido of David is 62 or libido of David is 67:
		say "     As you bring up Brutus and David again, Nermine gives you a gracious nod, a smile playing over her muzzle as she says, 'Did this humble shopkeeper's customer change their mind? As Nermine explained before, a momentary use of the dear visitor's pet would suffice. She does have a special order to fill, whose training will benefit from encountering a demon. It is fortuitous to have a tamed one at hand.' Picking up a small silver bell, she rings it, filling the store with a crystal-like jingle. A moment later, the slender shape of a male elf walks in from the back room, taking graceful steps on fleet feet, like a dancer. He looks about as old as a teenage human, and even though such things can be hard to tell with elves, the somewhat shy and unsure way he says, 'Yes, mistress?' tells you that he can't be much older than he appears. Besides a number of small piercings that glisten at the belly-button, nipples and earlobes, his only articles of clothing are a belly-dancer's billowing sleeves and leg-coverings, almost completely transparent and decorated with a row of little metal disks on wrists and ankles that tinkle as he moves.";
		WaitLineBreak;
		say "     'Come greet the visitor Cassim,' Nermine continues, looking with keen eyes at how the elven servant performs as he steps up to you and gives a deep bow, his hands pressed together before his chest. 'As-salamu alaykum,' the elf says as he lifts his head again, looking at you with shyly with almond-shaped eyes, 'How may I serve, effendi?' Before you can reply, Nermine interjects, 'Well done boy. You are learning. Our guest has brought along another opportunity for you to broaden your horizons.' With that, both of them turn to you again, Nermine with an expectant expression, Cassim in taunt anticipation at his next task.";
		LineBreak;
		say "     Do you [if companion of player is not demon brute]summon and [end if]command Brutus to introduce the slender elf to his thick piece of a cock?";
		if player consents:
			LineBreak;
			say "[BrutusCassimFuck]";
			now libido of David is 63; [Nermine Ritual ready]
		else:
			LineBreak;
			say "     Deciding you don't want to make this deal right now, you shake your head at the jackaless, who gives a sigh. 'Ah, it seems that right now is not a good time. Go back and practice, Cassim. Your moves must be perfect.' Bowing reverently before her, the elf says, 'At once, mistress.' Then he vanishes into the back room again, the movement of his fleet feet accompanied by slight tinkling noises.";
			now libido of David is 62; [payment refused]
	else if libido of David is 60 or libido of David is 61 or libido of David is 64 or libido of David is 65:
		say "     As you explain roughly what has been going on with David and Brutus, Nermine's brows rise in surprise, and she remarks, 'The humble shopkeeper's customer is making unexpected choices with his pet - it is unheard of, to her knowledge. Going through the effort to bind a demon, then trying to redeem him and leaving such... leeway of choice to it afterwards. But that is the gentlebeing's choice, of course.' Falling silent as she thinks, she strokes a finger along the side of her muzzle distractedly for a few times, then eventually says, 'Ah. Nermine thinks she might have the answer.' Beckoning you to stand at the counter with a flourish of her slender paw, she then walks to a towering bookshelf deeper in the store, returning with a thick tome bound in rather suspicious looking leather.";
		say "     Dropping the book on the counter before you with a heavy thunk, the jackaless unlocks the three locks holding it closed with a brass key, then opens her copy of the 'Codex Daimonicun' and turns over several chapter's worth of pages. She bends over a page filled with scrawly letters that sometimes seem to crawl over the paper and soon gives a knowing nod. 'It is as Nermine suspected. Demons are hierarchic, even in breeding. Let her explain...' Turning two pages back, she points to an illustration of a complex symbol, one you know already - the 'Seal of Enslavement', as Brutus called it. 'Once a fiend chooses another victim and enslaves it, their bond gets stronger and stronger - not only subjugating the demon's plaything, but also having an effect on the beast itself.' Turning pages, she finds a picture that has a certain resemblance to Brutus, in that it shows a hulking demon with a massive cock dangling erect between its legs. 'It wakes their desire to not just fuck, but breed...' Several incredibly graphic pages follow, surprising you a bit in showing basically a porn comic in this old tome.";
		WaitLineBreak;
		say "     It's almost hypnotic to look at the next picture, and the next, of a number of demonic beings performing every lewd act imaginable. You seriously think you'd still be watching it, if Nermine hadn't suddenly closed the book, hastily snapping a lock shut to hold it closed. 'It is inadvisible to keep this tome open too long,' she explains, then finishes locking the other locks and puts the book back on the shelf. Coming back, the jackaless asks, 'Your pet and this man, David - they are... lovers?' You nod, and she continues, 'In getting that close to each other, as close - or closer - than a master and bonded slave, the demon's urges awoke. As the man is clearly weaker and smaller a creature, that means in the eyes of the demon's inner self, he simply must be a slave, and be treated as such. Obey, serve for his pleasure, be bred as often as possible.' The jackaless gives a somewhat apologetic wave of her hands, then says, 'Demons were never meant to love - if it is weaker, it must serve. That is their nature.'";
		say "     Well, if that's the problem... you do have an idea how to solve it. Telling Nermine about it, you do put a baffled expression on her face again for a second, then she catches herself and shakes her head. 'Nermine doesn't know why she was surprised - after all, none of her dear customer's choices in this matter were customary. Yes, it should work - by sharing ownership over the demon, the man David would be elevated in its hierarchy, eliminating all urges of subjugation. Yes, yes... Nermine realizes you will want the needed supplies to bind the amulet to another next - and she has what you need. But there is a question of the price, she still has a store tun run, Nermine is sure the customer does understand that...'";
		WaitLineBreak;
		say "     Stroking a finger along the side of her muzzle as she mulls it over, the jackal shopkeeper finally says, 'A momentary use of the dear visitor's pet would suffice. Nermine does have a special order to fill, whose training will benefit from encountering a demon. It is fortuitous to have a tamed one at hand.' Picking up a small silver bell, she rings it, filling the store with a crystal-like jingle. A moment later, the slender shape of a male elf walks in from the back room, taking graceful steps on fleet feet, like a dancer. He looks about as old as a teenage human, and even though such things can be hard to tell with elves, the somewhat shy and unsure way he says, 'Yes, mistress?' tells you that he can't be much older than he appears. Besides a number of small piercings that glisten at the belly-button, nipples and earlobes, his only articles of clothing are a belly-dancer's billowing sleeves and leg-coverings, almost completely transparent and decorated with a row of little metal disks on wrists and ankles that tinkle as he moves.";
		WaitLineBreak;
		say "     'Come greet the visitor Cassim,' Nermine continues, looking with keen eyes at how the elven servant performs as he steps up to you and gives a deep bow, his hands pressed together before his chest. 'As-salamu alaykum,' the elf says as he lifts his head again, looking at you with shyly with almond-shaped eyes, 'How may I serve, effendi?' Before you can reply, Nermine interjects, 'Well done boy. You are learning. Our guest has brought along another opportunity for you to broaden your horizons.' With that, both of them turn to you again, Nermine with an expectant expression, Cassim in taunt anticipation at his next task.";
		LineBreak;
		say "     Do you [if companion of player is not demon brute]summon and [end if]command Brutus to introduce the slender elf to his thick piece of a cock?";
		if player consents:
			LineBreak;
			say "[BrutusCassimFuck]";
			now libido of David is 63; [Ritual ready]
		else:
			LineBreak;
			say "     Deciding you don't want to make this deal right now, you shake your head at the jackaless, who gives a sigh. 'Ah, it seems that right now is not a good time. Go back and practice, Cassim. Your moves must be perfect.' Bowing reverently before her, the elf says, 'At once, mistress.' Then he vanishes into the back room again, the movement of his fleet feet accompanied by slight tinkling noises.";
			now libido of David is 62; [payment refused]
	else:
		say "     The jackaless gives you a smooth smile as you bring up Brutus and says, 'Nermine hopes you are happy with your pet, yes? She wants to respectfully remind you that there are no refunds, no matter what. All deals are final.' With that, she gives you a friendly smile, though you can see the iron will of an unrelenting salesperson shine out from underneath.";

to say BrutusCassimFuck:
	say "     As Brutus steps forward after your command, Cassim's eyes widen and he can't help but stare at the demon's rippling muscles - and even more so at the massive shaft hanging between the purple giant's legs. It is clear that this is the biggest penis he's ever seen - making it kind of admirable that the smaller elf stands his ground, showing no fear - although he does gulp visibly as Brutus quickly gets fully hard and the massive erection twitches in Cassim's direction. Coming to a stance with his clawed feet set apart a bit, your demonic companions sets his hands on his hips and says, 'Come here, elf boy!'";
	say "     With only an eye-blink of hesitation, the slender male steps forward, accompanied by a slight tinkle from his costume. Brutus immediately puts a large hand on his body, squeezing the elven teen's buttocks through their gauzy, sheer coverings, then strokes up Cassim's back before carefully taking hold of his head and guiding it down to his crotch. Having his beardless face rubbed against Brutus long cock and heavy balls, Cassim's nostrils flare as he gets a good long whiff of Brutus very masculine scent... and the elf can't help but give an aroused moan. There is no need for further prompting, as the almost naked servant starts to lick Brutus erection all on his own, using his slender hands to hold the heavy shaft and play with the demon's big balls.";
	WaitLineBreak;
	say "     You watch the cute little elf service Brutus, looking very fine in his belly-dancer's outfit, until eventually there is a lusty rumble from the purple giant and he says, 'I wanna fuck.' From one moment to the next, Cassim is pulled up by the much larger demon, held against his muscle-packed chest as Brutus gives him an aggressive and hungry kiss. The elven teen is carried along with effortless ease as Brutus strides over towards the store's counter, pushing various items on it to the side as he lays is smallish partner on the flat surface. With him now lying on his back, legs held spread by Brutus, you can hear Cassim give needy moans and see his relatively thin - but admirably long - cock stand erect in the diaphanous pants on his legs.";
	say "     Not in a mood to wait even a little bit longer, Brutus simply takes hold of Cassim's belly-dancer pants and gives them a quick pull, ripping the thin cloth off the elf's naked body. He's on top of the elven servant just a moment later, pushing his forked tongue into his mouth while at the same time lining the purple shaft between his legs up with Cassim's pucker. It looks impossible that this pairing could even remotely fit, such a lightweight as the pretty little elf taking a big demon's shaft, but somehow it does. Pressing forward, Brutus shaft stretches Cassim's ring wide as the cockhead pops in, accompanied by an aroused gasp by the elf. In a breathless tone, the young elf pants, 'Wow! You... are... really big... Effendi. I love it!'";
	WaitLineBreak;
	say "     More and more of Brutus massive manhood presses into the teen lying before him, accompanied by Cassim's breathless pants and the demon's own lusty growls. Eventually it is all in, and as Cassim moans, 'I feel so full, Effendi. Feels good,' you can literally see an obscene little bulge in his stomach, made by Brutus cock. At this point, the demon is well past any intelligible words and just gives an aroused bellow, leaning forward to give Cassim a forceful kiss, one big hand pressing him down on the counter as Brutus tongue invades the elf's mouth. And then, the thrusting starts - with the purple giant pulling back and jabbing his erect shaft deep into his smaller partner's needy hole.";
	say "     It really is a sight to behold just how flexible the little elf truly is, inside and out - with his pucker stretched tight around the full width of Brutus cock in one moment, then pulling closed to look like a virgin's dainty little asshole - even if it is by now a bit reddened from the workout he's getting. One thing is for sure though... the boy is an expertly trained bottom, with Brutus just setting a capstone on that. Cassim is quite obviously aroused by being taken hard and deep, with his erect elven manhood standing proudly as he squirms enticingly under Brutus thrusts, using not only his inner muscles but his whole body to gyrate this way or that, creating ever new sensations for the large demon fucking him.";
	WaitLineBreak;
	say "     Brutus seems to revel in pounding someone he can't accidentally break, filling the room of this little store with grunts and bellows, slaps of his balls against an elvish butt and the needy whimpers of his tight bottom boy. Of course, the sounds of sex are nothing new to Nermine's store - you're sure that there is a lot of this going on, with all the deals the jackaless makes. By now, the noise of Brutus coupling even has drawn some mall-rats to gather in front of the window, peering in with interest at the show they're getting.";
	say "     Pounding into Cassim with unrelenting sexual fury, Brutus bellows eventually get more and more intense and also deeper, rumbling in his wide chest. He soon also starts to do especially demanding penetrations - pulling out his whole shaft, glistening and wet with precum, then ramming all of it down Cassim's hole in one single thrust, reducing the little elven teen to unintelligible babbling in a language you do not understand. It doesn't take more than a few more moments before the elf starts bucking and shaking, giving a scream of, 'Oooh - I - I'm coming Effendi!' The lithe body stretched out on the counter goes tense from head to to, then starts twitching as a first blast of cum rockets out of his cock to land on his cheek with a splat. Another and another follow, soon forming a white and creamy line down Cassim's front.";
	WaitLineBreak;
	say "     With his partner orgasming and his muscles twitching around Brutus cock, the demon reaches his own point of no return before more than two or three of Cassim's cumshots are in the air. He shouts, 'I'm gonna breed you good, little elf!' and gives a loud roar that shakes ancient vases and magical artifacts on their shelves. Gripping the counter hard enough to leave deep claw-marks in its wooden sides, the demon then starts to fill the elf boy with his heavy load. Pulsing with rhythmic movements, the purple demon's balls send a lot of cum to gush into Cassim - so much so, that his thin shape even starts to swell a bit, then a bit more, as his belly is filled with all that cum. Even as Brutus eventually pulls out, accompanied by a mighty gush of his demonic seed, the elf still looks maybe three months pregnant, with all the further cum locked inside his body by a quickly closing pucker.";
	say "     His lusts fulfilled, the purple giant gives an appreciative grunt and remarks, 'Nice fuckhole on this one. He will serve his master well.' Then he walks back to you and takes the usual place as your bodyguard and servant again. In his wake, he leaves behind the breathlessly gasping elf on the shop counter and quite a bit of cum oozing down the counter end, not to talk of a trail of drops falling down from his wet and glistening cock - yet Nermine seems wholly unconcerned with the mess. Maybe she'll make Cassim clean it or she has some magical way of fixing things up. No matter what, with a satisfied smile at the worn-out elf boy, she quickly gathers a number of ingredients from bowls in the shelves, small drawers and even a little lockbox, then presents you with a leather bag full of everything you need for the ritual to allow David to share mastery over Brutus, including a handwritten set of instructions. You let Brutus take it, who makes the bag disappear in a cloud of purple smoke somehow. 'A pleasure of doing business, dear customer. Nermine wishes good luck in the endeavor. Please come again.'";
	WaitLineBreak;
	say "     With your deal concluded, the jackaless walks over to Cassim on her slender paws, then says to the elf, 'Nermine is proud to see that the gentle elf has learned his instructions so well. She will let him rest a moment, then the next lesson will commence. There is much to learn yet.'";
	LineBreak;
	say "     Meanwhile, your thoughs wander ahead, playing through what has to happen next. You should definitively go talk with David about this, in a private place like the bunker under the library.";

the fuckscene of Nermine is "[sexwithnermine]".

testnermine is an action applying to nothing.
understand "nermine test" as testnermine.

carry out testnermine:
	say "DEBUG: RareQuesting VARIABLE SET TO 13 - Nermine is now the player's jackaless bitch";
	now RareQuesting is 13;

to say sexwithnermine:
	if lastfuck of Nermine - turns is less than 6:
		say "     'Sorry, Nermine knows her master wants to have more fun with her, and she certainly wouldn't mind having some more fun with [himher],' The jackaless says with a soft wink, 'But Nermine does have a store to run here sadly, and even if she don't have many customers to take care of, and definitely no customers as nice and fun to play with as her current visitor. Who knows what trouble the stock would get up to if Nermine wasn't here to keep an eye on things most of the time.' She says as she gestures with one of her black furred hands at the shelves full of odd items packing the store. 'Do not worry though, her master and Nermine should be able to have a little time to themselves again as soon as things have been taken care of a bit, do come back and see her then!' Nermine says, a small grin pulling at the edges of her black muzzle as she stares at you with lust filled eyes.";
		stop the action;
	if RareQuesting is 13:
		now lastfuck of Nermine is turns;
		if cocks of the player is greater than 0:
			say "     'Nermine thought her master would never ask!' The naked jackal-woman says with a smile, turning to look at the curtains to the back room, before looking back at you eagerly, 'But where does such a handsome jackal want to play with his little pet?' She asks you with a teasing look in her eye as she runs her claws through her soft black fur, 'Nermine has nice bed for her master to lie on while his pet services him, but she finds idea of master playing with her in store fun too...' The jackal bitch moans eagerly at the thought of both, as she waits for you to decide how you want to play with her. Do you take her in the store?";
			if player consents:
				say "     Nermine grins eagerly as you gesture to the counter, leaning back against it as she runs her claws up her inner thigh teasingly, 'Nermine's master wants to take his little pet in the store where anyone can walk in and see what a lovely little pet she is?' the jackal bitch pants out eagerly as she rubs the counter top happily. The jackal-woman then wastes no time slowly turning her back to you, as she leans forward over the counter, her breasts pressing down onto its top as she lifts her tail up eagerly, giving you a perfect view of her already damp pink lips, 'Mmm Nermine can't wait to show the world what a happy little pet she is for big strong male jackal...' She moans eagerly as she wags her tail at you.";
				WaitLineBreak;
				Say "     You find your muzzle spreading in a grin, at just how needy and eager the former shopkeeper is as she displays herself on her counter like a piece of merchandise for you to take. You waste no time taking her up on her invitation as you step forward and begin stroking your pet, your dominant touch making her moan needfully as she lifts her hips up even more. The sight of her displaying herself so wantonly for you, has your cock already hard and eager, so you waste no more time on soft touches, grip her soft fur with your claws and sheath your knotted cock in her body with one swift stroke. The bitch yelps and then begins to moan wantonly underneath you as your knot begins to stretch her heat filled passage wide.";
				say "     You grin at how eagerly she spreads herself under you as she tries to take all of you into her body. You piston your cock in and out of her soft passage several times, your cock sinking deeper with every delicious thrust, until you can finally feel her body surrender fully to being bred. You moan with pleasure yourself as your swelling knot finally locks itself into Nermine, her pussy gripping you like a glove as she pants and begs underneath you. Feeling amazingly strong and dominant, you waste no time in giving Nermine the hard fucking she so obviously needs, rocking your hips up against hers as she pants and moans, rocking on the counter top, her soft voice begging you to fuck your little pet even harder and faster like the animal she wants to be for you.";
				WaitLineBreak;
				let randomnumber be a random number from 1 to 5;
				if randomnumber is 1 and libido of Nermine > 0:
					now randomnumber is 2;
				if randomnumber is:
					-- 1:     [Fennec comes along for a deal]
						say "     Your knot pulls and teases at her pussy with every thrust, and soon she is writhing underneath you in orgasm, howling in lust. Her walls clenching tight around your pointed canine cock gives you the last push you needed yourself, triggering your own powerful orgasm. Your mind explodes in pleasure as you shoot your load into her all too willing womb, with Nermine groaning and panting as she feels your jackal seed painting her insides and claiming her body.";
						say "     Eventually you come down from the heights of pleasure and find yourself standing there gripping the counter, your knot slowly shrinking in Nermine's body. Looking down, you notice that the jackal bitch is all but unconscious underneath you, a look of well fucked pleasure on her face as she lies sprawled out on her shop counter, your fertile seed bottled up in her pussy by your canine knot. The loud jingling of bells pulls your attention away from the needy bitch impaled on your shaft and as you look up, you see a wide-eyed fennec stand at the door, a large bag clutched to his slender frame.";
						WaitLineBreak;
						say "     'I - er - I got the items you wanted.' he says in a hesitant tone, shyly stepping forward. Seeing that your pet bitch is still a bit out of it, you give the fennec a nod to acknowledge him, then pull Nermine up against your chest and whisper in her ear that she's got a customer, combined with softly pinching her nipples. Doing so pulls her out of her lust-filled haze, and as the bitch sees the visitor in front of her, she immediately goes into shopkeeper mode, eager to finish her deal with the man. 'The gentle desert fox has gotten it for Nermine? All of it?' she inquires, to which the fennec replies 'Yes, yes - of course. I would never try to cheat you.' He offers Nermine the bag and as she leans forward to take it, the movement makes your knotted cock pull against her pussy, causing your pet to moan loudly.";
						say "     Re-gaining her composure after a moment of panting in lust, Nermine does her best to continue with the business deal. Setting the bag down on the floor behind the counter after only a casual inspection of its contents, she tells her customer to get an ancient-looking stone urn standing in one of the store shelves. As he takes the urn with shaking hands and brings it to the counter, the jackaless starts to explain something - and you decide to have a bit of fun, seeing how good she'll do as you grind your crotch against her sex...";
						WaitLineBreak;
						say "     'What Nermine's dear customer *pant* *pant* now holds is *moan* the urn of Bastet, very rare and old. As the desert fox asked, this can - Ah. AH! Harder, my master... yess! - this can be used to call his goddess's attention back fully into this world. *moan* It speaks highly of his dedication that he went so far for his faith. Nermine wishes him well, and is sure he will succeed.' She silently whimpers at this point, her pussy trembling around your thrusting cock from a miniature orgasm, 'Times are auspicious to do so, as my customer will need the milk of a bull-man to add to the herbs already inside - and those are much, much easier to find recently. *pant* Then he must share the urn's draught with *gasp* a willing feline and finish the ritual by coupling with her...'";
						say "     After that, your pet bitch succumbs to just rocking back against you with nothing but lust on her mind, moaning for her master to fuck her harder. The fennec gives you another of his wide-eyed looks, still astounded that someone has so completely tamed the quite formidable jackaless, then shakes his head to stop himself from staring at Nermine's bouncing breasts and gives a little bow. After saying, 'Thank you. I will leave you two alone then,' he leaves the store, the precious Egyptian artifact cradled against his chest.";
						WaitLineBreak;
						say "     Pounding your shaft into the now wantonly panting jackaless, you nuzzle her neck and tell her how proud you are of her managing to finish the deal even while getting fucked. In between moans, she answers 'Nermine thanks her master, she takes great pride in providing everything and anything in her store.' A moment later, the panting shopkeeper adds 'May his obedient pet now have a little reward? She craves being bred by such a handsome and strong male jackal...'";
						say "     Not one to deny such a pleasurable request, you speed up your thrusts into her, each of them met by Nermine rocking back against you. Reveling in the feeling of your swollen knot pulling against the sides of her pussy and your previous load squishing around your member in the jackal's tight sex, you feel the inescapable need to cum rise quickly inside you. As you're getting quite close, your relentless pounding pushes your jackal bitch over the edge and she suddenly howls in lust, writhing in orgasm. Her inner muscles tremble and twitch around your pointed canine cock, giving you a very pleasant feeling that makes you climax with her. Gripping Nermine's hips tightly, you shoot a second big load of cum straight into her willing womb.";
						WaitLineBreak;
						say "     Having totally worn out your sexy pet, so far that she's about ready to doze off, you find yourself with a very groggy jackaless tied to you by your knot. Not wanting to stand here until it goes down, you have a look around in the store. Ah, perfect - there's a large bean-bag chair between all the clutter, and not too far away either. Guiding Nermine to it, you sink down on it with her, then spend a nice little time resting and holding the well-bred bitch against your chest. Some while later, your knot goes down far enough for you to pull out, allowing you to stand up and collect your clothes and gear. You leave the now sleeping Nermine sprawled on the bean-bag chair, a grin spreading on your face as you imagine someone coming in and finding her like that, naked and with your cum dripping out of her pussy.";
						now libido of Nermine is 1;
						now NermineFennecTurn is turns;
					-- 2:     [mall-rats watch]
						say "     Your knot pulls and teases at her pussy with every thrust, and soon she is writhing underneath you in orgasm, howling in lust. Her walls clenching tight around your pointed canine cock gives you the last push you needed yourself, triggering your own powerful orgasm. Your mind explodes in pleasure as you shoot your load into her all too willing womb, with Nermine groaning and panting as she feels your jackal seed painting her insides and claiming her body.";
						say "     Eventually you come down from the heights of pleasure and find yourself standing there gripping the counter, your knot slowly shrinking in Nermine's body. Looking down, you notice that the jackal bitch is all but unconscious underneath you, a look of well fucked pleasure on her face as she lies sprawled out on her shop counter, your fertile seed bottled up in her pussy by your canine knot. As you take a moment to revel in the fact that the sexy bitch is yours - your pet, to fuck and breed when you want - your idly wandering gaze falls on a mall-rat with green spiky hair standing in front of the store window.";
						WaitLineBreak;
						say "     Judging from the bulge in the ratty young adult's ragged pants, he's been there a while and seems to have enjoyed the show. Though currently, his attention isn't on you and your pet, but rather something in the mall hallway - several of his buddies he called over to join him, as it turns out a moment later. Now there's a whole group of mall-rats gathered in front of the store, jovially gawking at the view you're giving them. A winning grin on your face, you smile at them, then demonstratively stroke a hand down the side of the jackal bitch lying sprawled out on her shop counter, stopping to grope one of her breasts as you do so. There's some murmuring and lewd gesturing among the spectators as the original rat with the green hair regales them with what he saw, which prompts one especially brave rat to enter the store and approach.";
						say "     'Wow, you - you did it! Err - did her I mean!' he yelps after the bells on the door fall silent again, then he keeps going at breakneck speed with 'She can cast spells you know. Can you cast spells too? None of us thought they'd ever see Nermine like this. Not after Brody. He didn't take her no as an answer and kept pestering her. And she got angry - then *Poof* - we call him Bridget now.' Finally running out of steam, the young rat just stares at Nermine, eyes focused on her breasts - at least until she gives a little growl that makes him make a step back. Then the jackaless says 'Is the little rat wanting to join Bridget in her fate? This is still Nermine's store and - '[line break]";
						WaitLineBreak;
						say "     Deciding that it's time to remind your pet bitch of her place, you rotate your hips a bit, moving your knotted shaft inside Nermine's pussy and making her moan and pant from the sensations. That shuts her up pretty well. With a grin, you push her down on the shop counter again, her breasts resting against its top. As you do so, the lone rat with you in the store gulps and looks at you with awe in his eyes - then he takes a deep breath and asks 'Can I - take a picture? And... I'm Danny by the way.' Giving him a gracious nod, you watch the mall-rat pull a precious still-working smart-phone from a pocket: *Click* - Her lying under you on the counter, a look of well-fucked pleasure on her face. *Click* - The root of your cock and the base of its knot where it vanishes inside her. *Click* - You holding Nermine against your chest, both hands cupping her breasts. *Click, Click, Click*[line break]";
						say "     Showing off with your jackal bitch is quite a bit of fun, and before long you notice that your knot stopped softening at some point and is now again rock-hard inside Nermine - at which point you decide to give Danny and the ever-growing crowd of mall-rats outside the store another show. Guiding your pet to the side of the counter so everyone has a nice side-on view of the action, you start grinding your hips against her behind, pulling and stretching her pussy with every movement. The sexy jackal feels amazingly tight and warm around your thrusting canine shaft, with the cum you've already blasted into her squishing around your member. Deeply aroused by you dominating her, she braces herself against the counter and rocks back against you, meeting each thrust of your hips.";
						WaitLineBreak;
						say "     Your crowd of spectators moves on to cheering as you fuck Nermine again, giving you the extra satisfaction of hearing them roar each time you thrust deep. Meanwhile, Danny is still busy snapping pictures and Nermine pants and moans under you, begging for you to fuck her harder and faster. With all that going on around you and the canine shopkeeper's inner walls tightly gripping your invading member, it doesn't take all that much longer till you reach another amazing climax. Grabbing the edge of the counter, you hold on tightly as your body twitches with each blast of cum into Nermine's willing womb, once more cementing your claim on her with a second thorough breeding - and in a row too. The sexy bitch comes right along with you, reaching back with one hand to grab one of your buttcheeks as she revels in the sensations of her master filling her up.";
						say "     Panting heavily, you lean your head against the jackal shopkeeper's back, worn out from fucking her twice in such short time. Resting with (and in) her as you come down from the high of orgasm, you idly watch your gathered crowd of onlookers, many of whom pair up in all kinds of combinations now that the show is over. Seems like you've inspired quite a few of them to have some fun of their own and soon moans will echo through every part of the mall. Danny, your ratty photographer, stays with you for a while longer, heaping thanks on you and showing all the awesome pictures he got on the screen of his phone. Only after your cock finally goes soft enough for you to pull out does he say goodbye, though not without snapping a last shot of your pointy member held against Nermine's cum-dripping pussy.";
						WaitLineBreak;
						say "     Turning to meet your muzzle with hers, the jackaless gives you a lick and a kiss, then moans 'Nermine loves that her strong male jackal fucked his pet like this. He showed everyone that she is his.' Her tail wags as she reaches down to cup your balls gently handling them. Then she continues in a husky tone 'Please do so again, my master. And soon.'";
					-- 3:     [male Jaguar comes along and watches]
						say "     Your knot pulls and teases at her pussy with every thrust, and soon she is writhing underneath you in orgasm, howling in lust. Her walls clenching tight around your pointed canine cock gives you the last push you needed yourself, triggering your own powerful orgasm. Your mind explodes in pleasure as you shoot your load into her all too willing womb, with Nermine groaning and panting as she feels your jackal seed painting her insides and claiming her body.";
						say "     Eventually you come down from the heights of pleasure and find yourself standing there gripping the counter, your knot slowly shrinking in Nermine's body. Looking down, you notice that the jackal bitch is all but unconscious underneath you, a look of well fucked pleasure on her face as she lies sprawled out on her shop counter, your fertile seed bottled up in her pussy by your canine knot. A fapping noise pulls your attention away from the needy bitch impaled on your shaft and as you look up, you see a jaguarman stand at the door, one hand wrapped around his erect cock and with a hungry look in his eyes. He must have entered the shop while you were in the midst of fucking Nermine and distracted enough to miss the bell.";
						WaitLineBreak;
						say "     'A fine bitch you have there,' the man compliments you, his eyes roaming over Nermine's naked form. He clears his throat, then asks in a hopeful tone, 'Any chance I could maybe have some fun with her too?' Before you can think of any answer to give, Nermine is already panting 'This jackalwoman's pussy and womb is only for her master to fill, but if he gives his permission, she could service you in other ways.' The jaguarman raises his gaze to you again, tensely awaiting your verdict while you mull it over. Well, not that you couldn't just make Nermine spread her legs for him - she's your pet bitch after all, but as good as she feels around your only slowly softening cock, you'd rather stay inside her. So that just leaves her other end...'";
						LineBreak;
						say "     Do you allow the jaguarman to make use of Nermine's mouth?";
						if player consents:
							LineBreak;
							say "     In a generous mood after having gotten off in your prize bitch once already, you wave the jaguarman closer. ";
							say "     [NermineSucksJ]";
						else:
							LineBreak;
							say "     As you decline the feline's request, the jaguar puts on a determined expression and pulls his backpack from over a shoulder. Taking out a bottle of water and packet of food, he says 'You know, I was gonna try my luck with the bargain bin, but how about I pay you with these for some fun time with her instead? I'd love to make that deal if your bitch is on offer...'";
							LineBreak;
							say "     Do you pimp out Nermine and allow the jaguarman to make use of her mouth?";
							if player consents:
								LineBreak;
								increase carried of food by 1;
								increase carried of water bottle by 1;
								say "     Agreeing to take payment for Nermine's services, you let the jaguarman put both items on a small table in the store, then wave him closer. ";
								say "     [NermineSucksJ]";
							else:
								LineBreak;
								say "     Again declining the jaguar's request, you instead allow him the chance to watch as you yourself have some more fun with Nermine. Despite a slight sigh of disappointment, the male nevertheless is quite happy to take up jerking off to another coupling between you and your pet, stepping closer to get a better look. With the excitement of knowing you're being watched starting to get your cock fully hard and ready again, you pull Nermine up against your chest and whisper in her ear to give a good show, combined with softly pinching her nipples. Then you push her back down again, bent over the counter with her full breasts pressed against it. After putting both hands on her hips, you hold her tightly and pull your hips back, the movement making your knotted cock pull against her pussy, then slip out of it with a wet slurping sound and a gasp from your jackal pet.";
								say "     Not giving Nermine even a second to re-gain her composure, you immediately thrust all the way back into her again, making her scream in lust from being penetrated by a knot that's only just soft enough to fit. 'Yes master! Use your...' She groans as you pull out again, snatching a breath before continuing, 'needy pet. Use Nermine like the bitch she issSSS-YES!' Her plea is answered as your knot pops back in past her nether lips. 'Yes! More! AaahhH!' Under the eager eyes of your jaguarman spectator, you fuck Nermine's pussy with long strokes that stretch her opening around your half-hard knot. Seeing flashes of jealousy flaring up in the other man's eyes gives you a nice little stimulation in and of itself, and you can't help but grin as you see him beat off to the dreams of being in your place. Life is good if you own such a prime bitch like Nermine...";
								WaitLineBreak;
								say "     Pounding your shaft into the wantonly panting jackaless, you feel your knot growing larger once more, soon locking your bodies together again. With your hips tightly pressed against her sex, you slow down for a moment, nuzzling Nermine's neck and telling her how proud you are of her being such an amazing pet - sexy, obedient and a great fuck. In between moans, she answers 'Nermine thanks her master, she loves serving him and fulfilling all his desires.' A moment later, the panting shopkeeper adds 'May his obedient pet now have a little reward? She craves being bred by such a handsome and strong male jackal...'";
								say "     Not one to deny such a pleasurable request, you speed up your thrusts into her, each of them met by Nermine rocking back against you. Reveling in the feeling of your swollen knot pulling against the sides of her pussy and your previous load squishing around your member in the jackal's tight sex, you feel the inescapable need to cum rise quickly inside you. As you're getting quite close, your relentless pounding pushes your jackal bitch over the edge and she suddenly howls in lust, writhing in orgasm. Her inner muscles tremble and twitch around your pointed canine cock, giving you a very pleasant feeling that makes you climax with her. Gripping Nermine's hips tightly, you shoot a second big load of cum straight into her willing womb.";
								WaitLineBreak;
								say "     Meanwhile, your jaguar spectator abandons all restraint after seeing the culmination of your coupling, his paw-hand almost a blur as he jerks off, reaching his own orgasm just moments later. Giving a low, lusty grunt with each shot from his spined cock, he blasts his load in high arches, several of them splattering likely priceless artifacts. 'Great show man,' he pants to you, continuing with 'If you ever change your mind about letting others tap that bitch, just put a sign in the window - there'll be a line all the way through the mall, I bet.' With that, the jaguar grabs the backpack he dropped next to the door and leaves the shop.";
								say "     Having totally worn out your sexy pet, so far that she's about ready to doze off, you find yourself with a very groggy jackaless tied to you by your knot. Not wanting to stand here until it goes down, you have a look around in the store. Ah, perfect - there's a large bean-bag chair between all the clutter, and not too far away either. Guiding Nermine to it, you sink down on it with her, then spend a nice little time resting and holding the well-bred bitch against your chest. Some while later, your knot goes down far enough for you to pull out, allowing you to stand up and collect your clothes and gear. You leave the now sleeping Nermine sprawled on the bean-bag chair, a grin spreading on your face as you imagine someone coming in and finding her like that, naked and with your cum dripping out of her pussy.";
					-- 4:     [a naiad comes along and watches]
						say "     Your knot pulls and teases at her pussy with every thrust, and soon she is writhing underneath you in orgasm, howling in lust. Her walls clenching tight around your pointed canine cock gives you the last push you needed yourself, triggering your own powerful orgasm. Your mind explodes in pleasure as you shoot your load into her all too willing womb, with Nermine groaning and panting as she feels your jackal seed painting her insides and claiming her body.";
						say "     Eventually you come down from the heights of pleasure and find yourself standing there gripping the counter, your knot slowly shrinking in Nermine's body. Looking down, you notice that the jackal bitch is all but unconscious underneath you, a look of well fucked pleasure on her face as she lies sprawled out on her shop counter, your fertile seed bottled up in her pussy by your canine knot. The jingling of the bells on the entrance door pulls your attention away from the needy bitch impaled on your shaft and as you look up, you see a strikingly beautiful woman stand there, her body completely naked and with small drops of water glistening all over her perfect skin. Pulling aside long blond hair to fall over her shoulder, she gives you a smile and says 'I was looking for a store dealing in... special goods. And I think I found it.' Looking around for a moment at all the items the jackalwoman has laid out, she then comes back to the Nermine herself.";
						WaitLineBreak;
						say "     'A beautiful jackaless you have there,' the woman compliments you, her eyes roaming over Nermine's naked form. She continues in an oddly charming voice that wakes the desire in you to fulfill all her wishes, 'Is she for offer too? I wouldn't mind trying out such a prize specimen...' Before you can think of any answer to give, Nermine is already panting 'This is Nermine's shop and Nermine won't be sold in it - but if her master wishes, Nermine will gladly service the graceful naiad visiting.' The naiad focuses the full power of her supernatural beauty back on you, clearly waiting for you to say yes immediately, but you take your time to mull it over.";
						LineBreak;
						say "     What shall it be? Do you invite the naiad to enjoy Nermine too?";
						if player consents:
							LineBreak;
							say "     In a generous mood after having gotten off in your prize bitch once already, you wave the naiad closer and she walks up to you. Moving with incredibly graceful, flowing steps, the water spirit draws both your and Nermine's full attention as she does so. Coming to stand before the counter, you're literally spellbound for a moment by all the little water-droplets all over her naked form, glistening in the store's lights and drawing your eyes from one perfect part of her to the next. Those long and shapely legs, delicate and inviting nether lips, very well-rounded breasts, oh so kissable lips...";
							say "     A pleased giggle at being admired leaves the naiad's lips, then she captures your gaze with her azure-blue eyes and asks you 'What pleasures of your pet will you share with me, my dear jackal? May I make use of her no doubt expert tongue? Or perhaps you'll let me taste her sweet nectar - and yours...'";
							LineBreak;
							say "     Let Nermine lick the naiad's pussy (Y) or allow the water spirit to lap both your cock and Nermine's sex (N)? ";
							if player consents:
								LineBreak;
								say "     'Splendid!' the naiad bubbles, then athletically swings herself up on the counter, coming to sit on it right before Nermine. You feel the jackaless' pussy tremble in arousal around your hard shaft as she pants, 'Nermine lives to serve,' then lowers her head between the naiad's spread legs and starts to lap at her pussy. The blonde beauty moans deeply as Nermine goes down at her, bracing herself with both hands on the counter behind her and arching her back - which puts the two very well rounded breasts on her chest in an even better view.";
								say "     While Nermine takes care of the naiad on one end, you set both hands on her hips and hold her tightly, then pull your hips back, slowly but surely. The movement makes your knotted cock pull against her pussy, then slip out of it with a wet slurping sound and a gasp from your jackal pet. Not giving Nermine even a second to re-gain her composure, you immediately thrust all the way back into her again, making her scream in lust from being penetrated by a knot that's only just soft enough to fit. 'Yes master! Use your...' She groans as you pull out again, snatching a breath before continuing, 'needy pet. Use Nermine like the bitch she issSSS-YES!' Her plea is answered as your knot pops back in past her nether lips. 'Yes! More! AaahhH!'";
								WaitLineBreak;
								say "     Under the eager eyes of your naiad guest, you fuck Nermine's pussy with long strokes that stretch her opening around your half-hard knot. The water spirit even gives you more than one look of clear and very obvious interest, each time you make Nermine howl from taking your canine shaft. Pounding into the wantonly panting jackaless, you soon feel your knot growing larger once more, locking your bodies together again before much longer. With your hips tightly pressed against her sex, you slow down for a moment, nuzzling Nermine's neck and telling her how proud you are of her being such an amazing pet - sexy, obedient and a great fuck. Putting her hands on the naiad's inner thighs to brace herself, Nermine lifts her head and answers 'Nermine thanks her master, she loves serving him and fulfilling all his desires.' A moment later, the panting shopkeeper adds 'May his obedient pet now have a little reward? She craves being bred by such a handsome and strong male jackal...'";
								say "     Not one to deny such a pleasurable request, you speed up your thrusts into her, each of them met by Nermine rocking back against you. Reveling in the feeling of your swollen knot pulling against the sides of her pussy and your previous load squishing around your member in the jackal's tight sex, you feel the inescapable need to cum rise quickly inside you. As you're getting quite close, your relentless pounding pushes your jackal bitch over the edge and she suddenly howls in lust, writhing in orgasm. Her inner muscles tremble and twitch around your pointed canine cock, giving you a very pleasant feeling that makes you climax with her. Gripping Nermine's hips tightly, you shoot a second big load of cum straight into her willing womb.";
								WaitLineBreak;
								say "     Meanwhile, your naiad spectator has been stroking herself while watching the culmination of your coupling, two fingers of one hand deep inside her moist cave, the other hand busy rubbing her clit. It's obvious that she enjoys the show quite a bit, as the woman reaches her own orgasm just moments after you and your pet. Her soft moans almost rising to shouts, she shudders all over as femcum starts to gush from her pussy, creating a small puddle on the counter and splashing into Nermine's face. 'Thank you,' she pants in a satisfied voice after catching her breath, then continues with 'You have excellent service here. I need to get back to my lake now, but I will definitively be back later to browse your... wares.' With that, the beautiful woman slides off the counter and strides out the store door, totally confident in her nakedness.";
								say "     Having totally worn out your sexy pet, so far that she's about ready to doze off, you find yourself with a very groggy jackaless tied to you by your knot. Not wanting to stand here until it goes down, you have a look around in the store. Ah, perfect - there's a large bean-bag chair between all the clutter, and not too far away either. Guiding Nermine to it, you sink down on it with her, then spend a nice little time resting and holding the well-bred bitch against your chest. Some while later, your knot goes down far enough for you to pull out, allowing you to stand up and collect your clothes and gear. You leave the now sleeping Nermine sprawled on the bean-bag chair, a grin spreading on your face as you imagine someone coming in and finding her like that, naked and with your cum dripping out of her pussy.";
							else:
								LineBreak;
								say "     'Splendid!' the naiad bubbles, then looks around for a moment before her eyes fall on a large bean-bag chair between all the clutter in the store. 'Come over here please,' she says, pointing at it. You guide Nermine to it in a slow walk that has both of you gasp and pant as your cock moves inside her with each little step. Finally arriving at the chair, you lower yourself on it carefully, sinking into it as you half-sit half-lie with Nermine on your lap. 'That's just perfect,' your naiad visitor says with a smile, then kneels between your and Nermine's legs. The beautiful blond woman puts her hand on your balls, gently cupping and massaging them. She then puts the tip of her tongue against the base of your cock, licking over it and up, over where it vanishes into Nermine's pussy and the jackaless's pussy lips.";
								say "     Getting oral service from a water sprite is great - but you do feel the need to have her take care of your whole cock, as comfortable as it may feel inside your jackal pet right now. Sliding your hands under Nermine's thighs, you take hold of her and lift her up, slowly but surely. The movement makes your knotted cock pull against her pussy, then slip out of it with a wet slurping sound and a gasp from your jackal pet. Your last load floods out with it, soaking your crotch in warm, creamy cum - which the naiad almost greedily licks up. The sensations of her tongue sliding over your balls to get every little taste of your sperm are almost indescribably amazing, making you gasp and throw your head back on the soft cushion of the chair. Then those soft, soft lips find their way to the tip of your cock, and you instantly thrust up into her mouth. The naiad takes you face-fucking her very well, eagerly moaning around your cock as she meets each thrust and uses her tongue on your manhood.";
								WaitLineBreak;
								say "     After sucking on your cock for a while, the naiad pulls her mouth off and starts to just stroke it slowly. From the increase in moans from Nermine at that point, she's no doubt getting an amazing bit of cunnilingus from the human-like blonde. Then suddenly, you feel the naiad's delicate hand close around your canine shaft, taking it by the knot and bending it a bit until the tip brushes against something soft and just a bit wet - Nermine's pussy lips. Eager to take her deeply again you immediately thrust all the way back into her again, making her scream in lust from being penetrated by a knot that's only just soft enough to fit. 'Yes master! Use your...' She groans as you pull out again, snatching a breath before continuing, 'needy pet. Use Nermine like the bitch she issSSS-YES!' Her plea is answered as your knot pops back in past her nether lips. 'Yes! More! AaahhH!'";
								say "     Under the eager eyes of your naiad guest, you fuck Nermine's pussy with long strokes that stretch her opening around your half-hard knot. The water spirit licks and strokes both of you as you do, always ready to give a bit of extra stimulation. Pounding into the wantonly panting jackaless, you soon feel your knot growing larger once more, but just as you want to ram it in and lock your and Nermine's body together, the naiad's hand closes around your shaft again, blocking your entry. 'Don't knot her please,' the naked woman says, then continues 'I want to feel you come in my mouth and taste your pet's nectar on your cock when you do.'";
								WaitLineBreak;
								say "     Not one to deny such a pleasurable request, relent and wait for your knot to enlarge fully, making it too big to fit into Nermine, then get right back to fucking her. Speeding up your thrusts compared to before, each of them meets Nermine's butt like a little slap, making her bounce up again and again. Reveling in the feeling of your swollen knot pushing against the jackal's pussy lips and the naiad's tongue playing over it, you feel the inescapable need to cum rise quickly inside you. As you're getting quite close, your relentless pounding pushes your jackal bitch over the edge and she suddenly howls in lust, writhing in orgasm. Her inner muscles tremble and twitch around your pointed canine cock, giving you a very pleasant feeling that makes you climax with her.";
								say "     A thick pulse of your seed splashes up, directly into Nermine's willing womb and you can feel her female juices running down over your shaft and balls. Then the naiad suddenly pushes Nermine's hips up, making your cock slip out so she can slide her lips over it, suckling eagerly while searching out Nermine's femcum with her tongue. After hungrily catching and swallowing your load, the naiad gives Nermine's pussy another lick, then stands up. 'Thank you,' she pants in a satisfied voice after catching her breath, continuing with 'You have excellent service here. I need to get back to my lake now, but I will definitively be back later to browse your... wares.' With that, the beautiful woman saunters over to and out of the store door, totally confident in her nakedness.";
								say "     Having totally worn out your sexy pet, so far that she's about ready to doze off, you gently slide out from under Nermine and lower her on the soft cushion. Leaving the soon sleeping Nermine on the bean-bag chair, you to stand up and collect your clothes and gear. As you finish getting dressed, you can't help but grin at the sight of your obedient pet like that and imagine someone coming in and finding her, naked and with your cum dripping out of her pussy...";
						else:
							LineBreak;
							say "     Being declined like that doesn't make the naiad happy - not at all. In fact, she's getting angrier by the second at not getting her will. She waits a moment longer, glaring at you, then huffs 'I see that this store only contains cheap trinkets after all, being sold by a worthless slut. You're not worth a second more of my attention.' Creating a wave of water from thin air that slams the door open with a bang, the naked woman struts outside after that, leaving behind a large puddle and several broken items washed out of stands and off shelves near the door. Shrugging at the glaringly obvious case of sour grapes on the naiad's part, you turn your attention back to your sexy pet Nermine impaled on your cock.";
							say "     Pounding your shaft into the wantonly panting jackaless, you feel your knot growing larger once more, soon locking your bodies together again. With your hips tightly pressed against her sex, you slow down for a moment, nuzzling Nermine's neck and telling her how proud you are of her being such an amazing pet - sexy, obedient and a great fuck. In between moans, she answers 'Nermine thanks her master, she loves serving him and fulfilling all his desires.' A moment later, the panting shopkeeper adds 'May his obedient pet now have a little reward? She craves being bred by such a handsome and strong male jackal...'";
							say "     Not one to deny such a pleasurable request, you speed up your thrusts into her, each of them met by Nermine rocking back against you. Reveling in the feeling of your swollen knot pulling against the sides of her pussy and your previous load squishing around your member in the jackal's tight sex, you feel the inescapable need to cum rise quickly inside you. As you're getting quite close, your relentless pounding pushes your jackal bitch over the edge and she suddenly howls in lust, writhing in orgasm. Her inner muscles tremble and twitch around your pointed canine cock, giving you a very pleasant feeling that makes you climax with her. Gripping Nermine's hips tightly, you shoot a second big load of cum straight into her willing womb.";
							WaitLineBreak;
							say "     Having totally worn out your sexy pet, so far that she's about ready to doze off, you find yourself with a very groggy jackaless tied to you by your knot. Not wanting to stand here until it goes down, you have a look around in the store. Ah, perfect - there's a large bean-bag chair between all the clutter, and not too far away either. Guiding Nermine to it, you sink down on it with her, then spend a nice little time resting and holding the well-bred bitch against your chest. Some while later, your knot goes down far enough for you to pull out, allowing you to stand up and collect your clothes and gear. You leave the now sleeping Nermine sprawled on the bean-bag chair, a grin spreading on your face as you imagine someone coming in and finding her like that, naked and with your cum dripping out of her pussy.";
					-- 5:     [no one comes]
						say "     Your knot pulls and teases at her pussy with every thrust, and soon she is writhing underneath you in orgasm, howling in lust. Her walls clenching tight around your pointed canine cock gives you the last push you needed yourself, triggering your own powerful orgasm. Your mind explodes in pleasure as you shoot your load into her all too willing womb, with Nermine groaning and panting as she feels your jackal seed painting her insides and claiming her body.";
						say "     Eventually you come down from the heights of pleasure and find yourself standing there gripping the counter, your knot slowly shrinking in Nermine's body. Looking down, you notice that the jackal bitch is all but unconscious underneath you, a look of well fucked pleasure on her face as she lies sprawled out on her shop counter, your fertile seed bottled up in her pussy by your canine knot. After stroking your hands appreciatively down her soft-furred sides and reveling for a moment in the fact that the sexy bitch is yours - your pet, to fuck and breed when you want - you pull yourself out of the spent shopkeeper. With a smile on your lips, you leave her lying there spent on the counter to recover on her own, and you almost hope another customer comes in to find her lying there like that...";
				jackalmanify;
				stop the action;
			else:
				say "     Nermine grins eagerly as she pulls aside the dark curtains leading into the back room. You find your own muzzle stretching in a grin as you watch how eager she is to please you now, and step forward to look into the back room of the shop. Looking around, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it, and a large comfy looking chair positioned next to it.";
				say "     Your examination of the room is interrupted, by Nermine stepping in the room behind you, her soft breasts pressing up against your back as she runs the tips of her claws through your fur teasingly, 'Does Nermine's master like?' The sexy jackal whispers lustily into your ears as she rubs her body up against your back, her hands reaching around to stroke your chest, even as they slowly trail down your body to trace over your stiff canine member teasingly. 'Nermine wishes her master would make himself right at home in Nermine's house, everything Nermine owns is her masters after all, mmm including Nermine herself.' The eager jackal pants in your ear, obviously getting even more excited as she breathes in your strong dominant scent. You find yourself panting as well, from the jackal-woman's soft experienced touches, as she strokes her hands needily over your body. Your lust rising, it is all you can do to lead your eager little pet jackal over to the large comfy chair, feeling the need to sit for a minute.";
				say "     [WaitLineBreak]";
				say "     Nermine grins happily as you settle into the large surprisingly comfortable chair, and before you can comment the lusty black jackal-woman is on her knees before you, her hands stroking the soft fur of your thighs even as she leans forward to trail her canine tongue along the base of your stiff cock. Your hands grip the chair arms tightly, as she then leans forward slightly giving you a wonderful view of her cleavage, 'Mmm Nermine noticed master liked Nermine's breasts. Let Nermine show her handsome master just what she can do with them.' The jackal bitch says in a soft teasing tone as she cups her soft breasts in her hands, before leaning forward even further so your cock is nestled in between her soft pillows, making you pant in pleasure as you feel yourself thrusting upwards slightly.";
				say "     Nermine grins happily at your sign of pleasure as she presses the soft fur of her breasts around your cock, moaning as she moves herself up and down, her long tongue licking the tip of your pointed canine cock whenever it comes in reach. You find yourself yipping in pleasure as the submissive jackal-woman lavishes her attention on your rod, her hand occasionally teasing your knot as it swells with arousal, even as the feel of her silken soft fur on your sensitive cock makes you shudder with excitement. Unable to hold yourself back, your jackal-like howl of pleasure soon echoes through the back room, as your seed spills out over your pets breasts, the sticky white liquid coating her face even as she eagerly licks at your spurting cock.";
				WaitLineBreak;
				say "     Eventually you relax back in the chair, as your pet sits back on her haunches, panting happily, her lust fogged eyes staring up at you adoringly even as your seed begins to dry on her breasts. Grinning you reach forward and pet her on the head a couple times and let her know what a good little pet she is being, which makes her smile as her tail wags eagerly behind her. You stroke her head for a while, until you feel recovered enough to head back out to the store, your new pet following along behind with your seed still adorning her breasts, making you grin at how proud she seems to be to have your cum displayed so prominently on her body, as she begins to go about her tasks in the store. The jackalman was definitely right about just how much this would change the lovely shopkeepers point of view, you find yourself thinking idly as you watch her move around the area happily, a grin spreading across your muzzle as you realize just how much better she looks as a lusty little pet for you to play with.";
				jackalmanify;
				stop the action;
		else:
			say "     'Nermine thought her mistress would never ask!' The naked jackal-woman says with a smile, turning to look at the curtains to the back room, before looking back at you eagerly, 'But where does mistress want to play with her little pet?' She asks you with a teasing look in her eye as she runs her claws through her soft black fur, 'Nermine has nice bed for mistress to lie on while her pet services her, but she finds idea of mistress playing with her in store fun too...' The jackal bitch moans eagerly at the thought of both, as she waits for you to decide how you want to play with her. Do you take her in the store?";
			if player consents:
				say "     Nermine grins eagerly as you gesture to the counter, leaning back against it as she runs her claws up her inner thigh teasingly, 'Mistress wants to have her pet on display just like she was slutty little merchandise?' Nermine moans teasingly as she leans back even further on the counter,spreading her legs slightly and giving you a good view of her damp heat filled pussy as she lifts one of her legs up to rest on the counter. 'Nermine can't wait to have her mistress play with her and show the world what a good little pet she makes...' She moans as she lowers one of her hands down to pull her lips apart to give you a better view.";
				WaitLineBreak;
				say "     You grin as you watch the storekeeper acting just like a horny bitch, as she spreads herself wide for you to play with, your own pussy growing damp and eager with arousal as you watch the formerly proper storekeeper rub herself in front of you. Enjoying the show, you can't help but decide to get involved at some point, moving around the counter behind the lusty jackal-woman, as she moans and spreads her legs fully on the counter. You teasingly wrap your arms around her chest, your hands joining her own as you help her tease her damp slit. She moans eagerly as she leans back against you, and you enjoy whispering teasing words of praise into her canine ears as you tell her what a good pet she is being for you.";
				Say "     Nermine pants eagerly under your hands, her eyes half lidded with lust as she inhales your intoxicating scent, as you massage her wonderfully soft breasts, before long she is begging eagerly for your teasing touches, and begging to serve you as a proper pet. The feel of her warm body as she is propped up against your chest makes your own body begin to respond eagerly as well, growling almost as damp and wet as she is as you describe all the lovely little ways you could have her serve you as a pet. She pants eagerly as her arousal increases with each suggestion, begging eagerly for you to let her serve you, or for her to service others while you watch, animals or men, willing to do anything you want her to as long as you let her be your slutty little pet.";
				WaitLineBreak;
				say "     You find yourself growing even more aroused as you teasingly describe the lewd acts the two of you could do together, imagining all the ways you can play with your new pet making your body almost as hot as hers is. Soon Nermine can't hold it in any longer, and she cries out with orgasm as she shudders under your touch, the feeling of power as well as the increased scent of her Jackal heat washing over you, and triggering your own orgasm as well, making you clutch her tight to you as you gasp in pleasure. Soon you both recover, and you grin at the mess Nermine made of the counter, which is almost as much of a mess as the one that is running down from between your legs.";
				say "     Your pet notices your mussed fur as you look down, and without even asking she is soon down on all fours in front of you, eagerly licking your juices from your paws. You grin at the feel of her soft tongue grooming your fur, and lean back to enjoy the afterglow, and your pets talented tongue, as she licks her way up your body to clean you properly. As she buries her muzzle in your crotch to finish giving you a thorough cleaning, you moan and think that the jackal man who gave you the ankhs promise was definitely right on the money, Nermine is certainly seeing things much differently now that you have finished changing, and you definitely think its a change for the better, you find yourself thinking with amusement, even as her tongue eagerly begins to lick you into a second orgasm.";
				jackalmanify;
				stop the action;
			else:
				say "     Nermine grins eagerly as she pulls aside the dark curtains leading into the back room. You find your own muzzle stretching in a grin as you watch how eager she is to please you now, and step forward to look into the back room of the shop. Looking around, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it,and a large comfy looking chair positioned next to it.";
				say "     Your examination of the room is interrupted, by Nermine stepping in the room behind you, her soft breasts pressing up against your back as she runs the tips of her claws through your fur teasingly, 'Does Nermine's mistress like?' The sexy jackal whispers lustily into your ears as she rubs her body up against your back, her hands reaching around to stroke and tease your own soft nipples as she does so. 'Nermine wishes her mistress to make herself right at home in Nermine's house, everything she owns is her mistress['] after all, including Nermine herself...' She pants in your ear, obviously getting even more excited as she breathes in your strong dominant scent. You find yourself panting as well, from the jackal-woman's soft experienced touches, as she strokes her hands needily over your body. Your lust rising, it is all you can do to lead your eager little pet jackal over to the mattress, where you can sprawl out comfortably. ";
				WaitLineBreak;
				say "Lying down on the bed, you position yourself on your back on the cushions, so you can watch with amusement as Nermine lowers herself down to all fours like an animal, as she crawls into bed with you. Deciding to see just how much fun you can have with this, you spread your legs slightly, giving her a glimpse of your soft jackal pussy, and are amused to see how her tongue immediately begins to lick along the sides of her mouth with desire. Grinning, your own body almost as aroused as hers is by this point, you spread your legs all the way so she can crawl up between them and service you properly, which the newly submissive jackal bitch wastes no time in doing.";
				say "     The feel of her long canine tongue as it licks over your own needy pussy is a small taste of heaven, as you lean back into the silk covered cushions and groan in pleasure, soon her tongue is teasing the edges of your pussy as it licks over your crotch, making you lift your hips up in excitement with each pass of her flexible tongue. Nermine helps by shifting so you can rest your legs up on her shoulders, the feel of her head between your soft furry thighs is amazing, and you lose yourself for a minute in the pleasure of her soft fur rubbing up against your own, the silk sheets underneath you feeling amazing on your back, even as your canine hindpaws rub up against Nermine's soft back. Once she has you positioned comfortably, she wastes no time lavishing your pussy with her attentions, her hands stroking your thighs even as you gasp at the feel of tongue pushing into your body.";
				WaitLineBreak;
				say "     Her narrow canine muzzle rubs up against your lips as she works her tongue in as far as it can go, shifting and teasing it around within you as you groan and clench the cushions underneath you in pleasure, the feel of her eagerly licking and nibbling on your clit as she laps up your juices is indescribably amazing, and after what seems like no time at all, and an eternity of pleasure at the same time, your body is shaking in a mind blowing orgasm as you let out a long canine howl which echoes around the room. Nermine's body shudders as well as you rub your feet on her shoulders, as she laps at your pussy, eager to clean every bit of your juices up, before eventually sitting back on her haunches, your feet settling back down on the mattress as you relax in the afterglow. Looking at your eager pet, and how happy she seems to be with her new role makes you smile, and you pet the mattress next to you, and she eagerly takes the invitation to lie down and tuck herself up against your side. You smile as you drift pleasantly in and out of consciousness for a while, enjoying the new situation and your new pet immensely.";
				jackalmanify;
				stop the action;
	if JackalManTF is 4:
		say "     'Oh my, Nermine sees her lovely jackal guest found another ankh on [PosAdj] own!' The jackal-woman says with a smile as she looks you up and down eagerly, 'She should have expected no less from someone as obviously resourceful and handsome,' Nermine says as she leans forward to look your changed body over, blinking slightly as she gets a whiff of your strong jackal scent. 'Amazing,' She says as she begins to pant eagerly, 'Nermine has never seen anything so wonderful, just looking at such a strong, handsome jackal is making her feel all sorts of aroused,' the shopkeeper says with a lusty moan as she begins to rub her breasts through her t-shirt, her reaction causing you to grin as she moans like a bitch in heat. Seeing your eyes on where she is rubbing her breasts, Nermine slowly reaches down to the bottom of her shirt, and teasingly begins to draw it up inch by inch.";
		say "     The sight of the formerly proper shopkeeper stripping before you somehow only makes the situation seem even better, as her shirt is soon tossed aside while she rubs her hands over her soft black breasts for your amusement. 'Mmm Nermine think maybe she should just work like this from now on, if nice handsome jackal-likes her breasts so much,' Nermine says lustily, as she stretches to give you a good view of her own full jackal body, one of her hands straying down to the clasp of her jeans as you watch. Seeing your obvious approval, she wastes no time in unclasping her jeans and slowly stripping them off as well, eagerly displaying her now naked body before you as she poses. 'Nermine never knew this could feel so good, or that she could want to please someone so much...' The jackal-woman moans eagerly as she runs her hands through her now naked black fur.";
		WaitLineBreak;
		say "     'Please won't the proud jackalman help [PosAdj] little jackal out? Nermine needs to be fucked so very very badly, she wants to please her new jackal master...' The shopkeeper says, eagerly, seeming almost surprised at her own begging words, before grinning as she realizes their truth, 'Yes... a master, nice strong powerful jackal master, just what Nermine always needed...' She moans eagerly as she stares up at you with adoration, the sight making you grin as you realize the scent laden ankh is working exactly the way the strange jackal man promised it would, you just can't wait to see what kind of fun you can have with this in the back room...";
		now RareQuesting is 13;
		now NermineTalk is 4;
		stop the action;
	if JackalManTF is 3:
		now lastfuck of Nermine is turns;
		if cocks of the player is greater than 0:
			say "     'Ah yes! Nermine's new friend is ready to play?' The happy jackal-woman says with a canine grin on her silver and black muzzle, 'And such a handsome looking jackal too,' She says as she reaches out and strokes the tip of her claw along the side of your own jackal-like muzzle, idly tracing the swirls of gold the ankh left in your fur. Her soft touch makes your cock harden even as you nod, and Nermine licks her lips as she looks down at your stiff rod, one of her hands tugging at the neck of her t-shirt slightly as if she was hot. 'Mmm, it has been so long since Nermine has had a proper partner to play with, Nermine is so looking forward to this,' she says teasingly as she leans forward and kisses the tip of your muzzle teasingly, 'Maybe the back room would be a better place for this, so there will not be any interruptions to an enjoyable time.' The jackal-woman says teasingly, as she steps back from the counter, running her hands along her sides teasingly before pulling aside the dark curtain behind her and stepping through.";
			say "     You can see her glance teasingly over her shoulder at you as her tail wags invitingly behind her, giving you a teasing glimpse of her legs underneath her soft skirt as she vanishes into the darkness beyond. You grin as you move around the counter, to follow, your cock stiff and eager to play with the constantly teasing jackal. Pushing aside the curtains you step forward to find yourself in the back room of the shop. Looking around, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it,and a large comfy looking chair positioned next to it. However your attention is immediately drawn to where Nermine is lying teasingly on the bed, clothed in only her soft black fur as she grins at you.";
			WaitLineBreak;
			say "Feeling an answering grin stretching across your own canine muzzle, you waste no time in discarding your pack as you stalk over to the bed yourself, your cock rock hard as she licks the tip of her claw as you approach, before tracing her claw down the edge of her full breasts. Easing yourself down onto the bed beside her, you can feel yourself growing even more aroused as she reaches out and pulls you closer to her, rubbing her own dark fur up against your own. 'Let's play,' she whispers in your ear, before covering your jackal muzzle with her own, her eyes closed as she pulls you tight up against her body. You moan into her mouth as you can feel her damp pussy rubbing up against your [cock of player] cock, and you can feel her grin against your mouth as she begins to position herself so you can enter her.";
			say "     You groan into her mouth as your tongues dance together eagerly, as you feel your cock sink into her body at last, her warm heat engulfing your shaft, even as her hands roam over your body. Letting your own hands wander, you begin to thrust into her eager passage, the kiss breaking as she begins to pant and yip needily, your own canine voice soon mingling with hers as your pleasure builds quickly. Soon you are kissing and groping each other eagerly as you roll around on the mattress, enjoying each other sexually in an act somewhere between making love, and rutting like animals. Eventually your cock explodes in pleasure as you spill your load of seed deep into her body, while she clutches you close and groans in her own orgasm. The two of you clutch each other tight, still locked together in passion even as your orgasm begins to fade, Nermine kissing you deeply several more times, eventually though she pulls herself away, leaving you to groan as you flop back on the soft mattress completely spent.";
			WaitLineBreak;
			say "     As she pulls herself up and begins to slip her clothes on, she looks back at you teasingly to make sure you are watching, sauntering sexily over to the curtain with her tail lifting her skirt up teasingly. Pausing at the curtain, she looks back at you for a minute with a smile on her face. 'Nermine thanks you for the most amazing time, It is so rare for her to find a real partner these days, all of them are so submissive they are only fit for little pet in bed not partner. You though,' She says with a wink, 'You are best sex Nermine has had in long time, Nermine thinks we will have to do this again soon yes?' The jackal-woman says with a teasing lick of her lips, before she vanishes through the curtain, leaving you lying there on the bed with a large smile on your muzzle, already anticipating the next time...";
			stop the action;
		else:
			say "     'Ah yes! Nermine's new friend is finally ready to play?' The happy jackal-woman says with a canine grin on her silver and black muzzle, 'And such a beautiful looking jackal lady too,' She says as she reaches out and strokes the tip of her claw along the side of your own jackal-like muzzle, idly tracing the swirls of gold the ankh left in your fur. Her soft touch makes your body grow warm as your pussy dampens in arousal even as you nod, and Nermine licks her lips as she looks over your body, one of her hands tugging at the neck of her t-shirt slightly as if she was hot. 'Mmm It has been so long since Nermine has had a proper partner to play with, Nermine is so looking forward to this,' She says teasingly as she leans forward and kisses the tip of your muzzle teasingly, 'Maybe we should go to back room so we won't have any interruptions Nermine is thinking.' The jackal-woman says teasingly, as she steps back from the counter, running her hands along her sides teasingly before pulling aside the dark curtain behind her and stepping through.";
			say "     You can see her glance teasingly over her shoulder at you as her tail wags invitingly behind her, giving you a teasing glimpse of her legs underneath her soft skirt as she vanishes into the darkness beyond. You grin as you move around the counter to follow, your body hot with need, as you follow the feminine scent of the constantly teasing jackal-woman. Pushing aside the curtains you step forward to find yourself in the back room of the shop. Looking around, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it,and a large comfy looking chair positioned next to it. However your attention is immediately drawn to where Nermine is lying teasingly on the bed, clothed in only her soft black fur as she grins at you.";
			WaitLineBreak;
			say "     Feeling an answering grin stretching across your own canine muzzle, you waste no time in discarding your pack as you stalk over to the bed yourself, your arousal spiking as she licks the tip of her claw at your approach, before tracing her claw down the edge of her full breasts. Easing yourself down onto the bed beside her, you can feel yourself need growing even more desperate as she reaches out and pulls you closer to her, rubbing her own dark fur up against your own. 'Let's play,' she whispers in your ear, before covering your jackal muzzle with her own, her eyes closed as she pulls you tight up against her body. You moan into her mouth as you can feel her damp pussy rubbing up against the soft fur of your leg, and you can feel her grin against your mouth as she begins to move teasingly up against you, one of her fingers tracing along the outside of your own damp pussy teasingly.";
			say "     You groan into her mouth as your tongues dance together eagerly, as you feel her soft furred hands roam over your body teasingly, lingering on your pussy and breasts as she rubs herself up against you. Letting your own hands wander, you begin to rub your body against hers as well, your own hands returning the favor as you tease her swollen clit with your fingers, the kiss finally breaking as she begins to pant and yip needily, your own canine voice soon mingling with hers as your own pleasure builds just as quickly. Soon you are kissing and groping each other eagerly as you roll around on the mattress, enjoying each other sexually in an act somewhere between making love, and rutting like animals. Your hands pushing into each other as your softly furred bodies twine together on the soft silken sheets of the mattress. Finally the feeling of her claws tracing lighting along the inside of your damp passage is just too much to take, and you let out a jackal-like bark as you orgasm around her hand, shuddering in ecstasy even as she clutches you close and groans with her own orgasm, her passage clenching your own fingers tight as her damp fluids spill over your hand. The two of you clutch each other tight, still locked together in passion even as your orgasm begins to fade, Nermine kissing you deeply several more times, eventually though she pulls herself away, leaving you to groan as you flop back on the soft mattress completely spent.";
			WaitLineBreak;
			say "     As she pulls herself up and begins to slip her clothes on, she looks back at you teasingly to make sure you are watching, sauntering sexily over to the curtain with her tail lifting her skirt up teasingly. Pausing at the curtain, she looks back at you for a minute with a smile on her face. 'Nermine thanks you for the most amazing time, It is so rare for her to find a real partner these days, all of them are so submissive they are only fit for little pet in bed not partner. You though,' She says with a wink, 'You are best sex Nermine has had in long time, Nermine thinks we will have to do this again soon yes?' The jackal-woman says with a teasing lick of her lips, before she vanishes through the curtain, leaving you lying there on the bed with a large smile on your muzzle, already anticipating the next time...";
			stop the action;
	if JackalBoyTF is 4:
		now lastfuck of Nermine is turns;
		if cocks of the player > 0:
			if cunts of the player > 0: [herm]
				say "     'Ah Nermine's new little pet wants to pleasure her mistress like a good little jackal pet?' The jackal-woman asks with an amused smile as she looks over your slim body. Her gaze lingers on your male and female parts, making your soft body tingle with desire and your cock twitch in its sheath while your sex dampens with desire. ";
			else: [male]
				say "     'Ah Nermine's new little pet wants to pleasure her mistress like a good little jackal boy?' The jackal-woman asks with an amused smile as she looks over your slim body. Her gaze lingers on your manhood, making your soft body tingle with desire and your cock twitch in its sheath. ";
		else: [female]
			say "     'Ah Nermine's new little pet wants to pleasure her mistress like a good little jackal slut?' The jackal-woman asks with an amused smile as she looks over your slim body. Her gaze lingers on your female parts, making your soft body tingle with desire. ";
		say "Eagerly, you nod to the beautiful woman. 'Well, Nermine is always happy to reward her little pet for such loyal service,' the jackal-woman says as she gives you a wink, 'Perhaps if the delightful little thing would follow her into the back room she can see about a proper reward.' With a sultry smile, she then turns and lifts the dark curtains behind her, gesturing for you to follow as she steps through herself, her long jackal's tail swaying temptingly in front of you as you eagerly hurry after your mistress.";
		say "     Pushing aside the curtains, you find yourself in a rather large back room with boxes piled high along one side. However, your attention is immediately drawn to the other side of the room, where a soft mattress lies on the floor, piled high with blankets. Next to the mattress is a small writing desk with a laptop on it, and a large comfy looking chair. Walking up to the soft matress, Nermine slowly tugs her t-shirt off, letting her well-rounded black breasts slip free as she tosses it to the side, her skirt soon following suit. You find your muzzle watering with desire as she sprawls back across the mattress, allowing you to feast your eyes on the gorgeous sight of her spread out before you. Her soft pink nipples and damp slit make your canine tail wag eagerly even as your cock extends out of its sheath and you begin to pant in excitement.";
		WaitLineBreak;
		say "     A smug smile crosses Nermine's muzzle as she enjoys your obvious adoration of her sexy body. 'Well,' she says in a teasing voice as you find yourself slowly drifting closer, your mind filled with lust. Nermine smiles and continues, 'Is the little jackal just going to stand there and stare, or will the good pet come play with [PosAdj] mistress?' You need no second invitation to give in to your building desires, and soon find yourself down on all fours and crawling up onto the mattress where your lovely owner is waiting. Crawling up to her, you find yourself savoring her excited scent, and the way your new body so eagerly responds to her. 'Ah yes, if the sweet pet takes care of Nermine, she will respond in kind, as well,' Your mistress pants and lifts her hind-paw up to brush against your ";
		if cocks of player > 0 and cunts of player > 0:
			say "stiff erect cock, stroking up and down along its length several times. Soon, she also teases your damp slit, her soft touch making you quiver with need.";
		else if cocks of player > 0:
			say "stiff erect cock, stroking up and down along its length several times.";
		else if cunts of player > 0:
			say "damp slit, her soft touch making you quiver with need.";
		say "     You crawl up over your mistress's prone form until Nermine lifts up one of her slender hands and pulls your muzzle down to meet her own silver-painted one in a deep kiss, your tongues dancing with each other as your mouths lock together for a time. When she finally breaks the kiss, the jackaless leans back with a smile as you pant with need, her body lying underneath you waiting for you to please and pleasure it like a good little pet. You are slightly unsure of what to do first, but her soft, black-furred breasts and the beautiful pink tipped nipples seem to draw you in as you lower your head down to lick and tease them. Your tongue lashes over first one nipple and then the other as your hands rub over the soft swell of her breasts. As her soft moans of pleasure sing through you like the sweetest of music, your [if cunts of player > 0]sex clenching [else]cock throbbing [end if]with desire.";
		WaitLineBreak;
		say "     Nermine reaches up and begins to run her claws softly along your sides as you nip and lick and her sensitive breasts. The feeling of her soft and sensual touches make you feel even more submissive and wanton as she pets you. You bring one of your own clawed hands up to help you tease and work at her soft slit - her nether lips feeling as smooth as silk as they part beneath your touch. You are happy at the way her hips curve up to meet your hand eagerly, feeling so proud of how good you are becoming at pleasuring your fine dominant owner.[if cocks of player > 0] Imagination going wild, you can almost feel her soft wetness already engulfing your canine cock.[end if]";
		say "     You feel a wash of pleasure as Nermine shudders in orgasm at your attentions, her hands gripping your fur tightly as she gasps loudly from the intense pleasure her pet is providing. Still basking in the warm glow of orgasm, she uses one of her hands to guide your face up from where you were worshiping her chest so she can lock muzzles with you again. The feel of her mouth against yours even as she strokes your side softly is too much for your pleasure-hazed mind, and you find yourself gasping into her muzzle as your own body shakes in climax as well[if cocks of player > 0], your seed shooting onto her soft belly as you moan in pleasure[end if].";
		WaitLineBreak;
		say "     [if cocks of player > 0]When the kiss is over, Nermine pushes your head down to the mess you made on her stomach. Quickly licking it up like a good pet, you smile up at her pleased face with the taste of your own cum and her soft fur still filling your muzzle. [end if]Smiling benevolently, she draws you down next to her on the soft blankets. There, you feel nice and safe tucked up against her side as you both relax and cuddle quietly, letting your respective orgasms run their course, lust and arousal ebbing off slowly while clawed hands idly run over your fur in petting motions. As you lie there cuddling with your strong and dominant owner, you find yourself enjoying how nice it is just to be a lovely little jackal pet, your greatest reward the pleasure of serving and bringing pleasure to your new wonderful mistress. After a while of lying there softly together, Nermine's soft touches grow more sensual, and you happily respond and return the favor, kissing and pleasuring her wonderful body until soon you are both crying out in orgasm yet again.";
		say "     Eventually she licks the top of her head a few times with her tongue before pulling herself up off of the mattress and looking back down at you. 'Nermine just knew from the first moment that the eager visitor walked into her store that deep down [SubjectPro of player] wanted to be a pet. To have someone big and strong take care of [ObjectPro of player]. Nermine is so happy she was asked for her help in making the happy little jackal [if cunts of player > 0]pet[else]boy[end if] that [SubjectPro of player] was destined to be. Now Nermine has such an amazing pet to have fun with, and a helper around the store, and the happy pet has Nermine to help and pleasure. Everyone is happy.' She says with a canine grin, then gathers up her clothing before heading out into the shop, leaving her happy jackal pet nodding behind her. You realize just how lucky you are to have such a wonderful and caring owner, and feel happy and eager to become even more the perfect little jackal toy for your mistress...";
		Jackalboyify;
		stop the action;
	if JackalBoyTF is 3: [----------------------]
		now lastfuck of Nermine is turns;
		if cocks of the player > 0:
			if cunts of the player > 0: [herm]
				say "     'Ah Nermine's new little pet wants to pleasure her mistress?' The jackal-woman asks with a soft smile as she looks over your male body. Her gaze lingers on your male and female parts, making your soft body tingle with desire and your cock twitch in its sheath while your sex dampens with desire. ";
			else: [male]
				say "     'Ah Nermine's new little pet wants to pleasure her mistress like a good little jackal boy?' The jackal-woman asks with an amused smile as she looks over your slim body. Her gaze lingers on your manhood, making your soft body tingle with desire and your cock twitch in its sheath. ";
		else: [female]
			say "     'Ah Nermine's new little pet wants to pleasure her mistress like a good little jackal slut?' The jackal-woman asks with an amused smile as she looks over your slim body. Her gaze lingers on your female parts, making your soft body tingle with desire. ";
		now lastfuck of Nermine is turns;
		if cocks of the player is greater than 0:
			if cunts of the player is greater than 0:
				say "'Ah Nermine's new little pet wants to pleasure her mistress?' The jackal-woman asks with a soft smile as she looks over your male body, your cock erect with need even as your pussy clenches in excitement. 'Well...' the lovely jackal lady says thoughtfully as she glances around the store for a moment, 'It does look like Nermine has some time to kill, and her little helper is starting to look very sexy... Perhaps she will let you help her out for a minute.' Nermine says as she turns and lifts the dark curtains behind her, gesturing for you to follow as she steps through herself, her long jackals tail swaying temptingly in front of you as you hurry after her. Pushing aside the curtains, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it,and a large comfy looking chair. Your eyes however, are immediately drawn to your mistress, as she moves over to the chair and begins to teasingly stroke lift the front of her short skirt up. You find yourself riveted to the sight of her soft pussy as it slowly comes into view, your jackal tail wagging behind you as she exposes herself to you one inch at a time.[line break]";
				say "Seeing she has your full attention, the sexy jackaless carefully sits down in her comfy chair, making sure to keep her lovely pink lips in sight at all times as she adjusts her position slightly before spreading her legs. Somewhat surprised and excited at her position, you find your eyes glancing at the soft mattress for a second before they refocus on your mistresses onyx form. Nermine seems to notice your glance though, as a smile tugs at the corner of her muzzle while she tsks at you, 'Bed is for proper jackals and their fully jackal pets only,' She says teasingly as she crooks one of her furred fingers at you to entice you to come closer. 'If the little pet wants to play on the bed, they will have to earn it by being even more helpful and nice to Nermine.' The jackal-woman says as you find yourself moving closer, 'And Nermine thinks you can start being nice and helpful by putting that sexy new muzzle of yours to good use,' She says as you reach her, lightly tracing one of her claws along the outside of her damp lips, leaving no question as to what she means for you to do.[line break]";
				say "You find yourself smiling eagerly as you sink to your knees in front of her, a proper position for the worship of her divine looking sex, slowly lowering your long muzzle down to her crotch, reveling in her powerful female musk. You lick your lips slightly in anticipation, before letting your canine tongue trace along her lovely pink lips, her beautiful taste filling your mouth as you draw your tongue across her lips again. Your sexy jackal mistress reaches down one of her hands and begins to pet and stroke your head in encouragement, the tangible sign of her approval making you shudder with delight as your own cock grows harder even as your pussy floods with wetness in response to her touch. Happy to be able to serve her in this manner, you waste no time in renewing your attention to her damp sex, your tongue pressing deeper into the body with every stroke as you lap happily at her like a good little pet. Your eyes close and you moan into her slit as you feel one of her soft paws rubbing up against the inside of your legs, and you can't help but spread them slightly as you lean forward, allowing her soft footpaw to stroke up and down your inner thighs. A soft stroke on your headfur as well reminds you to return your attentions to the task at hand, and you begin to put your new canine muzzle to its proper use as you use your long tongue to tease and probe her depths.[line break]";
				say "Soon your mistresses footpaw is rubbing up against your damp slit, even as it teases your balls with each stroke, your orbs dancing pleasantly under her attentions. The top of her foot slowly strokes even higher, its long teasing strokes letting your mistress rub her soft jackal furred paw against your both your needy clit and stroke along the bottom of your cock with each pass of her canine paw, making you shudder and groan in pleasure. Your eyes drift closed as your world narrows down to the feeling of pleasuring the jackal's delicious slit with your mouth, and the feeling of her soft hand on your head and her teasing paw between your legs. Your eager attentions soon bear fruit, as suddenly your Nermine moans above you, and your mouth is flooded with the amazing taste of her warm juices, even as her hand clenches your head tightly and her foot rubs up against your female sex eagerly, the fur of her leg teasing your rod as it rubs against it lightly. The taste, the sensations of her soft touches, combined with the realization that you brought your mistress pleasure like a good little pet, all swirl around pleasurably in your head, triggering your body to shudder in its own powerful orgasm as well, shooting your thick canine seed all over your mistresses leg even as your female sex coats her paw in its juices, as you shudder in orgasm underneath her hands. Panting heavily you slowly draw your muzzle out of her crotch, licking your lips slightly to savor her flavor as you look up at your mistress to see how pleased she is by your actions.[line break]";
				say "'That was very very nice, my little pet was certainly a good little helper today.' She pants, her mouth still hanging open in pleasure, and her praise making your soul sing happily. 'But now Nermine has one more problem...' She continues teasingly, her voice trailing off as you wait eagerly to hear how you can help her with this new problem of hers. 'Now Nermine's paw is all wet and sticky,' she says as she lifts her hindpaw up to show you, its dark fur soaked with the evidence of your own orgasm. 'Would some good little pet be a dear and help lick it clean for her?' She asks you with a soft grin, and you eagerly nod in response, happy to be able to be of service again so soon. Dropping to your hands and knees in front of her as she lowers her paw once again to the floor, you waste no time in licking your own mingled juices off her perfectly formed paw, the taste of cum and female pleasure mixing deliciously on your tongue as you apply yourself to your task. A smile stretches across your muzzle as her other hindpaw rubs along your arm and chest, happy of the soft wonderful touch of your mistress. As you lick the last bit of fur on her paw in place, you sit back happily to let your mistress inspect your work, feeling joy at how pleased she seems to be with her little pet, as she pets you on the head a few times, before heading back out to the store. You get up and follow along behind the lovely jackal-woman happily, glad she saw fit to reward you with your own orgasm, but now realizing deep down, that being of service to your mistress is its own even better reward, and you find yourself feeling even happier in your new role as her pet.";
				stop the action;
			else:
				say "'Ah Nermine's new little pet wants to pleasure her mistress?' The jackal-woman asks with a soft smile as she looks over your male body, your cock erect with need. 'Well...' the lovely jackal lady says thoughtfully as she glances around the store for a moment, 'It does look like Nermine has some time to kill, and her little helper is starting to look very sexy... Perhaps she will let you help her out for a minute.' Nermine says as she turns and lifts the dark curtains behind her, gesturing for you to follow as she steps through herself, her long jackals tail swaying temptingly in front of you as you hurry after her. Pushing aside the curtains, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it,and a large comfy looking chair. Your eyes however, are immediately drawn to your mistress, as she moves over to the chair and begins to teasingly stroke lift the front of her short skirt up. You find yourself riveted to the sight of her soft pussy as it slowly comes into view, your jackal tail wagging behind you as she exposes herself to you one inch at a time.[line break]";
				say "Seeing she has your full attention, the sexy jackaless carefully sits down in her comfy chair, making sure to keep her lovely pink lips in sight at all times as she adjusts her position slightly before spreading her legs. Somewhat surprised and excited at her position, you find your eyes glancing at the soft mattress for a second before they refocus on your mistresses onyx form. Nermine seems to notice your glance though, as a smile tugs at the corner of her muzzle while she tsks at you, 'Bed is for proper jackals and their fully jackal pets only,' She says teasingly as she crooks one of her furred fingers at you to entice you to come closer. 'If the little pet wants to play on the bed, they will have to earn it by being even more helpful and nice to Nermine.' The jackal-woman says as you find yourself moving closer, 'And Nermine thinks you can start being nice and helpful by putting that sexy new muzzle of yours to good use,' She says as you reach her, lightly tracing one of her claws along the outside of her damp lips, leaving no question as to what she means for you to do.[line break]";
				say "You find yourself smiling eagerly as you sink to your knees in front of her, a proper position for the worship of her divine looking sex, slowly lowering your long muzzle down to her crotch, reveling in her powerful female musk. You lick your lips slightly in anticipation, before letting your canine tongue trace along her lovely pink lips, her beautiful taste filling your mouth as you draw your tongue across her lips again. Your sexy jackal mistress reaches down one of her hands and begins to pet and stroke your head in encouragement, the tangible sign of her approval making you shudder with delight as your own cock grows even harder in response to her touch. Happy to be able to serve her in this manner, you waste no time in renewing your attention to her damp sex, your tongue pressing deeper into the body with every stroke as you lap happily at her like a good little pet. Your eyes close and you moan into her slit as you feel one of her soft paws rubbing up against the inside of your legs, and you can't help but spread them slightly as you lean forward, allowing her soft footpaw to stroke up and down your inner thighs. A soft stroke on your headfur as well reminds you to return your attentions to the task at hand, and you begin to put your new canine muzzle to its proper use as you use your long tongue to tease and probe her depths.[line break]";
				say "Soon your mistresses footpaw is rubbing up against your balls with each stroke, your orbs dancing pleasantly under her attentions. The top of her foot slowly strokes even higher, teasing and rubbing its soft jackal fur against the bottom of your cock with each new touch making you shudder in pleasure. Your eyes drift closed as your world narrows down to the feeling of pleasuring the jackal's delicious slit with your mouth, and the feeling of her soft hand on your head and her teasing paw between your legs. Your eager attentions soon bear fruit, as suddenly your Nermine moans above you, and your mouth is flooded with the amazing taste of her warm juices, even as her hand clenches your head tightly and her foot rubs over your stiff rod eagerly. The taste, the sensations of her soft touches, combined with the realization that you brought your mistress pleasure like a good little pet, all swirl around pleasurably in your head, triggering your body to shudder in its own powerful orgasm as well, shooting your thick canine seed all over your mistresses paw as you shudder underneath her hand. Panting heavily you slowly draw your muzzle out of her crotch, licking your lips slightly to savor her flavor as you look up at your mistress to see how pleased she is by your actions.[line break]";
				say "'That was very very nice, my little pet was certainly a good little helper today.' She pants, her mouth still hanging open in pleasure, and her praise making your soul sing happily. 'But now Nermine has one more problem...' She continues teasingly, her voice trailing off as you wait eagerly to hear how you can help her with this new problem of hers. 'Now Nermine's paw is all wet and sticky,' she says as she lifts her hindpaw up to show you, its dark fur soaked with the evidence of your own orgasm. 'Would some good little pet be a dear and help lick it clean for her?' She asks you with a soft grin, and you eagerly nod in response, happy to be able to be of service again so soon. Dropping to your hands and knees in front of her as she lowers her paw once again to the floor, you waste no time in licking your own thick cum off her perfectly formed paw, a smile stretching your muzzle as her other hindpaw rubs along your arm and chest, happy of the soft wonderful touch of your mistress. As you lick the last bit of fur on her paw in place, you sit back happily to let your mistress inspect your work, feeling joy at how pleased she seems to be with her little pet, as she pets you on the head a few times, before heading back out to the store. You get up and follow along behind the lovely jackal-woman happily, glad she saw fit to reward you with your own orgasm, but now realizing deep down, that being of service to your mistress is its own even better reward, and you find yourself feeling even happier in your role as her pet.";
				stop the action;
		else:
			say "'Ah Nermine's new little pet wants to pleasure her mistress?' The jackal-woman asks with a soft smile as she looks over your female body. 'Well...' the lovely jackal lady says thoughtfully as she glances around the store for a moment, 'It does look like Nermine has some time to kill, and her little helper is starting to look very sexy... Perhaps she will let you help her out for a minute.' Nermine says as she turns and lifts the dark curtains behind her, gesturing for you to follow as she steps through herself, her long jackals tail swaying temptingly in front of you as you hurry after her. Pushing aside the curtains, you find yourself in a rather large sized back room, boxes piled high along one side, your attention however, is drawn immediately to the other side of the room, where a soft mattress lies on the floor piled high with blankets. Next to the mattress is a small writing desk with a laptop on it,and a large comfy looking chair. Your eyes however, are immediately drawn to your mistress, as she moves over to the chair and begins to teasingly stroke lift the front of her short skirt up. You find yourself riveted to the sight of her soft pussy as it slowly comes into view, your jackal tail wagging behind you as she exposes herself to you one inch at a time.[line break]";
			say "Seeing she has your full attention, the sexy jackaless carefully sits down in her comfy chair, making sure to keep her lovely pink lips in sight at all times as she adjusts her position slightly before spreading her legs. Somewhat surprised and excited at her position, you find your eyes glancing at the soft mattress for a second before they refocus on your mistresses onyx form. Nermine seems to notice your glance though, as a smile tugs at the corner of her muzzle while she tsks at you, 'Bed is for proper jackals and their fully jackal pets only,' She says teasingly as she crooks one of her furred fingers at you to entice you to come closer. 'If the little pet wants to play on the bed, they will have to earn it by being even more helpful and nice to Nermine.' The jackal-woman says as you find yourself moving closer, 'And Nermine thinks you can start being nice and helpful by putting that sexy new muzzle of yours to good use,' She says as you reach her, lightly tracing one of her claws along the outside of her damp lips, leaving no question as to what she means.[line break]";
			say "You find yourself smiling eagerly as you sink to your knees in front of her, a proper position for the worship of her divine looking sex, slowly lowering your long muzzle down to her crotch, reveling in her powerful female musk. You lick your lips slightly in anticipation, before letting your canine tongue trace along her lovely pink lips, her beautiful taste filling your mouth as you draw your tongue across her lips again. Your sexy jackal mistress reaches down one of her hands and begins to pet and stroke your head in encouragement, the tangible sign of her approval making you shudder with delight as your own sex grows damp in response to her touch. Happy to be able to serve her in this manner, you waste no time in renewing your attention to her damp sex, your tongue pressing deeper into the body with every stroke as you lap happily at her like a good little pet. Your eyes close and you moan into her slit as you feel one of her soft paws rubbing up against the inside of your legs, and you can't help but spread them slightly as you lean forward, allowing her soft footpaw to stroke up and down your inner thighs. A soft stroke on your headfur as well reminds you to return your attentions to the task at hand, and you begin to put your new canine muzzle to its proper use as you use your long tongue to tease and probe her depths.[line break]";
			say "Soon your mistresses footpaw is rubbing up against your own damp sex, making you shudder slightly as she brushes over your clit with every soft stroke. Your eyes drift closed as your world narrows down to the feeling of pleasuring the jackal's delicious slit with your mouth, and the feeling of her soft hand on your head and her teasing paw between your legs. Your eager attentions soon bear fruit, as suddenly your Nermine moans above you, and your mouth is flooded with the amazing taste of her warm juices, even as her hand clenches your head tightly and her foot presses up against your own needy slit. The taste, the sensations of her soft touches, combined with the realization that you brought your mistress pleasure like a good little pet, all swirl around pleasurably in your head, triggering your body to shudder in its own powerful orgasm as well, coating your mistresses paw with your own juices as you shudder underneath her hand. Panting heavily you slowly draw your muzzle out of her crotch, licking your lips slightly to savor her flavor as you look up at your mistress to see how pleased she is by your actions.[line break]";
			say "'That was very very nice, my little pet was certainly a good little helper today.' She says, her mouth still hanging open in pleasure, and her praise making your soul sing happily. 'But now Nermine has one more problem...' She continues teasingly, her voice trailing off as you wait eagerly to hear how you can help her with this new problem of hers. 'Now Nermine's paw is all wet and sticky,' she says as she lifts her hindpaw up to show you, its dark fur soaked with the evidence of your own orgasm. 'Would some good little pet be a dear and help lick it clean for her?' She asks you with a soft grin, and you eagerly nod in response, happy to be able to be of service again so soon. Dropping to your hands and knees in front of her as she lowers her paw once again to the floor, you waste no time in licking your own sweet juices off her perfectly formed paw, a smile stretching your muzzle as her other hindpaw rubs along your arm and chest, happy of the soft wonderful touch of your mistress. As you lick the last bit of fur on her paw in place, you sit back happily to let your mistress inspect your work, feeling joy at how pleased she seems to be with her little pet, as she pets you on the head a few times, before heading back out to the store. You get up and follow along behind the lovely jackal-woman happily, glad she saw fit to reward you with your own orgasm, but now realizing deep down, that being of service to your mistress is its own even better reward, and you find yourself once feeling even happier in your role as her pet.";
			stop the action;
	else:
		say "'Ah sorry my friend,' Nermine says with a soft wink as you approach her, 'But Nermine is watching store right now and has to pay attention to business.' The dark furred jackal-woman says with a smile as she gestures at the empty store around you. 'Besides, Nermine does not generally get involved with customers, or at least, not just any customers anyways, she sometimes does make exceptions for the especially handsome ones,' She says teasingly as she leans over the counter to get a better look at you. 'Hmm Nermine prefers customers with a more, jackal-like look to them shall we say, now perhaps Nermine could help you out with that if you want.' The jackal-woman says with a wink of one of her silver painted lashes, 'Just be sure to Ask for help, and Nermine will be sure to help you as much as you could ever want.' She says with a canine grin, before returning to her position leaning up against the counter, as she watches you to see just what your reaction to her offer will be.";

to say NermineSucksJ:
	say "As your lucky spectator puts down his backpack and then starts walking towards the counter, you start to get excited, eager to make use of Nermine again. With your cock quickly getting fully hard and ready again, you pull Nermine up against your chest and whisper in her ear to give your guest a really nice blowjob, combined with softly pinching her nipples. Then you walk her out behind the corner, panting and moaning from the movement of your shaft inside her with each step, and push her upper body down again to just the right height for the horny jaguar. As he holds out his erect cock and the jackal bitch starts to lick it, the anthro feline gives a satisfied, deep purr from his chest. While Nermine takes care of him on one end, you set both hands on her hips and hold her tightly, then pull your hips back, slowly but surely. The movement makes your knotted cock pull against her pussy, then slip out of it with a wet slurping sound and a gasp from your jackal pet.";
	say "     Not giving Nermine even a second to re-gain her composure, you immediately thrust all the way back into her again, making her scream in lust from being penetrated by a knot that's only just soft enough to fit. 'Yes master! Use your...' She groans as you pull out again, snatching a breath before continuing, 'needy pet. Use Nermine like the bitch she issSSS-YES!' Her plea is answered as your knot pops back in past her nether lips. 'Yes! More! AaahhH!' Under the eager eyes of your jaguarman guest, you fuck Nermine's pussy with long strokes that stretch her opening around your half-hard knot. Even though he's getting excellent service from your jackaless pet's mouth, you do notice some small flashes of jealousy flaring up in the other man's eyes - which gives you a nice little stimulation in and of itself. You can't help but grin as you see him push his cock down her throat, clearly imagining it was her pussy and he could be the one to fuck and breed her. Life surely is good if you own such a prime bitch like Nermine...";
	WaitLineBreak;
	say "     Pounding your shaft into the wantonly panting jackaless, you feel your knot growing larger once more, soon locking your bodies together again. With your hips tightly pressed against her sex, you slow down for a moment, nuzzling Nermine's neck and telling her how proud you are of her being such an amazing pet - sexy, obedient and a great fuck. Pulling off the jaguarman's cock with a slurp and setting both hands on his hips to brace herself, she answers 'Nermine thanks her master, she loves serving him and fulfilling all his desires.' A moment later, the panting shopkeeper adds 'May his obedient pet now have a little reward? She craves being bred by such a handsome and strong male jackal...'";
	say "     Not one to deny such a pleasurable request, you speed up your thrusts into her, each of them met by Nermine rocking back against you. Reveling in the feeling of your swollen knot pulling against the sides of her pussy and your previous load squishing around your member in the jackal's tight sex, you feel the inescapable need to cum rise quickly inside you. As you're getting quite close, your relentless pounding pushes your jackal bitch over the edge and she suddenly howls in lust, writhing in orgasm. Her inner muscles tremble and twitch around your pointed canine cock, giving you a very pleasant feeling that makes you climax with her. Gripping Nermine's hips tightly, you shoot a second big load of cum straight into her willing womb.";
	WaitLineBreak;
	say "     Meanwhile, your jaguar spectator abandons all restraint after seeing the culmination of your coupling, his paw-hand almost a blur as he jerks off, reaching his own orgasm just moments later. Giving a low, lusty grunt with each shot from his spined cock, he blasts his load all over Nermine's face and breasts, painting her fur with white streaks. 'Thanks man,' he pants to you, continuing with 'If you ever change your mind about letting others tap that bitch, just put a sign in the window - there'll be a line all the way through the mall, I bet. With me right at the start of it.' After that, the jaguar stalks back to the door with a spring in his step, grabs the backpack he dropped there and leaves the shop.";
	say "     Having totally worn out your sexy pet, so far that she's about ready to doze off, you find yourself with a very groggy jackaless tied to you by your knot. Not wanting to stand here until it goes down, you have a look around in the store. Ah, perfect - there's a large bean-bag chair between all the clutter, and not too far away either. Guiding Nermine to it, you sink down on it with her, then spend a nice little time resting and holding the well-bred bitch against your chest. Some while later, your knot goes down far enough for you to pull out, allowing you to stand up and collect your clothes and gear. You leave the now sleeping Nermine sprawled on the bean-bag chair, a grin spreading on your face as you imagine someone coming in and finding her like that, naked and with your cum dripping out of her pussy.";

NermineHelping is an action applying to nothing.

understand "help me" as NermineHelping.
understand "nermine help" as NermineHelping.
understand "ask nermine for help" as NermineHelping.
understand "help nermine" as NermineHelping.
understand "helping nermine" as NermineHelping.
understand "ask for help" as NermineHelping.

check NermineHelping:
	if Nermine is not visible, say "You certainly do need help, possibly psychiatric help, but sadly there isn't anyone here who can help you." instead;

carry out NermineHelping:
	NermineRequestHelp;

to NermineRequestHelp:
	if JackalManTF is greater than 0:
		say "'Oh my, with those fine looks you are getting there, it is certainly not you that needs the help here, but Nermine!' the Jackaless says with a smile as she looks you up and down. 'Why doesn't handsome person finish up their questing and wandering in city so they can 'help' Nermine into her bed in her back room?' She says as she winks at you and licks her soft black muzzle in anticipation.";
		stop the action;
	if RareQuesting > 0:
		say "'Do not be backing out of promise to be helping Nermine with the rare items she needs. You should be focusing on that instead.";
		stop the action;
	if wrcursestatus >= 7 and wrcursestatus < 100:
		say "'A wereraptor is not good for being a helper around Nermine's store and her very breakable collection.'";
		stop the action;
	if JackalBoyTF is 4:
		say "'Ah handsome little Jackal toy is offering to help Nermine some more? Or is it they want Nermine to help them out?' The sultry jackal-woman says as she runs her clawed hands over your soft and sleek body, your eyes closing in pleasure as she gives you a soft scratch behind your canine ears. 'It is good to have an eager little Jackal pet around the place to help Nermine out whenever she needs it, she is glad you are accepting your new place here as happily as she knew you would.' She says as she pets you a few more times, her soft words music to your submissive jackal soul, 'And her little helper doesn't need to worry about any of the other infections in the city any more now, Nermine has made sure that your lovely new form is nice and permanent, so you can be her lusty little pet from now on! Isn't that nice?' Your mistress asks you as she rubs your head a few more times, and you find yourself nodding happily at her question, glad to be able to please your lovely dominant mistress in whatever way she wants. 'Nermine doesn't need any more help in store right now, but maybe if she has time later, you can help her in back room sometime,' The wonderful jackal says as she stops petting you and goes back to leaning on the store counter, and you realize you can't wait for another chance to help her out, whether in the back room or doing whatever else she asks of you!";
		now NermineTalk is 1;
		stop the action;
	if Nerminehelpstatus is 5:
		if carried of peacock feather > 2:
			say "'Yes you brought them!' the jackal-woman says as she snatches the large shiny feathers from you. 'Now Nermine can have a pretty new peacock feather necklace to wear!' She says as she places the glittering feathers in several different positions on her dark neck and glances into a mirror beside the counter as if to see which position she likes best. She notices you watching in amusement, and flashes you a soft grin, 'What, not everything is about other customers, sometimes Nermine likes to get pretty things herself too. Still you are being such a good helper,' She says as she reaches out to caress the side of your new muzzle gently, 'So very nice and always so happy to help Nermine out with the shop, maybe you would like to help her out with her other needs as well?' She says with a wink as she runs her hand slowly down your black furred chest. 'Nermine has one last bit of help to give you first though,' The sleek Jackal says as she reaches behind the counter and produces another of those familiar looking jackal totems and hands it to you. 'You let totem finish helping you become even better, and then maybe Nermine will let her lovely little helper help her out of clothes in back room?' The thought of helping the sultry shopkeeper out in a more intimate manner makes your body flush with desire, and you look down at the totem in your hand with anticipation...'";
			delete peacock feather;
			delete peacock feather;
			delete peacock feather;
			increase carried of Jackal totem by 1;
			increase xp of player by 30;
			stop the action;
		else:
			say "'You are needing help in remembering what you is asked to do?' Nermine says with an amused look in her eye, 'Nermine asked her friendly little helper to find her some of those large peacock feathers from the big birds wandering around the city, 3 or so should do.' The jackal-woman says with a smile, 'Of course Nermine thinks it is more likely her little jackal just wanted to talk to her some more, you obviously love being near her so much, maybe she will let you play at her feet in back room at some point...' The jackaless says as she leans back on the counter, enjoying how much her words have obviously aroused you.";
			stop the action;
	if JackalBoyTF is 3:
		say "'What a perfect new face! Nermine loves it!' The happy jackal-woman says as she comes around the counter to get a better look at your new jackal face, her attention making you blush in pleasure, strangely happy that your new face is to your mistresses liking. As she reaches up and strokes her soft furred hand along the fur of your muzzle, and then reaches up to scratch behind your new ears, you realize that somehow, during all the work you have done for her, the strange jackal-woman truly has become your mistress. Somehow seeing your jackal mistress happy has become one of the most important things to you, and you realize that helping her with her little quests is almost as much fun as changing yourself into a lovely little jackal pet for her enjoy is! Looking up into her smiling eyes, you wonder for a minute if you should really feel this happy just by making her smile... your thought fades away though as she brings her sleek dark muzzle down next to yours... 'Nermine likes this new face so much, and now that her little helper has a proper little muzzle, and she can do this...' She says, as she tilts her head to the side, and wraps her muzzle around your own! Your own canine muzzle automatically under hers, allowing your tongues to mingle in a deep kiss, the taste of her lovely mouth filling your own as she presses you close to her. Your mind seems to fog over with lust and pleasure, and you lose track of anything other the wonderful moment, and pleasing your mistress. Eventually she breaks the kiss, leaving you panting with need as she licks her lips softly, and then smiles and winks at you as she moves back behind the counter.[line break]";
		say "You stand there panting, your tail wagging absently as she settles herself behind the counter, before leaning forward to address you again. 'Is obvious you want Nermine to finish helping you become just perfect little Jackal boy, and Nermine can't wait to see how wonderful her new little helper will look too. But she needs just one more thing first, well three more things actually.' The lovely shopkeeper says as she fiddles with the collar of her tight t shirt, 'Nermine has heard there are peacocks in this city with beautiful sparkling feathers, bring her three of these large feathers, and then both Nermine and her little helper can be very very happy.' She says with a wink as she licks her lips, the action making you lick your lips in response, the soft taste of her mouth still lingering on your tongue.";
		now Nerminehelpstatus is 5;
		stop the action;
	if Nerminehelpstatus is 4:
		say "'Now now,' Nermine says teasingly, 'Nermine already help you out, you use totem and then come talk to Nermine again ok my pretty little almost Jackal?'";
		stop the action;
	if Nerminehelpstatus is 3:
		if WineFound is 2:
			say "'How wonderful!' Nermine says as you proudly hold out the small vial of dark liquid to her. 'And you got it so nice and fast too! You are just the best helper ever!' The jackal-woman exclaims as she reaches over and runs her clawed hand through your fur several times. You find yourself groaning in pleasure under her soft touch, both at the feel of her hand on your fur, but from the sheer joy of making your lovely Jackal mistress so very happy. Before you can examine that thought more closely, Nermine stops petting you and carefully begins to stow the heady wine safely away. 'Nermine has customer seeking the best party wine ever, and asked her for help. Nermine is sure that a few drops of this wine in drink and her customer and his guests will enjoy their best party ever. She just knows he will love being happy drunk Nymph chasing Satyr.' The jackal-woman says with a grin on her face as she turns back to you, pulling an item out from under the counter as she does so. 'And Nermine has a lovely reward for her wonderful helper as well!' She says happily as she hands you another of those strangely carved Jackal totems. 'You use that to get some help from the Jackal, and then maybe you and Nermine can celebrate helping customers in back room together sometime...";
			increase carried of Jackal totem by 1;
			Now Nerminehelpstatus is 4;
			increase xp of player by 20;
			stop the action;
		else:
			say "'Did you need reminding of what you need to do?' The jackal-woman says with a soft grin, 'It's nice to see someone so eager to help a Jackal out, but you should really try to remember better what Nermine needs.' She says as she shakes her canine head from side to side slowly, and makes a soft tsking noise. For some reason you feel vaguely disappointed in yourself at failing your mistress in even so minor a manner. 'Nermine ask you to fetch wine from Satyr in museum, it must be from cask or other fresh source, not cup, when you find the wine, return here and we can see about helping you become even more... attractive.' She says as she runs her long tongue over her lips in anticipation, the sight making you shudder with desire.";
			stop the action;
	if JackalBoyTF is 2:
		say "'Oh my!' Nermine says as she eyes your handsome new coat of fur, 'Nermine thinks you are starting to look absolutely wonderful now!' She exclaims happily, her obvious appreciation of your changing body making you smile happily. 'Nermine almost can't wait to help you become even an better and sharper person,' She says before pausing slightly to let the idea of becoming even better sink in before she continues. 'Sadly, this is a store after all, and Nermine can only do so much for her handsome little helper without getting something in return...' The jackal-woman says, as she reaches out one of her black, claw-tipped hands to stroke your new fur lightly several times, making your eyes close in pleasure at the sensations. 'Nermine has to tell you something,' She says as she leans back behind the counter, 'She has easy task you can help her with, and then she can help you out even more!' Seeing she has your attention, she pulls a small vial out from behind the counter, 'In museum of this city Nermine has heard satyrs are gathering again, and where the goat men are, so too is their unique wine. Find one of the places they store the wine, and fill the vial up, and then Nermine can help you become an even better handsome helper, doesn't that sound nice?' She says as she hands you the vial, her sexy voice sending shivers down your spine and making your jackal tail wag as you think about becoming a better helper than ever before!";
		now WineFound is 1; [player is tasked to get satyr wine]
		now Nerminehelpstatus is 3;
		stop the action;
	if Nerminehelpstatus is 6:
		say "'Nermine already is helping you! You use totem again and see!', Nermine says with a twinkle in her eye.";
		stop the action;
	if Nerminehelpstatus is 2:
		if carried of wyvern goop > 2:
			say "'Yes you bring Nermine the samples!' Nermine says with a smile on her muzzle as she takes the samples from you. 'Now Nermine can make several charms to trap one of the beasts for customer who wants little pet wyvern, Nermine think he will make handsome mate for trapped wyvern when she is done. Not that helpful little friend here needs to worry about that,' She says as she reaches over to trace one of her short claws along your cheek in a soft teasing manner. 'Now Nermine promised you to help you in return, and she keeps her bargains.' The jackal-woman says as she reaches underneath the counter again and pulls out another of those polished onyx statues.";
			delete wyvern goop;
			delete wyvern goop;
			delete wyvern goop;
			increase carried of Jackal totem by 1;
			increase xp of player by 10;
			now Nerminehelpstatus is 6;
			stop the action;
		else:
			say "'You need help remembering what Nermine told you?' The jackal-woman says as she folds her arms across her chest, pushing her breasts up and causing her nipples to show up against the soft fabric. 'Nermine say, if you want her to help you more, you must help her out in payment, bring Nermine 3 samples of the strange goop from the drake-like creatures roaming the skies.' Her slender muzzle parts in a grin as she looks at you, 'And you know you want Nermine to help you become better.'";
			stop the action;
	if JackalBoyTF is 1:
		say "     'Ah yes!' Nermine exclaims with a smile as she spots your new jackal tail, 'This is a great start already! Does the visitor see how helpful Nermine is being? Now her new customer will not have to worry about strange or ugly changes to their rear, [SubjectPro of player] will always have a nice and handsome tail instead!' Seeing your hesitation, the jackal-woman grins and continues, 'Besides, a nice tail like that is sure to be attractive to the right kind of person...' The shopkeeper says with a lusty wink at you, before finishing. 'And there is nothing like a nice fine tail to help one to balance better! You must admit, Nermine is a very helpful shopkeeper, of course there is more help Nermine could give you, to make you even better and faster...' She trails off for a moment with a grin as she sees that she has your full attention. 'but Nermine would need you to help her in return first, to pay the shop for her help of course' You can't help but nod at the sense of this and she smiles back at you in response. 'Nermine needs some samples of the goo from one of those flying drakes, Wyverns she thinks they are called. In order to make a charm for another customer, If you bring her three samples she would be very appreciative...' The jackal-woman lets her last word hang in the air for a minute, leaving the choice of what to do now up to you.";
		Now Nerminehelpstatus is 2;
		Now NermineTalk is 2;
		stop the action;[--------------------]
	if Nerminehelpstatus is 1:
		say "     'Nermine already gave her visitor help! She hopes [SubjectPro of player] did not lose the precious totem?! It should be used soon to avoid that possibility', Nermine says with exasperation.";
		stop the action;
	if JackalBoyTF is 0: [not transformed at all]
		say "     'Indeed. Say no more!' The jackal-woman says with a smile as you ask her for some help. 'Nermine can obviously see that much help is indeed needed, looking like that,' she adds as she gestures to your body. 'Nermine has just the items to help, and maybe in return the needy visitor could help Nermine out with a few chores she has to take care of, yes?' The jackal asks this with a sly look in her eye, making you wonder if agreeing is a good idea.";
		say "     [bold type]Should you really accept?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. Nermine only wants the best for you.";
		say "     ([link]N[as]n[end link]) - Eh - better not. There have to be other ways...";
		if player consents:
			LineBreak;
			if guy is banned or furry is banned or girl is banned:
				say "     'Oh, Nermine is seeing now that she looks closer at her visitor that [SubjectPro of player] will not be able to help her. She is feeling sad to see someone restrict their fun so. Being not so picky would be much more interesting, she thinks.' Saying this, Nermine shakes her jackal head sadly.";
				say "[bold type](The helping quest requires guy, girl and furry content to be available.)[roman type]";
			else:
				say "     'Excellent!' The jackaless says as she claps her hands happily, before reaching underneath the counter. 'Nermine loves to help out her customers!' She says as she brings a small item up from beneath and holds it out to you. Closer inspection reveals the object to be a small black statue of a jackalman with his arms crossed across his chest. Glancing up at Nermine you see the jackal-woman give you a sly wink, then add, 'Nermine thinks this will help her new friend look much better, and get in touch with the power of the jackal. Go on, give it a try!' She says as she hands you the small totem, 'It is no charge for this one. A gift from Nermine to help get started.' The canine shopkeeper says with a grin on her muzzle, as you look down at the little item in your hands with curiosity.";
				increase carried of Jackal totem by 1;
				Now Nerminehelpstatus is 1;
		else:
			LineBreak;
			say "     'This is too bad,' The Jackal shopkeeper says with a sigh, 'Nermine does so enjoy helping people find themselves, and she had such very high hopes for her guest. If [SubjectPro of player] would change [PosAdj] mind though, just come see Nermine again.' Nermine says with a soft wink as she goes back to watching the store.";

Section 3- Magic Bargain Bin

when play begins:
	now bargainbinusagetotal is 0;

Bargain Bin is a man.
The description of Bargain Bin is "     This large bin seems filled with a number of small packets, bottles, and charms, boxes, pieces of fabric and who knows what else. You can't even see the bottom of it. Certainly an interesting opportunity to find... something in there. Above the bin someone has posted a recently drawn sign reading, 'Bargain Bin. Pay and draw one item out. Price: One packet of food and one bottle of water. No returns and refunds!' You aren't exactly sure just how much of a bargain this bin really is right now, but you could still find something useful right? Maybe you should try [link]hunt[as]sort Bargain Bin[end link]ing a bargain, or [link]sort[as]sort Bargain Bin[end link]ing through the bin?".

the linkaction of Bargain Bin is "Possible Actions: [link]smell[as]smell Bargain Bin[end link], [link]sort[as]sort Bargain Bin[end link][line break]";

the scent of bargain bin is "The bargain bin smells like omens and mysteries... at a discount price.".

strangebottledrink is a number that varies.
bargainbinusagetotal is a number that varies.

bargainhunting is an action applying to nothing.

understand "hunt bargain" as bargainhunting.
understand "hunt bin" as bargainhunting.
understand "buy bargain" as bargainhunting.
understand "sort bin" as bargainhunting.
understand "sort bargain bin" as bargainhunting.
understand "sort bargain" as bargainhunting.
understand "hunting bargain" as bargainhunting.

check bargainhunting:
	if Bargain Bin is not visible, say "What?" instead;

carry out bargainhunting:
	if food is owned and water bottle is owned:
		say "     Pulling out a small bit of food and a water bottle you set them out on the counter where Nermine quickly makes them disappear. Having paid your fee you eagerly begin to sort through the bargain bin to see what you can find...";
		LineBreak;
		say "[bold type]You lose 1 food![roman type][line break]";
		say "[bold type]You lose 1 water bottle![roman type][line break]";
		LineBreak;
		delete food;
		delete water bottle;
		increase bargainbinusagetotal by 1;
		let Z be a random number between 1 and 30;
		if Z is 1: [funeral urn /kiss]
			Say "     You pull out a [bold type]small urn of some sort[roman type], and look at it curiously. Nermine sighs behind you as she sees what you are holding. 'What Nermine's customer found is a funeral urn. It is very old, and very bad luck to posess. Nermine is not sure how it found its way into her bargain bin again, but she will try to find a better place to put it this time.' With that said, the jackaless gently takes the small urn from your hands, and places it down on a shelf somewhere behind the counter. 'The apologetic jackaless hopes bad luck hasn't rubbed off on her dear visitor already. So much so that she will make sure,' Nermine says as she leans over the counter even further, her black muzzle brushing over your mouth even as you open it to respond.";
			say "     Before you know it, her tongue is exploring your mouth even as her muzzle rubs up against your face, in what is actually a surprisingly pleasant kiss. After a second, she pulls her tongue out of your mouth, leaving you standing there slightly stunned as she gives you another soft lick across the cheek. 'There. That should counter any bad luck the urn might have caused. Nermine would suggest to let her know immediately if the sneaky urn starts appearing at other places once more,' the sexy jackaless says with a wink as she returns to her normal place at the counter.";
			LineBreak;
			say "     After a second, you realize that you now don't have anything to show for your hunt through the bargain bin, but at least you got a nice kiss for your efforts? That's something of a bargain, isn't it?";
			increase score by 5;
		else if Z is 2: [magic drink]
			If strangebottledrink is less than 3:
				Say "     Looking through the bin, you spot a small vial labeled [']Drink Me[']. Amused at the old Alice in Wonderland reference, you decide to pull the small vial out and take a sip. You are somewhat disappointed when nothing magical seems to happen immediately and your size remains the same, although your body does seem to be strangely invigorated by the unusual drink, and you realize that you are no longer hungry or thirsty.";
				now thirst of player is 0;
				now hunger of player is 0;
				increase strangebottledrink by 1;
			else if "Spartan Diet" is listed in feats of the player:
				say "     Finding another of those vials of liquid tucked away within the bin, you decide to take the small vial of liquid with you, as refreshing as the small vial is it is obviously worth at least two full water bottles when you go to drink it later...";
				LineBreak;
				say "[bold type]You gain 2 water bottles![roman type][line break]";
				increase carried of water bottle by 2;
			else:
				Say "You smile as you once more come across one of those strange and very refreshing vials of liquid. Quickly pulling the small vial out of the bin, you waste no time in taking a small sip of the strangely coloured liquid within. To your disappointment the drink seems somewhat less refreshing this time, although you can still feel your body tingling as the liquid obviously does something to you.";
				LineBreak;
				say "[bold type]'Spartan Diet' has been added to your feats![roman type][line break]";
				add "Spartan Diet" to feats of the player;
		else if Z is 3: [magic bag]
			if "Strong Back" is listed in feats of the player:
				say "     Hunting through the strange bin of unusual bargains, you feel some kind of strap tangle around your arm and quickly pull it out to see what you managed to catch. Much to your disappointment, the strap is attached to a small, ornamental bag of some sort. Glancing in the bag, you can see that it is empty, and even putting something inside it seems to have no effect on either the bag or the item. Sighing, you tuck your new purchase into your pack, realizing that sometimes you win, and sometimes you lose.";
			else:
				Say "     Reaching around in the strange bin of treasures, you feel some kind of strap tangle around your arm as you move the unusual items around. Pulling your arm out, you see that you have actually pulled out an odd belt pouch and realize you just ended up purchasing it by pulling it out of the bin. Sighing, you take a look at the pouch and realize it is empty. Just another small storage bag then. At least it looks like it can be strapped easily to your backpack. After securing your new pouch, you begin to put a few small items in it just to help sort things out, and are surprised to realize that items in your new pouch don't seem to weigh much of anything compared to those outside the pouch. Excited at this new discovery, you quickly fill your new pouch up to the brim, and while it may not be large enough to hold everything you have, it certainly makes carrying your current load much easier!";
				LineBreak;
				say "[bold type]'Strong Back' has been added to your feats![roman type][line break]";
				add "Strong Back" to feats of the player;
		else if Z is 4: [charisma necklace]
			Say "     Sorting through the strange bin of unusual treasures, your eye catches on a [bold type]breathtaking silver necklace[roman type]. Slowly pulling it out of the bin, you admire its fine craftsmanship. Unable to resist the urge to put your lovely new piece of jewelry on, you swiftly clasp it around your neck, and while it doesn't seem to do anything strange or magical, you certainly admire the way it accentuates your good looks in the mirror that Nermine produces for you to look into.";
			LineBreak;
			say "[bold type]Your charisma has increased by 1![roman type][line break]";
			increase charisma of player by 1;
		else if Z is 5: [kinky porn]
			if "Like Attracts Like" is listed in feats of the player:
				if "Kinky" is listed in feats of the player:
					say "     Sorting through the strange bin, you feel a small static shock from one of the items buried in it. Curiosity makes you grasp whatever that was and pull it out. You find yourself holding a [bold type]metal pendant of some kind[roman type], an unusual occult design stamped on one side, while on the other is the image of some undetermined beast. While the amulet is actually kind of eerie, you did just buy it so you slip it over your head as you look around the shop, somehow seeming almost instantly in tune with your inner instincts.";
					decrease humanity of player by 25;
				else:
					say "     Rummaging around in the strange bin, you find your hands rustling up against several small folded pieces of paper. Curious you pull the sheaf of paper out and unfold it so you can get a better look at what is written on it. Much to your surprise, you see the papers are filled with [bold type]detailed stories and images of beasts and humans copulating[roman type] in all sorts of strange and twisted manners. As you slowly look through the papers, you find yourself growing increasingly more and more aroused by the strange scenes you find depicted there, wondering just how it would feel to take part in some of those actions. Hearing movement behind you, you quickly fold the papers up and stick them in your pack with a blush as you notice Nermine leaning over curiously to see what you are staring at so intently. Perhaps you should study your purchase later and in private. Strange, before now, you never realized just how kinky you really are...";
					LineBreak;
					say "[bold type]'Kinky' has been added to your feats![roman type][line break]";
					add "Kinky" to feats of the player;
			else:
				Say "     Hunting through the bin, you find your hands drawn to a small charm of some sort. There is just something irresistible about it... you can't help but take hold of the piece of jewelry and pull it out of the bin. Holding it up, you find yourself admiring the [bold type]strange-looking charm[roman type]. It almost looks like a stylized version of your own form right now! You wonder if this charm would be as attractive to other people or infected like yourself, and end up shrugging as you hang your new purchase off your backpack. Guess you'll find out before long!";
				LineBreak;
				say "[bold type]'Like Attracts Like' has been added to your feats![roman type][line break]";
				add "Like Attracts Like" to feats of the player;
		else if Z is 6: [cat charm]
			if furry is not banned and guy is not banned:
				Say "     Poking absently through the bin, your eye catches on a [bold type]small cat-like charm[bold type] tucked away in the corner. Pulling the litle piece of jewelry out you smile at the stylized image of a pouncing cat as you rub the strange metal charm between your fingers. Then suddenly, it seems to slip through your fingers - or rather melt, as you try to catch it and notice that the thing didn't slip but rather is covering part of your fingers now as a silver sheen. Before you have much time to stare at it, the flowing metal seems to be absorbed by your skin, vanishing without a trace. As you scratch your head, puzzled about the strange effect, you realize your body is feeling slightly different...";
				LineBreak;
				say "[bold type]Your dexterity has increased by 1![roman type][line break]";
				increase dexterity of player by 1;
				infect "Felinoid";
			else:
				say "     Poking absently through the bin, your eye catches on a [bold type]small cat-like charm[bold type], tucked away in the corner. Pulling the litle piece of jewelry out you smile at the stylized image of a pouncing cat as you rub the strange metal charm between your fingers. Then suddenly Nermine snatches the golden charm from your hand with a handkerchief and carefully puts it into a jewelry box. 'Nermine can tell that her customer will not want this item. She is sorry, but the bargain bin can be unpredictable at the best of times. Full of apologies, the jackaless offers her guest the paid items in return, as well as a suggestion. Maybe Nermine's dear customer should be thinking to not be so picky. More fun is to be had that way,' she adds philosophically.";
				LineBreak;
				say "[bold type]You gain 1 food![roman type][line break]";
				say "[bold type]You gain 1 water bottles![roman type][line break]";
				increase carried of food by 1;
				increase carried of water bottle by 1;
		else if Z is 7: [magpie jewelry]
			Say "     Sorting through the bin, your eye is caught by a [bold type]sparkly piece of jewelry[roman type] half-hidden under other items. The pretty little thing is making you smile at finding it as you pull it out. Closer inspection reveals that the shiny item is piece of costume jewelry - certainly not worth all that much, but it looks pretty, so you're happy nontheless at calling it your own.";
			if "Magpie Eyes" is listed in feats of the player:
				say "     Smiling at your new piece of jewelry, you tuck your newest acquisition away with the rest of your small collection of glittery and shiny things. Finding a new treasure to keep makes you feel even better about yourself as you look around the store, your keen eyes seeking out new treasures to add to your collection.";
				LineBreak;
				say "[bold type]Your perception has increased by 1![roman type][line break]";
				increase perception of player by 1;
			else:
				say "     Flipping the small piece of jewelry over and over in your hands, your eyes seem drawn to its every sparkly movement. The little piece of glass and gilt fascinates you with the pleasant way it reflects light and catches your gaze. Finally you blink, and happy at your new purchase tuck it away for later, the first piece of what might eventually become a small collection of glittery and shiny things. Your eyes dart around the area, now trained to better pick out small useful items in the oddest places, especially if they are shiny!";
				LineBreak;
				say "[bold type]'Magpie Eyes' has been added to your feats![roman type][line break]";
				add "Magpie Eyes" to feats of the player;
		else if Z is 8: [puzzle box]
			Say "     Reaching deep into the bin, you find a hand-sized square box. Running your fingers over its smooth sides you notice it seems to have odd lines carved into it. Deciding to pull the box out for a better look, you realize you have just purchased some kind of [bold type]Chinese puzzle box[roman type], covered in small blocks seemingly able to be pushed or moved around the surface of the small container. Eager to see what might be inside, you spend some time working at and manipulating the box, slowly figuring out its secrets as you draw closer to finishing the puzzle. Finally with a triumphant cry you manage to slide the lid of the box open, only to find a small piece of paper within. Pulling out the paper you note it reads, 'The treasure is not in the finding, but in the journey.' All that work for a small fortune-cookie saying? Still you feel that all that work on the puzzle box has definitely helped you at puzzling out problems, so maybe it wasn't a waste after all...";
			LineBreak;
			say "[bold type]Your intelligence has increased by 2![roman type][line break]";
			increase intelligence of player by 2;
		else if Z is 9: [biting monster]
			Say "     Reaching deep into the bin, you feel something moving under all of those strange items piled in it! A heartbeat later, whatever it is chumps down on your searching fingers, making you withdraw your hand immediately. Looking down at it, you can't help but stare as blood slowly drips from your fingers, trickling down from a [bold type]nasty bite-wound[roman type] on your hand. Nermine seems rather embarrassed by the whole affair as she helps you bandage up your new wound, and the jackal glares at the bin for a minute as if reprimanding whatever bit you. 'Nermine is sorry, sometimes things are not happy to end up in bargain bin. The jackaless apologizes and decides to make good for such a sad misunderstanding,' the jackal says with a shrug, then quickly refunds your food and water, and even places an extra packet of food and bottle of water out for the inconvenience.";
			LineBreak;
			say "[bold type]You gain 2 food![roman type][line break]";
			say "[bold type]You gain 2 water bottles![roman type][line break]";
			increase carried of food by 2;
			increase carried of water bottle by 2;
			decrease hp of player by 25;
			if hp of player < 0:
				now hp of player is 1;
		else if Z is 10: [pocket watch]
			say "     Sorting through the bin, you come across an [bold type]old-fashioned pocket watch[roman type]. Your curiosity getting the better of you, you pull the antique out of the bin to examine it closer. The unusual brass watch seems to feel slightly warm in your hands as you wind it up, and you are hit with a sudden dizzy spell as soon as you finish winding the watch, making you stagger slightly. Blinking, you catch yourself and stare around you feeling slightly befuddled, before realizing the watch is no longer in your hands. Sighing at the loss of the interesting looking timepiece, you prepare to move on, though you feel like something has changed, even if you can't quite put your finger on what...";
			extend game by 16;
		else if Z is 11: [FS Game Box]
			say "     Pushing items around in the bin, you feel a cardboard box move beneath your hands. Deciding to give this a closer look, you pull it out of the bin. You blink in surprise as you stare at the image of one of those blue-furred gryphons grinning back at you from what appears to be a computer game. Looking at the box title, you see it says, 'Flexible Society, the best-selling transformative strategy game in years!' Blinking at that strange proclamation, you look at the box some more, before deciding to take it with you. Maybe once you get out of here and find a working computer you can find out just what all the fuss is about...";
			increase score by 100;
			stop the action;
		else if Z is 12: [full transformation items]
			say "[plrtcl]";
		else if Z is 13: [Mag-iphone]
			say "     Rummaging through the bin, you find yourself blinking as you feel the familiar sleekness of a cell phone. Pulling the small phone out, you note that it appears to be labeled as a Mag-iPhone, causing you to wonder about what kind of strange knock-off phone you managed to find. Poking at the device a little closer, you find out much to your surprise that not only does it still have some power, it seems to have a signal as well! Feeling excited you quickly try dialing to try to get someone outside of the containment area for help. You grin as the phone begins to ring, only to blink and stare at the phone as someone answers in a strange almost purring voice...";
			say "     You aren't quite sure what the purring voice is saying, the thick accent of the female speaker making it hard to understand. Though you think she is telling you that you have reached someplace called Siz'Calit in the land of Nimin, and wants to know if you are calling about the large delivery of pus fruit she ordered... Feeling very confused, you apologize to the strange woman about the obviously wrong number, before hanging up and staring at the phone for several minutes. Deciding maybe it would be best to not try calling any other random numbers, you slip the Mag-iphone back into the bargain bin where it belongs, before continuing on your way.";
			increase score by 20;
		else if Z is 14: [infection samples]
			say "     Hunting through strange bin full of items, you find yourself touching what appears to be some sort of plastic bag. Overcome with curiosity, you quickly pull it out of the bin and take a look inside. You are surprised to see that the bag contains several [bold type]neatly labeled samples taken from creatures inside the city[roman type]. 'Ah Nermine was looking for those!' you can hear the jackal-like shopkeeper say as you inspect the items, making you look up at her instead. 'If the fine-looking customer doesn't want to keep those, Nermine is more than willing to buy them found items,' she says with a grin on her soft, silver-painted muzzle while you try to decide what to do with the items.";
			if furry is banned:
				say "     Taking another quick glance at the contents, you decide that you have no interest in any of the bestially infected items and return the bag to Nermine while she puts your earlier payment back on the counter. Checking the items she lays out, you find yourself grinning as you realize the sly jackal-woman slipped you an extra package of food as well.";
				LineBreak;
				say "[bold type]You gain 2 food![roman type][line break]";
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of food by 2;
				increase carried of water bottle by 1;
			else:
				say "     [bold type]Do you give them back to the jackaless?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, let her have her stuff back.";
				say "     ([link]N[as]n[end link]) - Nope. These are yours now!";
				if player consents:
					LineBreak;
					say "     Deciding you definitely don't need any more of the infectious items from creatures within the city, you quickly hand the bag full of stuff over to Nermine while she puts your earlier payment back on the counter. Checking the items she lays out, you find yourself grinning as you realize the sly jackal-woman slipped you an extra package of food as well.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of food by 2;
					increase carried of water bottle by 1;
				else:
					LineBreak;
					say "     Deciding to keep the items yourself, since they could come in handy in this strange city you are stuck in, you stuff the bag into your pack. Nermine sighs slightly at your choice and shakes her head as she goes back to standing at the counter.";
					LineBreak;
					if girl is not banned:
						say "[bold type]You gain 1 tuft of chin fur![roman type][line break]";
						say "[bold type]You gain 1 skunk goo![roman type][line break]";
						increase carried of tuft of chin fur by 1;
						increase carried of skunk goo by 1;
					if guy is not banned:
						say "[bold type]You gain 1 chipped tooth![roman type][line break]";
						say "[bold type]You gain 1 pirate bandana goo![roman type][line break]";
						increase carried of chipped tooth by 1;
						increase carried of pirate bandana by 1;
					if hermaphrodite is not banned:
						say "[bold type]You gain 1 dog milk![roman type][line break]";
						increase carried of dog milk by 1;
					say "[bold type]You gain 1 honeycomb![roman type][line break]";
					increase carried of honeycomb by 1;
					say "[bold type]You gain 1 fish![roman type][line break]";
					increase carried of fish by 1;
		else if Z is 15: [Dr Matt samples]
			if girl is banned and ( hermaphrodite is banned or furry is banned ):
				say "     Searching through the bargain bin, you find a [bold type]small travel pouch[roman type] tucked away in the corner. Curious about what may be inside, you pull the container out and open its zipper. Sadly, when you flip the flap at the top open, all you find is a wad of used bubblegum and a bottle of water. Ugh! Oh well, can't win them all and at least you got some water back...";
				LineBreak;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
			else:
				say "     Searching through the bargain bin, you find a [bold type]small travel pouch[roman type] tucked away in the corner. Curious about what may be inside, you pull the container out and open its zipper. Sadly, when you flip the flap at the top open, you blink in surprise as you note it seems to contain a bottle of water along with [if girl is not banned]two nicely labeled samples of goo[else]a wad of used bubblegum[end if], and [if hermaphrodite is not banned and furry is not banned]two small vials of gryphon milk[else]a wad of used bubblegum[end if]. Staring at the items for a moment, you realize that you are obviously not the [if hp of doctor matt is 0 or hp of doctor matt is 100 or hp of doctor matt is 103]only person to consider keeping some of the strange things to be found[else]first person the good doctor Matt sent out in the city to retrieve samples for him[end if]. Emptying the pouch out into your own backpack, you wonder just what happened to the former owner of if, and if they are happier as whatever they are now.";
				LineBreak;
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of water bottle by 1;
				if hermaphrodite is not banned and furry is not banned:
					increase carried of gryphon milk by 2;
					say "[bold type]You gain 2 gryphon milk![roman type][line break]";
				if girl is not banned:
					increase carried of glob of goo by 2;
					say "[bold type]You gain 2 glob of goo![roman type][line break]";
		else if Z is 16: [strange doll]
			if dollfound is 0:
				say "     Reaching into the bin, you find your hand meeting some kind of plush stuffed toy, its soft form almost seeming to jump into your hand as you pull the strange thing out. Looking at what you found, you blink as you find yourself holding a miniature version of yourself, the [bold type]little plush doll appearing to be an exact replica of your current self[roman type], down to the smallest detail. Eyeing the unusual doll carefully, it seems almost alive, which is strangely disconcerting in a way...";
				say "     [bold type]Do you decide to keep it?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, this isn't creepy at all!";
				say "     ([link]N[as]n[end link]) - Waaah! Did it just move on its own?! Hell no!";
				if player consents:
					LineBreak;
					say "     Turning the unusual thing over in your hands several times and admiring the fine detail, you nearly drop the doll as it begins to shift and move on its own. The little depiction of yourself stretches and turns its head from side to side as it looks around, before focusing its piercing little gaze on you. Blinking, you put the miniature person carefully down on the ground, where it explores its new surroundings for a minute before returning to sit at your feet, obviously happy to stay with you.";
					now strange doll is tamed;
					now dollfound is 1;
				else:
					LineBreak;
					say "     Uncomfortable by even touching the thing, you drop the creepy doll back into the bargain bin, shaking your head the wasted opportunity at finding something actually useful that won't murder you in your sleep. As you turn away, you see that Nermine decided to take pity on you, and your payment is sitting back up there on the counter while she busies herself a little ways away. Nodding gratefully and feeling a bit better about the event, you tuck the food and water back away in your pack carefully, not sure if you will try your luck again in the strange bin or not...";
					LineBreak;
					say "[bold type]You gain 1 food![roman type][line break]";
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of food by 1;
					increase carried of water bottle by 1;
			else:
				say "     Searching through the bin again, you blink as your hand finds a small doll-sized pack and some accessories. Pulling them out, you stare at the items in puzzlement for a minute, before passing them along to your miniature doll self to play with. It never hurts to accessorize right?";
				increase dexterity of strange doll by 1;
		else if Z is 17: [strength pill]
			say "     Sorting through the bin, you come across a strange folded piece of paper. Pulling it out and unwrapping it, you barely manage to catch the [bold type]small pill[roman type] that was wrapped in the paper before it falls out. Looking at the pill in confusion for a second, you then notice there seems to be something written on the paper. As it turns out, the pill is some kind of miracle muscle enhancer, though it does warn of side effects...";
			say "     [bold type]Do you take the pill?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Sure! Why shouldn't you put random pills into your body?";
			say "     ([link]N[as]n[end link]) - Hell no, who knows what it might do!";
			if player consents:
				LineBreak;
				say "     Shrugging off the possibility of side effects, you eagerly pop the pill in your mouth and swallow. As your muscles begin to burn slightly, you nevertheless can't help but wonder if that was the smartest thing you could have done. You moan as the strange pill works its changes on your body, your muscles spasming with pleasure as you hold onto the counter... Eventually the changes stop, and you stand there panting for several minutes, before realizing you should probably be moving on soon. You can't help but pause to admire your new muscles for a minute however, although for some reason thinking clearly about anything other than your muscles and sex seems to be harder than ever...";
				LineBreak;
				say "[bold type]Your strength has increased by 2![roman type][line break]";
				say "[bold type]Your Intelligence has decreased by 1![roman type][line break]";
				increase strength of player by 2;
				increase capacity of player by 10;
				decrease intelligence of player by 1;
				decrease humanity of player by 5;
			else:
				LineBreak;
				say "     Glancing at the pill of unknown origin in your hand, you frown and put it back in its wrapping paper, crumpling that to a compact ball. With an aimed throw, you then lob it into what you assume to be an ancient waste-bin, only to have Nermine comment, 'The friendly jackaless would like to request that her customers not throw litter into other dimensions. The urn of Ka'lak serves another purpose.' With a somewhat sheepish expression, you step up to the urn, glancing down through its opening and seeing nothing but a dark shaft, going deeper than the piece of pottery is long...";
		else if Z is 18: [cock charm]
			if "Cold Fish" is listed in feats of player:
				say "     Sorting through the strange bin, you feel a small shiver after touching one of the items in the bin and reflexively release it, protecting yourself from the influence the [bold type]little piece of jewelry[roman type] might have. You withdraw your hand and clutch it tightly as the shivers run up your arm and then down your body, filling your loins with heat and arousal. Nermine, noticing your odd expression, slides back the water and food. 'Some items in the bargain bin do not agree with some people. Nermine's eager customer may try again or leave matters be.'";
				LineBreak;
				say "[bold type]You gain 1 food![roman type][line break]";
				say "[bold type]You gain 1 water bottle![roman type][line break]";
				increase carried of food by 1;
				increase carried of water bottle by 1;
				increase libido of player by 25;
			else if "Horny Bastard" is listed in feats of the player:
				say "     Pushing through the strange piles of unusual items stuffed into the overflowing bin, you find a [bold type]small silver charm shaped like a [one of]feline[or]canine[or]demonic[or]equine[or]goat[or]dolphin[or]bestial[or]bear[at random] cock[roman type]. The small piece of jewelry glints in your hand as you pull it out of the bin, the lewd appearance of the finely detailed miniature cock making you grin. Somehow owning it leaves you feeling hornier and perhaps more bestial than ever, and you slip the little thing onto a charm bracelet so you can wear it at all times. Now if only you could go out and find a real cock just like it...";
				now libido of player is 100;
				decrease humanity of player by 10;
			else:
				say "     Pushing through the strange piles of unusual items stuffed into the overflowing bin, you blink as you come across a [bold type]shiny silver charm[bold type] on a charm bracelet [bold type]shaped a bit like a canine cock[roman type]. Grinning you pull the small piece of jewelry out of the bin, feeling slightly amused that someone would actually go to such great effort to make and design such a thing. With a chuckle, you experimentally slip the bracelet onto your arm where it seems to fit perfectly. Somehow the feel of the silver cock-charm against your skin makes you feel slightly more aroused almost immediately. You can feel your body warming up in arousal as your libido goes into high gear, and somehow thoughts of all sorts of bestial sex seem to become even more attractive to your increasingly lust-fogged mind. Your hands stray down to rub your groin needfully as you begin to pant, finding it impossible to think of anything other than sex anymore, lovely, hot, bestial, sex... mmmmm yum...";
				LineBreak;
				say "[bold type]'Horny Bastard' has been added to your feats![roman type][line break]";
				add "Horny Bastard" to feats of the player;
		else if Z is 19: [Nermine's romance novels]
			if RomanceBooksFound is 0: [first time]
				say "     Reaching into the bin, you can feel what seems to be some sort of book-cover under your hands. As you feel around, you realize that it isn't just one book, but a [bold type]small bundle of books tied together[roman type]. Curious, you draw the lot of them out of the bin, and are surprised to see the image of a half-naked jackal pirate looking at you from the cover of the first book. Slightly confused and curious you glance at the covers of the other books you pulled out with it, and see they all depict rather sexy-looking jackal men posing suggestively in a variety of different situations. You open one of the books and begin to flip through it, and quickly realize it is a rather hardcore romance novel featuring several bestial people, chief among them a handsome male jackal lead that swash-buckles his way through the hearts and beds of a large number of various women.";
				say "     You blush slightly in embarrassment and arousal at some of the scenes depicted in the books, causing Nermine to look over at you to see what is so distracting. Upon spying what you are reading and the other books you are holding, the jackal shopkeeper coughs uncomfortably drawing your attention. 'Ah, Nermine was wondering where those had gotten to,' she says as she steps closer, reaching out and intending to tuck the lot of them out of your grasp. 'Nermine has no explanation for how such private material ended up in the bargain bin. She would be very reluctant to let them go and offers her customer to buy them back. Double the price will suffice, will it not?' she says, looking at you with a hopeful expression.";
				say "     [bold type]Do you give the books back to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, it's a good deal!";
				say "     ([link]N[as]n[end link]) - Nah, you'll hold on to them for now.";
				if player consents:
					LineBreak;
					say "     Letting go of the books as she pulls them out of your grasp and tugs them close to her chest, you smile a little at Nermine's obvious embarrassment. The jackaless quickly moves behind her counter again and lets the novels vanish under it, then slides double your payment back over the glass top. Collecting it with a grin, you think to yourself that you must have picked up some tips on getting the most out of your victories from the heroes of the books you skimmed.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					say "[bold type]You gain 2 water bottles![roman type][line break]";
					increase carried of food by 2;
					increase carried of water bottle by 2;
					now RomanceBooksFound is 1; [books found and returned]
				else:
					LineBreak;
					say "     Keeping a tight grip on the books, you shake your head at the jackaless and let her know that you bought them, fair and square. Her gaze narrows and Nermine hesitates for a long moment, before eventually acquiescences your decision, making an expression as if she had bitten into a rotten fruit. Clearly not happy about the way things turned out, she walks back behind her counter and pointedly does not look at you afterwards.";
					LineBreak;
					say "[bold type]You gain jackal romance novels![roman type][line break]";
					increase carried of jackal romance novels by 1;
					now RomanceBooksFound is 2; [player took them]
			else if RomanceBooksFound is 1: [repeat with the player having given her the books before]
				say "     Once more feeling a package of books stashed away in the bargain bin, you pull it out, and seeing the jackal-like hero on the cover, wave it at Nermine with a small grin. The jackal shopkeeper blushes in embarrassment as she says, 'How do Nermine's personal items end up in the bin again and again? She is not amused by this!' The sorceress lets her gaze wander around in her store, glancing this way or that from the corner of her eye as if to catch a sneaky prankster in the act. With a hint of a scowl on her muzzle, she turns back to you, carefully smoothing the expression over before she ways, 'Nermine would be very reluctant to let her personal items go and offers her customer to buy them back. Double the price will suffice, will it not?' She looks at you with a hopeful expression.";
				say "     [bold type]Do you give the books back to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, it's a good deal!";
				say "     ([link]N[as]n[end link]) - Nah, you'll hold on to them for now.";
				if player consents:
					LineBreak;
					say "     Letting go of the books as she pulls them out of your grasp and tugs them close to her chest, you smile a little at Nermine's obvious embarrassment. The jackaless quickly moves behind her counter again and lets the novels vanish under it, then slides double your payment back over the glass top. Collecting it with a grin, you think to yourself that you must have picked up some tips on getting the most out of your victories from the heroes of the books you skimmed.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					say "[bold type]You gain 2 water bottles![roman type][line break]";
					increase carried of food by 2;
					increase carried of water bottle by 2;
					Now RomanceBooksFound is 1; [books found and returned]
				else:
					LineBreak;
					say "     Keeping a tight grip on the books, you shake your head at the jackaless and let her know that you bought them, fair and square. Her gaze narrows and Nermine hesitates for a long moment, before eventually acquiescences your decision, making an expression as if she had bitten into a rotten fruit. Clearly not happy about the way things turned out, she walks back behind her counter and pointedly does not look at you afterwards.";
					LineBreak;
					say "[bold type]You gain jackal romance novels![roman type][line break]";
					increase carried of jackal romance novels by 1;
					now RomanceBooksFound is 2; [player took them]
			else if RomanceBooksFound is 2: [player took the books before]
				say "     Once more feeling a package of books stashed away in the bargain bin, you pull it out, and are acutely surprised to see it being a stack of books with a jackal-like hero on the cover. Didn't you already buy this from her? Weird. Maybe she had more copies, or something else is going on here. Who knows... with magic in the room, it's anyone's guess. With a shrug, you raise the books and wave the bundle at Nermine with a small grin. The jackal shopkeeper blushes in embarrassment as she says, 'How do Nermine's personal items end up in the bin again and again? She is not amused by this!' The sorceress lets her gaze wander around in her store, glancing this way or that from the corner of her eye as if to catch a sneaky prankster in the act. With a hint of a scowl on her muzzle, she turns back to you, carefully smoothing the expression over before she ways, 'Nermine would be very reluctant to let her personal items go and offers her customer to buy them back. Double the price will suffice, will it not?' She looks at you with a hopeful expression.";
				say "     [bold type]Do you give the books back to her?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Sure, it's a good deal!";
				say "     ([link]N[as]n[end link]) - Nah, you'll hold on to them for now.";
				if player consents:
					LineBreak;
					say "     Letting go of the books as she pulls them out of your grasp and tugs them close to her chest, you smile a little at Nermine's obvious embarrassment. The jackaless quickly moves behind her counter again and lets the novels vanish under it, then slides double your payment back over the glass top. Collecting it with a grin, you think to yourself that you must have picked up some tips on getting the most out of your victories from the heroes of the books you skimmed.";
					LineBreak;
					say "[bold type]You gain 2 food![roman type][line break]";
					say "[bold type]You gain 2 water bottles![roman type][line break]";
					increase carried of food by 2;
					increase carried of water bottle by 2;
					Now RomanceBooksFound is 1; [books found and returned]
				else:
					LineBreak;
					say "     Keeping a tight grip on the books, you shake your head at the jackaless and let her know that you bought them, fair and square. Her gaze narrows and Nermine hesitates for a long moment, before eventually acquiescences your decision, making an expression as if she had bitten into a rotten fruit. Clearly not happy about the way things turned out, she walks back behind her counter and pointedly does not look at you afterwards.";
					LineBreak;
					say "[bold type]You gain jackal romance novels![roman type][line break]";
					increase carried of jackal romance novels by 1;
					now RomanceBooksFound is 2; [player took them]
		else if Z is 20: [creature]
			say "     Rummaging through the bargain bin you find yourself feeling rather strange as you do so, almost as if something in the bin itself is affecting you. Feeling vaguely worried, you begin to pull your hand out of it, only to find it seems stuck on something, or more like [bold type]something or someone is holding onto you[roman type] and trying to drag you into the bin! The feeling is both strange and disturbing as you fight to free your hand, and Nermine seems to notice your distress. As you struggle, the jackal-woman comes over to investigate the problem. Just before she reaches you though, something seems to give in the bin, and you stagger backwards, almost knocking the shopkeeper over as you do so, with the jackal-woman just barely managing to catch you before you drag both of you down to the ground. Unfortunately something else staggers out of the bin as well, and you find yourself face to face with a [one of]Rubber tigress[or]Horseman[or]Leopardman[or]Plush Lion[or]Tigress hooker[or]Satyr[at random] staggering unsteadily into the room.";
			say "     The surprise visitor doesn't take long to catch their bearing, and fixes lust-filled eyes on your body. You gape in surprise for a second, idly wondering just how the hell the creature fit into the bargain bin in the first place, before quickly preparing to fight as it steps towards you eagerly. The moment is broken by a sharp growl from over your shoulder, and the beast stops in its tracks and begins to back up in fear. Glancing over your shoulder, you see Nermine fixing the creature with a deadly glare and a scowl on her muzzle. 'There is to be no fighting in Nermine's shop. This she will not tolerate!' she says with a sharp bark. With the wave of a slender paw-hand, the door that you could have sworn leads into a storage room is thrown open, showing a trash-filled alleyway instead. The beast quickly turns tail and runs out through the door, leaving you both impressed and a little worried as the surprisingly intimidating jackal-woman turns her gaze on you.";
			WaitLineBreak;
			say "     Tension abates as Nermine smiles, walking over to give you a small peck on the cheek together with a smile before wandering back to her side of the counter. 'Nermine must say, she is not sure how that got in the bin, but she would advise her handsome customer to be more careful about the things they pick out of the bargain bin from now on,' she says with a teasing wink, and you curse slightly as you realize that technically you just purchased the creature that immediately ran off... maybe next time you should try looking for a collar and leash beforehand? Or maybe you should just hope there isn't a next time...";
		else if Z is 21: [parchment]
			if "City Map" is listed in feats of the player:
				say "     Looking through the strange bin of bargain items, you come across a rolled parchment, which seems slightly warm to the touch. Curious, you pull the item out of the bin and unroll it to take a closer look. Much to your surprise, the parchment seems to contain [one of]a recipe for chili con carne[or]a discourse on the proper way to amuse a dragon, with a side note at the bottom that failure to properly amuse said dragon may result in being tasty with barbecue sauce[or]a rather strange yet hauntingly pretty drawing of a feline-headed woman[or]the secret to life... actually all the parchment has written on it is the number 42...[or]some rambling intellectual discourse on the nature of reality, and whether or not the writer was or was not in fact part of a computer game... quite boring really[or]some sort of plan for world domination, which apparently came up short in execution due to a lack of readily available 'flying attack porcupines.' Considering the state in which the city is in right now, you certainly hope that lack isn't going to be remedied anytime soon[or]a recipe for excellent sugar cookies, apparently the secret is a dash of orange peel and just the right mix of pure and brown sugar[or]a copy of The Declaration of Independence[']... no wait, apparently it is a copy of [']The Declaration of Enslavement['] instead... after reading a few of the strangely familiar yet altered statements contained within, you find yourself shuddering slightly[or]a rather steamy love letter (or perhaps lust letter) from one unnamed individual to another[or]A oddly scrawled message that says only, 'The cake is a lie! Trust in muffins instead!' Very odd indeed..[run paragraph on][at random]. You stare at the contents for a minute, before rolling the parchment back up and carefully placing it down on the counter, sure that it will prove of little use to you now in the changed city.";
			else:
				say "     Looking through the strange bin of bargain items, you come across a piece of rolled parchment, which seems slightly warm to the touch. Curious, you pull the item out of the bin and unroll it to take a closer look. What you find on its inside is some sort of colour-coded [bold type]map of the city[roman type], with several rather familiar-looking landmarks clearly noted... although at the same time, something seems subtly off about the layout. Looking closely at the strange map and its hand-drawn depiction of a modern city on so ancient a material, you notice something fascinating. It doesn't actually seem to be depicting the city as it was, but as it actually currently is, with blocked streets noted carefully, as well as several new areas delineated and marked, as well as with several safe routes to those areas clearly noted!";
				say "     As you watch the parchment map, you catch sight of actual movement in its content! Looks as if someone was drawing on it, right before your eyes, marking another street slowly and declaring it impassible, changing all of the travel routes nearby to allow for that fact. Realizing what a treasure you have found, you grin happily as you tuck your new city map away in your pack safely.";
				LineBreak;
				say "[bold type]'City Map' has been added to your feats![roman type]";
				add "City Map" to feats of the player;
				say "[bestowcitymapfeat]";
		else if Z is 22: [collar]
			if "Submissive" is listed in feats of the player:
				say "     Reaching down into the depths of the bargain bin, your hand touches on a rather familiar shape, pulling the item up, you find yourself smiling to see you have found a lovely little [bold type]slave's collar[roman type]. Looking at the collar reminds you of how much fun it can be to submit to a stronger more dominant mate, and your mind drifts to several of the sexy creatures in the city, lingering on just how much fun it could to be to just be theirs, their happy little slutty pet, happy to serve their every whim and need. Panting slightly as you think back on all your former submissions, you find yourself feeling increasingly happy and ready for thing to come, as you slip the collar into your pack as a happy reminder of all the submissive pleasure in your past, and hopefully all the lovely times in your future as well...";
				LineBreak;
				say "[bold type]You gain Xp![roman type][line break]";
				increase xp of player by 25;
			else if "Dominant" is listed in feats of the player:
				say "     Reaching down into the depths of the bargain bin, your hand touches on a rather familiar shape, pulling the item up, you find yourself smiling to see you have found a lovely little [bold type]slave's collar[roman type]. Looking at the collar reminds you of how much fun it can be to play the stronger role as the dominant mate, and your mind drifts to several of the sexy creatures in the city. Your thoughts linger on just how much fun it could to be make them be yours for a little while as your slutty playthings, made to service your every whim and need. Panting slightly as you think back on all those you could dominate, you find yourself feeling increasingly happy and ready for thing to come. You slip the collar into your pack as a happy reminder of all the possible dominant pleasures you've already enjoyed and those hopefully still to come.";
				LineBreak;
				say "[bold type]You gain Xp![roman type][line break]";
				increase xp of player by 25;
			else:
				say "     Searching through the piles of strangely coloured and unusual items in the bargain bin, you find your eye caught by a rather unusual-looking collar. Pulling the object out, you realize that it is made for a human neck instead of that of an animal, and looking closer shows you that instead of a normal latch, this collar appears to have a small lock instead, making it impossible for the wearer to remove it without the key. For some reason, merely examining the collar makes your body increasingly aroused. The feel of its soft leather over your skin seems surprisingly sexy, and your arousal only intensifies when you realize that it is actually [bold type]a slave collar[roman type]. The thought makes you blush slightly as you realize that it is the perfect collar for one to wear when one is submitting to one's master or mistress, and several shiny metal rings on it serve a perfect attachment-points for a leash...";
				say "     You can't help but pant slightly at the amazingly arousing yet disturbing thought of being used like a submissive sex-pet, and try to discard the collar... only to find yourself pausing slightly, unable to bring yourself to throw away such an amazingly sexy item, and the promise of happy submission it carries. Looking around slightly to see if Nermine is watching, you slide the collar into your pack almost guiltily, feeling increasingly submissive and slutty due to your action and whatever hold the collar has over you...";
				LineBreak;
				say "[bold type]'Submissive' has been added to your feats![roman type][line break]";
				add "Submissive" to feats of the player;
		else if Z is 23: [bad luck]
			if "Bad Luck" is listed in feats of the player:
				say "     Reaching into the bargain bin, you almost groan as you feel your bad luck building up, likely going to ruin whatever attempt you make at retrieving an item from the bin. Feeling rather annoyed at the unfair world, you sigh helplessly and decide not to fight fate as you grab whatever comes to hand before pulling it out to look at it, obviously not expecting much given your luck. Imagine your surprise however, when the item you pulled out appears to be a [bold type]custom soda holder[roman type], the kind used at beaches and for parties, and mostly full as well! What a nice surprise you find yourself thinking for a minute... right before the first soda slips out of the holder, and lands right on your foot!";
				say "     Jumping in pain, you accidentally toss the soda holder up in the air. More cans slip of it as it tumbles end over end, and you groan and cry out as you are pelted with a short heavy rain of soda cans. When the ruckus finally stops you hear a small noise, and glance over to see Nermine valiantly covering her muzzle with one delicate paw as she tries not to laugh too hard at your antics. Sighing you realize your bad luck was obviously still working full force, though as you glance down around you, you at least managed to get some soda out of the deal... just be careful not to open them too soon after all that shaking.";
				LineBreak;
				say "[bold type]You have gained 5 soda cans![roman type][line break]";
				increase carried of soda by 5;
				decrease hp of player by 50;
				if hp of player < 0:
					now hp of player is 1;
			else:
				say "     Reaching into the bargain bin with high hopes, you feel something rather thin and metallic under your fingers. Pulling it out you find yourself staring into a rather [bold type]nicely-made hand mirror[roman type]. Admiring the fine looking object, you take a look at your reflection, only to gasp in surprise as it shows you kneeling on the floor in front of a shadowy figure, your features strange and twisted. They are a mixture of several other beasts, only somehow weaker and less dominant, your eyes wide and glazed without any sign of free will left, though obviously still recognizable as your own. Strangely enough even as you stare at it, the eyes of the shadowy figure turn and bore into your own eyes, and you gasp and drop the mirror in surprise.";
				say "     The sound of the mirror shattering as it hits the floor snaps you out of your shock, and you look down at the mess even as Nermine tsks at you sadly. 'Is going to be seven years bad luck from now on, Nermine fears.' Her pronouncement makes you shudder slightly, as you feel a chill go down your spine... As creepy as the mirror was, you can't actually bring yourself to feel bad that it was destroyed.";
				if "Bad Luck" is not listed in feats of player:
					LineBreak;
					say "[bold type]'Bad Luck' has been added to your feats![roman type][line break]";
					add "Bad Luck" to feats of the player;
		else if Z is 24: [Nermine lecture]
			say "     As you start to reach into the bargain bin to search, [bold type]Nermine reaches out and stops you[roman type]. 'Nermine has bad feeling about the bin at this time. Maybe her friendly customer would like to accept a bit of advice on things from Nermine instead?' she says, and glancing down into the seemingly bottomless bin, you swear you see something moving around in the piles of strange charms and items! Feeling rather lucky that Nermine intervened, you nod absently, and listen with increasing interest as the jackaless gives you several rather useful tips and teaches you a few small tricks to help keep you alive in the city as it is now. You come out of it feeling like you learned some important things! Although strangely enough after your conversation, just what it was that you were taught is hard to recall. You do remember they were quite significant...";
			LineBreak;
			if a random chance of 1 in 3 succeeds and nerminefeat is 0:
				say "[bold type]Quite significant indeed...[roman type][line break]";
				wait for any key;
				now nerminefeat is 1;
				featget;
			else:
				say "[bold type]You gain Xp![roman type][line break]";
				increase xp of player by a random number between 50 and 100;
		else if Z is 25: [medical armband]
			if "Expert Medic" is listed in feats of the player:
				say "     Rummaging through the bargain bin, you feel a rather familiar plastic case in the bin, and smile as you grip it and pull it out. Much to your delight, as you thought, the item was [bold type]a medkit[roman type]! With your practical medical skills, this should be quite useful indeed you think with a smile as you tuck the medkit away in your bag.";
				LineBreak;
				say "[bold type]You gain a medkit![roman type][line break]";
				increase carried of medkit by 1;
			else:
				say "     Rummaging through the bin, you feel some sort of cloth band snag in your fingers, and being somewhat interested in what kind of cloth item is in a bin like this, you pull it out for a better look. You blink in surprise to find it is a surprisingly [bold type]functional-looking armband, with the sign of the red cross[roman type] on it. Somewhat on impulse, you slide the armband on and admire it for a minute. Just the feeling of its weight on your arm makes you feel a bit safer and more like a paramedic, and you pose in amusement for a minute like you were about to bandage someone up... only to realize that you actually feel like you know how to bandage someone professionally!";
				say "     Surprised, you look down at your new armband in wonder, only to discover that it is nowhere to be found! Shaking your head slightly at the weirdness of the situation, you look around for it a little while, before sighing and realizing that despite the disappearance, your strange new medical skills are there to stay...";
				LineBreak;
				say "[bold type]'Expert Medic' has been added to your feats![roman type][line break]";
				add "Expert Medic" to feats of the player;
		else if Z is 26: [compass]
			say "     Looking through the strange bin full of treasures and junk (and you can't actually be sure which is which...) you find your attention drawn to a rather [bold type]interesting-looking compass[roman type] made out of some iridescent metal. Feeling curious you pull the compass out and look at it closely, only to be surprised as the needle on its face starts to spin around and around with increasing speed. Just staring at the spinning needle makes you feel quite dizzy and disoriented, and you stumble around for a minute, your head swimming as you blink and try to clear it. By the time your vertigo clears, you note with shock that the compass seems to have vanished! Looking up from your empty hand, the next surprise is already waiting for you, as Nermine's store seems to have vanished as well, and you now are in some place completely different with absolutely no idea how you got there!";
			wait for any key;
			let P be a random number between one and six;
			if P is 1:
				Move player to The PALOMINO;
			if P is 2:
				Move player to Zoo Entrance;
			If P is 3:
				Move player to Museum Foyer;
			If P is 4:
				Move player to Park Entrance;
			If P is 5:
				Move player to Beach Plaza;
			if P is 6:
				Move player to State fair;
		else if Z is 27: [mutation idol]
			if "Mutable" is listed in feats of the player or AngryHorguth is 1:
				say "     Rummaging through the bargain bin, you come across several unusual items, most of which you ignore, but eventually you find a rather strange and [bold type]shiny rock[roman type] which seems to call to you. Rolling the rock around in your hand with some amusement, you enjoy the way it seems to glow with an inner light, only to cry out in pain as it starts to sink into your unprotected hand! Pulling your hand out of the bin, you wave it around trying to dislodge the rock, while the Jackal shopkeeper shakes her head in amusement. The rock actually seems to meld into your skin despite your best efforts to dislodge it however, and a moment later you skin seems to tingle and harden somewhat, becoming slightly tougher. While somewhat of a relief that that is all that happens, it is still rather disconcerting, not to mention painful!";
				LineBreak;
				say "[bold type]Your stamina has increased by 1![roman type][line break]";
				increase stamina of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxhp of player by level of player plus 1;
				decrease hp of player by 10;
				if hp of player < 0:
					now hp of player is 1;
			else if "Resistant" is listed in feats of the player:
				say "     Poking through the rather unusual bargain bin cautiously, you come across a strange-looking stone statue, which looks like some kind of primitive idol. Pulling the idol out of the bin for a better look, you see that it appears to be a squat humanoid made up of many different animals mixed together, the melding of the different beasts remarkably smoothly done for such a sculpture. As you look it over, you are surprised to see that its visage has changed all of a sudden to one of displeasure. You yelp softly and push the thing away out of fear to see as the small stone figuring stretches its misshapen limbs out, before seeming to fade away as a small nimbus of dark haze envelops the idol. The sensation of oncoming changes builds in your hands as the strange idol's effects cause several random infections to affect you.";
				say "     'Ah! It seems to Nermine that [bold type]Horguth the Changeable is upset[roman type] with her bargain-hunting customer. Perhaps at trying to avoid his influence?' The jackaless says with no little amusement, as you stare at your now empty hand in disbelief as the tingles spread up your arms.";
				decrease humanity of player by a random number between 8 and 15;
				now AngryHorguth is 1;
				randominfect;
				randominfect;
				randominfect;
			else:
				say "     Poking through the rather unusual bargain bin cautiously, you come across a strange-looking stone statue, which looks like some kind of primitive idol. Pulling the idol out of the bin for a better look, you see that it appears to be a squat humanoid made up of many different animals mixed together, the melding of the different beasts remarkably smoothly done for such a sculpture. As you turn it from side to side to get a better look, you are surprised and nearly drop the small idol when its head turns and winks one reptilian eye at you, while its other feline eye watches you closely. Your mouth drops open in shock as you hold the idol out for Nermine to see, just as the small stone figurine stretches its misshapen limbs out, sending a beam of rainbow light to wash over you while the idol itself fades away into nothingness.";
				say "     'Ah! Nermine sees her customer has found a bargain indeed. How fortunate to get the [bold type]blessing of Horguth the Changeable[roman type]. The ancient god does not show himself to just anyone. Some may consider such a blessing to be mixed, for surely change shall come much more easily now, both good and bad.' The jackaless says this with no little amusement, as you stare at your now empty hand in disbelief.";
				LineBreak;
				say "[bold type]'Mutable' has been added to your feats![roman type][line break]";
				add "Mutable" to feats of the player;
		else if Z is 28: [rescue beacon]
			say "     Looking through the bin full of items, you come across an item that looks like some kind of strange radio, and feeling somewhat hopeful you pull it out of the bin. Interestingly enough, the item appears to be some kind of [bold type]military radio beacon[roman type], probably some sort of distress beacon of one kind or another. More importantly, it looks like it might still work as well! Feeling excited for a moment, you realize that if you were to trigger the beacon, the military might hurry up their efforts to come rescue you! Then again, they might be a little disappointed to find it wasn't a military team that set it off... but still it would be worth it to get out of this crazy town... unless you feel more comfortable staying in the changed city after all...";
			say "     [bold type]Do you trigger the beacon?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yeah! The sooner you are rescued the better!";
			say "     ([link]N[as]n[end link]) - No! As strange as life here is, you don't want this adventure to end too quickly.";
			if player consents:
				LineBreak;
				say "     Deciding it should be worth it to get the heck out of this crazy place even a bit sooner, you trigger the beacon, watching carefully as you do so. Fortunately enough, it seems to work just fine and its readouts start blinking slowly as it begins to transmit its position to whoever may be monitoring it. Feeling a grin tug at your face as hope for rescue is renewed, you tuck the small device away in your pack carefully to make it easier for the military to find you, and continue about your business.";
				extend game by -24;
			else:
				LineBreak;
				say "     Staring at the beacon idly, you find yourself wondering if maybe it couldn't be used to ward off the military instead of calling them in. After only a little bit of fiddling, you find a way to make it transmit white noise on the emergency channel as well, and with a grin you realize all you need to find is a good place to drop your new little jamming device, and it will surely hinder the military's efforts in the city enough to delay them for a while.";
				extend game by 16;
		else if Z is 29: [slave training books]
			if "Good Teacher" is listed in feats of the player:
				say "     Looking through the rather unusual bin, you find a strange and rather modern book tucked away amidst the charms and crystals, and with some amusement decide to pull it out for a closer look. Much to your surprise, the title of the book is [bold type]'Pets, slaves, and proper behavior.'[roman type] Feeling somewhat curious, as well as interested in being a good teacher for your pets, you decide to flip through the book absently, and move to skim the book, only to find your eyes caught by the text as you begin to read the book carefully and intently, whether you intended to or not! Of course you quickly realize the book is nothing like what you expected, as instead of being a book for the trainer, it appears to be a book designed to help pets and slaves learn proper behavior instead!";
				say "     As you read about all the pleasures of being at the feet of your master, and the proper way to wear rubber paws and tail-buttplugs, and especially tips on how to move properly on all fours when being walked on a leash, you find it harder and harder to hold onto your sense of self. Before long you are almost panting with desire and arousal as you flip through the pages as fast as you can, as eager to learn the next lesson as any good pet would be. Eventually though the small volume is finished, and you find yourself standing there with a happy smile on your face for several minutes before you turn back to the front to read the book again...";
				WaitLineBreak;
				say "     Fortunately you manage to catch yourself and realize what you are doing before you actually open the cover and begin your next round of slavery training. Shuddering slightly you toss the rather strange training manual back in the bargain bin, though you know that if you come across it in the bin again, you will end up reading again... somehow that thought just seems to be increasingly erotic the longer you think about it.";
				decrease humanity of player by a random number between 10 and 25;
				if hp of player < 0:
					now hp of player is 1;
				follow the turnpass rule;
			else:
				say "     Sorting through the bin, you are surprised to find a rather modern-seeming book tucked away amidst all the rest of the clutter. Deciding that anything in this bin is probably not quite what it seems, you curiously pull the book out to take a look at it. You blink in surprise as you look at the title, [bold type]'How to train a good pet (and how to make your slaves love you) Volume IV'[roman type] Feeling rather amused at the title, you decide to flip through the book absently, only to find yourself blushing slightly at all the pictures of women and men in animal costumes being trained alongside regular animals. Strangely enough, most of the training tips contained within would apply equally well to both intelligent beasts and wild animals, and as you skim the book in a kind of rapt fascination, you find yourself learning quite a bit about how to train your pets to work and fight with you better... or your slaves...";
				say "     After skimming it once, almost toss the rather disturbing (yet also oddly helpful) book away, only to stop and tuck it away in your pack on impulse... who knows it just might come in handy again sometime...";
				LineBreak;
				say "[bold type]'Good Teacher' has been added to your feats![roman type][line break]";
				add "Good Teacher" to feats of the player;
		else:
			say "     Rummaging through all the strange items in the bin, you find yourself pulling out an object you are sure you have seen somewhere else around the city, and sigh despondently as you tuck your new common item back in your backpack.";
			LineBreak;
			let minorbargain be a random number from 1 to number of filled rows in the table of random critters;
			choose row minorbargain from the table of random critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					add loot entry to invent of player;
					say "[bold type]You acquired 1 [loot entry]![roman type][line break]";
					increase carried of dirty water by 1;
					say "[bold type]You acquired some dirty water![roman type][line break]";
				else:
					if guy is not banned and furry is not banned:
						increase carried of Chipped tooth by 1;
						say "[bold type]You acquired a Chipped tooth![roman type][line break]";
					else if girl is not banned and furry is not banned:
						increase carried of Skunk Goo by 1;
						say "[bold type]You acquired some Skunk Goo![roman type][line break]";
					else if hermaphrodite is not banned and furry is not banned:
						increase carried of panther milk by 1;
						say "[bold type]You acquired some panther milk![roman type][line break]";
					else:
						increase carried of dirty water by 1;
						say "[bold type]You acquired some dirty water![roman type][line break]";
					increase carried of dirty water by 1;
					say "[bold type]You acquired some dirty water![roman type][line break]";
			else:
				if guy is not banned and furry is not banned:
					increase carried of Chipped tooth by 1;
					say "[bold type]You acquired a Chipped tooth![roman type][line break]";
				else if girl is not banned and furry is not banned:
					increase carried of Skunk Goo by 1;
					say "[bold type]You acquired some Skunk Goo![roman type][line break]";
				else if hermaphrodite is not banned and furry is not banned:
					increase carried of panther milk by 1;
					say "[bold type]You acquired some panther milk![roman type][line break]";
				else:
					increase carried of dirty water by 1;
					say "[bold type]You acquired some dirty water![roman type][line break]";
				increase carried of dirty water by 1;
				say "[bold type]You acquired some dirty water![roman type][line break]";
	else:
		say "     Sorting through your pack, you are ashamed to realize you can't afford to draw something out of the bargain bin right now. You blush under Nermine's curious gaze, as you casually move off to look through the rest of the store instead.";
	if bargainbinusagetotal is greater than 41: [ie 42 or greater, arbitrary number chosen to limit bin usage. should allow most (possible all) things to be found.]
		say "With the removal of your latest findings, the Bargain Bin appears oddly empty. The few things left in it are ones you have rejected already. Won't be any more bargains from this bin."; [feel free to replace this text with anything that makes more sense]
		move Bargain Bin to dark basement;
		remove Bargain Bin from play;

[ Plush Lion / rubber tigress / chocolate lab in bin ]
to say plrtcl:
	if humorous is banned or furry is banned or ( guy is banned and girl is banned and hermaphrodite is banned):
		say "     As you start to dig in one corner of the bin, Nermine steps up to you and lays a slender paw-hand on your arm. 'Nermine can tell that her bargain-hunting customer will not be wanting anything from that corner. She is sorry, but the bargain bin is like that some times. As not to leave her hopeful visitor dissatisfied, Nermine will gladly refund the items paid - maybe to be held ready for another go at finding something desirable?' With that, the jackaless gives you back your food and the water bottle. 'But Nermine also has to comment that maybe her dear customer should be thinking to not be so picky. More fun is to be had that way,' she adds philosophically.";
		increase carried of food by 1;
		increase carried of water bottle by 1;
	else:
		let Q be a list of numbers;
		if guy is not banned, add 1 to Q;  [Plush Lion]
		if girl is not banned, add 2 to Q;  [Rubber tigress]
		if hermaphrodite is not banned, add 3 to Q;  [Chocolate Lab]
		sort Q in random order;
		now tempnum is entry 1 of Q;
		if tempnum is 1:
			say "     Sorting through the unusual and strange items in the bargain bin, you blink as you come across some sort of [bold type]little lion doll[roman type]. Pulling out the plush toy, you grin in amusement as you wonder just what a cute little thing like this was doing in such a strange place. Suddenly you feel slightly dizzy, and the new doll seems to slip from your hands as you stagger slightly before bracing yourself on the counter. Looking down you realize that while you don't actually see the doll anymore, you see plenty of soft plush lion fur. It's spreading all over your body! Panicking slightly, you try to shake the stuff off of you - to no avail! As your head starts to fill with fluff, you blink as you realize that having such nice, soft, leonine fur could be a good thing.";
			LineBreak;
			say "     Now, if only you could find another plush lion to play with you...";
			setmonster "Plush Lion";
			choose row monster from the table of random critters;
			now skinname of player is "Plush Lion";
			now cockname of player is "Plush Lion";
			now bodyname of player is "Plush Lion";
			now facename of player is "Plush Lion";
			now tailname of player is "Plush Lion";
			now tail of player is the tail entry;
			now face of player is the face entry;
			now skin of player is the skin entry;
			now body of player is the body entry;
			now cock of player is the cock entry;
			attributeinfect "Plush Lion";
		else if tempnum is 2:
			say "     Sorting through the unusual and strange items in the bargain bin, you blink as you come across an [bold type]inflatable tiger[roman type]. Pulling out the small rubber toy, you grin in bemusement at what a silly little thing like this is doing in such a strange place. Looking it over quickly, it seems to have surprisingly survived its time in the bargain bin unpunctured. You give it a light squeeze between your hands and it pops with an odd, meow-like bang, causing you to jump back in surprise. The popped balloon toy hangs limply in your hands... which start to tingle. Looking down, you realize that the toy's rubber skin is melting into your own and spreading all over your body! Panicking slightly, you try to shake the stuff off of you - to no avail. As your head shifts an inflates into a more feline form, you blink your plasticky eyes as you realize that having such lovely, smooth skin could be a good thing.";
			LineBreak;
			say "     Now, if only you could find another rubber kitty to play with you...";
			setmonster "Rubber tigress";
			choose row monster from the table of random critters;
			now skinname of player is "Rubber tigress";
			now cockname of player is "Rubber tigress";
			now bodyname of player is "Rubber tigress";
			now facename of player is "Rubber tigress";
			now tailname of player is "Rubber tigress";
			now tail of player is the tail entry;
			now face of player is the face entry;
			now skin of player is the skin entry;
			now body of player is the body entry;
			now cock of player is the cock entry;
			attributeinfect "Rubber tigress";
		else:
			say "     Sorting through the unusual and strange items in the bargain bin, you blink as you come across a strange chocolate treat. Held in a rather plain box, this two-pound [bold type]chocolate hound[roman type] is small, but solid. You presume it must be a leftover from Easter and pop the top to take a better look. Certainly, you feel, this would make a tastier treat than some of your recent meals. Your mouth waters as the scent of delicious, quality milk chocolate fills the air. You pull it out and look it over, telling yourself you'll just take a nibble and save the rest for the next time you're hungry. The canine confectionary seems well molded, with considerable attention to detail, further instilling the idea that it's a quality product in your mind. But then, you start to notice flaws and few details being slightly off... and more and more after that.";
			say "     Turning the chocolate figure around to look at its front end again, you realize that it isn't actually a lack of detail - the chocolate itself is rapidly growing soft! More so than the warmth of your hands could realistically make it... and soon, it is actually flowing down over your hands as if it had a life of its own! You can't help yourself and start gobbling down the chocolate, licking off the tasty treat from your fingers and moaning in pleasure as its smooth sweetness flows down your throat even as your hands get stickier and the brown starts to spread up your arms. As you lick up the last of the flowing chocolate, you realize that your hands underneath have become chocolate paws! Panicking slightly, you try to shake the stuff off of you - to no avail. Soon you are blinking your dark chocolate eyes as the chocolate sinks deeper and you become solid chocolate like the dog you found.";
			LineBreak;
			say "     Now, if only you could find another confectionary to play with you...";
			setmonster "Chocolate Lab";
			choose row monster from the table of random critters;
			now skinname of player is "Chocolate Lab";
			now cockname of player is "Chocolate Lab";
			now bodyname of player is "Chocolate Lab";
			now facename of player is "Chocolate Lab";
			now tailname of player is "Chocolate Lab";
			now tail of player is the tail entry;
			now face of player is the face entry;
			now skin of player is the skin entry;
			now body of player is the body entry;
			now cock of player is the cock entry;
			attributeinfect "Chocolate Lab";

Table of Game Objects (continued)
name	desc	weight	object
"jackal romance novels"	"A small stack of romance novel paperbacks, most of them depicting a dashing jackalman on their fronts, generally shirtless and in a heroic pose. They look realatively well-thumbed, seems like Nermine read them more just than a few times..."	0	jackal romance novels

instead of sniffing jackal romance novels:
	say "     Somehow, the scent of the books makes you think of hot desert sands, as well as the sea.";

jackal romance novels is a grab object.
the usedesc of jackal romance novels is "[jackal romance novels use]";

to say jackal romance novels use:
	say "     You page through one of the novels and start reading about the adventures of the hero of the book, a dashing jackalman who is a devil with his sword - and an amazing lover too, as it turns out. For books that are really quite explicit and hardcore, you have to say that you do enjoy the writing in its own right as well. Nermine certainly has a good taste in her special literature...";
	increase libido of player by 10;

instead of trading the jackal romance novels when the current action involves the Nermine:
	say "     As you offer the books to her, Nermine instantly snatches them from your grasp and quickly hides them under her counter. Then she tells you, 'The humble storekeeper is grateful for the return of her private property. As she has offered her vistior before, she will pay twice the buying price.' With a slightle embarrassed expression, she quickly hands you two packets of food and also two water bottles, then acts as if the whole deal didn't happen.";
	LineBreak;
	say "[bold type]You gain 2 food![roman type][line break]";
	say "[bold type]You gain 2 water bottles![roman type][line break]";
	increase carried of food by 2;
	increase carried of water bottle by 2;
	decrease carried of jackal romance novels by 1;
	now RomanceBooksFound is 1; [gave them back to Nermine]

Section 4- Jackal totem

Table of Game Objects (continued)
name	desc	weight	object
"Jackal totem"	"A small statue of a jackal posing proudly made out of some shiny black stone. It feels slightly warm in your hands."	1	jackal totem

jackal totem is a grab object. It is part of the player. Understand "totem" and "jackal" as jackal totem.

the scent of jackal totem is "The totem smells like hot sand.".

The usedesc of jackal totem is "[jackaltotemmagic].";

To say jackaltotemmagic:
	if nightmaretf is greater than 0:
		say "     Rubbing the small totem curiously, you can feel some strange and almost invasive force trying to merge with your body, and you hear small whispering about the pleasures of submission and surrender. With a shudder you find yourself fighting back almost instinctively, the power of your current form easily overpowering that of the totem. With one last shake of your head you clear the last remnants of the intrusion from your mind. The thought of you bowing down submissively is so ridiculous it almost makes you laugh. Looking down at the little totem, you find that at some point during the internal struggle, you crushed the small item in your hand. Brushing the remains of the totem off, you shrug and guess Nermine won't be giving you any help in that manner, and continue along with your business.";
		now NermineTalk is 1;
		now JackalBoyTF is 5;
	if wrcursestatus >= 7 and wrcursestatus < 100:
		say "     You rub the small totem curiously and hiss in pain as it starts to heat up, scalding your hand. Annoyed, you toss it aside, uncaring about where it may end up or who will find it. Something about you is incompatible with it.";
		now NermineTalk is 1;
		now JackalBoyTF is 5;
	else if JackalBoyTF is 0:
		say "     Rubbing the small totem you wonder just what effects Nermine expects it to have. You are intially disappointed when all that seems to happen is that the totem grows a bit warmer in your hands. You sigh and are about to put the tiny black statue away when suddenly your ass start to tingle and feel strange while the totem grows ever warmer under your touch. Glancing behind, you are surprised to see your ass seeming to stretch and change, your rear flattening out slightly as a small black jackal-like tail forms behind you. You feel a strange almost pleasant stretching sensation as your new tail grows until its tip is hanging just below your knees.";
		say "     Staring at your new appendage you find yourself experimentally moving it from side to side a few times, and watch as it responds with surprising dexterity. Taking a few steps you are surprised to find your new tail helping your balance greatly. To yourself, you have to admit, the nice jackal tail does look rather hot on you. A strange sensation in your hand makes you look down, where you see the little token turn into fine grains of black sand and slip through your fingers, then blow away on a sudden gust of wind coming out of nowhere. Huh. Guess its purpose has been fulfilled, so you won't need it anymore...";
		now tailname of player is "Jackalboy";
		now tail of player is "You have a sleek black-furred jackal's tail attached to your rear. It seems to sway happily over your tight sexy ass with every step you take.";
		increase dexterity of player by 3;
		say "Your dexterity has increased by 3!";
		now JackalBoyTF is 1;
	else if JackalBoyTF is 1:
		say "     Taking hold of this new jackal figurine, you nervously rub it between your hands several times, wondering what will happen this time. The totem seems to grow warm before crumbling into dust between your fingers, making your hands start to tingle strangely as the dust sticks to them, covering them in blackness. Looking down at your skin, you blink as the night-black color starts to spread, covering your hands in shiny blackness. You quickly realize as the blackness surges up your arms and starts to cover your body in leaps and bounds that it is actually shiny black fur, sleek dark jackal fur just like Nermine's. For some reason, the idea of having soft and sexy black fur just like the nice and wonderful shopkeeper of that strange shop seems to make you feel happier and more content, and also perhaps just a bit horny as well. Somehow you are sure your nice new pelt of soft fur will appeal to more than just the shopkeeper as well, and find yourself looking forward to showing off your new beautiful pelt.";
		now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
		now skinname of player is "Jackalboy";
		increase charisma of player by 4;
		say "Your charisma has increased by 4!";
		now JackalBoyTF is 2;
	else if JackalBoyTF is 2:
		Say "     Taking out the shiny black jackal statue, you get the impression for a second that this particular jackal totem is grinning at you, but when you take a closer look you see that it looks just like the other statues. You rub the little figurine eagerly, looking forward to whatever powerful change this one will bring out in you. There it is again! This time, you are sure that you've seen the totem grin and wink at you, so you raise it to right in front of your eyes once more. As you focus on the black jackal intently, he wags his ears at you and grins, then suddenly crumbles into dust that a gust of what seems to be warm desert air blows straight into your face. You reach your hands up to feel your face, even as it seems to crack and shift, your sight clouding over as your eyes seem to change. When you can see again a second later, the lower half of your face seems to shift, pulling forward into a black-furred muzzle like a jackal would have.";
		say "     While you are feeling the sides of this new jackal-like face, even as the bones settle and it finishes forming, new scents explode through your brain as your nose finishes shifting into place atop your narrow canine muzzle. You blink several times as you focus on something else than your own face for a second, finding that you see the world through new sharper eyes, and all sounds around you intensify as your new black canine ears finish shifting to stand straight up on your changed head. A feral grin stretches your new muzzle wide as you think of how happy Nermine will be to see your newest change, your mind filled with thoughts of Nermine and the need to please the wonderful jackal-woman. As you take in the world through your new heightened senses, you find yourself hoping she will be pleased enough with you to help you on your way to becoming even more the happy little Jackal you just know you need to be.";
		now facename of player is "Jackalboy";
		now face of player is "narrow canine head, with a long sleek muzzle and a nicely flattened forehead. Your golden eyes seem to take in every aspect of the world around you, as your sleek jackal ears swivel around on top of your head to catch the faintest noise. You can't help but enjoy how much your mistress seems to like your new jackal's";
		increase perception of player by 3;
		say "your perception has increased by 3!";
		now JackalBoyTF is 3;
	else if JackalBoyTF is 3:
		say "     Pulling this small jackal totem out, you find yourself grinning along with the statue as you realize that surely this figurine will be the last one you will need. Rubbing the little statue eagerly you feel a surge of warmth as it seems to melt under your hands, not crumbling like the others but melding with your body to become part of you. You don't have much time to think about this however, as your entire body starts to tingle and shift this time, your muscles seeming to ripple and smooth out, to give you a softer and more delicate appearance. You can feel the sharp claws of a jackal pushing out of your hands and feet, even as your body begins to take on a slightly more animalistic shape. Your heels lift slightly off the ground as your rear legs crack and shift to a more stable stance and your feet seem to spread apart on new jackal paws.";
		say "     Looking down over yourself as the tingling begins to fade, you realize that you seem to be rather lean and skinny now, and perhaps a little shorter. Your new body is obviously more built for grace and speed than combat or hard labour. The sight of your new form makes you smile happily - it is just what you needed for serving your mistress, with its silky soft skin and sensitive body obviously perfect for pleasuring and serving the larger and stronger jackal-woman. Thinking about Nermine you realize you can hardly wait to get back and show her your new perfect form, and thank her for all her help in helping you become the submissive little jackaltoy she wanted you to be.";
		LineBreak;
		say " Wasting no time, you quickly run towards the shop, unable to wait as thoughts of the pretty and dominant shopkeeper run through your head. Maybe if you are lucky she will even have another job or two for you to do, and if you are really lucky she will even play with you some! You find yourself panting happily at the new thoughts, even as you run through the city on your swifter and surer legs.";
		now bodyname of player is "Jackalboy";
		now body of player is "slim and sleek, only lightly muscled with slightly digitigrade legs and jackal-like feet, your slim body is the perfect type of body for a submissive little jackal boy like yourself";
		attributeinfect "Jackalboy";
		now cockname of player is "Jackalboy";
		now cock of player is "[one of]canine[or]Jackalboy[or]jackal-like[or]knotted[at random]";
		decrease strength of player by 2;
		decrease capacity of player by 10;
		increase dexterity of player by 4;
		say "Your strength has decreased by 2!";
		say "Your dexterity has increased by 4!";
		now JackalBoyTF is 4;

[ JackalBoyTF                            ]
[  1: Jackalboy Tail                     ]
[  2: Jackalboy Skin                     ]
[  2: Jackalboy Head                     ]
[  4: Jackalboy Body                     ]
[  5:                                    ]

An everyturn rule:
	if JackalBoyTF is 5:
		increase score by 0;  [do nothing statement]
	else:
		if JackalBoyTF >= 1:
			if tailname of player is not "Jackalboy":
				say "     Your ass tingles as it shifts and changes while you watch, the power of that strange totem you used obviously still strongly affecting your body. It doesn't take long for your jackal-like tail to reform. Its sleek dark presence behind you proves that its form is stronger then your more recent infection.";
				now tailname of player is "Jackalboy";
				now tail of player is "You have a sleek black-furred jackal's tail attached to your rear. It seems to sway happily over your tight sexy ass with every step you take.";
		if JackalBoyTF >= 2:
			if skinname of player is not "Jackalboy":
				say "     Your skin seems to writhe and twitch, as if something were fighting underneath the surface. Soon you can see patches of silky soft black jackal fur once more pushing their way out of your body. The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dark softness once again.";
				now skinname of player is "Jackalboy";
				now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
		if JackalBoyTF >= 3:
			if facename of player is not "Jackalboy":
				say "     Something seems wrong to you for a minute, a frustration with your current head and face, making you snap and snarl like a beast as you try to work out the problem. You can feel the pressure inside your head building, until finally something seems to snap, and you let out a loud low moan of pleasure as your face begins to reshape itself. Your moaning cry soon transforms as well until the cry of a triumphant jackal echoes throughout the city, as you happily greet the return of the properly handsome face your mistress gave you.";
				Now facename of player is "Jackalboy";
				now face of player is "narrow canine head, with a long sleek muzzle and a nicely flattened forehead. Your golden eyes seem to take in every aspect of the world around you, as your sleek jackal ears swivel around on top of your head to catch the faintest noise. You can't help but enjoy how much your mistress seems to like your new jackal's";
		if JackalBoyTF >= 4:
			if bodyname of player is not "Jackalboy":
				say "     Your body seems to twist and warp, making you convulse as its fights off the intrusive new infection. Soon you can see your form slimming back down into the sleek soft lines of the jackalboy your mistress likes so much. The sight fills you with relief, as you shake off the last vestiges of the other infection. After all, you wouldn't want to make your mistress unhappy by being anything less than the lovely submissive jackal she helped mold you into.";
				now bodyname of player is "Jackalboy";
				now body of player is "slim and sleek, only lightly muscled with slightly digitigrade legs and jackal-like feet, your slim body is the perfect type of body for a submissive little jackal boy like yourself";
				attributeinfect "Jackalboy";
			if cockname of player is not "Jackalboy":
				now cockname of player is "Jackalboy";
				now cock of player is "[one of]canine[or]Jackalboy[or]jackal-like[or]knotted[at random]";

Section 5 Nermine quests

Strange Shop is a situation.

Instead of resolving a Strange Shop:
	say "     Traveling through the deserted streets of the city, you stumble into a small gathering of Ashen dragators that appear to be squabbling over which of them gets what looks like a recently captured human. Unfortunately they notice you almost immediately and a cry goes up as a number of them turn your way. Apparently your appearance has helped simplify the argument as they are eager to get another person to breed, and around eight or so of the dangerous fiery beasts immediately head your way. Staring at the large number of creatures arrayed against you, you do the only sensible thing in this situation and run. There really isn't anything you can do for their current captive, even if you tried...";
	say "     The beasts are hot on your heels as you dart through alleyways and down the mostly deserted streets of the city. You just can't seem to shake your pursuers however, and as you run from them in a reckless sprint, you find that the chase is attracting a good deal of additional from other infected in the city. Glancing back, you are shocked to see that there are now a group of gryphons squabbling with a wyvern above, the only reason one of them hasn't swooped down yet being their disagreement of who gets to do it. Then a pair of harpies joins the throng, further heating up the shouting and screeching match. Man, you really built a train of predators eager to snatch you! And worse yet, the dragators are gaining ground on you too!";
	WaitLineBreak;
	say "     Your eyes dart around, looking desperately for any avenue of escape, only to spot an alley up ahead. Taking a chance, you make a hard turn into the alley and see a half-open door only twenty or so feet ahead. Putting on one last burst of speed, you waste no time in diving through it, slamming the wooden door shut behind you. Panting loudly, brace against the door from the inside - partially to hold it shut, partially so you don't collapse in exhaustion, not really registering what is around you. Indeed, you close your eyes to listen, dreading sounds of clawed paws thundering down the alley, followed by splintering wood. But... they don't actually materialize. All is silent on the other side of the door. Could it be that you have shaken your pursuers?";
	if NermineTalk is 0: [never met Nermine]
		say "     'Well, that is interesting,' a feminine voice suddenly says close to you, making you flinch in shock at its sudden appearance. Blinking and looking around, for the first time taking in where you actually ended up, you see that it is a... store, maybe? The place is only partially lit, with a number of thick candles bathing the room in a soft glow. All around you, there are high shelves stuffed with all sorts of wondrous items, many of them looking ancient - from books to various masks, statues, and mystic paraphernelia. The person who spoke to you is a woman, an anthro jackaless from the looks of her, standing right in front of you and looking you up and down with interest. 'Welcome to Nermine's store. The friendly jackaless eagerly greets her prospective customer.'";
		WaitLineBreak;
		say "     Baffled at the sudden change of pace in things, you gape at Nermine for a second, then warn her that a whole throng of creatures might break down the door any second now. She raises one eyebrow in wonderment and gently pulls you away from the door while saying, 'Now why would the concerned guest think that? Nermine can assure her visitor that there is little to fear in her storage room. Certainly nothing that would break out.' And with that, she twists the ornate door-handle, opening the wooden door into what clearly is a mid-sized storage room, overstuffed with more strange items. She smirks mysteriously as she walks in on slender paws, then pulls a small wooden box out of one of the shelves, carrying it with her as she walks back out into the store and closes the door once more.";
		say "     Things are really, really weird in here - and by the time Nermine opens up her box and starts to ask, 'Would Nermine's visitor also like a cup of t-' ...you've already sprinted through the store and are out through what appears to be the front door of the store, with a dangling 'Open' sign and a large glass window flanking it. As the door falls shut behind you with the sound of a several little bells ringing, you are surprised that you actually are standing in the Smith Haven Mall, of all places. You've been here before, but... this strange store isn't something you remember about the place. Oh well, whatever brought you into it surely saved your bacon. Maybe it's worth to check it out and talk a bit more to Nermine...";
	else: [met her before]
		say "     'Well, that is interesting,' a feminine voice suddenly says close to you, making you flinch in shock at its sudden appearance. Blinking and looking around, for the first time taking in where you actually ended up, you see that it is... Nermine's store. The jackaless is standing before you, illuminated by the glow of several nearby candles. 'Nermine welcomes her guest back into her store. The need must have been great, if the back door was taken...' At her nod to the door you are still bracing against, you remember the trail of creatures that were following you and warn Nermine about them possibly breaking through it - but she just pulls you away from the door with a gentle paw-hand. 'Now why would the concerned visitor think that? Nermine can assure her friend that there is little to fear in her storage room. Certainly nothing that would break out.'";
		WaitLineBreak;
		say "     With that said, she twists the ornate door-handle, opening the wooden door into what clearly is a mid-sized storage room, overstuffed with more strange items. She smirks mysteriously as she walks in on slender paws, then pulls a small wooden box out of one of the shelves, carrying it with her as she walks back out into the store and closes the door once more. Opening what she is carrying and revealing leaves inside, the jackaless asks, 'Should Nermine make two cups of tea? It might provide some relaxiation for overstressed nerves.' Once more baffled by the strangeness that is her and her store, you accept, drinking a cup of admittedly excellent tea with the storekeeper before you eventually step out into the mall.";
	move player to Mall West Wing;
	now Strange Shop is resolved;

Bacchus Wine is a situation. The level of Bacchus Wine is 4.
The Sarea of Bacchus Wine is "Museum".
WineFound is a number that varies.

when play begins:
	add Bacchus Wine to badspots of guy;

Instead of resolving a Bacchus Wine:
	if WineFound is 0 or WineFound is 2: [regular scene or repeat after quest]
		if WineFound is 2:
			say "     Wandering through the museum halls, you return once more to the casks full of rich dark satyr wine, you realize that while you don't need any more wine for Nermine, you could still take a drink or two yourself...";
		else:
			say "     Wandering through the twisting corridors of the museum, you come across a small cask of some sort placed up against the wall. Investigating closer, you see that the cask is full of some dark red liquid, and a tantalizing fruity smell fills the air near it, making your mouth water. While looking around to see who may have left this cask here, you spot a small flagon lying up against the wall. It would be perfect for taking a taste of the liquid...";
		say "     [bold type]Do you indulge?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let's take a drink.";
		say "     ([link]N[as]n[end link]) - Nah, better not...";
		if player consents:
			LineBreak;
			say "     The hefty scent of the strange drink filling your nostrils, you dip the quickly collected flagon into the cask and fill it. The rich red liquid smells delightful as you bring it up to your lips to drink. A fantastic taste rolls over your tongue in an explosion of sweet tartness, followed by a pleasant burn on the way down. You can't help but swoon for a second as your head gets filled with arousal and the images of dancing nymphs and satyrs. OH! This must be pure satyr wine - more potent than what they usually carry and drink. Seems like they dilute it a bit.";
			say "     Getting more than a bit drunk and giddy as you drink, you can't bring yourself to stop swallowing more of the amazing dark wine. You guzzle the rest of the delicious liquid gold as fast as possible, and stare blearily at your now empty cup. Looking over the cask once more, you are about to walk up to it and get a refill when the sounds of several carousing satyrs reach your ear. Uh-oh, they're on their way here! Realizing you are poaching their booze, you quickly drop the flagon and stagger back out into the museum halls. Eventually your head clears up enough and you manage to find your way back to the museum foyer, feeling much more like partying and drinking wine then you did before finding the cask.";
			PlayerDrink 10;
			decrease humanity of player by 5;
			infect "Satyr";
			infect "Satyr";
		else:
			LineBreak;
			say "     Deciding it is best not to mess with strange casks and other such things in these dark halls, you continue on your way leaving the drink untouched.";
	else if WineFound is 1: [player is supposed to bring wine to Nermine]
		say "     Traveling down the museum halls, you spot several satyrs bemoaning their current lack of booze, then setting out to 'get a refill'. They seem fairly focused on getting more wine, not really noticing you as you stand in a shadowy archway when they move past. Remembering Nermine's request for some of the satyr wine straight from the source, you attempt to stealthily follow the nimble goat-men through the halls.";
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		increase diceroll by bonus;
		if diceroll is greater than 15:
			say "     Carefully moving through the halls, you have to duck down and hide several times as other creatures pass, but you eventually manage to follow the group of satyrs to a small alcove where they seem to have hidden several large wooden casks. The eager revellers quickly refill their flagons and flasks and leave, giving you the perfect opportunity to sneak into the alcove and look around. There are several more clay flagons scattered around on the floor, so it is easy for you to pick one and step up to the casks. Checking them out, one after another, you see that there is one that seems to be even darker and richer-smelling then the rest.";
			say "     Carefully raising its lid, you dip the flagon into the enticingly-smelling liquid and wait for it to fill, stoppering it when it after pulling the vessel out of the cask. Staring at the clay jug, you realize you now have the item Nermine asked for, and a surge of pleasure at the thought of being such a good little dog for your mistress shoots through you and makes your tail wag softly. After a minute you shake yourself and realize you should probably get out of here before any of the goat-men come back. Quickly heading out into the twisting halls of the museum, you hope you don't encounter too much trouble finding your way back...";
			now WineFound is 2;
		else:
			say "     Sadly your clumsy feet are not up to following the nimble beasts quietly enough, and while the rest continue on, two of them turn back to see what the noise was.";
			challenge "Satyr";
			challenge "Satyr";

Stolen Jewelry is a situation.
The Sarea of Stolen Jewelry is "Museum".
HyenaTrailing is a number that varies.

Instead of resolving a Stolen Jewelry:
	if RareQuesting is 8:
		say "     Traveling through the dimly lit hallways of the museum, you eventually find the room you are looking for in the egyptian section and wander inside hopefully. Sadly it doesn't take more than a short look for you to determine that just as Nermine feared, the items you are looking for have already been stolen. Sighing at how much more complicated this is going to be you carefully begin searching the room for any sign of who the thief might be, or where they have taken it.";
		let bonus be (( the perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
		increase diceroll by bonus;
		if diceroll is greater than 15:
			say "     Hunting through the room with a fine tooth comb, several times, you eventually turn up an interesting clue, a small tuft of hyena hair which was caught on one of the glass display lids. Wondering what a group of hyenas got into the museum to rob it, you realize that at least now you have something to ask [bold type]Valerie[roman type] about.";
			now HyenaTrailing is 1;
			now Stolen Jewelry is resolved;
			stop the action;
		else:
			say "     When you haven't found a clue after several hours of searching, you are forced to sigh and throw up your hands in disgust. Noting that all your searching seems to be attracting attention, you quickly head back to the foyer, forced to return later if you want to discover anything more about the mysterious thieves.";
			Stop the action;
	else:
		say "     Traveling through the relatively empty halls of the museum, as you pass one of the rooms in the egyptian wing, you are startled to see that someone has broken into several of the exhibits. From the looks of things, the thief or thieves made off with a bunch of antique jewelry. Sighing, you realize this was probably inevitable with the power to the alarms cut, and you walk away shaking your head sadly. Some part of you isn't quite sure if you are more depressed at the theft of the jewelry itself, or the fact that someone else beat you to it...";

Instead of conversing the Valerie while HyenaTrailing is 1:
	say "     'Hyenas? In the museum?' the sphinx says with a confused look as she looks around the foyer incredulously. 'If the city wasn't in the state its currently in, I would say you were going crazy.' Valerie adds a little haughtily, rejecting the mere idea out of hand. When you explain why you are asking however, she lets out a low growl. 'Someone stole from the museum? How horrible! But... hm, they didn't come through here, I can tell you that for sure. I'd have noticed, believe me!' She pauses to think for a minute, 'Hmm... that means they must have found another way to break in. I'd help you search, but given what you told me, I think it is even more important that I stay here and guard the entrance. Who knows what other furry barbarians might move in to sack the place otherwise!'";
	say "     She fans out her feathered wings for a moment, as if ready to pounce the next person walking in the door, then folds them back in again and sits down to stare at the entrance. Crossing her forepaws on the information desk, she glances sideways to you and adds, 'I'll hold this post. Meanwhile, you go and find whatever [bold type]alternate entry[roman type]point the thieves took. Give em a good thumping if you run into the bastards and please make sure they can't get in that way anymore.";
	now HyenaTrailing is 2;

Alternative Entry is a situation. The level of Alternative Entry is 8.
The Sarea of Alternative Entry is "Museum".
when play begins:
	add Alternative Entry to badspots of guy;
	add Alternative Entry to badspots of furry;

Instead of resolving a Alternative Entry:
	if HyenaTrailing is 2:
		say "     After returning to the egyptian exhibit you proceed to attempt to backtrack the hyena thieves trail through the dim hallways of the museum, relying on your keen powers of observation to help, (and perhaps a little luck as well...).";
		let bonus be (( the perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
		increase diceroll by bonus;
		if diceroll is greater than 15:
			say "     Carefully following the trail, you eventually come to an 'Employees Only' door in one of the outlying corners of the museum. Approaching the door, you think you hear some kind of faint rumbling noise coming from the other side. Feeling a surge of hope at the thought that the thieves might still be in the museum, you slowly creep up on the door as silently as possible. Finally at the door, you prepare yourself before throwing the door open wide and leaping forward, only to stumble backwards as you find you have just woken up a sleeping sabretoothed cat!";
			challenge "Sabretooth";
			if fightoutcome < 20: [player won]
				say "     You sigh in relief at having driven off so dangerous a beast, and after a moment to rest, you take a look inside the dark room the large cat was using for a den. Searching the area, you manage to discover a maintenance door which has had its lock broken quite recently. Opening the door, you see that it is an entrance to the the subway system and sewers. You sigh as you realize that trying to track the beasts through the filth of the sewers yourself will be pretty pointless at this point. Who knows what lives in there, and the stinking runoff will have washed away their tracks for sure. With a sigh, you close the door securely and barricade it with a nearby shelf. There, that should at least make Valerie happy.";
				if New Ewe Storeroom is known and Mary is in New Ewe Storeroom: [player rescued Mary]
					say "     Hm, you wonder for a moment what you should do now, then realize that there is a person who could possibly help you out. Mary, the previously lost sheep, was down in the underground for an extended time before you rescued her. It's a long shot, but she just might have encountered the hyenas down there too... Definitively worth a try, as you're out of other ideas right now. You resolve to check by the [bold type]New Ewe[roman type] store sometime soon.";
				else if NESProgress is 2: [player knows Mary is in the underground]
					say "     Hm, you wonder for a moment what you should do now, then realize that there is a person who could possibly help you out. Mary, the lost sheep, is still somewhere underground. It's a long shot, but she just might have encountered the hyenas down there too... Definitively worth a try, as you're out of other ideas right now. You resolve to try finding [bold type]Little Lost Lamb[roman type] through the sewers sometime soon.";
				else if NESProgress is 3: [player rescued Mary from the underground, hasn't checked in with her yet]
					say "     Hm, you wonder for a moment what you should do now, then realize that there is a person who could possibly help you out. Mary, the previously lost sheep, was down in the underground for an extended time before you rescued her. It's a long shot, but she just might have encountered the hyenas down there too... Definitively worth a try, as you're out of other ideas right now. You resolve to check by the [bold type]New Ewe[roman type] store sometime soon. She'll hopefully have made her way there by now.";
				else: [no contact with the New Ewe Crowd yet]
					say "     Hm, you wonder for a moment what you should do now, without much success. Tracking in the sewers is hopeless - even a bloodhound would capitulate to the stench, and the darkness and dirt pretty much rule out reading footprints. The only other idea that comes to you would be to find some friendly sewer-dweller who might have seen the hyenas pass through... but that's highly unlikely, right? A bit beaten and distraught, you walk back to the entrance of the museum. Maybe you should take a while off from this task to clear your head. Go out and maybe find a [bold type]store[roman type] that still has supplies to loot or something like that. You've still got your everyday survival to think of after all...";
				now HyenaTrailing is 3;
				now Alternative Entry is resolved;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Feeling much abused as the beast deposits you outside its lair, you slowly pull yourself back together before staggering your way down the halls to try to find your way back to the foyer. Once you finally manage to get there, you groan as you realize you aren't sure exactly where you found the large cat's lair. Seems like you will have to try tracking the thieves back to it all over again...";
				stop the action;
			else if fightoutcome is 30: [fled]
				say "     Running away as fast as you can from the beast, you stumble through numerous rooms before eventually finding your way back to the foyer. Once you calm yourself enough to think about things rationally again, you realize you aren't sure exactly where you found the large cat's lair. Seems like you will have to try tracking the thieves back to it all over again...";
		else:
			say "     After several hours wandering the halls, you are forced to admit that you have completely lost the trail of the thieves, and sigh as you set out to try to find your way back to the museum foyer so you can try again.";
			stop the action;
	else:
		say "     Wandering through the halls of the museum, you hear a faint rumbling noise from nearby, looking around you realize it is coming from one of the nearby 'Employees Only' doors. Your curiosity getting the better of you, you slowly open the door a crack and peek inside. You are startled to find yourself peeking right into the face of a large sabretooth cat! After a second of panic, the rumbling noise comes again, and you realize that the sound is the cat's soft snoring, the beast obviously having not gotten a good nights sleep in years, you decide to slowly close the door and let sleeping giant man-eating pussycats lie...";

[ Questioning Mary about the Hyena Thieves has been moved to the file "New Ewe Store.i7x" ]

Hyena Challenge is a situation. The level of Hyena Challenge is 12.
when play begins:
	add Hyena Challenge to badspots of hermaphrodite;
	add Hyena Challenge to badspots of furry;

Instead of resolving a Hyena Challenge:
	if HyenaTrailing is 4:
		 if matriarchdefeated is greater than 0 and matriarchowned is 0: [player is the omega hyena]
			say "     Moving through the city with purpose, you quickly head to the hyena gang hideout you know so well from your earlier failed attempts to challenge the matriarch. Approaching the building, you find several of the gang members talking about their most recent score from the museum. Realizing they must know what happened to the items Nermine wanted, you try to steel your courage as you go over to demand the more dominant hyenas tell you what they know. Recognizing you as their matriarch's submissive little pet hyena, the other gang members break into laughter at your meek attempt to challenge them.";
			say "     Their voices make you remember your time underneath the matriarch and cause you to quickly hunch down submissively without thinking. Seeing your reaction, the gang members seem to be even more amused, as they call out lewd suggestions even as you slowly slink away, realizing that without the ability to be taken seriously by them, this part of your quest is now definitely over, as is any hope you might have had of ever being anything other than a submissive little slut for the gang of laughing hyenas...";
			now Hyena Challenge is resolved;
		else if matriarchowned is 1: [player is the hyena matriarch]
			say "     Following the trail of the stolen jewelry, you approach your gang's hideout, wondering just what your little hyenas have been up to while you were gone. You knew the were exploring the sewers for ways out of town, but robbing the museum wasn't in the cards - at least to your knowledge. Throwing the door to the warehouse open, you don't have time to ask any questions, as you find that your subjects saw you coming, and are all gathered around and grinning as your trusty lieutenant Gina presents with a large wrapped package. Distracted from your purpose, you find yourself grinning as well as you eagerly open your present, a hyena-like laugh of pleasure slipping out as you see that they are presenting you with a nice new set of jewelry from the museum, as a gift to their matriarch.";
			say "     Grinning and commending your eager gang for their service, you slip on all but the items that Nermine asked for, then drag Gina off to thank her properly for her thoughtfulness. As you push her to lie back on a sofa right in the middle of the main room, then start to strip, the rest of the hyenas present in the hideout laugh and cheer, aroused by the show. Eventually after several hours, you lie in a comfortable heap of exhausted hyenas cuddling up to their matriarch after the orgy that followed. Several of them are stroking and admiring your new soft black fur, and the comfort of your position makes you wonder if you really want to give up even a small part of your new pretties. With the thought still active in your mind, you gather up the shiny trophies and get dressed. They do make you feel so much better-looking, so maybe you should just talk to Nermine about quitting while you are ahead...";
			now NermineTalk is 3;
			now RareQuesting is 9;
			increase charisma of player by 2;
			now Hyena Challenge is resolved;
		else:
			say "     Following the trail of clues leads you to the edges of the territory claimed by the gang of herm hyenas and though you are pretty sure they have what you are looking for somewhere in their territory, you have no clue where to begin your search. It seems pretty obvious that you are going to need to ask some of the gang members for help in that regards, although you doubt they will cooperate without a fight. After some searching you do manage to find a pair of the anthro hermaphrodites lounging around the area, and while they seem friendly enough at first as they try to convince you to join their gang, their mood swiftly changes when they realize you have other plans. Changing their behaviour in an instant, they turn and attack, striking at you before you can respond!";
			decrease hp of player by 15;
			let HyenaFightCounter be 0;
			while fightoutcome < 20 and HyenaFightCounter < 2: [runs for 2 times or until the player loses or flees]
				now inasituation is true;
				challenge "Herm Hyena";
				increase HyenaFightCounter by 1;
			if fightoutcome < 20: [player won]
				say "     After defeating the hyenas, they are more than willing to admit your dominance, and with a pair of matching grins easily agree to lead you to their hideout. Given how cheerful the tricky beasts are about the whole situation, you suspect you are walking right into a trap, but since it is probably the only way you will find out what happened to the items Nermine wants, you have no choice but to follow along. Eventually after quite a bit of walking, you find yourself outside one of the large warehouses in the area, and looking around you realize you could have been here much quicker if they had brought you directly here. All the extra walking was just buying time so that a large number of hyenas could gather here and be ready for you, all of them grinning at chuckling at you as the two hyenas you beat earlier quickly duck away from you to join the crowd.";
				say "     Sighing as you look around, you realize there is no way you could beat all of these hyenas in combat, so you try calling out and telling them you are only looking for three very specific pieces of jewelry from the museum, and hoping they are in the mood to listen. The air is filled with the laughter of the hyenas at your bold questioning, the noise making you feel somewhat less human as it echoes throughout the area. Then suddenly, their laughter stops as quickly as if someone had flipped a switch. From the jostling crowd of gang-members, a much larger hyena steps into sight, her muscular body adorned with many loops of jewelry and necklaces. As she sizes you up, you do the same - and realize that what is obviously the leader of the hyenas is wearing the items you came her for!";
				WaitLineBreak;
				say "     The large hyena grins as she sees you have recognized her jewelry, and in a mocking tone of voice introduces herself as the matriarch of the gang, and that while the items you want are only the least part of her treasure, they are still hers. You sigh and turn away to leave, only to be stopped cold by the fact that the crowd of hyenas has closed all the way around while your back was turned. Hearing a particularly cruel chuckle by the matriarch, you turn to face her once more, 'Aww - poor little treasure-seeker. You've come so far, I couldn't just let you leave without giving you the chance to win your baubles, could I?' Grinning broadly and showing her sharp teeth, she gestures to two hyenas standing by her side and points you out to them. Looking around at unbroken ring of hyenas, you see that there is no way out - especially as they start to chant, 'Fight! Fight! Fight!' with eager expressions. An impromptu arena forms in seconds, with you in the center.";
				while fightoutcome < 20 and HyenaFightCounter < 2: [runs for 2 times or until the player loses or flees]
					now inasituation is true;
					challenge "Herm Hyena";
					increase HyenaFightCounter by 1;
				if fightoutcome < 20: [player won]
					if cocks of player > 0:
						say "     Looking down at the matriarch's defeated guards, you are surprised to hear the crowd of hyenas cheer your victory as loudly as they cheered for their own kind, their praise making you feel slightly more dominant as you straighten up and stretch from your hard-won victory. After several minutes of cheering, and jesting, the crowd grows silent again in anticipation as the matriarch herself steps forward with a grin, and looking around you realize that win or lose, this particular fight is definitely a unique opportunity. If you lose now, you are pretty sure you won't have another chance at getting the items back for Nermine, and so you resolve to fight your hardest to prove your dominance over the powerful matriarch.";
						challenge "Hyena Matriarch";
						if fightoutcome < 20: [player won]
							say "     Lying there proudly as you enjoy your victory over the formerly proud matriarch, you grin as the hyenas party around you, celebrating your victory as they make you honorary matriarch for a time. You are treated to your pick of everything the gang has, and the hyenas definitely throw one hell of a party. Eventually though, it is time for you to go, the former matriarch handing over the items you wanted easily enough, while the rest of the gang begins to settle down to the rough task of deciding who gets to be the next matriarch. As you walk away down the city streets, you find yourself almost wishing you could go back and claim the matriarch's throne from them on a more permanent basis...";
							now matriarchowned is 0;
							now RareQuesting is 9;
							now Hyena Challenge is resolved;
						else if fightoutcome > 19: [lost or fled]
							say "     After several hours of being passed around by the numerous gang members, all eager to get a shot at the person who thought they could challenge the matriarch, you are left alone to recover while the orgy continues without you. Eventually you manage to recover enough from the matriarch's dominant use of your all too willing body, and slowly drag yourself away from the gang's territory. As you stagger down the streets of the city, the cum of many different hyenas matting your thick black fur, you groan as you realize that you certainly don't have a chance of recovering the items Nermine wants from the hyena stronghold now... even as the part of you that the hyena matriarch brought out is wondering if maybe you shouldn't just give up on your silly quest and go back and become a nice little submissive hyena for the much more powerful gang of hyenas...";
							now matriarchdefeated is 0;
							now Hyena Challenge is resolved;
					else: [female or neuter player]
						say "     Looking down at the matriarch's defeated guards, you are surprised to hear the crowd of hyenas cheer your victory as loudly as they cheered for their own kind, their praise making you feel slightly more dominant as you straighten up and stretch from your hard-won victory. After several minutes of cheering, and jesting, the crowd grows silent again in anticipation as the matriarch herself steps forward with a grin, and looking around you realize that win or lose, this particular fight is definitely a unique opportunity. If you lose now, you are pretty sure you won't have another chance at getting the items back for Nermine, and so you resolve to fight your hardest to prove your dominance over the powerful matriarch.";
						say "     You shift your stance as you prepare for combat, only to jump back in shock as a black knotted dildo bounces off your head. As the crowd around you explodes once more into laughter, you pick up the strange thing and stare at it, realizing it is come kind of strap on. Glancing up at the matriarch, where she grins at you as she strokes her own thick knotted cock, you blush as you realize exactly what kind of dominance battle is in front of you, even as you slip the item on. You gasp as it grows warm and seems to become almost real as you settle it into place, your body growing even hornier as fondle the realistic toy. After a minute you hear the matriarch chuckle at your distraction, and shaking your head, you brace yourself and prepare to fight in however pornographic a way you need to.";
						Challenge "Hyena Matriarch";
						if fightoutcome < 20: [player won]
							say "     Lying there proudly as you enjoy your victory over the formerly proud matriarch, you grin as the hyenas party around you, celebrating your victory as they make you honorary matriarch for a time. And you get to put your new temporary cock to good use several more times, before one of the hyenas shows you how to take it off, your body feeling kind of empty at the loss of your new member, though when you ask about maybe keeping the strap on around, the hyenas warn you that prolonged use of the item makes it permanent, which while it doesn't sound too bad to you right now, is probably something to consider for later, as you turn your attention back to the forming party.";
							say "     You are treated to your pick of everything the gang has, and the hyenas definitely throw one hell of a party. Eventually though, it is time for you to go, the former matriarch handing over the items you wanted easily enough, while the rest of the gang begins to settle down to the rough task of deciding who gets to be the next matriarch. As you walk away down the city streets, you find yourself almost wishing you could go back and claim the matriarch's throne from them on a more permanent basis...";
							now matriarchowned is 0;
							now RareQuesting is 9;
							now Hyena Challenge is resolved;
						else if fightoutcome > 19: [lost or fled]
							say "     After several hours of being passed around by the numerous gang members, you lose track of time as new cocks penetrate your [if cunts of player > 0]pussy[else]body[end if], everyone being eager to get a shot at the person who thought they could challenge the matriarch and dump a load or two in you. At some point you lose the strapon they gave you, as one of the hyenas rips it off you making you cry out, while the rest laugh at you, since now they know why you came to the fight so ill prepared with a cock of your own. Obviously you are such a submissive slut you don't need one after all!";
							say "     After even more sex in form of a prolonged gangbang, you are finally left alone to recover while the orgy continues without you, and eventually you manage to recover enough from the matriarch's dominant use of your all too willing body, and slowly drag yourself away from the gang's territory. As you stagger down the streets of the city, the cum of many different hyenas matting your thick black fur, you groan as you realize that you certainly don't have a chance of recovering the items Nermine wants from the hyena stronghold now... even as the part of you that the hyena matriarch brought out is wondering if maybe you shouldn't just give up on your silly quest and go back and become a nice little submissive hyena for the much more powerful gang of hyenas...";
							now matriarchdefeated is 0;
							now Hyena Challenge is resolved;
				else if fightoutcome > 19: [lost or fled]
					say "     Defeated and humiliated in front of the laughing gang of hyenas, you are forced to slink away in disgrace from the arena, even as an orgy and several more impromptu challenge matches break out behind you. You are almost safely away when you hear the Hyena matriarch calling out teasingly behind you, inviting you to come back and try again whenever you feel up to it. Her challenge makes you blush with shame, as you resolve to do just that.";
			else if fightoutcome > 19: [lost or fled]
				say "     Defeated by the hyenas, you have no choice but to slink back off down the streets of the city, wondering how you could lose to just a couple hyenas after having come this far successfully... You resolve to try again as soon as you have recovered.";
	else:
		say "     Travelling through the streets of the mostly deserted city, you come across an area completely painted in some kind of strange gang signs placed one on top of the other. Noticing that the paint is still fresh in some places, you decide it might be best to leave the area as quietly and quickly as possible, before one of the strange gang members returns and finds you here.";

Anubis Statue is a situation.
The Sarea of Anubis Statue is "Museum".
statuequest is a number that varies.

Instead of resolving a Anubis Statue:
	if statuequest is 0:
		say "     Wandering through the twisting (and possibly shifting) corridors of the museum, you find yourself face to face with a large statue of a jackal-man. The statue seems to be made out of some strange black stone and you almost get the feeling that it is looking straight at you. A helpful museum info-plaque tells you that this depicts the god Anubis, who was worshiped in ancient egypt...";
	else if statuequest is 1:
		say "     Traveling through the mind-bending jumble of museum halls that seem to be connected with one another more or less randomly (and with shifting sequences of what room leads where), you find your feet leading you through the halls until you reach an empty pedestal, occupying a prominent position in one of the egyptian exhibits. A helpful museum info-plaque tells you that a statue depicting the god Anubis is supposed to be there. Weird. It seems to have vanished without a trace. Well, at least it's not smashed to pieces by some transformed people rutting and knocking it over but still... the situation seems strange, and you find yourself looking around carefully in case it is some sort of trap.";
		say "     You almost don't spot the strange jackal-headed man standing over in the shadows watching you, his eyes gleaming with amusement. He is garbed in an egyptian-style and quite elaborate tunic, its golden thread creating an impressive contrast to the deeply tanned skin on his muscular form, as well as the night-black fur of his canine head. 'Ah there you are, I have been keeping an eye on you for a little while now,' The man says in a rich and powerful voice, walking up to you with a grin on his muzzle. 'It's been fun watching you turn the tables on that little jackaless, but at this point she isn't about to let you get any stronger or get any more power over her now, is she?' The jackal-man says with amusement as you are forced to agree with his statement. 'Well I find the whole situation amusing enough I might be willing to help you out instead. What do you say?' He asks you with an even wider grin on his canine face.";
		say "     [bold type]Take the deal?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. For a stranger you just met, he seems to be surprisingly trustworthy.";
		say "     ([link]N[as]n[end link]) - Err... no. You don't even know this dude!";
		if player consents:
			LineBreak;
			say "     'Excellent! I knew I could count on you to know what is good for you,' the jackal-headed man says as he rubs his claw-tipped hands together in amusement. 'First things first though. I requre a task from you for my help... trust me, it will be well worth the effort,' he says and you listen attentively to what comes next. 'Go to the [bold type]zoo[roman type] here in town, and bring me back these particular [bold type]pheromone[roman type] samples they have stored there. Be sure not to drop any - I know for a fact that you won't find a second set anywhere else.' Tapping the side of his narrow muzzle with a finger in a knowing gesture, the strange man pulls a little scroll of - paper? No actually it's papyrus, from behind his back, handing it to you. 'Oh and If you happen to run into any of those annoying cats while you're at it... give them a good pounding if you don't mind.' With that said, he grins at you and walks through one of the high archways leading out of the room, being gone before you can think of asking any questions.";
			now statuequest is 0;
			now anubisrequest is 1;
		else:
			LineBreak;
			say "     'That's too bad,' the strange man says with a sad look on his face, 'I was so looking forward to watching you play with that lovely little jackaless some more.' With a teasing look on his jackal muzzle, he turns and begins to walk away. Before he vanishes through a tall archway, he looks back over his shoulder, throwing you a casual, 'If you change your mind, you know where to find me.'";
	else if statuequest is 2:
		say "     Returning to the museum with the samples the strange man sent you to retrieve, you luckily manage to retrace your steps to the empty pedestal, and are unsurprised to find the jackal-like man leaning up against it with an amused grin. 'Found them I see?' he says with a smirk as he takes the bundle of vials from you eagerly. 'Trust me, these little beauties will make it more than worth your while,' the jackalman says as he begins to carefully mix the pheromones together, the scent of some strange sort of musk filling your nose as he does so. 'Ah there we go!' he says happily as he takes a whiff of the completed project, seeming satisfied as he pulls out a familiar looking ankh with a jackal embossed on it.";
		say "     The man gives you a wink as he slowly pours the mixture over the ankh, and the metal seems to almost absorb the liquid into itself. 'There we go now, once you use this little beauty, that little shopkeep won't be able to keep her hands off of you. The jackal musk and enhanced pheromone mix should make sure of that.' The man says with a grin as he hands you the strangely scented ankh. 'I told you this little side trip of yours would be beneficial to both of us now didn't I? I look forward to seeing how it works out,' he says in a voice filled with amusement as he turns and wanders off into the dark museum halls again.";
		now statuequest is 0;
		increase carried of strange ankh by 1;


Bestial Pheromones is a situation. The level of Bestial Pheromones is 4.
The Sarea of Bestial Pheromones is "Zoo".
anubisrequest is a number that varies.
when play begins:
	add Bestial Pheromones to badspots of girl;
	add Bestial Pheromones to badspots of furry;

Instead of resolving a Bestial Pheromones:
	if anubisrequest is 0:
		say "     Traveling through the zoo, you come across one of the medical labs used for treatment of the animals, and decide to look inside. Looking around you realize this is actually one of the labs where they store and keep track of sperm and pheromones collected from the animals in several large coolers. While the coolers still seem to be functioning, probably due to some sort of emergency power supply, many of the vials are strewn across the area and smashed open, showing clearly you aren't the first person to search the area. The broken vials exude a scent that makes your head swim in arousal, and as you look around the room, and you realize that some of the fluids in here is almost certainly from the recent visitors rubbing one out or fucking right in the midst of all this chaos. Looking around quickly in case the arousing smells have attracted anything to the area, you quickly retreat before you run the danger of succumbing to the powerful scents and do something you shouldn't.";
	else if anubisrequest is 1:
		say "     Hunting through the zoo, you follow the signs and with some luck manage to find the medical lab that is supposed to house the pheromones and chemicals the jackal-like man sent you to fetch. Unfortunately you don't seem to be the only one who has found the place, as a couple of felines are basking outside in the powerful scent emanating from within.";
		let CheetahFightCounter be 0;
		while fightoutcome < 20 and CheetahFightCounter < 2: [runs for 2 times or until the player loses or flees]
			now inasituation is true;
			challenge "Cheetah Woman";
			increase CheetahFightCounter by 1;
		if fightoutcome < 20: [player won]
			say "     Driving off the pair of sleek cheetahs, you look inside the room carefully, finding it to be full of several large coolers, several of which are standing open, their contents spilled out upon the floor. You now realize why the felines were so attracted to this place - the mingled musk and pheromones of numerous animals filling the air is quite a potent mixture, making your thoughts wander as you look around. Realizing you can't stay here long without giving in to your primal urges, you quickly pull out the paper the jackal-man gave you and begin to search the area, hoping the vials you need aren't lying among those smashed on the floor.";
			let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Intelligence Check):[line break]";
			increase diceroll by bonus;
			if diceroll is greater than 16:
				say "     Quickly determining the filing system, you manage to hunt down all of the pheromones and chemicals on the list, noting with some surprise they seem to be mostly canine and jackal pheromones and some pheromone enhancing chemicals. You wonder idly what the strange man wants with these particular chemicals, but given the way the strong musk in the room is making your head spin with arousal, you decide to worry about that later. Ducking outside you look down at the double handful of vials you have now and wonder if you really should return them to that strange man in the museum. Then again, the thought of being even more powerful and jackal-like is very tempting as well. Tucking the items in your pack, you resolve to decide later, as you head back out into the zoo.";
				now statuequest is 2;
				now Bestial Pheromones is resolved;
			else:
				say "     You search the area as fast as you can, rummaging through the different vials even as your mind grows more and more clouded with lust. The musk of many different species fills your brain as your jackal nose inhales them happily, causing you to be more and more aroused and focused on touching and stroking your sensuous fur instead of searching the area as time goes on. Eventually you are so aroused that you barely can stop yourself from downing a vial or two of obviously recently collected lion seed, your body so sexually needy that you can think of little else. Forcing yourself to put the vials down you stagger back out into the zoo, running through the overgrown pathways in a vain attempt to clear your head and put some distance between you and the tempting musk-filled room. If you stayed there any longer, that would surely have put your remaining humanity at risk. Once your head has cleared slightly, you realize that if you want to find the items the Jackal man asked for, you will need to return, hopefully being more careful this time though...";
				decrease humanity of player by 15;
		else if fightoutcome > 19: [lost or fled]
			say "     Driven back by the sleek powerful felines, you are forced to retrace your steps down the zoo pathways, needing to rest and relax before you can try again... if you try again anyways.";

Twisted fruit grove is a situation. The level of twisted fruit grove is 4.
The Sarea of Twisted fruit grove is "Park".
FelinoidRescued is a number that varies.
Vinetrapped is a number that varies.
when play begins:
	add Twisted fruit grove to badspots of hermaphrodite;

Instead of resolving a Twisted fruit grove:
	if FelinoidRescued is 1: [player lost the fight to save the Felinoid]
		say "     Traveling through the twists and turns of the park, you notice the scenery seems to slowly be twisting and changing, again becoming even more vine-covered and lewd with every step you take. Remembering the last time you were here, you grip your weapon tightly as you hurry quickly down the path, eager to get this over with. The landscape seems to grow increasingly disturbing as you travel, until eventually you are back at the thin curtain of vines from before, the strange twisted glade mostly quiet now, save for a large mass of vines near the area where the felinoid who saved you before was dragged off. You can still see some movement as the beast struggles within his viney prison, and hope you aren't too late to help return the favor. Stepping forward you realize as the glade explodes into motion again that without a distraction in the form of a large cat, this is going to be a much harder fight indeed...";
		let PlantFightCounter be 0;
		while fightoutcome < 20 and PlantFightCounter < 5: [runs for 5 times or until the player loses or flees]
			now inasituation is true;
			challenge "Parasitic Plant";
			increase PlantFightCounter by 1;
		if fightoutcome < 20: [player won]
			Say "     Finally beating off the barrage of plants, you look up and realize that you have managed to reach the tree itself, leaving a trail of devastated plants behind you. You waste no time in filling the small basket Nermine gave you with the soft, fleshy fruits, their strangely tempting smell washing over you as you stuff the basket in your backpack to make sure you won't lose any of the fruit after all the trouble you went through to get them. After zipping it up, you look around the glade. It looks like the path of destruction you cut through the plant creatures is still open and you could probably make it back out easily if you hurried. But at the same time... the bundle of vines where the felinoid is trapped is now writhing as the beast inside makes one last valiant effort to escape.";
			say "     You can hear a piteous yowl, which is suddenly muffled, likely by one of the plants finally managing to work its way into the beast's mouth. A vague twinge of guilt fills you as you glance at the way out again, before looking back at the trapped felinoid. The beast did help you when you needed it before... but there are several fresh plants in the way you would have to fight through before you could manage to free the cat. On one hand, now that you have what you came for, there really isn't any more reason for you to stick around... but then, returning the favor by freeing the trapped felinoid would be a worthy task in and of itself.";
			say "     [bold type]Do you want to free the felinoid?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Rescue the cat. It's only right!";
			say "     ([link]N[as]n[end link]) - Fuck it, you're out of here!";
			if player consents:
				LineBreak;
				let PlantFightCounter be 0;
				while fightoutcome < 20 and PlantFightCounter < 2: [runs for 2 times or until the player loses or flees]
					now inasituation is true;
					challenge "Parasitic Plant";
					increase PlantFightCounter by 1;
				if fightoutcome < 20: [player won]
					say "     Beating back the plant creatures, you quickly begin to hack and cut away at the vines encasing the trapped felinoid. The beast clearly notices that something is going on, as it lashes out vaguely in concert with your own efforts, struggling and gnawing at its viney prison as he struggles desperately to get free. Finally managing to cut the large feline loose, you see the proud (if a bit worse for wear) creature stagger out of the now limp vine cocoon. He seems somewhat disoriented as he takes in great gulps of fresh air, his sides heaving mightily. Realizing that the grove is on the move again apparently angered at being robbed of its trapped prey, you quickly push and prod the felinoid until he gets the idea, the two of you staggering down the path you hacked on the way in, your combined might quickly making short work of the few plants that send shoots sprouting up in your way to entangle and trip the two of you.";
					say "     Once you are far enough outside the glade to have left the outermost offshoots behind, you practically collapse to the ground. That was one tiring adventure - and the massive amount of effort to fight off so many of the plants, as well as cutting the large cat free catches up to you all at once. Lying there on the ground panting helplessly, you blink as suddenly the large felinoid's face is right above yours, and you freeze as you realize that you are practically helpless in this position with the large beast standing above you. The feline looks down at you with his strangely intelligent eyes for a minute, lowering his muzzle down to sniff your face several times, before sticking his tongue out and giving you a long lick on your cheek. You blink as the beast backs off, sitting up as the male cat slowly weaves his way through the thankfully regular plants in the rest of the park, obviously still unsteady on his feet. He shoots you one last grateful look over his shoulder before vanishing between two bushes.";
					WaitLineBreak;
					say "     Sitting still where you are, your heart still beating quickly, you wonder just what that was all about. Did the creature actually appreciate the risk you took for his sake? Shaking your head for a moment, you realize the felinoid probably had the right idea about leaving too, as you can't stay here resting much longer. Who knows what else might stumble over you in this weakened state. Hauling yourself back to your feet, you quickly make your way back towards the entrance of the park, more than happy to be done with your task in the vine-shrouded corner of the park.";
					now FelinoidRescued is 2;
					now RareQuesting is 2;
					now Twisted fruit grove is resolved;
					stop the action;
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     You moan as the vines wrap around you as tightly as they have the newly trapped felinoid, his fight having been lost sometime during your own harsh battle. The vine's cock-like flowers invade your every orifice as they begin to cocoon your helpless body with their green leafy tendrils, anchoring you in place, unable to even lift a finger to escape. You can feel the scent of the area invading your mind as your body continues to become more and more plant-like, your mind starting to fade as you realize that before much longer you will be more plant than animal, rooted here in the glade like several of the other strange plants.";
					say "     Struggling in your viney bonds, there is no one left to save you this time. Your struggles slowly fade, as your mind fills with the strangely relaxing scent of the glade, and your body gives in to the wonderful pleasure of the vines massaging it. Soon you can't even remember why you would want to struggle, or even why you would want to do anything other than relax here in your nice safe cocoon, your mind slowly fading completely as your new roots sink into the soil and vines growing from yourself beginning to entwine with those around you.";
					now vinetrapped is 1;
					decrease humanity of player by 100;
					now body of player is "Parasitic Plant";
					now bodyname of player is "Parasitic Plant";
					attributeinfect "Parasitic Plant";
					follow the turnpass rule;
				else if fightoutcome is 30: [fled]
					say "     Abandoning the fight, you tear loose from the vines that already have begun to wind their way around your body and simply run. As you scramble away in a wild sprint, you look over your shoulder and see the cocoon holding the felinoid, still weakly struggling in its bounds. There is not a speck of fur visible of the large feline, but you know that he is in there from the trapped yowls and mews he is giving. You feel vaguely guilty as you tear through the curtain of hanging vines without stopping, leaving the cat to struggle against his viney prison on his own.";
					WaitLineBreak;
					say "     Finally reaching the entrance, you collapse in exhaustion from your flight, barely feeling human anymore as the musk of the parasitic plants lingers in your brain. Eventually you stand back up and look back the way you came, knowing that it is too late to try again now. The cat would surely have been fully transformed if you ever went back...";
					infect "Parasitic Plant";
					decrease humanity of player by 25;
					now inasituation is false;
					stop the action;
			else:
				LineBreak;
				say "     Unable to bring yourself to face another series of fights - for a creature that would probably only try to convert you later anyways - you quickly turn and run down the path you came in by, feeling vaguely guilty as you put the strange glade and the trapped feline behind you. Too late to change your mind now, as the cat would surely have been fully transformed if you ever went back...";
			now RareQuesting is 2;
			now Twisted fruit grove is resolved;
			stop the action;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     You moan as the vines wrap around you as tightly as they have the newly trapped felinoid, his fight having been lost sometime during your own harsh battle. The vine's cock-like flowers invade your every orifice as they begin to cocoon your helpless body with their green leafy tendrils, anchoring you in place, unable to even lift a finger to escape. You can feel the scent of the area invading your mind as your body continues to become more and more plant-like, your mind starting to fade as you realize that before much longer you will be more plant than animal, rooted here in the glade like several of the other strange plants.";
			say "     Struggling in your viney bonds, there is no one left to save you this time. Your struggles slowly fade, as your mind fills with the strangely relaxing scent of the glade, and your body gives in to the wonderful pleasure of the vines massaging it. Soon you can't even remember why you would want to struggle, or even why you would want to do anything other than relax here in your nice safe cocoon, your mind slowly fading completely as your new roots sink into the soil and vines growing from yourself beginning to entwine with those around you.";
			now vinetrapped is 1;
			decrease humanity of player by 100;
			now body of player is "Parasitic Plant";
			now bodyname of player is "Parasitic Plant";
			attributeinfect "Parasitic Plant";
			follow the turnpass rule;
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you tear loose from the vines that already have begun to wind their way around your body and simply run. As you scramble away in a wild sprint, you look over your shoulder and see the cocoon holding the felinoid, still weakly struggling in its bounds. There is not a speck of fur visible of the large feline, but you know that he is in there from the trapped yowls and mews he is giving. You feel vaguely guilty as you tear through the curtain of hanging vines without stopping, leaving the cat to struggle against his viney prison on his own.";
			WaitLineBreak;
			say "     Finally reaching the entrance, you collapse in exhaustion from your flight, barely feeling human anymore as the musk of the parasitic plants lingers in your brain. Eventually you stand back up and look back the way you came, knowing that if you don't return soon, the felinoid that distracted the plant creatures will end up joining their ranks...";
			infect "Parasitic Plant";
			decrease humanity of player by 25;
			now inasituation is false;
			stop the action;
	if RareQuesting is 1:
		say "     Traveling through the twists and turns of the park, you notice the scenery seems to slowly be twisting and changing, becoming even more vine covered and lewd with every step you take. Remembering the quest Nermine sent you on, you take this to be a sign you are headed in the right direction, and hurry quickly down the path eager to get this over with. The landscape seems to grow increasingly disturbing as you travel, until eventually the path ahead is blocked by a thin curtain of vines sporting strange flowers. Looking through the hanging vines you can see what appears to be a quiet glade with a strangely warped tree in the center, a number of strange small vine-covered bushes scattered in the area around it. Looking closely at the tree you can see several large flesh-coloured fruits hanging from its branches, and you notice a strong enticing smell hanging in the air, drawing you forward.";
		say "     Before you know it, you are moving forward as if in a trance, ready to step into the glade - but just before you actually do, a movement from the other side of the warped tree draws your attention and breaks you out of it. The vines forming the boundary back there are being pushed aside as one of the golden-furred felinoids roaming the area slowly stalks into open, his head held high as he sniffs the air, obviously as entranced by the teasing scent as you were. You freeze as you watch the beast slowly cross the glade, your hand poised to draw the vines aside as he approaches the tree. And then the deception is revealed - as all of the plants seem to explode into motion around the startled feline, the vines and tendrils lying across the ground suddenly slithering and reaching out to trap and entwine the feral beast! The felinoid roars as he rips the vines apart even as they try to twist around and cocoon him, trying to push more flowers with their entrancing scent into his face and sink cock-like fruit into any opening they can find.";
		WaitLineBreak;
		say "     Blinking, you realize how narrowly you avoided the plant's trap - if you had been as unsuspecting as the large predatory cat was, you probably would already be completely trapped by now. But then of course... you also realize the felinoid has just provided you with a perfect distraction. All of the greenery is busy with him, giving you the best chance you'll ever get to snatch up some of the fruit Nermine desires! Before you can stop to think, you dart through the curtain of hanging vines, which try to cling to and rip at you as you push through them, almost as if sensing your purpose. Quickly charging across the glade at a run, you pull the basked from where you had it strapped to your back, your eyes on the fruit hanging temptingly from the tree. The large plant sways its branches as you near it, its leaves rustling in alarm, followed by what seems to be a commanding creak and crack of the wood.";
		say "     Reacting to the commotion, part of the more mobile plant creatures focus their attention more on you, with one or two actually letting go of the felinoid and sending their writhing tendrils worming your way. Glancing their way, you feel cautiusly confident that you can make the snatch and grab before they intercept you - and you would have... if the tree hadn't forced a snare-like root through the surface at that moment. Catching your ankle, it tips you up and causes you to sprawl painfully across the ground just a little bit away from your goal. You roll over and prepare for a fight as the vines begins reach you several heartbeats later, intending to entrap you.";
		decrease hp of player by 15;
		let PlantFightCounter be 0;
		while fightoutcome < 20 and PlantFightCounter < 3: [runs for 3 times or until the player loses or flees]
			now inasituation is true;
			challenge "Parasitic Plant";
			increase PlantFightCounter by 1;
		if fightoutcome < 20: [player won]
			say "     You pant in victory as the last of the green vine-like menaces are defeated, and waste no time closing up to the tree at least. It seems to creak in outrage as you begin filling the basket with strange fruit in a hasty rush to get out of here. Hearing a roar makes you glance over to the large felinoid that gave you this chance, and you see that it is still struggling against the plants - but the inevitable end result is clear as more and more tendrils latch onto it. Soon, they will immobilize the cat and those plants that are just 'helping' their brethren will no doubt turn your way. Realizing you don't have much time left, you quickly close the lid of the basket, hoping you have managed to get enough of the strange fruit to satisfy Nermine, since you certainly don't intend to return to any place this dangerous again if you can help it.";
			say "     Your muscles tense to start running, but then a pityable mewl draws your attention once more to the felinoid. Vines are levering open its maw while a tendril with a cock-like fruit rears up before it, ready to plunge itself down its throat. No - you can't just leave the feral beast. Unintentional or not, it helped you greatly in your task, so you dash towards the writhing cocoon of vines. Kicking, wrenching and tearing a few of the main trunks where they sprout from the ground, you leave the green menaces injured - gushing clear sap that should have gone to strengthen their vines. Between the fact that the damaged plants partly let go of the felinoid to lash out at you in retaliation and several of the their remaining vines having gone limp, this gives the feline beast another chance to get out.";
			WaitLineBreak;
			say "     The felinoid clearly realizes what you are doing and wakes his last reserves of energy, roaring out load as it starts to lash out with its claws to shred the unravelling cocoon of vines. You have to gain some distance as not to get trapped yourself the plants do their utmost to punish your intrustion, but even so - the intervention was enough to get the feral cat free. Ripping out of the tangle of greenery, it dashes past your position in full flight and you don't waste any time hanging around either. At a fast sprint, the clingy vine curtain is no real barrier as you forcefully shove through, tearing off some of the tendrils that just didn't want to let you go. Outside the glade, you keep going for a good minute or two, gaining enough distance to feel halfway safe.";
			say "     Resting your hands on your knees as you lean over and pant in exertion, you suddenly feel a strange tingling sensation against the side of your neck and catch a whiff of strange, yet somehow pleasant musk. Looking up, you find yourself eye to eye with the felinoid you rescued, his face merely inches from your own. Must have been the large cat's whiskers you felt, brushing against you as he moved up close. You freeze for a second as the feline beast sniffs you and rubs the side of his furry head against your cheek and shoulder - again giving you a breath of its musky scent. Then he backs off and looks you up and down with strangely intelligent eyes before turning around and stalking off. Before the feral beast vanishes from sight, you see that he is hurt - fur matted with blood in several places and showing a slight limp. Those plants really got nasty in the end, when they knew they were losing their newest captive...";
			LineBreak;
			say "     Soon finding yourself all alone, you let out the breath you hadn't realized your were holding, and straighten up before heading back to the park entrance at a run, deciding you have definitely had more than enough excitement for today.";
			now FelinoidRescued is 2; [player won the fight to save the Felinoid]
			now RareQuesting is 2;
			now Twisted fruit grove is resolved;
			now inasituation is false;
			stop the action;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     You moan as the vines wrap around you as tightly as they have the newly trapped felinoid, his fight having been lost sometime during your own harsh battle. The vine's cock like flowers invade your every orifice as the plants begin to cocoon your helpless body with their green leafy tendrils, anchoring you in place, unable to even lift a finger to escape. You can feel the scent of the area invading your mind as your body continues to become more and plant like, your mind starting to fade as you realize that before much longer you will be more plant then animal, rooted here in the glade like several of the other strange plants. But then suddenly the vines around you rip and tear, and you blink and gasp at your sudden freedom, and a new wave of strong masculine musk washes over you as you fight to pull your way out of your viney cocoon.";
			say "     Looking up you can see that the strange Felinoid managed to drag its way over close enough to where you were trapped to claw you free. Its attempt seems to have cost it dearly, as it is now being quickly overwhelmed by many of the parasitic plants from the area. Taking advantage of the distraction of the glade full of plants, you quickly stagger away, pulling vines off of yourself as you go. You only stop to look back once you have managed to duck through the hanging curtain of vines without incident, to see the felinoid giving you a sad pleading look as it is dragged back into a cocoon of its own. You feel vaguely guilty as you stagger exhaustedly down the pathway back towards the park entrance, realizing that the feline beast spent much of its strength to free you, and all you could do was run away...";
			WaitLineBreak;
			say "     Finally reaching the entrance, you collapse again, barely feeling human anymore, as the musk of the parasitic plants and the musk of the strange felinoid linger in your brain. Eventually you stand back up and look back the way you came, knowing that if you don't return soon, the felinoid that helped you will end up meeting the fate it saved you from...";
			infect "Parasitic Plant";
			infect "Felinoid";
			decrease humanity of player by 25;
			now FelinoidRescued is 1; [player lost the fight to save the Felinoid]
			now inasituation is false;
			stop the action;
		else if fightoutcome is 30: [fled]
			say "     Abandoning the fight, you tear loose from the vines that already have begun to wind their way around your body and simply run. As you scramble away in a wild sprint, you look over your shoulder and see that while some of the plants are following you, most have focused back on the felinoid. There is barely anything left to see of the large feline, most of him being hidden in a cocoon of vines. You feel vaguely guilty as you tear through the curtain of hanging vines without stopping, leaving the cat to fend for himself and be entrapped by the plants.";
			WaitLineBreak;
			say "     Finally reaching the entrance, you collapse in exhaustion from your flight, barely feeling human anymore as the musk of the parasitic plants lingers in your brain. Eventually you stand back up and look back the way you came, knowing that if you don't return soon, the felinoid that distracted the plant creatures will end up joining their ranks...";
			infect "Parasitic Plant";
			decrease humanity of player by 25;
			now FelinoidRescued is 1; [player lost the fight to save the Felinoid]
			now inasituation is false;
			stop the action;
	else: [the rare item quest is not active and neither is the captured felinoid available]
		say "     Traveling through the twists and turns of the park, you notice that the scenery is starting to change and becoming more and more twisted and vine-covered with every step. Eventually you reach a thin curtain of vines blocking entry to an overgrown glade, you can see a number of those strange twisted plants moving around through the vines, seeming to congregate around some kind of warped tree. You can smell a soft tempting odor coming from within the glade, and almost find yourself stepping through the vines to investigate closer. Backing off you shake your head to try to clear it, and quickly turn and run down the path back the way you came, somehow sure that the entire situation is some kind of trap.";

When play ends:
	if Vinetrapped is 1:
		say "     You eventually awaken again somewhat as something nudges you - everything seems to be somewhat diffuse and foggy as you try to figure out where you are, or even what you are. Then again, something nudges against you softly, and you turn your attention down to see what appears to be some kind of strange cat-like creature made up entirely of vines and tendrils, small flowers staring up at you where eyes would normally be. For some reason the vine-creature seems vaguely familiar to you, as you stretch out several of your own vines to pet its head, your tendril-like fingers tangling with the vines of its body and sending a soft surge of pleasure through you both. Looking at yourself you realize you are completely made of vines as well, though in a slightly more humanoid shape.";
		say "     Something about that realization makes you feel vaguely happier, as your somewhat confused mind takes pleasure in all of this green perfection. The feline nudges you again, and you turn your attention back to what your fellow plant wants. Tangling your vines with the feline's again, you realize that it is time for you both to move to a new area, this one already growing overcrowded with your other growing brethren. With some effort you manage to uproot yourself, feeling unsteady as you spread your roots out to get a better purchase on the top of the ground, glancing at your new companion you realize they might have a better idea of how to do things, as with more vine-stalks on the ground it would be much easier to balance. Quickly shifting yourself downwards, you signal your readiness to your new companion, and together the two of you head out of the grove to find yourself a new location to anchor yourself so you can continue to grow.";
		WaitLineBreak;
		say "     After a little while of travelling through the city, the two of you reach an area where your fellow plants have not already spread. Sadly, the reason for this is that there are few cracks in the thick asphalt paving for you to sink your roots into, forcing you to continue to wander ever outwards. The city is dangerous for a plant that isn't securely rooted, although most of the animals stay out of your way, the two of you end up fighting several times. While you are unable to trap and root your opponents properly, you still manage to drive them off together. Eventually you find a somewhat nicer area near a river, and the two of you walk into the flowing water, allowing it to carry you along for a while, replenishing your strength as you float by.";
		say "     Finally finding a perfect area along the bank, you both haul yourselves out and lay claim to the rich and fertile soil and good sun. Together with your companion, you quickly set down roots and settle in to rest, happy to have found this place before any of the other plants claimed it for themselves. You realize vaguely as you twine your roots together with that of your vaguely feline companion, that your success was likely due to the fact that there were two of you working together, your nearly simultaneous viney awakening allowing you to succeed where likely many others have failed. You aren't sure how much time passes as the two of you grow and bask in the sunlight together, your vines growing larger and more powerful, even as they intertwine with those of your companion, but eventually you both sense something nearby.";
		WaitLineBreak;
		say "     Working together you easily manage to subdue the intruding creature and start to milk the trapped thing for its nutrients, before eventually taking pity on the poor thing and wrapping it in your vines so it can be protected while it becomes a much better plant. You vaguely recall the animal was something called a human, which almost means something to your foggy mind, but is probably unimportant. Eventually more of the animals show up, in ones and twos as if looking for something, and your glade grows quickly as you and your companion take turns showing them the pleasures of being anchored to the soil as well. Before long your first converts are eagerly helping you convert others as well, and as you bask in the sun and rub your vines through those of your once feline companion, you realize you truly have found a wonderful place for your new glade...";
		if hellHoundLevel > 0:
			say "     With your mind almost completely erased by your transformation into a plant, you forget about your pact with the hellhound. But he does not forget. Having given into your life as a corrupting plant creature infecting others, your dark contract has only been delayed to prepare you for a new role in the afterlife. When that times comes at the end of your long life as a plant, you are pulled into the pits of Hades and given a life of as a foul tree there. Having spent centuries growing and corrupting others in life, your body is now twisted and turned to new, dark aims on your unending task to satisfy the lustful urges of the demonic hounds. They mark your large trunk with their foul, burning urine, letting its corruption seep into you. Your vaginal flowers are fucked by the hound's cocks and your tendrils made to pump your tainted fluids into their bitches. Your branches grow dark fruit which break open and release plant-like hounds to add to Hell's numbers.";
		stop the action;


Section 6- Rare Item case


Rare Counter is a man.
The description of Rare Counter is "[RareCounterDesc]".
The conversation of Rare Counter is { "Treasure!" }.
Rare Counter is in The Mysterious Shop.

to say RareCounterDesc:
	if RareQuesting < 10: [not yet delivered all pieces]
		say "     This Glass counter seems to hold several of the finer pieces in the store, some very fancy bits of art and some finely carved gems resting next to unusual porcelain dolls and ancient looking scrolls. It also seems to be missing several pieces, or at least there are several empty spots sitting open and waiting for something to be placed there, maybe you should talk about that with Nermine for some more information about it...";
	else:
		say "     This Glass counter seems to hold several of the finer pieces in the store, some very fancy bits of art and some finely carved gems resting next to unusual porcelain dolls and ancient looking scrolls. In between the other items are the coins, bracers and the necklace you worked hard to obtain for Nermine, completing her collection - for now.";

the scent of Rare Counter is "You smell the items on the counter and a shiver runs down your spine. There is something strange and mysterious to these items and they should be handled with care.".

RareQuesting is a number that varies.

instead of conversing the rare counter:
	say "     Crouching down in front of the wooden counter with its glass plates that protect precious treasures, you try your best to strike up a conversation with it. Sadly, the piece of furniture is less than responsive, so all this does is earn you a strange look from Nermine. Maybe you should talk to her instead if you want to know something about the rare items.";

to say RareItemQuestTalk: [this is one of Nermine's talk options from her talk menu now]
	if JackalBoyTF > 0: [already locked into Jackalboy shape]
		say "     'Ah, Nermine sees her little helper is interested in her rare item counter!' The jackal shopkeeper beams happily at your interest, but then shakes her head slowly as you step closer to inspect it in detail. 'Sadly Nermine isn't needing [hisher] help with anything in the counter right now, she has other things waiting for the little jackal to do...' she says with a teasing smile on her dark muzzle.";
	else if wrcursestatus >= 7 and wrcursestatus < 100: [wereraptor cursed player]
		say "     Tensing as she sees you standing at the counter, the jackaless clears her throat. 'Nermine must regretfully ask her dear visitor to keep [hisher] sharp claws and big tail away from her collection of rare items. Many of them would react badly to being scratched or bumped.' She keeps up an insistent stare until you step away from the counter and the treasures laid out in it.";
	else if RareQuesting is 0:
		say "     'Ah Nermine notes her customer is interested in the very rare items!' The jackal shopkeeper says happily as she rubs a polishing cloth over the glass countertop. 'Some of these Nermine has worked very hard to acquire, although there are several items in this city that Nermine would love to add to her collection,' The Jackaless says wistfully as she eyes the empty spots in the case. You think there could be an opportunity here to get on the shopkeepers good side...";
		say "     [bold type]Do you offer to help her acquire the items?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure. It'll be an adventure![line break]";
		say "     ([link]N[as]n[end link]) - Err... no, not right now.[line break]";
		if player consents:
			LineBreak;
			if guy is banned or furry is banned or girl is banned:
				say "     'Oh, Nermine is seeing now that she looks at her visitor that [heshe]will not be able to help her in this regard. Nermine is feeling most sorry for them, restricting their fun so. One should not be so picky, she is thinking.' Nermine shakes her jackal head sadly.";
				say "(The rare item quest requires hermaphrodite, guy, girl and furry content to be available. Sorry.)";
			else:
				say "     'The delightful guest is offering to help Nermine acquire some of these rare items?' the jackal-woman says with surprise, before looking at you appreciatively. 'If [heshe] can help Nermine out like that, the jackaless would certainly have a nice reward waiting when [heshe] does.' Nermine says as she reaches into the case and pulls out a small golden ankh with the image of a jackal man stamped on the base. 'If Nermine is helped, she will pay the favor back with gold. And perhaps if her friend is very helpful, a bit more than gold,' the sexy jackal-woman adds with a wink as she sets the ankh carefully back into the cabinet. 'First though, a little... test. Nermine could use some items from around town, and it should be a good start for her helper to get a feel of the tasks [heshe] would have to do.'";
				say "     The jackaless vanishes into the back room, returning after a few moments with a small basked held in her hands. 'Go to the [bold type]park[roman type], Nermine has heard there are strange plants there now. If things are as she thinks, there should be some very special fruit to find in the [bold type]grove[roman type] that has sprung up there. Bring her back a basket full of fruit and she will be more than thankful,' the shopkeeper says as she hands you the basket, sending you on your way.";
				now RareQuesting is 1; [quest initiated - stage 1, fruit]
		else:
			LineBreak;
			say "     Hmm... if even Nermine is unable to acquire these items herself, they are likely going to be far too difficult for you to get your hands upon. You decide to not say anything right now, and just watch as she admires her already fine collection.";
	else if RareQuesting is 1: [quest started, no progress yet]
		say "     'Has the friendly visitor who offered help still not found the [bold type]grove[roman type]?' Nermine says with a slight frown on her silver-painted face, 'Well, it certainly is not in Nermine's shop. Perhaps searching in the [bold type]park[roman type] would be advisable instead. Or if [heshe] has changed [hisher] mind, the jackaless must regretfully ask for her basket back.' She looks at you speculatively, raising one eyebrow, and you quickly answer that you haven't given up on this little quest for her yet. 'Good,' she purrs, stroking a finger over the glass case and tapping it over the spot where the golden ankh resides.";
	else if RareQuesting is 2: [player got the fruit]
		say "     'Ah, Nermine thanks her brave guest gratefully!' The jackal-woman says with bright grin on her silver-painted muzzle as she takes the basket full of strange fruit from you. 'These are very rare fruit indeed, and will certainly fetch a very high price to the right buyer!' She says brightly as she sets the basket down on the counter next to her, before reaching underneath it to produce the shiny golden ankh she showed you earlier. 'And speaking of price, here is the one that was agreed upon as well,' with a purr in her voice, she hands you the golden ankh, its weight feeling surprisingly good in your hands as you hold it up to inspect the gleaming metal in the candlelight. 'It is more than just a golden trinket,' the jackalwoman says teasingly as she gathers up the basket and heads towards the back room.";
		say "     You are almost entranced by the beauty of the craftsmanship on your new posession, barely registering anything but the ankh until Nermine's eventual return. Stepping up close beside you, she leans forward and whispers into your ear, 'The treasure Nermine's friend is holding is a very special and powerful ankh indeed. Some might just value it for its gold, but this humble shopkeeper is sure that her visitor will go beyond such trivialities. If [heshe] uses its true power, [heshe] will become ready for further helping Nermine out and earn more rewards.' A sly smile on her muzzle, the jackaless strokes a finger gently along your arm, brushing against the side of your hand holding the ankh, then withdrawing. As she moves back behind the counter afterwards, you can't help but be very curious about what she meant...";
		increase carried of strange ankh by 1;
		now RareQuesting is 3; [first ankh awarded]
	else if RareQuesting is 3: [no further progress after the first ankh]
		say "     As you bring up the rare items laid out under the glass counter again, the jackaless looks you up and down, as if searching for something. She appears slightly disappointed for a second, then brushes the expression aside and gives you a friendly smile more typical of the strange shopkeeper. 'Nermine thinks her brave helper should try using the power of the ankh she has provided. It will surely help [himher] in the tasks ahead if [heshe] wants to assist the jackaless further.' She doesn't go into any more detail than that as you ask what the ankh will actually do, only giving you a sly smile and answering, 'There is no explaining about these matters, only doing and seeing.'";
	else if RareQuesting is 4: [player used ankh #1]
		say "     'Ah, Nermine sees her friend has discovered the power of the ankh,' the jackal-like woman says with a soft chuckle, smiling at you. 'She really must say that it is an especially fetching new tail her assistant has acquired.' After a wave at her own tail in comparison, she stretches out a hand towards yours, then stops halfway and draws the hand back with a flourish. 'It almost makes her want to pet and stroke it... but first Nermine has business to attend to, perhaps petting and stroking can come later on.' A teasing grin on her muzzle, she focuses her attention back to the glass countertop. 'Nermine is sure now that there is an interest in what comes next - and she can tell that it is both simple and hard at same time.'";
		say "     Giving a little sigh, the jackaless explains further, 'She wishes she had time to hunt it down herself, as somewhere near this town is an old stash of coins, pirate loot Nermine thinks. These coins are quite rare, and very easily attuned to certain types of enchantments.' The shopkeeper gives you a teasing wink as she mentions enchantments. 'A handful of those coins would be very useful, and would certainly look quite nice displayed in the shop counter, do you not think?' she goes on to say, before reaching under the counter to pull out another of those strange golden ankhs. 'Nermine has another job opportunity after this, but first one must finish this job while Nermine tries to get some more information for the other job. And of course, Nermine will pay with gold for gold.'";
		WaitLineBreak;
		say "     Holding up the ankh to catch the light, the jackaless smiles at you. 'Also, since Nermine only needs a handful of the coins, anything beyond those would be the brave adventurer's to keep... a very good deal she thinks,' she says with a grin as she places the ankh back underneath the counter.";
		now NermineTalk is 3;
		now RareQuesting is 5; [pirate gold quest stage reached]
	else if RareQuesting is 5: [pirate gold stage active]
		if TreasureFound is 1:
			say "     'Ah, the brave adventurer found [hisher] treasure!' Nermine says with a large smile on her muzzle as she eagerly takes the small handful of golden coins you are holding out from you, leaving you feeling vaguely sad as those precious golden circles disappear behind the counter. When you point out that that was all there was in the pirate stash, she blinks at you in surprise. 'Only so few coins left? Well, then it is especially fortunate that Nermine's helper managed to find them! This makes them far more precious and she will have to adjust the price accordingly.' The jackalwoman says, a smile tugging at the corners of her muzzle. Then she pulls out the small golden ankh she promised you earlier and hands it to you. 'Nermine thinks this was more than earned then, though she also believes there might still be further coins left out there if one were to go and look again,' she says with a grin. As you weigh the warm golden ankh in your hands and wonder whether it was worth the handful of treasure you just traded for it...";
			now RareQuesting is 6; [gold coins delivered]
			increase carried of strange ankh by 1;
			now TreasureFound is 0;
		else:
			say "     'Back again so soon? And with empty hands, disappointing the poor jackal shopkeeper?' Nermine says in a teasing voice as you address her over the rare item counter again. 'If Nermine knew where to find the coins, she would not be needing her helper to look for them... but one would think that the beach might be a good place to start looking. After all, where else would one find the way to pirate treasure?' she says with an amused grin as she turns back to her work, her tail waving teasingly at you as she leaves.";
	else if RareQuesting is 6: [second ankh not yet used]
		say "     'So eager to get started on the next retrieval Nermine mentioned?' the jackaless asks with a smile as you approach the rare items case again. 'The humble storekeeper is still looking into some promising leads, but she also thinks that her helper will not be ready for the next treasure-hunt without the power of the ankh. And besides, Nermine wants to see just how handsome [heshe] will look afterwards.' Adding the last few words witha broad smile on her face, Nermine watches you intently before shooing you away, not willing to proceed before you actually make use of the golden ankh.";
	else if RareQuesting is 7: [second ankh used]
		say "     'Oh, Nermine's visitor is looking so handsome now, with that nice thick jackal pelt! The entranced shopkeeper can barely stand to look without touching it,' she says with a grin on her muzzle as she eyes your new dark fur. The jackalwoman actually reaches out to sensually stroke your body, then stops herself and shakes her head. 'It would be desirable for Nermine to run her hands through it again and again... but sadly, the shopkeeper still has unfinished business to conclude...' With a soft sigh, she steps back a little, leaving your body tingling as it aches for more petting by her. 'Furthermore, Nermine has bad news - while she knows that the next desired target was at the museum in this town when the current crisis started, Nermine has been unable to confirm if the items are still there.'";
		say "     Your eyes are inevitably drawn to the female jackal's t-shirt as she sighs sadly, her breasts moving under the thin fabric and providing quite a nice view. 'The humble storekeeper most dearly wishes to possess a pair of silver bracers with jackals on them, as well as a shiny golden necklace from the egyptian exhibit. Being so very valuable and pretty, the problem is that they could have already been taken elsewhere by someone,' the jackaless says with another deep sigh as she leans forward on the counter, giving you a nice view of her black-furred cleavage as she does. 'Finding her those treasures would make Nermine exceptionally grateful. She has one more ankh to reward her tireless helper with as well...' The words are said in a lusty tone and the female jackal gives you a slow wink, making you feel all the more eager to go find the pieces of ancient [bold type]jewelry[roman type] the sultry jackaless wants from the [bold type]museum[roman type].";
		now RareQuesting is 8; [museum quest part started]
	else if RareQuesting is 8:
		say "     'Nermine's tireless helper has not found the jewelry yet?' the jackal-woman says with a sad look on her silver and black muzzle. 'The overly hopeful storekeeper was afraid it might be too much to ask of [himher] - even though [heshe] looked so capable and handsome when [heshe] set out.' She sighs sadly, then turns back to the regular counter. 'Maybe it would be beneficial to try asking around the museum if searching the halls does not help, though Nermine is not sure who if anyone could be left there to ask...' Nermine says as she goes back to what she was doing before you interrupted her, although she also proceeds to stroke a finger over her nipples, making them protrude and become quite visible through the fabric of her shirt. 'It would be such a shame if Nermine never got to reward her assistant, even though she eagerly wishes to...'";
	else if RareQuesting is 9:
		say "     'Oh dear! Nermine's brave assistant actually found them!' The jackaless shopkeeper says with surprise as you proudly set the precious items on the counter. 'The poor jackal had almost given up hope of every owning such lovely pieces of work!' She says happily as she opens up the rare item case and begins to position the new pieces of jewelry at prominent positions inside it. You feel a grin tugging at your face at her obvious surprise and joy, feeling rather proud of all the work you put into acquiring the new items that now grace the glass case with their presence. Finally satisfied with her new centerpieces after a little while of rearranging, Nermine turns to you and another large smile crosses her muzzle, the silver lines on her face making her look incredibly sexy as she leans over the counter and gestures you closer.";
		say "     Leaning forward, you find the jackaless's slender hand rubbing through your chest fur before moving up to stroke along the sides of your neck and face. The sensation of her soft claws running through your fur makes you shiver in anticipation. Suddenly Nermine grips the back of your neck with her hand as she pulls you into a deep kiss, her muzzle over your mouth as her tongue plays with yours in a teasing dance. You need little encouragement at this point to respond eagerly, your own hands rubbing her shoulders, even as you savor the taste of the aroused jackal filling your mouth. Eventually she breaks the kiss, and you both end up panting with arousal as you stare into each other's eyes.";
		WaitLineBreak;
		say "     After a moment, Nermine grins again before reaching under the counter. 'Nermine thinks she still needs to pay her tireless helper for all [hisher] help, and she has one last ankh to share now,' the shopkeeper says as she places the golden ankh into your hands. 'Nermine also thinks she has other promise to fulfill as well. Though that can wait until after her new friend has used ankh to look even more handsome,' She smiles as she says those words and runs her tongue along the sides of her muzzle, licking her lips eagerly as she stares at you in anticipation.";
		now RareQuesting is 10; [museum treasures delivered - ankh #3 awarded]
		increase carried of strange ankh by 1;
	else if RareQuesting is 10: [third ankh not yet used]
		say "     'Nermine hopes her new friend will use the ankh sometime soon,' the sultry jackaless says, as she traces the tip of her claw along the edge of her breasts slowly. 'She just can't wait to see how much better her friend will look with a nice proud muzzle of [hisher] own.' Nermine adds, her voice starting to come out in soft lusty breaths, as she stares at you in eager anticipation.";
	else if RareQuesting is 11: [third ankh used]
		say "     'Oh my, Nermine's helpful friend has come to visit her rare items counter again,' the jackal-woman says with a large smile on her muzzle as she proudly gestures to where the new silver and gold jewelry and golden coins are displayed prominently. 'As [heshe] can see, Nermine has greatly appreciated the amazing help provided so far. She wishes she had even more items for someone as resourceful as her tireless adventurer to obtain, but sadly, this is all that Nermine really needs from this city - so her handsome new friend's job is now done.' She says this with a teasing smile before adding, 'At least, the job hunting down items for Nermine is done. Nermine can think of several other things for someone with such a handsome looking face to do for - and with - Nermine. She does think she promised some fun besides the other rewards.'";
		say "     The jackalwoman then stretches out one of her claws to trace the soft gold-dusted patterns in the fur of your new face before stroking the backs of her fingers along the side of your new muzzle, causing you to shiver at her teasing touch. 'Mmm yes - such a fine new look to have, Nermine just loves it...' She pants out the words, obviously as excited and aroused as you are. 'Nermine almost wishes she had yet another ankh to give her friend, though she definitely thinks her friend is looking very handsome as is.' After saying those words in a loving tone, she brings her head forward to kiss the tip of your new muzzle before leaning back over the counter. 'Mmm yes, any time her handsome assistant wants to play with Nermine, [heshe] should just let her know. She will make plenty of time just for [himher] to spend time with,' she adds with a sexy wink as she turns back to what she was doing, her tail waving teasingly behind her as she goes.";
		now RareQuesting is 12; [primed for sex with Nermine]
	else if RareQuesting is 12:
		say "     'A very grateful welcome back from the humble storekeeper! Her friend does want to talk about some of the items in the case?' Nermine says with a broad smile on her muzzle as she approaches. 'It is only fitting as [heshe] helped her find several of them,' she adds happily as she reaches out to stroke the tips of her claws through your soft fur, making you shiver at the pleasant touch. Then the jackaless adds with a soft wink, 'Has Nermine mentioned she is exceptionally appreciative of all the help provided to her?' Showing off the new items you helped obtain for her, she adds, 'Sadly there is not anything else Nermine needs for the case right now. Though perhaps her handsome looking jackal friend has some 'needs' of [hisher] own that Nermine might help with?' The looks she throws you are laden with lust and anticipation.";
	else if JackalManTF is 4: [intro to dominant sex with Nermine]
		say "     'Oh! Nermine sees her friend found yet another ankh on [hisher] own!' The jackal-woman says with a smile as she looks you up and down eagerly, then adds, 'She should have expected no less from someone as obviously resourceful and handsome.' With that said, she leans forward to look your changed body over, blinking slightly as she gets a whiff of your strong jackal scent. 'Amazing,' she says as she begins to pant eagerly, 'Nermine has never seen anything so wonderful, just looking at such a strong, handsome jackal is making her feel all sorts of aroused.' The shopkeeper lets out a lusty moan as she begins to rub her breasts through her t-shirt, her reaction causing you to grin as she moans like a bitch in heat. Noticing your gaze resting on where she is rubbing her breasts, Nermine slowly reaches down to the bottom of her shirt, and teasingly begins to draw it up inch by inch.";
		say "     The sight of the formerly so proper and controlled shopkeeper stripping before you somehow only makes the situation seem even better, as her shirt is soon tossed aside while she rubs her hands over her soft black breasts for your amusement. 'Mmm - Nermine think maybe she should just work like this from now on, if the nice handsome jackal-likes her breasts so much,' she says in a lusty tone, then stretches to give you a good view of her own full jackal body, one of her hands straying down to the clasp of her jeans as you watch. Seeing your obvious approval, she wastes no time in undoing the fastener and slowly stripping them off as well, eagerly displaying her now naked body before you. 'Nermine never knew this could feel so good, or that she could want to please someone so much...' The jackaless moans eagerly as she runs her hands through her now bared black fur.";
		WaitLineBreak;
		say "     'Please - will the handsome jackal help his needy bitch out? Nermine needs to be fucked so very very badly, she wants to please her new jackal master...' The shopkeeper says eagerly, seeming almost surprised at her own begging words, before grinning as she realizes their truth. 'Yes... a master for Nermine, a nice strong powerful jackal master, just what Nermine always needed...' She moans eagerly as she stares up at you with adoration, the sight making you grin as you realize the scent-laden ankh is working exactly the way the strange jackalman promised it would. You just can't wait to see what kind of fun you can have with Nermine in such a state...";
		now RareQuesting is 13; [prepped for dom sex with Nermine]
		now NermineTalk is 4;
	else if RareQuesting is 13:
		say "     'Ah, Nermine's master wishes to talk about the rare items again?' the jackaless asks as she saunters over, shaking her naked hips a little more than necessary. Then she leans forward on the glass countertop, her naked breasts soft and perky and providing you with an awe-inspiring sight. 'Nermine can think of such much better things for her handsome master to talk about, or simply do with his devoted bitch...' The lust filled jackal licks her lips eagerly as she says this, her obvious need making your muzzle pull back in a grin as you think of all the fun things you can do with her now.";

the fuckscene of Rare Counter is "[sexwithrarecounter]".

to say sexwithrarecounter:
	If JackalManTF is 4 and RareQuesting is 13:
		if cocks of player is greater than 0:
			say "     An evil grin comes over your muzzle as you eye the nice clean glass countertop containing all the rare items you hunted down, and you decide to enjoy yourself for a minute. Making sure to catch Nermine's eye, you slowly stroke your cock several times in the direction of the counter, thoroughly enjoying the way the jackalwoman's eyes are locked on your canine cock as you pump yourself to orgasm. The female jackal moans in desire, her mouth open as she pants in need while she watches you shoot your seed all over her nice counter. Of course, the cleanly shopkeeper can't leave a mess like that on the glass counter for long, and Nermine quickly hurries over to clean your mess off... with her tongue, hungrily swallowing your seed after each swipe over the cool glass.";
		else:
			say "     An evil thought comes to mind as you look down at the nice clean glass counter. Glancing over to Nermine, you make sure you have her full attention as you swing yourself up onto the piece of furniture, then spread your legs wide to give her a nice view. Once the jackal-woman's gaze is firmly locked on your damp pussy, you slowly begin to tease yourself, inserting first one finger, then two into your body as you moan in pleasure and buck your hips slightly on the counter. Much to your amusement you find that the jackal shopkeeper you are so fond of is panting and licking her lips with each stroke of your finger, her needy expression almost as much fun as the masturbation itself. Unable to hold back your horny body's needs for long, soon you throw back your muzzle and begin panting heavily yourself as you orgasm, your juices washing out over your fingers and onto the counter itself. Grinning broadly, you swing down off the counter. Of course, the cleanly shopkeeper can't leave a mess like that on the glass counter for long, and Nermine quickly hurries over to clean your femcum off... with her tongue, hungrily swallowing after each swipe over the cool glass.";
	else:
		say "     You don't think Nermine would appreciate you making a mess like that on her nice clean counter. Maybe you should wait until she isn't watching first?";

When play ends:
	If JackalManTF is 3:
		if humanity of player is less than 10:
			say "     Surrendering fully to the infection, you begin to settle into your new feral life, fighting to adapt to your new body with its pretty wild instincts. Then at some point, you receive a strange sort of dream - in it, Nermine comes and visits you, somehow rendering you unable to move as she crouches down and strokes your soft black fur. 'Oh how sad it is to see such a lovely partner reduced to just a beast,' the jackal-woman says, her words confusing to your lust addled mind as she strokes your soft sides. 'Still, at least Nermine's former assistant is happy as a horny little beast in the city. Even though it is a very strange-looking beast one must admit,' she says teasingly as she pets your canine head for a while. 'Do not worry little one, Nermine is here to help, she does still owe for all the help after all.'";
			say "     As she is tracing some kind of pattern on your skin, a strange warm sensation spreads out from where Nermine touches you. Soon you find yourself shuddering in pleasure, your body filled with nearly orgasmic bliss as something sweeps through you, and before you know it you wake up as your body is wracked with a mighty orgasm. Blinking muzzily, you seem to realize something has changed, as you look over yourself you realize that your body is no longer the mixed form you have grown used to, but a handsome fully changed bestial body. You grin as you look around, half expecting to see the jackal-woman from your dream. Disappointingly, there is no one there, but you think you can catch a teasing hint of some lingering perfume. Dismissing the strange encounter from your bestial mind, you quickly get back to you new life, as a happier full member of your new species.";
		else:
			say "     Some time after leaving the city, you wake up one night to find a strange letter tucked under your head. You blink as a familiar scent from the city teases your nose, reminding you of the time you spent in Nermine's shop and your meetings with the enticing jackal-woman. Slitting the letter open you can feel your muzzle pulling back in a feral grin as you realize that the lovely shopkeeper has another job for you to do, and this time the payment seems to be quite lucrative. Looking around yourself with a grin, you can feel your tail wagging eagerly as you begin to anticipate the challenge of acquiring a new rare item for the sexy jackal-woman, as well as the chance to see the strange shop again. Tucking the letter away safely, you quickly begin to plan out your new job, glad to see you will still have the occasional bit of excitement to spice things up in between the monotony of your regular day to day life.";


Section 7- Jackal ankh


Table of Game Objects (continued)
name	desc	weight	object
"strange ankh"	"a small golden ankh with an image of a jackal headed beastman set into the base, it feels oddly warm in your hands"	5	 strange ankh

strange ankh is a grab object. It is part of the player. Understand "ankh" and "strange" as strange ankh.

The usedesc of strange ankh is "[jackalankhmagic].";

the scent of strange ankh is "The golden ankh smells faintly of desert sand and masculine musk.".

To say jackalankhmagic:
	if Nightmaretf is greater than 0:
		say "     You rub the small golden ankh curiously, only to feel a strange burning sensation in your body as if two great forces were warring within. Letting out a gasp of surprise of surprise as the ankh seems to heat up - enough to sear flesh - you drop the item instinctively. Waving your hand and looking down at it, you realize that there is no trace of any damage after all, not even any reddending. Could it be that you've just imagined the feeling? But no, glancing down at the ankh, you see that it has molten into a small puddle of molten gold, sizzling a bit on the ground. Somehow you don't think that was what was supposed to happen...";
		delete strange ankh;
		now JackalManTF is 5;
		now NermineTalk is 1;
		stop the action;
	if wrcursestatus >= 7 and wrcursestatus < 100:
		say "     You rub the small, golden ankh curiously and hiss in pain as it starts to heat up, scalding your hand. You toss it aside. Something about you seems to be incompatible with it.";
		now NermineTalk is 1;
		delete strange ankh;
		stop the action;
	if JackalManTF is 0:
		say "     You smile as you rub the small golden ankh between your hands, the warm metal feeling nice and almost soft as you rub at it. Suddenly the small ankh almost seems to melt into your hands, leaving a soft tingling dusting of gold where the small trinket was before. As you stare at your palms, you feel a strange shifting sensation in your body, seeming to center on your rear. Glancing over your shoulder, you are surprised to see your ass starting to stretch and change, your rear flattening out as a long predatory black jackal-like tail forms behind you. In a strangely pleasant stretching sensation, your new tail grows until its tip is hanging just below your knees. You stare down at the appendage and can't help but try it out - moving the tail from side to side a little a few times, with it reacting with surprising dexterity. Next, you take a few steps and are pleased to note that it helps your balance greatly. Thinking to yourself, the though of how hot and sexy the jackal tail looks comes unbidden to your mind...";
		now tailname of player is "Jackalman";
		now tail of player is "You have a long sleek jackal's tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		increase dexterity of player by 4;
		say "Your dexterity has increased by 4!";
		now RareQuesting is 4;
		now JackalManTF is 1;
		stop the action;
	if JackalManTF is 1:
		say "     Eagerly gripping the next small ankh, you rub your prize softly between your hands again, your fingers tracing over the jackalman's form set into the base. Once more the gold seems to grow warm and melt into your body, the golden colour staining your hands slightly, before a darker black colour begins to spread out from where the ankh was, your hands quickly becoming covered in a smooth, shiny and black fur. As the blackness spreads down your arms and starts to cover your body completely, you realize that you will be looking just like Nermine soon, garbed in such a beautiful black coat. The thought of having a powerful dark jackal's fur makes you grin. As you shift, the idea of looking more and more like a powerful jackal to match the nice and sexy shopkeeper of that strange shop begins to make you feel almost predatory, and more than a little horny as well.";
		say "     Feeling over your new thick black jackal pelt, you are somehow sure your nice new fur will appeal to more than just the shopkeeper as well, and quite possibly provide a handsome defense from attackers.[line break]";
		now skin of player is "[one of]dark black[or]sleek black furred[or]jackal-furred[at random]";
		now skinname of player is "Jackalman";
		increase charisma of player by 3;
		say "Your charisma has increased by 3![line break]";
		increase stamina of player by 3;
		say "Your stamina has increased by 3!";
		increase maxhp of player by level of player plus 1;  [guaranteed hp boost once]
		if remainder after dividing stamina of player by 2 is 0:
			increase maxhp of player by level of player plus 1;  [potential second boost]
		now RareQuesting is 7;
		now JackalManTF is 2;
		stop the action;
	if JackalManTF is 2:
		Say "     Taking out the latest of the shiny gold ankhs, you rub your black-furred hands over its shiny surface eagerly, grinning as it seems to warm up underneath your hands, before melting away into your body again. You can feel your grin spreading as you look at the soft dusting of gold in your hands, as your face begins to tingle strongly. Reaching up to scratch the itch, you feel the shift under your fingers as your face begins to push forward into a dark canine muzzle. Your hands explore the new shape of your head even while the muscles and bones are still in flux, taking on the shape of powerful jaws. You can feel your sight sharpening, as your eyes shift and change as well, altering to give you a proper predatory stare as they finish becoming the sharp knowing eyes of a jackal.";
		say "     Touching the sides of your new jackal-like face, you feel the bones begin to settle into their new configuration, your canine grin now full of sharp pointed teeth and your nose sorting through a variety of new scents even as your ears shift to the top of your changed head. The sights and sounds of the world around you gain an entirely new clarity. Finding a reflective surface after a little bit of searching, you can't help but admire your new strong and dignified jackal looks, and your grin intensifies as you think about the effect your new face will have on the unsuspecting little jackal bitch in the shop. If this is just your reward for your help so far, you can't but wonder eagerly just how much better it will when you can complete the change and fully become a strong and powerful jackalman.";
		now facename of player is "Jackalman";
		now face of player is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your face is painted with a soft shimmering pattern of golden dust, accentuating your deep golden eyes. Your appearance seems both predatory and strangely sexy at the same time.";
		now RareQuesting is 11;
		now statuequest is 1;
		increase charisma of player by 4;
		say "Your charisma has increased by 4!";
		increase perception of player by 4;
		say "Your perception has increased by 4!";
		now JackalManTF is 3;
		stop the action;
	if JackalManTF is 3:
		say "     Pulling the small golden ankh the jackal man gave you out of your pack, you feel an eager grin spreading across your black and gold muzzle, realizing that this ankh will surely be the final one needed to complete your transformation into a complete Jackal. The strange enticing scent from the ankh fills your muzzle as you begin to rub the golden charm softly, enjoying the feel of the soft metal warming up and melting into you yet again. Soon the warmth from the ankh spreads from your hands throughout your body, as the changes begin to take place, with your hands changing first as the tips of your fingers lengthen and become claw-tipped, while your palms grow tougher and more like proper pads.";
		say "     Your attention is soon diverted from your hands, as the warm sensation spreads throughout your entire body feeling like a series of soft massaging hands as they reshape your body, causing your muscles to shift and change under the skin. The sensation of the shift is amazing, with everything seeming to become better and more powerful and better as your shape pulls tight and aligns for its new shape. Your changing muscles give your body a slightly more bestial look as the ripple of transformation moves down your legs, joints cracking as your legs shift and change. Your heels are pulled upwards and off the ground as your ankles move higher up on your legs, your feet seeming to stretch forward as new claws push out of your new jackal-like paws.";
		WaitLineBreak;
		say "     The changes finally finish and you look down at yourself as the warm pleasant sensation fades, a grin stretching over your muzzle as you realize that your body seems to have become both lean and powerful now, your whipcord-like muscles rippling over your new anthro body with every movement. You stretch yourself out, shaking the kinks out of your new muscles, enjoying the feel of a powerful predatory body built for speed and strength both in and out of combat. Thin tracings of gold patterns adorn the fur of your body now as well as your face, accentuating your well-toned look. Stretching again, you enjoy how natural and proper your new form feels on you.";
		say "     The thought of Nermine crosses your mind as you admire yourself, and you can hardly wait to see just what the lovely jackal shopkeeper thinks about your new form as well. A grin crosses your muzzle as you wonder if what the jackal man said about your 'irresistible' new attraction is true, and you find yourself growing aroused at the very thought of the proper little jackal-woman panting and begging you for more. You decide you will have to investigate that possibility at some point soon, as you stretch out your new more canine legs, before heading out into the city again with confidence.";
		now bodyname of player is "Jackalman";
		now body of player is "strong and powerful, nicely muscled with bestial digitigrade legs and jackal-like feet, your hands ending in sharp jackal-like claws. Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself...";
		attributeinfect "Jackalman";
		now cockname of player is "Jackalman";
		now cock of player is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";
		increase strength of player by 4;
		increase capacity of player by 20;
		say "Your strength has increased by 4!";
		increase dexterity of player by 2;
		say "Your dexterity has increased by 2!";
		now JackalManTF is 4;
	if JackalManTF is 5:
		say "     You examine the strange ankh in your hand, but it seems to slip out of your fingers. When you look for it, you can't seem to find it. Oh well, you'd already asked Nermine to reverse its effects, so that's probably for the best.";
		now carried of strange ankh is 0;


An everyturn rule:
	if JackalManTF is 5:
		increase score by 0;
	else:
		if JackalManTF >= 1:
			if tailname of player is not "Jackalman":
				say "Your ass tingles as it shifts and changes while you watch, a pleasant sensation stealing over you as the power of the ankh you used returns your body to a proper form, your jackal-like tail reforming behind you. Its sleek dark presence behind you proving that its power is stronger then your more recent infection.";
				now tailname of player is "Jackalman";
				now tail of player is "You have a long sleek jackal's tail attached to your rear, it seems to sway happily over your thickly muscled ass in a predatory manner as you move.";
		if JackalManTF >= 2:
			if skinname of player is not "Jackalman":
				say "Your skin seems to writhe and twitch, as if something were fighting underneath the surface, soon you can see patches of silky soft black jackal fur once more pushing their way out of your body. The fur continues to spread in a pleasurable wave as the other infection is conquered, until finally your entire body is covered in its dark softness once again.";
				now skinname of player is "Jackalman";
				now skin of player is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
		if JackalManTF >= 3:
			if facename of player is not "Jackalman":
				say "You feel a strange discontent building in your head, as your face seems to burn and flex, its external form not matching that of your internal jackal, causing you to snap and snarl even as the bones in you face begin to shift and stretch again, and you let out a loud howl of triumphant pleasure as your face reshape itself back into a proper jackals visage, your grin once more stretching your muzzle as your gold dusted black fur settles in once more over your handsome jackals countenance.";
				Now facename of player is "Jackalman";
				now face of player is "narrow canine face, with a long sleek muzzle and a nicely flattened forehead, your face is painted with a soft shimmering pattern of golden dust, accentuating your deep golden eyes. Your appearance seeming both predatory, and strangely sexy at the same time";
		if JackalManTF >= 4:
			if bodyname of player is not "Jackalman":
				say "Your body seems to twist and warp, your muscles heating up again as your body fights the outside infection. Soon enough you can feel your form twisting and warping back into the proper and powerful shape of a predatory jackal.";
				now bodyname of player is "Jackalman";
				now body of player is "strong and powerful, nicely muscled with bestial digitigrade legs and jackal-like feet, your hands ending in sharp jackal-like claws. Your tough body displays your feral power for all to see, and is a perfect type of body for such a powerful jackal man like yourself";
				attributeinfect "Jackalman";
			if cockname of player is not "Jackalman":
				now cockname of player is "Jackalman";
				now cock of player is "[one of]canine[or]jackalman[or]jackal-like[or]knotted[at random]";


Section 8- Strange doll


strange doll is a pet. "The strange looking doll that you found in the bargain bin of the unusual shop, the small doll seems to always look exactly like you, changes and all. The most unusual part of the whole thing is how it happily follows along behind you loyally wherever you go, its plush body moving on its own through some unknown method. Still just looking at the little thing manages to bring a smile to your face.".
strange doll is a part of the player.
The weapon damage of strange doll is 7.
The level of strange doll is 1.
The Dexterity of strange doll is 10.
The summondesc of strange doll is "     You pull the strange little doll from the shop out of your pack, and set it on the ground next to you, the doll lies there for a minute on the ground, before twitching and picking itself up. The little miniature version of you looks around the area, before looking up at you and saluting, obviously ready and willing to help.".
The assault of strange doll is "[one of]The strange doll picks up something from the ground nearby, and tries to stab your attacker with it![or]Running up under your attacker, your strange plush doll tosses itself at their legs, tangling them up![or]The strange doll of you mimics your attack, striking at your opponent![or]Your opponent suddenly cries out in pain, your little ally having managed to score a hit in a sensitive area.[or]Taking advantage of your foes distraction, your little doll gets in several good hits.[or]All of a sudden your opponent stops fighting and begins to try to claw at their face, taking the opportunity to land an extra hit, you notice your little plush doll managed to climb up and put its hands over their eyes.[or]All of a sudden your opponent is startled by a sudden rain of debris tossed at it by your little ally, causing it to fall backwards[or]Imitating you, your little mini me attacks the beast with wild abandon![at random]".
the fuckscene of strange doll is "The little doll doesn't respond to your strange offer.".

dollfound is a number that varies.

the scent of strange doll is "The strange doll smells strangely like you.".

when play ends:
	if strange doll is tamed:
		if humanity of player is less than 10:
			if bodyname of player is "Plush Lion":
				say "     The little plush doll you got at the shop seems as happy to be a plush lion creature as you are now, and you find your muzzle pulling back in a grin full of amusement as you look down at your little companion, an idea striking you. Soon with a little work and some extra stuffing your plush doll is of a much more appropriate size to be a proper companion to you, and you can't help but admire your handiwork as you stare at the newest lovely plush little lioness for the pride. Your former doll seems to approve of her newly altered body, purring and rubbing herself up against you, eager and happy to be a proper little member of your plush pride.";
			else:
				say "     The strange doll from the shop stays with you, even as you surrender fully to the infection, following you around through the city and mimicking your actions as you settle into your new life. Eventually your lust clouded mind will begin to recognize that the strange doll you found is becoming more and just like you, as it grows in size daily, and seems to take on a more realistic appearance. You aren't able to figure out just when the little toy finishes changing, but before you know it, instead of being kept company by an animate toy, you have a perfect twin of your new self keeping you company instead. The two of you sharing your new life and fate together eagerly.";
		else:
			if a random chance of 1 in 2 succeeds:
				say "     Escaping from the city with your sanity, it was easy enough to sneak your little doll through the military as just a toy, the soldier who examined it even commenting on how cute it was. Once in the outside world, you bring the doll with you most places, as sort of a living good luck charm, even letting your little mini you help with your chores and work when no one is looking. You find it easy to confide in and talk to the attentive little doll, and come to enjoy its quiet company in your life, its easy acceptance of your body and your shared experiences in the city making it the perfect listener.";
			else:
				say "     Rescued by the military, they seem to have no problem letting you leave the city with your little doll, even thinking it cute how much the little thing looks like you. You grin at how little they realize, and smile and nod as they let you go free. Once safe in the outside world, you take the doll with you until you find a place to stay, enjoying its presence as it keeps you company most nights, at some point you would swear it was actually growing larger as time goes on, but you shrug it off as unimportant. Eventually you are woken up in the night by something on top of you, and you struggle until you realize it is the strange little doll, which now looks exactly like you, and not very doll like at all. You try to talk, but your double just kisses you lewdly, before whispering into your ears that since you have been such a good master for it, it will take care of all those evil chores and work and things for you, so you can relax.";
				say "     You are nervous at first, but no one seems to tell the difference between you and the doll, and so you can lounge around and relax, finding it strangely easy to do nothing as you stay at home, not even bothering to try to think for long periods of time. Eventually you realize that you are shrinking one day, when your double reaches down to pet you on the head, you try to figure out what you can do about this, but it seems like such hard work to think. Several days later when your former doll picks you up and sets you on a shelf, you realize that you have actually become a doll version of yourself, while the other doll lives your old life! You try to struggle and tell someone what has happened, but your size and cuteness means no one takes you seriously, not that you have much luck even talking to them either... soon though you begin to wonder what the point in trying is, its so much easier to just go with the flow and do what your large master does, like a good little mimicking doll...";

Nermine ends here.
