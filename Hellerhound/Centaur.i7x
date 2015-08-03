Version 2 of Centaur by Hellerhound begins here.
[Version 2.3 - Updated to extended heat table - no MPreg heat - Stripes]

[converted from FI]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a mutant centaur to Flexible Survival's Wandering Monsters table"

[Description text for this Extension.]

Section 1 - Dry Plains

understand "plains" as Dry Plains.


Dry Plains is a room. It is fasttravel. "At this edge of the city, the thinning buildings have collapsed before opening up to the great plain stretching away from you.  You don't see any kind of military cordon here, making you suspect those already infected have spread out here before the military was mobilized to close it off.  Their lines are probably further back.  Some hoof prints you spot in a sandy patch nearby furthers this assumption.  As for the open grasslands, it looks like the some kind of storm or quake leveled all the scattered buildings further out.  Now all that is left of them among the dirt and grassland are mounds of rubble.  The plains are dry and brown with only a few trees or bushes scattered across the rolling plains before you.".
Plains Door is a door. The marea of plains door is "Plains". "The plains stretch out before you, with slight rolls in the landscape and dotted with fallen buildings and other rare features.". Plains Door is dangerous. Plains door is east of dry plains.
Plains door is west of wandering the plains.
Wandering the plains is a room.

the scent of the dry plains is "The dry plains smell lightly of dry grasses and disturbed earth.  There is little of man-made origin to smell on the air except the scents coming from the city behind you.".

