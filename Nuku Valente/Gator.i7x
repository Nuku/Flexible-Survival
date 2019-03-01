Version 2 of Gator by Nuku Valente begins here.
[ Version 2.0 - Grammar/code cleanup. Added victory facesitting scenes and vore scenes - Kurainyx    ]
[ Version 2.1 - Add being able to trigger vore scene from her den - Kurainyx                         ]
[ Version 2.2 - Additional twistcapped scene, multi-genital support, code and writing cleanup - Song ]
[ Version 2.3 - Victory facesitting scene can be viewed in Gator Den. Made Gator into an actual NPC so player no longer automatically goes back to Grey Abbey from Gator Den - Kurainyx]

"Adds a gator to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Monster Responses

gatordefeat is a number that varies.
gatorconsent is a number that varies.

to say GatorWins:
	if vorelevel is 3 and a random chance of 1 in 2 succeeds:
		if gator den is known:
			say "     'What's this? What happened to that strong person who bested me?' the gator asks in disappointment when you give up the fight. 'I'm not interested in a mate that's gone soft on me. If you can't keep up with me anymore, then you're only good enough for two things.' The reptile herm grabs you and flips you upside-down as though you don't weigh anything. With your legs in the air and your face right in front of her crotch, you fear for what she is plotting for you.";
		else:
			say "     [one of]'Weakling,' the gator woman says. There is a glint in her eye as her tail wags about ominously. 'But I just might have a use for you.' Her tail smacks onto the ground threateningly.[or]'A shame that you're not as strong as I expected,' says the gator woman, 'but at least you will make me stronger.'[at random] There is a glint in her eye, paralyzing you despite wanting to escape the dangerous predator. Your legs tremble as you wonder what ideas are passing inside of her mind right now. You try to get on your feet, but her arms are quick enough to grab you and strong enough to keep you in place. 'We can't have you running now,' the reptile herm tells you, and she starts to flip you upside-down as though you don't weigh anything. 'Since you aren't strong enough to be my mate, [one of]you'll have to settle to being fat on my tits and ass[or]you will make me stronger until I find one[at random].' Now with your legs in the air and your face right in front of her crotch, you fear for what she is plotting for you.";
		say "     The strong herm puts a hand on the back of your head and starts pushing it against her hard reptilian cock. You try in vain to pull away, but in this position, there is not much you can hold on to for leverage. Soon, your face is pushing against the wet sensation of her cock, the smell of her manliness filling your lungs as much as her pre stains you. You try to resist, but with time and her strength, you are finally defeated and fed that huge cock. The horny reptilian pushes your head with all of her might against her crotch, and you soon are gagging from her attacks. With you being face-fucked by the herm, you almost don't notice the slick sensation on your feet, and with a glimpse, you blanch at the sight of your legs being slowly drawn into her maw. Knowing that she is going to eat you after she is done using you, you try to pull away, but to no avail.";
		WaitLineBreak;
		say "     Anchored to her body, with your head buried in her crotch and being forced to gulp every single drop of whatever her cock offers, and your feet being enveloped by the warm sensation of her mouth, you can't think of any way to escape this situation. Your mouth is forced wide open by the girth of her giant reptilian cock, but it looks like the beast doesn't care for weak mates and keeps pounding your mouth for her own pleasure. Her moans travel through your feet, finding your spine and going to your brain. Your skin crawls with the sensation and the thought of what will happen after she finishes using you. Her movements become faster, and you seldom have time to breathe as the giant cock is slamming into your esophagus, until the strong gator pushes you with all her might against her crotch, forcing your mouth to its limit.";
		say "     You almost drown with so much cum that is forced inside of your body, those ropes of white liquid filling your stomach. The forceful reptile is more than happy to feed you with everything that she has in her balls while you gag and squirm against her virile form. When she finally lets go of your head and you can pull away from her softening dick, your face is in shambles from the rough use. You cough and take long breaths as you finally get a break from the assault, but there is no rest for the wicked, and you feel her mouth pulling you inside. You are finally going to be her meal now that she had her fun. Her claws hold you in position, gripping at your skin, and she pulls you inside of her maw slowly. Forced down her throat, you try your best to escape the situation, but with how exhausted you are from the face fuck, it is all for naught. Her inner walls relentlessly pull you in, and her strength quickly overcomes your own as she swallows you whole.";
		WaitLineBreak;
		GatorBind;
	else:
		say "     'Weak little thing. Too bad, I thought you had more in you,' she growls as she pushes you to the ground roughly. 'I suppose that I can still have some fun with you...' She crawls up on top of you, peeling off your clothes as she goes. You try to wriggle free, but a soft, albeit painful bite to your shoulder stills you. She wraps her arms around you and hefts your ass up into the air. Her angry-looking manhood juts up from her groin, dripping thin streams of lubricant as she moves you into position.";
		if player is female: [Vaginal]
			say "     She smoothly presses into your exposed cunt. You try to wriggle from her, but she just draws you back fully onto her powerful spear, starting to breed you urgently. 'Gonna fill a little slut up with my squealing gator pups,' she hisses in an ear. 'Little, weak cunts are no good for anything but mothering and being fucked.' She pulls you back firmly against each powerful stroke into your yielding form, balls slapping up against your bottom with every movement. Her breath grows faster and faster as she works at you, her generous breasts rubbing along your back. Her cock goes stiff inside of you as she squeezes you in a tight hug, hands grasping at your chest as she begins to fill you with thick sprays of her eager seed, filling your womb with her cum as she groans in satisfaction. As the waves of warmth begin to fade, she draws free of you and swats you smartly on the rump. 'You come back for a rematch, if you have the guts,' she invites, laughing as she rises to her feet and saunters off, still erect shaft wagging.[impregchance]";
		else if player is twistcapped: [Anal, very accommodating ass]
			say "     You give a last ditch pull from her, but she snarls and wrenches you right back onto her. She smears her precum over your sensitive rim, lathering your pucker in a thin sheen of fluids, only to forgo further foreplay and drive deep into your well-trained passage. [one of]'Mmh, nice and stretchy, too. You must have had quite the adventures out in the city.' [or]'Mmh, an extra-wide parking spot, just for me? You're far too kind, my lewd little slut.' [or]'Now this is a backside I can get behind. It's a shame that it'll be gaping so lewdly by the time I'm done with you.' [or]'My, what a welcoming piece of ass you've got. I can't wait to stuff it with my seed.' [at random]The gator laughs derisively as she pulls you firm to her scale-bound crotch, rigid length pulsing in your fleshy abyss.";
			say "     She starts rocking firmly atop you, her soft, leathery hands holding you still as she takes advantage of you. 'You make for such a nice ride,' she croons as she rocks. 'Maybe next time, I'll just drag you [if gator den is known]back to the nest[else]home[end if] and make you my personal cocksleeve forever.' Trembling at her words, your reflexively clenching anus relaxes further, skillfully massaging her tapering cockmeat. Soon, your own body is pulsing with arousal and pleasure, apexing with every powerful thrust into your malleable ass. Your forms shudder together, and her balls slap against you one last time before she rests atop you, unloading into your bowels, filling you with powerful blasts of her hot, sticky cream.";
			say "     After withdrawing from your cum-sullied hole, the gator stuffs two digits past your rim and licks her lips, pushing all the way to the knuckle in your soft, stretchy ring. Her fingers splay in those creamy confines, gauging your elasticity while they tickle at your nerve-packed lining. 'You should really consider [if gator den is known]staying with me[else]being mine[end if],' she purrs. 'An ass like yours is a national treasure, and I'd love to [if gator den is known]explore your deepest reaches at my leisure[else]steal you away to explore your deepest reaches[end if].' Turning from you, you scarcely notice her meaty tail swinging before its scaly heft connects and knocks you out cold. When you come to, the gator has departed, probably to hunt something, or someone, else.[mimpregchance]";
		else: [Anal, standard capacity]
			say "     You give a last ditch pull from her, but she snarls and wrenches you right back onto her. You howl in pain as she mounts your back door fully. She starts rocking firmly atop you, her soft, leathery hands holding you still as she takes advantage of you. 'Girl has her needs,' she croons as she rocks. 'Maybe next time, we try something else.' The motions become smoother as you relax, and the pain ebbs as the pleasure begins. You wonder if it is the nanites or her lovemaking skills, but soon, your own body is pulsing with arousal and pleasure, apexing with every powerful thrust into your sensitive ass. Your forms shudder together, and her balls slap against you one last time before she rests atop you, unloading into your bowels, filling you with her hot cream. Quite suddenly, she shoves you forward. Your head hits the ground, and when you come to, the gator has departed, probably to hunt something, or someone, else.[mimpregchance]";


