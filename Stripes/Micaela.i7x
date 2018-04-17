Version 1 of Micaela by Stripes begins here.
[ Version 1.7 - Pregnant description add-on ]

"Adds an Easter Bunny herm w/ovi content to Flexible Survival."

Section 1 - Lead-in Event

Easter Eggs is a scavevent.
The sarea of Easter Eggs is "Forest".
when play begins:
	add Easter Eggs to badspots of furry;
	add Easter Eggs to badspots of hermaphrodite;

Instead of resolving Easter Eggs:
	say "     Entering a small glade between the trees, you look around cautiously before crossing into it. At one edge, you spot a strange splash of colour tucked under a bush. You approach and brush the leaves aside to see a mound of decorated eggs. They're colourful, some with solid colours and others striped or spotted - Easter eggs.";
	say "     Leaning over to pick one up, you get a pair of surprises. The first come in the form of the wet film coating the eggs. The second is the [if level of player > 5]increasingly [end if]familiar press of a large erection against your rear, lightly humping it.";
	WaitLineBreak;
	say "     'Hey there, honeybunch. I see you found my pretty eggs. Would you like one?  They're fresh.' Looking back, you see the head and shoulders of a pretty bunny girl with mismatched eyes. She's got pink fur, blue hair and a busty figure. She's dressed in a frilly outfit and has a basket of more decorated eggs hanging on her arm. 'Or even better... how about I put an egg in you?' she says with a smile, grinding her throbbing member upon your ass all the harder.";
	if cocks of player > 0:
		say "     Shall you let the overly-friendly bunny [link]continue (1)[as]1[end link], would you prefer to [link]turn the tables (2)[as]2[end link] on her or simply [link]make her stop (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>";
			get a number;
		if calcnumber is 1:
			say "[micaelaintro_01]";
			now HP of Micaela is 2;
		else if calcnumber is 2:
			say "[micaelaintro_02]";
			now HP of Micaela is 2;
		else:
			say "[micaelaintro_pass]";
			now HP of Micaela is 1;
	else:
		say "     Shall you let the overly-friendly bunny [link]continue (Y)[as]y[end link] or simply [link]make her stop (N)[as]n[end link]?";
		if the player consents:
			say "[micaelaintro_01]";
			now HP of Micaela is 2;
		else:
			say "[micaelaintro_pass]";
			now HP of Micaela is 1;
	now Bunny House is known;
	now Easter Eggs is resolved;

to say micaelaintro_01:
	setmonster "Easter Bunny";
	choose row monster from the table of random critters;
	say "     Deciding to just go with it, you brace yourself against a nearby tree and grind back against the humping bunny. 'Oh, you're so friendly,' she giggles happily. She pushes aside any obstructive clothing or gear you may have and presses her drooling glans against your [if cunts of player > 0]juicy pussy[else]tight pucker[end if]. Despite her obvious eagerness, she shows some consideration for her partner and thrusts into you slowly at first. You both moan in lustful pleasure at the penetration, the bunny's shapely cock slipping in like it belongs in you.";
	say "     'Mmm... it's good to take a turn on top for a change. You're such a sweetie for letting me,' she adds, kissing your cheek even as she starts humping harder. This sets her plump, overfilled balls slapping against your [if cunts of player > 0]thighs[else]butt[end if]. Her nine-inch cock throbs inside you as it [if cunts of player > 0]slides across your slick vaginal walls[else]pushes in and out of your bowels, grinding against your prostate[end if].";
	WaitLineBreak;
	say "     As she settles into a good, fast rhythm, her gloved hands run over your [bodydesc of player] body, stroking and caressing you even as she fucks your brains out. She [if breasts of player > 0]teases your nipples, [end if][if cocks of player > 0]fondles your cock[smn] [end if][if cocks of player > 0 and cockname of player is not listed in infections of InternalList]and balls playfully, [else]playfully, [end if][if cunts of player > 2]fingers your other pussies, [else if cunts of player is 2]fingers your other pussy, [else if cunts of player is 1]rubs across your spread pussy lips, [end if]caresses your sides and (most frequently) rubs your [if gestation of child > 0]pregnant [end if]belly while moaning in pleasure. It's at one of these times that she closes her pretty eyes and pushes fully into you, moaning happily as she cums hard. Bursts of gooey bunny seed shoot into your [if cunts of player > 0]pussy and flow into your womb[else]ass and flow into your bowels[end if] as her over-productive balls make her cum like a horse. When she's finally done and pulled out, your [if cunts of player > 0]womb feels[else]bowels feel[end if] wonderfully warm and full with her semen.[ovichance]";
	say "     She cuddles you close and gives you another peck on the cheek. 'That was lots of fun, sweetie. We should do it again sometime. My name's Micaela and I live in the pastel blue house not far from here,' she says, pointing down a path. She's soon taking that path, skipping humming and skipping merrily while swinging her basket of eggs as she goes.";
	infect "Easter Bunny";
	increase carried of Easter egg by 1;

