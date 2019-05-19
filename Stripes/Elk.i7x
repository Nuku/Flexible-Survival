Version 1 of Elk by Stripes begins here.
[Version 1.2 - Relocated to Urban Forest area]

"Adds an Elk creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

noelksex is a number that varies.

when play begins:
	add { "Elk" } to infections of guy;
	add { "Elk" } to infections of furry;

to say elkdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     Facing off against you is a large male creature in the form of an elk. While he stands well over six feet tall, his wide rack makes him seem even larger. He has a strong build to his body, with a powerful chest and broad shoulders. His fur is brown in color, darkening over his head and neck where it is also shaggier. He has a strong, musky scent to him and his cock protrudes several inches from his plump package, showing the male to be in rut. He looks you over briefly, as if sizing you up while waving his rack [if Player is female]in a display to show off its impressiveness[else]menacingly at you[end if]. He releases a bugling call and stomps a hoof before charging forward.";

to say losetoelk:
	now noelksex is 0;
	say "     The big elk knocks you down with a triumphant, bugling call. ";
	if wslevel is 3 and a random chance of 1 in 3 succeeds:
		say "Standing overtop of you, he points his dick up at his own chest, unleashing a short spray of urine onto himself. Some drips down onto you as the scent of his musk grows stronger in the air. He then grabs your head and presses your face into his wet fur, forcing you to breathe in his powerful scent. It fills your senses, making you lose focus and grow increasingly aroused, becoming eager to submit to the rutting male's needs.";
		increase Libido of Player by 8;
	else:
		say "Standing overtop of you, he grabs your head roughly and presses your face to his strong chest, forcing you to breathe in his powerful scent. The musky odor of the elk fills your senses, making you lose focus and grow increasingly aroused. You become eager to submit to the rutting male's needs.";
		increase Libido of Player by 5;
	if Player is female and a random chance of 3 in 4 succeeds:
		say "     In a daze, you don't resist as the strong male pushes you onto all fours and hikes up your ass. With a firm thrust, he drives his thick rod into your [if Cunt Tightness of Player < 4]tight [end if]pussy[if Cunt Depth of Player < 12]. It is difficult to take his enlarged shaft at first, but you press back onto it regardless[else]. Your [cunt size desc of Player] cunt has little difficulty taking the cervine's shaft and you push back into his thrusts[end if], your body lusting for the musky elk. His hands grope and fondle you roughly as he fucks you, focused on his own satisfaction rather than your own, but even that turns you on all the more in your present state. Anything to get the virile male off so you can be seeded and bred by him, your horny body demands.";
		say "     And eventually you get just that as he drives hard into you and unleashes his hot seed[if Cunt Depth of Player < 16]. With his animalistic cock pressed as deep into you as it can go, his seed splashes against your cervix, fluid pressure quickly building until it pushes past that final barrier and pours thickly into your womb[else]. With his animalistic cock buried fully inside you, his seed sprays into you, pooling against your cervix to be drawn into your womb[end if] [if the player is impreg_able]in an attempt to breed you[else]in a failed attempt to breed you[end if]. You moan and cry out, cumming as you feel the rutting male staking his claim on your uterus. Once his balls are drained, he pulls out, [one of]wipes his sticky cock across your ass[or]has you lick it clean[or]smears his sticky cock across your face[at random] and then drives you off before looking for another female to mate.[fimpregchance]";
	else if Player is not female and anallevel > 1 and a random chance of anallevel in 5 succeeds:
		say "     In a daze, you don't resist as the strong male pushes you onto all fours and hikes up your ass. Lacking a pussy for him to breed, the victorious male will be claiming your ass of his would-be rival. With a firm thrust, he drives his thick rod into your [if scalevalue of Player < 3]smaller [end if]body, forcing your puckered hole to spread open for him. In your lustful daze, you press back onto it despite the initial difficulty in taking the cervine shaft. Your body, lusting for the musky elk, submits to the stronger, and therefore more virile, male. His hands grope and fondle you roughly as he fucks you, focused on his own satisfaction rather than your own, but even that turns you on all the more in your present state. Anything to get the virile male off so you can be rutted and seeded by him, your horny body demands.";
		say "     And eventually you get just that as he drives hard into you and unleashes his hot seed. With his animalistic cock buried fully inside your clenching ass, his seed sprays into you, pooling inside your bowels and filling your rear with the heat of his rut[if the player is mpreg_able]. Your fecund ass milks the stud's cock for all it can give, your sex-addled body and mind longing to be bred[end if][if Player is male]. You moan and cry out, cumming as you feel the rutting male staking his claim in your rump with his virile load. Once his balls are drained, he pulls out, [one of]wipes his sticky cock across your ass[or]has you lick it clean[or]smears his sticky cock across your face[at random] and then drives off his defeated rival before looking for a proper female to mate.[mimpregchance]";
	else:
		say "     In a daze, you don't resist as the strong male guides your head down to his throbbing erection. In your present state, the sight and scent of that musky pillar of meat makes your mouth water. You plunge your mouth overtop of it without further prompting and start sucking him off eagerly. The taste of it is strong and arousing, full of virility and strength. You play your tongue along its smooth surface, swallowing down the precum that dribbles from it while the elk thrusts into your mouth with increasing speed. His hands keep a firm grip on your [if Player is male and the player is elkfaced]antlers[else]head[end if] as his fifteen inch cock pushes into your mouth and down your throat.";
		say "     With a loud groan of relief, his penis throbs in your mouth and unleashes blast after blast of cum. His seed, strong and musky like his scent, is thick and plentiful. You gulp it all down, rubbing his ballsack as you do, eager for all he'll give. By the time he's done, your belly is full of his heated load and you are left aroused and unsatisfied. When he drives you off after his own fun is over, your lustful daze continues for some time before your head begins to clear.";
		if Libido of Player < 80, now Libido of Player is ( ( 3 * Libido of Player ) + 80 ) / 4;


