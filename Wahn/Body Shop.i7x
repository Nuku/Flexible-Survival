Version 1 of Body Shop by Wahn begins here.
[ Version 1 - new file]

LastMoreauPartSale is a number that varies. LastMoreauPartSale is usually 10000.
MoreauPaymentAccepted is a truth state that varies. MoreauPaymentAccepted is usually false.
FirstMannequinTalk is a number that varies. FirstMannequinTalk is usually 0.

Section 1 - Rooms

[Room Declaration]
Southeast of Mall East Wing is Body Shop.
The description of Body Shop is "[BodyShopDesc]".

to say BodyShopDesc:
	say "     This room seems to have been a clothing boutique before the chaos started - at least judging by the wide-open floorspace, the row of changing booths in the back and numerous mannequins standing around motionlessly. Interestingly, none of the dolls actually wears a shred of clothing, with all of the former merchandise and the stands they were offered on pushed into an untidy heap in one corner of the store. No, what is being presented now instead are the mannequins themselves... on a second look, you see that they often vary from the 'typical' stature of sexless store mannequins. A row of them at the shop windows sports impressive erections - equine, canine, feline and human, to name just a few, while other little groups have a variety of facial features and body plans. Further in the back are several that one might believe customers at first - fully formed anthros with life-like skin, feathers or otherwise - if they didn't stand quite so motionless and still...";

Section 2 - NPC

Moreau is a man.
The description of Moreau is "[MoreauDesc]".
The conversation of Moreau is { "Pay up!" }.
Moreau is in Body Shop.

the scent of Moreau is "Moreau has a hot, spicy scent that reminds you of exotic places.".

To say MoreauDesc:
	if debugactive is 1:
		say "DEBUG -> hp of Moreau: [hp of Moreau], libido of Moreau: [libido of Moreau] <- DEBUG[line break]";
	say "     Moreau is a snake... quite literally so, as most of his body is purely ophidian, going on and on as it slowly tapers. But in addition to that, he does have a waist too - you can see the typical little bulges where the hip-bone are right under the skin, and above that a human-like torso, giving him arms and opposable thumbs. A quick glance down to his crotch reveals that it is smooth and relatively bare, with just a narrow slit between the rows of scales - no telling what might or might not be hidden inside that. The naga bears a truly awe-inspiring set of scales, with vibrant shades of red, orange and yellow making him almost appear like a dragon, complete with a little crest of scale-tips standing up on his broad snake-head.";
	say "     In a sharp contrast to his fiery-colored body, the storekeeper's large eyes are startingly green, making you freeze where you stand as he notices your attention and focuses his gaze on you in turn. The emerald, slit-pupiled orbs seem like bottomless pools you could stare at forever and lose yourself in... and you almost do, before he turns his head and breaks the stare. Opening his mouth a fraction, the naga tastes the air with his split tongue and then smiles at you, waving you closer with an inviting gesture.";

Instead of conversing the Moreau:
	if hp of Moreau is 0:
		say "     'Welcome to my store,' the naga tells you with a gracious bow, snaking his way closer to you before coiling up right in front of where you stand. 'Did something in the shop windows catch your eye? The offered wares are subject to change, and I do circle through the newer parts for people to have a look at.' You look around at the collection of mannequins, then ask what he actually sells. 'Why, bodies of course. Everything about them. The signage is quite clear, is it not? Come, let me show you.' Miming you to walk over to the next bunch of mannequins, the ophidian storekeeper keeps up with your steps in a smooth glide of his scales on the tiled floor, stopping before the display models.";
		say "     'We live in times of change - that is obvious - but many, oh so very many of people are dissatisfied with their adopted shapes. Maybe they were forced to shift, or couldn't help but succumb into it, and now they feel like they deserve... better. I offer this service, for a price.' Smiling at you, he then turns to stare directly at a mannequin shaped like an anthro gryphon, its body detailing everything exactly, from the tips of the clawed digitigrade feet, up over a hermaphrodite's set of cock, balls and pussy to the pair of wings behind its back. Only the showpiece's head is still that of an almost featureless doll, as well as the skin which has a white plastic-y sheen.";
		WaitLineBreak;
		say "     Giving you a sidelong glance that tells you he loves showing off, Moreau crooks his finger a little at the mannequin - and the human-sized doll instantly reacts, walking over to come stand before you with startling suddenness. As it comes to stand in front of you in an 'at rest' position, you can't help but gulp and glance around. Ten, fifteen, twenty, twentysix, -seven, -eight... there are about thirty of those things in here, which makes you feel less like on a shopping trip and more like standing in the midst of a pride of lions. 'Do not be concerned, my assistants are perfectly well behaved. Watch this one for example,' Moreau says, amusement underlying his voice as he puts the gryphon doll through its paces, spinning around slowly, stretching and showing off the details of its shape.";
		say "     Once he is satisfied with the mannequin, Moreau sends it back to the original position and turns back to you. 'I can offer the service of giving people what they want. And even more than that - I give a warranty. No more losing what you so dearly desired, you understand,' the snake tells you in a quite smooth-talking voice, guiding you in a tour through the store, past numerous of the motionless living dolls. While you walk, your gaze falls upon a treasure-trove of supplies stacked up in the back. He must have weeks forth of food and water there! Curiosity drives you to check it out from up close, but after a few steps, the naga's hand slides under your and gently but firmly tugs you back to his tour. Then you notice that every last one of the mannequins in the whole store turned their head towards you when you came close to the supplies. They quickly take their positions again, but you can't help but shiver a little from so many featureless faces staring at you.";
		WaitLineBreak;
		say "     Finally arriving back where you started after having shown off all sorts of creature parts you never even knew existed, Moreau smiles and shows his forked tongue for a second. 'As you can see, I do have much to offer. It depends a bit on what people sell to me, so be sure to get anything you desire immediately, so it is not sold out by the time you return. You will find the prices very reasonable for this unique service...'";
		increase hp of Moreau by 1; [got his initial spiel]
	else:
		say "[MoreauTalkMenu]";

