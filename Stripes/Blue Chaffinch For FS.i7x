Version 1 of Blue Chaffinch For FS by Stripes begins here.
[3.5 - more to come]

"Adds a unique Blue Chaffinch creature to Flexible Survivals Wandering Monsters table."

Section 1 - Monster Responses

nobluechaffinchsex is a number that varies.
bluechaffrape is a number that varies.

when play begins:
	add { "Blue Chaffinch" } to infections of guy;
	add { "Blue Chaffinch" } to infections of furry;
	add { "Blue Chaffinch" } to infections of Avianlist;		[list of avian/bird infections]

to say losetobluechaffinch:
	choose row monster from the table of random critters;
	now nobluechaffinchsex is 0;
	say "     [if hp of player > 0]Giving in[otherwise]Having lost[end if] to the blue songbird, you drop to your knees in front of him.  He struts around arrogantly and chirps a happy song before moving towards you with an obvious swagger";
	if cunts of player > 0:
		say ".  The victorious male pushes you over roughly and gets his stiff cock lined up with your pussy with little preamble.  His taloned hangs grip your [if scalevalue of player > 4]hips[otherwise if scalevalue of player is 4]sides[otherwise]shoulders[end if] and pulls you back onto his avian rod.  The slick, tapered cock pushes into you easily, causing you to moan in pleasure despite yourself.  Soon the feathered fellow is drilling into you, chirping occasionally as he does.";
		say "     You grow increasingly aroused as the mating continues, his soft feathers rubbing against your hips, thighs and pussy lips as he thrusts into you[if hp of player > 0].  As you're not resisting his advances[otherwise].  As you're no longer resisting his advances[end if], he lets his taloned hands roam over your [bodytype of player] body and leans gently overtop you, letting his fluffy chest rub against your back.  Between the soft feathers rubbing against you and the hard cock pumping inside you until finally you both cum loudly[if facename of player is name entry], your mating song joining in with his[otherwise] with him chirping and moaning[end if] as his hot seed pumps into your cunt and flows into your womb.";
		say "     When he's done, he dismounts, gives your ass a swat with one of his wings and a chuckle and flies off.  You are left lying there with his cum leaking from your stuffed pussy and trying to recover your strength.";
	otherwise:
		say ".  The victorious male strides in front of you and, taking your head in his taloned hands, presses your face forward against his throbbing cock.  Dribbles of precum leak across your face and run down over your lips.  You can't help but get a quick taste of it, and after that taste, you want more.  You open your mouth and plunge it down over his seven inches of avian manhood, licking and sucking at it as he moans and chirps happily.  '[one of]Yeah, who's the big, tough bird now?' he brags[or]Lick that cock, you wimp,' he orders[or]Even as a cute birdy, I'm still all man,' he boasts[at random] pulling your face forward so he can thrust into your mouth harder.  You groan, licking and sucking at his cock as best you can while he pounds your face, finally cumming with a lot of chirping and moaning.";
		say "     When he's done, he pulls out, wipes his messy cock against your cheek with a chuckle and flies off.  You are left sitting there with the taste of the bird's semen in your mouth and a warm feeling in your belly.";


to say beatthebluechaffinch:
	say "     Your final blow sends the blue chaffinch stumbling backwards.  '[one of]You haven't seen the last of me, buddy[or]Oh, I'm so going to kick your ass next time, bub[or]I'm just tired from all this flying.  Just wait until I find you next time[at random],' he chirps angrily before turning and running.  After his first couple of steps, he unfurls his wings and starts flapping to make his escape";
	if cocks of player > 0 and bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist:
		if nobluechaffinchsex > 2:
			if facename of player is "Fluffy Owl":
				say ".  As before, you rein in your predatory owl instincts and let the braggart go, opting to instead shake your fist at him and warning him that you'll be ready, as always, to send him packing.  You hope he'll eventually learn to leave you alone, but you don't expect that'll happen anytime soon, given how fixated most infected people become.";
			otherwise:
				say ".  As before, you rein in your raptor instincts and let the braggart go, opting to instead shake your fist at him and warning him that you'll be ready, as always, to send him packing.  You hope he'll eventually learn to leave you alone, but you don't expect that'll happen anytime soon, given how fixated most infected people become.";
		otherwise:
			say ".  Something about seeing the small bird preparing to fly away sends shivers through your infected body and you start to give chase.  Shall you go for it or rein in these predatory instincts?";
			if the player consents:
				say "[bluecf_sex]";
				now nobluechaffinchsex is 0;
			otherwise:
				say "     Regaining control of yourself, you slow to a halt and let the defeated songbird take flight.  You content yourself by screeching back that you'll send him packing again if he comes back.";
	otherwise:
		say ".  Angered by his escape, but unable to pursue him, you shake your fist and yell back that you'll be ready for him.";

