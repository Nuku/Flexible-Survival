Version 1 of Body Shop by Wahn begins here.
[ Version 1 - new file]
[ Version 1.1 - events by Hyliad ]

LastMoreauPartSale is a number that varies. LastMoreauPartSale is usually 10000.
MoreauPaymentAccepted is a truth state that varies. MoreauPaymentAccepted is usually false.
MoreauDiscount is a truth state that varies. MoreauDiscount is usually false.
FirstMannequinTalk is a number that varies. FirstMannequinTalk is usually 0.
BodyShopGuaranteedFace is a text that varies.
BodyShopGuaranteedBody is a text that varies.
BodyShopGuaranteedSkin is a text that varies.
BodyShopGuaranteedTail is a text that varies.
BodyShopGuaranteedCrotch is a text that varies.

Section 1 - Rooms

[Room Declaration]
Southeast of Mall East Wing is Body Shop.
The description of Body Shop is "[BodyShopDesc]".

to say BodyShopDesc:
	say "     This room seems to have been a clothing boutique before the chaos started - at least judging by the wide-open floorspace, the row of changing booths in the back and numerous mannequins standing around motionlessly. Interestingly, none of the dolls actually wears a shred of clothing, with all of the former merchandise and the stands they were offered on pushed into an untidy heap in one corner of the store. No, what is being presented now instead are the mannequins themselves... on a second look, you see that they often vary from the 'typical' stature of sexless store mannequins. A row of them at the shop windows sports impressive erections - equine, canine, feline and human, to name just a few, while other little groups have a variety of facial features and body plans. Further in the back are several that one might believe customers at first - fully formed anthros with life-like skin, feathers or otherwise - if they didn't stand quite so motionless and still...";


