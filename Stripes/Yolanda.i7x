Version 2 of Yolanda by Stripes begins here.
[Version 2.2.1 - Another Yolanda & Dom Icarus threesomes]

"Adds a dominant Raven NPC named Yolanda to the Flexible Survival game."

Section 1 - Raven Nest

Inside from the Red Apartment is a room called Raven Nest.		[see the Qytat a'th Lundrues.i7x file in the Hellerhound folder for this location.]
Raven Nest is a room. It is sleepsafe.
The description of Raven Nest is "[ravennestdesc]";

the scent of Raven Nest is "This place smells of birds with a tinge of sexual arousal.";

to say ravennestdesc:
	if HP of Yolanda < 6:
		say "     Inside the apartment building are several small units - likely lower income or student tenants, you'd guess from the remains of their contents. While they've been broken into and looted of supplies, one on the second floor is still occupied. While still in disarray, some attempt has been made to organize the apartment for its occupant - a human-sized raven. Much of the furniture's been removed, though the cushions from several couches (pillaged from the neighbouring units) along with several blankets form a rather comfy nest for the avian. When you come in, she's [one of]pecking at her food supplies[or]adjusting the blankets of her nest[or]reading a book[or]poking through her collection of shiny gewgaws[cycling].";
	else:
		say "     The apartment building has several small units inside it, none inhabited now that Yolanda's gone. They've all been rather thoroughly looted by the raven and so there's nothing of import left here any longer.";


Section 2 - Yolanda

Yolanda is a woman. Yolanda is in The Raven Nest.
The description of Yolanda is "[yolandadesc]".
The conversation of Yolanda is { "Caw!" }.
yolandaqytat is a truth state that varies. yolandaqytat is usually false.
yolandatreasure is a truth state that varies. yolandatreasure is usually false.
yolandakeyfob is a truth state that varies. yolandakeyfob is usually false.

the icon of Yolanda is figure of Yolanda_icon.

to say yolandadesc:
	say "     Upon casual examination, Yolanda appears to be a normal raven, but enlarged to human scale and wearing some golden jewelry. Keeping to the posture of a bird most of the time, it takes a while to realize that she can take on a more human posture when she feels it's necessary and even has small, taloned hands hidden under her wings['] primary feathers. She has sharp eyes, a sharper beak and an even sharper tongue.";
	if HP of Yolanda >= 6:
		say "     She's set up a new nest for herself up here on the second floor of the library in an open spot near a window. She's gathered some cushions you recognize as coming from the chairs and sofa, though others seem new and may have been taken from nearby buildings. While she's protectively keeping much of her sex toys and collection of shinies protectively in the packs, she's got an assortment of each out for her to enjoy. There's also discrete signs of her having put in some new anchor points for her kinkier gear.";

the scent of Yolanda is "The raven smells of bird feathers and feminine arousal.".


Section 2 - Conversation

Instead of conversing the Yolanda:
	if HP of Yolanda is 0:
		say "     Introducing yourself to the raven, she looks you up and down with a sideways, avian stare. 'Oh sure, just come barging right in. With manners like that, you're either a looter or some sex fiend. Probably both, with my luck.'  You try to explain that you're a survivor looking for others until rescue, but the bird just gives you a sharp, laughing caw! 'You'll be waiting a long time for that, honey. If they haven't gotten off of their asses yet, I doubt they're going to bother trying at this point.";
		say "     'Now, back to the current matter... the name's Yolanda and I ain't in the mood to be raisin['] my tail to just anyone who comes wandering in here. I get hassled enough by those pesky gryphons who keep popping up around here as it is.'  She pauses to look you over with an avian, sideways stare. 'That said, should you be looking to take a turn on bottom... then I think something might be arranged...' she says with a faint grin in her voice, pulling the corner of a blanket off of an assorted box of leather straps and strap-ons.";
		now HP of Yolanda is 1;
		now Raven Key Fob is unresolved;
	else if yolandaqytat is false and a random chance of 1 in 3 succeeds and Yolanda is in Raven Nest:
		say "     'Those blue gryphon herms are always showing up around here. Those feather-brains have gotten some fool notion in their heads that there's something special around here. As far as I can tell, they're the only ones around here who're [']special[']... in the Olympic sense.'";
		if findablestairs is 1:
			say "     Mentioning that you heard something about that from one of them acting as a guide for the others, she caws and rolls her eyes. 'Great! Now they're telling others to come around here to bug me[if HP of Yolanda > 1]. Well, at least you've been able to provide some amusement[end if].'";
		else:
			say "     Inquiring for more details on what the gryphons are doing, she shakes her head. 'I'm not really sure. All I ever get out of them is nonsense. Some foolishness about a crazy [bold type]guard gryphon[roman type] who told them about a special stairwell. And when they come looking for it, they keep coming into my building and going up the stairs straight to my apartment to harass me. Damn pests, most of them.'";
		now yolandaqytat is true;
	else if jbfound < 2 and Jewelry Box is unresolved and a random chance of 1 in 3 succeeds:
		say "     'I've got a nice collection of pretties, don't you think? I'm sure it's all because of some compulsion from being a raven, but that doesn't make them any less lovely,' she muses, holding up a pearl necklace in her talons. 'Besides, if you're right and we do actually get rescued, it won't hurt to have a few things to ensure I'm comfortable. Should you come across anything particularly nice, be sure to keep me in mind,' she says, brushing a wing sensually along your side. 'A [bold type]jewelry box[roman type] would be a good place to start. That's where I got most of these.'";
		now jbfound is 1;
	else if ( HP of Yolanda is 3 or HP of Yolanda is 4 or HP of Yolanda is 5 ) and a random chance of 1 in 4 succeeds:
		say "[movingYolanda]";
	else if HP of Yolanda < 6:
		say "     [one of]'You say [']Nevermore['] and I'll peck out your gizzard.'[or]'If you want to be rewarded with a chance to be on top, be on the lookout for some more pretties for my collection.'[or]'I keep seeing those pesky blue gryphons around here. They're occasionally amusing when I'm willing to put up with their foolishness.'[or]'I've got the place all to myself these days... aside from the occasional nosey visitor,' she adds, giving you a steely gaze.[or]'After the outbreak, I pecked through the other apartments for what I needed. I'm pretty well off for supplies and even got myself a nice, shiny collection,' she adds, shifting her pile of jewelry and junk with one foot as she admires her trinkets.'[or]'Maybe you can be of some use to me. Bring me some nice trinkets if you happen to find any.'[or]Setting down a shiny marble she was admiring, she rakes her shiny collection a little closer.[or]'I've already gone through the other apartments a couple of times. That's how I put together my collections,' she says, glancing from her pile of shiny trinkets and box of sex toys. 'Some of them were mine, obviously, but it's not like anyone's going to be back for theirs, so why should they go to waste?'[at random]";
	else if HP of Yolanda >= 6:
		say "     [one of]'You say [']Nevermore['] and I'll peck out your gizzard.'[or]'If you want to be rewarded with a chance to be on top, be on the lookout for some more pretties for my collection.'[or]'I've noticed through the window that there's some of those blue gryphons around here as well. It seems they're wide spread across the city despite being weaker creatures than most.'[or]'Thanks to your help, I've managed to keep most of my collection of shinies and playthings. And I've found a few new pieces around here to help make up for it,' she says, examining some new piece of shiny junk.[or]'I've still got a good set of supplies for myself, so I'll be fine for a while as far as food and water go.'[or]'Maybe you can be of some use to me. Bring me some nice trinkets if you happen to find any.'[or]Digging through her big bag of shinies, she shows off a few choice pieces to you.[or]Patting the big duffel full of kink gear, she gives you an appraising look up and down with an avian sidelong stare. 'Thankfully those feathery thieves didn't get away with this, so there's still plenty of kinky fun we can have together.'[at random]";
		if HP of Yolanda is 6, now HP of Yolanda is 7; [interacted w/since move to Library]



to say movingYolanda:
	let icaruscheck be false;
	if HP of Icarus > 2 and HP of Icarus is not 7 and HP of Icarus is not 9:
		now icaruscheck is true;
	if HP of Yolanda is 3:
		say "     'So where're you holing up when you're not wandering around, perving on mutants? I'm sure you've got some safe hidey hole to rest and stash your stuff.'  You assure her that you're quite safe, having actually found an old fallout shelter for you[if the number of bunkered people + the number of booked people > 1] and your friends[else if the number of bunkered people + the number of booked people is 1] and your friend[end if]. She seems momentarily impressed, but then waves it off with a snarky comment that it's probably some rusty old dump of a place. You assure her that it's in good shape and actually under a library, so it's quite comfortable and has plenty of space.";
	else:
		say "     'So how are things at this [']library shelter['] of yours?' she asks. 'Anyone new there? [if HP of Yolanda is 5]Still working on collecting that[else]Collecting a[end if] little harem of pervy mutants for yourself, maybe?'";
	say "     Shall you offer to bring Yolanda to the safety of the library? It'd certainly be safer than here with random mutants showing up.";
	say "     [bold type]Shall you offer to bring Yolanda to the safety of the library?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		if icaruscheck is true and the number of bunkered people + the number of booked people > 3:
			say "     You [if HP of Yolanda is 5]again [end if]pitch that Yolanda move to the library as being a safer place for her and her collection since the place draws little interest from the other creatures roaming around. She's skeptical at first, suspecting that you only want her there so you can perv on her without having to come see her. She does start to gain interest when you mention [if HP of Icarus < 50]that there's a subby bird boy there already[else]that there's a dommy bird guy already there[end if] along with several others.";
			say "     'Well, that sounds like quite the harem you're building up,' she teases. 'It'd be nice to have some company, so I guess I can come along and check it out with you, see if it's really like you've said[if HP of Icarus < 50]. Having a subby songbird around sounds like it could be fun. I'm sure a perv like you wouldn't mind sharing a little[else]. Having another dommy bird around sounds like it could be fun. I'm sure a perv like you wouldn't mind being shared around a little[end if]. You just better not be making it all up so you can get me all alone at your sex den; I'll peck out your eyes if you are.'";
		else if icaruscheck is true:
			say "     You [if HP of Yolanda is 5]again [end if]pitch that Yolanda move to the library as being a safer place for her and her collection since the place draws little interest from the other creatures roaming around. She's skeptical at first, suspecting that you only want her there so you can perv on her without having to come see her. She does start to gain interest when you mention [if HP of Icarus < 50]that there's a subby bird boy there already[else]that there's a dommy bird guy already there[end if].";
			say "     'Well, that songbird of yours does sound interesting. I wouldn't mind getting to know him better,' she teases. '[if HP of Icarus < 50]Having a subby bird boy around sounds like it could be fun. I'm sure a perv like you wouldn't mind sharing a little[else]. Having another dommy bird around sounds like it could be fun. I'm sure a perv like you wouldn't mind being shared around a little[end if]. It'd be nice to have some company, so I guess I can come along and check it out with you, see if it's really like you've said. You just better not be making it all up so you can get me all alone at your sex den; I'll peck out your eyes if you are.'";
		else if the number of bunkered people + the number of booked people > 3:
			say "     You [if HP of Yolanda is 5]again [end if]pitch that Yolanda move to the library as being a safer place for her and her collection since the place draws little interest from the other creatures roaming around. She's skeptical at first, suspecting that you only want her there so you can perv on her without having to come see her. She does start to gain interest when you start telling her about all the other people already there.";
			say "     'Well, that sounds like quite the harem you're building up,' she teases. 'It'd be nice to have some company, so I guess I can come along and check it out with you, see if it's really like you've said. They're probably all kinky pervs like you, but they might be fun to pass the time with. You just better not be making it all up so you can get me all alone at your sex den; I'll peck out your eyes if you are.'";
		else:
			say "     You [if HP of Yolanda is 5]again [end if]pitch that Yolanda move to the library as being a safer place for her and her collection since the place draws little interest from the other creatures roaming around. 'You're probably just trying to get me back to whatever lair you've got so you can perv on me without having to come visit. I'll add [']lazy['] to your personal charms. Huh. You probably just want to get your grubby paws on my shinies,' she adds, raking her collection closer.";
			now HP of Yolanda is 5;
		if icaruscheck is true or ( the number of bunkered people + the number of booked people > 3 ):
			say "     Having convinced Yolanda to come along, she starts to gather up her collections of pretties and kink gear. You try to caution her to pack light, but she won't hear of it, not wanting to part with any of it. She loads up a couple of packs that she's purposefully set aside for this eventuality and fits them across her avian back as best she can. You're even drafted as a pack mule, made to carry a heavy backpack of her shiny baubles. You're tempted to refuse, but it's easier to just put up with it than continue arguing about it.";
			say "     Striking out, the pair of you make your way towards the bunker, your pace hampered by the burdens you carry. While you'd originally been planning on taking a safer route, your winding path irritates the raven. 'I thought you said this place wasn't far and now we're just zig-zagging across the city. Do you even know where you're going? Is this place of yours even real or are you just looking for someone to sell off my treasures to?'  You put up with this cawing as best you can, reminder her that you're the survivalist guide here, though you do deviate onto some more direct paths when possible.";
			say "     Things are going along well enough for a time, but about two-thirds of the way through your journey, everything comes crashing down as some harpies spot you. From the way they swoop in to grab at your packs, it's likely they've spotted the bright glimmer of some shiny jewelry dangling from the overfull packs. The two of you are beset by them, their talons grabbing at the packs. You strike at the one grabbing your pack, knocking it free of her grip before tossing it to the ground so you can face her.";
			challenge "Harpy";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Victorious in your fight, you're able to prevent another from snatching up the backpack of jewelry and geegaws you were carrying. Yolanda's not been so lucky in fending off the others, too overburdened by the multiple packs and bags she's trying to carry, several of the smaller of which are now in the talons of harpies and flying off. Your charge scatters the last pair before they can pull free the large duffel bag full of sex toys from the raven's back.";
				say "     'Oh no! My collection!' the raven caws angrily, preparing to take flight after the stolen satchels, but you hold her back. Pointing out that she'll neither be able to keep up with them nor fight them if she did catch them, she caws angrily again, hurling a colourful mix of curses upon the escaping harpies. In the end, you're able to regain her focus enough by showing her a handful of glittery jewelry and junk from the pack you had saved. Reassuring her that most of her collections are intact, she calms down enough to continue the journey.";
				say "     She's in a foul mood for the remainder of the trip, snappy and finding fault in everything until you finally make it to the library. Once there, her mood does improve fairly quickly as she discovers that the place is more or less as you'd described it. She continues to make snarky remarks and comments on how it's only a matter of time before some crazy creature comes to drag everyone away, but the tone's changed and more teasing than angry or spiteful. She even thanks you and gives you a tender nip on the neck for protecting her [']treasures[']. In the end, she selects a spot upstairs near a window to set up her new nest. You leave her a little time to get settled in and to finish cooling off.";
				move Yolanda to Grey Abbey 2F;
				now HP of Yolanda is 6;
				move player to Grey Abbey 2F;
				now lastfuck of Yolanda is turns + 8;
			else if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Beaten and distracted by the victorious harpy, you are unable to stop the backpack you were carrying from being snatched up and carried off in the talons of another. Other packs have been torn from Yolanda's back and are similarly being carried off by the others. 'Oh no! My collection!' the raven caws angrily, taking flight clumsily under the remaining burden to give pursuit before you can stop her. 'Give me back my shinies! My playthings! You feathery thieves! Lice-ridden bandits! You... you... mythological robbers!' you hear her crying out as she flies off after the considerably faster harpies, leaving you behind. You wait a while, hoping she'll return, but she never does. Eventually, you have to give up and return back to the library on your own after this ill-fated venture.";
				now HP of Yolanda is 100;
				remove Yolanda from play;
				move the player to Grey Abbey Library;
			else:
				say "     Driven into retreat by the harpies, you quickly search for an avenue of escape from the harpies. With the backpack of baubles you were carrying unprotected, it gets snatched up by another of the bird women. Other packs have been torn from Yolanda's back and are similarly being carried off by the others. 'Oh no! My collection!' the raven caws angrily, taking flight to give pursuit. She adds a 'You big coward!' down at you as she struggles into the air with the remaining packs atop her. 'Give me back my shinies! My playthings! You... you... mythological robbers!' you hear her crying out as she flies off after the considerably faster harpies, leaving you behind. You wait briefly, but doubt she'd return to you after having abandoned her treasures to be stolen. In the end, you return back to the library, giving up on this ill-fated venture.";
				now HP of Yolanda is 100;
				remove Yolanda from play;
				move the player to Grey Abbey Library;
	else:
		say "     You fill her in on a few details on how things have been going, leaving out some of the kinkier details so she doesn't scoff at you about them. Not that she's really one to talk, but no point in giving her more material to tease you about.";
		if HP of Yolanda is 3, now HP of Yolanda is 4;



Section 3 - Sexy Times

the fuckscene of Yolanda is "[sexwithYolanda]".

to say sexwithYolanda:
	if HP of Yolanda is 0:
		say "     That's rather forward of you. You should probably introduce yourself first.";
	else if cocks of player is 0 and cunts of player is 0:
		say "     Lacking a gender, you doubt you'll be able to rouse much interest out of the cynical raven.";
	else if lastfuck of Yolanda - turns < 6:
		say "     'More already? If you're going to go sex crazy, run along and do it somewhere else,' she says, flapping her wing dismissively towards the [if HP of Yolanda >= 6]stairwell back to the ground floor[else]door[end if].";
	else:
		say "     '[if HP of Yolanda is 1]Looking for sex? Why am I not surprised? Still, I guess I can indulge you if you're willing to play by my rules,' she adds, reaching for her box of sex toys with one foot[else]Back for more? Well, I guess I can indulge you [one of]as a means to pass the time[or]as a change of pace from banging those gryphons[or]so you don't go nuts for lack of sex[cycling].'  As she speaks, her foot strays towards her box of toys[end if].";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if cunts of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Receive vaginal";
			now sortorder entry is 1;
			now description entry is "take it in the pussy";
		if cunts of player > 0 and HP of Yolanda >= 3:
			choose a blank row in table of fucking options;
			now title entry is "Bound for vaginal";
			now sortorder entry is 2;
			now description entry is "get tied down before taking it in the pussy";
		choose a blank row in table of fucking options;
		now title entry is "Receive anal";
		now sortorder entry is 3;
		now description entry is "take it in the ass";
		if HP of Yolanda >= 3:
			choose a blank row in table of fucking options;
			now title entry is "Bound for anal";
			now sortorder entry is 4;
			now description entry is "get tied down before taking it in the ass";
		if HP of Yolanda >= 3 and scalevalue of player < 5:
			choose a blank row in table of fucking options;
			now title entry is "Suspended";
			now sortorder entry is 5;
			now description entry is "let her string you up for some kinky fun";
		choose a blank row in table of fucking options;
		now title entry is "Bound for oral";
		now sortorder entry is 6;
		now description entry is "have some kinky oral fun";
		if HP of Yolanda >= 9 and ( Icarus is in Grey Abbey Library and HP of Icarus >= 51 ) and lastfuck of Icarus is not turns:
			choose a blank row in table of fucking options;
			now title entry is "3some w/Dom Icarus - 1";
			now sortorder entry is 10;
			now description entry is "have a threesome with light bondage and sex";
		if HP of Yolanda >= 9 and ( Icarus is in Grey Abbey Library and HP of Icarus >= 53 ) and lastfuck of Icarus is not turns:
			choose a blank row in table of fucking options;
			now title entry is "3some w/Dom Icarus - 2";
			now sortorder entry is 11;
			now description entry is "have a threesome with sex and footplay";
		if HP of Yolanda >= 9 and ( Icarus is in Grey Abbey Library and HP of Icarus >= 53 ) and lastfuck of Icarus is not turns:
			choose a blank row in table of fucking options;
			now title entry is "3some w/Dom Icarus - 3";
			now sortorder entry is 12;
			now description entry is "have a threesome with bondage, sex and orgasm denial";
		if treasurefound > 0 and yolandatreasure is false:
			choose a blank row in table of fucking options;
			now title entry is "Pirate gold reward";
			now sortorder entry is 20;
			now description entry is "trade a piece of pirate gold for some special fun";
		if jbfound is 2:
			choose a blank row in table of fucking options;
			now title entry is "Jewelry box reward";
			now sortorder entry is 21;
			now description entry is "give her the jewelry box you found";
		if yolandakeyfob is true:
			choose a blank row in table of fucking options;
			now title entry is "Key fob reward";
			now sortorder entry is 22;
			now description entry is "give her the raven key fob you found";
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry][line break]";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Receive vaginal":
						say "[yolandasex01]";
					else if nam is "Bound for vaginal":
						say "[yolandasex01_b]";
					else if nam is "Receive anal":
						say "[yolandasex02]";
					else if nam is "Bound for anal":
						say "[yolandasex02_b]";
					else if nam is "Bound for oral":
						say "[yolandasex03]";
					else if nam is "Suspended":
						say "[yolandasex04]";
					else if nam is "Pirate gold reward":
						say "[yolandaspecial01]";
					else if nam is "Jewelry box reward":
						say "[yolandaspecial02]";
					else if nam is "Key fob reward":
						say "[yolandaspecial03]";
					else if nam is "3some w/Dom Icarus - 1":
						say "[yolanda+domicarus01]";
					else if nam is "3some w/Dom Icarus - 2":
						say "[yolanda+domicarus02]";
					else if nam is "3some w/Dom Icarus - 3":
						say "[yolanda+domicarus03]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		if HP of Yolanda is 1, now HP of Yolanda is 2;
		if HP of Yolanda is 6, now HP of Yolanda is 7; [interacted w/since move to Library]
		now lastfuck of Yolanda is turns;
		wait for any key;
		clear the screen and hyperlink list;


