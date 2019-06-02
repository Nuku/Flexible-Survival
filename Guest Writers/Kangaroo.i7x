Version 4 of Kangaroo by Guest Writers begins here.
[ Version 1.0 - Initial content - Batroo                                                         ]
[ Version 2.0 - Writing revision, added attack text, added 'cock too big' scene variant - Batroo ]
[ Version 2.1 - Added alt attacks - Stripes                                                      ]
[ Version 3.0 - Moved to Guest Writers folder - BlueBishop                                       ]
[ Version 4.0 - Extensive writing revision, added loss by submission variant - Song              ]

"Adds a kangaroo to Flexible Survival's Wandering Monsters table."


Section 1 - Creature Responses

kangaroodefeat is a number that varies.
rkrcheck is a truth state that varies. rkrcheck is usually false.

to say redroodesc:
	setmongender 4; [creature is female]
	follow the monster combat mode rule; [select the combat mode for first-strike]
	say "     A flash of rusty red fur catches your eyes. Turning to look, you're met with something out of some perverted fantasy or nightmare. Standing around six-foot-five-inches tall is a red kangaroo. Her hardened turquoise eyes stare out at you from behind half lens glasses. This [']roo is dressed for taking [']assets['] hostility, wearing a tight blazer with an even tighter white blouse under it, concealing her tits while making them appear bigger than they are. A short skirt reaches from her hips down to mid thigh, giving glances of what's underneath as she moves. A thick tail sways behind her, looking to be used as a third leg. Rusty red fur covers her back and the top of her tail, fading to a creamy beige on her belly, and there are freckles of red along her sides. [one of]'What do we have here?' [or]'Eeeee! A new plaything for me!' [or]'You're going to give me exactly what I need.' [at random]Her stance changes as she prepares for battle, lightly brushing her nose in a boxing gesture.[rookickreset]";