to say micaelaintro_02:
	say "     Rather than let the unknown bunny screw you, you pull away and turn around. As she stumbles forward, you grab her and press her up against a nearby tree. You press your stiffening member against her butt, drawing a giggle from her. 'Oh no, I guess it's more eggs for me,' she moans over-dramatically. She giggles again and flips up the back of her dress, showing off her cute bunny-butt and enlarged pussy along with her plump ballsack and stiff nine-incher. The sight of the bunny herm on display arouses you to full hardness and you mount her with a lustful groan.";
	say "     The bunny girl's wide cunt squeezes and milks around your [cock size desc of player] cock, adjusting with practised ease to fit you wonderfully. Once you settle into a hard, steady rhythm for fucking her, her inner walls almost suck at your penis in her body's effort to get your hot seed into her. Her fluffy tail twitches with every thrust you make into her warm, slick cunny.";
	WaitLineBreak;
	say "     'Oh, you're really good at this, sweetie. Mmm... come on... gimme another batch of eggs,' she moans, pushing back harder. She rubs a gloved hand over her tummy and closes her mismatched eyes, perhaps imagining the colourful eggs you'll give her. That kinky thought has you moan and bury yourself even harder and deeper into her[if cock length of player > 30]. Your mighty rod bulges her belly outwards dramatically and she rubs across the phallic stretch in her tummy[else if cock length of player > 20]. Your over-sized rod bulges her belly outwards and she rubs across the throbbing bump in her tummy[end if]. Your [cock of player] penis pulses inside her and you groan in release, pumping shot after shot of your hot semen into her needy belly. You drain your balls, emptying your [cum load size of player] load into her womb. And as you're doing so, the lusty bunny cums as well, spraying large, gooey blasts as her over-productive balls make her cum like a racehorse.";
	say "     After you pull out, she cuddles you close and gives you peck on the cheek. 'That was lots of fun, sweetie. We should do it again sometime. My name's Micaela and I live in the pastel blue house not far from here,' she says, pointing down a path. She's soon taking that path, skipping humming and skipping merrily while swinging her basket of eggs as she goes, leaking a trail of semen as she does.";
	infect "Easter Bunny";
	increase carried of Easter egg by 1;

to say micaelaintro_pass:
	say "     Rather than let the unknown bunny screw you, you pull away and turn around. As she stumbles forward, you drop the egg and grab her arm to keep her from falling over. She giggles a little and smiles at your courtesy. 'Thanks for the catch. Not in the mood?  That's alright. If you change your mind and find yourself in the mood for some Easter cheer, you always come see me for some fun. My name's Micaela and I live in the pastel blue house not far from here,' she says, pointing down a path. She's soon taking that path, humming as she skips merrily while swinging her basket of eggs as she goes, though she does pause partway to flip up the back of her dress with a giggle. This shows off her cute bunny-butt and enlarged pussy along with her plump ballsack and stiff nine-incher. The sight of the bunny herm is a tantalizing one, tempting you into indeed returning.";


Section 2 - Bunny House

Bunny House is a room. It is fasttravel. It is private. It is sleepsafe.
The description of Bunny House is "[bunnyhousedesc]".

the scent of Bunny House is "Micaela's scents of arousal, rabbits and candy hang in the air here.";

to say bunnyhousedesc:
     say "     The pastel blue house is more intact than the others in the area. The damage to this two-storey home is largely confined to the garage, driveway and yard. Inside, the living room is fairly clear of dirt and junk, though the carpet and furniture all show signs of recent wet stains. Micaela, the Easter bunny herm, is seated in one of those chairs, rubbing her [if XP of Micaela > 8]egg-laded [else if XP of Micaela > 0]growing [end if]tummy with a happy smile on her cute face.";


Section 3 - Micaela

Micaela is a person. Micaela is in Bunny House.
The description of Micaela is "[micaeladesc]".
The conversation of Micaela is { "Eggies!" }.
the scent of the Micaela is "The colourful bunny smells of arousal, rabbits and candy.".
micaelastory1 is a truth state that varies. micaelastory1 is usually false.
micaela_bf is a number that varies.
the icon of Micaela is Figure of Micaela_icon.


to say micaeladesc:
	if debugactive is 1:
		say "DEBUG (Micaela) -> HP: [HP of Micaela], XP: [XP of Micaela] <- DEBUG[line break]";
	say "     Micaela is a herm Easter bunny with pink fur and blue hair. Her rabbit-like head has a short muzzle and large, floppy ears. Her eyes are heterochromatic, meaning one's blue and the other is brown. Her body's like that of a Playboy model - except the ears and bunny tail are real. She's wearing a frilly red and white outfit that's quite skimpy as well. It's low cut over her busty G-cup breasts and comes with a short skirt that barely hides her cute tush, perky cock and juicy cunny. Adding to this are arm-length gloves and thigh-high stockings, both made of silky red fabric, and polished white shoes with red trim. She's always got a ribbon-wrapped basket of coloured eggs on her as well to complete her sexy Easter bunny look.";
	if lust of Micaela >= 9:
		say "     Her once slender belly has become rounded with the growing eggs inside her tummy. The joy of this is quite apparent on her happy face as she rubs her swollen belly. With this comes increased arousal as well, the bunny's thighs damp with her juices and her cock twitching and throbbing as she caresses the bulge.";
	if XP of Micaela > 0:
		say "     Micaela's bunny brood is running around the house, playing games (both innocent and naughty) and otherwise amusing themselves. These often involve hunting, hiding or eating Easter eggs. They sometimes go out into the surrounding forest to play as well. Because of this, it is difficult to judge their numbers, but you'd guess there's something around [XP of Micaela] of them these days. They're all cute and colourful bunnies in pretty and girly outfits, just like their mother[if XP of Micaela > 10]. Even the rare boys of the brood are in skirts or dresses[end if].";


