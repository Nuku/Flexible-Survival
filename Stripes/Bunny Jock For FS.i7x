Version 1 of Bunny Jock For FS by Stripes begins here.
[ Version 1.3 - M/M player victory sex ]

"Adds a Bunny Jock creature to Flexible Survivals Wandering Monsters table with impregchance"


Section 1 - Monster Responses

bunnyjocknosex is a number that varies.

when play begins:
	add { "Bunny Jock" } to infections of guy;
	add { "Bunny Jock" } to infections of furry;

to say losetobunnyjock:
	now bunnyjocknosex is 0;
	if cunts of player > 0:
		say "     'I knew you couldn't say no to all this hotness for long, baby,' he says, flexing his muscles before pulling off his shirt.  Unwilling or unable to continue resisting the bunny's advances, you ogle his muscled chest openly.  His massive chest has bulging pecs and firm abs.  Every muscle seems impossibly fit and defined, even under his fur, making you long to touch his body.  But as he pulls down his shorts, exposing his enormous cock, your eyes are immediately locked on it.  You practically drool at the sight of it, reaching out to take hold of his maleness.  As you run your hands over it, he runs his paws over your body, rumbling in pleasure.";
		say "     Once your fondling has gotten him fully hard, you press yourself against his two and a half foot rod and massive balls.  His paws stroke your rear and breasts before he lowers you down to the ground beneath him.  You moan and pant, spreading your legs for that giant prick, hardly giving a thought to its size past your growing need to have it in you.  Getting it lined up, he slowly pushes it into you, making you groan loudly[if cunt width of player < 6 or cunt length of player < 12].  The bunny's massive cock pushes into you gradually, stretching you out a little as it goes, but somehow your body is able to take it[otherwise if cunt width of player < 9 or cunt length of player < 20].  The bunny's massive cock pushes into you slowly, a snug fit even for your large cunt[otherwise].  The bunny's massive cock pushes into you with a little effort, feeling wonderfully filling for your enormous cunt[end if].";
		say "     You can't help but moan and squeal in delight like a cheerleader getting her first fuck, though no cheerleader was ever stuffed with such a big prick before the outbreak.  Your belly is bulged out, stuffed by his throbbing, pulsing cock.  You can barely contain yourself, running your hands through the soft fur covering this hunk's hard, hard body.  'Oh yeah, baby,' the bunny moans. 'Gonna go all the way!'  His strong body pounds into you harder and faster, his rabbit legs and hips giving him powerful thrusts into your poor, abused, ecstasy-filled body until finally he cums hard, blasting his thick seed into you so much you're left bloated and overflowing with it.[impregchance]";
		say "     Done, he withdraws his cock and gives your ass a final grab.  'Got to get back to the game,' he says, pulling on his shorts and top as he runs off across the grass.  Seeming still rather confused, he snatches a [one of]basketball[or]football[or]baseball bat[or]pair of shoulderpads[or]hockey stick[or]helmet[at random] from a nearby creature drawn by the commotion.  As the bunny rushes off towards the nearest field, the other creature yells in indignation and gives chase.";
	otherwise:
		say "     As you stop resisting, the bunny hops up and down.  'Woo!  Who dah bun-nay?  Who dah bun-nay?' he cheers for himself before flexing his muscles and pulling off his shirt.  'Hey, let's have some more fun,' he says, grinning down at you.  'Just a couple of dudes foolin['] around.  Letting off some steam.  Don't mean nothing,' he says, reaching down to pull you close.  Unwilling or unable to resist his advances any longer, you run your hands over his muscled chest.  His massive chest has bulging pecs and firm abs.  Every muscle seems impossibly fit and defined, even under his fur, making you strangely aroused.  But as he pulls down his shorts, exposing his enormous cock, your eyes are immediately locked on it.  You practically drool at the sight of it, reaching out to take hold of his maleness.  As you run your hands over it, he runs his paws over your body, rumbling in pleasure.";
		say "     'I knew you'd see it my way,' he says, guiding you down onto all fours and grinding his huge, two and a half foot prick against your back, drooling copious amounts of pre all over it.  You can't help but grow excited at the prospect of having the big stud's meat inside you, hardly giving a thought to its size past your growing need to have it in you.  Getting it lined up, he slowly pushes it into you, making you groan loudly.  The bunny's massive cock pushes into you slowly, somehow stretching your back door and insides open to take it[if cocks of player > 0].  As he starts thrusting, he reaches around, rubbing a paw over your own, rock hard shaft in return[end if].";
		say "     You can't help but moan in delight as the big guy stuffs you impossibly full.  Your belly is bulged out, stuffed by his throbbing, pulsing cock.  You can barely contain yourself, digging your fingers into the lawn and struggling to stay in position as his powerful body pounds his giant rod into you.  'Oh yeah, dude,' the bunny moans.  'Just what I needed during halftime.'  His strong body pounds into you harder and faster, his rabbit legs and hips giving him powerful thrusts into your poor, abused, ecstasy-filled body until finally he cums hard, blasting his thick seed into you so much you're left bloated and overflowing with it.[impregchance]";
		say "     Done, he withdraws his cock and gives your ass a final grab.  'Got to get back to the game,' he says, pulling on his shorts and top as he runs off across the grass.  Seeming still rather confused, he snatches a [one of]basketball[or]football[or]baseball bat[or]pair of shoulderpads[or]hockey stick[or]helmet[at random] from a nearby creature drawn by the commotion.  As the bunny rushes off towards the nearest field, the other creature yells in indignation and gives chase.";


