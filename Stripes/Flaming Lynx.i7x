Version 1 of Flaming Lynx by Stripes begins here.
[Version 1.5 - Alternate submit/submissive version for player loss anal]

"Adds a Flaming Lynx creature to Flexible Survival's Wandering Monsters table"

[NOTE: This was a commissioned creature with the specific request that it only be available for M/M type fun, so this characteristic should not be changed.]

Section 1 - Creature Responses

when play begins:
	add { "Flaming Lynx" } to infections of guy;
	add { "Flaming Lynx" } to infections of furry;
	add { "Flaming Lynx" } to infections of Felinelist; [list of feline infections]

to say flaminglynxdesc:
	setmongender 3; [creature is male]
	say "     Before you is an oversized lynx-like creature that is vibrantly visible even in these dark, underground tunnels. This strange animal is roughly the size of a large dog or wolf and covered in rippling flames. These short flames flicker across its furred body with an occasional rainbow sheen to them without harm to the large feline. The coat itself is a blend of reds, yellows and oranges with charcoal black markings mixed in. The flames are stronger at the lynx's characteristic cheek ruffs and across the tufts atop its ears as well as the tip of its short tail. Beneath the creature's belly you can see the hanging bulge of his sheath and balls. He growls softly and pads closer to you, the lamplight fire around its body swelling to full flames.";

to say flaminglynxattack:
	let randomtarget be "[one of]ankle[or]leg[or]thigh[or]rear[or]forearm[or]wrist[or]arm[or]side[or]belly[at random]";
	say "The [one of]fiery creature strikes at you with one of his paws[or]large lynx growls and bites your [randomtarget][or]flaming lynx tries to tackle you with his body as his flames surge higher[or]feral feline slashes at you with his claws, digging them into your [randomtarget][or]flames across the creature's back rise higher moments before a wave of fire blasts into you[at random]!";


