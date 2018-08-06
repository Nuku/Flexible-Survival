Version 2 of Male Peacock by Guest Writers begins here.
[ Version 1.0 - Original content - Lago Moro                             ]
[ Version 1.1 - Formatting corrections - Stripes                         ]
[ Version 1.2 - New data and alt combat mode - Stripes                   ]
[ Version 1.3 - Improved alt combat mode - Stripes                       ]
[ Version 2.0 - Peacock heat (mating call) - Stripes                     ]
[ Version 2.1 - Updated to extended heat table (no mpreg heat) - Stripes ]
[ Version 2.2 - M/M player loss oral - Stripes                           ]
[ Version 2.3 - M/M player loss anal and form cleanup - Song             ]

"Adds a Male Peacock to Flexible Survival's Wandering Monsters table."


Section 1 - Monster Responses

peacockcontrol is a number that varies.

to say peacockdesc:
	setmongender 3; [creature is male]
	say "     A tall blue bird emerges from an alley. His body is covered in an iridescent coat of blue and green plumage, and he greets you by fanning his eye-spotted tail. From what you can tell, the avian doesn't appear to be aggressive. Maybe you could just relax... and have a friendly chat. After all, his feathers are so entrancingly beautiful... and you want nothing more than to stare into those slowly swaying spots.";
	say "     As your hazy thoughts urge you closer, a sudden cry in the distance snaps you back to reality. Wait, what the hell? You feel like you lost control of your body for a moment. His trap flung, the angered peafowl draws closer with malice in his eyes, ready to seduce you by any means necessary. You'd better end this battle quickly.";
	now peacockcontrol is 0;

to say peacockskin:
	if cock length of player > cunt length of player:
		say "blue and green feathers covering your";
	else:
		say "brown-hued feathers covering your";

to say peacocktail:
	if cock length of player > cunt length of player:
		say "You have a beautiful fan of feathers for a tail. The feathers are decorated with hypnotic eyes";
	else:
		say "A feathered tail decorates your rear, like half of a long skirt";

to say peacockasschange:
	if cock length of player > cunt length of player:
		say "feathers emerge from it. They form a peacock tail that you are able to fan with ease";
	else:
		say "brown feathers emerge from it. They form a tail that comes down to your knees";

to say peacockattack:
	say "[one of]While you are trying to hit the feathered enemy, he trips you! You fall flat to the ground.[or]He pushes you and flees back out of range, laughing.[or]He jumps on your shoulders as you try to grab him, then hops back to the ground. Is he mocking you?[or]The bird flaps a few feet back and fans his tail wide, waving his colorful plumage.[at random]";
	say "You take no damage, but feel your thoughts grow hazier.";
	increase peacockcontrol by a random number between 1 and 5;
	if peacockcontrol > intelligence of player:
		now fightoutcome is 22;
		lose;

