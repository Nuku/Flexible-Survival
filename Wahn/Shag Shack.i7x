Version 1 of Shag Shack by Wahn begins here.

"Adds a brothel to the mall area of Flexible Survival."

Section 1 - Jerome

Jerome is a man.
The description of Jerome is "[JeromeDesc]".
The conversation of Jerome is { "Pay up!" }.
Jerome is in Shag Shack Entrance.

the scent of Jerome is "Jerome smells mainly of cheap aftershave, with a hint of fish underneath. He is a shark after all.".

To say JeromeDesc:
	if debugactive is 1:
		say "DEBUG -> hp of Jerome: [hp of Jerome], libido of Jerome: [libido of Jerome] <- DEBUG[line break]";	
	say "     Jerome is an anthro shark dressed in a snazzy business suit and with a Rolex watch on his wrist. As you look at him, the guy accepts various items from horny customers walking up to him with lustful intent - mostly clearly visible due to leading the way with hard cocks. After passing on the articles of food, drink and other valuables to a flunky, the shark nods to his wolverine guards and the eager John is allowed to go in and have his pick of the local 'talent'. Meanwhile, Jerome becomes aware of your attention and gives you a broad smile - filled with dozens and dozens of overlapping razor-sharp teeth - seemingly daring you to step up.";

Instead of conversing the Jerome:
	if hp of Jerome is 0:
		say "     'Hey there friend,' the grinning shark tells you in a very chummy and direct way. 'Come in, come in - only the best sluts for you to get your rocks off with. You can pay in food, clean water or a bottle of orc cum. Or if you want to get the special offer lifetime membership - bring us a new hot piece of ass and you can go in anytime you want! Its a bargain, believe me!'";
		increase hp of Jerome by 1; [got his initial spiel]
	otherwise:
		say "[JeromeTalkMenu]";
		
to say JeromeTalkMenu:
	say "[line break]";
	say "What do you want to talk with Jerome about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Try to get to know him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him about the price for entry again";
	now sortorder entry is 2;
	now description entry is "Ask the shark what he wants";
	[]
	if carried of water bottle > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Pay for entry with a bottle of clean water";
		now sortorder entry is 3;
		now description entry is "Hand a bottle of clean water to Jerome";
	[]
	if carried of food > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Pay for entry with some food";
		now sortorder entry is 4;
		now description entry is "Hand food to Jerome";
	[]
	if carried of orc cum > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Pay for entry with a bottle of orc cum";
		now sortorder entry is 5;
		now description entry is "Hand your bottle of orc cum to Jerome";
	[]
	if carried of orc cum > 0 and hp of Jerome is 1:
		choose a blank row in table of fucking options;
		now title entry is "Inquire about getting a lifetime membership";
		now sortorder entry is 6;
		now description entry is "Do you want to chat to Jerome about finding him a new whore";
	[]
	if hp of Jerome is 10: [lifetime member]
		choose a blank row in table of fucking options;
		now title entry is "Stroll in and have your pick of the 'talent'";
		now sortorder entry is 7;
		now description entry is "Get frisky with one of Jerome's 'entertainers'";
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
				if (nam is "Just chat a bit"):
					say "[JeromeTalk1]";
				if (nam is "Ask him about the price for entry again"):
					say "[JeromeTalk2]";
				if (nam is "Pay for entry with a bottle of clean water"):
					say "[JeromeTalk3]";
				if (nam is "Pay for entry with some food"):
					say "[JeromeTalk3]";
				if (nam is "Pay for entry with a bottle of orc cum"):
					say "[JeromeTalk4]";
				if (nam is "Inquire about getting a lifetime membership"):
					say "[JeromeTalk5]";
				if (nam is "Stroll in and have your pick of the 'talent'"):
					say "[JeromeTalk6]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro shark, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say JeromeTalk1: [chat]
	say "     As you try to enter a conversation with Jerome, the shark soon waves you off as he realizes you're not out to buy negotiable affections from his talent. Seems he's mainly interested in his own profit at the moment.";

to say JeromeTalk2: [prices]
	say "     The shark steps up close and gives you a very chummy smile as he says, 'You can pay in food, clean water or a bottle of orc cum. Or if you want to get the special offer lifetime membership - bring us a new hot piece of ass and you can go in anytime you want! Its a bargain, believe me!'";

to say JeromeTalk3: [pay with food/water]
	say "     Smiling sharply, the shark accepts your payment and drops it into a sturdy box next to his feet - which is already overflowing with other supplies. 'Thank you - Have your pick from among the sluts back there and enjoy your stay,' he says, then nods to one of the wolverines to let you through. Afterwards, he calls out, Kaden!' A slender tomcat dressed in black pants hurries over, his chest bare except for a shirt collar with black bow-tie and white cuffs. Someone must have raided a stripper gear store to get him that uniform. 'Drag that to the storeroom and get me a new box,' Jerome says in a commanding tone, getting a reply of, 'Sure boss!'";
	say "[ShagShackSexMenu]";

to say JeromeTalk4: [pay with orc cum]
	say "     Smiling sharply, the shark accepts your payment and calls out, 'Kaden!' A slender tomcat dressed in black pants, a shirt collar with black bow-tie and white cuffs hurries over. Someone must have raided a stripper gear store to get him that uniform. Kaden accepts the bottle and listens to Jerome's instructions of, 'Microwave this and then give all the girls and boy-sluts a dose.' After that, the cat-boy hurries away, clutching the bottle like something precious. Meanwhile, Jerome returns his affection to you and says, 'Thank you. Have your pick from among the sluts back there and enjoy your stay.' With that, he nods to one of the wolverines to let you through.";
	say "[ShagShackSexMenu]";

