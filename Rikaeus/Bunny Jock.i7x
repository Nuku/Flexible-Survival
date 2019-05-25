Version 1 of Bunny Jock by Rikaeus begins here.
[ Version 1.4 - player loss oral ]

"Adds a Bunny Jock creature to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

bunnyjocknosex is a number that varies.

when play begins:
	add { "Bunny Jock" } to infections of MaleList;
	add { "Bunny Jock" } to infections of FurryList;

to say bunnyjockdesc:
	setmongender 3; [creature is male]
	say "     Before you is a decently sized lapine male standing at six foot tall with bulging muscles and a clear six pack. Beyond that, he is wearing a pair of basketball shorts and a jersey that lists his number at the back. When you direct your attention at the guy's face, you see that he's smiling rather happily at you, making it clear that he's pleaded to have found you. 'Hey! You look like you can tussle around. How about we have some fun before I have to get to basketball practice?' he asks, giving you a laidback look. From the large bulge in his shorts, you can tell that the bunny jock wishes to do more than just wrestle with you. However, before you can give a response, he charges at you, intent on starting the fun.";

to say losetobunnyjock:
	now bunnyjocknosex is 0;
	if ( player is female and a random chance of 1 in 4 succeeds ) or ( Cunt Count of Player is 0 and a random chance of 2 in 5 succeeds ) or anallevel is 1:
		say "     '[if Player is female]That was great, baby,' he says with a grin. 'Now let's have some fun.' [else]And that's how it's done! Ain't no stoppin['] this bunny!' he says, pointing to himself with a double thumbs-up. 'Do me a solid and help me let off some steam. You worked me up real good,' he adds with a grin. [end if]With that, he reaches into his shorts and pulls out his meaty cock. Having gotten quite hard, it's a massive two and a half feet long with the balls to match. 'Practice starts soon, so can you give me a quick blow?' With a strong paw on your head, he presses his glans to your lips, drooling pre across them. [if hp of Player > 0]Despite your attempt to resist, you end up tasting the musky liquid and start to become aroused[else]You lick the musky fluid from his tip, the taste of it making you all the more aroused[end if].";
		say "     With the lapine jock keeping a steady grip, he strokes his cock while you lick across his glans. As you get more into it, you open your mouth, trying to work that mighty cock of his past your lips. [if scalevalue of Player < 4]It takes some time to get started, but you somehow manage to stretch your mouth open enough to accept it with the help of the bunny's firm thrusting[else]It's a little slow going at first, but soon enough you're taking it past your lips and into your warm mouth[end if]. You lick and suck at the huge shaft as best you can while the big guy grunts and moans in growing pleasure. As his arousal builds higher, he thrusts harder and faster before eventually cumming with a loud '[one of]Awwwww yeah[or]Slam dunk[or]Suck it harder[at random]!' upon release. Once he's emptied a sloshing amount of bunny cum into your belly, he pops his drooling cock free.";
		say "     'Damn! I'm late for practice! See ya later bud!' he shouts before quickly tucking his dick back into his basketball shorts and then dashing off towards the athletic side of campus. You however lay there, your stomach gurgling from the lapine cum that was released into you..";
	else if Player is female:
		say "     'I knew you couldn't say no to all this hotness for long, baby,' he says, flexing his muscles before pulling off his jersey. Unwilling or unable to continue resisting the bunny's advances, you ogle his muscled chest openly. His massive chest has firm washboard abs that make you let out a sigh. Every muscle seems wonderfully fit and defined, even under his fur, making you long to touch his body. But as he pulls down his shorts, exposing his huge cock, your eyes are immediately locked on it. You practically drool at the sight of it, reaching out to take hold of his maleness. As you run your hands over it, he runs his paws over your body, rumbling in pleasure.";
		say "     Once your fondling has gotten him fully hard, you press yourself against his foot long rod and massive balls. His paws stroke your rear and breasts before he lowers you down to the ground beneath him. You moan and pant, spreading your legs for that giant prick, hardly giving a thought to its size past your growing need to have it in you. Getting it lined up, he slowly pushes it into you, making you groan loudly. The bunny's massive cock pushes into you [if Cunt Tightness of Player < 6 or Cunt Depth of Player < 12]gradually, stretching you out a little as it goes, but somehow your body is able to take it[else if Cunt Tightness of Player < 9 or Cunt Depth of Player < 20]slowly, a snug fit even for your large cunt[else]with a little effort, feeling wonderfully filling for your enormous cunt[end if].";
		say "     You can't help but moan and squeal in delight like a cheerleader getting her first fuck, though no cheerleader was ever stuffed with such a big prick before the outbreak. Your belly is bulged out, stuffed by his throbbing, pulsing cock. You can barely contain yourself, running your hands through the soft fur covering this hunk's hard, hard body. 'Oh yeah, baby,' the bunny moans. 'Gonna go all the way!' His strong body pounds into you harder and faster, his rabbit legs and hips giving him powerful thrusts into your poor, abused, ecstasy-filled body until finally he cums hard, blasting his thick seed into you so much you're left bloated and overflowing with it.[impregchance]";
		say "     Done, he withdraws his cock and gives your ass a final grab. 'That was brilliant babe, but I'm late for practice!' he shouts, running off at a sprinter's speed towards the gymnasium. You just lay there and try to regain your bearings.";
	else:
		say "     As you stop resisting, the bunny hops up and down. 'Woo! You did great!' he praises you before flexing his muscles and pulling off his shirt. 'Hey, let's have some more fun,' he says, grinning down at you. 'Just a couple of dudes foolin['] around. Letting off some steam. Don't mean nothing,' he says, reaching down to pull you close. Unwilling or unable to resist his advances any longer, you run your hands over his muscled chest. His massive chest has bulging pecs and firm abs. Every muscle seems wonderfully fit and defined, even under his fur, making you strangely aroused. But as he pulls down his shorts, exposing his enormous cock, your eyes are immediately locked on it. You practically drool at the sight of it, reaching out to take hold of his maleness. As you run your hands over it, he runs his paws over your body, rumbling in pleasure.";
		say "     'I knew you'd see it my way,' he says, guiding you down onto all fours and grinding his huge, foot long prick against your back, drooling copious amounts of pre all over it. You can't help but grow excited at the prospect of having the big stud's meat inside you, hardly giving a thought to its size past your growing need to have it in you. Getting it lined up, he slowly pushes it into you, making you groan loudly. The bunny's massive cock pushes into you slowly, somehow stretching your back door and insides open to take it[if Player is male]. As he starts thrusting, he reaches around, rubbing a paw over your own, rock hard shaft in return[end if].";
		say "     You can't help but moan in delight as the big guy stuffs you impossibly full. Your belly is bulged out, stuffed by his throbbing, pulsing cock. You can barely contain yourself, digging your fingers into the lawn and struggling to stay in position as his powerful body pounds his giant rod into you. 'Oh yeah, dude,' the bunny moans. 'Just what I needed during halftime.' His strong body pounds into you harder and faster, his rabbit legs and hips giving him powerful thrusts into your poor, abused, ecstasy-filled body until finally he cums hard, blasting his thick seed into you so much you're left bloated and overflowing with it.[impregchance]";
		say "     Done, he withdraws his cock and gives your ass a final grab. 'Gotta get to practice! See ya later friend!' he shouts before running off towards the athletic buildings.";

