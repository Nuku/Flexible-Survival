Giant by Stripes begins here.

"Adds Giant to Flexible Survival."

Section 1 - Creature Responses

giantheight is a number that varies. giantheight is usually 18.

to say giantdesc:
	setmongender 3; [creature is male]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     You find yourself faced with a giant of a man standing well over forty feet tall. This makes him nearly as tall as the biggest trees decorating the area, though most only come up to his waist. The towering man has a burly, muscled body to help support his massive height, but not unhandsomely so. He still looks completely human, just grown to a dizzying height. Worn loosely over his chest is huge tan jacket indicating that he may have once been part of the zoo staff. Somehow enlarged or transformed to be a part of him, it is rather worse for wear and hangs loose over his chest, but is still wearable and is the only clothes he has on. He has a gruff expression on his face and has dirty blond hair atop his distant. He carries [one of]a broken telephone pole[or]a metal girder[or]a streetlight[or]an uprooted tree[at random] like a massive club. Between his legs he has another large club, this one of meaty flesh to more than match his enormous size. Having spotted you, he [one of]gives a rough, coarse laugh[or]grumbles about animals getting out of their cages again[or]says you look like a fun playtoy[or]speaks softly, saying he'll take care of you, inching forward by a several yards at a time -[at random] and makes a sudden grab for you with one of his meaty fists.";


