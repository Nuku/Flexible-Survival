Feral Cheetah by Shadowwolf94 begins here.
[ Version 1.1 - Separated Feral Cheetah from Zoo.i7x file by Hellerhound ]
[ Version 1.2 - Updated by Shadowwolf94 ]

"Adds a Feral Cheetah creature to Flexible Survival's Wandering Monsters table, linked to the Zoo content."

Section 1 - Cheetah monster

cheetahmate is a number that varies.
cheetah_mpreg is a truth state that varies.
specialcheetah is a truth state that varies.

when play begins:
	add { "Feral Cheetah" } to infections of guy;
	add { "Feral Cheetah" } to infections of furry;

to say cheetahdesc:
	setmongender 3;
	choose row monster in Table of Random Critters;
	now specialcheetah is false;
	if ( a random chance of 1 in 3 succeeds ): [Special Cheetah]
		now specialcheetah is true;
		say "     As you move through the ruined zoo, ";
		[appearance of the cheetah]
		if a random chance of 1 in 3 succeeds: [spotted the cheetah]
			say "a cheetah slinks out from behind a building. The large feral feline looks like ";
		else: [player was surprised by the cheetah]
			say "you freeze solid as something brushes up behind you and a spotted tail flicks at the corner of your vision, turning around very slowly you see ";
			[physical details]
		say "a rather unusual cheetah, with clusters of darker spots running down its back.";
	else: [standard description]
		say "     As you move through the ruined zoo, ";
		[appearance of the cheetah]
		if ( a random chance of 1 in 3 succeeds ): [spotted the cheetah]
			say "[one of]you round a corner and see[or]you spot just ahead of you[at random] ";
		else: [player was surprised by the cheetah]
			say "[one of]something starts to feel wrong. You spin around and spot[or]a soft rumble makes you jump in surprise as you glance over your shoulder and see[at random] ";
		[physical details]
		say "[one of]a sleek[or]a muscular[or]a powerful[or]a lithe[at random] ";
		say "cheetah, who slinks out from behind a building. The large feral feline ";
		[clothing]
		say "[one of]has scraps of a t-shirt hanging off his form[or]wears a loose fitting collar, a small bell jingling with each step[or]wears some kind of loose fitting outfit[or]has an array of jewelry hanging off its pelt[at random]. ";
		say "The rest of his body is ";
		[fur]
		say "covered in [one of]thick matted fur caked in mud[or]heavy scars and fresh blood[or]a well groomed coat of silky fur[or]a strange rainbow patterned set of dots[or]a hypnotic pattern of blots and dots[or]the sleek coat of a classic cheetah[at random].";
		if cheetahmate > 0: [Mated To Special Cheetah]
			say "     The cheetah looks you up and down with [one of]an unimpressed[or]a haughty[or]a challenging[or]a curious[or]a surprised[at random] look on his face. ";
			[comment]
			say "[one of]'Wandering so far away from your mate, guess it's my lucky day[or]'I wonder what your mate would say if he saw you out here all alone[or]'I can smell him on you, but don't worry, I can help you get rid of his scent[at random].' Licking his lips, the cheetah stalks forward to sate his desires in you, with or without your permission.";
		else:
			say "Licking his lips, the cheetah stalks forward to sate his desires in you, with or without your permission.";