Section 4 - Dialog

Instead of conversing the Micaela:
	if debugactive is 1:
		say "DEBUG (Micaela) -> HP: [HP of Micaela], XP: [XP of Micaela] <- DEBUG[line break]";
	if HP of Micaela is 0:
		say "***Unknown error. Adjusting.";
		now HP of Micaela is 1;
		now Easter Eggs is resolved;
		now Bunny House is known;
	if HP of Micaela is 1 or HP of Micaela is 2:
		say "     Micaela smiles as you come over. 'Hey there. I'm glad you decided to stop by. [if HP of Micaela is 1]Did you change your mind about having some fun[else]Are you in the mood for more fun[end if]?' she asks, spreading her legs and showing off her dual-gendered loins.";
		say "     'I've run into some other nasty folks out there in the woods, especially those mean wolves. That's why I've been hiding stashes of my eggs in the forest. That way there's always some around to help me get back to my cute bunny self when one of those meanies catch me and fuck me,' she says, lightly running her fingers across her damp folds. 'I love the sex, but if I stop being my pretty bunny self, who'll spread Easter cheer around here?";
		say "     'But you seem much nicer than the others out there. How about you come snuggle up[if HP of Micaela is 2] for some more fun[end if]?'";
		now HP of Micaela is 3;
	else if XP of Micaela >= 3 and a random chance of 1 in 3 succeeds:
		say "     [one of]'There'll be loads more Easter eggs stashed around the woods now that I've got my kids to help make them and hide them.'[or]Micaela shares a rather hot cuddle and kiss with one of her bunny brood.[or]A gaggle of giggling bunny kids run through the room, interrupting you.[or]Micaela smiles as she watches a pair of her kits play [']Hide the Egg['].[at random]";
	else:
		say "     '[one of]It feels so nice being filled with eggs. Almost as good as when they finally come out.'[or]Feel free to come visit as often as you like.'[or]Do you like my outfit?' the bunny herm asks. She does a little spin to show it off, ending with her bending over to flash you with a playful giggle.[or]I love the taste of sweets, sugar and chocolate. That's what helps make my eggs so yummy,' she says, giving one from her basket a long, slow lick before popping it right into her mouth. 'Mmmm...'[or]I've got a bunch of bunny egg stashes around the forest to help keep me my pretty bunny self.'[or]Those mean wolves must really like hunting rabbits, I guess. Not that I mind too much. They're a good fuck, at least,' she says with a giggle.[or]Oh... uh... what were we talking about?' the bunny girl asks, too distracted by [micaela_dist].[at random]";
[	else if HP of Micaela > 3 and micaelastory1 is false and a random chance of 2 in 5 succeeds:
		now micaelastory1 is true;
		say "***";]

to say micaela_dist:
	if XP of Micaela >= 3 and a random chance of 1 in 3 succeeds:
		say "her playing bunny kids";
	else:
		say "[one of]stroking her cock through her skirt[or]teasing her clit[or]fingering her juicy pussy under her skirt[or]playing with her nipples and breasts[or]gently pressing a colourful egg partway in and out of her cunt[at random]";


Section 5 - Sex Mechanics

the fuckscene of Micaela is "[sexwithMicaela]".

to say sexwithMicaela:
	setmonster "Easter Bunny";
	choose row monster from the table of random critters;
	if HP of Micaela < 3:
		say "     [if HP of Micaela < 2]She certainly seemed eager earlier, but[else]Despite having sex earlier,[end if] you should probably talk to her first.";
	else if lastfuck of Micaela - turns < 4:
		say "     'As fun as it's been, sweetie, even I need a break from bunny humping from time to time,' she says with a happy giggle.";
	else:
		say "[michaela_sexmenu]";


