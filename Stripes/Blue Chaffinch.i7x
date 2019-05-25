Version 3 of Blue Chaffinch by Stripes begins here.
[Version 3 - Feline capture path added - Stripes]

"Adds a unique Blue Chaffinch creature to Flexible Survival's Wandering Monsters table."

Section 0 - Monster Setup

nobluechaffinchsex is a number that varies.
bluechaffrape is a number that varies.

when play begins:
	add { "Blue Chaffinch" } to infections of MaleList;
	add { "Blue Chaffinch" } to infections of FurryList;
	add { "Blue Chaffinch" } to infections of AvianList; [list of avian/bird infections]


Section 1 - Monster Description

to say bluechaffinchdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     The avian creature before you is a covered in bright blue plumage that is very even in color across most of his body. Only the ends of his wings and tail are a much darker midnight blue on the flight feathers, and his lower belly and the underside of his narrow tail are downy and white. He has a puffy looking body compared to his slender arms and legs thanks to his soft feathers. His head is rounded and shaped like that of a finch, though his beak is thicker, showing his infection to somehow be that of an exotic blue chaffinch. His eyes are like black beads with a touch of white feathers just above and below.";
	say "     Seeing you, he puffs out these feathers further and chirps angrily at you, trying to make himself look larger. '[one of]Come on, I can take you[or]Come and get some[or]You'll be singing a new tune once you're under me[at random],' the songbird says[if BodyName of Player is listed in infections of Avianpredlist and FaceName of Player is listed in infections of Avianpredlist] with a bit of trepidation in passerine's boasting, clearly concerned about your nature as a predatory bird[else if BodyName of Player is listed in infections of Felinelist and FaceName of Player is listed in infections of Felinelist] with a bit of trepidation in passerine's boasting, clearly concerned about your feline nature[end if].";


Section 2 - Player Loss

to say losetobluechaffinch:
	choose row MonsterID from the Table of Random Critters;
	now nobluechaffinchsex is 0;
	say "     [if HP of Player > 0]Giving in[else]Having lost[end if] to the blue songbird, you drop to your knees in front of him. He struts around arrogantly and chirps a happy song before moving towards you with an obvious swagger.";
	if Player is female:
		say "     The victorious male pushes you over roughly and gets his stiff cock lined up with your pussy with little preamble. His taloned hangs grip your [if scalevalue of Player > 4]hips[else if scalevalue of Player is 4]sides[else]shoulders[end if] and pulls you back onto his avian rod. The slick, tapered cock pushes into you easily, causing you to moan in pleasure despite yourself. Soon the feathered fellow is drilling into you, chirping occasionally as he does.";
		say "     You grow increasingly aroused as the mating continues, his soft feathers rubbing against your hips, thighs and pussy lips as he thrusts into you[if HP of Player > 0]. As you're not resisting his advances[else]. As you're no longer resisting his advances[end if], he lets his taloned hands roam over your [bodytype of Player] body and leans gently overtop you, letting his fluffy chest rub against your back. Between the soft feathers rubbing against you and the hard cock pumping inside you until finally you both cum loudly[if FaceName of Player is Name entry], your mating song joining in with his[else] with him chirping and moaning[end if] as his hot seed pumps into your cunt and flows into your womb.[ovichance]";
		say "     When he's done, he dismounts, gives your ass a swat with one of his wings and a chuckle and flies off. You are left lying there with his cum leaking from your stuffed pussy and trying to recover your strength.";
	else:
		say "     The victorious male strides in front of you and, taking your head in his taloned hands, presses your face forward against his throbbing cock. Dribbles of precum leak across your face and run down over your lips. You can't help but get a quick taste of it, and after that taste, you want more. You open your mouth and plunge it down over his seven inches of avian manhood, licking and sucking at it as he moans and chirps happily. '[one of]Yeah, who's the big, tough bird now?' he brags[or]Lick that cock, you wimp,' he orders[or]Even as a cute birdy, I'm still all man,' he boasts[at random] pulling your face forward so he can thrust into your mouth harder. You groan, licking and sucking at his cock as best you can while he pounds your face, finally cumming with a lot of chirping and moaning.";
		say "     When he's done, he pulls out, wipes his messy cock against your cheek with a chuckle and flies off. You are left sitting there with the taste of the bird's semen in your mouth and a warm feeling in your belly.";
	if bluechaffrape > 1, decrease bluechaffrape by 1;


Section 3 - Player Victory

Part 1 - Basics

