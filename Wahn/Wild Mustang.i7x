Version 1 of Wild Mustang by Wahn begins here.

"Adds a feral Mustang to Flexible Survival."

Section 1 - Creature Responses

when play begins:
	add { "Feral Mustang" } to infections of girl;

to say WildMustangWins:
	if HP of Player > 0:
		say "     As you submit, Lucifer gives a satisfied whinny, then slowly trots forward and shoves you with his side, making you fall down on the short grass. Knowing what will likely come next and not wanting to enrage the feral beast, you quickly strip and take position with your hips raised high.";
	else:
		say "     As you finally collapse in exhaustion, Lucifer gives a satisfied whinny, then lowers his head and nips at your clothes, pulling and ripping to get them out of the way. With no chance anymore to get around this, you finally give in and quickly strip to save the rest of your clothes from being destroyed.";
	if Player is female:
		say "     A moment later, you feel a sudden weight move atop you, pinning you to the ground on your hands and knees. Next comes the touch of something long and hard sliding along your back - Lucifer's erect cock, laying hot against your skin. This hugely hung stallion does indeed fully intend to mount you[if Cunt Tightness of Player < 6]. You can feel his enlarged, flared glans pressing at your pussy, trying to spread open your hole for him until it finally gives and allows him entry, making you moan loudly as it pushes in[end if][if Cunt Length of Player < 28]. With one thrust that sends shivers of lustful delight, he drives as much of his huge cock inside you as he can[else]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending shivers of lustful delight through you and making him whinny excitedly at finding a mare big enough to take him[end if]. He moves in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds your pussy hard and deep.";
		say "     After being speared on the mustang's shaft again and again for you don't know how long, eventually Lucifer gives a loud and lusty neigh, then drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[impregchance]";
	else if anallevel > 1:
		say "     The feral mustang snorts in frustration as he sniffs you and doesn't find a pussy for him to fill, but nevertheless moves into position atop of you, pinning you to the ground on your hands and knees. Next comes the touch of something long and hard sliding along your back - Lucifer's erect cock, laying hot against your skin. Stomping his hooves on the ground around you, the large horse bucks a few times with his hips, making that big piece of horseflesh rub against your body, then slap against your rear a few times as he lines himself up correctly. Now in the perfect breeding stance, the mustang grinds his cock against your crack for a moment, then thrusts into you with a whinny of pleasure. You groan as the feral beast's horse cock is driven deep, its flat glans spreading you wide as he starts plowing into you.";
		say "     Gripping handfuls of grass tight enough to rip them out of the ground, you moan loudly beneath Lucifer as he uses you as his mare. He thrusts in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds into you over and over. With a loud and lusty neigh, he eventually drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[mimpregchance]";
	else:
		say "     The feral mustang snorts in frustration as he sniffs you and doesn't find a pussy for him to fill, but nevertheless moves into position atop of you, pinning you to the ground on your hands and knees. Next comes the touch of something long and hard sliding along your back - Lucifer's erect cock, laying hot against your skin. Stomping his hooves on the ground around you, the large horse bucks a few times with his hips, making that big piece of horseflesh rub against your body. You can feel the wetness of his pre-cum dribble down on you, showing you what to expect as he continues to grind against you for some time, then eventually comes with a loud and lusty neigh. His glans flares widely and blast after blast of mustang cum splatters onto you, leaving you soaked in his semen. After the last spurt leaks onto you, he snorts again and trots off, frustrated and only a little satisfied.";
	SanLoss 10;
	if humanity of Player < 0:
		now bodyname of Player is "Lucifer's Mare";
		end the story saying "The black mustang has taken you as his mare!";
	else:
		say "     Something inside you calls out for you to just stay, rest on the grass till your stallion comes by again to breed you, become a true mare - but no, you're not that far gone yet. Using the opening Lucifer's overconfidence of not even watching you too closely presents, you quickly snatch up your gear and clothes, then run off to the gate, quickly slipping through and locking back up before the feral mustang can follow.";

to say WildMustangLoses:
	say "     After giving Lucifer another good slap, the large horse takes a few dazed, hesitant steps and stops attacking. Looks like he's had enough for now. In all likelihood, he'll return to his untamed ways once he's had time to rest and regain his strength, but... an idea springs to your mind that maybe there is a way of making peace with the large beast, now that you've got him pacified for the moment. He's used to people trying to ride him in - which clearly hasn't worked so far - so the opposite might do the trick.";
	LineBreak;
	say "     [bold type]What do you want to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Show the feral mustang some physical affection as a willing partner.";
	say "     ([link]N[as]n[end link]) - Leave the paddock.";
	if Player consents:
		LineBreak;
		say "[LuciferSexMenu]";
	else:
		LineBreak;
		say "     Where did that thought even come from? Getting sexual with a horse! Pfft - the nanites must be getting to you. Shaking your head to clear it, you quickly leave the paddock and lock its gate behind you.";
		move player to Central Farm Square;

