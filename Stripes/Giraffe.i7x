Version 1 of Giraffe by Stripes begins here.
[ Version 1.1 - Added libido pill as drop item... for now - Stripes ]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[It has been converted into a herm for use in the Stables area]

"Adds Giraffe to Flexible Survival."

nogiraffesex is a number that varies.

a postimport rule: [bugfixing rules for players that import savegames]
	now the area corresponding to a Name of "Giraffe" in Table of Random Critters is "Stable";

to say losetogiraffe:
	project the Figure of GiraffeHerm_hard_icon;
	now nogiraffesex is 0;
	say "     [if HP of Player > 0]Unwilling[else]Unable[end if] to continue to resist the giraffe's advances, you are pulled into a French kiss that dives her long, blue tongue down your throat. You can't help but moan into this kiss as her agile tongue squirms inside you, sending shivers of delight through your body. In a daze after the kiss, she pushes you down into a nearby room, onto a bed and leaps atop you.";
	[let raffesex be 0;]
	let mchance be 0;
	if anallevel > 1:
		now mchance is 4;
		if Player is submissive, increase mchance by 2;
		if anallevel is 3, increase mchance by 2;
		if "MPreg" is listed in feats of Player, increase mchance by 2;
	if ( Player is not female and a random chance of mchance in 12 succeeds ) or Player is neuter:
		say "     You are pushed over onto your stomach and something warm and moist prods against your anus. You brace yourself for a pounding from the crazed mutant, but instead what penetrates you moves about inside of you, hitting every little point of pleasure it can find. You dare a look behind you to see the giraffe's muzzle pushed between your legs, her tongue working wonders inside you as it plumbs your very depths. After a while, she pulls her head back, sliding her body up along your backside as a different heat replaces the last one. And as the giraffe's long neck rubs against yours, you realize this is the one you expected before, her massive cock pushing into you and stretching your asshole wide now that she's gotten you ready with her tongue.";
		say "     With her tongue having prepared you, there's little discomfort and even that fades quickly as she pounds away at you. With a heavy thrust, she spears you on her cock. Vigorous thrusting brings both you and the giraffe quickly to an orgasm. You feel her hot seed spreading throughout your bowels, a gush of fluid from your overstuffed asshole soaking your thighs. Her large output leaves your belly plump and rounded[if Player is male]. Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if]. Done with you, the giraffe pulls out, a gush of her seed flowing from your distended anus as she strides off in search of more amusement, leaving you behind to recover as best you can.[mimpregchance]";
	else if Player is female and ( Player is not male or a random chance of 2 in 3 succeeds ):
		say "     You are pushed over onto your stomach and something warm and moist prods against your slit. You brace yourself for a pounding from the crazed mutant, but instead what penetrates you moves about inside of you, hitting every little point of pleasure it can find. You dare a look behind you to see the giraffe's muzzle pushed between your legs, her tongue working wonders inside you as it plumbs your very depths. After a while, she pulls her head back, sliding her body up along your backside as a different heat replaces the last one. And as the giraffe's long neck rubs against yours, you realize this is the one you expected before, her massive cock pushing into you and stretching your pussy wide now that she's gotten you ready with her tongue.";
		if Cunt Depth of Player < 16:
			say "     With her tongue having prepared you, there's little discomfort and even that fades quickly as she pounds away at you. With a heavy thrust, she spears you on her cock. Vigorous thrusting brings both you and the giraffe quickly to an orgasm. You feel her hot seed spreading throughout your womb, a gush of fluid from your cunt soaking your thighs. Her large output leaves your belly plump and rounded, as if already pregnant with the giraffe's well-hung offspring[if Player is male]. Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if]. Done with you, the giraffe pulls out, a gush of her seed flowing from your distended cunt as she strides off in search of more amusement, leaving you behind to recover as best you can.[fimpregchance]";
		else:
			say "     With her tongue having prepared you, her large cock spears into you easily. Vigorous thrusting brings both you and the giraffe quickly to an orgasm. You feel her hot seed spreading throughout your womb, a gush of fluid from your cunt soaking your thighs. Her large output leaves your belly plump and rounded, as if already pregnant with the giraffe's well-hung offspring[if Player is male]. Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if]. Done with you, the giraffe pulls out, a gush of her seed flowing from your distended cunt as she strides off in search of more amusement, leaving you behind to recover as best you can.[fimpregchance]";
	else if Player is male:
		say "     You are pushed over onto your back and the tall, slender herm climbs atop you, grinding her curvy hips down into your lap. Her hefty cock and large balls weigh heavily across your body as she grinds down onto your cock, quickly getting you erect so she might ride your pole. As she sinks down onto your shaft, her [if Cock Length of Player > 36]shapely body taking your [cock size desc of Player] rod with ease and only a slight pause to adjust despite the clear outline your throbbing meat makes in her[else if Cock Length of Player > 24]shapely body taking your [cock size desc of Player] rod with surprising ease, stuffing it all into her without delay[else]shapely body taking your [cock size desc of Player] rod in without delay[end if]. As she rides you, she runs her hands over her throbbing, two foot long cock and heavy balls. Large spurts of her precum splatter across your body and face. With her pounding her hips down onto yours and her cunt squeezing down around your shaft, it's not long before you cum, pumping your hot load into her. And she's more than eager to return the favor, blasting her hot seed across your upper body and face, coating you in her sperm. Once she's drained you and emptied her balls all over you, she gets up and strides out, leaving you there, panting and bathed in her semen.";