to say losetogiant:
	if HP of Player > 0:
		say "     Unwilling to continue face off against the giant, you surrender to him. Laughing, he grabs you with both huge hands and grips you painfully tight.";
	else:
		say "     Knocked down and unable to get back up after his last, powerful blow, you can only lie there as he reaches for you. Laughing at his success, he grabs you with both hands and grips you painfully tight.";
	if BodyName of Player is "Human Giant" and FaceName of Player is "Human Giant":
		say "     As if only realizing now that you're a giant like him, albeit much smaller, he lifts you up to your feet. '[one of]You must be that new recruit I was promised. It's about time you got here[or]It's about time someone else showed up to work. Things are a real mess here[or]About time someone showed up to give me a hand with rounding up all these animals[or]Look at you, small fry. They just keep hiring younger and younger here every year[at random],' he says loudly, slapping you hard on the back. 'But what're you doin['] out of uniform? Don't you know we got work to do?' Before you can recover from the hard blow to respond, he wraps his arm around you, pulling you close. 'Oh! You must be on break. How about we take a break together?' he says with a big grin, pushing you back to the ground.";
		if Player is female and Cunt Depth of Player > 25 and Cunt Tightness of Player > 20 and a random chance of 2 in 3 succeeds:
			say "     Forced to lay on your back, the bigger giant moves over you, getting his earth-shaking cock lined up with your [cunt size desc of Player] pussy. Despite the large size of your cunt, it is unquestionably a tight fit, but he makes a game effort of it. While somewhat uncomfortable at first, you soon start to moan and squirm beneath him as at first your cunt and then your body starts to stretch to accommodate his massive girth. And while he's only able to get part of it in you, even that much feels wonderful inside you, making you moan and pant beneath him. And when he cums, he unleashes a veritable torrent of cum into your womb, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to leak out of you and pool on the ground between your splayed legs. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger buried in your pussy, teasing your creamy, leaking and stretched hole. He takes you back to the gift shop and pushes you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.[fimpregchance]";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.[fimpregchance]";
		else if Player is not female and anallevel > 1 and a random chance of anallevel in 5 succeeds:
			say "     Forced to move onto all fours, the bigger giant moves over you, getting his earth-shaking cock lined up with your (relatively) small ass. He smears some thick precum across it before he pushes a saliva-slick finger into your hole to get you prepared, squirming the big digit around inside you roughly. Despite the large size of your body, it is unquestionably a tight fit when he starts pushing his cock into you, but he makes a game effort of it. While somewhat uncomfortable at first, you soon start to moan and squirm beneath him as at first your anus and then your body starts to stretch to accommodate his massive girth. And while he's only able to get part of it in you, even that much feels wonderful inside you, making you moan and pant beneath him. And when he cums, he unleashes a veritable torrent of cum into your bowels, flooding your insides as your belly swells and bulges to accommodate it all.";
			say "     Grinning, he pulls out of you with a wet plop, unleashing the flood gates and causing a massive flow of his seed to leak out of you and pool on the ground between your splayed legs. Your giant body does manage to keep a surprising amount of it inside as well. Too weak to get up, you ";
			if a random chance of 1 in 3 succeeds and inasituation is false:
				say "can't resist as he picks you up and carries you off, a thick finger buried in your ass, teasing your creamy, leaking and stretched hole. He takes you back to the gift shop and pushing you inside roughly. 'Okay, breaktime's over. Time to get your uniform on and get back to work,' he says, turning and head off.";
				move player to Zoo Giftshop;
				now battleground is "void";
			else:
				say "can only lay there in the mess he's made as his excess semen leaks out of you. 'Thanks for sharing your break with me. We should do this again sometime,' he adds, lumbering to his feet and spotting another critter to chase after.[mimpregchance]";
		else:
			say "     Getting you on your knees, he takes a seat in front of you and then pulls your face roughly into his crotch, pressing your against his earth-shaking cock. The scent of it excites you immediately and you start licking and kissing over it as best you can. As his thick pre leaks down your face, he guides your hips to his cock and pulls you roughly forward, forcing a sizable portion of his gigantic cock into your open mouth and down your throat. You moan weakly at this rough treatment, scrambling for support. Your hands, landing on his massive balls, end up just rubbing over the giant's balls and encouraging him further.";
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
		say "     He pins you to the ground. '[one of]I've caught you now, back in your cage you go[or]Gotcha! Don't worry, you'll calm down once you're back in your pen[or]It's okay, little guy. Don't be scared. I'm just going to put you back in your cage where it's safe[at random],' he says in his booming voice, trying to sound reassuring. You try to protest that you're not a zoo animal, he just laughs. 'Oh, don't you try to trick me. Who's the zookeeper here?' he chuckles heartily.";
		say "     'Mmm... you must be excited like the rest of them, that's all. Looking to run around, stretch your legs and have some fun, eh? How about we have some fun then?' he asks. Not waiting for your response, he kneels down above you, pressing his huge cock down onto you and grinding you under its massive weight. Buried under his musky cock, you as soon covered in his leaking precum as he rubs the massive log of meat against you.";
		say "     After a few minutes of this, he picks you up [if scalevalue of Player > 4]with some effort [end if]and holds you against his pulsing rod. His strong hands press you hard against that hard flesh, stroking the whole of your [bodytype of Player] body against his manhood while precum leaks down over you. Soaked in it, you make for a slick toy for him to rub along his shaft. Every throb and pulse of it with the beating of his massive heart is felt through your entire body, so you have no problem noticing it beating faster (slow as it is) as his excitement builds.";
		say "     You can't help but grow aroused yourself as the scent of his manhood covers you and soon enough, you're rubbing, licking and kissing at his cock as best you can. You press your lips to his giant, gaping urethra, gulping down mouthfuls of his precum and diving your tongue into it. Heedless of the consequences, you keep this up even as his excitement continues to grow to the boiling point and he finally cums loudly, spraying his hot seed all over your face, much of it being forced down into your mouth by the blast, filling you [if scalevalue of Player < 4]to the point that you're bloated and rounded from it[else]until you're stuffed and have to push away[end if], unable to take any more. He continues to cum in massive arcs across the zoo, leaving huge streaks of white that sends the critters who'd gathered to watch fleeing.";
		now Libido of Player is Libido of Player / 2;
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


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [name of the overall species of the infection, used for children, ...]
	add "Human Giant" to infections of HumanList;
	add "Human Giant" to infections of MythologicalList;
	add "Human Giant" to infections of MaleList;
	add "Human Giant" to infections of BipedalList;
	now Name entry is "Human Giant"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]giant[or]giant man[or]lumbering brute[or]towering creature[at random] [one of]bashes you with a massive fist[or]slaps you with an enormous backhand, knocking you back[or]grabs you in his crushing grip before throwing you to the ground[or]clobbers you with his makeshift club[or]swings his massive club into you[or]stomps a giant foot down onto you[at random]!";
	now defeated entry is "[beatthegiant]";
	now victory entry is "[losetogiant]";
	now desc entry is "[giantdesc]";
	now face entry is "a human head with coarse, brown hair, just significantly larger";
	now body entry is "a normal human body, just grown to gigantic proportions. You have a strong, muscled body to help support your great height. At around fifteen feet tall, it's quite difficult for you to get in and out, requiring you find (or make) alternate entrances or squirm your way through doorways and move on all fours while exploring. Probably best to stick to open areas";
	now skin entry is "Human";
	now tail entry is "Your ass is gigantic!";
	now cock entry is "human";
	now face change entry is "your head becomes human-like[if scalevalue of Player is 4], but grown larger in size[else if scalevalue of Player > 4], but grown to a significantly larger size[end if]. You look much like your old self, though with a bigger head";
	now body change entry is "your body becomes human, but starts to grow to significantly larger size. Your body becomes muscled and strong as it changes, toughening up to support its increasing weight. You become something around fifteen feet in height";
	now skin change entry is "it changes, reverting to your old skin tone, though with bit a rougher, thicker feel to it";
	now ass change entry is "it pulses and throbs. I hope you like big butts, because yours is growing, and growing, and growing. That's one gigantic ass! Having gained wide, strong hips, you can feel powerful muscles beneath your impressive backside";
	now cock change entry is "it throbs and pulses, shifting and changing shape as spurts of cum fly from it. Eventually it settles down, having returned to being a fairly typical, human-shaped penis";
	now str entry is 36;
	now dex entry is 9;
	now sta entry is 20;
	now per entry is 16;
	now int entry is 7;
	now cha entry is 12;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 99; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 22; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Zoo"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 45; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 7; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 18; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 45;
	now Cunt Tightness entry is 40;
	now libido entry is 55; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]strong[or]towering[or]huge[at random]";
	now type entry is "[one of]giant[or]human[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 3 - Endings