to say beatthebluechaffinch:
	let formcheck be 0;
	if BodyName of Player is listed in infections of Avianpredlist and FaceName of Player is listed in infections of Avianpredlist:
		now formcheck is 1;
	else if BodyName of Player is listed in infections of Felinelist and FaceName of Player is listed in infections of Felinelist:
		now formcheck is 2;
	say "     Your final blow sends the blue chaffinch stumbling backwards. '[one of]You haven't seen the last of me, buddy[or]Oh, I'm so going to kick your ass next time, bub[or]I'm just tired from all this flying. Just wait until I find you next time[at random],' he chirps [if Player is male and formcheck > 0 and bluechaffrape is 3 and inasituation is false]while raising his tail and shaking his rear quickly, as if to tantalize you with that ass you've fucked and filled before[else]angrily before turning and running[end if]. After his first couple of steps, he unfurls his wings and starts flapping to make his escape.";
	if Player is male and formcheck is 1:	[avian pred]
		if nobluechaffinchsex > 2:
			if FaceName of Player is "Fluffy Owl":
				say "     As before, you rein in your predatory owl instincts and let the braggart go, opting to instead shake your fist at him and warning him that you'll be ready, as always, to send him packing. You hope he'll eventually learn to leave you alone, but you don't expect that'll happen anytime soon, given how fixated most infected people become.";
			else:
				say "     As before, you rein in your raptor instincts and let the braggart go, opting to instead shake your fist at him and warning him that you'll be ready, as always, to send him packing. You hope he'll eventually learn to leave you alone, but you don't expect that'll happen anytime soon, given how fixated most infected people become.";
		else:
			if bluechaffrape < 3 or inasituation is true:
				say "     Something about seeing the small bird preparing to fly away sends shivers through your infected body and you start to give chase. Shall you [link]unleash (Y)[as]y[end link] or [link]rein in (N)[as]n[end link] these predatory instincts?";
			else:
				say "     A rush of excitement for the hunt fills your predatory body again and you start to give chase before you even realize it. Shall you [link]unleash (Y)[as]y[end link] or [link]rein in (N)[as]n[end link] these wild instincts?";
			if Player consents:
				say "[bluecf_catching]";
				now nobluechaffinchsex is 0;
			else:
				say "     Regaining control of yourself, you slow to a halt and let the defeated songbird take flight. You content yourself by screeching back that you'll send him packing again if he comes back.";
				increase nobluechaffinchsex by 1;
	else if Player is male and formcheck is 2:	[feline]
		if nobluechaffinchsex > 2:
			say "     As before, you rein in your feline instincts and let the braggart go, opting to instead shake your fist at him and warning him that you'll be ready, as always, to send him packing. You hope he'll eventually learn to leave you alone, but you don't expect that'll happen anytime soon, given how fixated most infected people become.";
		else:
			if bluechaffrape < 3 or inasituation is true:
				say "     Something about seeing the small bird preparing to fly away sends shivers through your infected body and you crouch down, hips twitching with a need to pounce. Shall you [link]unleash (Y)[as]y[end link] or [link]rein in (N)[as]n[end link] these predatory instincts?";
			else:
				say "     A rush of excitement for the hunt fills your feline body again and you start to give chase before you even realize it. Shall you [link]unleash (Y)[as]y[end link] or [link]rein in (N)[as]n[end link] these wild instincts?";
			if Player consents:
				say "[bluecf_pouncing]";
				now nobluechaffinchsex is 0;
			else:
				say "     Regaining control of yourself, you slow to a halt and let the defeated songbird take flight. You content yourself by snarling back that you'll send him packing again if he comes back.";
				increase nobluechaffinchsex by 1;
	else:
		say "     Angered by his escape, but unable to pursue him, you shake your fist and yell back that you'll be ready for him.";


Part 2 - Avian Pred Victory

to say bluecf_catching:
	choose row MonsterID from the Table of Random Critters;
	say "     Letting your anger and instincts take control, you continue the pursuit. Noticing you coming, the blue songbird runs and flaps all the harder, staring to take to the air. Unwilling to let him get away, you flap as well, your predatory instincts driving you to fly after him.";
	let bonus be ( dexterity of Player / 2 ) + level of Player + bluechaffrape - 5;
	if bluechaffrape is 3, increase bonus by 3;
	let targetnum be 5 + ( ( dex entry + lev entry ) / 2 ); [difficulty partially scales up w/hard mode]
	let dice be a random number between 1 and 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]: ";
	if dice + bonus >= targetnum:
		if bluechaffrape < 3 or inasituation is true:
			say "[bluecf_ap_sex]";
		else:
			say "[bluechaffcaught]";
	else:
		say "You don't quite manage to take flight, only able to gain a little height long enough to make a swipe at his leg. You miss the grab, not quite high enough to snag him before he gets completely out of reach. He gives a quick croaking song and chuckles as he makes a slow loop in the sky, mocking you a little longer before flying off.";