To say cheetah defeat:
	say "     As [if specialcheetah is true]the dark spotted [else]the defeated [end if]cheetah collapses to the ground, you notice an enticing scent in the air around the fallen feline. Breathing in a whiff of the heady musk draws you closer, to stand over your opponent with arousal suddenly flaring up. The spotted male's body starts looking better and better to you. A shiver runs up your spine as lustful thoughts worm their way in. Oh what things you could do with the gorgeous beast.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the cheetah";
		now sortorder entry is 1;
		now description entry is "Screw the spotted cat";
		[
		choose a blank row in table of fucking options;
		now title entry is "Get a blow job";
		now sortorder entry is 4;
		now description entry is "Make the kitty blow you";
		]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride the cheetah's cock - vaginal";
		now sortorder entry is 2;
		now description entry is "Get that barbed shaft in your pussy";
		[]
	[if player is female and specialcheetah is true and cheetahmate = 0:
		choose a blank row in table of fucking options;
		now title entry is "Make him your mate";
		now sortorder entry is 7;
		now description entry is "Claim the kitty";]
		[
		choose a blank row in table of fucking options;
		now title entry is "Get eaten out";
		now sortorder entry is 5;
		now description entry is "Get the kitty to lick your pussy";
		]
	choose a blank row in table of fucking options;
	now title entry is "Ride the cheetah's cock - anal";
	now sortorder entry is 3;
	now description entry is "Stuff that barbed cock up your ass";
	[
	choose a blank row in table of fucking options;
	now title entry is "Suck Cheetah cock";
	now sortorder entry is 6;
	now description entry is "Suck a load from that barbed cock of his";
	]
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
			if player consents:
				now sextablerun is 1;
				if title entry is:
				-- "Fuck the cheetah":
					say "[beatthecheetah01]";
				-- "Ride the cheetah's cock - vaginal":
					say "[beatthecheetah02]";
				-- "Ride the cheetah's cock - anal":
					say "[beatthecheetah03]";
				[-- "Get a blow job":
					say "[beatthecheetah04]";
				-- "Get eaten out":
					say "[beatthecheetah05]";
				-- "Suck cheetah cock":
					say "[beatthecheetah06]";
				-- "Make him your mate":
					say "[beatthecheetah07]";]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You resist the urge to indulge your base urges and leave the cheetah passed out.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say beatthecheetah01:	[player tops]
	say "     With one hand still jerking on the big feline's cock, you let the other wander further down until it reaches his pucker. After gently brushing over it and softly massaging the muscle for a while to try to get him relaxed, you gather some spit in your hand and smear it on his hole, then start pushing a finger inside. With an alarmed growl, the cougar jerks his upper body up a bit, to be held down as you move your other hand to his chest. Before he can do much more than that or start to fight you, your probing finger finds his prostate and rubs against it, making the big cat croon in lust and let his head sink back down on the ground again.";
	say "     Going at it slowly, you show your feline novice at anal sex a good time with first one, then two fingers until he's loudly purring and completely relaxed in an aroused haze. At that point, you decide that it's time to get your own manhood into action. Pulling your fingers out of the cougar's hole, you watch it flex closed again, then set the tip of your [cock of player] manhood against the cougar's pucker and move forward until it yields to your pressure and you slide into the warm and tight embrace of his body. You slide into the panting cougar's ass until your balls touch the base of his tail, then start pulling back and thrusting back in, and soon you're pounding in and out of the spotted kitty's tight hole.";
	WaitLineBreak;
	say "     Confronted with all kinds of new sensations, it doesn't take all that long until you fucking him drives the cougar over the edge and he starts to cum, squirting long strings of cum from his spined cock to land all over his furred chest. The twitches and convulsions of each shot run through his whole body, including the muscles in his ass, making an already quite tight hole grip and squeeze your shaft until you join him in orgasm, with a full load of your seed being blasted into this sexy furball's butt. Breathing heavily, you bask a while in the afterglow and rub the cougar's fur a moment, then pull out of his hole and watch it flex closed before too much of your cum can run out of it.";
	LineBreak;
	say "     Rolling back over and standing back up, the cougar gives you a strange look, as if he can't believe you fucked his ass and he enjoyed it. 'I - er - got to go.' comes from lips that aren't too well shaped for human words, then the large cat dashes off without allowing for a reply.";
	infect "Feral Cheetah";
