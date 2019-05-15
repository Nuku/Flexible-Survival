Version 1 of Goat Janitor by McRabid begins here.

"Adds a Goat Janitor to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Anthro Goat" } to infections of guy;
	add { "Anthro Goat" } to infections of furry;

to say Goat Janitor desc:
	setmongender 3; [creature is male]
	say "     Rounding a corner ahead of you is a janitor's push cart, soon followed by a goat-like man wearing a pair of dirty gray coveralls, more than likely a hospital janitor succumbed to the infection. He strokes his beard as he watches you for a moment. 'Damn kids, lookit that mess. Just leave it fer the old goat huh?' He narrows his eyes and grabs hold of his mop, 'Think I'm gonna clean up after you? You've got another thing coming.' He charges at you, wielding his mop like a long club.";

to say LoseToGoatJanitor:
	say "     [if HP of Player > 0]Unwilling to keep fighting against the old goat[else]Defeated[end if], you collapse to your knees only to look up as the victorious janitor steps in front of you. You fail to suppress a whimper at the sight of the wicked grin on the old goat's face.";
	if Player is male: [male/herm]
		say "     The goat janitor snorts as he looks down at you on your knees. 'You some kinda dandy, like that silly [']coon? Got to yer knees awful fast,' he sneers down at you, grabbing the back of your head and shoves it forward into the crotch of his dirty coveralls. 'This what you want?' Your answer is muted by the bulge in your face. You can't help but whimper again as you hear the sound of the goat lowering the zipper of his coveralls.";
		say "     He slips his arm free of one sleeve and then the other, the hand on the back of your head changing left, to right, to left again. Once his arms are both free, the coveralls fall to the floor exposing that he had nothing on underneath save for his white and gray fur and ample gut. Your eyes lower to his crotch and are unable to contain a blush at the sight of the rather large sheath and large, low hanging balls. Your blush deepens when you hear him chuckling above you before he once again presses your face into his crotch, pressing your nose into his bushy pubic fur and holding you there as he strokes himself to full arousal.";
		LineBreak;
		say "     'Let's see if you're better with your mouth than you are at fighting.' The old goat smirks before pressing his thick tip against your lips and places a paw on the back of your head to hold you in place as he shoves his cock into your mouth and down your throat without concern for your well being as you gag on the thick length of goat-meat. He holds you there with surprising strength, or perhaps the fight took more out of you than you first thought. Finally he relents as your vision starts to go dark from the lack of breath and allows you take a few breaths before he begins fucking your throat with a surprisingly youthful vigor.";
		LineBreak;
		say "     At some point you realize in your haze of lust from his musky scent and taste you've started to stroke your own cock, causing you to whimper and blush even more in embarrassment. 'HRRG!' the goat grunts before bleating out and flooding your mouth with his thick seed forcing you to swallow or choke all over again. The old goat chuckles and backs away splattering the last few ropes of his cum across your face before he starts getting dressed. Once finished he goes back to his cart and throws a roll of paper towels at you, 'Better clean up after yourself, boy.' He smirks before leaving. A glance down causes you to realize you came as you pleasured yourself to being used by the dirty old janitor.";
	else if Player is female: [female]
		say "     The goat janitor grins as he looks down at you on your knees. 'I must say. It's nice to at least see a proper girl around here. Not like that silly [']coon or those messed up boy-girl things I see running around. Is that the sort of thing you young people are into these days? Downright deplorable,' he grumbles as he grabs you and pushes you down onto the floor. 'Why, in my day, it just took a man and a woman and that was it.' As the goat continues to go on, he opens the crotch to his coveralls pushes aside your clothes as well. 'Just like this,' he adds as he thrusts his stiff cock into you with a bleat.";
		say "     [if HP of Player > 0]A little resistant at first, the[else]The[end if] pleasure of the spry old fellow thrusting into you soon as you moaning. Grinning, he rubs your shoulder and picks up the pace. 'Now, ain't that so much better.' [if Nipple Count of Player > 0 and Breast Size of Player > 0]Leaning down, he wraps his wide lips around your nipple and starts sucking on it[else]He lets his free hand roam over your body as you stop struggling and gives your ass a squeeze[end if] while thrusting all the harder. For an old guy, he's certainly got plenty of energy. And experience too, certainly no stranger at making a woman feel good.";
		say "     With a heavy slap from his large balls against your thighs, he drives deep inside you and bleats again. You can feel the hot rush of cum from the old goat's enlarged balls. His sticky seed splashes against the bottom of your cunt and overflowing back out[if Cunt Length of Player < 25] in messy spurts[end if]. Once he's finished, he pulls out and has you suck him clean, which you do readily in your lust-dazed state. That done, he zips up and goes back to his cart. Before moving on, he tosses you a roll of paper towels. 'You'd best clean up after yourself, missy.' He smirks and gets ready to move on. Looking down, you notice the sticky puddle of goat cum and your juices that're pooling between your spread thighs after being used by the old janitor.[impregchance]";
	else: [neuter]
		say "     The goat janitor snorts as he looks down at you on your knees, 'You some kinda dandy, like that silly [']coon? Got to yer knees awful fast,' he sneers down at you, grabbing the back of your head and shoves it forward into the crotch of his dirty coveralls. 'This what you want?' Your answer is muted by the bulge in your face. You can't help but whimper again as you hear the sound of the goat lowering the zipper of his coveralls.";
		say "     He slips his arm free of one sleeve and then the other, the hand on the back of your head changing left, to right, to left again. Once his arms are both free, the coveralls fall to the floor exposing that he had nothing on underneath save for his white and gray fur and ample gut. Your eyes lower to his crotch and are unable to contain a blush at the sight of the rather large sheath and large, low hanging balls. Your blush deepens when you hear him chuckling above you before he once again presses your face into his crotch, pressing your nose into his bushy pubic fur and holding you there as he strokes himself to full arousal.";
		LineBreak;
		say "     'Let's see if you're better with your mouth than you are at fighting.' The old goat smirks before pressing his thick tip against your lips and places a paw on the back of your head to hold you in place as he shoves his cock into your mouth and down your throat without concern for your well being as you gag on the thick length of goat-meat. He holds you there with surprising strength, or perhaps the fight took more out of you than you first thought. Finally he relents as your vision starts to go dark from the lack of breath and allows you take a few breaths before he begins fucking your throat with a surprisingly youthful vigor.";
		LineBreak;
		say "     At some point you realize in your haze of lust from his musky scent and taste you've started to stroke your own cock, causing you to whimper and blush even more in embarrassment. 'HRRG!' the goat grunts before bleating out and flooding your mouth with his thick seed forcing you to swallow or choke all over again. The old goat chuckles and backs away splattering the last few ropes of his cum across your face before he starts getting dressed. Once finished he goes back to his cart and throws a roll of paper towels at you. 'Better clean up after yourself, boy,' he adds with a smirks before leaving. A glance down causes you to realize you're dripping a sticky puddle of goat cum onto the floor.";

