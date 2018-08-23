Version 2 of Hermaphrodite Latex Vixen by Guest Writers begins here.
[Version 2.0 - Updated player victory to sex table options w/option to fuck her pussy - Stripes]
[- Originally Authored By: TentaBear -]

"Adds a Hermaphrodite Latex Vixen to Flexible Survival's Wandering Monsters table, With Impreg chance"

Section 1 - Monster Responses

hermlvmeet is a number that varies.

to say hermaphrodite latex vixen desc:
	setmongender 5; [creature is herm]
	if hermlvmeet is 0: [first time meeting Herm LV]
		say "     She stands at least six feet tall, her glistening rubbery skin a bright contrast to the muted colors of this twisted city. She has the shading of a fox, white belly and groin, darkened paws up to the elbows and knees, but the color was far more vivid than anything in nature. The glossy skin that covers her back is a near luminous cherry red, her paws and the tip of her tail a jet black that makes them seem to disappear in the shadows. The white that covers her from the front of her muzzle to her puckered sphincter seems impossibly clean and then you notice it appears slick, almost as if she had been recently oiled. But her lustrous skin is a mere footnote compared to the remarkable equipment hanging off the front of her.";
		say "     Four massive breasts hang from her chest, and jiggle at the slightest motion. She has a bright pink pointed cock, at least eighteen inches long, the base is covered in a glossy black sheath, inside of which you can see an already grapefruit-sized knot forming. One of her jet black paws slithers down her stomach, past her growing shaft, pushing aside her black, apple-sized balls and revealing her glowing pink lips. She takes three fingers, parting her moist lips with the outer two and starting to probe her drooling sex with the middle.";
		say "     'Mmmmm...' she moans as she pulls her slick finger from her dripping nethers and places it in her mouth. She withdraws her finger, smiles and says, 'So you're the one my babies have been telling me about.' She turns her head to meet your gaze. You find yourself entranced by her deep, emerald green eyes. 'Well then, let's see if you can satisfy.'";
		now hermlvmeet is 1;
	else:
		say "     All four of her massive impossibly bouncy breasts jiggle as she laughs 'Back for more are we?' She stands in front of you stroking her rock hard 18 inch pink knotted shaft. The nipples on all four of her watermelon-sized breasts already leak that delicious smelling oily lubricant.";
		say "     'Well alright...' she says, and with a jet black paw she lifts her left breast to her waiting muzzle. The vixen's tongue slides out of her brilliantly white mouth and as she licks some of the cinnamon tasting lubricant from her bright pink nipple, a shudder runs through her. '...let's play!'";

to say hermaphrodite latex vixen defeat:
	say "     Defeated, your would be attacker kneels at your feet, pointing her brilliant white and red ass towards you. She raises her bushy red tail to expose her drooling sex. 'I guess I'm at your mercy,' she chuckles. You get the feeling she will be able to take pretty much anything you can dish out";
	if player is not neuter:
		say ". Shall you take her up on her offer and celebrate your success? And if so, what did you have in mind?";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck her pussy";
			now sortorder entry is 1;
			now description entry is "screw that latex vixen";
			choose a blank row in table of fucking options;
			now title entry is "Fuck her ass";
			now sortorder entry is 2;
			now description entry is "stuff her back door";
[			choose a blank row in table of fucking options;
			now title entry is "Receive fellatio";
			now sortorder entry is 10;
			now description entry is "stuff that smug muzzle of hers with your cock"; ]
		if player is female:
			choose a blank row in table of fucking options;
			now title entry is "Get fucked";
			now sortorder entry is 6;
			now description entry is "ride that latex cock of hers";
[			choose a blank row in table of fucking options;
			now title entry is "Receive cunnilingus";
			now sortorder entry is 11;
			now description entry is "make her eat you out"; ]
[		choose a blank row in table of fucking options;
		now title entry is "Suck her cock";
		now sortorder entry is 12;
		now description entry is "suck that smooth penis of hers"; ]