to say beatthecheetah02:	[ride - vaginal]
	say "     The sight of the male cat's member makes your folds wet in anticipation, and you move forward excitedly, running a hand through the soft fuzz on the cheetah's furred underside and making him moan in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. Leaning forward, you proceed to suck him off, the warm flesh of his cock filling your mouth as the little barbs on it run along your tongue. Then, when his manhood is good and wet, you move to kneel over him, holding the spotted feline's erection up as you lower yourself until it touches your cunt. The male cat gives a surprised rumble as you keep going, impaling yourself on his hard shaft and moaning at the sensations of the little barbs on it rubbing your inner walls.";
	say "     The familiar feeling of sex, the tightness of your hole enclosing his member wakes primal urges within the cheetah and he grasps onto your back, lurching upwards with his hips to drive his shaft home. You thrust against him as he does so, soon finding a rhythm of fucking which makes him hit your spots perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, a tingly feeling of satisfaction spreading through your whole body. The twitching and flexing of your folds as you do so is enough to drive your spotted partner over the edge too, making him grunt deeply as spurt after spurt of cougar cum blast deep into your womb. Basking in the afterglow, you rub the cougar's fur a moment, then pull off his shaft, making some of his seed leak out of you and drip down on the fur of his crotch.[impregchance]";
	LineBreak;
	say "     Rolling back over and standing back up, the cougar gives you a longing look, as if he can't believe you fought him just to ride him. 'I - er - got to go.' comes from lips that aren't too well shaped for human words, then the large cat dashes off without allowing for a reply.";
	infect "Feral Cheetah";

to say beatthecheetah03:	[ride - anal]
	say "     The sight of the male cat's member makes your pucker twitch in anticipation, and you move forward excitedly, running a hand through the soft fuzz on the cheetah's furred underside and making him moan in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. Leaning forward, you proceed to suck him off, the warm flesh of his cock filling your mouth as the little barbs on it run along your tongue. Then, when his manhood is good and wet, you move to kneel over him, holding the spotted feline's erection up as you lower yourself until it touches your pucker. The male cat gives a surprised rumble as you keep going, impaling yourself on his hard shaft and moaning at the sensations of the little barbs on it rubbing your inner passage.";
	say "     Unfamiliar as he might be with anal sex, the feeling of your tight hole enclosing his member wakes primal urges within the cheetah and he grasps onto your back, lurching upwards with his hips to drive his shaft home. You thrust against him as he does so, soon finding a rhythm of fucking which makes him hit your prostate perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, a tingly feeling of satisfaction spreading through your whole body. The twitching and flexing of your inner muscles as you do so is enough to drive your spotted partner over the edge too, making him grunt deeply as spurt after spurt of cougar cum blast deep into your insides. Basking in the afterglow, you rub the cougar's fur a moment, then pull off his shaft, making some of his seed leak out of you and drip down on the fur of his crotch.[mimpregchance]";
	LineBreak;
	say "     Rolling back over and standing back up, the cougar gives you a strange look, as if he can't believe he fucked your ass and enjoyed it. 'I - er - got to go.' comes from lips that aren't too well shaped for human words, then the large cat dashes off without allowing for a reply.";
	infect "Feral Cheetah";
