Version 2 of Wolftaur by Sarokcat begins here.
[ Version 2.1.1 - Lindsey tweaks ]

"Adds a Wolftaur to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses

to say Wolftaur victory:
	project the Figure of Wolftaur_hard_icon;
	if level of Lindsey > 3:
		say "     The large beast knocks you to the ground, before moving around you to claim its prize, you shudder as your body responds eagerly to the presence of another strong male wolftaur, as the more dominant beast steps behind you, before stopping and sniffing your submissive body. 'It seems you have already been claimed by a pack,' the beast says sadly, his rough voice making you shudder as your body squirms with desire. 'Far be it from me to poach on an alpha's territory,' the wolftaur says as he runs one of his clawed hands over your body, making you squirm. 'But let your alpha know that if he doesn't keep track of his bitches... well, anything can happen if I find you out here again,' the beast concludes with a smug growl deep in his throat, the dominant posture and musk making you whine in need even as he leaves you lying there on the path unsatisfied. You can't help but wonder if maybe you should chase after him and beg him to take you like a bitch, or if you should go see if your alpha wants to use you like a proper bitch instead...";
		decrease level of Lindsey by 1;
		infect "Wolftaur";
	else:
		if Player is female:
			say "     'Finally a nice little bitch for me to play with,' the wolftaur says with a lupine grin as he knocks you to the ground with one last strong blow. Your head reeling from the combination of his powerful male musk, and his attacks, you are unable to fight as the large male beast moves over you where you are sprawled flat on the ground. You begin to struggle slightly as his canine body presses up against your chest, his thick lupine rod rubbing against your soft passage as he covers you like a blanket. Your struggles cease quickly as his male musk intensifies, his soft wolf fur rubbing up against your chest, as he rests his lower body on top of you, his clawed hands reaching down to stroke and pet the top of your head. Feeling vaguely submissive and weak underneath the much more powerful beast, you find yourself relaxing and burying your hands in his fur as his canine cock begins to probe at your female passage.";
			say "     Suddenly you gasp, suddenly feeling very full as with one short swift thrust of his hindquarters, his pointed canine rod is inside you. Your hands grip his fur tightly as he strokes your head and calls you a good bitch, even as he continues to piston his thick meat into your body. Your own body responds by submissively opening itself up underneath him, your cervix opening up to allow his cock tip unopposed access to your womb, even as your legs spread wider to let his knot slip inside.";
			say "     Your mind fogs with pleasure as you pant and beg underneath the strong beast for him to fill you with his canine sperm and claim your body as his. A plea that doesn't go unanswered for long, as the powerful beast lets out a loud howl above you, its loud notes echoing throughout the zoo as his cock floods your womb with his seed. You lie there panting underneath him as you try to recover from your own orgasm, your hands instinctively stroking his soft fur as you both try to regain your wits. Eventually his knot shrinks enough that the large male is able to pull himself off you, his cock slipping out and leaving you feeling sadly empty as you lie there on the zoo path with your legs spread. 'That was a very good bit of fun little bitch,' the wolftaur says as he stares down at you with a lupine grin. 'Why don't you come back again sometime so we can do this again? Who knows, you might even make a worthy mate someday,' the large male beast says as he reaches down to give you one last pet on the head and scratch behind the ears, before loping off into the zoo.[impregchance]";
			infect "Wolftaur";
		else:
			say "     The large wolftaur sends you reeling with one last blow, stepping over you as you sprawl out helplessly on the ground. 'Not much of a bitch for me to play with are you?' the beast asks in a slightly amused tone of voice. 'Still, I suppose that doesn't mean we can't have a bit of fun now that you understand who is dominant around here,' the large male wolftaur says as he reaches down to run his hands over your body, pausing to stroke your cock a few times, and watching your reaction with amusement. 'Nice and eager I see,' the male beast says as he begins to tease and play with your cock, his clawed hands pumping over it and making you groan and writhe on the ground under his dominant touch. The canine beast begins to stroke the inside of your legs with one of his forepaws, even as he pumps your cock in short stiff motions, your precum leaking out onto his furred hands as you pant and whine with submissive need. Finally he rubs the base of your cock one last time, and you are unable to restrain yourself any longer, howling with pleasure as you shoot your seed out onto your [Skin of Player] chest.";
			say "     Panting you come down from your orgasm to see the large beast is still standing over you with an amused look on its lupine face, its own stiff cock showing just how much it enjoyed the experience as its thick musk fills your head. Unable to leave the canine beast unsatisfied, you quickly begin to return the favor, stroking and rubbing at his already aroused member, your hands tracing over his powerful knot as he moans above you. Given how aroused the male beast already is, it takes little encouragement from you for his canine cock to spill its seed all over your body as well, his strings of cum mingling with your own as his cock unloads its fertile treasure onto your body. Your mind addled with lust and pleasure, and the powerful musk of the male wolftaur, you lie back down on the grass, enjoying the feeling of his seed mingling with your own as it sinks into your body. The male wolftaur gives you another happy grin as he looks down at your prone from, 'That was a good bit of fun there,' the beast says as he lifts up one of his forelegs to give you a pet on the head. 'We should play again sometime, of course maybe you will be a proper bitch by then, but this works too,' he says in a teasing tone of voice before turning and loping back off into the zoo, leaving you lying there happily covered in cum.";
			infect "Wolftaur";