to say BeatTheGoatJanitor:
	say "     Frustrated with fighting the old goat, you body check him with your shoulder after your last blow, sending him tumbling to the ground. He groans weakly as he hits the floor, falling on his side";
	if Libido of Player > 29 and player is not neuter:
		say ". Your blood (and excitement) up after the fight with the surprising spry goat. Shall you take advantage of the opportunity to get some relief?";
		if Player consents:
			if Player is male: [males]
				say "     The goat glares up at you prone on the ground, 'Can't believe...' He grunts, standing up using his mop as a cane, '...that a dandy like you... beat me.' You narrow your eyes and decide to show this old goat how much of a man you are...";
				say "     The exhausted janitor realizes your intent too late to do anything as you knock the mop aside and the goat, giving a weak bleat, falls once again to his knees before you. A devilish smirk crosses your features as you grab hold of his horns and grind his face against your balls.";
				say "     'Get to cleaning.' The order is no sooner out of your mouth than the goat's long tongue begins to snake out across your sack, licking its sensitive skin. Guiding him around by the horns, you continue until your balls are completely clean of the sweat built up as you battled it out.";
				LineBreak;
				say "     You allow him to pull back a bit so you can look him in the face. 'Good job. Now let's give you a tasty treat.' The goat's eyes widen as he realizes what you mean and tries to shake off your hands - without having any luck, as exhausted as he is from the fight.";
				say "     Pulling his head against your crotch, you rub your erection over the soft fur of his cheeks, then press the tip of your shaft against his lips. Overcoming the weak struggles to keep you out, you force yourself into the goat's mouth, using the horns as handles and begin to fuck the unwilling janitor's face.";
				LineBreak;
				say "     Moaning and pumping in and out of his wet and warm mouth, you lose track of time, but notice that after a while the goat starts to get more into it. He uses his tongue to caress your shaft, suckles on your cock, even moans as you thrust into his muzzle.";
				say "     Grinning at making the old goat submit and accept sucking you off, you increase the tempo, fucking his throat with deep thrusts. Soon you feel a familiar tingling rise in your balls, and with a shout of victory you unload into the janitor's mouth. Fully in the role of obedient cocksucker - for now - he swallows it all. Giving a chuckle you pull free and paint his face with the last few ropes of your cum, then walk away, smirking as you hear him begin to masturbate.";
			else if Player is female: [female/herm]
				say "     The goat glares up at you prone on the ground. 'I went easy on you...' he grunts, standing up using his mop as a cane, '...[']cause you're a girl.' Noticing the bulge his package makes in his coveralls, you decide to show him how much of a woman you are...";
				say "     The exhausted janitor realizes your intent too late to do anything as you knock the mop aside and the goat, giving a weak bleat, falls once again to his knees before you. A devilish smirk crosses your features as you grab hold of his shoulders and push him to the ground. Holding him by one horn, you pull oven his coveralls and fish out his stiffening cock and heavy balls. It seems this dirty old goat's already getting hard.";
				say "     Aiming his swelling shaft upwards, you sink down onto it and start riding him before it's even fully erect. Not that it stays that way for much longer. For an old fellow, he's still got quite a bit of pep and he's up and ready for you in seconds. Keeping a grip on one of the horns on his head, you excitedly bounce up and down on the one between his legs. Playing with his balls, you find him very well hung, each ball the size of lemons in his low-hanging scrotum.";
				say "     You don't relent, riding him hard and fast until you can get him to cum. His caprid cock throbs inside you, pulsing with every shot of his gooey seed. He cums you hard and so plentifully that [if Cunt Length of Player > 25]much[else]some[end if] of it overflows from your cunt as you roll and knead those pulsing orbs in your hand for all they'll give.[impregchance]";
				say "     Once he's drained, you don't let him off the hook so easily. Still holding him by the horn, you stand and pull his face to your crotch, ordering him to clean up his mess. It is only once the goat's licked you nice and clean, and to another orgasm, that you push him away, leaving him to deal with the extra mess he's made on the floor.";
			else: 						[neuter - closed for now]
				say "***     The player has no genitals (but there might still be some stuff to do with the beaten enemy).";
		else: [sex refused]
			say "     Delivering another blow to the janitor, he stumbles backwards and crashes into his janitorial cart with a startled bleating sound. Grabbing frantically at it to keep standing, the goat manages to topple it over with himself spilling the contents of the garbage bag as well as the water from the mop bucket. Worried the noises will draw the attention of other staff members you leave the moderately comical sight of the former janitor slipping around in the puddle of mop water as he continues trying to stand.";
	else:
		say ". Feeling that he shouldn't give you any more trouble, at least until something new has got his goat, you leave the old fellow to recover and get back to cleaning up this mess.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Anthro Goat";
	now enemy title entry is "Goat Janitor";
	now enemy Name entry is "William";
	now enemy type entry is 1; [unique enemy]
	now attack entry is "[one of]The janitor jabs you in the face with the wet end of his mop, soaking you in a nauseating, and exhilarating, mixture of cleaners and the many sexual fluids he's cleaned up.[or]The janitor lowers his head and, moving faster than you'd expect of an old man, charges at you and knocks you over.[or]'Back in my day...' The goat starts to drone on in that boring way only old people can. He smacks you when he realizes you've zoned out and stopped paying attention.[at random]";
	now defeated entry is "[BeatTheGoatJanitor]";
	now victory entry is "[LoseToGoatJanitor]";
	now desc entry is "[Goat Janitor desc]";
	now face entry is "that of an anthropomorphic goat, covered in fur and with your nose and mouth drew out into a short muzzle. A pair of curved horns grow from your forehead, and you have a long goatee hanging from your chin";
	now body entry is "humanoid, with a scraggly build and a slightly pudgy belly. Despite that, you feel pretty confident with your climbing skills due to your two digitigrade goat legs, complete with hooves";
	now skin entry is "gray-furred";
	now tail entry is "A short tail hangs limply over your ass, giving an occasional twitch.";
	now cock entry is "[one of]furry sheathed[or]goat-like[or]caprid[at random]";
	now face change entry is "you feel a horrible headache coming on. The pain gets worse until it feels like your head is going to split, and in a way it does as a pair of horns sprout from your brow and curl slightly back. Shortly after, your ears shift upwards a bit and a short muzzle forms out of your mouth and nose, soon giving you a very goat-like appearance complete with gray fur and a rather long goatee";
	now body change entry is "it begins to shift, your bones painfully rearranging themselves with a series of pops and cracks. After an unknown amount of time you wake up, the pain having caused you to black out. You find that you have formed a bit of a gut, your legs are now digitigrade and end in hooves";
	now skin change entry is "you begin itching everywhere all at once. After a few seconds you let out a small giggle before bursting out in laughter as the itching is replaced with a tickling feeling. That too subsides after a moment. When you look yourself over to figure out what happened, you discover that you're now covered in gray and white fur";
	now ass change entry is "a sharp pain runs up your lower back. Reaching back, you find that you now have a short tail. Looking over your shoulder you see that it is covered in gray fur";
	now cock change entry is "your cock's shape changes and more skin grows to wrap it up in a protective and fuzzy sheath. You moan as your balls sag some, now hanging a bit lower";
	now str entry is 8;
	now dex entry is 12;
	now sta entry is 15;
	now per entry is 10;
	now int entry is 16;
	now cha entry is 14;
	now sex entry is "Male";
	now HP entry is 40;
	now lev entry is 4;
	now wdam entry is 3;
	now area entry is "Hospital";
	now Cock Count entry is 1;
	now Cock Length entry is 8;
	now Ball Size entry is 3;
	now Nipple Count entry is 2;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 45;
	now loot entry is "";
	now lootchance entry is 0;
	now scale entry is 3;
	now body descriptor entry is "[one of]scraggly[or]thin[or]bony[as decreasingly likely outcomes]";
	now type entry is "[one of]caprid[or]goat-like[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


when play ends:
	if bodyname of Player is "Anthro Goat":
		if humanity of Player < 10:
			say "     You succumb to your Goat Janitor infection and eventually wander past the city hospital. 'You're late!' a somewhat familiar voice shouts. A glance up to the entrance you see a very angry goat in coveralls. After an hour of being berated for how young people are ruining today's economy with their laziness and loud music, you find yourself mopping one of the many hallways of the hospital in your own coveralls as your boss continues to complaints over a walkie talkie.";
		else:
			say "     You survive, but were infected by the goat janitor. After dealing with the rigmarole at the military processing camp, you're eventually released. Thankfully, it doesn't take you too long to find some work. There's always a need for someone to clean up, especially after an apocalypse and especially after a particularly messy, sexual one. It's nothing glamourous, but it pays alright and gives you plenty to do, at least. And getting to join in on the occasional make-out session you find in the janitor's closet (which are at least once a week), is an added perk.";

Goat Janitor ends here.
