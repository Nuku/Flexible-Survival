Version 1 of Newt by Stripes begins here.
[Version 1.2 - 2nd threesome option]

"Adds a female Salamander NPC called Newt through interaction w/Athanasia."

Section 1 - Newt

Newt is a woman.
The description of Newt is "[newtdesc]".
The conversation of Newt is { "Hiss" }.

the scent of Newt is "     It is difficult to smell Newt over the vapours of the magma cave, but she does have a pleasantly arousing scent when you get up close to her.".

to say newtdesc:
	say "     Looking quite similar to the other salamander girls you've seen, her body is a mix of animal and human forms. Her body is quite effeminate, with wide hips, thighs and a slender waistline. Her breasts are quite modest B-cups. Her arms and legs are quite human, but have added flexibility and agility. She's got small, dark claws on the ends of her digits. She possesses a flat, wide head with a short muzzle that often has a cheerful smile. She has a long, narrow, fleshy tail mounted atop her soft and squishy ass cheeks. Making no effort to hide it, you can also see her moderately large pussy between her legs, wet and waiting.";
	say "     Newt's smooth skin is a rich red colour with yellow and black speckling, predominantly across her breasts and extremities. A shimmer of intense heat radiates from it intensely enough to make the air ripple around her. She's got a pair of nipple rings and a clit piercing, all three made of tungsten.";


Instead of conversing the Newt:
	if hp of Newt < 4:
		say "ERROR-Newt-[hp of Newt]T: You should not be here.";
	else:
		say "     [one of]'Athanasia's been so nice to me.'[or]'The other salamanders shouldn't trouble Athie again.'[or]'I apologized to Athanasia about the eggs. We didn't know they were so important,' she says, looking over at the phoenix with loving awe.[or]'This is such a lovely, warm home you've found for Athie. And I'm so lucky to be able to stay here.'[or]'The others haven't come back since the last raid. And good riddance to them if they'd leave me like that.'[or]'I want to thank you for taking me in even after we'd fought like that,' she says, snuggling up against you.[or]'Are you sure you don't want to soak in this wonderful lava?  It's simply divine.'[or]'I'm helping Athie take care of her precious eggs now.'[or]'Doesn't Athie look beautiful?'[or]'Athie told me how you saved her as well,' she says, cuddling up to you.[in random order]";


Section 2 - Sexy Times

the fuckscene of Newt is "[sexwithNewt]".

to say sexwithNewt:
	if hp of Newt < 4:
		say "ERROR-Newt-[hp of Newt]T: You should not be here. Poof!";
		remove Newt from play;
	else if cocks of player is 0 and cunts of player is 0:
		say "     Lacking a gender, there's no fun to be had with Newt yet.";
	else if lastfuck of Newt - turns < 6:
		say "     As fun as I've had with you both, I could use a short break to recover.";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Fuck her";
			now sortorder entry is 1;
			now description entry is "fuck her hot cunny";
			choose a blank row in table of fucking options;
			now title entry is "Blow job";
			now sortorder entry is 2;
			now description entry is "have her suck your cock";
		if cocks of player > 0 and cock length of player < 18:
			choose a blank row in table of fucking options;
			now title entry is "Titty fuck";
			now sortorder entry is 3;
			now description entry is "nestle your cock between her breasts";
		if cunts of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Get cunnilingus";
			now sortorder entry is 4;
			now description entry is "have Newt eat you out";
		choose a blank row in table of fucking options;
		now title entry is "Lick Newt";
		now sortorder entry is 5;
		now description entry is "lick Newt's snatch.";
		if cunts of player > 0 or cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "69";
			now sortorder entry is 6;
			now description entry is "have a 69 with the salamander";
		if ( cocks of player > 0 or cunts of player > 0 ) and lastfuck of Athanasia - turns >= 6:
			choose a blank row in table of fucking options;
			now title entry is "Threesome w/Athanasia (oral)";
			now sortorder entry is 10;
			now description entry is "share her with the phoenix";