to say GatorLoses:
	if gator den is unknown:
		say "     Successfully subduing the great green beast, you stand over her as she pants and heaves. 'You put up a good fight,' she says, smiling with her sharp teeth. 'Kind of turns me on... I could use a nice, strong partner.' She slowly gets to her feet, but makes no immediate motion to resume the battle. Her reptilian dick wags under her at half mast as she stretches out. 'We could have so much fun.' She approaches you slowly and leans in, whispering the location of her den, then slipping her arms around you. You can feel the warm, soft curves of her front pressed against you even as her cock nudges against a thigh. [if player is male]Your own member[smn] stiffen[smv] unconsciously, responding to the obvious signals of readiness this beast is sending. [end if]'We don't have to fight. I can be very accommodating.'";
		say "     You wrap your hands around her in return in a brief exchange. Your hands find that, despite her thick-looking scales, the gator is soft to the touch, and quite round. If you close your eyes, you can imagine her as nothing but a full-bodied woman, with a few extras. Her fertile form gently squirms from you with a snap of her great jaws. 'Visit, soon. I will be waiting,' she promises, slipping away into the darkness with a sway of her thick tail.";
		now gator den is known;
		move Sewer Gator to gator den;
	else if gator den is known:
		say "     With one final blow, you manage to knock the gator onto her back. The scaly herm soon starts laughing heartily as she lays on the ground. Instead of resuming her attack when she gets back on her feet, she gives you a satisfied grin. 'Now that's what I like!' she bellows. 'Good to see that you haven't gone soft on me.' Her grin turns lascivious as one of her hand reaches down to her cunt and starts fingering it. 'Nothing is hotter than a strong mate, and that battle really got my blood pumping. I won't rail you since you're the winner, but I'm still horny as fuck, so how about you give me a quickie with that tongue of yours instead?'";
		say "     [bold type]Do you want to service the gator?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Help the horny female with your tongue.";
		say "     ([link]N[as]n[end link]) - Turn down the reptile's request.";
		if player consents:
			LineBreak;
			if anallevel is 3 and a random chance of 1 in 2 succeeds:
				say "     The gator strides up to you when you agree to her offer and pushes you on your back. A bit dazed from the fall, you are unable to react when you see the reptile's ass right above you. You don't even have a chance to protest when the giant green blobs descend on you, blotting out the light as she smothers your face in scaly flesh. Your hands swiftly reach for the gator's butt to get her off of you, but your feeble pushes don't even budge her. The herm then starts grinding on your face, giving you the chance to get some air every now and then, but every breath you take also gives you a lungful of her intoxicating musk. Soon, your hands stop trying to fight her off and start kneading the firm, muscular posterior that's dominating you. [one of]'Seems like you're really enjoying my butt down there, so let's change things up. Instead of my cunt, you're going to give my ass a good licking,' the gator commands, grinding her butt into your face[or]'Ahh, I had you pegged for an ass muncher, good,' the croc coos and grinds her hole against your nose momentarily. 'Go on. Eat. It. Out,' she bellows lustfully[at random].";
				say "     Obeying the demanding herm, you work your tongue around the edge of her sphincter, licking as though your life depended on it, and with the limited amount of air you're getting underneath the gator, it's a pretty accurate statement. However, after a few moments of the rimjob, the female's legs and buttcheeks squeeze down on your head. '[one of]Stop pussying around down there!' the reptile barks. 'I want your tongue in my ass, not around it!'[or]Get in there,' she groans impatiently, smothering you with her puckered hole[at random]. You dutifully accommodate her command and thrust your tongue into the horny female. You are rewarded with a satisfied groan from the gator, and after a moment, you feel her fingers [if player is male]wrap around your cock[smn][else if player is female]thrust into your cunt[sfn][else]rub your crotch[end if]. Her attention to you is rough, but your lust-addled mind only derives pleasure from her ministrations while you continue to service her. Just as you approach your climax, she barks, 'Come on! Give it to me! I want us cumming together! It will be hella hot!' Spurred on by her words, you sink your tongue into her ass as far as you can, earning you a gasp from the gator.";
				WaitLineBreak;
				say "     With both of you working each other at a feverish pace, it doesn't take much longer for the scaly female to get her wish as you climax together. The gator grunts as her tail reaches under the back of your head, the strong, prehensile limb pulling your face so that it squishes into her encompassing cheeks while her both her cunt and cock spurt all over your chest and legs. At the same time, your loud moans are muffled by the asscheeks sandwiching your head[if player is male], your cum spraying onto your legs and mixing with the reptile's seed[else if player is female], your orgasm spilling onto your legs and mixing with the reptile's seed[end if]. Soon after, you are finally brought out of the darkness as your fuckbuddy stands back up. 'Now [italic type]that's[roman type] how you end a good fight,' she says while she effortlessly pulls you up. 'Can't wait for the next fight, or if you just want to skip to the fucking, come to my place. For now though, I gotta find some grub. All that fighting and fucking has left me famished.' And with that, the horny reptile turns to leave.";
				if vorelevel is 3:
					say "     While you had just serviced the gator's ass, the thought of servicing her stomach somehow also sounds enticing. Despite the obvious danger of being eaten by the predator, you find yourself deciding if you really want to get the hungry reptile's attention before she's gone so that you can offer yourself as her snack.";
					say "[GatorVoreOffer]";
			else:
				say "     The gator strides up to you when you agree to her offer and pushes you on your back. A bit dazed from the fall, you are unable to react when you see the reptile's ass right above you. You don't even have a chance to protest when the giant green blobs descend on you, blotting out the light as she smothers your face in scaly flesh. Your hands swiftly reach for the gator's butt to get her off of you, but your feeble pushes don't even budge her. The herm then starts grinding on your face, giving you the chance to get some air every now and then, but with your nose and mouth being mashed into the her cunt, every breath you take is a lungful of her intoxicating musk. Soon, your hands stop trying to fight her off and start kneading the firm, muscular posterior that's dominating you. 'Much as I like you giving my ass a nice rub, it's not doing much in getting me off. Get your tongue in there,' the gator commands, grinding her cunt into your mouth.";
				say "     Obeying the demanding herm, you thrust your tongue into her pussy, licking as though your life depended on it, and with the limited amount of air you're getting underneath the gator, it's a pretty accurate statement. The taste of her leaking cunt is slightly bitter, but not unpleasant, and you lap up her juices with gusto while your hands try to pull the scaly behind even more into your face. As you continue to explore the horny female's depths, you feel her fingers [if player is male]wrap around your cock[smn][else if player is female]thrust into your cunt[sfn][else]rub your crotch[end if]. Her attention to you is rough, but your lust-addled mind only derives pleasure from her ministrations while you continue to service her. Just as you approach your climax, she barks, 'Come on! Give it to me! I want us cumming together! It will be hella hot!' Spurred on by her words and your aching loins, you sink your tongue into her cunt as far as you can, earning you a gasp from the gator.";
				WaitLineBreak;
				say "     With both of you working each other at a feverish pace, it doesn't take much longer for the scaly female to get her wish as you climax together. The gator grunts as her tail reaches under the back of your head, the strong, prehensile limb pulling your face so that it squishes into her encompassing cheeks, her juices spraying onto your face while her cock spurts her cum all over your chest and legs. At the same time, your loud moans are muffled by the asscheeks sandwiching your head[if player is male], your cum spraying onto your legs and mixing with the reptile's seed[else if player is female], your orgasm spilling onto your legs and mixing with the reptile's seed[end if]. After a few moments of basking in the heady odor of the gator's juices, you are finally brought out of the darkness as your fuckbuddy stands back up. 'Now [italic type]that's[roman type] how you end a good fight,' she says while she effortlessly pulls you up. 'Can't wait for the next fight, or if you just want to skip to the fucking, come to my place. For now though, I gotta find some grub. All that fighting and fucking has left me famished.' And with that, the horny reptile turns to leave.";
				if vorelevel is 3:
					say "     While you had just serviced the gator's cunt, the thought of servicing her stomach somehow also sounds enticing. Despite the obvious danger of being eaten by the predator, you find yourself deciding if you really want to get the hungry reptile's attention before she's gone so that you can offer yourself as her snack.";
					say "[GatorVoreOffer]";
		else:
			LineBreak;
			say "     The gator huffs in disappointment at your refusal, but she quickly shrugs it off. 'Whatever. I'll let you slide, but you better make it up to me by visiting my place. Guess I'll head off and rub one out before I grab some grub. I'm famished after that fight,' the horny reptile says as she leaves.";
			if vorelevel is 3:
				say "     While you had turned down the opportunity to service the gator's cunt, the thought of servicing her stomach instead somehow sounds enticing. Despite the obvious danger of being eaten by the predator, you find yourself deciding if you really want to get the hungry reptile's attention before she's gone so that you can offer yourself as her snack.";
				say "[GatorVoreOffer]";
	else: [Should not trigger]
		say "     The gator lets out an uncomfortable hiss as she is beaten, slinking off into the waters with an unhappy thrash of a tail. You can feel her eyes on you as she looks back to you a moment before she is gone.";