to say JeromeTalk5: [become a lifetime member]
	say "     <WIP>Sorry, this option isn't available yet. Please check back at another time<WIP>";

to say JeromeTalk6: [lifetime member]
	say "     Confidently walking up to the wolverines guarding the entrance, you tell them you're a lifetime member. The anthro mustelid glances up and down over you suspiciously, then asks, 'Boss?' After Jerome gives him a confirming nod, you're let through to take your pick of the available partners.";
	say "[ShagShackSexMenu]";

the fuckscene of Jerome is "     As you make an amorous offer to the shark, Jerome laughs and shakes his head. 'Much as I'd love to, I'm busy with business. Can I interest you in having a go with my 'talent' in there instead?'".

to say ShagShackSexMenu:
	say "     Which member of Jerome's 'entertainment staff' do you want to pick and have some fun with?";
	choose row monster from the table of random critters;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Eliza - a pretty black woman";
		now sortorder entry is 1;
		now description entry is "Step up to her after the last customer pulls out and have a go with the whore";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Kaden - Jerome's cat-boy flunky";
		now sortorder entry is 2;
		now description entry is "Just grab the slender tomcat as he hurries past and bend him over for a fuck";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride Simba - a transformed male soldier tied spread-eagle to a bed";
	now sortorder entry is 3;
	now description entry is "Climb on the hunky man and give him a good humping";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Be pounded by Zane - an incubus stud";
	now sortorder entry is 4;
	now description entry is "Get a demon dick inside you";
	[]	
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha - Jerome's hog-tied mink cum-dumpster";
		now sortorder entry is 5;
		now description entry is "She's on a bench down the end of the row of beds. Choose any hole!";
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
				if nam is "Fuck Eliza - a pretty black woman":
					say "[ShagShackSex1]";
				otherwise if nam is "Fuck Kaden - Jerome's cat-boy flunky":
					say "[ShagShackSex2]";
				otherwise if nam is "Ride Simba - a transformed male soldier tied spread-eagle to a bed":
					say "[ShagShackSex3]";
				otherwise if nam is "Be pounded by Zane - an incubus stud":
					say "[ShagShackSex4]";
				otherwise if nam is "Fuck Sasha - Jerome's hog-tied mink cum-dumpster":
					say "[ShagShackSex5]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Change your mind after all and go out?";
			if the player consents:
				now sextablerun is 1;
				say "     As you pass Jerome on the way out, he gives you a look with one raised eyebrow, then says, 'No refunds.'";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
	
to say ShagShackSex1: [Eliza]
	say "     As you walk up to the black beauty, Eliza is being savagely pounded by a [one of]muscular horseman[or]slender mall-rat[or]hermaphrodite gryphon[or]beanpole of a male stork[or]somewhat chubby anthro frog[or]horny golden retriever[or]naga taking both her holes at the same time[at random]. He has her on her knees, ass raised high while holding her arms bent behind her back. This presses her face, upper body and breasts down against the stained mattress she is on, giving her partner full control over her body. Soon, the John comes with a lust-filled grunt, grinding his crotch against her as he sends throb after throb of cum deep into her body. As soon as he is done, he pulls out unceremoniously and gives Eliza's shapely ass a satisfied slap, then wanders off with his half-hard dick still dripping cum.";
	if a random chance of 1 in 2 succeeds:
		say "     Stepping forward and freeing your own manhood, your gaze is locked upon her well-bred pussy, you are momentarily interrupted by Jerome's slender tomcat flunky moving up to her and sticking the needle of a red syringe into her arm and slowly pressing the plunger. He is about to move away again when you grab his arm and have a look at what he just injected the woman with. His syringe has writing on its side, reading 'US ARMY - Immunity Booster'. The feline guy is a bit flustered at you becoming physical and says, 'Hey - let me go. This is just to keep her human, alright? Eliza is very popular just the way she is and we don't want her to change.' With that said, he winds himself out of your grip and dashes off.";
	otherwise:
		say "     Stepping forward and freeing your own manhood, your gaze is locked upon her well-bred pussy, you are momentarily interrupted by Jerome's slender tomcat flunky moving up to her and pouring a tiny bottle full of a creamy white substance down her throat, which she eagerly swallows. He is about to move away again when you grab his arm and have a look at what he just gave the woman. His little bottle has a handwritten tag on the side, reading 'Refresher'. The feline guy is a bit flustered at you becoming physical and says, 'Hey - let me go. This is orc cum, just microwaved for a few seconds and diluted. Has some amazing regenerative capabilities, among other things. Eliza is very popular just the way she is and we don't want her to stretch out from all the fucking.' With that said, he winds himself out of your grip and dashes off.";
	WaitLineBreak;
	say "     Stepping up behind the human woman, you put your hands on the very well-rounded buns of her black ass, squeezing those soft cheeks appreciatively. Never having left her ass-up position with both arms behind her back, the ebony-skinned beauty moans into the mattress, lost in the arousal and sensations of a constant string of sex acts she is put through. Thinking back, you don't think you've actually ever seen her not being used by someone for more than five minutes in the time you've been in here. And why wouldn't any guy slide his dick into such a sexy goddess? You're certainly going to do so, lining your cock up with her slightly gaping hole right this very moment!";
	say "     Slick with the cum of who knows how many other men and herms, it is easy to sink your manhood into Eliza's pussy, which is still surprisingly tight for one of the most popular whores in here. Her inner passage is nice and snug around your [cock of player] shaft and the black woman trembles in arousal, giving a loud moan as you penetrate deeply. She has been fucked so much today that someone's creamy load starts to squelch out around your shaft when you're all the way inside her snatch. That's one hot, sloppy hole on Eliza!";
	WaitLineBreak;
	say "     Pulling back out to start fucking the dark-skinned whore for real, you look down at your erection, covered in the frothy white cum that her last suitor freshly churned up. You wrap your hand around its length and feel how slippery it is covered in this very special kind of lube, then thrust right back into Eliza's welcoming depths. Something about her is just made to be taken hard - maybe it's the generous curves of her butt wobbling so nicely each time your hips meet, the woman's very enthusiastic moans or your own ambition to surpass all those that fucked her before. No matter which, you really pound into the ebony-skinned beauty with a rapid rhythm of thrusts.";
	say "     Sheathing yourself in her trembling body, you drive Eliza wild every time you bottom out, her gasps of pleasure steadily rising. Soon, they culminate in an orgasmic shout that is loud even half-muffled by the mattress her face is pressed against - and in that moment, you learn why no one can resist to cum in her amazing pussy! Tight as she felt before, now her inner muscles flex and squeeze your cock even more, as if jerking you off right in her squelching pussy! It feels so great that you even stop moving your hips, instead just grinding hard against the woman's ass in an effort to get more of your cock in there.";
	WaitLineBreak;
	say "     Eliza's special skills push all the right buttons in you - hard - and before much longer, you let out a satisfied grunt that signals your impending orgasm. Then your balls throb and send forth a first blast of sperm to shoot into her depths, followed by another and another to mix with the deposits of your predecessors. Flooding the expert whore with your potent load, you can't help but wonder if Jerome has her on some sort of birth control or if her womb is receptive and stewing with a dozen species worth of sperm. You can't help but fantasize about Eliza with her belly large and swollen with a child inside - or maybe a foal, or some puppies, or who knows what.";
	say "     Cock still buried deep in the freshly bred snatch of your chosen whore, you're pulled out of your post-orgasmic haze by a pat on your arm. Looking back over your shoulder, you see that [one of]a grinning gorilla[or]an impatient cougar[or]a cave-man with long dreadlocks[or]a whirring and clicking mechanical man[or]a semitransparent goo-person[or]a broad-shouldered hawk-man[or]a very well hung minotaur[or]a living statue made from black rock[at random] with his hard cock in hand is waiting to have his turn on her too. With a grunt, you pull out, wiping your length against the still panting woman's buttocks - a nice contrast of white cum on her black skin - then stand up and grab your clothes. While you're getting dressed, Eliza is already being taken by her new John, his cock covered in your own load.";
	
