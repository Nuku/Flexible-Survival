Version 1 of Blanche by Stripes begins here.
[Version 1.1 - Oral scene]
"Adds a White Wolf named Blanche to the Flexible Survival game"

Section 1 - Event

Wolfrape is a situation.  The level of Wolfrape is 16.
The sarea of Wolfrape is "Capitol";
when play begins:
	add Wolfrape to badspots of hermaphrodite;
	add Wolfrape to badspots of girl;
	add Wolfrape to badspots of furry;

Instead of resolving Wolfrape:
	say "     While searching the city, you hear sounds of both ecstasy and agony floating from a nearby alleyway.  Cautiously, you approach and peer inside.  An anthro white wolf female has been caught and pinned by one of the herm Drakenoids.  The demonic features of the reptile herm contrast the clean, pure coloration of the white wolf woman.  The wolf's blouse is ripped into tatters as her captor's sharp claws digs into her shoulders to keep her restrained, leaving the wolf woman to only be able to pitifully to be spared as the dragon-creature drills into her from behind.";
	say "     You could try to help the poor wolf, but dare you face such a formidable creature?  [if level of player < 10]It seems like a terribly vicious and dangerous beast.  [end if]The lustful Ash Drakenoid continues thrusting drilling its cock into her painfully, its excitement growing.  If you plan to help her, you'd best do it now.  Shall you intervene?";
	if the player consents:
		now blanchefight is true;
		say "     You charge into the alley, trying to take the large creature by surprise.  It growls angrily at being interrupted mid-coitus and pulls painfully out of the wolf-woman.  You manage a quick blow to the creature as it kicks its previous prey into the corner to retrieve later.  The wolf is stunned for the moment, leaving you to face this monster alone.";
		challenge "Ash Drakenoid";
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having defeated the formidable creature and driven it back into hiding, you rush over to the female wolf.  She is still quite dazed from her assault, but mumbles some thanks as you help her to her feet.  You consider taking her back with you, but are unsure how safe this unknown wolf could turn out to be.  You are spared from the decision as she starts indicating directions for you to follow.  She leads you to a partially ruined office building just a few blocks away.  The entrance is buried in rubble, but there's a concealed back entrance to the five-story building which she unlocks.";
			move player to Office Den;
			now Office Den is known;
			attempttowait;
			project the figure of Blanche2_icon;
			say "     Once safely concealed in the wolf's hidden den, she hugs you tightly and gives you a passionate kiss which surprises both of you.  As if suddenly realizing what she's done, she takes a step back, blushing at her ears.  'Oh, I'm sorry.  It's this... infection thing.  I'm sure you know what it does to you.  I am really thankful though for your help.'  She brushes her fur nervously and, realizing that she's nude, grabs one of a few spare blouses she has folded on the bookcase.  She slides it on, but doesn't bother to do it up after throwing you a quick glance.";
			say "     She grabs a can of ravioli from the shelf as well, pressing it into your hands.  'Please take this.  I'd give you more, really, but it's about all I can spare right now.  You were really brave to try and help me against that monster.  I don't like going out there much because there are so many of them.  You could... if you need somewhere safe to hide that is... maybe stay here... with me.'  She speaks softly, but with obvious longing in her voice.  Perhaps she's lonely and simply wants companionship, though from the way she's looking at you, perhaps she wants more.";
			now hp of Blanche is 1;
			increase carried of food by 1;
			increase score by 20;
			now battleground is "void";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:
			say "     After the draconic beast has suitably punished you for the interruption, she heads back to her original prize and pushes her over onto all fours.  The female wolf moans weakly, but cannot prevent the drakenoid from mounting her again.  The dragon's lustful moaning starts up again, but the wolf's whimpers and moans of pain are soon silenced as the drakenoid clamps the wolf's muzzle shut.  Holding her muzzle upwards, the powerful beast kisses and licks at the wolf's face, moaning how lovely she'll look filled with her whelps.  The wolf's eyes go wide at this, but she's too overwhelmed by the mix of pain and pleasure from the rough mating to do anything.  The dragon creature growls loudly and lustfully as it drives hard into its prey one last time, causing the wolf to yelp then struggle, then become very still.  The lizard cock glows from within the wolf's belly and soon you can tell the canine is being filled with molten sperm.  The white wolf's belly expands as it is filled, and glows red as its new cargo of life shine through her skin and fur.  Once the wolf is full and bloated with the drakenoid's cum, the ash creature pulls out and starts dragging the wolf away with her.  When you recover enough to get up, you get away from this spot as quickly as you can.";
		otherwise if fightoutcome > 30:
			say "     Unable to stand up to the powerful creature's assault, you turn and run away.  The angered Drakenoid sends a wave of fire after you, burning the stray trash in the alley before pouncing back on her original prey.  You can hear the sounds of lust.  The cries of pain start back up again, but they are quickly silenced, probably by a large, clawed hand around the wolf's muzzle.  The sounds fade away as you continue further away, though you do hear loud roar of the beast cumming into its prize.";
	otherwise:
		say "     Deciding not to intervene, you watch as the wolf moans pitifully, an expression of growing rapture on her face as the Drakenoid thrusting into her from behind.  The dragon growls and slams her prick home causing the wolf to yelp then struggle, then become very still.  The lizard cock glows from within the wolf's belly and soon you can tell the canine is being filled with molten sperm.  The white wolf's belly expands as it is filled, and glows red as its new cargo of life shine through her skin.  Once the wolf's been filled, the Drakenoid grabs her, dragging her off somewhere.  As quietly as you can, you back away.";
	now blanchefight is false;
	now wolfrape is resolved;