to say beattheelk:
	if noelksex > 2:
		say "     Grabbing the elk by the antlers, you press twist your weight to the side, pulling him face first to the ground. As you have done with the other elk, you keep him pinned to the ground for a little while until he gives up and concedes that you've won. Wanting nothing more from him, you send him off to look for a means to slake his lust elsewhere.";
	else:
		say "     Grabbing the elk by the antlers, you press twist your weight to the side, pulling him face first to the ground. After pinning him to the ground for a little while, he gives up and concedes that you've won. Having forced him to submit to you, you consider your options on what to do with the horny male.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Release him";
		now sortorder entry is 99;
		now description entry is "let him go";
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Fuck him";
			now sortorder entry is 1;
			now description entry is "screw him instead";
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Ride him (vaginal)";
			now sortorder entry is 2;
			now description entry is "help him with his rut";
		else:
			choose a blank row in table of fucking options;
			now title entry is "Ride him (anal)";
			now sortorder entry is 2;
			now description entry is "help him with his rut";
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> ";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: Shall you [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Fuck him":
						say "[beattheelk_1]";
					if nam is "Ride him (vaginal)":
						say "[beattheelk_2]";
					if nam is "Ride him (anal)":
						say "[beattheelk_3]";
					if nam is "Release him":
						say "[beattheelk_4]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";


to say beattheelk_1:	[fuck him]
	now noelksex is 0;
	say "     Keeping the defeated elk pinned down, you grab that raised ass of his with one hand and kick his legs apart. He gives a soft bleating sound but does not resist, even flagging his tail up for you. Unsurprised given the circumstances, you grin and give his rump a firm swat as you grind your manhood against it. Feeling that soft pelt squeezed around you by his firm rear gets you even harder. You line yourself up with that pucker and thrust into him, enjoying the lustful low he gives as he's mounted.";
	say "     His big cock sways beneath him as you pound away at his ass, drooling precum onto the ground as you rut with him. His anal walls slide smoothly across your cock, clenching and squeezing around you. It's clear that he's done this before, probably after having lost against other males of the rutting elk herd. Feeling there's little point in keeping him pinned, you release his antlers, leaving your hands free to wander across his sexy body before eventually settling on his groin. The scent of rut hangs heavy in the air as you stroke his fifteen inch cock and those bulging balls of his.";
	say "     When your climax comes, you drive your [cock size desc of Player] [Cock of Player] penis deep inside him and unleash your [Cum Load Size of Player] load into him. He gives a lustful cry as he's rutted and cums as well, splattering large gobs of musky semen onto the ground. You keep going until your balls are drained, at least for the moment[if anallevel is 3 and thirst of Player < 30 and a random chance of 2 in 5 succeeds]. Suddenly feeling the urge to drain something else, you pull out but keep your cock aimed at his creamy asshole. With a chuckle, you piss over the ass you've just finished claiming, adding your musky scent to his. His short tail wags excitedly at this treatment and he makes no attempt to move away even though you're not even touching him anymore[else]. You pull your spent shaft from his creamy ass and then wipe the last traces of your semen onto his rump, adding your musky scent to his[end if]. That done, you give his messy rump a swat and send him on his way.";


