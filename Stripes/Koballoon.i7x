Version 1 of Koballoon by Stripes begins here.

"Adds a Koballoon creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

[ Use 'to say xxxxx' for overlong text boxes or complex situations, using '[xxxxx]' (in square brackets) within a say statement to execute them. Typically, these are needed if there are a lot of cock/species/cunt checks. ]

koballoonmet is a number that varies.

when play begins:
	add { "Koballoon" } to infections of guy;
	add { "Koballoon" } to infections of humorous;
	add { "Koballoon" } to infections of Tailweapon; [usable for Tail Strike feat]
	add { "Koballoon" } to infections of Reptilelist; [list of reptile infections]
	add { "Koballoon" } to infections of Latexlist; [list of latex/rubber/PVC skin infections]

to say koballoondesc:
	if koballoonmet is 0:
		say "     From one side, you hear a faint but increasing sound, like that of a large ball bouncing toward you. As you warily look that way, the bouncing is joined by another from a different direction, and then again from several others still. Surrounded, you take a wary stance and await whatever their sources are, but you aren't quite ready for just what has found you.";
		WaitLineBreak;
		say "     Bounding up come a small gang of varied-coloured, lizard-like creatures with rubbery hides and they are definitely among the most extreme transformations you've seen. These little guys are each only about three feet tall, but rather than walk, they sit their very plush bottoms upon their massively inflated ballsacs. They use the latter like space hoppers and bounce in leaps of a several feet at a time. To go with these giant balls, they have equally big cocks that flop and slap against their rubbery pouches with each bound, keeping them semi-hard from the stimulation.";
		say "     While individually, these odd kobolds don't look like they'd be much trouble to deal with given their size, there are about a half-dozen of them in their group. Their numbers and the fact that they've encircled you [if level of player < 10]puts them at the[else]does give them some[end if] advantage. You try to sound confident, telling them that you don't want any trouble and to let you pass, but they pay your words no heed.";
		WaitLineBreak;
		if mdasslevel > 0:
			say "     'Yes, this is the one I'd spotted with our former mistress. She has taken a liking to this one. We could use [if cunts of player > 0]her[else]him[end if],' one says as he bounces in place.";
			say "     Another grins and bounds in a ring around you from a couple yards away. 'I can see why she has. Looks like a fun ride, I'd say.'";
		else:
			say "     'This one looks promising. What do you think?' one says with a happy laugh as he bounces in place.";
			say "     'Just the sort of thing she likes,' another replies as he bounds in a ring around you from a couple yards away. 'Looks like a fun ride, I'd say.'";
		say "     'Shall we give him a test bounce, boys?' a third asks. Not waiting for a response, he springs toward you with a lustful grin. The others all follow suit, trying to mob you beneath their bounding rubber bodies.";
		increase koballoonmet by 1;
	else if koballoonmet is 1:
		say "     You hear the sounds of approaching bouncing, again coming from several directions at once. You're not sure how these rubbery kobolds have managed to home in on you, as they certainly seem too noisy to have snuck up and surrounded you. Regardless, you are soon encircled by a little group of the horny hoppers[if weapon object of player is journal]. You raise your fists[else]. You ready your weapon[end if] while looking the strange mob of mutants over, taking this opportunity to get a better look at them.";
		say "     The small lizard-like creatures are each only about three feet tall, but sit upon their inflated ballsacs. Their scrotums are so big their three-toed feet barely touch the ground when leaning in one direction to do so. They hardly do though, seeming to prefer to remain bouncing in place rather than stay still. And from the way their big cocks keep slapping pleasurably against those air-filled orbs with every bounce, it's easy to see why.";
		say "     Tearing your eyes away from that strangely tempting sight, you look over the rest of their form. On the whole, they're small, spindly creatures with a mix of draconic features. While it seems they have a scaly hide at an initial glance, it's actually made of thick rubber that's lightly textured, somewhat like a sports ball. They come in a variety of colours - reds, yellows, oranges, blues and greens being the most common among those you've seen. Their muzzles come in a variety of draconic shapes with lizard-like tongues, frilled ears and short horns. These horns have a slight backward curve to them and seem just the right size to grab as handholds. Speaking of hands, theirs have only four nimble digits. Their butts are quite plump, probably as padding for bouncing on their balls, and have a thick lizard tail attached above their stretchy assholes.";
		increase koballoonmet by 1;
	else:
		say "     You hear the familiar sound of bouncing balls approaching [one of]from all around you[or]from several directions[or]toward you en masse from behind before spreading out[as decreasingly likely outcomes]. You ready yourself for another encounter with those rubber kobold creatures[if weapon object of player is journal]. You raise your fists[else]. You ready your weapon[end if] while looking the strange mob of mutants over.";
		say "     The colourful rubber kobolds bounce about on their inflated ballsacs, using them as space hoppers. Their large cocks slap against those hyper balloon balls of theirs as they bound around you, further arousing them. Some giggle, some joke with one another and one even licks his lizard-like tongue [one of]across his dribbling glans[or]across his draconic muzzle[or]along a finger lewdly[or]under his dick's rubbery foreskin[at random] while they amuse themselves before attacking. Again, you find yourself being mobbed by about ten or so bouncing, laughing Koballoons.";