to say peacockvictory:
	now peacockcontrol is 0;
	choose row monster from the table of random critters;
	if player is female:
		say "     You are unable to think clearly anymore. You find yourself standing up and facing the avian, your thoughts mixed in a blur. He beckons you to follow him, and you have no choice but to walk with him until you arrive at what seems to be a well-maintained apartment. You can think more clearly by now, as if the leash in your brain has been loosened. However, you doubt that you could actually oppose whatever the bird has in mind for you.";
		say "     He motions you towards the bed in the middle of the room. You obediently lie on the mattress while he looks over your [bodydesc of player] body with unmistakable lust, his tapered cock already poking out of his slit. He slides over your [skin of player] body... it feels like a light, warm blanket. His hands explore your every curve, stroking and groping you teasingly. Your thoughts start to drift and grow dull, and when his long, sleek cock sinks into your yearning petals, any will to resist melts away in shuddering waves of pleasure. You give in completely to the alluring peafowl...[fimpregchance]";
		WaitLineBreak;
		say "     After an indeterminate period of time, you find yourself back in the city, no idea how or when. The time you shared with the strange bird is a hazy, yet blissful, blur. You quickly realize that finding him will be practically impossible by now, and you reminiscence about the encounter in an idle daydream. Before you can grow aroused all over again, you shake your head of these lurid thoughts and inspect your body for any changes, a part of you yearning to more closely resemble the sexy peacock who drew you under his spell.";
	else:
		say "     You are unable to think clearly anymore. You find yourself standing up and facing the avian, your thoughts jumbled and unfocused. He beckons you to follow him, and you have no choice but to walk with him into the alleyway.";
		say "     With another flourish of his tail, you drop to your knees in front of him. You can see his growing member emerging from a slit buried in the soft plumage of his crotch. 'I need some relief, so get to it,' he says, rippling those dazzling tailfeathers. Unresisting, you lean in, taking the bird's cock into your mouth. Running your hands over his feathered hips, you work that avian shaft with your lips, tongue, and palate until your efforts are finally rewarded with a hot, sticky mess. The bird groans in orgasmic release as you swallow each pulse, savoring the exotic flavor of his seed.";
		WaitLineBreak;
		if anallevel > 1 and a random chance of 1 in 2 succeeds: [EXTRA ANAL]
			say "     Once drained, the peacock's shaft withdraws, and he gently tilts your head up to look at him and his colorful tail. He gives it a mesmerizing wave, and your mind rapidly drifts away. Enthralled by his enticing display, you don't protest when the presumably spent peafowl guides you up on unsteady footing, his scaly arms steadying your ascent. 'You thought that we were finished?' he enquires teasingly, making your knees tremble as you try to parse the meaning of his words in your sex- and hypnosis-induced haze. Chuckling softly, the resplendent bird guides you up against the coarse brick of the wall, using one of his taloned feet to spread your legs apart.";
			say "     A moan spills past your lips as the handsome male begins to undress you, pulling down any clothes or equipment obscuring your lower half. You bury your face against the dirty red brick, your eyes fluttering closed. His talon-tipped hands glide over the curve of your rear, taking a moment to admire what's rightfully his. 'Such a fine piece of ass,' the fowl whispers into your ear, curling his thumbs to pry the dark cleft apart. The cool air of your exposure draws a shiver of delight, and you push your rear back with mounting excitement, steeling yourself for the mind-melting pleasure your experienced partner is sure to provide.";
			WaitLineBreak;
			say "     You feel the warm, stiff contact of his shaft against your bottom, the long and tapered organ smearing his fluids over your yearning flesh. You sigh out with pleasure as his tip teases your star, gently encircling it and lubricating your rim. By the time he pushes his wonderful rod inside of your rear, you can think of nothing but the immense pleasure of giving yourself over to this sexy, assertive bird and the bestial length spearing you open, pushing all the way to the hilt inside of your gripping asshole. Your entire body grows tense with arousal as you're enveloped in his lustrous feathers, metallic hues cradling your back and sides as he begins to pound into you.";
			say "     The peafowl takes several slow, deep strokes to ensure his spoils['] comfort, allowing your rear to grow accustomed to the long, hard presence spreading and dragging through your bowels. The heat of his body against you and the scent of your mutual arousal further mires your thoughts in the simple bliss of submission, your moans growing ragged as he rams himself within you. As his pace increases, [if player is male]your length[smn] begin[smv] to bob and twitch, milking strained spurts of pre each time his pulsing spire grinds against your prostate[else]so does your sexless pleasure of being dominated by such a powerful male, the heat of friction leaving every nerve in your sensitive lining alight[end if]. Without thinking, you begin to join in his rising song of courtship, announcing your bliss with animalistic cries of pleasure as he pistons his length into your well-stretched holed.";
			WaitLineBreak;
			say "     After what feels like hours of being fucked by the tireless peacock, he finally hilts himself inside of you one last time and goes rigid in the throes of a powerful climax. Spurt after spurt of his hot, sticky seed paint your bowels in his essence, the tainted fluid splattering across your lining and filling you with a strange, intoxicating warmth. You feel yourself sagging weakly[if player is male], even as you reach your own shuddering climax that wastes your lesser cum across the coarse brick before you[else] against the wall, savoring the feeling of his cum deep inside of you[end if]. Exhausted but awash in blissful tingles, you turn your neck to kiss your feathery stud, parting his beak to play with his tongue while you bask in his confident presence.[mimpregchance]";
			say "     Spent and satisfied, you feel any remaining tension in your body drain from you in time with the fowl's withdrawal, a cascade of warm cream flowing from your thighs and marring your legs in his essence. You cherish the feeling of what does stay within, pursing your slightly gaping rim to seal in your lover's thick, musky tribute. But as you turn back to face him, the peacock's feathers begin to shift and sway, drawing your gaze back to those mesmerizing eyes. In a matter of moments, the sweet embrace of sleep envelops your conscious mind, and just like that, you lapse into a deep and satisfying slumber.";
			WaitLineBreak;
			say "     When you awaken, you find yourself in the same alleyway, retaining no memories of how you got there, nor the encounter itself. All you can feel is the by-now diffused warmth of his avian seed inside of you, infecting your form from within. You shudder with a mix of revulsion and lingering arousal, somehow wishing that you could remember the details of your ravishing.";
		else: [STANDARD]
			say "     Once drained, the peacock's shaft withdraws, and he gently tilts your head up to look at him and his colorful tail. He gives it a mesmerizing wave, and your mind rapidly drifts away. 'It will be better for both of us if you don't remember this... Forget... Forget...' he says softly. You start to feel sleepy as you stare into the swaying spots, and you soon slump over, passing out. When you awaken, you find yourself in an alleyway with no memories of how you got there, the encounter completely forgotten.";
		decrease XP of player by lev entry / 2; [no XP from forgotten encounter]
		if ktspeciesbonus > 0, decrease the XP of the player by 1;
		if player is submissive and HP of player > 0, decrease the XP of the player by ( ( 2 + lev entry ) / 5 );


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Peacock" to infections of guy;
	add "Peacock" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Peacock";
	now attack entry is "[peacockattack]";
	now defeated entry is "The last hit knocks the blue bird on the ground. He stands up quickly and flees in a panic, his pride completely shattered."; [ Text or say command used when Monster is defeated.]
	now victory entry is "[peacockvictory]";
	now desc entry is "[peacockdesc]";
	now face entry is "bird-like head. You pass quite a bit of your time admiring your"; [ Face description, format as "Your face is (your text)."]
	now body entry is "tall and slender; your legs are double-jointed and bird-like, while your arms have been mutated into feathered wings, ending with five extra-thick feathers, flexible and mobile as fingers"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[peacockskin]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "[peacocktail]."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]thin red[or]undulated[or]avian-like[at random]";
	now face change entry is "your entire head gets reshaped in the shape of a bird head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your legs became bird-like, including a painful double joint, and your arms transform into wings. You feel really light... you can't fly, though"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "lots of feather sprouts, until you are completely covered"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "[peacockasschange]"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes slim and undulated. It retracts into a new, just formed, slit. Your balls are permanently absorbed in your body instead"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 6;
	now dex entry is 16; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 20;
	now cha entry is 12;
	now sex entry is "Female"; 					[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 0; [Amount of Damage monster Does when attacking.]
	now area entry is "High"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0; [ Length infection will make cock grow to if cocks]
	now cock width entry is 0; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0; [ Number of Breasts infection will give you. ]
	now breast size entry is 0; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "peacock feather";
	now lootchance entry is 35; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]winged[as decreasingly likely outcomes]";
	now type entry is "avian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "pchypno"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"pchypno"	peacockhypno rule	--	--	--	--	--	--	--	--	intstrike rule