to say losetoflaminglynx:
	choose row MonsterID from the Table of Random Critters;
	say "     The fiery feline growls sends the surging flames from its body across the ground, scorching the slimy tunnel floor into soot. As the flames subside to a faint glow across his fur like lamplight, he gives you a final cuff with one large paw, knocking you down onto the blackened patch. He sniffs at you and nuzzles along your body. For a moment, you think those flames will burn, but they are only pleasantly warm now - a warmth that you begin to find strangely soothing and you run a hand across his side, cautiously petting the wild feline. His fur doesn't quite feel like normal fur, though you'd be hard pressed to express what makes it different, as it is still soft and yielding.";
	let lynxfun be 0;
	if Player is purefemale:			[Female - unwanted]
		say "     The flaming lynx sniffs down your [bodydesc of Player] body before growling in disdain upon noticing your cunt moments later. He gives you a final, heavy smack with his paw before his flames surge up again, washing all over you. The fire seems to sink into your [bodytype of Player] body, seeking to burn away that which is unwanted.";
		decrease HP of Player by wdam entry;
		decrease humanity of Player by a random number between 2 and 4;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
	else if Player is herm:		[Herm - fellatio/unwanted]
		say "     The flaming lynx sniffs down your [bodydesc of Player] body [if Player is male]and gives a faint rumble of pleasure as he finds your cock [end if]before growling in disdain upon noticing your cunt moments later.";
		let fllynxanal be 0;
		if anallevel is 3, increase fllynxanal by 2;
		if Player is mpreg_ok, increase fllynxanal by 2;
		if a random chance of fllynxanal in 7 succeeds:
			let lynxfun be 1;
		else if a random chance of 2 in 5 succeeds:	[40% force oral]
			let lynxfun be 2;
		else if a random chance of 2 in 3 succeeds:	[40% take oral]
			let lynxfun be 3;
		else:								[20% dismissed]
			say "     He gives you a final, heavy smack with his paw before his flames surge up again, washing all over you. The fire seems to sink into your [bodytype of Player] body, seeking to burn away that which is unwanted.";
			decrease HP of Player by wdam entry;
			decrease humanity of Player by a random number between 2 and 4;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
	else if Player is male:						[Male]
		say "     The flaming lynx sniffs down your [bodydesc of Player] body and purrs in pleasure as he finds your cock. Another wave of colors washing across his fiery back";
		let fllynxanal be 3;
		if anallevel is 3, increase fllynxanal by 1;
		if Player is mpreg_ok, increase fllynxanal by 1;
		if anallevel is 1, decrease fllynxanal by 2;
		if a random chance of fllynxanal in 7 succeeds:
			let lynxfun be 1;
		else if a random chance of 1 in 2 succeeds:
			let lynxfun be 2;
		else:
			let lynxfun be 3;
	else:										[Neuter - confused]
		say "     The flaming lynx sniffs down your [bodydesc of Player] body and mewls in confusion upon reaching your bare groin. ";
		let fllynxanal be 3;
		if anallevel is 3, increase fllynxanal by 1;
		if Player is mpreg_ok, increase fllynxanal by 1;
		if anallevel is 1, decrease fllynxanal by 2;
		if a random chance of fllynxanal in 7 succeeds:
			let lynxfun be 1;
		else if a random chance of 3 in 5 succeeds:
			let lynxfun be 2;
		else:
			say "     He gives you a final, heavy smack with his paw before his flames surge up again, washing all over you. The fire seems to sink into your [bodytype of Player] body, seeking to fill the void and make you more amenable to his tastes.";
			decrease HP of Player by wdam entry;
			decrease humanity of Player by a random number between 2 and 4;
			if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
			if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
	if lynxfun is 1:				[anal selected]
		if ( HP of Player > 0 or the player is submissive ) and a random chance of 1 in 2 succeeds:
			say "     He paws over you, nuzzling along your side with a chuff[if Player is submissive]. Your submissive tendencies kick in and you grow increasingly aroused, moaning softly with desire[else]. Already having submitted to him, you see no point in resisting now[end if]. Knowing what he wants, you divest yourself of your gear and move onto all fours. Nuzzling between your cheeks, he [if Player is female]steers clear of your feminine entrance and instead [end if]licks across your crinkled hole. A sensual rush of excitement flows into you from that warm tongue and you grind back into his licking.";
			say "     After a few more licks, he moves onto the main event and mounts you with an animalistic rumble. Having prepped you, his feline shaft slips into you with ease. You moan as the pleasant warmth of his body that you've been enjoying atop you can now be felt warming your insides as well, filling you with greater pleasure and arousing you greatly. Grinding your hips back into his thrusts entices him to fuck you more zealously. Your [if the player is submissive]submissive desires[else]lustful body[end if] revels in this as his stimulating barbs feel delightful along your sensitive anal passage[if Player is male] and the press of his thrusts against your prostate make your cock twitch[end if].";
			say "     The feline keeps a large paw on your shoulders as he pounds away at your back door. You squeeze your anal muscles and shift your hips, rocking along and gripping around his pulsing meat as he buggers you. You do your best to please the virile beast, longing to feel his release. And when it does come, the enlarged lynx nips down on your shoulder firmly[if the player is submissive], sending another shiver of delight through you[end if] as his deliciously hot seed surges into you. Blast after blast from him fills you with a rush of sexual excitement that culminates in [if Player is male]your own orgasm that sends your [Cum Load Size of Player] load shooting forth from your twitching rod[else]an unfocused wave of sensual warmth rushing through you[end if]. Once he's finished, he eases himself off you and slides his spent shaft from your sticky and leaking hole. He pads around you, nuzzling and purring like a big pussycat before strutting off. The warm pleasure radiating from your filled rectum lingers inside you for quite some time, a pleasant reminder of your kinky encounter.[mimpregchance]";
		else:
			say "     He paws at your clothes and gear, forcing you to divest yourself of them lest they be damaged by his claws. The large feline then pounces atop you, grinding his stiff cock against your ass and leaking hot slick precum between your cheeks. [if Player is female]Ignoring your available pussy, h[else]H[end if]e shifts his weight and presses his shaft against your anal sphincter before pushing the slick rod into your tight bottom. You moan as the pleasant warmth of his body that you've been enjoying atop you can now be felt warming your insides as well, filling you with greater pleasure and arousing you greatly.";
			say "     The feline purrs and rumbles as he buggers you with obvious delight and your body can't help but respond in kind, finding the perverse animal mating to be extremely pleasant. His feline shaft with its stimulating barbs feel delightful along your sensitive anal passage[if Player is male] and the press of his thrusts against your prostate make your cock twitch[end if]. The feline keeps a large paw on your shoulders, keeping your front end presses to the ground as he rides your tight ass until he cums. As his deliciously hot seed surges into you, a rush of sexual excitement fills you as well[if Player is male] and you cum hard, blasting your load across the ground beneath you[end if]. Once he's finished, he pulls out carefully from your freshly creamed bottom and pads around to nuzzle you with a purr before padding off. Still awash in pleasure from your encounter, it takes you a moment to realize you're still kneeling there with your ass in the air.[mimpregchance]";
	else if lynxfun is 2:		[forces oral]
		say "     He pushes you down again and moves to grind his firm sheath and hot balls against your face. His loins are even warmer than the rest of him and their heat makes you more excited. Even as his penis starts to slide from its sheath, you lick at that red, pointed cock.";
		say "     He rumbles and purrs in pleasure as you accept his advances and are soon sucking on his cock. You moan around his shaft as the pleasant warmth you've been feeling from his body can now be felt flowing into your belly as his precum flows throat. The taste of the lynx's pre is delicious and makes you hunger for more. You rub and caress the feral cat's ballsack while he thrusts into your willing mouth until he cums. His cum, even warmer and more delicious than his pre, fills your mouth and flows down your throat to pool in your belly, filling you with this fabulous feline's heat[if Player is male]. Feeling greatly aroused, you can't help but grab hold of your own cock and pump yourself to a powerful climax, spraying your load across yourself[end if]. The feline, finished with you, slides his spent shaft from your mouth and nuzzles you with a purr before padding off. Still awash in pleasure, you lie there for a while and enjoy the hot and full feeling coming from your bellyful of semen.";
	else if lynxfun is 3:		[gives oral]
		say "     He paws at your clothes and gear, forcing you to divest yourself of them lest they be damaged by his claws. Once he's gotten any obstructions away from your loins, he nuzzles at your cock and starts licking over it with his rough, warm tongue. You moan in response, the heat from his breath and sliding tongue exciting you further until you're fully hard and the feline is licking and sucking on your cock eagerly[if Player is female]. He pays your pussy no mind, his attention clearly focused on your maleness[end if].";
		say "     Bringing your hands to the lustful feline's head, you run your carefully over his fiery head, which happily doesn't burn you. You can feel the gentle flickering of the flames against your fingers and the warmth from the fire, but it only feels warm and not burning hot. You start thrusting up into the feline's muzzle while stroking its ears and running your fingers through its fur. It purrs all the more, which adds a pleasant rumbling sensation through your loins that soon has you cumming hard down the lynx's throat as you feed him your creamy load until your balls are drained. His tasty meal over, the flaming lynx licks his muzzle and nuzzles you before padding away, his flames brighter and more vibrant than when he arrived. You flop back onto the ground, panting softly as you feel the delightful warmth from your encounter slowly fading from you.";


