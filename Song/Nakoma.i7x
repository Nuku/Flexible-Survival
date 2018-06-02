Version 1 of Nakoma by Song begins here.
[ Version 1.0 - Initial talk options and sex scenes - Song                      ]

Nakoma is a woman. Nakoma is in Nakoma's Tent.
The description of Nakoma is "[NakomaDesc]".
The conversation of Nakoma is { "I like plains." }.
The scent of Nakoma is "     Nakoma smells of grass, milk, and scented oil. A hint of arousal is also present, though it is obfuscated by the other scents which emanate from her fur.".

to say NakomaDesc:
	say "     Nakoma is the leader of the equinoid tribe. She is a strikingly beautiful specimen, flaunted a perfectly tended mane and immaculate black fur, the oily hair both rich and lustrous. Wise brown eyes behold you in turn as a welcoming smile creases her muzzle, speaking of intellect beyond that of her kin. Her pert breasts are scarcely concealed by her loose-fitting toga, and her long, muscular legs often show through a part in the fabric. An ornate headdress of carved wood and wire crowns her head, further distinguishing the herm from the rest of her tribe. The only aspect marring her features is a scar on her cheek, although it seems to have healed long ago.";

Instead of conversing the Nakoma:
	say "     You step up to Nakoma and respectfully nod to the tribe's leader, whose muzzle creases in a smile at your reverent approach. 'Hail, [if player is defaultnamed]warrior[else][name of player][end if]. What brings you to me?'";
	say "[NakomaTalkMenu]";

to say NakomaTalkMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the tribe's past";
	now sortorder entry is 1;
	now description entry is "Learn more about the equinoid's history";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about her accommodations";
	now sortorder entry is 2;
	now description entry is "Why does she have such a luxurious home compared to the rest of the tribe";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about Amaryllis";
	now sortorder entry is 3;
	now description entry is "See what the tribe's leader thinks about Amaryllis";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about Bryony";
	now sortorder entry is 4;
	now description entry is "See what the tribe's leader thinks about Bryony";
	[]
	if HP of Bryony is 0:
		choose a blank row in table of fucking options;
		now title entry is "Volunteer as a guard";
		now sortorder entry is 5;
		now description entry is "Offer to help defend the camp";
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
				let nam be title entry;
				if (nam is "Ask about the tribe's past"):
					say "[NakomaTalk1]";
				if (nam is "Ask about her accommodations"):
					say "[NakomaTalk2]";
				if (nam is "Ask about Amaryllis"):
					say "[NakomaTalk3]";
				if (nam is "Ask about Bryony"):
					say "[NakomaTalk4]";
				if (nam is "Volunteer as a guard"):
					say "[NakomaTalk5]";
				wait for any key;
				say "[NakomaTalkMenu]";
		else if calcnumber is 100:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You excuse yourself and step back from Nakoma.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say NakomaTalk1:
	say "     Nakoma's eyes brighten at your question. 'Interested in our past, I see? I'm afraid it's too mundane to make for a good story,' she says, a curious smile crossing her muzzle. The equinoid finds a seat on the side of her bed, then looks up at you as she begins to explain. 'I am both the founder and leader of our herd. My earliest memory is encountering one of our progenitors and being forcibly transformed beneath her. She was a simple-minded being, crazed and undisciplined, showing no greater intellect than a beast when she claimed me. I found her company as my mate enjoyable enough at first, but over time I came to realize that something was missing in my life.'";
	say "     Clasping her hands together, the equinoid calmly continues, 'I decided to start my own band of survivors. A group that I could call my own, my family, spreading our strain and influence until we secured a safe spot of land for ourselves. Since then, we have established our own set of customs, our own rules, and we live a quiet, austere life here, free from the stress of survival in the urban world. You can see how the appeal of our harbor has drawn more and more members, yes?' You nod, and Nakoma smiles. 'We might be simple in our ways, but we are not ignorant to the threats our people face, either. Thus I have learned to discipline myself and my members. Our bond only grows as we train and mate with each other, strengthening our love and willingness to fight for the herd.'";

