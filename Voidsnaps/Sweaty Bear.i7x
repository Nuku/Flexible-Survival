Sweaty Bear by Voidsnaps begins here.

Section 1 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Sweaty Bear"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Sweaty Bear" to infections of FurryList;
	add "Sweaty Bear" to infections of NatureList;
	add "Sweaty Bear" to infections of MaleList;
	add "Sweaty Bear" to infections of KnottedCockList;
	add "Sweaty Bear" to infections of SheathedCockList;
	add "Sweaty Bear" to infections of BipedalList;
	add "Sweaty Bear" to infections of TailList;
	now Name entry is "Sweaty Bear"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The sweaty bear slams into you and pins you to the ground for a moment, with your face between his pecs![or]The sweaty bear grabs you and tosses you to the side![or]The sweaty bear bashes you with his powerful fists![or]The wild creature slams his body into you, grinding his large, stiff canine cock against you as he crushes you in his arms, tossing you to the ground with a coating of pre across your stomach![at random]";
	now defeated entry is "[beattheSweaty Bear]"; [ Text when monster loses. ]
	now victory entry is "[losetoSweaty Bear]"; [ Text when monster wins. ]
	now desc entry is "[Sweaty Beardesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a sweaty bear, with a fluffy face and rounded ears. You look quite masculine despite the softness of your cheek fur, handsome, even! Hazel brown eyes sit past your black eyelids"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "large and powerfully built, with broad shoulders and thick arms and legs. Your arms are thick and muscular, good for grappling. Your feet are large and flat to support your heavy gait, with long claws"; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "soft, damp bear skin beneath fluffy, sweat-matted fur"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your large behind has a small, twitchy nub of a tail that waggles when you get excited."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]red canine[or]mismatched canine[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "it stretches and warps, growing and pulling forward into a short ursine mouth. Your teeth sharpen into points and your lips develop a little bit of give, all the better for baring your teeth. Two fluffy rounded ears sprout from the top of your head, twitching at the slightest noise"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "becomes hulking and weighty, yet cut and muscular. Your broad shoulders and strong muscles peter off in a V-shape toward your waist, where a six pack sits. Your fingers grow claws, and the tips of them sport soft pads. Your feet become wider, with sharp nails and spread paws to support your weight"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin grows slightly damp, as though you're prone to sweating, and grows a thick layer of fluffy fur that soaks up the scents and moisture from it"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes rounded and bouncy, with just enough muscle to maintain its shape, topped with a nub of a tail that sits at the apex"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "takes on a distinctly canine shape, with a bulbous knot at the base and a tapering length. It has a distinct funky smell that pours off of it no matter what you do, like you've been at the gym for hours without a shower"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the Player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 77; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "Sinking Swamps"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a Player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a Player. ]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "Sweaty Bear Fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 42; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Sweaty Bear milk";
	now CumItem entry is "Sweaty Bear cum";
	now TrophyFunction entry is "[GenerateTrophyList_Sweaty Bear]";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]beefy[or]muscular[at random]";
	now type entry is "Sweaty Bear"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

to say GenerateTrophyList_Sweaty Bear:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "Sweaty Bear Fur" to CombatTrophyList;
	if a random chance of (40 + LootBonus) in 100 succeeds:
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 2 - Scenes

to say beattheSweaty Bear:
	say "     Falling to his knees as you strike the final blow, the bear pants, his chest heaving as he holds up one finger as though asking for a breather. After a moment, he looks up at you with a twinkle in his eye, leaning back and taking a seat on the damp ground. 'Thanks for the cooldown workout. You're pretty damn strong.' With one clawed finger, he flicks the knot that keeps his tight shorts in place, tugging them down to show off his sheath and heavy, heat-loosened balls. 'You wanna fuck? Always get a bit hot and bothered after a nice brawl.' It seems the bear's more reasonable than he appears- despite exposing himself, he's waiting for your answer.";
	say "     [bold type]What do you want to do with the bear?[roman type][line break]";
	let  SweatyBear_Choices be a list of text;
	if Player is male:
		add "That sheath looks pretty plump. Stick your dick in it." to  SweatyBear_Choices;
		add "Ask the bear to turn around. You want to play with the muscular ass you saw during the fight." to  SweatyBear_Choices;
	if Player is female:
		add "Bears have long tongues, don't they? Put his to work." to  SweatyBear_Choices;
	add "Ride the bear's dick." to  SweatyBear_Choices;
	let  SweatyBear_Choice be what the player chooses from  SweatyBear_Choices;
	if  SweatyBear_Choice is:
		-- "That sheath looks pretty plump. Stick your dick in it.":
			say "[SweatyBearDocking]";
		-- "Ask the bear to turn around. You want to play with the muscular ass you saw during the fight.":
			say "[SweatyBearAssFuck]";
		-- "Bears have long tongues, don't they? Put his to work.":
			say "[SweatyBearCunnilingus]";
		-- "Ride the bear's dick.":
			say "[SweatyBearRide]";

