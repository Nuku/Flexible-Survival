Giant for FS by Stripes begins here.

"Adds Giant to Flexible Survival."

Section 1 - Monster Responses

giantheight is a number that varies. giantheight is usually 18.

when play begins:
	add { "Human Giant" } to infections of guy;

to say giantdesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     You find yourself faced with a giant of a man standing well over 40 feet tall. This makes him nearly as tall as the biggest trees decorating the area, though most only come up to his waist. The towering man has a burly, muscled body to help support his massive height, but not unhandsomely so. He still looks completely human, just grown to a dizzying height. Worn loosely over his chest is huge tan jacket indicating that he may have once been part of the zoo staff. Somehow enlarged or transformed to be a part of him, it is rather worse for wear and hangs loose over his chest, but is still wearable and is the only clothes he has on. He has a gruff expression on his face and has dirty blond hair atop his distant. He carries [one of]a broken telephone pole[or]a metal girder[or]a streetlight[or]an uprooted tree[at random] like a massive club. Between his legs he has another large club, this one of meaty flesh to more than match his enormous size. Having spotted you, he [one of]gives a rough, coarse laugh[or]grumbles about animals getting out of their cages again[or]says you look like a fun playtoy[or]speaks softly, saying he'll take care of you, inching forward by a several yards at a time -[at random] and makes a sudden grab for you with one of his meaty fists.";