to say bluecf_ap_sex:
	say "You don't quite manage to take flight, but you're able to hold a little height just long enough to reach out and grab the escaping passerine by the leg. Unable to support your added weight, you both drop back to the ground. He flaps wildly, but it's too late, you've got him [if bluechaffrape > 0]again [end if]and you intend to have some fun with your pretty prize.";
	say "     Pinning the songbird down, you give a sharp call that sends a shiver through your prey that excites you. Quite hard from the chase, you push aside his fanned tailfeathers and shove your cock underneath it. Taking the nape of his neck in your beak, you grip him roughly and drive your [cock size desc of Player] [Cock of Player] shaft into him. He gives a very refreshing warble at being roughly taken, making the corners of your beak turn up in a smile[if Cock Length of Player > 30]. Your pulsing rod throbs inside the little guy, stuffing him so delightfully full that you can see a big bulge of ruffled feathers from your oversized phallus plowing into him[else if Cock Length of Player > 20]. Your pulsing rod throbs inside the little guy, stuffing him so full that you can see a small bulge of puffed feathers from your enlarged phallus inside him[end if].";
	WaitLineBreak;
	if bluechaffrape < 2:
		say "     He moans and squirms, though half in resistance and half in submission to the powerful predator atop him. Reaching around, you find his stiff cock and chuckle, rubbing lightly over it. He blushes and claws at the ground, but his hips press back into your thrusts all the more, some part of him very excited by you fucking him. The feel of his tight, squeezing body around your shaft as well as his conflicted response is all very exciting for the instincts you've unleashed. Eventually it all becomes too much and you grip him tightly with your hands and give a shrieking cry as you cum hard into your prey. He groans loudly and his ass clenches down around you, cock throbbing and spurting his seed onto the ground even as you're filling him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body left amusingly rounded like a feathery balloon, making you chuckle as you pull out. He gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load leaves the poor songbird amusingly rounded like a feathery balloon. When you pull out, he gives a weak chirp as hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. He weakly mumbles something about getting you next time, but you just press a foot down onto him, gripping him with your claws as an added reminder of who's predator and who's prey before striding off. You can't help but feel stronger for your conquest.";
	else:
		say "     He moans and squirms only a little this time, putting up the most token of resistance to the powerful predator atop him. Reaching around, you find his stiff cock and chuckle, stroking over it firmly, feeling it throb and pulse with his growing excitement. He blushes and moans softly for you to just get it over with, but his hips press back into your thrusts almost eagerly. It's clear that a growing part of him is very excited by you fucking him like this. The feel of his tight, squeezing body around your shaft as well as his growing lust despite himself is all very arousing for the instincts you've unleashed.";
		say "     Gripping him all the harder and sinking your talons in, you start slamming away at him in pounding thrusts with a slight pause between each. He trembles with fear at every nip of your sharp beak, but his cock also pulses all the harder each time you do it. Pausing in your thrusts for a moment, you run your sharp talons along his side, chuckling that he's nothing but prey now - your prey. And with that said, you thrust into him again, causing the smaller bird to cry out as he cums.";
		WaitLineBreak;
		say "     The feel of that tight little bird's ass clamping down onto your throbbing shaft as he climaxes feels wonderful. Grabbing the nape of his neck sharply with your beak, you grip him tightly and plow into him one last time, unleashing your hot seed and filling his bowels[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load bloats the poor songbird so much that some of it leaks out of his beak as he becomes rounded like a feathery balloon[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load bloats the poor songbird and rounded like a feathery balloon[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load gives the poor songbird a somewhat chubbier look as his belly is stuffed quite full with your seed[else]. Your [Cum Load Size of Player] load makes the poor songbird's ass wet and creamy[end if].";
		WaitLineBreak;
		say "     But you're not done with him this time. After a short break, you resume thrusting, wanting a second go at your prize prey. He releases some moans and chirps, his body again betraying him as he gets hard. 'Oh, you like that, don't you, prey?' you tease, stroking his shaft and nip at his shoulders and neck firmly. 'You're just a tasty little morsel, aren't you?' you taunt. While the more human part of you just wanting to scare him into leaving you alone, the [BodyName of Player] part of you is excited by the wild, predatory desires and power you're wielding over your appetizing victim. More nips and bites lead to a rush of coppery excitement as you get a bit too rough, the taste of his blood causing you a shriek and cum hard into him as he sings along in lustful release, cumming powerfully as well[if Ball Size of Player > 6]. Already overfull from the last load, there's room for no more and it overflows from his beak until you're drained and he's left coughing and weak from being so bloated. He gives a weak, gurgling chirp when you pull out, but is also in a blissful haze from his two powerful orgasms. Chuckling, you rock the birdie on his rounded belly before leaving him behind to drain and deflate[else if Ball Size of Player > 5]. Already overfull from the last load, there's nowhere for the rest of it to go but overflowing out of his beak this time until you're drained and he's left coughing and weak from being so bloated. He gives a weak, gurgling chirp when you pull out, but is also in a blissful haze from his two powerful orgasms. Chuckling, you rock the birdie on his rounded belly before leaving him behind to drain and deflate[else if Ball Size of Player > 4]. Already quite full from your previous release, this second one leaves him full and rounded like a feathery balloon. He gives a weak chirp when you pull out, but is also in a blissful haze from his two powerful orgasms. Chuckling, you give the birdie a swat on his leaking ass, leaving him behind to drain and deflate[else]. His asshole, already quite messy from your sloppy seconds on him, overflows somewhat with this fresh, creamy load. He gives a weak chirp when you pull out, but is also smiling a little from his two powerful orgasms. Chuckling, you give the birdie a swat on his leaking ass, leaving him behind to drain and recover[end if].";
		say "     As you're heading to go, he weakly tries to mumble some bravado about turning the tables on you next time, and you can't help but laugh. Grabbing his ass firmly, you squeeze it hard and then press a pair of fingers into his sticky, leaking hole. This causes him to moan and his cock to twitch in response. Teasing that your birdie prey seems to like being fucked by the big, bad predator as you finger him roughly, he can't help but blush and grip his beak tightly to keep from moaning again. Laughing, you leave him like that, feeling all the stronger for your conquest.";
	if bluechaffrape < 3, increase bluechaffrape by 1;
	if morale of Player < -5:
		increase morale of Player by 5;
	else if morale of Player < 0:
		now morale of Player is 0;
	else:
		increase morale of Player by 1;