[		if cocks of player > 0 and lastfuck of Athanasia - turns >= 6:
			choose a blank row in table of fucking options;
			now title entry is "Threesome w/Athanasia (fuck)";
			now sortorder entry is 11;
			now description entry is "have a sexy romp with both hot females";]
		if cunts of player > 0 and lastfuck of Athanasia - turns >= 6:
			choose a blank row in table of fucking options;
			now title entry is "Threesome w/Athanasia (dildo)";
			now sortorder entry is 12;
			now description entry is "share the basalt toy with both hot females";
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> ";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Fuck her":
						say "[newtsex01]";
					else if nam is "Blow job":
						say "[newtsex02]";
					else if nam is "Titty fuck":
						say "[newtsex03]";
					else if nam is "Get cunnilingus":
						say "[newtsex04]";
					else if nam is "Lick Newt":
						say "[newtsex05]";
					else if nam is "69":
						say "[newtsex06]";
					else if nam is "Threesome w/Athanasia (oral)":
						say "[NewtAthanasia3someA]";
						now lastfuck of athanasia is turns;
					else if nam is "Threesome w/Athanasia (fuck)":
						say "[NewtAthanasia3someB]";
						now lastfuck of athanasia is turns;
					else if nam is "Threesome w/Athanasia (dildo)":
						say "[NewtAthanasia3someC]";
						now lastfuck of athanasia is turns;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		now lastfuck of Newt is turns;
		wait for any key;
		clear the screen and hyperlink list;


to say newtsex01:	[fuck her]
	say "     Putting your arms around Newt, you pull her into a kiss. Slipping a hand between her legs, you caress her wet folds and offer to fill that hot pussy of hers. She moans at this and eagerly asks for you to fuck her. Lowering her down to the floor, you run your hands across her legs and spread them. With your [cock size desc of player] [cock of player] cock lined up, you enjoy the delicious sight of your manhood kissed against that juicy pussy of hers before pushing past those crimson lips and into her cunt. Her heated vagina grips and tugs at your flesh, as eager to be filled as she is. Once you've sunk your [cock size desc of player] manhood fully into her, you take a brief pause before starting to thrust.";
	say "     As you fuck the hissing, panting salamander, you run your hands over her speckled skin. She winds her long tail around your waist, hugging and caressing you with it. Her smooth hide is slick with a thin layer of slime all over and bring a warm, tingle heat whenever it gets on you. And with that growing heat comes increased arousal that drives you to lust for this exotically beautiful creature all the more. Placing your hands upon her breasts, you squeeze those pert mounds of hers and tease their dark nipples by gently tugging her piercings.";
	say "     With her legs around your hips and her tail pulling you into each thrust, you pound her hard as you both approach climax. She's panting and hissing with heated need. Steamy juices drip from her cunt as arches her back and cries out, cunt clamping down around you. The ripples and spasms of her inner walls are enough to push you over the edge and you're cumming moments later, pumping your hot seed into the furnace of her womb. You fuck that quivering hole with intensity, your lust for this red hottie driving you to give her every last drop you can. Once spent, you collapse atop her to kiss and cuddle while still buried inside her slick, creamy cunt.";

to say newtsex02:	[blow job]
	say "     Coming up to Newt, you put your arms around her and give her a kiss. She wriggles her tongue into your mouth and runs it along your palate and even to the back of your throat. Taking a gasping breath after the long and lustful kiss, you suggest she put that wild tongue of hers to work on your cock. She grins at this and gets on her knees to get your meat in her muzzle.";
	say "     She licks and sucks on your [cock of player] cock with great enthusiasm. Her tongue slides across your sensitive flesh in a myriad of delightful ways - flicking your glans, coiling around your shaft, sliding along its length[if cockname of player is not listed in infections of Internallist], extending out to lick your balls[end if] and more. You caress and compliment the speckled beauty, loving all the attention. And when you do cum, you pump your [cum load size of player] load down her throat, the salamander girl hungrily swallowing it all down.";