to say yolandasex01:
	if ( ( "Kinky" is listed in feats of player and a random chance of 1 in 5 succeeds ) or ( "Submissive" is listed in feats of player and a random chance of 1 in 5 succeeds ) or a random chance of 1 in 3 succeeds ) and HP of Yolanda < 3:
		say "[yolandasex02_b]"; [Yolanda opts for bondage version]
	else:
		say "     Feeling aroused enough to indulge the raven's interest, you get onto all fours for Yolanda. Offering up your juicy pussy by spreading your folds with a few fingers, you get an appreciative caw from the bird. After gently nuzzling your cunny with the curve of her beak, she grabs an appropriately [if cunt length of player < 5]small[else if cunt length of player < 10]sized[else if cunt length of player < 15]large[else]huge[end if] dildo from her collection with one of her feet. Using her rarely-seen hand talons, she affixes it into a [one of]black[or]red[or]pink[as decreasingly likely outcomes] harness and dons the strap-on. After taking a moment to adjust the fit, making sure you get a good look at the phallus that'll soon be filling you, she strides over to you.";
		say "     'Mmm, yes. Look at you, so hot and ready,' she says with a sensual rumble as she brushes the tip of the toy across your juicy folds, making your cunt quiver inside. She gives you a nip with her beak and adjusts herself over you. Her soft feathers brush across your back as the hard dildo pushes into you, causing you to moan in dual pleasure. Returning to a more avian posture, she rests herself atop you and starts rocking her hips. She takes slow thrusts the first few times, but soon picks up the pace and is eventually pounding away at you hard and fast.";
		say "     'Yeah, take it, you perv. Getting fucked by a girl, fucked by a bird,' she caws, nipping at your shoulders with her beak. She's right, you find; there is something strangely arousing about getting fucked by a woman/bird wearing a strap-on. The thought of you being so horny you'd settle for being screwed with a dildo becomes exciting in and of itself, enhancing your pleasure. And that's on top of the raven's clear experience with the role, working that phallus with practised skill and ease to sexually satisfy you both with a powerful orgasm. You cry out with much-needed release as the bird caws in orgasmic delight through your mutual climaxes";
	if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
		say ". Finished, she pulls the sex toy out of you with a wet slurp and struts around to your front, getting to lick it clean of your own juices before removing and storing it.";
	else:
		say ". Finished, she pulls the sex toy out of you with a wet slurp, wipes it clean and stores it back in the box with the others.";

