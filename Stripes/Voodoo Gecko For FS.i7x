Version 1 of Voodoo Gecko For FS by Stripes begins here.

"Adds a Voodoo Gecko creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

vgeckoloss is a number that varies.		[fights lost]
vgeckobeaten is a number that varies.		[fights won]

when play begins:
	add { "Voodoo Gecko" } to infections of hermaphrodite;	[shemale]
	add { "Voodoo Gecko" } to infections of furry;
	add { "Voodoo Gecko" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Voodoo Gecko" } to infections of Reptilelist;	[list of reptile infections]

to say losetovoodoogecko:
	if hp of player > 0:
		say "     Unwilling to continue resisting her, you drop to your knees";
	otherwise:
		say "     You stumble to your knees as you can resist her dark power no longer";
	say ".  She grabs your head and starts a new chant, taking some hair, scales or blood from you and pushes it between the seams of her voodoo doll.  As her chant reaches its climax, the shaman points her doll at you and dark purple mists burst forth from it and streams towards you.  It seems to grab onto you and then sink down into you, seeping into your body until you can feel her tight grip squeezing around your chest as she clutches the doll.";
	if vgeckoloss is 0 or ( vgeckoloss > 2 and a random chance of 1 in 5 succeeds ):				[first loss - fingering]
		if cunts of player > 0:
			say "     Finding it difficult to move, you can't resist as she pushes you down onto your back with her foot.  Holding you like that, she grabs the doll and brushes her scaly finger across the hole at its crotch.  The sensation of this echoes through your pussy.  Soon she's pressed her finger, with its enlarged fingertip, into the doll, causing you to feel that relatively thick digit stuffed inside you.  Being the size of a small teddy bear, it feels like you've got a giant stuffing its finger into you and rubbing along your inner walls.  And she doesn't relent there and pushes a second finger into the voodoo doll, making you groan loudly your pussy is stuffed even further.  Soon another digit follows that, and then another, your body quivering as you feel so incredibly stretched out by those questing fingers rubbing inside the voodoo doll.  In a mix of discomfort and pleasure, you cum repeatedly, your body quivering weakly as you pass out.  By the time you awaken, the shaman is gone and you're left feeling the lingering traces of your connection.";
		otherwise:
			say "     Finding it difficult to move, you can't resist as she pushes you down onto your back with her foot.  Holding you like that, she grabs the doll and brushes her scaly finger across the hole at its crotch.  The sensation of this sends echoes through your anus.  Soon she's pressed her finger, with its enlarged fingertip, into the doll, causing you to feel that relatively thick digit stuffed inside you.  It feels like you've got a giant stuffing its finger into you and rubbing along your inner walls.  And she doesn't relent there and pushes a second finger into the voodoo doll, making you groan loudly your ass is stuffed even further.  Soon another digit follows that, and then another, your body quivering as you feel so incredibly stretched out by those questing fingers rubbing inside the voodoo doll.  In a mix of discomfort and pleasure, you [if cocks of player > 0]cum[otherwise]cry out[end if] repeatedly, your body quivering weakly as you pass out.  By the time you awaken, the shaman is gone and you're left feeling the lingering traces of your connection.";
	otherwise if vgeckoloss is 1 or ( vgeckoloss > 2 and a random chance of 2 in 5 succeeds ):			[second loss - oral]
		say "     Finding it difficult to move, you can't resist as she pushes you down onto your back with her foot.  Holding you like that, she grabs the doll and presses her glans to its mouth hole.  Her cock, as you can see well from your current position, is about eight inches.  While this is larger than average, it seems massive in comparison to the doll and you can feel it as so huge in your mouth and throat as she sleeves her shemale cock in the voodoo doll of you.  Given that the doll's sewn body is barely large enough to hold her cock, tt feels like your whole body is being crammed full of that pillar of meat.  The sensation of every thrust she makes rocks through you.  You can only moan and pant weakly, your [bodydesc of player] quivering as you're mystically face-fucked with a pulsating penis by proxy.";
		say "     After several minutes of this abuse, she groans and cums loudly, shooting her load into the doll.  She cums quite profusely, bloating the doll's belly with her output, a response that is echoed in you.  Your belly swells and bloats round like a balloon and gecko cum spills from your mouth[if cocks of player > 0 or cunts of player > 0].  You end up cumming with a gurgling moan, the sensations overwhelming you despite the twisted nature of the experience[otherwise].  All you can do is moan and gurgle wetly as the sensations of this twisted experience overwhelm you[end if].  Left overstuffed and drooling violet-streaked gecko cum that slowly melts away into purple mist, you pass out.  When you finally regain consciousness, still quite full, but drained enough to move, the shaman is nowhere to be found and you're left with the lingering traces of your connection.";
		let yy be 15;
		if "Magpie Eyes" is listed in feats of player, now yy is 20;
		if a random chance of yy in 100 succeeds:
			say "     You manage to collect some of the mystical gecko cum in a container before it evaporates away.";
			increase carried of gecko cum by 1;
	otherwise:			[third loss - fucked]
		if cunts of player > 0:
			say "     Finding it difficult to move, you can't resist as she pushes you down under her foot once again.  Holding you like that, she grabs the doll, this time pressing her cock to its crotch hole.  She grinds it against that lower entrance, a sensation you can feel at your pussy.  Knowing what's coming, but unable to resist, the gecko grins and licks her lips as she pushes her shemale cock into the doll.  You can't help but moan loudly as it feels like a penis as long as your body is being stuffed inside your cunt and womb.  Each thrust makes your whole body quake with pleasure as what feels like an enormous cock drives into you again and again.";
			say "     The reptilian shemale takes her time, drawing out her enjoyment.  She grins broadly down at you as you squirm beneath her foot with every thrust she makes into the doll.  Your hot juices flow rampantly as you clench and squeeze around that mighty pillar of flesh you feel inside you, orgasming several times despite yourself.  Your [bodydesc of player] body feels like it's being stretched and stuffed by the shaman's strange power as your reproductive tract is crammed full of a cock as big as you are.";
			say "     After a good, long session of fucking the voodoo doll, the gecko moans loudly and drives her cock fully into it one last time before cumming hard.  Her heavy load blasts into it, stuffing it with her semen to the point that it's bloated and swollen with cum.  Your body, responding in kind, swells and grows round like a balloon as hot gecko cum fills your womb like it's being pumped into you from a firehose.  You groan loudly and cum hard as the strange sensations are too much for you.  Gecko cum streaked with violet drools from your overstretched cunt, though your womb ends up keeping a lot of it trapped inside as the gecko replaces her cock with her finger, trapping the load inside the dool and so inside you.  The little that trickles out of you evaporates into purple mist, but the rest is still trapped inside by the time you pass out from exhaustion.  When you finally regain consciousness, the shemale shaman has left and you're able to struggle to your feet.  You're still quite heavy and full, but slowly returning to your normal size as your abused body recovers.[impregchance][impregchance]";
		otherwise:
			say "     Finding it difficult to move, you can't resist as she pushes you down under her foot once again.  Holding you like that, she grabs the doll, this time pressing her cock to its crotch hole.  She grinds it against that lower entrance, a sensation you can feel at your asshole.  Knowing what's coming, but unable to resist, the gecko grins and licks her lips as she pushes her shemale cock into the doll.  You can't help but moan loudly as it feels like a penis as long as your body is being stuffed past your tight ring and buried inside your bowels.  Each thrust makes your whole body quake with pained pleasure as what feels like an enormous cock drives into you again and again.";
			say "     The reptilian shemale takes her time, drawing out her enjoyment.  She grins broadly down at you as you squirm beneath her foot with every thrust she makes into the doll.  Your inner walls clench and squeeze around that mighty pillar of flesh you feel inside you[if cocks of player > 0], orgasming several times despite yourself[end if].  Your [bodydesc of player] body feels like it's being stretched and stuffed by the shaman's strange power as your digestive tract is crammed full of a cock as big as you are.";
			say "     After a good, long session of fucking the voodoo doll, the gecko moans loudly and drives her cock fully into it one last time before cumming hard.  Her heavy load blasts into it, stuffing it with her semen to the point that it's bloated and swollen with cum.  Your body, responding in kind, swells and grows round like a balloon as hot gecko cum fills your belly like it's being pumped into you from a firehose[if cocks of player > 0].  You groan loudly and cum hard as the strange sensations are too much for you[otherwise].  You groan loudly as you rub your hands over your swelling tummy[end if].  Gecko cum streaked with violet drools from your overstretched anus, though your bowels ends up keeping a lot of it trapped inside as the gecko replaces her cock with her finger, trapping the load inside the dool and so inside you.  The little that trickles out of you evaporates into purple mist, but the rest is still trapped inside by the time you pass out from exhaustion.  When you finally regain consciousness, the shemale shaman has left and you're able to struggle to your feet.  You're still quite heavy and full, but slowly returning to your normal size as your abused body recovers.[mimpregchance][mimpregchance]";
		let yy be 15;
		if "Magpie Eyes" is listed in feats of player, now yy is 20;
		if a random chance of yy in 100 succeeds:
			say "     You manage to collect some of the mystical gecko cum in a container before it evaporates away.";
			increase carried of gecko cum by 1;
	increase vgeckoloss by 1;

to say beatthevoodoogecko:
	if vgeckoloss is 0 or ( cocks of player is 0 and cunts of player is 0 ):
		say "     Striking the gecko shemale again, you knock her down and send her voodoo doll tumbling across the ground.  She groans weakly, too battered to pull herself back to her feet to continue fighting.  Giving her a hard boot in the rear, you send her scrambling away.  She snatches up her doll and hisses angrily as she makes her escape.";
	otherwise:
		say "     Striking the gecko shemale again, you knock her down and send her voodoo doll tumbling across the ground.  She groans weakly, too battered to pull herself back to her feet to continue fighting.  Looking at her voodoo doll and remembering what she did to you with it, you find yourself tempted to turn the tables on her a little.  Shall you give her a taste of her own dark medicine?";
		if the player consents:
			say "     Stepping over her as she tries to crawl towards her doll, you snatch it up.  Pulling a few strands of her indigo hair from her head, you stuff them into the voodoo doll.  You then grab her tightly in one arm, groping one of those plump breasts of hers.  As you do so, you press the doll to her face and order her say the words.  She is reluctant at first, but when you manhandle her breast and tug on her nipple ring a few times, she moans and relents, chanting the incantation to bind her and the doll in a burst of purple smoke.  And with that done, now the fun can begin.";
			if cocks of player > 0:
				say "     You push the gecko over onto her back and quickly push the voodoo doll down over her erection, causing her to cry out loudly.  Getting fucked by what feels like a massive version of her own cock while thrusting into the doll has the shemale squirming from the sensory overload.  Her throbbing manhood twitches and throbs inside the doll, resulting in spasms as the sensations of those movements feel relatively so much larger when echoed back to herself.  Something about how her tummy ripples and stretches each time you push the doll down around her shaft and it presses against the inside of the fabric sends a dark thrill through you.  It feels sinisterly satisfying to turn the tables on her.";
				say "     Feeling a rush of excitement yourself, you move overtop of her so your crotch is in her face while you watch that glowing cock of her being stuffed over and over into the voodoo doll of herself.  You thrust your [cock of player] penis into her mouth, fucking her face and forcing her to fellate you even as you make her to indirectly fuck herself.  She has difficulty focusing on your dick as you work the doll over her pulsing rod, so you rock your hips and thrust into her mouth instead[if anallevel is 3].  With your eyes right at her crotch, you get to enjoy every detail of her driving into the doll as well as the way her stretched anus quivers and clenches around the invisible log of cock that fills her in response.  You are able to peer into her that yawning passage and see its attempts to contract or tug with every motion of the doll[otherwise].  With your eyes right at her crotch, you're able to enjoy every detail of her driving her cock into the doll and watch her respond whenever you squeeze or move it over her pulsating rod[end if].";
				say "     Being so thoroughly used and abused all at once, the moaning creature finally cries out and cums hard, pumping her messy load into the doll and thereby filling her ass as well.  And as she's starting to grow round from the torrential flow filling her from her ass, you cry out in orgasmic relief and add your [cum load size of player] load shooting down her throat to further add to the sticky mess building up somewhere in the middle.  Soon she's bloated and rounded with violet-streaked semen leaking from her ass.  Unable to get up she's so full, all she can do it rub her overstuffed belly and groan as the gecko cum slowly drains out to evaporate into purple mist.";
			otherwise:
				say "     You push the gecko over onto her back and quickly push the voodoo doll down over her erection, causing her to cry out loudly.  Getting fucked by what feels like a massive version of her own cock while thrusting into the doll has the shemale squirming from the sensory overload.  Her throbbing manhood twitches and throbs inside the doll, resulting in spasms as the sensations of those movements feel relatively so much larger when echoed back to herself.  Something about how her tummy ripples and stretches each time you push the doll down around her shaft and it presses against the inside of the fabric sends a dark thrill through you.  It feels sinisterly satisfying to turn the tables on her.";
				say "     Feeling a rush of excitement yourself, you move overtop of her so your crotch is in her face while you watch that glowing cock of her being stuffed over and over into the voodoo doll of herself.  You press your pussy to her face and order her to start licking with a firm squeeze of the doll around her manhood.  Soon you have her struggling to eat you out even as you force her to indirectly fuck herself.  She has difficulty focusing on your pussy as you work the doll over her pulsing rod, so you grind your pussy down and hump her face[if anallevel is 3].  With your eyes right at her crotch, you get to enjoy every detail of her driving into the doll as well as the way her stretched anus quivers and clenches around the invisible log of cock that fills her in response.  You are able to peer into her that yawning passage and see its attempts to contract or tug with every motion of the doll[otherwise].  With your eyes right at her crotch, you're able to enjoy every detail of her driving her cock into the doll and watch her respond whenever you squeeze or move it over her pulsating rod[end if].";
				say "     Being so thoroughly used and abused all at once, the moaning creature finally cries out and cums hard, pumping her messy load into the doll and thereby filling her ass as well.  And as she's starting to grow round from the torrential flow filling her from her ass, you cry out in orgasmic relief and coat her face in your female juices.  Soon she's bloated and rounded with violet-streaked semen leaking from her ass.  Unable to get up she's so full, all she can do it rub her overstuffed belly and groan as the gecko cum slowly drains out to evaporate into purple mist.";
	increase vgeckobeaten by 1;

to say voodoogeckodesc:
	choose row monster from the table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	say "     You find yourself faced with a lizard-like creature in strange garb.  Guessing from its appearance, with its wide-tipped digits and broad head, you'd say it's been infected by some kind of gecko.  Its scales are a bright green with purple swirls and squiggles in ornate, almost ritualistic patterns.  It has a long, whip-like tail covered in the same markings.  It moves in quick, jerking motions that show a lot of flexibility.  Atop her wide-mouthed, broad head she has a ragged shock of indigo hair.";
	say "     The gecko is garbed in skimpy, colourful rags that are accented with small bones, feathers and little skulls.  In one hand, she holds a large, poorly-stitched dool with mismatched button eyes and several pins in it.  Unlike other voodoo dolls you've seen in photos or memorabilia, this one is more anatomical with holes at the mouth and crotch that have become sticky with white goo.  While she has very prominent breasts with nipple rings in them, she's also clearly got an eight inch cock rising up from her loincloth with no signs of a pussy beneath it, nor a visible ballsac for that matter.  That cock has the same violet swirls on it, which start to glow as she starts to chant and shake her body.  As the shemale shaman's chanting grows louder, so do the eyes of the voodoo doll.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Voodoo Gecko";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The voodoo shaman thrusts her voodoo doll forward and a swirling purple glow shoots from its eyes and blasts you![or]The gecko lunges forward in a spinning dance, striking you across the face with her tail with a hard slap![or]The shemale leaps onto you, pressing her oversized breasts into your face and quickly chants while smooshing you with them.[or]Pulling the needles from her doll, she jabs you in the thigh with them![or]With her chanting growing fast and low, she waves her doll in the air and darkness swirls around you.  Unseen shapes in the cloud grab and grope at you, trying to pull you down even as they excite you, making your self-control wane.[or]With a twist of her body, she wriggles around behind you to grind her erection firmly against your rear.[or]Grabbing your face with her clinging hand, she chants something low and dark while drawing a pattern over your heart with cum.  A chillness fills your chest even as a heat rises in your loins.[at random]";
	now defeated entry is "[beatthevoodoogecko]";
	now victory entry is "[losetovoodoogecko]";
	now desc entry is "[voodoogeckodesc]";
	now face entry is "the broad head of a gecko with a wide mouth and large, wild eyes";
	now body entry is "slender and flexible, bending in an unnatural manner when you walk.  Your limbs end in broad paws with enlarged fingertips and toes with small claws to help you grip and hold onto things.  Your gecko body has also formed a necklace of bones and feathers as well as some colourful rags adorned with an assortment of tiny, dangling skulls from various small animals and birds";
	now skin entry is "bright green scales marked by purple squiggles and swirls in ornate patterns across your";
	now tail entry is "Your tail is long, thin and covered in scales.";
	now cock entry is "[one of]violet-painted[or]human-like[or]swirl-marked[or]glow-painted[at random]";
	now face change entry is "your vision blurs with a purple haze washing across your eyes as they grow larger and displace sideways.  You can barely hear what sounds like wild chanting in the distance as your ears change, disappearing to just small holes at the side of your changing head.  Your jaw broadens as your skull flattens out, leaving you with the head of a gecko as the haze and chanting fade";
	now body change entry is "it stretches and shifts, gaining a strange flexibility as a purple haze seeps from and flows around your body.  In your confusion, you hear chanting voices and see bony hands and skulls swirling in the mists.  Your arms and legs change, gaining long digits with broadened, gripping fingers and toes.  As you look, tiny claws emerge from the tips of your digits, painted violet.  Sections of your skin sags and stretches as colourful rags and creepy bone jewelry form";
	now skin change entry is "patches of purple light spread across your body.  As these grow and spread from tiny points into ornate swirls and ritualistic patterns, the whole of you is covered in scales.  As the light from these dim, you are left with green lizard skin painted with purple markings";
	now ass change entry is "hips twitch and your tailbone cracks and pops.  With a deathly wailing and a burst of purple mist, a thin lizard tail bursts from your ass";
	now cock change entry is "pulses and throbs as purple splotches start to appear across it, glowing brightly.  While roughly human in shape, its flesh is discoloured green and left covered in purple swirls and patterns that grow brighter as you become aroused";
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 20;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 9;			[ These values may be used as part of alternate combat.]
	now per entry is 17;
	now int entry is 8;
	now cha entry is 16;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 54;			[ The monster's starting hit points. ]
	now lev entry is 10;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 10;			[ Monster's average damage when attacking. ]
	now area entry is "Midway";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 8;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 10;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 10;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 67;			[ Target libido the infection will rise towards. ]
	now loot entry is "gecko cum";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 28;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]flexible[or]lithe[or]slender[at random]";
	now type entry is "[one of]gecko[or]reptilian[or]lizard-like[at random]";
	now magic entry is true;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Drop Item - Gecko Cum

Table of Game Objects (continued)
name	desc	weight	object
"gecko cum"	"A sample of gecko cum in a sealed container.  It contains faintly glowing swirls and streaks of purple flowing through it."	1	gecko cum

gecko cum is a grab object. It is a part of the player. gecko cum is temporary.

The usedesc of gecko cum is "[drinkgeckocum]";

to say drinkgeckocum:
	say "     Feeling drawn to the dark power, you quickly open the container of semen and gulp it down before it can dissipate.  You moan softly and exhale a puff of violet mist that leaves a musky scent in the air as a rush of arousal wells up inside you.  Even as you feel the cum in your belly start to tingle with infected nanites and strange magicks, you can't help but smile darkly at the rush of excitement you experience.";
	increase libido of player by 5;
	setmonster "Voodoo Gecko";
	choose row monster from the table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	infect;


Section 4 - Endings

when play ends:
	if bodyname of player is "Voodoo Gecko":
		if humanity of player is less than 10:
			say "     As the voodoo chanting in your mind grows louder, your human personality is twisted and subsumed.  Heeding the call, you search the fairgrounds until drawn to one of the haunted houses.  With a heavy voodoo theme to it, you know it is where you belong.  As if sensing your arrival, several gecko shaman step out to greet you.";
			if player is pure:
				if vgeckobeaten >= 4 and vgeckobeaten >= ( ( vgeckoloss * 125 ) / 100 ):	[25% more wins than losses]
					say "     It is not a warm welcome, the head voodoo priestess striding forward to face you as she calls up her nanite-infused magicks.  Only starting to feel the rush of your own power flowing through you, you struggle at first to stand up to her.  But you learned much in dealing with the others before her and manage to hold your own for a while, even unleashing dark magicks of your own.  Eventually, you connect with some dark power inside you and twist one of the high priestess's attacks back on herself.  As the purple mists claw and grope her roughly while fucking her with cloudy tentacles, you wrench her skull-laden staff from her hands, stealing her power and becoming the new shaman [if cunts of player > 0 and cocks of player is 0]mistress[otherwise]master[end if] of the voodoo coven.  As the most powerful of them, you take your place as their leader, forcing their obedience through your power.";
					say "     It is amusing for a time for your people to molest the creatures wandering the fairgrounds who cross their path, occasionally turning them into zombie sex-slaves drained of will or infecting them to add to your numbers.  As the voodoo [if cunts of player > 0 and cocks of player is 0]mistress[otherwise]master[end if], the enslaved possessed by your followers are all freely yours to enjoy.  It is only when the military moves into the city and tries to suppress its denizens that your might and wrath is fully unleashed.  A few soldiers are captured and brought back to you.  These have their wills sucked from them and turned into your puppet slaves.  Their bellies stuffed with magic-infused gecko semen, they are returned to the enemy lines.  Save for the faint mists of purple floating across their eyes, they have no outward signs of infection and so are accepted back into their encampments.  There the ticking time bombs of infection are let loose as the magicks spew forth from them in clouds of dark, lustful mists that corrupt and infect those around them, sewing chaos through the ranks.  Many of those tainted by this attack are drawn back to you, becoming a horde of enslaved sex toys for your people to enjoy in any dark manner you like.  The sex slaves are infected, cross-bred or kept human as is their individual master's lustful whims, resulting in a varied multitude of puppet lovers for you to enjoy whenever you like.";
				otherwise if vgeckobeaten > vgeckoloss / 2:						[won at least half as many as lost]
					say "     It is not a warm welcome, the head voodoo priestess striding forward to face you as she calls up her nanite-infused magicks.  Only starting to feel the rush of your own power flowing through you, you struggle to stand up to her power and unleash dark magicks of your own.  You manage to stand up to her for a time, but are overwhelmed by her superior power when she ensnares you with a clawing, groping fog of purple mists that incapacitate you with lust as tendrils of it penetrate your every hole.  Forced to submit, you join her voodoo coven as another of the gecko shaman under her dark command.  Having proven her might to you and the others, you accept your place beneath her.";
					say "     You have fun making occasional forays to molest the creatures wandering the fairgrounds who cross your path.  While most are abused and left, some you drain of their will and turn into mindless sex slaves to be your servants.  You gather a small collection of these zombie slaves to satisfy your myriad dark lusts.  The shemale high priestess makes liberal use of your slaves as well, as is her right as the voodoo master.  At first, your collection is small, but the numbers swell when the military attempts to suppress the denizens of the fairgrounds.  Some slaves you keep human, others you force to become infected by breeding them repeatedly with other creatures until you have a fine menagerie of pets to satisfy your every lustful whim.";
				otherwise:													[lost frequently]
					say "     It is not a warm welcome, the head voodoo priestess striding forward to face you as she calls up her nanite-infused magicks.  Only starting to feel the rush of your own power flowing through you, you struggle to stand up to her power with little success.  Just as you're about to unleash dark magicks of your own, you are overwhelmed by her far superior power as a blast from her staff drags you to the ground, leaving you open for fucking.  Forced to submit, you join her voodoo coven as an apprentice to her dark powers.  Having proven her might to you and the others, you accept your place beneath her.";
					say "     As an apprentice, you rarely leave the haunted house and instead assist the other voodoo shamans in their rituals.  While lacking the power to do so yourself, you help many of them turn captured creatures into mindless sex slaves for their new shemale masters.  Of all your duties, this is your favourite, for it often allows you the opportunity to sate your lusts upon those newly enslaved.  And when the military forces move into the fairgrounds in an attempt to suppress its denizens, you kept very busy with the rapid influx of new victims to be enslaved, infected or cross-bred to satisfy the dark lusts of the shamans.";
			otherwise:
				say "     It is not a warm welcome, as you are tied down by the voodoo geckos on a ritual table in a large hall.  Under the oversight of what must be their high priestess, several of them call forth their dark magicks and drain you of your will.  Reduced to a zombie state, alive but without mind or will - only lust, you become another slave for one of the shemales.  You, alongside the other slaves in her collection, are used to slake her dark, twisted desires.  At times, your even used by their leader, who has claim over all sex slaves in her little domain.  At one point, you faintly notice a swelling in the ranks of the enslaved as many human and partially-human slaves are added to their prizes.";
		otherwise:
			say "     Managing to keep your mind at least partially intact until rescue, you exit the city with the military rescue forces.  Your altered body is viewed with suspicion by the soldiers, but you are taken along regardless.  The military scientist who looks into your case, unable to accept the existence of the forces that have touched you, views you simply as slightly confused by your infection and has you remanded to a short series of counselling sessions before your full release";
			if humanity of player < 40 and vgeckobeaten > vgeckoloss / 2 and player is pure:
				say ".  Growing tired of the psychobabble by the third session as she tries to tell you that magic doesn't actually exist, something in you clicks into place and purple swirls in your eyes.  Drawing upon some innate power you can now connect to, you blast a wave of tangible purple mist from your hands.  The magicks that the shrink tried to tell you wasn't real overwhelms her, enslaving her will to yours.  After slaking your pent-up lusts upon her body, you have her present you with a clean bill of mental health, accelerating your release.";
				say "     Once you're released back into society, you continue to maintain your control over the psychiatrist.  She makes for a very useful tool as the military has her perform sessions with numerous cases of rescued citizens.  Many of those she assesses to be of weaker will or with submissive tendancies as a result of their infection are directed to you as part of their [']rehabilitation['].  This results in you easily collecting a wide array of sex slaves of all types, enslaved to your will by your powers, as they are delivered right to your door.  And once the military clean-up of the city is over and your pet shrink is no longer working for them, you [if cocks of player > 0]breed her into becoming your gecko apprentice and lover[otherwise if cunts of player > 0]transform her into your gecko apprentice and lesbian lover[otherwise]transform her into your gecko apprentice and lover[end if].";
			otherwise if player is pure:
				say ".  Growing tired of the psychobabble, you eventually relent and fake gradually accepting that the magic was all in your head or the result of nanites.  But deep inside you know those dark powers there, even if you cannot quite connect with them.  You still have to go through several more sessions, but you are eventually cleared.";
				say "     Once you're released back into society, you follow leads and rumours of magic.  In the wake of events, signs of magicks both new and old become more prevalent.  It doesn't take you too long to learn some tricks from others and eventually start to tap into those dark powers inside you.  You become the apprentice to a witch woman, helping her in her spells and rituals.  It is mostly drudgework, though there's the occasional highlight when she's feeling horny or a customer is made to pay for her services with sexual favours.";
			otherwise:
				say ".  You endure the psychobabble and eventually admit that what you experienced could have been simply in your head or the result of nanites.  You don't believe this, but saying so makes it easier for you to get the shrink to okay you for release.  You felt those powers and were touched by them - albeit in very strange, perverse ways.";
				say "     Once you're released back into society, you follow leads and rumours of magic.  In the wake of events, signs of magicks both new and old become more prevalent and people with experience in dealing with them are needed.  Learning what you can, you become a paranormal expert and are eventually hired on by a subsidiary of Zephyr Inc. to deal with such matters[if level of player > 14].  You are very successful at this, averting or mitigating several crises to prevent loss to company or customers holdings - in that order of priority[otherwise if level of player > 7].  You do well enough at this, averting a few crises or at least buying your company and customers - in that order of priority - the time to pull out[otherwise].  You fumble along as best you can at your chosen vocation, providing your company and customers - in that order of priority - with at least some assistance with such crises[end if].  One particular mission turns out rather well as you end up rescuing a small time sorceress from a demon cult.  She ends up becoming your lover[if cocks of player > 0] and mother to several of your magically-inclined children[end if].";


Voodoo Gecko For FS ends here.