[to say beatthecheetah04:	[get blow job]
	say "     Striding up to the ";
	infect "Feral Cheetah";
to say beatthecheetah05:	[get cunnilingus]
	say "     ";
	infect "Feral Cheetah";
to say beatthecheetah06:	[give blow job]
	say "     The sight of the male cat's member makes your [if player is female]folds wet[else]pucker twitch[end if] in anticipation, and you move forward excitedly, running a hand through the soft fuzz on the cheetah's furred underside and making him moan in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. Leaning forward, you proceed to suck him off, the warm flesh of his cock filling your mouth as the little barbs on it run along your tongue.";
]
to say beatthecheetah07:	[Make him your mate]
	say "     The sight of the male cat's member causes your cunt to throb, and you move forward excitedly, sitting on the cheetah's furred underside as he moans in pleasant surprise. You rub his cock, wondering at its smooth feel in your hands, until it grows out, a bit smaller than you would have expected. You lean back, spreading your legs to take him inside, and slide forward. At the feeling of your cunt enclosing his member, the cheetah grasps onto your back, and lurches, driving his shaft home. You thrust against him as he does so, soon finding a rhythm of fucking which makes him hit your most sensitive spots perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, and your wet juices soak your spotted partner's, leaving a dark patch right above where his cock is. Basking in the afterglow, you realize with sadness that he hasn't come yet, and pull out, turning and taking his feline shaft into your hands.";
	LineBreak;
	say "     You hear, in a weak voice: 'Do you choose me? Will you be my mate?'";
	if player consents:
		LineBreak;
		say "     Your new mate's mouth bends into a smile and he lies back, enjoying your touch as you jerk him off, soon spraying white cum all over his chest fur. Then he rolls back over and stands up, licking your face affectionately before whispering 'See you soon, love.' and stalking off.";
		now cheetahmate is 1;
	else:
		LineBreak;
		say "     Your denial saddens him, and he rolls over, shrugging off your touch. You decide to leave now, before the displeased cheetah catches his breath and you must fight again.";