to say yolandasex01_b:
	say "     Feeling aroused enough to agree to let the raven top you, you strip down while Yolanda goes through her kink collection. You start to move onto all fours, but she motions for you to get on your back instead while she selects a pair of long restraining bars[if scalevalue of player is not 3] suitable to your size[end if]. 'Let's make this a little more fun,' she says[if HP of Yolanda < 3]. Before you can decide if you're up for that, she bumps her avian body against you, knocking you over onto your back. Taking a moment to rub her wing against your crotch, she gives a soft, cawing chuckle. 'Oh, come now. Lemme have my fun, too. I'll make sure you enjoy it,' she adds even as she secures one end of the first bar to your wrist and tightens the leather strap[else]. Not giving you the time to decide, she slips one leather strap around your wrist while brushing her other wing across your crotch. 'Lemme have my fun, too. Didn't you have fun last time?' she adds, fondling you further[end if]. She keeps you distracted like this, attaching the long bars vertically from wrist to ankle on each side of you, leaving you spread eagle on the floor. She secures each bar to a concealed D-ring in the floor, immobilizing your [bodytype of player] body on naked display for her.";
	say "     After gently nuzzling your cunny with the curve of her beak, she grabs an appropriately [if cunt length of player < 5]small[else if cunt length of player < 10]sized[else if cunt length of player < 15]large[else]huge[end if] dildo from her collection with one of her feet. The toy is textured with [one of]ridges[or]bumps[or]ticklers[or]a spiral pattern[at random] to increase the sensual stimulation. Taking a moment to tease your juicy pussy with the tip of the dong and give your side a playful nip that causes you to squirm ineffectually in your restraints, she affixes the toy into a [one of]black[or]red[or]pink[as decreasingly likely outcomes] harness and dons the strap-on. Taking a moment to adjust the fit and making sure you get a good look at the phallus that'll soon be filling you, she struts around your prone form.";
	if HP of Yolanda < 3:
		say "     'Rather trusting, aren't you? Letting a strange mutant tie you up. What's to stop me from leaving you like this? Or sharing you with those annoying gryphons until you're as feather-brained as them?'  She brushes her wingtip teasingly down your chest and over your crotch[if cocks of player > 0]. Your cock[smn] twitch[esmv] and stiffens[smv] further and your puss[yfn] grow[sfv] all the wetter[else]. Your puss[yfn] grow[sfv] all the wetter in response[end if], though you start to have second thoughts. You give your bonds a tug to test them, but you're secured tightly. She gives a chuckling caw at your struggle and fingers you once again to show she's the one in control.";
		say "     'Mmm, yes. Feel that. You're so hot and juicy,' she says with a sensual rumble as she pumps her digits inside you, making your cunt quiver. She gives you a nip with her beak as she adjusts herself over you. Her soft feathers brush over your chest[if breast size of player > 0 and cocks of player > 0], tickling sensually at your breasts even as your stiff manhood is nestled into the ebon plumage between you. The textured dildo then pushes into you, causing you to moan from these myriad pleasures[else if cocks of player > 0] and your stiff manhood is nestled into the ebon plumage between you. The textured dildo then pushes into you, causing you to moan with pleasure[else if breasts of player > 0], tickling sensually at your nipples, as the textured dildo pushes into you, causing you to moan in dual pleasure[end if]. Returning to a more avian posture, she seats herself atop you and starts rocking her hips. The lower position means she can only take slower thrusts, but she doesn't seem to mind as this lets her draw it out all the longer.";
		say "     'Getting fucked by a girl, fucked by a bird - such a perv,' she caws, nipping at your shoulders with her beak. She's right, you find; there is something strangely arousing about letting yourself get tied up and then fucked by a woman/bird wearing a strap-on. This turns you on all the more and you try to push up into her thrusts, but your bonds don't allow it well, giving you an additional reminder of your kinky predicament. This leaves the bird to set the pace, drawing it out for her own amusement. The raven's clearly had plenty of experience with the role, only letting you achieve small orgasms that leave you wanting more rather than properly satisfying you[if cunts of player > 1]. She even takes pauses to swap from one cunt to another, both ensuring you're thoroughly fucked and building your need all the higher[end if]. Yours is by no means the first pussy she's stuffed, working that stimulating phallus with practised skill and ease to ride you to the sexually edge while she savours her prize before finally bringing it to a head with a powerful orgasm from both of you. You cry out with much-needed release as the bird caws in orgasmic delight through your mutual climaxes.";
		if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
			say "     Finished, she pulls the sex toy out of you with a wet slurp and struts around to your front, getting to lick it clean of your own juices before removing and storing it";
		else:
			say "     Finished, she pulls the sex toy out of you with a wet slurp, wipes it clean and stores it back in the box with the others";
		say ". While you're left basking in the afterglow, Yolanda leaves you tied up as she straightens up her collection. This makes you wonder if she's intent on keeping you like this and, in your blissed-out state, makes this a kinky prospect that has a certain appeal. She does eventually release you, allowing you to stretch out your stiff limbs on her pillowy nest while cuddled up beside your feathery lover.";
	else:
		say "     And so you are spread out on your back on her floor, restrained and at her mercy - though she's kind enough to have put a blanket between you and the hard floor. A light tug at your bonds proves you to be securely trapped and barely able to move. 'And here you are again, tied up and on display. Ripe and ready to be fucked. Just another plaything of mine,' she says with obvious amusement while [if cocks of player > 0]fondling your stiff erection before fingering your puss[yfn]. You moan and your cock[smn] throb[smv] while your cunt[sfn] get[sfv] all the wetter[else]rubbing your clit[sfn] and fingering your puss[yfn]. You moan and your cunt[sfn] get[sfv] all the wetter[end if], excited at the prospect of what's to come.";
		say "     The raven nestles herself atop you with a caw, gliding the [if cunt length of player < 5]small[else if cunt length of player < 10]phallic[else if cunt length of player < 15]large[else]huge[end if] dildo between your thighs. Her soft feathers brush across your chest[if cocks of player > 0] and around your throbbing cock[smn] as the hard dildo pushes into you, causing you to moan in dual pleasure. Returning to a more avian posture, she seats herself atop you and starts rocking her hips. The lower position means she can only take slower thrusts, but she doesn't seem to mind as this lets her draw it out all the longer.";
		say "     'Yeah, take it, you perv. Letting yourself get tied up and screwed senseless by a mutant bird girl. Such a kinky slut,' she caws, nipping at your shoulder with her beak as she grinds her feathered hips hard against you, pressing the dildo deep inside you. You can't help but agree, feeling like quite the slut for having allowed a bird/woman to tie you up and then stuff your pussy with a strap-on. This turns you on all the more and you try to push up into her thrusts, but your bonds don't allow it well, giving you an additional reminder of your kinky predicament. This leaves the bird to set the pace and play with your body as she will for her own amusement. She draws it out by alternating between thrusting into you, grinding down on your crotch, fondling your junk and pausing for light, feathery caresses[if cunts of player > 1]. She even alternates the textured toy from one cunt to another, both ensuring you're thoroughly fucked and building your need all the higher[end if] - all while only allowing you minor orgasms that make you all the hornier while she has her fun with her tied up [']plaything['].";
		say "     After a long, drawn out session, she grinds her hips and works that stimulating dildo back and forth inside you in quick, short motions that finally build you up to a powerful orgasm. You cry out with much-needed release as the bird caws in orgasmic delight through your mutual climaxes";
		if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
			say ". Finished, she pulls the sex toy out of you with a wet slurp and struts around to your front, getting to lick it clean of your own juices before removing and storing it";
		else:
			say ". Finished, she pulls the sex toy out of you with a wet slurp, wipes it clean and stores it back in the box with the others";
		say ". Yolanda releases you from your bonds for some post-sex snuggles while you both bask in the afterglow. You're still stiff from the bondage, so the feathery cuddling in her cushion nest is the perfect way for your sore muscles to relax and recover.";
	if HP of Yolanda < 3, now HP of Yolanda is 3;

to say yolandasex02:
	if ( ( "Kinky" is listed in feats of player and a random chance of 1 in 5 succeeds ) or ( "Submissive" is listed in feats of player and a random chance of 1 in 5 succeeds ) or a random chance of 1 in 3 succeeds ) and HP of Yolanda < 3:
		say "[yolandasex02_b]"; [Yolanda opts for bondage version]
	else:
		say "     Feeling particularly kinky, you get onto all fours for Yolanda. Offering up your tight back door by spreading your cheeks with both hands, you get an appreciative caw from the bird. After gently nuzzling your rump with the side of her beak while checking you out with a sidelong glance, she grabs an appropriately [if scalevalue of player < 3]small[else if scalevalue of player is 3]sized[else if scalevalue of player is 4]large[else]huge[end if] dildo from her collection with one of her feet. Using her rarely-seen hand talons, she affixes it into a [one of]black[or]red[or]pink[as decreasingly likely outcomes] harness and dons the strap-on. After taking a moment to adjust the fit, making sure you get a good look at the phallus that'll soon be filling you, she strides over to you.";
		say "     'Now that's a sight I like to see. There's nothing quite like stuffing an ass,' she says with a swat of her wing across your bottom. After taking a moment to apply some lube, she gives you a nip with her beak and adjusts herself over you. Her soft feathers brush across your back as the hard dildo pushes into you, causing you to moan in dual pleasure. Returning to a more avian posture, she rests herself atop you and starts rocking her hips. She takes slow thrusts initially, allowing your crinkled hole to adjust to the penetration, but soon picks up the pace and is eventually pounding away at you hard and fast.";
		say "     'Yeah, take it, you perv. Bending over and taking it up the ass from a girl, and a bird at that. You slut,' she caws, nipping at your shoulder with her beak as she grinds her feathered hips hard against you, pressing the dildo [if cocks of player > 0]against your prostate[else]deep inside you[end if]. You can't help but agree, feeling like quite the slut for having allowed a bird/woman to fuck you in the ass with a strap-on. The thought of you being so horny you'd settle for being screwed with a dildo becomes exciting in and of itself, enhancing your pleasure. And that's on top of the raven's clear experience with the role. Yours is by no means the first ass she's filled, working that phallus with practised skill and ease to sexually satisfy you both with a powerful orgasm. You cry out with much-needed release as the bird caws in orgasmic delight through your mutual climaxes. Finished, she rises off of you and slips the sex toy out of your tingling anus with a wet slurp";
		if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
			say ". After wiping it across each ass cheek, she wipes it clean and stores it back in the box with the others.";
		else:
			say ". Removing it, she cleans it with a wet wipe and stores it back in the box with the others.";

to say yolandasex02_b:	[bondage anal]
	say "     While you strip down, Yolanda goes through her kink collection. Seeing you get down on all fours, Yolanda selects a spreader bar[if scalevalue of player is not 3] suitable to your size[end if]. 'Let's make this a little more fun,' she says, holding up the spreader bar along with some leather-clad cuffs[if HP of Yolanda < 3]. Before you can decide if you're up for that, she bumps her avian body against you, knocking you over onto her nest of cushions. Taking a moment to rub her wing against your crotch, she gives a soft, cawing chuckle. 'Oh, come now. Lemme have my fun, too. I'll make sure you enjoy it,' she adds even as she cuffs your hands together[else]. Not giving you the time to decide, she slips the cuffs around your wrists while brushing her other wing across your crotch. 'Lemme have my fun, too. Didn't you have fun last time?' she adds, fondling you further[end if]. Relenting, you move your feet apart so she can cuff your ankles. She then locks the bar such that your legs are spread slightly uncomfortably - just enough to be a steady reminder of your bonds. This is especially so when she gives your exposed ass a beak nip, jolting you to raise it higher. You're given the occasional nip. Between donning an appropriately [if scalevalue of player < 3]small[else if scalevalue of player is 3]sized[else if scalevalue of player is 4]large[else]huge[end if] strap-on and lubing it up, you're given a few more of these nips as well as some playful fondling to help keep you hard.";
	if HP of Yolanda < 3:
		say "     Grabbing the handcuffs, she pulls your arms under your chest and down between your legs, leaving your ass in the air and your face pressed to the floor. She then locks both the cuffs and the spreader bar together and tosses the key aside. 'Rather trusting, aren't you? Letting a strange mutant tie you up. What's to stop me from leaving you like this? Or sharing you with those annoying gryphons until you're as feather-brained as them?'  She brushes her wingtip teasingly across your raised ass and down to your crotch[if cocks of player > 0 and cunts of player > 0]. Your cock[smn] twitch[esmv] and stiffens[smv] further and your puss[yfn] grow[sfv] all the wetter[else if cocks of player > 0]. Your cock[smn] twitch[esmv] and grow[smv] harder in response[else]. Your puss[yfn] grow[sfv] all the wetter in response[end if], though you start to have second thoughts. You give your bonds a tug to test them, but you're secured tightly.";
		say "     'Ah-ah-ah!' she teases with another feathery touch while grabbing your ass with one taloned foot. 'No backing out now. Though I do think I'd rather keep you all to myself.'  And with that, she moves atop you with a caw. Her soft feathers brush across your back as the hard dildo pushes into you, causing you to moan in dual pleasure. Returning to a more avian posture, she rests herself atop her captured lover and starts rocking her hips. She takes slow thrusts initially, allowing your crinkled hole to adjust to the penetration, but soon picks up the pace and is eventually pounding away at you hard and fast.";
		say "     'Yeah, take it, you perv. Bending over and taking it up the ass from a girl, and a bird at that. You slut,' she caws, nipping at your shoulder with her beak as she grinds her feathered hips hard against you, pressing the dildo [if cocks of player > 0]against your prostate[else]deep inside you[end if]. You can't help but agree, feeling like quite the slut for having allowed a bird/woman to tie you up and then fuck you in the ass with a strap-on. This turns you on all the more and you try to push back into her thrusts, but your bonds don't allow it, giving you an additional reminder of your kinky predicament. This leaves the bird to set the pace, drawing it out for her own amusement. The raven's clearly had plenty of experience with the role, pausing when needed to keep you from coming. Yours is by no means the first ass she's filled, working that phallus with practised skill and ease to keep you on sexual edge while she savours her prize before finally bringing it to a head with a powerful orgasm from both of you. You cry out with much-needed release as the bird caws in orgasmic delight through your mutual climaxes.";
		say "     Finished, she rises off of you and slips the sex toy out of your tingling anus with a wet slurp";
		if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
			say ". After wiping it across each ass cheek, she wipes it clean and stores it back in the box with the others.";
		else:
			say ". Removing it, she cleans it with a wet wipe and stores it back in the box with the others.";
		say "     While you're left basking in the afterglow, Yolanda leaves you tied up as she straightens up her collection. This makes you wonder if she's intent on keeping you like this and, in your blissed-out state, makes this a kinky prospect that has a certain appeal. She does eventually release you, allowing you to stretch out your stiff limbs on her pillowy nest while cuddled up beside your feathery lover.";
	else:
		say "     Pulling your arms down between your legs again leaves your ass in the air and your face pressed to the floor - though this time she's kind enough to leave you a cushion to rest your head on. She again locks the cuffs and the spreader bar together and sets the key aside. A light tug at your bonds proves you to be securely trapped and at the raven's mercy. 'And here you are again, ass in the air. Ripe and ready to be pounded. Just another toy for my collection,' she says with obvious amusement while [if cocks of player > 0]fondling your stiff erection. You moan and your cock[smn] throb[smv][else]rubbing your clit. You moan and your puss[yfn] grow[sfv] all the wetter[end if], excited at the prospect of what's to come.";
		say "     The raven moves atop you with a caw, gliding the lubed toy between your upturned cheeks. Her soft feathers brush across your back as the hard dildo pushes into you, causing you to moan in dual pleasure. Returning to a more avian posture, she rests herself atop her captured lover and starts rocking her hips. She takes slow thrusts initially, allowing your crinkled hole to adjust to the penetration, but soon picks up the pace and is eventually pounding away at you hard and fast.";
		say "     'Yeah, take it, you perv. Letting yourself get tied up and fucked up the ass by a mutant bird girl. Such a kinky slut,' she caws, nipping at your shoulder with her beak as she grinds her feathered hips hard against you, pressing the dildo [if cocks of player > 0]against your prostate[else]deep inside you[end if]. You can't help but agree, feeling like quite the slut for having allowed a bird/woman to tie you up and then fuck you in the ass with a strap-on. This turns you on all the more and you try to push back into her thrusts, but your bonds don't allow it, giving you an additional reminder of your kinky predicament. This leaves the bird to set the pace, drawing it out for her own amusement. She draws it out by alternating between thrusting into you, fondling your junk and pausing for light, feathery caresses - all geared towards keeping you on the edge of release while she has her fun with her tied up [']toy['].";
		say "     After a long, drawn out session, she pounds you vigorously with the strap-on while masturbating you to a powerful orgasm. You cry out with much-needed release as the bird caws in orgasmic delight through your mutual climaxes. Finished, she rises off of you and slips the sex toy out of your tingling anus with a wet slurp";
		if "Kinky" is listed in feats of player or "Submissive" is listed in feats of player:
			say ". After wiping it across each ass cheek, she wipes it clean and stores it back in the box with the others";
		else:
			say ". Removing it, she cleans it with a wet wipe and stores it back in the box with the others";
		say ". Yolanda releases you from your bonds for some post-sex snuggles while you both bask in the afterglow. You're still stiff from the bondage, so the feathery cuddling in her cushion nest is the perfect way for your sore muscles to relax and recover.";
	if HP of Yolanda < 3, now HP of Yolanda is 3;