to say beatthegiraffe:
	project the Figure of GiraffeHerm_hard_icon;
	say "     [bold type]Being the victor of your scuffle, you decide that you'll:[roman type][line break]";
	let GiraffeWin_Choices be a list of text;
	if Player is male:
		add "Enjoy that tongue of hers for a blowjob." to GiraffeWin_Choices;
	if Player is male and ScaleValue of Player < 4:
		add "Grind your dick against that big shaft of hers." to GiraffeWin_Choices;
	if Player is male:
		add "Pound her pussy with your cock." to GiraffeWin_Choices;
	if Player is male and ScaleValue of Player > 3:
		add "Ride her cock (anally)." to GiraffeWin_Choices;
	if Player is female:
		add "Enjoy that tongue of hers for cunnilingus." to GiraffeWin_Choices;
	if Player is female and ScaleValue of Player < 4:
		add "Grind your pussy against that big shaft of hers." to GiraffeWin_Choices;
	if Player is female and ScaleValue of Player > 3:
		add "Ride her cock (vaginally)." to GiraffeWin_Choices;
	add "Worship her cock." to GiraffeWin_Choices;
	add "Just turn around and go, leaving the Giraffe behind." to GiraffeWin_Choices;
	let GiraffeWin_Choice be what the player chooses from GiraffeWin_Choices;
	if GiraffeWin_Choice is:
		-- "Enjoy that tongue of hers for a blowjob.":
			LineBreak;
			GiraffeWin_BJ;
		-- "Grind your dick against that big shaft of hers.":
			LineBreak;
			GiraffeWin_Frottage_M;
		-- "Pound her pussy with your cock.":
			LineBreak;
			GiraffeWin_Breed;
		-- "Ride her cock (anally).":
			LineBreak;
			GiraffeWin_AnalRide;
		-- "Enjoy that tongue of hers for cunnilingus.":
			LineBreak;
			GiraffeWin_Cunni;
		-- "Grind your pussy against that big shaft of hers.":
			LineBreak;
			GiraffeWin_Frottage_F;
		-- "Ride her cock (vaginally).":
			LineBreak;
			GiraffeWin_VaginalRide;
		-- "Worship her cock.":
			LineBreak;
			GiraffeWin_CockWorship;
		-- "Just turn around and go, leaving the Giraffe behind.":
			LineBreak;
			say "     Stepping back from the sprawled form on the pavement, you deliberately adjust your gear and turn on your heel, deciding to leave the encounter behind. A confused whuffle breaks the silence as the towering herm props herself up on her forearms, her leaf-shaped ears drooping in genuine disbelief. She stares at your retreating back, that enormous pink cock throbbing uselessly between her sturdy thighs while leaking an unfulfilled trail of pre-cum across her cream belly. 'Hey, hold on a second, sugar!' she calls after you, her voice heavy with wounded pride and aching heat. 'You just gonna walk away after putting me flat on my ass? Don't you even wanna claim your prize? You're leaving a whole lot of woman hanging here, handsome!' Ignoring her frustrated pleas, you keep moving down the cracked street, leaving the disappointed giantess to deal with her aching erection alone.";

to GiraffeWin_BJ:
	say "     Sprawled back where the tumble ended, the towering herm catches her breath, her long legs fallen open in complete, willing surrender. Her chest heaves with heavy pants that make her plump breasts bounce, while between her sturdy thighs, that massive pink member pulses impatiently. Stepping forward, your fingers sink into the short, bristly fur of her throat, tracing a deliberate path up the remarkable length of her neck until your palm rests against her jaw. You firmly instruct her that since she wanted to get it on, it is time to put that long tongue to good use down below. A wicked gleam lights up her green eyes, her leaf-shaped ears flicking in sheer delight. 'Oh, you don't gotta ask me twice, sugar,' she purrs, leaning her muzzle eagerly into your palm. 'Get right in close and let mama show you what this mouth can do.'";
	say "     [If Player is not naked]Baring yourself in a moment, [else]Casual in your nakedness, [end if]you step between her splayed knees, bringing your rigid [Cock of Player] shaft level with her upturned face. Her tapered muzzle parts with an eager hiss, releasing an extraordinary blue-black tongue that extends easily over a foot in length. Rather than a simple lap, the prehensile muscle snakes forward and coils completely around your shaft, wrapping your erection in a tight, velvet-firm spiral. The sheer dexterity is startling as she squeezes with rhythmic, calculated pulses, tasting the bead of precum at your slit before guiding the head past her dark lips. A low rumble vibrates through her throat, her heavy-lidded eyes locked onto yours with unabashed lust. Slipping your crown into her wet warmth, she begins drawing you inward, that dexterous ribbon of muscle undulating along your underside to milk every nerve ending.";
	WaitLineBreak;
	say "     Her oral technique quickly proves to be unlike anything a human mouth could deliver, turning the act into a masterclass of muscular suction. While her lips slide down to take half your length, the rest of her long tongue remains looped around your base, continuously contracting against your root like a living cock ring. She hums loudly around your intrusion, using her throat to create a powerful vacuum that pulls rhythmically at your crown. Between her parted legs, her own massive, flat-headed cock twitches violently, dripping thick cords of clear lubricant across her pale belly as she works herself into a frenzy. 'Mmh, yeah, you like that, don't you handsome,' she manages to mumble during a brief hitch in her rhythm, her hands bracing your thighs. 'Push it right to the back. Give this throat every single inch you've got!'";
	say " The relentless combination of tight suction and that coiling, prehensile tongue shatters your remaining restraint, driving your hips forward in a surge of raw momentum. Gripping the blunt horns atop her head for leverage, you bottom out against her throat just as your climax reaches its pitch in a hot, blinding eruption. Pulse after pulse of thick seed fires into her gullet, painting her insides as she swallows greedily, her throat rippling to take every drop with greedy ease. When you finally ease back with a wet, audible pop, she lets out a breathy laugh of pure satisfaction, her long tongue snaking out to lap up every stray smear from your softening tip. 'Damn, sweetie,' she purrs, licking her muzzle with a slow, lewd swipe of that dark ribbon. 'You taste even better than you look. Got my motor running real good now, that's for sure.'";
	CreatureSexAftermath "Giraffe" receives "OralCock" from "Player";