to say michaela_sexmenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Micaela";
		now sortorder entry is 1;
		now description entry is "offer the bunny a ride in your lap";
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get fucked";
		now sortorder entry is 2;
		now description entry is "let the bunny bang you";
	if HP of Micaela >= 6:
		if ( facename of player is not "Easter Bunny" and bodyname of player is not "Easter Bunny" and skinname of player is not "Easter Bunny" and tailname of player is not "Easter Bunny" and cockname of player is not "Easter Bunny" ) or ( bodyname of player is "Easter Bunny" and player is pure ) and ( cocks of player > 0 or cunts of player > 0 ):
			choose a blank row in table of fucking options;
			now title entry is "Bunny-fucking session";
			now sortorder entry is 4;
			now description entry is "ask Micaela to fuck you like a bunny until she's satisfied";
	choose a blank row in table of fucking options;
	now title entry is "Anal lap ride";
	now sortorder entry is 3;
	now description entry is "take it up the ass while taking a ride in her lap";
	choose a blank row in table of fucking options;
	now title entry is "Suck her cock";
	now sortorder entry is 5;
	now description entry is "get between her legs and suck her cock for a sweet treat";
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
[				if HP of Micaela >= 6 lastfuck of Micaela - turns >= 40 and lastfuck of Micaela is not 255:
					say "***";]
				now lastfuck of Micaela is turns;
				if nam is "Fuck Micaela":
					say "[sexwithMicaela_01]";
				else if nam is "Get fucked":
					say "[sexwithMicaela_02]";
				else if nam is "Anal lap ride":
					say "[sexwithMicaela_03]";
				else if nam is "Suck her cock":
					say "[sexwithMicaela_04]";
				else if nam is "Bunny-fucking session":
					say "[sexwithMicaela_bf]";
				if HP of Micaela < 6, increase HP of Micaela by 1;


Section 6 - Sex Scenes

to say sexwithMicaela_01:
	say "     At the suggestion of a lap ride, the rabbit hops up and over to you right away. She puts her arms around you, hugging you as she gives you a big kiss. Taking a seat in a relatively clean piece of furniture, you pull your cock out. The Easter bunny girl bounds into your lap with a happy giggle, making a show of flipping up the back of her dress to show off her wide, dripping pussy, her plump balls and stiff shaft before taking her seat. Your [cock size desc of player] manhood slips into those wet and welcoming folds of hers with [if cock length of player > 15]relative ease despite your considerable size[else]ease[end if]. She gives a contented sigh and leans back against you. Putting your arms around her, you [if lust of Micaela > 8]caress her egg-filled tummy before cupping her plump breasts and raising your hips up[else]cup her plump breasts and raise your hips up[end if]. She giggles happily and starts bouncing in your lap, riding your thrusting rod.";
	say "     'Oh baby, that's so nice. Bunny likes that. Bunny likes that a lot,' she moans[if lust of Micaela > 8] as the eggs in her womb shift about sensually[end if]. Her inner walls squeeze and milk at your hard rod. You pinch and tease her nipples, enjoying the pleasured moans she releases. And being a bunny, she bounces up and down in your lap with tireless ease, giving your [cock of player] cock a thoroughly satisfying fuck. She's energetic, responsive and passionate in her enthusiasm, especially in how that juicy cunt of hers squeezes around you. Partway through the ride, she takes hold of her throbbing bunny prick and starts jerking herself off in time to her bounces.";
	WaitLineBreak;
	say "     When your climax comes, it is a strong one, pumping shot after shot into Micaela until her ample cunt is creamy [if cock width of player > 15]and full [end if]with your [cum load size of player] load. She cries out and bounces harder and faster in your lap as she climaxes hard in response. Gooey streaks of bunny seed shoot across the floor and onto her pretty outfit as she cums long and hard. Her vaginal walls go into overdrive as well, clamping around your meat and sucking on it to draw out every last drop of your seed she can get.";
	say "     By the time her messy, juicy orgasm is over, she's left sagged back against you and panting heavily. 'Damn, honeybunny, that was goooooood. You sure know how to [if lust of Micaela > 8]paint[else]scramble[end if] this bunny's eggs.' She tilts her head around and gives you another kiss. You cuddle and kiss while recovering from the wild romp you've shared before you finally release her to get off. By that point, you don't notice that the sticky femme cum that'd soaked your lap has disappeared.";
	infect "Easter Bunny";
	if lust of Micaela is 0 and a random chance of 3 in 5 succeeds, now lust of Micaela is 1; [preggers]

to say sexwithMicaela_02:
	setmonster "Easter Bunny";
	choose row monster from the table of random critters;
	say "     Micaela giggles happily and snuggles up to you, running her gloved paws over your [bodytype of player] body. She pushes you back onto the padded carpet and pushes your legs apart. You land in a sticky spot, but a passionate kiss from her has you forget about that minor detail. You can also feel the warm press of her large breasts [if lust of Micaela > 8]and her egg-filled belly [end if]upon you. In short order, her throbbing cock is pressed to your wet folds. She smiles as you moan for her to take you, which she does with a merry giggle.";
	say "     'Ah yeah! Let's [if lust of Micaela > 8]give you some eggs, too[else]make some eggs[end if],' she says cheerfully as she sheathes her hard shaft inside your wet cunt. And soon she's humping away like the horny bunny she is, powerful thighs driving her plump rod into your needy hole. Your [cunt size desc of player] cunt squeezes and quivers around that rocking rabbit rod. You moan and groan in delight beneath the eager bunny pounding away at you.";
	WaitLineBreak;
	say "     As her excitement heads towards its peak, she gives you another lustful kiss. Upon breaking it, she arches her head up and moans loudly, letting her long ears flop with every pounding push. It only takes a few of these final thrusts to put her over the top and into a powerful orgasm. You can feel the strength of every gooey spurt shooting into you, to the point that it is enough to drive you to orgasm in response. You writhe in orgasmic bliss beneath your lovely bunny lover as she floods your womb with her sweet egg batter.[ovichance]";
	say "     After your orgasms are over, you and Micaela share another lustful kiss. And when the kiss is broken, her lips are quickly replaced with her sticky, juicy rod. You lick and suck it clean of the remaining drops of her sugary load. Once finished, you flop back on the messy carpet to rub your [if scalevalue of player > 3]full[else if scalevalue of player is 3]rounded[else]bulging[end if] belly and enjoy the warm feeling inside you even as the excess leaks out between your thighs.";
	infect "Easter Bunny";

