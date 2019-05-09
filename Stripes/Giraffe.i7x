Version 1 of Giraffe by Stripes begins here.
[ Version 1.1 - Added libido pill as drop item... for now - Stripes ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[It has been converted into a herm for use in the Stables area]

"Adds Giraffe to Flexible Survival."

when play begins:
	add { "Giraffe" } to infections of hermaphrodite;
	add { "Giraffe" } to infections of furry;

nogiraffesex is a number that varies.

to say giraffedesc:
	setmongender 5; [creature is herm]
	say "     You find yourself facing off against a tall, slender giraffe humanoid. Measuring over eight feet to the top of her head, much of that height comes from her extra-long neck. Her body is covered in short bristly fur, irregular shapes of dark brown separated by a random pattern of cream, though lighter on the chest and stomach. Her head is sitting atop a thick, long neck. Her narrow face is dominated by a tapered muzzle, containing a long blue-black tongue. A pair of leaf-shaped ears constantly flick about on either side of the head and have two short, boney horns between them. Her body is slender, but toned with shapely limbs and a curvy waist that shows off her plump breasts. Her arms are elongated and slender, the joints thick and solid. Her hands are broad, ending in two fingers and a thumb each with a thick dark nail. Her legs are long, but sturdy to support her sexy body. The solid joints bent in a digitigrade stance, ending in black cloven hooves. She has a ropey, knee-length tail, ending in a tuft of black fur. Hanging between those legs, she has a massive thick, pink, flat-headed maleness tucked into a sheath that has trouble holding the hefty monster cock. Below that hangs a pair of lap-filling balls.";
	say "     Eyeing you, the herm slides her long tongue in a disturbingly sensual display across her muzzle. 'Mmm... [one of]how about a kiss, sweetie[or]can I get a kiss, hot stuff[or]gimme some sugar, baby[or]you look like you need a kiss, am I right[or]how about some tonsil tennis, hon[at random]?' she says, leaning in uncomfortably close. From the way her cock throbs and slips a little further from her sheath, it seems that's not all she's got in mind for you.";


to say losetogiraffe:
	now nogiraffesex is 0;
	if HP of Player > 0:
		say "     Unwilling to continue to resist the giraffe's advances, you are pulled into a French kiss that dives her long, blue tongue down your throat. ";
	else:
		say "     Unable to continue to resist the giraffe's advances, you are pulled into a French kiss that dives her long, blue tongue down your throat. ";
	say "You can't help but moan into this kiss as her agile tongue squirms inside you, sending shivers of delight through your body. In a daze after the kiss, she pushes you down into a nearby room, onto a bed and leaps atop you.";
	let raffesex be 0;
	let mchance be 4;
	if Player is submissive, increase mchance by 2;
	if anallevel is 3, increase mchance by 2;
	if Player is mpreg_ok, increase mchance by 2;
	if anallevel is 1, now mchance is 0;
	if ( Cunt Count of Player is 0 and a random chance of mchance in 12 succeeds ) or (player is neuter):
		say "     You are pushed over onto your stomach and something warm and moist prods against your anus. You brace yourself for a pounding from the crazed mutant, but instead what penetrates you moves about inside of you, hitting every little point of pleasure it can find. You dare a look behind you to see the giraffe's muzzle pushed between your legs, her tongue working wonders inside you as it plumbs your very depths. After a while, she pulls her head back, sliding her body up along your backside as a different heat replaces the last one. And as the giraffe's long neck rubs against yours, you realize this is the one you expected before, her massive cock pushing into you and stretching your asshole wide now that she's gotten you ready with her tongue.";
		say "     With her tongue having prepared you, there's little discomfort and even that fades quickly as she pounds away at you. With a heavy thrust, she spears you on her cock. Vigorous thrusting brings both you and the giraffe quickly to an orgasm. You feel her hot seed spreading throughout your bowels, a gush of fluid from your overstuffed asshole soaking your thighs. Her large output leaves your belly plump and rounded[if Player is male]. Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if]. Done with you, the giraffe pulls out, a gush of her seed flowing from your distended anus as she strides off in search of more amusement, leaving you behind to recover as best you can.[mimpregchance]";
	else if Player is female and ( Cock Count of Player is 0 or a random chance of 2 in 3 succeeds ):
		say "     You are pushed over onto your stomach and something warm and moist prods against your slit. You brace yourself for a pounding from the crazed mutant, but instead what penetrates you moves about inside of you, hitting every little point of pleasure it can find. You dare a look behind you to see the giraffe's muzzle pushed between your legs, her tongue working wonders inside you as it plumbs your very depths. After a while, she pulls her head back, sliding her body up along your backside as a different heat replaces the last one. And as the giraffe's long neck rubs against yours, you realize this is the one you expected before, her massive cock pushing into you and stretching your pussy wide now that she's gotten you ready with her tongue.";
		if Cunt Length of Player < 16:
			say "     With her tongue having prepared you, there's little discomfort and even that fades quickly as she pounds away at you. With a heavy thrust, she spears you on her cock. Vigorous thrusting brings both you and the giraffe quickly to an orgasm. You feel her hot seed spreading throughout your womb, a gush of fluid from your cunt soaking your thighs. Her large output leaves your belly plump and rounded, as if already pregnant with the giraffe's well-hung offspring[if Player is male]. Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if]. Done with you, the giraffe pulls out, a gush of her seed flowing from your distended cunt as she strides off in search of more amusement, leaving you behind to recover as best you can.[impregchance]";
		else:
			say "     With her tongue having prepared you, her large cock spears into you easily. Vigorous thrusting brings both you and the giraffe quickly to an orgasm. You feel her hot seed spreading throughout your womb, a gush of fluid from your cunt soaking your thighs. Her large output leaves your belly plump and rounded, as if already pregnant with the giraffe's well-hung offspring[if Player is male]. Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if]. Done with you, the giraffe pulls out, a gush of her seed flowing from your distended cunt as she strides off in search of more amusement, leaving you behind to recover as best you can.[impregchance]";
	else if Player is male:
		say "     You are pushed over onto your back and the tall, slender herm climbs atop you, grinding her curvy hips down into your lap. Her hefty cock and large balls weigh heavily across your body as she grinds down onto your cock, quickly getting you erect so she might ride your pole. As she sinks down onto your shaft, her [if Cock Length of Player > 36]shapely body taking your [cock size desc of Player] rod with ease and only a slight pause to adjust despite the clear outline your throbbing meat makes in her[else if Cock Length of Player > 24]shapely body taking your [cock size desc of Player] rod with surprising ease, stuffing it all into her without delay[else]shapely body taking your [cock size desc of Player] rod in without delay[end if]. As she rides you, she runs her hands over her throbbing, two foot long cock and heavy balls. Large spurts of her precum splatter across your body and face. With her pounding her hips down onto yours and her cunt squeezing down around your shaft, it's not long before you cum, pumping your hot load into her. And she's more than eager to return the favor, blasting her hot seed across your upper body and face, coating you in her sperm. Once she's drained you and emptied her balls all over you, she gets up and strides out, leaving you there, panting and bathed in her semen.";


to say beatthegiraffe:
	say "     Having beaten the giraffe, you knock the herm to the ground. She moans softly, blue tongue hanging out as she pants for breath. ";
	if nogiraffesex > 2:
		say "You resist taking advantage of the fallen herm like the others before her and instead send her packing with a boot to her rear. She whimpers and rubs her sore ass as she goes off looking for someone to kiss it and make it better.";
	else if Player is not neuter:
		say "You find yourself tempted to make use of that agile tongue to get a little relief for yourself. Shall you do so?";
		if Player consents:
			if Player is female:
				say "     [if Player is male]While you're tempted to use her muzzle for your cock, you really want that tongue of hers in your cunny. [end if]Pressing her muzzle to your juicy slit, you grip her head by her short, knobby horns and grind your pussy against her lips. Her tongue slides out, diving into your pussy and writhes around inside you. You moan in pleasure and force her (though little forcing is actually needed once she's started) to eat you out with her agile tongue until you've had several powerful climaxes that leave you quite satisfied. When you're finally done with her, you push her head back, her tongue popping out with a wet slurp. She smiles up at you, licks her muzzle with a long, slow swipe of her tongue and bounds off, looking for someone else to play with now that you've gotten her so very hard. You almost feel bad for the poor, unfortunate soul who'll end up speared on that thick cock of hers... almost.";
			else:
				say "     Pressing her muzzle to your cock, you grip her head by her short, knobby horns and grind your throbbing cock against her lips. Her tongue slides out and wraps around your shaft, working itself all over it as she starts to suck you off with soft moans of delight. You groan in pleasure and for her (though little forcing is actually needed once she's started) to lick and suck you until you blow your load down that long throat of hers, feeding her your thick semen, which she licks all up. When you're finally done with her, you push her head back, her tongue popping off a wet slurp. She smiles up at you, licks her muzzle with a long, slow swipe of her tongue and bounds off, looking for someone else to play with now that you've gotten her so very hard. You almost feel bad for the poor, unfortunate soul who'll end up speared on that thick cock of hers... almost.";
		else:
			say "     Resisting the urge to give in to your baser instincts, you push the horny herm away and send her packing with a boot to her rear. She whimpers and rubs her sore ass as she goes off looking for someone to kiss it and make it better.";
			increase nogiraffesex by 1;
	else:
		say "Having little interest in sex at the moment, you send her packing with a boot to her rear. She whimpers and rubs her sore ass as she goes off looking for someone to kiss it and make it better.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Giraffe"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The giraffe slides her tongue across your face in a long slurp that sends shivers of delight through you.[or]The well-endowed herm slaps her have cock against you, trying to knock you down with her hefty slab of meat.[or]She kicks you solidly with her hoof![or]The tall herm charges you, using her head and long neck like a battering ram to your gut![or]Her long reach lets her deck you in the face with a solid punch![at random]";
	now defeated entry is "[beatthegiraffe]";
	now victory entry is "[losetogiraffe]";
	now desc entry is "[giraffedesc]";
	now face entry is "sitting atop a thick, long neck. Your narrow face is dominated by a tapered muzzle, containing a long blue-black tongue. A pair of leaf-shaped ears constantly flick about on either side of your head with two short, bony horns between them";
	now body entry is "tall and slender, with toned, shapely limbs and a curvy waist giving you an overall feminine figure. Your arms and legs are elongated and slender, the joints thick and solid. Your hands have two thick fingers and a thumb, each with a thick, dark nail. Your feet are cloven hooves at the end of digitigrade legs";
	now skin entry is "brown spotted, fur-covered"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a thin, ropey, knee-length tail ending in a tuft of black fur.";
	now cock entry is "[one of]thick[or]pink[or]flat-headed[or]equine[at random]";
	now face change entry is "your vision seems to swim for a moment as every muscle in your neck clenches tight. Your neck stretches longer as it thickens, moving your point of view upwards so fast it makes you slightly dizzy. A tapered muzzle pushes its way from your face, as twin points of pain on your forehead erupt into a pair of short, knobby horns. Your mouth feels like it's filled with cotton. As your tongue flops out of your mouth, you find it long and blue-black in color. Very prehensile, it slides across your muzzle in a slow, sensual motion";
	now body change entry is "you feel your midsection starting to tingle, your torso starting to grow a little as a slight wave of nausea signals your internal organs moving about. Your body grows elongated and slender with a curvy waist. Your arms stretch out slowly, the bones elongating as your joints thicken up, giving them a knobby appearance. A few of your fingers begin to fuse on your broadening hands, leaving you with only your thumb and two other digits, each with a thick black nail. Your legs swell with lean dense muscle as the grow longer, shooting you upwards a short distance. Your thickening joints begin to bend at strange angles moving your into a digitigrade stance. Your toes meld together at the end of your lengthening foot, becoming dark black cloven hooves";
	now skin change entry is "itching overwhelms your nerves as short bristly brown fur begins to push out of every follicle on your body. Starting at your hands and feet, lines of cream colored fur begin to cover you, fracturing the brown fur into an irregular pattern of spots and shapes";
	now ass change entry is "a strange tingle starts above your ass as a long tail sprouts, brushing against your thighs and the back of your knees as it sways";
	now cock change entry is "a pleasurable tingling runs through your cock as it turns a pale pink. The head flares out and flattens before hooking slightly downwards.";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 55; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Stable"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 20; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of Breasts infection will give you. ]
	now Breast Size entry is 5; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 24;
	now Cunt Tightness entry is 12;
	now libido entry is 75; [ Amount player Libido will go up if defeated ]
	now loot entry is "libido pill";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]tall[or]slender[or]shapely[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of][']raffe[or]giraffe[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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


[
when play ends:
	if bodyname of Player is "Template":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Giraffe ends here.
