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
lastBodyShopEvent is a number that varies. lastBodyShopEvent is usually 10000.

Section 1 - Rooms

[Room Declaration]
Southeast of Mall East Wing is Body Shop.
The description of Body Shop is "[BodyShopDesc]".

to say BodyShopDesc:
	say "     This room seems to have been a clothing boutique before the chaos started - at least judging by the wide-open floorspace, the row of changing booths in the back and numerous mannequins standing around motionlessly. Interestingly, none of the dolls actually wears a shred of clothing, with all of the former merchandise and the stands they were offered on pushed into an untidy heap in one corner of the store. No, what is being presented now instead are the mannequins themselves... on a second look, you see that they often vary from the 'typical' stature of sexless store mannequins. A row of them at the shop windows sports impressive erections - equine, canine, feline and human, to name just a few, while other little groups have a variety of facial features and body plans. Further in the back are several that one might believe customers at first - fully formed anthros with life-like skin, feathers or otherwise - if they didn't stand quite so motionless and still...";


Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Moreau	"Moreau"

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
	say "     In a sharp contrast to his fiery-colored body, the storekeeper's large eyes are startlingly green, making you freeze where you stand as he notices your attention and focuses his gaze on you in turn. The emerald, slit-pupiled orbs seem like bottomless pools you could stare at forever and lose yourself in... and you almost do, before he turns his head and breaks the stare. Opening his mouth a fraction, the naga tastes the air with his split tongue and then smiles at you, waving you closer with an inviting gesture.";

Instead of conversing the Moreau:
	project the figure of Moreau_face_icon;
	if HP of Moreau is 0:
		say "     'Welcome to my store,' the naga tells you with a gracious bow, snaking his way closer to you before coiling up right in front of where you stand. 'Did something in the shop windows catch your eye? The offered wares are subject to change, and I do circle through the newer parts for people to have a look at.' You look around at the collection of mannequins, then ask what he actually sells. 'Why, bodies of course. Everything about them. The signage is quite clear, is it not? Come, let me show you.' Miming you to walk over to the next bunch of mannequins, the ophidian storekeeper keeps up with your steps in a smooth glide of his scales on the tiled floor, stopping before the display models.";
		say "     'We live in times of change - that is obvious - but many, oh so very many of people are dissatisfied with their adopted shapes. Maybe they were forced to shift, or couldn't help but succumb into it, and now they feel like they deserve... better. I offer this service, for a price.' Smiling at you, he then turns to stare directly at a mannequin shaped like an anthro gryphon, its body detailing everything exactly, from the tips of the clawed digitigrade feet, up over a hermaphrodite's set of cock, balls and pussy to the pair of wings behind its back. Only the showpiece's head is still that of an almost featureless doll, as well as the skin which has a white plastic-y sheen.";
		WaitLineBreak;
		say "     Giving you a sidelong glance that tells you he loves showing off, Moreau crooks his finger a little at the mannequin - and the human-sized doll instantly reacts, walking over to come stand before you with startling suddenness. As it comes to stand in front of you in an 'at rest' position, you can't help but gulp and glance around. Ten, fifteen, twenty, twenty-six, -seven, -eight... there are about thirty of those things in here, which makes you feel less like on a shopping trip and more like standing in the midst of a pride of lions. 'Do not be concerned, my assistants are perfectly well behaved. Watch this one for example,' Moreau says, amusement underlying his voice as he puts the gryphon doll through its paces, spinning around slowly, stretching and showing off the details of its shape.";
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
	if (FirstMannequinTalk is 0 or (FirstMannequinTalk is 1 and "Mannequin" is not listed in EncounteredEnemies of player)):
		choose a blank row in table of fucking options;
		now title entry is "Ask about the mannequins";
		now sortorder entry is 1;
		now description entry is "Try to learn about his store";
	[]
	if (FirstMannequinTalk is 1 and "Mannequin" is listed in EncounteredEnemies of player):
		choose a blank row in table of fucking options;
		now title entry is "Ask for the truth about the mannequins";
		now sortorder entry is 2;
		now description entry is "Press the shopkeeper for the truth";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask if buying body parts is really worth it";
	now sortorder entry is 3;
	now description entry is "You'll still be able to lose them, right";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sell something";
	now sortorder entry is 4;
	now description entry is "Let him take part of you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Buy something";
	now sortorder entry is 5;
	now description entry is "Ask to buy some feature to change on your body";
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
				if nam is:
				-- "Ask about the mannequins":
					say "[MoreauTalk1]";
					WaitLineBreak;
					say "[MoreauTalkMenu]";
				-- "Ask for the truth about the mannequins":
					say "[MoreauTalk2]";
					WaitLineBreak;
					say "[MoreauTalkMenu]";
				-- "Ask if buying body parts is really worth it":
					say "[MoreauTalk3]";
					WaitLineBreak;
					say "[MoreauTalkMenu]";
				-- "Sell something":
					say "[MoreauPartSale]";
				-- "Buy something":
					say "[MoreauPartBuy]";
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
	say "     With your confrontational posture and the skeptical look on your face, the shopkeeper seems to recognize that you've seen the roaming mannequins and he lets out a sigh, gesturing you to follow him toward the back of the store before answering in a hushed voice. 'I can tell what you're really asking, and thinking. And no, I did not lie to you before, I simply left some of the finer details out as I always do when people ask me about them. I do not wish to frighten away my customers after all.' He gives you a smile at that, which was probably meant to be reassuring, but ends up a little more sinister. You nod to him, gesturing for him to continue talking.";
	say "     After a quick glance around the store to make sure no one is approaching, he continues. 'As you probably guessed, the mannequin I found was one of the animate ones this event has created. I fought and defeated it, and nearly left it there, until the idea of this shop occurred to me. This form has given me certain... powers of persuasion, which I used to bring the mannequin under my control. Having seen what they do to those they defeat, and not wishing to have to fight and collect them one by one, I had the idea to transform an ordinary mannequin. I tested the idea on an inert mannequin from a nearby store, and finding that it had worked, led my two new mannequins here to collect more from the abandoned stores. So yes, one of my mannequins is from out in the city. Perhaps it was once a person, but there was no way for me or anyone else to tell. The rest were all created from inert mannequins. I've harmed no one, and they're all completely under my control. Does that satisfy you?'";
	WaitLineBreak;
	say "     Considering what else has been happening in this warped city and how this seems to be one of the more benign and overall harmless, if still unsettling, things you've seen, you nod to him with a sigh. He nods with a smile, visibly relaxing as his tongue flicks out at the air. 'Good. Now that your curiosity is satisfied, perhaps you'd like to look around the shop and see if anything catches your eye?' Telling him that you will, you step away, returning to looking around the store.";