to say SweatyBearDocking:
	say "     Tossing aside your gear, you hurriedly join the bear on the ground, bringing your excited cock to bear on the bear's steaming-hot sheath. Before the sweaty bear gets hard and ruins your plans, you kiss your tip against that puffy sheath entrance, then dip it inside, bullying that pointed manhood out of the way as you stuff inch after inch inside. There's no doubt that the man's been working out. It's like your dick's bathing in a hot, sticky sauna full of sweat and natural lubricant, and the deeper you go, the tighter it is until you can feel his cock pulsing against the underside of yours, indignantly aroused but unable to slip out. 'Kinky fucker, aren't you?' The bear spreads his legs wide, grabbing your ass and unabashedly squeezing it as your balls rub up against his, coating them in dripping bear musk. 'Better get to work if you don't want my dick pushing yours out.' Pulling your cheeks apart, he teases your cheeks as if demanding more, his tongue lolling out in lusty abandon.";
	say "     You don't need him to tell you twice. Under the dual encouragement of massaging hands on your rump and the sweaty slap of your[if Player is InternalBalls] cock-slit[else] balls[end if] on the bear's, you pump your dick deep into his sheath, focusing on the increasingly slick heat enveloping your cock. It's impossible to hold back, and you barely notice the dull ache of your[if Player is InternalBalls] cock-slit lips[else] balls[end if] as they protest the sticky impacts, staring down at the hot sight of those sheath lips rolling up and down your dick. 'Mmm. C'mere.' Hot breath drags you from your revelry, and before you can react, a drooling tongue stuffs its way past your lips, swirling around yours and filling your senses with the taste of bear spit. Everything about him is so sloppy, but you can't get enough, and you're soon sucking on that tongue as you hump away, held steady by groping hands.";
	WaitLineBreak;
	say "     You can feel your orgasm drawing closer by the second, and your thrusts grow ragged as you groan your need into the bear's greedy mouth. That pulsing dick hardens with each passing second, and with its growth, the hold on your cock grows tighter until it feels as though your balls will be sucked out through your cock tip. You lose yourself in the intensity of the sensation, breaking the kiss to bury your face in sweaty chest fur and jackhammer away as your orgasm washes over you, bathing the deepest depths of that inviting sheath in sticky cum. 'Fuck.' Slipping free of his sheath as your cock recedes, sated, the bear's mismatched canine cock throbs angrily with a thick coat of your cum, immediately taken into one bear paw and stroked to a heavy rhythm. All the while, he circles your asshole with one finger, clamping you against his side in a possessive grip and forcing you to watch as he brings himself to an explosive orgasm.";
	say "     Eventually, his stroking bears fruit and the bear returns your sticky gift, coating your lower half in rope after rope of cum. There's so much of it that you bet you'll be smelling like him for hours, and the way he smears his dribbling cock and messy sheath against your sated manhood cements the fact that he WANTS you to stink like a horny bear. Who's the kinky fucker now? Lying there to catch your breath, you eventually get up, wiping yourself as best you can and gathering your gear. As you start to walk away, you watch the bear wave at you, then squeeze your mixed fluids out of that gooey sheath, bringing sticky fingers up and sucking them clean. The flirty bear winks at you, making a show of it, and you can't help the slightest tingle rolling through your dick. You'd better leave before you want to try for a second round. You've got other things to do!";
	CreatureSexAftermath "Sweaty Bear" receives "Stroking" from "Player";
	LibidoLoss 20;