to say ShagShackSex2: [Kaden]
	say "     Keeping an interested eye on the cat-boy as he comes and goes from the entrance room to do tasks for Jerome, you pass him up as he has just finished putting away a big box of the whorehouse's earnings. As you grab hold of his soft-furred arm to stop him from walking past, Kaden looks at you in surprise and says, 'Hey - let me go. I've got things to do for the boss.' With a grin on your face, you tell him that for the next little while all he should worry about is pleasing you. He starts to reply, 'But I'm not one of t-' then stiffens and lets out a shocked pant as you grab the somewhat loose skin at the back of his neck.";
	say "     Like a real kitty, the cat-boy instantly becomes much more pliable and obedient as you push the right button for his instincts. With a firm grasp on his neck, you walk the slender tomcat over to an unused bed further back in a corner of the room (just in case Jerome or someone else might object to you taking liberties with his regular staff). Standing in front of the yet unstained mattress, you hold the anthro cat close to your chest and wrap an arm around him, hand sliding down to rub his crotch. With some petting and fondling, a bulge quickly starts to grow under the fabric, tenting out his pants quite nicely. You can already tell that this kitty isn't a small one.";
	WaitLineBreak;
	say "     Kaden's pants are pretty tight, so you can't slide your hand under his belt-line, so at some point you have to let go of his neck to open his button and zipper, plus the extra button at the top of the tail-hole at the back. This frees the anthro feline to say, 'I'm not a whore! Jerome trusts me to be his assistant and I just take care of...' By then, you're with the pants, you forcefully shove them down, revealing his bare furry butt and stiff erection. Nice and naughty kitty, going commando like that! '...of everything that needs to be done back here,' your slender captive says and tries to step out between you and the bed. He doesn't get far, hobbled by his own pants and with you closing your arms around him from behind a few seconds later.";
	say "     Moving your face close to one of his pointy ears while your hands stroke his furry chest, you whisper to the cat-boy that you're back here now, a paying customer, and that what needs to be done right now is him - by you. He opens his muzzle to object but before anything comes out you grab his cock and start stroking it, reducing him to just panting loudly. It doesn't take long for a bit of jerking and fondling his balls to show an effect, and before much longer he changes his tune. 'Nnngh - ah fuck it, fine.' With that said, Kaden lets himself fall forward onto the bed, landing on his hands and knees.";
	WaitLineBreak;
	say "     Giving you a glance over his shoulder, the slender tomcat pants out, 'Help me get the pants off then - and check the front right pocket.' He gives a wiggle of his cute little butt and the lower legs that are still sticking out over the edge of the bed. Grinning at the new-found enthusiasm of your sexy kitty, you pull the pants down and off his slender legs. You're about to drop them, then remember what he said and reach into the pocket, finding a number of tiny squeeze-packages of lube. Throwing them on the bed beside him, you start undressing yourself, hastily throwing off your gear and clothes in your eagerness to fuck this kitty.";
	say "     By the time you're naked, he is sitting on the bed with spread legs, a torn lube-package lying on the mattress while he rubs the slippery goop over his tail-star. You watch in eager anticipation as he starts to insert a finger and lubes up his hole for you, then lies back with both hands his legs spread and open. Who could resist that invitation?! Moving onto the bed yourself, you kneel in front of the slender cat-boy and take a hold of your rock-hard erection to guide it against his waiting pucker. With a satisfied grin on your face, you push past the slight resistance of his hole and sink into him.";
	WaitLineBreak;
	say "     Clearly familiar with the mechanics of anal sex, Kaden pushes out against your first thrust and makes it easy to penetrate him fully, letting out a moan as you bottom out and your balls press against his buttocks. As a reward, you wrap your fingers around his own erection, gently squeezing the hard length and teasing the soft little nubs on his spined manhood. From then on, you stroke him in the same rhythm of your thrusts into his tight and gripping asshole, pushing the both of you to higher and higher arousal. Kaden is a very vocal and receptive bottom, gasping and trembling noticeably each time you push the button of his prostate with your thrusting shaft.";
	say "     Pounding the cat-boy's tight little rump makes you think that he's wasted as just being Jerome's assistant, clearly having such excellent qualification to be a world-class boy-toy. But then... he did have a pocket full of lube and was quick to use it on himself - maybe the cheeky little cat is just something of a special treat for those with the will to push past his objections. The expert way he squeezes your cock with his inner muscles is quite telling, now that you think about it. No matter if your assumption is correct or not, Kaden is one sexy fuck - and taking his tight ass drives you ever closer to a breathtaking climax at a rapid pace.";
	WaitLineBreak;
	say "     Reaching the point of no return, you grunt deeply, thrusting hard against the sweet cat-boy's furry buns. With your [cock of player] shaft buried balls-deep, you erupt into him, painting his chute white with your creamy cum. The throb of your cock with every spurt of semen into him pushes lightly against his prostate again and again... and soon is enough to push the anthro feline off the cliff of his sky-high arousal. With a lusty yowl, Kaden bucks against you and grinds his hips up and down, his erection erupting with spurts of cum that arches into the air and splats down on his furry chest. His insides clench around your length as he comes, making the already snug hole even tighter and giving you another little boost of lust even as your cum-shots ebb off.";
	say "     With a grin on your face, you pull out of the panting cat-boy and reach up to stroke him affectionately behind the ears. Then you leave him to catch his breath, grabbing your clothes and quickly getting dressed before you walk out of the open brothel and into the entrance area.";

