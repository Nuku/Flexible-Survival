Version 1 of Micaela by Stripes begins here.
[ Version 0.6 - Intro event, base character and dialog ]
"Adds an Easter Bunny herm w/ovi content to Flexible Survival."

Section 0 - Related Scavevents	[Created by Wahn - Transposed from Scavevents]

Easter Eggs is a scavevent.
The sarea of Easter Eggs is "Forest".
when play begins:
	add Easter Eggs to badspots of furry;
	add Easter Eggs to badspots of hermaphrodite;

Instead of resolving Easter Eggs:
	say "     Entering a small glade between the trees, you look around cautiously before crossing into it.  At one edge, you spot a strange splash of colour tucked under a bush.  You approach and brush the leaves aside to see a mound of decorated eggs.  They're colourful, some with solid colours and others striped or spotted - Easter Eggs.";
	say "     Leaning over to pick one up, you get a pair of surprises.  The first come in the form of the wet film coating the eggs.  The second is the [if level of player > 5]increasingly [end if]familiar press of a large erection against your rear, lightly humping it.";
	attempttowait;
	say "     'Hey there, honeybunch.  I see you found my pretty eggs.  Would you like one?  They're fresh.'  Looking back, you see the head and shoulders of a pretty bunny girl with mismatched eyes.  She's got pink fur, blue hair and a busty figure.  She's dressed in a frilly outfit and has a basket of more decorated eggs hanging on her arm.  'Or even better... how about I put an egg in you?' she says with a smile, grinding her throbbing member upon your ass all the harder.";
	if cocks of player > 0:
		say "     Shall you let the overly-friendly bunny [link]continue (1)[as]1[end link], would you prefer to [link]turn the tables (2)[as]2[end link] on her or simply [link]make her stop (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[micaelaintro_01]";
			now hp of Micaela is 2;
		otherwise if calcnumber is 2:
			say "[micaelaintro_02]";
			now hp of Micaela is 2;
		otherwise:
			say "[micaelaintro_pass]";
			now hp of Micaela is 1;
	otherwise:
		say "     Shall you let the overly-friendly bunny [link]continue (Y)[as]y[end link] or simply [link]make her stop (N)[as]n[end link]?";
		if the player consents:
			say "[micaelaintro_01]";
			now hp of Micaela is 2;
		otherwise:
			say "[micaelaintro_pass]";
			now hp of Micaela is 1;
	now Bunny House is known;
	now Easter Eggs is resolved;

to say micaelaintro_01:
	say "     Deciding to just go with it, you brace yourself against a nearby tree and grind back against the humping bunny.  'Oh, you're so friendly,' she giggles happily.  She pushes aside any obstructive clothing or gear you may have and presses her drooling glans against your [if cunts of player > 0]juicy pussy[otherwise]tight pucker[end if].  Despite her obvious eagerness, she shows some consideration for her partner and thrusts into you slowly at first.  You both moan in lustful pleasure at the penetration, the bunny's shapely cock slipping in like it belongs in you.";
	say "     'Mmm... it's good to take a turn on top for a change.  You're such a sweetie for letting me,' she adds, kissing your cheek even as she starts humping harder.  This sets her plump, overfilled balls slapping against your [if cunts of player > 0]thighs[otherwise]butt[end if].  Her nine-inch cock throbs inside you as it [if cunts of player > 0]slides across your slick vaginal walls[otherwise]pushes in and out of your bowels, grinding against your prostate[end if].";
	attempttowait;
	say "     As she settles into a good, fast rhythm, her gloved hands run over your [bodydesc of player] body, stroking and caressing you even as she fucks your brains out.  She [if breasts of player > 0]teases your nipples, [end if][if cocks of player > 0]fondles your cock[smn] [end if][if cocks of player > 0 and cockname of player is not listed in infections of InternalList]and balls playfully, [otherwise]playfully, [end if][if cunts of player > 2]fingers your other pussies, [otherwise if cunts of player is 2]fingers your other pussy, [otherwise if cunts of player is 1]rubs across your spread pussy lips, [end if]caresses your sides and (most frequently) rubs your [if gestation of child > 0]pregnant [end if]belly while moaning in pleasure.  It's at one of these times that she closes her pretty eyes and pushes fully into you, moaning happily as she cums hard.  Bursts of good bunny seed shoot into your [if cunts of player > 0]pussy and flow into your womb[otherwise]ass and flow into your bowels[end if].  When she's finally done and pulled out, your [if cunts of player > 0]womb feels[otherwise]bowels feel[end if] wonderfully warm and full with her semen.[ovichance]";
	say "     She cuddles you close and gives you another peck on the cheek.  'That was lots of fun, sweetie.  We should do it again sometime.  My name's Micaela and I live in the pastel blue house not far from here,' she says, pointing down a path.  She's soon taking that path, skipping humming and skipping merrily while swinging her basket of eggs as she goes.";