to say losetogiant:
	if HP of player > 0:
		say "     Unwilling to continue face off against the giant, you surrender to him. Laughing, he grabs you with both huge hands and grips you painfully tight. ";
	else:
		say "     Knocked down and unable to get back up after his last, powerful blow, you can only lie there as he reaches for you. Laughing at his success, he grabs you with both hands and grips you painfully tight";
	if bodyname of player is "Human Giant" and facename of player is "Human Giant":
		say "     As if only realizing now that you're a giant like him, albeit much smaller, he lifts you up to your feet. '[one of]You must be that new recruit I was promised. It's about time you got here[or]It's about time someone else showed up to work. Things are a real mess here[or]About time someone showed up to give me a hand with rounding up all these animals[or]Look at you, small fry. They just keep hiring younger and younger here every year[at random],' he says loudly, slapping you hard on the back. 'But what're you doin['] out of uniform?  Don't you know we got work to do?' Before you can recover from the hard blow to respond, he wraps his arm around you, pulling you close. 'Oh! You must be on break. How about we take a break together?' he says with a big grin, pushing you back to the ground.";
		if cunts of player > 0 and cunt length of player > 25 and cunt width of player > 20 and a random chance of 2 in 3 succeeds:
			say "     Forced to lay on your back, the bigger giant moves over you, getting his earth-shaking cock lined up with your [cunt size desc of player] pussy. Despite the large size of your cunt, it is unquestionably a tight fit, but he makes a game effort of it. While somewhat uncomfortable at first, you soon start to moan and squirm beneath him as at first your cunt and then your body starts to stretch to accommodate his massive girth. And while he's only able to get part of it in you, even that much feels wonderful inside you, making you moan and pant beneath him. And when he cums, he unleashes a veritable torrent of cum into your womb, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to leak out of you and pool on the ground between your splayed legs. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger buried in your pussy, teasing your creamy, leaking and stretched hole. He takes you back to the gift shop and pushes you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.[fimpregchance]";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.[fimpregchance]";
		else if cunts of player is 0 and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Forced to move onto all fours, the bigger giant moves over you, getting his earth-shaking cock lined up with your (relatively) small ass. He smears some thick precum across it before he pushes a saliva-slick finger into your hole to get you prepared, squirming the big digit around inside you roughly. Despite the large size of your body, it is unquestionably a tight fit when he starts pushing his cock into you, but he makes a game effort of it. While somewhat uncomfortable at first, you soon start to moan and squirm beneath him as at first your anus and then your body starts to stretch to accommodate his massive girth. And while he's only able to get part of it in you, even that much feels wonderful inside you, making you moan and pant beneath him. And when he cums, he unleashes a veritable torrent of cum into your bowels, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to leak out of you and pool on the ground between your splayed legs. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger buried in your ass, teasing your creamy, leaking and stretched hole. He takes you back to the gift shop and pushing you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.[mimpregchance]";
		else:
			say "     Getting you on your knees, he takes a seat in front of you and then pulls your face roughly into his crotch, pressing your against his earth-shaking cock. The scent of it excites you immediately and you start licking and kissing over it as best you can. As his thick pre leaks down your face, he guides your hips to his cock and pulls you roughly forward, forcing a sizable portion of his gigantic cock into your open mouth and down your throat. You moan weakly at this rough treatment, scrambling for support. Your hands, landing on his massive balls, end up just rubbing over the giant's testes and encouraging him further.";
			say "     After the initial surprise and discomfort fades, you realize that your giant mouth and throat have stretched wide to accommodate his enormous meat. It's hard for you to do more than be a tight, wet fuckhole for him, but you lick and squeeze around his meat as best you can. Thankfully he doesn't hold out for very long and unleashes a veritable torrent of cum down your throat and into your stomach, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to gurgle up out of your mouth and pool on the ground in front of you. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger wiping over your face, feeding the cum that leaked out back into you. He takes you back to the gift shop and pushing you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.";
		infect;
	else:
		say "     He Pins you to the ground. '[one of]I've caught you now, back in your cage you go[or]Gotcha! Don't worry, you'll calm down once you're back in your pen[or]It's okay, little guy. Don't be scared. I'm just going to put you back in your cage where it's safe[at random],' he says in his booming voice, trying to sound reassuring. You try to protest that you're not a zoo animal, he just laughs. 'Oh, don't you try to trick me. Who's the zookeeper here?' he chuckles heartily.";
		say "     'Mmm... you must be excited like the rest of them, that's all. Looking to run around, stretch your legs and have some fun, eh?  How about we have some fun then?' he asks. Not waiting for your response, he kneels down above you, pressing his huge cock down onto you and grinding you under its massive weight. Buried under his musky cock, you as soon covered in his leaking precum as he rubs the massive log of meat against you.";
		say "     After a few minutes of this, he picks you up [if scalevalue of player > 4]with some effort [end if]and holds you against his pulsing rod. His strong hands press you hard against that hard flesh, stroking the whole of your [bodytype of player] body against his manhood while precum leaks down over you. Soaked in it, you make for a slick toy for him to rub along his shaft. Every throb and pulse of it with the beating of his massive heart is felt through your entire body, so you have no problem noticing it beating faster (slow as it is) as his excitement builds.";
		say "     You can't help but grow aroused yourself as the scent of his manhood covers you and soon enough, you're rubbing, licking and kissing at his cock as best you can. You press your lips to his giant, gaping urethra, gulping down mouthfuls of his precum and diving your tongue into it. Heedless of the consequences, you keep this up even as his excitement continues to grow to the boiling point and he finally cums loudly, spraying his hot seed all over your face, much of it being forced down into your mouth by the blast, filling you [if scalevalue of player < 4]to the point that you're bloated and rounded from it[else]until you're stuffed and have to push away[end if], unable to take any more. He continues to cum in massive arcs across the zoo, leaving huge streaks of white that sends the critters who'd gathered to watch fleeing.";
		now libido of player is libido of player / 2;
		if a random chance of 1 in 3 succeeds or inasituation is true:
			say "     Spotting them, he drops you roughly to the ground and lumbers to his feet, narrowly missing stomping on you by accident. '[one of]More escapees[or]Oh no! More got out[or]No, don't run, little critters[at random],' he booms, stomping off after some other hapless creature. You're left to drain and absorb the massive load filling you until you're able to rise to your feet and head back on your way.";
		else:
			now battleground is "void";
			say "     When he's done, he gets up slowly, looking over your bloated, sticky body. 'Now, what kind of critter are you?' he mutters to himself in obvious confusion. Not very bright, he shrugs and makes a misguided guess, carrying you off to drop you in ";
			let t be a random number between 1 and 10;
			if t is 1:
				say "one of the pens along the fence path. After you finally recover and enough of his massive load has leaked out and been absorbed into you for you to move, you climb the fence and get back on the path.";
				move player to Fence Path;
			else if t is 2:
				say "the large pasture near the northern wall of the zoo, dropping you off next to a big rhino. He gently pats the guy on his head between charges. 'Keep it up, big guy. You'll get it soon.' Left there to drain and absorb the massive load of cum, you can hear the constant thumping of the big rhino's feet around the ground, followed by a heavy crunch over and over again.";
				move player to Border Wall;
			else if t is 3 or t is 4 or t is 5:
				let holder be "beagle";
				say "[randomdesc]"; [yields 'slutname' - bottom]
				say "[randombodypart]"; [yields 'bodyselector' - top]
				while bodyselector is slutname:
					say "[randombodypart]";
				now holder is slutname;
				say "[randomdesc2]";
				while bodyselector is slutname or holder is slutname:
					say "[randomdesc2]";
				say "one of the small pens near the entryway along with a few other bloated, cum-filled [']escaped animals['] he's found. There's currently a [slutname], a [bodyselector], a [randomdesc2] and a few others you can't quite get a good look at around your overstuffed body. Thankfully the cage door's been left open and none of the others trapped in here feel in the mood for any fun with the other victims by the time they're recovered enough to move. When you're ready to go a few others have replaced those who've left, but you, like those before you, have had more than enough sex for the moment.";
				move player to Entryway;
			else if t is 6:
				say "the cheetah enclosure. It is heavy with the scent of the aroused feline who lives here. You should probably get out of here soon, but you're too bloated and full to leave for some time. It takes quite a while for you to drain and absorb the heavy load that's filling you.";
				move player to Cheetah Habitat;
			else if t is 7:
				say "one of the nearby enclosures as if not wanting to bother to find where you belong. You're stuck in there for quite some time, unable to move until his massive load has been absorbed and leaked out of your body. Thankfully the gate was broken when he tore it open to put you inside, so you're eventually able to make your escape.";
				now battleground is "Zoo";
			else if t is 8:
				say "the nearby gator pit. With another shrug, he heads off in search of other wayward animals. You moan wetly, but cannot get up, too overfull with the giant's cum. You're forced to wait there until your body's drained and absorbed his heavy load. The cum that leaks out of you flows down towards the broken sewer grate.";
				move player to Gator Pit;
			else if t is 9:
				say "the nearby bird house. He roughly shoves you inside before heading off in search of other wayward animals with a smile on his face. You moan wetly, but cannot get up, too overfull with the giant's cum. You're forced to wait there until your body's drained and absorbed his heavy load. You can hear the rustling of feathers and the chirping of birds in here, but are thankfully unnoticed or ignored until you can move again.";
				move player to Bird House;
			else if t is 10:
				say "the nearby roundabout. He muses over where to put you, looking between the lion pit and the snake house before finally settling on the latter. Opening the door, he roughly shoves you inside before heading off in search of other wayward animals with a smile on his face. You moan wetly, but cannot get up, too overfull with the giant's cum, forcing you to wait there until your body's drained and absorbed his heavy load. Thankfully this place seems unoccupied, at least for the moment.";
				move player to Snake House;