to say yolandasex03:
	say "     Running a hand along her side and under her tail, you offer to lick her pussy. She gives a little caw as your fingers slip between her feathers and brush across her cloacal folds. 'Well, that doesn't sound too bad, though it's a little on the vanilla side. How about we make it a little more fun?' she says, plucking some leather straps from her box of fun. Before you can decide if you're up for that, she bumps her avian body against you, knocking you over onto her nest of cushions. Taking a moment to rub her wing against your crotch, she gives a soft, cawing chuckle. 'Oh, come now. Lemme have my fun, too. I'll make sure you enjoy it,' she adds.";
	say "     Allowing her to tie you up, she uses her oft-hidden talon hands to secure your wrists to the old radiator using some leather straps. A spreader bar is attached to your ankles before being connected to a concealed D-ring in the floor. And with a few adjustments, you're secured spread eagle across [if HP of Yolanda < 6]her apartment floor[else]the library floor[end if]";
	if HP of Yolanda < 3:
		say ". With you nude and unable to move, the raven strides back and forth, looking you over.";
		say "     'Rather trusting, aren't you? Letting a strange mutant tie you up. What's to stop me from leaving you like this? Or sharing you with those annoying gryphons until you're as feather-brained as them?'  She brushes her wingtip teasingly down your chest to your groin[if cocks of player > 0 and cunts of player > 0]. Your cock[smn] twitch[esmv] and stiffens[smv] further and your puss[yfn] grow[sfv] all the wetter[else if cocks of player > 0]. Your cock[smn] twitch[esmv] and grow[smv] harder in response[else]. Your puss[yfn] grow[sfv] all the wetter in response[end if], though you start to have second thoughts. You give your bonds a tug to test them, but you're secured tightly.";
		say "     'Ah-ah-ah!' she teases with another feathery touch while slamming her foot down onto the spreader bar. 'No backing out now. Though I do think I'd rather keep you all to myself.'  And with that, she turns around and sits herself atop you like a bird, burying you in the darkness of her tailfeathers. She grinds her hips back, pressing her cloaca to your face, urging you to start licking. The stuffy heat surrounding you only makes the musky scent of her arousal all the stronger in your nose. Your tongue darts out to get a taste of it and soon you're delving into her dripping cunny. And true to her word, she [if cocks of player > 0]begins stroking your throbbing cock[smn][else]fingers your wet snatch[esfn][end if] after giving your crotch a beak nuzzle.";
	else:
		say " once again. The raven struts around your nude form, looking you over with amusement.";
		say "     'And now I've got you tied up and all to myself again,' she says with a chuckling caw. She brushes her wingtip teasingly down your chest to your groin[if cocks of player > 0 and cunts of player > 0]. Your cock[smn] twitch[esmv] and stiffens[smv] further and your puss[yfn] grow[sfv] all the wetter[else if cocks of player > 0]. Your cock[smn] twitch[esmv] and grow[smv] harder in response[else]. Your puss[yfn] grow[sfv] all the wetter in response[end if], excited at the prospect of what's to come. You give your bonds a playful tug, finding them quite secure.";
		say "     'Ah-ah-ah!' she teases with another feathery touch while slamming her foot down onto the spreader bar. 'It's too late to back out now. Now why don't you make yourself useful and get to licking like you promised.'  And with that, she turns around and sits herself atop you like a bird, burying you in the darkness of her tailfeathers. She grinds her hips back, pressing her cloaca to your face, urging you to start licking. The stuffy heat surrounding you only makes the musky scent of her arousal all the stronger in your nose. Your tongue darts out to get a taste of it and soon you're delving into her dripping cunny. And true to her word, she [if cocks of player > 0]begins stroking your throbbing cock[smn][else]fingers your wet snatch[esfn][end if] after giving your crotch a beak nuzzle.";
	say "     Your hips want to [if cocks of player > 0]thrust into[else]grind against[end if] her touch, but the restraints make it difficult, leaving the bird to set the pace, drawing it out for her own amusement. She takes her time with you, shifting to light brushes of her feathers whenever it looks like you're getting too close. With your face buried in her snatch, you can only moan and groan in frustration, licking all the more vehemently in the hopes of getting her off so you can have your release. And eventually you are rewarded, the raven's femmecum soaking your face as she climaxes. As her cunt clenches around your tongue, she [if cocks of player > 0]jerks you off[else]frigs your sopping cunny[end if] to a mind-blowing orgasm that leaves you panting and dazed. You're still basking in the afterglow as Yolanda undoes the cuffs, releasing you for some post-sex snuggles.";
	if HP of Yolanda < 3, now HP of Yolanda is 3;

to say yolandasex04:
	say "     'Well now you're getting into it. You must be even farther gone than I thought,' she teases. Taking a padded bar built for this purpose, she slips it between your shoulders and back. With your arms thus held back, she puts a pair of fur-lined manacles around your wrists to lock them tightly together. She gives your neck some firm nips with her beak while placing some support straps across your chest and adjusting them nice and snug. Running a cable from the bar to a loop on the ceiling, she slowly raises you up off the ground. While by no means comfortable, it certainly isn't painful thanks to her care in strapping you in.";
	say "     The raven struts around you, giving you an avian, sidelong stare. 'Mmm... now don't you look like a fine treat. All strung up for a peckish raven,' she says, giving your side a sharp nip. 'But how shall I have this piece of fine meat?' she muses aloud, turning back to her box of toys. She rummages through it with one taloned foot, sifting through the contents. 'Perhaps this... or this? Ahhh! Just the thing!' she exclaims, pulling a ";
	if a random chance of anallevel in 12 succeeds and anallevel > 1:
		say "black butt plug and more. Along with it comes a small squeeze pump connected to its base by a hose, allowing the inflatable butt plug to be enlarged once inside you. That is unless you object and ask for something a little more standard.";
		say "     [bold type]Shall you use choose the butt plug?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Choose the butt plug.";
		say "     ([link]N[as]n[end link]) - Object.";
		if the player consents:
			say "[yolandasex04_A]";
		else:
			say "[yolandasex04_default]";
	else if cocks of player is 1 and a random chance of 1 in 3 succeeds:	[cockring + pussy toy -- one cock only]
		say "a leather band and a false vagina toy. The leather strip proves to be a cockring with several snaps so it can be adjusted to suit its wearer's girth. The other is made of a stretchy, jellylike plastic with inner bumps and ridges to stimulate the member slide into it.";
		say "     [bold type]Shall you let her use these kinky toys on you or shall you ask for something more her usual speed.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - The toys.";
		say "     ([link]N[as]n[end link]) - Something more her usual speed.";
		if the player consents:
			say "[yolandasex04_B]";
		else:
			say "[yolandasex04_default]";
	else if a random chance of 1 in 2 succeeds:
		say "bright red dildo shaped like a canine cock, complete with knot and pointed glans.";
		say "     [bold type]Shall you let her use that doggy dong on you or shall you ask for something else a little less wild?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Use the doggy dong.";
		say "     ([link]N[as]n[end link]) - Something a little less wild.";
		if the player consents:
			say "[yolandasex04_C]";
		else:
			say "[yolandasex04_default]";
	else:
		say "large equine-shaped dildo out and giving it a slap across the floor. The floppy toy quivers as it bounces and wobbles in her grip. 'This big guy is called [']The Burro['] and I'm thinking I'll have it burrow into you,' she caws, staring at you with a sidelong glance. It looks like you're in for a [if cunts of player > 0]stuffing[else]reaming[end if] by that donkey dick dildo unless you stop her now.";
		say "     [bold type]Will you take the donkey dildo?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			say "[yolandasex04_D]";
		else:
			say "[yolandasex04_default]";

to say yolandasex04_A:
	say "     Yolanda starts her fun by applying plenty of lube to her hand and working one and then two slick digits into your butthole. She takes her time with this, both making sure you're good and ready as well as using the opportunity to tease your [if cocks of player > 0][cock size desc of player] cock[else]wet pussy[end if] with her feathery touch. Tied up as you are, you can only squirm a little as she teases your rectum with a slow, steady push. You groan a little at the widest point before it pops into you and your stretched hole grips back around its narrower base, holding it in. You're left panting and [if cocks of player > 0]hard[else]wet[end if], her playing with your groin not having stopped.";
	say "     Testing the fit by giving it a few tugs, she gives a pleased caw and takes the small pump in her foot talons. Pushing down on it causes the toy inside you to swell up a little, making you moan again. Dropping back to avian posture, she struts around you, giving you the occasional nip and giving the butt plug another pump on each pass. It gets increasingly large inside you, making your butt feel delightfully full and stretched. Moving back upright, she [if cocks of player > 0]wraps her taloned hand around your cock and starts jerking you off[else]slips a few taloned fingers into your pussy and finger-fucks you[end if] while continuing to occasionally pump the toy even fuller. By this point, it already feels quite huge inside you and it seems she has to push harder to work the pump.";
	say "     With so much stimulation, it isn't long before you're crying out in orgasmic release[if cocks of player > 0]. Your gooey seed shoots across the floor as your spill your [cum load size of player] load onto the laminate flooring in a big, sticky mess[else]. Your hot juices flow from your quivering cunny, soaking her fingers and your crotch enough for it to drip down onto the laminate flooring below you[end if]. She caws with pleasure and gives the swollen toy inside you a couple of extra pumps, making you cum all the harder with a groan. Yolanda, having her other wing-hand buried in her crotch, caws again as she climaxes, adding the scent of her avian juices to the heady smell of sex hanging in the air.";
	say "     When she's done, she nestles herself back into her makeshift nest of cushions and casually licks her taloned hands clean of both your [if cocks of player > 0]seed and her juices[else]juices and hers[end if]. This leaves you hanging with the achingly big plug stuffed tightly in your overfull ass. She leaves you up there for a while, enjoying the sight, before finally releasing the pressure on the toy. After it shrinks back down, it is quite easy to remove. She then lowers you down and lets you rest your sore backside on her cushion-covered floor.";