to say newtsex03:	[titty fuck]
	say "     Coming up to Newt, you run your arms along her sides and up to her breasts. After kissing her, you tease her pierced nipples and tell her how you'd like your cock[smn] nestled between those beautiful mounds of hers. Dropping to her knees slowly, she slides her long tongue down your body as she brings her bosom to your [cock size desc of player] erection[smn]. While only B-cups, she presses them gently around your manhood, providing a warm and slick hug of breast flesh against your shaft[smn] for you to enjoy.";
	say "     As she works her chest against your penis[esmn], her tongue plays around, getting into all kinds of kinky trouble. At first, you feel it tease across your glans, lapping up your precum. After getting you quite worked up, it moves on to your hips and thighs before slipping lower[if cunts of player > 0 and cockname of player is listed in infections of Internallist]. After licking across your balls and gently squeezing them, it finds it way behind them to your puss[yfn] and runs across your netherlips[else if cunts of player > 0]. Sliding beneath her breasts, it finds its way to your puss[yfn] and runs across your netherlips[else if cockname of player is listed in infections of Internallist]. Sliding beneath her breasts, it finds its way to your ballsac and licks across it before gently squeezing your [ball size][end if][if anallevel is 3]. Not even your anus is spared, her playful tongue finding its way to your pucker and giving it a few teasing licks[end if].";
	say "     By the time her wandering tongue returns back to licking your glans, you're on the edge of blowing and a few last licks push you to orgasm. Spraying streaks of your semen across her exotic face and breasts, you watch as her tongue slithers across her slick flesh, licking it up as quickly as she can. The sight of this turns you on all the more and you shoot your [cum load size of player] load onto the sexy salamander. When you're spent, she leans back, resting on her hands and making a sexy show of licking herself clean only using that elongated tongue of hers. What a delicious sight.";

to say newtsex04:	[get cunnilingus]
	say "     Coming up to Newt, you put your arms around her and give her a kiss. She wriggles her tongue into your mouth and runs it along your palate and even to the back of your throat. Taking a gasping breath after the long and lustful kiss, you suggest she put that wild tongue of hers to work on your pussy. She grins at this and gets on her knees to get that tongue of hers into your cunny.";
	say "     She starts with a few playful licks across your juicy folds. Spreading your lips, she shifts her attention to your clit until you're moaning with need. At that point, she slides that wriggling appendage up into your vagina. It licks and laps along your inner walls, teasing any sensitive or tasty spot it can find. Having plenty of length to it, it plumbs the very depths of your hot love tunnel, sending shivers though your lower body. Gripping your ass with her hands, she helps support you as her tongue goes into overdrive and you get weak-kneed. A powerful orgasm rushes though you, your vaginal muscles squeezing and pulling at that lively appendage as it launches into you rapidly over and over, practically fucking you to orgasm with it. Your cunt milks at it like it were a penis until finally you have to push her away as you become oversensitive after that wonderful orgasm. She makes a show of slurping her long tongue back into her mouth with a playful grin.";

to say newtsex05:	[lick Newt]
	say "     Pulling Newt into a kiss, you let a hand slip between her legs to tease her pussy. She moans at this and eagerly moves into a comfortable seating position when you offer to eat her out. Running your hands along her smooth legs, you caress her thighs while eyeing her lovely snatch. Exotically beautiful thanks to the colourful, speckled hide surrounding its puffy folds, the sight and scent of it makes your mouth water. Making a show of licking your lips, you kiss along her slick thighs on an inexorable path to her pussy. And once there, you lick her clit and kiss those crimson lips before diving your tongue into her hot cunny.";
	say "     The lovely salamander gently caresses your head, moaning and hissing softly in pleasure as your tongue works to pleasure her. The heat from her dripping pussy feels like a furnace, but is never scalding, instead stoking the fires of your own arousal. You slip a pair of fingers into that quivering tunnel. As you work them around inside her, seeking out her most sensitive spots, your tongue shifts its focus back to her clit. You lick and suck at that pierced bump of pleasure until she can take no more and achieves a hissing, grinding orgasm that rewards you with a rush of her delicious femmecum[if cocks of player > 0]. Grabbing your [cock size desc of player] cock, you masturbate yourself frantically and spray your load across her slick skin of her belly and breasts[else if cunts of player > 0]. Stuffing a few fingers into yourself, you frig your pussy until you're moaning against her pussy as you climax[end if]. Licking your lips as you get back up, you smile down at the sexy salamander stretched out on the ground in a steaming puddle of her own juices.";
	say "     'Ahhhhhh!' she sighs in blissful delight.";