to say GatorVoreOffer:
	say "     [bold type]Do you want to offer yourself to the gator?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Feed yourself to the predator.";
	say "     ([link]N[as]n[end link]) - Don't become gator chow.";
	if player consents:
		LineBreak;
		say "     'What? You want to go for another round or something?' the gator asks when you call her back. You aren't sure if she is talking about fighting, sex, or both when she says 'another round', but that's not why you got her attention. You tell her that you're willing to offer yourself to help with her hunger. The reptile's brow arches upward in equal parts amusement and curiosity. 'Seriously? You actually want me to eat you? If that's what you wanted, why did you even bother fighting back?' She shrugs and strides up to you, her thick hips swaying seductively. 'Whatever floats your boat, I guess, but fair warning; [one of]don't expect me to spit you out without a fight[or]don't expect me to spit you out. I'm famished[or]I won't mind if you make me spit you out, but if you're too weak to resist my stomach, don't be surprised if I let you become gator food[at random]. I'm only interested in hanging out with the strong,' she says in a low rumble, [one of]licking her lips[or]smacking her lips[at random] and eyeing you ravenously.";
		say "     Before you could have any second thoughts, the ravenous reptile places her hands on your shoulders and shoves your head into her maw. Even though you put up a struggle because of her warnings, a part of you is excited, even wanting, to explore the gator's stomach. As the scaly herm roughly stuffs the rest of you into her mouth, her sharp teeth nicks and scratches you more than a few times, but thankfully, you don't receive any deep or serious wounds. As expected, the gator is as strong on the inside as she is on the outside, her throat walls squeezing you tightly, almost crushingly so, while you are pulled deeper into the reptile. She gives your legs a playful lick as they pass through her mouth before she snaps her jaws shut, enjoying the feel of your squirming form going through her. Her powerful muscles quickly move you through her body until you land with a splash in the belly of the beast.";
		say "     The gator lets out a satisfied sigh as you settle down inside of her stomach. 'Nothing beats the feeling of having live prey wriggling inside of you,' she says, patting her stomach and the new occupant inside of it. 'See you soon, and if I don't, well, thanks for the free meal.'";
		WaitLineBreak;
		GatorBind;
	else:
		say "     You shake off the odd thoughts in your head and resume your explorations.";

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Sewer Gator"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She drags you towards the water with a sneer.[or]She manages to get your head under the surface of the water, holding you down a moment.[or]Her excited member grinds against your sensitive regions needfully as her powerful claws grapple at you.[or]Her terrible teeth snap at you, sending pain through your form.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[GatorLoses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[GatorWins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 5]The gator emerges from the muck, surprisingly clean despite the surroundings. Her green scales glint in the light as she saunters towards you, snout curled in a smile as her wide hips sway. [one of]'I was looking for someone to play with,' [or]'Did you come looking for me?' [or]'I love a good wrestle!' [at random]she says, thick tail swaying as she crouches over. Her erect cock dangles between her scaly things, and her breasts heave with her breath as she readies for battle.";
	now face entry is "long reptilian snout, with nostrils perched at the top end and long tearing teeth filling your crocodilian maw";
	now body entry is "full-bodied, with wide hips and a narrow waist. Your form feels full of strength and tough to boot. Peeking behind you reveals that you have two sets of bony ridges running down towards your ass";
	now skin entry is "[one of]green-scaled[or]softly scaled[or]thick-scaled[at random]";
	now tail entry is "You have a broad, reptilian tail. It has two ridges that run along the top, converging at the tip. It is covered in [skin of player] flesh and sways behind you with every step.";
	now cock entry is "[one of]reptilian[or]gator[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "as it draws forward into a long gator snout";
	now body change entry is "you swell with the appearance of muscles and height. Large scaly patterns appear over most of your body as ridges grow along your spine";
	now skin change entry is "your flesh becomes tougher and thicker, yet somehow still supple and soft";
	now ass change entry is "your center of balance tips dangerously as a huge, thick tail emerges from you, with two bony ridges along the top, giving you an alligator's tail";
	now cock change entry is "your aching member grows slicker and somewhat pink, changing into an alligator's moist apparatus";
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 18;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45;
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12; [Amount of Damage monster Does when attacking.]
	now area entry is "Mall"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 5; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is "lucky horseshoe";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]muscled[or]muscular[at random]";
	now type entry is "[one of]reptilian[or]gator[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

