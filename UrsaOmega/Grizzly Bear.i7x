Version 1 of Grizzly Bear by UrsaOmega begins here.
[Version 1.1 - Added player loss anal and oral endings w/being cum on - Stripes]

"Adds a Grizzly Bear creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

when play begins:
	add { "Grizzly Bear" } to infections of guy;
	add { "Grizzly Bear" } to infections of furry;

to say grizzlydesc:
	setmongender 3; [creature is male]
	say "     A large bear-man stands before you. His large stature and shaggy brown fur seem to paint him as a grizzly bear. Except for his fur, he's only wearing a ragged pair of pants, the holes in which allow some short glimpses at a thick furred sheath and hefty balls hanging between his legs. A thick ursine cock peeks out just a little from the sheath. 'Ah! Another upstart cub!' he growls. 'It's been a while since I've had some fun!'";
	say "     Suddenly, he charges at you! It's a fight!";

to say losetogrizzly:
	let bearanal be anallevel - 1;
	if Player is female and a random chance of 1 in 3 succeeds:
		say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' Raising your hips up with one paw while guiding his cock to your moist, [cunt size desc of Player] pussy with the other. ";
		if Cunt Tightness of Player < 3:
			say "His thick cock stretches your lips open as you struggle to accommodate his substantial man-meat. With a grunt on his part and a moan from you he bottoms out inside you, his balls resting against your rear.";
		else:
			say "His thick cock spears your womanly folds with ease, smoothly sliding his shaft into your cunt with an approving grunt.";
		say "     He begins sliding his cock in and out of your vagina, each thrust ending in the resounding slap of flesh on flesh. As both your climaxes grow closer, he leans over your back, fucking you deep and hard with his large ursine shaft. One of his thrusts hits you just right and you're crying out in pleasure as you cum around his length. Your muscular contractions milk up and down his length and then with a growl he's thrust all the way in your cunt and is cumming deep inside you. When he finishes his orgasm he pulls out of you, rubs his cock clean on your rear, and leaves you twitching on the ground, bear cum dripping from your abused cunt.[impregchance]";
	else if Player is male and a random chance of bearanal in 3 succeeds:
		say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' Raising your hips up with one paw while guiding his cock to your puckered anus. He rubs his glans against the entrance to your back passage, his pre dribbling from the tip and into the cleft of your ass. 'Heh... tight li'l cub...' he grumbles, before beginning to force his way into your rectum. You gasp as he slips past your muscled ring and sheathes his entire length inside you in one firm thrust.";
		if a random chance of 2 in 3 succeeds or player is mpreg_able:
			say "     He begins to slide back and forth within you, his sizable cock pressing at your prostate in all the right ways. Before long, he's leaning over your back, penetrating you with long, deep ball-slapping thrusts. One thrust rubs your prostate just right and you're yelling out in orgasm, your [cock size desc of Player] [cock of Player] cock spurting your submissive seed over the ground. Your rippling anal contractions cause the rutting bear above you to groan and shoot his ursine seed deep in your guts, pulling out for the last few spurts to paint your backside white. He wipes his cock clean on your rear and leaves you twitching on the ground, bear cum dripping from your messy asshole.[mimpregchance]";
		else:
			say "     He begins to slide back and forth within you, his sizable cock pressing at your prostate in all the right ways. Before long, he's leaning over your back, penetrating you with long, deep ball-slapping thrusts. One thrust rubs your prostate just right and you're yelling out in orgasm, your [cock size desc of Player] [cock of Player] cock spurting your submissive seed over the ground. The big ursine chuckles at this and pulls out roughly, rolling you over onto your back even as you're still cumming. Those splatters of your own seed are soon added to and covered by the big ursine's own semen as he cums across your belly and groin. You run your hands through it, rubbing the bear stud's cum across your loins and into your skin, enjoying smelling of the strong grizzly. He chuckles and leaves you on the ground like that, a messy example of what happens to those who cross him.";
	else:
		say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. Grinning at your weakened state he walks up to your front, one paw slowly stroking up and down his sizable bear dick. Reaching out with a large, bearlike paw, he grabs the back of your head and pulls it in to his groin. 'You know what to do, cub,' he growls, rubbing his cock against your face. Your nose fills with the musky scent of male bear, [if Player is male]your cock becoming rock-hard, [end if][if Player is female]your cunt moistening with need, [end if]and your head starts to spin a bit. You eagerly lick up and down the ursine shaft. You even duck down to his ballsack, juggling his testicles a bit with your tongue before returning to lapping at his shaft.";
		if a random chance of 2 in 3 succeeds:
			say "     The grizzly interrupts you, grunting 'That's enough, cub, now it's time for the main event!' and gripping both sides of your head. Without ceremony, he pulls your mouth down on his cock, groaning as your mouth envelops his cock. He guides your head up and down his shaft, the salty taste of his precum filling your mouth. Just as you get comfortable sucking his cock, his thrusts get more forceful, pushing his cock down your throat. You suppress your gag reflex as he begins face-fucking you, his hefty ballsack slapping against your [facename of Player] face. You hear the grizzly growl above you and feel his shaft pulse in your throat before you feel him pour hot bearcum down your gullet. He starts pulling out as he cums, filling your mouth with his strong-tasting seed and finally painting your face with the last few spurts of grizzly cum. 'Not bad, cub. We should do this more often,' he says before walking off, leaving you to clean yourself up.";
		else:
			say "     The grizzly interrupts you, grunting 'That's enough, cub, now it's time for the main event!' and gripping both sides of your head. Without ceremony, he pulls your mouth down on his cock, groaning as your mouth envelops his cock. He guides your head up and down his shaft, the salty taste of his precum filling your mouth. After a few minutes of this, you feel his cock pulse and throb in your mouth. Pushing your head off his cock with one paw, he grabs it in the other and pumps his meat frantically. With a growl, he cums hard, splattering his thick, musky load across your [facename of Player] face. You're marked with sticky bearcum that covers your face and drips down onto your chest. The scent of it is strong and you can't help yourself from licking up as much of it as you can get. The big ursine chuckles at this. 'That's a good, eager cub. Lick it all up and come back for more later,' he says before trundling off with a rumbling chuckle.";