Section 2 - Office Den


Office Den is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Office Den is "[officedendesc]";

the scent of Office Den is "Unlike the air outside, it's mostly free of the smell of soot and ash.  There is a strong, lupine smell in the air from Blanche.";

to say officedendesc:
	say "     While the main floor is charred and ravaged, a service door leads to an undamaged basement office area.  While half of the basement holds the maintenance area for the small office building, the other half was converted into office space.  It looks like a couple of the desks and filing cabinets which were once here have been removed, making space for Blanche to set up her hidden living area.  There's some motivational posters and rather bland pieces of business art which the white wolf hasn't bothered to remove, or has left in an attempt to keep her spirits up.  She's set up a small mat she's found as her bed and stored her few supplies on a shelf.  While somewhat modest, at least it's secure and well camouflaged.";


Section 2 - Blanche the Wolf

Blanche is a woman.  Blanche is in Office Den.
The description of Blanche is "[blanchedesc]";
The conversation of Blanche is { "Thanks." }.
The icon of blanche is Figure of Blanche1_icon.

the scent of Blanche is "She smells of wolf and half-hidden arousal.";

to say blanchedesc:
	if hp of Blanche < 3:
		say "     Blanche is an anthropomorphic female wolf with white fur.  She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail.  She has a [if turns / 8 is even]pastel blue blouse[otherwise]pink blouse[end if] draped over her shoulders which she hasn't bothered to button up.";
	otherwise:
		say "     Blanche is an anthropomorphic female wolf with white fur.  She has a shapely, womanly body with plump breasts and wide hips, giving her a sexy bottom beneath her fluffy tail.  She doesn't bother to wear anything now, letting her sexy body be on display for you, a tantalizing sight that makes you look forward to playing with her some more.";