to say beatthebunnyjock:
	say "     Beaten, the big bunny jock stumbles back and falls onto his rump. [if Player is female]'Hey baby, wanna take your prize?' he asks, wagging his eyebrows at you[else]'You did great dude! How about we have some more fun?' the rabbit asks, gesturing to his crotch[end if].";
	if bunnyjocknosex > 2:
		say "     You shake your head as you have with the others, causing him to whine before he starts to masturbate himself. With a shrug of your shoulders, you leave the bunny behind.";
	else if Libido of Player > 40:
		say "     As his paws wander to his shorts to fondle his big package, you consider having a little fun with that big boy's cock.";
		if Player is male:
			say "     [bold type]What now?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Fuck him.";
			say "     [link](2)[as]2[end link] - Suck him off.";
			say "     [link](3)[as]3[end link] - Just leave.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>";
				get a number;
			if calcnumber is 1:
				say "[bjockvicsex01]";
			else if calcnumber is 2:
				say "[bjockvicsex02]";
			else:
				increase bunnyjocknosex by 1;
				say "     Resisting the urge, you turn away and head off before you are tempted further.";
		else:
			say "     Do you want to stroke and suck him off?";
			if Player consents:
				say "[bjockvicsex02]";
			else:
				increase bunnyjocknosex by 1;
				say "     Resisting the urge, you turn away and head off before you are tempted further.";
	else:
		say "     As his paws wander down to his shorts to fondle himself, you head off, leaving him to his own devices to find some relief elsewhere.";