to say beatthegrizzly:
	say "     The grizzly collapses before you, breathing heavily from your fight. You can see the grizzly's ursine cock peeking out of his furry sheath - it looks like he's up for some more fun. Do you take advantage of the big bear?";
	if Player is herm:
		say "     Would you like to [link]mount the grizzly's ass (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], take him [link]in your pussy (3)[as]3[end link], take him [link]in your ass (4)[as]4[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 4:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[gbeargiveanal]";
		else if calcnumber is 2:
			say "[gbeargetsucked]";
		else if calcnumber is 3:
			say "[gbearridevag]";
		else if calcnumber is 4:
			say "[gbearrideanal]";
		else:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	else if Player is female:
		say "     Would you like to take him [link]in your pussy (1)[as]1[end link], take him [link]in your ass (2)[as]2[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[gbearridevag]";
		else if calcnumber is 2:
			say "[gbearrideanal]";
		else:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	else if Player is male:
		say "     Would you like to [link]mount the grizzly's ass (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], take him [link]in your ass (3)[as]3[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[gbeargiveanal]";
		else if calcnumber is 2:
			say "[gbeargetsucked]";
		else if calcnumber is 3:
			say "[gbearrideanal]";
		else:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	else:		[neuter loss needed? - adjust some possible scenes]
		say "     You briefly taking advantage of the fallen bruin, but decide in the end against it due to your own lack of gender.";

to say gbeargiveanal:
	say "     With some effort, you roll the grizzly over and raise his hips up so his ass is sticking up in the air. You admire the bear's anus, currently twitching in anticipation, tucked under his stubby bear tail. You press a finger against his muscular ring and push inward. Surprisingly, it slips in with very little effort - this bear doesn't seem to be new to being mounted. You add two more fingers, testing his flexibility with deep, scissoring strokes. The grizzly gives a manly grunt as you do, his hardening length quickly slipping from his sheath. With your preparations complete, you move behind him, gripping his hips and lining your cock up with his tailhole. You hilt yourself inside his rectum in one firm thrust, gasping as you feel his hot, muscular anal cavity envelop your [cock size desc of Player] [cock of Player] cock.";
	say "     You by making slow, deep strokes in and out of his ass, relishing the feeling of your ursine ass-slut clenching down on your cock as you pull back before driving yourself back in with a ball-slapping thrust. The grizzly begs you (between pants and moans) to fuck him harder, and you comply by increasing the frequency and depth of your thrusts. This redoubled anal assault is too much for your bottom bear, who starts shooting grizzly cum over the ground. The orgasmic contractions of his ass send you over the edge as well, and you start filling the bear's ass with your seed. You pull out and shoot the last of your load over his backside before stepping back to admire your handiwork. Satisfied, you get dressed and leave the bear in a pool of cum.";