[		choose a blank row in table of fucking options;
		now title entry is "69";
		now sortorder entry is 13;
		now description entry is "share in mutual oral fun"; ]
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Leave[as][0][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: Shall you [description entry].";
				say "Is this what you want?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Fuck her pussy":
						say "[hermlatexvix_01]";
					else if nam is "Fuck her ass":
						say "[hermlatexvix_02]";
					else if nam is "Get fucked":
						say "[hermlatexvix_06]";
					else if nam is "Receive fellatio":
						say "[hermlatexvix_10]";
					else if nam is "Receive cunnilingus":
						say "[hermlatexvix_11]";
					else if nam is "Suck her cock":
						say "[hermlatexvix_12]";
					else if nam is "69":
						say "[hermlatexvix_13]";
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Wanting no more to do with the latex vixen, you resist the temptation and walk away. The latex vixen is left on the ground, stroking herself while she whimpers plaintively.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	else:
		say ". Having no gender of your own, you're able to resist your darker urges and walk away. The latex vixen's left on the ground, stroking herself while she whimpers plaintively.";


to say hermlatexvix_01:
	say "     Wasting no time, you position your cock[smn] at her juicy pussy, and with one quick thrust you bury yourself fully inside her. You are quite pleased but unsurprised when the latex vixen's cunt stretches to accommodate your [cock size desc of player] [cock of player] shaft[smn]. You start to thrust in and out, delighted that she seems to be a perfect fit for your pole[smn]. You pick up speed, fucking the bright red fox as hard as you can, enjoying the feel of your balls slapping against her own apple-sized cum factories. She yips and squeaks in pleasure beneath you, moaning for you to fuck her harder no matter how hard you pound her.";
	say "     The vixen reaches back and starts to stroke her pink knotted shaft and grinds back onto your rod[smn]. 'Mmm... yes, just like that. Take me, you stud. Breed more cute foxes in me,' she yips. Overcome with lust by this point, you grip her smooth, padded ass and growl that that's exactly what you're going to do to the slut. And with the image of making this herm vixen plump and pregnant with fox kits, you moan loudly and release jets of hot sperm deep into her rubbery womb.";
	say "     After draining your balls, you slide your spent shaft[smn] free with a wet slurp. You brush your sticky cock across her ass cheeks, getting her to giggle happily. She even gives your cock a few licks to clean it up, enjoying the lingering traces of your virile seed and her juices on it. After that, you gather up your gear and leave, the latex vixen flopped out on the ground, purring softly as she rubs her warm belly with a happy smile on her muzzle.";

to say hermlatexvix_02:
	say "     Eager to fuck the horny slut, but not wanting to knock her up with more fox kits as she clearly desires, you position your cock[smn] at her puckered asshole. With one quick thrust you bury yourself fully inside her, causing her to groan loudly. As you suspected, the latex vixen's ass easily stretches to accommodate your [cock size desc of player] [cock of player] shaft[smn]. You start to thrust in and out, amazed that her ass seems to be a perfect fit for your pole[smn]. You pick up speed, fucking the bright red fox as hard as you can, enjoying the feel of your balls slapping against her own apple-sized cum factories and juicy cunt. The latex vixen starts to squirm and moan under your relentless assault.";
	say "     When the vixen reaches back and starts to stroke her pink knotted shaft, you slap her hand away roughly. Don't want her having too much fun. She lets out a little whine, but then starts bucking against you, meeting each of your thrusts with one of her own. You quickly succumb to her new attack, moaning loudly as you release jets of hot sperm deep into your cum dump's bowels.";
	say "     With a loud *POP* you unceremoniously yank your [cock of player] rod[smn] out of her gleaming ass. You get dressed and leave, the latex vixen still on the ground masturbating furiously trying to sate her endless lust.";

to say hermlatexvix_06:
	say "     You reach out and roughly grab her long knotted shaft between her gleaming legs. She yelps loudly as you twist her cock, forcing her to roll onto her back. Stepping over her you straddle the bright pink shaft, the pointed tip brushing your clit, sending shivers up your spine. Bending your knees you slowly lower yourself onto her twitching member.";
	say "     You slide up and down, faster and faster, moaning loudly and roughly rubbing your sensitive clit. The Latex Vixen's knot starts slamming against your pussy, you realize she is thrusting, trying to embed her knot in you. Lifting one leg you step on her thigh, preventing the Vixen from thrusting. You then plant your other foot on her, entirely riding the bright red fuck toy.";
	say "     Increasing speed you feel your orgasm building, however while distracted by the pleasure building in your pussy, your feet lose their grip on the slick rubbery skin of your lover. Both legs slip and you fall pussy first onto her grapefruit-sized knot. The combined weight of your body, and a quickly timed thrust from the Vixen is enough to firmly lodge her knot inside of you. 'Oh Fuck Yes!' you scream, your body hit with an earth shaking orgasm. The Latex Vixen lets out a loud moan, and you realize she is filling you with her own cum.[impregchance]";
	say "     Attempts to stand up and pull her knot out prove futile; every time you get close, her knot seems to inflate a little more. Deciding you're going to be here for a while, you start to grind your hips and rub yourself into three more orgasms before her knot recedes enough to plop out of your abused pussy. Bucketloads of hot cum spill out of your hole onto the Vixen as you get up to leave.";
	say "     'See you again soon honey,' she says with a wink as you leave her laying in a pool of her own cum.";

to say hermlatexvix_10:
	say "***get a blow job";

to say hermlatexvix_11:
	say "***get pussy eaten";

to say hermlatexvix_12:
	say "***suck vixen cock";

to say hermlatexvix_13:
	say "***69";

hermlvconsent is a number that varies.

to say hermaphrodite latex vixen victory:
	if player is male: [she prefers to get fucked as she likes to make more latex foxes]
		say "     [if HP of player > 0]'So he wants to play with Mama? Good boy...' the red vixen purrs[else]You slump to the ground, too tired and sore to keep fighting. The fox bends over bringing her mouth right up to your ear and whispers 'Perhaps next time we can do this without all that unnecessary violence[end if]. 'Now,' she says, slowly removing your clothes, 'let's see what we have to play with today.' Pulling your pants off reveals your [if cocks of player > 1]multiple [cock size desc of player] [cock of player] cocks[else][cock size desc of player] [cock of player] cock[end if].";
		if cocks of player > 2:
			say "     'Ohh, those look tasty!' she says while slowly licking her lips. She lowers her face to the first of your [cock of player] shafts and her tongue dances around the tip. 'Oooooh,' she moans, 'that's nice, but Mama wants more.' She gently lays you on your back, your throbbing cocks sticking straight up. Standing proud, the six foot Vixen lifts one digitigrade leg and steps over you, straddling your waist. She leans over, the lower pair of her massive jiggling tits pressing against your [breast size desc of player] chest and with both jet black hands she grabs all but one of your cocks and roughly shoves them up her warm squeaky pussy. 'Oh God that feels good!' she squeals as her latex skin easily stretches to accommodate you multiple manhoods. She reaches back and grabs your remaining [cock size desc of player] rod and slowly starts to feed it into her puckered ass. 'Mmpf, can't let a good hole go to waste now can we?' she grunts as your remaining cock slowly works its way up her tight butthole. With you fully inside her, your latex lover starts to pump up and down on your shafts. Her pitch black balls slap against your stomach with every thrust, the apple-sized orbs shuddering on impact.";
			say "     She leans in pressing one of her dripping pink nipples into your mouth. 'Have some of Big Mama's milk, I know you'll love it,' she says seductively. The first drop touches your tongue and your mouth is immediately filled with a sensational warmth and a sweet cinnamon flavor. You suck greedily at her teat, wanting more of the candy like elixir. As you suck she quickens her pace, bringing you close to the edge. Sensing you're close she reaches back, and being careful not to scratch you with her needle like claws, starts to squeeze your balls. Your mouth drops open and you let out a huge moan as all [cocks of player] of your [cock of player] shafts start pumping the Latex Vixen full of your [bodyname of player] seed.";
			say "     She stands up, your [cock of player] cocks dropping out of her. You are surprised that none of your cum seems to drip out. 'See you again soon honey,' she says with a wink, and then blows you a kiss and walks away.";
		if cocks of player is 2:
			say "     'Ohh, those look tasty!' she says while slowly licking her lips. She lowers her face to the first of your [cock of player] shafts and her tongue dances around the tip. 'Oooooh,' she moans, 'that's nice, but Mama wants more.' She gently lays you on your back, your throbbing cocks sticking straight up. Standing proud, the six foot Vixen lifts one digitigrade leg and steps over you, straddling your waist. She leans over, the lower pair of her massive jiggling tits pressing against your [breast size desc of player] chest and with a jet black hand she grabs one of your cocks and roughly shoves it up her warm squeaky pussy. 'Oh God that feels good!' she squeals as her latex skin easily stretches to accommodate your manhood. She reaches back and grabs your remaining [cock size desc of player] rod and slowly starts to feed it into her puckered ass. 'Mmpf, can't let a good hole go to waste now can we?' she grunts as your remaining cock slowly works its way up her tight butthole. With you fully inside her, your latex lover starts to pump up and down on your shafts. Her pitch black balls slap against your stomach with every thrust, the apple-sized orbs shuddering on impact.";
			say "     She leans in pressing one of her dripping pink nipples into your mouth. 'Have some of Big Mama's milk, I know you'll love it,' she says seductively. The first drop touches your tongue and your mouth is immediately filled with a sensational warmth and a sweet cinnamon flavor. You suck greedily at her teat, wanting more of the candy like elixir. As you suck she quickens her pace, bringing you close to the edge. Sensing you're close she reaches back, and being careful not to scratch you with her needle like claws, starts to squeeze your balls. Your mouth drops open and you let out a huge moan as both of your [cock of player] shafts start pumping the Latex Vixen full of your [bodyname of player] seed.";
			say "     She stands up, your [cock of player] cocks dropping out of her. You are surprised that none of your cum seems to drip out. 'See you again soon honey,' she says with a wink, and then blows you a kiss and walks away.";
		else:
			say "     'Ohh, that looks tasty!' she says while slowly licking her lips. She lowers her face to your [cock of player] shaft and her tongue dances around the tip. 'Oooooh,' she moans, 'that's nice, but Mama wants more.' She gently lays you on your back, your throbbing cock sticking straight up. Standing proud, the six foot Vixen lifts one digitigrade leg and steps over you, straddling your waist. She leans over, the lower pair of her massive jiggling tits pressing against your [breast size desc of player] chest and with a jet black hand she grabs your cock and roughly shoves it up her warm squeaky pussy. 'Oh God that feels good!' she squeals as her latex skin easily stretches to accommodate your manhood. With you fully inside her, your latex lover starts to pump up and down on your shaft. Her pitch black balls slap against your stomach with every thrust, the apple-sized orbs shuddering on impact.";
			say "     She leans in pressing one of her dripping pink nipples into your mouth. 'Have some of Big Mama's milk, I know you'll love it,' she says seductively. The first drop touches your tongue and your mouth is immediately filled with a sensational warmth and a sweet cinnamon flavor. You suck greedily at her teat, wanting more of the candy like elixir. As you suck she quickens her pace, bringing you close to the edge. Sensing you're close she reaches back, and being careful not to scratch you with her needle like claws, starts to squeeze your balls. Your mouth drops open and you let out a huge moan as your [cock of player] shaft starts pumping the Latex Vixen full of your [bodyname of player] seed.";
			say "     She stands up, your [cock of player] cock dropping out of her. You are surprised that none of your cum seems to drip out. 'See you again soon honey,' she says with a wink, and then blows you a kiss and walks away.";
	else:
		say "     [if HP of player > 0]'So she wants to play with Mama? Good girl...' the red vixen purrs[else]You slump to the ground, too tired and sore to keep fighting. The fox bends over, bringing her mouth right up to your ear and whispering, 'Perhaps next time we can do this without all that unnecessary violence[end if]. Now,' she says, softly rolling you on to your stomach, 'as I am not a sore winner, I will give you a choice.' She hefts one of her apple-sized balls and squeezes it slightly. 'These boys are damn good at making babies, so if you don't want to get knocked up, say so now.'";
		say "     Her eyes seem to stare into your soul, and a pleasant cinnamon odor hits your nostrils as she gets closer. 'Willing to take the risk?'";
		if player consents:
			say "     'Alright honey, whatever you want,' she purrs. Positioning the tip of her eighteen inch shaft at mouth of your moistening pussy she slowly enters you, until her knot is pressing against your opening. The latex shaft seems to adjust to fill you perfectly, stretching you to a point just before discomfort. You moan with pleasure as your assailant starts to thrust, slowly at first but speeding up as she goes.";
			say "     As the Latex Vixen's fucking reaches a steady rhythm, you feel her watermelon-sized breasts squishing against your back with every thrust. Every time she rams home, the pressure on her four sloshing jugs causes some of the cinnamon smelling oil to squirt out of her nipples, in only moments your entire back is slick with lube. Her thrusting starts to become more forceful, you can tell she is trying to get that grapefruit-sized knot in you. Your mind clouded with lust you start meeting her thrusts with thrusts of your own, trying desperately to tie with your kind and loving mistress.";
			say "     You feel a sudden pop and feel her balls slap your thighs, you try to pull forwards but you can't move. You are now firmly tied with your latex lover. She lets out a loud grunt as the pressure on her knot causes her to climax, sending hot sperm flooding into your uterus.[impregchance]";
			say "     As she peaks her gigantic teats start spraying their bounty, causing hot oily lubricant to rain down on you. Some of the lube drips down into your mouth, the flavor is quite intense, tasting like a very spicy cinnamon candy. You can't quite remember if you liked cinnamon before the world ended, but licking your lips you realize that you sure like it now!";
			say "     She brings one leg over your body and spins around until you are ass to ass, every time her knot pulls at your stretched hole a bolt of pleasure runs up your spine. You lay there for over half an hour, as she slowly stretches your uterus with her seed. You feel every single squirt of hot fox cum, keeping you achingly close to orgasm the entire time. Eventually her swollen knot starts to reduce in size and with a loud POP it falls out of your pussy. Torrents of hot fox cum quickly follow, puddling on the ground below you. She squeezes one of your ass cheeks and lightly kisses the other one. She rises to her feet and starts to walk away.";
			say "     Looking back at you, she smiles and says, 'That was fun, let's do it again sometime.'";
			say "     As she leaves, you roll onto your back and start to masturbate furiously, the oily aphrodisiac covering your body keeping you incredibly horny, even after your force orgasm after orgasm. Eventually the raw animal lust subsides and you manage to get up and leave the scene of your latest degradation.";
		else:
			say "     'Excellent!' she squeals. 'I always prefer the back door!'";
			say "     You feel something large and soft pressing against your ass. You look back to see the vixen pressing one of her massive teats into your crack, you feel a slight pinch as something small pushes through your anus - her nipple, you guess. She begins to squeeze her breast with both of her black paws. As she squeezes, you feel your bowels being filled with a numbing warmth.";
			say "     'All lubed up!' she says, lightly slapping your ass as she withdraws her now dripping teat from your exposed ass. She positions the pointed tip of her bright pink shaft at your asshole and slowly eases in. You involuntarily moan with pleasure as the warming lubricant she filled you with seems to remove any pain while still allowing you to feel every inch of her smooth shaft as she slowly starts to fuck you, in and out.";
			say "     As the Latex Vixen's fucking reaches a steady rhythm, you feel her watermelon-sized breasts squishing against your back with every thrust. Every time she rams home, the pressure on her four sloshing jugs causes some of the cinnamon smelling oil to squirt out of her nipples, in only moments your entire back is slick with lube. Her thrusting starts to become more forceful, you can tell she is trying to get that grapefruit-sized knot in you. Your mind clouded with lust you start meeting her thrusts with thrusts of your own, trying desperately to tie with your kind and loving mistress.";
			say "     You feel a sudden pop and feel her balls slap your thighs, you try to pull forwards but you can't move. You are now firmly tied with your latex lover. She lets out a loud grunt as the pressure on her knot causes her to climax, sending hot sperm flooding through your bowels. As she peaks her gigantic teats start spraying their bounty, causing hot oily lubricant to rain down on you. Some of the lube drips down into your mouth, the flavor is quite intense, tasting like a very spicy cinnamon candy. You can't quite remember if you liked cinnamon before the world ended, but licking your lips you realize that you sure like it now!";
			say "     She brings one leg over your body and spins around until you are ass to ass, every time her knot pulls at your stretched hole a bolt of pleasure runs up your spine. You lay there for over half an hour, as she slowly fills every nook and cranny of your intestines with her seed. The numbing and yet sensitizing lubricant in your ass making you feel every single squirt, keeping you achingly close to orgasm the entire time. Eventually her swollen knot starts to reduce in size and with a loud POP it falls out of your ass. Torrents of hot fox cum quickly follow, puddling on the ground below you. She squeezes one of your ass cheeks and lightly kisses the other one. She rises to her feet and starts to walk away.";
			say "     Looking back at you, she smiles and says, 'That was fun, let's do it again sometime.'";
			say "     As she leaves, you roll onto your back and start to masturbate furiously, the oily aphrodisiac covering your body keeping you incredibly horny, even after your force orgasm after orgasm. Eventually the raw animal lust subsides and you manage to get up and leave the scene of your latest degradation.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Hermaphrodite Latex Vixen" to infections of hermaphrodite;
	add "Hermaphrodite Latex Vixen" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Hermaphrodite Latex Vixen";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She swipes at you with her sharp black claws, leaving trails of blood across your chest[or]You see a brilliant flash of red as the Vixen spins and whips at you with her rubber, yet still bushy, tail[or]Her head darts forward, gleaming teeth nipping at you[at random].";
	now defeated entry is "[hermaphrodite latex vixen defeat]";
	now victory entry is "[hermaphrodite latex vixen victory]";
	now desc entry is "[hermaphrodite latex vixen desc]";
	now face entry is "short muzzle filled with very sharp carnivorous teeth set below deep brilliant green eyes and pointed fox-like ears, all giving you a slightly intimidating yet very alluring";
	now body entry is "tall and nimble, with ample curves. You have fox-like digitigrade legs that end in sharp claws";
	now skin entry is "shiny white rubber latex skin running from just above your nose all the way down your inner thighs, just covering your stomach. Glistening black latex covers your hands up to your elbows, and your feet up to your knees, giving you the appearance of long black gloves and boots. The rest of your body is covered in rubbery, bright red";
	now tail entry is "You have a long, red, bushy fox tail. The most remarkable thing about the tail is the fur that covers it. Instead of being fine strands of fur, it is actually fine strands of rubber. Even though it must weigh over twenty pounds, you find it doesn't affect your balance; in fact, it only seems to help.";
	now cock entry is "[one of]bright pink[or]knotted[or]black sheathed[at random]";
	now face change entry is "it starts to contort, drawing into a short muzzle. Your ears migrate to the top of your head pointing straight up, while your eyes change to a deep green";
	now body change entry is "you start to lose muscle definition, accentuating your curves. You feel a tingling in your legs as you hear bone cracking and reshaping leaving you with digitigrade legs ending in sharp claws";
	now skin change entry is "it starts to change color, a bright red spot that seemed to start on your back slowly covers your entire body. A white spot appears on your chest spreading out, and your hands and feet start to darken. As your color changes you also realize your skin is becoming shiny and very stretchy";
	now ass change entry is "a heavy bright red bushy tail springs forth";
	now cock change entry is "it is engulfed by a black sheath. You are assaulted by wave after wave of pleasure as your tool starts to shift and writhe from within the sheath. In between moans you see a bright pink pointed tip start to make its way out, and once fully erect you see the large pink knot at the base, just aching to tie with someone";
	now str entry is 10;
	now dex entry is 16;
	now sta entry is 8;
	now per entry is 16;
	now int entry is 16;
	now cha entry is 12;
	now sex entry is "Both";
	now HP entry is 50;
	now lev entry is 9;
	now wdam entry is 14;
	now area entry is "Red";
	now cocks entry is 1;
	now cock length entry is 16;
	now cock width entry is 8;
	now breasts entry is 4;
	now breast size entry is 10;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 16;
	now cunt width entry is 8;
	now libido entry is 30;
	now loot entry is "cock pill";
	now lootchance entry is 10;
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]curvy[or]feminine[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname is "Hermaphrodite Latex Vixen":
		if humanity of player < 10:
			say "The animal lust overcomes you, and you spend the rest of your days working as one of the [one of]most expensive[or]dirtiest[or]sluttiest[or]most demanded[or]nastiest[at random] whores at 'Big Mama's House of Desire', a brothel opened up by the Hermaphrodite Latex Vixen that infected you. You are quite happy spending your days with your legs spread, being a cum dump for anyone who walks into the shop, especially given that if you are still not satisfied at the end of the day, Big Mama is more than happy to finish you off.";
		else:
			say "Finding it difficult to satisfy your wanton lust, you decide that you may as well monetize it, so you start a career in the sex trade. Spending the rest of your day's getting paid to satisfy your carnal desires is all you could have ever wished for[if intelligence of player > 13], but your keen intellect makes you soon realize you can have much, much more! With the millions of incredibly horny infected all over the country, the prostitution laws have all been revoked, so displaying hidden business-savvy you open a small brothel named 'Big Mama's House of Desire' in tribute to the Hermaphrodite Latex Vixen that started you on your path to debauchery. Your business grows rapidly, in both clientele and employees. Soon you have shops all over the country, catering to both infected and non-infected customers. You eventually retire to your own island, one of the richest people in the world, with a small army of staff dedicated to satisfying your every sexual whim[end if]!";


Hermaphrodite Latex Vixen ends here.