[ *** Temporarily removed to reduce content size *** ]
[

Section 2 - Tainted Centaur Event

Apple Tree is a situation.  The level of Apple Tree is 6.
The sarea of Apple Tree is "Plains".
centaurmate is a number that varies.
when play begins:
	add Apple Tree to badspots of guy;

Instead of resolving a Apple Tree:
	say "     Wandering across the plains, you come to one of the few trees scattered throughout it.  As you approach, you can see a centaur stallion plucking the apples from the tree and stuffing them into his pack and his mouth.  A little wary, but hopeful at the prospect of food, you continue forward cautiously and approach from behind.  As you get nearer, you can see that the centaur has become strange and twisted by the apples he's gathering and eating.  Each time he gobbles one down, fresh green tentacles under his equine belly writhe and his large cock and balls become greener.  Some roots from the tree have started to slide up his legs, moving to further corrupt him.";
	say "     Shall you call out and continue to approach this tainted centaur?";
	if the player consents:
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Mutant Centaur":
				now monster is y;
				break;
		choose row monster in table of random critters;
		now area entry is "Plains";
		now non-infectious entry is false;
		say "     Noticing you, the centaur whinnies excitedly and pulls away from the tree roots with some effort.  The roots writhe on the ground, as if searching for their prey, before finally slipping back under the earth to await another hungry victim.  The centaur, not noticing what was starting to happen to him, trots over to you, cock swelling and tentacles writhing beside that throbbing, leaf-green meat.  His sheath and ballsac are a dark green in colour.  He looks you over and, with a booming voice, asks: 'Are you going to submit to me?'  You have a feeling that if you don't agree, he'll try to take what he wants by force.";
		if the player consents:
			say "You bow down your head and he laughs, approaching you with lust in his eyes.";
			now centaurmate is 1;
			say "[centaur attack]";
			increase score by 20;
		otherwise:
			say "The centaur roars 'Fine then, be unwilling, but by the end you will want to be mine anyway!'";
			now centaurmate is 2;
			challenge "Mutant Centaur";
			if lost is 1:
				say "     'I'm glad you accepted by gifts so willingly,' he says cruelly.  'I must now go off to find others to be my mare.  There are plenty of other centaurs to fill with my tainted seed,' he laughs as he gallops off.  It seems you've unleashed a new blight upon the plains.";
				decrease score by 5;
			otherwise:
				say "     'If you're going to be so mule-headed about accepting my gifts, I will go find others to be my mare.  There are plenty of other centaurs to fill with my tainted seed,' he laughs as he gallops off.  It seems you've unleashed a new blight upon the plains.";
				increase score by 1;
		extend game by 8;
	otherwise:
		say "     Deciding not to risk the attention of this corrupted creature, you move back quietly.  As you do, the tree roots sink into his flesh and entwine with his own forming tentacles.  The mutant centaur moans and whinnies in pleasure as tendrils grow and sprout from his back and torso.  When he finally climaxes, it is a thick, sap-like fluid that stains the ground green.  When the tree roots withdraw from him, he staggers off slowly, hooves slowly changing into roots that cling at the ground as he steps.  The growing tendrils reach up and branch out, starting to grow leaves and apple blossoms.  Quite certain that the tainted centaur will take root soon and become another of these strange apple trees, you resolve to stay away from any more of these trees you find.";
		increase score by 1;
	Now Apple Tree is resolved;


Section 3 - Fresh Apple

Table of Game Objects (continued)
name	desc	weight	object
"fresh apple"	"A rosy red apple."	1	fresh apple

fresh apple is a grab object. It is a part of the player. Understand "apple" and "fresh" as fresh apple. fresh apple is infectious. The strain of fresh apple is "Mutant Centaur". The purified of fresh apple is "food".

the scent of fresh apple is "The apple smells fresh and juicy at first, though you notice a strange, rotten smell hidden beneath that.".

Section 4 - Monster Responses

To say centaur defeat:
	if libido of player < 50:
		Say "The centaur groans, falling onto its face as you strike the final blow. An apple spills out of the pack on its back.";
		increase carried of fresh apple by 1;
	if libido of player > 50 and cocks of player is greater than 0:
		Say "The centaur is lying on the ground with its tail skewed off to the side, is the perfect target for your [cock of player] maleness. You sidle up behind the centaur, ignored by it in the pain and embarrassment of loss, and slowly insert your cock.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "The centaur starts as it realizes what you are doing, and two green tentacles, covered with bumps, raise out from under the body of the centaur.";
		if the humanity of the player > 90:
			say "You instantly pull out, looking at the tentacles like the abomination they are. You kick dirt over the centaur as you leave, stealing an apple from its pack.";
			increase carried of fresh apple by 1;
			increase the libido of the player by 20;
		otherwise:
			say "The appearance of the helping tentacles is a welcome development, and you begin thrusting with vigor, the lubrication of the creature's waste keeping you from ripping the walls.";
			if the cunts of the player is greater than 0:
				say "The tentacles circle your cock, and one rubs by your clit on its way. Almost immediately, they abandon your moving cock for the wetness of your pussy, stroking in and out in coils as they work to bring you to climax.";
				say "You lose the battle to hold the climax back as you let out a scream of pleasure, your semen filling the bowels of the centaur while its tentacles are washed out of your pussy by the flow of fluids.";
			otherwise:
				say "The tentacles wrap around your cock, and then enter your ass with a slight poke of pain, driving you over the edge. The combined scream of rage from the centaur, along with the one of pleasure from you, mixes horribly and seems to shatter the air. The tentacles retract, and the centaur curls up, pulling your [cock of player] cock out of its dripping ass.";
			say "Dazed by the sex, you wander off.";
			now the libido of the player is 0;
			decrease the humanity of the player by 4;
	if libido of player > 50 and cocks of player is 0 and cunts of player is greater than 0:
		say "The centaur groans and falls to the ground, his legs crumpling and shoving him onto his side. You get a good view of a massive, green cock with vinelike bumps on the shaft. Its sheath is a darker green, and a matching ball sack hangs down half a foot from the powerful member, two giant round forms stretching the skin. What really gets to you is the two tentacles, like growths, that sprout from stump-like protrusions of the base of its sheath.";
		if the humanity of the player < 40:
			say "The sight of those tentacles drives you insane with lust. You grab them, and stuff them into your mouth, working your throat to get them down. They then come alive, wriggling down your stomach, into your small intestine, and then out of your hole, causing pain, that when mixed with your lust turns to pleasure. The tentacles then enter your pussy, and begin to stimulate it with their wriggling. You are immobilized by the feeling of those long tendrils pumping in and out of more holes in your body than any cock could fuck, and it doesn't take long to come to climax. You cum hard, juices running out of your cunt and pushing the tendrils out with it. Then you hear a moan, and the centaur climaxes, spraying thick green seed all over the dusty ground and its underside. The tendrils retract from your body, and you leave the centaur, accepting an apple that it offers you.";
			increase carried of fresh apple by 1;
			now the libido of the player is 0;
		otherwise if the humanity of the player < 90:
			say "The sight of the tentacles doesn't bother your fuzzy mind in the least as you leap onto the centaur's furry belly and rub yourself forward and back, arousing yourself and trying to raise yourself to orgasm. Your dripping pussy leaves streaks of wetness on the centaur's fur, and after a short while, something wet and large pokes at your back, breaking your concentration. You stop and turn back in surprise to see the huge green cock starkly erect, its precum-dripping tip a few inches from your face. A trail of precum leads along your body to your back. It isn't done growing, and pushes you forwards a few inches before it is fully ready.";
			say "You turn and place the cock at your waiting entrance, smearing your hole with precum as you try and force it in.";
			if the cunt width of the player is less than 16:[too small, cock won't fit]
				say "The cock doesn't go in, no matter how hard you try, so you bend over and start to lick it eagerly. It spams more precum in response, and your mouth becomes hot and gooey in an instant.";
				say "You open your mouth wide and fit as much of it in as you can, which means only the soft head. You start to lick it and suck at the hole, drinking in the juices, until it climaxes.";
				say "The spray of fluid begins slowly, but increases in flow rapidly until you cannot swallow it all, and it shoves your face back, and sprays of hot green cum soak your whole body in a few seconds.";
				say "After cleaning up the centaur as well as yourself, you go on your way, with an apple as payment.";
				increase carried of fresh apple by 1;
				now the libido of the player is 0;
			otherwise: [cock will fit]
				say "After pulling at it for a moment, the head goes in. Your walls contract, bringing more of it inside you, and you closer to the monstrous testicles. All of a sudden, the two tentacles that had been lying limp on the ground dart into your ass, causing you to gasp from addictive pleasure.";
				say "At the noise, the centaur seems to wake up, and begins to bend its powerful muscles. You feel the giant cock pumping in and out of your cunt, soaking your insides in precum and bottoming out at each thrust.";
				say "You drift off into a haze of pleasure, filled with slapping noises of the centaur's balls. You come out of the haze into your orgasm, pleasure flooding your senses and hot cum flooding your insides, filling them until you look overdue for triplets. When your belly can stretch no more, cum sprays out of the tight seal between your lips and its shaft, covering what is in the way with green seed.[impregchance][impregchance]";
				say "The centaur pulls out of you with a splotchy noise, green cum running like a small stream from your abused lips, and walks off, leaving you to clean up and be on your way, an apple or two in your bag.";
				if a random chance of one in two succeeds:
					increase carried of fresh apple by 1;
				increase carried of fresh apple by 1;
		otherwise:
			if "Kinky" is not listed in the feats of the player:
				say "The sight of the tentacles puts you off your lunch, and you lose it a short time later, heaving your guts all over the ground.";
				increase hunger of the player by 10;
				decrease the hp of the player by 8;
				say "You feel weaker after losing your lunch. Maybe you aren't good enough to survive the new world.";
				now the libido of the player is 0;
			otherwise:
				say "The tentacles put your lust back where it came from, and you leave the stricken centaur where it is.";
				say "You find an apple in its discarded backpack.";
				decrease the libido of the player by 10;
				increase carried of fresh apple by 1;
		[todo]

to say centaur rape female:
	say "You turn and place the cock at your waiting entrance, smearing your hole with precum as you try and force it in.";
	say "After pulling at it for a moment, the head goes in. Your walls contract, bringing more of it inside you, and you closer to the monstrous testicles. All of a sudden, the two tentacles that had been lying limp on the ground dart into your ass, causing you to gasp from addictive pleasure.";
	say "At the noise, the centaur seems to wake up, and begins to bend its powerful muscles. You feel the giant cock pumping in and out of your cunt, soaking your insides in precum and bottoming out at each thrust.";
	say "You drift off into a haze of pleasure, filled with slapping noises of the centaur's balls. You come out of the haze into your orgasm, pleasure flooding your senses and hot cum flooding your insides, filling them until you look overdue for triplets. When your belly can stretch no more, cum sprays out of the tight seal between your lips and its shaft, covering what is in the way with green seed.";
	say "[impregchance][impregchance]";
	say "The centaur pulls out of you with a splotchy noise, green cum running like a small stream from your abused lips, and walks off, leaving you to clean up and be on your way, an apple or two in your bag.";
	if a random chance of one in two succeeds:
		increase carried of fresh apple by 1;
	increase carried of fresh apple by 1;
	if centaurmate is 1:			[Extra infection for mate]
		infect "Mutant Centaur";
	if Apple Tree is not resolved:	[Extra infection for event]
		infect "Mutant Centaur";


compressedcock is a number that varies.

to say compresscock:
	now compressedcock is 1;

An everyturn rule:
	if compressedcock is 1:
		if the cocks of the player > 0:
			now the libido of the player is 0;
			decrease the cock length of the player by 4;
			say "Your cock keeps bleeding, and shrank a little just now.";
			decrease the hp of the player by 4;
			say "The loss of blood is making you feel woozy.";
			if the cock length of the player < 1:
				now the cocks of the player is 0;
				now compressedcock is 0;
				say "Your cock shrinks until you think it would be one for a mouse, and falls off, to your horror. Seems like that centaur meant what he said.";
		otherwise:
			now compressedcock is 0;


To say centaur attack:
	if cocks of the player is not 0:
		say "The centaur flips you over, and then looks you over as you go limp. he snarls at the sight of your cock. 'Little bastard' he growls, twin green tentacles from his underside reaching out and wrapping around the base of your [cock of player] member. They tighten, slowly at first, then faster until your poor cock is bleeding from every hole, trying to relieve the pressure. [compresscock]The centaur leaves you like that. 'Never come with one of those again.'";
		[male fury, centaur wants mate, not a companion!]
	if cunts of player > 0:
		Say "[centaur rape female]";
	if cocks of player is 0 and cunts of player is 0 and "Male Preferred" is not listed in feats of player:
		say "The centaur looks at you with apprehension. 'Nothing at all?' He groans, and kicks his front hoof, opening a hole in your body, which quickly heals into a vagina. 'See me next time, and don't lose it.'";
		now the cunts of the player is 1;
		now the cunt length of the player is 2;
		now the cunt width of the player is 1;
		infect "Mutant Centaur";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "The centaur looks at you with apprehension. 'Nothing at all?' He groans, and kicks his front hoof, knocking you over.  He looks at you as if expecting something to happen, but it doesn't.  He huffs and turns around, kicking dirt and dry grass onto you before riding off.  'Useless creature.'";


to say centaurgrowtorso:
	say "you tip forwards, face first as a pair of new legs grows out from your behind, and a equine torso follows";
	if the skinname of the player is "Mutant Centaur":
		say ", covered with black fur, newly grown muscles rippling underneath.";
	otherwise if the skinname of the player is "human":
		say ", the human skin contorting and stretching, leaving pink streaks as it expands to support the required muscles.";
	increase the hunger of the player by 10;
	say "You feel hungry, the energy being sapped out of you by the new growth.";
	say "[line break]";
	say "Your feet grow hooves, large and noisy as they clatter on the road. They also change direction and stature as they begin to look truly like those of a horses";


to say centaurmeet:
	say "As you walk in the plain, a dust cloud becomes visible. You look at it with fear, and attempt to run, but fail to escape.  As the dust cloud engulfs you and settles to the ground, it reveals an equine form with a powerful human torso. As it turns to slow down and stop in front of you, you catch a glimpse of a green thing under his belly, as it is very definitely a male.  It seems you've encountered one of the tainted centaurs created by the one you released.  The creature whinnies lustfully and makes a grab for you.";


Section 5 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

When Play begins:
	add "Mutant Centaur" to infections of guy;
	Choose a blank row from Table of random critters;
	now name entry is "Mutant Centaur"; [Name of your new Monster]
	now attack entry is "The Centaur[one of] punches your face with its hand[or] headbutts you[or]'s green tentacles rise from under him and slap you[or] rears up and slams you with his one of its hooves[at random]!";
	now defeated entry is "[centaur defeat]";
	now victory entry is "[centaur attack]";
	now desc entry is "[centaurmeet]";[ Description of the creature when you encounter it.]
	now face entry is "human, with horse ears";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "that of a centaur, with a muscled, human upper torso.  Your body has well-defined muscles, but they seem a little strange and don't quite move right.  Your arms are strong and muscular, and roughly human in appearance as well.  Your lower body is that of a horse, with a muscular equine form and slender legs leading to a set of bottle green hooves";
	now skin entry is "human on your upper body and blending smoothly into black horsehair on your bottom half to cover your";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a green, flowing tail like a horse coming from just above your behind.  It wriggles and squirms unlike a horsetail though, moving more like a tentacle.";
	now cock entry is "[one of]green and equine[or]equine and tentacled[or]bumped and tentacled[or]bumped and equine[or]green and bump-covered[at random]";
	now face change entry is "your ears become longer and grow fur, changing shape to become like a horse's"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body grows muscled at the bottom, and your legs change into those of a horse.  Your muscles grow and shift, moving into slightly different positions.  Your breasts feel odd, and it seems like most of their girth is inside of you"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "the skin below your abdomen grows black fur, melding smoothly into the human skin above"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a twitching quiver runs down your spine as it extends and grows a green horse's tail";
	now cock change entry is "it spasms in orgasm, spraying out all its cum until dry as it shrinks and looks like it is dead, your balls shrunken and crinkling. They do not look like they were meant to be.  Your cock becomes twisted and deformed as it's infested by the strange infection.  It turns green and equine in shape with bumps covering it and tentacles growing out of two bulges along its sheath"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 22;
	now dex entry is 24;
	now sta entry is 20;
	now per entry is 13;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ]
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "nowhere";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 24;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 17;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 24;		[ Width of female sex  infection will try and give you ]
	now libido entry is 0;	[done in the loss/win text]		[ Amount player Libido will go up if defeated ]
	now loot entry is "fresh apple";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[or]corrupted[at random]";
	now type entry is "[one of]centaur[or]mutant[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]centaur[or]corrupted[at random]";
	now type entry is "centaur";			[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hoofstomp";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 6 - Centaur Heat

Table of infection heat(continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Mutant Centaur"	10	7	"[centheat]"	"winking and dripping green cunt "	--	--	"[defaultheat]"	true	false	--

to say centheat:
	say "You gasp in lust, and then gasp at the suddenness of the feeling. You look down to see your green cunt begin to wink open and closed, light green juices running from it and down your legs.";
	if centaurmate is 1:
		say "You think returning to your mate would be a good remedy.";
	otherwise:
		say "You don't know what to do. Maybe you could hole up in the bunker until it is over.";


Section 7 - Endings

when play ends:
	if bodyname of player is "Mutant Centaur":
		if humanity of player < 10:
			say "     As your new, tainted instincts take over, you are drawn back to the plains to join the growing herd of corrupted centaurs in their fight to spread their infection to the others";
			if centaurmate is 1 and cunts of player > 0:
				say ".  You are welcomed by your powerful mate, the first and strongest of the herd.  Being the first of his tainted mares, you are given a place above the others and fucked often.  You bear him many children, each time becoming more like him until you look as if you were made for each other, as indeed you were[if cocks of player > 0].  You are allowed to keep your cock and use it often to corrupt captured centaurs or to punish any in the herd who deserve discipline[end if].  Over time, you conquer and corrupt the other herds, turning them into sex slaves of yours.  You then spread your growing people out into the world at large to infest them with your gifts, by force if necessary.";
			otherwise if centaurmate is 1 and cocks of player > 0:
				say ".  You are welcomed by the herd's powerful leader, the first and strongest of the herd.  Being the first he corrupted, you are given a place above the others and made into his lieutenant.  He is a little disappointed that you did not return to him as a mare, but instead prepares you a special mash of tainted apples and his cum, which makes your cock grow into an impressive stallion's like his.  You are allowed to use it often to corrupt captured centaurs and to punish any in the herd who deserve discipline.  Over time, you conquer and corrupt the other herds, turning them into sex slaves of yours.  You then spread your growing people out into the world at large to infest them with your gifts, by force if necessary.";
			if centaurmate is 2:
				say ".  Having initially rejected the first mutant centaur's offer, you are punished for your lack of willingness to accept your place by his side.  You are treated as a lowly breeding mare, mounted and fucked by any herd member who wishes to use you to slake their lusts or simply for want of someone to punish and hurt.  You accept this over time, knowing it is your place[if cunts of player > 0].  You are used by the male foals to train them to mount, fuck and corrupt others.  You grow heavy with foals of your own and they always are taken away to be raised by the herd, denying you even the love of your children[end if][if cocks of player > 0].  You are punished often for having a cock, with the stallions squeezing your penis and balls with their tentacles.  It is never taken away though, instead only used as another means to hurt you for your initial rejection of their leader[end if].";
			say "     The military, having cordoned off the section of the plains nearest the city, try to keep the corrupted centaurs contained.  The electric fence they initially erected at the edge of their lines does not hold out for long once your people make a concerted effort to cross it.  Many manage to fight through the military barricade and soldiers, escaping to create herds of their own elsewhere.  Eventually, the military manages to contain the rest of your people by using heavy equipment to dig a large trench and build a tall, concrete wall on the other side.  Your people still have the large section of plains inside this wall and can make forays into the city to find more new members to be inducted into the herd.";
		otherwise:
			say "     Your odd body attracts some attention from the military scientists when you and the others the soldiers can find are rescued.  Your differences from the standard centaurs are noted and tested briefly, but you are categorized as an anomaly and given little further scrutiny, as there are more important and dangerous things to focus on than a centaur with green genitals.  The other centaurs don't speak to you, always glaring at you or eying you suspiciously.  With your altered body, you have little option of a regular life and take up a life as a farm hand.  You do gardening and normal farm chores as well as give rides and perform pulling services.  Your employer is understanding of your needs and allows you to mate with the horses there when the need arises[if cunts of player > 0].  You bear a few foals over the years, centaurs like yourself with green genitals, but no sign of the tentacles or any further corruption, thankfully[end if].";

]

Centaur ends here.
