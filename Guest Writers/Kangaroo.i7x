Version 4 of Kangaroo by Guest Writers begins here.
[ Version 1.0 - Initial content - Batroo                                                         ]
[ Version 2.0 - Writing revision, added attack text, added 'cock too big' scene variant - Batroo ]
[ Version 2.1 - Added alt attacks - Stripes                                                      ]
[ Version 3.0 - Moved to Guest Writers folder - BlueBishop                                       ]
[ Version 4.0 - Extensive writing revision, added loss by submission variant - Song              ]

"Adds a kangaroo to Flexible Survival's Wandering Monsters table."


Section 1 - Monster Responses

kangaroodefeat is a number that varies.
rkrcheck is a truth state that varies. rkrcheck is usually false.

to say redroodesc:
	setmongender 4; [creature is female]
	follow the monster combat mode rule; [select the combat mode for first-strike]
	say "     A flash of rusty red fur catches your eyes. Turning to look, you're met with something out of some perverted fantasy or nightmare. Standing around six-foot-five-inches tall is a red kangaroo. Her hardened turquoise eyes stare out at you from behind half lens glasses. This [']roo is dressed for taking [']assets['] hostility, wearing a tight blazer with an even tighter white blouse under it, concealing her tits while making them appear bigger than they are. A short skirt reaches from her hips down to mid thigh, giving glances of what's underneath as she moves. A thick tail sways behind her, looking to be used as a third leg. Rusty red fur covers her back and the top of her tail, fading to a creamy beige on her belly, and there are freckles of red along her sides. [one of]'What do we have here?' [or]'Eeeee! A new plaything for me!' [or]'You're going to give me exactly what I need.' [at random]Her stance changes as she prepares for battle, lightly brushing her nose in a boxing gesture.[rookickreset]";