to say ShagShackSex3: [Simba]
	say "     Walking into what appears to have been the more high-priced corner of the former mattress store, you come upon an actual four-poster bed with an excellent - if now somewhat cum-stained - mattress laid out on it. And on top of that, a glorious hunk of an anthro lion is stretched out, his wrists and ankles held by black leather cuffs that are securely tied to the bed. Camo pattern pants and a jacket lie crumpled on the floor, clear indications that this is a soldier - as are the dog tags hanging around his neck. The man's feline cock is hard as rock, standing upright over the small bush of longer pubes on his golden-furred body. He is panting with an open muzzle, head leaning back and eyes closed.";
	say "     Eager to feel the sexy guy against - and inside - your body, you quickly pull off your gear and clothes, throwing them into a small heap next to the bed (on the far side of course, so anyone wanting to grab something would have to walk past). Then you step up on the pleasantly soft yet at the same time nicely firm mattress. Movement on the bed draws the attention of the guy you want to have sex with and he opens his eyes, then raises his maned head to look at you, gaze wandering over your naked form. 'Another one?!' he says in a somewhat groggy tone of voice, then chuckles to himself and adds, 'Maaan, this is the craziest and sexiest dream I ever had. First the fucking lion thing and now this!'";
	WaitLineBreak;
	say "     You do notice that his gaze is a little unfocused as he switches up glancing down at his own dog tags, then the soft fur covering his body and back at you. He seems almost drunk and is obviously very, very horny - humping his hips into the air while giving your nakedness appreciative growls. Stepping over the guy, you look down on his well-defined physique and then crouch, straddling his flat abs. His fur is soft under your hands as you let them roam over his chest, feeling up his muscles. Then you see the name on his dog tags - Simba King. Wow. Some parents just inflict the craziest word combinations on their kids as wordplay. Oddly fitting that he got specifically this infection out of the situation here.";
	say "     Leaning forward, your hands braced on two rock-hard abs, you plant a kiss on Simba's muzzle and find it eagerly returned. Warm breath washes over your face and neck as he gives an aroused growl and licks you, all the while grinding his crotch and abs against your own. 'Fuuuck yeah,' your sexy lion grunts at feeling your body rub on his. His pecs bulge as he strains against his cuffs, trying to pull free and grab you for a hard pounding - but the bindings hold, leaving this big cat at your mercy. Unable to resist the desires that such power brings with it, you proceed to rub yourself against his humping body, slowly creeping backwards bit by bit until his erect manhood starts to touch your buttocks.";
	WaitLineBreak;
	say "     Gleefully, you slide your buttocks up and down against Simba's erection and revel in feeling the hot pole lengthwise in your butt-crack. You even give him a squeeze or two, flexing your muscles to wedge his prick between your buns and driving the anthro lion wild with lust. But as much as playing with him is - at some point, it just isn't enough anymore and you reach back to take hold of him. Long and hard, it feels very nice between your fingers, as do soft spiky bumps along its length - perfect to stimulate anyone this king of the wilds fucks. Which will include you in a few seconds. He feels almost lubed, what with the pre-cum he has been oozing from his dickhead and you spreading that up and down his cock with your rubbing.";
	if cunts of player > 0:
		say "     Then the big moment comes - you position yourself over him, lining your pussy up with his cock and... Simba hammers himself home with a horny roar. Damn, that was quick! You're too lost in the sensations of having almost a foot of thick lion cock thrust into your vagina to do anything but let out a lewd moan. Seems like this is what you get for teasing a poor tied-up kitty - and it is a hell of a lot of fun! Before you have more than a second or three to get to terms with the sudden penetration, he pulls back again... which scrapes the soft spines on his erection against your inner walls in a truly breathtaking followup.";
		say "     Reduced to helpless moans in arousal, you sink yourself down on the feline soldier's cock to feel him back inside, then squeeze your inner muscles around his manhood. Simba is more than pleased with your reaction and the two of you start to fuck like wild beasts - or at least you are, riding a safely secured horny lion. The moans, grunts and sometimes roars between the two of you draw many a glance from other 'clients' and brothel staff alike. Between the wild gyrations caused by Simba's admirable stamina, you barely have the time to have a clear thought, and before much longer, an orgasm approaches rapidly. Bucking hard against your lion stud's crotch as you come, your whole body trembles around him, pushing him over the edge right with you.";
		WaitLineBreak;
		say "     Thick throbs of cum gush into your insides as Simba finally can't hold back anymore, erupting hard into your pussy. His seed feels nicely warm and filling, heightening your own pleasure at mating with this hunk of a lion. You simply take everything he gives you, still straddling his hips and stretching your upper body out on his soft-furred shape. Tied up as he is, the lion can't wrap his arms around you - or roll the two of you over for a second fuck, who knows what he would do after all. What he can do is purr - loud as an idling motor and feeling very pleasant as it vibrates through your own chest. 'Best dream ever...' you can hear him murmur as he dozes off in exhaustion after a little while.";
	otherwise:
		say "     Then the big moment comes - you position yourself over him, lining your asshole up with his cock and... Simba hammers himself home with a horny roar. Damn, that was quick! You're too lost in the sensations of having almost a foot of thick lion cock thrust into your back door to do anything but let out a lewd moan. Seems like this is what you get for teasing a poor tied-up kitty - and it is a hell of a lot of fun! Before you have more than a second or three to get to terms with the sudden penetration, he pulls back again... which scrapes the soft spines on his erection against your inner walls in a truly breathtaking followup.";
		say "     Reduced to helpless moans in arousal, you sink yourself down on the feline soldier's cock to feel him back inside, then squeeze your inner muscles around his manhood. Simba is more than pleased with your reaction and the two of you start to fuck like wild beasts - or at least you are, riding a safely secured horny lion. The moans, grunts and sometimes roars between the two of you draw many a glance from other 'clients' and brothel staff alike. Between the wild gyrations caused by Simba's admirable stamina, you barely have the time to have a clear thought, and before much longer, an orgasm approaches rapidly. Bucking hard against your lion stud's crotch as you come, your whole body trembles around him, pushing him over the edge right with you.";
		WaitLineBreak;
		say "     Thick throbs of cum gush into your insides as Simba finally can't hold back anymore, erupting hard into your ass. His seed feels nicely warm and filling, heightening your own pleasure at mating with this hunk of a lion. You simply take everything he gives you, still straddling his hips and stretching your upper body out on his soft-furred shape. Tied up as he is, the lion can't wrap his arms around you - or roll the two of you over for a second fuck, who knows what he would do after all. What he can do is purr - loud as an idling motor and feeling very pleasant as it vibrates through your own chest. 'Best dream ever...' you can hear him murmur as he dozes off in exhaustion after a little while.";
	say "     Eventually, you push yourself up from the soft, warm and purring guy and slide yourself off his softening prick. Giving the sated kitty a friendly pat on the side, you then get up from the bed and start to dress. It doesn't take long after that for Kaden, Jerome's cat-boy assistant, to arrive with a little bucket of water in his hand. 'Let's get you ready for your next visitor, big guy,' he tells Simba in a companionable tone. Getting no reply, Kaden then starts to gently wash the soldier, making sure his cum doesn't dry in that silky soft crotch fur and dabbing a big sponge over the muscular frame of the tied-up lion...";