when play ends:
	if bodyname of player is "Sewer Gator":
		if voreloss is true:
			if gator den is known:
				say "     Having spent too long in the predator's stomach, you become too tired to do anything. The gator snorts in amusement when she feels your struggles come to an end. 'Oops, looks like I forgot about you being in there,' she says mockingly while she pats her stomach. 'Sucks that I'm down a lover now, but I guess that if you couldn't survive my stomach, you weren't going to be much of a mate down the line.' With you becoming no more than a layer of pudge for the predator, the scaly herm goes off to search for her next victim to fuck and likely also devour. Rubbing her stomach, which was less full than it was hours ago, she says, 'Don't worry, I'm sure that you'll make my future lovers happy, with where you settled.' She eyes her breasts, a good cup bigger than they were before.";
			else:
				say "     Bested by the predator's overwhelming strength, you are too tired to struggle anymore, let alone escape the twisted confines. Your body goes limp as your consciousness fades. The gator chuckles when she feels your struggles come to an end. Patting her stomach, she taunts, 'You might not have been good enough to be my fuckbuddy, but at least you were good for a snack.' With you becoming no more than a layer of pudge for the reptile, the scaly herm goes off to search for her next victim to fuck and likely also devour. Rubbing her stomach, which was less full than it was hours ago, she says, 'Don't worry, I'm sure that you'll make my future lovers happy, with where you settled.' She eyes her breasts, a good cup bigger than they were before.";
		else if humanity of player < 10:
			if gatorconsent is 1:
				say "     You settle down with that gator, your mind ensnared by her enchanting voice. She welcomes you with open arms and conditions you with love and affection, soon making you a perfectly obedient little pet for her.";
				if player is male:
					say "     She sates her female urges on your cock, riding it whenever she gets in the proper mood. Her frequent dalliances result in children, but they are feral at birth, and usually flee off to parts unknown. It does not seem to bother her greatly.";
				if player is female:
					say "     When her hunting goes poorly, you prove to be a very skilled outlet for her frustration. She rides you in every position over the rest of your life, filling your belly with child after child, squealing snapping beasts that stay only long enough to get a rough meal from your chest before fleeing into the wilds.";
			else:
				say "     Your fragile mind snaps, and you growl, seeking a nice dark place to hide. You prey on mutants and humans foolish enough to come too close, grabbing them in your great jaws and hauling them to your den to violate[if vorelevel > 1]. If your hunger is too great, they never leave. Fortunately, this is only about one in five, and the others are left[else] and leave[end if] dizzy with pleasure, but unharmed. Humans are mutated, but most leave, except for one. Even snapping at the odd person doesn't get them to budge. Eventually, you give up and gain a partner.";
		else:
			if gatorconsent is 1:
				say "     As the military mobilizes into the city, you hurry back to your sweet gator's arms. You embrace as equals, and you begin telling her your plan. She looks doubtful at first, but eventually you talk her out of her sewer home. You are both rescued and whisked away back to civilization. She quickly appreciates to having so many warm bodies around, and she settles in to get a formal education, with you at her side for encouragement, support, and great sex. She becomes a therapist. Her hypnotic voice and her eagerness to meet new people drives her success, and she never leaves your side either. It is a good life, spent together, successful.";
			else:
				say "     Life as a gator is somewhat interesting. Most expect you to be rough and cold blooded, and everyone is surprised when they touch you to find soft, almost silky skin that's warm to the touch. You secure a deal with a cosmetics firm, becoming a spokesperson for their [']beat the gator['] campaign that proves wildly successful.";

to gatorfy:
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Sewer Gator":
			now monster is y;
			break;
	infect;
	infect;