to say SweatyBearAssFuck:
	say "     Tossing aside your gear and standing in front of the bear in the nude, you twirl your finger, asking him to turn around. You smirk with approval as he follows your lead, his shorts falling around his knees as a glorious sight comes into view. Softly furred cheeks glisten with sweat, surrounding a dusky black hole below that twitching nub of a tail, and the glossy surface of that silky target winks at you, slightly puffy and non-virginal. There's no way that little donut hasn't seen at least a dozen dicks! Looking over his shoulder, the bear wiggles his ass at you. 'Gonna make me wait, or will you stick it in? I'll let you finish inside.' Pulling his cheeks apart with one clawed hand, the bear shows off the plushness of those muscular glutes, making your cock twitch at a slight bounce.";
	say "     You pounce on that offered ass, slotting your cock against the sweat-slickened heat of the bear's well-used pucker. Grinding against it, you grunt with frustration as you can't slip in without sticking just inside, your tip kissing against tight muscle and barely tasting the heat inside. Withdrawing, you spit on that slightly agape hole, then try again, moaning aloud as it lubes the way just enough to send your cock gliding in. There's not much slickness to aid you, but the delicious friction of that clinging hole drives you wild, and you can't bear to pull out again, instead taking your time. 'Not even a courtesy lick? I'll take that as a compliment.' Lolling his tongue out as he rests his head on his arms, the bear looks over his shoulder at you, clamping his inner muscles to impede your progress and growling when your cock jumps in protest. It seems he doesn't mind the rough stuff, and judging by the way he pushes back against you, he can take everything you dish out.";
	WaitLineBreak;
	say "     Taking advantage of the sturdy bear's frame, you grip his hips, pounding forward against the resistance of that gripping ass until you bottom out. Taking a moment to enjoy the wringing muscles massaging your cock from all sides, you let your dick jump in those soft depths, dribbling arousal. Impatience wins over the heated massage, and you withdraw, clenching your teeth as you watch black anal lips cling to your cock until your tip sits at the edge of that steaming hole, kissing its gaped entrance. With that image burning in your brain, you stuff yourself back inside, loosening the bear up with increasingly productive dribbles of precum and thrusts that slam your hips into his ass hard enough to jiggle those soft cheeks. Sloppy noises fill the air as you lose yourself in animalistic rutting, barely noticing the mixed sweat and juices dripping down your thighs from your strenuous activity. Those talented inner muscles milk you for everything you have, and you can feel your orgasm fast approaching.";
	say "     The sweaty bear cums before you do, frantically masturbating his canine cock and arching his back, shoving himself backward to ram you against just the right spots. Tightening up, he goes limp, his legs splaying and his ass in the air while he frantically tugs his knot. You can't quite see his load with all that dank bear ass occupying your view, but the heavy splort of each spurt echoes through the trees, accompanied by your grunts of exertion. You pump every drop out of him, hammering his prostate with wild abandon, and grit your teeth, determined to find your peak. Of course, it's not long before that silky grip wrings your orgasm from the deepest depths of your aching balls. Bottoming out, you shoot deep enough that you're sure not a drop can escape the bear's greedy ass. You're proven wrong shortly, as your sated cock hoses those heavenly innards so thoroughly that the dusky donut gripping your cock glazes itself with your leftover load, pulsing in tune with your cock's underbelly as if escorting your load from the base to the tip.";
	WaitLineBreak;
	say "     You stay there for a bit, only pulling out once your cock's over-fucked sensitivity fades, and you can't help but admire your handiwork. Once soft and firmly clenched shut despite its apparent training, the bear's hole now yawns open, drooling your cum and flexing futilely on a phantom cock. The bear seems unperturbed by that slutty ass's messy state, and he simply flashes you a thumbs up with a dreamy, overfucked look on his face, his legs wobbling as he attempts to get them back under himself. He gives up after a moment, laying spread eagle with his ass on display, and you hear him mumble something as you ogle him. It sounds like he's praising you, but who knows?";
	if WSLevel is 3:
		say "     Staring at the half-napping bear, you get an evil idea. The athletic bear is already thoroughly marked with your cum and sweat, so why don't you complete the picture and make sure EVERYONE knows what the bear's been doing? So soon after orgasm, you can feel the need to piss rising in your lower stomach, and your cock's softened enough that it shouldn't be a problem.";
		say "     [bold type]Do you want to piss on the bear?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Fuck yeah. Hose him down.";
		say "     [link]N[as]n[end link] - Nah, you'll leave him for now.";
		if Player consents:
			say "     Cock in hand, you stand over the bear, leering at his well-fucked ass as you will your stream into existence. Aiming the splashing dribble at that tempting target, you watch the bear's fur grow wetter and wetter as your meek dribble turns into a flood, drenching everything below the bear's waist and leaving a muddy puddle beneath him. You can't help but stroke yourself at the sight of him so thoroughly soaked in your fluids, but you refrain from bringing yourself to complete hardness, gathering your gear and wishing the now extraordinarily messy bear well.";
		else:
			say "     Shaking your head, you decide against the degrading act and gather your things, watching the bear's dozing form and taking in the view.";
	say "     Before you turn to walk away, you see the bear test his hole with two fingers and his hips moving in a telltale rhythm againt the soggy ground. What a kinky bear! He's humping the mud beneath him with wild abandon and rubbing his exposed hole, fingering the escaped cum back into himself. Shaking your head, you walk away before he drags you into something far kinkier.";
	CreatureSexAftermath "Sweaty Bear" receives "AssFuck" from "Player";


