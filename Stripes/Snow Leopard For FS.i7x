Version 3 of Snow Leopard For FS by Stripes begins here.
[Version 3 - Revamped player victory for menu system and added submissive-anal option]
"Adds a Snow Leopard creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

nosnowmeowsex is a number that varies.
when play begins:
	add { "Snow Leopard" } to infections of guy;
	add { "Snow Leopard" } to infections of furry;


to say snowmeowdesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     You have encountered another citizen stricken by the infection, this one having turned into an exotic snow leopard. His five foot tall body is covered with snowy white and ash grey fur marked by coal black spots. The fur is fluffy and thick, especially on tail which has larger dark patches on it. He eyes you intently with his icy gaze. He seems rather uncomfortable in the summer heat, but the stiff erection he's sporting shows he's quite intent on slaking his lusts as well as his thirst. He strides towards you, growling aggressively in his throat.";


to say losetosnowmeow:
	now nosnowmeowsex is 0;
	say "     The snow leopard gives a throaty purr as your struggles cease. He presses you down to the ground and runs his eyes over you while a paw strokes his stiff shaft. The fight over, you can see it is steely grey with a slightly feline-shaped glans and a pair of ample balls below it. Between the feel of the snowmeow's lovely fur and the heavy scent of his arousal, you find yourself subconsciously licking your lips as a few beads of precum leak down that hard meat.";
	if cocks of player > 0:
		say "     The snow leopard licks his lips lustfully as he eyes your cock. Turning around, he brings his stiff shaft to your face while his soft paws work your shaft to full erection. His precum drips down onto your lips and your remaining self-control breaks. You open your mouth and guide that tasty meat into your waiting mouth. You lick and suck at it hungrily, moaning with increasing desire as his own lips close around your cock and he starts licking and sucking your throbbing shaft.";
		say "     His paw plays with your balls and cock incessantly while he licks and sucks your meat, thirsting for your cum[if cock width of player > 10]. And you spray it out onto his tongue again and again as he works to drain your balls for as much of the thick, tasty fluid he can get. Your loads are quite fulfilling and you are rewarded by a hefty blast of snow leopard cum as well, enough to overflow your mouth briefly. You swallow it down with delight in your lustful haze[else if cock width of player > 5]. And you spray it out onto his tongue again and again as he works to drain your balls for as much of the thick, tasty fluid he can get. You give him several sizeable loads before running empty and you are rewarded with an impressive serving of snowmeow cum, which you swallow down with delight in your lustful haze[else]. And you spray it out onto his tongue in one, strong series of spurts, giving as much as your balls can. Your small load barely satisfies him and you are rewarded with only a few small spurts of snowmeow cum in return. You swallow this down with delight in your lustful haze, eager for as much or as little as you can get[end if]. Done with you, he pads off to look for others to help slake his lustful thirst.";
		if cock width of player > 9:
			infect "Snow Leopard"; [additional infection from large load]
			decrease hunger of player by a random number between 2 and 5;
	else if ( bodyname of player is "Snow Leopard" or bodyname of player is "Panther Taur" ):
		if breast size of player > 2 and lastmilking - turns > 7:
			say "     Taking in your desirable, feline form, the sexy snowmeow licks his lips as he gazes upon your lovely bosom. When a few playful pinches to your nipples brings forth some milk, his eyes widen with lustful thirst at them and has his lips around them almost instantly. You moan and start to purr softly as his fingers run over your body and move to tease your pussy. He strokes your wet folds and spreads them before plunging his cock into you, making your body tremble at the sudden but pleasurable intrusion.";
			say "     He pounds away at your pussy as he nurses from your bosom, drinking down your rich, feline milk to slake his thirst while exciting his lusts further. His raspy tongue and sharp teeth are used, but skillfully, to tease and excite you further. You are lost in a lustful haze of feeding this impressive male all you can give. ";
			if breast size of player > 8 or breasts of player > 4:
				say "     Your ample bosom provides much milk to the thirsty feline, and he climaxes several times in you as reward, pumping his thick seed into you again and again. You can feel his hot cum spray inside you and flow up into your waiting womb, causing your belly to swell with the very volume his virile balls yield.[if a random chance of 1 in 2 succeeds][impregchance][end if][impregchance]"; [additional 50% chance of impreg]
			else:
				say "     Your bosom provides a satisfying drink of milk for the thirsty feline, and he climaxes hard inside you towards the end of his meal as a reward. His thick seed pumps into you and you can feel it flow up into your waiting womb, plumping it up a little.[impregchance]";
			if breast size of player > 8 or breasts of player > 4:
				infect "Snow Leopard"; [additional infection from large load]
			now lastmilking is turns + 2; [milked, but faster refresh]
		else if breast size of player < 3:
			say "     Taking in your desirable, feline form, the sexy snowmeow is disappointed by your unimpressive bosom and decides to move his attention lower. He licks his lips as he eyes your pussy, which is growing wetter as the lustful feline's scent arouses you further. And when his raspy tongue slides over your clit, you release a moaning purr that encourages him to continue. Soon, he is working his tongue into your wet puss, lapping up your sweet waters as you quiver with several small orgasms. His paws play and tease your breasts and nipples all the while. Eventually, he gets up and leaves you there, lost in a lustful haze of satisfaction while he licks your juices from his muzzle fur.";
		else:
			say "     Taking in your desirable, feline form, the sexy snowmeow licks his lips as he gazes upon your lovely bosom. Your breasts, having recently been milked, brings forth nothing. The snow leopard is disappointed by this and decides to move his attention lower. He licks his lips as he eyes your pussy, which is growing wetter as the lustful feline's scent arouses you further. And when his raspy tongue slides over your clit, you release a moaning purr that encourages him to continue. Soon, he is working his tongue into your wet puss, lapping up your sweet waters as you quiver with several small orgasms. His paws play and tease your breasts and nipples all the while. Eventually, he gets up and leaves you there, lost in a lustful haze of satisfaction while he licks your juices from his muzzle fur.";
			increase lastmilking by 1;
	else:
		say "[kittycheck]";
		if kittyness is 1:				[Feline body/head, as per High Rise Events]
			say "     Taking in your desirable, feline attributes, the sexy snowmeow spreads your legs and buries his muzzle between them. He licks his lips as he eyes your pussy, which is growing wetter as the lustful feline's scent arouses you further. And when his raspy tongue slides over your clit, you release a moaning purr that encourages him to continue. Soon, he is working his tongue into your wet puss, lapping up your sweet waters as you quiver with several small orgasms. Eventually, he gets up and leaves you there, lost in a lustful haze of satisfaction while he licks your juices from his muzzle fur.";
		else:
			say "     Eager to slake both his lustful and mundane thirsts, the sexy snowmeow spreads your legs and buries his muzzle between them. He licks his lips as he eyes your pussy, which is growing wetter as the lustful feline's scent arouses you further. And when his raspy tongue slides over your clit, you release a moaning purr that encourages him to continue. Soon, he is working his tongue into your wet puss, lapping up your sweet waters as you quiver with several small orgasms. Eventually, he gets up and leaves you there, lost in a lustful haze of satisfaction while he licks your juices from his muzzle fur.";
	increase thirst of player by a random number between 2 and 5;
	increase libido of player by a random number from 3 to 8;
	if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
	if "Cold Fish" is listed in feats of player, decrease libido of player by 2;
	if libido of player > 100, now libido of player is 100;