to GiraffeWin_Frottage_M:
	if Cock Length of Player < 18:
		say "     Looking down at the towering herm sprawled before you, the sheer scale of the weapon she packs makes any thought of penetration an absolute impossibility. That flat-headed, pink monster of a shaft measures easily two full feet in length, as thick as a fence post and pulsing with a relentless heat as it pushes entirely free of its stretched sheath in response to your attention. Deciding to take advantage of that colossal pillar without tearing yourself apart, you step between her splayed thighs[if Player is not naked] and strip your lower half[end if], aligning your own rock-hard length directly against her spotted shaft. The contrast is staggering, yet her green eyes blaze with immediate, wicked comprehension as your skin meets hers. 'Well now, aren't you a clever boy?' she purrs, reaching up with broad, dark-nailed hands to pull your hips firmly against her groin. 'If we can't slide inside, we'll just have to make some serious friction, handsome.'";
		say "     Copious amounts of clear pre-cum weep from her blunt tip, providing an effortless lubricant that turns her shaft into a slick, glistening highway. Gripping her massive member with one hand, you grind your own rigid erection along the hot underside of her phallus, the rhythmic friction sending electric sparks through your groin. Her thick maleness twitches against your stomach with every stroke, her lap-filling testicles churning between her sturdy legs. She lets out a series of breathy, guttural groans, her leaf-shaped ears pinning flat as she tilts her pelvis to meet your pace. Every time you slide your crown over the swollen ridge behind her flat glans, a full-body shudder ripples through her eight-foot frame, her nails digging into your rear to urge your hips into a faster, more demanding rhythm.";
		WaitLineBreak;
		say "     The frantic pace pushes both of you over the brink, the friction between your colliding shafts igniting a mutual, uncontrollable crescendo. With a strangled gasp, your own climax breaks over you like a tsunami, shooting heavy ropes of white seed across the shaft of her spotted cock and all spurts that go past arcing down to splat on her pale stomach. An instant later, the giantess arches off the pavement with a deafening, euphoric bellow as her twenty-four-inch monster erupts into a literal geyser of cum. Gallons of thick, creamy seed blast from her flared slit, firing upward in a continuous, pulsing fountain that arcs through the air before splashing down in heavy, warm waves across your chest, face, and thighs. The sheer volume of her release completely drenches both of you, a glorious, hot deluge of musky fluid that pools around your knees as her heavy balls contract violently to expel every last drop of her colossal payload.";
		say "     Dazed and dripping from head to toe in an absurd amount of creamy warmth, you brace your hands against her heaving chest as you struggle to catch your breath. The towering herm lets out a lazy, rumbling chuckle, her green eyes heavy-lidded with sated exhaustion as she surveys the glistening mess coating both your bodies. 'Mmm, now that is what I call a proper blow-out, sweetie,' she murmurs, her tapered muzzle drawing close. Uncoiling that incredible, foot-and-a-half blue-black tongue, she sets to work cleaning you off with broad, sweeping strokes. The dexterous muscle glides over your soaked torso, lapping up the sweet, musky cream with loud, appreciative slurps before traveling down between your legs to meticulously lick your softening cock and balls clean. By the time she finishes, you are completely spotless, left trembling from the tender, thorough aftercare of her velvet tongue.";
	else:
		say "     [if Player is not naked]Freeing your own colossal member[else]Hefting your own colossal member[end if], the towering herm's jaw drops as her green eyes widen in sheer, disbelieving awe. Rather than the typical human proportion she expected, she finds herself staring down an erection that rivals her own massive pillar in both staggering length and sheer, heavy girth. The two monstrous shafts pulse with synchronized heat as you step over her sprawled legs, bringing your immense meat flush against her pink, spotted phallus. A shiver of pure, rapturous excitement travels the entire length of her eight-foot frame, her leaf-shaped ears pinning back as a delighted squeal tears from her throat. 'Well holy hell, sweetie,' she breathes, broad hands trembling as she reaches down to grasp both oversized rods at once. 'Look at you packing a whole damn tree trunk of your own. Now this is gonna be a clash of titans!'";
		say "     Copious torrents of pre-cum stream from both flared crowns, lubricating the immense surface area where the two colossal shafts press together. Rather than a modest rub, the frottage becomes a heavy, full-body collision of two massive pillars of meat sliding along one another from root to tip. Every thrust of your hips drives your heavy length down the entire span of her spotted cock, the friction producing a wet, rhythmic smacking that echoes loudly down the abandoned avenue. Her own monstrous tool twitches and bucks in tandem, the swollen ridges behind her flat head grating against your sensitive coronal rim. Between your shifting bodies, two sets of testicles collide in wet, heavy thuds, their synchronized churning fueling a tidal wave of shared lust that leaves her clawed fingers digging deep into the muscle of your back.";
		WaitLineBreak;
		say "     The sheer scale of the collision accelerates the friction into a blinding, white-hot frenzy that neither of you can hold back. Reaching a mutual climax simultaneously with the force of a ruptured dam, twin fountains of hot seed erupt upwards in violent twin geysers. Heavy ropes of your cream fire up her pale stomach and chest, while her own massive monster blasts a relentless deluge of dense, musky fluid over your face, shoulders, and thighs. This apocalyptic release coats both of you in an unprecedented, drowning mess, gallons upon gallons of frothing white cum pooling between your tangled legs until the asphalt is slick. Gasping for air, you collapse together against the soaked pavement, your colossal cocks throbbing in tandem as they finish emptying their reservoirs in shuddering pulses.";
		say "     Lying tangled in a veritable lake of steaming white seed, the two of you rest in a dazed stupor of total exhaustion. The giantess props herself up with a lazy, breathless chuckle, surveying the absurd, cream-soaked battleground covering both of your bodies from chest to hoof. 'Good lord, honey,' she purrs, her voice hoarse with ecstasy. 'I didn't think there was a man in this whole broken city who could match my output, but you just drowned us both!' Extending that marvelous foot-and-a-half blue-black tongue, she gets right to work on the monumental cleanup. The broad, prehensile muscle glides over your face and chest, lapping up the thick cum with long, ravenous sweeps before sliding down to thoroughly groom both of your softening, oversized shafts. She cleans every crevice with tender perfection, humming happily as she feasts on the massive fruits of your labor.";
	CreatureSexAftermath "Giraffe" receives "Frottage" from "Player";