to say SweatyBearCunnilingus:
	say "     Tossing aside your gear and proudly bearing your pussy, you tell the bear that he'd better get to work. He inconvenienced you, so it's only fair that he makes it up with his tongue. Of course, you won't admit it, but that particular appendage has caught your eye from the moment he started talking. It's broad, like a dog's tongue, and appears to be quite long. You shiver when you think of how deep it can go into your already drooling cunt. The bear doesn't waste time, kneeling and squeezing your thighs with greedy paws, drawing them apart. Letting that lengthy tongue loll free of that toothy smile, the sweaty bear winks up at you with a chuckle and buries the black pad of that shiny black nose in your cunt with a greedy, snuffling sniff that almost embarrasses you. Savoring your scent with indulgent sniffs and openly stroking himself, the greedy pussy-eater nuzzles up to your clitoris, then drags that talented tongue along the same route, generously slobbering over your lips and teasing your ass before returning.";
	say "     The bear licks like a man possessed, slurping up your juices and testing your inner walls like a feral bear trying to get into a pot of honey, filling the area with his loud slurps. True to fantasy, his tongue reaches deep, and when it presses upward, it finds your g-spot, sending electricity shooting through your body. It's too much to bear, and you lean heavily on his face, grinding your dripping pussy against his mouth hard enough that you can feel his teeth threatening your pussy lips. You're too far gone to care about anything but more of that talented tongue, so you blatantly beg for more, shaking and letting loose guttural moans when he hits that magical spot. Before long, you're riding his face, using his soft ears as handholds. It won't be long before you orgasm, and you don't plan on stopping until you fill his mouth with femcum!";
	WaitLineBreak;
	say "     Your orgasm breaks through just as his tongue slurps over your cervix and batters your g-spot with rapid licks, slurping along your inner walls like a thirsty dog at a water bowl. Unable to stand, you lock his face between your thighs, shoving your cunt forward and riding that tongue for all its worth as sloppy juices coat the bear's chin, hastily gulped or dripped in his haste to keep up with your flood of approval. You're not sure how long you cum, but by the time you come to your senses, the bear's tapping out, gently drumming his fingers on your hip in an attempt to beg for air, his eyes crossed with exertion. Released from your thighs hastily, the bear drags in a grateful breath, leaning back and growling under his breath. His entire face is wet with your cum, and he licks his lips as he dives back in, cleaning up your pussy with a greedy noise deep in his throat. All the while, he frantically tugs his knot, finally pausing to pant into the space between your thighs as rope after rope of cum paints your ankles and the ground between your legs.";
	say "     'Fuckin['] hot.' The bear grunts his approval as you gather up your things, smacking your ass playfully and sitting back on his ass, cock still dribbling between his legs. 'You can sit on my face any time.' You might have to take him up on that, but for now, you have places to be, so you leave the sweaty bear to deal with the mess he made, wiping yourself clean as best you can and shouldering your pack.";
	CreatureSexAftermath "Sweaty Bear" receives "OralPussy" from "Player";