to say beatthesnowmeow:
	if ( libido of player > 40 or player is dominant ) and ( nosnowmeowsex < 3 or ( nosnowmeowsex > 0 and the remainder after dividing nosnowmeowsex by 5 is 0 ) ):
		say "     The thickly furred feline pants in the heat and staggers back, overheated and unwilling to continue to fight you. He staggers a little as he walks, starting to stumble back into the city. As you watch his alluring, feline body, you debate taking advantage of the poor feline. He certainly looks in no shape to resist you taking advantage of him instead. Tempted, you consider pouncing the kitty before he can get away.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		if cocks of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Top him";
			now sortorder entry is 1;
			now description entry is "screw his fluffy ass";
		choose a blank row in table of fucking options;
		now title entry is "Suck him off";
		now sortorder entry is 2;
		now description entry is "drain the kitty's balls down your throat";
		choose a blank row in table of fucking options;
		now title entry is "Ride him";
		now sortorder entry is 3;
		now description entry is "get that cock of his in you";
		if cunts of player is 0 and player is submissive:
			choose a blank row in table of fucking options;
			now title entry is "Anal doggy-style";
			now sortorder entry is 4;
			now description entry is "let the horny feline mount your ass";
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Let him go[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> ";
			get a number;
			if calcnumber is 0:
				say "     You let the overheated snowmeow leave, instead turning your attention to your own concerns.";
				increase nosnowmeowsex by 1;
				now sextablerun is 1;
			else if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Top him":
						say "[snowmeow_vsex01]";
					else if nam is "Suck him off":
						say "[snowmeow_vsex02]";
					else if nam is "Ride him":
						say "[snowmeow_vsex03]";
					else if nam is "Anal doggy-style":
						say "[snowmeow_vsex04]";
					now nosnowmeowsex is 0;
			else:
				say "Invalid Option. Pick between 0 and [the number of filled rows in the table of fucking options].";
	else if nosnowmeowsex >= 3:
		say "     The thickly furred feline pants in the heat and staggers back, overheated and unwilling to continue to fight you. He staggers a little as he walks, starting to stumble back into the city. As with the others of his kind you've seen, you opt to let the overheated snowmeow leave and instead turn your attention to your own concerns.";
		increase nosnowmeowsex by 1;
	else:
		say "     The thickly furred feline pants in the heat and staggers back, overheated and unwilling to continue to fight you. He staggers a little as he walks, starting to stumble back into the city. You let the overheated snowmeow leave, instead turning your attention to your own concerns.";

to say snowmeow_vsex01:
	say "     Eager to take advantage of the sexy kitty now that the tables have turned, you grab him from behind and press him down. He mewls softly as you pin him down and wrap your fingers around his cock. His shaft is a steely grey and has a slightly pointed, feline shaped glans. Beneath his above-average length are an impressive pair of balls. As more pre dribbles down his throbbing cock, the scent of feline arousal builds, exciting you further. You lick your lips and stroke your throbbing shaft as your eyes are drawn to the fluffy kitty's shapely ass.";
	say "     Having come to your decision, you roll the weakened feline over onto all fours. He whimpers sweetly, but flags his tail and grinds his ass back against your cock. You grin at this and tease him briefly, pressing lightly against his tailhole and letting your pre wet it, but not mounting him yet. He starts to mewl and moan with increasing need until you finally relent, mostly from your own lustful desires, and sink your cock slowly into the tight hole.";
	say "     The tight, warm ass feels wonderful around your cock, and the thick padding of his fur lets you pound away at him good and hard. You reach around to play with his cock and balls, rolling the heavy orbs around in your palm as feline pre dribbles onto the ground. His ass, apparently well practised, squeezes and pulls at your cock each time you thrust into him.";
	say "     Finding him such an enjoyable fuck, you try to hold back and savour it as long as you can. But eventually all good things must come to an end and when the end does come, it is wonderful. You drive yourself deep inside him [if cock length of player > 24]enough to make his belly bulge from your giant cock [else if cock length of player > 12]stuffing your big cock fully into him [end if]and unleash your hot load into his bowels. He murrrowls in lustful satisfaction as you pump your semen into him[if cock width of player > 10], bloating his tummy as you drain your large balls into that tight ass[end if]. His own, heavy balls unleash a sizable load of thick seed onto the ground beneath him as you pump him dry.";
	say "     Done with him, you withdraw and wipe your cock with his fluffy tail before pushing him over into the sticky puddle he's made. He [if cock width of player > 10]rubs his swollen tummy and [end if]laps at the pool of semen, slaking his growing thirst a little with his own cum.";

to say snowmeow_vsex02:
	say "     Eager to take advantage of the sexy kitty now that the tables have turned, you grab him from behind and press him down. He mewls softly as you pin him down and wrap your fingers around his cock. His shaft is a steely grey and has a slightly pointed, feline shaped glans. Beneath his above-average length are an impressive pair of balls. As more pre dribbles down his throbbing cock, the scent of feline arousal builds, exciting you further. You lick your lips and decide you're thirsting for the snow leopard's rich load. You fondle his balls and start sucking at his throbbing member. He moans and thrusts gently into your mouth. Your tongue plays over his long, thick meat as you tease and taste the feline. You work him up slowly, easing back from his peak again and again to ensure you can get all you can from the thirsty kitty.";
	say "     His paws stroke your head and shoulders lightly as he rumbles and purrs happily at all the attention you're giving him, though he does growl weakly in frustration as you keep him from climaxing. Eventually, you decide the poor kitty's had enough. Licking, sucking and fondling him vigorously, you drive him quickly over the edge. His big cock throbs in your mouth, spraying blast after blast of feline seed down your throat. It is very thick and flavourful, a satisfying treat.";
	say "     Drained in more ways than one, the exhausted snowmeow passes out in the shadows of the city to eventually recover. Licking your lips, you find yourself hoping to find more of these sexy kitties to play with in the future.";
	decrease thirst of player by a random number between 4 and 8;
	decrease hunger of player by a random number between 2 and 5;

to say snowmeow_vsex03:
	say "     Eager to take advantage of the sexy kitty now that the tables have turned, you grab him from behind and press him down. He mewls softly as you pin him down and wrap your fingers around his cock. His shaft is a steely grey and has a slightly pointed, feline shaped glans. Beneath his above-average length are an impressive pair of balls. As more pre dribbles down his throbbing cock, the scent of feline arousal builds, exciting you further. You lick your lips in anticipation of having a ride on that hard pole of his.";
	if cunts of player > 0:
		say "     Eyeing that grey cock, close to a foot long, you aim it upwards and straddle the prone feline. With one hand on his chest, more for support than to keep him down at this point, you move into position and get his thick meat lined up [if cunt width of player > 4 and cunt length of player > 10]before slamming yourself down onto him, taking him into your large pussy with ease[else]before lowering yourself down slowly onto his big meat gradually, letting yourself adjust to his girth[end if]. After a few bounces on his cock to find a rhythm that won't let that delicious cock slip free, you slide your hand back to grope his heavy balls. He moans softly and you lick your lips, eager for the equally big load filling them.";
		say "     You take your time with the sexy feline, enjoying every lustful mewl and moan he makes as you tease him while riding that big, feline shaft of his. You have a few small orgasms from your stuffed cunt that soak his thick crotch fur, but you are careful not to let the snowmeow get off too soon and deprive your growing lust from the full load he can produce[if cocks of player > 1]. His soft paws play with your cocks as you ride him, licking his muzzle as he eyes them with a lustful thirst for your cum[else if cocks of player is 1]. His soft paws play with your cock as you ride him, licking his muzzle as he eyes it with a lustful thirst for your cum[end if].";
		if cocks of player > 0:
			say "     As you feel your [if cocks of player > 1]cocks[else]cock[end if] throbbing and your balls churning to overflow, you ride up and down on his big meat, pushing [if cunt width of player > 4 and cunt length of player > 10]the full length down into you and squeezing your inner walls down around it tightly as you climax[else]as much of the large cock into you as you can and squeezing your inner walls down around it tightly as you climax[end if]. This sends your caught lover over the edge and you can feel his large ballsack tighten up as his cock twitches and throbs inside you before unleashing blast after blast of thick, snowmeow cum into your hungry pussy. His ample load flows up into your womb, making your tummy swell with its volume[if cock length of player > 24]. With your lengthy cock within reach, the snow leopard licks and sucks at it, guzzling down your thick cum as you empty your load down his parched throat[else if cocks of player is 1]. Your cock blasts your load across his chest and muzzle and he laps up what he can to slake his lustful thirst a little[else]. Your cocks blast your load across his chest and muzzle and he laps up what he can to slake his lustful thirst a little [end if].[if a random chance of 1 in 2 succeeds][impregchance][end if][impregchance]"; [additional 50% chance of impreg]
		else:
			say "     As you feel your big climax coming, you ride up and down on his big meat, pushing [if cunt width of player > 4 and cunt length of player > 10]the full length down into you and squeezing your inner walls down around it tightly as you climax[else]as much of the large cock into you as you can and squeezing your inner walls down around it tightly as you climax[end if]. This sends your caught lover over the edge and you can feel his large ballsack tighten up as his cock twitches and throbs inside you before unleashing blast after blast of thick, snowmeow cum into your hungry pussy. His ample load flows up into your womb, making your tummy swell with its volume.[if a random chance of 1 in 2 succeeds][impregchance][end if][impregchance]"; [additional 50% chance of impreg]
	else:
		say "     Eyeing that grey cock, weighing in at a good eleven inches, you aim it upwards and straddle the prone feline. With one hand on his chest, more for support than to keep him down at this point, you move into position and get his thick meat lined up with your back door. You let his dribbling precum wet your pucker before slowly easing yourself down onto it. You take it nice and slow, particularly enjoying the weakened kitty's soft mewls and moans as he's unable to pound his cock into you as he clearly desires. As you take more and more of it into your tight rump, you grope and fondle his heavy balls, eager for the equally big load filling them.";
		say "     You take your time with the sexy feline, enjoying every lustful sound he makes as you tease him while riding that big, feline shaft of his. Your cock twitches and dribbles precum as his stiff meat rubs against your prostate so deliciously. Despite the pleasure of such a big kitty filling you, you do your best to hold back and take your time, wanting as much from those big balls as he can give[if cocks of player > 1]. His soft paws play with your cocks as you ride him, licking his muzzle as he eyes them with a lustful thirst for your cum[else if cocks of player is 1]. His soft paws play with your cock as you ride him, licking his muzzle as he eyes it with a lustful thirst for your cum[end if].";
		say "     As you feel your [if cocks of player > 1]cocks[else]cock[end if] throbbing and your balls churning to overflow, you ride up and down on his big meat, pushing the full length down into your stretched ass and squeezing your inner walls down around it tightly as you climax. This sends your caught lover over the edge and you can feel his large ballsack tighten up as his cock twitches and throbs inside you before unleashing blast after blast of thick, snowmeow cum into your bowls. His ample load flows up into your belly, making your tummy swell with its volume[if cock length of player > 24]. With your lengthy cock within reach, the snow leopard licks and sucks at it, guzzling down your thick cum as you empty your load down his parched throat[else if cocks of player is 1]. Your cock blasts your load across his chest and muzzle and he laps up what he can to slake his lustful thirst a little[else]. Your cocks blast your load across his chest and muzzle and he laps up what he can to slake his lustful thirst a little [end if].[if a random chance of 1 in 2 succeeds][impregchance][end if][impregchance]"; [additional 50% chance of impreg]
	say "     When the snow leopard's balls are drained and he passes out, you ease yourself off his softening erection. You smile contentedly as you rub your overfull belly, leaving the spent feline unconscious in the shadows. You finger your [if cunts of player > 0]overfull pussy[else]leaking anus[end if] as his thick cum slowly dribbles out and runs down your thighs. You find yourself looking forward to encountering another of these rare felines to play with in the future.";

to say snowmeow_vsex04:
	say "     The snow leopard provides too tantalizing a prize for you to ignore. Taking advantage of your opportunity that's arisen, you grab him from behind and press him down. Now that he's been properly quelled, you redirect his desires easily enough. Stroking his steely grey cock, you get it erect and drooling precum from its slightly pointed, feline shaped tip. Beneath his above-average length are an impressive pair of balls that you also rub and tease. As the scent of feline arousal builds and he pants with lust, your own excitement builds further. When you move onto all fours and give your ass a meaningful slap, he gives a playful mrowl and mounts you eagerly.";
	say "     The feline's meaty shaft presses into you after a few test thrusts to get lined up. You moan beneath your furry lover as he fucks your tight hole. His thick fur against your back is delightfully soft and the feel of his hot breath panting at your neck speaks of his own growing excitement. Though each throb inside your squeezing bowels and press against your sensitive prostate are quite clear on the matter as well. As his lust runs wild, he pounds into you even harder. And you push back into each of those thrusts, your submissive urges loving the fact that you're getting pounded in the ass by your fallen foe.";
	say "     With a loud mrowl, he buries himself deep inside you and unleashes shot after shot of feline-tainted semen. The lustful feline even reaches around for your [cock of player] cock, stroking you off as he creams your ass. As your orgasm's ending, the snowmeow's grip on your cock waves and his final thrust is quite feeble. With a moaning sigh, his eyes roll back in his head and he topples off of you, collapsing of heat exhaustion with a big grin on his muzzle.[if a random chance of 1 in 2 succeeds][mimpregchance][end if][mimpregchance]"; [additional 50% chance of m-impreg]


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Snow Leopard"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The agile feline slashes at you with his sharp claws![or]The snow leopard tries to bear you down under his weight. You barely scramble free, but are scratched up in the process![or]The snowmeow manages to bite your shoulder![or]The snowmeow knees your firmly in the breadbasket![or]The creature digs his claws into you, but you painfully pull free of its pointy grip![at random]"; [Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthesnowmeow]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetosnowmeow]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[snowmeowdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "feline in form, with leopard-like marking across it"; [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a short, but agile feline. Your hands are paw-like, and your fingers end in sharp claws. Your body does not seem well-suited to the hot weather hanging over the city"; [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "thick, fluffy fur. It is a snowy white and ash grey in colour, with a leopard-like pattern across it. Your thick coat does not help with the southern sun as your pelt warms your"; [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have the thickly furred, luxuriously beautiful tail of a snow leopard."; [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "grey"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "a short muzzle forms and your face takes on a more feline shape. Soon your head is that of a sexy snow leopard"; [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it shifts and changes. You become more feline in form as you become below average in height, about five feet tall. Your hands tingle and throb as they reshape into paw-like hands complete with sharp claws. As you change, you can feel the summer heat of the city bearing down on you even more"; [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain a thick coat of luxurious fur. The lovely snow leopard fur covers you, soft and fluffy. It is very warm as well, you notice, making you notice the city's heat all the more"; [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a fluffy, feline tail forms. It is covered in thick, soft fur and takes on the beautiful pattern of a snow leopard"; [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "takes on an even, grey hue. Your glans shifts shape slightly, becoming something between a man and a feline's in shape"; [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 15;
	now dex entry is 20;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 24;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Red"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 11; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 11; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 6; [ Number of breasts the infection will give a player. ]
	now breast size entry is 7; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 11; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "agile"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


An everyturn rule:
	if bodyname of player is "Snow Leopard":
		increase thirst of player by a random number between 0 and 1;
	if skinname of player is "Snow Leopard":
		increase thirst of player by 1;


when play ends:
	if bodyname of player is "Snow Leopard":
		if humanity of player < 10 and HP of Sven is 54:		[Special: Snow Leopard + Svetlana]
			say "     As the city's oppressive heat beats down on you, you feel the last of your humanity boiling away. You moan in a mix of lust and thirst as you set off into the city, roaming in search of something to wet your throat and slake your lusts. After ravaging a few of those panthers for their milk, you remember another sexy snow leopard and stumble your way to Lisa's Porn Shop. When you come in, Svetlana greets you happily, moaning lustfully under your playful groping all the way to the back room. After a long, wild rut with her pet, Lisa makes sure you get a satisfying drink of her mouse-milk. You become another snowmeow pet for her[if cunts of player > 0] for her to enjoy with her first feline pet[else], using you to mount her first pet, as she has no interest in your fully male body[end if]. Becoming a pet after succumbing leaves you with a rather simple mind, so you have trouble following exactly what your mistress does with her new group of friends, though it is clear that she is someone important. You and Svetlana are always well taken care of and protected. Lisa always makes sure to care for your needs, treating you with loving kindness[if cocks of player > 0]. Svetlana, despite having several other playmates, will only mate with you, letting you breed her exclusively when her heats come[end if].";
		else if humanity of player < 10:
			if HP of Sven is 0 or HP of Sven > 49:
				say "     As the city's oppressive heat beats down on you, you feel the last of your humanity boiling away. You moan in a mix of lust and thirst as you set off into the city, roaming aimlessly in search of something to wet your throat and slake your lusts. After ravaging a few of those panthers for their milk, you stumble across another snow leopard. As a pair of lustful snowmeows, you suck and rut one another before being joined by others. Eventually, your lusts wane enough to focus more on your escape as a cooler evening comes.";
			if HP of Sven > 0 and HP of Sven < 4:
				say "     As the city's oppressive heat beats down on you, you feel the last of your humanity boiling away. You moan in a mix of lust and thirst as you set off into the city, roaming in search of something to wet your throat and slake your lusts. After ravaging a few of those panthers for their milk, you stumble your way to Sven's place. He opens the door readily for you and easily gives in to your arousing, feline body. After a few hours of hot, sweaty sex, his transformation into a sexy snow leopard like you is completed. As a pair of lustful snowmeows, you suck and rut one another before being joined by others. Eventually, your lusts wane enough to focus more on your escape as a cooler evening comes.";
			if HP of Sven > 3 and HP of Sven < 8:
				say "     As the city's oppressive heat beats down on you, you feel the last of your humanity boiling away. You moan in a mix of lust and thirst as you set off into the city, roaming in search of something to wet your throat and slake your lusts. After ravaging a few of those panthers for their milk, you stumble back to the relative coolness of the bunker and to the sexy kitty you know is waiting there for you. Once inside, you rut the kitty until his transformation into a sexy snow leopard is completed. As a pair of lustful snowmeows, you suck and rut one another, venturing out during the night to gather more of your kind to share in the daily orgies in the bunker. Eventually, your lusts wane enough to focus more on your escape as a cooler evening comes.";
			if HP of Sven is 8 or HP of Sven is 9:
				say "     As the city's oppressive heat beats down on you, you feel the last of your humanity boiling away. You moan in a mix of lust and thirst as you set off into the city, roaming in search of something to wet your throat and slake your lusts. After ravaging a few of those panthers for their milk, you stumble back to the relative coolness of the bunker and to the feline pet you have waiting there for you. Once inside, you rut the kitty with mindless lust. As a pair of lustful snowmeows, you suck and rut one another, venturing out during the night to gather more of your kind to share in the daily orgies in the bunker. Eventually, your lusts wane enough to focus more on your escape as a cooler evening comes.";
			if HP of Sven is 10:
				say "     As the city's oppressive heat beats down on you, you feel the last of your humanity boiling away. You moan in a mix of lust and thirst as you set off into the city, roaming in search of something to wet your throat and slake your lusts. After ravaging a few of those panthers for their milk, you stumble back to the relative coolness of the bunker and to the feline pet you have waiting there for you. Once inside, you rut the kitty with mindless lust. As a pair of lustful snowmeows, you suck and rut one another, venturing out during the night to gather more of your kind to share in the daily orgies in the bunker. Candy, who lingered around because of his attachment to both you and Sven, soon joins in on the fun as more and more sexy males join in. Soon there are snowmeows in a myriad of colours among your group. Eventually, your lusts wane enough to focus more on your escape as a cooler evening comes.";
			say "     Together, you seek to leave what feels like a sweltering hellhole and come across a breach in the military's lines made by another leopard-like strain. From the half-transformed soldiers left behind, lost in their lustful urges, it seems you aren't far behind them. Wanting to flee before reinforcements move in to close the gap, you move quickly. Falling upon the partial felines, you and your brethren toss them into a personnel truck you commandeer. As you drive away into the night, you all have an enjoyable trip while completing their transformation into lustful snowmeows.";
			say "     As the day comes, the heat builds and it grows uncomfortable again. Low on gas and unable to fuel up without exposing your weakened group, your band enacts a hasty, clever plan thought up by one of your mates. Using your military truck and a few of your brethren as scouts, you put up an impromptu blockade as a refrigerated milk truck comes along. When the driver stops, your allies are on him quickly and soon the driver is forced to hide the conspicuous felines in his truck[if HP of Sven is not 10]. The clever kitty with the idea gets the pleasure of hiding in the cab and sucking at the driver's cock for the whole ride north into the much cooler mountains. Not that the driver complains much, soon growing to enjoy the lustful snowmeow's attention as he gradually becomes more feline over the course of the trip[else]. Candy eagerly volunteers to ride in the cab to keep an eye on the driver, though mainly by sucking on the driver's cock for the whole ride up into the much cooler mountains. Not that the driver complains at all, overwhelmed by the candy coon's expert blowjobs and gradually becoming more coon-like over the course of the trip. By the time you all reach your destination, he's a sexy coonboi companion for Candy, but in soft, creamy white colours[end if]. The rest of you have a fine trip in cool comfort with the tasty cargo.";
			if HP of Sven is 10:
				say "     Candy and his new playmate don't do as well in the cold of the mountains and head off in the truck to move a little lower in the mountains. They visit from time to time, keeping you up to date on what's happening in the world as their colonies of horny coons spread across the base of the mountains. The visits from the colourful raccoons are always a time of celebration for your people, as they are always willing to rut with the sexy snow leopards. Over the years, your colony spreads slowly across the majestic, snowy mountains, snatching the occasional skier, mountaineer or resident from the remote towns to join your numbers. They are always welcomed quite lustfully, with many hard cocks eager to fill a fresh hole.";
			else:
				say "     Over the years, your colony spreads slowly across the majestic, snowy mountains, snatching the occasional skier, mountaineer or resident from the remote towns to join your numbers. They are always welcomed quite lustfully, with many hard cocks eager to fill a fresh hole.";
		else:
			say "     You manage to survive the city's oppressive heat which feels far too strong for your snow leopard body. The time at the military's holding facility is almost unbearable, hot, muggy and boring. The soldiers are on edge and watch for any signs of those rescued of succumbing further to the infection and so you [if Sven is in the bunker]and Sven [end if]can't slake your lustful thirsts on the myriad cocks, pussies and breasts around you. Eventually, you do manage to convince a young soldier of your need and he makes sure you get more water.";
			say "     During a bad heat wave, he escorts you into the air conditioned buildings, acting as if you're being brought in for more tests. Out of the heat and having had plenty to drink, you can feel another thirst building. With a little coaxing, you [if Sven is in the bunker]and Sven [end if]get the soldier into a bathroom and suck him off, swallowing down his tasty cum. From that point on, [if Sven is in the bunker]you three[else]you and he[end if] sneak off often for a quick blowjob. You grin as you can see some snowy fur appearing around his groin as his cock takes on a lovely, grey tone as your trysts continue[if cunts of player > 0]. As his infection progresses, it takes no coaxing to get him to mount you, driving his cock into your needy pussy[else]. As his infection progresses, it takes no coaxing to get him to bend over for you and be mounted[end if].";
			say "     Of course, you are eventually discovered, but not before he is well on his way into becoming a sexy snow leopard male for you[if Sven is in the bunker and HP of Sven < 8] and Sven completes his transformation into a sexy snowmeow[end if]. It all causes a lot of fuss but, in the end, you are able to remain together and are both treated to become non-infectious. He is disciplined for his dereliction of duty, but remains on staff as he can better mingle with the evacuees.";
			say "     As the camp is broken up, he applies to be reassigned to a post up in northern mountains and you [if Sven is in the bunker]and Sven [end if]join him. He excels at this arctic training facility, better able to cope with the weather and terrain his squad mates and is soon promoted to their leader. You are taken on as part of the staff at the outpost and help administer the various groups coming up for arctic climate training with his men[if Sven is in the bunker]. Sven, acting informally as the team mascot, has a lot of fun living up in the snowy mountains[end if]. As the leader and his team grow close, you [if Sven is in the bunker]three[else]both[end if] often give them little [']rewards['] for their service[if Sven is in the bunker]. Sven, despite his shy act, will frequently sneak into the barracks and grab a nap on a bunk while waiting for the lucky soldier to return to find a playtoy for the night[end if]. And when they start to gradually show signs of snow leopardness setting in, nothing is reported.";

Snow Leopard For FS ends here.