when play ends:
	if BodyName of Player is "Human Giant":
		if humanity of Player < 10:
			say "     As your thoughts grow simpler and slower, you head out into the city and stumble around for a while, hardly noticing as everything gradually gets smaller and smaller. Unable to recognize the fact that you're actually growing, but finding the city increasingly confining, you make your way to the relative openness of the zoo. There you find a giant man being tied to the ground as military teams struggle to lash him down with steel cables. Growling at these pests, you come charging in, swatting them aside by the handful and tearing out the metal cables (which seem only as thick wires to you) to free the other giant. As he gets up, the military calls the retreat, forced to abandon their attempt. As you're helping the giant out of the last of the tangle, you can see groups of the zoo animals moving in on the injured soldiers you've left in your wake. Knowing they'll be taken care of, you turn your attention to the giant.";
			say "     He's very grateful for the rescue and thanks you for finally coming to help him with the zoo. He claims to have been getting the situation under control until those little soldier people showed up, but is really glad that you're here now to help him with it. You settle down, living there with him, playing around with the animals, getting them back into their cages, giving them the occasional soldier you find as a treat";
			if Player is herm:
				say " and dousing much of the nearby area with your hot, sticky cum as your big, strong mate fucks you silly[if Player is impreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else if Player is male:
				say " and dousing much of the nearby area with your hot, sticky cum as you and your big, strong mate take turns fucking one another[if Player is mpreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else if Player is female:
				say " when not stretching yourself out on one of the many open grazing plains while your big, strong mate fucks you silly[if Player is impreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
			else:
				say " and helping your giant friend use some of the cuter critters around as sextoys when he needs some sticky, messy relief[if Player is mpreg_ok]. Your many giant offspring are sent out into the world to find their own fun with all the fun little critters running around to be their toys[end if].";
		else:
			say "     Your manage to keep your mind intact and survive until the military rescue can arrive, but your huge size makes extracting you difficult. You are forced to accompany a ground team on their march out of the city. At first, they're very nervous about you, but change their tune after your powerful body helps drive off a mutant attack. From that point on, they're joking and laughing with you, calling you their friendly giant. One teases you about where Rusty and Jerome are, but you don't catch the reference, though he doesn't seem to mind.";
			say "     Hearing the reports when you get back to the city, the military are very grateful and, with a little coaxing from the other soldiers you've befriended, get you to sign up with the military. This accelerates your process through the processing camp and soon enough you join the unit. No longer having the time or means for proper training, you're given a crash course by your teammates and head back into the city to help them save any others you can.";
			say "     There are some losses and eventually your unit is turned over to RSX control, but you all keep doing your best to defend those too weak to defend themselves in this crisis. And the fact that your fellow soldiers have been gradually growing and becoming stronger, turning into giant men and women like yourself (helped along by your R&R lovemaking sessions), certainly makes that easier for you all to do. Equipment becomes harder to procure, but that's nothing a good, strong tree or telephone pole can't fix.";

Giant ends here.