to say newtsex06:	[69]
	say "     Pulling Newt into a kiss, you let your hand slip between her legs to tease her pussy while grinding your crotch against her slick thigh. She moans at this and eagerly lays down on her side when you suggest a sixty-nine. Moving into position alongside her, you run a hand along her side and across her outer thigh, at which point she bends the leg and bares her juicy snatch to you. Already feeling her tongue at your loins, you dive in quickly, running your tongue along her crimson folds. Reaching around, you caress her curvy bottom and wriggle your tongue into her heated cunny.";
	if cocks of player > 0:
		say "     As you lap away at the steamy furnace that is her cunt, Newt is eagerly licking and kissing along your [cock size desc of player] penis. Her long tongue slides up and down your length and winds around it while she sucks at your leaking glans[if cockname of player is not listed in infections of internallist]. She places a hand on your scrotum and fondles [ball size][end if]. With a hungry moan, she opens her wide mouth and welcomes your [cock of player] cock past her lips. Still licking and sucking on it, she works her muzzle over your manhood as well.";
		say "     Between the salamander's steamy juices arousing your taste buds and the hot, slick feel of her mouth and tongue on your shaft, you feel your orgasm coming rapidly. Barely able to moan out a warning, she responds by taking your cock deeper and sucking harder, guzzling down your [cum load size of player] load as you drain your balls into her mouth. She cums moments later, a rush of her delicious fluids washing across your face and tongue. You lap up as much of it as you can get, loving the taste of the sexy femme. When you're both sated, you roll onto your backs and lay there, hand in hand and panting softly in post-orgasmic bliss.";
	else:
		say "     As you lap away at the steamy furnace that is her cunt, Newt is eagerly licking and kissing at your [cunt size desc of player] snatch. Her long tongue roams across your thighs, mons and taint while she kisses at your throbbing clit. That slick, squirming appendage of hers wriggles deep into your cunny, delving to your very depths in search of your most sensitive spots. Its undulations inside you make your hips quiver as she skillfully works that powerful muscle inside your quivering hole.";
		say "     Between the salamander's steamy juices arousing your taste buds and the hot, writhing feel of her tongue inside your pussy, you feel your orgasm coming rapidly. Barely able to moan out a warning, she responds by pulsing her tongue in and out of your cunt using her powerful and rapid-fire tongue. Feeling it shooting into you again and again with fast, deep licks, she's practically fucking your cunt with her tongue as you orgasm. Your cunt squeezes and quivers around that super-long tongue of hers as you can do little more than bury your face in her snatch and moan. Knowing she's driven you to ecstasy is enough to finally put the sexy salamander over the top herself and she cums as well, a rush of her delicious fluids washing across your face and tongue. You lap up as much as of it as you can get, loving the taste of the sexy femme. When you're both sated, you roll onto your backs and lay there, hand in hand and panting softly in post-orgasmic bliss.";