Section 3 - Gator Den

Table of GameCharacterIDs (continued)
object	name
Sewer Gator	"Sewer Gator"

Sewer Gator is a woman.
The description of Sewer Gator is "[GatorDesc]".
The conversation of Sewer Gator is { "Gator stuff" }.
The scent of the Sewer Gator is "The gator smells strongly of sex and the sewers.";

to say GatorDesc:
	say "     The gator is a formidable sight, covered in green scales and plenty of muscle to back them up. She has no problem showing off her thick cock to you, as well as giving you glimpses of her cunt while she seductively shakes her wide hips. As you continue to look her over, she flashes you a smirk as she eyes you with a hungry gaze.";

instead of conversing the Gator:
	say "[gator den repeat]";

instead of fucking the Gator:
	say "[gator den repeat]";

to say gator den entrance:
	say "     As you enter the den, you give a quick look around. It's dry and clean, with a large bed propped in a corner. It looks like someone grabbed a bed and dragged it down here, but it is also clean and soft-looking. Laying across it is the gator. She's smiling at you, laying on her belly, breasts gently compressed beneath her. She gazes at you with her head on her hands. Her tail sways slowly behind her wide, round hips. [one of]'I am so glad that you took some time to visit, lover. We have so much to talk about, to do..[or]'I feel as horny as anything. You are just in time to keep me company[or]'You have no idea how happy you just made me, visiting me. It gets so lonely down here[at random].'";
	say "[gator den scene]";

to say gator den repeat:
	say "     'Mmm, that was so hot,' the gator says, quickly regaining her stamina after your romp with her. 'Want to go for another round?'";
	say "[gator den scene]";