to say SweatyBearRide:
	if Player is female: [Vaginal]
		say "     Taking the bear up on his offer, you toss aside your gear and bare your crotch, swinging your leg up and dropping your ass into his lap. You tell him that he'd better take responsibility for wasting your time as his pointed cocktip parts your pussylips, and you reach down to adjust it, letting out a playful moan as the throbbing underbelly kisses your moistening lips, sawing between them with each pulse of his heartbeat. 'It would be my pleasure.' Reaching down to grab paws full of your ass, the bear humps against your partial connection, smearing your juices over the underside of his shaft and grinding against your buzzing clit. He's strangely a gentleman, not attempting to shove into you and simply mashing his increasingly rock-hard cock against your pussy, but when you start to speak to tell him you want more, he stuffs his tongue in your mouth. At the same time, he lifts your hips and drops you on his cock, taking advantage of your slick pussy to shove himself to the root.";
		say "     With your moan trapped in the bear's mouth, you can only return that sloppy display of tonguesmanship, sucking on that flat appendage. Not to be outdone, you bounce on that dick as though it owes you money, slamming your ass down on the bear's balls with every downward stroke and mashing his pointed tip against your cervix, kissing pre against the spongy space. The more you slam your cunt down his shaft, the bigger his knot grows, and you can't help but groan as it stretches your pussy, popping in and out on every thrust. 'Goddamn.' The bear curses under his breath as he breaks the kiss, leaning his head back as his hips piston up, filling the air with the lewd, repeated sound of his knot penetrating you, then popping free. It soon becomes too big for him to push it in, and he groans with frustration, grabbing your waist and encouraging your bouncing rhythm to a breakneck pace. 'So close. A bit more.' He murmurs to himself as his gaze fixates on the space between your legs where his cock wedges into your gaping cunt.";
		WaitLineBreak;
		say "      Pushing the bear backward, you take twin fists full of his tank top, wriggling your hips to get into position and then slamming your ass down hard enough that it stings. Telling the bear to be patient, you milk his cock for all it's worth, slamming that knot into your pussy lips hard enough that you're sure they'll bruise. After a few moments of this greedy, whorish pace, you feel your cunt open up enough to accept that knot, and you come to a sudden stop, stuffed to the brim with a canine cock that bulges out your stomach. Triumphantly goading the sweaty bear to finish inside you, you pant and whimper, grinding slowly back and forth as if trying to push a chair across the floor without getting up out of it. You can feel the captive male's close, and each clamp of your inner muscles teases at every inch of his shaft, begging for his finish. It would be so easy to cum first, but you hold back, rubbing your clit to a rhythm that keeps you on the edge, in hopes of creaming that juicy cock at the same time as he pumps you full of liquid bear.";
		say "     Just as you feel like you'll lose composure, the bear tenses up, digging his claws into your hips and lolling his tongue out of the side of his mouth in a goofy grin. The telltale twitch of his cock starts slow, then bucks like an unbroken bronco, and he unleashes a flood of cum on your poor unsuspecting womb entrance, swelling out your stomach slightly and testing the integrity of your cervix. Thankfully, his knot hasn't QUITE sealed you up, and before the dam bursts, you feel his backed-up cum shoot out around the tie, raining down on the ground below and soaking your thighs and the bear's balls in musky satisfaction. You finish after the bear does, slicking your fingers with the copious amounts of seed and rubbing your clit to a frantic rhythm. That spasming cock's bucking works just the right spot inside you to shove you over the edge. Before his cock dribbles its last, you join the sweaty bear, adding your meager contribution to the mess and milking his oversensitive cock with your wringing inner muscles, drawing some muted cursing from his open mouth.";
		WaitLineBreak;
		say "     As you come down from your high, you rest on the bear's comfortable chest, waiting out the tie until you can slurp your aching pussy off of his softening cock. You stand on shaking legs as he leans back and ogles your drooling pussy, and when you turn to pick up your bag, bending over in the process, you hear an appreciative wolf whistle leave his lips. Feeling a light flush come to your cheeks at the compliment, you hurry away, leaving the bear to clean himself up or wallow in the mess you made.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Sweaty Bear";
	else if Player is male: [Anal]
		say "     Taking the bear up on his offer, you toss aside your gear and bare your crotch, dropping your ass on his lap after a moment spent maneuvering yourself into place. His cock fits perfectly between your spread cheeks, and you grind it up and down slowly as you ask him whether he's willing to compensate you for any 'pain and suffering' from your little fight. After all, he wasn't exactly gentle. 'Pfft. You kicked my ass, and you know it,' the sweaty bear retorts, though his paws take greedy hold of your lower cheeks, spreading them so his dick can find its target, your twitching pucker. As he speaks, he tests your entrance, his voice colored with a growling vibration. 'I know you're stronger than I am. I'll have to show you a good time- maybe you'll let me win next time we meet.' Wrapping his tongue around two digits, the bear smears them with drool, then drops them to your ass, rubbing it into your hole and threatening to stuff his fingers inside.";
		say "     You moan aloud at the stimulation, leaning into the touch, but those fingers don't slip inside you, replaced with his now slicker canine cock. The motion urges his bucking shaft past your entrance, and in one slow glide, he bottoms out inside you, his balls drawing up to kiss the underside of your ass cheeks. You clamp down, barely able to think with the intensity of the penetration radiating through your body, but you have the sense to steady yourself on broad shoulders. Slow and steady, you raise yourself along that thick dick, pausing at its apex, then slamming your hips down, quickening your movements to jab him into your deepest inner walls hard enough that you swear you'll bruise your prostate. Your cock flops against the bear's abs with every motion, and you're leaking like a faucet, but your reaction is nothing compared to what you've elicited from the horny bear.";
		WaitLineBreak;
		say "     Tongue lolling out of the corner of his mouth and eyes unfocused, the bear matches your fervor, popping the beginnings of his knot through your hole only to drag it back out with a grunt of effort and a lewd plop. With each thrust, it gets harder to get that knot to slip back out of you, and the bear seems to show no signs of stopping until it balks at your entrance, too swollen to get in without a titanic amount of effort. With a greedy growl, he doubles down on the pressure, meeting your bouncing with heaving thrusts that send his heat-drooped balls slapping against your ass hard enough to leave a mark. As eager as the bear, you match him, shoving yourself downward and trying your best to relax your clamping hole, despite the bulging outline of that cock in your poor, overfull stomach. You want that knot, and you'll do anything to get it, so you take double fists full of the bear's tank top and settle into a better position, putting gravity to the test and gripping his dick below the knot to hold it steady. All the while, you can feel yourself on the edge of orgasm, but you grit your teeth in an attempt to hold it back, wanting to finish in time with your sweaty lover.";
		say "      Finally, after a few minutes of frantic riding and a copious drool of pre to lubricate your back passage, that knot schlorps into your hole, locking you in place and bucking like a wild horse in your deepest places, hosing your insides with rope after rope of cum. You're not sure how long the bear cums, or when the moderate discomfort and intense feeling of fullness drains away in favor of pleasure, but you don't care. By the end, your stomach looks positively pregnant, and your dick has long since added its contribution to the mess, every inch of it singing with a seemingly never-ending orgasm. Panting in the afterglow, you rest on the bear's fragrant, damp chest, testing the knot every few moments until you're released. You stand once your legs regain feeling, your gaping hole unleashing a flood of bear-cum to coat the still-dazed bear's crotch, and as you gather your gear, you can feel a faucet of seed drooling down your legs while your stomach slowly returns to normal. You thank the bear, receiving only a thumbs up and a panted, unintelligible goodbye, shouldering your pack and preparing to move on.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Sweaty Bear";
	else: [neuter]
		say "     You tug off your gear, but the bear stops you before you can do anything else, one fuzzy eyebrow raised. 'Sorry to be a spoilsport but, uh. That's not exactly my thing. Maybe next time if you've got something to... play with?' Gesturing to your empty, smooth crotch, he shakes his head as he tugs his pants back up, touching himself through his shorts as he walks away. It seems if you want to have sex with him, you'll have to come back with some sort of genitals.";