to say NewtAthanasia3someA:
	if cocks of player > 0:
		say "     Both smile at your offer and move in close to snuggle with you. After some kisses and nips are exchanged, Newt drops to her knees and takes your [cock size desc of player] cock in hand. Stroking it to erection, she runs her elongated tongue along it. Feeling the approaching warmth of her mouth, you place your hands on her smooth head. She smiles up at you and guides your [cock of player] shaft between her lips. With a moan of pleasure, she starts sucking you off with that deliciously warm and wet mouth of hers.";
		if a random chance of 1 in 3 succeeds:
			say "     While the sexy salamander goes down on you, Athanasia moves in behind her. Taking the basalt toy from its resting spot, she lays down on her side near Newt. Moving into position, she slides it into the girl's heated cunt. Newt hisses in delight at this and sucks down on you all the harder. Athanasia grins up at you and drives the stone dildo in again and again, each thrust bringing another happy hiss and burst of suction.";
			say "     While [if cock length of player > 8]deep-throating[else]sucking[end if] your [cock of player] cock, Newt runs her hands across your thighs, hips and lower belly. As her excitement grows, her hands move to your ass and start kneading it as she pulls her short muzzle onto your manhood over and over. With that slimy tongue of hers playing across your throbbing shaft, you groan and plunge into her mouth one last time. Caressing her smooth, slick skin as you hold her head to your crotch, you pump shot after shot of your cum down her throat. Feasting on your semen, she eagerly swallows it all down while grinding hard onto the stony dildo. From the rich scent of her arousal in the air, you can tell she's just orgasmed. A few thrusts later, Athanasia withdraws the toy so she can lick the steamy juices from the girl's pussy. And when your cock's released from her sucking maw, Newt turns the basalt toy loose in Athanasia's cloacal pussy. She pumps it into her while licking around it's edge until the phoenix cums with a shriek of avian delight.";
		else if a random chance of 1 in 2 succeeds:
			say "     While the sexy salamander goes down on you, Athanasia moves in behind her. Nuzzling her beak under Newt's tail, she nips her thighs and asks her to spread them. The girl giggles excitedly and makes more room by spreading her legs and raising her tail. The phoenix starts licking the salamander's dripping cunny. Running her broad, thick tongue over those wet folds, she sets the girl's hips quivering and she sucks down on you all the harder as her excitement builds.";
			say "     While [if cock length of player > 8]deep-throating[else]sucking[end if] your [cock of player] cock, Newt runs her hands across your thighs, hips and lower belly. As her excitement grows, her hands move to your ass and start kneading it as she pulls her short muzzle onto your manhood over and over. With that slimy tongue of hers playing across your throbbing shaft, you groan and plunge into her mouth one last time. Caressing her smooth, slick skin as you hold her head to your crotch, you pump shot after shot of your cum down her throat. Feasting on your semen, she eagerly swallows it all down while grinding hard against the phoenix's beak. From the rich scent of her arousal in the air and the sounds of juicy licking as Athanasia goes after those steam juices, you can tell the girl's just orgasmed. And when your cock's released from her sucking maw, Newt turns around to 69 with Athanasia, licking her cloacal pussy until the phoenix has cum as well.";
		else:
			say "     Athanasia moves up beside her, rubbing her feathery body alongside the salamander's smooth hide. She gives her neck a gentle nip and nuzzles her, signalling that she wants a turn as well. Newt withdraws from your shaft slowly, letting it slip wetly from her muzzle. The phoenix eagerly replaces her, taking your [cock of player] penis into her beak with care. Engulfed now in the firebird's hot mouth[if cock length of player > 8] and throat[end if], you caress her feathered head while sharing a sloppy, tongue-filled kiss with Newt. And after Athanasia's had her turn, Newt swaps back in and you're kissing the phoenix instead.";
			say "     The two fiery females take turns sucking your [cock of player] cock like this. While the pauses as they swap are brief, it's enough to keep you from boiling over too soon. Sensing your approaching orgasm, they each get more enthusiastic and elaborate in their attempts to be the one to finish you off. Grinning down at them, you try your best to hold back";
			if a random chance of 1 in 2 succeeds:
				say ". Newt ends up being the winner in their little contest, an artful twirl of her tongue pushing you over the top as it tweaks a sensitive spot at the right moment to send you over the edge. You blast shot after shot of hot seed down her throat, which she eagerly swallows down.";
				say "     Catching your last few spurts in her pretty muzzle, Newt shares a sloppy kiss with Athanasia. Her tongue slides into the phoenix's beak, carrying your hot seed with it. Sharing this tasty treat along with the kiss, the two grind against one another. The salamander girl rubs a hand at her crotch and the other at the firebird's, working a few fingers into those heated pussies until they both share moaning orgasms all while snowballing the last of your load.";
			else:
				say ". Athanasia ends up being the winner in their little contest, a squeeze of her broad tongue pressing your shaft against the firmness of her beak at the right moment to send you over the edge. You blast your [cum load size of player] load down her throat.";
				say "     After the first few blasts, Athanasia pulls back, letting your cum splatter across her beak and fiery feathers. Moving over, she lets Newt have a turn [if cock width of player > 16]under the fountain of semen[else]receiving a few splatters as well[end if]. Draining your [ball size] across the two of them, the phoenix takes the final lick while the salamander's long, slimy tongue sets to work cleaning their faces. This turns into sloppy kisses between the two fiery females while you finger them both to moaning orgasms.";
	else:
		say "     Both smile at your offer and move in close to snuggle with you. After some kisses and nips are exchanged, Newt drops to her knees and buries her face between your legs. Nuzzling your thigh, she makes her way to your juicy cunny and runs her elongated tongue along it. Feeling the approaching warmth of her heated breath, you place your hands on her smooth head. She smiles up at you and presses her lips to your netherlips while her tongue wriggles against them. With a moan of pleasure, she slips her tongue right into you.";
		let xx be a random number between 1 and 3;
		if xx is 1:
			say "     While the sexy salamander eats you out, Athanasia moves in behind her. Taking the basalt toy from its resting spot, she lays down on her side near Newt. Moving into position, she slides it into the girl's heated cunt. Newt hisses in delight at this and laps deeper into you. Athanasia grins up at you and drives the stone dildo in again and again, each thrust bringing another happy hiss and a tremble runs through her wriggling tongue.";
			say "     While wriggling her lengthy tongue around inside you, Newt runs her hands across your thighs, hips and lower belly. As her excitement grows, her hands move to your ass and start kneading it as she presses her short muzzle tighter to your crotch. With that slimy tongue of hers playing across your dripping folds and pulsing clit, you groan as shivers of delight rush through you. Caressing her smooth, slick skin as you hold her head to your crotch, you grind your quivering cunt down upon her playful tongue. Lapping up your juices, she eagerly dives in again and again for more while grinding hard onto the stony dildo. From the rich scent of her arousal in the air, you can tell she's just orgasmed. A few thrusts later, Athanasia withdraws the toy so she can lick the steamy juices from the girl's pussy. And when your orgasm ebbs and you release her head, Newt turns the basalt toy loose in Athanasia's cloacal pussy. She pumps it into her while licking around it's edge until the phoenix cums with a shriek of avian delight.";
		else if xx is 2:
			say "     While the sexy salamander eats you out, Athanasia moves in behind her. Nuzzling her beak under Newt's tail, she nips her thighs and asks her to spread them. The girl giggles excitedly and makes more room by spreading her legs and raising her tail. The phoenix starts licking the salamander's dripping cunny. Running her broad, thick tongue over those wet folds, she sets the girl's hips quivering and she wriggles her tongue all the deeper into you.";
			say "     While wriggling her lengthy tongue around inside you, Newt runs her hands across your thighs, hips and lower belly. As her excitement grows, her hands move to your ass and start kneading it as she presses her short muzzle tighter to your crotch. With that slimy tongue of hers playing across your dripping folds and pulsing clit, you groan as shivers of delight rush through you. Caressing her smooth, slick skin as you hold her head to your crotch, you grind your quivering cunt down upon her playful tongue. Lapping up your juices, she eagerly dives in again and again for more while grinding hard against the phoenix's beak. From the rich scent of her arousal in the air and the sounds of juicy licking as Athanasia goes after those steam juices, you can tell the girl's just orgasmed. And when your orgasm ebbs and you release her head, Newt turns around to 69 with Athanasia, licking her cloacal pussy until the phoenix has cum as well.";
		else:
			say "     Athanasia moves up beside her, rubbing her feathery body alongside the salamander's smooth hide. She gives her neck a gentle nip and nuzzles her, signalling that she wants a turn as well. Newt pulls her tongue free with a wet slurp and a final lick across your clit. The phoenix eagerly replaces her, nuzzling your damp folds with her beak before letting her broad tongue slather across your heated loins. Being licked now by the firebird's broad, thick tongue, you caress her feathered head while sharing a sloppy, tongue-filled kiss with Newt. And after Athanasia's had her turn, Newt swaps back in and you're kissing the phoenix instead.";
			say "     The two fiery females take turns licking your cunny. While the pauses as they swap are brief, it's enough to keep you from boiling over too soon. Sensing your approaching orgasm, they each get more enthusiastic and elaborate in their attempts to be the one to finish you off. Grinning down at them, you try your best to hold back";
			if a random chance of 1 in 2 succeeds:
				say ". Newt ends up being the winner in their little contest, an artful twirl of her tongue deep inside your vagina tweaks a sensitive spot at the right moment to send you over the edge. You soak that wriggling appendage in your feminine juices with a cry of orgasmic relief.";
				say "     After withdrawing and lapping a few last times across your quivering folds and clit, Newt shares a sloppy kiss with Athanasia. Her tongue slides into the phoenix's beak, carrying the flavour of your juices with it. Sharing this tasty treat along with the kiss, the two grind against one another. The salamander girl rubs a hand at her crotch and the other at the firebird's, working a few fingers into those heated pussies until they both share moaning orgasms all while sharing a French kiss enriched by your femmecum.";
			else:
				say ". Athanasia ends up being the winner in their little contest, a squeeze of her broad tongue across your clit at the right moment to send you over the edge. Your pussy quivers and your hot juices run out across her tongue.";
				say "     As your climax is ebbing, Athanasia moves over to let Newt take over. The salamander's agile tongue licks your crotch clean and slips back into your cunt for a final probing taste of your juices. Both having gotten a taste of your femmecum, they turn their attention to each other. The salamander's long, slimy tongue sets to work cleaning their faces. This turns into sloppy kisses between the two fiery females while you finger them both to moaning orgasms.";