to say NakomaTalk2:
	say "     'Being the boss around here has its fair share of perks,' Nakoma admits, 'although I would never allow the rest of my tribe to live in squalor. We provide many amenities to keep our kin entertained, and those who so desire are always welcome to join me here.' The equinoid smiles warmly as she reminisces about something. 'Ahh, the many long nights I've spent personally attending to our fatigued warriors. There's a certain satisfaction in lifting their spirits one powerful orgasm at a time.' Nakoma snickers to herself and continues, 'But let's not get carried away here. These sordid thoughts are far too distracting.'";

to say NakomaTalk3:
	say "     The equinoid shakes her head softly. 'Amaryllis does not deserve to be rewarded for defying my wishes. She knew she was ignoring a direct command, yet she proceeded to invite you anyways. There is no winning with her, only attempts to discourage her foolish endeavors. Liliana was chosen as your companion instead both to train the young equine and to serve as a reality check for Amaryllis. If she sees this as reason to make her own lot in life away from the herd, then so be it, but so long as she lives here with us, I will see that treats others with a baseline of empathy and respect.'";
	say "     Nakoma breathes out a quiet sigh. 'Amaryllis is not beyond redemption, however. She shows promise as a warrior, and she will invariably mature with experience on the field and in her romantic life. But she needs to understand that other people are not just toys for her amusement. We are all living, breathing beings, and we should not demonize or objectify each other in a petty pursuit of pleasure. Sex is a natural aspect of life, but we cannot allow it to consume us and lose that integral emotional bond.'";

to say NakomaTalk4:
	say "     Nakoma admits a gentle laugh. 'Bryony is set in her ways. She means no ill will with what she says, but I do find some of her views objectionable. Much like Amaryllis, she must expand her point of view and learn to empathize with others.' The equinoid reaches up to straighten her headdress. 'However, I am proud of her feats in the field. She is a skillful fighter and would give her life to save another of our kind. You would do well to learn from her loyalty.' Nakoma's last words are ambiguous, difficult to tell whether meant as advice or a threat. The implications make you shiver.";

to say NakomaTalk5:
	if player is blequinoidbodied:
		say "     'Ah, so you are interested in doing more than just looking pretty?' the equinoid teases, a playful smile parting her muzzle. 'Mmh, shame, though I won't begrudge you your eagerness. We could always use more guards for the perimeter. In fact, there's a position open right now.' When you ask about the details, Nakoma explains, 'Bryony's old partner was captured during a recent raid on our camp. Since then, she's been guarding the main entrance valiantly, albeit alone. I suggest you provide her some company to help her through these trying times.'";
		say "     [bold type]Do you accept Nakoma's offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You look forward to defending the tribe.";
		say "     ([link]N[as]n[end link]) - You changed your mind and would prefer something else.";
		if player consents:
			say "     You nod in affirmation. Nakoma takes your hands in her own and gives them a gentle squeeze. 'Seeing that you have not yet fully embraced your sisters, I am permitting you the luxury to come and go as you please. I expect you to abide by a more stringent schedule once you cease your wandering ways and settle in with us for good. Please speak with Bryony once you are ready to begin your first shift.'";
			now HP of Bryony is 1;
		else:
			say "     Getting second thoughts, you shake your equine head, much to the tribe leader's amusement. 'Now, now. Not everyone has what it takes for the role. Perhaps you'd be better suited for hunting, or maybe you'd enjoy something more intimate instead?' the gorgeous herm teases, her words making you squirm.";
	else:
		say "     'We are not accepting assistance from those who do not look the part,' Nakoma explains. You open your mouth to ask why, but the horse is quick to press a hoof-tipped finger to your lips. The leader leans in close to speak softly into your ear, 'If it appear like we're accepting help from outsiders, then we risk demoralizing our own. This also tells slaving parties and rival tribes that we're too weak to fend for ourselves, inviting attacks. Best not to risk such a thing,' she explains. You give a gentle nod and drop the subject, reminding yourself to talk to her again later.";

Instead of fucking Nakoma:
	if player is blequinoidbodied:
		say "     Nakoma casts you a sleazy smile. 'You flatter, but I'm unfortunately far too busy at the moment. Perhaps later?' the equinoid offers, reaching below to brush her fingers along the growing bulge in her toga.";
	else:
		say "     The equinoid shakes her head adamantly. 'Not in your current form, [if player is defaultnamed]warrior[else][name of player][end if]. Besides, I am far too busy to indulge these carnal urges at the moment.'";

Nakoma ends here.