to say losetokoballoon:
	say "     [if HP of player > 0]Tempted at all sides, you give in and allow yourself to be pulled to the ground by one of the bouncing guys[else]Pestered at all sides, you get knocked down by one of the bouncing guys[end if]. Soon several others pile atop you, burying you in rubbery flesh. Giggling merrily at their success, the kobolds grope [if HP of player > 0]you[else]their prize[end if] all over. One mashes his big, rubber balls down onto your face, grinding his inflated scrotum onto it. The creature's arousing scent fills your senses, [if HP of player > 0]further [end if]serving to turn you on. As soon as he moves off, he's replaced by another, and then another still. Next comes a big, rubbery wang that drools and dribbles latex lube onto your head.";
	say "     You find yourself kissing and licking at the bulging packages pushed your way, even if you can only rarely see the recipient. There's rubber flesh, throbbing cocks and inflated balls always within reach. The playful kobolds seem quite pleased as you get more involved in the fun.";
	if cocks of player > 0:
		say "     Shifted onto your side by an enterprising pair, one takes the front and the other the back, sliding muzzle over cock and tongue into ass[if cunts of player > 0]. Another squirms his way in there, moving in to lick at your dripping cunt[sfn][end if][if a random chance of 2 in 5 succeeds and anallevel is not 1]. You find your face sat on by another bouncy butt, wedging it between those rubbery buns. With your lips mashed up to the kobold's stretchy pucker, you set to kissing and licking at it[else]. A nearby kobold swings his big dick into position, pressing his drooling glans to your lips. With it right there, you start licking and kissing at that drooling cum-slit[end if].";
		if ( bodyname of player is listed in infections of LatexList or skinname of player is listed in infections of LatexList ) and a random chance of 2 in 5 succeeds:
			say "     You're tongue-fucked, cock-sucked and otherwise toyed with by the horny reptiles to orgasm. Having drained your balls, the kobolds continue their fun in a new way. The one on your dick swaps from sucking to quite literally blowing you. The one tonguing your ass switches to blowing as well. The strange sensation of having air forced into you is only compounded when a third kisses you and then turns that into another means to inflate you[if cocks of player > 3]. Your other dicks are given a similar treatment, increasing your rate of inflation[else if cocks of player is 2]. Your other dick is given a similar treatment, increasing your rate of inflation[end if]. You swell and bulge in all directions, though hardly evenly. Your cock[smn], balls, ass and thighs get the worst of it. Your body swells as well, making you feel full and tight, your head and limbs restricted by the size of it until it's difficult to do little more than jiggle them impotently.";
			say "     Only once they relent do you realize how much you've grown. Released by the mocking kobolds, you float upward. The little lizards look all the smaller now, tiny compared to your parade-balloon-scale body. Even as you float up, you try to release all the excess air inside you, but they've done something to you and you can't seem to let it out. You slowly rise higher and end up drifting over the fairgounds like some lewd parade float, much to the amusement of many of the other denizens of the midway. You do eventually start going down and come back to the ground. It is quite some time before you deflate properly and return more or less to normal.";
		else:
			say "     After all this teasing has gotten you good and horny, you're rolled over right atop another kobold. Resting on his chest and massive means that his plump ass is raised and ready when you're put over him. Your dick sinks right into his welcoming hole. You're only allowed to enjoy this for a moment before hearing a series of [']bold ball bounces bearing down on you. With cheers from the others, including the one under you, a horny kobold bounds right onto your butt, driving his inflated rod suddenly fully into you. You're rapidly humped between the pair of rubber creatures as every impact from the one on top is reflected back by the one on the bottom.";
			say "     The one atop you blasts a torrent of cum into your ass, [if scalevalue of player > 4]stuffing your [body size of player] belly with hot, gooey spunk[else if scalevalue of player > 2]over-stuffing your belly with hot, gooey spunk[else if scalevalue of player > 1]overloading your [body size of player] with hot, gooey spunk[else]bloating and rounding your [body size of player] body with hot, gooey spunk to the point of overflowing[end if]. In the end, you can only moan and groan as this vigorous fucking and filling pushes you over the top. You cum hard into the eager bottom, pumped for all you'll give. The semen you're giving is more than returned to you from the other surrounding kobolds as they masturbate messily onto the rocking trio. You're bathed in sloppy streams of their seed, left sore, sticky and sated by the fuckfest. They leave you there for now, exhausted and flat on your back in a pool of their mixed cum.";
	else if cunts of player > 0:
		say "     Shifted onto your side by an enterprising pair, one takes the front and the other the back, sliding muzzle between thighs and buns. Wriggling tongues slide across and then squirm into your dripping cunt[sfn] and relaxing pucker[if a random chance of 2 in 5 succeeds and anallevel is not 1]. You find your face sat on by another bouncy butt, wedging it between those rubbery buns. With your lips mashed up to the kobold's stretchy pucker, you set to kissing and licking at it[else]. A nearby kobold swings his big dick into position, pressing his drooling glans to your lips. With it right there, you start licking and kissing at that drooling cum-slit[end if].";
		if ( bodyname of player is listed in infections of LatexList or skinname of player is listed in infections of LatexList ) and a random chance of 2 in 5 succeeds:
			say "     You're double-tongue-fucked and otherwise toyed with by the horny reptiles to orgasm. Having [if HP of player > 0]overwhelmed your resistance[else]gotten their prize to cum[end if], the kobolds continue their fun in a new way. The tongue in your still-quivering cunny is withdrawn and those rubbery lips lock with yours in a lewd kiss before the creature starts blowing into your cunt. The one tonguing your ass switches to blowing as well. The strange sensation of having air forced into you is only compounded when a third kisses you and then turns that into another means to inflate you[if cunts of player > 3]. Your other cunts are fingered and teased during their process[else if cunts of player is 2]. Your other cunt is fingered and teased during this process[end if][if breasts of player > 0]. Other kobolds soon latch onto your nipples, at first sucking on them to perk them up before pinching and blowing into them like air nozzles. The sensation of air being forced into your bosom is strangely arousing as your breast size grows and grows[end if]. You swell and bulge in all directions, though hardly evenly. Your [if breasts of player > 0]tits, [end if]ass and thighs get the worst of it. Your body swells as well, making you feel full and tight, your head and limbs restricted by the size of it until it's difficult to do little more than jiggle them impotently.";
			say "     Only once they relent do you realize how much you've grown. Released by the mocking kobolds, you float upward. The little lizards look all the smaller now, tiny compared to your parade-balloon-scale body. Even as you float up, you try to release all the excess air inside you, but they've done something to you and you can't seem to let it out. You slowly rise higher and end up drifting over the fairgounds like some lewd parade float, much to the amusement of many of the other denizens of the midway. You do eventually start going down and come back to the ground. It is quite some time before you deflate properly and return more or less to normal.";
		else:
			say "     After all this teasing has gotten you good and horny, you're rolled over right atop another kobold. Several groping hands guide your hips down onto his swollen dick, pushing your wet cunt down over the pulsing cock[if cunt length of player < 24]. Your vagina, prepped by the earlier kobold's slick slobber, stretches like rubber to accommodate this massive pole[end if]. You're only allowed to enjoy this for a moment before hearing a series of [']bold ball bounces bearing down on you. With cheers from the others, including the one under you, a horny kobold bounds right onto your butt, driving his inflated rod suddenly fully into you. You're rapidly humped between the pair of rubber creatures as every impact from the one on top is reflected back by the one on the bottom.";
			say "     The one beneath you cums first, though not by a great margin. His inflated balls, mashed beneath those of the other, are forced to give up their seed - forcing it all into you. As you [if scalevalue of player > 3]fill[else]swell[end if] from the mighty output, the one atop you blasts a torrent of cum into your ass as well. Between the two of them, your belly and womb are [if scalevalue of player > 4]overstuffed with hot, gooey spunk[else if scalevalue of player > 1]overloaded with hot, gooey spunk[else]bloated and rounded until they can take no more and the rest overflows from your mouth, cunt and ass[end if]. In the end, you can only moan and groan as this vigorous fucking and filling pushes you over the top. You cum repeatedly through the process as your fall into a daze of orgasmic bliss. This shameful display is made all the lewder as the other surrounding kobolds masturbate messily onto the rocking trio. You're bathed in sloppy streams of their seed, left sore, sticky and sated by the fuckfest. They leave you there for now, exhausted[if scalevalue of player < 3] and ballooned out by all the semen filling your once [body size of player] body[else if scalevalue of player < 5]and rounded by all the semen stuffed into your well-fucked holes[else]and plumped by all the semen stuffed into your well-fucked holes[end if].";
	else:		[***temporary]
		say "     The Koballoons do lots of odd, perverse things to you with their rubbery bodies, cocks, balls and asses. You're left sticky and exhausted by the time they're done.";
	infect "Rubber Drake";