to say yolandasex04_B:
	say "     Yolanda has an excited grin at the corners of her beak as she moves in with the cockring. She wraps ";
	if cockname of player is listed in infections of InternalList:
		say "the [if cock length of player > 18]large[else]small[end if] leather band around the base of your cock and clips it snugly onto you";
	else:
		say "a section of the [if cock length of player > 18]large[else]small[end if] leather band around the base of your cock and another around your scrotum and clips it snugly onto you";
	say ". It squeezes around your shaft, constricting the blood flow to keep you hard. With you fully engorged, she eyes your [cock size desc of player] [cock of player] pole with lustful hunger while spreading some lube into the false vagina. She slides it slowly onto your manhood, letting your increasingly sensitive shaft feel every ridge and tickler inside it[if cock length of player >= 18]. It also proves to be remarkably stretchy, expanding to accommodate your [cock size desc of player] penis[end if].";
	say "     Your moan of pleasure makes her smile all the more. 'Oh, you like that, don't you? Maybe you want the real thing? Waiting for your chance to stuff this bird?' she asks, turning around to shake her tailfeathers at you, her cloacal pussy on display, all while leaving the fake one wrapped around your erection. Turning back to face you, she grabs the jellylike cunny and gives it another slow slide down your shaft. 'Well, too bad. This bird doesn't give it up for just anyone. You've got to give me something to make it worth my time. Until then, this is the closest you'll get,' she says, switching to pumping the false vagina over your pole.";
	say "     While certainly not the same as the real thing, it is quite pleasurable in its own right and you do your best to thrust into its motions. Its internal ridges and bumps tease your sensitive shaft while the stretchy material squeezes down around you. The pleasure builds and builds, but without release. Your cock and balls ache with a growing need to cum that is thwarted by the cockring clenched down on its base. Pressing your urethra[if cockname of player is not listed in infections of InternalList] and vas deferens[end if] shut, the path to blow your load is blocked and the pressure can only continue to build. Your moans of pleasure become mixed with whimpers of need as your balls feel fuller and fuller.";
	say "     Eventually Yolanda relents and pops the snaps on the cockring. A long groan issues from your throat as your long-awaited orgasm can occur freely. Your backed up balls send blast after blast of thick seed into the depths of the false cunny[if cock width of player > 15], filling it to overflowing[end if]. Your orgasm is even better for the enforced delay, your head spinning from the strength of it. And by the time it comes to an end, you're left dazed, but awash in warm ecstasy all over.";
	say "     You're only half aware at first when the raven tilts your head up. 'Good boy. Now it's time for your tasty treat,' she trills while pouring the gooey contents of the fake vagina into your mouth. Before you realize what's going on, you're already swallowing it down, made to eat your own cum for the avian's amusement. This final humiliation over, she lowers you back down and releases you from your bonds, though it takes a while after all this before you're ready to get up and do anything.";
	if cock width of player < 45:
		increase cock width of player by 1 + ( cock width of player / 15 );
		if cock width of player > 45, now cock width of player is 45;
		if "Modest Organs" is listed in feats of player and cock width of player > 5:
			now cock width of player is 5;


to say yolandasex04_C:
	say "     Securing the canine-shaped toy to her harness and then attaching it around her waist, she stands upright for a change, putting herself on display with the faux doggy cock. 'I always knew that quiet guy upstairs was a perv, but I didn't know how much of one until I raided his closet and found this puppy,' she says while [if cunts of player > 0]stroking the canine prick a few times[else]spreading some lube over the canine prick[end if]. After her preparation, she takes hold of your thighs[if cunts of player is 0] from behind[end if], raising and spreading your legs so she can get the doggy dong lined up with your [if cunts of player > 0]juicy snatch[else]tight pucker[end if]. She teases your unprotected hole with a slow rub of the pointed tip around it, making you whimper a little with need. Something about your perilous position, tied up and exposed, has turned you on considerably and you're eager for the raven to bury that bone in you. She thankfully doesn't leave you waiting for too long, just long enough to enjoy your frustration and give you a few extra nips with her beak before finally driving the red latex toy into your needy [if cunts of player > 0]cunt[else]ass[end if].";
	if cunts of player > 0:
		say "     With her taloned hands gripping your thighs, she bounces you up and down over the canine dildo, fucking you with it. She's raised you up to just the right height to be able to lift you up and then let you slip back down onto the toy as she thrusts up into you. The raven nips at you with her beak while fucking you, pecking at your neck, sides and nipples as she screws you hard with the doggy dick. You can feel the firm bulge of the knot at its base kissing at your juicy pussy. Your lips are spread open a little further each time, your battered cunny gradually forced open. Eventually, with a drop down the full length and a thrust up, the thick knot pops into your pussy, tying with you.";
		say "     This comes as the raven climaxes, having chosen to finish on stuffing you with the thick bulge at the base of the toy. The sting of it stretching you wide also comes with the firm thickness of the knot filling your cunny and the canine cock sliding deeper into your hot tunnel. A few grinding thrusts as the avian orgasms is enough to push you to climax as well, your cunt clamping down around the large protrusion as your steamy juices flow around it[if cocks of player > 0]. Your balls empty their load as well, your virile seed spent across the raven's feathery chest and your own[end if]. Yolanda fucks you and jerks your cock until you're drained, then undoes the straps on the harness, leaving it and the toy locked inside you. Trapped suspended with the knotted toy still stuffed in your cunt, she has some post-sex fun feather-teasing your oversensitive clit and nipping at your thighs. She teases you like this for a while before tiring of it, leaving you hanging the whole time she's cleaning up your mess before finally withdrawing the toy and lowering you to the ground. You lay there for a while, softly aching from your extended suspension and knotting, but it is a pleasant one that you savour while flopped out on the nest of pillows, curled up under the black bird's wing.";
	else:
		say "     With her taloned hands gripping your thighs, she bounces you up and down over the canine dildo, fucking you from behind. She's raised you up to just the right height to be able to lift you up and then let you slip back down onto the toy as she thrusts up into you. The raven nips at you with her beak while fucking you, pecking at your neck and shoulders as she screws you hard with the doggy dick. You can feel the firm bulge of the knot at its base pounding at your back door. Your hole widens open a little further each time, your battered anal rings gradually forced open. Eventually, with a drop down the full length and a thrust up, the thick knot pops into your ass, tying with you.";
		say "     This comes as the raven climaxes, having chosen to finish on stuffing you with the thick bulge at the base of the toy. The sting of it stretching you wide also comes with the firm thickness of the knot filling your hole and the canine cock pressing hard against your prostate. A few grinding thrusts as the avian orgasms is all it takes to finish you off, your dick[smn] twitching and bouncing as streaks of your white seed splatter onto the floor. Yolanda fucks you and jerks your cock until you're drained, then undoes the straps on the harness, leaving it and the toy locked inside you. Trapped suspended with the knotted toy buried in your ass, she has some post-sex fun feather-teasing your oversensitive shaft and nipping at your thighs. She teases you like this for a while before tiring of it, leaving you hanging the whole time she's cleaning up your mess before finally withdrawing the toy and lowering you to the ground. You lay there for a while, softly aching from your extended suspension and knotting, but it is a pleasant one that you savour while flopped out on the nest of pillows, curled up under the black bird's wing.";


to say yolandasex04_D:
	say "     Yolanda takes the big, floppy donkey dick in her beak and slaps your ass with it a few times. Given how you're tied up, all you can do is groan and squirm a little to the raven's amusement. Taking the large toy in hand next, she adjusts to stand mostly upright, slapping it in her other palm[if cunts of player > 0]. Rubbing it across your juicy folds, she teases your pussy with it before getting to the main event[else]. Spreading copious amounts of lube over the toy, she gets it ready for the main event[end if]. She even pushes a pair of slick digits into your [if cunts of player > 0]hot cunny[else]tight hole[end if] in advance of the long dong.";
	say "     Spreading your [if cunts of player > 0]folds[else]cheeks[end if], she presses the flat crown of the equine phallus against your waiting hole. You give a soft groan as the toy is pushed into you, stretching [if cunts of player > 0]your cunny around it[else]your bowels to take it[end if]. It proves to be quite enjoyable as she slides inch after inch of it into you, making your [if cunts of player > 0]hips buck[else]ass wriggle[end if] as you're filled with latex cock.";
	if cunts of player > 0:
		say "     Yolanda takes her time fucking you with the donkey toy, clearly enjoying every moment. As are you, your lustful body responding with increasing arousal while wondering how the real thing would compare. With the state of the city, you can probably find some suitable critter to scratch that itch, your nanite-confused mind finding the idea very appealing right now.";
		say "     The raven, as if knowing your thoughts, chides you. 'Look at you - so hot and bothered by a toy. You'd bend over for any stud with a cock like this, wouldn't you? I knew you were nothing but a horny slut,' she says, though she doesn't really seem particularly displeased, playing with her own pussy while saying this.";
		say "     Yolanda fucks you through a few minor orgasms before revving up for a big one. As it hits, she drives the foot-long animal dildo [if cunt length of player < 12]as deep as it can go[else]fully into you[end if], pumping it with short but rapid thrusts. This drives your orgasm to even greater heights and you cry out loudly. Your well-stuffed cunt gushes with juices[if cocks of player > 0] while your cock[smn] blast[smv] your hot load[else], clamping down around the donkey schlong[end if]. As your orgasm wanes, the raven slides the toy quickly from you, stuffs it down her throat and sucks your juices from it while frigging herself to a tail-shaking climax.";
		say "     With her own fun over, she lowers you down, letting you flop out on her nest to recover. You bask in the post-orgasmic haze, idly wondering what other delights your avian friend has in store for you even as you lightly finger your still-gaping pussy.";
	else:
		say "     While Yolanda may start off slow, she rapidly picks up the pace as soon as your back door can take it. This has you panting and moaning throughout the fucking, your lustful body responding with increasing arousal. As is the raven, it seems, savouring your reaction and altering her motions to get you even more worked up. You start to wonder how the real thing might compare. Given the state of the city, you may very well find some suitable critter to scratch that itch, your nanite-confused mind finding the idea very appealing right now.";
		say "     The raven, as if knowing your thoughts, chides you. 'Look at you - so hot and bothered by a toy. You'd bend over for any stud with a cock like this, wouldn't you? I knew you were nothing but a man-slut,' she says, though she doesn't really seem particularly displeased, playing with her dripping pussy while saying this.";
		say "     With Yolanda's donkey toy pounding at your prostate like that, it doesn't take too long for her to have you revving up for a big orgasm. Seeing it coming, she drives the foot-long animal dildo fully into your stretched hole, [if scalevalue of player < 3]completely [end if]stuffing your bowels with it. You cry out and cum hard, blasting your [cum load size of player] load into her waiting beak. She swallows [if cock width of player > 15]as much of it as she can manage[else]it down[end if] with a satisfied 'Mmmm' while fingering her pussy wildly. She is overcome with a tail-shakingly good climax that has her caw with delight.";
		say "     With her own fun over, she lowers you down, letting you flop out on her nest to recover. You bask in the post-orgasmic haze, idly wondering what other delights your avian friend has in store for you even as you rub your sore ass and its delightfully stretched hole.";


to say yolandasex04_default:
	say "     'A little too much for you, is it? Alright then,' she says with disappointment as she reaches in for something else. 'We'll go with something more basic.'  In her talons is a clear purple dildo filled with glitter and a [one of]black[or]red[or]pink[as decreasingly likely outcomes] strap-on harness. Once connected and strapped around her waist, the raven rises to stand more upright and moves in on you. Putting her hidden hands on your legs, she lifts and spreads them while bringing the latex phallus to your [if cunts of player > 0]pussy after a light feather teasing of your folds[else]anus after applying a little lube[end if]. With a firm grip on your thighs, she drives the false penis into your [if cunts of player > 0]juicy[else]tight[end if] hole.";
	say "     She takes it slow for the first few thrusts, but quickly picks up the pace. She's raised you up to just the right height to be able to lift you up and then let you slip back down onto the toy. She nips at you with her beak while fucking you, pecking at your neck, sides and nipples. You're given a good, long ride on the thrusting toy, Yolanda switching positions and pace a few times to make sure you both are thoroughly satisfied. By the time she's ready for a final, strong orgasm, she bounces you hard and fast pushing you over the edge into a much-needed climax of your own[if cunts of player > 0]. Your quivering cunt clenches and squeezes around the false penis as pant and moan with sexual delight[else]. Your well-fucked rectum clenches and spasms around the false penis as you pant and moan with sexual release[end if][if cocks of player > 0 and cunts of player > 0]. The pleasure overload from your vagina soon extends to your penis[esmn] and you blast gooey streaks of your seed both across her black feathers and your [bodytype of player] chest. In addition, your well-fucked cunny gushes with juices, soaking both your crotch and the bird's strap-on[else if cocks of player > 0]. The feel of it pressing against your prostate sends waves of pleasure through your cock[smn] and you blast gooey streaks of your seed both across her black feathers and your [bodytype of player] chest[else]. Your well-fucked vagina gushes with juices, soaking both your crotch and the bird's strap-on[end if].";
	say "     After the orgasm, Yolanda needs a few moments to recover before lowering you back to the floor and undoing the restraints holding you. You ache from being suspended up like that for so long, but it's a good kind of ache, one shared by your thoroughly pounded hole[if cocks of player > 0] and spent shaft[smn][end if]. She lazily cleans the toy she used on you[if cunts of player > 0], first by licking it clean before giving it a proper clean-up[else], taking her time to do a good job so it's ready for the next time she wants to use it[end if].";


to say yolandaspecial01:
	say "     Yolanda's eyes lock onto the golden coin when you pull it out. 'That's very pretty. Pirate gold, you claim? It's probably some movie prop you found - worthless junk. Still, it wouldn't look bad in my collection,' she says, making a snap for it with her beak, narrowly missing. 'Alright, we'll trade for it. I'll let you take a turn on top if you'll give it to me.'  With sex on the brain, you agree to the trade.";
	if cocks of player > 0:
		say "[yolandaspecial01m]";
	else:
		say "[yolandaspecial01f]";
	now yolandatreasure is true;

to say yolandaspecial01m:
	say "     The raven turns herself around and raises her tailfeathers. You're given a good view of her dark-skinned pussy nestled in her feathers. While tossing aside your gear, she wags her rear end enticingly, helping you to get hard. Soon you're ready to go and move in behind her, lining up your shaft with her cloacal cunny. You run your hands through her soft feathers as you sink your [cock of player] shaft into her slick hole[if cock length of player > 24]. Given your immense size, she's quite tight and you tease that she'd best be prepared to become one well-stuffed bird[else if cock length of player > 12]. Given your large size, she's quite snug and you tease that she'd best be prepared become a stuffed bird[else]. You slide easily into her warm cloaca[end if], to which she responds with a sharp caw.";
	say "     Sinking fully into her, you press yourself against her midnight plumage. Soft and smooth to the touch, you caress and pet her coat while fucking her zealously. Despite her preference to be the one on top, she seems to be quite enjoying her turn on the bottom, releasing soft caws and moans as you pound away. Her inner walls are flexible, but strong, allowing you to thrust easily into her, but then gripping and squeezing tightly at your manhood once inside her. The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";