to say bluechaffcaught:
	choose row MonsterID from the Table of Random Critters;
	say "This time catching the escaping passerine seems easier than before, your prey not flying off as quickly as he previously has and you're able to grab him by both legs. He flaps as hard as he can to support you both, but your added weight carries him back down to ground. Holding onto him tightly, you grin down at your pretty blue prize.";
	say "     Keeping your grip on both legs, you spread them apart and put his feathery backside on display for you. Spindly legs and ivory ass in the air and shoulders and head on the ground, he makes a very inviting sight. He blushes and squirms a little as you pull him inexorably closer to your hard cock, which his eyes remain locked onto. Grinning, you press your [cock size desc of Player] [Cock of Player] shaft against his now loosened hole and tease against it. 'I know you want it, little morsel. Beg for it and I'll give it to you,' you say firmly.";
	WaitLineBreak;
	say "     Blushing all the more and unable to do anything about it given his precarious position, he moans and chirps a little before finally giving in. 'Yes, please... just promise me... do it rough - like before,' he says, looking away, though you can still see quite a lot of blushing red through his cheek feathers. Laughing that it appears this little songbird likes being the big, bad predator's prey, you sink your claws in and drive your [cock size desc of Player] cock into his ass quite hard. After having been pounded by you several times, he has loosened up some, but he's still pleasantly tight given his size and his pained cheep really gets your blood going. Holding him suspended upside down, you plow hard into him, grinding his upper body against the ground. As you drill away at that tight ass of his, you groan that you might just have to keep your pretty prize.";
	say "     Steady, hard thrusts into your rather willing victim has him panting and chirping with growing excitement. You make sure to tease him some more when he reaches back to stroke his own cock, calling him your birdie bitch and your songbird slut. He blushes at these names but doesn't stop, if anything, his anus squeezing and milking at your cock all the more. As you feel yourself getting closer, you pick up the pace, digging your talons in harder and taking his thin leg in your beak, pulling him sharply upwards onto your impaling rod. After a few hard tugs that have him moaning and chirping even as red runs down his leg, your feel your balls tighten and your shaft pulse as you start feeding your hot, [Cum Load Size of Player] load into his ass[if Ball Size of Player > 6]. Your [Cum Load Size of Player] output causes the blue passerine's belly to swell and bloat until he's a rounded ball of feathers with excess cum leaking from his beak as he moans and cums in delight[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] output causes the blue passerine's belly to swell and bloat until he's a rounded ball of feathers as he moans and cums in delight[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] output causes the blue passerine's belly to bulge a little as he moans and cums in delight[else]. The feel of your [Cum Load Size of Player] output pumping into him causes the blue passerine to moan and cum in delight[end if].";
	WaitLineBreak;
	say "     Releasing his leg from your beak and pulling out, you let him drop to the ground and chuckle at what a fine prey slut he's become and add that you just might want to keep him[if Ball Size of Player > 5]. Rolling over[else]. Falling over[end if] onto his side, he moans softly and struggles to get up. 'W-were you serious about that? A-about really... keeping me?' he says with a mix of trepidation and anticipation in his voice. How shall you respond?";
	if Player consents:
		say "     Moving your [bodytype of Player] body over his, you nip at his neck and grope his ass. 'Maybe. I might want a [']snack['] later,' you tease, pushing a few fingers into his creamy hole. He blushes and nods, his hips trembling. 'A-alright then... you've caught me, you sexy hunter,' he says with nervous excitement[if Ball Size of Player > 5]. After letting him drain, you[else]. You[end if] help your new prize up and lead him back to the library to be your new caged songbird slut.";
		now battleground is "void";
		increase score by 20;
		move Icarus to Garden View;
		now HP of Icarus is 1;
		move player to Garden View;
		now icarus_lastpred is 1;
	else:
		say "     Laughing, you give his ass a slap. Why would you want to keep him now that the fun of breaking him is over, you ask. He blushes at this and clutches at your leg, but you push him away, telling him that surely one of the big felines around would love to sink their claws into the songbird, if that's all he wants. His shoulders sag and he struggles to his feet, limping away slowly. You smile to yourself; it seems that's finally over with.";
	now area entry is "Nowhere";