to say beatthegiant:
	say "     The giant stomps his feet angrily after your final blow, making the ground shake and sending all the nearby creatures in hiding scattering to the four winds. 'You're too much trouble to deal with right now. [one of]I'll catch you later[or]I'll deal with you after I catch them[or]I've got a stampede on my hands[at random],' he booms, charging off in a random direction after the fleeing animals. Glad to be rid of him, you head off, hoping to avoid his attention in the future.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Human Giant"; [Name of your new Monster]
	now attack entry is "The [one of]giant[or]giant man[or]lumbering brute[or]towering creature[at random] [one of]bashes you with a massive fist[or]slaps you with an enormous backhand, knocking you back[or]grabs you in his crushing grip before throwing you to the ground[or]clobbers you with his makeshift club[or]swings his massive club into you[or]stomps a giant foot down onto you[at random]!";
	now defeated entry is "[beatthegiant]";
	now victory entry is "[losetogiant]";
	now desc entry is "[giantdesc]";
	now face entry is "a human head with coarse, brown hair, just significantly larger";
	now body entry is "a normal human body, just grown to gigantic proportions. You have a strong, muscled body to help support your great height. At around fifteen feet tall, it's quite difficult for you to get in and out, requiring you find (or make) alternate entrances or squirm your way through doorways and move on all fours while exploring. Probably best to stick to open areas";
	now skin entry is "human";
	now tail entry is "Your ass is gigantic!";
	now cock entry is "human";
	now face change entry is "your head becomes human-like[if scalevalue of player is 4], but grown larger in size[else if scalevalue of player > 4], but grown to a significantly larger size[end if]. You look much like your old self, though with a bigger head";
	now body change entry is "your body becomes human, but starts to grow to significantly larger size. Your body becomes muscled and strong as it changes, toughening up to support its increasing weight. You become something around fifteen feet in height";
	now skin change entry is "it changes, reverting to your old skin tone, though with bit a rougher, thicker feel to it";
	now ass change entry is "it pulses and throbs. I hope you like big butts, because yours is growing, and growing, and growing. That's one gigantic ass! Having gained wide, strong hips, you can feel powerful muscles beneath your impressive backside";
	now cock change entry is "it throbs and pulses, shifting and changing shape as spurts of cum fly from it. Eventually it settles down, having returned to being a fairly typical, human shaped penis";
	now str entry is 36;
	now dex entry is 9;
	now sta entry is 20;
	now per entry is 16;
	now int entry is 7;
	now cha entry is 12;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 99; [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 22; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Zoo"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 45; [ Length infection will make cock grow to if cocks]
	now cock width entry is 40; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 18; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 45;
	now cunt width entry is 40;
	now libido entry is 55; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
 	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]strong[or]towering[or]huge[at random]";
	now type entry is "[one of]giant[or]human[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

