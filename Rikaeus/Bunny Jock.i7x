Version 1 of Bunny Jock by Rikaeus begins here.
[ Version 1.4 - player loss oral ]

"Adds a Bunny Jock creature to Flexible Survival's Wandering Monsters table with impregchance"

Section 1 - Monster Responses

bunnyjocknosex is a number that varies.

when play begins:
	add { "Bunny Jock" } to infections of guy;
	add { "Bunny Jock" } to infections of furry;

to say bunnyjockdesc:
	setmongender 3; [creature is male]
	say "     Before you is a decently sized lapine male standing at six foot tall with bulging muscles and a clear six pack. Beyond that he is wearing a pair of basketball shorts and a jersey that lists his number at the back. When you direct your attention at the guy's face you see that he's smiling rather happily at you, making it clear he's eager to have found you. 'Hey! You look like you can tussle around? How about we have some fun before I have to get to basketball practice?' he asks giving a laid back look towards you. From the large bulge in his shorts you can tell that the bunny jock wishes to do more than just wrestle with you. However, before you can give a response he charges at you, intent on starting the fun.";

to say losetobunnyjock:
	now bunnyjocknosex is 0;
	if ( cunts of player > 0 and a random chance of 1 in 4 succeeds ) or ( cunts of player is 0 and a random chance of 2 in 5 succeeds ) or anallevel is 1:
		say "     '[if cunts of player > 0]That was great, baby,' he says with a grin. 'Now let's have some fun.' [else]And that's how it's done! Ain't no stoppin['] this bunny!' he says, pointing to himself with a double thumbs-up. 'Do me a solid and help me let off some steam. You worked me up real good,' he adds with a grin. [end if]With that, he reaches into his shorts and pulls out his meaty cock. Having gotten quite hard, it's a massive two and a half feet long with the balls to match. 'Practice starts soon, so can you give me a quick blow?' With a strong paw on your head, he presses his glans to your lips, drooling pre across them. [if hp of player > 0]Despite your attempt to resist, you end up tasting the musky liquid and start to become aroused[else]You lick the musky fluid from his tip, the taste of it making you all the more aroused[end if].";
		say "     With the lapine jock keeping a steady grip, he strokes his cock while you lick across his glans. As you get more into it, you open your mouth, trying to work that mighty cock of his past your lips[if scalevalue of player < 4]. It takes some time to get started, but you somehow manage to stretch your mouth open enough to accept it with the help of the bunny's firm thrusting[else]. It's a little slow going at first, but soon enough you're taking it past your lips and into your warm mouth[end if]. You lick and suck at the huge shaft as best you can while the big guy grunts and moans in growing pleasure. As his arousal builds higher, he thrusts harder and faster before eventually cumming with a loud '[one of]Awwwww yeah[or]Slam dunk[or]Suck it harder[at random]!' upon release. Once he's emptied a sloshing amount of bunny cum into your belly, he pops his drooling cock free.";
		say "     'Damn! I'm late for practice! See ya later bud!' He shouts before quickly tucking his dick back into his basketball shorts and then dashing off towards the athletic side of campus. You however lay there, your stomach gurgling from the lapine cum that was released into you..";
	else if cunts of player > 0:
		say "     'I knew you couldn't say no to all this hotness for long, baby,' he says, flexing his muscles before pulling off his jersey. Unwilling or unable to continue resisting the bunny's advances, you ogle his muscled chest openly. His massive chest has firm washboard abs that make you let out a sigh. Every muscle seems wonderfully fit and defined, even under his fur, making you long to touch his body. But as he pulls down his shorts, exposing his huge cock, your eyes are immediately locked on it. You practically drool at the sight of it, reaching out to take hold of his maleness. As you run your hands over it, he runs his paws over your body, rumbling in pleasure.";
		say "     Once your fondling has gotten him fully hard, you press yourself against his foot long rod and massive balls. His paws stroke your rear and breasts before he lowers you down to the ground beneath him. You moan and pant, spreading your legs for that giant prick, hardly giving a thought to its size past your growing need to have it in you. Getting it lined up, he slowly pushes it into you, making you groan loudly[if cunt width of player < 6 or cunt length of player < 12]. The bunny's massive cock pushes into you gradually, stretching you out a little as it goes, but somehow your body is able to take it[else if cunt width of player < 9 or cunt length of player < 20]. The bunny's massive cock pushes into you slowly, a snug fit even for your large cunt[else]. The bunny's massive cock pushes into you with a little effort, feeling wonderfully filling for your enormous cunt[end if].";
		say "     You can't help but moan and squeal in delight like a cheerleader getting her first fuck, though no cheerleader was ever stuffed with such a big prick before the outbreak. Your belly is bulged out, stuffed by his throbbing, pulsing cock. You can barely contain yourself, running your hands through the soft fur covering this hunk's hard, hard body. 'Oh yeah, baby,' the bunny moans. 'Gonna go all the way!' His strong body pounds into you harder and faster, his rabbit legs and hips giving him powerful thrusts into your poor, abused, ecstasy-filled body until finally he cums hard, blasting his thick seed into you so much you're left bloated and overflowing with it.[impregchance]";
		say "     Done, he withdraws his cock and gives your ass a final grab. 'That was brilliant babe, but I'm late for practice!' He shouts, running off at a sprinter's speed towards the gymnasium. You just lay there and try to regain your bearings.";
	else:
		say "     As you stop resisting, the bunny hops up and down. 'Woo! You did great!' he praises you before flexing his muscles and pulling off his shirt. 'Hey, let's have some more fun,' he says, grinning down at you. 'Just a couple of dudes foolin['] around. Letting off some steam. Don't mean nothing,' he says, reaching down to pull you close. Unwilling or unable to resist his advances any longer, you run your hands over his muscled chest. His massive chest has bulging pecs and firm abs. Every muscle seems wonderfully fit and defined, even under his fur, making you strangely aroused. But as he pulls down his shorts, exposing his enormous cock, your eyes are immediately locked on it. You practically drool at the sight of it, reaching out to take hold of his maleness. As you run your hands over it, he runs his paws over your body, rumbling in pleasure.";
		say "     'I knew you'd see it my way,' he says, guiding you down onto all fours and grinding his huge, foot long prick against your back, drooling copious amounts of pre all over it. You can't help but grow excited at the prospect of having the big stud's meat inside you, hardly giving a thought to its size past your growing need to have it in you. Getting it lined up, he slowly pushes it into you, making you groan loudly. The bunny's massive cock pushes into you slowly, somehow stretching your back door and insides open to take it[if cocks of player > 0]. As he starts thrusting, he reaches around, rubbing a paw over your own, rock hard shaft in return[end if].";
		say "     You can't help but moan in delight as the big guy stuffs you impossibly full. Your belly is bulged out, stuffed by his throbbing, pulsing cock. You can barely contain yourself, digging your fingers into the lawn and struggling to stay in position as his powerful body pounds his giant rod into you. 'Oh yeah, dude,' the bunny moans. 'Just what I needed during halftime.' His strong body pounds into you harder and faster, his rabbit legs and hips giving him powerful thrusts into your poor, abused, ecstasy-filled body until finally he cums hard, blasting his thick seed into you so much you're left bloated and overflowing with it.[impregchance]";
		say "     Done, he withdraws his cock and gives your ass a final grab. 'Gotta get to practice! See ya later friend!' He shouts before running off towards the athletic buildings.";