to say yolandaspecial01f:
	say "     The raven plucks out one of her strap-ons and offers it to you before turning herself around and raising her tailfeathers. You're given a good view of her dark-skinned pussy nestled in her feathers. While tossing aside your gear, she wags her rear end enticingly, silently urging you to get ready quickly. Adjusting the straps, you find the toy she's given you has a mini-vibrator on your end to stimulate your clit while wearing it. Turning it on low to start, you move in behind her and line up the rubber shaft with her cloacal cunny. You run your hands through her soft feathers as you sink the false shaft into her slick hole, to which she responds with a sharp caw.";
	say "     After a few test thrusts, you sink fully into her, pressing yourself against her midnight plumage. Soft and smooth to the touch, you caress and pet her coat while fucking her zealously. Despite her preference to be the one on top, she seems to be quite enjoying her turn on the bottom, releasing soft caws and moans as you pound away. The sensation from the vibrating stimulator is accentuated by the thrusts you make, being pressed firmly against your clit when you push into her. The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";


to say yolandaspecial02:
	say "     Yolanda tries to appear disinterested when you first reveal the jewelry box to her, but you can see the gleam of interest in her eye. 'Oh, a jewelry box. I've already got a few of those,' she says, motioning to a few scattered among her collection of shiny objects. 'But I guess another one wouldn't hurt. I'll just set it here and you can have a little fun as a reward. How does a turn on top sound to you?'  She turns around and raises her tailfeathers and she puts her new acquisition in the center of her collection, giving you an enticing view of her cloacal cunny as she does. With thoughts of sex clouding your judgment, you agree to the trade - as long as you can take her on her back. Eager to get the ornate box and its shiny contents for her collection, she agrees with little reluctance.";
	if cocks of player > 0:
		say "[yolandaspecial02m]";
	else:
		say "[yolandaspecial02f]";
	now jbfound is 3;

to say yolandaspecial02m:
	say "     As requested, the raven rolls onto her back a bit clumsily. With her spindly avian legs in the air, she makes a come-hither motion with her talons. You're given a fine view of her damp pussy nestled in her feathers. You toss aside your gear as quickly as you can, quickly growing hard at the sight of the black beauty on display for you. You run your hands through her soft feathers and sink your [cock of player] shaft into her slick hole[if cock length of player > 24]. Given your immense size, she's quite tight and you tease about how you're looking forward to stuffing the sexy bird until she's full[else if cock length of player > 12]. Given your large size, she's quite snug and you tease her about how you're looking forward to stuffing the sexy bird[else]. You slide easily into her warm cloaca[end if], to which she responds with a sharp caw.";
	say "     Sinking fully into her, you lean overtop of the raven and run your hands through her soft feathers, rubbing the bird's chest as you gently hold her down while fucking her zealously. Despite her preference as the one topping, she's certainly enjoying her turn on the bottom and being pinned on her back makes it even kinkier for your avian lover. She releases soft caws and moans as you pound away, her thin legs waving in the air as you thrust. Her inner walls are flexible, but strong, allowing you to thrust easily into her, but then gripping and squeezing tightly at your manhood once inside her. The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";

to say yolandaspecial02f:
	say "     Yolanda selects a ridged dildo to be mounted on the strap-on harness she provides you. The toy is a deep blue in colour and eight inches long. After tossing aside your gear quickly, you make a show of teasing it across your own juicy folds as the raven rolls onto her back a bit clumsily. With her spindly avian legs in the air, she makes a come-hither motion with her talons. You're given a fine view of her damp pussy nestled in her feathers while you put on the harness. This one comes with a short dildo on your end to slip into your vagina while you wear it. Now ready to go, you run your hands through her soft feathers and sink the ridged rod into her slick hole. You take your time mounting her, popping one ring after the other into her, enjoying each little caw she makes as you push what must be one of her favourite toys into her cloacal cunny.";
	say "     After sinking fully into her, you lean overtop of the raven and run your hands through her soft feathers, rubbing the bird's chest as you gently hold her down while fucking her zealously. Despite her preference as the one topping, she's certainly enjoying her turn on the bottom and being pinned on her back makes it even kinkier for your avian lover. She releases soft caws and moans as you pound away, her thin legs waving in the air as you thrust. Her inner walls are flexible, but strong, allowing you to thrust easily into her, but then gripping and squeezing tightly at the ridged toy once inside her. This causes it the short dong inside you to shift and slide, ensuring you receive your due pleasure as well. The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";


to say yolandaspecial03:
	say "     At first, Yolanda seems disinterested in the jingly set of keys you pull out. 'Oh, that's no big deal. I've already got plenty of key rings. They're shiny, but nothing special. I have enough of them.'  Showing her the small raven figurine attached to it does get her to give them a second look though. 'Hmmm... that's interesting at least. I guess it's not so bad. I can put some of my shinier keys on it and get rid of the ones that aren't so pretty. I guess you deserve a little reward for it. I'll let you fuck me, but I'm still going to be top for this one.'  Feeling that's an adequate trade, you agree and toss the keys and fob onto her collection.";
	if cocks of player > 0:
		say "[yolandaspecial03m]";
	else:
		say "[yolandaspecial03f]";
	now yolandakeyfob is false;

to say yolandaspecial03m:
	say "     The raven motions with one wing for you to get down on the cushions. You toss aside your gear and flop out on the bird's plush nest. This gives you a good view between her legs as she strides overtop of you, her dark-skinned pussy nestled in her feathers. Using one of her avian feet, she takes hold of your cock and gives it a few strokes to make sure it's good and hard for her before lining herself over it. As she settles atop you, you bring your hands to her feathered body even, holding her as she sinks down onto your [cock of player] shaft[if cock length of player > 24]. Given your immense size, she's quite tight and she takes her time settling into place on your throbbing roost[else if cock length of player > 12]. Given your large size, she's quite snug and she eases herself into place on your throbbing roost[else]. She slides easily into place on your throbbing roost[end if] with a caw of delight.";
	say "     Nestling down onto your pulsing rod, she stays like that for a little while, just wriggling her hips lightly over you to keep you hard. You moan and run your fingers through her dark feathers, finding them soft and smooth to the touch. After a little while, she starts riding your cock, bobbing her avian body to slide her hot pussy over your manhood. Despite her preference to be the one doing the fucking, she seems to be quite enjoying having her cloaca stuffed, releasing soft caws and moans as she rides you. Her dominant streak comes through as she nips at you with her beak, grinding down onto you harder as she does. Her inner walls are flexible, but strong, allowing her to ride your rod easily, but then gripping and squeezing tightly at your manhood once inside her. The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";

to say yolandaspecial03f:
	say "     The raven motions with one wing for you to get down on the cushions while rooting through her box of toys. You toss aside your gear and flop out onto the bird's plush nest only to have her drop a strap-on harness and toy into your lap. Putting it on and securing the dildo, you end up with a phallic perch for the lustful bird. As she settles atop you, you bring your hands to her feathered body even, holding her as she sinks down onto your faux cock with a caw of delight.";
	say "     Nestling down onto the strap-on, she stays like that for a little while, just wriggling her hips lightly over it, roosting on the latex toy. Feeling the textured pad of the harness rub against your folds as she does this, you moan and run your fingers through her dark feathers, finding them soft and smooth to the touch. After a little while, she starts riding the toy, bobbing her avian body to slide her hot pussy over it. Despite her preference to be the one doing the fucking, she seems to be quite enjoying having her cloaca stuffed, releasing soft caws and moans as she rides you. Her dominant streak comes through as she nips at you with her beak, grinding down onto you harder as she does. Her inner walls are flexible, but strong, allowing her to ride the dildo easily, but then gripping and squeezing tightly at it once inside her. This allows her to grind the harness against your pussy and clit by rocking her avian hips down firmly against yours. The two of you go at it like this for some time, eventually culminating in a sticky release that leaves you both flopped out in her nest and panting heavily.";

to say yolanda+domicarus01:
	setmonster "Blue Chaffinch";
	let avpred be false;
	if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
		now avpred is true;
	let temppronoun be "him";
	if cunts of player > 0:
		now temppronoun is "her";
	say "     You suggest to the raven that Icarus might enjoy joining in. 'Are you becoming that much of a perv that you need the two of us to satisfy you?' she caws in amusement. She gives another call, this one to Icarus to bring the passarine over. Quickly leaving the rafters, he flies over to join in on the fun. Even as Yolanda's going over to check her toy collection for some accessories, he pushes you down onto the soft nest and spreads your legs.";
	say "     '[if avpred is true]Is our subby predator looking for a proper fucking?' he asks teasingly. Rather than wait for a response, he grinds his hard cock against you and nips down hard on your neck. 'Time for you to show us what a slutty hen you are again.'  With that, he shoves you over onto all fours and moves to mount you[else]Is our subby plaything looking for a proper fucking?' he asks teasingly. Rather than wait for a response, he grinds his hard cock against you and gives your shoulder a nip. 'Time for you to show us what a slutty hen you can be.'  With that, he guides you over onto all fours and moves to mount you[end if]. As he thrusts into your [if cunts of player > 0]juicy cunny[else]tight ass[end if], Yolanda is there to guide the passarine's cock into you while watching eagerly. And once in, the horny songbird fucks you gently at first.";
	say "     This self-restraint is only short-lived, as he is only holding back long enough for Yolanda to enclose your hands in leather mitts shaped like hooves and to strap a harness and reins onto your head. Tugging firmly on those reins, she pulls your head into her crotch, pressing your face to her cloacal pussy. Getting a nod from her, Icarus lets himself pound away at you hard and fast, nipping [if avpred is true]firmly [end if]at your shoulder as he does. That initial hard thrust drives you all the harder against the raven's loins and causes you to moan, resulting in some of her juices wetting your lips and running into your mouth. Having gotten a taste of her, you dive in for more, your tongue working across and past those quivering folds to lap up her juices in an effort to please the dominant femme.";
	say "     Between the mitts enclosing your hands, the harness holding your head in place and the bird pounding you from behind, you can do little else. Not that it isn't enjoyable; having no control in the situation is actually quite arousing. The feel of Icarus's stiff cock pushing into you, spreading your inner walls while Yolanda's juices fills your sense of smell and taste has you moaning for more. You push your hips back as best you can and work your [if cunts of player > 0]vaginal[else]anal[end if] muscles around that throbbing prick. He calls you a slut again and you can't help but feel he's right given how much you want to feel the birdie's hot seed in you.";
	say "     This intense session goes on for some time, the passarine atop you holding back as long as he can to draw it out. Yolanda's in the throws of her second orgasm from your overeager tonguework by the time the songbird [if avpred is true]bites down onto your shoulder hard again[else]gives out a musical cry[end if] moments before he cums. He pumps a larger than normal load of sticky bird semen into your [if cunts of player > 0]sopping cunny in an effort to breed you[else]quivering asshole, painting your prostate[end if]. He continues to pound into you, maybe even harder than before, as he drains his balls into you. Your well-used hole is left gaping and dripping with white goo by the time he pulls out. He pushes your worn body aside and you roll over onto the padded nest while he moves past you to share a beak nuzzle and lick with the raven before leaving as quickly as he came.[ovichance]";
	now lastfuck of Icarus is turns;