to say micaelaintro_02:
	say "     Rather than let the unknown bunny screw you, you pull away and turn around.  As she stumbles forward, you grab her and press her up against a nearby tree.  You press your stiffening member against her butt, drawing a giggle from her.  'Oh no, I guess it's more eggs for me,' she moans over-dramatically.  She giggles again and flips up the back of her dress, showing off her cute bunny-butt and enlarged pussy along with her plump ballsac and stiff nine-incher.  The sight of the bunny herm on display arouses you to full hardness and you mount her with a lustful groan.";
	say "     The bunny girl's wide cunt squeezes and milks around your [cock size desc of player] cock, adjusting with practised ease to fit you wonderfully.  Once you settle into a hard, steady rhythm for fucking her, her inner walls almost suck at your penis in her body's effort to get your hot seed into her.  Her fluffy tail twitches with every thrust you make into her warm, slick cunny.";
	attempttowait;
	say "     'Oh, you're really good at this, sweetie.  Mmm... come on... gimme another batch of eggs,' she moans, pushing back harder.  She rubs a gloved hand over her tummy and closes her mismatched eyes, perhaps imagining the colourful eggs you'll give her.  That kinky thought has you moan and bury yourself even harder and deeper into her[if cock length of player > 30].  Your mighty rod bulges her belly outwards dramatically and she rubs across the phallic stretch in her tummy[otherwise if cock length of player > 20].  Your over-sized rod bulges her belly outwards and she rubs across the throbbing bump in her tummy[end if].  Your [cock of player] penis pulses inside her and you groan in release, pumping shot after shot of your hot semen into her needy belly.  You drain your balls, emptying your [cum load size of player] load into her womb.";
	say "     After you pull out, she cuddles you close and gives you peck on the cheek.  'That was lots of fun, sweetie.  We should do it again sometime.  My name's Micaela and I live in the pastel blue house not far from here,' she says, pointing down a path.  She's soon taking that path, skipping humming and skipping merrily while swinging her basket of eggs as she goes, leaking a trail of semen as she does.";

to say micaelaintro_pass:
	say "     Rather than let the unknown bunny screw you, you pull away and turn around.  As she stumbles forward, you grab her arm to keep her from falling over.  She giggles a little and smiles at your courtesy.  'Thanks for the catch.  Not in the mood?  That's alright.  If you change your mind and find yourself in the mood for some Easter cheer, you always come see me for some fun.  My name's Micaela and I live in the pastel blue house not far from here,' she says, pointing down a path.  She's soon taking that path, skipping humming and skipping merrily while swinging her basket of eggs as she goes, though she does pause partway to flip up the back of her dress with a giggle.  This shows off her cute bunny-butt and enlarged pussy along with her plump ballsac and stiff nine-incher.  The sight of the bunny herm is a tantalizing one, tempting you into indeed returning.";


Section 1 - Bunny House

Bunny House is a room. It is fasttravel. It is private.
The description of Bunny House is "[bunnyhousedesc]".

the scent of Bunny House is "Micaela's scents of arousal, rabbits and candy hang in the air here.";

to say bunnyhousedesc:
     say "     The pastel blue house is more intact than the others in the area.  The damage to this two-storey home is largely confined to the garage, driveway and yard.  Inside, the living room is fairly clear of junk, though the carpet and furniture all show signs of recent wet stains.  Micaela, the Easter bunny herm, is seated in one of those chairs, rubbing her [if xp of Micaela > 8]egg-laded [otherwise if xp of Micaela > 0]growing [end if]tummy with a happy smile on her cute face.";


Section 2 - Micaela

Micaela is a person.  Micaela is in Bunny House.
The description of Micaela is "[micaeladesc]".
The conversation of Micaela is { "Eggies!" }.
the scent of the Micaela is "The colourful bunny smells of arousal, rabbits and candy.".
micaelastory1 is a truth state that varies.  micaelastory1 is usually false.