Instead of conversing the Blanche:
	if hp of Blanche is 1:
		say "     'I was here working late with a few others on a big project late into the night.  At first, we hadn't noticed something was going on, but suddenly the radio station's broadcast was cut off with a strange announcement about some kind of emergency and how everyone should stay hidden in their homes until rescue arrived.  We were really confused and went outside to see what was going on.'";
		say "     Blanche pauses for a moment before continuing.  'And that's when it all went crazy.  The ground started to shake and a few moments later, there was a blast of fire and noise as a huge cloud blocked out the night sky.  Buildings started to crumble around us.  Luckily, we'd stepped far enough from the entrance to not be caught under it when the awning collapsed.  Fire started to fall from the sky, wrecking more buildings.  And that's when we started to see the creatures running around in fear.  All of it was just too much and we freaked out.  I tried to get the others to head back inside, but they wanted to get home and find their families.  Some of them promised to come back, but they never did.  I knew it wasn't safe out there.  I've been hiding out here ever since.'";
		say "     She moves a little closer to you, pressing herself to your side.  'I'm really glad you found me when you did.  It's been getting more difficult dealing with these... well, it's been getting more difficult around here.  It's just much better having a friendly face around.  Someone to keep me company.'  She blushes a little at her ears as she says this, but her body rubs against you all the more.  You can smell the scent of her arousal stronger in the air.";
		now hp of Blanche is 2;
	otherwise if hp of Blanche is 2:
		say "     [one of]'I was starting to get really lonely hiding here all alone.  I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things.  After I came back from one of those trips, I started to feel funny.  It started slowly at first, but soon I was a wolf.  I was a little scared before, but I'm not really sure why.  I think my new body's much prettier.'[or]She slides up beside you.  'Will you stay for a while and keep me company?' she asks softly, but with a longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	otherwise if hp of Blanche is 3:
		say "     [one of]'I was starting to get really lonely hiding here all alone.  I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things.  After I came back from one of those trips, I started to feel funny.  It started slowly at first, but soon I was a wolf.  I was a little scared before, but I'm not really sure why.  I think my new body's much prettier.'[or]She slides up beside you.  'It was really nice to snuggle up to you, hon.  Mmm... I do still need a nice cock to stuff me, but it certainly did help,' she says with a moan of longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";
	otherwise if hp of Blanche is 4:
		say "     [one of]'I was starting to get really lonely hiding here all alone.  I'm glad you're here to keep me company.'[or]'I tried to fix this place up as best I could now that it's become my wolf den.'[or]'I had to go out to gather some supplies, a place to sleep and a few other things.  After I came back from one of those trips, I started to feel funny.  It started slowly at first, but soon I was a wolf.  I was a little scared before, but I'm not really sure why.  I think my new body's much prettier.'[or]She slides up beside you.  'It felt so nice to finally have someone fuck me properly.  You should breed me again soon,' she moans with longing in her voice.[or]'The power's gone out around here, but thankfully the lights have stayed on down here.'[at random]";


the fuckscene of Blanche is "[sexwithBlanche]".