to say beatthekoballoon:
	say "     You manage to drive off the bouncing pests. Before they can all escape, you pin one of them underfoot, keeping him from getting away. You have some kinky fun with as payback for your troubles.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Koballoon"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthekoballoon]";
	now victory entry is "[losetokoballoon]";
	now desc entry is "[koballoondesc]";
	now face entry is "non-infectious";
	now body entry is "non-infectious";
	now skin entry is "non-infectious";
	now tail entry is "non-infectious";
	now cock entry is "non-infectious";
	now face change entry is "non-infectious";
	now body change entry is "non-infectious";
	now skin change entry is "non-infectious";
	now ass change entry is "non-infectious";
	now cock change entry is "non-infectious";
	now str entry is 9; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat. ]
	now per entry is 16;
	now int entry is 16;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 85; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 5; [ Monster's average damage when attacking. ]
	now area entry is "Midway"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 10; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 10; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 65; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;
	now body descriptor entry is "[one of]plump[or]pudgy[or]rubbery[or]inflatable[or]curvaceous[or]girly[or]feminine[at random]";
	now type entry is "[one of]draconic[or]inflatable[or]kobold[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;
	now altcombat entry is "default";


Section 3 - Endings
[See 'Magic Drake' and 'Rubber Drake' files.]

Koballoon ends here.