to say losetoSweaty Bear:
	say "     Grinning as you fall to your knees, the sweaty bear poses, flexing his bicep. 'Hehe. Still got it,' he crows, tugging his pants down to reveal a fat sheath with a peeking canine cock. 'How about we celebrate? I promise you'll enjoy it.' While he looms over you with his dick out, the bear still seems like he's sane enough to respect consent.";
	say "     [bold type]Do you want to fuck the bear?[roman type][line break]";
	say "     [link]Y[as]y[end link] - Fuck yeah.";
	say "     [link]N[as]n[end link] - Nah, you're not feeling it.";
	if Player consents:
		say "     Nodding eagerly, you tell the bear you'll do whatever he likes. After all, he seems like an agreeable enough fellow. Propping yourself up with a wince, you mention that you might be a bit tired for anything too strenuous. That fight took a lot out of you. 'No worries. You won't have to move much.' Grinning at your acceptance, the bear peels off his wet shirt, revealing a muscular V-shaped body and a splotch of lighter-colored fur across his chest and stomach. 'Sit right there, I'll come to you.' Crossing the distance between you as he kicks his shorts off his ankle, the bear crosses to you, placing your face right at sheath height.";
		say "     Smearing those musky nuts against your face, the bear smirks down at you. 'I worked up a sweat running through this swamp and again in our fight. How about you clean me up?' Salty droplets glisten on leathery nuts, slicking the fur stripe down the middle of them and unleashing a pungent, masculine smell. He's as ripe as a pair of week-old gym shorts, but you can feel your head growing fuzzy the more you breathe in that stink, and you find yourself nodding, nuzzling into those fat nuts. Starting slow, you lap along the lower curve of his left ball, tasting the smooth, silky sack and groaning aloud at the filthy flavor of unwashed male. It's salty, slightly greasy, and sticks to your tongue, but you can't get enough of it, slurping that deliciously seasoned sack skin with increasing fervor until your nose lands right in the tuft of fur, situated just under that sheath. You shudder with ecstasy at the concentration of stink that assaults your nostrils, instantly drooling, and snort it like it's a drug, burying your face in the sweaty bear's sack.";
		WaitLineBreak;
		say "      Now openly touching yourself, you slurp your way to the neglected low-hanging orb on the other side, opening your mouth and welcoming it in until your jaw aches. You suck long and slow as your tongue rolls over its surface, luxuriating in the pulsing heartbeat you feel roiling through those churning balls, and in a moment of greed, you contemplate sucking the other one into your mouth. Unfortunately, you embarrass yourself, releasing both nuts with a soft cough. You apologize to that drool-dripping sack by burying your face again, sucking on the loose skin, and smearing musky sweat all over your face. Grunting with approval, the bear rests his dick on top of your head, pressing your face further upward to sniff the base of it, where it meets with the plump, juicy ring of the sheath. Your tongue worms its way past his erection as both hands lovingly stroke his manhood, and you taste the delights hidden within, whorishly slurping up pure masculinity. Before long, you've cleaned every inch, leaving it tasting of nothing but your spit, and you set your eyes on the last bit of his musky manhood, his rock-hard cock.";
		say "     'Fuck, it's like you're in love with it.' Staring down in wonder as you set your lips against the tip of his dick, the bear holds you in place with your tongue extended, getting you acquainted with his tapered tip and smearing your lips with messy pre. His dick may not be as ripe as his balls or inside of his sheath, but it makes up for it with sheer output, flicking out strings of pre that nearly reach your forehead. Impatient for more, you seal your lips around the tip, lovingly taking hold of the bear's growing knot with both hands and squeezing it. The motion earns you a buck and a squirt of pre, dragging a moan from your throat, and you swallow it greedily, focusing your eyes on the bear's abs as if setting a goal for yourself. You doubt that knot will fit in your mouth, but you'll try!";
		WaitLineBreak;
		say "      Growling deep in his throat, the bear meets your sloppy sucks with increasingly wild bucks, testing your throat's limits and overflowing your mouth with precum, painting your chin and chest with his goopy desire. Before long, he's actively fucking your face, kissing your lips against his knot with every thrust, and you can only grip his ass cheeks, holding on for dear life. Fortunately, it's not long before the bear reaches the limit, and after the first spurt baptizes your greedy throat, swallowed as quickly as it splashes the back of your mouth, he pulls out, catching you across the cheek with another thick rope. Stroking himself and holding you in place with his free hand, he utterly douses your face, aiming for your mouth but missing at least half his shots, resulting in your eyes gluing shut and your cheeks dripping with hot bear semen. With nothing else to do, you relish the experience, swirling the hot drink around your mouth and gulping down what you can before your tongue gets another glazing.";
		say "     You swallow what feels like several glasses of cum, and by the end, you can still taste bear jizz, even when your mouth is long since empty. You dutifully clean that cock when it drizzles its last, and despite your desire to service it more, a second round is interrupted by the bear's voice and the absence of dick in your face. 'Phew. Fuck, you're a goddamn natural,' the bear says, giving you an intriguing view of bouncy but muscular butt cheeks as you clear away the cum from your eyes, licking your fingers clean. He's bent over, picking up his clothes, and after a quick dusting-off, he re-dresses himself, though his cock sticks out of the left side of his shorts, down his leg, still drooling the last dregs. 'Hope I see you again. Can't wait to see what happens if you win our little game.' Winking at you and lolling his tongue out, the bear gives the air an exaggerated lick, then jogs off, leaving you to collect your things and clean yourself up. You can't help but feel turned on by the experience, and your pants feel tighter as you get ready to walk away, along with a tingling sensation in your stomach.";
		CreatureSexAftermath "Player" receives "OralCock" from "Sweaty Bear";
	else:
		say "     You shake your head, doing your best to stand despite how light-headed you feel. You tell the bear you're not interested in fucking him right now, and that you need to leave. Of course, you are far too weak to do anything about it if he forces the issue, but thankfully he just shrugs and leans against a nearby tree, openly masturbating. 'That's fine. There's always next time.' Winking at you, he plays with his low hanging, sweat-dripping balls.";