to say kangaroo wins:
	if HP of player > 0:
		say "     Unwilling to resist the feisty kangaroo, you [if weapon object of player is not journal]lay down your arms [end if]and raise your hands in the air to signal your submission. The female marsupial hops around your form, still leery about your intentions and unwilling to lower her guard. 'So that's it? You're just going to let me fuck you, no struggle?' she balks. You nod in affirmation, reiterating your desires, and she finally seems to realize that you're serious about the offer. 'And here I was looking forward to trouncing you,' she teases, her thick tail swaying behind her as she appraises you with obvious hunger. 'Be a good joey and undress for me, dear. I want to see everything you've got to work with.' The kangaroo reaches beneath her short dress to play with her folds while she watches you expose yourself [if daytimer is day]in broad daylight[else]under the dim light of the stars above[end if]. You feel no small measure of arousal as you strip down for the sexy marsupial, putting on a tantalizing show that is sure to excite your prospective partner further.";
		if player is male:
			say "     The moment your [cock of player] length[smn] spring[smv] into view, the kangaroo's muzzle spreads in a lecherous smile. 'I need you inside me,' she says in a breathy, lascivious voice, barely restraining herself from pushing you flat and riding your mast[smn]. Instead, the lustful marsupial turns around, giving you a sultry look over her shoulder as she crouches low and lifts her massive tail. This hikes her skirt up and out of the way, leaving her plush pink petals on prominent display. 'Take me,' she all but moans, a hand reaching back to hold the base of her tail steady while she supports her weight with the other.";
			say "     The temptation of sinking into the kangaroo's hot, tight pussy is too great for your lust-addled mind to bear. You hurriedly move closer, laying your fore over her meaty tail and wrapping your arms around her chest. 'Yesss,' she hisses out, pushing her achingly needy cunt back against you, the slavering folds of her pussy drenching your hardening length[smn] in sticky wetness. Your fingers dig into the supple mounds beneath her white blouse, and you can feel her nipples through the fabric, hard with arousal. The kangaroo gives a soft whine as you toy with them, her muscular body tensing beneath your form. 'No more teasing,' she pleads softly, any semblance of her earlier fighting spirit extinguished by the baser need of having a strong male inside her.";
			WaitLineBreak;
			if cocks of player > 1 and anallevel > 1:
				say "     Happy to oblige, you release a long exhale of pleasure as you sink your [cock size desc of player] cocks into her ass and sordid pussy. Your lover lets out a keening cry at the dual penetration, and she pushes back against your lap, reduced to trembling, hazy moans as you stuff her so completely. Despite the overwhelming pleasure, she proves a very active partner as you begin to rut her yearning body, your balls clapping rhythmically against her belly with each thrust. Her steady gyrations only seem to allow you to sink deeper into each tight hole, and the separate sensations around your sensitive cockflesh make you grunt and shiver as you drive into her need-drenched cunt and gripping tailhole. Soon, you're fucking the once-proud marsupial with reckless abandon, your arms coiled tightly around her fore to hold her steady while you ream her.";
				say "     In time, the pleasure of losing yourself in her supple lining becomes too much for you, and you muffle your cries of ecstasy in the thick fur of her nape. Blast after blast of thick, creamy cum stuff her womb and bowels, your [cum load size of player] load painting her walls white with your seed. ";
				if cocks of player > 2:
					say "Your untended [if cocks of player > 3]lengths grow turgid and spurt[else]length grows turgid and spurts[end if] messily over her blouse, soaking the fabric of rich streaks of your essence. ";
				say "Your potent release drives her right over the edge, her holes wringing tightly around your hilted lengths as she begs and babbles incoherently for every last drop. The almost painful constriction prolongs and enhances your climax, leaving you thoroughly, utterly drained by the time your shared orgasm draws to its inevitable end.";
				WaitLineBreak;
				say "     Spent and brutally satisfied, you pull out of the panting kangaroo's backside, a portion of your spent seed trickling down her crotch and dripping to the ground beneath her. 'Come back soon,' your erstwhile lover pants weakly, a glazed expression on her muzzle as she stares blankly into the middle distance. Pleased with your performance, you wipe your cum-slick dicks clean on her skirt and give her furry ass a final squeeze of appreciation, then depart, leaving the well-fucked marsupial to languor in the miasma of the afterglow.";
			else:
				say "     Happy to oblige, you release a long exhale of pleasure as you sink [if cocks of player > 1]one of your [cock size desc of player] cocks[else]your [cock size desc of player] cock[end if] into her warm, sordid pussy. Your lover lets out a hazy purr of delight and pushes back against your lap, loving the feeling of being stuffed and aching for more. As you begin to rut her yearning body, she proves a very active partner, her steady gyrations only seeming to allow you to sink deeper into her gripping cunt as your balls clap rhythmically against her belly with each thrust. Her encouraging motions spur your arousal, and you're soon bucking roughly into the once-proud marsupial, your arms coiled around her fore to hold her steady while you ream her with energetic zeal.";
				say "     In time, the pleasure of losing yourself in her supple lining becomes too much for you, and your muzzle your cries of ecstasy in the thick fur of her nape. Black after black of thick, creamy cum stuff her cunt and womb, your [cum load size of player] load painting her walls white with your seed. ";
				if cocks of player > 1:
					say "Your untended [if cocks of player > 2]lengths grow turgid and spurt[else]length grows turgid and spurts[end if] messily over her blouse, soaking the fabric of rich streaks of your essence. ";
				say "Your potent release drives her right over the edge, her pussy wringing tightly around your hilted length as she moans and begs for every last drop. The rippling constriction of her vaginal walls prolongs and enhances your climax, leaving you thoroughly, utterly drained by the time your shared orgasm draws to its inevitable end.";
				WaitLineBreak;
				say "     Spent and brutally satisfied, you pull out of the panting kangaroo's folds, a portion of your spent seed trickling down her crotch and dripping to the ground beneath her. 'Come back soon,' your erstwhile lover pants weakly, a glazed expression on her muzzle as she stares blankly into the middle distance. Pleased with your performance, you wipe your cum-slick dick clean on her skirt and give her furry ass a final squeeze of appreciation, then depart, leaving the well-fucked marsupial to languor in the miasma of the afterglow.";
		else:
			say "     Not seeing what she's looking for, the kangaroo shakes her head in disbelief. 'You have some nerve, breaking the rules of the ring like that.' Unable to think clearly, you fail to register the meaning of her words until her strong arms wrap around you, squeezing you flush to her form while her dark, lust-glazed eyes stare deep into your own. 'I'll just have to floor you to teach you some respect,' she teases, clearly intent on capitalizing on your unwitting breach of etiquette.";
			say "     The kangaroo pushes you roughly, making you stumble and fall down onto your back. Her thick tail sways as the walks around you, poring over your supine body with lecherous intent. Her thick thighs cast a shadow over your head, blotting out all light as she descends on your face with a quiver of anticipation, her plush pink petals dripping with arousal and aching for their overdue worship. 'Lick,' she commands, and you comply meekly, craning your head up to draw a few tentative laps over her earth tone fur before narrowing your focus on her warm, slick mound. The heady taste fills your palate as you play with her slit, toying with her labia and delving deeper to sample more of her sticky nectar. In time, your oral attentions works her juices to a lather, the anthro marsupial moaning from above while you press ever-deeper into her sordid, hungry snatch.";
			WaitLineBreak;
			say "     Not wishing to deprive you of some punitive pleasuring, the kangaroo's tail curls to stroke between your inner thighs. After some searching, it ";
			if player is female:
				say "sinks into [if cunts of player > 1]one of your [cunt size desc of player] cunts[else]your [cunt size desc of player] cunt[end if] and pushes as much of the silky furred taper into your depths as it can muster. The sudden penetration has you arching and writhing beneath the heft of her fecund form, only to sink into trembling, hapless bliss as you breathe deeply of her intoxicating pheromones. That powerful intruder begins to glide back and forth, slick with your wetness and gently wiggling in your overfull muff. You're brought to a series of powerful orgasms beneath your lover's harsh ministrations, each climax allowing her to push that unyielding mass deeper into your sex. The broad tail boring into your hot, drenched cunt has you moaning with desire as you devour her soft, luxurious flower. Your arms reach around to pull her thighs tight as you sweep your tongue across the walls of her satiny folds, eager to drive your sparring partner over the edge to return the favor.";
				say "     Eventually succumbing to your ravenous attention, the kangaroo rocks her hips as pleasure overwhelms her, gushing wetly over your head while her writhing tail spears into your muff. You join her peak with a cry of delight, burying your face into her honeypot to gather and swallow as much of her fertile essence as possible. You remain locked together like this for some time, quivering and aching with residual need, before the height of your tryst melts into a pleasant, hazy afterglow. Your breath normalizes, your galloping heartbeat slows, and you find yourself lapsing into a deep and satisfied slumber while still pinned beneath her pussy and impaled on her wonderful tail.";
			else if anallevel > 1:
				say "slides between the crack of your ass and teases at your unguarded star. You relish the feeling of its tip teasing your sphincter, the gentle pressure as it plucks at your rim making your sexless body quiver with anticipation. However, try as you might, you struggle to relax the taut tunnel, and you're wholly unprepared for the searing bliss of the taper splitting you wide.";
				say "     The silky furred intruder wiggles and thrashes to burrow deeper into your ass, burgeoning width spreading your rim in spite of its initial resistance. Forcibly spread open, you struggle to draw a breath, and your next sharp inhale is tainted by the aroma of the your lover's damp arousal. The rich, heady fragrance is pungent and exciting, spurring you to mash your face against her plush pink petals and sweep your tongue across those satiny folds. Pleased by your efforts, the kangaroo releases a wavering sigh and begins to rock her hips, a hand reaching below to cup the back of your head for support as you nurse from the nectar of her soft, luxurious flower.";
				say "     In a matter of moments, your ravenous attention drives the kangaroo over the edge. Her thighs seal around you as she orgasms powerfully, her sticky wetness splattering over your head while her tail spears as deep as it can into your overfull asshole. You groan into her sordid depths, trying to gather and swallow as much of her fertile essence as possible. You remain locked together like this for some time, your hazy thoughts focused on the bliss of being stuffed while your partner gives a series of soft, pleasured moans. Your breath normalizes, your galloping heartbeat slows, and you find yourself lapsing into a deep and satisfied slumber while still pinned beneath her pussy and impaled on her wonderful tail.";
			else:
				say "slides between the crack of your ass and teases at your unguarded star. Your eyes go wide at the unwanted attention, and you squirm and groan beneath your lover in an effort to dissuade her. Thankfully, she gets the hint and obliges your request, shifting the tapered mass to tickle your bare pelvis instead.";
				say "     Relieved, you sink back and resume lapping at the plush petals of her folds. Pleased by your submission, the kangaroo releases a wavering sigh and rocks her hips against you, a hand reaching below to cup the back of your head for support. You slide your tongue deeper to sweep across her inner walls, gauging their elasticity and tasting of her nectar. As you drink and nurse from the bounty of her soft, luxurious flower, the heady swill begins to excite you, a gentle warmth permeating your throat and gullet that draws soft moans of delight. You feel completely relaxed and comfortable as you feed on her essence and savor the unfocused arousal buzzing through your nerves.";
				say "     After a while, your gentle ministrations drive the kangaroo over the edge. She orgasms powerfully, her sticky wetness soaking your head while her tail thumps and thrashes behind her. You purr into her sordid depths, trying to gather and swallow as much of her fertile, intoxicating essence as possible. Even after your lover comes down from her peak, you spend quite a long time locked together, your hazy thoughts focused on your partner's soft, pleasured moans. Soon, you find yourself lapsing into a deep and satisfied slumber while still pinned beneath the petals of her hot, drenched pussy.";
			WaitLineBreak;
			say "     You wake up sometime later, feeling groggy, dizzy, and pleasantly exhausted. Wiping your eyes free of sleep, you realize that you can still taste the kangaroo's femcum on your tongue, making you shiver at the memory of your arousing encounter. You shake your head of those impure thoughts and gather your belongings";
			if player is female:
				say ". Even after you depart, your mind keeps drifting back to the pleasant, lingering void in your freshly tail-fucked pussy";
			else if anallevel > 1:
				say ". Even after you depart, your mind keeps drifting back to the pleasant, lingering void in your freshly tail-fucked asshole";
			say ", a small part of you longing to be floored again for another round beneath the powerful female.";
	else:
		say "     With a deft blow to the jaw, then a sweep of her tail, the kangaroo knocks you down onto your back before a large foot is placed on your chest, her muzzle splitting into a grin. 'You're going to be my joey for today.' Trying to get away, a heavy foot slams into your back, pressing you to the ground again. Rolling you over, the kangaroo strips your clothes off to see what she has to work with.";
		WaitLineBreak;
		if player is male:
			say "     'Oh, what do we have here?' Her hands start to caress your [bodydesc of player] body, her fingers tracing down until she reaches your flagging, [cock of player] shaft[smn]. 'Perfect,' she whispers. Climbing atop your body, her drooling pussy hovers over [if cocks of player > 1]one of your malenesses[else]your maleness[end if]. Slamming down onto you, a grunt rises from your chest from the force as a moan escapes hers. Bouncing quickly with the help of those powerful legs, she rides you with more force than you're used to, grinding her much larger hips hard against your own while her cunt squeezes tightly, drooling lewdly over your lower half.";
			WaitLineBreak;
			say "     Riding you harder with each passing second, you soon end up giving her what she wants. Ropes of your seed pump up into her gripping depths as her powerful hips grind down on you to draw every last spurt from you. She bounces some more, a paw slipping down between the connection to help bring her own orgasm to fruition. The tight velvet of her cunt squeezes around you, milking you of any and all seed that you're able to give her. 'Oh, you've been fun. I will have to find you again, very soon,' she pants down at you, resting on your limp form, before she pushes off of you with a shove. She bounces away, dripping your seed across the ground as she goes, leaving you in a puddle of mixed juices.";
		else:
			say "     'Drat! You need better equipment, dear,' the kangaroo woman chides, disappointed in your lack of a cock to slake her urges. After taking a moment to consider her options, the large marsupial lowers her hips over your face, a hand reaching below to spread the folds of her hot, wet cunt. 'Be a dear,' she says with an authoritative voice. When you don't immediately comply, she begins to grind her pussy against your face, her insistent gyrations forcing you to eat her out while her copious juices drool down your chin.";
			say "     The kangaroo's sounds of pleasure are interspersed with huffs of irritation, which only grow more frequent the longer she rides you. 'You're going to have to do better than that,' she complains, punctuating her words by grinding her hips down roughly. The constricting pressure blots out all light and leaves you unable to do anything but draw shallow breaths from within her slavering pussy. Growing aroused against your will and given no choice but to comply, you sink your tongue into the kangaroo's needy pink cunt, sweeping and dragging over her sensitive inner walls. 'Yes! That's it!' she moans out happily, relinquishing some of the pressure again as you abide her forced demands.";
			WaitLineBreak;
			say "     'Oh there!' Her voice cuts off into a loud moan, and quick thumps of her tail hitting the ground warn of the incoming flood. She screams in pure bliss as orgasm washes over her, a maelstrom of clear, heady nectar splashing across your face. She grinds down roughly and rhythmically as her juices keep flowing, flooding your mouth and drenching your head in her warm, sticky femcum. Keeping up with her release as best as you can, she eventually regains her composure and rises from you shakily. You roll over onto your side and gasp for fresh air while her transformative fluids seep into your body. 'Not what I needed, but it will do,' she huffs, bounding off in search of something more fulfilling.";