to say bluecf_sex:
	choose row monster from the table of random critters;
	say "     Letting your anger and instincts take control, you continue the pursuit.  Noticing you coming, the blue songbird runs and flaps all the harder, staring to take to the air.  Unwilling to let him get away, you flap as well, your predatory instincts driving you to fly after him.";
	let bonus be ( dexterity of player / 2 ) + level of player + bluechaffrape - 5;
	let targetnum be 5 + ( ( dex entry + lev entry ) / 2 );	[difficulty partially scales up w/hard mode]
	let dice be a random number between 1 and 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]:  ";
	if dice + bonus >= targetnum:
		say "You don't quite manage to take flight, but you're able to hold a little height just long enough to reach out and grab the escaping passarine by the leg.  Unable to support your added weight, you both drop back to the ground.  He flaps wildly, but it's too late, you've got him and you intend to have some fun with your pretty prize.";
		say "     Pinning the songbird down, you give a sharp call that sends a shiver through your prey that excites you.  Quite hard from the chase, you push aside his fanned tailfeathers and shove your cock underneath it.  Taking the nape of his neck in your beak, you grip him roughly and drive your [cock size desc of player] [cock of player] shaft into him.  He gives a very refreshing warble at being roughly taken, making the corners of your beak turn up in a smile[if cock length of player > 30].  Your pulsing rod throbs inside the little guy, stuffing him so delightfully full that you can see a big bulge of ruffled feathers from your oversized phallus plowing into him[otherwise if cock length of player > 20].  Your pulsing rod throbs inside the little guy, stuffing him so full that you can see a small bulge of puffed feathers from your enlarged phallus inside him[end if].";
		say "     He moans and squirms, though half in resistance and half in submission to the powerful predator atop him.  Reaching around, you find his stiff cock and chuckle, rubbing lightly over it.  He blushes and claws at the ground, but his hips press back into your thrusts all the more, some part of him very excited by you fucking him.  The feel of his tight, squeezing body around your shaft as well as his conflicted response is all very exciting for the instincts you've unleashed.  Eventually it all becomes too much and you grip him tightly with your hands and give a shrieking cry as you cum hard into your prey.  He groans loudly and his ass clenches down around you, cock throbbing and spurting his seed onto the ground even as you're filling him[if cock width of player > 35].  Your [cum load size of player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak.  His body left rounded like a feathery balloon, you chuckle as you pull out.  He gives a weak chirp as your hot cum pours of you his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 25].  Your [cum load size of player] load leaves the poor songbird rounded like a feathery balloon.  When you pull out, he gives a weak chirp as hot cum pours of you his stretched and stuffed ass, slowly deflating[otherwise if cock width of player > 15].  Your [cum load size of player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed.  When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[otherwise].  He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if].  He weakly mumbles something about getting you next time, but you just press a foot down onto him, gripping him with your claws as an added reminder of who's predator and who's prey before striding off.  You can't help but feel stronger for your conquest.";
		increase bluechaffrape by 1;
		if bluechaffrape > 3, now bluechaffrape is 3;
	otherwise:
		say "You don't quite manage to take flight, only able to gain a little height long enough to make a swipe at his leg.  You miss the grab, not quite high enough to snag him before he gets completely out of reach.  He gives a quick croaking song and chuckles as he makes a slow loop in the sky, mocking you a little longer before flying off.";