to say Sweaty Beardesc:
	say "     Dripping with fresh sweat, a cocky looking black bear stands in front of you. A tank top that barely fits his muscular form accentuates well-shaped pecs, and the white cloth is see-through from the liquid it's absorbed. Beneath the outline of six-pack abs bulging through the tank-top, a hefty sheath bulges through tight blue short-shorts made of some sort of swishy material. There's nothing left to the imagination in those pants, and you swear you can almost see the bear's heartbeat in his hefty balls. Noticing you ogling his body, the bear poses and steps closer with a threatening demeanor. 'Come on, baby. I just finished a workout. Why don't you help me unwind?' Taking up a fighting stance, he doesn't seem willing to let you off the hook.";

Section 3 - items

Table of Game Objects (continued)
name	desc	weight	object
"Sweaty Bear Fur"	"A soft, sweaty clump of bear fur."	0	Sweaty Bear Fur

Sweaty Bear Fur is a grab object.
It is temporary.
Usedesc of Sweaty Bear Fur is "[Sweaty BearFurUse]";

to say Sweaty BearFurUse:
	say "Slightly sticky to the touch, the sweaty bear fur rolls between your fingers, clinging to them with a cloying musk. It absorbs into your skin soon enough, leaving behind that enticing stink.";
	infect "Sweaty Bear";

