Version 2 of Kangaroo by Guest Writers begins here.
[- Originally Authored By: Batroo -]

"Adds a kangaroo to Flexible Survival's Wandering Monsters table."
[Description text for this Extension.]


Section 1 - Monster Responses

kangaroodefeat is a number that varies.
rkrcheck is a truth state that varies. rkrcheck is usually false.

to say redroodesc:
	setmongender 4; [creature is female]
	follow the monster combat mode rule; [select the combat mode for first-strike]
	say "     A flash of rusty red fur catches your eyes. Turning to look, you're met with something out of some perverted fantasy or nightmare. Standing around six-foot-five-inches tall is a red kangaroo. Her hardened turquoise eyes stare out at you from behind half lens glasses. This [']roo is dressed for taking [']assets['] hostility, wearing a tight blazer with an even tighter white blouse under it, concealing her tits while making them appear bigger than they are. A short skirt reaches from her hips down to mid thigh, giving glances of what's underneath as she moves. A thick tail sways behind her, looking to be used as a third leg. Rusty red fur covers her back and the top of her tail, fading to a creamy beige on her belly, and there are freckles of red along her sides. [one of]'What do we have here?' [or]'Eeeee! A new plaything for me!' [or]'You're going to give me exactly what I need.' [at random]Her stance changes as she prepares for battle, lightly brushing her nose in a boxing gesture.[rookickreset]";

to say kangaroo wins:
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
	say "     Whimpering, she rears back onto her tail, using it as a seat while her thick legs open, showing off her moist cunt to you. [bold type]Do you accept her offer[roman type]?";
	if player consents:
		if player is male and cock length of player > 10:
			say "     As you press your [cock of player] manhood to her cunt, she winces, jerking away. 'No dear, that won't do.' She then slips onto the ground on her back, patting her belly for you to climb on. Moving over her belly, she takes your cock in between her tits, wrapping the furred mounds of flesh around your [cock size desc of player] [cock of player] pole, letting you thrust between them, her tongue lapping over the tip when it peeks through the top of her cleavage. With groans of pleasure from you, she redoubles her effort, suckling over the tip and lapping up any precum that drools from it. The force of your thrusts make her tits shake in her hands with muffled slapping sounds.";
			WaitLineBreak;
			say "     Whines from the kangaroo girl under you tip you off that she's getting off from being used like this. Popping free your cockhead, her hot breath washes over the tip as she looks up to you, her eyes needful. 'Please...' is all she says, and with all the sensations, a few more hard thrusts are all it takes for your [cock of player] dick to swell up. You fire off thick ropes of seed, splattering the surprised kangaroo in the face, then down along her neck, the last few errant strands landing over her tits. The two of you pant from the exertion for a while before you rise from her, admiring the mess you've made of her fun. After wiping your cock on her muscular tail, you walk away from the needy marsupial, leaving her to whine as she gets up and hops away, defeated and horny.";
		else if player is male:
			say "     You move between those spread legs, taking her thighs in each hand. Your [cock of player] shaft presses into that moist tunnel, a moan rising from both of you, punctuated with a hard thrust by you that makes her gasp. Her breasts jiggle about with each thrust, her body rocking on her tail, and your hands press her legs farther apart allowing you to get deeper into her squeezing tunnel. Your balls slap against her rump and tail with every thrust into her wet, squeezing tunnel.";
			WaitLineBreak;
			say "     Grunting deeply, you lean over her upper body, rocking her harder with your thrusts. With a particularly rough thrust, you knock her off her tail, the two of you falling to the ground and grunting. The jolt of the fall sends her into climax, and her tight, spasming cunt around your [cock of player] cock sends you over the edge, firing your thick seed into her. Once you have finished, you climb off of her limp, panting body and get your clothes back on, leaving her there as you head off.";
	else:
		say "     Quickly scrabbling to her feet, she bounds off quickly, not wanting to be hurt any further.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Red Kangaroo"; [Name of your new Monster]
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
	now cock change entry is "it swells adding a more curved, looking like a snake becoming longer and more serpentine";
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
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "redroo"; [ Row used to designate any special combat features, "default" for standard combat. ]


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