to say NewtAthanasia3someB:
	say "***threesome fucking - fuck Newt + dildo, fuck Newt + oral, fuck Newt and Athanasia";

to say NewtAthanasia3someC:
	say "     Both smile at your offer and move in close to snuggle with you. After some kisses and nips are exchanged, Newt drops to her knees and buries her face between your legs. Nuzzling your thigh, she makes her way to your [if cocks of player > 0]hard cock and [end if]juicy cunny, running her elongated tongue along [if cocks of player > 0]them[else]it[end if]. Feeling the approaching warmth of her heated breath, you place your hands on her smooth head. She smiles up at you and presses her lips to your netherlips while her tongue wriggles against them. With a moan of pleasure, she slips her tongue right into you.";
	say "     As she eats you out, you motion for Athanasia to grab her basalt toy. Collecting the rather phallic spire from behind a rock, she positions herself behind Newt and starts by working it into herself. Once she's gotten it warmed up, and gotten herself quite warmed up as well, she pulls the hot toy from herself in inserts it into the salamander's hot cunt. Newt's tongue wriggles inside you at the sudden surprise, moaning long and loud as the dildo is pushed into her needy pussy. Once she's regained control, she rocks her hips back onto the toy while the phoenix holds it, her tongue wriggling inside you all the more excitedly.";
	WaitLineBreak;
	say "     After riding back onto that toy for a couple of minutes, she reaches back and takes it from Athanasia. Popping her tongue out from the depths of your now sopping cunny, Newt replaces it with the dildo. The stone phallus glows a dull red by this point, having grown warm from the heat of the two fiery ladies. Coated with a mix of both their juices, it slides into your well-prepared cunt with ease. It fills you with that powerful and exciting heat, warming your insides without harm. Leaning back, you let the salamander fuck you with their toy.";
	say "     You go like this for a couple of minutes before putting your hand on the salamander's. Taking the dildo from her, you plunge it back into the phoenix's steamy tunnel. She gives a musical cry of delight and flops back on the cave floor, letting you have your way with her. You drive the stony phallus into her energetically, working it until it's a red hot pillar. You then swap to Newt, who laying beside Athanasia and kissing her while awaiting her turn. You drive the glowing hot toy into her cunt and she nearly cums on the spot from the intensity of it. Her tongue dives into the bird's beak as she writhes in delight. She only gets about a dozen thrusts before it's out of her and back to you before she can cum.";
	WaitLineBreak;
	say "     As it goes into you, it's your turn to moan and spasm with near-orgasmic ecstasy from a few thrusts. You swap it back between Athanasia, Newt and yourself for a few more rounds, each getting shorter as you're all on edge and about to cum. By the time you're on the final round, the stone phallus's glow has intensified to a richer, brighter red and the basalt has softened to the point of flexing a little inside you.";
	let xx be a random number between 1 and 3;
	if xx is 1:
		say "     You are the first to cum, crying out long and loud in orgasmic release as you sink that glowing hot sextoy inside you on your final round. You pump it hard and fast through your climax, steam rising from your overheated crotch as the scent of your femmecum fills the air. You sag backwards to the ground as the last ripples of your orgasm run through you. Newt takes the toy from your cunt and plunges it into Athanasia and then herself, so they might also share in the great orgasmic release that you've just had. By the time it's over, the air is heavy with the steamy scent of sated females and the three of you a flopped out in a post-orgasmic haze with the sticky, overused toy resting at the centre, slowly cooling.";
	else if xx is 2:
		say "     Athanasia is the first to cum, crying out long and loud in orgasmic release as you sink that glowing hot sextoy into her on your final round. Newt joins you in pumping it hard and fast into the phoenix's overheated cloacal pussy throughout her throws of delight. The salamander is next to receive this treatment, the glowing phallus sending her into intense orgasm. You fuck her through it as well, withdrawing it as she collapses back into the phoenix's embrace. Shifting to sit on the other side of them, you drive the now white-hot toy into yourself and have your senses blown by the intensity of your long-delayed climax. Steam rises from your overheated crotch as the scent of your femmecum rises into the air and mixes with the steamy scent of the other sated females. You flop backwards onto the soft wing of your avian lover and the three of you cuddle up in a post-orgasmic haze with the sticky, overused toy resting at your feet as it slowly cools.";
	else:
		say "     Newt is the first to cum, crying out long and loud in orgasmic release as you sink that glowing hot sextoy into her on your final round. Athanasia is there to catch her in the soft embrace of her wing as the salamander sags backwards when her throws of delight finally subside. You are the next to receive this treatment as the glowing phallus sends you into intense orgasm. The phoenix helps brace the sextoy for you as writhe in carnal ecstasy, pumping it into you as you flop back onto the ground. Steam rises from your overheated crotch as the scent of your femmecum fills the air. With the two of you sated, Athanasia turns the heated dildo on herself and plunges it forcefully into her cloacal pussy with both feet. Her musical cry is the loudest of you three as she achieves her long-delayed orgasm. By the time it's over, the air is heavy with the steamy scent of sated females and the three of you a flopped out in a post-orgasmic haze with the sticky, overused toy resting at the centre, slowly cooling.";

[ hp of Newt                        ]
[ 0 = Nothing                       ]
[ 1 = Fled the raid                 ]
[ 2 = Lost during raid              ]
[ 3 = Won, refused Newt             ]
[ 4 = Accepted Newt                 ]

Newt ends here.