to say beatthebunnyjock:
	say "     Beaten, the big bunny jock stumbles back and falls onto his rump. [if cunts of player > 0]'Hey baby, wanna take your prize?' he asks, wagging his eyebrows at you.[else]'You did great dude! How about we have some more fun?' The rabbit asks, gesturing to his crotch[end if].";
	if bunnyjocknosex > 2:
		say "     You shake your head as you have with the others, causing him to whine before he starts to masturbate himself. With a shrug of your shoulders you leave the bunny behind.";
	else if libido of player > 40:
		say "     As his paws wander to his shorts to fondle his big package, you consider having a little fun with that big boy's cock.";
		if cocks of player > 0:
			say "     [bold type]What now?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Fuck him.";
			say "     [link](2)[as]2[end link] - Suck him off.";
			say "     [link](3)[as]3[end link] - Just leave.";
			now calcnumber is -1;
			while calcnumber < 0 or calcnumber > 2:
				say "Choice? (0-2)>";
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
			if the player consents:
				say "[bjockvicsex02]";
			else:
				increase bunnyjocknosex by 1;
				say "     Resisting the urge, you turn away and head off before you are tempted further.";
	else:
		say "     As his paws wander down to his shorts to fondle himself, you head off, leaving him to his own devices to find some relief elsewhere.";