to say ShagShackSex4: [Zane the incubus]
	setmonster "Incubus";
	choose row monster from the table of random critters;	
	say "     Walking between the rows of beds and mattresses, you come to one that is unoccupied right now. Though clearly not for long, judging from the still-wet puddle of cum on the ground next to it. The 'owner' of this fuck-pad is casually leaning against the wall right next to it, confidently presenting his naked body to anyone looking his way. It is an incubus, and a handsome one at that - well-toned body, a studly face and red hair, accentuated very nicely by his horns, large red leathery wings and tail. His cock stands erect and ready, with the attractive stud demonstratively stroking up and down along its length. 'Hey there baby,' he calls out to you in an oh so smooth and enticing voice. 'I can see you wanna spend some time with the best fuck in this place. Good pick, Zane will take care of your needs.'";
	say "     With that said, the handsome man pushes himself off the wall with his wings and saunters towards you, his cock swinging side by side as he sways his hips. Next you know, Zane's hand is sliding slowly up your arm in a teasing stroke, then down your side and around as he pulls you into an embrace. An attractive masculine scent fills your nostrils as he pushes his naked form up against yours, his hard cock brushing against your hip. Then the incubus leans his head close and looks deep into your eyes, his mouth pulling into a smile that reveals slightly elongated canines. 'Tust me,' he says in his rich voice and plants a hot kiss on your lips that makes you swoon, 'Just lay back and enjoy.'";
	WaitLineBreak;
	say "     Guided by the otherworldly seducer holding you in his arms, you soon feel your legs bump softly against the edge of the bed, followed by Zane gently pushing you down to sit on it. The demon looks down at you with a wide grin that promises great pleasure - and also holds a clear undertone of predatory hunger... but somehow, you can't seem to care for anything but being with him right now. Leaning over you, he strokes your cheek before moving on to touch your body, peeling your clothes and gear off with an expert's grace and speed. It doesn't take long at all before you are as naked as he is, your stuff forming a small pile next to the bed. 'You're one sexy beast, aren't you,' he says with a smile and runs his fingers over your body - touching, stroking and teasing.";
	say "     You can't help but pant out loud at the stimulation your demonic lover gives you, building up arousal in your body until he lays a hand on your chest and pushes you back to lie on the bed. You stretch out on the sheets and feel their soft fabric against your back - damn, is that silk? Where did Zane get all this? The question is easily forgotten a moment later, when he nudges your legs apart with an eager touch and crouches down before you, bringing his head close to your crotch. With his hands stroking the insides of your thighs, he lifts them effortlessly to put them over his shoulders, then leans in to start licking you.";
	WaitLineBreak;
	if cunts of player > 0: [female and herm]
		say "     A swipe of the demon's tongue brushes over your pussy and draws a pleased sigh from you, followed by another and another as Zane demonstrates his skillful tongue. A shiver of arousal goes through your whole body at a flick of its tip over your sensitive clit, followed by slow circling touches around it and more direct stimulation. His tireless oral service soon has the intended effect of getting you wet and dripping with female juices, your pussy aching to be fucked... and Zane is only too happy to proceed to that. Taking hold of your legs to hold them up and spread wide, the sexy demon rises from his crouch in front of the bed - bringing his perfect shaft of erect maleness into full view. He revels in the attention you give him, your hungry gaze wandering over his toned body and the cock you yearn for now.";
		say "     After a little while of basking in your lusty looks, a glistening drop of pre forms at the tip of Zane's cock, showing that he is ready and eager to take you. And indeed he does - moving his hips to line himself up with your slightly swollen and open nether lips, then sliding right into your body, his prick pleasantly warm against your inner walls. He is a demon after all, and it seems they run hot. Penetrating you deeply in a smooth stroke at just the right speed, he sinks his cock in all the way until his balls brush against your crotch. 'You feel amazing babe,' the sex demon pants out in a lusty tone and gives you a peck on the lips. He rests his throbbing shaft inside your pussy for a few seconds more, then starts to slide in and out.";
		WaitLineBreak;
		say "     Zane fucks you with swift and deep strokes, varying the angle of thrust as he does so to increase your pleasure and hit pleasure-spots you barely knew you had. Writhing under his toned body, your arousal soaring higher and higher from his touching, thrusting, kissing and all-round pleasuring you, you barely manage to form intelligible toughts. But then... you don't have to think, or worry, or do anything right now except lay on the silken bedsheets and enjoy yourself. Picking such an amazing professional to fuck you was a truly amazing idea! Groaning out loud at another deep thrust, you give yourself fully to the handsome demon, closing your eyes to let him do what he will with you.";
		say "     The next little while is a blissful haze in your memory afterwards, filled with touches and sensations that are so very, very good. The incubus teases you to a point just at the cusp of an intense climax, then holds you there for what feels like an eternity before he finally goes all out. With his full balls smacking against your crotch in a rapid tempo, he fucks you even harder than before, and the demon's hard cock shoots you past the point of no return in a few heartbeats. Letting out a lustful shout, you twitch around his erection, your whole body trembling and shaking in pleasant tingles. Zane starts to unload deep into your pussy just seconds later, either showing that he had extreme self-control to keep himself from cumming up till now, or that the pleasure at seeing you get you off gave him the last push he needed himself.";
		WaitLineBreak;
		say "     Lying on the bed, you enjoy getting bred by the sexy demon, his cock pulsing spurt after spurt of hot cum into your innermost depths. And he doesn't just fuck off afterwards either, instead keeping his only slowly softening shaft inside you. He even gives little thrusts and grinds a bit against you to prolong your own orgasm, propping up the waves of pleasure and making them ebb off that much slower. Eventually, you sink back on the soft bed and even softer sheets, totally spent and filled with total satisfaction. 'Told you you'd like it,' Zane tells you as he leans in to give you a kiss and broad grin. With that said, he gently pulls out of you and stands up. 'Feel free to rest a bit on the bed, good sex is exhausting. I'll be back after getting cleaned up. Got a needy slut in here who just loves giving tongue-baths and slurp up pussy juices from my cock!'";
		say "     After the smiling incubus saunters away, you stay on your back for a while longer, basking in the pleasant feelings still fresh in your body and mind. Only after fully catching your breath and riding out the last tingles of your orgasm do you slowly get out of bed and get dressed. All in all, picking the incubus prostitute was more than worth it![fimpregchance]";
	otherwise: [male and neuter]
		say "     A swipe of the demon's tongue runs up the crack between your buttocks, brushing over your pucker and drawing a pleased sigh from you, followed by another and another as Zane demonstrates his skillful tongue. A shiver of arousal goes through your whole body as he pushes in against the muscle, followed by circling touches around it and more direct stimulation of actually working his tongue inside you. His tireless oral service soon has the intended effect of getting your back door relaxed and slippery for the upcoming fuck... and Zane is only too happy to proceed to that. Taking hold of your legs to hold them up and spread wide, the sexy demon rises from his crouch in front of the bed - bringing his perfect shaft of erect maleness into full view. He revels in the attention you give him, your hungry gaze wandering over his toned body and the cock you yearn for now.";
		say "     After a little while of basking in your lusty looks, a glistening drop of pre forms at the tip of Zane's cock, showing that he is ready and eager to take you. And indeed he does - moving his hips to line himself up with your trembling muscle, then pushing in until your ring yields to his erection and the dick-head pops inside. After that, Zane slides deeper into your body, his prick pleasantly warm against your inner walls. He is a demon after all, and it seems they run hot. Penetrating you in a smooth stroke at just the right speed, he sinks his cock in all the way until his balls brush against your crotch. 'You feel amazing babe,' the sex demon pants out in a lusty tone and gives you a peck on the lips. He rests his throbbing shaft inside your hole for a few seconds more, then starts to slide in and out.";
		WaitLineBreak;
		say "     Zane fucks you with swift and deep strokes, varying the angle of thrust as he does so to increase your pleasure and hit pleasure-spots you barely knew you had. Writhing under his toned body, your arousal soaring higher and higher from his touching, thrusting, kissing and all-round pleasuring you, you barely manage to form intelligible toughts. But then... you don't have to think, or worry, or do anything right now except lay on the silken bedsheets and enjoy yourself. Picking such an amazing professional to fuck you was a truly amazing idea! Groaning out loud at another deep thrust, you give yourself fully to the handsome demon, closing your eyes to let him do what he will with you.";
		say "     The next little while is a blissful haze in your memory afterwards, filled with touches and sensations that are so very, very good. The incubus teases you to a point just at the cusp of an intense climax, then holds you there for what feels like an eternity before he finally goes all out. With his full balls smacking against your crotch in a rapid tempo, he fucks you even harder than before, and the demon's hard cock shoots you past the point of no return in a few heartbeats. Letting out a lustful shout, you [if cocks of player > 0]let loose with a barrage of cum-spurts from your own hard cock, splattering your chest with your sticky white load[otherwise]twitch around his erection [end if]while your whole body trembles and shakes in pleasant tingles. Zane starts to unload deep into your asshole just seconds later, either showing that he had extreme self-control to keep himself from cumming up till now, or that the pleasure at seeing you get you off gave him the last push he needed himself.";
		WaitLineBreak;
		say "     Lying on the bed, you enjoy getting bred by the sexy demon, his cock pulsing spurt after spurt of hot cum into your innermost depths. And he doesn't just fuck off afterwards either, instead keeping his only slowly softening shaft inside you. He even gives little thrusts and grinds a bit against you to prolong your own orgasm, propping up the waves of pleasure and making them ebb off that much slower. Eventually, you sink back on the soft bed and even softer sheets, totally spent and filled with total satisfaction. 'Told you you'd like it,' Zane tells you as he leans in to give you a kiss and broad grin. With that said, he gently pulls out of you and stands up. 'Feel free to rest a bit on the bed, good sex is exhausting. I'll be back after getting cleaned up. Got a needy slut in here who just loves giving tongue-baths and slurp up the remaining cum from my cock!'";
		say "     After the smiling incubus saunters away, you stay on your back for a while longer, basking in the pleasant feelings still fresh in your body and mind. Only after fully catching your breath and riding out the last tingles of your orgasm do you slowly get out of bed and get dressed. All in all, picking the incubus prostitute was more than worth it![mimpregchance]";
		
