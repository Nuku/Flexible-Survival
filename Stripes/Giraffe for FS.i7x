Version 1 of Giraffe for FS by Stripes begins here.
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[It has been converted into a herm for use in the Stables area]

"Adds Giraffe to Flexible Survival."

when play begins:
	add { "Giraffe" } to infections of hermaphrodite;
	add { "Giraffe" } to infections of furry;

nogiraffesex is a number that varies.

to say losetogiraffe:
	now nogiraffesex is 0;
	if hp of player > 0:
		say "     Unwilling to continue to resist the giraffe's advances, you are pulled into a French kiss that dives her long, blue tongue down your throat";
	otherwise:
		say "     Unable to continue to resist the giraffe's advances, you are pulled into a French kiss that dives her long, blue tongue down your throat";
	say ".  You can't help but moan into this kiss as her agile tongue squirms inside you, sending shivers of delight through your body.  In a daze after the kiss, she pushes you down into a nearby room, onto a bed and leaps atop you.";
	let raffesex be 0;
	let mchance be 4;
	if "Submissive" is listed in feats of player, increase mchance by 2;
	if "More Anal" is listed in feats of player, increase mchance by 2;
	if "MPreg" is listed in feats of player, increase mchance by 2;
	if "Less Anal" is listed in feats of player, now mchance is 0;
	if ( cunts of player is 0 and a random chance of mchance in 12 succeeds ) or (cunts of player is 0 and cocks of player is 0):
		say "     You are pushed over onto your stomach and something warm and moist prods against your anus.  You brace yourself for a pounding from the crazed mutant, but instead what penetrates you moves about inside of you, hitting every little point of pleasure it can find.  You dare a look behind you to see the giraffe's muzzle pushed between your legs, her tongue working wonders inside you as it plumbs your very depths.  After a while, she pulls her head back, sliding her body up along your backside as a different heat replaces the last one.  And as the giraffe's long neck rubs against yours, you realize this is the one you expected before, her massive cock pushing into you and stretching your asshole wide now that she's gotten you ready with her tongue.";
		say "     With her tongue having prepared you, there's little discomfort and even that fades quickly as she pounds away at you.  With a heavy thrust, she spears you on her cock.  Vigorous thrusting brings both you and the giraffe quickly to an orgasm.  You feel her hot seed spreading throughout your bowels, a gush of fluid from your overstuffed asshole soaking your thighs.  Her large output leaves your belly plump and rounded[if cocks of player > 0].  Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if].  Done with you, the giraffe pulls out, a gush of her seed flowing from your distended anus as she strides off in search of more amusement, leaving you behind to recover as best you can.[mimpregchance]";
	otherwise if cunts of player > 0 and ( cocks of player is 0 or a random chance of 2 in 3 succeeds ):
		say "     You are pushed over onto your stomach and something warm and moist prods against your slit.  You brace yourself for a pounding from the crazed mutant, but instead what penetrates you moves about inside of you, hitting every little point of pleasure it can find.  You dare a look behind you to see the giraffe's muzzle pushed between your legs, her tongue working wonders inside you as it plumbs your very depths.  After a while, she pulls her head back, sliding her body up along your backside as a different heat replaces the last one.  And as the giraffe's long neck rubs against yours, you realize this is the one you expected before, her massive cock pushing into you and stretching your pussy wide now that she's gotten you ready with her tongue.";
		if cunt length of player < 16:
			say "     With her tongue having prepared you, there's little discomfort and even that fades quickly as she pounds away at you.  With a heavy thrust, she spears you on her cock.  Vigorous thrusting brings both you and the giraffe quickly to an orgasm.  You feel her hot seed spreading throughout your womb, a gush of fluid from your cunt soaking your thighs.  Her large output leaves your belly plump and rounded, as if already pregnant with the giraffe's well-hung offspring[if cocks of player > 0].  Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if].  Done with you, the giraffe pulls out, a gush of her seed flowing from your distended cunt as she strides off in search of more amusement, leaving you behind to recover as best you can.[impregchance]";
		otherwise:
			say "     With her tongue having prepared you, her large cock spears into you easily.  Vigorous thrusting brings both you and the giraffe quickly to an orgasm.  You feel her hot seed spreading throughout your womb, a gush of fluid from your cunt soaking your thighs.  Her large output leaves your belly plump and rounded, as if already pregnant with the giraffe's well-hung offspring[if cocks of player > 0].  Your cock gives a twitch as it sprays the bedding beneath you with ropey streams of your own cum[end if].  Done with you, the giraffe pulls out, a gush of her seed flowing from your distended cunt as she strides off in search of more amusement, leaving you behind to recover as best you can.[impregchance]";
	otherwise if cocks of player > 0:
		say "     You are pushed over onto your back and the tall, slender herm climbs atop you, grinding her curvy hips down into your lap.  Her hefty cock and large balls weigh heavily across your body as she grinds down onto your cock, quickly getting you erect so she might ride your pole.  As she sinks down onto your shaft, her [if cock length of player > 36]shapely body taking your [cock size desc of player] rod with ease and only a slight pause to adjust despite the clear outline your throbbing meat makes in her[otherwise if cock length of player > 24]shapely body taking your [cock size desc of player] rod with surprising ease, stuffing it all into her without delay[otherwise]shapely body taking your [cock size desc of player] rod in without delay[end if].  As she rides you, she runs her hands over her throbbing, two foot long cock and heavy balls.  Large spurts of her precum splatter across your body and face.  With her pounding her hips down onto yours and her cunt squeezing down around your shaft, it's not long before you cum, pumping your hot load into her.  And she's more than eager to return the favour, blasting her hot seed across your upper body and face, coating you in her sperm.  Once she's drained you and emptied her balls all over you, she gets up and strides out, leaving you there, panting and bathed in her semen.";