to say bjockvicsex01:
	now bunnyjocknosex is 0;
	say "     Planting your hands on the big bunny's muscled shoulders, you push him back onto the ground. He gives a soft eep as you pin him down beneath you. He's all to eager to participate, moaning a little as you grab his butt and give it a squeeze. 'Ooh yeah that's a great idea! [if Player is female]I love me a tough chick[else]Mmmm, I love receiving just as much as I love giving. Give me your best[end if]!' he says with a mix of eagerness and lust. He plants his elbows and raises his lower back with his paws and wiggles his shorts partway down. You grab them and pull them off the rest of the way, giving you a fine view of the bunny's meaty cock, muscular butt, fluffy tail and the crinkled hole nestled between all of these.";
	say "     With his ass raised and waiting for you, you decide not to tarry with enjoying the view and instead move on to enjoying bunny's butt. Lining up your [Cock of Player] cock, you press it to his back door and thrust into him. He gives a soft moan when you first penetrate him, but soon he's panting and moaning with lust as you pound away at him. The sight of the tough jock moaning as you drive your cock into him makes you grin and turns you on all the more. All it takes is for you to grab his cock and stroke it a few times to get him to cum all over himself. His lapine seed splatters his face and chest as the combination ass-fuck and hand job milk his balls dry. As he's finishing up, you plough hard into him and cry out in climax, pumping your [Cum Load Size of Player] load into his well-fucked ass. You pull out before you're done, adding a few last shots of your semen to the sticky mess already covering him before leaving the panting jock covered in your combined semen.";

to say bjockvicsex02:
	now bunnyjocknosex is 0;
	say "     Moving over to the big bunny, you grab his crotch and start tugging down his shorts. Pulling them off, you free his huge cock, which soon rises to roughly a foot in length. Wrapping both hands around it, you start stroking it up and down, grinning as you watch the jock's face melt into one of bliss. You lick and kiss all over his massive glans, even playing your tongue against his slit to lap up the precum leaking quickly from it. You grind your body against his shaft while you stroke him. As he's about to blow, you press your lips to his glans and catch the first few blasts in your mouth, gulping them down. But you can't keep up with his prodigious output and let the rest blast across him and the ground. Leaving him like that, you head on your way, rubbing your full tummy. You find the bunny's load quite satisfying, though you later find yourself growing increasingly aroused.";
	PlayerDrink 8;
	PlayerEat 4;
	increase Libido of Player by 5;
	if Libido of Player > 100, now Libido of Player is 100;


to say bunnyjockattack:
	if Player is female:
		say "[one of]The bunny jock grabs you roughly and gropes you![or]The bunny jock grabs your ass and squeezes![or]The muscled bunny grinds his massive crotch against you![or]The strong rabbit pulls you into a big kiss![or]Grabbing you, he presses you to his body in a rather crushing hug![at random]";
	else:
		say "[one of]The bunny jock grabs you roughly and gropes you![or]The bunny jock grabs your ass and squeezes![or]The muscled bunny tackles you to the ground, then hops up and cheers himself on.[or]The big jock puts you in a headlock that threatens to crush your skull.[or]The rabbit slams his shoulder against you, pushing you into the wall.[at random]";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Bunny Jock"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[bunnyjockattack]";
	now defeated entry is "[beatthebunnyjock]"; [ Text when monster loses. ]
	now victory entry is "[losetobunnyjock]"; [ Text when monster wins. ]
	now desc entry is "[bunnyjockdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a rabbit, with long, fluffy ears and a short muzzle with whiskers and buck teeth";
	now body entry is "decently muscled, looking nice and powerful. Whenever someone stares at them you feel the urge to pose and show off. Your hands are paw-like with blunted claws and soft, pink pads on them. Your feet are much the same, but elongated and rabbit-like";
	now skin entry is "gray, furred";
	now tail entry is "You have a cute, fluffy bunny tail above your strong, toned glutes.";
	now cock entry is "[one of]sheathed[or]bunny[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it reshapes itself, gaining a short muzzle with whiskers. Your teeth shift and change as well as you grow a pair of large incisors at the front. Your ears are tugged up hard, almost painfully so, as they stretch upwards into long, bunny ears to complete the transition";
	now body change entry is "your body starts to convulse, your stomach muscles ripple before they start to change. Quickly you start to form washboard abs that would make anyone stare openly. Your hands and feet have changed during this period as well, becoming enlarged paws and bunny-like feet";
	now skin change entry is "soft, gray fur spreads over your body";
	now ass change entry is "your ass becomes tight and firmly muscled. This is followed by a soft [']pop['] a few seconds later as a cute cottontail puff appears atop your ass";
	now cock change entry is "a soft sheath of fur and skin forms to house your maleness when not aroused";
	now str entry is 18; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 8;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 37; [ The monster's starting hit points. ]
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 30; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 4; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "bunweiser beer"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 12; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]super-buff[or]muscular[or]hyper-muscled[at random]";
	now type entry is "[one of]leporine[or]lapine[or]bunny[or]rabbit[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "powerplay"; [ Row used to designate any special combat features, "default" for standard combat. ]
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