to say bjockvicsex01:
	say "     Planting your hands on the big bunny's muscled shoulders, you push him back onto the ground. He gives a soft eep as you pin him down beneath you. He's all to eager to participate, moaning a little as you grab his butt and give it a squeeze. 'Ooh yeah that's a great idea![if cunts of player > 0]. I love me a tough chick[else]. Mmmm I love receiving just as much as I love giving. Give me your best[end if]!' he says with a mix of eagerness and lust. He plants his elbows and raises his lower back with his paws and wiggles his shorts partway down. You grab them and pull them off the rest of the way, giving you a fine view of the bunny's meaty cock, muscular butt, fluffy tail and the crinkled hole nestled between all of these.";
	say "     With his ass raised and waiting for you, you decide not to tarry with enjoying the view and instead move on to enjoying bunny's butt. Lining up your [cock of player] cock, you press it to his back door and thrust into him. He gives a soft moan when you first penetrate him, but soon he's panting and moaning with lust as you pound away at him. The sight of the tough jock moaning as you drive your cock into him makes you grin and turns you on all the more. All it takes is for you to grab his cock and stroke it a few times to get him to cum all over himself. His lapine seed splatters his face and chest as the combination ass-fuck and hand job milk his balls dry. As he's finishing up, you plough hard into him and cry out in climax, pumping your [cum load size of player] load into his well-fucked ass. You pull out before you're done, adding a few last shots of your semen to the sticky mess already covering him before leaving the panting jock covered in your combined semen.";

to say bjockvicsex02:
	now bunnyjocknosex is 0;
	say "     Moving over to the big bunny, you grab his crotch and start tugging down his shorts. Pulling them off, you free his huge cock, which soon rises to roughly a foot in length. Wrapping both hands around it, you start stroking it up and down, grinning as you watch the jock's face melt into one of bliss. You lick and kiss all over his massive glans, even playing your tongue against his slit to lap up the precum leaking quickly from it. You grind your body against his shaft while you stroke him. As he's about to blow, you press your lips to his glans and catch the first few blasts in your mouth, gulping them down. But you can't keep up with his prodigious output and let the rest blast across him and the ground. Leaving him like that, you head on your way, rubbing your full tummy. You find the bunny's load quite satisfying, though you later find yourself growing increasingly aroused.";
	PlayerDrink 8;
	PlayerEat 4;
	increase libido of player by 5;
	if libido of player > 100, now libido of player is 100;