to GiraffeWin_Breed:
	if Cock Length of Player < 18:
		say "     [if Player is not naked]Freeing your rigid erection from your trousers, [else]Hefting your rigid erection, [end if]you approach the sprawled giantess with blatant lust burning in your gaze. The towering herm tracks your movements with heavy-lidded eyes, a knowing smirk spreading across her tapered muzzle as she recognizes your intent. Rather than reaching for your shaft, she reaches down between her digitigrade thighs with both broad hands, grasping her lap-filling testicles and hoisting them upward. Tucking her massive cock flush against her cream underbelly, she bares the wet, swollen entrance of her hidden pussy nestled beneath. The glistening slit weeps an intoxicating trail of feminine arousal, pink folds parting in eager invitation. 'Mmm, thought you might want a taste of mama's other side,' she purrs, leaf-shaped ears flicking in delighted anticipation. 'Come on, handsome, climb on in and see how deep this well really goes.'";
		say "     Stepping into the cradle of her long legs, you guide the head of your cock to the bared opening and press firmly inside. While your size is comfortable to you, her anatomy was built on a titan scale, making her cavernous passage feel impossibly deep, like an endless tunnel waiting to swallow you whole. Just as you worry about slipping in without enough friction, the giantess lets out a shuddering gasp and deliberately flexes her internal muscles. The slick, ribbed walls of her canal clamp down with remarkable strength, squeezing around your shaft like an airtight velvet vice that grips every single inch of your presence. She moans loudly at the sensation of being plugged, her broad hands anchoring behind your shoulders to pull you down until your pelvis meets her drenched folds, burying you to the absolute hilt within her yielding heat.";
		WaitLineBreak;
		say "     Setting a hard, rhythmic tempo, you drive into her welcoming depths with relentless momentum. The positioning creates an extraordinary tactile sensation; with every forward thrust, your bare chest and stomach grind directly against the warm, heavy curbes of her lifted testicles and the hot underside of her own throbbing shaft. Ripples of electric sensation shoot through your spine from the constant friction of her male parts rubbing against your skin, driving you to pump harder into her feminine canal. Her fingers dig deep into your back, her sturdy legs hooking around your waist to anchor your hips against her pelvis. 'Yes, right there, hammer into that sweet spot!' she pants, her long blue-black tongue lolling in wanton bliss. 'You might not touch bottom, but damn if you don't feel incredible when I squeeze down on you!'";
		say "     The relentless combination of her pulsing internal grip and the heavy collision of her groin drives you rapidly beyond the point of no return. Snapping your hips in a final, frantic burst, your climax comes over like a crashing wave, and deep within her canal, you pump thick ropes of seed to splash her gripping walls. Your eruption triggers a catastrophic response from the giantess; her vaginal walls convulse in violent, rhythmic tremors, milking your shaft with crushing intensity as her own female release breaks like a shattered dam. An enormous torrent of clear feminine fluid gushes from her depths, flooding outward in a hot, soaking wave that drenches your groin, coats her testicles, and washes down her sturdy digitigrade thighs in a glistening deluge. She wails in euphoric ecstasy, her twenty-four-inch cock erupting at the same time, soaking her belly in a flood of cum as she collapses into sated bliss.";
	else:
		say "     [if Player is not naked]Freeing your own colossal member[else]Hefting your own colossal member[end if], you step forward with heavy intent burning in your gaze. The towering herm tracks your approach, lifting her lap-filling testicles and pinning her twenty-four-inch shaft flush against her cream stomach to reveal the dripping entrance of her pussy underneath. When her green eyes finally register the staggering length and thickness of your weapon, her tapered jaw drops in sheer, breathless astonishment. 'Sweet mother of mercy,' she gasps, her leaf-shaped ears pinning back as a shiver of rapturous anticipation ripples down her eight-foot frame. 'Look at the size of that monstrous club! I never thought I'd see the day someone brought an engine big enough to actually touch bottom in this cavernous well. Come on, handsome, push that whole damn log inside me!'";
		say "     Stepping into the wide cradle of her digitigrade thighs, you align your dickhead with her bared vulva and drive forward with steady momentum. Rather than vanishing into an empty void, your massive girth forces her glistening pink folds to stretch to their absolute limits, filling her cavernous depths with thick, unrelenting meat. Her breath hitches into a choked wail of profound pleasure as inch after glorious inch sinks into her heat, her inner walls expanding around your colossal intruder. When your hips finally slam flush against her pelvis, the tip of your shaft bottoms out solidly against the deep recesses of her passage, delivering a level of profound fullness she has clearly never experienced before. 'God almighty, yes!' she cries out, broad hands gripping your shoulders as her head arches back. 'You're hitting the very back! Fill me up, stretch me wide!'";
		WaitLineBreak;
		say "     Establishing a thunderous, piston-like rhythm, you hammer your full length into her welcoming passage without mercy. The positioning produces an intensely erotic collision of bodies; with every deep plunge, your bare chest and stomach slap heavily against the warm, swaying mass of her lifted testicles and the hot underside of her own throbbing shaft. Electric shocks of pure sensation ripple through your spine as her heavy male equipment grinds against your torso, driving you to pound deeper into her stretched feminine canal. Her clawed fingers dig into your back, her sturdy legs locking tight behind your waist to pull you deeper with every stroke. That famous blue-black tongue lolls from her parted muzzle, drooling onto her chest as she vocalizes her adoration with loud, uninhibited moans that echo across the pavement.";
		say "     The overwhelming stretch of her inner walls and the brutal pace of your impacts rapidly propel you both toward a cataclysmic peak. Burying yourself to the absolute hilt one final time, your climax makes you erupt deep in her gripping pussy, pumping an immense, voluminous torrent of hot seed straight against the back of her womb. The sheer force of your release shatters her remaining control; her vaginal canal clamps down in violent, shuddering convulsions, milking your monstrous phallus with crushing strength as her own female release breaks in an explosive squirt. An enormous, pressurized wave of clear feminine fluid erupts from her depths, spraying past your thick shaft to drench your groin, soak her testicles, and flood her cream underbelly in a glistening deluge. She screams in delirious bliss, her twenty-four-inch cock erupting at the same time, soaking her belly in a flood of cum as she surrenders completely.";
	CreatureSexAftermath "Giraffe" receives "PussyFuck" from "Player";