to say sexwithMicaela_03:
	setmonster "Easter Bunny";
	choose row monster from the table of random critters;
	say "     Micaela grins at the prospect of doing you in the ass. She flips up the front of her skirt and openly strokes her stiff erection eagerly. 'Come on, honeybunny, let's give you a warm, creamy filling.' She spreads the precum from this exciting warm-up across her length as lube while you get yourself ready for her. Thus prepared, she motions for you to get into her lap. You take your place atop the randy Easter bunny, letting her get her cock lined up with your pucker before you sit down fully. Her throbbing rod pops smoothly into you, causing you both to release satisfied moans when this happens.";
	say "     While she pauses a moment to let you adjust to her above-average size, she puts her gloved arms around you and cuddles you[if lust of Micaela > 8]. You can feel her rounded belly and the firm eggs resting inside it pressed against your back[end if]. Her paws wander over your body, caressing and teasing you. And with a [if breasts of player > 0 and a random chance of 1 in 3 succeeds]playful pinch of a nipple[else if cocks of player > 0 and a random chance of 2 in 3 succeeds]teasing stroke of your cock[else if cunts of player > 0 and a random chance of 2 in 3 succeeds]rub across your clit[else]nibble on your neck[end if], she pulls back and thrusts into you again. Only the initial few are slow, after that you're riding hard and fast in the bunny's lap as she bounces you up and down on her nine-inch pole.";
	WaitLineBreak;
	say "     Your asshole squeezes around the pistoning rod, your [if cocks of player > 0]prostate throbbing from her meaty rod pushing alongside it[else]sensitive inner walls enjoying the sensation of her meaty rod moving inside you[end if]. The playful bunny's penis drools a steady stream of precum, keeping your back passage slick while she reams you hard. And you can do little more than ride and take it, the sensations overwhelming you with growing delight[if cocks of player > 0], especially once her gloved hand reaches around to your cock and starts stroking it while you bounce up and down[else if cunts of player > 0], especially once her gloved hand reaches around to your pussy and starts fingering it while you bounce up and down[end if].";
	WaitLineBreak;
	say "     Leaning back a little, you pant and moan as the vigorous bunny bounces you in her lap[if breast size of player > 1]. Your hands find their way to your breasts, cupping them and playing with your nipples as you're bunny-fucked[else if breasts of player > 0]. Your hands find their way to your nipples, pinching and rubbing them as you're bunny-fucked[else]. Your hands roam across your [bodydesc of player] body, caressing yourself as you're bunny-fucked[end if]. You have such a good, long ride that you're left nearly senseless by the time you feel that hot rush of the bunny's hot seed shooting into your ass. The warmth of that gooey egg batter suffuses into you and you moan loudly[if cocks of player > 0 or cunts of player > 0], climaxing messily[end if].[movichance]";
	say "     Micaela sags back into her chair with you sprawled in her lap, rod still hard and pulsing inside you as its final spurts leave you [if scalevalue of player > 3]filled to the brim[else if scalevalue of player is 3]tummy-rounded[else]with a bulging belly[end if] and then some. She pants to recover her breath after the energetic pounding she's given you. Her hands find their way to yours and she embraces you, keeping you there with a hug. You're left in a blissful daze for quite some time while the bunny's tainted semen seeps into you and only released from her arms several minutes later after quite a few passionate kisses.";
	infect "Easter Bunny";