to say kangaroo wins:
	if HP of Player > 0:
		say "     Unwilling to resist the feisty kangaroo, you [if weapon object of Player is not journal]lay down your arms [end if]and raise your hands in the air to signal your submission. The female marsupial hops around your form, still leery about your intentions and unwilling to lower her guard. 'So that's it? You're just going to let me fuck you, no struggle?' she balks. You nod in affirmation, reiterating your desires, and she finally seems to realize that you're serious about the offer. 'And here I was looking forward to trouncing you,' she teases, her thick tail swaying behind her as she appraises you with obvious hunger. 'Be a good joey and undress for me, dear. I want to see everything you've got to work with.' The kangaroo reaches beneath her short dress to play with her folds while she watches you expose yourself [if daytimer is day]in broad daylight[else]under the dim light of the stars above[end if]. You feel no small measure of arousal as you strip down for the sexy marsupial, putting on a tantalizing show that is sure to excite your prospective partner further.";
		if Player is male:
			say "     The moment your [Cock of Player] length[smn] spring[smv] into view, the kangaroo's muzzle spreads in a lecherous smile. 'I need you inside me,' she says in a breathy, lascivious voice, barely restraining herself from pushing you flat and riding your mast[smn]. Instead, the lustful marsupial turns around, giving you a sultry look over her shoulder as she crouches low and lifts her massive tail. This hikes her skirt up and out of the way, leaving her plush pink petals on prominent display. 'Take me,' she all but moans, a hand reaching back to hold the base of her tail steady while she supports her weight with the other.";
			say "     The temptation of sinking into the kangaroo's hot, tight pussy is too great for your lust-addled mind to bear. You hurriedly move closer, laying your fore over her meaty tail and wrapping your arms around her chest. 'Yesss,' she hisses out, pushing her achingly needy cunt back against you, the slavering folds of her pussy drenching your hardening length[smn] in sticky wetness. Your fingers dig into the supple mounds beneath her white blouse, and you can feel her nipples through the fabric, hard with arousal. The kangaroo gives a soft whine as you toy with them, her muscular body tensing beneath your form. 'No more teasing,' she pleads softly, any semblance of her earlier fighting spirit extinguished by the baser need of having a strong male inside her.";
			WaitLineBreak;
			if Cock Count of Player > 1 and anallevel > 1:
				say "     Happy to oblige, you release a long exhale of pleasure as you sink your [cock size desc of Player] cocks into her ass and sordid pussy. Your lover lets out a keening cry at the dual penetration, and she pushes back against your lap, reduced to trembling, hazy moans as you stuff her so completely. Despite the overwhelming pleasure, she proves a very active partner as you begin to rut her yearning body, your balls clapping rhythmically against her belly with each thrust. Her steady gyrations only seem to allow you to sink deeper into each tight hole, and the separate sensations around your sensitive cockflesh make you grunt and shiver as you drive into her need-drenched cunt and gripping tailhole. Soon, you're fucking the once-proud marsupial with reckless abandon, your arms coiled tightly around her fore to hold her steady while you ream her.";
				say "     In time, the pleasure of losing yourself in her supple lining becomes too much for you, and you muffle your cries of ecstasy in the thick fur of her nape. Blast after blast of thick, creamy cum stuff her womb and bowels, your [Cum Load Size of Player] load painting her walls white with your seed. ";
				if Cock Count of Player > 2:
					say "Your untended [if Cock Count of Player > 3]lengths grow turgid and spurt[else]length grows turgid and spurts[end if] messily over her blouse, soaking the fabric of rich streaks of your essence. ";
				say "Your potent release drives her right over the edge, her holes wringing tightly around your hilted lengths as she begs and babbles incoherently for every last drop. The almost painful constriction prolongs and enhances your climax, leaving you thoroughly, utterly drained by the time your shared orgasm draws to its inevitable end.";
				WaitLineBreak;
				say "     Spent and brutally satisfied, you pull out of the panting kangaroo's backside, a portion of your spent seed trickling down her crotch and dripping to the ground beneath her. 'Come back soon,' your erstwhile lover pants weakly, a glazed expression on her muzzle as she stares blankly into the middle distance. Pleased with your performance, you wipe your cum-slick dicks clean on her skirt and give her furry ass a final squeeze of appreciation, then depart, leaving the well-fucked marsupial to languor in the miasma of the afterglow.";
			else:
				say "     Happy to oblige, you release a long exhale of pleasure as you sink [if Cock Count of Player > 1]one of your [cock size desc of Player] cocks[else]your [cock size desc of Player] cock[end if] into her warm, sordid pussy. Your lover lets out a hazy purr of delight and pushes back against your lap, loving the feeling of being stuffed and aching for more. As you begin to rut her yearning body, she proves a very active partner, her steady gyrations only seeming to allow you to sink deeper into her gripping cunt as your balls clap rhythmically against her belly with each thrust. Her encouraging motions spur your arousal, and you're soon bucking roughly into the once-proud marsupial, your arms coiled around her fore to hold her steady while you ream her with energetic zeal.";
				say "     In time, the pleasure of losing yourself in her supple lining becomes too much for you, and your muzzle your cries of ecstasy in the thick fur of her nape. Black after black of thick, creamy cum stuff her cunt and womb, your [Cum Load Size of Player] load painting her walls white with your seed. ";
				if Cock Count of Player > 1:
					say "Your untended [if Cock Count of Player > 2]lengths grow turgid and spurt[else]length grows turgid and spurts[end if] messily over her blouse, soaking the fabric of rich streaks of your essence. ";
				say "Your potent release drives her right over the edge, her pussy wringing tightly around your hilted length as she moans and begs for every last drop. The rippling constriction of her vaginal walls prolongs and enhances your climax, leaving you thoroughly, utterly drained by the time your shared orgasm draws to its inevitable end.";
				WaitLineBreak;
				say "     Spent and brutally satisfied, you pull out of the panting kangaroo's folds, a portion of your spent seed trickling down her crotch and dripping to the ground beneath her. 'Come back soon,' your erstwhile lover pants weakly, a glazed expression on her muzzle as she stares blankly into the middle distance. Pleased with your performance, you wipe your cum-slick dick clean on her skirt and give her furry ass a final squeeze of appreciation, then depart, leaving the well-fucked marsupial to languor in the miasma of the afterglow.";
		else:
			say "     Not seeing what she's looking for, the kangaroo shakes her head in disbelief. 'You have some nerve, breaking the rules of the ring like that.' Unable to think clearly, you fail to register the meaning of her words until her strong arms wrap around you, squeezing you flush to her form while her dark, lust-glazed eyes stare deep into your own. 'I'll just have to floor you to teach you some respect,' she teases, clearly intent on capitalizing on your unwitting breach of etiquette.";
			say "     The kangaroo pushes you roughly, making you stumble and fall down onto your back. Her thick tail sways as the walks around you, poring over your supine body with lecherous intent. Her thick thighs cast a shadow over your head, blotting out all light as she descends on your face with a quiver of anticipation, her plush pink petals dripping with arousal and aching for their overdue worship. 'Lick,' she commands, and you comply meekly, craning your head up to draw a few tentative laps over her earth tone fur before narrowing your focus on her warm, slick mound. The heady taste fills your palate as you play with her slit, toying with her labia and delving deeper to sample more of her sticky nectar. In time, your oral attentions works her juices to a lather, the anthro marsupial moaning from above while you press ever-deeper into her sordid, hungry snatch.";
			WaitLineBreak;
			say "     Not wishing to deprive you of some punitive pleasuring, the kangaroo's tail curls to stroke between your inner thighs. After some searching, it ";
			if Player is female:
				say "sinks into [if Cunt Count of Player > 1]one of your [cunt size desc of Player] cunts[else]your [cunt size desc of Player] cunt[end if] and pushes as much of the silky furred taper into your depths as it can muster. The sudden penetration has you arching and writhing beneath the heft of her fecund form, only to sink into trembling, hapless bliss as you breathe deeply of her intoxicating pheromones. That powerful intruder begins to glide back and forth, slick with your wetness and gently wiggling in your overfull muff. You're brought to a series of powerful orgasms beneath your lover's harsh ministrations, each climax allowing her to push that unyielding mass deeper into your sex. The broad tail boring into your hot, drenched cunt has you moaning with desire as you devour her soft, luxurious flower. Your arms reach around to pull her thighs tight as you sweep your tongue across the walls of her satiny folds, eager to drive your sparring partner over the edge to return the favor.";
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
			if Player is female:
				say ". Even after you depart, your mind keeps drifting back to the pleasant, lingering void in your freshly tail-fucked pussy";
			else if anallevel > 1:
				say ". Even after you depart, your mind keeps drifting back to the pleasant, lingering void in your freshly tail-fucked asshole";
			say ", a small part of you longing to be floored again for another round beneath the powerful female.";
	else:
		say "     With a deft blow to the jaw, then a sweep of her tail, the kangaroo knocks you down onto your back before a large foot is placed on your chest, her muzzle splitting into a grin. 'You're going to be my joey for today.' Trying to get away, a heavy foot slams into your back, pressing you to the ground again. Rolling you over, the kangaroo strips your clothes off to see what she has to work with.";
		WaitLineBreak;
		if Player is male:
			say "     'Oh, what do we have here?' Her hands start to caress your [bodydesc of Player] body, her fingers tracing down until she reaches your flagging, [Cock of Player] shaft[smn]. 'Perfect,' she whispers. Climbing atop your body, her drooling pussy hovers over [if Cock Count of Player > 1]one of your malenesses[else]your maleness[end if]. Slamming down onto you, a grunt rises from your chest from the force as a moan escapes hers. Bouncing quickly with the help of those powerful legs, she rides you with more force than you're used to, grinding her much larger hips hard against your own while her cunt squeezes tightly, drooling lewdly over your lower half.";
			WaitLineBreak;
			say "     Riding you harder with each passing second, you soon end up giving her what she wants. Ropes of your seed pump up into her gripping depths as her powerful hips grind down on you to draw every last spurt from you. She bounces some more, a paw slipping down between the connection to help bring her own orgasm to fruition. The tight velvet of her cunt squeezes around you, milking you of any and all seed that you're able to give her. 'Oh, you've been fun. I will have to find you again, very soon,' she pants down at you, resting on your limp form, before she pushes off of you with a shove. She bounces away, dripping your seed across the ground as she goes, leaving you in a puddle of mixed juices.";
		else:
			say "     'Drat! You need better equipment, dear,' the kangaroo woman chides, disappointed in your lack of a cock to slake her urges. After taking a moment to consider her options, the large marsupial lowers her hips over your face, a hand reaching below to spread the folds of her hot, wet cunt. 'Be a dear,' she says with an authoritative voice. When you don't immediately comply, she begins to grind her pussy against your face, her insistent gyrations forcing you to eat her out while her copious juices drool down your chin.";
			say "     The kangaroo's sounds of pleasure are interspersed with huffs of irritation, which only grow more frequent the longer she rides you. 'You're going to have to do better than that,' she complains, punctuating her words by grinding her hips down roughly. The constricting pressure blots out all light and leaves you unable to do anything but draw shallow breaths from within her slavering pussy. Growing aroused against your will and given no choice but to comply, you sink your tongue into the kangaroo's needy pink cunt, sweeping and dragging over her sensitive inner walls. 'Yes! That's it!' she moans out happily, relinquishing some of the pressure again as you abide her forced demands.";
			WaitLineBreak;
			say "     'Oh there!' Her voice cuts off into a loud moan, and quick thumps of her tail hitting the ground warn of the incoming flood. She screams in pure bliss as orgasm washes over her, a maelstrom of clear, heady nectar splashing across your face. She grinds down roughly and rhythmically as her juices keep flowing, flooding your mouth and drenching your head in her warm, sticky femcum. Keeping up with her release as best as you can, she eventually regains her composure and rises from you shakily. You roll over onto your side and gasp for fresh air while her transformative fluids seep into your body. 'Not what I needed, but it will do,' she huffs, bounding off in search of something more fulfilling.";