to say gator den scene:
	say "     Do you want to stay with the gator?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Spend time with the gator";
	now sortorder entry is 1;
	now description entry is "Have sex or just talk with the gator, depending on her mood";
	[]
	if vorelevel > 2:
		choose a blank row in table of fucking options;
		now title entry is "Feed the gator";
		now sortorder entry is 2;
		now description entry is "Offer yourself as a meal for the predator";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Service the gator";
	now sortorder entry is 3;
	now description entry is "Give some oral attention to the gator's rear";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Spend time with the gator":
					say "[GatorDenSex]";
				if nam is "Feed the gator":
					say "[GatorDenVore]";
				if nam is "Service the gator":
					say "[GatorDenFaceSit]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide that you don't really want to spend time with her, and you head back to the Library.";
			move player to Grey Abbey Library;
			follow the turnpass rule;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say GatorDenSex:
	now gatorconsent is 1;
	if bodyname of player is "Sewer Gator":
		say "     'You are still looking mighty fine. Come over here and let me give you a kiss,' she beckons. As you slip onto the bed to join her, she wraps her arms around you, pressing her soft, warm scales to your [skin of player] front, grinding gently as she presses her snout to you and gives a slow kiss. She's quiet for long moments as her hands wander across your back eagerly. Your body grows warm, responding to her desire for a mate, changing to be more like her ideal catch.";
	else:
		say "     'You are still missing a little something,' she chastises gently, patting the bed for you. When you slip up beside her, she slips in against you, one hand reaching between your legs and rubbing slowly as she begins to nuzzle across your neck and cheek, nipping carefully with those large teeth. As she cuddles in closer, your body grows warm, nanites rushing to modify you towards her ideal lover.";
	WaitLineBreak;
	gatorfy;
	WaitLineBreak;
	say "     Seemingly satisfied, at least for the moment, she rolls up on top of you with a smile, 'Now what to do...'";
	if a random chance of 1 in 3 succeeds: [She just talks]
		say "     'I want to talk, get to know you,' she says, leaning in and snuggling against your front. She chats with you quietly as she gropes and fondles you, drawing out your name and your old job, and telling you about her old life as a bus driver. She confides that she loves her new body. 'I just want someone to share it with,' she says, nuzzling you with her great snout as she speaks. 'We can be together, have little alligatorettes. It would be nice...' she assures in a sultry whisper. Her words seem to wriggle insidiously in your mind, feeling like a better idea by the moment. Though she does not change your body any further in the long chat, your mind feels a bit bent.";
		[Though she does not change your body any further in the long chat, your mind feels a bit bent, and you look forward to your next visit all the more for it.]
		decrease humanity of player by a random number from 5 to 20;
	else: [Sex]
		if a random chance of 1 in 2 succeeds and player is male: [She wants to be fucked]
			say "     She rolls over and raises her thick tail over her back, exposing the pinkened lips nestled between her large thighs. 'Come show me just how much a stud you are,' she invites. Your [cock size desc of player], [cock of player] cock[smn] rise[smv] to attention quickly, and you scramble up to accept the offer, perhaps faster than you normally would. Something about her round rump just seems to call to you, and you heed the call, slamming home into her.";
			if cock length of player < 4:
				say "     She gets an odd expression when you sink into her, then looks over her shoulder. 'Mi amor, you need help,' she croons, curling her tail around you and squeezing. The warmth returns to you, filling you with hot tingles that slowly sink into your groin as things begin to change down there, swelling up inside of the gator as she gasps and coos. The pleasure of changing while sheathed in the fertile female burns at your mind, eroding your human sensibilities.";
				follow the sex change rule;
				follow the sex change rule;
				decrease humanity of player by 5;
			if cock length of player > 10: [Too large]
				say "     She squeals loudly as you try to cram [if cocks of player > 1]one of [end if]your oversized manhood[smn] into her, but it's too much. She scampers away from you in a wriggle, but before you can be disappointed, you feel her soft hands on you, stroking firmly at you. 'Poor little dear,' she says with a smile. 'I will help us both,' she promises, engulfing you in the warm heat of her mouth, lapping at you with a large tongue and stroking at you with her skilled fingers. Your body tingles with pleasure, and change, as your genitals throb with the telltale hint of transformation as she works you towards a peak rapidly. The changing throbbing reaches its climax just as you do, spilling your seed into her waiting maw[if cocks of player > 1] while your other length[smn] spray[smv] across her scaly back[end if].";
				if cock width of player > 20:
					say "     The force and volume of your seed is so great that it overflows her long snout and runs down her front in great rivers, painting her heaving breasts in your pearly virility. She groans as her belly distends, gulping down as much as she can even as it gets everywhere else, leaving her quite a mess.";
				follow the sex change rule;
				decrease humanity of player by 5;
			else: [Just right]
				say "     You pull back, tool glistening with the generous lubricants of the reptile woman. She pushes back against you, sinking you back into herself as she gives a soft, hissing growl. You begin to dance with her, rocking smoothly against one another. She mates like a wild animal at first, as if desperate to prove what is going on to the world itself, slamming her deliciously soft cheeks into your thighs. Her own cock wags with each movement, dripping onto the bed with her excitement as you moan softly together.";
				say "     You reach for one of her legs and lift it up, thrusting up into her and making her frame jiggle with every slam into her, feeling yourself sink all the deeper from the new angle. She groans and praises you, tail rubbing against your chest as she flexes powerfully around your [cock of player] shaft. All too suddenly, your [short ball size] orbs contract, and you can feel your vital fluid rushing up into the scaled female. She hisses as her passage clamps like a vice around you, drawing out the seed towards her hungry womb.";
		else if a random chance of 1 in 2 succeeds: [She fucks]
			if player is female:
				say "     She presses firmly to your front, rubbing chests together in slow circles as her firmness grows against you, poking into your belly lightly. 'Gonna make you squeal,' she says with a smile, reaching for your hips and pulling up. She shimmies to light herself up to enter your moist cavern without delay";
				if cunt length of player < 8:
					say ". Her cock stretches your relatively small cunt as it spears up into your cavern. By the second motion, you find yourself gushing wet, making her motions all the easier as she works at you, loosening your sex with her eager thumps";
					increase cunt length of player by 2;
					increase cunt width of player by 2;
				else if cunt length of player > 12:
					say ". She sinks easily into your gaping hole, thrusting with loud lewd slurps as she grinds and groans with the pleasure of your hot tunnel around her eager shaft, not minding your large nature at all";
				say ".";
				say "     She wraps her arms around you in a fond embrace, rubbing her scaly cheek against your own as she coos soft, delightful things to you. Her words echo in erotic tingles through your body even as she starts to piston against you, filling you with her urgent and virile pole. Her thick tail thrashes about with every movement even as your own hips start to rise to meet her, crashing together in a dance of love and lust.";
				say "     Your belly grows warm as she ruts harder, her soft words seeming to make your womb tingle fiercely with a strange, but deliriously wonderful sensation. You are not even sure when she spilled over the top, but you are being filled with thick seed and give out a deep, slutty moan as she clings to you, keeping her shaft plugged tight as the thick gator seed flows.[impregchance]";
				say "     Satisfied, she draws from you with a wet pop. 'Perfect, my lovely mate. You should stay... but you don't have to. Think about it and come back.' She blows a kiss at you and leans back on her bed, looking content for the moment as your cunt tingles with lingering pleasure.";
			else:
				say "     'I want to be on top,' she says as she rubs over your belly and chest slowly, 'but you are missing the part that I want to fuck most. How about I let you choose?' She leans in close, rubbing her nose to yours. 'Want me to take that pretty ass of yours?'";
				say "     [bold type]Do you let the gator fuck your ass?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Let the herm rail your ass.";
				say "     ([link]N[as]n[end link]) - Have the gator use another hole.";
				if player consents:
					LineBreak;
					say "     With your approval, she grins and flips you right over. She runs her soft, scaly palms over your rump as she rumbles appreciatively. 'Don't you worry one bit. Mother will be gentle.' She licks a finger, running it across the wet surface of her tongue before pressing the dangerously sharp tip of her claw to your puckered back door. She gently nudges your ring apart, wriggling the finger into your [if player is twistcapped]elastic[else]tight[end if] flesh as she leans in over you. 'Open up for mother, relax...' Her voice soothes you, and you find yourself relaxing at her command, allowing her digit to [if player is twistcapped]smoothly[else]slowly[end if] push past, embedding fully in you. You can feel it moving inside of you as she ensures your readiness.";
					say "     She draws the finger back, then clambers up behind you fully, her hot member rubbing against your ass cheeks as she leans over you. She hugs you from behind, snuggling against your back, her breasts rubbing slowly against you as she nudges herself into position, then begins to slowly rock her ready tool into your loosened doughnut. She slips in [if player is twistcapped]painlessly, your well-trained ass more than capable of spreading around her length. The bestial[else]almost painlessly, and what little discomfort is soon forgotten as her[end if] rod begins to stroke into you, teasing sensitive portions of you as she pulls you back into her eager motions. She licks at your ears from behind as she couples, growling soft appreciations. Her balls slap up against you with each increasingly fast thrust.";
					say "     With a loud groan, you feel her body stiffen over your own, and her shaft swells and explodes powerfully into you. [if player is neuter]She[else]Pleasure explodes abruptly, causing you to seize in a climax of your own, echoing her in tremble and timber as she[end if] holds you preciously close, clutching almost desperately as the feelings pass. When composure returns, she pulls free of you and swats you smartly on the bottom. 'Good work. You made momma really happy. Come back anytime - momma always has time for you,' she insists, sending you on your way.[mimpregchance]";
				else:
					LineBreak;
					say "     'Well then, we still have one other option.' She flashes her teeth, then scooches up along your body until her groin is at your face, already firm cock bumping against you and the scent of her balls close. 'Put your mouth to work for me,' she bids, thick tail swaying back and forth eagerly. Before you can muster up much argument one way or the other, her slick member nudges past your lips, and she draws you forward by the back of the head, gently petting at you as she gives reptilian purrs. Her cock is salty at first, but becomes clean as you suck at it. Your reservations seem to fade like vapor as she whispers encouragement, rocking and fucking your face.";
					say "     Your tongue explores the alien textures of her smooth member, teasing it, to her vocal approval. She rubs along the back of your head as she presses forward, shaft twitching as you feel the seed splatter hotly across tongue and mouth. It tastes a little bitter and salty, but you loyally swallow the offering, soft tingles rewarding you in addition to her gentle words of encouragement. She pulls away and slips down to sit beside you. 'Good. I needed that. Maybe next time, you get a turn.' She winks, then reclines, looking ready to relax.";
		else: [She makes the player pleasure her orally]
			say "     'Well then, I know just what to do.' She flashes her teeth, then scooches up along your body until her groin is at your face, already firm cock bumping against you and the scent of her balls close. 'Put your mouth to work for me,' she bids, thick tail swaying back and forth eagerly. Before you can muster up much argument one way or the other, her slick member nudges past your lips, and she draws you forward by the back of the head, gently petting at you as she gives reptilian purrs. Her cock is salty at first, but becomes clean as you suck at it. Your reservations seem to fade like vapor as she whispers encouragement, rocking and fucking your face.";
			say "     Your tongue explores the alien textures of her smooth member, teasing it, to her vocal approval. She rubs along the back of your head as she presses forward, shaft twitching as you feel the seed splatter hotly across tongue and mouth. It tastes a little bitter and salty, but you loyally swallow the offering, soft tingles rewarding you in addition to her gentle words of encouragement. She pulls away and slips down to sit beside you. 'Good. I needed that. Maybe next time, you get a turn.' She winks, then reclines, looking ready to relax.";
	WaitLineBreak;
	decrease humanity of player by 5;
	if humanity of player < 10:
		end the story saying "You decide against leaving after all.";
	[else:
		say "     You head home afterwards.";]