To say kangaroo loses:
	if lisaartemiscount2 > 0 and lisaartemiscount2 < 5, increase lisaartemiscount2 by 1;
	if player is male:
		say "     Whimpering, she rears back onto her tail, using it as a seat while her thick legs open, showing off her moist cunt to you. [bold type]Do you accept her offer[roman type]?";
		if player consents:
			if cock length of player > 10:
				say "     As you press your [cock of player] manhood to her cunt, she winces, jerking away. 'No dear, that won't do.' She then slips onto the ground on her back, patting her belly for you to climb on. Moving over her belly, she takes your cock in between her tits, wrapping the furred mounds of flesh around your [cock size desc of player] [cock of player] pole, letting you thrust between them, her tongue lapping over the tip when it peeks through the top of her cleavage. With groans of pleasure from you, she redoubles her effort, suckling over the tip and lapping up any precum that drools from it. The force of your thrusts make her tits shake in her hands with muffled slapping sounds.";
				WaitLineBreak;
				say "     Whines from the kangaroo girl under you tip you off that she's getting off from being used like this. Popping free your cockhead, her hot breath washes over the tip as she looks up to you, her eyes needful. 'Please...' is all she says, and with all the sensations, a few more hard thrusts are all it takes for your [cock of player] dick to swell up. You fire off thick ropes of seed, splattering the surprised kangaroo in the face, then down along her neck, the last few errant strands landing over her tits. The two of you pant from the exertion for a while before you rise from her, admiring the mess you've made of her fur. After wiping your cock on her muscular tail, you walk away from the needy marsupial, leaving her to whine as she gets up and hops away, defeated and horny.";
			else:
				say "     You move between those spread legs, taking her thighs in each hand. Your [cock of player] shaft presses into that moist tunnel, a moan rising from both of you, punctuated with a hard thrust by you that makes her gasp. Her breasts jiggle about with each thrust, her body rocking on her tail, and your hands press her legs farther apart, allowing you to drive deeper into her needy pussy. Your balls slap against her rump and tail with every thrust into her wet, squeezing tunnel.";
				WaitLineBreak;
				say "     Grunting deeply, you lean over her upper body, rocking her harder with your thrusts. With a particularly rough thrust, you knock her off her tail, the two of you falling to the ground and grunting. The jolt of the fall sends her into climax, and her tight, spasming cunt around your [cock of player] cock sends you over the edge, firing your thick seed into her. Once you have finished, you climb off of her limp, panting body and get your clothes back on, leaving her there as you head off.";
		else:
			say "     Quickly scrabbling to her feet, she bounds off in a hurry, not wanting to be hurt any further.";
	else:
		say "     Quickly scrabbling to her feet, she bounds off in a hurry, not wanting to be hurt any further.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Red Kangaroo"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]A left hook catches you in the chin, making you stumble[or]Sweeping around, the powerful tail slams into your side, knocking the wind out of your lungs[or]After blocking a punch, she throws an uppercut into your chin, followed by a left and then a right jab to your stomach[or]The kangaroo hops from one foot to the other as she delivers a series of quick punches[at random].[rookickreset]"; [Text used when the monster makes an Attack]
	now defeated entry is "[kangaroo loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[kangaroo wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[redroodesc]"; [ Description of the creature when you encounter it.]
	now face entry is "rounded, medium-sized muzzle with a black nose pad at the very tip";
	now body entry is "a soft rounded shoulder build with a tight stomach, leading down into wide hips, large spring-like thighs and feet";
	now skin entry is "[one of]rusty red furred[or]short furred[or]softly furred[at random]";
	now tail entry is "You have a thick, muscled tail, being able to be used as a third leg. It is covered in [skin of player] hide and lightly thumps on the ground with each movement.";
	now cock entry is "[one of]marsupial[or]kangaroo[at random]";
	now face change entry is "your face draws forward into a kangaroo muzzle, stretching to mold to the new shape";
	now body change entry is "your muscles switch, moving lower as your bottom half now becomes a powerful spring board, leaving your upper half reasonably muscled";
	now skin change entry is "your flesh sprouts rusty red fur over the top and creamy beige along the bottom, being velvety soft to the touch";
	now ass change entry is "a thick powerful tail erupts from your backside, acting as a counter balance to your front acting as a third leg";
	now cock change entry is "it swells, becoming long and curved with a steady taper from base to narrow tip";
	now str entry is 14;
	now dex entry is 19;
	now sta entry is 15;
	now per entry is 15;
	now int entry is 14;
	now cha entry is 11;
	now sex entry is "Female"; 					[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 35;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7; [ Amount of Damage monster Does when attacking.]
	now area entry is "Red"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 8; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 7; [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 10; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "altered"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]marsupial[or]kangaroo[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "redroo"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Section 3 - Alt-Attack Roo Double-Kick

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"redroo"	retaliation rule	--	--	rookick rule	20	--	--	--	--	--


this is the rookick rule:		[+75% dmg cartoonish double-kick]
	choose row monstercom from table of Critter Combat;
	now alt1chance entry is 0; [cannot do two double-kicks in a row]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 57 ); [+75% dmg]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "Dodging a punch, [one of]she[or]the roo[or]the kangaroo[purely at random] rocks back onto her tail. As she rocks forward again, she slams both powerful legs into you and kicks hard, sending you flying back several feet. This [one of]strong[or]violent[or]powerful[purely at random] attack does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[bodyabsorbancy]";
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of player by absorb;
	follow the player injury rule;
	say "You are [descr].";

to say rookickreset:
	choose row monstercom from table of Critter Combat;
	now alt1chance entry is 20;


Section 4 - Definitions

Definition: a person is redroobodied:
	if bodyname of player is "Red Kangaroo", yes;
	no;


Section 5 - Endings

when play ends:
	if bodyname of player is "Red Kangaroo":
		if humanity of player < 10:
			say "Your mind slips away going into a more peaceful mode, wandering the city for fresh vegetation to eat quickly bounding away from startling events. You quickly find a place among other kangaroos becoming a flyer to the dominant male around.";
		else:
			say "You quickly adapt to life outside, using the new found legs to become a track star, getting into the high jumps and long jumps to a very successful career. Your lovers find those legs to have some of the best cowgirl riding moments, with your tail being a great impromptu seat.";

to kangaroofy:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Red Kangaroo":
			now monster is y;
			break;
	infect;
	infect;

Kangaroo ends here.
