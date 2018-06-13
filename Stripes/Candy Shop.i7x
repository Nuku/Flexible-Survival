Version 1 of Candy Shop by Stripes begins here.
[Version 1.1 - Sugar Glider welcome]
[6.5]

"Adds a Sweet Tooth (Candy Shop) location populated by a pack of friendly, energetic ferrets."

Section 1 - Candy Shop event

CandyShop is a situation. The level of CandyShop is 9.
The sarea of CandyShop is "Midway".
sugarferretfight is a number that varies.

when play begins:
	add CandyShop to badspots of girl;
	add CandyShop to badspots of guy;
	add CandyShop to badspots of furry;

Instead of resolving a CandyShop:
	say "     You are in one of the more permanent sections of the state fair where small shops and booths have been built. Things are a little more peaceful here, giving you a moment to relax and look around. The wild lights and sounds of the fair are more subdued here and you don't spot any crazy creatures running around. In fact, there doesn't seem to be much activity at all.";
	say "     You carefully start looking around, finding that the buildings have already been broken into and ransacked. The displays are destroyed, the drink fountains drained and sticky messes all over the place. You are about to give up when you hear some jovial laughter coming from a candy shop. Peeking inside, you see it overrun by a pack of small, ferret people. Their fur comes in a variety of soft, pastel colors. Their cute, tubular bodies bounce around playfully as they share the candy they've clearly hoarded from the neighboring shops. When one of them spots you, he smiles and waves in a friendly manner, holding up a pack of red licorice.";
	say "     [bold type]Shall you step inside?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		setmonster "Sugar Ferret";
		if bodyname of player is "Sugar Glider" or facename of player is "Sugar Glider":
			say "     Tempted by the candy, you decide they don't look very threatening and poke your head inside. The business of ferrets inside quickly snatch their piles of candy and look at you. The first to spot you, a teal ferret, yells 'Candy thief!' and the group poings on top of you, trying to mob you. Unsure what you've done, you yell that you're just here to visit and are eventually released, if viewed with some suspicion. The ferrets keep a close eye on you and are tight-fisted with their candy around you. Teasing insults of 'candy ass' and 'sugar snatcher' are bandied about by them when they talk to you.";
			say "     When you don't do anything untowards and keep your paws to yourself for a while, they start to relax a little, though the playful name calling continues. The ferrets bound around happily as they play with one another or swap candy between their piles, though none give you any treats from their collections. Watching their antics, you can't help but be amused. The ferrets are a mix of males and females, but seem more focused on playing around than sex, at least for the moment. They're short, ranging from about four and five feet tall, and come in a variety of soft, pastel colors, much like those of many dry, crunchy candies you've had as a kid.";
			say "     Between their play, you manage to talk to a few of them, learning that they're largely left alone here. 'Except for you cotton-brained thieves,' a pale yellow hob tells you. 'We just want to play around and enjoy our delicious, sweet treats. Ours,' he adds with extra emphasis, keeping his paws protectively around the pile of candy in front of him. 'Speaking of,' the little guy asks as he leans in close, [if player is female]running his fingers along the edge of your pouch[else]reaching for your backpack[end if], 'you wouldn't happen to have any filched soda in there? I'm all out.'";
		else:
			say "     Tempted by the candy, you decide they don't look very threatening and poke your head inside. The business of ferrets inside smile and greet you in a friendly manner, happily bounding around as they play with one another or swap candy between their piles. Several of them give you treats from their collection, which you politely enjoy. Watching their antics, you can't help but be amused. The ferrets are a mix of males and females, but seem more focused on playing around than sex, at least for the moment. They're short, ranging from about four and five feet tall, and come in a variety of soft, pastel colors, much like those of many dry, crunchy candies you've had as a kid.";
			say "     Between their play, you manage to talk to a few of them, learning that they're largely left alone here. 'Oh, we just want to play around and enjoy our delicious, sweet treats. Speaking of,' the pale yellow one you're talking to asks as he leans in close, 'you wouldn't happen to have any soda in there? I'm all out.'";
		now lastcaffeine of Sweet Tooth is turns;
		if soda is owned:
			say "     You slide off your pack and open it up, pulling out a bottle of cola, thinking perhaps to trade for some of the candy. 'Ooo! Cola!' the ferret says, snatching the bottle from your hands before poinging away, attracting the attention of the others. 'PopPopPop!' 'Hey gimme!' 'Cola!' 'Come on, share!' 'Caffeine!' The others quickly take notice and start demanding of their friend as they bouncing up and down excitedly. Struggling a little, the maize ferret frantically grabs the cap in his teeth and twists it open to the cheers of his brethren. After taking a big swig, the bottle is snatched away and is soon getting passed around, everyone demanding a drink.";
			say "     At first, their antics over the cola are amusing, but you notice things getting more rambunctious as the ferrets start pushing and shoving to get another drink. Their fur gets ruffled and scraggly and their colors grow richer, becoming vibrant reds, yellows, greens, blues and their eyes turn a bright, fiery red. Sheaths swell and cocks start to poke free. Pussies grow wet and dripping. You start backing away towards the door when one of them notices you, turning to look at you with a demonic, pointy-toothed grin. While several of the ferrets in here have already paired off into groups for lustful sex, the others turn their attention on you. They poing towards you in a manner which would be cute if it weren't for the sinister, lustful looks and their fanged grins.";
		else:
			say "     Shaking your head, you tell him that you don't have any pop. 'Oh, pop?' another of the ferrets pipes up. 'I've still got some,' he says, taking a bottle out from the cabinet behind him. 'Ooo! Cola!' the first ferret says, snatching the bottle from his friend's hands before poinging away, attracting the attention of the others. 'PopPopPop!' 'Hey gimme!' 'Cola!' 'Come on, share!' 'Caffeine!' The others quickly take notice and start demanding of their friend as they bouncing up and down excitedly. Struggling a little, the maize ferret frantically grabs the cap in his teeth and twists it open to the cheers of his brethren. After taking a big swig, the bottle is snatched away and is soon getting passed around, everyone demanding a drink.";
			say "     At first, their antics over the cola are amusing, but you notice things getting more rambunctious as the ferrets start pushing and shoving to get another drink. Their fur gets ruffled and scraggly and their colors grow richer, becoming vibrant reds, yellows, greens, blues and their eyes turn a bright, fiery red. Sheaths swell and cocks start to poke free. Pussies grow wet and dripping. You start backing away towards the door when one of them notices you, turning to look at you with a demonic, pointy-toothed grin. While several of the ferrets in here have already paired off into groups for lustful sex, the others turn their attention on you. They poing towards you in a manner which would be cute if it weren't for the sinister, lustful looks and their fanged grins.";
		now sugarferretfight is 3;
		challenge "Sugar Ferret";
		if sugarferretfight is 3:
			say "     Managing to weave between a pair of the ferrets, you dive out the door and make a run from the candy shop. The manic ferrets pursue you briefly, but veer off to raid another of the nearby shops.";
		else if sugarferretfight is 1:
			say "     Aside from those you've dazed, the other colorful ferrets are lustfully fucking all around you. Feeling you only have a moment before those finishing up take notice of you, you grab your pack and stuff a few handfuls of candy into it before rushing out the door.";
			say "     Snacks (chips) x 2 added to inventory.";
			increase carried of chips by 2;
			increase score by 10;
		else:
			say "     Pinned down by a swarm of pointy-toothed ferrets overcome by a rush of manic energy, you find yourself being groped and fondled by numerous little paws. As your lust builds, a pair of blue paws grab your head, guiding it to the crimson cock of another ferret. The taste of his pre is very sweet, exciting you further. You can feel hard cocks and wet pussies grinding against you[if player is male]. Paws grab your erect penis and balls, stroking and fondling them[end if][if player is female]. Furry fingers are stuffed into your pussy, thankfully careful with those sharp claws of theirs[end if]. You are teased and fondled until you the ferret cock stuffed in your mouth throbs and pulses its sticky load down your throat. You are then pushed over and another of the males mounts you, driving his cock into your [if player is female]pussy[else]ass[end if], fucking you wildly. After a quick, but frantic romp, his load is sprayed deep inside you as well. After that, things get hazy, being made to lick pussies, suck cocks and have sex with the ferrets, who seem to have unending energy. Eventually, they tire of you and you're tossed out to make room for another big romp on a pile of candy.[impregchance]";
			let x be a random number between 1 and 3;
			choose row monster from table of random critters;
			if x is 1:
				say " Your skin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [skin change entry].";
				now skinname of player is name entry;
				now skin of player is skin entry;
			if x is 2:
				say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
				now facename of player is name entry;
				now face of player is face entry;
			if x is 3:
				say " Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [ass change entry].";
				now tailname of player is name entry;
				now tail of player is tail entry;
			now libido of player is ( libido of player + 50 ) / 2;
			decrease humanity of player by 5;
		say "     You can now find your way back to the Sweet Tooth candy store, though you'd best wait until the ferrets come off their caffeine buzz before doing so.";
		now Sweet Tooth is known;
		increase ferretvisit by 1;
	now CandyShop is resolved;