instead of sniffing Sweaty Bear Fur:
	say "The fur has a thick, musky animalistic scent strong enough to slightly burn your nose. Still, it's strangely enticing.";


Table of Game Objects (continued)
name	desc	weight	object
"Sweaty Bear milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Sweaty Bear Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	Sweaty Bear milk

Sweaty Bear milk is a grab object.
Sweaty Bear milk is milky.
Sweaty Bear milk is infectious.
Strain of Sweaty Bear milk is "Sweaty Bear".
Usedesc of Sweaty Bear milk is "[Sweaty Bear milk use]".

to say Sweaty Bear milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like, with a masculine musk underlying. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing Sweaty Bear milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Table of Game Objects (continued)
name	desc	weight	object
"Sweaty Bear cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Sweaty Bear Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	Sweaty Bear cum

Sweaty Bear cum is a grab object.
Sweaty Bear cum is cum.
Sweaty Bear cum is infectious.
Strain of Sweaty Bear cum is "Sweaty Bear".
Usedesc of Sweaty Bear cum is "[Sweaty Bear cum use]".

to say Sweaty Bear cum use:
	say "     Following the strange urge you have, you slam back the bottle of sweaty bear cum you found. It has a strong taste to it, but you find it very exciting despite its salty flavor and the way it clings to the back of your throat. ";
	if Player is male and Cock Length of Player < 12:
		say "You feel a throbbing in your groin as your cock[smn] expand[smv] another inch almost immediately after you finish your drink.";
		increase Cock Length of Player by 1;
	else:
		LineBreak;
	LibidoBoost 5;
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing Sweaty Bear cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, pretty strong and musky.";





Sweaty Bear ends here.