to say ShagShackSex5: [Sasha the cumdump]
	say "     Moving along the rows of mattresses you come to the end of the line, where you almost walk straight past the diminutive figure on the bench. Trussed up on it like a thanksgiving turkey is a yuppie mink, who has clearly fallen on hard times. The petite socialite is lying on her back on the thin wooden bench, her head hanging off the end with nothing to rest it on. She looks somewhat uncomfortable having her arms bound together at the wrist beneath the bench. Resting near the perky C-cup, exposed breasts, are her knees which have been pulled up and tied together in such a way as to allow easy access to her gaping ass and cunt.";
	say "     It is clear she has zero mobility, but full visibility of anyone who may decide to plow her ass or pussy, both of which have clearly seen a terrific amount of use. Below her exposed ass rests a bucket to catch any cum that pours from the overfilled holes after fucking. She looks up at you as you stop to check out her bared assets, smiling invitingly as she does so. Her makeup is smudged and her once golden blonde hair appears matted and dirty. 'Hey there big boy, come for your turn at Sasha the cum dumpster?' she asks. Grinning, you nod and disrobe. With your cock already standing to attention, you use the pre leaking from its tip to moisten your member and provide for some extra slickness while considering which hole to use.";
	say "[SashaSexMenu]";
	
to say SashaSexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha in her dripping pussy";
		now sortorder entry is 1;
		now description entry is "Enjoy sloppy seconds (well, fifths more likely) with the whore";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha in her gaping asshole";
		now sortorder entry is 2;
		now description entry is "Enjoy sloppy seconds (well, thirds more likely) with the whore";
	[]
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Sasha in her eager mouth";
		now sortorder entry is 3;
		now description entry is "Feed the tied-up whore another load";
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
				if (nam is "Fuck Sasha in her dripping pussy"):
					say "[SashaSex1]";
				if (nam is "Fuck Sasha in her gaping asshole"):
					say "[SashaSex2]";
				if (nam is "Fuck Sasha in her eager mouth"):
					say "[SashaSex3]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the tied-up mink, shaking your head slightly as she gives a disappointed look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SashaSex1: [Pussy Fuck]
	say "     Deciding to take that succulent looking baby-maker, you move to Sasha's dripping cunt and slide your cock up and down the slut's slick velvety folds. The mink moans in pleasure, and you can almost feel the heat radiating from her cunt in anticipation of the fucking to come. Readying yourself, a lust-filled groan passes your lips as the [cock of player] shaft between your legs glides easily into the anthro's gaping pussy. The wet heat of the sweltering cave seems to soak into you as you bottom out. The mink moans with pleasure as her soft, silken pussy envelopes your turgid cock. The sensation of your balls coming to rest against a twitching taint, signals that you have plunged yourself to the root.";
	say "     With your cock buried to the hilt, you grab the mink by the hips and begin fucking the slutty anthro in earnest. Sasha gives gasps of pleasure each time you bottom out in her dripping tunnel. While not the tightest cunt you've ever had the pleasure of fucking, it certainly is experienced. She uses every trick she knows to grip and wring your [cock of player] rod in what is a surprisingly animated cunt! It feels like you're fucking a high tech onahole, and Sasha clearly knows how to get the most out of any cock.";
	WaitLineBreak;
	say "     You groan and pant with lust, fucking the incredible slit harder and deeper as the satin soft pussy writhes around your cock. The mink woman is panting and crying out in pleasure as she manipulates your rod inside her. Thrusting with an inflamed eagerness you rapidly approach orgasm, and with a roar of ecstasy, cum erupts inside the lusty anthro's hungry pussy. Hips thrust flush against Sasha's pelvis, your seed pours into her waiting, clenching cunt. Your balls ache as the whore's heavenly vagina continues to work its magic on your cock, milking you for every drop of cum you posses.";
	say "     Shaking in the aftershock of your orgasm, you collapse on top of Sasha, your head resting comfortably on the moaning slut's pillow-like chest. 'Well lover, was is good for you?' She asks innocently as her soft walls suck one last spurt of semen from your throbbing pecker. Nodding, you slide out of the puffy lips, followed closely by a stream of steaming cum which pours into the bucket below. Thanking Sasha again, you collect your gear and head for the door."; 