Part 3 - Feline Victory

to say bluecf_pouncing:	[feline]
	choose row MonsterID from the Table of Random Critters;
	say "     Letting your anger and instincts take control, you continue the pursuit, running after him on all fours. Noticing you coming, the blue songbird runs and flaps all the harder, staring to take to the air. Unwilling to let him get away, you leap onto a nearby [one of]bench[or]building[or]tree[at random], your feline instincts driving you to pounce the bird.";
	let bonus be ( dexterity of Player / 2 ) + level of Player + bluechaffrape - 5;
	if bluechaffrape is 3, increase bonus by 3;
	let targetnum be 5 + ( ( dex entry + lev entry ) / 2 ); [difficulty partially scales up w/hard mode]
	let dice be a random number between 1 and 20;
	say "     You roll 1d20([dice])+[bonus]: [dice + bonus] vs [targetnum]: ";
	if dice + bonus >= targetnum:
		if bluechaffrape < 3 or inasituation is true:
			say "[bluecf_fel_sex]";
		else:
			say "[bluechaffpounced]";
	else:
		say "You don't quite manage to grab him, your outstretched paw barely brushing the tip of his tail. Having missed your grab, you drop down onto the ground on all fours. He gives a quick croaking song and chuckles as he makes a slow loop in the sky, mocking you a little longer before flying off.";