to say MoreauTalkMenu:
	say "[line break]";
	say "What do you want to talk with Moreau about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (FirstMannequinTalk is 0 or (FirstMannequinTalk is 1 and MannequinFirstEncounter is 0)):
		choose a blank row in table of fucking options;
		now title entry is "Ask about the mannequins";
		now sortorder entry is 1;
		now description entry is "Try to learn about his store";
	[]
	if (FirstMannequinTalk is 1 and MannequinFirstEncounter > 0):
		choose a blank row in table of fucking options;
		now title entry is "Ask for the truth about the mannequins";
		now sortorder entry is 2;
		now description entry is "Press the shopkeeper for the truth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sell something";
	now sortorder entry is 3;
	now description entry is "Let him take part of you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Buy something";
	now sortorder entry is 4;
	now description entry is "Ask to buy some feature to change on your body";
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
				if nam is:
				-- "Ask about the mannequins":
					say "[MoreauTalk1]";
				-- "Ask for the truth about the mannequins":
					say "[MoreauTalk2]";
				-- "Sell something":
					say "[MoreauPartSale]";
				-- "Buy something":
					say "[MoreauPartBuy]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauTalk1: [mannequins not seen]
	say "     Deciding you'd like to know a bit more about Moreau's store and how it came to be, you gesture to some of the mannequins nearby, asking the shopkeeper about their origins.";
	say "      His grin seems to indicate to you that he's been asked this question many times before, and the smooth and practiced way he starts to talk tells you you're probably right. 'Ah, yes. They are quite interesting, are they not? When this all started, seeing all the changes happening around this city had started to give me some vague ideas along the lines of this shop, but it wasn't until I stumbled on a discarded mannequin on the side of the road that those ideas really clicked together. And so I came here, as I knew there'd be plenty of mannequins to work with, and with a bit of my own magical talent was able to convert the mannequins you see here from their inert state to something more suitable for my purposes. The process took some refining, but I think the result has been well worth it all.'";
	say "     Satisfied, you nod and smile to him in thanks for the explanation, returning to looking around the store. Some part of you can't help but feel there might be more to the story, though...";
	now FirstMannequinTalk is 1;

to say MoreauTalk2: [mannequins seen, asked about them once]
	say "     Recognizing the mannequins around the store from your travels around the city and feeling you know what the snake might be leaving out of his story, you choose to press Moreau to tell you where exactly they came from.";
	say "     With your confrontational posture and the skeptical look on your face, the shopkeep seems to recognize that you've seen the roaming mannequins and he lets out a sigh, gesturing you to follow him toward the back of the store before answering in a hushed voice. 'I can tell what you're really asking, and thinking. And no, I did not lie to you before, I simply left some of the finer details out as I always do when people ask me about them. I do not wish to frighten away my customers after all.' He gives you a smile at that, which was probably meant to be ressuring, but ends up a little more sinister. You nod to him, gesturing for him to continue talking.";
	say "    After a quick glance around the store to make sure no one is approaching, he continues. 'As you probably guessed, the mannequin I found was one of the animate ones this event has created. I fought and defeated it, and nearly left it there, until the idea of this shop occurred to me. This form has given me certain... powers of persuasion, which I used to bring the mannequin under my control. Having seen what they do to those they defeat, and not wishing to have to fight and collect them one by one, I had the idea to transform an ordinary mannequin. I tested the idea on an inert mannequin from a nearby store, and finding that it had worked, led my two new mannequins here to collect more from the abandoned stores. So yes, one of my mannequins is from out in the city. Perhaps it was once a person, but there was no way for me or anyone else to tell. The rest were all created from inert mannequins. I've harmed no one, and they're all completely under my control. Does that satisfy you?'";
	WaitLineBreak;
	say "    Considering what else has been happening in this warped city and how this seems to be one of the more benign and overall harmless, if still unsettling, things you've seen, you nod to him with a sigh. He nods with a smile, visibly relaxing as his tongue flicks out at the air, 'Good. Now that your curiosity is satisfied, perhaps you'd like to look around the shop and see if anything catches your eye?' Telling him that you will, you step away, returning to looking around the store.";