to say gbeargetsucked:
	say "     You walk up to the grizzly, your cock hardening at the thought of taking his muzzle. You push his muzzle into your groin, rubbing your [cock size desc of Player] [cock of Player] cock against his lips and the sides of his muzzle. The grizzly breaks down and starts giving your shaft long licks with his broad ursine tongue; the rough texture feels great on your cock. Occasionally he dips down under your shaft to suck on your testicles, juggling them with his tongue, before returning to lavishing your [cock of Player] cock with oral attention.[line break]";
	if anallevel is 3:
		say "     The grizzly pulls off of your cock for a minute to look up and give you a lecherous grin as he puts two fingers in this mouth, sucking on them. You raise an eyebrow as he removes the fingers from his muzzle and then leans back into your groin, this time engulfing your entire length in his muzzle. The wet heat wrapped around your dick feels great, and you almost don't notice the bear sneaking the two saliva-coated fingers under your ballsack[if Player is female] and past your womanly netherlips[end if]. Realizing what he's planning, you look down at the bear eagerly sucking his way up and down your shaft and return the lecherous grin, spreading your legs a bit to give him better access to your pucker. While continuing to give your [cock of Player] cock a masterful blowjob, he strokes his two slick fingers across your pucker, relaxing it. On one particularly deep throating of your cock, he slides his digits into your rectum. You grunt as he finds your prostate gland and starts stroking it vigorously. Each press of his fingers is like the press of a pleasure buzzer in your ass, and you start leaking pre into his muzzle like a leaky tap. Your knees can hardly hold your body up, so you lean on him while he drives you higher and higher with his talented tongue, muzzle, and fingers. Finally, you can't take the stimulation overload any more and cum hard, filling his mouth up and squeezing on his fingers in your ass. You pull out for the last few shots of seed, painting his snout in streaks of white with your load. Getting dressed, you leave the sex-starved bear to take care of his own needs.";
	else:
		say "     Eager to get to the real deal, the bear dives down on your [cock of Player] cock, taking it to the base in his muzzle. The wet heat wrapped around your dick feels great, and you give a satisfied grunt as he starts to move his mouth up and down your length, all the while using his tongue to stroke and tease the head of your penis. You move your hands to the back of his head but he hardly needs any encouragement as he eagerly suckles your [cock of Player] cock, sucking down your precum. Soon you can't take it any more as his rippling throat and talented tongue push you over the edge, and you're spilling your semen down his throat and then in his mouth. You pull out for the last few shots of seed, painting his snout in streaks of white with your load. Getting dressed, you leave the sex-starved bear to take care of his own needs.";

to say gbearridevag:
	say "     The grizzly falls on his back, breathing heavily. Eyeing his bulging groin you decide you want him in your hot cunt. Walking over to his prone form you begin taking your pants off and then removing his, revealing his thick nine inch bearhood. The grizzly, too weak to react, looks at you eagerly. Straddling the ursine, you position his shaft at your pussy. You tease his glans with your entrance a bit before sinking down into his bear cock. It spreads you open delightfully and strokes your clit just right as you slide down the full length of his cock. He moves to place his hands on your hips but a quick glare reminds him who's in charge. You begin moving up and down on his shaft, each thrust penetrating a little deeper into your cunt, his cock filling you exquisitely. Feeling yourself getting close to your peak you start to increase the pace, filling the air with the sound of smacking flesh. Finally, on one particularly deep thrust, you cry out, your vaginal muscles clamping down on his bear dick[if Player is male] and your cock spurting seed in thick ropes over his chest[end if]. The grizzly is right behind you, filling you up with thick spurts of bear cum. You collapse, panting, on top of the exhausted form of the grizzly, his cum oozing from your pussy. You pull yourself off of the bear, clean yourself up, get dressed, and continue on your way.[impregchance]";