to say beattheflaminglynx:
	let lynxfun be 0;
	if Player is male:
		say "     Beaten, the fiery feline's flames die down, going low as the lynx mewls in pain. He turns around and raises his hindquarters and flags his short tail, exposing his rump and tight tailhole to you, submitting to the victor. He releases a soft mewl, this time with more longing to it as a ripple of rainbow-colored flames run across his body as he lowers his forequarters to further display his waiting hole. You find yourself momentarily considering taking this strange feline up on his offer. ";
		if Player is female:
			say "     Would you like to [link]mount the flaming cat (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], relieve your [link]female needs (3)[as]3[end link] with the vibrant kitty, have him [link]fuck your ass (4)[as]4[end link] or [link]let him go (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 4:
				say "Choice? (0-4)>";
				get a number;
			if calcnumber is 1:
				now lynxfun is 1;
			else if calcnumber is 2:
				now lynxfun is 2;
			else if calcnumber is 3:
				say "     As you reach for the feline with one hand and slide your other to tease as your wet pussy in anticipation of getting him to scratch your female itch, he hisses and leaps away. His flames surge in a burst as he runs, leaving a streak of flames behind as he rockets off at surprising speed down the dark tunnels. The flames fade quickly, thankfully doing no more damage than a scorchmark.";
			else if calcnumber is 4:
				now lynxfun is 4;
			else:
				now lynxfun is 3;
		else:
			say "     Would you like to [link]mount the flaming cat (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], have him [link]fuck your ass (3)[as]3[end link] or [link]let him go (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 3:
				say "Choice? (0-3)>";
				get a number;
			if calcnumber is 1:
				now lynxfun is 1;
			else if calcnumber is 2:
				now lynxfun is 2;
			else if calcnumber is 3:
				now lynxfun is 4;
			else:
				now lynxfun is 3;
	else:
		say "     Beaten, the fiery feline slinks back a few steps before turning around and running. His flames surge in a burst as he runs, leaving a streak of flames behind as he rockets off at surprising speed down the dark tunnels. The flames fade quickly, thankfully doing no more damage than a scorchmark.";
	if lynxfun is 1:
		say "     Deciding to take the exotic feline up on its offer, you grab his firm rear in your hands and knead it. His fur is merely warm and his flames are no longer scorching. He gives a needy mewl as you tease your thumb at his tailhole, finding it easily spreading open for you. With the kitty ready and willing to be mounted, you don't waste any more time and press your cock to his pucker, easing yourself into his feline body. His tight hole is delightfully warm, making your hard rod pulse with eagerness[if Cock Length of Player > 24]. He seems particularly pleased with your massive endowment and yowls lustfully and eagerly[else if Cock Length of Player > 12]. Your large cock fills the feline's tight bottom, making him yowl lustfully[end if]. You start thrusting into him, watching the lustful animal pant and mewl in pleasure with every thrust you make into him. Given the feline's disposition, it's clear he's done this before and is more than happy to do it again. His inner muscles squeeze around your cock, rubbing his silky smooth walls against you and milking at your shaft almost as if a hand were stroking you off.";
		say "     Clearly built for this kind of fun, the lustful lynx digs his claws into the floor and pushes back harder, which you happily oblige by pounding into him harder. When he cums and his inner walls clamp down around you in a flurry of motion, you are set off as well, blasting your seed into him in heavy bursts. He rumbles and purrs as you fill his bowels with your cum[if Ball Size of Player > 6], loading the flaming feline's belly down with your ample sperm[else if Ball Size of Player > 5], stuffing the flaming feline's belly with your sizeable load[end if]. His flames ripple with another shimmer of colors and grow brighter. Once he's been fueled up with your semen, you release him and let him head off, his flames brighter and more colorful than they were when he arrived.";
	else if lynxfun is 2:
		say "     Not interested in mounting the kitty, but still wanting some fun, you give his rear a swat and take him by the scruff of the neck. His fur is merely warm and his flames are no longer scorching. You drag the flaming feline's head around, pressing his muzzle to your cock[smn], which he starts licking at without hesitation. You scritch the kitty's ears and press his muzzle forward, sinking your cock into his mouth. His maw is delightfully warm, making your hard rod pulse with eagerness. You start thrusting into him with his rough, feline tongue slides across your sensitive flesh. Given the feline's disposition, it's clear he's done this before and is more than happy to do it again[if Cock Length of Player > 12], working the full length of your [cock size desc of Player] cock into his muzzle and down his throat. His slick muzzle and eager tongue massage at your manmeat[end if], giving you a wonderful blow job that has you cum with a loud groan in the end. He swallows down all you can give, rumbling and purring as he does[if Ball Size of Player > 6], loading the flaming feline's belly down with your ample sperm[else if Ball Size of Player > 5], stuffing the flaming feline's belly with your sizeable load[end if]. His flames ripple with another shimmer of colors and grow brighter. Once he's been fueled up with your semen, you release him and let him head off, his flames brighter and more colorful than they were when he arrived.";
	else if lynxfun is 3:
		say "     You shake your head at the eager kitty and give his rear a swat to send him on his way. He gives a disappointed mewl and pads off down the tunnels. The light from his presence gradually fades as he heads off down tunnels until he's out of sight completely, leaving you once more in the dark save for your own light source.";
	else if lynxfun is 4:
		say "     Still wanting to get the flaming lynx's cock in your ass, but just on your own terms, you grab the horny kitty and push him over. His fur is merely warm and his flames are no longer scorching. Taking a hold of his stiff member, you stroke it to full erection and spread his pre along it as it dribbles down over your fingers. Once you've gotten him nice and slick, you straddle the oversized feline and bring your hips into position[if Player is female]. He seems briefly worried and eyes your cunt[sfn] warily, but is relieved when it is your asshole you press against his pulsing shaft[else]. He mrowls and ripples with color as you press his pulsing shaft to your asshole[end if].";
		say "     You moan softly as you push down onto him, his slick shaft sliding into your tight bottom and filling you nicely. His fur gives another ripple of color as you stroke his tummy and scritch his ears while riding him. Warmth begins to suffuse into you from your stuffed ass, increasing your pleasure and arousing you greatly. The feline's paws twitch in the air, trying in vain to find purchase to fuck you harder, but you're setting the pace and work to ensure your own enjoyment foremost. Regardless of his instincts wanting him to be mounting you, he's still quite happy being ridden like this, if his rumbling purr is to be an accurate sign.";
		say "     You have a very enjoyable time riding the animalistic mutant, squeeze down on his feline shaft and working it to rub at all your most sensitive spots just the way you like it. When you finally cum and splatter your seed across his fur, his flames seem to surge and ripple with a rainbow excitement. His shaft pulses and throbs in you as this rush of energy sends him over the edge, the heat filling you as he cums, sending shot after shot of deliciously hot semen into your bowels. You wait until you're both done before easing off of the flaming lynx and letting him up. His flames seem more vibrant and colorful after your fun and he dashes off while purring loudly.[mimpregchance]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Flaming Lynx"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[flaminglynxattack]";
	now defeated entry is "[beattheflaminglynx]"; [ Text when monster loses. ]
	now victory entry is "[losetoflaminglynx]"; [ Text when monster wins. ]
	now desc entry is "[flaminglynxdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a lynx with tufted ears and a sizeable cheekruff of fluffy fur";
	now body entry is "transformed into that of a quadrupedal feline. You have the stocky build of a lynx, but expanded to roughly the size of a wolf or large dog. Your hands and feet have become large, padded paws hiding sharp claws";
	now skin entry is "[one of]flaming fur[or]fiery fur[or]flame-colored fur[at random]";
	now tail entry is "You have short, lynx-like tail with a flaming tip.";
	now cock entry is "[one of]red[or]feline[at random]";
	now face change entry is "a feline muzzle and whiskers form on your face. You can't help but yowl as your head reshapes itself into that of a lynx";
	now body change entry is "your posture changes to one that prefers walking on all fours, though you manage to retain the ability to walk upright with some effort for now. Your body reshapes itself to become one of a strong, stocky feline with large, padded paws";
	now skin change entry is "you heat seems to pour from your body, making the air around you ripple. A coat of fluffy fur spreads across your body in a mix of reds, oranges and yellows marked by charcoal black in the pattern of a lynx. As the last of this fur grows in the heat grows further and small flames begin to flicker across your furry coat";
	now ass change entry is "you gain a short lynx tail with red fur and a flaming tip"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it gains a sheath and takes on a redder hue with a feline shape to it";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 20; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 9; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Mall"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]stocky[purely at random]";
	now type entry is "[one of]feline[or]lynx[purely at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "firebreath"; [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Endings