after going to Body Shop while (HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Moreau and Customer Scene[line break]";
	say "     ...";


Section 2 - NPC

Moreau is a man.
The description of Moreau is "[MoreauDesc]".
The icon of Moreau is Figure of Moreau_soft_icon.
The conversation of Moreau is { "Pay up!" }.
Moreau is in Body Shop.

the scent of Moreau is "Moreau has a hot, spicy scent that reminds you of exotic places.".

To say MoreauDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Moreau: [HP of Moreau], libido of Moreau: [libido of Moreau] <- DEBUG[line break]";
	say "     Moreau is a snake... quite literally so, as most of his body is purely ophidian, going on and on as it slowly tapers. But in addition to that, he does have a waist too - you can see the typical little bulges where the hip-bone are right under the skin, and above that a human-like torso, giving him arms and opposable thumbs. A quick glance down to his crotch reveals that it is smooth and relatively bare, with just a narrow slit between the rows of scales - no telling what might or might not be hidden inside that. The naga bears a truly awe-inspiring set of scales, with vibrant shades of red, orange and yellow making him almost appear like a dragon, complete with a little crest of scale-tips standing up on his broad snake-head.";
	say "     In a sharp contrast to his fiery-colored body, the storekeeper's large eyes are startingly green, making you freeze where you stand as he notices your attention and focuses his gaze on you in turn. The emerald, slit-pupiled orbs seem like bottomless pools you could stare at forever and lose yourself in... and you almost do, before he turns his head and breaks the stare. Opening his mouth a fraction, the naga tastes the air with his split tongue and then smiles at you, waving you closer with an inviting gesture.";

Instead of conversing the Moreau:
	project the figure of Moreau_face_icon;
	if HP of Moreau is 0:
		say "     'Welcome to my store,' the naga tells you with a gracious bow, snaking his way closer to you before coiling up right in front of where you stand. 'Did something in the shop windows catch your eye? The offered wares are subject to change, and I do circle through the newer parts for people to have a look at.' You look around at the collection of mannequins, then ask what he actually sells. 'Why, bodies of course. Everything about them. The signage is quite clear, is it not? Come, let me show you.' Miming you to walk over to the next bunch of mannequins, the ophidian storekeeper keeps up with your steps in a smooth glide of his scales on the tiled floor, stopping before the display models.";
		say "     'We live in times of change - that is obvious - but many, oh so very many of people are dissatisfied with their adopted shapes. Maybe they were forced to shift, or couldn't help but succumb into it, and now they feel like they deserve... better. I offer this service, for a price.' Smiling at you, he then turns to stare directly at a mannequin shaped like an anthro gryphon, its body detailing everything exactly, from the tips of the clawed digitigrade feet, up over a hermaphrodite's set of cock, balls and pussy to the pair of wings behind its back. Only the showpiece's head is still that of an almost featureless doll, as well as the skin which has a white plastic-y sheen.";
		WaitLineBreak;
		say "     Giving you a sidelong glance that tells you he loves showing off, Moreau crooks his finger a little at the mannequin - and the human-sized doll instantly reacts, walking over to come stand before you with startling suddenness. As it comes to stand in front of you in an 'at rest' position, you can't help but gulp and glance around. Ten, fifteen, twenty, twentysix, -seven, -eight... there are about thirty of those things in here, which makes you feel less like on a shopping trip and more like standing in the midst of a pride of lions. 'Do not be concerned, my assistants are perfectly well behaved. Watch this one for example,' Moreau says, amusement underlying his voice as he puts the gryphon doll through its paces, spinning around slowly, stretching and showing off the details of its shape.";
		say "     Once he is satisfied with the mannequin, Moreau sends it back to the original position and turns back to you. 'I can offer the service of giving people what they want. And even more than that - I give a warranty. No more losing what you so dearly desired, you understand,' the snake tells you in a quite smooth-talking voice, guiding you in a tour through the store, past numerous of the motionless living dolls. While you walk, your gaze falls upon a treasure-trove of supplies stacked up in the back. He must have weeks forth of food and water there! Curiosity drives you to check it out from up close, but after a few steps, the naga's hand slides under your and gently but firmly tugs you back to his tour. Then you notice that every last one of the mannequins in the whole store turned their head towards you when you came close to the supplies. They quickly take their positions again, but you can't help but shiver a little from so many featureless faces staring at you.";
		WaitLineBreak;
		say "     Finally arriving back where you started after having shown off all sorts of creature parts you never even knew existed, Moreau smiles and shows his forked tongue for a second. 'As you can see, I do have much to offer. It depends a bit on what people sell to me, so be sure to get anything you desire immediately, so it is not sold out by the time you return. You will find the prices very reasonable for this unique service...'";
		increase HP of Moreau by 1; [got his initial spiel]
	else:
		say "[MoreauTalkMenu]";

to say MoreauTalkMenu:
	LineBreak;
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
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauTalk1: [mannequins not seen]
	say "     Deciding you'd like to know a bit more about Moreau's store and how it came to be, you gesture to some of the mannequins nearby, asking the shopkeeper about their origins.";
	say "     His grin seems to indicate to you that he's been asked this question many times before, and the smooth and practiced way he starts to talk tells you you're probably right. 'Ah, yes. They are quite interesting, are they not? When this all started, seeing all the changes happening around this city had started to give me some vague ideas along the lines of this shop, but it wasn't until I stumbled on a discarded mannequin on the side of the road that those ideas really clicked together. And so I came here, as I knew there'd be plenty of mannequins to work with, and with a bit of my own magical talent was able to convert the mannequins you see here from their inert state to something more suitable for my purposes. The process took some refining, but I think the result has been well worth it all.'";
	say "     Satisfied, you nod and smile to him in thanks for the explanation, returning to looking around the store. Some part of you can't help but feel there might be more to the story, though...";
	now FirstMannequinTalk is 1;

to say MoreauTalk2: [mannequins seen, asked about them once]
	say "     Recognizing the mannequins around the store from your travels around the city and feeling you know what the snake might be leaving out of his story, you choose to press Moreau to tell you where exactly they came from.";
	say "     With your confrontational posture and the skeptical look on your face, the shopkeep seems to recognize that you've seen the roaming mannequins and he lets out a sigh, gesturing you to follow him toward the back of the store before answering in a hushed voice. 'I can tell what you're really asking, and thinking. And no, I did not lie to you before, I simply left some of the finer details out as I always do when people ask me about them. I do not wish to frighten away my customers after all.' He gives you a smile at that, which was probably meant to be ressuring, but ends up a little more sinister. You nod to him, gesturing for him to continue talking.";
	say "     After a quick glance around the store to make sure no one is approaching, he continues. 'As you probably guessed, the mannequin I found was one of the animate ones this event has created. I fought and defeated it, and nearly left it there, until the idea of this shop occurred to me. This form has given me certain... powers of persuasion, which I used to bring the mannequin under my control. Having seen what they do to those they defeat, and not wishing to have to fight and collect them one by one, I had the idea to transform an ordinary mannequin. I tested the idea on an inert mannequin from a nearby store, and finding that it had worked, led my two new mannequins here to collect more from the abandoned stores. So yes, one of my mannequins is from out in the city. Perhaps it was once a person, but there was no way for me or anyone else to tell. The rest were all created from inert mannequins. I've harmed no one, and they're all completely under my control. Does that satisfy you?'";
	WaitLineBreak;
	say "     Considering what else has been happening in this warped city and how this seems to be one of the more benign and overall harmless, if still unsettling, things you've seen, you nod to him with a sigh. He nods with a smile, visibly relaxing as his tongue flicks out at the air. 'Good. Now that your curiosity is satisfied, perhaps you'd like to look around the shop and see if anything catches your eye?' Telling him that you will, you step away, returning to looking around the store.";

Section 3 - Selling Parts

[-------------------------------------------------------------]
[ Selling Parts                                               ]
[-------------------------------------------------------------]

to say MoreauPartSale:
	LineBreak;
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
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
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
		say "[MoreauTradeRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your face, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauSalePaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your face to it, giving what you can only describe as a hungry stare. Then it stretches out a hand and touches you, a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the very neutral face of your counterpart start to shift, taking on features that seem more and more like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if facename of player is not name entry:
				say "     Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
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
		say "[MoreauTradeRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your body shape, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauSalePaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a touches you - a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you feel your counterpart shift, taking on body features that seem more and more like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if bodyname of player is not name entry:
				say "     Your [one of][bodytype of player] [or][bodydesc of player] [or][bodydesc of player] [or][bodytype of player] [or][at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
				now bodyname of player is name entry;
				now body of player is body entry;
				attributeinfect;			[sets the new attributes]
			say "[line break][MoreauSaleSuccessful]";
			now MoreauPaymentAccepted is false;

to say MoreauSkinSale:
	if skinname of player is "Mannequin":
		say "     Taking one glance at your mannequin-like skin, the naga raises an eyebrow and says, 'You are kidding, right? Come back when you actually have something to sell, okay?'";
	else if (skinname of player is "Jackalman" or skinname of player is "Jackalboy" or skinname of player is "Nightmare" or skinname of player is "Hellhound"):
		say "     Taking a long glance at your skin, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauTradeRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your skin, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauSalePaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a touches you - a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, the parts you see of your counterpart shift, taking on a skin very much like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if skinname of player is not name entry:
				say "     Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
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
		say "[MoreauTradeRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your rear end as you bare it for him to see, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauSalePaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a touches you - a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you glance over the shoulder of your counterpart, seeing its rear end taking on a shape very much like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if tailname of player is not name entry:
				say "     Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
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
		say "[MoreauTradeRefusal]";
	else: [sale going ahead]
		say "     Taking a long glance at your crotch as you bare it for him to see, the naga smiles and nods. 'Yes, I think that is something I can work with.' [MoreauSalePaymentOptions]";
		if MoreauPaymentAccepted is true:
			say "     The mannequin pulls the curtain closed and waits for you to present your body to it, stripping off any clothing that might get in the way. Meanwhile, the creature gives what you can only describe as a hungry stare. Then it steps forward and lays a hand on your chest, stroking it down your front almost sexually before it comes to cup your genitals. It is a touches you - a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you glance down between your bodies, seeing its own crotch taking on a shape very much like your own.";
			setmonster "Mannequin";
			choose row monster from the Table of random critters;
			if cocks of player > 1:
				say "     Sudden pleasure runs through your doomed [cock of player] cock[smn] as [ittheym] spray[smv] the last of [itstheirm] seed, dwindling down to nothing at all and vanishing, leaving only [one of]the powerful[or]that final[at random] orgasm to remember [itthemm] by as you cease to be a male altogether.";
			if cunts of player > 1:
				say "     An odd, wet noise has you peeking in time to see your [one of]cunt[sfn][or]puss[yfn][at random] vanish! With a strange slurp of closing flesh, you cease to be female altogether.";
			now cocks of player is 0;
			now cunts of player is 0;
			now cockname of player is name entry;
			now cock of player is cock entry;
			say "[line break][MoreauSaleSuccessful]";
			now MoreauPaymentAccepted is false;

to say MoreauSalePaymentOptions:
	say "With a commanding hiss, Moreau calls one of his mannequins from the back of the store. It is completely without any 'enhancements' to its plastic-faced body plan... but then, this one apparently isn't in use as a display model. Apparently it was sorting through the naga's supplies, stashing new stuff securely. The living doll carries [one of]a can of beans[or]a MRE[or]a nut and chocolate candy bar[or]a grapefruit[or]a box of breakfast cereal[at random] in one hand, with a big water bottle in the other one, delivering them to its master before it returns to its task. Moreau turns his scaled head back your way and holds up the food and water suggestively. 'So, here are your options to choose from. What shall it be?'";
	LineBreak;
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
		LineBreak;
		if calcnumber is 1:
			say "     You gain food!";
			increase carried of food by 1;
		else:
			say "     You gain a water bottle!";
			increase carried of water bottle by 1;
		say "     You accept the [if calcnumber is 1]food[else]water[end if] from Moreau, then allow him to guide you over to the 'changing rooms' - the name now having a whole new dimension, now that you think of it. He calls another mannequin to join you, one still with its 'original' appearance in the part that you want to sell. 'Please step in and bare the needed area please,' the naga tells you in a friendly manner, then adds, 'And do not worry, I control my staff quite closely. It will only take what you sold.' Following his slight shooing motion, you follow the mannequin into the cabin and await what comes next.";
		LineBreak;
		now MoreauPaymentAccepted is true;
	else:
		LineBreak;
		say "     With a shrug and a flick of his forked tongue, the naga waves a mannequin forward to hand his offered items to, sending it away a moment later to stash the goods. 'A pity that we couldn't get into business today. Be sure to come back if you change your mind,' the storekeeper then tells you with a friendly if businesslike tone.";

to say MoreauSaleSuccessful:
	say "     Soon, the curtain is pulled back once more, with Moreau inspecting his creature's new features and nodding in satsifaction. He sends the living doll to present itself at the shop window with a flick of his wrist, then takes your hand to help you out of the booth. Only as you take your first step do you realize how exhausted this business left you, as his help is actually necessary to keep you from stumbling. 'My pleasure doing business with you,' the naga tells you in a cheerful tone as he walks you to the front of the store, eventually adding, 'Please do take it a bit slower for a few minutes. Your body has to get used to the new you.'";
	now LastMoreauPartSale is turns;

to say MoreauTradeRefusal:
		say "     The naga looks at you and flicks his forked tongue, then shakes his head. 'Regretfully, I cannot let you do that. The transformation process does take it out of a person, and I would not want to see you come to harm. Please rest a bit before you come back to buy or sell another part.'";

Section 4 - Buying Parts

[-------------------------------------------------------------]
[ Buying Parts                                                ]
[-------------------------------------------------------------]

to say MoreauPartBuy:
	LineBreak;
	say "What do you want to buy from Moreau?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "A new face";
	now sortorder entry is 1;
	now description entry is "Get a new set of features";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A new body shape";
	now sortorder entry is 2;
	now description entry is "Buy yourself a new body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A skin";
	now sortorder entry is 3;
	now description entry is "Time for a change of appearance";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A new ass/tail";
	now sortorder entry is 4;
	now description entry is "Can't forget about the back end, right";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A crotch";
	now sortorder entry is 5;
	now description entry is "Get a new crotch";
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
				-- "A new face":
					say "[MoreauFaceBuy]";
				-- "A new body shape":
					say "[MoreauBodyBuy]";
				-- "A skin":
					say "[MoreauSkinBuy]";
				-- "A new ass/tail":
					say "[MoreauTailBuy]";
				-- "A crotch":
					say "[MoreauCrotchBuy]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

[ Buying a Face]

to say MoreauFaceBuy:
	if (facename of player is "Jackalman" or facename of player is "Jackalboy" or facename of player is "Nightmare" or facename of player is "Hellhound"): [perma infections]
		say "     Taking a long glance at your face, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauTradeRefusal]";
	else: [Buy going ahead]
		if facename of player is "Mannequin":
			say "     Taking a short glance at your face, the naga smiles and nods. 'Starting with a blank canvas, eh? Let's get you something nice to upgrade to.'";
			MoreauFaceSelection;
		else:
			say "     Taking a long glance at your face, the naga smiles and nods. 'Interesting features - I'll reduce your price a bit for the trade-in.'";
			now MoreauDiscount is true;
			MoreauFaceSelection;

to MoreauFaceSelection:
	LineBreak;
	say "What face do you want to buy from Moreau? (Options vary over time)[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "An equine muzzle";
	now sortorder entry is 1;
	now description entry is "Get a horseman face";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A gryphon's beak";
	now sortorder entry is 2;
	now description entry is "Buy yourself a gryphon head";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A satyr's face";
	now sortorder entry is 3;
	now description entry is "Buy yourself a satyr head, complete with goatee";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A German Shepherd's muzzle";
	now sortorder entry is 4;
	now description entry is "Buy yourself a canine head";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A succubus's face";
	now sortorder entry is 5;
	now description entry is "Buy yourself a beautiful visage";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A snow leopard muzzle";
	now sortorder entry is 6;
	now description entry is "Get a feline face";
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
				-- "An equine muzzle":
					setmonster "Horseman";
				-- "A gryphon's beak":
					setmonster "Hermaphrodite Gryphon";
				-- "A satyr's face":
					setmonster "Satyr";
				-- "German Shepherd":
					setmonster "German Shepherd";
				-- "A succubus's face":
					setmonster "Succubus";
				-- "A snow leopard muzzle":
					setmonster "Snow Leopard";
				choose row monster from the Table of random critters;
				say "[MoreauFaceBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauFaceBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little light-headed at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your face to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the facial features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of random critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		if facename of player is not name entry:
			say "     Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
			now facename of player is name entry;
			now face of player is face entry;
			now BodyShopGuaranteedFace is name entry;
			if "Body Shop Guarantee - Face" is not listed in feats of player:
				add "Body Shop Guarantee - Face" to feats of player;
		say "[line break][MoreauBuySuccessful]";
		now MoreauPaymentAccepted is false;

[ Buying a Body ]

to say MoreauBodyBuy:
	if (bodyname of player is "Jackalman" or bodyname of player is "Jackalboy" or bodyname of player is "Nightmare" or bodyname of player is "Hellhound"): [perma infections]
		say "     Taking a long glance at your body, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauTradeRefusal]";
	else: [Buy going ahead]
		if bodyname of player is "Mannequin":
			say "     Taking a short glance at your body, the naga smiles and nods. 'Starting with a blank canvas, eh? Let's get you something nice to upgrade to.'";
			MoreauBodySelection;
		else:
			say "     Taking a long glance at your body, the naga smiles and nods. 'Interesting features - I'll reduce your price a bit for the trade-in.'";
			now MoreauDiscount is true;
			MoreauBodySelection;

to MoreauBodySelection:
	LineBreak;
	say "What body do you want to buy from Moreau? (Options vary over time)[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Anthro equine";
	now sortorder entry is 1;
	now description entry is "Get a horseman body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Anthro gryphon";
	now sortorder entry is 2;
	now description entry is "Get a gryphon body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Satyr";
	now sortorder entry is 3;
	now description entry is "Get a satyr body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Anthro German Shepherd";
	now sortorder entry is 4;
	now description entry is "Get an anthro canine body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Succubus";
	now sortorder entry is 5;
	now description entry is "Get a winged succubus body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Anthro snow leopard";
	now sortorder entry is 6;
	now description entry is "Get an anthro feline body";
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
				-- "Anthro equine":
					setmonster "Horseman";
				-- "Anthro gryphon":
					setmonster "Hermaphrodite Gryphon";
				-- "Satyr":
					setmonster "Satyr";
				-- "Anthro German Shepherd":
					setmonster "German Shepherd";
				-- "Succubus":
					setmonster "Succubus";
				-- "Anthro snow leopard":
					setmonster "Snow Leopard";
				choose row monster from the Table of random critters;
				say "[MoreauBodyBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauBodyBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little light-headed at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your body to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a touches you - a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you feel your counterpart shift, taking on body features that seem more and more like your own.";
		choose row monster from the Table of random critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		if bodyname of player is not name entry:
			say "     Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
			now BodyShopGuaranteedBody is name entry;
			attributeinfect;			[sets the new attributes]
			if "Body Shop Guarantee - Body" is not listed in feats of player:
				add "Body Shop Guarantee - Body" to feats of player;
		say "[line break][MoreauBuySuccessful]";
		now MoreauPaymentAccepted is false;

[ Buying Skin ]

to say MoreauSkinBuy:
	if (skinname of player is "Jackalman" or skinname of player is "Jackalboy" or skinname of player is "Nightmare" or skinname of player is "Hellhound"): [perma infections]
		say "     Taking a long glance at your skin, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauTradeRefusal]";
	else: [Buy going ahead]
		if skinname of player is "Mannequin":
			say "     Taking a short glance at your skin, the naga smiles and nods. 'Starting with a blank canvas, eh? Let's get you something nice to upgrade to.'";
			MoreauSkinSelection;
		else:
			say "     Taking a long glance at your skin, the naga smiles and nods. 'Interesting texture - I'll reduce your price a bit for the trade-in.'";
			now MoreauDiscount is true;
			MoreauSkinSelection;

to MoreauSkinSelection:
	LineBreak;
	say "What skin do you want to buy from Moreau? (Options vary over time)[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "An equine coat";
	now sortorder entry is 1;
	now description entry is "Get a horseman coat of fur";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A gryphon's feathers";
	now sortorder entry is 2;
	now description entry is "Get blue gryphon feathers";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Satyr's skin and fur";
	now sortorder entry is 3;
	now description entry is "Get skin and furry legs";
	[]
	choose a blank row in table of fucking options;
	now title entry is "German Shepherd fur";
	now sortorder entry is 4;
	now description entry is "Get German Shepherd fur";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Succubus skin";
	now sortorder entry is 5;
	now description entry is "Get flawless skin";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Snow leopard fur";
	now sortorder entry is 6;
	now description entry is "Get spotted white fur";
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
				-- "An equine coat":
					setmonster "Horseman";
				-- "A gryphon's feathers":
					setmonster "Hermaphrodite Gryphon";
				-- "Satyr's skin and fur":
					setmonster "Satyr";
				-- "German Shepherd fur":
					setmonster "German Shepherd";
				-- "Succubus skin":
					setmonster "Succubus";
				-- "Snow leopard fur":
					setmonster "Snow Leopard";
				choose row monster from the Table of random critters;
				say "[MoreauSkinBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauSkinBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little light-headed at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your skin to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the facial features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of random critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		if skinname of player is not name entry:
			say "     Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now skinname of player is name entry;
			now skin of player is skin entry;
			now BodyShopGuaranteedSkin is name entry;
			if "Body Shop Guarantee - Skin" is not listed in feats of player:
				add "Body Shop Guarantee - Skin" to feats of player;
		say "[line break][MoreauBuySuccessful]";
		now MoreauPaymentAccepted is false;

[ Buying Ass/Tail ]

to say MoreauTailBuy:
	if (tailname of player is "Jackalman" or tailname of player is "Jackalboy" or tailname of player is "Nightmare" or tailname of player is "Hellhound"): [perma infections]
		say "     Taking a long glance at your tail, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauTradeRefusal]";
	else: [Buy going ahead]
		if tailname of player is "Mannequin" or tail of player is "":
			say "     Taking a short glance at your backside, the naga smiles and nods. 'Starting with a blank canvas, eh? Let's get you something nice to upgrade to.'";
			MoreauTailSelection;
		else:
			say "     Taking a long glance at your backside, the naga smiles and nods. 'Interesting curves - I'll reduce your price a bit for the trade-in.'";
			now MoreauDiscount is true;
			MoreauTailSelection;

to MoreauTailSelection:
	LineBreak;
	say "What tail do you want to buy from Moreau? (Options vary over time)[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "An equine tail";
	now sortorder entry is 1;
	now description entry is "Get a horseman tail";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A gryphon's tail";
	now sortorder entry is 2;
	now description entry is "Get a gryphon tail";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A satyr's tail";
	now sortorder entry is 3;
	now description entry is "Get a satyr tail";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A German Shepherd tail";
	now sortorder entry is 4;
	now description entry is "Get an German Shepherd tail";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A succubus ass";
	now sortorder entry is 5;
	now description entry is "Get a firm succubus ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A snow leopard tail";
	now sortorder entry is 6;
	now description entry is "Get a snow leopard tail";
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
				-- "An equine tail":
					setmonster "Horseman";
				-- "A gryphon's tail":
					setmonster "Hermaphrodite Gryphon";
				-- "A satyr's tail":
					setmonster "Satyr";
				-- "A German Shepherd tail":
					setmonster "German Shepherd";
				-- "A succubus ass":
					setmonster "Succubus";
				-- "A snow leopard tail":
					setmonster "Snow Leopard";
				choose row monster from the Table of random critters;
				say "[MoreauTailBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauTailBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little light-headed at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your tail to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of random critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		if tailname of player is not name entry:
			say "     Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now tailname of player is name entry;
			now tail of player is tail entry;
			now BodyShopGuaranteedTail is name entry;
			if "Body Shop Guarantee - Tail" is not listed in feats of player:
				add "Body Shop Guarantee - Tail" to feats of player;
		say "[line break][MoreauBuySuccessful]";
		now MoreauPaymentAccepted is false;

[ Buying Cock ]

to say MoreauCrotchBuy:
	if (cockname of player is "Jackalman" or cockname of player is "Jackalboy" or cockname of player is "Nightmare" or cockname of player is "Hellhound"): [perma infections]
		say "     Taking a long glance at your crotch, the naga hesitates, then shakes his head. 'Sorry, I don't think I can make that transaction. Don't want to let my staff get... uhm - indigestion, you understand?";
	else if (LastMoreauPartSale - turns < 5): [waiting time]
		say "[MoreauTradeRefusal]";
	else: [Buy going ahead]
		if cockname of player is "Mannequin" or cocks of player is 0:
			say "     Taking a short glance at your crotch, the naga smiles and nods. 'Starting with a blank canvas, eh? Let's get you something nice to upgrade to.'";
			MoreauCockSelection;
		else:
			say "     Taking a long glance at your crotch, the naga smiles and nods. 'Interesting piece of equipment - I'll reduce your price a bit for the trade-in.'";
			now MoreauDiscount is true;
			MoreauCockSelection;

to MoreauCockSelection:
	LineBreak;
	say "What cock do you want to buy from Moreau? (Options vary over time)[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "An equine groin";
	now sortorder entry is 1;
	now description entry is "Get a horseman crotch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A hermaphrodite gryphon's groin";
	now sortorder entry is 2;
	now description entry is "Get a gryphon crotch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A satyr's groin";
	now sortorder entry is 3;
	now description entry is "Get a satyr crotch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A German Shepherd groin";
	now sortorder entry is 4;
	now description entry is "Get an German Shepherd crotch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A succubus's groin";
	now sortorder entry is 5;
	now description entry is "Get a firm succubus crotch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "A snow leopard groin";
	now sortorder entry is 6;
	now description entry is "Get a snow leopard crotch";
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
				-- "An equine groin":
					setmonster "Horseman";
				-- "A gryphon's groin":
					setmonster "Hermaphrodite Gryphon";
				-- "A satyr's groin":
					setmonster "Satyr";
				-- "A German Shepherd groin":
					setmonster "German Shepherd";
				-- "A succubus's groin":
					setmonster "Succubus";
				-- "A snow leopard groin":
					setmonster "Snow Leopard";
				choose row monster from the Table of random critters;
				say "[MoreauCrotchBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauCrotchBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little light-headed at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your cock to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of random critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		follow the sex change rule;
		if cockname of player is not name entry and cocks of player > 0:
			say "     Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now cockname of player is name entry;
			now cock of player is cock entry;
		now BodyShopGuaranteedCrotch is name entry;
		if "Body Shop Guarantee - Crotch" is not listed in feats of player:
			add "Body Shop Guarantee - Crotch" to feats of player;
		say "[line break][MoreauBuySuccessful]";
		now MoreauPaymentAccepted is false;

[ General Buy Texts ]

to say MoreauBuyPaymentOptions:
	if (carried of food > 4 and carried of water bottle > 4) or (MoreauDiscount is true and carried of food > 3 and carried of water bottle > 3):
		say "     [bold type]Aware that you are carrying enough of either option in your backpack, you start thinking what you want to give him.[roman type][line break]";
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
				say "Invalid choice. Type [link]1[end link] to pay with food, [link]2[end link] to pay with water or [link]3[end link] to refuse the deal after all.";
		if calcnumber is 1 or calcnumber is 2:
			LineBreak;
			if calcnumber is 1:
				say "     You pull the backpack off your back and hand over the food to a quickly called-over mannequin. ";
				if MoreauDiscount is true:
					decrease carried of food by 4;
				else:
					decrease carried of food by 5;
			else:
				say "     You pull the backpack off your back and hand over the water bottles to a quickly called-over mannequin. ";
				if MoreauDiscount is true:
					decrease carried of water bottle by 4;
				else:
					decrease carried of water bottle by 5;
			say "After the living doll has accepted the [if calcnumber is 1]food[else]water[end if] from you, the snake guides you over to the 'changing rooms' - the name now having a whole new dimension, now that you think of it. He calls your chosen mannequin to join you, bearing the body part you were so interested in and showing it off a little more. 'Please step in and bare the needed area please,' the naga tells you in a friendly manner, then adds, 'And do not worry, I control my staff quite closely. It will only exchange the part that you bought.' Following his slight shooing motion, you follow the mannequin into the cabin and await what comes next.";
			LineBreak;
			now MoreauPaymentAccepted is true;
		else:
			LineBreak;
			say "     With a shrug and a flick of his forked tongue, the naga waves a mannequin you had chosen to switch parts with back to its place. 'A pity that we couldn't get into business today. Be sure to come back if you change your mind,' the storekeeper then tells you with a friendly if businesslike tone.";
	else if ((carried of food > 4) or (MoreauDiscount is true and carried of food > 3)):
		say "     [bold type]Aware that you are carrying enough food in your backpack, you...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give it to him.";
		say "     ([link]N[as]n[end link]) - Actually... you want to change your mind about this.";
		if player consents:
			LineBreak;
			say "     You pull the backpack off your back and hand over the food to a quickly called-over mannequin. ";
			if MoreauDiscount is true:
				decrease carried of food by 4;
			else:
				decrease carried of food by 5;
			say "After the living doll has accepted the food from you, the snake guides you over to the 'changing rooms' - the name now having a whole new dimension, now that you think of it. He calls your chosen mannequin to join you, bearing the body part you were so interested in and showing it off a little more. 'Please step in and bare the needed area please,' the naga tells you in a friendly manner, then adds, 'And do not worry, I control my staff quite closely. It will only exchange the part that you bought.' Following his slight shooing motion, you follow the mannequin into the cabin and await what comes next.";
			LineBreak;
			now MoreauPaymentAccepted is true;
		else:
			LineBreak;
			say "     With a shrug and a flick of his forked tongue, the naga waves a mannequin you had chosen to switch parts with back to its place. 'A pity that we couldn't get into business today. Be sure to come back if you change your mind,' the storekeeper then tells you with a friendly if businesslike tone.";
	else if ((carried of water bottle > 4) or (MoreauDiscount is true and carried of water bottle > 3)):
		say "     [bold type]Aware that you are carrying enough water bottles in your backpack, you...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Give it to him.";
		say "     ([link]N[as]n[end link]) - Actually... you want to change your mind about this.";
		if player consents:
			LineBreak;
			say "     You pull the backpack off your back and hand over the water bottle to a quickly called-over mannequin. ";
			if MoreauDiscount is true:
				decrease carried of water bottle by 4;
			else:
				decrease carried of water bottle by 5;
			say "After the living doll has accepted the water from you, the snake guides you over to the 'changing rooms' - the name now having a whole new dimension, now that you think of it. He calls your chosen mannequin to join you, bearing the body part you were so interested in and showing it off a little more. 'Please step in and bare the needed area please,' the naga tells you in a friendly manner, then adds, 'And do not worry, I control my staff quite closely. It will only exchange the part that you bought.' Following his slight shooing motion, you follow the mannequin into the cabin and await what comes next.";
			LineBreak;
			now MoreauPaymentAccepted is true;
		else:
			LineBreak;
			say "     With a shrug and a flick of his forked tongue, the naga waves a mannequin you had chosen to switch parts with back to its place. 'A pity that we couldn't get into business today. Be sure to come back if you change your mind,' the storekeeper then tells you with a friendly if businesslike tone.";
	else:
		say "     Sadly, you have enough of neither of those, so you have to decline the deal for now. With a shrug and a flick of his forked tongue, the naga waves a mannequin you had chosen to switch parts with back to its place. 'A pity that we couldn't get into business today. Be sure to come back if you change your mind,' the storekeeper then tells you with a friendly if businesslike tone.";

to say MoreauBuySuccessful:
	WaitLineBreak;
	say "     Soon, the curtain is pulled back once more, with Moreau inspecting your new features and nodding in satsifaction. He sends the living doll away to take its place among the others, then snakes his way closer - much closer, half-wrapping his scaled body around yours. 'Let's make sure you have a long while to enjoy your purchase,' he says with a broad smile that soon leads over into him opening his wide maw. It is certainly impressive to see how far the naga can open his mouth - and the pair of fangs that fold out from the roof of it. Yet Moreau doesn't try to swallow you, instead waiting for a few seconds until a drop of clear liquid forms at the top of his right fang. Swiping it up with a scaled finger, the storekeeper proceeds to paint a mystic symbol on your newly acquired body part. It tingles a little at first, then feels numb before the feeling suddenly vanishes as he hisses a few unintelligible words right after.";
	say "     'There, that should serve well to preserve what you bought in almost all occurences. Please do be advised that he guarantee covers everything but more powerful magical intervention,' the naga says in a friendly but businesslike tone. Loosening the coils of his body around you, he then takes your hand to help you out of the booth. Only as you take your first step do you realize how exhausted this business left you, as his help is actually necessary to keep you from stumbling. 'My pleasure doing business with you,' he adds as he walks you to the front of the store, eventually finishing with, 'Please do take it a bit slower for a few minutes. Your body has to get used to the new you.'";
	now LastMoreauPartSale is turns;

An everyturn rule:
	if "Body Shop Guarantee - Face" is listed in feats of player:
		if (facename of player is "Jackalman" or facename of player is "Jackalboy" or facename of player is "Nightmare" or facename of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new face you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Face" from feats of player;
		else if facename of player is not BodyShopGuaranteedFace:
			say "     You can feel the magic that Moreau used to guarantee the new face you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your head to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedFace;
			choose row monster from the Table of random critters;
			say "     Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
			now facename of player is name entry;
			now face of player is face entry;
	if "Body Shop Guarantee - Body" is listed in feats of player:
		if (bodyname of player is "Jackalman" or bodyname of player is "Jackalboy" or bodyname of player is "Nightmare" or bodyname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new body you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Body" from feats of player;
		else if bodyname of player is not BodyShopGuaranteedBody:
			say "     You can feel the magic that Moreau used to guarantee the new body you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your body to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedBody;
			choose row monster from the Table of random critters;
			say "     Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
			attributeinfect;			[sets the new attributes]
	if "Body Shop Guarantee - Skin" is listed in feats of player:
		if (skinname of player is "Jackalman" or skinname of player is "Jackalboy" or skinname of player is "Nightmare" or skinname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new skin you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Skin" from feats of player;
		else if skinname of player is not BodyShopGuaranteedSkin:
			say "     You can feel the magic that Moreau used to guarantee the new skin you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your skin to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedSkin;
			choose row monster from the Table of random critters;
			say "     Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now skinname of player is name entry;
			now skin of player is skin entry;
	if "Body Shop Guarantee - Tail" is listed in feats of player:
		if (tailname of player is "Jackalman" or tailname of player is "Jackalboy" or tailname of player is "Nightmare" or tailname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new tail you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Tail" from feats of player;
		else if tailname of player is not BodyShopGuaranteedtail:
			say "     You can feel the magic that Moreau used to guarantee the new tail you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your tail to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedtail;
			choose row monster from the Table of random critters;
			say "     Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now tailname of player is name entry;
			now tail of player is tail entry;
	if "Body Shop Guarantee - Crotch" is listed in feats of player:
		if (cockname of player is "Jackalman" or cockname of player is "Jackalboy" or cockname of player is "Nightmare" or cockname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new crotch you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Crotch" from feats of player;
		else if cockname of player is not BodyShopGuaranteedCrotch:
			say "     You can feel the magic that Moreau used to guarantee the new crotch you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your cock to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedCrotch;
			choose row monster from the Table of random critters;
			say "     Your crotch [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now cockname of player is name entry;
			now cock of player is cock entry;

Section 5 - Events

Body Choice Dilemma is a situation.
The sarea of Body Choice Dilemma is "Nowhere".

after going to Body Shop while (Body Choice Dilemma is not resolved and HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	BodyChoiceDilemmaEvent;

to BodyChoiceDilemmaEvent:
	say "     As you enter Moreau's shop, you are surprised not to be immediately greeted by its serpentine owner. The reason becomes clear after you notice him further in the Body Shop, standing next to a buff, tall, seemingly very pensive horseman. Said horseman is gazing in the direction of two mannequins. The first one is displaying anthro snow leopard parts; not just a crotch or tail, but an entire body, complete with fur, a feline face, and an overall feminine look, although the furry sheath between the mannequin's legs marks this body as male. Next to it is a second mannequin, this one unmistakingly female for it has the body parts of a succubus. As you glance over a scene you would qualify as implausible were it not taking place in this strange shop, Moreau finally notices you: 'Welcome, [if player is not defaultnamed][name of player][else]my friend[end if]. I apologize for not greeting you right away, but as you can see I am currently tending to the needs of another customer. Actually...' he adds with a thoughtful look, 'If I was bold enough, I would ask you a little help tending to those needs. Hmm...'";
	say "     The naga leaves his words hang in the air, closing his eyes as if he was deeply pondering the question; although your instincts tell you this is at best a facade, and at worst a shameless attempt at manipulation, the uncomfortable silence that follows eventually drives you to ask how you can help him. With an apologetic smile, Moreau explains: 'Well, as most beings who come here, my current client has a desire of change. Although he had a very clear idea what kind of body he wanted for himself, coming down on the specifics has been... complex. I would like you to help the poor man make up his mind. I feel the need to mention that I would be... somewhat discontent to see him leave without making a purchase.' The naga discreetly points at a rather large pile of canned food, no doubt the price one would have to pay for a full new body.";
	WaitLineBreak;
	say "     As the shop owner seemes intent on letting you learn more from the source, you walk to the large black horse whose gaze just goes on one mannequin and then on the other as he taps a finger against his chin. When you introduce yourself, the stud's low, manly voices betrays his anxiety: 'Oh sorry man, am I holding the alligator guy all to myself?' As you notice the look of surprise and indignation on Moreau's face at being called such a thing, you assure his horse client that it is no problem at all, but that you'd love to know if you could help with whatever decision the equine has to make. 'Oh thanks, that's really nice! See, before the infection, I was already super buff and a really big dude, in more ways than one. All the girls and small guys at the gym were into me, and I was into them too, so when I ended up a horse, it didn't feel all that weird, at least compared to how it was to most people.'";
	say "     'I enjoyed being a horse. Heck, I enjoyed it a REAL lot. Maybe overdid it a bit too.' The stranger rubs the back of his head, visibly having trouble exposing his feelings. 'But since a little while, I've surprised myself being curious of those girls and smaller guys, and how much they enjoy it every time I fuck them. Like, I LOVE being a top, but them, they look like they're in trance. Anyway, long story short, curiosity became envy, and eventually I started imagining I was the people I was fucking. Like, you know... During. Then I hear about a shop in the mall where you can actually buy body parts for supplies, and it sounds crazy, but I think [']What if?['] and I start rationing my supplies. And there I am. I decided I wanted more than just bottoming, I want... I want the full experience, to know what it feels like to be weaker, and delicate, and manhandled by a bigger guy!' he says, his voice betraying his anticipation.";
	WaitLineBreak;
	say "     So, I want a whole new body, everything new. I was afraid I wouldn't have enough supplies for it, but luckily turns out I did.' Something, more precisely how Moreau chooses this moment to look away as if suddenly interested in what was going on outside the store, tells you that the horse likely brought more than what was necessary, but that the naga 'forgot' to mention that fact. While you disregard the thought, the stranger concludes: 'But now that I see those two amazing, beautiful bodies, I can't decide. Should I be male or female? I can't decide between the two... And I can't afford a second change if I'm unsatisfied with my new body, I've been rationning my food for so long now...' As he is lost in thought once again, nervously looking at the mannequins, you see that it's up to you to help him make up his mind.";
	LineBreak;
	say "     [bold type]What do you want to recommend?[roman type][line break]";
	say "     [link](1)[as]1[end link] - He should go male. That snow leopard body looks made for him.";
	say "     [link](2)[as]2[end link] - He should go female. Being a succubus would suit him just fine.";
	say "     [link](3)[as]3[end link] - Why choose? He should go herm. Best of both worlds!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to recommend the male snow leopard, [link]2[end link] to recommend the succubus or [link]3[end link] to recommend the herm.";
	if calcnumber is 1:
		LineBreak;
		say "     When you suggest that the horse would probably prefer to stay male, his face brightens up. 'Yeah... Yeah, you're right! I enjoy having a cock, and there's no need to let go of it even if I want to experience being the bitch, so why would I?' The newly determined equine turns to Moreau with a smile. 'I would like the snow leopard body, please.' The naga keeps his usual polite smile, although his eyes betray his relief: 'Wonderful! I am delighted to hear this. I am certain you will enjoy your pick. Now, all that is left to do is to give you what you desire.' The reptile leads his client to the changing rooms, while you stay behind, unwilling to disturb some sort of potentially emotional moment for the soon-to-be leopard.";
		say "     You only have to wait a short moment until the naga comes back with his now changed client. The snow leopard is rubbing his new body in a mist of excitement, clearly enjoying this new form: 'Oh my god... I'm so fluffy! This is amazing! And I'm like, so small and everything! This is exactly what I wanted.' The snow leopard gives you a hug, rubbing his body against you a bit in the process. 'Thank you, friend. This was the right call. And thanks to you too, alligator man. I think this is who I was meant to be.' As the naga's smile twitches lightly in vexation, he puts on his fakest smile, congratulating the male on his purchase and accompanying him to the entrance of the shop, where the snow leopard departs with a final wave to you.";
		WaitLineBreak;
		say "     'Well, a satisfied client always makes for a good day!' the reptile declares with an enthusiastic clap of hands. 'And for your help, as well as for making you wait, it is only normal I give you a little something in return,' the naga declares as he reaches the pile of food cans, taking one and passing it to you. 'Everybody should profit from good business', he concludes with a smile. For a moment, he seems pensive, then asks 'I don't actually look like an alligator, do I?' with worried eyes. You assure the shop keeper that he looks like a naga and nothing else, which seems to reassure him enough.";
	else if calcnumber is 2: 
		LineBreak;
		say "     When you suggest that the horse would likely enjoy being female, his face brightens up. 'Yeah... Yeah, you're right! I shouldn't hesitate going all the way into being feminine, that's what I came here for isn't it?' The newly determined equine turns to Moreau with a smile. 'I would like the succubus body, please.' The naga keeps his usual polite smile, although his eyes betray his relief: 'Wonderful! I am delighted to hear this. I am certain you will enjoy your pick. Now, all that is left to do is to give you what you desire'. The reptile leads his client to the changing rooms, while you stay behind, unwilling to disturb some sort of potentially emotional moment for the soon-to-be succubus.";
		say "     You only have to wait a short moment until the naga comes back with his now changed client. The succubus is rubbing her new body in a mist of excitement, clearly enjoying this new form: 'Goodness, look at me... I'm so hot! Old me would totally have fucked me right here on the spot. Actually new me wishes he could, too. No, wait, SHE wishes. Oh, I like the sound of that.' The succubus starts gently rubbing her newly acquired pussy lips, until Moreau brings her back to reality with a polite cough. After a giggle and an apology, she gives you a hug, rubbing her body against you a bit in the process. 'Thank you, friend. This was the right call. And thanks to you too, alligator man. I think this is who I was meant to be.' As the naga's smile twitches lightly in vexation, he puts on his fakest smile, congratulating the new female on her purchase and accompanying her to the entrance of the shop, where the succubus departs with a final wave to you.";
		WaitLineBreak;
		say "     'Well, a satisfied client always makes for a good day!' the reptile declares with an enthusiastic clap of hands. 'And for your help, as well as for making you wait, it is only normal I give you a little something in return,' the naga declares as he reaches the pile of food cans, taking one and passing it to you. 'Everybody should profit from good business', he concludes with a smile. For a moment, he seems pensive, then asks 'I don't actually look like an alligator, do I?' with worried eyes. You assure the shop keeper that he looks like a naga and nothing else, which seems to reassure him enough.";
	else: 
		LineBreak;
		say "     When you suggest that the horse should try being a herm so he would know what it's like being a submissive male AND being a female, he sighs and answers with regret in his voice. 'Well of course that would be the dream, when I showed him my supplies the shop keeper told me I had [']just['] enough for a full body change so... I think I'm a few food cans short for that.' As you slowly turn to the naga, crossing your arms and raising an eyebrow, the shop keeper lets out a discreet but genuine laugh at being caught red-handed and starts speaking after a little cough. 'Well a client getting a full body change is a rare occurence, and as such it would be a shame to see you leave this shop not fully satisfied, so I could... Bend the rules a bit, and grant you two sets of genitals. On the house.'";
		say "     As the naga puts on a smile so authentic-looking you'd believe it if you knew better, the horse gasps and runs to the reptile, giving him a strong hug 'Oh my god, thank you, thank you so much!' The naga gently pats his client's shoulder, and than keeps talking: 'I am delighted we could find a solution. Now all is left is to decide if you prefer to be a snow leopard or a... Hermaphrodite succubus, for lack of a better term.' The horse thinks for a moment, and the two of you start fearing that you might be facing yet another dilemma, but he soon nods and states 'I think I'd like to be a snow leopard. A hermaphrodite snow leopard, please.' 'Wonderful!' the shop keeper says. 'I am certain you will enjoy your pick. Now, all that is left to do is to give you what you desire'. The reptile leads his client to the changing rooms, while you stay behind, unwilling to disturb some sort of potentially emotional moment for the soon-to-be leopard.";
		WaitLineBreak;
		say "     You only have to wait a short moment until the naga comes back with his now changed client. The leopard is rubbing hir new body in a mist of excitement, clearly enjoying this new form: 'Goodness, look at me... I'm so hot! Old me would totally have fucked me right here on the spot. Actually new me wishes he could, too. No, wait, SHE wishes. Or is it hir? No, [']she['] sounds more right. Yeah, I like the sound of that.' The snow leopard starts gently rubbing her newly acquired pussy lips, until Moreau brings her back to reality with a polite cough. After a giggle and an apology, she gives you a hug, rubbing her body against you a bit in the process. 'Thank you, friend. This was the right call. And thanks to you too, alligator man. I think this is who I was meant to be.' As the naga's smile twitches lightly in vexation, he puts on his fakest smile, congratulating the new hermaphrodite on her purchase and accompanying her to the entrance of the shop, where the snow leopard departs with a final wave to you.";
		say "     'Well, a satisfied client always makes for a good day!' the reptile declares with an enthusiastic clap of hands. 'And for your help, as well as for making you wait, it is only normal I give you a little something in return,' the naga declares as he reaches the pile of food cans, taking one and passing it to you. 'Everybody should profit from good business', he concludes with a smile. For a moment, he seems pensive, then asks 'I don't actually look like an alligator, do I?' with worried eyes. You assure the shop keeper that he looks like a naga and nothing else, which seems to reassure him enough.";
	LineBreak;
	say "[bold type]You gain 1 food![roman type][line break]";
	increase carried of food by 1;
	now Body Choice Dilemma is resolved;
	
Horn Removal is a situation.
The sarea of Horn Removal is "Nowhere".

after going to Body Shop while (Horn Removal is not resolved and HP of Moreau > 0 and GusTalkProgress > 0 and a random chance of 1 in 3 succeeds):
	HornRemovalEvent;

to HornRemovalEvent:
	say "     When you enter the shop, you see that Moreau is currently busy with another client, although a little wave on his part indicates he noticed you. Most surprising however is the person he is talking to, whom, as they turn to you, you recognize as Gus, the stork from the Shag Shack. He waves at you with a wing, but you stay frozen when you notice something peculiar, namely a white, big, pointy, and very noticeable horn on his forehead. 'Oh, that?' he asks with a goofy smile. 'Yeah I have a regular at the Shack who's a rhino. Sometimes it leads to stuff like that. It's always the horn for some reason.'";
	say "     Said horn is so prominent that the stork actually has a hand wrapped around it to help his head support the weight. 'Heh, it's no worry. He always pays a little something extra when that happens. And Mr. Moreau doesn't mind getting a free horn every once in a while without having to give anything else back.' Speaking of, the snake leads the bird to the changing rooms, and one minute later, Gus comes out unburdened from the out-of-place body part. 'Anyway, I should really get going, there's more work waiting for me at the Shag Shack. Speaking of, why don't you drop me a visit soon?' he says with a wink before departing.";
	now Horn Removal is resolved;

Body Shop ends here.