Section 2 - Sweet Tooth

Sweet Tooth is a room. "[Sweet Tooth scene]". It is unknown. It is fasttravel. It is private.

Sweet Tooth has a number called lastcaffeine.
randomferret is a list of numbers that varies.
ferretvisit is a number that varies.

to say Sweet Tooth scene:
	if lastcaffeine of Sweet Tooth - turns < 8:
		if caffeinehigh of player > 0:
			say "     Swinging by the shops on the fairgrounds, you take a peek in the candy shop. You can see the ferrets inside are still manic with excess energy. The thought that they won't have any cola there for you to get another fix pops into your head. Regardless of any plans you may have had, you turn and go looking for some soda elsewhere to satisfy your cravings.";
		else:
			say "     Swinging by the shops on the fairgrounds, you take a peek in the candy shop. You can see the ferrets inside are still manic with excess energy. You decide it'd be best to not enter right now.";
	else if ferretvisit is 1:
		[puts Sugar Ferret as lead monster for impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Sugar Ferret":
				now monster is y;
				break;
		if "Female Preferred" is listed in feats of player:
			now sex entry is "Female";
		else if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
		else:
			now sex entry is "Male";
		now area entry is "Midway";
		now non-infectious entry is false;
		now resbypass entry is true;
		now sugarferretfight is 0;
		if bodyname of player is "Sugar Glider" or facename of player is "Sugar Glider":
			say "     Returning to the candy shop, you look inside to find that the ferrets have settled down. Back to their previous, cute selves, they bounce around happily as they share candy with one another. One of them, the yellow fellow from before, spots you looking in and quickly dashes outside. Poinging atop you, he runs his paws over your marsupial form. 'And now you come back to us as one of those candy assed thieves. Did you at least bring us some pop this time?' Before you can respond, you're pulled inside by him and a few of his brethren. 'Come on, let's have a little fun and do a little trading, you sugary scoundrel.'";
			say "     As they pull you inside in some strange mix of welcoming you and capturing you, the yellow one continues talking. 'We should have done some proper trading to go along with the sweet fun we had, but we got a little over-excited. I just wanted a quick drink, but things got out of hand. Cola just so good that we get a little crazy.'";
			say "     Once inside, you are kept away from the candy by the ferrets, who run their paws over your body and lick at you playfully. The yellow ferret and a few others snuggle up to you. They chirr happily and teasingly call you names even as they cuddle up to you. 'How about we give this candy thief a proper welcome,' one of the hobs says, which is followed by a chorus of yeah's from the others. When a paw slips between your legs to fondle you, you open your mouth to say something, but a pink jill pushes her muzzle to your lips, kissing you. The sweet taste of her kiss makes you moan and momentarily forget what you were going to say. The soft paws roaming your body help you slip your clothes off. As you're fondled, several of the pastel ferrets take turns kissing you while the others nuzzle and kiss you all over.";
		else:
			say "     Returning to the candy shop, you look inside to find that the ferrets have settled down. Back to their previous, cute selves, they bounce around happily as they share candy with one another. One of them, the yellow fellow from before spots you looking in and quickly dashes outside. Taking your hand in his little paws, he starts pulling you towards the shop. 'Oh, we're really sorry about what happened the other day. I just wanted a quick drink, but things got out of hand. Cola just so good that we get a little crazy. But it's okay now.'";
			say "     Following him inside, you are greeted merrily by the rest of the business who give you some happy snuggles and also apologize, promising to be good. Many of them even give you some choice candies as apology gifts. Finding them just so cute, you can't help but accept their apologies and sit down to join them for a bit. 'Yay!' they cheer, poinging around the room in celebration, making you chuckle.";
			decrease hunger of player by 6;
			if hunger of player < 0, now hunger of player is 0;
			say "     As you munch on the candies you were given, the yellow ferret and a few others snuggle up to you. They chirr happily at having their new friend back and run their paws over your body. 'Let us make it up to you,' one of the hobs says, which is followed by a chorus of yeah's from the others. When a paw slips between your legs to fondle you, you open your mouth to say something, but a pink jill pushes her muzzle to your lips, kissing you. The sweet taste of her kiss makes you moan and momentarily forget what you were going to say. The soft paws roaming your body help you slip your clothes off. As you're fondled, several of the pastel ferrets take turns kissing you while the others nuzzle and kiss you all over.";
		say "     You grow increasingly excited as the ferrets play with you, soon eagerly sliding your tongue into each fresh muzzle that's presented to you for a kiss[if cocks of player is 1]. During one deep kiss, you feel another muzzle slide down over your cock, licking and sucking at it eagerly[else if cocks of player > 1]. During one deep kiss, you feel warm muzzles slide down over your cocks, licking and sucking at them[else if cunts of player is 1]. You feel a soft muzzle nuzzle at your pussy and a tongue start licking your folds[else if cunts of player > 1]. You feel a soft muzzle nuzzle at your pussies and a tongue start licking your folds[else]. You feel a soft muzzle nuzzle at your bare crotch, licking it with soft, tender motions. 'Oh, you poor sprite!' the ferret down there says[end if]. Reaching down, you rub a hands over the ferret's head and chirr happily.";
		say "     As all this attention continues, you can feel a pleasant giddiness spreading through you. The ferret head you're stroking starts to feel different. At first you think it's changing, but you soon realize that it is your hand changing shape, becoming a cute little paw like those of your friends. This change spreads up your arm and to your body. Your proportions change, becoming under five feet tall, but with an elongated, tubular body on short limbs. The pleasant sensations spread down to your groin.";
		now bodyname of player is "Sugar Ferret";
		now body of player is body entry;
		follow the sex change rule;
		if soda is owned:
			delete soda;
			now lastcaffeine of Sweet Tooth is turns;
			now caffeinehigh of player is 8;
			decrease thirst of player by 6;
			say "     You hear some rustling in your pack as one of them starts ferreting through it. A pale blue jill pulls out some cola. Popping it open, she says 'Yay! A new friend. Let's celebrate.' She takes a big swig from the can before pressing it to your lips. You momentarily consider resisting, but as that sweet, carbonated ambrosia touches your lips, you can't help but open wide and swallow it down. As the cola flows down your throat and into your body, you can feel a rush of excitement overtake you. You twitch as the caffeine rushes into your bloodstream and make grabby paws to get the can back as another ferret tries to take a drink. 'Oh! That's gooood! Gimme more!' you say excitedly. The blue girl buries her head in your pack, tossing out all the soda she can find while others pull bottles and cans out from hidden stashes.";
			while carried of soda is not 0:
				delete soda;
				increase caffeinehigh of player by 2;
				if a random chance of 2 in 5 succeeds, increase caffeinehigh of player by 1;
				if a random chance of 2 in 5 succeeds, decrease caffeinehigh of player by 1;
				decrease lastcaffeine of Sweet Tooth by 2;
				decrease thirst of player by 3;
				decrease humanity of player by 3;
				increase libido of player by 3;
		else:
			say "     You hear some rustling in your pack as one of them starts ferreting through it. The pale blue jill even stuffs her head inside, but comes up with nothing. 'Aww! I was hoping for a drink to celebrate!' 'Here! I've got you covered,' a hob says excitedly, pulling out a can of Mountain Don't. He takes a big swig from the can before pressing it to your lips. You momentarily consider resisting, but as that sweet, carbonated ambrosia touches your lips, you can't help but open wide and swallow it down. As the caffeinated drink flows down your throat and into your body, you can feel a rush of excitement overtake you. You twitch as the caffeine rushes into your bloodstream and make grabby paws to get the can back as another ferret tries to take a drink. 'Oh! That's gooood! Gimme more!' you say excitedly. The others pull bottles and cans out from hidden stashes and soon everyone's gulping down soda.";
			now lastcaffeine of Sweet Tooth is turns;
			decrease thirst of player by 6;
		sfcaffeine; [activates effects of Sugar Ferret caffeine high]
		say "     An orgy of wild, ferrety sex breaks out as the hobs and jills get aroused in their caffeine-induced excitement. The place if filled with groups of vibrantly colorful ferrets licking, sucking and fucking one another wildly. And you're at the center of this, jills and hobs lustfully welcoming you to their group[if player is herm]. You fuck and are fucked several times over the course of the orgiastic event[else if player is male]. You fuck several of the ferrets over the course of the orgiastic event[else]. You are fucked several times by the hobs over the course of the orgiastic event[end if], though the details all quickly become a blur of bright colors and sweet, sweet soda. Eventually it winds down somewhat when a large mob of ferrets rush outside with plans to scour the fairground for more soda. Still having a little self-control, you bound away with a surplus of energy.[impregchance]";
		infect "Sugar Ferret";
		increase ferretvisit by 1;
		if humorous is not banned, now Caught Glider is unresolved;
	else:
		[puts Sugar Ferret as lead monster for impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Sugar Ferret":
				now monster is y;
				break;
		if "Female Preferred" is listed in feats of player:
			now sex entry is "Female";
		else if "Herm Preferred" is listed in feats of player:
			now sex entry is "Both";
		else:
			now sex entry is "Male";
		if bodyname of player is "Sugar Glider" or facename of player is "Sugar Glider":
			say "     Back at the Sweet Tooth candy shop, you find that the ferrets have settled down and are back to their cute, playful selves. Seeing a candy-thieving sugar glider come in, several of them pounce atop you, pinning you down. You are held down and tickled by the cute, playful hobs and jills, tossing sugary insults at one another as you squirm and laugh. As their touches turn more erotic, you find a [one of]baby blue[or]pale yellow[or]soft pink[or]light green[or]pale orange[at random] [one of]hob[or]jill[at random] pawing at your groin, you happily start playing in a more intimate manner with the cute ferrets as nuzzles turn to kisses and ticklings turn to gropings.";
		else:
			say "     Back at the Sweet Tooth candy shop, you find that the ferrets have settled down and are back to their cute, playful selves. They smile and wave to you as you come in, snuggling up to you in welcome. You sit and enjoy their playful antics, happy to take a break from the stress of the infected world outside. They share some candy with you and you snuggle and scritch several of them. When their touches start to turn more erotic and you find a [one of]baby blue[or]pale yellow[or]soft pink[or]light green[or]pale orange[at random] [one of]hob[or]jill[at random] pawing at your groin, you happily start playing in a more intimate manner with the cute ferrets as nuzzles turn to kisses and pettings turn to gropings.";
		follow the cock descr rule;
		follow the cunt descr rule;
		now randomferret is { 1, 2, 3 };
		if player is male, add 4 to randomferret; [M/F top]
		if player is male, add 5 to randomferret; [gay ferret (fuck/oral)]
		if player is female, add 6 to randomferret; [get share-fucked]
		if player is female, add 7 to randomferret; [69 w/male]
		sort randomferret in random order;
		if entry 1 of randomferret is 1:
			say "[candyshopsex1]";
		else if entry 1 of randomferret is 2:
			say "[candyshopsex2]";
		else if entry 1 of randomferret is 3:
			say "[candyshopsex3]";
		else if entry 1 of randomferret is 4:
			say "[candyshopsex4]";
		else if entry 1 of randomferret is 5:
			say "[candyshopsex5]";
		else if entry 1 of randomferret is 6:
			say "[candyshopsex6]";
		else if entry 1 of randomferret is 7:
			say "[candyshopsex7]";
		if bodyname of player is not "Sugar Ferret":
			say "     Losing yourself in the lustful fun with the ferrets, you can feel your body changing, becoming more ferret-like once again. You become a short, five foot tall ferret with short limbs, cute paws and a flexible, tube-like body. As you're changing, several of the ferrets around you snuggle and kiss you, clearly pleased to see you looking more like them again. Like you should look, a part of you feels.";
			now bodyname of player is "Sugar Ferret";
			now body of player is body entry;
			follow the sex change rule;
		else:
			say "     Losing yourself in the lustful fun with the ferrets, you can feel your body changing, becoming more ferret-like. The ferrets around you are clearly pleased by this, snuggling and kissing you as you can feel the tingles of the activated infection.";
			infect "Sugar Ferret";
		if soda is owned:
			delete soda;
			now lastcaffeine of Sweet Tooth is turns;
			decrease thirst of player by 6;
			say "     Remembering that you have some soda in your pack and too excited to think reasonably, you pull out the cola and start drinking it, then end up sharing around your entire soda collection as you and the other ferrets begin to change. More pop is brought out from hidden stashes. You moan excitedly as a manic energy starts to suffuse you, filling you with a rush that's half lust and half a craving for more[if the player is sugarfaced]. Your eyes turn a bright red like those of the other ferrets around you as the caffeine makes you manic. Your teeth grow sharp and pointed and you gain a wide, toothy grin[end if][if the player is sugarskinned]. Your pastel fur grows richer in color, becoming a vibrant purple[end if]. You can't sit still at this point, filled with so much wild energy.";
			while carried of soda is not 0:
				delete soda;
				increase caffeinehigh of player by 2;
				if a random chance of 2 in 5 succeeds, increase caffeinehigh of player by 1;
				if a random chance of 2 in 5 succeeds, decrease caffeinehigh of player by 1;
				decrease lastcaffeine of Sweet Tooth by 2;
				decrease thirst of player by 3;
				decrease humanity of player by 3;
				increase libido of player by 3;
		else:
			say "     One of the ferrets pulls out a big bottle of cola and starts passing it around. Too excited to think clearly, you grab the bottle as soon as it gets close enough, taking a big swig and enjoying the wild rush the caffeine in it gives you. The others around you bounce around excitedly and more pop is pulled out from hidden stashes. You moan excitedly as a manic energy starts to suffuse you, filling you with a rush that's half lust and half a craving for more[if the player is sugarfaced]. Your eyes turn a bright red like those of the other ferrets around you as the caffeine makes you manic. Your teeth grow sharp and pointed and you gain a wide, toothy grin[end if][if the player is sugarskinned]. Your pastel fur grows richer in color, becoming a vibrant purple[end if]. You can't sit still at this point, filled with so much wild energy.";
			now lastcaffeine of Sweet Tooth is turns;
			decrease thirst of player by 6;
		sfcaffeine; [activates effects of Sugar Ferret caffeine high]
		follow the cock descr rule;
		follow the cunt descr rule;
		now randomferret is { 1, 2, 3 };
		if player is male, add 4 to randomferret; [M/F top]
		if player is male, add 5 to randomferret; [gay ferret (fuck/oral)]
		if player is female, add 6 to randomferret; [get share-fucked]
		if player is female, add 7 to randomferret; [69 w/male]
		remove tempnum from randomferret, if present;
		sort randomferret in random order;
		if entry 1 of randomferret is 1:
			say "[candyshopsex1]";
		else if entry 1 of randomferret is 2:
			say "[candyshopsex2]";
		else if entry 1 of randomferret is 3:
			say "[candyshopsex3]";
		else if entry 1 of randomferret is 4:
			say "[candyshopsex4]";
		else if entry 1 of randomferret is 5:
			say "[candyshopsex5]";
		else if entry 1 of randomferret is 6:
			say "[candyshopsex6]";
		else if entry 1 of randomferret is 7:
			say "[candyshopsex7]";
		say "     The wild orgy of ferrety sex goes on like this for some time. Lost in your manic, over-caffeinated state, most of it is hazy, but filled with arousing imagery. The sex is finally broken up as most of the group heads off in search of more cola, moving out in packs to rampage across the fairgrounds in search of more carbonated happiness. With what little clarity of thought you have left, you take this opportunity to leave the ferrets behind. Partially, you want to get your head back on straight, though part of you says to go searching for more soda so you can have it all to yourself.";
		infect "Sugar Ferret";
		decrease hunger of player by 6;
		if hunger of player < 0:
			now hunger of player is 0;
		if thirst of player < 0:
			now thirst of player is 0;
		LineBreak;
		increase ferretvisit by 1;
	say "     With your visit to the Sweet Tooth candy shop over, you head back to the entrance area to the State Fair to decide you next course of action.";
	wait for any key;


after navigating Sweet Tooth:
	move player to the State Fair;


Section 3 - Various sex scenes

to say candyshopsex1:
	if caffeinehigh of player is 0:
		say "     As you're playfully tickling down one ferret's belly to get to [one of]his cock[or]her pussy[at random], a well-hung, [one of]sky blue[or]light yellow[or]pastel green[or]lavender[or]salmon[at random] hob moves in behind you, grinding his stiff member against your backside. You moan softly and are momentarily distracted, letting the other ferret get away to pounce on another and start making out with them. You are feeling quite aroused and playful and so decide to let the cute fellow have his fun. You moan softly as he sinks his stiff rod into you, sliding it gently into your [if player is female]wet pussy[else]tight pucker[end if]. The eager hob runs his paws over your body, chirring happily as he pounds away at you before finally sending a nice, hot load deep inside you[if player is not neuter], bringing you to orgasm as well[end if][if player is male]. You blast a thick spray of semen onto the floor as you enjoy the warmth of his seed flowing into your belly[end if].[impregchance]";
	else:
		say "     As you're making a grab for a squriming ferret who's trying to reach more soda while you're trying to be more amorous, a well-hung, [one of]sapphire blue[or]golden yellow[or]forest green[or]indigo[or]cardinal red[at random] hob moves in behind you, grinding his stiff member against your backside firmly. You moan and chirr and are momentarily distracted, letting the other ferret get away to grab another drink before making out with the jill they swiped the bottle from. You are quite lustful by this point and so decide to let the cute fellow have his way with you. You moan in pleasure as he sinks his stiff rod into you, sliding it eagerly into your [if player is female]sopping pussy[else]wanton hole[end if]. The eager hob runs his clawed paws over your body, chirring loudly as he pounds away at you before finally sending a thick, heavy load deep inside you[if player is not neuter], bringing you to orgasm as well[end if][if player is male]. You blast a thick spray of semen onto the floor as you enjoy the warmth of his seed flowing into your belly[end if].[impregchance]";
	now tempnum is 1;

to say candyshopsex2:
	if caffeinehigh of player is 0:
		say "     Playfully tickling down one ferret's belly, your hand drifts down to their sheath and balls, rubbing over them as his swelling cock begins to emerge. The [one of]coral[or]periwinkle[or]jasmine[or]light green[or]pale purple[at random] hob chirrs and smiles, moving closer as you lower your head between his legs to start licking his leaking shaft. Soon enough, he's fully hard and you've got his cock stuffed in your mouth, sucking him to a moaning climax that feeds you a sweet treat of sugar ferret cum.";
	else:
		say "     Managing to grab one of the ferrets as he tries to reach more soda, you roll him onto his back and take hold of the [one of]violet[or]pumpkin[or]carmine[or]chartreuse[or]amber[or]azure[at random] hob's stiff cock. You rub his shaft and balls as you roll him over onto his back and bury your face between his legs to start licking his leaking shaft. Soon enough, he's fully hard and you've got his cock stuffed in your mouth, sucking him to a moaning climax that feeds you a sweet load of sugar ferret cum.";
	now tempnum is 2;

to say candyshopsex3:
	if caffeinehigh of player is 0:
		say "     Playfully tickling down one ferret's belly, your hand drifts down to her pussy, rubbing over her soft folds as she grows wet and excited. The [one of]cornflower[or]apricot[or]pale green[or]carnation pink[or]soft purple[at random] jill moans in pleasure and rolls onto her back with her legs spread, offering her wet pussy to your approaching tongue. She is wet and sweet, a delicious treat to lick. You eagerly lap up her flower's nectar as she chirrs with delight, eventually driving her to a climax that sends a spray of sugary female cum across your face as she cries out in orgasm.";
	else:
		say "     Managing to grab one of the ferrets as she tries to reach more soda, you roll her onto her back and hold her legs raised and spread, putting her swollen and dripping cunt on display for you. You lick your lips at the sight of the [one of]hot pink[or]violet[or]grass green[or]tangerine[or]neon yellow[at random] jill's sopping puss and bury your face into her groin, diving your tongue into it. Her juices are sweet and delicious, a wonderful treat for a sugar junkie ferret like you're becoming. You lustfully pump your tongue into her cunt and tease her clit as she chirrs with delight and claws at the floor. You eventually drive her to a climax that sends a large spray of sugary, female cum across your face and dripping back down onto her brightly colored fur as she cries out in orgasm.";
	now tempnum is 3;

to say candyshopsex4:
	if caffeinehigh of player is 0:
		say "     Playfully tickling down one ferret's belly, your hand drifts down to her pussy, rubbing over her soft folds as she grows wet and excited. The [one of]cornflower[or]apricot[or]pale green[or]carnation pink[or]soft purple[at random] jill moans in pleasure and rolls onto all fours and raises her tail, presenting her wet pussy for your approaching cock. She soft and stretchy, snugly gripping your [cock size desc of player] [cock of player] shaft wonderfully. With one hand on her back and the other holding her long tail against your chest, you eagerly fuck her sweet, juicy pussy. She moans and chirrs in delight, moaning loudly when you finally thrust deep inside her and unleash your load.";
	else:
		say "     Managing to grab one of the ferrets as she tries to reach more soda, you roll her onto all fours and hold her tail raised, putting her swollen and dripping cunt on display for you. You lick your lips at the sight of the [one of]hot pink[or]violet[or]grass green[or]tangerine[or]neon yellow[at random] jill's sopping puss and pull her hips to yours, driving your throbbing meat into it. You lustfully pound your [cock size desc of player] [cock of player] shaft into her as her vagina stretches and squeezes around it wonderfully. With one hand on her back and the other holding her long tail against your chest, you eagerly pound her dripping, quivering pussy. You push her to several orgasms before chirring loudly when you finally thrust deep inside her and unleash your load.";
	now tempnum is 4;

to say candyshopsex5:
	if caffeinehigh of player is 0:
		say "     Playfully tickling down one ferret's belly, your hand drifts down to their sheath and balls, rubbing over them as his swelling cock begins to emerge. Spotting your hard erection, he moves his paws to it eagerly and starts stroking you in return. Having found yourself a cute [one of]lavender pink[or]powder blue[or]pastel yellow[or]honeydew green[or]lilac[at random] hob to play with and your own shaft quite hard, would you rather mount him (Y) or get a blow job (N)?";
		if player consents:
			say "     Rolling him onto all fours, he chirrs happily and raises his tail, waving his ass eagerly for you. After moving into position atop him, your [cock size desc of player] [cock of player] cock sinks into him easily, the little guy clearly well used to having a horny male atop him. You nuzzle his ears and start thrusting into him while he chirrs and giggles happily. Reaching around, you find his rod quite hard and leaking from the good fucking he's receiving. Feeling his cock twitch in your hand and his balls tighten up, you give him a hard, final thrust to push him over the edge, letting his spasming hole send you to climax moments later.";
		else:
			say "     Taking his cute, fuzzy head in your hands, you press your cock to his lips and moan as his muzzle slides down over it. His tongue works you eagerly, playfully teasing you. You start to chirr in pleasure, excited by his clearly well-practiced technique. Reaching between his legs, you find his rod quite hard and leaking. As his muzzle works your cock to climax and you send your hot seed down his throat, his meat pulses in your hand and blasts his sugary sweet load, which you just have to lick off your fingers.";
	else:
		say "     Managing to grab one of the ferrets as he tries to reach more soda, you pull him in close and grind your stiff cock against the [one of]turquoise[or]sunglow[or]lime green[or]magenta[or]amethyst[at random] hob's soft fur. Distracted by your maleness, he takes it in his paws and starts stroking it eagerly. He lets the tips of his claws slide across your sensitive flesh lightly enough to excite you while not hurting that [cock size desc of player] [cock of player] maleness he clearly wants so badly. Would you prefer to mount him (Y) or get a blow job (N)?";
		if player consents:
			say "     Rolling him onto all fours, he chirrs excitedly and raises his tail, waving his ass eagerly for you. After moving into position atop him, your [cock size desc of player] [cock of player] cock sinks into him easily, the lustful guy clearly well used to having a horny male atop him. You nip at his ears and start thrusting into him while he chirrs and sinks his claws into the floor to push forcefully back into your thrusts. Reaching around, you find his rod quite hard and leaking from the good fucking he's receiving. Feeling his cock twitch in your hand and his balls tighten up, you pound him mercilessly to push him over the edge, letting his spasming hole send you to climax moments later while he screams in delight.";
		else:
			say "     Taking the over-excited hob's head in your paws, you press your cock to his lips and chirr as his muzzle slides down over it. His tongue works you eagerly, slathering over you lustfully for your sweet seed. His sharp teeth graze across your sensitive flesh in a clearly practiced manner, as their touch is enough to excite you, but not hurt you. You rub his ears and keep his head pressed to your groin, pounding into his muzzle, much to his obvious delight. You slip a paw down between his legs to fondle his throbbing shaft, finding it dribbling sweet smelling precum down over his sheath and balls. As his muzzle works your cock to climax and you send your hot seed down his throat, his meat pulses in your hand and blasts his sugary sweet load, which you then eagerly lick from your fingers.";
	now tempnum is 5;

to say candyshopsex6:
	if caffeinehigh of player is 0:
		say "     As you're looking for someone to play with, you find yourself tackled by a pair of cute hobs. The first has [one of]light red[or]pastel blue[or]pale yellow[or]pear colored[cycling] fur and the other is a [one of]pale green[or]light orange[or]powder purple[or]light rose[cycling] coloration. You can't help but laugh as the playful pair nuzzle and kiss you as they move you onto all fours. They then start taking turns, each making a few thrusts into your pussy before letting the other have a turn. You moan in pleasure at this, quickly growing excited as the two friends share you. You get a wonderfully fulfilling fucking from the pair of complementary hobs and eventually have your cunt stuffed with one sweet load that is soon followed by another, making you feel delightfully hot and creamy inside.[impregchance][impregchance]";
	else:
		say "     Moaning lustfully, you finger your wet slit and raise your tail, clearly seeking a male to fill you. A pair of horny hobs advance upon you together, pushing you to the ground and running their paws over your body. You moan lustfully and let them move you into position. You end up with the [one of]electric lime[or]bright yellow[or]navy blue[or]flame red[or]cerise[or]royal purple[or]orange[or]neon green[cycling] one beneath you and the [one of]cerise[or]royal purple[or]orange[or]neon green[or]electric lime[or]bright yellow[or]navy blue[or]candy apple red[cycling] one moving overtop of you. As your hips are pushed down, you find your pussy stretched open to take the complementary pair at once. Their two cocks stuff you nicely as buck their hips in unison, giving you a much more thorough fucking than even the most endowed male here could give you. You are reduced to moaning and chirring as your cunt is pounded into until you receive the dual blast of their hot and heavy loads to stuff your wanton womb.[impregchance][impregchance]";
	now tempnum is 6;

to say candyshopsex7:
	if caffeinehigh of player is 0:
		say "     As you're looking for someone to play with, you feel a pair of soft paws behind you, soon followed by a sniffing muzzle that moves in on your wet snatch. Looking back, you spot a [one of]celadon[or]light blue[or]peach[or]cream[or]thistle[at random] colored young hob starting to lick at your folds. You moan in pleasure and reach back, scritching his ears and coaxing him to move back for a moment so you can get onto your back. Once you're comfortable, he moves atop you into a 69 position and dives back in, his eager tongue lapping at your sensitive pussy and diving in to drink your feminine juices. You knead his backside and guide his leaking cock to your muzzle. You lick, kiss and suck one another to a wonderful climax that leaves you both wet and sticky with sweet cum.";
	else:
		say "     Moaning lustfully, you finger your wet slit and raise your tail, clearly seeking a male to please you. You feel a pair of paws grab your rear firmly before pushing you over onto your back. Looking up, you find a young [one of]bright green[or]cobalt blue[or]cyan[or]safety orange[or]citrine[or]fuchsia[at random] hob moving atop you. As he presses his muzzle to your dripping, needy puss, he grinds his stiff member against you. Taking a hold of it, you get into a 69 with the male and work your mouth and tongue over his maleness while his tongue laps at your sopping cunt. You lick, kiss and suck one another to a wonderful climax that leaves you both wet and sticky with sweet cum.";
	now tempnum is 7;


Section 4 - Caffeine Buzz

the player has a number called caffeinehigh.

to sfsodadrink:
	if bodyname of player is "Sugar Ferret":
		if caffeinehigh of player > 0:
			sfcaffeineboost;
		else:
			sfcaffeine;

to sfcaffeine:
	increase caffeinehigh of player by a random number between 7 and 9;
	increase intelligence of player by 2;
	increase stamina of player by 4;
	increase maxHP of player by 2 + (2 * level of player);
	increase HP of player by level of player;
	decrease dexterity of player by 2;
	increase libido of player by 15;
	if libido of player < 66, now libido of player is 66;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 15;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 1 and 5;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 3;
	increase morale of player by 5;
	say "     As the soda rushes through your system, the sugar and caffeine gets your body all worked up. Your body seems to have increased endurance and boundless energy to keep you going from the rush. Even your mind seems sharper and more alert. But this comes at a cost as well, as you can't seem to keep still or focused and the excess twitchiness is affecting your dexterity as well. The rush of arousal that comes with this [if player is herm]gets you hard and wet[else if player is male]gets you hard[else if player is female]gets you wet[else]excites you greatly[end if] and further erodes your grip on your mind.";
	say "     (You have received a significant stamina and HP boost (+ [special-style-1][2 + ( 2 * level of player)][roman type] max HP), an intelligence boost and a dexterity drop, all of which will last as long as your caffeine high remains in effect. But be careful, you're filled with manic energy now and will have trouble sitting still.)[line break]";

to sfcaffeineboost:
	increase caffeinehigh of player by a random number between 3 and 5;
	decrease humanity of player by 8;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 1 and 3;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
	increase libido of player by 8;
	if libido of player < 66, now libido of player is 66;
	if libido of player > 100, now libido of player is 100;
	increase morale of player by 1;
	let healed be level of player;
	increase HP of player by level of player;
	if HP of player > maxHP of player:
		decrease healed by HP of player minus maxHP of player;
		now HP of player is maxHP of player;
	say "     Feeling the rush of more carbonated delight down your throat, you twitch as a rush of fresh energy fills you. Your ferret body twitches and you feel a burst of new endurance, pushing you to keep going without pause. Along with this comes the arousal of excitement and manic, ferrety impulses. Aside from helping to quench your thirst for sugary sweetness, you recover [special-style-1][healed][roman type] HP.";

an everyturn rule:
	if caffeinehigh of player is not 0:
		decrease caffeinehigh of player by 1;
		if "Strong Psyche" is not listed in feats of player and a random chance of 1 in 2 succeeds, decrease humanity of player by 2;
		if "Weak Psyche" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease humanity of player by 1;
		if caffeinehigh of player <= 0 or bodyname of player is not "Sugar Ferret":
			say "     You moan and shiver for a moment as the wild rush of energy that's filled you recently suddenly and burns out. The manic excitement and unbridled stamina seems to leave you all at once[if player is sugarbodied]. The oversized claws on your hands retract, leaving you with cute little paws[end if][if player is sugarfaced]. Your eyes refocus as they return to their soft, indigo tone. Your pointed teeth and the manic grin soon fade away as well[end if][if player is sugarskinned]. As you start to calm down, your fur loses its vibrant tone and becomes a soft, pastel purple[end if]. As your twitchiness does away and you settle back down, you are left tired and longing to feel the rush of more caffeine.";
			say "     (With the caffeine buzz worn off, your stats have returned to normal, though you do feel weakened and tired.)[line break]";
			now caffeinehigh of player is 0;
			decrease intelligence of player by 2;
			decrease stamina of player by 4;
			decrease maxHP of player by 2 + (2 * level of player);
			now HP of player is HP of player / 2;
			if HP of player > maxHP of player / 2, now HP of player is maxHP of player / 2;
			increase dexterity of player by 2;
			decrease libido of player by 10;
			if libido of player < 0, now libido of player is 0;
			increase humanity of player by 5;
			decrease morale of player by 5;


Section 9 - Definitions

Definition: a person is sugarfaced:
	if facename of player is "Sugar Ferret", yes;
	no;

Definition: a person is sugarskinned:
	if skinname of player is "Sugar Ferret", yes;
	no;

Definition: a person is sugarbodied:
	if bodyname of player is "Sugar Ferret", yes;
	no;

Definition: a person is sugarcocked:
	if cockname of player is "Sugar Ferret", yes;
	no;

Definition: a person is sugartailed:
	if tailname of player is "Sugar Ferret", yes;
	no;




Candy Shop ends here.