To say cheetah victory:
	say "     The cheetah growls to affirm his dominance and pushes you over on all fours. Strong paw-hands quickly pull off your gear and clothes, leaving you naked to be sniffed and inspected by the big cat. Something about him, maybe his pleasantly musky smell wakes a very submissive side in you and you get incredibly aroused at the victorious cougar's behavior.";
	if specialcheetah is True and cheetahmate > 0:
		if player is female:
			say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cougar pounces, driving himself home into you with one quick, fluid motion. He pounds at you, his balls slapping your ass as you thrust back, trying to get him as deep as you can. A haze of pleasure begins to cloud your eyes, and by the time your climax comes, you are no longer in conscious control. The feeling of his warm seed filling your insides is welcome, and his little barbs tickle as his cock pulses.[impregchance]";
			say "His cock slides out with much pleasure and dripping of seed, and you lick-kiss him in the cheek for doing you suck a service.";
		else if player is mpreg_able:
			if cheetah_mpreg is false:
				say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cheetah gives you a kiss. Though as he bends his head to your crotch and notices your lack of feminine features there, he gives a saddened sigh. 'What happened to you, my love?' He goes to lick your crotch sadly, but a tickle of your scent draws his tongue to continue back to your anus. Having caught the scent of your hidden womb, he gives a confused sound and taking another noseful. The cheetah gives your pucker several more licks, his raspy tongue playing across your crinkled hole in search of that arousing smell. He starts to purr and rumble, becoming captivated of your unusual nature, which he shows by mounting you.";
			else:
				say "     Giving a pleased rumble that he's gotten the upper hand over his mate this time, your handsome cheetah gives you a kiss. As he bends his head to your crotch and notices your continued lack of feminine features there, he gives a saddened sigh. '[one of]What happened to you, my love[or]How can this be, my mate[or]What have you done, my love[at random]?' He goes to lick your crotch sadly, but is drawn in once again by the scent of your hidden womb. His nose is drawn to your pucker and his tongue inexorably follows to it. The cheetah gives your pucker several more licks, his raspy tongue playing across your crinkled hole in search of that arousing smell. He starts to purr and rumble as he's captivated by that arousing smell once again and quickly mounts you.";
			say "     The feline's spiny tip presses against your male breed-hole and pushes into your rectum. You moan and push back against him as he does so, your body responding with a growing need as those stimulating barbs send shivers of pleasure through you. His pace is a little rough and uncertain, still growing used to fucking a tight ass instead of a pussy. But from the loud rumbles you feel from his chest vibrating against your back, you can tell he's still enjoying himself greatly[if player is male]. You can only take his feral pounding for so long before your prostate thrums and your balls boil over in gooey blasts of semen shooting from your cock. Your anus clenches and quivers around that pulsing rod of his as you orgasm[else]. Your anus clenches and quivers around that pulsing rod, milking at it as your body trembles with lustful need[end if]. This spurs the cheetah to drive his feline cock deep inside you and unleash spurt after virile spurt of his animal seed into you. After draining himself, he dismounts from you slowly. He seems a little confused by his reaction to you, but gives you a soft nuzzle before padding off in search of a needy female to clear his head.";
			now cheetah_mpreg is true;
	else:
		if player is female:
			say "     You feel the breath through his nose against your folds as the spotted feline sniffs your pussy and purrumbles in approval at a female ready and waiting for him to mount. And you don't have to wait for long - almost immediately, you can feel his soft fur against your back as he mounts you, his hard shaft poking against your butt. After a few probing thrusts with his hips he finds your pussy, then plunges in his whole cock. Moaning, you rock back against him as he does so, soon finding a rhythm of fucking which makes him hit your most sensitive spots perfectly, the two of you driving each other to higher and higher arousal. Before much longer, you climax, your copious femcum running down the inside of your legs while your spotted partner still thrusts in and out until he too joins you in orgasm a moment later. With a pleased purr, he blasts spurt after spurt of fertile seed deep into your pussy, then pulls out and pads off to find another female.";
		else if player is mpreg_able:
			if cheetah_mpreg is false:
				say "     You feel the breath through his nose against your balls as the spotted feline sniffs your crotch, then catches a whiff of something intriguing a little higher up. Catching the scent of your hidden womb, he gives a confused sound and takes in another noseful. As if drawn by the scent beyond his control, the cheetah gives your pucker several licks, his raspy tongue playing across your crinkled hole in search of that arousing smell. He starts to purr and rumble, becoming captivated of your unusual nature, which he shows by mounting you.";
			else:
				say "     You feel his breath against your backside again, the spotted feline checking your scent again. Catching a whiff of your hidden womb again, his nose is drawn to your pucker and his tongue inexorably to it. He gives it several licks, his raspy tongue playing across your crinkled hole. He starts to purr and rumble as he's captivated once again by that arousing smell and quickly mounts you.";
			say "     The feline's spiny tip presses against your male breed-hole and pushes into your rectum. You moan and push back against him as he does so, your body responding with a growing need as those stimulating barbs send shivers of pleasure through you. His pace is a little rough and uncertain, still growing used to fucking a tight ass instead of a pussy. But from the loud rumbles you feel from his chest vibrating against your back, you can tell he's still enjoying himself greatly. [if player is male]You can only take his feral pounding for so long before your prostate thrums and your balls boil over in gooey blasts of semen shooting from your cock. Your anus clenches and quivers around that pulsing rod of his as you orgasm[else]Your anus clenches and quivers around that pulsing rod, milking at it as your body trembles with lustful need[end if]. This spurs the cheetah to drive his feline cock deep inside you and unleash spurt after virile spurt of his animal seed into you. After draining himself, he [if cheetah_mpreg is false]hops off of you quickly and backpedals several steps before rushing off[else]dismounts from you slowly. He seems a little confused by his reaction to you, but gives you a soft nuzzle before padding off in search of a more feminine lover[end if].";
			now cheetah_mpreg is true;
		else if player is male:
			say "     You feel the breath through his nose against your balls as the cougar sniffs your crotch, then gives a displeased rumble at finding a weaker male in his territory. Seems he wants to show you a lesson next, as he mounts you from behind, pushing you down as he humps against you. He doesn't fuck your ass or anything, just treats you like a female to be fucked and rubs his hard shaft against your crotch, bumping your balls with the spined tip. Before long, he orgasms, blasting away with spurt after spurt of cum to splash wetly against your crotch. Maybe he's hoping this will infect you, making you transform you into a female sooner or later. No matter what, having gotten his rocks off, the cougar pads off to find another female.";
		else:
			say "     You feel the breath through his nose against your featureless crotch as the cougar sniffs you, then gives a displeased rumble at finding a genderless being in his territory. Seems he wants to show you a lesson next, as he mounts you from behind, pushing you down as he humps against you. He doesn't fuck your ass or anything, just treats you like a female to be fucked and rubs his hard shaft against your crotch. Before long, he orgasms, blasting away with spurt after spurt of cum to splash wetly against your skin. Maybe he's hoping this will infect you, making you transform you into a female sooner or later. No matter what, having gotten his rocks off, the cougar pads off to find another female.";
	infect "Feral Cheetah";