to GiraffeWin_AnalRide:
	say "     Looming over the sprawled herm, your own towering physique matches her eight-foot frame in both imposing height. Her green eyes widen in dawning disbelief as you step between her splayed digitigrade legs, realizing for the first time that you possess the sheer physical scale required to withstand her payload. Reaching down, you gather handfuls of the thick, clear pre-cum streaming from her blunt, flat crown, thoroughly coating your own puckered entrance before slathering the slick nectar along the full two-foot expanse of her spotted pillar. A shiver of pure, delirious anticipation ripples down her elongated neck, her leaf-shaped ears standing alert. 'Wait... are you actually serious?' she gasps, broad hands trembling as she reaches up to steady your muscular calves. 'Nobody has ever been able to take this whole monster inside them. Please tell me you're gonna ride me!'";
	say "     Lowering your hips over her bared groin, you center your greased entrance directly over her flared head and begin a slow, deliberate descent. The initial breach demands a profound, eye-watering stretch as your ring of muscle yields to the immense girth of her blunt crown, an audible, wet pop echoing between your bodies as your tight passage accepts the invasion. Inch after unrelenting inch of hot, spotted meat slides into your hole, the copious lubricant easing the monumental expansion as you take what no human was ever meant to hold. A guttural wail of pure ecstasy tears from the giantess as her hips buck upward in disbelief, feeling her shaft disappear into tight, welcoming heat. 'Oh god, it's going in!' she cries out, dark nails digging deep into your thighs. 'Every single inch! It feels so damn good to finally be buried deep inside someone!'";
	WaitLineBreak;
	say "     Sinking all the way down until your rear slaps flush against her groin, you take the full twenty-four-inch length to the absolute hilt, filling your interior with an overwhelming, solid presence. Establishing a heavy, vertical rhythm, you begin riding her pillar with steady, bouncing drops that drive her into a frenzy of sensation. Every downward plunge brings your haunches crashing against her lap-filling testicles with a series of wet, echoing impacts that rattle her entire frame. She clutches your waist with desperate strength, her tapered muzzle tossed back as that long blue-black tongue lolls in wanton delight. 'Yes, ride that heavy bone, take it all!' she roars, her voice hoarse with unbridled joy. 'I never knew what it felt like to be completely sheathed! Pack yourself full on that cock, sweetheart!' Her words only spur you onward, the internal friction building an unbearable, coiling pressure in your groin.";
	say "     The blistering pace and the profound stretch of your passage rapidly propel you both across the threshold of sated abandon. Clamping down on her invading girth, your own climax washes over you in a ragged groan, your rigid shaft firing thick ropes of seed across her pale chest and breasts. Your internal spasms immediately trigger her own volcanic release; her colossal pillar pulses violently as gallons of steaming, creamy giraffe cum blast straight into your depths. Immense volume and pressure flood your bowels, creating an intoxicating sensation of heavy fullness that rounds your lower belly as her massive balls churn to pump every drop home. She cries out in a lingering, breathless roar of complete fulfillment, eventually collapsing back against the pavement with a dazed, blissful grin as she cradles your hips on her deeply buried shaft.";
	CreatureSexAftermath "Player" receives "AssFuck" from "Giraffe";

to GiraffeWin_Cunni:
	say "     [if Player is male]While you're tempted to use her muzzle for your cock, you really want that tongue of hers in your cunny. [end if]Looking down at the towering herm sprawled on the asphalt, you decide to claim your prize from that magnificent, elongated mouth. Standing over her, you [if Player is not naked]strip away your lower garments and [end if]guide her tapered muzzle directly between your thighs, making your intentions abundantly clear without needing to say a word. Her green eyes light up with sudden, intense delight, her leaf-shaped ears pinning back as the warm, musky scent of your arousal washes over her sensitive nostrils. That massive, flat-headed member of hers gives an eager jerk, leaving a glossy trail of pre-cum across her cream underbelly. 'Mmm, now that is an invitation I can't resist, sweetheart,' she rumbles, leaning her head up into your heat. 'Let me show you how deep this tongue can really go. Hold on tight to mama's horns, alright?'";
	say "     Reaching down with both hands, your fingers curl firmly around the blunt, fur-covered horns atop her head to anchor yourself in place. Her dark lips part with an eager hiss, releasing that formidable blue-black tongue to trail a blistering stripe of heat from your clit straight to your dripping entrance. The sheer length of the muscle is staggering as she pushes past your outer folds, sliding inside you like a living, velvet-textured serpent. She doesn't stop at a shallow taste; instead, the dexterous appendage keeps feeding into your passage, completely filling your tight canal with warm, muscular thickness. A muffled groan of appreciation vibrates through her skull and directly into your palms as she probes deeper than any human tongue could ever hope to reach, her nostrils flaring as she inhales your scent with ravenous enthusiasm.";
	WaitLineBreak;
	say "     Every inch of her prehensile tongue proves to be under her absolute, calculated control as she begins to work your depths in earnest. The broad underside of the muscle arches upward, applying a broad, rhythmic pressure against your swollen G-spot that sends electric shocks rippling through your core. At the same time, the tapered, mobile tip reaches the very end of your canal, lightly brushing and swirling across the sensitive ring of your cervix with feather-light precision. Your breath hitches into a ragged gasp, knuckles turning white as you yank down on her horns to grind yourself harder against her mouth. Slurping in her tongue, a smirk plays over her lips as she hums, 'Oh, you feel that deep, don't you, sugar?' her voice muffled but thick with wicked pride. 'Look at you dripping down my chin. I'm gonna milk every single drop out of this sweet little cunt.' And with that, she plunges her tongue back into your depth.";
	say "     It doesn't take long until the relentless, extraordinary oral pleasure pushes you over the edge into a devastating, toe-curling orgasm that leaves you sobbing for air. Your hips buck uncontrollably against her muzzle as your vaginal walls clamp down in violent, rhythmic spasms around the invading muscle, milking that prehensile tongue for all it is worth. The giantess drinks down your release with eager, guttural swallows, her broad tongue curling inside you to lap every corner of your channel clean before finally sliding free with a loud, wet slurp. She lets out a heavy, satisfied breath, swiping that dark ribbon across her chin to catch the overflow while gazing up at you with heavy-lidded admiration. 'Damn, baby,' she chuckles, her heavy balls shifting as she adjusts her throbbing cock. 'You taste like heaven itself. Best five-star meal I've had since this whole city went crazy.'";
	CreatureSexAftermath "Giraffe" receives "OralPussy" from "Player";