to say SashaSex2: [Anal Fuck]
	say "     Eager for a bit of anal spelunking, you move to Sasha's winking asshole and press your cock up against it, feeling it give just a little at the pressure. She moans in pleasure, and you can almost feel the heat radiating from the slutty anthro's cunt in anticipation of the anal fucking to come. Readying yourself, a lust-filled groan passes your lips as the [cock of player] shaft between your legs glides easily into Sasha's gaping asshole. The penetration is made easier by the copious amounts of cunt-juice dripping down from her neglected pussy. Both of you shudder with pleasure as the well-used asshole gives way to the pulsing cock claiming its depths. The feeling of your balls coming to rest against warm and furry cheeks, signals that you have sunk yourself to the root.";
	say "     With your cock buried to the hilt, you grab Sasha by her bound hips and begin fucking the horny woman's well-used ass in earnest. She gives gasps of pleasure each time you bottom out in the anthro's deep colon. While not the tightest asshole you've ever had the pleasure of fucking, it certainly is eager. Sasha uses every trick she knows to grip and wring your [cock of player] pole. It feels like you're fucking a high tech onahole, and the mink clearly knows how to get the most out of any cock.";
	WaitLineBreak;
	say "     You groan and pant with lust, fucking the incredible hole harder and deeper as the rectal muscles writhe and spasm around your cock. The lusty anthro is panting and crying out in pleasure as she manipulates your rod inside the engorged walls of her hot anus. Rapidly approaching orgasm, and with a roar of ecstasy, you unload your pulsing balls inside Sasha's clenching cock holster. Hips thrust flush against the soft pelvis, your seed pours into her waiting colon. Your balls ache as the whore's ass continues to work its magic on your cock, milking you for every drop of cum you posses.";
	say "     Shaking in the aftershock of your orgasm, you collapse on top of Sasha, your head resting comfortably on the moaning slut's pillow-like chest. 'Well lover, was is good for you?' She asks innocently as her tight anal walls suck one last spurt of semen from your throbbing pecker. Nodding, you slide out of the warm anal cavern, followed closely by a stream of steaming cum which pours into the bucket below. Thanking Sasha again, you collect your gear and head for the door.";