To say kangaroo loses:
	if lisaartemiscount2 > 0 and lisaartemiscount2 < 5, increase lisaartemiscount2 by 1;
	if Player is male:
		say "     Whimpering, she rears back onto her tail, using it as a seat while her thick legs open, showing off her moist cunt to you. [bold type]Do you accept her offer[roman type]?";
		if Player consents:
			if Cock Length of Player > 10:
				say "     As you press your [Cock of Player] manhood to her cunt, she winces, jerking away. 'No dear, that won't do.' She then slips onto the ground on her back, patting her belly for you to climb on. Moving over her belly, she takes your cock in between her tits, wrapping the furred mounds of flesh around your [cock size desc of Player] [Cock of Player] pole, letting you thrust between them, her tongue lapping over the tip when it peeks through the top of her cleavage. With groans of pleasure from you, she redoubles her effort, suckling over the tip and lapping up any precum that drools from it. The force of your thrusts make her tits shake in her hands with muffled slapping sounds.";
				WaitLineBreak;
				say "     Whines from the kangaroo girl under you tip you off that she's getting off from being used like this. Popping free your cockhead, her hot breath washes over the tip as she looks up to you, her eyes needful. 'Please...' is all she says, and with all the sensations, a few more hard thrusts are all it takes for your [Cock of Player] dick to swell up. You fire off thick ropes of seed, splattering the surprised kangaroo in the face, then down along her neck, the last few errant strands landing over her tits. The two of you pant from the exertion for a while before you rise from her, admiring the mess you've made of her fur. After wiping your cock on her muscular tail, you walk away from the needy marsupial, leaving her to whine as she gets up and hops away, defeated and horny.";
			else:
				say "     You move between those spread legs, taking her thighs in each hand. Your [Cock of Player] shaft presses into that moist tunnel, a moan rising from both of you, punctuated with a hard thrust by you that makes her gasp. Her breasts jiggle about with each thrust, her body rocking on her tail, and your hands press her legs farther apart, allowing you to drive deeper into her needy pussy. Your balls slap against her rump and tail with every thrust into her wet, squeezing tunnel.";
				WaitLineBreak;
				say "     Grunting deeply, you lean over her upper body, rocking her harder with your thrusts. With a particularly rough thrust, you knock her off her tail, the two of you falling to the ground and grunting. The jolt of the fall sends her into climax, and her tight, spasming cunt around your [Cock of Player] cock sends you over the edge, firing your thick seed into her. Once you have finished, you climb off of her limp, panting body and get your clothes back on, leaving her there as you head off.";
		else:
			say "     Quickly scrabbling to her feet, she bounds off in a hurry, not wanting to be hurt any further.";
	else:
		say "     Quickly scrabbling to her feet, she bounds off in a hurry, not wanting to be hurt any further.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Red Kangaroo"; [name of the overall species of the infection, used for children, ...]
	add "Red Kangaroo" to infections of MarsupialList;
	add "Red Kangaroo" to infections of FurryList;
	add "Red Kangaroo" to infections of NatureList;
	add "Red Kangaroo" to infections of FemaleList;
	add "Red Kangaroo" to infections of TaperedCockList;
	add "Red Kangaroo" to infections of SheathedCockList;
	add "Red Kangaroo" to infections of BipedalList;
	add "Red Kangaroo" to infections of TailList;
	add "Red Kangaroo" to infections of TailweaponList;
	now Name entry is "Red Kangaroo"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]A left hook catches you in the chin, making you stumble[or]Sweeping around, the powerful tail slams into your side, knocking the wind out of your lungs[or]After blocking a punch, she throws an uppercut into your chin, followed by a left and then a right jab to your stomach[or]The kangaroo hops from one foot to the other as she delivers a series of quick punches[at random].[rookickreset]"; [Text used when the monster makes an Attack]
	now defeated entry is "[kangaroo loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[kangaroo wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[redroodesc]"; [ Description of the creature when you encounter it.]
	now face entry is "rounded, medium-sized muzzle with a black nose pad at the very tip";
	now body entry is "a soft rounded shoulder build with a tight stomach, leading down into wide hips, large spring-like thighs and feet";
	now skin entry is "[one of]rusty red furred[or]short furred[or]softly furred[at random]";
	now tail entry is "You have a thick, muscled tail, being able to be used as a third leg. It is covered in [Skin of Player] hide and lightly thumps on the ground with each movement.";
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
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 7; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 3; [ Width of female sex infection will try and give you ]
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "altered"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]marsupial[or]kangaroo[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "redroo"; [ Row used to designate any special combat features, "default" for standard combat. ]
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



Section 3 - Alt-Attack Roo Double-Kick

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"redroo"	retaliation rule	--	--	rookick rule	20	--	--	--	--	--


this is the rookick rule:		[+75% dmg cartoonish double-kick]
	choose row monstercom from table of Critter Combat;
	now alt1chance entry is 0; [cannot do two double-kicks in a row]
	choose row MonsterID from the Table of Random Critters;
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
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";

to say rookickreset:
	choose row monstercom from table of Critter Combat;
	now alt1chance entry is 20;


Section 4 - Definitions

Definition: a person is redroobodied:
	if BodyName of Player is "Red Kangaroo", yes;
	no;


Section 5 - Endings

when play ends:
	if BodyName of Player is "Red Kangaroo":
		if humanity of Player < 10:
			say "Your mind slips away going into a more peaceful mode, wandering the city for fresh vegetation to eat quickly bounding away from startling events. You quickly find a place among other kangaroos, becoming a flyer to the dominant male around.";
		else:
			say "You quickly adapt to life outside, using the newfound legs to become a track star, getting into the high jumps and long jumps to a very successful career. Your lovers find those legs to have some of the best cowgirl riding moments, with your tail being a great impromptu seat.";

to kangaroofy:
	repeat with y running from 1 to number of rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Red Kangaroo":
			now MonsterID is y;
			break;
	infect;
	infect;

Kangaroo ends here.