when play ends:
	if bodyname of player is "Human Giant":
		if humanity of player < 10:
			say "     As your thoughts grow simpler and slower, you head out into the city and stumble around for a while, hardly noticing as everything gradually gets smaller and smaller. Unable to recognize the fact that you're actually growing, but finding the city increasingly confining, you make your way to the relative openness of the zoo. There you find a giant man being tied to the ground as military teams struggle to lash him down with steel cables. Growling at these pests, you come charging in, swatting them aside by the handful and tearing out the metal cables (which seem only as thick wires to you) to free the other giant. As he gets up, the military calls the retreat, forced to abandon their attempt. As you're helping the giant out of the last of the tangle, you can see groups of the zoo animals moving in on the injured soldiers you've left in your wake. Knowing they'll be taken care of, you turn your attention to the giant.";
			say "     He's very grateful for the rescue and thanks you for finally coming to help him with the zoo. He claims to have been getting the situation under control until those little soldier people showed up, but is really glad that you're here now to help him with it. You settle down, living there with him, playing around with the animals, getting them back into their cages, giving them the occasional soldier you find as a treat";
			if cocks of player > 0 and cunts of player > 0:
				say " and dousing much of the nearby area with your hot, sticky cum as your big, strong mate fucks you silly[if player is impreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else if cocks of player > 0:
				say " and dousing much of the nearby area with your hot, sticky cum as you and your big, strong mate take turns fucking one another[if player is mpreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else if cunts of player > 0:
				say " when not stretching yourself out on one of the many open grazing plains while your big, strong mate fucks you silly[if player is impreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else:
				say " and helping your giant friend use some of the cuter critters around as sextoys when he needs some sticky, messy relief[if player is mpreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
		else:
			say "     Your manage to keep your mind intact and survive until the military rescue can arrive, but your huge size makes extracting you difficult. You are forced to accompany a ground team on their march out of the city. At first, they're very nervous about you, but change their tune after your powerful body helps drive off a mutant attack. From that point on, they're joking and laughing with you, calling you their friendly giant. One teases you about where Rusty and Jerome are, but you don't catch the reference, though he doesn't seem to mind.";
			say "     Hearing the reports when you get back to the city, the military are very grateful and, with a little coaxing from the other soldiers you've befriended, get you to sign up with the military. This accelerates your process through the processing camp and soon enough you join the unit. No longer having the time or means for proper training, you're given a crash course by your teammates and head back into the city to help them save any others you can.";
			say "     There are some losses and eventually your unit is turned over to RSX control, but you all keep doing your best to defend those too weak to defend themselves in this crisis. And the fact that your fellow soldiers have been gradually growing and becoming stronger, turning into giant men and women like yourself (helped along by your R&R lovemaking sessions), certainly makes that easier for you all to do. Equipment becomes harder to procure, but that's nothing a good, strong tree or telephone pole can't fix.";

Giant for FS ends here.