to GiraffeWin_Frottage_F:
	say "     [if Player is not naked]Stripping away your lower clothes, you [else]You [end if]straddle the towering herm's sprawling form, looking down at the colossal pink weapon resting between her legs. With a full two feet of length and a thickness exceeding a human's arm, any attempt at genuine penetration would be madness at your scale. Instead, you lower your dripping heat directly onto the hot, spotted flesh of her shaft, pressing your swollen outer lips flush against the broad underside of her phallus. The immediate contrast of soft, wet folds against taut, hot rubbery skin sends a jolt of pure electricity through your spine. Her leaf-shaped ears perk forward as the unmistakable aroma of female arousal hits her sensitive nostrils, her hands immediately coming up to cradle your hips. 'Mmm, sweet mercy, girl,' she rumbles with an appreciative groan, her green eyes dilating with immediate hunger. 'You smell so damn delicious it's almost a crime.'";
	say "     Sliding your hips forward and back, you begin riding the immense shaft like a pommel horse, spreading your glistening nectar along the entire length of her member. Copious pre-cum weeps from her flared, flat head, blending with your hot feminine slickness to turn her skin into a frictionless playground. The giantess arches her back with a guttural groan, her heavy, lap-filling balls churning against the pavement as she bucks gently beneath your weight. 'God, what I wouldn't give to shrink this monster down just enough to fit,' she pants, her dark nails digging possessively into the meat of your thighs. 'I'd love nothing more than to sink this heavy bone deep into that snug, tight little pussy of yours, darling! But damn if your sweet cream doesn't feel like absolute heaven painted all over my shaft.'";
	WaitLineBreak;
	say "     The relentless friction against your clit rapidly drives you toward the brink, every grinding pass across the swollen ridge of her crown sending blinding spasms through your lower belly. Squeezing your eyes shut, your orgasm washes over you in a wave of ragged gasps, your soaking cunt clenching rhythmically as it floods her shaft with fresh femcum. Your violent trembling triggers her own release, her massive twenty-four-inch pillar throbbing violently before erupting in a heavy, pulsing deluge. Great fountains of thick, creamy giraffe seed blast upward from her slit, splashing in warm, heavy waves across your stomach, chest, and inner thighs. The sheer pressure and volume of her climax drenches your entire front, coating both of you in an intimate, steaming glaze of mingled fluids as she roars her pleasure to the open sky.";
	say "     Slumping forward onto her heaving, cream-patterned chest, you rest in the warm aftermath while the giantess cradles you against her plump breasts. She chuckles warmly, her leaf-shaped ears flicking with lazy contentment as she surveys the copious puddle of white seed and female nectar pooled over your tangled bodies. 'Look at the glorious mess we made, sweetheart,' she purrs softly, nudging your cheek with her tapered muzzle. Unfurling that magnificent blue-black tongue, she sets to work grooming you with long, dexterous strokes. The velvet-firm muscle sweeps effortlessly over your sticky skin, cleaning your chest, belly, and thighs before tenderly lapping every drop of sweet cream from between your trembling folds. By the time she retracts that marvelous tongue, you are left tingling and utterly spotless in her gentle, muscular embrace.";
	CreatureSexAftermath "Giraffe" receives "Frottage" from "Player";