to say sexwithMicaela_04:
	say "     Tantalized by the sight of the sexy[if lust of Micaela > 8], egg-filled[end if] bunny in her chair, you approach her. Placing a hand [if lust of Micaela > 8]on her tummy and then sliding it down into her lap[else]in her lap[end if], you rub her cock through the soft fabric of her skirt. She gives a happy moan and smiles, the grin getting wider as you drop to your knees and poke your head under her skirt.";
	say "     Presented with her nine-inch penis right in front of you, you give it a long, slow lick. Another lick follows, and then another, and more. Aiming the sweet cock to your open mouth, you take it past your lips and into your warm, wet mouth. You lick and suck on the bunny's rod, her sugary precum delicious. Cupping her ballsack, you caress the hefty, egg-shaped orbs producing that sweet treat.";
	WaitLineBreak;
	say "     Micaela moans happily at the attention to her throbbing cock and caresses the back of your head sticking out from beyond her short skirt. 'Oh, you're such a sweety, honeybunny. Keep it up. I can feel it building up to a big one.' And given how those big balls of her pulse heavily in your hand, you get that same feeling as well. So you work the bunny's penis in your mouth all the more eagerly, drawing louder moans and more precum from her.";
	say "     A moment before her orgasm, you feel the powerful throb of her balls as a warning. This brief warning is hardly enough to ready yourself for the powerful torrent of bunny semen that blasts forth. It floods your mouth and sinuses even as rushes down your throat to warm your belly. Far thicker and sweeter than her pre, you do your best to swallow it all down as the little bunny girl cums like a racehorse. Eventually, you do pull back, getting the last few spurts sprayed across your face. Her prolific orgasm has [if scalevalue of player > 3]filled your stomach with her gooey seed[else if scalevalue of player is 3]filled you to the point of rounding your tummy[else]bloated your belly with rabbit seed[end if]. All you can do is flop back onto the sticky carpet and gurgle wetly, rubbing your cum-stuffed belly with a goofy smile on your face.";
	infect "Easter Bunny";