to say bunnyjockattack:
	if cunts of player > 0:
		say "[one of]The bunny jock grabs you roughly and gropes you![or]The bunny jock grabs your ass and squeezes![or]The muscled bunny grinds his massive crotch against you![or]The strong rabbit pulls you into a big kiss![or]Grabbing you, he presses you to his body in a rather crushing hug![at random]";
	else:
		say "[one of]The bunny jock grabs you roughly and gropes you![or]The bunny jock grabs your ass and squeezes![or]The muscled bunny tackles you to the ground, then hops up and cheers himself on.[or]The big jock puts you in a headlock that threatens to crush your skull.[or]The rabbit slams his shoulder against you, pushing you into the wall.'[at random]";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bunny Jock"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "[bunnyjockattack]";
	now defeated entry is "[beatthebunnyjock]"; [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetobunnyjock]"; [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[bunnyjockdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a rabbit, with long, fluffy ears and a short muzzle with whiskers and buck teeth";
	now body entry is "decently muscled, looking nice and powerful. Whenever someone stares at them you feel the urge to pose and show off. Your hands are paw-like with blunted claws and soft, pink pads on them. Your feet are much the same, but elongated and rabbit-like";
	now skin entry is "grey, furred";
	now tail entry is "You have a cute, fluffy bunny tail above your strong, toned glutes.";
	now cock entry is "[one of]sheathed[or]bunny[at random]"; [ Cock desc., format as "You have a 'size' (your text) cock." ]
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
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 30; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 18; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "bunweiser beer"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 12; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]super-buff[or]muscular[or]hyper-muscled[at random]";
	now type entry is "[one of]leporine[or]lapine[or]bunny[or]rabbit[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "powerplay"; [ Row used to designate any special combat features, "default" for standard combat. ]

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
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 ); [Double-damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	if a random chance of 1 in 2 succeeds:
		say "'And there was 5 seconds left on the clock in the big game and then Darrell was [']Woosh! Woosh!['] past them and SLAM DUNK!' As he's excitedly re-enacting the play, he grabs you, leaps 10 feet in the air with his powerful, rabbit legs and dunks you like a ball through an imaginary hoop. 'Dude! That game was awesome!' he yells as your head rings. You take [special-style-2][dam][roman type] damage!";
	else:
		say "The muscular bunny grabs you roughly and grinds his throbbing package against you while his paws roam over your body. Somehow being manhandled by this big, tough jock becomes quite arousing, weakening your resolve considerably. You take [special-style-2][dam][roman type] damage!";
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
			say "     As your mind fails, you find yourself wandering back to the college campus. You don't know why you came back, but you do see a familiar face. The cheery jock beams when he sees you and puts an arm around you. 'Hey, dude! Great to see you again!' You don't give him an immediate reaction as you are struggling to remember him. 'You wanna join me for practice?' You cannot help but gleam back, walking along with arms locked behind each other's necks.";
			say "     As you arrive for his practice you see a whole team assembled, most of which are bunny jocks with a few other mutants intermingled. You take seat on a bench first, not feeling confident enough to join. But as you are watching them play, you can see that they are mostly having fun, cheering each other on - even their opponents. Sometimes one would feel devious enough to slip in a grope or even tackle somebody during the game. But it's well received as you could see the engaging couples exchanging tender touches.";
			say "     When you decide to get up and join, the others seem fairly happy. You don't really remember much about this game but you are able to do pretty well by mirroring some of the other's moves and paying attention to your positioning.";
			say "     After a while of dribbling, cheering and exchanging touches with others, practice comes to an end. Eager to get to get to know the new one you are practically spoiled in the showers, as everyone wants to get to get a turn to [if cocks of player > 0]suck on your cock[else if cunts of player > 0]eat you out[else if anallevel is 3]eat your ass out[else]kiss along your body[end if].";
			say "     With the sun setting, everyone is lazing around the dorms and you are offered a beer by some of your newfound friends. Many of the jocks tell stories about practice or about people they met on the campus the other day - other students within the dorm enjoyed listening to their stories. Eventually they did get to the lewd topics and bragged about or praised their lays. The day concluded with the bunnies inviting you to their dorm room. They all shared one big one room; obviously the night wouldn't be over just yet for you.";
			say "     You could get used to this and eventually you do, as you repeat this routine every day with your great team.";
		else:
			say "     When the rescue comes, you are ecstatic - although the soldiers are on their guard, trying to assert your sanity. You are escorted into a quarantined zone, meeting lots of different mutants. As you're being observed and treated, you cannot help but praise the scientists for doing their jobs. One of the doctors even sneaks a beer into the quarantine to share it with you; he seems to appreciate your positive attitude but tells you with a heavy heart that your treatment has concluded and you're to be reintegrated into society.";
			say "     After a couple of formalities you end up within civilization again. Even though people are averse to mutants in general, somehow you are able to charm non-infected people not only with your harmless looking appearance, but also your laid back attitude.";
			say "     Time passes and you meet up with some of the friends you made during quarantine. One of them eventually introduces you to a couple of other bunny jocks. You make friends immediately and even get into friendly tussles with one another. Wanting to keep in touch you meet up with them in their basketball practices.";
			say "     Over time lots of different mutants unite under the team, leading to many finding each other. But the others enjoy hanging around with the most with you and your other bunny jock friends.";

Bunny Jock ends here.