this is the peacockhypno rule:
	choose row monster from table of Random Critters;
	now monsterhit is false;
	follow the intstrike rule;
	if monsterhit is true:
		say "[peacockattack]";
	else:
		say "The peacock tries to distract you with his plumage, but is forced to dodge away!";
	now peppereyes is 0;
	if HP of the player > 0 and libido of player < 110:
		wait for any key;
	else:
		if HP of player <= 0, now fightoutcome is 20;
		if libido of player >= 110, now fightoutcome is 21;
		Lose;
	rule succeeds;


Section 4 - Peacock Heat / Mating Call [by Stripes]

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Peacock"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 2; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "[peacockheattrigger]"; 	[ This is the text that is written to the screen when the player comes into heat]
	now heat start entry is "[peacockheatstart]"; [ This is a to say block that causes things to happen when the player enters heat. for example the GSD sex grows wider. Delete entire line if you wish nothing to happen.]
	now heat end entry is "[peacockheatend]"; [ This is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to its previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[peacockinheat]"; [ This final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is false;
	now mpregtrigger entry is "";

to say peacockheattrigger:
	say "You can feel an increasing dampness in your loins. As you find yourself growing increasingly aroused, something hidden at the back of your mind makes you ";
	if there are no dangerous doors in the location of the player:
		say "want to leave this place and go... somewhere else...";
	else:
		let y be a random dangerous door in the location of the player;
		if marea of Y is "High":
			say "want to head out exploring.";
		else:
			say "want to leave this place and go... somewhere else...";

to say peacockinheat:
	if there are no dangerous doors in the location of the player:
		if a random chance of 3 in 5 succeeds:
			say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat... but not here...[or]A fresh flow of juices trickles down your thighs as your pussy leaks with need. A corner of your mind keeps calling you to satisfy those urges... but not here.[or]You are forced to pause and finger yourself as your dripping cunt demands satisfaction. The idea of heading back to the high rise district of town to satisfy your need pops into your head.[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier. Thoughts of finding a sexy peacock to fill you sound very satisfying.[or]The waves of hot lust filling your cunt make you moan as you try to focus, but your thoughts keep wandering back to the high rise district of town.[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where. You grow tired of being here, wanting to go somewhere else now.[purely at random]";
	else:
		let y be a random dangerous door in the location of the player;
		if marea of Y is "High":
			say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat[or]A fresh flow of juices trickles down your thighs as your pussy leaks with need[or]You are forced to pause and finger yourself as your dripping cunt demands satisfaction[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier[or]The waves of hot lust filling your cunt make you moan as you try to focus[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where[purely at random][one of]. You feel a compulsion to go out and look for a male right away[or]. Your thoughts keep wandering back to the peacock you encountered before[or]. Thoughts of finding a sexy peacock to fill you sound very satisfying[or]. The urge to go looking around the neighborhood is foremost in your mind[or]. The idea of going exploring, and maybe finding someone to mate with you, is very appealing[or]. A corner of your mind keeps calling you to go out and satisfy those urges[or]. You feel a strong use to venture out in search of a sexy peacock to slake your need[or]. You hear the soft chirping of birdsong and you want to go out to find it[purely at random].";
		else:
			if a random chance of 3 in 5 succeeds:
				say "[one of]You moan as a wave of need quivers through your loins, your body needing to be filled to satisfy your heat... but not here...[or]A fresh flow of juices trickles down your thighs as your pussy leaks with need. A corner of your mind keeps calling you to satisfy those urges... but not here.[or]You are forced to pause and finger yourself as your dripping cunt demands satisfaction. The idea of heading back to the high rise district of town to satisfy your need pops into your head.[or]You moan and squeeze your thighs together as the heat in your loins makes you hornier and hornier. Thoughts of finding a sexy peacock to fill you sound very satisfying.[or]The waves of hot lust filling your cunt make you moan as you try to focus, but your thoughts keep wandering back to the high rise district of town.[or]You start to whistle a soft, bird-like call, echoing a song you can hear in the back of your mind, but can't quite remember from where. You grow tired of being here, wanting to go somewhere else now.[purely at random]";
	increase libido of player by 3;

to say peacockheatstart:
	increase libido of player by 8;

to say peacockheatend:
	if libido of player > 20:
		now libido of player is ( libido of player * 3 ) / 4;
		if libido of player < 20, now libido of player is 20;


Section 5 - Peacock Feather

peacock feather is a grab object. It is a part of the player. It is temporary. peacock feather is infectious. The strain of peacock feather is "Peacock".

Table of Game Objects (continued)
name	desc	weight	object
"peacock feather"	"A peacock feather. It looks pretty."	1	peacock feather

the usedesc of peacock feather is "[peacock feather use]";

to say peacock feather use:
	say "You remember that many were infected and mutated by contaminated food. It seems... no, it's stupid, but you bite down the feather anyway.";

instead of sniffing peacock feather:
	say "The long feather smells of an avian male and leaves your mind momentarily foggy.";


Section 6 - Endings

when play ends:
	if bodyname of player is "Peacock":
		if humanity of player < 10:
			if cock length of player > cunt length of player:
				say "You decide to remain in the quarantined city. With your wits and abilities, you will surely find many different... ahem... [']fruits['] to taste.";
			else:
				say "You decide to remain in the quarantined city. You become the mate of a male peacock, or rather, his favorite mate. Neither of you wants to sacrifice his fun, after all...";
		else:
			say "You decide to leave and join civilization. Your pretty look and overall self-controlled behavior lands you a job in what is considered high society. You still have your... [']teeny sins['], you could say.";
			if cunt length of player > cock length of player:
				if intelligence of player > 18:
					say "One day, however, your mind clicks. You manage to recall everything that the hypnosis altered or blocked completely, and the memory of the event causes a stirring in your loins. You make bag and baggage and set off immediately to the quarantined city, determined to find him and make clear that YOU are going to be in charge now...";

Male Peacock ends here.