to say gbearrideanal:
	say "     The grizzly falls on his back, breathing heavily. Eyeing his bulging groin you decide you want him in your ass. Walking over to his prone form you begin taking your pants off and then removing his, revealing his thick nine inch bearhood. The grizzly, too weak to react, looks at you eagerly.";
	if anallevel is 3:
		say "     Before you have your fun, you'll need to... prepare properly. Moving your naked rear over the bear's face you spread your asscheeks and brusquely command him to get licking. The bear-man complies eagerly, plunging his muzzle between your cheeks. First you feel the cold wetness of his nose, but that is soon replaced by the warm slickness of his tongue. He starts by lapping gently at your ring of muscle, but as your pucker relaxes he transitions to deep, stimulating licks. His broad ursine tongue fills you so completely you almost cum on the spot. Satisfied with his performance you pull off of him, your cleft now dripping with grizzly saliva.";
	say "     Straddling the ursine, you position his shaft at your asshole. You tease his glans with your entrance a bit before sinking down into his bear cock. It spreads you open delightfully and hits your prostate just right as you slide down the full length of his cock. He moves to place his hands on your hips but a quick glare reminds him who's in charge. You begin moving up and down on his shaft, each thrust penetrating a little deeper into your ass. Feeling yourself getting close to your peak you start to increase the pace, filling the air with the sound of smacking flesh. Finally, on one particularly deep thrust, you have a hands free orgasm, spilling ropes of cum over the grizzly's thick chest fur. Your orgasmic anal contractions quickly bring him over the edge as well, and you feel your anal passage begin to fill with pulses of thick bear seed. You collapse, panting, on top of the exhausted form of the grizzly, his cum oozing out of your ass. You pull yourself off of the bear, clean yourself up, get dressed, and continue on your way.[mimpregchance]";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Grizzly Bear";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The grizzly swipes at you with a huge paw![or]The grizzly hits you with a huge brown-furred shoulder slam.[or]The grizzly charges you with a powerful headbutt![at random]";
	now defeated entry is "[beatthegrizzly]";
	now victory entry is "[losetogrizzly]";
	now desc entry is "[grizzlydesc]";
	now face entry is "now the head of a grizzly bear, with a short muzzle tipped in a large, wet, black nose and a wide head topped by two round bearish ears"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "that of a bipedal grizzly bear, thickly proportioned and muscled, with large ursine paw-like hands ending in sharp claws";
	now skin entry is "[one of]thick brown fur covered[or]grizzly furred[or]shaggy brown furred[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is "You have a short, ursine tail that hangs over your ass."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "ursine";
	now face change entry is "your head widens and your face pushes out. Your nose becomes large and wet as it migrates to the end of your new bearlike muzzle and your ears move to the top of your head, becoming rounded and ursine"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it becomes large, thicker, and more muscular, more ursine. Your neck widens, as do your arms and legs, and your hands become more paw-like";
	now skin change entry is "thick shaggy brown bear fur spreads across your skin";
	now ass change entry is "your rump becomes thicker and more rounded and bearlike, with a short fuzzy tail growing over your new ursine ass"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "a furred sheath grows around it, holding it when it's not erect"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 96;
	now lev entry is 14; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 18; [ Monster's average damage when attacking. ]
	now area entry is "Zoo"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 12; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 0; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]burly[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]ursine[or]grizzly[or]bearlike[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight]
	now Body Definition entry is 5; [scale of 1-9 for body definition]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective: skinny/slender/lithe/average/fit/muscled/pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0;
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]




Section 3 - Endings

when play ends:
	if bodyname of Player is "Grizzly Bear":
		if humanity of Player < 10:
			say "     You succumb to your bear instincts, going completely feral. When the military finds you, you're almost entirely unable to communicate with them. You manage to defeat each squad that discovers you, using your unnatural strength and stamina to take them out one by one. You enjoy leaving the last one conscious so you can fuck them into big, strong bears like yourself. Your luck finally runs out one day when searching for your next victim. You feel a pinch at your neck; swatting your paw at the sensation you notice the tranquilizer dart. Already beginning to feel the effects, you turn to see two squads of soldiers descending upon you. You fight fiercely, but a second prick signals the end of the fight as your body becomes too heavy to lift. Before you slip into unconsciousness you hear one of the soldiers mention that the dose was practically enough to down an elephant...";
			say "     You wake up in a government holding facility, where you are poked and prodded (under heavy restraint and anesthesia) for what feels like a month. The scientists must not have been optimistic about your prospects in the post-infection world, because after another elephant dose of tranquilizer you wake up somewhere heavily wooded and remote. You find a salmon-rich stream nearby and settle into a decidedly ursine lifestyle of mostly eating and sleeping.";
			if Player is female:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A very male one, at that. You feel a need growing between your legs and in your womb, a need you've been ignoring during your time in the wild. After a brief period of wary sniffing you're on your hands and knees under the grizzly getting filled with bear cum. You rub a paw over your stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			else if Player is male and player is not mpreg_ok:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A fertile female one, at that. You feel a need growing between your legs and in your balls, a need you've been ignoring during your time in the wild. After a brief period of wary sniffing you're on your hands and knees behind the grizzly, filling her womb up with your virile bear cum. You rub her stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			else if Player is mpreg_ok:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A very male one, at that. You feel a need growing in your rear, a need you've been ignoring during your time in the wild. The bear is hostile at first, but after a brief period of wary sniffing he realizes you're just another female and then you're on your hands and knees under the grizzly getting filled with bear cum. You try to get the other grizzly to reciprocate, but he's having none of it - maybe next time. You rub a paw over your stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			else:
				say "";
		else:
			say "     When the military finds you, you are sent off to a processing camp and determined to be safe. You live out the rest of your days in relative normalcy, though you now find yourself more partial to going to the gym, eating fish and berries, and taking very, very long naps.";

Grizzly Bear ends here.