to GiraffeWin_VaginalRide:
	say "     Towering over the fallen herm, your own large frame casts a long shadow across her sprawling form, matching her height. [if Player is not naked]Once you strip away your lower garments, you [else]You [end if]reveal a dripping, swollen vulva scaled to your proportions, glistening with arousal and ready for action. Her green eyes go wide as saucers when she looks up between your sturdy thighs, realizing that you possess a womb and passage capable of taking every single inch of her payload. 'Sweet mother above,' she whispers in reverent shock, broad hands trembling as she reaches up to steady your muscular calves. 'A woman big enough to take the whole damn thing! Please tell me I'm not dreaming, gorgeous. Come down here and take my monster cock whole!'";
	say "     Straddling her hips, you center your drenched entrance directly over the blunt, pink crown of her twenty-four-inch phallus and begin a slow, seamless descent. Rather than tearing or meeting impossible resistance, your deep feminine canal stretches eagerly to accommodate her incredible girth, welcoming the thick, spotted meat with a wet, squelching sigh. Inch after heavy inch vanishes into your interior, your inner walls coating her sensitive skin in hot, slick nectar as you sink lower and lower. The giantess lets out an earth-shaking moan of pure, unadulterated bliss, her claws digging deep into the asphalt as she feels her entire shaft disappearing into a tight, wet cunt. When your pelvis finally slaps flush against her groin, burying her to the absolute hilt, she throws her head back and wails in rapturous ecstasy.";
	WaitLineBreak;
	say "     Riding her with powerful, vertical drops, you set a heavy rhythm that sends tremors rippling through both of your bodies. Each downward plunge brings your hips crashing down against her lap-filling testicles with wet, echoing impacts that leave her gasping for breath. Your deep, ribbed passage milks her length with every stroke, the snug, internal friction generating an extraordinary heat that softens the rubbery firmness of her spotted meat. She clutches your waist with desperate adoration, her leaf-shaped ears pinned back as that long blue-black tongue lolls from her parted muzzle in wanton surrender. 'Yes, squeeze it, ride that bone!' she groans, her hips bucking upward to meet your momentum. 'I never thought I'd feel a real pussy wrapped tight around this whole rod! You were made just for me, darling!'";
	say "     The relentless friction against your deepest nerves drives you both toward an overwhelming peak, your vaginal walls clamping down in violent spasms as your climax crests through your core. Your internal contractions trigger her own volcanic release; her twenty-four-inch cock pulses furiously as gallons of thick, creamy seed blast straight into your deepest recesses. Immense, impossible volume quickly overfills your pussy, creating an exquisitely gushy creampie as pressurized rivers of warm, frothing cum squirt outward around her thick base. White cream bubbles past your swollen lips, trickling down the underside of her embedded shaft and pooling across her heavy balls in a rich, glistening flood. She wails in absolute fulfillment, shivering beneath your weight as she pumps you full to bursting, completely sated by your glorious, tight embrace.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Giraffe";

to GiraffeWin_CockWorship:
	say "     Dropping to your knees between her splayed digitigrade legs, you look up with reverent appreciation at the colossal pink pillar resting against her cream underbelly. The towering herm lets out a low, pleased hum that vibrates deep in her long chest, resting her hands behind her on the pavement to give you total access. Reaching out with both palms, your fingers cradle the warm, heavy curves of her lap-filling testicles, gently lifting their substantial weight to stroke the sensitive skin beneath. A soft groan rumbles from her tapered muzzle as you press tender kisses along the underside of the massive scrotum, inhaling the potent musk of her arousal. Shifting upward, your tongue darts out to taste the underside of her twenty-four-inch shaft, tracing a slow, deliberate path through the short bristly fur of her groin to the smooth, spotted expanse of her member. 'Mmm, that is the way, sweetheart,' she purrs softly, her leaf-shaped ears flicking with pure delight. 'Give that heavy meat all the love it deserves.'";
	say "     Wrapping both hands around the thick base of her shaft, you begin a steady, two-handed pump, sliding your palms along the hot, velvet-smooth surface. Copious streams of clear pre-cum weep from her flared, flat crown, providing an effortless lubricant that turns her length into a slick, glistening monument. Leaning in close, you lap greedily at the weeping slit, your tongue swirling over the wide, swollen rim of her head while your hands milk the substantial girth below. The giantess arches her back in sheer ecstasy, her cloven hooves scraping against the asphalt as her hips tilt upward to meet your mouth. Every rhythmic stroke draws a deep, vibrating shudder through her eight-foot frame, her prehensile blue-black tongue lolling past her lips as she loses herself to the exquisite worship. 'Oh God, yes, keep working that tip,' she pants, her dark nails curling against the ground. 'You're gonna make this monster blow like a broken hydrant!'";
	WaitLineBreak;
	say "     Sensing her imminent peak, you redouble your efforts, your hands pumping in a frantic, white-hot rhythm while your tongue laves feverishly across her weeping crown. The enormous pillar pulses with terrifying pressure, the veins along the shaft standing out in rigid relief as her heavy balls churn violently between her thighs. A thunderous, breathless bellow tears from her throat as her twenty-four-inch cock erupts in a cataclysmic flood. Volcanic geysers of thick, creamy seed blast from her flared slit, arcing high into the air before raining down in heavy sheets. The sheer, impossible volume of her release drenches your face, shoulders, and chest, plastering your hair to your forehead and coating your torso in warm, musky cream. Pulse after heavy pulse continues to pump from her quivering shaft, the relentless torrent flooding downward until a vast, steaming lake of giraffe cum pools several inches deep between her splayed legs.";
	if Player is herm:
		say "     Kneeling in the center of the steaming white flood, the overwhelming sensory assault and the sheer spectacle of her release push your dual desires into the red. You reach down with slick, cum-drenched hands, one pumping your rigid shaft with frantic strokes while the fingers of the other slide into your dripping pussy to work its depths. The twin sensations accelerate your arousal into a furious crescendo, culminating in a simultaneous, full-body climax. Your cock erupts in heavy, arcing ropes of seed while your soaking channel convulsively squirts, both streams raining directly into the milky reservoir pooled between her thighs to blend your double release with her colossal lake. The giantess watches with heavy-lidded admiration, letting out a deep, contented sigh as she extends that magnificent blue-black tongue to playfully lick a thick dollop of cum from your collarbone. 'Damn, sweetie, look at that glorious mess,' she chuckles warmly, her chest heaving as she sinks back into the pavement. 'Now that was a tribute fit for a queen.'";
	else if Player is male:
		say "     Kneeling in the center of the steaming white flood, the overwhelming sensory assault and the sheer spectacle of her release push your own desire into the red. You free your own rigid cock and wrap a slick, cum-covered hand around the base, pumping your shaft with frantic, desperate strokes right over the puddle. With a strangled groan, your own climax tears through your groin, spraying thick ropes of your seed directly into the milky reservoir pooled between her thighs, mingling your essence with the colossal lake of her fluid. The giantess watches with heavy-lidded admiration, letting out a deep, contented sigh as she extends that magnificent blue-black tongue to playfully lick a thick dollop of cum from your collarbone. 'Damn, sweetie, look at that glorious mess,' she chuckles warmly, her chest heaving as she sinks back into the pavement. 'Now that was a tribute fit for a queen.'";
	else if Player is female:
		say "     Kneeling in the center of the steaming white flood, the overwhelming sensory assault and the sheer spectacle of her release push your own desire into the red. You quickly slide a slick, cum-soaked hand down to your dripping groin, fingers slipping effortlessly past swollen lips to rub directly against your hypersensitive clit. The friction of the warm, musky fluid against your pussy is intoxicating, driving your hips into frantic, circular motions right over the puddle. With a shattered cry, your own climax washes over you, your vaginal walls spasming in violent waves as your feminine nectar gushes into the milky reservoir pooled between her thighs, mingling your release with the colossal lake of her fluid. The giantess watches with heavy-lidded admiration, letting out a deep, contented sigh as she extends that magnificent blue-black tongue to playfully lick a thick dollop of cum from your collarbone. 'Damn, sweetie, look at that glorious mess,' she chuckles warmly, her chest heaving as she sinks back into the pavement. 'Now that was a tribute fit for a queen.'";
	else:
		say "     Kneeling in the center of the steaming white flood, the overwhelming sensory assault and the sheer spectacle of her release push your desire into the red. You bring a slick, cum-coated hand down between your legs, rubbing the sensitive skin of your crotch in firm, rhythmic circles. The warm, musky friction draws a sharp intake of breath from your lungs, sending shivers through your core as you chase your own peak. A deep, internal climax washes over you, rippling through your nervous system in a succession of profound, full-body shudders. You tremble and pant heavily, riding the wave of pure pleasure until the tingling warmth slowly recedes. The giantess watches with heavy-lidded admiration, letting out a deep, contented sigh as she extends that magnificent blue-black tongue to playfully lick a thick dollop of cum from your collarbone. 'Damn, sweetie, look at that glorious mess,' she chuckles warmly, her chest heaving as she sinks back into the pavement. 'Now that was a tribute fit for a queen.'";
	CreatureSexAftermath "Player" receives "OralCock" from "Giraffe";

