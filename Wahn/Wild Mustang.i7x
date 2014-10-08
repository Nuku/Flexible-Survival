Version 1 of Wild Mustang by Wahn begins here.

"Adds a feral Mustang to Flexible Survival."
 
MustangMareConversion is a number that varies. 
 
Section 1 - Monster Responses

when play begins:
	add { "Wild Mustang" } to infections of girl;

to say WildMustangWins:
	if hp of player > 0:
		say "     As you submit, Lucifer gives a satisfied whinny, then slowly trots forward and shoves you with his side, making you fall down on the short grass. Knowing what will likely come next and not wanting to enrage the feral beast, you quickly strip and take position with your hips raised high. ";
	otherwise:
		say "     As you finally collapse in exhaustion, Lucifer gives a satisfied whinny, then lowers his head and nips at your clothes, pulling and ripping to get it out of the way. With no chance anymore to get around this, you finally give in and quickly strip to save the rest of your clothes from being destroyed. ";
	if cunts of player > 0:
		say "A moment later, you feel a sudden weight move atop you, pinning you to the ground on your hands and knees. Next comes the touch of something long and hard sliding along your back - Lucifer's erect cock, laying hot against your skin. This hugely hung stallion does indeed fully intend to mount you[if cunt width of player < 6]. You can feel his enlarged, flared glans pressing at your pussy, trying to spread open your hole for him until it finally gives and allows him entry, making you moan loudly as it pushes in[end if][if cunt length of player < 28]. With one thrust that sends shivers of lustful delight, he drives as much of his huge cock inside you as he can[otherwise]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending shivers of lustful delight through you and making him whinny excitedly at finding a mare big enough to take him[end if]. He moves in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds your pussy hard and deep.";
		say "     After being speared on the mustang's shaft again and again for you don't know how long, eventually Lucifer gives a loud and lusty neigh, then drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[impregchance]";
	otherwise if "Less Anal" is not listed in feats of player:
		say "     The feral mustang snorts in frustration as he sniffs you and doesn't find a pussy for him to fill, but nevertheless moves into position atop of you, pinning you to the ground on your hands and knees. Next comes the touch of something long and hard sliding along your back - Lucifer's erect cock, laying hot against your skin. Stomping his hooves on the ground around you, the large horse bucks a few times with his hips, making that big piece of horseflesh rub against your body, then slap against your rear a few times as he lines himself up correctly. Now in the perfect breeding stance, the mustang grinds his cock against your crack for a moment, then thrusts into you with a whinny of pleasure. You groan as the feral beast's horse cock is driven deep, its flat glans spreading you wide as he starts plowing into you.";
		say "     Gripping handfuls of grass tight enough to rip them out of the ground, you moan loudly beneath Lucifer as he uses you as his mare. He thrusts in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds into you over and over. With a loud and lusty neigh, he eventually drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws and trots off proudly.[mimpregchance]";
	otherwise:
		say "     The feral mustang snorts in frustration as he sniffs you and doesn't find a pussy for him to fill, but nevertheless moves into position atop of you, pinning you to the ground on your hands and knees. Next comes the touch of something long and hard sliding along your back - Lucifer's erect cock, laying hot against your skin. Stomping his hooves on the ground around you, the large horse bucks a few times with his hips, making that big piece of horseflesh rub against your body. You can feel the wetness of his pre-cum dribble down on you, showing you what to expect as he continues to grind against you for some time, then eventually comes with a loud and lusty neigh. His glans flares widely and blast after blast of mustang cum splatters onto you, leaving you soaked in his semen. After the last spurt leaks onto you, he snorts again and trots off, frustrated and only a little satisfied.";
	decrease humanity of player by 10;
	if humanity of player < 0:
		now MustangMareConversion is 1;
	otherwise:
		say "     Something inside you calls out for you to just stay, rest on the grass till your stallion comes by again to breed you, become a true mare - but no, you're not that far gone yet. Using the opening Lucifer's overconfidence of not even watching you too closely presents, you quickly snatch up your gear and clothes, then run off to the gate, quickly slipping through and locking back up before the feral mustang can follow.";