to say micaeladesc:
	if debugactive is 1:
		say "DEBUG (Micaela) -> HP: [hp of Micaela], XP: [xp of Micaela] <- DEBUG[line break]";
	say "     Micaela is a herm Easter bunny with pink fur and blue hair.  Her rabbit-like head has short ears and large, floppy ears.  Her eyes are heterochromatic, meaning one's blue and the other is brown.  Her body's like that of a Playboy model - except the ears and bunny tail are real.  She's wearing a frilly red and white outfit that's quite skimpy as well.  It's low cut over her busty G-cup breasts and comes with a short skirt that barely hides her cute tush, perky cock and juicy cunny.  Add to this are arm-length gloves and thigh-high stockings, both made of silky red fabric, and polished white shoes.  She's always got a ribbon-wrapped basket of colour eggs on her as well to complete her sexy Easter bunny look.";


Section 3 - Dialog

Instead of conversing the Micaela:
	if debugactive is 1:
		say "DEBUG (Micaela) -> HP: [hp of Micaela], XP: [xp of Micaela] <- DEBUG[line break]";
	if hp of Micaela is 0:
		say "***Unknown error.  Adjusting.";
		now hp of Micaela is 1;
		now Easter Eggs is resolved;
		now Bunny House is known;
	if hp of Micaela is 1 or hp of Micaela is 2:
		say "     Micaela smiles as you come over.  'Hey there.  I'm glad you decided to stop by.  [if hp of Micaela is 1]Did you change your mind about having some fun[otherwise]Are you in the mood for more fun[end if]?' she asks, spreading her legs and showing off her dual-gendered loins.";
		say "     'I run into some other nasty folks out there in the woods, especially those mean wolves.  That's why I've been hiding stashes of my eggs in the forest.  That way there's always some around to help me get back to my cute bunny self when one of those meanies catch me and fuck me,' she says, lightly running her fingers across her damp folds.  'If I stop being my pretty bunny self, who'll spread Easter cheer around here?";
		say "     'But you seem much nicer than the others out there.  How about you come snuggle up[if hp of Micaela is 2] for some more fun[end if]?'";
		now hp of Micaela is 3;
	otherwise if hp of Micaela is 3:
		say "     '[one of]It feels so nice being filled with eggs.  Almost as good as when they finally come out.'[or]Feel free to come visit as often as you like.'[or]Do you like my outfit?' the bunny herm asks.  She does a little spin to show it off, ending with her bending over to flash you with a playful giggle.[or]I love the taste of sweets, sugar and chocolate.  That's what helps make my eggs so yummy,' she says, giving one from her basket a long, slow lick before popping it right into her mouth.  'Mmmm...'[or]'I've got a bunch of bunny egg stashes around the forest to help keep me my pretty bunny self.'[or]Those mean wolves must really like hunting rabbits, I guess.  Not that I mind too much.  They're a good fuck, at least,' she says with a giggle.[at random]";
	otherwise if hp of Micaela > 3 and micaelastory1 is false and a random chance of 2 in 5 succeeds:
		now micaelastory1 is true;
		say "***";


Section 4 - Sex Mechanics

the fuckscene of Micaela is "[sexwithMicaela]".

to say sexwithMicaela:
	setmonster "Easter Bunny";
	choose row monster from the table of random critters;
	if hp of Micaela < 3:
		say "     [if hp of Micaela < 2]She certainly seemed eager earlier, but[otherwise]Despite having sex earlier,[end if] you should probably talk to her first.";
	otherwise if lastfuck of Micaela - turns < 4:
		say "     'As fun as it's been, sweetie, even I need a break from bunny humping from time to time.' she says with a happy giggle.";
	otherwise:
		say "***Temporarily reusing intro scenes.";
		if cocks of player > 0:
			say "Shall you fuck her (Y) or get fucked (N)?";
			if the player consents:
				say "[micaelaintro_02]";
			otherwise:
				say "[micaelaintro_01]";
		otherwise:
			say "[micaelaintro_01]";
		now lastfuck of Micaela is turns;


Section 5 - Sex Scenes



Section 6 - Easter Eggs




Section X - Notes

[        hp of Micaela        ]
[ 0 = not met                 ]
[ 1 = no sex                  ]
[ 2 = event sex               ]
[ 3 = intro                   ]


[       xp of Micaela      ]
[ 0 = not preggers         ]
[ 1-8 = early pregnancy    ]
[ 9-16 = late pregnancy    ]
[ 17+ = oviposition time   ]


Micaela ends here.