to say yolanda+domicarus02:
	setmonster "Blue Chaffinch";
	let avpred be false;
	if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
		now avpred is true;
	let temppronoun be "him";
	if cunts of player > 0:
		now temppronoun is "her";
	say "     You ask the raven if she might enjoy having Icarus come join you. 'Oh? So you're feeling the need for some proper disciplining?' she caws with amusement. She motions for Icarus to come over, the passarine having already been watching from his perch in the rafters. He takes his time in coming over, strutting across the rafters with a confident grin on his beak. By the time he's arrived and has pushed you down onto the nest of cushions, Yolanda's picked out some toys from her collection to use.";
	say "     But before you can see what she's got planned, the small songbird presses his avian foot down onto your face. 'Well what have we here?' he chirps with amusement. '[if avpred is true]It seems our predator plaything needs a double-teaming to satisfy [temppronoun] - what a slut.'  He grinds his foot down onto your beak firmly. 'Lick it, my slutty hen,' he orders and you comply, opening your beak and running your tongue across those scaled toes of his[else]It seems our plaything needs a double-teaming to satisfy [temppronoun]. This should be fun.'  He presses his foot down onto your face. 'Lick it, you slut,' he orders and you comply, parting your lips and running your tongue across those scaled toes of his[end if].";
	say "     Taking his bird foot in hand, you start to caress it while tonguing his toes when you feel Yolanda's taloned hands grip your hips. Boosting you up, you feel her feathery hips slide between your legs as she spreads them. 'Mmmm... now that's quite the sight. While you keep our plaything in [if cunts of player > 0]her[else]his[end if] place, I'll get [temppronoun] warmed up on this end for you,' she says. You feel the cool touch of a [if cunts of player > 0]strap-on brush against your wet folds[else]lubed strap-on brush against your tight pucker[end if]. You moan around the taloned toe you're presently sucking on when she thrusts that toy into you, its subtle ridges making your hips quiver and your arousal climb higher.";
	say "     Icarus chuckles and starts stroking his stiff little cock as he watches the show. And any time your tonguework wanes because of the skillful fucking you're receiving, he [if avpred is true]grips your beak in his talons and presses down on your head firmly[else]presses his foot down as a firm reminder[end if]. With the two dominant avians amusing themselves with your body, you can't help but be turned on, enjoying feeling like the subby slut they proclaim you are. This drives you to work harder to please them, moaning for Icarus to give you his other foot to clean even as you push back into Yolanda's thrusts. It eventually gets to be too much and you end up cumming, [if cocks of player > 0]spraying your hot load across yourself[else]crying out[end if] as your [if cunts of player > 0]hot juices soak the thrusting dildo inside you[else]asshole clenches and squeezes around the thrusting dildo inside you[end if]. She rides you hard through your orgasm until you're left panting and weak.";
	WaitLineBreak;
	say "     It's at this point that she pulls out and switches with Icarus. The blue passarine takes his position between your legs and drives his long-ready cock into your [if cunts of player > 0]slick and stretched[else]stretched[end if] hole. He plunges in easily and starts pounding you. The strap-on Yolanda's used was comparable to his size, so it sheathes nicely into your readied [if cunts of player > 0]cunny[else]ass[end if]. He is [if avpred is true]considerably [end if]less gentle than Yolanda was, but since you just came recently, the added vigour helps to get you worked up again in short order.";
	say "     Yolanda doesn't sit things out though. Having removed the strap-on she was using, she resumes her usual avian posture and sits atop your face. Buried in her ebon feathers, you're surrounded by the hot and wet scent of her aroused cloacal pussy. She grinds down onto your [if avpred is true]beak[else]head[end if] and you dive in, licking across and into those juicy folds. She gives an excited caw as you eat her out, just what her cunt needs after [if cunts of player > 0]fucking[else]pegging[end if] you.";
	say "     This second round doesn't last as long as the first, both dommy birds in need of release after the first round. Icarus finishes first with a musical cry, pumping several shots of passarine seed into your well-fucked hole. The feel of the little guy's hot, virile seed shooting into you makes you moan in lustful excitement and dive your tongue deep into the raven atop you. A few final wriggles of your tongue is all it takes at this point to put her over the edge and soon Yolanda's cawing out in orgasmic delight. Having them both get off in quick succession is enough to push your arousal over the top as well and you cum again. This second orgasm leaves you thoroughly exhausted and unable to resist when the finish up by wiping off their cock and strap-on across your well-used body.[ovichance]";
	now lastfuck of Icarus is turns;

to say yolanda+domicarus03:
	setmonster "Blue Chaffinch";
	let avpred be false;
	if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
		now avpred is true;
	say "     Asking if it would be alright for Icarus to come join you, Yolanda smiles at the corner of her beak. 'Oh, are my toys not enough for you? I will simply have to try harder,' she caws, laughing as she waves a black wing to the watching passarine. He flies over as the raven snatches some leather straps from her collection. She passes them to the blue bird when he lands next to you, who nods with a grin of his own.";
	say "     Icarus grabs you by the wrists and shoves a joined pair of leather mitts over them. The laces are tightened and the straps secured, locking your hands inside them. Next comes a spreader bar for your legs, cuffed around each ankle. The final piece comes in the form of a ball gag that gets stuffed into your mouth and strapped behind your head. The mitts encasing your hands get attached to a cable going through a ring in the ceiling and the bar is attached to at the floor. The two birds raise you up slowly until you're suspended with your arms upright and your legs spread and immobilized.";
	say "     During this period of trussing you up, the two birds have been rubbing your aroused body and nipping at you. By the time they're finished, you're quite turned on. And while Yolanda looks like she might want to take her time, Icarus is eager to get into it. Moving up behind you, the aggressive songbird moves up behind you and grinds his erect cock against your rear. He leaves streaks of precum on your ass as he gets lined up, then thrusts [if avpred is true]hard [end if]into your [if cunts of player > 0]cunt[else]asshole[end if].";
	say "     Yolanda watches the show for a little while before moving around to the front. She brings her wingtip to your crotch, letting her feathers brush across your [if cocks of player > 0][cock of player] cock[smn], making [itthemm] twitch and throb[else]pulsing clit[sfn] and spread folds, making them quiver[end if]. You moan at this teasing touch and try to grind forward into it for further sensation, but the lustful passarine's grip is firm and your restraints leave you unable to move much at all. You moan again, louder, but the gag keeps you from begging for her to [if cocks of player > 0]jerk you off[else]finger you[end if] properly.";
	say "     'That feels good, doesn't it?' she teases. 'You want more, don't you?'  You nod eagerly and she smiles, continuing with those light, feathery touches. Your needy moans and whimpers please the dominant birds and they keep it up like this. Icarus savours fucking you by taking an unusually leisurely pace with it[if cunts of player > 1] and changing from one pussy to another[end if], ensuring you're outright aching with need as the session goes on. They even stop partway, leaving you hanging there while the two of them make out right in front of you while your [if cocks of player > 0 and cunts of player > 0]cock[smn] stand[smv] rock hard and drooling and your now-vacant cunt[sfn] leak[sfv] juices down your legs[else if cocks of player > 0]cock[smn] stand[smv] rock hard and drooling[else]now-vacant cunt[sfn] leak[sfv] juices down your legs[end if]. They nip playfully at one another while rubbing each other's loins in a lewd display.";
	WaitLineBreak;
	say "     Thankfully, when they get back to you after what seems an eternity to you, Icarus is quite worked up and throws himself into fucking you hard and fast. [if avpred is true]As he digs his taloned hands into you and pounds you from behind[else]As he pounds you from behind[end if], your muffled moans only seem to egg him on further. And at this point, that's exactly what your aching body needs. Yolanda moves in and [if cocks of player > 0]puts a hidden hand on your pulsing cock and strokes it[else]presses a wing to your crotch so she can rub her hidden hand over your clit[sfn] and puss[yfn][end if] while the passarine fucks you senseless.";
	say "     You cry into the gag stuffing your mouth as you orgasm, your hot hole squeezing down on the chaffinch's thrusting member[if cocks of player > 0]. Blast after blast of your pent-up seed shoots onto Yolanda's feathery wing as she plays with your spurting cock[else]. Yolanda rubs at your clit and your wet folds as they quiver around the hard cock stuffed into you[end if]. With a musical cry, Icarus thrusts as deep as he can into you and unloads shot after shot of his gooey bird semen [if cunts of player > 0]into your vagina in an instinctual effort to breed you[else]into your bowels as a show of sexual dominance[end if]. Your climax seems all the stronger and more fulfilling after its long denial. Thus sated and claimed by the birds, you pant, worn and immobile, as the songbird's sperm leaks slowly out of you. They even leave you strung up like that for some time before finally letting you down onto the cushions. You're left sore and aching from your extended bondage, but it is an oddly pleasant one as well, an added reminder of the wonderfully satisfying session.[ovichance]";
	now lastfuck of Icarus is turns;
	follow the turnpass rule;


Section 4 - Events

jbfound is a number that varies.

Jewelry Box is a scavevent.
when play begins:
	add Jewelry Box to badspots of girl;
	add Jewelry Box to badspots of furry;

Instead of resolving a Jewelry Box:
	say "     While searching some abandoned homes in the hopes of finding something of use, you discover that this one isn't quite as abandoned as you'd assumed. Emerging from a side room, a creature appears.";
	let T be a random number between 1 and 5;
	if T is 1:
		challenge "Female Husky";
	else if T is 2:
		challenge "Harpy";
	else if T is 3:
		challenge "Lizard Girl";
	else:
		fight;
	if fightoutcome >= 10 and fightoutcome <= 19:			[player won]
		say "     Defeating and driving off the mutant, you check to make sure nothing else has been attracted by the noise before giving the remainder of the house a quick search. Unfortunately it seems that someone (possibly your recent opponent) has already consumed any supplies that were here.";
		if jbfound < 2:
			say "     While performing your search, you do come across something of interest though. In the master bedroom, you find a jewelry box on the dresser. It is quite ornate, which is what catches your eye at first. Checking inside, you find several rings, earrings and necklaces - some even with pearls or gemstones. Feeling a little greedy and making the excuse that the owner's either infected or dead, you tuck it into your pack and head out.";
			now jbfound is 2;
		now Jewelry Box is resolved;
	else if fightoutcome >= 20 and fightoutcome <= 29:	[player lost]
		say "     After your defeat and the consequences thereof, you stagger out of the house, giving up on scavenging for the moment. You make your way back to someplace more familiar and safer to rest and recover.";
	else:									[player fled]
		say "     After making your escape, you give up on scavenging for now and head back to safer territory to rest and recover.";


Raven Key Fob is a scavevent. Raven Key Fob is resolved.

Instead of resolving a Raven Key Fob:
	say "     Hoping to find some supplies, you check through some cars in the street. From the looks of it, the drivers either abandoned their vehicles or (in the case of a few) transformed while inside them. In the latter, you find scraps of clothes and messy, musky stains, but little of use. You start to suspect some enterprising survivor or hungry mutant has already gone through these vehicles when you get lucky and find one that still has a small backpack in the passenger's seat. Opening it up, you go through it and find an assortment of stuff you don't need, but also a bottle of water. You're about to take it and go when you notice that the keys are still in the ignition. You decide to give it a shot, but find the car completely dead. The key fob does catch your eye though, being a shiny black bird about two inches long. You grab it and stuff it away in a pocket of your backpack, thinking Yolanda the raven might like it.";
	now yolandakeyfob is true;
	increase carried of water bottle by 1;
	increase score by 5;
	now Raven Key Fob is resolved;


Section 5 - Yolanda and Icarus

instead of going up from Grey Abbey Library while ( Icarus is in Grey Abbey Library and HP of Icarus >= 3 and HP of Icarus < 50 ) and ( Yolanda is in Grey Abbey 2F and HP of Yolanda is 7 ) and lastfuck of Yolanda is not turns and lastfuck of Icarus is not turns and ( cocks of player > 0 ):
	say "     As you're coming up the stairs, you can hear the excited caws of Yolanda. Curious, you go to check on her and find her in lustful play with Icarus. Sitting atop him in avian posture, she's got your passarine pet tied up with his tail raised and her strap-on buried in his ass. She's even put something akin to a combination bird hood and ball gag onto him. Seeing you there, her first response is to give a few hard thrusts into this feathery bottom, drawing out some muffled chirps from his muzzled beak.";
	say "     [bold type]Giving him a firm nip on the neck, she pauses, as if waiting to see if you'll come join them or leave.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Join them.";
	say "     ([link]N[as]n[end link]) - Leave.";
	if the player consents:
		move player to Grey Abbey 2F;
		let avpred be false;
		if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
			now avpred is true;
			say "     'It seems your incessant chirping's caught the attention of another predator, you foolish songbird,' she says, giving him another hard nip and thrust. 'And after I went to all the trouble of hooding you and everything. I guess you're really in for it now, slut.'  Icarus shivers with excitement beneath her as she gets all the rougher with him.";
		else:
			say "     'It seems we've got company, my little birdie toy,' she says, giving him another nip and thrust. 'I know you can't greet our host properly with your beak full, so you'd best make it up to him in another way, slut.'  Icarus releases a muffled moan as she makes another meaningful thrust into his bottom.";
		say "     Beside the pegging pair now, you reach under the blue bird to fondle his erect member while the raven continues thrusting into him. Pleased to see how hard Icarus is at the treatment he's getting and the prospect of fun with the two of you, you give his small manhood a few strokes. Yolanda moves off of him, slowly easing the dildo from his rear, ceding the position to you[if avpred is false] while applying some fresh lube to the toy[else] after giving him another harsh nip[end if]. You move atop him, taking her place and filling his readied hole with your [cock of player] cock.";
		say "     You give the masochistic songbird a [if avpred is true]firm bite on his shoulder[else]firm swat on his rear[end if] as you drive your [cock size desc of player] cock into his well-prepared hole. After a few warm-up thrusts, you grab his ass with both hands and drive [if avpred is true]hard[else]firmly[end if] into him[if cock length of player > 30]. Your pulsing rod throbs inside the little guy, stuffing him so delightfully full that you're making a big bulge of ruffled feathers from your oversized phallus plowing into him[else if cock length of player > 20]. Your pulsing rod throbs inside the little guy, stuffing him so full that you're giving him a small bulge of puffed feathers from your enlarged phallus inside him[end if]. You [if avpred is true]taunt[else]tease[end if] him about what a little cock slut he is, even raising his tail for a strap-on. From the wiggle his but gives, you can tell the tied-up bird's enjoying this mistreatment at both your hands.";
		say "     You ride him until you feel your climax approaching and then switch off with Yolanda. The raven, having enjoyed the show, eagerly retakes her position atop the blue songbird and resumes pegging him[if cock length of player > 20]. She makes up for the size difference between her toy and your [cock size desc of player] schlong through skillful thrusting and experienced manipulation of the straps and harnesses on the bird[else]. She takes a different approach, using more skillful thrusting and experienced manipulation of the harnesses on the bird[end if]. You and Yolanda continue to switch in and out, having your way with Icarus repeatedly. It is hard to tell which of his [if avpred is true]rough [end if][']studs['] he enjoys more from his muffled noises and attempts to push back into your thrusting.";
		say "     Eventually you grow tired of holding back and drive yourself fully into him with an orgasmic [if avpred is true]shriek while digging your talons in[else]cry while gripping his feathery bottom tightly[end if]. Icarus shivers beneath you in a mix of terror and excitement, his tight tailhole tensing around you, increasing your lust to stuff it[if cock width of player > 35]. And stuff him you do, pumping the whole of your [cum load size of player] load into the poor songbird, overfilling him to the point that some of your semen leaks messily from the breathing holes in the mask. His body is left rounded like a feathery balloon from it all[else if cock width of player > 25]. And stuff him you do, pumping the whole of your [cum load size of player] load into the poor songbird. You leave him so overfilled that his body is left rounded like a feathery balloon from it all[else if cock width of player > 15]. And stuff him you do, pumping the whole of your [cum load size of player] load into the poor songbird. This leaves him so full that he's left somewhat chubbier looking than before, his belly stuffed quite full with your seed[else]. You pump your [cum load size of player] load into the poor songbird, painting his insides with your seed[end if]. But it is not over for the abused birdie, for Yolanda moves in to stuff his creamy hole with her strap-on, pushing herself to a second and stronger orgasm as she messily pounds your [if avpred is true]mutual prey plaything's[else]shared plaything's[end if] cum-filled ass. Once she's done, she swaps the dildo in his rear for a [if cock length of player > 20]large [end if]buttplug and leaves him tied up like that. Knowing that she'll let him go... eventually, you give his achingly abused bottom a [if avpred is true]final swat[else]playful squeeze[end if] before heading off, leaving him to enjoy his bound and filled state.";
		now HP of Yolanda is 9;
		follow the turnpass rule;
	else:
		say "     While this outcome's not at all unexpected, you'd prefer to keep your fun with them as one-on-one time. You nod to Yolanda to continue and head back down the stairs, leaving her to her fun. As you descend, you can hear the raven's excited cawing starting up again along with some muffled chirps of pained delight from the songbird. Perhaps you'll come back later for some one-on-one time with your avian lovers later.";
		now HP of Yolanda is 8;