to say sexwithMicaela_bf:
	setmonster "Easter Bunny";
	choose row monster from the table of random critters;
	let ebcheck be false;
	if bodyname of player is "Easter Bunny", now ebcheck is true;
	if micaela_bf is even:
		say "     You find yourself repeatedly looking over at the colourful bunny. Her lovely body, her plump breasts, that bulged crotch. It is especially the latter that draws your focus, to the point that you feel an aching need to have her inside you. Going over to her, you ask the lustful bunny to fuck. Not for a fuck, but as many as she can give, doing you over and over again.";
		say "     Micaela grins happily as this offer and gets up from her chair. Flipping up the front of her skirt, she treats you to the sight of her long, smooth shaft and extra-plump balls. 'Come on then, honeybunny. Put those sweet lips around me and we'll start with a quick warm-up.' Needing no more encouragement, you stuff your mouth full of sweet bunny-cock. She takes your head in her hands and gently thrusts into your mouth. You play your tongue over it, savouring the sweetness of her precum. It takes a few minutes of sucking her off before getting her to blow. She feeds you several sticky mouthfuls of her semen. While less than her typical load given the quick finale, it is still quite plentiful.";
		WaitLineBreak;
		say "     'Alright then. That's got the pipes flowing. So now let me show you how a bunny fucks!' she giggles, pulling you back to her chair and into her lap. Her cock, still hard despite just cumming, plunges right into your [if cunts of player > 0]juicy cunt[else]tight anus. The mix of saliva and semen acts as lube, easing her passage into you[end if]. You are bounced in her lap, slick cock slurping in and out of your hot, squeezing hole.";
		say "     While fucking you, Micaela fondles and gropes you lecherously while nibbling along your neck. Her tongue licks and her buck teeth nibble along your neck and shoulder. You are bounced vigorously in the energetic herm's lap, that nine-inch cock of hers sliding into you over and over again. You pant and moan as you're screwed senseless by the happy bunny. As she climaxes, pumping a hot rush of virile seed into your [if cunts of player > 0]womb[else]bowels[end if], she [if cocks of player > 0]pumps your [cock of player] shaft so you orgasm as well[else]rubs your sensitive clit and folds until you orgasm as well[end if].";
		WaitLineBreak;
		say "     A little dazed after the pounding you've received, you can only moan and squirm weakly as the herm starts up again, pushing you onto the floor on all fours with nary a break long enough to catch your breath. She nips at your ears and fucks you with short, rapid thrusts - just like the horny bunny she is. Your [bodyname of player] body ends up responding soon enough, arousal spreading through you again, and you're hiking up your ass and pushing back into her thrusts.";
		say "     From this point, things descend further into a haze of dreamy lust. You vaguely recall various positions, supplying oral[if cunts of player > 0 and anallevel is 1] and vaginal pleasure[else if cunts of player > 0], vaginal and anal pleasure[else] and anal pleasure[end if] for the lustful bunny's seemingly insatiable cock. You might have tried to complain about the rug burn you were getting at one point, but all you could manage by that point was an incoherent moan. The bliss of being filled over and over again by the bunny is much clearer, though you lose the ability to count how many orgasms she's had long before she's done. It keeps going beyond the point you pass out, the bunny still humping you as you occasionally are roused back to semi-consciousness by an orgasm or being moved again.";
	else:
		say "     Feeling you've both sufficiently recovered and recharged from the last session of wild bunny sex, you ask Micaela for another. She grins happily and reaches under her skirt, starting to stroke herself at the prospect of another long romp with you. 'Mmm... it's so nice to be able to really cut loose. I love being able to show you what being a bunny's all about.  Come on, honeybunny, let's get this party started,' she adds, shifting aside that skirt to reveal her throbbing and ready manhood.";
		say "     Micaela starts by pulling you into her lap. The herm bunny's cock plunges into you as you take your seat and she's bucking into you immediately and vigorously. You moan at the sudden and strong start[if ebcheck is true], but your lapine body loves it all the same[end if]. The feel of that sexy cock of hers throbbing and pulsing inside you is wonderful, your [if cunts of player > 0]cunt[else]rectum[end if] responding by squeezing around it with every thrust.";
		WaitLineBreak;
		say "     Her hands aren't idle through this either. They run over your [bodydesc of player] body[if breasts of player > 0 and breast size of player > 0], groping your tits[else] and stroke over your flat chest[end if]. One drifts down between your legs to [if cocks of player > 0]pump your cock[else]finger your cock-stuffed petals[end if], masturbating you even as you're being fucked by her. Moaning all the louder, you tilt your head back and share a lustful kiss with her.";
		say "     At this wild pace, orgasm is achieved rather quickly. You can feel that delightfully warm rush of her sticky seed into your [if cunts of player > 0]cunny[else]bowels[end if]. You cry out and cum as well while Micaela's bunny incisors nibble firmly on your shoulder. You grind down all the harder into her lap as [if cocks of player > 0]you spray streams of semen across the carpet before you[else]your femmecum soaks both your crotches as your cunt milks as that spurting rod inside you[end if].";
		WaitLineBreak;
		say "     You pant and lean back, enjoying the suffusing warmth filling you, knowing it's the bunny's virile spunk. Not that she gives you long to rest. It's only a few breaths before she starts up again. Never having taken out her cock, it stiffens up again and goes right back to pounding you. Your oversensitive [if cunts of player > 0]vagina[else]hole[end if] aches a little at being used and abused again so soon, but it's an increasingly good kind of ache. You quickly become [if cocks of player > 0]hard[else]aroused[end if] again and start wiggling [if ebcheck is true]that bunny butt of yours into her lap[else]upon her shaft[end if], further exciting the randy rabbit.";
		say "     With one hand playing with your crotch and the other having two digits in your mouth for you to suck on, she pants about how sexy you are and how [if ebcheck is false and player is impreg_able]good you'll look as a pretty Easter bunny full of eggs[else if player is impreg_able]sexy you'll look full of eggs[else if ebcheck is false]good you'll look as a pretty Easter bunny[else]you should stay with her so you can fuck like this every day[end if]. Your response to this is just to moan and suck a little harder on those fingers in your mouth, working them like a cock to suck. In your current state of mind-numbing lust, that sounds simply divine and imagining it makes you all the hornier.";
		WaitLineBreak;
		say "     And it clearly has the same effect on your lover as well, as she cums hard into you after just a few more thrusts. A fresh batch of bunny semen blasts into you, [if cunts of player > 0]shooting past your cervix and into your womb in delightfully satisfying pulses[else]splattering against your prostate in exquisite pulses you can feel[end if]. It mixes with the still-warm semen already in there, adding to the sticky mess inside your well-fucked hole.";
		say "     A little dazed after the pounding you've received, you can only moan softly as the herm pulls you off her lap and down onto the floor[if cunts of player is 0]. After taking a moment to wipe it down on a towel, she[else]. She[end if] presses her already stiffening manhood against your face for a few thrusts before pushing it into your [if ebcheck is true]small bunny muzzle[else]mouth[end if] for you to suck. Your tongue and lips respond as if by instinct, sucking the sweet-tasting cock in your mouth on automatic. Your sex-addled brain can think of little beyond the bunny cock you're blowing and can barely think even that much.";
		WaitLineBreak;
		say "     From this point, things descend further into a haze of dreamy lust. You vaguely recall various positions, supplying oral[if cunts of player > 0 and anallevel is 1] and vaginal pleasure[else if cunts of player > 0], vaginal and anal pleasure[else] and anal pleasure[end if] for the lustful bunny's seemingly insatiable cock. You distinctly remember being pushed over Micaela's plush chair, which must have gotten overturned at some earlier point, but you're able to maintain few other details of the wild bunny romp. You're blissfully filled with load after load of bunny cum from [if ebcheck is true]the other bunny's lustful mating[else]the bunny's long fuck session with you[end if]. It keeps going beyond the point you pass out, with you occasionally rousing back to semi-consciousness by an orgasm or while being moved to another new position.";
	if player is impreg_able:
		if ovipreglevel > 1, now ovipregnant is true;
		impregnate with "Easter Bunny";
		if cunts of player > 0:
			now pregtype is 1;
		else:
			now pregtype is 2;
		say "     There is one other distinct pleasure that you become aware of during the romp, that of the pleasantly warm feeling growing in your belly as numerous loads of bunny seed is pumped into you. With so much virile semen being pumped into you over the course of a few hours, your fecund body is virtually guaranteed to respond. A tingly happiness begins to grow in your lower belly as the bunny's seed takes root.";
	WaitLineBreak;
	say "     Eventually, you wake up, sore, sticky and leaking excess semen from your overused holes. Micaela's flopped out beside you, still zonked out after the wild bunny-fucking. You try to rouse her with a few nudges and then light taps on her fuzzy cheeks, but she does little more than moan softly. A quick check under her skirt shows that even her usually half-hard or more cock is completely flaccid";
	if ebcheck is false:
		say ". And a quick check of yourself has you realize that you've become a cute Easter bunny not unlike your overzealous lover. And after what you've just experienced, you don't feel at all upset about this change.";
		now bodyname of player is "Easter Bunny";
		now facename of player is "Easter Bunny";
		now skinname of player is "Easter Bunny";
		now tailname of player is "Easter Bunny";
		now cockname of player is "Easter Bunny";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		now libido of player is libido of player / 4;
	else:
		say ". You can't help but smile and giggle happily, pleased with yourself to have satisfied your fellow Easter bunny so thoroughly.";
		infect "Easter Bunny";
		decrease humanity of player by 4;
		now libido of player is libido of player / 3;
	decrease humanity of player by 16;
	if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 4;
	if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 4;
	increase micaela_bf by 1;
	now lastfuck of Micaela is turns - 8;
	follow the turnpass rule;