to say MoreauTalk3: [ask if buying is worth it if you just keep changing]
	say "     Moreau gives you a winning smile as you ask your question, snaking his way to a nearby mannequin and pointing out its physical features. 'Ah, I can assure you that anything you might want to pick will be quite worth the investment. Not only are the physical characteristics that I offer very specific in their nature, rather than the random chance you might have out on the streets, but I can also offer a bit of permanence for them. There are some little tricks in my repertoire that will help ensure it.' The naga's forked tongue flicks out of his mouth as he focuses on you intensely, eager to make a deal. 'Of course, if you should wish to change again afterwards, I can also take off the 'body part guarantee' again. Just return and sell the part back to me and you will be as changeable as before.'";

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
	if player is not neuter:
		choose a blank row in table of fucking options;
		now title entry is "Your Genitals";
		now sortorder entry is 5;
		now description entry is "You can do without those bits for a while, right";
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
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
			choose row monster from the Table of Random Critters;
			if facename of player is not name entry:
				say "     Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
				now facename of player is name entry;
				now face of player is face entry;
			if "Body Shop Guarantee - Face" is listed in feats of player:
				remove "Body Shop Guarantee - Face" from feats of player;
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
			choose row monster from the Table of Random Critters;
			if bodyname of player is not name entry:
				say "     Your [one of][bodytype of player] [or][bodydesc of player] [or][bodydesc of player] [or][bodytype of player] [or][at random]body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
				now bodyname of player is name entry;
				now body of player is body entry;
				attributeinfect; [sets the new attributes]
			if "Body Shop Guarantee - Body" is listed in feats of player:
				remove "Body Shop Guarantee - Body" from feats of player;
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
			choose row monster from the Table of Random Critters;
			if skinname of player is not name entry:
				say "     Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
				now skinname of player is name entry;
				now skin of player is skin entry;
			if "Body Shop Guarantee - Skin" is listed in feats of player:
				remove "Body Shop Guarantee - Skin" from feats of player;
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
			choose row monster from the Table of Random Critters;
			if tailname of player is not name entry:
				say "     Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
				now tailname of player is name entry;
				now tail of player is tail entry;
			if "Body Shop Guarantee - Tail" is listed in feats of player:
				remove "Body Shop Guarantee - Tail" from feats of player;
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
			choose row monster from the Table of Random Critters;
			if cocks of player > 1:
				say "     Sudden pleasure runs through your doomed [cock of player] cock[smn] as [ittheym] spray[smv] the last of [itstheirm] seed, dwindling down to nothing at all and vanishing, leaving only [one of]the powerful[or]that final[at random] orgasm to remember [itthemm] by as you cease to be a male altogether.";
			if cunts of player > 1:
				say "     An odd, wet noise has you peeking in time to see your [one of]cunt[sfn][or]puss[yfn][at random] vanish! With a strange slurp of closing flesh, you cease to be female altogether.";
			now cocks of player is 0;
			now cunts of player is 0;
			now cockname of player is name entry;
			now cock of player is cock entry;
			if "Body Shop Guarantee - Crotch" is listed in feats of player:
				remove "Body Shop Guarantee - Crotch" from feats of player;
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
	say "     Soon, the curtain is pulled back once more, with Moreau inspecting his creature's new features and nodding in satisfaction. He sends the living doll to present itself at the shop window with a flick of his wrist, then takes your hand to help you out of the booth. Only as you take your first step do you realize how exhausted this business left you, as his help is actually necessary to keep you from stumbling. 'My pleasure doing business with you,' the naga tells you in a cheerful tone as he walks you to the front of the store, eventually adding, 'Please do take it a bit slower for a few minutes. Your body has to get used to the new you.'";
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
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
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
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				choose row monster from the Table of Random Critters;
				say "[MoreauFaceBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauFaceBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little lightheaded at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your face to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the facial features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of Random Critters;
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
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				choose row monster from the Table of Random Critters;
				say "[MoreauBodyBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauBodyBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little lightheaded at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your body to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll steps forward and embraces you, almost intimately - wanting to get as much of your bodies to touch as possible. It is a touches you - a cool sensation to feel it against you, breaking the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you feel your counterpart shift, taking on body features that seem more and more like your own.";
		choose row monster from the Table of Random Critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		if bodyname of player is not name entry:
			say "     Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
			now BodyShopGuaranteedBody is name entry;
			attributeinfect; [sets the new attributes]
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
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				choose row monster from the Table of Random Critters;
				say "[MoreauSkinBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauSkinBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little lightheaded at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your skin to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the facial features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of Random Critters;
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
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				choose row monster from the Table of Random Critters;
				say "[MoreauTailBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauTailBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little lightheaded at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your tail to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of Random Critters;
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
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				choose row monster from the Table of Random Critters;
				say "[MoreauCrotchBuyPayment]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the colorful naga, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MoreauCrotchBuyPayment:
	say "     The naga nods to you, happy that you have chosen something from his offered wares. 'Well then, that leaves only one thing to take care of - my payment. Given that I offer an unique service, with a guarantee too I want to empathize, I'm sure you will see what I ask as fair.' The naga's green eyes focus on your own as he says this, and you can't help but feel a little lightheaded at the intensity of his gaze. ";
	if MoreauDiscount is true:
		say "A few seconds later, Moreau adds, 'For you, since you are trading in something, it will be four bottles of water or items of food.'";
	else:
		say "A few seconds later, Moreau adds, 'For you, it will be five bottles of water or items of food.'";
	say "[MoreauBuyPaymentOptions]";
	if MoreauPaymentAccepted is true:
		say "     The mannequin pulls the curtain closed and waits for you to present your cock to it, giving what you can only describe as a sullen stare. Seems like despite the power Moreau has over it, the creature loathes parting with anything it has claimed as its own. For a few seconds nothing more happens, then the living doll stretches out a hand and touches you - a touches you - a cool sensation that breaks the illusion a bit of it being a living thing. Something seems to tug at your self, drawing essence away from your body, and with an odd fascination, you see the features of your counterpart start to shift, taking on an appearance that seems more and more like your own.";
		choose row monster from the Table of Random Critters;
		if debugactive is 1:
			say "DEBUG -> Target Infection Name Entry: [name entry] <- DEBUG[line break]";
		follow the sex change rule;
		if cockname of player is not name entry and player is male:
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
	say "     Soon, the curtain is pulled back once more, with Moreau inspecting your new features and nodding in satisfaction. He sends the living doll away to take its place among the others, then snakes his way closer - much closer, half-wrapping his scaled body around yours. 'Let's make sure you have a long while to enjoy your purchase,' he says with a broad smile that soon leads over into him opening his wide maw. It is certainly impressive to see how far the naga can open his mouth - and the pair of fangs that fold out from the roof of it. Yet Moreau doesn't try to swallow you, instead waiting for a few seconds until a drop of clear liquid forms at the top of his right fang. Swiping it up with a scaled finger, the storekeeper proceeds to paint a mystic symbol on your newly acquired body part. It tingles a little at first, then feels numb before the feeling suddenly vanishes as he hisses a few unintelligible words right after.";
	say "     'There, that should serve well to preserve what you bought in almost all occurrences. Please do be advised that he guarantee covers everything but more powerful magical intervention,' the naga says in a friendly but businesslike tone. Loosening the coils of his body around you, he then takes your hand to help you out of the booth. Only as you take your first step do you realize how exhausted this business left you, as his help is actually necessary to keep you from stumbling. 'My pleasure doing business with you,' he adds as he walks you to the front of the store, eventually finishing with, 'Please do take it a bit slower for a few minutes. Your body has to get used to the new you.'";
	now LastMoreauPartSale is turns;