Table of Game Objects (continued)
name	desc	weight	object
"bunweiser beer"	"It's a capped beer bottle with a label declaring it Bunweiser Beer. The logo is a white bunny face winking at you."	1	bunweiser beer

bunweiser beer is a grab object.
the usedesc of bunweiser beer is "[bunweiseruse]".
it is part of the player.
It is temporary.

to say bunweiseruse:
	say "You open up the bottle and put it to your mouth. The drink has the taste of cheap beer, the good kind thankfully.";
	PlayerDrink 8;
	infect "Bunny Jock";

instead of sniffing bunweiser beer:
	say "The drink smells of hops and beer, really what did you expect from an alcoholic beverage.";

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"powerplay"	retaliation rule	--	--	powerplay rule	17	--	--	--	--	--

this is the powerplay rule:
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 ); [Double-damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	if a random chance of 1 in 2 succeeds:
		say "'And there was 5 seconds left on the clock in the big game and then Darrell was [']Woosh! Woosh!['] past them and SLAM DUNK!' As he's excitedly re-enacting the play, he grabs you, leaps ten feet in the air with his powerful, rabbit legs and dunks you like a ball through an imaginary hoop. 'Dude! That game was awesome!' he yells as your head rings. You take [special-style-2][dam][roman type] damage!";
	else:
		say "The muscular bunny grabs you roughly and grinds his throbbing package against you while his paws roam over your body. Somehow being manhandled by this big, tough jock becomes quite arousing, weakening your resolve considerably. You take [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[normalabsorbancy]";
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [absorb] damage!";
	decrease hp of the player by dam;
	increase hp of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";

when play ends:
	if BodyName of Player is "Bunny Jock":
		if humanity of Player < 10:
			say "     As your mind fails, you find yourself wandering back to the college campus. You don't know why you came back, but you do see a familiar face. The cheery jock beams when he sees you and puts an arm around you. 'Hey, dude! Great to see you again!' You don't give him an immediate reaction as you are struggling to remember him. 'You wanna join me for practice?' You cannot help but gleam back, walking along with arms locked behind each other's necks.";
			say "     As you arrive for his practice you see a whole team assembled, most of which are bunny jocks with a few other mutants intermingled. You take seat on a bench first, not feeling confident enough to join. But as you are watching them play, you can see that they are mostly having fun, cheering each other on - even their opponents. Sometimes one would feel devious enough to slip in a grope or even tackle somebody during the game. But it's well received as you could see the engaging couples exchanging tender touches.";
			say "     When you decide to get up and join, the others seem fairly happy. You don't really remember much about this game but you are able to do pretty well by mirroring some of the other's moves and paying attention to your positioning.";
			say "     After a while of dribbling, cheering and exchanging touches with others, practice comes to an end. Eager to get to get to know the new one you are practically spoiled in the showers, as everyone wants to get to get a turn to [if Player is male]suck on your cock[else if Player is female]eat you out[else if anallevel is 3]eat your ass out[else]kiss along your body[end if].";
			say "     With the sun setting, everyone is lazing around the dorms and you are offered a beer by some of your newfound friends. Many of the jocks tell stories about practice or about people they met on the campus the other day - other students within the dorm enjoyed listening to their stories. Eventually they did get to the lewd topics and bragged about or praised their lays. The day concluded with the bunnies inviting you to their dorm room. They all shared one big one room; obviously the night wouldn't be over just yet for you.";
			say "     You could get used to this, and eventually you do, as you repeat this routine every day with your great team.";
		else:
			say "     When the rescue comes, you are ecstatic - although the soldiers are on their guard, trying to assert your sanity. You are escorted into a quarantined zone, meeting lots of different mutants. As you're being observed and treated, you cannot help but praise the scientists for doing their jobs. One of the doctors even sneaks a beer into the quarantine to share it with you; he seems to appreciate your positive attitude but tells you with a heavy heart that your treatment has concluded and you're to be reintegrated into society.";
			say "     After a couple of formalities you end up within civilization again. Even though people are averse to mutants in general, somehow you are able to charm non-infected people not only with your harmless looking appearance, but also your laid back attitude.";
			say "     Time passes and you meet up with some of the friends you made during quarantine. One of them eventually introduces you to a couple of other bunny jocks. You make friends immediately and even get into friendly tussles with one another. Wanting to keep in touch you meet up with them in their basketball practices.";
			say "     Over time lots of different mutants unite under the team, leading to many finding each other. But the others enjoy hanging around with the most with you and your other bunny jock friends.";

Bunny Jock ends here.