to say sexwithBlanche:
	if hp of Blanche is 1:
		say "     That's awfully forward of you.  Perhaps you should talk to her a little first.";
	otherwise if lastfuck of Blanche - turns < 6:
		say "     'I need a little more time to recover, hon.'";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     You're ill-equipped to play with the white wolf right now.";
	otherwise:
		now lastfuck of Blanche is turns;
		if hp of Blanche is 2:
			say "     Blanche blushes a little at your offer, but presses herself to you, kissing you passionately.  'Oh, I was so hoping you'd stay to [if cocks of player > 0]breed me[otherwise]keep me company[end if].  My body's been needing it so bad lately.  I think that's how that beast found me.'  She hugs you tighter, shuddering a little.  'But now you're here to help me with [if cocks of player > 0]my heat[otherwise]it[end if].'";
		otherwise if hp of Blanche > 2:
			say "     Blanche smiles and kisses you passionately, clearly eager for more fun.  'I'm so glad you've come back for more.  I just need it so bad,' she moans, running her paws over your body.  She nuzzles along your neck, licking and nibbling softly.";
		if cocks of player > 0:
			if hp of Blanche < 4 or a random chance of 2 in 3 succeeds:		[vaginal]
				say "     The wolf femme leads you quickly over to her sleeping mat, slipping your pack and clothes off before stretching out on it.  She spreads her legs and runs her paws down her body, playing with her tits before stroking her wet pussy in a rather wanton display[if hp of Blanche is 2].  'Oh, I've been holding back for so long, but I've needed a good fuck ever since I changed.'  She blushes a bit at her words, but spreads her precious flower open while eyeing your stiff erection[otherwise if hp of Blanche is 3].  'Oh, did you get that for me,' she moans as she eyes your new cock.  'I've been holding back for so long, but I've needed a good fuck ever since I changed.'  She blushes a bit at her words, but spreads her precious flower open[otherwise].  'I want you to fill me again.  My hot hole needs to be fucked again.'  She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if].  'Mmm... come claim your prize bitch, my sexy hero.'";
				say "     Needing no more invitation, you hop onto the mat and move atop the wanton wolf, running your hands over her body and breasts as she takes hold of your [cock size desc of player] [cock of player] [one of]erection[or]shaft[or]rod[purely at random] and guides it towards her dripping cunt[if cock length of player >= 36].  Given your huge girth, you take it very slow at first, pushing gently to slowly spread her vagina open.  The lustful wolf howls in pleasure as you start sliding your enormous cock into her as her needy cunt stretches wide to take you in.  Soon her belly is bulging more and more as you feed your cock into her.  She rubs her paws over it, moaning in delight at being so full[otherwise if cock length of player >= 24].  Given your huge girth, you take it slow at first, pushing gently to slowly spread her vagina open.  The lustful wolf howls in pleasure as you start sliding your giant cock into her as her needy cunt stretches wide to take you in.  She rubs her paws over the cute bump in her belly that your big cock stretches out[otherwise if cock length of player >= 12].  Given your large size, you go slow at first, pushing into her gently to slowly spread her vagina open.  The lustful wolf moans in pleasure as you start sliding your big cock into her as her needy cunt stretches to accommodate you.  Soon you're buried in her hot, dripping hole and she's rubbing over her lower abdomen, feeling the firmness of your big cock buried inside her[otherwise].  You ease yourself into her as her paws stroke your [cock size desc of player] cock and balls.  The lustful wolf moans in pleasure as you bury your throbbing meat inside her hot, dripping hole.  She rubs over her lower abdomen, enjoying the pleasure of having a sexy cock buried inside her[end if].  You move your hands up to her bosom, caressing her breasts and teasing her nipples as you begin thrusting steadily into your lupine lover, to her very obvious delight.";
				say "     Her paws move from her belly to your sides, caressing your hips before sliding lower to fondle your [ball size] balls, moaning in pleasure[if cock width of player >= 12].  She pants and licks her lips in anticipation of the ample load you've got for her[end if].  Her inner walls pull and squeeze at your cock in such delightful ways as you fuck her.  Leaning forward, you kiss the sexy wolf, inviting her long tongue to dive into your mouth and play against yours[if cock length of player >= 36].  Her paws return to the exposed length of your huge cock, stroking and caressing it to further please you, even urging you to push more into her, stretching her body out further around your massive meat[otherwise].  Reaching behind you, she grabs your ass and squeezes, pulling you towards her[end if].  At her obvious urging, you start thrusting harder and faster, pounding away as the lustful wolf tilts her head back and howls in pleasure again and again as she orgasms.  It soon becomes too much for you and you cum hard into her as well, [if cock width of player >= 12]flooding her womb with your hot seed[otherwise]pumping your hot seed into her womb[end if].";
				say "     After you're spent, you slowly ease your shaft from her, making her moan softly[if cock width of player >= 20].  She rubs her paws over her tummy, bloated with your ample seed and smiles happily.  'Mmm... that feels so good.  It's like I'm already full of pups,' she moans softly[otherwise].  She rubs a paw over her sticky folds, spreading around the semen that's leaking out of her.  'Mmm... that's just what I needed,' she moans softly[end if].  She gives you a big hug and an even bigger kiss before stretching out on her mat.  'Be sure to come back and breed me like that again soon,' she rumbles.";
				if hp of Blanche < 4, now hp of Blanche is 4;
			otherwise:		[oral]
				say "     Blanche leads you over to the desk and has you sit on the corner of it while she gets on her knees before you.  The white wolf nuzzles at your groin and breathes in your heady scent of her hero, lover and mate.  She runs her paws over your thighs and caresses your hips before moving on to stroking your [cock size desc of player] [cock of player] penis.  She leans in and, glancing playfully up at you, slowly runs her lupine tongue across the length of your meat, eliciting a moan from you.  Clearly pleased with the taste of your meat, she leans forward and slides your shaft into her muzzle[if cock length of player >= 24].  Given your massive size, it takes her considerable effort, but her lust overcomes the physical difficulty and her mouth and throat stretch open to take your [cock size desc of player] cock.  The outline of your bulging member is clearly visible against her outstretched throat[otherwise if cock length of player >= 16].  Given your considerable size, she has to go slow at first, but soon enough you're thrusting into her muzzle and throat with a visible bulge from your [cock size desc of player] cock[otherwise if cock length of player >= 10].  Her lupine muzzle slides down over your erection and the tip of your [cock size desc of player] cock slides into the wolf's throat[otherwise].  Her lupine muzzle slides down over your erection, taking it fully into her muzzle[end if].  As her muzzle[if cock length of player >= 10], throat[end if] and tongue slide across your shaft, her paws move to rub and caress your balls, hungry for the treat they hold.";
				if a random chance of 1 in 2 succeeds:
					say "     Pleased with the wolf's attention, you rub her ears and stroke her muzzle, telling her what a fine job she's doing and how happy you are to have met her.  At your words of praise, she sucks you all the more eagerly.  Her long tongue and warm muzzle work tirelessly to get you off.  As she bobs her head faster, your precum dribbles onto her tongue and down her throat, giving her a taste of what's fast approaching.  Cupping your nuts, she moans softly and sucks down hard, finally pushing you over the edge.  You blast shot after shot of thick seed down her throat, filling her with your warm, hot cum.  As she swallows this down, she jams a paw between her legs and stuffs several fingers into her cunny, pumping herself to an orgasm that has her groan in delight around her muzzleful of meaty cock[if cock width of player >= 20].  Your excessive load leaves the sexy wolf with a tummy so full it's bloated with your semen by the time you're finished and she releases your spent cock[otherwise].  She keeps going until your balls are drained before releasing your spent cock[end if].  She smiles up at you, licking her muzzle and looking very satisfied.  Looking lower, you can see her crotch soaked with her own juices and the floor below wet with a puddle of them as well.";
				otherwise:
					say "     Pleased with the wolf's attention, you rub her ears and stroke her muzzle, telling her what a fine job she's doing and how happy you are to have met her.  At your words of praise, she sucks you all the more eagerly.  Her long tongue and warm muzzle work tirelessly to get you off.  As she bobs her head faster, your precum dribbles onto her tongue and down her throat, giving her a taste of what's fast approaching.  Cupping your nuts, she slides her muzzle off your cock and starts stroking and licking at your cock emphatically, finally pushing you over the edge.  You blast shot after shot of your seed all over her face and body[if cock width of player >= 20], practically coating her ivory fur in your white cum[end if].  Marked [if cock width of player >= 20]thoroughly [end if]as yours, she starts licking your semen from her muzzle and one paw while the other dives between her thighs to frig herself to a howling climax of her own.  She smiles up at you, sucking some of her juices from her paw and looking very satisfied.  Looking lower, you can see her crotch soaked with her own juices and the floor below wet with a puddle of them as well.";
		otherwise:
			say "     The wolf femme leads you quickly over to her sleeping mat, slipping your pack and clothes off before stretching out on it.  She spreads her legs and runs her paws down her body, playing with her tits before stroking her wet pussy in a rather wanton display[if hp of Blanche is 2].  'Oh, I've been feeling so horny ever since I changed.  I just need some relief.' She blushes a bit at her words, but fingers herself while eyeing you lustfully[otherwise].  'I've been feeling so horny again lately.  I just need some relief again.'  She smiles and licks her lips, driving a pair of fingers into her cunt in lustful anticipation[end if].  'Mmm... come claim your prize bitch, my sexy hero.'";
			if a random chance of 1 in 2 succeeds:
				say "     Needing no more invitation, you hop onto the mat and move atop the wanton wolf, running your hands over her body and breasts as she wrap her arms around you waist and hugs you close.  You kiss one another as your bodies rub together, hands and paws drifting between thighs to caress the wet folds found there.  You slide a couple of fingers into her juicy cunt as she does the same for you.  You lick, kiss and finger one another with increasingly loud moans of lustful pleasure.  The air in the room grows thick with the scent of your combined arousal.  When you reach your peak and cum, Blanche is not far behind and you are both left panting and soaked at the crotch with your release.";
			otherwise:
				say "     Needing no more invitation, you hop onto the mat and move alongside the wanton wolf in a 69 position, running your hands over her hips and thighs as you nuzzle and kiss between them.  She brings her lupine muzzle to your hot pussy as well and takes in your scent with a soft moan before lapping her long tongue across your sensitive folds.  After this brief foreplay, you get right to it, diving your tongues into one another and eating each other out.  Lips kiss, tongues slide, fingers tease and juices flow as the scent of your combined arousal grows thick in the air.  You lavish attention on the needy, heat-filled pussy before you with increasingly loud moans of lustful pleasure as you are treated in kind by her long, lupine tongue.  When you reach your peak and cum, Blanche is not far behind and you are both left panting and soaked at the crotch with your release, your faces covered in delicious pussy juices.";
			say "     After your orgasms, you lie back on the mat side by side, panting softly in the afterglow of your release.  Taking your hand in hers, she smiles.  'Mmm... thank you for that.  I really needed to let off some relief.  My body just wants a proper fucking so bad.'  She rubs her other paw over her sticky folds.";
			if hp of Blanche < 3, now hp of Blanche is 3;


[	hp of Blanche		]
[ 0 - not saved			]
[ 1 - saved				]
[ 2 - talked to her		]
[ 3 - sex (F/F)			]
[ 4 - sex (M/F)			]

Section 3 - Endings
[to come later]

Blanche ends here.