to say beatthebunnyjock:
	say "     Beaten, the big bunny jock stumbles back and falls onto his rump[if cunts of player > 0].  'Hey, baby.  I just wanted to show you a little bunny love,' the rabbit complains[otherwise].  'Not cool, dude.  I was just horsing around,' the rabbit complains[end if]";
	if bunnyjocknosex > 2:
		say ".  As his paws wander down to his shorts to fondle himself, you head off as you have with the rest of them.  You leave him to his own devices to find some relief elsewhere.";
	otherwise if libido of player > 40:
		say ".  As his paws wander to his shorts to fondle his big package, you consider having a little fun with that big boy's cock";
		if cocks of player > 0:
			say ".  Do you want to [link]fuck him (1)[as]1[end link], [link]suck him off (2)[as]2[end link] or [link]just leave (0)[as]0[end link]?";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>[run paragraph on]";
				get a number;
			if calcnumber is 1:
				say "[bjockvicsex01]";
			otherwise if calcnumber is 2:
				say "[bjockvicsex02]";
			otherwise:
				increase bunnyjocknosex by 1;
				say "     Resisting the urge, you turn away and head off before you are tempted further.";
		otherwise:
			say ".  Do you want to stroke and suck him off?";
			if the player consents:
				say "[bjockvicsex02]";
			otherwise:
				increase bunnyjocknosex by 1;
				say "     Resisting the urge, you turn away and head off before you are tempted further.";
	otherwise:
		say ".  As his paws wander down to his shorts to fondle himself, you head off, leaving him to his own devices to find some relief elsewhere.";