to say GatorDenVore:
	say "     'What?' is all the gator asks when you tell her that you're willing to offer yourself to help with her hunger. The reptile's brow arches upward in equal parts amusement and curiosity. 'Seriously? You actually want me to eat you?' She shrugs and strides up to you, her thick hips swaying seductively. 'Whatever floats your boat, I guess, but fair warning; [one of]don't expect me to spit you out without a fight[or]don't expect me to spit you out. I'm famished[or]I won't mind if you make me spit you out, but if you're too weak to resist my stomach, don't be surprised if I let you become gator food[at random]. I'm only interested in hanging out with the strong,' she says in a low rumble, [one of]licking her lips[or]smacking her lips[at random] and eyeing you ravenously.";
	say "     Before you could have any second thoughts, the ravenous reptile places her hands on your shoulders and shoves your head into her maw. Even though you put up a struggle because of her warnings, a part of you is excited, even wanting, to explore the gator's stomach. As the scaly herm roughly stuffs the rest of you into her mouth, her sharp teeth nicks and scratches you more than a few times, but thankfully, you don't receive any deep or serious wounds. As expected, the gator is as strong on the inside as she is on the outside, her throat walls squeezing you tightly, almost crushingly so, while you are pulled deeper into the reptile. She gives your legs a playful lick as they pass through her mouth before she snaps her jaws shut, enjoying the feel of your squirming form going through her. Her powerful muscles quickly move you through her body until you land with a splash in the belly of the beast.";
	say "     The gator lets out a satisfied sigh as you settle down inside of her stomach. 'Nothing beats the feeling of having live prey wriggling inside of you,' she says, patting her stomach and the new occupant inside of it. 'See you soon, and if I don't, well, thanks for the free meal.'";
	WaitLineBreak;
	GatorBind;

to say GatorDenFaceSit:
	if anallevel is 3 and a random chance of 1 in 2 succeeds:
		say "     The gator strides up to you when you agree to her offer and pushes you on your back. A bit dazed from the fall, you are unable to react when you see the reptile's ass right above you. You don't even have a chance to protest when the giant green blobs descend on you, blotting out the light as she smothers your face in scaly flesh. Your hands swiftly reach for the gator's butt to get her off of you, but your feeble pushes don't even budge her. The herm then starts grinding on your face, giving you the chance to get some air every now and then, but every breath you take also gives you a lungful of her intoxicating musk. Soon, your hands stop trying to fight her off and start kneading the firm, muscular posterior that's dominating you. [one of]'Seems like you're really enjoying my butt down there, so let's change things up. Instead of my cunt, you're going to give my ass a good licking,' the gator commands, grinding her butt into your face[or]'Ahh, I had you pegged for an ass muncher, good,' the croc coos and grinds her hole against your nose momentarily. 'Go on. Eat. It. Out,' she bellows lustfully[at random].";
		say "     Obeying the demanding herm, you work your tongue around the edge of her sphincter, licking as though your life depended on it, and with the limited amount of air you're getting underneath the gator, it's a pretty accurate statement. However, after a few moments of the rimjob, the female's legs and buttcheeks squeeze down on your head. '[one of]Stop pussying around down there!' the reptile barks. 'I want your tongue in my ass, not around it!'[or]Get in there,' she groans impatiently, smothering you with her puckered hole[at random]. You dutifully accommodate her command and thrust your tongue into the horny female. You are rewarded with a satisfied groan from the gator, and after a moment, you feel her fingers [if player is male]wrap around your cock[smn][else if player is female]thrust into your cunt[sfn][else]rub your crotch[end if]. Her attention to you is rough, but your lust-addled mind only derives pleasure from her ministrations while you continue to service her. Just as you approach your climax, she barks, 'Come on! Give it to me! I want us cumming together! It will be hella hot!' Spurred on by her words, you sink your tongue into her ass as far as you can, earning you a gasp from the gator.";
		WaitLineBreak;
		say "     With both of you working each other at a feverish pace, it doesn't take much longer for the scaly female to get her wish as you climax together. The gator grunts as her tail reaches under the back of your head, the strong, prehensile limb pulling your face so that it squishes into her encompassing cheeks while her both her cunt and cock spurt all over your chest and legs. At the same time, your loud moans are muffled by the asscheeks sandwiching your head[if player is male], your cum spraying onto your legs and mixing with the reptile's seed[else if player is female], your orgasm spilling onto your legs and mixing with the reptile's seed[end if]. Soon after, you are finally brought out of the darkness as your fuckbuddy stands back up. 'Now [italic type]that's[roman type] what I like in a mate,' she says while she effortlessly pulls you up.";
		if vorelevel is 3:
			say "     While you had just serviced the gator's ass, the thought of servicing her stomach somehow also sounds enticing. Despite the obvious danger of being eaten by the predator, you find yourself deciding if you really want to get the hungry reptile's attention before she's gone so that you can offer yourself as her snack.";
			say "[GatorVoreOffer]";
	else:
		say "     The gator strides up to you when you agree to her offer and pushes you on your back. A bit dazed from the fall, you are unable to react when you see the reptile's ass right above you. You don't even have a chance to protest when the giant green blobs descend on you, blotting out the light as she smothers your face in scaly flesh. Your hands swiftly reach for the gator's butt to get her off of you, but your feeble pushes don't even budge her. The herm then starts grinding on your face, giving you the chance to get some air every now and then, but with your nose and mouth being mashed into the her cunt, every breath you take is a lungful of her intoxicating musk. Soon, your hands stop trying to fight her off and start kneading the firm, muscular posterior that's dominating you. 'Much as I like you giving my ass a nice rub, it's not doing much in getting me off. Get your tongue in there,' the gator commands, grinding her cunt into your mouth.";
		say "     Obeying the demanding herm, you thrust your tongue into her pussy, licking as though your life depended on it, and with the limited amount of air you're getting underneath the gator, it's a pretty accurate statement. The taste of her leaking cunt is slightly bitter, but not unpleasant, and you lap up her juices with gusto while your hands try to pull the scaly behind even more into your face. As you continue to explore the horny female's depths, you feel her fingers [if player is male]wrap around your cock[smn][else if player is female]thrust into your cunt[sfn][else]rub your crotch[end if]. Her attention to you is rough, but your lust-addled mind only derives pleasure from her ministrations while you continue to service her. Just as you approach your climax, she barks, 'Come on! Give it to me! I want us cumming together! It will be hella hot!' Spurred on by her words and your aching loins, you sink your tongue into her cunt as far as you can, earning you a gasp from the gator.";
		WaitLineBreak;
		say "     With both of you working each other at a feverish pace, it doesn't take much longer for the scaly female to get her wish as you climax together. The gator grunts as her tail reaches under the back of your head, the strong, prehensile limb pulling your face so that it squishes into her encompassing cheeks, her juices spraying onto your face while her cock spurts her cum all over your chest and legs. At the same time, your loud moans are muffled by the asscheeks sandwiching your head[if player is male], your cum spraying onto your legs and mixing with the reptile's seed[else if player is female], your orgasm spilling onto your legs and mixing with the reptile's seed[end if]. After a few moments of basking in the heady odor of the gator's juices, you are finally brought out of the darkness as your fuckbuddy stands back up. 'Now [italic type]that's[roman type] what I like in a mate,' she says while she effortlessly pulls you up.";
		if vorelevel is 3:
			say "     While you had just serviced the gator's cunt, the thought of servicing her stomach somehow also sounds enticing. Despite the obvious danger of being eaten by the predator, you find yourself deciding if you really want to get the hungry reptile's attention before she's gone so that you can offer yourself as her snack.";
			say "[GatorVoreOffer]";