Section 2 - Infection Details

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Feral Cheetah"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]bites with sharp fangs, drawing blood[or]slashes at you, opening large wounds [or]leaps over you, slashing as it is flying[at random]!"; [Text used when the monster makes an Attack]
	now defeated entry is "[cheetah defeat]";
	now victory entry is "[cheetah victory]";
	now desc entry is "[cheetahdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "feline, with an actively twitching nose"; [ Face description, format as "Your face is (your text)"]
	now body entry is "lithe and strong, with a shape for speed and muscles for true strength"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "smooth spotted fur over your"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "Your tail is decently sized, spotted, and whipping back and forth."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "tan spined, and sheathed cheetah "; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it grows longer, the front narrowing, and both eyes looking ahead. Your pupils dilate oddly, and you realize they have become slitted"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your spine bends, shoving you onto all fours as the rest of your body changes shape, leaving you with a lithe, rippling body"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it grows spotted fur"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it grows more compact and muscles grow and shift beneath the surface, perfect for running. A furry, lithe tail sprouts out a second later "; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "spines grow out, and a furry sheath covers the bottom"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 26;
	now sta entry is 24;
	now per entry is 19;
	now int entry is 18;
	now cha entry is 12;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;
	now lev entry is 18; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you lose ]
	now wdam entry is 18; [ Amount of Damage monster Does when attacking.]
	now area entry is "Zoo"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "dirty water";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]sleek[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 3 - Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Feral Cheetah"	8	8	"You gasp as pleasure overwhelms your sight and hearing, the smell of a female in heat becoming your only focus. As you slowly come out of it, you realize your cunt is dripping with readiness, and the smell is still there.[cheetahreset]"	"swollen and dripping Cheetah twat "	--	--	"[cheetahheat]"	true	true	"You gasp as pleasure overwhelms your sight and hearing, the scent of a female in heat becoming your only focus. As you slowly come out of it, you realize that the scent is wafting from you despite being [if player is male]male[else]neuter[end if]. Your anus quivers and relaxes, readying itself for the mating your infected body desires.[cheetahreset]"

lastcheetahturns is a number that varies.

to say cheetahreset:
	now lastcheetahturns is 24;

to say cheetahheat:
	decrease lastcheetahturns by 3;
	if lastcheetahturns < 3:
		say "Your nose begins to overwhelm you.";
		if libido of player < 96, increase libido of player by 5;
		if (libido of player > 90) and (location of player is fasttravel ) and (slutfucked > 8):
			say "A waft on the breeze catches your nose, your head snapping around as the need between your legs throbs. Unable to control your lust you strike out in the direction of and immediately upon seeing the infected monster that you scented drop onto you immediately submit, offering yourself freely.";
			say "[cheetahreset]";
			let hmonlist be a list of numbers;
			repeat with X running from 1 to number of filled rows in Table of Random Critters:	[ Loop through and select all monsters that appear "Outside" ]
				choose row X from the Table of Random Critters;
				if there is no area entry, next;
				if area entry is "Zoo":
					add X to hmonlist;
			sort hmonlist in random order;
			repeat with Z running through hmonlist:		[Pick one of the monsters at random]
				now monster is Z;
				break;
			choose row monster from the Table of Random Critters;
			follow the cock descr rule;
			follow the breast descr rule;
			say "[victory entry]";
			infect;
			decrease the score by 5;
			increase the morale of the player by 3;


Section 4 - Endings

when play ends:
	if bodyname of player is "Feral Cheetah":
		if cheetahmate is 0:
			if the humanity of player < 10:
				if player is female:
					say "     You join the growing band of converts and soon take your place as the pack leader's proud mate. Your group manages to keep away the human forces with sheer speed and cunning, maintaining control of the zoo and some of the surrounding area even as the rest of the city is pacified.";
				else:
					say "     You form the cheetahs of the zoo into a large, spotted band of conquerors and hold the humans off with sheer speed and cunning. One day, as you oversee and participate in the defense, you smell someone sweet, and entice her to choose you as her mate. While the military manages to pacify the rest of the city, the zoo and its surrounding area remains firmly under your pack's control, abandoned as too difficult to reclaim.";
			else:
				if player is female:
					say "     You choose a mate from the transformed and after escaping those hunting for you in the city bear him many children over the following years. Time goes by quickly with the sweet smell of freedom, love, and your mate to accompany you, until eventually humankind returns its grasp on the world and you prepare to teach them a lesson...";
				else:
					say "     You wait in the zoo, and, in the few days that the humans take to recapture and purify the city, a cheetah chooses you as her mate. The two of you flee the city together, stopping only when you are both on a remote plain, grass stretching as far as the eye can see. She bears you many children in your wild home, and the sweet smell of freedom, love, and your mate carry you outwards.";
		else if cheetahmate > 0 and cheetah_mpreg is true and cunts of player is 0:
			if humanity of player < 10:
				say "     You are drawn back to the zoo by the images of your cheetah lover imprinted in your confused mind. Finding him, you submit yourself to being mounted by the lustful feline. After a few more wild romps with your stud cat, his trepidation about taking your ass to mate you fades. By the time your belly grows round with his offspring, he's become a passionate lover eager to pound or play with your ass as much as you desire. And being a wild, lustful feline yourself, you desire it very, very often.";
			else:
				say "     Rescued by the military, your semi-animal state leaves you with difficulty dealing with society. It is sometimes hard to have a normal life when you feel more natural moving on all fours. Still, you manage to figure out some ways to get by. Your mind is drawn back to the cheetah you'd bonded with in the city. It's usually an occasional thought from time to time, especially when you're alone, but it is especially strong when you feel a heated need to mate within your hidden womb.";
				say "     During one particularly strong heat, you drop everything, make some quick preparations and cross into the fallen city once again. While several of creatures you see, especially the feline ones, are quite alluring and make you long to let them douse your heat with their seed, you eschew them and press onwards to the zoo. Once there, it doesn't take long before you're found by your mate. Drawn to the scent of your heat even as you are to his masculine musk, you are reunited. And your reunion is celebrated by a wild romp of feral sex. Having long missed you, your cheetah mate doesn't hold back because of your gender any longer and breeds you over and over again.";
				say "     Convincing him to leave the zoo and the city takes some work and making your escape from it is a harrowing adventure, but eventually you and your mate make it back to the safety of your home. Given his feral nature, he does not socialize well, but is fine enough within the confines of your home. Having gotten over his trepidation about taking your ass to mate you, he proves to be a passionate lover, eager to pound or play with your ass as much as you desire. Soon your belly grows round with his offspring and he only becomes more lustful, much to your delight.";
		else if cheetahmate is 1:
			say "     You rejoin your mate after the rescue, pretending to be fully cured, even though your mind is still altered. He gives you children, and you both surreptitiously move to a Savannah cottage, where you can live your lives in peace and prosperity.";
		else if cheetahmate is 2:
			say "     You and your mate continue living together, determined to replace all that the cheetahs have lost to the humans, working hard to buy the lands the cheetahs once occupied, and filling them with your spawn.";

Feral Cheetah ends here.