when play ends:
	if BodyName of Player is "Flaming Lynx":
		if humanity of Player < 10:
			if Player is male:
				say "     As your mind falls into a constant cycle of depravity, you find yourself eagerly returning to the sewers where you faintly recall another flaming kitty waiting for you. Happily pouncing on the other fiery feline, once you find the beacon of his shimmering form glowing hot within the darkness of the underground passageways, you spend the next several hours reacquainting yourself with the flaming feline - nuzzling, licking, grooming and passionately fucking the other, allowing yourself to be mounted in turn once your low hanging orbs have become empty, before settling down to take a pleasant catnap next to your new companion[if Player is female]. In the days to come you find yourself ignoring your feline twat, as your new companion seems to almost completely disregard that part of you[end if].";
				say "     You and your companion subsist on the lingering natural gas in the city's pipes for your flames, though your passions for male sex also fuels your fiery pelts. When the soldiers comes in to clean up the city, you and your companion use the sewer system to circumvent most of them. Once at the edge of the city, you blaze through the military's blockades, literally setting many of the barriers on fire, before you and your new friend head out into the bright unknown world together.";
			else if Player is female:
				say "     As your mind falls into a constant cycle of depravity, you find yourself unsure of where to go next. With your feline twat nestled deep between your legs, you instinctively know that you would not be welcomed among your new flaming feline family. Lacking any proper direction of your own, you find yourself settling into hiding out at a gas station with a few motorized mutants. In trade for your companionship, you share in their supply of gasoline to [if Player is fireskinned]fuel your fiery hide[else]stoke your inner fires[end if]. By the time the military forces come through the city, you've descended fully into your role as the animal pet for the others living there - going around on all fours, guarding their territory around the gas station and getting fucked by their pistoning rods.";
			else:
				say "***Neuter ending needed.";
		else:
			if the player is fireskinned:
				say "     Having retained your sense of identity until the military arrives, you find yourself being quarantined by your rescuers. As scientist from all over try to figure out how you're able to constantly retain the flames along your body without being burned or burning everything around you, you are subjected to a battery of tests. Finding yourself bored with being poked and prodded, you spend your time teasing some of the military men who have been giving you several questioning looks.";
				say "     The most eager of the soldiers on duty find a way to 'help' you relieve some of the stress of being confined inside of the quarantine facility by showing you to the staff room when no one is on duty. Suffice it to say, military boys definitely know how to throw a good fuck around[if Player is herm]. Your dual gendered body seems draws forth a lot of excitement from the military men, and women, as both sexes find pleasure in your flaming feline form[end if].";
				say "     Once you're been given an anti-infection injection, you are cleared to leave and happily make your way out of the stuffy facility, but not before being given several numbers to call for work in the military's R&D program. It seems that RSX is quite eager to try and find a new, reusable form of energy to help society get back on its feet. You debate with yourself for a while before you decide what to do with the numbers.";
			else:
				say "     Having retained your sense of identity until the military arrives, you find yourself detained like so many others while the survivors are processed. It seems your form is unique among those rescued from the city and so is subject to additional testing. You are questioned about the creature that infected you, though you can give little in the way of answers. Eventually, you are released and left to find a place for yourself in this new world. Able to endure heat better than most, you get employment in a foundry which works to recycle the large amounts of metal trash left behind into fresh materials for reconstruction.";
				if Player is not neuter and charisma of Player > 14:
					say "     You become quite popular among the staff, taking on the unofficial role of company mascot. Breaktime often involves one or more of your fellow employees slaking their fiery lusts upon you after several hours working the smelters and forges[if the player is impreg_ok]. You bear many offspring from your coworkers, often having no idea whose child you're having at any given time. Many of your children grow up to join the company, working alongside you - both at the job and in the break room, further expanding the company's workforce as they become pregnant as well[end if].";


Flaming Lynx ends here.