Table of GameRoomIDs (continued)
Object	Name
Gator Den	"Gator Den"

Gator Den is a room. "[gator den entrance]". It is unknown. It is fasttravel. It is private.

[Turned off automatically going back to Grey Abbey after any den scene]
[After navigating gator den:
	if humanity of player > 9:
		move player to Grey Abbey Library;
		follow the turnpass rule;]

[ Edit this to have the correct name as well]

Section 4 - Bound State

to GatorBind:
	now lustatt is libido of player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     Your mind blanks out as your arousal comes to a head, and you can't help but [if player is male]grasp your hardened member[smn] and jerk yourself off[else if player is female]play with your clit[sfn][else]thrust your fingers in and out of your ass[end if] until you reach your climax. Your orgasm relieves a bit of the pressure in your mind, and you can think straight again.";
			LineBreak;
			now struggleatt is 0;
			if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
			now lustatt is libido of player;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		say "     Resting inside of the gator's stomach, you try to assess your situation. [one of]It's hard to think with all of the liquid and smells affecting your mind[or]The belly sways around as the herm chases after more prey in the sewers[or]Your space jostles around while the gator takes a swim[or]The place rumbles and shakes with you inside, the walls pushing against you[or]Your mind distorts and reminds you of what will happen if you don't get out of here[or]Your body tingles from all the stomach juices splashing onto you[or]The air is heavy and acrid with the smell of stomach juices everywhere[at random]. Your only options are to [bold type]S[roman type]truggle [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if].[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of player]	Thirst: [thirst of player]	Struggle: [GatorStruggle]";
		if humanity of player < 1:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if name entry is "Sewer Gator":
					now monster is y;
					break;
			now voreloss is true;
			now bodyname of player is "Sewer Gator";
			now facename of player is "Sewer Gator";
			now tailname of player is "Sewer Gator";
			now skinname of player is "Sewer Gator";
			now cockname of player is "Sewer Gator";
			now tail of player is tail entry;
			now face of player is face entry;
			now skin of player is skin entry;
			now body of player is body entry;
			now cock of player is cock entry;
			now Trixieexit is 1;
			end the story saying "You got eaten by a gator";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 4:
					say "     [one of]Doing your best to fight your destiny, you push against the surrounding walls. You are not going to be eaten so easily[or]The gator grunts while you cause a fuss inside of her stomach[or]'Keep that up, and I might actually keep you around,' the reptile teases when she feels you lash out[or]You push and prod around, doing your best to find a way out[or]You flail around to the best of your ability in the tight confines[or]Kicking out your legs, you try to get the predator to cough you up[at random].";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
					wait for any key;
				else:
					if gator den is known:
						say "     You push your way back up her stomach and esophagus until you are finally spat out by the gator and onto the ground. 'Well, well, well. Looks like you do still have some fight in you,' the gator says in a pleased tone. 'Maybe you are worth keeping around.' She winks at you as she turns and walks away seductively, vanishing into the sewers. You collect your wits and go back to your adventures.";
					else:
						say "     You push your way back up her stomach and esophagus until you are finally spat out by the gator and onto the ground. For a moment, she looks really angry, but maybe because of the fight you had put out, the reptile woman then looks kind of pleased. 'Maybe you are not that weak,' she jokes and winks at you as you go back to your adventures.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
					wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					decrease struggleatt by 1;
					say "     [one of]You accept your fate as the gator rests her weight on you, rumbling faintly in approval[or]'Looks like somebody is going to be gator chow,' the predator taunts as you let her have her way with you[or]The gator chuckles, and her hands knead her stomach, pressing down on your unresisting form[or]You sit back and wait as her stomach does its work[or]You don't resist as the gator's insides press into you[at random].";
					wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					decrease struggleatt by 1;
					say "     [one of]'Having fun in there?' the reptile taunts when you cease your struggles[or]You take a break amidst the churning walls[or]While you rest, you feel the gator's stomach bob up and down, and you guess that she must be taking a dip[or]The gator caresses her tummy, almost happy for you when you don't put up a struggle[or]It's so warm inside of the gator that you find yourself relaxing[at random].";
					wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
					increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
				else:
					say "     [one of]'Hey, what are you doing in there?' the gator asks, poking at her stomach[or]Despite the stifling air, you manage to take some deep, calming breaths[or]You do your best to resist the gator's influence[at random].";
					wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to say GatorStruggle:
	say "[bracket]-[if struggleatt > 2][bold type]X[roman type][else]-[end if][if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";

Gator ends here.