to say beatthegiraffe:
	say "     Having beaten the giraffe, you knock the herm to the ground.  She moans softly, blue tongue hanging out as she pants for breath";
	if nogiraffesex > 2:
		say ".  You resist taking advantage of the fallen herm like the others before her and instead send her packing with a boot to her rear.  She whimpers and rubs her sore ass as she goes off looking for someone to kiss it and make it better.";
	otherwise if cunts of player > 0 or cocks of player > 0:
		say ".  You find yourself tempted to make use of that agile tongue to get a little relief for yourself.  Shall you do so?";
		if the player consents:
			if cunts of player > 0:
				say "     [if cocks of player > 0]While you're tempted to use her muzzle for your cock, you really want that tongue of hers in your cunny.  [end if]Pressing her muzzle to your juicy slit, you grip her head by her short, knobby horns and grind your pussy against her lips.  Her tongue slides out, diving into your pussy and writhes around inside you.  You moan in pleasure and force her (though little forcing is actually needed once she's started) to eat you out with her agile tongue until you've had several powerful climaxes that leave you quite satisfied.  When you're finally done with her, you push her head back, her tongue popping out with a wet slurp.  She smiles up at you, licks her muzzle with a long, slow swipe of her tongue and bounds off, looking for someone else to play with now that you've gotten her so very hard.  You almost feel bad for the poor, unfortunate soul who'll end up speared on that thick cock of hers... almost.";
			otherwise:
				say "     Pressing her muzzle to your cock, you grip her head by her short, knobby horns and grind your throbbing cock against her lips.  Her tongue slides out and wraps around your shaft, working itself all over it as she starts to suck you off with soft moans of delight.  You groan in pleasure and for her (though little forcing is actually needed once she's started) to lick and suck you until you blow your load down that long throat of hers, feeding her your thick semen, which she licks all up.  When you're finally done with her, you push her head back, her tongue popping off a wet slurp.  She smiles up at you, licks her muzzle with a long, slow swipe of her tongue and bounds off, looking for someone else to play with now that you've gotten her so very hard.  You almost feel bad for the poor, unfortunate soul who'll end up speared on that thick cock of hers... almost.";
		otherwise:
			say "     Resisting the urge to give into your baser instincts, you push the horny herm away and send her packing with a boot to her rear.  She whimpers and rubs her sore ass as she goes off looking for someone to kiss it and make it better.";
			increase nogiraffesex by 1;
	otherwise:
		say ".  Having little interest in sex at the moment, you send her packing with a boot to her rear.  She whimpers and rubs her sore ass as she goes off looking for someone to kiss it and make it better.";