to say bluechaffinchdesc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	say "     The avian creature before you is a covered in bright blue plumage that is very even in colour across most of his body.  Only the ends of his wings and tail are a much darker midnight blue on the flight feathers, and his lower belly and the underside of his narrow tail are downy and white.  He has a puffy looking body compared to his slender arms and legs thanks to his soft feathers.  His head is rounded and shaped like that of a finch, though his beak is thicker, showing his infection to somehow be that of an exotic blue chaffinch.  His eyes are like black beads with a touch of white feathers just above and below.";
	say "     Seeing you, he puffs out these feathers further and chirps angrily at you, trying to make himself look larger.  '[one of]Come on, I can take you[or]Come and get some[or]You'll be singing a new tune once you're under me[at random],' the songbird says[if bodyname of player is listed in infections of Avianpredlist and facename of player is listed in infections of Avianpredlist] with a bit of trepidation in passarine's boasting, clearly concerned about your nature as a predatory bird[end if].";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Blue Chaffinch";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]blue chaffinch[or]energetic avian[or]blue songbird[or]passarine male[or]male songbird[at random] [one of]snaps at your with his pointed beak[or]buffets you with his wings[or]flaps up a few feet and slashes at you with his foot claws[or]claws at you with his taloned hand[at random]!";
	now defeated entry is "[beatthebluechaffinch]";
	now victory entry is "[losetobluechaffinch]";
	now desc entry is "[bluechaffinchdesc]";
	now face entry is "obviously avian, with a thick, pointed beak for a mouth.  Your head is rounded and shaped similar to that of a chaffinch.  Your eyes are dark beads of black with a touch of white feathers just above and below them";
	now body entry is "avian in form, with a pair of broad wings at your back and sides.  Thankfully, you've still got your arms, though they're thin and taloned like a bird's legs.  Much like your arms, your legs have the same spindly, songbird shape.  On the whole, you feel much lighter, your bones hollowed for flight you can't quite achieve";
	now skin entry is "[if cocks of player > 0]blue feathered[otherwise]grey-brown feathered[end if]";
	now tail entry is "You have a feathery tail extending from your backside.  It is long and somewhat slender when not fanned with [if cocks of player > 0]rich blue[otherwise]grey-brown[end if] feathers near the base before the midnight blue flight feathers extend outwards.  The underside has downy white feathers to rest against your ass";
	now cock entry is "[one of]avian[or]slender[or]bird-like[at random]";
	now face change entry is "it throbs painfully.  Your jaw aches and stretches forward, reshaping itself as you grow a thick, pointed beak.  It resembles that of a finch, but is thicker and has a grey-blue colour to it.  As the changes continue and your vision blurs for a minute, your head changes to become avian to match your bill";
	now body change entry is "feels increasingly lighter as an odd sensation runs through your whole body.  You quickly realize that this is focused on your bones as they hollow out.  Just as this strange experience is coming to a close, there's a sharp pulse at your shoulderblades, the bone matter having been transferred there to build the wings that are starting to form.  As this change is going on, you become smaller than a normal person and your arms and legs turn into slender, taloned limbs like those of a small bird to match your new, songbird body";
	now skin change entry is "prickles spread out all over you.  As this feeling grows more intense, feathers of [if cocks of player > 0]rich blue[otherwise]brown-grey with a faint tint of blue[end if] start to form.  Your colouring is uniform over most of your body, only turning to white at your lower belly and thighs[if bodyname of player is listed in infections of Avianlist] and midnight blue at your flight feathers[end if]";
	now ass change entry is "hips throb and ache.  Your spine pops and your hips shift slightly as a feathery tail forms over your ass";
	now cock change entry is "pulses and spurts cum.  With each throbbing shot, it changes a little more until it's got a decidedly avian shape";
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 8;			[ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 9;
	now cha entry is 15;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 27;			[ The monster's starting hit points. ]
	now lev entry is 3;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 6;			[ Monster's average damage when attacking. ]
	now area entry is "Zoo";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 2;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 7;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "winged";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]avian[or]passarine[or]songbird[or]bird-like[at random]";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Blue Chaffinch":
		if humanity of player is less than 10:
			say "     You succumb to your bluechaffinch infection.";
		otherwise:
			say "     You survive, but were infected by the bluechaffinch.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Blue Chaffinch For FS ends here.