to say SashaSex3: [Oral Fuck]
	say "     It would be great to feel the anthro suck the cum out of your eager pecker, so you move to Sasha's drooling mouth and press your cock up against her pouty lips. It feels like the right choice when the woman's eager tongue slips out to circle the tip of your pre-leaking head. She moans in pleasure at the taste, and you can feel the heat of Sasha's breath as an eager mouth attempts to pull your rock hard member into it. It is easy to slide your [cock of player] shaft into such a willing cock holster, and Sasha's throat provides no resistance to the steady advance of your tool. You groan with pleasure as she provides the perfect amount of suction to your cock. Your balls come to rest against her nose, signalling that you have pushed as deeply as you're going to get for now.";
	say "     With your cock buried to the hilt, you grab Sasha by her exposed tits and begin fucking the whore's mouth in earnest. She gags each time you bottom out, but it doesn't deter you. The cock-hungry mink is certainly eager and she uses every trick she knows to suck and wring your [cock of player] rod for all she's worth. It feels like your cock is attached to a high powered milker as Sasha slurps and sucks on the tool like it's the only thing that matters in the world, and to the slutty anthro, it probably is.";
	WaitLineBreak;
	say "     You groan and pant with lust, fucking Sasha's incredible mouth harder and deeper as the woman's throat and tongue writhe around your cock. The mink is panting and moaning in pleasure around your throbbing tool. Rapidly approaching orgasm, and with a roar of ecstasy, you unload inside Sasha's welcoming gullet. Hips thrust flush against the smiling face of your hooker, seed pours into her open oesophagus. Your balls ache as she continues to suck and nurse on your cock, milking you for every delicious drop of cum you posses.";
	say "     Shaking, you collapse on top of Sasha with your cock still nestled in her mouth. She gags and coughs up a glut of cum around your cock before you come back to your senses. Sliding out of Sasha's throat, you are impressed that not a drop is spilled. You apologise for forgetting you were still inside her throat, and thank the willing prostitute for everything, before collecting your gear and heading for the door.";


Shag Shack ends here.