to say giraffedesc:
	say "     You find yourself facing off against a tall, slender giraffe humanoid.  Measuring over eight feet to the top of her head, much of that height comes from her extra-long neck.  Her body is covered in short bristly fur, irregular shapes of dark brown separated by a random pattern of cream, though lighter on his chest and stomach.  Her head is sitting a top a thick, long neck.  Her narrow face is dominated by a tapered muzzle, containing a long blue-black tongue.  A pair of leaf-shaped ears constantly flick about on either side of his head and have two short, boney horns between them.  Her body is slender, but toned with shapely limbs and a curvy waist that shows off her plump breasts.  Her arms are elongated and slender, the joints thick and solid.  Her hands are broad, ending in two fingers and a thumb each with a thick dark nail.  Her legs are long, but sturdy to support her sexy body.  The solid joints bent in a digitigrade stance, ending in black cloven hooves.  She has a ropey, knee-length tail, ending in a tuft of black fur.  Hanging between those legs, she has a massive thick, pink, flat-headed maleness tucked into a sheath that has trouble holding the hefty monster cock.  Below that hangs a pair of lap-filling balls.";
	say "     Eyeing you, the herm slides her long tongue in a sensual display across her muzzle.  'Mmm... [one of]how about a kiss, sweetie[or]can I get a kiss, hot stuff[or]gimme some sugar, baby[or]you look like you need a kiss, am I right[or]how about some tonsil tennis, hon[at random]?' she says, leaning in uncomfortably close.  From the way her cock throbs and slips a little further from her sheath, it seems that's not all she's got in mind for you.";


Section 2 - Monster Insertion
 
Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Giraffe"; [Name of your new Monster]
	now attack entry is "[one of]The giraffe slides her tongue across your face in a long slurp that sends shivers of delight through you.[or]The well-endowed herm slaps her have cock against you, trying to knock you down with her hefty slab of meat.[or]She kicks you solidly with her hoof![or]The tall herm charges you, using her head and long neck like a battering ram to your gut![or]Her long reach lets her deck you in the face with a solid punch![at random]";
	now defeated entry is "[beatthegiraffe]";
	now victory entry is "[losetogiraffe]";
	now desc entry is "[giraffedesc]";
	now face entry is "sitting atop a thick, long neck.  Your narrow face is dominated by a tapered muzzle, containing a long blue-black tongue.  A pair of leaf shaped ears constantly flick about on either side of your head with two short, boney horns between them";
	now body entry is "tall and slender, with toned, shapely limbs and a curvy waist giving you an overall feminine figure.  Your arms and legs are elongated and slender, the joints thick and solid.  Your hands have two thick fingers and a thumb, each with a thick, dark nail.  Your feet are cloven hooves at the end of digitigrade legs";
	now skin entry is "brown spotted, fur covered";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a thin, ropey, knee-length tail ending in a tuft of black fur.";
	now cock entry is "[one of]thick[or]pink[or]flat-headed[or]equine[at random]";
	now face change entry is "your vision seems to swim for a moment as every muscle in your neck clenches tight.  You neck stretches longer as it thickens, moving your point of view upwards so fast it makes you slightly dizzy.  A tapered muzzle pushes its way from your face, as twin points of pain on your forehead erupt into a pair of short, knobby horns.  Your mouth feels like it's filled with cotton.  As your tongue flops out of your mouth, you find it long and blue-black in colour.  Very prehensile, it slides across your muzzle in a slow, sensual motion";
	now body change entry is "you feel your midsection starting to tingle, your torso starting to grow a little as a slight wave of nausea signals your internal organs moving about.  Your body grows elongated and slender with a curvy waist.  Your arms stretch out slowly, the bones elongating as your joints thicken up, giving them a knobby appearance.  A few of your fingers begin to fuse on your broadening hands, leaving you with only your thumb and two other digits, each with a thick black nail.  Your legs swell with lean dense muscle as the grow longer, shooting you upwards a short distance.  Your thickening joints begin to bend at strange angles moving your into a digitigrade stance.  Your toes meld together at the end of your lengthening foot, becoming dark black cloven hooves";
	now skin change entry is "itching overwhelms your nerves as short bristly brown fur begins to push out of every follicle on your body.  Starting at your hands and feet, lines of cream colored fur begin to cover you, fracturing the brown fur into an irregular pattern of spots and shapes";
	now ass change entry is "a strange tingle starts above your ass as a long tail sprouts, brushing against your thighs and the back of your knees as it sways";
	now cock change entry is "a pleasurable tingling runs through your cock as it turns a pale pink.  The head flares out and flattens before hooking slightly downwards.";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 55;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 7;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Stables";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 20;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 5;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 24;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 12;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 75;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]tall[or]slender[or]shapely[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of][']raffe[or]giraffe[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

[
when play ends:
	if bodyname of player is "Template":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Giraffe for FS ends here.