an everyturn rule:
	if player is in Grey Abbey Library and ( Icarus is in Grey Abbey Library and HP of Icarus >= 51 ) and ( Yolanda is in Grey Abbey 2F and HP of Yolanda is 7 ) and lastfuck of Yolanda is not turns and lastfuck of Icarus is not turns and ( cocks of player > 0 or cunts of player > 0 ) and skipturnblocker is 0:
		let avpred be false;
		if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
			now avpred is true;
		say "     Hearing some soft rustling from the rafters, you glance up to see Icarus and Yolanda - who've been squabbling of late - conspiratorially close. From the cold, avian stares they're giving you, you can tell they're planning something for you. If dealing with the two of them at once seems like too much, you'd best leave now.";
		say "     [bold type]Shall you stay and see what these dominant birds have in mind or shall you escape back into the bunker until they turn their attention elsewhere?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay.";
		say "     ([link]N[as]n[end link]) - Escape back to the bunker.";
		if the player consents:
			say "     Finding yourself in the mood for some fun and wondering just what the duo have in mind, you set your pack aside and pose in a provocative manner. Icarus gives a chirping wolf-whistle and the pair come down, moving to either side of you. It's then that you notice that Yolanda has a small satchel of what appears to be some choice pieces from her kink collection in her talons. You look between them as they move in closer and coquettishly ask them what's on their minds while leaning back against the table behind you.";
			if cunts of player > 0:
				say "     Icarus's response is to push you back onto the table[if avpred is true] roughly[end if]. 'Well, Yolanda and I'd been discussing what to do about you, seeing how neither of us is much interested in being bottom for the other,' the little passarine says as he fondles you between the legs as he strips you down.";
				say "     'So we decided we'd just share you instead,' the raven continues, plucking out some straps from her bag. She runs these between your ankles and the table legs, forcing your legs apart and putting your [if cocks of player > 0]stiffening cock[smn] and [end if]juicy cunt[sfn] on display for the two birds. Your wrists are similarly bound to the other corners of the table, leaving you trapped and at their mercy[if avpred is true]. And from the way they're eyeing you over, they probably don't plan on being merciful[end if].";
				say "     Icarus guides his cock to your pussy and thrusts into you, causing you to moan and gasp at his overzealous penetration. Yolanda is ready and waiting for this, [if avpred is true]wrapping a bird hood made of leather over your face, stuffing your beak with the attached ball gag[else]stuffing a ball gag into your mouth. This is followed by her putting a leather mask across your eyes, blocking out your sight[end if]. With most of your senses blocked or muffled, this leaves your mind to focus on the rough fucking all the more... only to have it stop as the passarine's prick is withdrawn. You give a stifled groan of need as you're left empty and gaping.";
				say "     When you feel the touch of feathers at your crotch again, things are different. The feathers are a little rougher, that phallus touching you is harder and cooler, and its penetration more skillful. You give a moan as what must be one of Yolanda's toys is thrust into you, the raven now taking her turn topping you. Your cunt quivers and squeezes around the strap-on, not knowing the difference and only wanting to be fucked and filled. The aggressive passarine doesn't sit things out while the raven fucks you either, rubbing his erect member against your [if avpred is true]masked face and giving it a few meaty slaps[else]blindered face, drooling precum onto you[end if].";
				say "     Just as you're building to the point of release, Yolanda withdraws without warning, leaving you to moan with frustrated need. You can hear some quick flapping and soon Icarus is back between your legs, driving his avian prick back into you. His aggressive thrusting takes you a little while to adjust to after Yolanda's more sensual motions, thwarting you from achieving orgasm. And just as your body's about to go over the edge from the wild pounding of the passarine, he's switching off again. They continue to swap like this several more times, always denying you the powerful orgasm you're increasingly aching for[if cunts of player > 1]. They even fuck your different pussies on some goes, both ensuring you're fully fucked and making it harder for you to climax[end if]. All through this tag-team mating, you're peppered with [if avpred is true]sharp [end if]nips from their beaks.";
				say "     Eventually though, Icarus has had enough and [if avpred is true]sinks his talons into your hips as he keeps going until his release[else]grabs your hips roughly as he keeps going until his release[end if]. This is finally enough to push you over the top and you give a muffled cry of ecstasy, [if cocks of player > 0]cumming all over yourself as you do and [end if]soaking your crotch with female juices. You can feel shot after shot of avian seed being pumped into you even as the bird moans about how he's going to fill you with eggs[if player is impreg_now] the next chance he gets[end if]. He continues thrusting for another minute after he's spent, nipping at you and calling you his [if avpred is true]slutty hen[else]slutty plaything[end if].[ovichance]";
				say "     But things don't finish there, Yolanda taking one last turn atop you, pounding away at your creamy hole with a different dildo. This one feels like it's got a flatter head, possible horse-like, which pushes the chaffinch's semen deeper inside you and forcing more of it into your womb even as she fucks you to her eventual climax and you to another orgasm so quickly after the last one that you're left weak and dazed. You're left tied up and masked like this once they're finished with you, leaving you to imagine yourself messy and on display after your prolonged fucking. You are eventually released, but not until some time has passed and they've had plenty of time to enjoy the view of their handiwork from the bird's-eye view of the rafters above.";
			else:
				let humass be false;
				if tailname of player is "human" or tailname of player is "herm human":
					now humass is true;
				say "     Icarus's response is to[if avpred is true] roughly[end if] turn you around and push you face first down onto the table. 'Well, Yolanda and I'd been discussing what to do about you, seeing how neither of us is much interested in being bottom for the other,' the little passarine says as he fondles you between the legs as he strips you down.";
				say "     'So we decided we'd just share you instead,' the raven continues, plucking out some straps from her bag. She runs these between your ankles and the table legs, forcing your legs apart and putting your [if humass is false]altered [end if]ass on display for the two birds. Your wrists are similarly bound to the other corners of the table, leaving you trapped and at their mercy[if avpred is true]. And from the way they're eyeing you over, they probably don't plan on being merciful[end if].";
				say "     Icarus guides his cock to your back door and thrusts into you, causing you to moan and gasp at his overzealous penetration. Yolanda is ready and waiting for this, [if avpred is true]wrapping a bird hood made of leather over your face, stuffing your beak with the attached ball gag[else]stuffing a ball gag into your mouth. This is followed by her putting a leather mask across your eyes, blocking out your sight[end if]. With most of your senses blocked or muffled, this leaves your mind to focus on the rough fucking all the more... only to have it stop as the passarine's prick is withdrawn. You give a stifled groan of need as you're left empty and gaping.";
				say "     When you feel the touch of feathers at your crotch again, things are different. The feathers are a little rougher, that phallus touching you is harder and cooler, and its penetration more skillful. You give a moan as what must be one of Yolanda's toys is thrust into you, the raven now taking her turn topping you. Your asshole squeezes and pulls around the strap-on, not knowing the difference and only wanting to be fucked and filled. The aggressive passarine doesn't sit things out while the raven fucks you either, rubbing his erect member against your [if avpred is true]masked face and giving it a few meaty slaps[else]blindered face, drooling precum onto you[end if].";
				say "     Just as you're building to the point of release, Yolanda withdraws without warning, leaving you to moan with frustrated need. You can hear some quick flapping and soon Icarus is back between your legs, driving his avian prick back into you. His aggressive thrusting takes you a little while to adjust to after Yolanda's more sensual motions, thwarting you from achieving orgasm. And just as your body's about to go over the edge from the wild pounding of the passarine, he's switching off again. They continue to swap like this several more times, always denying you the powerful orgasm you're increasingly aching for.";
				say "     Eventually though, Icarus has had enough and [if avpred is true]sinks his talons into your hips as he keeps going until his release[else]grabs your hips roughly as he keeps going until his release[end if]. This is finally enough to push you over the top and you give a muffled cry of ecstasy, splattering your seed onto the floor as you cum hard. You can feel shot after shot of avian seed being pumped into you even as the bird moans about what a [if avpred is true]cock-slut hen[else]horny cock-slut[end if] you really are. He continues thrusting for another minute after he's spent, nipping at you and calling you his slutty plaything.[movichance]";
				say "     But things don't finish there, Yolanda taking one last turn atop you, pegging your creamy hole one last time with her strap-on. This final fucking pushes the chaffinch's semen further down into your bowels, spreading that warm, wet feeling even deeper. She screws your already aching hole until her eventual climax, leaving you weak and dazed. You're left tied up and masked like this once they're finished with you, leaving you to imagine yourself messy and on display after your prolonged fucking. You are eventually released, but not until some time has passed and they've had plenty of time to enjoy the view of their handiwork from the bird's-eye view of the rafters above.";
			now HP of Yolanda is 9;
			if avpred is true:
				decrease humanity of player by a random number between 4 and 8;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
				[humanity loss instead of infection]
			else:
				Icarusinfect;
			follow the turnpass rule;
		else:
			say "     You move hastily to the heavy door of the bunker and go inside. As you're closing the door, you can hear them start arguing again. From the sounds of it, they're each blaming the other for spooking you. While it sounds like their temporary team-up is falling apart, you decide it best to wait for it to fully dissolve before going back out there.";
			move player to Bunker;
			now HP of Yolanda is 8;


[ HP of Yolanda                      ]
[ 0 = Nothing                        ]
[ 1 = Talked w/her                   ]
[   + Raven Key Fob unresolved       ]
[ 2 = Had sex - no bondage           ]
[ 3 = Had sex - bondage              ]
[ 4 = Did not offer move             ]
[ 5 = Unsuccessfully offered move    ]
[ 6 = Successfully moved             ]
[ 7 = Talked/fucked since moved      ]
[ 8 = No pairing w/Icarus            ]
[ 9 = Paired w/Icarus                ]
[ 100 = lost                         ]

[ jbfound  = Jewelry Box             ]
[ 0 = Not found                      ]
[ 1 = -nothing-                      ]
[ 2 = Jewelry box found              ]
[ 3 = Jewelry box given to Yolanda   ]

[ yolandaqytat = Yolanda gave Qy'tat hint ]
[ yolandajb = Yolanda gave Jewelry Box hint ]
[ yolandatreasure = Gave Yolanda pirate gold ]

[ Notes:
other shinnies:
keys w/fob
pyrite (Museum)
light-up toy/ball (State Fair)
]

when play ends:
	if jbfound is 2 and humanity of player >= 10:		[Jewelry box ending add-on]
		say "     When you leave the city, you hang onto the jewelry box and its contents. Suspected of having looted it, you concoct a tale about how it was originally your great-grandmother's and eventually your mother's. She'd taken it with her when escaping her house, but ended up succumbing to the infection, taken down by some of those huskies. You fake a few tears and choke out that it's the only memento of your family you've got left. And while not everyone buys it, there is no real proof else and they've got much more important things to deal with than some jewelry. You do have to grease the occasional palm with something from the box, but you manage to keep most of it by the time you're released. It makes for a good source of starting cash as you try to get your new life started[if cunts of player > 0]. You even keep a few of the nicest pieces for yourself to wear[end if].";

[
when play ends:
	if HP of Yolanda > 1:
		say "***";
]

Yolanda ends here.