to say beattheelk_2:	[ride him - vaginal]
	now noelksex is 0;
	say "     With a firm grip on his antlers, you twist him back around, forcing him over onto his back. He gives a soft bleating sound but does not resist, his erection still hard and dribbling as you eye it with obvious hunger. Taking it in hand, you climb overtop the defeated cervine and aim his enlarged manhood at your cunt. You grind your pussy against it a few times to tantalize yourself before lowering down onto it, enjoying the lustful low he gives as you start to ride him.";
	say "     His big cock pulses and throbs inside you[if Cunt Tightness of Player < 4]. Being a tight fit, you have to take it slow at first, but your body soon adapts enough to cope[end if][if Cunt Depth of Player < 12]. While you can't get it all in despite your best efforts, you have a great time ride as much of it as you can force into your needy cunt[else]. Your [cunt size desc of Player] cunt has little difficulty taking his cervine shaft into you, allowing you to glide up and down its considerable length[end if]. You both end up moaning in pleasure as your vaginal walls squeeze and milk at his impressive rod. The scent of rut hangs heavy in the air and you run your fingers through the thick fur of his chest.";
	say "     When your climax comes, you push yourself down until his animalistic cock [if Cunt Depth of Player < 16]presses as deep into you as it can go. Milked by your cunt to orgasm, his seed splashes against your cervix, fluid pressure building until it pushes past that final barrier and splatters up into your womb[else]is buried fully inside you. Milked by your cunt to orgasm, his seed sprays up and splashes against your cervix to be drawn into your womb[end if] [if the player is impreg_able]in an attempt to breed you[else]in a failed attempt to breed you[end if]. You moan and cry out as the rutting male releases a bugling call, riding him for all he's worth. Once his balls are drained and your own orgasm ends, you pull off his cock and send him on his way, having taken what you need from him.";


to say beattheelk_3:	[ride him - anal]
	now noelksex is 0;
	say "     With a firm grip on his antlers, you twist him back around, forcing him over onto his back. He gives a soft bleating sound but does not resist, his erection still hard and dribbling as you eye it with obvious hunger. Taking it in hand, you climb overtop the defeated cervine and aim his enlarged manhood at your back entrance. You grind your ass against it a few times to tantalize yourself before lowering down onto it, enjoying the lustful low he gives as you start to ride him.";
	say "     His big cock pulses and throbs inside your [if scalevalue of Player < 3]smaller [end if]body as you work your puckered hold to spread open for it. As more and more of it is pushed into you, you become increasingly aroused despite the initial difficulty in taking the cervine shaft. You both end up moaning in pleasure as your anal walls squeeze and milk at his impressive rod[if Cock Count of Player > 1]. Your cocks are stiff and erect, dripping precum onto his fur as he strokes them with his clumsy, hooved hands[else if Cock Count of Player is 1]. Your own cock is stiff and erect, dripping precum onto his fur as he strokes it with his clumsy, hooved hands[end if]. The scent of rut hangs heavy in the air and you run your fingers through the thick fur of his chest.";
	if Player is male:
		say "     When your climax comes, you push yourself down until his animalistic cock is buried fully inside you. Milked by your anus to orgasm, his seed sprays up and pools inside you while his cock pulses against your prostate[if the player is mpreg_able] in an unwitting attempt to breed you[end if]. You moan and cry out as the rutting male releases a bugling call, riding him for all he's worth. Once his balls are drained and your own orgasm ends, you pull off his cock and send him on his way, having taken what you need from him.[mimpregchance]";
	else:
		say "     When his climax comes, you push yourself down until his animalistic cock is buried fully inside you. Milked by your anus as he cums, his seed sprays up and pools inside you, filling you with his heat[if the player is mpreg_able] in an unwitting attempt to breed you[end if]. You moan and cry out as the rutting male releases a bugling call, riding him for all he's worth. Lacking a gender of your own, you still feel some unfocused pleasure as your [bodydesc of Player] body is rutted by the elk stud. Once his balls are drained, you pull off his cock and send him on his way, having taken what you need from him.[mimpregchance]";