to say bjockvicsex01:
	say "     Planting your hands on the big bunny's muscled shoulders, you push him back onto the ground.  He gives a soft eep as you pin him down beneath you.  He's too worn at this point to resist, only squirming a little as you grab his butt and give it a squeeze.  'Hey, this isn't quite what I had in mind[if cunts of player > 0].  Ain't nothing wrong with tough chicks though.  I guess fair's fair[otherwise].   I don't normally play receiver, but you won, so I guess fair's fair.  Just don't get the wrong idea[end if],' he says with a mix of trepidation and lust.  He plants his elbows and raises his lower back with his paws and wiggles his shorts partway down.  You grab them and pull them off the rest of the way, giving you a fine view of the bunny's meaty cock, muscular butt, fluffy tail and the crinkled hole nestled between all of these.";
	say "     With his ass raised and waiting for you, you decide not to tarry with enjoying the view and instead move on to enjoying bunny's butt.  Lining up your [cock of player] cock, you press it to his back door and thrust into him.  He gives a soft moan that he tries to cover up when you first penetrate him, but soon he's panting and moaning with lust as you pound away at him.  The sight of the tough jock moaning as you drive your cock into him makes you grin and turns you on all the more.  All it takes is for you to grab his cock and stroke it a few times to get him to cum all over himself.  His lapine seed splatters his face and chest as the combination ass-fuck and hand job milk his balls dry.  As he's finishing up, you plough hard into him and cry out in climax, pumping your [cum load size of player] load into his well-fucked ass.  You pull out before you're done, adding a few last shots of your semen to the sticky mess already covering him before leaving the panting jock covered in your combined semen.";

		
to say bjockvicsex02:
	now bunnyjocknosex is 0;
	say "     Moving over to the big bunny, you grab his crotch and start tugging down his shorts.  Pulling them off, you free his huge cock, which soon rises to roughly two and a half feet in length.  Wrapping both hands around it, you start stroking it up and down, grinning as you watch the jock's face melt into one of bliss.  You lick and kiss all over his massive glans, even playing your tongue against his slit to lap up the precum leaking quickly from it.  You grind your body against his shaft while you stroke him.  As he's about to blow, you press your lips to his glans and catch the first few blasts in your mouth, gulping them down.  But you can't keep up with his prodigious output and let the rest blast across him and the ground.  Leaving him like that, you head on your way, rubbing your full tummy.  You find the bunny's load quite satisfying, though you later find yourself growing increasingly aroused.";
	decrease thirst of player by 8;
	decrease hunger of player by 4;
	increase libido of player by 5;
	if thirst of player < 0, now thirst of player is 0;
	if hunger of player < 0, now hunger of player is 0;
	if libido of player > 100, now libido of player is 100;


to say bunnyjockattack:
	if cunts of player > 0:
		say "[one of]The bunny jock grabs you roughly and gropes you![or]The bunny jock grabs your ass and squeezes![or]The muscled bunny grinds his massive crotch against you![or]The strong rabbit pulls you into a big kiss![or]Grabbing you, he presses you to his body in a rather crushing hug![at random]";
	otherwise:
		say "[one of]The bunny jock grabs you roughly and gropes you![or]The bunny jock grabs your ass and squeezes![or]The muscled bunny tackles you to the ground, then hops up and waves his arms in the air.  'Woo!  Intercepted!'[or]The big jock puts you in a headlock that threatens to crush your skull.  'Noogie!' he calls out before grinding his paw painfully atop your head![or]The rabbit slams his massive shoulder against you, crushing you against a wall.  'Yah!  Unnecessary roughness!'[at random]";