to say LuciferSexMenu:
	now sextablerun is 0;
	setmonster "Feral Mustang";
	choose row MonsterID from the Table of Random Critters;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger the stallion's ass";
	now sortorder entry is 1;
	now description entry is "Rub Lucifer's prostate to make him cum";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the stallion's ass";
		now sortorder entry is 2;
		now description entry is "Pound your dick into Lucifer's hole";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take that big horsecock in your pussy";
		now sortorder entry is 3;
		now description entry is "Allow Lucifer to fuck you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take that big horsecock in your ass";
	now sortorder entry is 4;
	now description entry is "Allow Lucifer to fuck you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck him off";
	now sortorder entry is 5;
	now description entry is "Wrap your lips around Lucifer's horsecock";
	[]
	if HP of Lucifer > 0:
		choose a blank row in table of fucking options;
		now title entry is "Accompany Lucifer as he breeds a mare";
		now sortorder entry is 6;
		now description entry is "Watch the proud mustang mount a member of his herd - from right up close";
	[]
	if Dexterity of Lucifer > 0 and HP of Lucifer > 0:
		choose a blank row in table of fucking options;
		now title entry is "Have Lee strap you in under Lucifer to be fucked";
		now sortorder entry is 7;
		now description entry is "Feel the stallion's shaft inside you as he gallops along";
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
			if Player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Finger the stallion's ass":
					say "[LuciferSex1]";
				if nam is "Fuck the stallion's ass":
					say "[LuciferSex2]";
				if nam is "Take that big horsecock in your pussy":
					say "[LuciferSex3]";
				if nam is "Take that big horsecock in your ass":
					say "[LuciferSex4]";
				if nam is "Suck him off":
					say "[LuciferSex5]";
				if nam is "Accompany Lucifer as he breeds a mare":
					say "[LuciferSex6]";
				if nam is "Have Lee strap you in under Lucifer to be fucked":
					say "[LuciferSex7]";
				now lastfuck of Lucifer is turns;
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the mustang stallion, shaking your head slightly as he gives a questioning look. Then you walk back to the gate leading out into of this paddock and step through, securely locking it behind you.";
			move player to Central Farm Square;
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LuciferSex1: [fingering Lucifer's ass]
	say "     You slowly step up to the large horse, stroking his long neck and patting his side[if HP of Lucifer is 0] to show that the fight is over[end if]. As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking your hand along his muscled flank until you reach the rear end. Calmly telling the horse to relax, you set a hand on his equine rump, then start groping firm flesh of his ass, making the mustang give a curious and slightly aroused whinny as he turns his head to look back at you. Continuing in the same nonthreatening manner, you take hold of his long, dark brown tail and pull it up to reveal the horse's asshole. You lean forward and lick over the feral mustang's pucker, reveling in his pleased neigh at feeling you touch him like that. Running your tongue up and down his crack, then poking his hole with it, you make Lucifer whinny in what seems to be a request to keep going.";
	say "     Oh, but that's only the start of what you have planned for him... you bring your hand to his hole and start to massage it. After starting slow with one and two fingers, you get him to loosen up and soon are able to slip three, then four fingers in - followed by your whole hand. Pushing deeper into the mustang's body, you stroke his inner passage, grinning at the lust-filled neighs and whinnies you create with that. Feeling around a bit, you find a spot that seems especially sensitive, judging from the joy-filled snorts Lucifer does every time you stroke over it. Concentrating on that, it doesn't take much longer until the stallion orgasms, his sphincter gripping your arm tightly as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle.";
	if HP of Lucifer is 0: [first time]
[
		now SelenaLucifer is 1; [Selena will hear from this]
]
		now HP of Lucifer is 1; [made 'friends' with him]
		LineBreak;
		say "     As you pull out of Lucifer's back passage, the horse turns around and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";
[
	if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
		now SelenaLucifer is 2; [saw the player and the mustang out of her window]
]
	infect "Feral Mustang";

to say LuciferSex2: [fucking Lucifer's ass]
	say "     You slowly step up to the large horse, slowly stroking his long neck and patting his side[if HP of Lucifer is 0] to show that the fight is over[end if]. As he calms down a bit after the initial touch, you gently guide him over to the wooden three-step mounting block nearby, stopping Lucifer in just the right position beside it. Then you start walking around the mustang's body, stroking your hand along his muscled flank until you reach the rear end. Calmly telling the horse to relax, you set a hand on his equine rump, then start groping firm flesh of his ass, making the mustang give a curious and slightly aroused whinny as he turns his head to look back at you. Continuing in the same nonthreatening manner, you take hold of his long, dark brown tail and pull it up to reveal the horse's asshole. You lean forward and lick over the feral mustang's pucker, reveling in his pleased neigh at feeling you touch him like that. Running your tongue up and down his crack, then poking his hole with it, you make Lucifer whinny in what seems to be a request to keep going.";
	say "     Oh, but you've got other plans right now... stepping up on the mounting block's step with the right height, you open up your pants and free your hard cock, stroking it in anticipation of fucking this feral beast. Rubbing it up and down his crack, you tease Lucifer a bit first, pushing the tip against his opening, then going back to more rubbing. Only when you got him so hot and bothered that he stomps his front right hoof impatiently do you plunge in, thrusting deep into his back passage in one go. Owning to the large size of Lucifer's equine body, his hole is quite big too, but somehow Lucifer reflexively grips your shaft pretty tightly with his anal muscles. All in all, your manhood pushing into his body feels quite nice, and as you start thrusting in and out faster, you evoke a whole new level of aroused neighs and whinnies from Lucifer.";
	WaitLineBreak;
	say "     Hitting all the sensitive spots deep inside him, the wild mustang snorts as if to prod you on to fuck him even harder. Eagerly complying, you fuck Lucifer with abandon, your hips slapping loudly against his equine body with the force of your thrusts. Soon, the wild ride you're giving him pushes the mustang over the edge and he orgasms, his sphincter gripping your shaft like a vise as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle. With Lucifer's hot hole tight around your cock and creating breathtaking sensations as you continue to pound his ass, you soon feel a familiar tingle rise in your balls yourself. Plunging in one last time, you grind your hips against his equine rump and hold on tight as you come, shooting burst after burst of cum deep into his asshole.";
	if HP of Lucifer is 0: [first time]
[
		now SelenaLucifer is 1; [Selena will hear from this]
]
		now HP of Lucifer is 1; [made 'friends' with him]
		LineBreak;
		say "     As you pull out of Lucifer's back passage, the horse turns around and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";
[
	if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
		now SelenaLucifer is 2; [saw the player and the mustang out of her window]
]
	infect "Feral Mustang";

to say LuciferSex3: [player pussy fucked]
	say "     You slowly step up to the large horse, stroking his long neck and patting his side[if HP of Lucifer is 0] to show that the fight is over[end if]. As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then strip off your clothes and move under the horse, taking position on all fours with your ass raised high.";
	say "     Reaching back to take hold of his equine cock, you rub it against your body, making the large beast snort in surprise at someone so eager and willing to let him mount them[if HP of Lucifer is 0], especially after a fight[end if]. It doesn't take too long for Lucifer to get over it though - pretty soon, the mustang starts to fidget a bit, making his long and hard cock rub against you[if Cunt Tightness of Player < 6]. You can feel his enlarged, flared glans pressing at your pussy, trying to spread open your hole for him until it finally gives and allows him entry, making you moan loudly as it pushes in[end if][if Cunt Length of Player < 28]. With one thrust that sends shivers of lustful delight, he drives as much of his huge cock inside you as he can[else]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending shivers of lustful delight through you and making him whinny excitedly at finding a mare big enough to take him[end if]. He moves in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds your pussy hard and deep.";
	say "     After being speared on the mustang's shaft again and again for you don't know how long and having multiple orgasms from your interspecies dalliance, eventually Lucifer gives a loud and lusty neigh, then drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws, with more cum dripping down on you as the flared shaft slips from your pussy.[impregchance]";
	if HP of Lucifer is 0: [first time]
[
		now SelenaLucifer is 1; [Selena will hear from this]
]
		now HP of Lucifer is 1; [made 'friends' with him]
		LineBreak;
		say "     As you get out from under Lucifer and stand up, the horse turns his head towards you and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";
[
	if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
		now SelenaLucifer is 2; [saw the player and the mustang out of her window]
]
	infect "Feral Mustang";

to say LuciferSex4: [player ass fucked]
	say "     You slowly step up to the large horse, stroking his long neck and patting his side[if HP of Lucifer is 0] to show that the fight is over[end if]. As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then strip off your clothes and move under the horse, taking position on all fours with your ass raised high.";
	say "     Reaching back to take hold of his equine cock, you rub it against your body, making the large beast snort in surprise at someone so eager and willing to let him mount them[if HP of Lucifer is 0], especially after a fight[end if]. It doesn't take too long for Lucifer to get over it though - pretty soon, the mustang stomps his hooves on the ground around you and bucks a few times with his hips, making that big piece of horseflesh rub against your body, then slap against your rear a few times as he lines himself up correctly. Now in the perfect breeding stance, the mustang grinds his cock against your crack for a moment, then thrusts into you with a whinny of pleasure. You groan as the feral beast's horse cock is driven deep, its flat glans spreading you wide as he starts plowing into you.";
	say "     Gripping handfuls of grass tight enough to rip them out of the ground, you moan loudly beneath Lucifer as he uses you as his mare. He thrusts in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds into you over and over. With a loud and lusty neigh, he eventually drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws, with more cum dripping down on you as the flared shaft slips from your well-bred ass.[mimpregchance]";
	if HP of Lucifer is 0: [first time]
[
		now SelenaLucifer is 1; [Selena will hear from this]
]
		now HP of Lucifer is 1; [made 'friends' with him]
		LineBreak;
		say "     As you get out from under Lucifer and stand up, the horse turns his head towards you and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";
[
	if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
		now SelenaLucifer is 2; [saw the player and the mustang out of her window]
]
	infect "Feral Mustang";

to say LuciferSex5: [suck him off]
	say "     You slowly step up to the large horse, stroking his long neck and patting his side[if HP of Lucifer is 0] to show that the fight is over[end if]. As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then strip off your clothes and move under the horse, taking a kneeling position right under his belly.";
	say "     Reaching back to take hold of Lucifer's equine cock, you rub it against your body, making the large beast snort in surprise at someone so eager and willing to service him[if HP of Lucifer is 0], especially after a fight[end if]. Leaning forward, you bring that large cock to your mouth and start licking and kissing at its flared glans, making it swell faster. Soon, mustang pre is leaking onto your tongue. You lick and suck at it until it grows too large and full to fit in your mouth before pulling it you. You run your hands along the equine member and fondle those huge balls while tending to the giant horse cock before you. As his glans flares and he starts to whinny excitedly, you hold the end with one hand while rubbing his balls with the other. Holding it in place, you get him to blast shot after shot of hot, equine cum into your mouth and down your throat. You swallow as much of it as you can, though much of his copious flow ends up running down your chest.";
	if HP of Lucifer is 0: [first time]
[
		now SelenaLucifer is 1; [Selena will hear from this]
]
		now HP of Lucifer is 1; [made 'friends' with him]
		LineBreak;
		say "     As you get out from under Lucifer and stand up, the horse turns his head towards you and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";
	infect "Feral Mustang";
	PlayerEat 3;
	PlayerDrink 6;
	SanLoss 5;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
[
	if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
		now SelenaLucifer is 2; [saw the player and the mustang out of her window]
]

to say LuciferSex6: [watch him breed a mare]
	say "     You slowly step up to the large horse, stroking his long neck and patting his side[if HP of Lucifer is 0] to show that the fight is over[end if]. As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then pat him affectionately on the neck and tell him that you'd love to... watch his mighty pole in action. Be there when he breeds a mare with it.";
	say "     The feral mustang turns a little to shake his head towards the mares on the far end of the paddock, then snorts in amusement. You can give a good guess what his whinny right after that means - it's as if he laughs about you distracting him from his mares, only to ask that he gets back to having his way with them. With a step aside on four powerful legs, the large equine bumps you with his shoulder, knocking you to the ground. It doesn't seem an aggressive act though - more a friendly rebuke. Then he starts a quick trot towards his harem, only looking back once and snorting impatiently at you not being quick enough at getting back to your feet and following. By the time you catch up with the large mustang, he's selected one member of his harem and shepherded her to stand alone, a bit distant from the rest of the others. Lucifer awaits you with his head held high, proudly strutting around the mare, as if to invite you to check her out.";
	WaitLineBreak;
	if Libido of Lucifer is 0: [first time meeting Matteo/Mataya]
		say "     Walking closer and getting a good look at the feral equine, you see that she's truly a magnificent specimen, with a powerful stature built for speed and strength, if a little bit smaller than her stallion. Getting a consenting snort as you look towards the possessive male nearby, you step right up to the mare, putting a hand on her warm flank and feeling it slightly move under your hands as she breathes deeply, looking at you, then her master and sniffing the air for him. Seems she knows she'll get mounted soon and is getting excited about it. As you stroke the large horse's fur further, you notice something - some darker shapes on the light skin under the fur of her shoulder... it's a tattoo of some sort. Investigating further, you manage to make out the slightly distorted outline of a heart, filled with the names 'CARMEN & MATTEO'. Looks like this horse is one of your predecessors in entering Lucifer's paddock.";
		say "     You wonder if you should ask Matteo about his new form, then have the thought that name doesn't really fit anymore with him a mare. Maybe... yeah, Mataya - that could be a good female variant. Before you can actually decide to try to talk to Mataya, the mare reacts to her stallion as he trots closer. With a whinny to him, she turns her large body around with almost delicate steps of four strong legs. Flexing the base of her tail to move the long hairs out of the way, she presents her back end and gives you and Lucifer a perfect view of a most and ready equine pussy. A black-skinned slit sits ready between the firm rump of her furry hindquarters, glistening wet in the light, then Mataya's muscles pull her black nether lips apart, giving a short glimpse of her pink insides before closing up again. Then her musky smell reaches your nose, and you realize that the mare is in heat - something that must be the case quite often, with the crazy reproductive cycles the nanites set up.";
		now Libido of Lucifer is 1; [met Mataya]
	else:
		say "     Walking closer and getting a good look at the feral equine, you see that it is Mataya, whom you encountered before. She's truly a magnificent specimen, with a powerful stature built for speed and strength, if a little bit smaller than her stallion. Getting a consenting snort as you look towards the possessive male nearby, you step right up to the mare, putting a hand on her warm flank and feeling it slightly move under your hands as she breathes deeply, looking at you, then her master and sniffing the air for him. Seems she knows she'll get mounted soon and is getting excited about it. As you stroke the large horse's fur further, you notice the tattoo under the fur at her shoulder again and check out the names 'CARMEN & MATTEO' and the heart framing them. This horse clearly was one of your predecessors in entering Lucifer's paddock.";
		say "     Previous experience tells you there isn't much point in talking to Matteo - or Mataya, as you've decided to call this feral, female variant of the person she was before. Without much more ado, the mare reacts to her stallion as he trots closer. With a whinny to him, she turns her large body around with almost delicate steps of four strong legs. Flexing the base of her tail to move the long hairs out of the way, she presents her back end and gives you and Lucifer a perfect view of a most and ready equine pussy. A black-skinned slit sits ready between the firm rump of her furry hindquarters, glistening wet in the light, then Mataya's muscles pull her black nether lips apart, giving a short glimpse of her pink insides before closing up again. Then her musky smell reaches your nose, and you realize that the mare is in heat - something that must be the case quite often, with the crazy reproductive cycles the nanites set up.";
	WaitLineBreak;
	say "     Never having gotten soft in the first place after you stroked him to full hardness before, Lucifer is instantly ready to react to the heat-fueled invitation by his mare. The large stallion rears up with a loud whinny, mounting Mataya from behind and sinking his mighty pole into her depths in a single thrust. It really is kinda awe-inspiring, to stand beside two so large ferals as they mate - to see everything from up close, hear their snorts and whinnies, smell the musk of sex and almost be able to feel the heat coming off their bodies. The breeding of Mataya is a tumultuous affair, with Lucifer humping his powerful body against her for quite a number of hard thrusts of that thick piece of horseflesh between his legs, intermixed with short 'breaks', during which he dismounts again. Given the realities of their two large feral bodies weighing almost 1000 pounds each, those little interruptions are simply a must, but that doesn't mean that they are all that long, or that Lucifer doesn't hammer all the way into Mataya right when he has got is breath back.";
	say "     All in all, the stallion gives his mare a really wild ride, and you feel yourself getting a bit hot yourself as you watch - right up till the final moments, in which the mustang buries his shaft all the way and snorts deeply with each splash of his equine seed deep into the female. You can't help but feel drawn in by the view of his mighty balls pulsing with cum being pumped out - so much so that you step up and reach out with a hand to cup his orbs, feeling their pulsations under your fingers. Long moments later, as Lucifer's orgasm eventually starts to abate, you quickly jump aside as he dismounts once more. The show is over, it seems, so you start walking back towards the gate - only to feel a nip at your clothes, from Lucifer. Having stopped you from moving off, the large horse proceeds to herd you back towards Mataya, and gives a commanding whinny, nodding to her rear end. Looks like your host insists on you getting the full mare experience - including eating her out after he's deposited his seed.";
	WaitLineBreak;
	say "     With a shrug, you accept the mustang's insistence and step up behind the man that Lucifer fucked, transformed and now bred as the mare he has become, then lean forward and touch Matteo/Mataya's pussy. It is literally dripping with the horse's female juices, as well as a creamy string of cum leaking from its depths. Taking a deep breath, the pull in the pleasant scent of Mataya's fur, intermixed with the musk of sex, then breathe out again and bring your head forward, licking over her folds. With a pleased whinny, the mustang mare stops a hoof and her muscles pull the pussy lips apart, allowing you to go deep and really stick your tongue into her. Tasting the two feral horses['] juices, you slurp it all up and swallow, then go in for more, giving Mataya a very stimulating post-orgasm treatment.";
	if HP of Lucifer is 0:
		now HP of Lucifer is 1;
		LineBreak;
		say "     As you eventually finish eating out the equine pussy and there is nothing left, you straighten up and pat the mare you spent such an intimate time with. Then a long equine muzzle pokes you in the side, and Lucifer snorts commandingly, followed by a stomp of his hoof on the ground - as if to say, 'You can clean up my cum, but don't you try to charm any of the mares. They're MINE, and will stay that way.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. Calmly telling him that you'll respect his territory, you nod to the mustang and make your way back to the entrance of the paddock.";
[
		now SelenaLucifer is 1; [Selena will hear from this]
]
	infect "Feral Mustang";
	PlayerEat 3;
	PlayerDrink 6;
	SanLoss 5;
	if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
	if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
[
	if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
		now SelenaLucifer is 2; [saw the player and the mustang out of her window]
]

to say LuciferSex7: [player strapped under Lucifer with his cock inside them]
	increase Dexterity of Lucifer by 1;
	say "     You slowly step up to the large horse, stroking his long neck and patting his side. As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then pat him affectionately on the neck and tell him that you'd love to... be ridden by him. Feel his shaft inside you as he dashes forward. Strap yourself under him to be a receptacle for his equine cock.";
	say "     The feral mustang turns a little to give you a suspicious look as you mention straps, but then snorts in amusement as he realizes you're serious and don't want to trick him into some sort of harness to break him to your will. A loud whinny follows, which you interpret as assent, as it is followed by a nod of his large head. Looking around, you spot Lee casually leaning against the fence not too far off, the bundled-up harness resting next to his hooves. With a wave, you indicate him to join you. After swinging himself over the wooden fence, the horseman pulls in the harness and picks it up, then strolls over to you. 'Time to get some stallion action, huh buddy? Sure thing, I can hook you up. You do have the payment I hope? A strand of hairs from a centaur mare for a ride-out with your stud, as I told you.'";
	if carried of centaur hair > 0:
		LineBreak;
		say "     [bold type]You already have the centaur air on hand. What do you want to do now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Trade it to Lee?";
		say "     ([link]N[as]n[end link]) - Change your mind.";
		if Player consents:
			LineBreak;
			say "     As you pull the bundle of hair from your pack, the farmhand gives you a grin and takes an old snuff-box out of his jeans pocket, opening the tin can and letting you drop your trade into it. Careful not to touch it, he closes the box up and stuffs it into his pocket, then nods to the mounting block not too far away. 'Okay then, let's move over there everyone. We need you two to be in the right positions to set this thing up.'";
			WaitLineBreak;
			decrease carried of centaur hair by 1;
			say "     Leading the way with the fucking harness under his arm, Lee guides you and Lucifer to the mounting block. Then he sets his load down, arranges the straps the right way and spreads out the central leather pad on the top surface. 'Well then - lie on here when you're ready,' the horseman says with a grin, patting the smooth material and giving Lucifer a glance. 'I know he's ready - just look at that thing!' Following his nod, you look under the feral mustang and see his proud shaft dangle erect like a fifth leg, its flared head already dripping with precum. You feel a shiver of sexual excitement run down your back at having the mighty beast so eager to fuck you, motivating you to set a new record in speed-stripping, just throwing your clothes and gear aside in the rush to take your assigned place.";
			say "     A moment later, you're lying stretched out on the fuck-pad, spreading your legs wide in anticipation of the stallion and his long cock. And you don't have to wait long, as Lucifer gives a dominant neigh and sets his heavy hooves into motion, coming to stand over you, his barrel-shaped chest barley an inch or two above your body. It is quite an experience to be so very close to the large feral beast, smelling his pleasant scents of clean fur and hay, feeling the warmth that his body radiates. You can't help but want to touch him, stretching our arms up to hug his chest, same as your legs clamp to the sides of his rump. Wow, this is just something else. Something in you says just to keep doing this, rest against the powerful stallion and be with him in peaceful togetherness - but it seems Lucifer has different ideas, as he bucks his hips suddenly, sending his erect cock to nudge your crotch and leaving a wet smear of precum on your naked body.";
			WaitLineBreak;
			say "     It's always a good idea not to let a dominant beast wait too long - and you're itching for his prick anyways - so you hastily reach down to grab hold of Lucifer's erection and guide it to your [if Player is female]trembling pussy[else]quivering pucker[end if]. After a first gentle brush of his flared head against your hole, you push it harder against yourself, and with a slurp, the horse's cock sinks into you, immediately followed by most of his shaft as he relentlessly bucks forward next. A short gasp in pain at the sudden, deep penetration escapes your lips before you can stifle it, and Lee grabs your shoulder to ask, 'You okay there? I hear the first moment is the worst, then things just get better and better - at least that's what our horse fucker always said.' He grunts in assent as you give a curt nod, still biting your teeth together as your [if Player is female]pussy[else]ass[end if] gets used to the equine shaft sunk deep into it.";
			say "     'Now just a moment longer,' Lee tells you - or maybe rather Lucifer, as he pats the stallion's neck with a careful air. 'Just gotta put on the straps and you can stroll around with this bitch sliding back and forth on that big piece of meat you got. Trust me, your predecessor loved it.' And with that, the farmhand deftly throws several leather straps over Lucifer's back, then steps around to take hold of the matching buckle and straps the harness to the big stallion, hefting you up a little as he pulls it tight. No longer just lying on the mounting block just used in a different kind of mounting than originally intended, you're now dangling freely under the feral mustang, chest pressed against him by the harness and your [if Player is female]pussy[else]ass[end if] impaled on his equine shaft. 'Good to go,' Lee calls out with a chuckle, then jogs away to a safe distance before turning around to watch.";
			WaitLineBreak;
			say "     Lucifer turns his head back and snorts in amusement at seeing you strapped in, hugging his chest, then he carefully steps sideways, pulling you off the mounting block. It is somewhat of a strange sensation - despite already having hung suspended from the horse, now there's nothing under you except open air, then eventually the harsh ground. All of which strengthens your bond to the mighty beast, making you feel like you can rely on him to carry you safely and be there if you need his protection as a member of the herd. And - of course - to fuck you hard when you're wound up like a bitch in heat... The first tentative steps that Lucifer takes jostles you back and forth in the harness, making your stretched hole slide up and down on his erection, much to both of your enjoyment.";
			say "     Each movement, big or small, has your stretched [if Player is female]pussy[else]asshole[end if] basically jerking Lucifer off at it slides around his prick, while his flared equine head brushes against very sensitive spots deep inside your hole. The slow trot in which you gasp and moan and he nickers in lust quickly escalates to a fast canter, bouncing you harder against his erection and making the horse's heavy balls swat against your butt with satisfying slaps. Being used like a giant fleshlight turns you on more than a little bit, and [if Player is female]your pussy gets soaking wet with femcum just drooling out around his erection[else]your own erection presses against Lucifer's belly hard, rubbing against the horse's soft fur[end if]. Your equine partner does a lap around the whole paddock, moving along the fence as if to show off the living sex-toy strapped to his underside. You can feel the gaze of many eyes rest upon you, both Lucifer's mares as well as other inhabitants of the farm that pass closely and look your way.";
			WaitLineBreak;
			say "     After completing a full circuit, the feral mustang stops for a moment and neighs to Lee standing against the fence nearby. There is grudging respect and gratitude in the horse's voice you think - telling you he's grateful for the farmhand having facilitated this way of mating you. While Lee gives a short laugh in reply, you feel the muscles of Lucifer tense and his thick shaft throb in your body, then with a sudden jolt, you're driven all the way down on his erection as the mustang breaks into a full-on gallop down the long side of the paddock. Where his earlier movement was kinda like a rhythmic thrusting and grinding against your stretched [if Player is female]pussy[else]asshole[end if], this now is a really heavy pounding that makes you twist and tremble from the sensations it creates. Arms and legs wrapped around the mustang, you pant, moan and scream in lust as the horse rides your body hard - and it doesn't take more than a few moments for you to reach your breaking point and the massive buildup of arousal breaks as a monumental climax.";
			say "     Lucifer lets out a loud and satisfied nicker as he feels your hole squeeze tight around his shaft. It is clear that the mustang feels on top of the world right now - hooves digging into the soft ground of his domain as he dashes forward at full speed, a sexy 'little' being like you strapped to himself and jostling on his pole, now even [if Player is female]screaming in lust and squirting even more femcum[else if Player is male]spurting wet streaks of cum against his belly as you inevitably orgasm from taking his manhood[else]screaming in lust as you orgasm[end if]. Yes, the proud stallion is definitively the master of his little realm here, with everyone in the paddock his to fuck - and breed, as he now does you. The large cockhead of Lucifer's equine prick swells and pushes its flared edge out into your already stretched insides, then the first long gush of cum blasts into you, followed by another, and another.[impregchance]";
			WaitLineBreak;
			say "     Throb after throb of his rich seed is deposited deep inside you, making you gasp at the warm and full feeling, as well as the sensations of wetness against your cheeks as cum spills out around the mustang's still thrusting shaft. [if Player is male]Between your bodies, there also is a creamy load you yourself blasted into his fur, being rubbed about as you're still jostled with each beat of the horse's hooves. [end if]Now that his lust is satisfied, Lucifer slows down a bit, then proceeds to check on his harem and trots around to show you off - all the while still enjoying having his maleness balls-deep inside you. It is enough of a turn-on that he doesn't even go soft, instead just resting inside you hard and throbbing.";
			say "     But even so, eventually Lucifer has his fill of carrying you around and the feeling of his cock sliding around in your sloshing hole, so he trots back to the mounting block and carefully steps over it, making sure you're not scraped by the edges as you come to rest with your back on the flat top. He whinnies loudly in a commanding tone, which brings Lee to join you before much longer. 'You okay down there,' the farmhand asks and pats your shoulder, then laughs as you reply with a moan. 'Quite a show you put on, but I guess you're exhausted as hell now. Okay, let me unstrap you.' His trained hands make quick work of undoing the leather straps, freeing Lucifer to slip away from on top of you. The feral mustang nuzzles your shoulder in a mixture of affection and dominance, and you can almost hear the meaning of, 'Good bitch' in his whinny before he trots off.";
			WaitLineBreak;
			say "     It takes a minute or three till you're recovered enough from the constant stimulation you just went through, then you slowly stand up on shaky legs. Lee meanwhile uses a rag he had in his back pocket to wipe the equine sex harness down and clean off the cum that leaked on it, then he packs it up and starts walking off. 'I'll be ready when you want another go. Just keep the payment ready and you're up for more equine fun-time,' he calls over his shoulder, then ducks out of the paddock through the holes between the fence boards.";
			[
			if HP of Lucifer is 0:
				now HP of Lucifer is 1;
				now SelenaLucifer is 1; [Selena will hear from this]
			]
			infect "Feral Mustang";
			PlayerEat 3;
			PlayerDrink 6;
			SanLoss 5;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
			[
				if level of Selena > 7 and SelenaLucifer < 2: [teen/adult Selena, hasn't observed the player with the mustang yet]
					now SelenaLucifer is 2; [saw the player and the mustang out of her window]
			]
		else:
			LineBreak;
			say "     Changing your mind about the whole situation, at least for now, you open your mouth to explain, but the horseman already gives you an annoyed look and waves you off as you start talking. 'I see. Stop wasting my time then. It's not that hard to remember - lock of centaur hair for me, fuck for you and him.' With a grumble, the farmhand then just walks off with the harness and leaves you standing alone with Lucifer. The big horse isn't all that pleased either at you winding him up and then not following through, so he stomps his hoof and snorts his farm breath into your face, then trots off towards his harem, no doubt to breed one or more of them.";
	else:
		LineBreak;
		say "     You open your mouth to explain that you don't have what Lee wants right now, but the horseman already gives you an annoyed look and waves you off as you start talking. 'I see. Stop wasting my time then. It's not that hard to remember - lock of centaur hair for me, fuck for you and him.' With a grumble, the farmhand then just walks off with the harness and leaves you standing alone with Lucifer. The big horse isn't all that pleased either at you winding him up and then not following through, so he stomps his hoof and snorts his farm breath into your face, then trots off towards his harem, no doubt to breed one or more of them.";


to say WildMustangDesc:
	setmongender 3;
	say "     The truly magnificent feral mustang comes to a stand before you, stomping a front hoof on the ground aggressively while giving you a domineering stare. You can see why horse-breeders want to get some of those genes back into the line of more domesticated breeds... and also, why this wild horse earned the name Lucifer for himself. With a patronizing snort from large nostrils, he trots his muscled, equine body around you on its shiny black hooves, cutting off your escape from his domain. Your eyes are inevitably drawn to the back end of his body, where the horse's large shaft starts to push out of its equine sheath. Seems like he's already counting you as one of his mares and is in the mood to breed you. An imperious whinny a moment later seems to ask why you're not already presenting yourself to be mounted, followed a moment later by a snort as he decides to just take you no matter what.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Feral Mustang";
	now enemy title entry is "Wild Mustang";
	now enemy Name entry is "Lucifer";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[one of]The feral mustang rushes forward and runs you down, making you fall and tumble into the thankfully cushioning grass.[or]The feral mustang charges at you, knocking you to the ground roughly![or]The mustang rears up and manages to land a heavy hoof on your shoulder![or]The mustang bites you with his blunt, but pretty big teeth![or]The stallion rears up, causing his semi-hard cock to slap against his equine belly and release a spurt of precum onto you and also giving you a good view of his impressive penis and bloated balls![at random]";
	now defeated entry is "[WildMustangLoses]";
	now victory entry is "[WildMustangWins]";
	now desc entry is "[WildMustangDesc]";
	now face entry is "equine in appearnce, with large brown eyes and rather expressive horse-like ears"; [ Face description, format as "Your face is (your text)."]
	now body entry is "tall and muscular, shaped like an anthro equine. It has powerful digitigrade legs ending in large hooves with fluffy fetlocks. Your hands seem to be slightly hoof-like as well, bearing little hooflet-like nails at the end of each finger"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]brown-furred[or]softly furred[or]short fur covered[at random]"; [ format as "You have (your text) skin"]
	now tail entry is "You have a long, thick, horse-like tail swaying behind you, almost reaching to the ground. Its long strands of coarse hair cover your ass completely as it flicks this way and that seemingly on its own."; [ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]equine[or]horse-like[or]blunt[or]powerful[at random]"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "its mouth stretches forward, merging with a rapidly flattening nose to form an equine muzzle. A groan escapes your widening lips as your forehead flattens and both eyes shift their position to the sides of your head, creating a strange new perspective to see the world in. Meanwhile, your ears lengthen into larger and pointed horse-like ears, which come to rest atop your now extremely equine face"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "muscles seem to shift around underneath the skin. Cramps cause you to stumble slightly as your heels move up both legs, forcing you to assume a more digitigrade stance, while your toes flatten and merge together to form broad hooves. By the time you catch your balance again and can stand straight on now digitigrade legs, the rest of your body has finished changing as well - leaving you with hands bearing rather hoof-like nails and pretty broad shoulders"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "coarse horse-like fur spreads all over your body, covering it in short dark brown fur"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it assumes a broad, well-rounded shape. Then long strands of thick hair begin to sprout from the base of your spine, quickly growing out to form a long and handsome equine tail. It hangs down past your knees and seems to flick from side to side as if it had a mind of its own"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it grows erect and aroused before beginning to shift and change. The point of your cock broadens and flattens slightly into a rather blunt equine shape, while a proper sheath forms around its base, with a ribbed ring about halfway up your member"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 8;
	now sex entry is "Female";         [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100;               [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 14;               [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 18;              [ Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere";       [ Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 18;
	now Ball Size entry is 4;        [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 0;        [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Length entry is 20;
	now Cunt Tightness entry is 12;
	now libido entry is 40;            [ Amount player Libido will go up if defeated ]
	now loot entry is "food";          [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 4;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]equine[at random]";
	now type entry is "equine";        [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 2 - NPC

[ HP of Lucifer (player interaction)                                  ]
[  0: Base State                                                      ]
[  1: made friendly sexual contact with the player                    ]

[ SelenaLucifer (Interactions with the mustang)                       ]
[  0: Base State                                                      ]
[  1: 'Heard about' the player having a connection to the horse       ]
[  2: Saw the player have sex with Lucifer                            ]
[  5: Told the player she'd like to spend time with the horse         ]
[ 10: Rode on Lucifer                                                 ]
[ 20: Got fucked by Lucifer                                           ]

[ Libido of Lucifer (status with Mataya the mare)                     ]
[  0: player doesn't know her                                         ]
[  1: ran into the mare before                                        ]

[ Dexterity of Lucifer (fuck-harness status)                          ]
[  0: not mentioned                                                   ]
[  1: player was told about it                                        ]
[  2: used successfully with Lucifer, Dex-1 is the running count      ]

Table of GameCharacterIDs (continued)
object	name
Lucifer	"Lucifer"

Lucifer is a man.
ScaleValue of Lucifer is 4.
Cock Count of Lucifer is 1.
Cock Length of Lucifer is 18.
Ball Size of Lucifer is 4.
Ball Count of Lucifer is 2.
Cunt Count of Lucifer is 0.
Cunt Length of Lucifer is 0.
Cunt Tightness of Lucifer is 0.
Nipple Count of Lucifer is 0. [2 nipples]
Breast Size of Lucifer is 0.
TwistedCapacity of Lucifer is false.
Sterile of Lucifer is false.
[Basic Interaction states as of game start]
PlayerMet of Lucifer is false.
PlayerRomanced of Lucifer is false.
PlayerFriended of Lucifer is false.
PlayerControlled of Lucifer is false.
PlayerFucked of Lucifer is false.
OralVirgin of Lucifer is false.
Virgin of Lucifer is true.
AnalVirgin of Lucifer is false.
PenileVirgin of Lucifer is false.
SexuallyExperienced of Lucifer is true.
MainInfection of Lucifer is "Feral Mustang".
Lucifer is in Mustang Paddock.
The description of Lucifer is "[Luciferdesc]".
The conversation of Lucifer is { "Mew!" }.

instead of conversing Lucifer:
	say "     The feral mustang gives a loud neigh as you try to draw him into a conversation. Make of that what you will.";

instead of sniffing Lucifer:
	say "     Lucifer has the masculine smell of a stallion in his prime - so mostly fur, with undertones of cum and sweat.";

to say Luciferdesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Lucifer] <- DEBUG[line break]";
	say "     Lucifer is a proud feral mustang with a shining brown coat and an equine body just made to run. Originally caught somewhere in Nevada to serve as a stud, bringing his wild genes into more domesticated breeds, he has resisted [if HP of Lucifer < 1]all[else]most[end if] attempts at taming him even a little bit. With the coming of the nanite apocalypse, his dominance over the paddock he was kept in has become absolute, as most who intrude into his domain end up transforming into mares, after being subdued and mounted by the large beast.";
	if HP of Lucifer is 1:
		say "     Since your little sexual adventure with the magnificent stallion, he at least accepts your presence, but nevertheless still interposes himself whenever you take a step towards his harem.";

instead of fucking Lucifer:
	if (lastfuck of Lucifer - turns < 6):
		say "     As you approach Lucifer with lust on your mind, you find that the large horse doesn't seem all that interested to your advances right now. Maybe you should give him some time to rest before trying to get it on with the mustang again...";
	else:
		say "[LuciferSexMenu]";

Wild Mustang ends here.