to say beattheelk_4:
	say "     Having beaten the elk and forced him to submit, he is easily driven off. He heads off, looking elsewhere for a means to slake his lust.";
	increase noelksex by 1;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Elk"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]big elk[or]cervine creature[or]rutting male[or]wapiti[or]musky male[as decreasingly likely outcomes] [one of]bashes you with a hoof-like hand[or]knees you with a knocks you aside with a swing of his antlers[or]charges you, impaling you with one of his prongs[or]grabs you and twists your arm painfully as he tries to bring you to the ground[or]grabs your head and buries it in the musky scent of his fur, weakening your resolve to resist the studly male[at random].";
	now defeated entry is "[beattheelk]"; [ Text when monster loses. Change 'elk' as above. ]
	now victory entry is "[losetoelk]"; [ Text when monster wins. Change 'elk' as above. ]
	now desc entry is "[elkdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of an elk, with an elongated muzzle and broad, dark nose[if Player is male]. Atop your head is a small rack of antlers that have begun to form[else]. Your muzzle is slender and your features delicate, looking alluring and feminine[end if]";
	now body entry is "something between an elk and a human being [if Player is male]with a strong chest and broad shoulders. You are well over six feet tall and your[else]with a slender, sexily curved body. While by no means petite, you are smaller than the males of your kind. Your[end if] limbs end in darkened, hoof-like hands and feet";
	now skin entry is "brown, darker across the head and neck. The [if Player is male]strong, [end if]musky scent of [if Player is herm]rut and estrus[else if Player is female]estrus[else]unfocused arousal[end if] clings to your";
	now tail entry is "You have a short, brown tail[if Player is female] which flags to show off your needy pussy[end if].";
	now cock entry is "[one of]cervine[or]musky[or]dribbling[at random]";
	now face change entry is "it starts to pulse and throb, bulging in some spots and tightening in others as your whole cranium changes shape. You grow a [if Player is male]broad[else]slender[end if] muzzle with a flat, dark nose. Your ears move to the top corners of your head and form cups, completing your head's transition into that of an elk[if Player is male]. A firm, grinding noise grows louder in your new ears as a small rack of antlers form atop your head[end if]";
	now body change entry is "it becomes difficult to control your limbs. Your hands and feet start changing first, fingers fusing into a hoof-like hand with clumsy digits. The changes progresses up your limbs, changing shape and structure until the transition starts affecting your torso. There, your body becomes [if Player is male]broad-shouldered and muscular[else]slender and sexily curved[end if] with a definite cervine look overall";
	now skin change entry is "random tufts of brown fur start to sprout all over you. These start as just a few hairs, but expand continuously until the whole of you is covered in it";
	now ass change entry is "twinges of transformation focus in on the base of your spine, soon forming a short tuft of a tail";
	now cock change entry is "a rush of arousal fills you. Your manhood pulses and throbs, dribbling precum as it changes shape, becoming quite cervine in form. When the transformation ends, the excitement remains as you long to put your new cock to use";
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 17; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13; [ These values may be used as part of alternate combat.]
	now per entry is 11;
	now int entry is 10;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 53; [ The monster's starting HP. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 6;
	now libido entry is 100; [ Target libido the infection will rise towards. ]
	now loot entry is "elk antler"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 25; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]muscled[or]powerful[or]buff[at random]";
	now type entry is "[one of]cervine[or]elk[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Definitions

Definition: a person is elkfaced:
	if FaceName of Player is "Elk", yes;
	no;

Section 4 - Elk Antler

Table of Game Objects (continued)
name	desc	weight	object
"elk antler"	"A chunk of an elk's antler, probably knocked off during a fight."	2	elk antler

elk antler is a grab object.
the usedesc of elk antler is "[elkantleruse]".
it is part of the player.
It is temporary.

to say elkantleruse:
	say "     Looking over the antler, you feel a strange compulsion that you don't resist[if Player is elkfaced and player is male]. Placing the piece of horn against one of your own antlers, there is a strange, crunchy sound as they fuse together. This is soon followed by the tingle of the nanites spreading through you[else]. Placing the piece of horn against the side of your head, there is a strange, crunching sound as they fuse together. You can feel the bony chunk sinking into you even as the tingles of nanites begin[end if].";
	setmonster "Elk";
	choose row MonsterID from the Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	infect;

the scent of elk antler is "It has a strong, musky scent.".

Section 5 - Endings

[
when play ends:
	if BodyName of Player is "Elk":
		if humanity of Player < 10:
			say "     You succumb to your elk infection.";
		else:
			say "     You survive, but were infected by the elk.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Elk ends here.