An everyturn rule:
	if "Body Shop Guarantee - Face" is listed in feats of player:
		if (facename of player is "Jackalman" or facename of player is "Jackalboy" or facename of player is "Nightmare" or facename of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new face you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Face" from feats of player;
		else if "Singular" is listed in feats of player and facename of player is not "Human" and facename of player is not bodyname of player:
			say "     You can feel the magic that Moreau used to guarantee the new face you bought struggle against the basic nature of your own body, trying its best to enforce its template. A stinging ache builds up in your head as the mystic powers morph your face, only to be counteracted at every turn. You fall to your knees and cradle your head in pain, until eventually something gives way with an audible crackle. Seems like the naga's spell couldn't hold out against the sustained pressure.";
			remove "Body Shop Guarantee - Face" from feats of player;
		else if facename of player is not BodyShopGuaranteedFace:
			say "     You can feel the magic that Moreau used to guarantee the new face you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your head to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedFace;
			choose row monster from the Table of Random Critters;
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
			choose row monster from the Table of Random Critters;
			say "     Your body [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [body change entry].";
			now bodyname of player is name entry;
			now body of player is body entry;
			attributeinfect; [sets the new attributes]
	if "Body Shop Guarantee - Skin" is listed in feats of player:
		if (skinname of player is "Jackalman" or skinname of player is "Jackalboy" or skinname of player is "Nightmare" or skinname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new skin you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Skin" from feats of player;
		else if "Singular" is listed in feats of player and facename of player is not "Human" and skinname of player is not bodyname of player:
			say "     You can feel the magic that Moreau used to guarantee the new skin you bought struggle against the basic nature of your own body, trying its best to enforce its template. A stinging ache builds up in your head as the mystic powers morph your skin in rippling waves, only to be counteracted at every turn. You fall to your knees and cradle your body in pain, until eventually something gives way with an audible crackle. Seems like the naga's spell couldn't hold out against the sustained pressure.";
			remove "Body Shop Guarantee - Skin" from feats of player;
		else if skinname of player is not BodyShopGuaranteedSkin:
			say "     You can feel the magic that Moreau used to guarantee the new skin you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your skin to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedSkin;
			choose row monster from the Table of Random Critters;
			say "     Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
			now skinname of player is name entry;
			now skin of player is skin entry;
	if "Body Shop Guarantee - Tail" is listed in feats of player:
		if (tailname of player is "Jackalman" or tailname of player is "Jackalboy" or tailname of player is "Nightmare" or tailname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new tail you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Tail" from feats of player;
		else if "Singular" is listed in feats of player and tailname of player is not "Human" and tailname of player is not bodyname of player:
			say "     You can feel the magic that Moreau used to guarantee the new tail you bought struggle against the basic nature of your own body, trying its best to enforce its template. A stinging ache builds up in your head as the mystic powers morph your tail, only to be counteracted at every turn. You fall to your knees and cradle the tail in pain, until eventually something gives way with an audible crackle. Seems like the naga's spell couldn't hold out against the sustained pressure.";
			remove "Body Shop Guarantee - Tail" from feats of player;
		else if tailname of player is not BodyShopGuaranteedtail:
			say "     You can feel the magic that Moreau used to guarantee the new tail you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your tail to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedtail;
			choose row monster from the Table of Random Critters;
			say "     Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
			now tailname of player is name entry;
			now tail of player is tail entry;
	if "Body Shop Guarantee - Crotch" is listed in feats of player:
		if (cockname of player is "Jackalman" or cockname of player is "Jackalboy" or cockname of player is "Nightmare" or cockname of player is "Hellhound"):
			say "     You can feel the magic that Moreau used to guarantee the new crotch you bought struggle against the magic of your other transformation. A stinging ache builds up in your head as the mystic powers build up higher and higher, pushing in opposing directions - then with an audible crackle, something gives way. Seems like the naga's spell couldn't hold out against what made you as you are.";
			remove "Body Shop Guarantee - Crotch" from feats of player;
		else if "Singular" is listed in feats of player and cockname of player is not "Human" and cockname of player is not bodyname of player:
			say "     You can feel the magic that Moreau used to guarantee the new crotch you bought struggle against the basic nature of your own body, trying its best to enforce its template. A stinging ache builds up in your head as the mystic powers morph your crotch, only to be counteracted at every turn. You fall to your knees and flinch in pain, until eventually something gives way with an audible crackle. Seems like the naga's spell couldn't hold out against the sustained pressure.";
			remove "Body Shop Guarantee - Crotch" from feats of player;
		else if cockname of player is not BodyShopGuaranteedCrotch:
			say "     You can feel the magic that Moreau used to guarantee the new crotch you bought build up its power, making you feel hot and flushed. Then it overwhelms what infection you currently have and forces your cock to confirm to the set shape once more.";
			setmonster BodyShopGuaranteedCrotch;
			choose row monster from the Table of Random Critters;
			say "     Your crotch [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [cock change entry].";
			now cockname of player is name entry;
			now cock of player is cock entry;

Section 5 - Events

Body Choice Dilemma is a situation.
The sarea of Body Choice Dilemma is "Nowhere".

after going to Body Shop while (Body Choice Dilemma is not resolved and lastBodyShopEvent - turns > 1 and HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	BodyChoiceDilemmaEvent;

to BodyChoiceDilemmaEvent:
	say "     As you enter Moreau's shop, you are surprised not to be immediately greeted by its serpentine owner. The reason becomes clear after you notice him further in the Body Shop, standing next to a buff, tall, seemingly very pensive horseman. Said horseman is gazing in the direction of two mannequins. The first one is displaying anthro snow leopard parts; not just a crotch or tail, but an entire body, complete with fur, a feline face, and an overall feminine look, although the furry sheath between the mannequin's legs marks this body as male. Next to it is a second mannequin, this one unmistakably female for it has the body parts of a succubus. As you glance over a scene you would qualify as implausible were it not taking place in this strange shop, Moreau finally notices you: 'Welcome, [if player is not defaultnamed][name of player][else]my friend[end if]. I apologize for not greeting you right away, but as you can see I am currently tending to the needs of another customer. Actually...' he adds with a thoughtful look, 'If I was bold enough, I would ask you a little help tending to those needs. Hmm...'";
	say "     The naga leaves his words hang in the air, closing his eyes as if he was deeply pondering the question; although your instincts tell you this is at best a facade, and at worst a shameless attempt at manipulation, the uncomfortable silence that follows eventually drives you to ask how you can help him. With an apologetic smile, Moreau explains: 'Well, as most beings who come here, my current client has a desire of change. Although he had a very clear idea what kind of body he wanted for himself, coming down on the specifics has been... complex. I would like you to help the poor man make up his mind. I feel the need to mention that I would be... somewhat discontent to see him leave without making a purchase.' The naga discreetly points at a rather large pile of canned food, no doubt the price one would have to pay for a full new body.";
	WaitLineBreak;
	say "     As the shop owner seems intent on letting you learn more from the source, you walk to the large black horse whose gaze just goes on one mannequin and then on the other as he taps a finger against his chin. When you introduce yourself, the stud's low, manly voices betrays his anxiety: 'Oh sorry man, am I holding the alligator guy all to myself?' As you notice the look of surprise and indignation on Moreau's face at being called such a thing, you assure his horse client that it is no problem at all, but that you'd love to know if you could help with whatever decision the equine has to make. 'Oh thanks, that's really nice! See, before the infection-the name's Jaime, by the way-, before the infection I was already super buff and a really big dude, in more ways than one. All the girls and small guys at the gym were into me, and I was into them too, so when I ended up a horse, it didn't feel all that weird, at least compared to how it was to most people.'";
	say "     'I enjoyed being a horse. Heck, I enjoyed it a REAL lot. Maybe overdid it a bit too.' The stranger rubs the back of his head, visibly having trouble exposing his feelings. 'But since a little while, I've surprised myself being curious of those girls and smaller guys, and how much they enjoy it every time I fuck them. Like, I LOVE being a top, but them, they look like they're in trance. Anyway, long story short, curiosity became envy, and eventually I started imagining I was the people I was fucking. Like, you know... During. Then I hear about a shop in the mall where you can actually buy body parts for supplies, and it sounds crazy, but I think [']What if?['] and I start rationing my supplies. And there I am. I decided I wanted more than just bottoming, I want... I want the full experience, to know what it feels like to be weaker, and delicate, and manhandled by a bigger guy!' he says, his voice betraying his anticipation.";
	WaitLineBreak;
	say "     So, I want a whole new body, everything new. I was afraid I wouldn't have enough supplies for it, but luckily turns out I did.' Something, more precisely how Moreau chooses this moment to look away as if suddenly interested in what was going on outside the store, tells you that the horse likely brought more than what was necessary, but that the naga 'forgot' to mention that fact. While you disregard the thought, Jaime concludes: 'But now that I see those two amazing, beautiful bodies, I can't decide. Should I be male or female? I can't decide, and I can't afford a second change if I'm unsatisfied with my new body. I've been rationing my food for so long now...' As he is lost in thought once again, nervously looking at the mannequins, you see that it's up to you to help him make up his mind.";
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
		say "     You only have to wait a short moment until the naga comes back with a brand new Jaime. The snow leopard is rubbing his new body in a mist of excitement, clearly enjoying this new form: 'Oh my god... I'm so fluffy! This is amazing! And I'm like, so small and everything! This is exactly what I wanted.' The snow leopard gives you a hug, rubbing his body against you a bit in the process. 'Thank you, friend. This was the right call. And thanks to you too, alligator man. I think this is who I was meant to be.' As the naga's smile twitches lightly in vexation, he puts on his fakest smile, congratulating Jaime his purchase and accompanying him to the entrance of the shop, where the snow leopard departs with a final wave to you.";
		WaitLineBreak;
		say "     'Well, a satisfied client always makes for a good day!' the reptile declares with an enthusiastic clap of hands. 'And for your help, as well as for making you wait, it is only normal I give you a little something in return,' the naga declares as he reaches the pile of food cans, taking one and passing it to you. 'Everybody should profit from good business', he concludes with a smile. For a moment, he seems pensive, then asks 'I don't actually look like an alligator, do I?' with worried eyes. You assure the shop keeper that he looks like a naga and nothing else, which seems to reassure him enough.";
	else if calcnumber is 2:
		LineBreak;
		say "     When you suggest that the horse would likely enjoy being female, his face brightens up. 'Yeah... Yeah, you're right! I shouldn't hesitate going all the way into being feminine, that's what I came here for isn't it?' The newly determined equine turns to Moreau with a smile. 'I would like the succubus body, please.' The naga keeps his usual polite smile, although his eyes betray his relief: 'Wonderful! I am delighted to hear this. I am certain you will enjoy your pick. Now, all that is left to do is to give you what you desire'. The reptile leads his client to the changing rooms, while you stay behind, unwilling to disturb some sort of potentially emotional moment for the soon-to-be succubus.";
		say "     You only have to wait a short moment until the naga comes back with a brand new Jaime. The succubus is rubbing her new body in a mist of excitement, clearly enjoying this new form: 'Goodness, look at me... I'm so hot! Old me would totally have fucked me right here on the spot. Actually new me wishes he could, too. No, wait, SHE wishes. Oh, I like the sound of that.' The succubus starts gently rubbing her newly acquired pussy lips, until Moreau brings her back to reality with a polite cough. After a giggle and an apology, she gives you a hug, rubbing her body against you a bit in the process. 'Thank you, friend. This was the right call. And thanks to you too, alligator man. I think this is who I was meant to be.' As the naga's smile twitches lightly in vexation, he puts on his fakest smile, congratulating Jaime on her purchase and accompanying her to the entrance of the shop, where the new female departs with a final wave to you.";
		WaitLineBreak;
		say "     'Well, a satisfied client always makes for a good day!' the reptile declares with an enthusiastic clap of hands. 'And for your help, as well as for making you wait, it is only normal I give you a little something in return,' the naga declares as he reaches the pile of food cans, taking one and passing it to you. 'Everybody should profit from good business', he concludes with a smile. For a moment, he seems pensive, then asks 'I don't actually look like an alligator, do I?' with worried eyes. You assure the shop keeper that he looks like a naga and nothing else, which seems to reassure him enough.";
	else:
		LineBreak;
		say "     When you suggest that the horse should try being a herm so he would know what it's like being a submissive male AND being a female, he sighs and answers with regret in his voice. 'Well of course that would be the dream, when I showed him my supplies the shop keeper told me I had [']just['] enough for a full body change so... I think I'm a few food cans short for that.' As you slowly turn to the naga, crossing your arms and raising an eyebrow, the shop keeper lets out a discreet but genuine laugh at being caught red-handed and starts speaking after a little cough. 'Well a client getting a full body change is a rare occurrence, and as such it would be a shame to see you leave this shop not fully satisfied, so I could... Bend the rules a bit, and grant you two sets of genitals. On the house.'";
		say "     As the naga puts on a smile so authentic-looking you'd believe it if you knew better, the horse gasps and runs to the reptile, giving him a strong hug 'Oh my god, thank you, thank you so much!' The naga gently pats his client's shoulder, and than keeps talking: 'I am delighted we could find a solution. Now all is left is to decide if you prefer to be a snow leopard or a... Hermaphrodite succubus, for lack of a better term.' The horse thinks for a moment, and the two of you start fearing that you might be facing yet another dilemma, but he soon nods and states 'I think I'd like to be a snow leopard. A hermaphrodite snow leopard, please.' 'Wonderful!' the shop keeper says. 'I am certain you will enjoy your pick. Now, all that is left to do is to give you what you desire'. The reptile leads his client to the changing rooms, while you stay behind, unwilling to disturb some sort of potentially emotional moment for the soon-to-be leopard.";
		WaitLineBreak;
		say "     You only have to wait a short moment until the naga comes back with a brand new Jaime. The leopard is rubbing her new body in a mist of excitement, clearly enjoying this new form: 'Goodness, look at me... I'm so hot! Old me would totally have fucked me right here on the spot. Actually new me wishes he could, too. No, wait, SHE wishes. [']She['] sounds more right. Yeah, I like the sound of that.' The snow leopard starts gently rubbing her newly acquired pussy lips, until Moreau brings her back to reality with a polite cough. After a giggle and an apology, she gives you a hug, rubbing her body against you a bit in the process. 'Thank you, friend. This was the right call. And thanks to you too, alligator man. I think this is who I was meant to be.' As the naga's smile twitches lightly in vexation, he puts on his fakest smile, congratulating Jaime on her purchase and accompanying her to the entrance of the shop, where the new hermaphrodite departs with a final wave to you.";
		say "     'Well, a satisfied client always makes for a good day!' the reptile declares with an enthusiastic clap of hands. 'And for your help, as well as for making you wait, it is only normal I give you a little something in return,' the naga declares as he reaches the pile of food cans, taking one and passing it to you. 'Everybody should profit from good business', he concludes with a smile. For a moment, he seems pensive, then asks 'I don't actually look like an alligator, do I?' with worried eyes. You assure the shop keeper that he looks like a naga and nothing else, which seems to reassure him enough.";
	LineBreak;
	say "[bold type]You gain 1 food![roman type][line break]";
	increase carried of food by 1;
	now lastBodyShopEvent is turns;
	now Body Choice Dilemma is resolved;

Horn Removal is a situation.
The sarea of Horn Removal is "Nowhere".

after going to Body Shop while (Horn Removal is not resolved and lastBodyShopEvent - turns > 1 and HP of Moreau > 0 and GusTalkProgress > 0 and a random chance of 1 in 3 succeeds):
	HornRemovalEvent;

to HornRemovalEvent:
	say "     When you enter the shop, you see that Moreau is currently busy with another client, although a little wave on his part indicates he noticed you. Most surprising however is the person he is talking to, whom, as they turn to you, you recognize as Gus, the stork from the Shag Shack. He waves at you with a wing, but you stay frozen when you notice something peculiar, namely a white, big, pointy, and very noticeable horn on his forehead. 'Oh, that?' he asks with a goofy smile. 'Yeah I have a regular at the Shack who's a rhino. Sometimes it leads to stuff like that. It's always the horn for some reason.'";
	say "     Said horn is so prominent that the stork actually has a hand wrapped around it to help his head support the weight. 'Heh, it's no worry. He always pays a little something extra when that happens. And Mr. Moreau doesn't mind getting a free horn every once in a while without having to give anything else back.' Speaking of, the snake leads the bird to the changing rooms, and one minute later, Gus comes out unburdened from the out-of-place body part. 'Anyway, I should really get going, there's more work waiting for me at the Shag Shack. Speaking of, why don't you drop me a visit soon?' he says with a wink before departing.";
	now lastBodyShopEvent is turns;
	now Horn Removal is resolved;

Drunk Change Party is a situation.
The sarea of Drunk Change Party is "Nowhere".

after going to Body Shop while (Drunk Change Party is not resolved and lastBodyShopEvent - turns > 1 and HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	DrunkAndMakingChangesEvent;

to DrunkAndMakingChangesEvent:
	say "     As you are about to enter the Body Shop, you are surprised to hear the sound of people enthusiastically cheering coming from inside. Not really thinking of Moreau as the kind of guy to throw a party in his establishment, you wonder what the fuss is about.";
	say "     [bold type]What do you do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Moreau throwing a party sounds too weird not to check it out. Better investigate.";
	say "     [link](2)[as]2[end link] - Wait it out. Whatever is happening in there is none of your concern.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go in or [link]2[end link] no to.";
	if calcnumber is 1:
		LineBreak;
		say "     You cautiously enter the shop, and sure enough, you see a group of about ten people laughing and screaming like they're having the time of their lives; however, Moreau appears to stay apart from said group, his arms crossed and a look of fatigue on his face. Visibly, whatever funny thing is happening, he is not particularly amused. Has his shop been taken over by the infected? When he notices you, you make a gesture as to ask if something is wrong, but he simply answers with a shrug and a sigh, indicating that he intends on dealing with whatever this is on his own. You relax and decide to observe the scene instead.";
		say "     You take a better look at the group and note that it is composed of infected people of all kinds, although you spot at least three mall rats. Furthermore, it has become abundantly clear by now that every single one of them is completely and unmistakably drunk, some even needing help to keep standing. The group's attention at the moment appears to be on an identically inebriated mouse boy, who seems both nervous and excited at whatever is coming. The rest of the group suddenly turns to Moreau, enthusiastically chanting 'Go! Go! Go!' When he rolls his eyes and presents a hand, a fox plunges his hands in a container you hadn't spotted before, grabbing two full beer packs and offering them to the shop owner while bowing down in an absurdly over-the-top way, which his friends appear to find absolutely hilarious.";
		WaitLineBreak;
		say "     With a sigh, Moreau takes the beers, very likely his compensation for indulging this drunken celebration, and snaps his fingers; immediately, all the mannequins used to display parts available for purchase start moving, and while the rest of the group steps away from the mouse, the mannequins surround him in a perfect circle. Although a more clear-headed person could have found the situation disturbing or even worrying, the mouse seems to share the general opinion that it is instead utterly amusing, and as you cannot for the life of you guess what is about to take place, you are surprised to see the mouse cover his eyes with one paw and point in front of him with other. Then, the group start chanting 'Spin! Spin! Spin!', and the mouse does start spinning, rotating as fast as possible while blind and barely managing not to fall flat on his face in the process.";
		say "     Then, the mouse suddenly stops, his hand still pointing in front of him, or more accurately now pointing at the mannequin he happened to stop in the direction of. Said mannequin is displaying wolf parts for sale, and, for some reason, whatever is happening right now makes the rest of the group cheer louder than ever, as if their friend had just accomplished something spectacular. You're still as confused as before this all started when they start chanting 'Spin! Spin! Spin!' once again, and the mouse resumes his spinning. When he stops a second time, he is now pointing at a mannequin with eagle attributes, which apparently is as hilarious to the group at the first time this happened. By the time the strange ritual starts a third time, you give up on trying to understand and just wait to see where this is going.";
		WaitLineBreak;
		say "     The strange game takes place before your eyes a total of five times, with the mouse also stopping in the direction of mannequins with pig, satyr, and equine body parts respectively, until all members of the group turn to Moreau's direction yet again. The shop's owner, not even bothering to crack a smile, takes the mouse to the changing rooms, while the other infected gather around the container and grab more beers to drink. After a little while, their friend comes back, greeted by deafening cheers and clapping; or at least, you assume it's their friend. The former mouse now display a completely mismatched new body, with a wolf head, eagle body shape, pig skin, satyr tail and ass, and the pussy of a mare. The whole thing, frankly, does not come out to you as very pleasing to the eye, but the drunk party members appear not to share your opinion as they keep on cheering and chanting.";
		say "     The mouse boy, or rather the ill-assorted woman, is soon given a fresh beer that she immediately start gulping down in one go. After some drunken debate, a mall rat boy is pushed where the once-mouse boy previously stood, and the group turns to Moreau again chanting 'Go! Go! Go' while handing him two more six packs. Having no choice but to wait, you patiently witness two more people play this little game and end up with strange mismatched infections, before the group eventually decides it had enough and noisily leaves the shop, leaving behind empty beer cans and not even bothering to thank or say goodbye to the naga. You hear their chants in the distance for quite some time, and can safely assume that the party is far from over for them. Hopefully, they won't do anything stupid - or rather, anything even more stupid than this.";
		WaitLineBreak;
		say "     Moreau still seems upset, but appears relieved that the obnoxious group finally left as he starts picking up the beer cans on the floor and dumping them into the shop trashcan. 'Eight of them played that game. [italic type]Eight[roman type].' He sighs as he completes his cleaning, still unnerved by the experience. 'Let's hope that they don't end up regretting their decisions once they sober up, assuming they ever stop partying enough for that to happen. Because they are [italic type]not[roman type] getting those parts back for free after such insufferable behavior in my shop. This is a worthy establishment, not some rave party in somebody's backyard! Oh, well. At least I got a very good deal out of it.' As you curiously look at the many unopened beer cans Moreau obtained from the group, the naga gives you a sly grin. 'It's unusual payment, but alcohol has become quite the valuable item if you know the right people.'";
	if calcnumber is 2:
		say "     You turn back and spend the next ten minutes wandering around the mall. Soon enough you hear the sounds of party getting stronger, and see a group of drunken people, all with strange, mismatched infections, partying their way further down the mall. Happy to have avoided whatever they were up to, you enter the Body Shop and find Moreau picking up empty beer cans on the floor and dumping them in the shop trash can. 'Don't even ask', he says.";
	now lastBodyShopEvent is turns;
	now Drunk Change Party is resolved;

Body Poke Poke is a situation.
The sarea of Body Poke Poke is "Nowhere".

after going to Body Shop while (Body Poke Poke is not resolved and lastBodyShopEvent - turns > 1 and HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	BodyPokePokeEvent;

to BodyPokePokeEvent:
	say "     When you enter the Body Shop, you see Moreau, having not noticed you, giving small pokes to one of his mannequins['] faces. 'Goddamit Margaret, what's wrong with you? You can barely keep up your pose since yesterday. Could you be sick? Can you guys even [italic type]get[roman type] sick?' When he notices you, the naga lets out a forced laugh, clearly to keep up appearances more than anything, before crossing his arms with a pouty face and giving you a vexed snort. 'What? I can give them names if I want. They're MY mannequins.'";
	now lastBodyShopEvent is turns;
	now Body Poke Poke is resolved;

Body Supplications is a situation.
The sarea of Body Supplications is "Nowhere".

after going to Body Shop while (Body Supplications is not resolved and lastBodyShopEvent - turns > 1 and HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	BodySupplicationsEvent;

to BodySupplicationsEvent:
	say "     'Oh, come on!' The voice of an annoyed stranger comes from the Body Shop. Taking a peek, you can see a herm hyena arguing with Moreau.";
	say "     [bold type]What do you do?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Go in and listen to the conversation.";
	say "     [link](2)[as]2[end link] - Wait it out. Whatever is happening in there is none of your concern.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go in or [link]2[end link] no to.";
	if calcnumber is 1:
		LineBreak;
		say "     You step in the Body Shop and get a closer look at the hyena, buck naked and displaying her cock and pussy, in the middle of a heated argument with Moreau. Or at least heated on her end, as the naga appears absolutely inexpressive, his arms crossed and his eyes emotionless. 'Sorry, lady,' he says, 'But I am not running a charity here. I am sympathetic towards your situation, but a full body change is a lot to ask for with only four bottles of water to pay for it.' The hyena lets out an enraged grunt and kicks the bottles of water laying on the ground, likely the ones she brought as payment, causing the shop owner to sigh heavily. 'If you are going to cause trouble, I am going to ask you to leave. I want to help, but there is a limit to my kindness. You simply don't have enough supplies.'";
		say "     The hyena mumbles swear words and closes her eyes in silence, likely trying to think of another solution to her problem. Meanwhile, you discreetly approach Moreau and ask what is going on. The reptile whispers back at you: 'This lady, Tirsa, is from the High Rise District. She used to be a female panther, but after stepping in the wrong puddle, unfortunately grew a penis. Having heard of me, she made her way from the High Rise District, but on the way was attacked by a gang of hyena bikers who, apparently... Urinated on her. All of them. Hence her current look, and exasperated state of mind. Of course,' he adds, 'the problem is that what she brought as payment is no longer enough. She would like a full female panther body like she used to have, but for that, four bottles of water just isn't enough, even if I'm feeling generous. And I'm rarely generous.'";
		WaitLineBreak;
		say "     The herm turns back to the naga, her eyes now filled with tears. 'Please... I'm already taking a risk just by having to walk back home, and if I get back just to get more supplies and come back, it's three trips instead of one! And I can't scavenge for more supplies, I don't know how to fight! I'm gonna end up eaten by a wyvern, or something even more horrible!' Feeling bad for her, you try to convince the shop owner that he can't let a defenseless woman risk her life just to get him more supplies. After all, what if the word got around that he sent a defenseless woman in the streets to scavenge more supplies for him?";
		say "     The naga rests his head on his fist and closes his eyes, taking a moment to think. Seeing an opportunity, Tirsa is quick to add: 'A-and I would totally talk about your shop to everybody I know at the High Rise District! I know, like, a REAL lot of people there. Rich ones, too! Maybe... I can tell them about your shop, and how cool it is to choose whatever parts you want? I used to be a renowned fashion critic, before this whole thing. A lot of them knew me by reputation before they even met me after the infection. I came here on my own, but if people were to have an interest in this shop, they might be able to secure a root. People where I come from have a massive amount of supplies, they can pay for anything!'";
		WaitLineBreak;
		say "     Moreau's eyes lighten up when he ears the hyena's words; clearly, she found the right angle. 'Hmm,' he says, 'a form of long-term investment then. Tell you what, I'll accept your proposition, but I'll add a new condition: although I will give you back the panther body you want, I will [italic type]not[roman type] remove the penis you have.' Before she can protest, he adds: 'Not yet, at least. But if you do what you promise and bring new clients from the High Rise District to my shop, then I will consider your part of the deal complete and make this last little change you desire.' The hyena doesn't seem to pleased. 'My husband won't like that... He's not really into penises.' The naga smirks and gives a little snort. 'Then I guess your sex life will be rather empty until you complete your part of the deal. Makes this a safer bet for me.'";
		say "     If looks could kill, the naga would be annihilated on the spot but eventually, Tirsa can only comply. 'Well, I guess that's the best deal I can get, isn't it? Damn, now I'm gonna have to [italic type]actually[roman type] promote this place.' The naga smiles. 'It would appear so!' Eventually, he leads the hyena to the changing rooms, and she comes out a full panther, although, as promised, Moreau did not restore her crotch to a fully female state. She walks to you and says 'I completely forgot to thank you. If it weren't for you I would have a penis AND be a hyena, and be in a lot more trouble too. I guess now all that's left to do is to promote people in the Body Shop. I should manage; you'd be surprised. I WAS pretty famous back in the day.'";
		WaitLineBreak;
		say "     The panther sighs, 'My husband is gonna hate this.' She then makes her leave, leaving you with the satisfied naga. 'You have my own thanks as well,' he says. 'The situation turned out better than expected for everyone. This could actually be very good for me. But now, what can I do for you?'";
		now Body Popularity is not resolved;
	if calcnumber is 2:
		say "     You wait outside. After a little while, the hyena exits the shop, visibly very upset and with tears in her eyes. When you walk in, Moreau seems upset as well. 'Oh, hello', he says after seeing you. When you ask about the hyena, he sighs. 'Well... Let's just say that there parts of being a businessman that are not so pleasant. But anyway, what can I do for you?'";
	now lastBodyShopEvent is turns;
	now Body Supplications is resolved;

Body Popularity is a situation. Body Popularity is resolved.
The sarea of Body Popularity is "Nowhere".

after going to Body Shop while (Body Popularity is not resolved and lastBodyShopEvent - turns > 1 and HP of Moreau > 0 and a random chance of 1 in 3 succeeds):
	BodyPopularityEvent;

to BodyPopularityEvent:
	say "     Entering the shop, you see that Moreau is currently congratulating a couple of freshly changed clients on their purchases. The two wolf women giggle, apparently amused at how one of them is absolute white while the other is black as night, and leave the shop as you notice their very expensive clothing. 'Guess what,' the Naga says, 'Remember our friend Tirsa?' You think for a moment, remembering the female panther who had been changed into a herm hyena and struck a deal with the naga to get her old body back. 'Well, she succeeded in convincing her friends that the Body Shop was the new hot place to go. A safe route has been secured between the High Rise District and the mall, at least for those who can afford it, and I've been having more business recently than I ever had.'";
	say "     Needless to say, I offered to remove her penis like I had promised, but surprisingly, she refused. Apparently her husband grew very fond of it. I didn't ask for details. Thank you once again for your help in this matter. Everything turned out great, it seems,' he concludes with a satisfied grin.";
	now lastBodyShopEvent is turns;
	now Body Popularity is resolved;

Body Shop ends here.