to say WildMustangLoses:
	say "     After giving Lucifer another good slap, the large horse takes a few dazed, hesitant steps and stops attacking. Looks like he's had enough for now. In all likely-hood, he'll return to his untamed ways once he's had time to rest and regain his strength, but... an idea springs to your mind that maybe there is a way of making peace with the large beast, now that you've got him pacified for the moment. He's used to people trying to ride him in - which clearly hasn't worked so far - so the opposite might do the trick. Do you want to show the feral mustang some physical affection as a willing partner?";
	if player consents:
		say "[LuciferSexMenu]";
	otherwise:
		say "     Where did that thought even come from? Getting sexual with a horse! Pfft - the nanites must be getting to you. Shaking your head to clear it, you quickly leave the paddock and lock its gate behind you.";
		move player to Central Farm Square;
	
to say LuciferSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger the stallion's ass";
	now sortorder entry is 1;
	now description entry is "Rub Lucifer's prostate to make him cum";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck the stallion's ass";
		now sortorder entry is 2;
		now description entry is "Pound your dick into Lucifer's hole";
	[]
	if (cunts of player > 0):
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
				now lastfuck of Lucifer is turns;
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the mustang stallion, shaking your head slightly as he gives a questioning look. Then you walk back to the gate leading out into of this paddock and step through, securely locking it behind you.";
				move player to Central Farm Square;
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;
	