Section 7 - Easter Eggs

Table of Game Objects (continued)
name	desc	weight	object
"Easter egg"	"A candy-coated chocolate egg the size of an ordinary egg."	1	Easter egg

Easter egg is a grab object. It is a part of the player. Easter egg is infectious. Easter egg is temporary. The strain of Easter egg is "Easter Bunny".

The usedesc of Easter egg is "[eatEasteregg]";

to say eatEasteregg:
	say "     With the smell of candy and chocolate coming from the Easter egg, you find yourself hungry for it. Popping the treat into your mouth, you let the candy shell dissolve sweetly on your tongue before you bite into its chocolate center. Mmm... delicious. And exciting. You feel a little randier at the thought of just where these eggs come from";
	if facename of player is "Easter Bunny" or bodyname of player is "Easter Bunny":
		say "and have the urge to make some more";
		decrease humanity of player by 3;
	say ".";
	increase libido of player by 3;
	PlayerEat 6;

the scent of Easter egg is "The candy and chocolate egg smells appealingly sweet.".


Section 8 - Everyturn Rule (pregnancy)

an everyturn rule:
	if lust of Micaela > 0:
		increase lust of Micaela by 1;
		if lust of Micaela > 16 and skipturnblocker is 0:
			if Micaela is visible:
				let x be a random number between 3 and 5;
				if XP of Micaela is 0:
					now x is 4;
				say "     Micaela releases a sudden and orgasmic moan as her egg-plump belly gives a clinking jiggle. 'Oooo! Eggy time!' she giggles. She sticks a nearby cushion on the floor in front of her in preparation. Sitting on the edge of her seat and leaning back, she raises and locks her legs up with her arms. This puts her rock-hard cock, plump balls, sopping cunt and resultingly slickened pucker on display for you.";
				say "     The bunny girl pants and moans as her labia is gradually distended open by a colourful bulge pushing its way out. The painted slips back a few times before a big, hard push forces it to pop free. This one is much larger than the typical eggs of hers. The soft movement coming from within confirms it to be a live egg.";
				say "     As you watch this odd, amazing and erotic sight, [if x is 3]another egg and then another[else if x is 4]another egg and then another and another still[else]another four eggs[end if] are pushed out in a similar manner, though with increasing ease as the laying progresses. As it is going on, Micaela starts to masturbate herself, brushing her fingertips along her shaft and rubbing her clit. As the final is pushed out and lands besides its siblings, she cums hard, splattering her colourful outfit with sweet-smelling semen.";
				say "     It's not long before the bunny eggs crack open and [if XP of Micaela > 0]more colourful lapines are hatched[else]the colourful lapines inside hatch[end if] from the candy shells. They bounce around happily, snuggle up to and kiss their mom in a rather un-family-like way before running off to play with their siblings. You're left aroused by the sight you've just witnessed. And despite having just cum and the effort of laying her large eggs, the bunny mom seems up for some fun as well.";
				if lastfuck of Micaela - turns < 4, now lastfuck of Micaela is turns + 4;
				increase XP of Micaela by x;
			else:
				say "     You find yourself thinking about Micaela, the sexy Easter Bunny herm. You might want to check in with her.";
				let x be a random number between 3 and 5;
				if XP of Micaela is 0:
					now x is 4;
				increase XP of Micaela by x;
			now lust of Micaela is 0;


Section 9 - Endings

[ To appear later ]

Section X - Notes

[        HP of Micaela        ]
[ 0 = not met                 ]
[ 1 = no sex                  ]
[ 2 = event sex               ]
[ 3 = intro                   ]
[ 4 = had sex at house        ]
[ 5 = had sex again           ]
[ 6 = and again - new scenes  ]

[    level of Micaela     ]
[      little eggies       ]
[ 0 = not prompted         ]
[ 1 = prompted - no        ]
[ 2 = again - no           ]
[ 3 = first time - yes     ]
[ 4 = again - yes          ]
[ 100 = never              ]

[     lust of Micaela      ]
[ 0 = not preggers         ]
[ 1-8 = early pregnancy    ]
[ 9-16 = late pregnancy    ]
[ 17+ = oviposition time   ]

[       XP of Micaela       ]
[ # of offspring            ]

Micaela ends here.