To say Wolftaur loss:
	project the Figure of Wolftaur_hard_icon;
	say "     The large gray-furred wolftaur staggers back, surprise evident on the beast's muzzle as you manage to gain the advantage. Shooting you one last incredulous glance, he turns tail and runs, moving swiftly on all four legs while his arms knock branches and bushes out of the way.";
	LineBreak;
	let bonus be (( Dexterity of Player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] against 15 (Dexterity check)";
	LineBreak;
	increase diceroll by bonus;
	if diceroll > 15:
		say "     Proving that you're not only stronger than the wolftaur, but also fast enough to catch him, you dash after the large creature and grab him by the tail. It only takes one sharp tug and pained yowl to bring him to a stand, looking back at you with a beaten expression. 'Okay okay - you win. But no more tail pulling - that hurts like hell!'";
		say "     Now that you've caught yourself a not so little male wolftaur, what do you do with him? Have some fun with the wolfie (Y), or let him go with a warning (N)?";
		if Player consents:
			LineBreak;
			say "     Still loosely holding his tail, you use your other hand to stroke the wolftaur's back, running it through his fur lower and lower at his side. The large creature looks over his shoulders and says, 'What are you doing now, are youu-oh-oooh!' Whatever he wanted to say, you arriving at his crotch and cupping his sheathed cock totally makes him lose focus and switch over to aroused panting. Having a suddenly much more cooperative taur on your hands - or rather in your hands, with one of them massaging his balls - you have him lie down for you and roll over on his back.";
			LineBreak;
			if Player is male: [male + herm]
				say "     What would you like to do now with this horny wolftaur stretched out before you? You could ride that canine shaft of his (Y), or alternatively take his tight hole yourself (N)?";
				if Player consents:
					LineBreak;
					if Player is herm:
						say "     As a herm, you have the choice which hole you want to sink down on his hard canine shaft. Which shall it be? (Y = pussy, N = ass) ";
						if Player consents:
							LineBreak;
							say "     [WolftaurRidingPussy]";
						else:
							LineBreak;
							say "     [WolftaurRidingAss]";
					else:
						say "     [WolftaurRidingAss]";
				else:
					LineBreak;
					say "     Quickly getting rid of your gear and clothing, you move into position to sit on the wolftaur's furred underside, then stretch forward to run your hands lengthwise through his luxuriously soft belly fur. The canine beast gives a sensual moan as you touch and stroke him and you can feel his throbbing shaft poke against your tailbone as he stretches a bit. Scooching down his body, you grab his cock and jerk it a few times, then rub your own against it and hold both of them together in one hand. Raising himself up on his elbows, the wolftaur looks down to and complains, 'Hey, leave me alone with that kind of gay shit. You can suck me off, but I'm not gonna- *urk*' Having grabbed his balls pretty tightly to remind the big canine who's in control here, you tell him that he'll do whatever you want and that in fact, you'll fuck his ass now. He starts to growl at that, then yelps as you squeeze harder and make him give in. 'Okay okay, you're the boss.'";
					say "     Unmoved by your wolfie mumbling 'Why did I have to jump a gay one? Oh shit, oh shit', you get into position between his legs, then put your index finger in your mouth to make it wet and start playing with the wolftaur's ass. Seeing how clenched his pucker is, you decide he needs some distraction and take hold of his shaft, slowly jerking him off while you brush your fingers over his asshole, massaging around it, then press in against it. With an alarmed growl, the wolftaur tries to jerk away from you - futilely, with him on his back and you having a good grip on his dick. Before he can do much more than that or start to fight you, your probing finger finds his prostate and rubs against it, making the scared wolf pant in lust and let his head sink back down on the ground again.";
					WaitLineBreak;
					say "     Going at it slowly, you show your canine novice at anal sex a good time with first one, then two fingers until he's relatively relaxed down there and pretty aroused. At that point, you decide that it's time to get your own manhood into action. Pulling your fingers out of the wolftaur's hole, you watch it flex closed again, then set the tip of your [Cock of Player] shaft against the wolftaur's pucker and move forward until it yields to your pressure and you thrust into the warm and tight embrace of his body. You slide into the panting canine's ass until your balls touch the base of his tail, then start pulling back and thrusting back in, and soon you're pounding in and out of the wolf creature's tight hole.";
					say "     Confronted with all kinds of new sensations, it doesn't take all that long until you fucking him drives the wolftaur over the edge and he starts to cum, squirting long strings of cum from his knotted cock to land all over his furred underside and some even up to his chest. The twitches and convulsions of each shot run through his whole body, including the muscles in his ass, making an already quite tight hole grip and squeeze your shaft until you join him in orgasm, with a full load of your seed being blasted into this sexy furball's butt.";
					WaitLineBreak;
					say "     You lie there panting on his chest for a while, your hands instinctively stroking his soft fur as you both try to regain your wits. Eventually you pull out of his hole and watch it flex closed before too much of your cum can run out of it, then stand up on shaky legs. While you're collecting your stuff, the wolftaur says, 'That was... something else. Can't remember when I last came that much. But... no, I didn't like it. You made me. It's not me. I'm a real man, not a gay sissy! You made me...' looking up at you with a somewhat sullen expression. Giving him a meaningful grin and a wink, you walk off, leaving him to think up excuses for himself why he came from getting fucked in the butt.";
			else if Player is female: [female]
				say "     What would you like to do now with this horny wolftaur stretched out before you? You could ride that canine shaft of his (Y), or make him lick your pussy (N)?";
				if Player consents:
					LineBreak;
					say "     [WolftaurRidingPussy]";
				else:
					LineBreak;
					say "     Quickly getting rid of your gear and clothing, you move into position to sit on the wolftaur's furred underside, then stretch forward to run your hands lengthwise through his luxuriously soft belly fur. The canine beast gives a sensual moan as you touch and stroke him and you can feel his throbbing shaft poke against your tailbone as he stretches a bit. But this isn't actually about him or his pleasure, so you give his cock just a few quick jerks with your hand, then move up to his upper body and kneel over him, your knees to both sides of his chest. Running both hands over his furred cheeks, then scratching him behind his ears, you take hold of the wolftaur's head and pull it up, making his wet nose bump against your pussy lips. You can feel his breath hotly against your crotch as he takes in a deep sniff of your female scent, then eagerly starts lapping at your clit. He's surprisingly good at oral sex with that wide and long tongue of his, making you pant and moan loudly as he licks away at you. It doesn't take all that long until this drives you over the edge and you come, your gushing femcum eagerly lapped up by your canine partner.";
					say "     After a moment to regain your composure, you stand up on somewhat shaky legs. While you're collecting your stuff, the wolftaur says, 'You've got a sweet pussy on you, my horny bitch.' He looks up at you with a lupine grin. 'How about if next time, you just submit and I show you a good time I can give you with this?' he continues, stretching down to suggestively wiggle his hard cock at you. You just give him a meaningful grin, then walk off, leaving him furiously jerking off to take care of his own arousal.";
			else: [neuter]
				LineBreak;
				say "     [WolftaurRidingAss]";
		else:
			LineBreak;
			say "     Telling the wolftaur that he should think twice before jumping someone stronger than him in the future, you give his ass a few hard slaps to drive the lesson home. Then you let go of his tail and the large beasts dashes off.";
	else:
		say "     You were strong enough to beat him, but not quite fast enough to catch the wolftaur. After a moment of running, it becomes clear that he's getting away, so you slow down and stop.";

to say WolftaurRidingPussy:
	say "     Quickly getting rid of your gear and clothing, you move into position to sit on the wolftaur's furred underside, then stretch forward to run your hands lengthwise through his luxuriously soft belly fur. The canine beast gives a sensual moan as you touch and stroke him and you can feel his throbbing shaft poke against your tailbone as he stretches a bit. Time to give this wolfie's bone a workout... scooching down his body and raising yourself up a bit, you align the pointy canine cock with your pussy. As the tip of his male member touches your moist pussy lips and starts to spread them, the wolftaur remarks, 'Yeah baby - I'd gladly lose a fight any day if I get to fuck such a hot bitch afterwards', then gives a lust-filled grunt as you sink your folds deeper. It feels incredible to have his warm, thick shaft stretching your inner passage around itself, deeper and deeper until you feel the big bulge of his knot against your skin and start sliding up and down on his hard pole. 'Man, you're a grade A fuck - take that cock! Yeah!' your wolftaur howls in between pants as you ride him, fucking yourself on his manhood.";
	say "     Before long, the ever greater arousal wakes your partner's inner animal, making his groans and lust-filled shouts sound more and more beast-like. Then suddenly, he rears up under you, wrapping his forelegs around your chest and pulling on your hips just as you are on a down-stroke - slamming your pussy down on his knot with irresistible force. You barely have time to register the painful feeling of stretching as it pops into your body, then you're washed away in the sensation of having his hot, throbbing, massive erection inside you, filling you completely and pulsing with blast after blast of canine cum shooting into your womb. Almost losing yourself in the orgasm he drives you to, [if Player is male]spraying your own seed all over his chest[else]gushing femcum to soak into the fur of his crotch[end if], you close your eyes and just let the virile male hold you while he breeds your body.[fimpregchance]";
	WaitLineBreak;
	say "     You lie there panting on his chest for a while, your hands instinctively stroking his soft fur as you both try to regain your wits. Eventually his knot shrinks enough that you are able to pull yourself off him, his cock slipping out and leaving you feeling sadly empty as you stand up on shaky legs. While you're collecting your stuff, the wolftaur says, 'That was a very good bit of fun, you horny bitch. You really can wear a guy out.' He looks up at you with a lupine grin, then lets his head sink back on the floor. 'Since you like to fuck anyways, how about if next time, you just submit and I show you a good time on my terms?' You just give him a meaningful grin, then walk off, leaving him to pick himself up later.";

to say WolftaurRidingAss:
	say "     Quickly getting rid of your gear and clothing, you move into position to sit on the wolftaur's furred underside, then stretch forward to run your hands lengthwise through his luxuriously soft belly fur. The canine beast gives a sensual moan as you touch and stroke him and you can feel his throbbing shaft poke against your tailbone as he stretches a bit. Time to give this wolfie's bone a workout... scooching down his body and raising yourself up a bit, you align the pointy canine cock with your pucker. As the tip of his male member touches your hole and you start to push down against it, the wolftaur remarks, 'Hey wait a minute - I'm not a fag-', the rest of the sentence lost in a lust-filled grunt as his cockhead pops in and you sink yourself deeper on his manhood. It feels incredible to have his warm, thick shaft stretching your inner passage around itself, deeper and deeper until you feel the big bulge of his knot against your ass and start sliding up and down on his hard pole. 'Man, I'm not into - *moan* *gasp* - ah, what the hell - take that cock! Yeah!' your wolftaur howls in between pants as you ride him, fucking yourself on his hard pole.";
	say "     Before long, the ever greater arousal wakes your partner's inner animal, making his groans and lust-filled shouts sound more and more beast-like. Then suddenly, he rears up under you, wrapping his forelegs around your chest and pulling on your hips just as you are on a down-stroke - slamming your butt down on his knot with irresistible force. You barely have time to register the painful feeling of stretching as it pops into your body, then you're washed away in the sensation of having his hot, throbbing, massive erection inside you, filling you completely and pulsing with blast after blast of canine cum shooting deep into your insides. Almost losing yourself in the orgasm he drives you to[if Player is male], spraying your own seed all over his chest[else if Player is female], gushing femcum to soak into the fur of his crotch[end if], you close your eyes and just let the virile male hold you while he breeds your body.[mimpregchance]";
	WaitLineBreak;
	say "     You lie there panting on his chest for a while, your hands instinctively stroking his soft fur as you both try to regain your wits. Eventually his knot shrinks enough that you are able to pull yourself off him, his cock slipping out and leaving you feeling sadly empty as you stand up on shaky legs. While you're collecting your stuff, the wolftaur says, 'That was... something else. Can't remember when I last came that much. But... I'm not really into that ass stuff. That's for gay sissies - and I'm a real man!', looking up at you with a weak grin, then lets his head sink back on the floor. 'Since you like to fuck anyways, how about if next time, you just submit and I show you a good time on my terms?' You just give him a meaningful grin, then walk off, leaving him to pick himself up later.";

to say WolftaurDesc:
	project the Figure of Wolftaur_soft_icon;
	setmongender 3;
	say "     Wandering through the zoo pathways, you begin to get the feeling that something is following you, looking around you in panic, you spot a large gray-furred Wolftaur following you down the path. The large beast is making little effort to hide, his wolfish lower body moving swiftly down the trail after you, while his fur covered upper body is flexing its clawed hands in anticipation of getting them on you, and there is a rather lusty look on the beasts canine face as it eyes you. [one of]'I don't suppose you are on the way to your grandma's house now, because I see the treat I want...' [or]'Heh heh heh, now the question is, will you submit quietly or struggle? Either way, you will be mine,' [or]'I can't wait to see you on all fours underneath me,' [or]'How about I show you what a large cock I have? It's all the better to stick into you, my dear...' [or]'You look like you would make a fine bitch...' [or]'Why don't you come join my pack?' [at random]he says, a lusty canine musk filling the air as he abandons any pretense of stealth and pads forward eagerly, his canine cock bouncing underneath his lower body eagerly.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Wolftaur"; [name of the overall species of the infection, used for children, ...]
	add "Wolftaur" to infections of CanineList;
	add "Wolftaur" to infections of FurryList;
	add "Wolftaur" to infections of NatureList;
	add "Wolftaur" to infections of MaleList;
	add "Wolftaur" to infections of TaperedCockList;
	add "Wolftaur" to infections of KnottedCockList;
	add "Wolftaur" to infections of SheathedCockList;
	add "Wolftaur" to infections of TaurList;
	add "Wolftaur" to infections of TailList;
	now Name entry is "Wolftaur";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He snaps at you with his sharp teeth, leaving marks on your skin[or]He whips his clawed fore-paw out, slapping you down like a submissive wolf.[or]His large erect member catches your eye for a minute, noticing he pauses to spray his musk in the area, the scent making you pant with need.[or]He grabs your arm in his teeth, and wrestles you to the ground.[or]charging forward, the wolftaur snaps and claws at you viciously[or]The masculine wolftaur's strong dominant scent makes you pause for a second, and he takes advantage of that to try to wrestle you down to the ground.[or]He lashes out at you with his clawed hands, leaving small marks on your skin.[or]The large taur charges right at you, knocking you to the ground.[or]The wolf like beast lowers his head and nuzzles you, while his hands play over your body, making you feel aroused and submissive.[at random]";
	now defeated entry is "[Wolftaur loss]";
	now victory entry is "[Wolftaur victory]";
	now desc entry is "[WolftaurDesc]";
	now face entry is "a long, wolf-like muzzle, your new yellow eyes gleaming out of your lupine face, while your changed canine ears swivel to pick up the slightest new sounds. At this point, it would be hard to tell the difference between your face and a wolftaur's"; [ Face description, format as "Your face is (your text)."]
	now body entry is "lean and rather well built. Your lower body is that of a fully canine beast and is standing easily on its four lupine paws, while your rather humanoid torso extends upwards from where a normal wolf would have its head, your claw-tipped hands and lean form giving you a rather lean and sexy appearance"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[one of]gray furred[or]rough furred[or]thick furred[or]Wolf furred[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long, lupine tail stretching happily from just above your rear end, its presence somehow feeling so very right and natural as it lifts up to show off your ass for any other lupine that might be around."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canine[or]wolf[or]knotted[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it stretches out into a large lupine muzzle, your eyes blurring and the sounds of the world seeming muffled as your face shifts and changes. New scents explode through your brain as your new muzzle finishes forming, and the world seems to come into better focus and your hearing seems to sharpen considerably as your face settles into its new wolf like appearance"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it seems to stretch and twist, making you collapse to the ground as your lower torso seems to lengthen, your feet shifting and changing as they become proper wolf paws, and your legs twist into the rear legs of a canine. At the same time, a new set of limbs is pushing out of your lower body. You groan at the strange sensation of your body twisting and changing as two new canine forelegs push out of your body, even as your spine seems to snap and twist, your lower body seeming to draw up behind you as it changes into a new more canine form. Eventually the changes stop, and you find yourself standing up on your new canine paws, almost instinctively knowing how to maneuver this new bestial form of yours"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it seems to shiver and tingle pleasantly, a soft coat of underfur spreading across your body and making you moan in pleasure. Almost immediately afterwards you feel a soft, almost ticklish sensation as thicker gray wolf fur pushes out over your softer fur, your new coat of gray fur covering your body completely and making you feel strangely safe"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a large lupine tail pushes its way out of your rear, as your muscles seem to tighten. Your new long lupine appendage feels amazing as you wag it happily behind you a few times, somehow feeling like a completely natural part of your body"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your aching member grows thicker, tapering to a sharp point, and a large canine knot forms at the base of it as your cock is engulfed in your new lupine sheath"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 15;
	now sta entry is 18;
	now per entry is 17;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";             [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 8;                    [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10;                  [ Amount of Damage monster Does when attacking.]
	now area entry is "Zoo";               [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;                  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;            [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;             [ Size of balls ]
	now Nipple Count entry is 6;                [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 5;            [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;                  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 14;
	now Cunt Tightness entry is 9;
	now SeductionImmune entry is false;
	now libido entry is 60;                [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";                  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;             [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;                  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]tauric[or]bestial[or]animalistic[at random]";
	now type entry is "lupine";            [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;          [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;         [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "wtaurpounce";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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



Section 3 - Wolftaur Pounce Alt Attack

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"wtaurpounce"	retaliation rule	--	--	wtaurpounce rule	15	--	--	--	--	--

this is the wtaurpounce rule:		[double-damage pouncing]
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 67 );  [+50% damage]
	if HardMode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of][Name entry][or]wolf[or]lupine taur[or]wolf-creature[purely at random] growls and pounces roughly atop you, [one of]knocking[or]sending[or]slamming[purely at random] you down briefly under it. Its many paws pummel you, trying to knock the resistance out of you while you're surrounded in his strong, musky scent. This [one of]powerful[or]strong[or]devastating[purely at random] assault does [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";  [unable to use shield while pinned]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of Player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	say "You are [descr].";


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Wolftaur Infection"	"Infection"	""	Wolftaur Infection rule	1000	false

This is the Wolftaur Infection rule:
	if Player has a body of "Wolftaur":
		trigger ending "Wolftaur Infection"; [Here it states, that the ending has been played.]
		if level of Lindsey > 3:
			if humanity of Player < 10:
				if Player is female:
					say "     Your mind filling with images of the handsome alpha wolftaur you encountered in the zoo, you are unable to resist your needs any longer. Running back to the zoo on your four swift canine paws, your new canine muzzle sniffs the air eagerly hoping to catch a hint of that strong male musk your body knows so well. You catch his scent just as you reach the bathroom area, and turn to see Lindsey there waiting for you with a grin on his lupine face, as if he had no doubt as to the fact that you would submit. Your mate wastes no time in cementing your submission, taking you there again in the bathroom as he fills your belly up again with his fertile sperm, marking your body with this scent and seed even as your mind shifts and accepts his dominance as well. The strong male wolftaur nuzzles your neck with his muzzle as you are locked together there, enjoying the new memory of gaining another female mate in the zoo bathrooms. Eventually he pulls himself off of you, and leads you through the paths of the zoo to a small hidden area where another wolftaur bitch awaits. Her belly swollen with your mates cubs as she welcomes you into the den, your mind fills with the strong scent of pack and servitude to the alpha as Lindsey settles you into place next to his other bitch. You and your pack bitch become fast friends as you settle into the den, your alpha mounting you and her often and cementing your place in the pack, and you find yourself looking forward eagerly to your belly swelling with his big strong cubs just like the other pack bitches is. A wish that thanks to your mates virility, you don't have to wait long to have fulfilled as his seed finds root in your own body. Your small pack eventually gains a new member when the military try to retake the city, their failure seems to amuse your alpha as he teaches his new bitch her place underneath him, just like he taught you.";
				else if Player is mpreg_ok:
					if LindseyMPregDetected is false:
						say "     Your mind filling with images of the handsome alpha wolftaur you encountered in the zoo, you are unable to resist your needs any longer. Running back to the zoo on your four swift canine paws, your new canine muzzle sniffs the air eagerly hoping to catch a hint of that strong male musk your body knows so well. You catch his scent just as you reach the bathroom area, and turn to see Lindsey there waiting for you with a grin on his lupine face, as if he had no doubt as to the fact that you would submit. 'I supposed you would come back here instead of trying to start up your own pack, my little pet,' the more dominant wolftaur says with a soft smirk on his canine face. 'Don't worry, I saved a place in my pack for a special submissive male like yourself,' he adds, moving to mount you. 'That's right. I can smell that womb of yours, even over the stink of this place, and I'm going to enjoy putting my pups in it.'";
					else:
						say "     Your mind filling with images of the handsome alpha wolftaur you encountered in the zoo, you are unable to resist your needs any longer. Running back to the zoo on your four swift canine paws, your new canine muzzle sniffs the air eagerly hoping to catch a hint of that strong male musk your body knows so well. You catch his scent just as you reach the bathroom area, and turn to see Lindsey there waiting for you with a grin on his lupine face, as if he had no doubt as to the fact that you would submit. 'Don't worry, I saved a place in my pack for my special he-bitch breeder like I promised,' he adds, moving to mount you. 'And your alpha also promises that his strong and virile cum'll put pups even in your male belly.'";
					say "     Your mate wastes no time in cementing your submission, taking you there again in the bathroom as he fills your belly up again with his fertile sperm, marking your body with this scent and seed even as your mind shifts and accepts his dominance as well. The strong male wolftaur nuzzles your neck with his muzzle as you are locked together there, enjoying the new memory of claiming a male to be another breeding mate in the zoo bathrooms. Eventually he pulls himself off of you and leads you through the paths of the zoo to a small hidden area where his female mate awaits, her belly swollen with your alpha's cubs. The stronger male wolftaur swiftly mounts you again in demonstration as he explains to the female that you're a pup-breeding male.";
					say "     As she welcomes you into the den, your mind fills with the strong scent of pack and servitude to the alpha. After mating you, Lindsey settles you into place next to his other bitch. The two of you become fast friends as you settle into the den, your alpha mounting you and her often and cementing your place in the pack. You find yourself looking forward eagerly to your belly swelling with his big strong cubs just like the other pack bitch is. A wish that thanks to your mate's virility, you don't have to wait long to have fulfilled as his seed finds root in your own body. Your small pack eventually gains two new members when the military try to retake the city. Your alpha's practice on you with quelling and conquering males makes it easier for him to capture the pair and turn them into fresh female bitches. The army's failure seems to amuse your alpha as he teaches his new bitches their place underneath him, just like he taught you.";
				else:
					say "     Your mind filling with images of the handsome alpha wolftaur you encountered in the zoo, you are unable to resist your needs any longer. Running back to the zoo on your four swift canine paws, your new canine muzzle sniffs the air eagerly hoping to catch a hint of that strong male musk your body knows so well. You catch his scent just as you reach the bathroom area, and turn to see Lindsey there waiting for you with a grin on his lupine face, as if he had no doubt as to the fact that you would submit. 'I supposed you would come back here instead of trying to start up your own pack my little pet,' the more dominant wolftaur says with a soft smirk on his canine face. 'Don't worry, I saved a place in my pack for a submissive little male like yourself,' he says, his words making you perk up eagerly as he leads you through the paths of the zoo to a small hidden area where you can see his mate residing in a small den, her belly obviously swollen with his cubs. The stronger male wolftaur quickly outlines your duties of keeping him and his bitch happy and pleasured, and he proceeds to make sure you understand by taking you again in front of his mate, making you moan in happy pleasure as he inducts you fully into his pack.";
					say "     With you there to do all the work of hunting and caring for his pregnant mate, Lindsey is free to hunt for more bitches to add to the pack. He has trouble finding more, until the military enter the city to attempt to retake it, your clever alpha lets himself be captured by a small group of soldiers, offering no resistance as he leads them to his den so they can see his mate and pet as well. Lindsey talks to the soldiers as he shows them through the city to the den, his musk and his words teasing them as he tells them about the joys of being a proper bitch, and how he thinks they would all make very fine bitches indeed. By the time he reaches the den with the squad of soldiers, their minds are so fogged with lust, that the sight of his happily fucked bitch, and your own submissive male body, makes them beg for him to make them bitches as well. Your alpha happily complies, mounting each of them in turn until their bodies shift into proper bitches for the pack, he even rewards your help and service as you convince each of them of the rightness of being a bitch, by letting you take one of the new bitches yourself. Her soft body under you as you mount her makes you feel happy and alive, but the feel of your alpha mounting you again afterwards is an even better reward. You just love your new place as the beta male in your own newly formed wolftaur pack.";
			else:
				if Player is female:
					say "     You try to hang on to yourself as the urge to submit to the strong wolftaur you met in the zoo bathrooms grows ever stronger. Luckily the military arrive before you break and give in completely to the urges of your new wolftaur body, they rescue you and help lead you out of the city where they can try to get you help. Away from the canine musk and sexual scents filling the city, you manage to recover somewhat, although your body still cries out for his strong dominant touch. Eventually they are forced to let you go, as the events in the city continue to heat up, and you seem normal enough to them at this point. Wandering the world outside the fallen city, you certainly don't feel normal anymore, your changed body only the outward sign of how your intense encounters in the city have changed you deep inside. Your new more submissive nature leads you to accepting several rather rough jobs, and you find yourself wandering helplessly through life, always hoping to find a purpose or a way to feel as alive and wanted as you did when you were with your alpha back in the city.";
					say "     One day when you are about to give up hope your lupine nose catches a whiff of a slightly familiar scent, which you find yourself following eagerly through the city, soon you find yourself in a newer and richer section of the city, standing before the door to a strange house with a large fenced In yard. The scent filling your nostrils speaking to you of home and pack, you knock eagerly, and your tail wags as your alpha from the city answers the door with a lupine grin. He happily welcomes the return of one of his first bitches by showing you to the rest of his female bitches, and mounting you in front of them as your mind sings happily at having finally found where you belong again. Eventually you learn as you settle in with his numerous other bitches, that Lindsey managed to convince several members of the military that being a bitch was right and proper, and with their help managed to get himself and his growing pack out of the city before the worst happened. He settled here in this city, where he has steadily been showing the rich and powerful people of the city the joys of being proper wolftaur bitches, just like he once showed you in a dirty zoo bathroom.";
				else:
					say "     You try to hang onto yourself, even as the urge to submit to the strong wolftaur you met in the zoo bathrooms grows ever stronger. Luckily the military arrive before you break and give in completely to the urges of your new wolftaur body, they rescue you and help lead you out of the city where they can try to get you help. Once away from the city, you begin to be able to reason and think better again, and are able to start to function again, even though your body's urges are still strongly burning within you. Soon the military are forced to release you out into the regular world, their problems in the city growing greater with every day as the strong beasts within begin to press outwards against their lines. You have a rough time adapting to life outside of the city, your mind still urging you to find a strong dominant person to tell you what to do, while your body longs for the touch of another canine.";
					say "     Your submissive needs continue to grow worse with every day, until eventually you can't take this banal life without a proper alpha anymore, and you find yourself desperately hunting for someone to belong to. You end up going through several partners looking for a proper alpha, sadly though many of them seem eager for you to actually use your malehood on them, something that seems almost wrong to you after your time underneath a proper wolftaur. Eventually you get a strange phone call from someone who heard about you online, telling you sternly to meet them in another city. Responding eagerly to the strong dominant voice, you quickly pack up and do as you are told, heading to another city, where you find yourself greeted by another female wolftaur. You can smell a familiar dominant musk on her body as she tells you she was sent to collect you, and find yourself eagerly hurrying back to her packs den with her. Your world seems to stabilize as Lindsey greets you at the door with a lupine grin, welcoming his straying pack member back into the fold as he shows you the place you will be staying at from now on, before mounting you again and welcoming you back into the pack properly...";
		else:
			if humanity of Player < 10:
				if Player is female:
					say "     Finally submitting fully to the lusty needs of your new heat-filled body, you find your paws quickly leading you back to the zoo where you encountered the handsome male wolftaur. Your new canine nose soon picks up the scent of an aroused male, and the smell of his thick musk smells like heaven to your needy body, making your pussy clench in need as proximity to the strong male sends you into heat. The male wolftaur wastes no time in following your scent, and is soon as caught up in the pheromones your own body is putting off as you are entranced by his male musk. You are soon rutting together with bestial abandon like the animals you both now resemble, his knot tying you together as you yip and howl in pleasure, the feel of his seed filling your body as he locks you into your new permanent shape is amazing. Panting together in the afterglow, you can't help but look forward to your new life, raising his pups and playing with your new mate again and again in the streets of the once human city...";
				else if Player is mpreg_ok:
					say "     Finally submitting to the wild needs of your altered body, you find your paws quickly leading you back to the zoo and the other wolftaurs. Picking up the scent of an aroused male, a heavenly smell that makes your insides quiver with need. Following your nose leads you to the other male. At first, he thinks you wish to challenge him, but when you submit and offer up your ass to him right away, he mounts you with a dominant growl. The two of you rut with bestial abandon like the animals you both now resemble, his knot tying you together as you yip and howl in pleasure. The feel of his seed filling your body as he breeds you is amazing.";
					say "     After the rut, he dismounts and goes to leave, but you follow him. You submit to him a few more times whenever his arousal starts to return. Eventually he seems to accept you as his male bitch and leads you back to his lair. He's surprised but not at all displeased when you grow gravid with his pups. A process that he's happy to repeat over and over.";
				else:
					say "     Finally giving in to the lustful urges filling your male wolftaur body, you give in to the urge to hunt and convert yourself a proper mate. Hunting the streets of the city on your four soft paws, as your clawed hands clench in anticipation, you find yourself fending off several of the other beasts scattered throughout the city, as they do their best to drive you away or capture you in turn. Still you are not willing to be denied, as you continue to prowl the city, and eventually your hunt bears fruit. When the foolish human military returns to try to reclaim the city, you take advantage of the opportunity to quickly overpower several of them, and infect them with your seed before retreating into the city. Soon as you knew they would, your newly changed wolftaur bitches are eagerly hunting you down, and you happily mount them and accept them into your pack, your hunt for company and a place to belong finally over...";
			else:
				if Player is female:
					say "     You try to hang on to yourself as the urge to submit to the strong wolftaur you met in the zoo grows ever stronger. Luckily the military arrive before you break and give in completely to the urges of your new wolftaur body, they rescue you and help lead you out of the city where they can try to get you help. Away from the canine musk and sexual scents filling the city, you manage to recover somewhat, although your body still cries out for his strong dominant touch. Eventually they are forced to let you go, as the events in the city continue to heat up, and you seem normal enough to them at this point. Wandering the world outside the fallen city, you certainly don't feel normal anymore, your changed body only the outward sign of how your intense encounters in the city have changed you deep inside. Your new more submissive nature leads you to accepting several rather rough jobs, and your inability to stand up for yourself soon draws out several of societies predators. One day several of the rough men accost you and demand you come with them, and you are unable to bring yourself to resist as their strong hands grab you and drag you off. Soon you find yourself with a new job, working as an unpaid bitch for your new masters in one of the kinkier sex clubs in town, servicing dogs and wolves up on stage, and the patrons in the back room. The feelings of shame and helplessness only serving to make your submissiveness worse and worse until you give up any hope of being anything more than a tame bitch, and begin to enjoy your newfound role in life.";
				else:
					say "     You try to hang onto yourself, even as the urge to submit to the strong wolftaur you found in the zoo grows ever stronger. Luckily the military arrive before you break and give in completely to the urges of your new wolftaur body, they rescue you and help lead you out of the city where they can try to get you help. Once away from the city, you begin to be able to reason and think better again, and are able to start to function again, even though your body's urges are still strongly burning within you. Soon the military are forced to release you out into the regular world, their problems in the city growing greater with every day as the strong beasts within begin to press outwards against their lines. You have a rough time adapting to life outside of the city, your mind still urging you to find a strong dominant person to tell you what to do, while your body longs for the touch of another canine.";
				say "     Eventually your combined needs lead you to the areas where several other of the people changed by the city hang out, haunting the bars and diners and basking in the few short minutes you are able to find canine company. One of the packs of rescued canines realizes your naturally submissive status, and after a while takes you in as the lowest ranking member. While you are considerably different from the other members of your new pack, you find yourself more than happy to just belong, and eagerly throw yourself into your new lifestyle, happy to be of service to both male and females alike both in bed and out of it, you realize you have finally found your place in this new world.";

Wolftaur ends here.