to say LuciferSex1:    [fingering Lucifer's ass]
	say "     You calmly step up to the large horse, slowly stroking his long neck and patting his flank[if hp of Lucifer is 0] to show that the fight is over. [otherwise]. [end if]As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking your hand along his muscled flank until you reach the rear end. Calmly telling the horse to relax, you set a hand on his equine rump, then start groping firm flesh of his ass, making the mustang give a curious and slightly aroused whinny as he turns his head to look back at you. Continuing in the same nonthreatening manner, you take hold of his long, dark brown tail and pull it up to reveal the horse's asshole. You lean forward and lick over the feral mustang's pucker, revelling in his pleased neigh at feeling you touch him like that. Running your tongue up and down his crack, then poking his hole with it, you make Lucifer whinny in what seems to be a request to keep going.";
	say "     Oh, but that's only the start of what you have planned for him... you bring your hand to his hole and start to massage it. After starting slow with one and two fingers, you get him to loosen up and soon are able to slip three, then four fingers in - followed by your whole hand. Pushing deeper into the mustang's body, you stroke his inner passage, grinning at the lust-filled neighs and whinnys you create with that. Feeling around a bit, you find a spot that seems especially sensitive, judging from the joy-filled snorts Lucifer does every time you stroke over it. Concentrating on that, it doesn't take much longer until the stallion orgasms, his sphincter gripping your arm tightly as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle.";
	if hp of Lucifer is 0:
		now hp of Lucifer is 1;
		say "     [line break]";
		say "     As you pull out of Lucifer's back passage, the horse turns around and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";
	infect "Wild Mustang";
	
to say LuciferSex2:    [fucking Lucifer's ass]
	say "     You calmly step up to the large horse, slowly stroking his long neck and patting his flank[if hp of Lucifer is 0] to show that the fight is over. [otherwise]. [end if]As he calms down a bit after the initial touch, you gently guide him over to the wooden three-step mounting block nearby, stopping Lucifer in just the right position besides it. Then you start walking around the mustang's body, stroking your hand along his muscled flank until you reach the rear end. Calmly telling the horse to relax, you set a hand on his equine rump, then start groping firm flesh of his ass, making the mustang give a curious and slightly aroused whinny as he turns his head to look back at you. Continuing in the same nonthreatening manner, you take hold of his long, dark brown tail and pull it up to reveal the horse's asshole. You lean forward and lick over the feral mustang's pucker, revelling in his pleased neigh at feeling you touch him like that. Running your tongue up and down his crack, then poking his hole with it, you make Lucifer whinny in what seems to be a request to keep going.";	
	say "     Oh, but you've got other plans right now... stepping up on the mounting block's step with the right height, you open up your pants and free your hard cock, stroking it in anticipation of fucking this feral beast. Rubbing it up and down his crack, you tease Lucifer a bit first, pushing the tip against his opening, then going back to more rubbing. Only when you got him so hot and bothered that he stomps his front right hoof impatiently do you plunge in, thrusting deep into his back passage in one go. Owning to the large size of Lucifer's equine body, his hole is quite big too, but somehow Lucifer reflexively grips your shaft pretty tightly with his anal muscles. All in all, your manhood pushing into his body feels quite nice, and as you start thrusting in and out faster, you evoke a whole new level of aroused neighs and whinnys from Lucifer.";
	say "     [WaitLineBreak]";
	say "     Hitting all the sensitive spots deep inside him, the wild mustang snorts as if to prod you on to fuck him even harder. Eagerly complying, you fuck Lucifer with abandon, your hips slapping loudly against his equine body with the force of your thrusts. Soon, the wild ride you're giving him pushes the mustang over the edge and he orgasms, his sphincter gripping your shaft like a vise as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle. With Lucifer's hot hole tight around your cock and creating breathtaking sensations as you continue to pound his ass, you soon feel a familiar tingle rise in your balls yourself. Plunging in one last time, you grind your hips against his equine rump and hold on tight as you come, shooting burst after burst of cum deep into his asshole.";
	if hp of Lucifer is 0:
		now hp of Lucifer is 1;
		say "     [line break]";
		say "     As you pull out of Lucifer's back passage, the horse turns around and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";	
	infect "Wild Mustang";
		
to say LuciferSex3:     [player pussy fucked]
	say "     You calmly step up to the large horse, slowly stroking his long neck and patting his flank[if hp of Lucifer is 0] to show that the fight is over. [otherwise]. [end if]As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then strip off your clothes and move under the horse, taking position on all fours with your ass raised high.";
	say "     Reaching back to take hold of his equine cock, you rub it against your body, making the large beast snort in surprise at someone so eager and willing to let him mount them[if hp of Lucifer is 0], especially after a fight[end if]. It doesn't take too long for Lucifer to get over it though - pretty soon, the mustang starts to fidget a bit, making his long and hard cock rub against you[if cunt width of player < 6]. You can feel his enlarged, flared glans pressing at your pussy, trying to spread open your hole for him until it finally gives and allows him entry, making you moan loudly as it pushes in[end if][if cunt length of player < 28]. With one thrust that sends shivers of lustful delight, he drives as much of his huge cock inside you as he can[otherwise]. With a single thrust, he buries his huge cock completely inside your enormous pussy, sending shivers of lustful delight through you and making him whinny excitedly at finding a mare big enough to take him[end if]. He moves in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds your pussy hard and deep.";
	say "     After being speared on the mustang's shaft again and again for you don't know how long and having multiple orgasms from your interspecies dalliance, eventually Lucifer gives a loud and lusty neigh, then drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws, with more cum dripping down on you as the flared shaft slips from your pussy.[impregchance]";
	if hp of Lucifer is 0:
		now hp of Lucifer is 1;
		say "     [line break]";
		say "     As you get out from under Lucifer and stand up, the horse turns his head towards you and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";	
	infect "Wild Mustang";
		
to say LuciferSex4:    [player ass fucked]
	say "     You calmly step up to the large horse, slowly stroking his long neck and patting his flank[if hp of Lucifer is 0] to show that the fight is over. [otherwise]. [end if]As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then strip off your clothes and move under the horse, taking position on all fours with your ass raised high.";
	say "     Reaching back to take hold of his equine cock, you rub it against your body, making the large beast snort in surprise at someone so eager and willing to let him mount them[if hp of Lucifer is 0], especially after a fight[end if]. It doesn't take too long for Lucifer to get over it though - pretty soon, the mustang stomps his hooves on the ground around you and bucks a few times with his hips, making that big piece of horseflesh rub against your body, then slap against your rear a few times as he lines himself up correctly. Now in the perfect breeding stance, the mustang grinds his cock against your crack for a moment, then thrusts into you with a whinny of pleasure. You groan as the feral beast's horse cock is driven deep, its flat glans spreading you wide as he starts plowing into you.";
	say "     Gripping handfuls of grass tight enough to rip them out of the ground, you moan loudly beneath Lucifer as he uses you as his mare. He thrusts in and out of you, snorting and grunting in a purely bestial manner as that gigantic rod pounds into you over and over. With a loud and lusty neigh, he eventually drives deep inside you and cums powerfully, filling you with copious amounts of mustang spunk. His huge balls throb and expel cup after cup of virile, equine seed into you until finally you are left bloated and panting on the ground when he finally withdraws, with more cum dripping down on you as the flared shaft slips from your pussy.[mimpregchance]";
	if hp of Lucifer is 0:
		now hp of Lucifer is 1;
		say "     [line break]";
		say "     As you get out from under Lucifer and stand up, the horse turns his head towards you and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";	
	infect "Wild Mustang";
			
to say LuciferSex5:    [suck him off]
	say "     You calmly step up to the large horse, slowly stroking his long neck and patting his flank[if hp of Lucifer is 0] to show that the fight is over. [otherwise]. [end if]As he calms down a bit after the initial touch, you start walking around Lucifer's body, stroking along his muscled flank until you reach the rear end and let your hand slide under his furred body. Calmly telling the horse to relax, you take hold of his large balls and gently squeeze them, then move on to his equine cock as it emerges from its sheath. As you start jerking off the long tube of his shaft, the mustang give a curious and at the same time aroused whinny and he turns his head to look back at you. Continuing in the same nonthreatening manner, you let go of his erection a moment later, then strip off your clothes and move under the horse, taking a kneeling position right under his belly.";
	say "     Reaching back to take hold of Lucifer's equine cock, you rub it against your body, making the large beast snort in surprise at someone so eager and willing to service him[if hp of Lucifer is 0], especially after a fight[end if]. Leaning forward, you bring that large cock to your mouth and start licking and kissing at its flared glans, making it swell faster. Soon, mustang pre is leaking onto your tongue. You lick and suck at it until it grows too large and full to fit in your mouth before pulling it you. You run your hands along the equine member and fondle those huge balls while tending to the giant horse cock before you. As his glans flares and he starts to whinny excitedly, you hold the end with one hand while rubbing his balls with the other. Holding it in place, you get him to blast shot after shot of hot, equine cum into your mouth and down your throat. You swallow as much of it as you can, though much of his copious flow ends up running down your chest.";
	if hp of Lucifer is 0:
		now hp of Lucifer is 1;
		say "     [line break]";
		say "     As you get out from under Lucifer and stand up, the horse turns his head towards you and gives you an appreciative snort, followed by a stomp of his hoof on the ground - as if to say, 'You're okay, but that doesn't mean anyone else who comes in here won't get what's coming to them.' A wave of his head towards the harem of mares at the back of the paddock follows, together with a really forceful hoof-stomp. You decide to interpret that as a, 'The mares are MINE. Don't go messing with them.'";	
	infect "Wild Mustang";	
	decrease hunger of player by 3;
	if hunger of player < 0, now hunger of player is 0;
	decrease thirst of player by 6;
	if thirst of player < 0, now thirst of player is 0;
	decrease humanity of player by 5;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by 2;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;

to say WildMustangDesc:
	say "     The truly magnificent feral mustang comes to a stand before you, stomping a front hoof on the ground aggressively while giving you a domineering stare. You can see why horse-breeders want to get some of those genes back into the line of more domesticated breeds... and also, why this wild horse earned the name Lucifer for himself. With a patronizing snort from large nostrils, he trots his muscled, equine body around you on its shiny black hooves, cutting off your escape from his domain. Your eyes are inevitably drawn to the back end of his body, where the horse's large shaft starts to push out of its equine sheath. Seems like he's already counting you as one of his mares and is in the mood to breed you. An imperious whinny a moment later seems to ask why you're not already presenting yourself to be mounted, followed a moment later by a snort as he decides to just take you no matter what.";

Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Wild Mustang"; [Name of your new Monster]
	now attack entry is "[one of]The feral mustang rushes forward and runs you down, making you fall and tumble into the thankfully cushioning grass.[or]The feral mustang charges at you, knocking you to the ground roughly![or]The mustang rears up and manages to land a heavy hoof on your shoulder![or]The mustang bites you with his blunt, but pretty big teeth![or]The stallion rears up, causing his semi-hard cock to slap against his equine belly and release a spurt of precum onto you and also giving you a good view of his impressive penis and bloated balls![at random]";
	now defeated entry is "[WildMustangLoses]";
	now victory entry is  "[WildMustangWins]";
	now desc entry is "[WildMustangDesc]";
	now face entry is "broad equine muzzle, with large brown eyes and rather expressive horse-like ears on top of your";[ Face description, format as the text "Your have a (your text) face."] 
	now body entry is "tall and muscular, shaped like an anthro equine. It has powerful digitigrade legs ending in large hooves with fluffy fetlocks. Your hands seem to be slightly hoof-like as well, bearing little hooflet-like nails at the end of each finger";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "[one of]brown-furred[or]softly furred[or]short fur covered[at random]";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long thick horse-like tail swaying behind you almost to the ground, its long strands of coarse hair covering your ass completely as it flicks this way and that seemingly on its own.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "[one of]equine[or]horse-like[or]blunt[or]powerful[at random]";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "its mouth stretches forward, merging with a rapidly flattening nose to form an equine muzzle. A groan escapes your widening lips as your forehead flattens and both eyes shift their position to the sides of your head, creating a strange new perspective to see the world in. Meanwhile, your ears lengthen into larger and pointed horse-like ears, which come to rest atop your now extremely equine face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "muscles seem to shift around underneath the skin. Cramps cause you to stumble slightly as your heels move up both legs, forcing you to assume a more digitigrade stance, while your toes flatten and merge together to form broad hooves. By the time you catch your balance again and can stand straight on now digitigrade legs, the rest of your body has finished changing as well - leaving you with hands bearing rather hoof-like nails and pretty broad shoulders"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "coarse horse-like fur spreads all over your body, covering it in short dark brown fur."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it assumes a broad, well-rounded shape. Then long strands of thick hair begin to sprout from the base of your spine, quickly growing out to form a long and handsome equine tail. It hangs down past your knees and seems to flick from side to side as if it had a mind of its own"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it grows erect and aroused before beginning to shift and change. The point of your cock broadens and flattens slightly into a rather blunt equine shape, while a proper sheath forms around its base, with a ribbed ring about halfway up your member"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 8;
	now sex entry is "Female";               [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;                     [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 14;                     [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 18;                    [ Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere";             [ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0;                    [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 18;             [ Length infection will make cock grow to if cocks]
	now cock width entry is 25;              [ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;                  [ Number of Breasts infection will give you. ]
	now breast size entry is 0;              [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;         [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                    [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 20;             [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 12;              [ Width of female sex  infection will try and give you ] 
	now libido entry is 40;                  [ Amount player Libido will go up if defeated ]
	now loot entry is "food";                [ Loot monster drops, ]
	now lootchance entry is 0;               [ Chance of loot dropping 0-100 ]
	now scale entry is 4;                    [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]equine[at random]";
	now type entry is "equine";              [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;            [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;       [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;           [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";        [ Row used to designate any special combat features, "default" for standard combat. ]

Section 2 - NPC

Lucifer is a man. Lucifer is in Mustang Paddock.
The description of Lucifer is "[Luciferdesc]".
The conversation of Lucifer is { "Mew!" }.

instead of conversing Lucifer:
	say "     The feral mustang gives a loud neigh as you try to draw him into a conversation. Make of that what you will.";

instead of sniffing Lucifer:
	say "     Lucifer has the masculine smell of a stallion in his prime - so mostly fur, with undertones of cum and sweat. ";

to say Luciferdesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Lucifer] <- DEBUG[line break]";
	say "     Lucifer is a proud feral mustang with shining brown coat and an equine body just made to run. Originally caught somewhere in Nevada to serve as a stud, bringing his wild genes into more domesticated breeds, he has resisted [if hp of Lucifer < 1]all[otherwise]most[end if] attempts at taming him even a little bit. With the coming of the nanite apocalypse, his dominance over the paddock he was kept in has become absolute, as most who intrude into his domain end up transforming into mares, after being subdued and mounted by the large beast.";
	if hp of Lucifer is 1:
		say "     Since your little sexual adventure with the magnificent stallion, he at least accepts your presence, but nevertheless still interposes himself whenever you take a step towards his harem.";
	
instead of fucking Lucifer:
	if (lastfuck of Lucifer - turns < 6):
		say "     As you approach Lucifer with lust on your mind, you find that the large horse doesn't seem all that interested to your advances right now. Maybe you should give him some time to rest before trying to get it on with the mustang again...";
	otherwise:
		say "[LuciferSexMenu]";

Section 3 - Endings

when play ends:
	if MustangMareConversion is 1:
		say "     Being used as Lucifer's mare is finally enough to push you over the edge. You can't help but lie on the grass, dripping his cum and feeling it dry on your skin, until the feral mustang eventually returns to fuck you again, and again. Eventually, your form shifts to that of a true feral mare and you join the harem of the powerful stallion, well-bred and well-protected from any challenger to Lucifer's might.";
		stop the action;
		
Wild Mustang ends here.