to say bluecf_fel_sex:
	say "You don't quite manage to pounce him, but your outstretched paw grabs onto a handful of tailfeathers. The passerine gives a pained cry as his feathers are pulled sharply. They manage to hold and, unable to support your added weight, you both drop back to the ground. He flaps wildly, but it's too late, you've got him [if bluechaffrape > 0]again [end if]and you intend to have some fun with your pretty prize.";
	say "     Pinning the songbird down, you give a harsh snarl that sends a shiver through your prey that excites you. Quite hard from the chase, you push aside his crumpled tailfeathers and shove your cock underneath it. Taking the nape of his neck in your jaws, you grip him roughly and drive your [cock size desc of Player] [Cock of Player] shaft into him. He gives a very refreshing warble at being roughly taken, making the corners of your muzzle turn up in a smile[if Cock Length of Player > 30]. Your pulsing rod throbs inside the little guy, stuffing him so delightfully full that you can see a big bulge of ruffled feathers from your oversized phallus plowing into him[else if Cock Length of Player > 20]. Your pulsing rod throbs inside the little guy, stuffing him so full that you can see a small bulge of puffed feathers from your enlarged phallus inside him[end if].";
	WaitLineBreak;
	if bluechaffrape < 2:
		say "     He moans and squirms, though half in resistance and half in submission to the powerful predator atop him. Reaching around, you find his stiff cock and chuckle, rubbing lightly over it. He blushes and claws at the ground, but his hips press back into your thrusts all the more, some part of him very excited by you fucking him. The feel of his tight, squeezing body around your shaft as well as his conflicted response is all very exciting for the instincts you've unleashed. Eventually it all becomes too much and you grip him tightly with your hands and give a snarling cry as you cum hard into your prey. He groans loudly and his ass clenches down around you, cock throbbing and spurting his seed onto the ground even as you're filling him[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load leaves the poor songbird so bloated and full of your cum that some leaks out of his beak. His body left amusingly rounded like a feathery balloon, making you chuckle as you pull out. He gives a weak chirp as your hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load leaves the poor songbird amusingly rounded like a feathery balloon. When you pull out, he gives a weak chirp as hot cum pours of his stretched and stuffed ass, slowly deflating[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load leaves the poor songbird somewhat chubbier looking than before, his belly stuffed quite full with your seed. When you pull out, he gives a weak chirp as hot cum leaks from his stretched and stuffed ass[else]. He gives a weak chirp when you pull out, hot cum leaking from his stretched and creamy ass[end if]. He weakly mumbles something about getting you next time, but you just push his beak shut with your paw, your claws tapping across his cheek as an added reminder of who's predator and who's prey before striding off. You can't help but feel stronger for your conquest.";
	else:
		say "     He moans and squirms only a little this time, putting up the most token of resistance to the powerful predator atop him. Reaching around, you find his stiff cock and chuckle, stroking over it firmly, feeling it throb and pulse with his growing excitement. He blushes and moans softly for you to just get it over with, but his hips press back into your thrusts almost eagerly. It's clear that a growing part of him is very excited by you fucking him like this. The feel of his tight, squeezing body around your shaft as well as his growing lust despite himself is all very arousing for the instincts you've unleashed.";
		say "     Gripping him all the harder and sinking your claws in, you start slamming away at him in pounding thrusts with a slight pause between each. He trembles with fear at every press of your pointy teeth on his shoulders and neck, but his cock also pulses all the harder each time you do it. Pausing in your thrusts for a moment, you run your sharp claws along his side, chuckling that he's nothing but prey now - your prey. And with that said, you thrust into him again, causing the small bird to cry out as he cums.";
		WaitLineBreak;
		say "     The feel of that tight little bird's ass clamping down onto your throbbing shaft as he climaxes feels wonderful. Grabbing the nape of his neck sharply with your muzzle, you grip him tightly and plow into him one last time, unleashing your hot seed and filling his bowels[if Ball Size of Player > 6]. Your [Cum Load Size of Player] load bloats the poor songbird so much that some of it leaks out of his beak as he becomes rounded like a feathery balloon[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] load bloats the poor songbird and rounded like a feathery balloon[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] load gives the poor songbird a somewhat chubbier look as his belly is stuffed quite full with your seed[else]. Your [Cum Load Size of Player] load makes the poor songbird's ass wet and creamy[end if].";
		WaitLineBreak;
		say "     But you're not done with him this time. After a short break, you resume thrusting, wanting a second go at your prize prey. He releases some moans and chirps, his body again betraying him as he gets hard. 'Oh, you like that, don't you, prey?' you tease, stroking his shaft and nip at his shoulders and neck firmly. 'You're just a tasty little morsel, aren't you?' you taunt. While the more human part of you just wanting to scare him into leaving you alone, the [BodyName of Player] part of you is excited by the wild, predatory desires and power you're wielding over your appetizing victim. More nips and bites lead to a rush of coppery excitement as you get a bit too rough, the taste of his blood causing you a growl and cum hard into him as he sings along in lustful release, cumming powerfully as well[if Ball Size of Player > 6]. Already overfull from the last load, there's room for no more and it overflows from his beak until you're drained and he's left coughing and weak from being so bloated. He gives a weak, gurgling chirp when you pull out, but is also in a blissful haze from his two powerful orgasms. Chuckling, you rock the birdie on his rounded belly before leaving him behind to drain and deflate[else if Ball Size of Player > 5]. Already overfull from the last load, there's nowhere for the rest of it to go but overflowing out of his beak this time until you're drained and he's left coughing and weak from being so bloated. He gives a weak, gurgling chirp when you pull out, but is also in a blissful haze from his two powerful orgasms. Chuckling, you rock the birdie on his rounded belly before leaving him behind to drain and deflate[else if Ball Size of Player > 4]. Already quite full from your previous release, this second one leaves him full and rounded like a feathery balloon. He gives a weak chirp when you pull out, but is also in a blissful haze from his two powerful orgasms. Chuckling, you give the birdie a clawed swat on his leaking ass, leaving him behind to drain and deflate[else]. His asshole, already quite messy from your sloppy seconds on him, overflows somewhat with this fresh, creamy load. He gives a weak chirp when you pull out, but is also smiling a little from his two powerful orgasms. Chuckling, you give the birdie a clawed swat on his leaking ass, leaving him behind to drain and recover[end if].";
		say "     As you're heading to go, he weakly tries to mumble some bravado about turning the tables on you next time, and you can't help but laugh. Grabbing his ass firmly, you squeeze it hard and then press a pair of fingers into his sticky, leaking hole. This causes him to moan and his cock to twitch in response. Teasing that your birdie prey seems to like being fucked by the big, bad kitty as you finger him roughly, he can't help but blush and grip his beak tightly to keep from moaning again. Purring with amusement, you leave him like that, feeling all the stronger for your conquest.";
	if bluechaffrape < 3, increase bluechaffrape by 1;
	if morale of Player < -5:
		increase morale of Player by 5;
	else if morale of Player < 0:
		now morale of Player is 0;
	else:
		increase morale of Player by 1;