to say giraffedesc:
	say "     You find yourself facing off against a tall, slender giraffe humanoid. Measuring over eight feet to the top of her head, much of that height comes from her extra-long neck. Her body is covered in short bristly fur, irregular shapes of dark brown separated by a random pattern of cream, though lighter on the chest and stomach. Her head is sitting atop a thick, long neck. Her narrow face is dominated by a tapered muzzle, containing a long blue-black tongue. A pair of leaf-shaped ears constantly flick about on either side of the head and have two short, boney horns between them. Her body is slender, but toned with shapely limbs and a curvy waist that shows off her plump breasts. Her arms are elongated and slender, the joints thick and solid. Her hands are broad, ending in three fingers and a thumb each with a thick dark nail. Her legs are long, but sturdy to support her sexy body. The solid joints bent in a digitigrade stance, ending in black cloven hooves. She has a ropey, knee-length tail, ending in a tuft of black fur. Hanging between those legs, she has a massive thick, pink, flat-headed maleness tucked into a sheath that has trouble holding the hefty monster cock. Below that hangs a pair of lap-filling balls.";
	say "     Eyeing you, the herm slides her long tongue in a disturbingly sensual display across her muzzle. 'Mmm... [one of]how about a kiss, sweetie[or]can I get a kiss, hot stuff[or]gimme some sugar, baby[or]you look like you need a kiss, am I right[or]how about some tonsil tennis, hon[at random]?' she says, leaning in uncomfortably close. From the way her cock throbs and slips a little further from her sheath, it seems that's not all she's got in mind for you.";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Giraffe"	"[PrepCombat_Giraffe]"

to say PrepCombat_Giraffe:
	project the Figure of GiraffeHerm_soft_icon;
	setmongender 5; [creature is herm]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Giraffe"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Giraffe" to infections of EquineList;
	add "Giraffe" to infections of FurryList;
	add "Giraffe" to infections of NatureList;
	add "Giraffe" to infections of HermList;
	add "Giraffe" to infections of BluntCockList;
	add "Giraffe" to infections of BipedalList;
	add "Giraffe" to infections of TailList;
	now Name entry is "Giraffe";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The giraffe slides her tongue across your face in a long slurp that sends shivers of delight through you.[or]The well-endowed herm slaps her have cock against you, trying to knock you down with her hefty slab of meat.[or]She kicks you solidly with her hoof![or]The tall herm charges you, using her head and long neck like a battering ram to your gut![or]Her long reach lets her deck you in the face with a solid punch![at random]";
	now defeated entry is "[beatthegiraffe]";
	now victory entry is "[losetogiraffe]";
	now desc entry is "[giraffedesc]";
	now face entry is "sitting atop a thick, long neck. Your narrow face is dominated by a tapered muzzle, containing a long blue-black tongue. A pair of leaf-shaped ears constantly flick about on either side of your head with two short, bony horns between them";
	now body entry is "tall and slender, with toned, shapely limbs and a curvy waist giving you an overall feminine figure. Your arms and legs are elongated and slender, the joints thick and solid. Your hands have two thick fingers and a thumb, each with a thick, dark nail. Your feet are cloven hooves at the end of digitigrade legs";
	now skin entry is "brown spotted, fur-covered"; [ Skin Description, format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
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
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 55; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Stable"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 24; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 5; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 24;
	now Cunt Tightness entry is 12;
	now SeductionImmune entry is false;
	now libido entry is 75; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "libido pill";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "giraffe milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "giraffe cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]tall[or]slender[or]shapely[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of][']raffe[or]giraffe[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 3 - Endings

[
Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Giraffe Infection"	"Infection"	""	Giraffe Infection rule	1000	false

This is the Giraffe Infection rule:
	if Player has a body of "Giraffe":
		trigger ending "Giraffe Infection"; [Here it states, that the ending has been played.]
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