to say MoreauPartSale:
	say "[line break]";
	say "What do you want to sell to Moreau?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Your face";
	now sortorder entry is 1;
	now description entry is "Who needs features, right";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Your body shape";
	now sortorder entry is 2;
	now description entry is "Sell him your body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Your skin";
	now sortorder entry is 3;
	now description entry is "Plastic skin won't be so bad, will it";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Your ass/tail";
	now sortorder entry is 4;
	now description entry is "Sell him your back end. You barely look at it anyways, right";
	[]
	if cocks of player > 0 or cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Your Genitals";
		now sortorder entry is 5;
		now description entry is "You can do without those bits for a while, right";
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
				now sextablerun is 1;
				if title entry is:
				-- "Your face":
					say "[MoreauFaceSale]";
				-- "Your body shape":
					say "[MoreauBodySale]";
				-- "Your skin":
					say "[MoreauSkinSale]";
				-- "Your ass/tail":
					say "[MoreauAssSale]";
				-- "Your Genitals":
					say "[MoreauDickSale]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauFaceSale:
	if facename of player is "Mannequin": [nothing to sell]
		say "     Taking one glance at your mannequin-like face, the naga raises an eyebrow and says, 'You are kidding, right? Come back when you actually have something to sell, okay?'";
	else if (facename of player is "Jackalman" or facename of player is "Jackalboy" or facename of player is "Nightmare" or facename of player is "Hellhound"): [perma infections]
		say "     Taking a long glance at your face, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauSaleRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your face, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauPaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your face to it, giving what you can only describe as a hungry stare. Then it stretches out a hand and touches you, a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the very neutral face of your counterpart start to shift, taking on features that seem more and more like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if facename of player is not name entry:
				say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
				now facename of player is name entry;
				now face of player is face entry;
			say "[line break][MoreauSaleSuccessful]";
			now MoreauPaymentAccepted is false;

to say MoreauBodySale:
	if bodyname of player is "Mannequin":
		say "     Taking one glance at your mannequin-like body, the naga raises an eyebrow and says, 'You are kidding, right? Come back when you actually have something to sell, okay?'";
	else if (bodyname of player is "Jackalman" or bodyname of player is "Jackalboy" or bodyname of player is "Nightmare" or bodyname of player is "Hellhound"):
		say "     Taking a long glance at your body, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauSaleRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your body shape, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauPaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you feel your counterpart shift, taking on body features that seem more and more like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if bodyname of player is not name entry:
				say "Your [one of][bodytype of player] [or][bodydesc of player] [or][bodydesc of player] [or][bodytype of player] [or][at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
				now bodyname of player is name entry;
				now body of player is body entry;
			say "[line break][MoreauSaleSuccessful]";
			now MoreauPaymentAccepted is false;

to say MoreauSkinSale:
	if skinname of player is "Mannequin":
		say "     Taking one glance at your mannequin-like skin, the naga raises an eyebrow and says, 'You are kidding, right? Come back when you actually have something to sell, okay?'";
	else if (skinname of player is "Jackalman" or skinname of player is "Jackalboy" or skinname of player is "Nightmare" or skinname of player is "Hellhound"):
		say "     Taking a long glance at your skin, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauSaleRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your skin, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauPaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, the parts you see of your counterpart shift, taking on a skin very much like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if skinname of player is not name entry:
				say " Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
				now skinname of player is name entry;
				now skin of player is skin entry;
			say "[line break][MoreauSaleSuccessful]";
			now MoreauPaymentAccepted is false;

to say MoreauAssSale:
	if skinname of player is "Mannequin":
		say "     Taking one glance at your mannequin-like ass, the naga raises an eyebrow and says, 'You are kidding, right? Come back when you actually have something to sell, okay?'";
	else if (tailname of player is "Jackalman" or tailname of player is "Jackalboy" or tailname of player is "Nightmare" or tailname of player is "Hellhound"):
		say "     Taking a long glance at your ass, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauSaleRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your rear end as you bare it for him to see, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauPaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you glance over the shoulder of your counterpart, seeing its rear end taking on a shape very much like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if tailname of player is not name entry:
				say " Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
				now tailname of player is name entry;
				now tail of player is tail entry;
			say "[line break][MoreauSaleSuccessful]";
			now MoreauPaymentAccepted is false;