to say bluechaffpounced:
	choose row MonsterID from the Table of Random Critters;
	say "This time catching the escaping passerine seems easier than before, your prey not flying off as quickly as he previously has and you're able to land right atop him. With you on his back, he can't even flap his wings and your added weight pulls the two of you down as he glides to a rough landing. Holding onto him tightly, you grin down at your pretty blue prize.";
	say "     Grabbing him by both legs, you spread them apart and put his feathery backside on display for you. Spindly legs and ivory ass in the air and shoulders and head on the ground, he makes a very inviting sight. He blushes and squirms a little as you pull him inexorably closer to your hard cock, which his eyes remain locked onto. Grinning, you press your [cock size desc of Player] [Cock of Player] shaft against his now loosened hole and tease against it. 'I know you want it, little morsel. Beg for it and I'll give it to you,' you growl firmly.";
	WaitLineBreak;
	say "     Blushing all the more and unable to do anything about it given his precarious position, he moans and chirps a little before finally giving in. 'Yes, please... just promise me... do it rough - like before,' he says, looking away, though you can still see quite a lot of blushing red through his cheek feathers. Laughing that it appears this little songbird likes being the big, bad kitty's prey, you sink your claws in and drive your [cock size desc of Player] cock into his ass quite hard. After having been pounded by you several times, he has loosened up some, but he's still pleasantly tight given his size and his pained cheep really gets your blood going. Holding him suspended upside down, you plow hard into him, grinding his upper body against the ground. As you drill away at that tight ass of his, you groan that you might just have to keep your pretty prize.";
	say "     Steady, hard thrusts into your rather willing victim has him panting and chirping with growing excitement. You make sure to tease him some more when he reaches back to stroke his own cock, calling him your birdie bitch and your songbird slut. He blushes at these names but doesn't stop, if anything, his anus squeezing and milking at your cock all the more. As you feel yourself getting closer, you pick up the pace, digging your claws in harder and taking his thin leg in your muzzle, pulling him sharply upwards onto your impaling rod. After a few hard tugs that have him moaning and chirping even as red runs down his leg, your feel your balls tighten and your shaft pulse as you start feeding your hot, [Cum Load Size of Player] load into his ass[if Ball Size of Player > 6]. Your [Cum Load Size of Player] output causes the blue passerine's belly to swell and bloat until he's a rounded ball of feathers with excess cum leaking from his beak as he moans and cums in delight[else if Ball Size of Player > 5]. Your [Cum Load Size of Player] output causes the blue passerine's belly to swell and bloat until he's a rounded ball of feathers as he moans and cums in delight[else if Ball Size of Player > 4]. Your [Cum Load Size of Player] output causes the blue passerine's belly to bulge a little as he moans and cums in delight[else]. The feel of your [Cum Load Size of Player] output pumping into him causes the blue passerine to moan and cum in delight[end if].";
	WaitLineBreak;
	say "     Releasing his leg from your beak and pulling out, you let him drop to the ground and chuckle at what a fine prey slut he's become and add that you just might want to keep him[if Ball Size of Player > 5]. Rolling over[else]. Falling over[end if] onto his side, he moans softly and struggles to get up. 'W-were you serious about that? A-about really... keeping me?' he says with a mix of trepidation and anticipation in his voice. How shall you respond?";
	if Player consents:
		say "     Moving your [bodytype of Player] body over his, you nip at his neck and grope his ass. 'Maybe. I might want a [']scratching post['] later,' you tease, pushing a few fingers into his creamy hole. He blushes and nods, his hips trembling. 'A-alright then... you've caught me, you sexy cat,' he says with nervous excitement[if Ball Size of Player > 5]. After letting him drain, you[else]. You[end if] help your new prize up and lead him back to the library to be your new caged songbird slut.";
		now battleground is "void";
		increase score by 20;
		move Icarus to Garden View;
		now HP of Icarus is 1;
		move player to Garden View;
		now icarus_lastpred is 2;
	else:
		say "     Laughing, you give his ass a slap. Why would you want to keep him now that the fun of breaking him is over, you ask. He blushes at this and clutches at your leg, but you push him away, telling him that surely one of other the big felines around would love to sink their claws into the songbird, if that's all he wants. His shoulders sag and he struggles to his feet, limping away slowly. You smile to yourself; it seems that's finally over with.";
	now area entry is "Nowhere";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Blue Chaffinch"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]blue chaffinch[or]energetic avian[or]blue songbird[or]passerine male[or]male songbird[at random] [one of]snaps at your with his pointed beak[or]buffets you with his wings[or]flaps up a few feet and slashes at you with his foot claws[or]claws at you with his taloned hand[at random]!";
	now defeated entry is "[beatthebluechaffinch]";
	now victory entry is "[losetobluechaffinch]";
	now desc entry is "[bluechaffinchdesc]";
	now face entry is "obviously avian, with a thick, pointed beak for a mouth. Your head is rounded and shaped similar to that of a chaffinch. Your eyes are dark beads of black with a touch of white feathers just above and below them";
	now body entry is "avian in form, with a pair of broad wings at your back and sides. Thankfully, you've still got your arms, though they're thin and taloned like a bird's legs. Much like your arms, your legs have the same spindly, songbird shape. On the whole, you feel much lighter, your bones hollowed for flight you can't quite achieve";
	now skin entry is "[if Player is male]blue feathered[else]gray-brown feathered[end if]";
	now tail entry is "You have a feathery tail extending from your backside. It is long and somewhat slender when not fanned with [if Player is male]rich blue[else]gray-brown[end if] feathers near the base before the midnight blue flight feathers extend outwards. The underside has downy white feathers to rest against your ass.";
	now cock entry is "[one of]avian[or]slender[or]bird-like[at random]";
	now face change entry is "it throbs painfully. Your jaw aches and stretches forward, reshaping itself as you grow a thick, pointed beak. It resembles that of a finch, but is thicker and has a gray-blue color to it. As the changes continue and your vision blurs for a minute, your head changes to become avian to match your bill";
	now body change entry is "feels increasingly lighter as an odd sensation runs through your whole body. You quickly realize that this is focused on your bones as they hollow out. Just as this strange experience is coming to a close, there's a sharp pulse at your shoulder blades, the bone matter having been transferred there to build the wings that are starting to form. As this change is going on, you become smaller than a normal person and your arms and legs turn into slender, taloned limbs like those of a small bird to match your new, songbird body";
	now skin change entry is "prickles spread out all over you. As this feeling grows more intense, feathers of [if Player is male]rich blue[else]brown-gray with a faint tint of blue[end if] start to form. Your coloring is uniform over most of your body, only turning to white at your lower belly and thighs[if BodyName of Player is listed in infections of Avianlist] and midnight blue at your flight feathers[end if]";
	now ass change entry is "hips throb and ache. Your spine pops and your hips shift slightly as a feathery tail forms over your ass";
	now cock change entry is "pulses and spurts cum. With each throbbing shot, it changes a little more until it's got a decidedly avian shape";
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 8; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 9;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 27; [ The monster's starting HP. ]
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Zoo"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 7;
	now Cunt Tightness entry is 5;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "winged"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]avian[or]passerine[or]songbird[or]bird-like[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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

[
when play ends:
	if BodyName of Player is "Blue Chaffinch":
		if humanity of Player < 10:
			say "     You succumb to your bluechaffinch infection.";
		else:
			say "     You survive, but were infected by the bluechaffinch.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Blue Chaffinch ends here.