to say bunnyjockdesc:
	say "     Before you is one of the most massively muscled creatures you've seen in this city gone mad[one of].  Dressed in a tight sports t-shirt[or].  Dressed in the local team's jersey[or].  Stuffed into in a tank-top with a gym logo[or].  Wearing a t-shirt with a beer company logo on it[at random] and shorts, this bunny's massive muscles stretch the fabric tight over his bulging pecs and chiseled abs.  Standing roughly 7 1/2 feet tall, this powerful rabbit is certainly no timid, little bunny.  He's got [one of]short,[or]fluffy,[or]thick,[at random] [one of]black[or]white[or]grey[or]brown[or]tan[at random] fur that does little to hide his big, bulging muscles.  And speaking of big, his shorts are stretched nearly to the point of being torn by the massive man meat tucked into them[if cunts of player > 0][one of].  'Hey there, honey.  Let's party!'[or].  'Lemme show you a good time, baby' he says, advancing on you.[or].  'Lemme show you why I'm big with all the ladies,' he brags, rubbing his crotch.[or].  'Have you got a kiss for the winner of the big game?' he asks, moving in to grab you.[at random][otherwise][one of].  'How [']bout a little wrestling, big man?' he says before charging.[or].  'Hey, you're that guy to took my beer, aintcha?' he growls, charging.[or].  'I'm the big bunny around here now.'[or].  He flexes, showing off his muscles before making a grab at you.[or].  'If I beat you, Coach'll put me on the team for sure,' he says, clearly confused.[or].  'Did you see the tackle I made in the big game?  Guy was running and I came at him just like this,' he says, charging to tackle you.[at random]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bunny Jock";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[bunnyjockattack]";
	now defeated entry is "[beatthebunnyjock]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetobunnyjock]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[bunnyjockdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of a rabbit, with long, fluffy ears and a short muzzle with whiskers and buck teeth";
	now body entry is "hugely muscled, looking strong and powerful.  Your muscles bulge as you move around and you're tempted to start posing to show them off.  Your hands are paw-like with blunted claws and soft, pink pads on them.  Your feet are much the same, but elongated and rabbit-like";
	now skin entry is "grey, furred";
	now tail entry is "You have a cute, fluffy bunny tail above your strong, toned glutes.";
	now cock entry is "[one of]sheathed[or]bunny[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it reshapes itself, gaining a short muzzle with whiskers.  Your teeth shift and change as well as you grow a pair of large incisors at the front.  Your ears are tugged up hard, almost painfully so, as they stretch upwards into long, bunny ears to complete the transition";
	now body change entry is "your body starts to convulse, random muscles twitching and pulsing before bulging out to a huge size.  This goes on almost at random until your whole body is enlarged into a hulking mass of impossibly huge muscles.  Your hands and feet have changed during this period as well, becoming enlarged paws and bunny-like feet";
	now skin change entry is "soft, grey fur spreads over your body";
	now ass change entry is "your ass becomes tight and firmly muscled.  This is followed by a soft [']pop['] a few seconds later as a cute cottontail puff appears atop your ass";
	now cock change entry is "a soft sheath of fur and skin forms to house your maleness when not aroused";
	now str entry is 18;			[ These are now the creature's stats... ]
	now dex entry is 15;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 8;
	now cha entry is 10;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 37;			[ The monster's starting hit points. ]
	now lev entry is 4;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 7;			[ Monster's average damage when attacking. ]
	now area entry is "Campus";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 30;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 18;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 40;			[ Target libido the infection will rise towards. ]
	now loot entry is "testosterone pill";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 12;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]super-buff[or]muscular[or]hyper-muscled[at random]";
	now type entry is "[one of]leporine[or]lapine[or]bunny[or]rabbit[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "powerplay";		[ Row used to designate any special combat features, "default" for standard combat. ]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"powerplay"	retaliation rule	--	--	powerplay rule	17	--	--	--	--	--

this is the powerplay rule:
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );		[Double-damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	if cunts of player > 0:
		say "The muscular bunny grabs you roughly and grinds his throbbing package against you while his paws roam over your body.  Somehow being manhandled by this big, tough jock becomes quite arousing, weakening your resolve considerably.  You take [special-style-2][dam][roman type] damage!";
	otherwise:
		if a random chance of 1 in 3 succeeds:
			say "'And then I was like, [']Hey Coach, put me in!['] and I grabbed the ball like this,' he says, grabbing you and hefting you under his arm in a crushing hold and charges across the grass.  '30!  20!  10!  Touchdown!' he cheers, slamming you hard to the ground as if spiking the ball.  You take a hefty [special-style-2][dam][roman type] damage!";
		otherwise if a random chance of 1 in 2 succeeds:
			say "'And there was 5 seconds left on the clock in the big game and then Darrell was [']Woosh! Woosh!['] past them and SLAM DUNK!'  As he's excitedly re-enacting the play, he grabs you, leaps 10 feet in the air with his powerful, rabbit legs and dunks you like a ball through an imaginary hoop.  'Dude!  That game was awesome!' he yells as your head rings.  You take [special-style-2][dam][roman type] damage!";
		otherwise:
			say "'And so their defensemen were lining up to block our winger and so I came skating across the ice and WHAM!' he cries, barreling his shoulder into you and plowing you into a wall so hard it rattles your teeth.  'I checked both of them in one go.  Got a penalty for that one, but it was sooooo worth it!' he adds.";
	now damagein is dam;
	say "[normalabsorbancy]";
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [absorb] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";


when play ends:
	if bodyname of player is "Bunny Jock":
		if humanity of player is less than 10:
			if cocks of player > 0:
				say "     As your sanity starts to falter, your mind becomes filled with thoughts about sports and athletes.  And big, sexy jocks for you to show your stuff against.  You make your way across the college campus, finding a football game that's broken out in the middle of one courtyard.  Smashed cars have been planted upright in the ground to act as goals for this impromptu game populated by a mix of creatures on each side.  When one of the guys is taken off the field after a multi-creature tackle, you join in and take his position.  The rush of the game excites you further, making you play hard and party even harder after it's finally over.  You scoop up a keg under one arm and a couple of furry cheerleaders in the other, carrying them off into the bushes for some hardcore partying and fucking.";
			otherwise if cunts of player > 0:
				say "     As your sanity starts to falter, your mind becomes filled with thoughts about sports and athletes.  And big, sexy jocks for you to cheer on, to bend over for and to lustfully pleasure with your horny body.  You make your way across the college campus, finding a football game that's broken out in the middle of one courtyard.  Smashed cars have been planted upright in the ground to act as goals for this impromptu game populated by a mix of creatures on each side.  You start cheering on some of the hunky bunnies in the game, swinging your ass and fondling your chest as part of your cheer.  This seems to please them greatly and the bunnies on the field play all the harder.  In the end though, you don't really care who wins the game though, bending over to reward the winners before doing the same to console the losers.";
			otherwise:
				say "     As your sanity starts to falter, your mind becomes filled with thoughts about sports and athletes.  And big, sexy jocks for you to show your stuff against.  You make your way across the college campus, finding a football game that's broken out in the middle of one courtyard.  Smashed cars have been planted upright in the ground to act as goals for this impromptu game populated by a mix of creatures on each side.  When one of the guys is taken off the field after a multi-creature tackle, you join in and take his position.  The rush of the game excites you further, making you play hard and party even harder after it's finally over.  You down several kegs, recounting tales of games you've played and games you've watched, all a mish-mash of non-existent events your infected mind invents, but believes to be true.";
		otherwise:
			say "     When you are rescued from the city gone mad, the soldiers keep an eye on you and your massively muscled body, but you're just glad to be leaving and take it in stride.  While under military quarantine and testing, a recruiter tries to coax you into joining their forces, but you have no interest in it.  After your release, you're quickly noticed by the pro-sports leagues who are trying to adapt to the changes, playing [one of]football[or]hockey[or]baseball[or]soccer[as decreasingly likely outcomes] in one of the new mutant leagues they're forming.  You do well at the game, achieving some success.  While never the team's star player, you have a long and illustrious career, maturing into the linchpin that holds your team together through the years.  You enjoy the life of sport and post-game partying, never really lacking for lovers from your sport's many fans[if cocks of player > 0].  You take particular pleasure with the unchanged human fans, taking particular pleasure in stuffing them full of bunny cum and making sure they leave more rabbity than when they met you[otherwise if cunts of player > 0].  You take particular pleasure with the unchanged, human fans, taking particular pleasure in having them fuck you until they're riding you like a fucking bunny and leaving you more rabbity than when they met you[end if].";


[ Edit this to have the correct creature name as well]
Bunny Jock For FS ends here.