to say MoreauDickSale:
	if cockname of player is "Mannequin":
		say "     Taking one glance at your mannequin-like crotch, the naga raises an eyebrow and says, 'You are kidding, right? Come back when you actually have something to sell, okay?'";
	else if (cockname of player is "Jackalman" or cockname of player is "Jackalboy" or cockname of player is "Nightmare" or cockname of player is "Hellhound"):
		say "     Taking a long glance at your crotch, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauSaleRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your crotch as you bare it for him to see, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauPaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and lays a hand on your chest, stroking it down your front almost sexually before it comes to cup your genitals. It is a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you glance down between your bodies, seeing its own crotch taking on a shape very much like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if cockname of player is not name entry:
				if cocks of player > 1:
					say "      Sudden pleasure runs through your doomed [cock of player] cock[smn] as [ittheym] spray[smv] the last of [itstheirm] seed, dwindling down to nothing at all and vanishing, leaving only [one of]the powerful[or]that final[at random] orgasm to remember [itthemm] by as you cease to be a male altogether.";
				if cunts of player > 1:
					say "     An odd, wet noise has you peeking in time to see your [one of]cunt[sfn][or]puss[yfn][at random] vanish! With a strange slurp of closing flesh, you cease to be female altogether.";
				now cocks of player is 0;
				now cunts of player is 0;
				now cockname of player is name entry;
				now cock of player is cock entry;
				say "[line break][MoreauSaleSuccessful]";
				now MoreauPaymentAccepted is false;

to say MoreauPaymentOptions:
	say "With a commanding hiss, Moreau calls one of his mannequins from the back of the store. It is completely without any 'enhancements' to its plastic-faced body plan... but then, this one apparently isn't in use as a display model. Apparently it was sorting through the naga's supplies, stashing new stuff securely. The living doll carries [one of]a can of beans[or]a MRE[or]a nut and chocolate candy bar[or]a grapefruit[or]a box of breakfast cereal[at random] in one hand, with a big water bottle in the other one, delivering them to its master before it returns to its task. Moreau turns his scaled head back your way and holds up the food and water suggestively. 'So, here are your options to choose from. What shall it be?'";
	say "     [line break]";
	say "     [bold type]What do you want to take as your payment?[roman type][line break]";
	say "     [link](1)[as]1[end link] - The food.";
	say "     [link](2)[as]2[end link] - The water.";
	say "     [link](3)[as]3[end link] - Actually... you want to change your mind about this.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to take the food, [link]2[end link] to take the water or [link]3[end link] to refuse the deal after all.";
	if calcnumber is 1 or calcnumber is 2:
		say "     [line break]";
		if calcnumber is 1:
			say "     You gain food!";
			increase carried of food by 1;
		else:
			say "     You gain a water bottle!";
			increase carried of water bottle by 1;
		say "     You accept the [if calcnumber is 1]food[else]water[end if] from Moreau, then allow him to guide you over to the 'changing rooms' - the name now having a whole new dimension, now that you think of it. He calls another mannequin to join you, one still with its 'original' appearance in the part that you want to sell. 'Please step in and bare the needed area please,' the naga tells you in a friendly manner, then adds, 'And do not worry, I control my staff quite closely. It will only take what you sold.' Following his slight shooing motion, you follow the mannequin into the cabin and await what comes next.";
		say "[line break]";
		now MoreauPaymentAccepted is true;
	else:
		say "     [line break]";
		say "     With a shrug and a flick of his forked tongue, the naga waves a mannequin forward to hand his offered items to, sending it away a moment later to stash the goods. 'A pity that we couldn't get into business today. Be sure to come back if you change your mind,' the storekeeper then tells you with a friendly if businesslike tone.";

to say MoreauSaleSuccessful:
	say "     Soon, the curtain is pulled back once more, with Moreau inspecting his creature's new features and nodding in satsifaction. He sends the living doll to present itself at the shop window with a flick of his wrist, then takes your hand to help you out of the booth. Only as you take your first step do you realize how exhausted this business left you, as his help is actually necessary to keep you from stumbling. 'My pleasure doing business with you,' the naga tells you in a cheerful tone as he walks you to the front of the store, eventually adding, 'Please do take it a bit slower for a few minutes. Your body has to get used to the new you.'";
	now LastMoreauPartSale is turns;

to say MoreauSaleRefusal:
		say "     The naga looks at you and flicks his forked tongue, then shakes his head. 'Regretfully, I can not let you do that. The transformation process does take it out of a person, and I would not want to see you come to harm. Please rest a bit before you come back to sell another part.";

to say MoreauPartBuy:
	say "     ";



Body Shop ends here.
