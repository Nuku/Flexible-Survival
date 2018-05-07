Version 1 of Gloryhole by SgtPepper234 begins here.
[ Version 1 - Establishing the location and first events ]

MichaelGholeMeetings is a number that varies.

Bathroom Stalls is a room. 
Inside of Mall Restroom is Bathroom Stalls.

The description of Bathroom Stalls is "     These dingy bathroom stalls are separated by cheap plasticised chipboard barriers. Slick patches of white gunk cover the floors and the musty odour of sex fills the air. The doors that still have latches actually have some degree of functionality, though a few stalls are without any doors at all. There is gap beneath the doors, barriers and the floor, as is usual for a cheaply constructed mall bathroom. Holes of varying sizes have been drilled into the stall walls and made less hazardous by the addition of duct tape. Their purpose is obvious.";

Gloryhole is an object. It is in the Bathroom Stalls. It is fixed in place. Understand "hole" as Gloryhole.
the description of Gloryhole is "The gloryholes are drilled in both barriers either side of you, at varying heights so anyone can use them. Though this is clearly not the most sanitary of places, it maintains anonymity. Do you want to [link]have some fun[as]use Gloryhole[end link] and get your rocks off with some anonymous partners?";

UseGloryhole is an action applying to nothing.
understand "use hole" and "fuck hole" and "fuck gloryhole" and "use gloryhole" and  "use ass" and  "use cock" and  "use pussy" as UseGloryhole.

check UseGloryhole:
	if Gloryhole is not visible, say "What? There is nothing like that here." instead;

carry out UseGloryhole:
	say "     [bold type]Looking at the dingy surroundings and patches of dried cum does bring up some second thoughts. Are you really sure?[roman type][line break]";	
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Make use of the gloryhole and get your rocks off.";
	say "     ([link]N[as]n[end link]) - Nope, get the hell out of this filthy cesspool.";
	if player consents:
		LineBreak;
		say "     [bold type]What exactly do you want to do?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Put your crotch up against the hole and have someone pleasure you.";
		say "     [link](2)[as]2[end link] - Put your ass up against the hole and offer yourself to fuck.";
		say "     [link](3)[as]3[end link] - Kneel in front of the hole and offer your mouth to a willing stranger.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to put your crotch against the hole, [link]2[end link] to offer yourself to fuck or [link]3[end link] to give a blowjob.";
		if calcnumber is 1: 
			LineBreak;
			say "[GholeGiverRandomChoice]";
		else if calcnumber is 2: 
			LineBreak;
			say "[GholeFuckRandomChoice]";
		else: 
			LineBreak;
			say "[GholeBJRandomChoice]";
	else:
		LineBreak;
		say "     Deciding you want no part of what this disgusting bathroom has to offer today, you turn tail and leave the gloryholes, taking note of its location... Just so you know to avoid it later of course.";
		
to say GholeGiverRandomChoice:
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "[GholeGiverScene1]";
		-- 2:
			say "[GholeGiverScene1]";

to say GholeFuckRandomChoice:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			say "[GholeFuckCollie]";
		-- 2:
			say "[GholeFuckBehemoth]";
		-- 3:
			say "[GholeFuckGryphon]";
		-- 4:
			say "[GholeFuckHyena]";

to say GholeBJRandomChoice:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			say "[GholeBJDog]";
		-- 2:
			say "[GholeBJHorse]";
		-- 3:
			say "[GholeBJMichael]";
		-- 4:
			say "[GholeBJNaga]";


to say GholeGiverScene1:
	if player is male: [male + herm] 
		say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. Shutting the barely functional latch on the door, you [SelfStripCrotch], then step up to the hole. Pressed against the flimsy wall, you wait with trepidation and increasing arousal for someone to enter the adjacent stall.";
		say "     .";
		say "     ..";
		say "     ...";
		say "     ....";
		say "     .....";
		say "     ......";
		WaitLineBreak;
		say "     Although your cock is turgid with excitement, you're starting to lose hope of anonymously getting your wick wet when suddenly someone enters the bathroom and the stall next to yours. Two knocks at the wall means they're ready to receive. With some trepidation you slide your cock through the hole, and into the warm waiting mouth of whoever is on the other side. A sharp intake of breath is all the indication they need to start sucking, and boy are they enthusiastic about it! You are practically sucked flush against the stall wall as pleasurable sensations wrack your member while the skillful tongue explores the engorged cock head in its mouth. Moans of delight mirror your own, exciting you even more with the knowledge that the stranger in the next cubicle gets as much enjoyment from this depraved act as you do. Your hands grip tightly at the top of the cubicle walls, knuckles whitening as you fight to hold back the explosion that has been building in the base of your groin.";
		say "     The cocksucker on the other side is only becoming more eager to receive your powerful seed, as evidenced by the expert ministrations of their tongue as it slips through the hole to lick at your throbbing balls/underside of your throbbing meat pole.  The groaning from next door reaches its peak and you realise that your eager cock holster has just cum. This is confirmed by the ropes of jizz that erupt from the partition to cover your feet and ankles in a gloriously sticky white mess. The sensations become too much for you to hold back any more and, knees quaking with ecstatic frenzy, you explode into the eagerly sucking mouth. Your hips crash against the wall trying to force the geyser like eruptions of pleasure further down your anonymous partners throat. Throughout your release the eager slut in the next stall doesn't spill a drop of your alabaster cream, instead relishing every small eruption of seed in their mouth and swallowing eagerly.";
		WaitLineBreak;
		say "     Knees still shaking slightly from the aftershock of your orgasm, you can't help but be a little sad when you feel the lips of your partner slide silkily down your pole and kiss the dribbling tip of your cock before standing to leave the bathroom. You [SelfDressCrotch], then exit the bathroom, wondering what pleasures your next visit may bring.";
	else:
		say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. Shutting the barely functional latch on the door, you [SelfStripCrotch], then step up to the hole. Pressed against the flimsy wall, you wait with trepidation and increasing arousal for someone to enter the adjacent stall.";
		say "     .";
		say "     ..";
		say "     ...";
		say "     ....";
		say "     .....";
		say "     ......";
		WaitLineBreak;
		say "     Although your pussy is wet with excitement, you're starting to lose hope of anonymously getting your bean flicked when suddenly someone enters the bathroom and the stall next to yours. Two knocks at the wall means they're ready to receive. With some trepidation press your pelvis against the hole, where the warm waiting mouth of the stranger next door is ready for you. A sharp intake of breath is all the indication they need to start licking, and boy are they enthusiastic about it! Two fingers press inside your slick passage as the skillful tongue explores your engorged clitoris locked between the strangers' lips. Moans of delight mirror your own, exciting you even more with the knowledge that the stranger in the next cubicle gets as much enjoyment from this depraved act as you do. Your hands grip tightly at the top of the cubicle walls, knuckles whitening as you fight to hold back the explosion that has been building in the base of your groin.";
		say "      The muff-diver on the other side is only becoming more eager to give you release, as evidenced by the expert ministrations of their tongue as it slips through the folds of your labia to lick at your twitching hole. The groaning from next door reaches its peak and you realise that your eager partner has just cum. This is confirmed by the ropes of jizz that erupt from the partition to cover your feet and ankles in a gloriously sticky white mess. The sensations become too much for you to hold back any more and, knees quaking with ecstatic frenzy, you explode into the eagerly sucking mouth. Your hips crash against the wall trying to force the geyser like eruptions of pleasure to drench your partners face. Throughout your release the eager slut in the next stall doesn't spill a drop of your honey-like femcum, instead relishing every small eruption of ejaculate in their mouth and swallowing eagerly.";
		WaitLineBreak;
		say "     Knees still shaking slightly from the aftershock of your orgasm, you can't help but be a little sad when you feel your partners tongue slide silkily along your sopping wet slit and kiss the twitching tip of your clit before standing to leave the bathroom. You [SelfDressCrotch], then exit the bathroom, wondering what pleasures your next visit may bring.";

to say GholeGiverScene1:
	if player is male: [male + herm] 
		say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. Shutting the barely functional latch on the door, you [SelfStripCrotch], then step up to the hole. Pressed against the flimsy wall, you wait with trepidation and increasing arousal for someone to enter the adjacent stall. The vulnerability of the position excites you, even more so when you hear the adjacent door open, followed by a feminine gasp. For a few strained seconds you wait, holding your breath for what you hope is to come. Suddenly someone's fingers are gingerly stoking your cock, as if to test whether or not it is real. The hands are gentle, almost loving in their exploration of your turgid member. Sounds of breathing reach your ears. Deep breaths. Excited breaths.";
		say "     Whoever it is lets go of your dick before you hear them getting undressed. Your rock-hard cock is hot with anticipation and must surely be leaking with excitement. Once more you feel the grip on your manhood, and for the first time you notice the hands are furry. So you have a horny anthro on the other side. You hope she's looking for a damn good rutting. Your wish is soon granted when you feel a humid warmth descend on your groaning pole. The velvety sheath of a woman's eager cunt envelops you, and you look down to watch her hips bottom out against your twitching balls. Her fur is white and black, a Husky perhaps? It doesn't really matter anyway, you simply bask in the heat of her loins - a willing female, eager to be bred.";
		WaitLineBreak;
		say "     The horny bitch slides her slick walls up your shaft and you can see how wet she is by the thick layer of drool dripping from your naked breeding tool. The air is cold upon your rod, but the anthro quickly descends once more, impaling herself eagerly on what she hopes is a virile partner. Again and again she slams her twitching fuck tunnel against the stall walls, trying her damnedest to take you as deep as possible. You find yourself unable to remain a passive participant in this decadent act, and soon your hips are moving in sync with hers, trying desperately to bury yourself in the deepest part of her. A haze fills your mind and you become aware of the smell of honey and flowers, of cookies baking and lovers mating. She's in heat you realize, and now you couldn't stop if you wanted to.";
		say "     You roar in ecstasy as your climax approaches, hearing her jubilant cries meet yours in the crescendo of your pleasure. Powerful jets of semen erupt inside her as you press you rock hard cock right against her cervical opening, forcing streams of your hot cum right into her most fertile of places as her hips continue to pound against your pelvis. It feels as if you have completely emptied yourself. As your orgasm dies down you become aware that the haze in your mind hasn't lifted, and the bitch hasn't stopped fucking you. The powerful aphrodisiac of her heat has kept your painfully sensitive tool iron-hard and erect. Crying out in agony and ecstasy, your hips start to move as if they had a mind of their own. No longer in control of your own actions you can only watch in amazement as your pelvis slams into her sopping channel. Suddenly you're cumming again, crying an agonised cry into the bathroom as your cum fills her once more. To your horror your hips won't stop moving.";
		WaitLineBreak;
		say "     Your cock looks angry and raw, but you partner needs to be sure your seed will take and does not let up. Tears form in your eyes, though you aren't sure if it's because of the pleasure or hyper-sensitivity of your abused pecker. Having cum only moments before, it feels like an eternity before your reserves have built up once again - by which time you are a quivering wreck held up only by some primal instinct. A lust-filled rage consumes your primitive brain as your hips slam into the hole over and over. The stall barrier has begun to groan and crack, and you can hear yelps of either pleasure or pain from you partner, though you don't care which. Red spots form at the edge of your vision as the final orgasm wracks your body. Both you and your partner release an animalistic howl that you are sure can be heard by the entire mall. In the back of your mind you are amazed that are almost able to cum as much as you did the first time. You have packed her cunt so full of jizz it has started to spurt out around the sides of your raw pistoning cock.";
		say "     Just like that it is over. The haze lifts from your mind and your legs give out, leaving you to crash to the filthy cum and drool splattered floor, where you pass out from exhaustion. You wake up some hours later cold and naked. As you gather your belongings and what's left of your dignity, your primitive brain leaves you with one final thought - 'I bet I got that bitch pregnant!'";
	else:
		say "     You stand around at the hole for some time but sadly no one enters to pleasure you.";

to say GholeFuckCollie:
	if cunts of player > 0:
		if anallevel is 3 and a random chance of 1 in 2 succeeds: [more anal active, 50% chance]
			say "     <Player ass-fucked by Shemale Smooth Collie>";
		else: 
			say "     <Player pussy-fucked by Shemale Smooth Collie>";
	else:
		say "     <Player ass-fucked by Shemale Smooth Collie>";
		
to say GholeFuckBehemoth: 
	if cunts of player > 0:
		if anallevel is 3 and a random chance of 1 in 2 succeeds: [more anal active, 50% chance]
			say "     <Player ass-fucked by Behemoth>";
		else: 
			say "     <Player pussy-fucked by Behemoth>";
	else:
		say "     <Player ass-fucked by Behemoth>";
		
to say GholeFuckGryphon:
	if cunts of player > 0:
		if anallevel is 3 and a random chance of 1 in 2 succeeds: [more anal active, 50% chance]
			say "     <Player ass-fucked by Blue Gryphon>";
		else: 
			say "     <Player pussy-fucked by Blue Gryphon>";
	else:
		say "     <Player ass-fucked by Blue Gryphon>";
		
to say GholeFuckHyena:
	if cunts of player > 0:
		if anallevel is 3 and a random chance of 1 in 2 succeeds: [more anal active, 50% chance]
			say "     <Player ass-fucked by Herm Hyena>";
		else: 
			say "     <Player pussy-fucked by Herm Hyena>";
	else:
		say "     <Player ass-fucked by Herm Hyena>";

to say GholeBJDog:
	say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. After shutting the barely functional latch on the door, it isn't long before someone enters. You kneel down on the grimy floor and knock twice at the hole, signalling you willingness to receive. There is some shuffling and moving about as your partner readies themselves. Your heart is beating in your chest, and you are eager to see what kind of dick you'll be sucking today. Through the hole comes a glistening canine pecker. It's veined shaft and throbbing girth look so inviting, and you lick your lips in anticipation of what it will taste like. It must belong to a shemale collie, or perhaps one of the German Shepherd or husky morphs, you don't really care either way so long as you get to suck on it. It twitches slightly and seems to throb with excitement as your stare. A small drop of pre leaks from the tip.";
	say "     A rumbling growl of frustration comes from your anonymous partner and you realise you've just been staring at the moist doggy pecker in admiration for a number of seconds now. Clearing your throat, you bring your head closer and lick your lips eagerly. You close your eyes to savour the first taste of canine cock as your lips slip over the pointed tip and, with a groan of delight, relish the first squirt of salty precum over your eager tongue. The anthro in the adjacent stall moans in pleasure as your eager, willing lips slide down its shaft and kiss the top of the slowly expanding knot. Another glut of pre squirts down your throat, clearly this is a virile partner. Taking a breath in through your nose you begin to suck the hot cock in your mouth with gusto, lapping eagerly at the pointed tip as the urethra leeks its excitement into your wet hole. The liquid lust mixes with your saliva to create a slick lube by which you are able to rapidly throat the hot veiny muscle down your gullet and back into your mouth over and over.";
	WaitLineBreak;
	say "     No longer able to contain your own excitement at this depraved situation, you shove your hand into your under-clothes and begin to rub yourself, eager to cum when your partner cums. The anthro you are so effectively pleasing is struggling to maintain its composure and has started thrusting vigorously into your wet fuck hole. You continue to pleasure yourself as your mouth pleasures your partner, the familiar sensation at the base of your spine signalling the imminent arrival of a powerful orgasm.";
	say "     Scraping sounds can be heard from the next cubicle as your partner rakes his or her claws against the cheap divider. They are seconds away from release. As the canine morph pushes hard down your throat you reach up with your free hand to catch the hot dog cock just behind the not-yet-expanded knot. Gripping tightly, the anthro is no longer able to pull out and the knot balloons in your hand. A howl of pleasure fills the bathroom and you feel the first powerful squirt of semen pump through the member and into your waiting mouth. The thick musk and salty flavour of the beast overwhelms your senses and you thrust the pulsating rod deep into your gullet, allowing the stranger to cum straight down your throat.";
	WaitLineBreak;
	say "     Reaching your peak as a result of this delightfully debauched situation, you drench your bottoms as your own powerful orgasm takes you. Shaking and convulsing, you almost forget about the thick doggie cock resting in your throat, powerfully squirting ropes of cum into your hungry stomach. The knot held steady by your hand has swollen so much, it can no longer be removed from the hole. The pulsing pole in your mouth eventually slows to the occasional twitch and spurt, so you pull back until the tip is just resting in your mouth.";
	say "     You are patient with your trapped companion, allowing the knot to slowly deflate while you continue to suckle at the still-squirting cock head. After a quarter hour or so the knot deflates enough to be pulled out. With a final kiss on the softening tip, you bid farewell to your companion as you quickly and quietly exit the bathroom.";

to say GholeBJHorse:
	say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. After shutting the barely functional latch on the door, it isn't long before someone enters. You kneel down on the grimy floor and knock twice at the hole, signalling you willingness to receive. There is some shuffling and moving about as your partner readies themselves. Your heart is beating in your chest, and you are eager to see what kind of dick you'll be sucking today. The hole is a large one and you easily peek through to see a large stallion-morph on the other side. He glances down, catching your eye and grinning he says, 'I hope you're able to handle me in that little mouth of yours.' You gasp as his three-inch-thick cock slides out of his sheath and just keeps coming. A foot of mottled pink and black equine power passes through the hole, not including the medial ring. It isn't even hard yet. 'Get to it glory-whore!' Comes a commanding whinny from the adjacent stall.";
	say "     Obediently you grab the moist horse cock in both hands and bring the glistening head to your mouth. Your throat is dry as a result of your nervousness but you know how you can wet it. Your tongue darts out and licks at the coin sized urethral hole, earning an appreciative grunt from your partner. Salty equine precum is your reward, and you use it to slick your lips before opening wide and pushing the girthy head into your tight mouth. The horseman stamps his hooves and his thighs shiver reflexively. 'Good job slut, now see how you deep you can go.' With your throat still slightly dry you are unsure whether or not you could take his full length yet. Instead you work your tongue over the flat face of the hardening rod in your mouth. It might be a good idea to get some lube down your gullet before-hand. Another grunt and a pleasured whinny greets your ears as the liquid lust starts to flow from the stallion, filling your mouth over and over as you eagerly slake your thirst on horse pre.";
	WaitLineBreak;
	say "     'Your throat must be pretty slick by now, take it!' The commanding tone of the powerful stallion is difficult to disobey, so you don't. Inhaling deeply, you push forward on his now iron-hard cock. You manage to take it to your throat easily, but the now comes the difficult part. Deciding the best course of action is to trick your body into taking it, you swallow and push hard at the same time. Forcing your throat to open and accept the girthy member is rough going and you are thankful for the slick layer of pre coating your gullet. The stallion grunts appreciatively and you can't help but feel a little bit proud of yourself. 'Halfway there sweet-cheeks,' teases your gloryhole friend. Opening your eyes, you see he is right. Half of his cock is still exposed to the cold air, so you bring your hands up to stroke and rub his remaining length. Gently you move your mouth back down his shaft and up again, all the while stroking and milking copious amounts of precum from his massive testicles.";
	say "     You close your eyes and enjoy the slightly uncomfortable sensation of his broad head massaging your oesophagus from the inside out. With each trip back up his shaft, you manage to take a little bit more of the immense animal cock into your throat. Each time just a little bit deeper. Before long, your lips pass over the medial ring effortlessly and you're dimly aware that you have taken the full length of his impressive member down your willing throat. The smooth motion of taking the cock from the tip to the base and back again becomes almost meditative. Your movements are constant, and trance-like - almost mechanical in nature. It feels like this was something you were born to do and do well!";
	WaitLineBreak;
	say "     A whinny of pleasure breaks you from your revelry, and your dominant equine partner sees fit to compliment your skills. 'Gods above no one has ever managed to take all of me slut, you have a most impressive technique!' Your cheeks flush with pride at his compliment and you increase your pace, pushing your face harder and faster along the length of his rock-hard sex, eager to bring the powerful male to an explosive climax! The horse man's grunting and whinnying becomes more erratic and laboured, he is stamping his hooves and rutting hard against the groaning stall barrier. With a triumphant shout he pushes hard into your throat as you force yourself all the way to his base. An unusual sensation around your diaphragm calls your attention to his expanding flare. The pressure inside you feels like a dessert plate has just sprung into existence in your stomach and it occurs to you that his flare has just trapped a fire-hose inside you.";
	say "     Your eyes bulge as you feel liquid heat expand his urethral tube and rocket down his flare-locked ramrod to explode into your stomach. The first wave almost fills your belly. The second through eighth leave you gravid - positively full-term pregnant! Your stomach aches and grumbles loudly, protesting the lack of available space from so much cum being pumped into it. Thankfully the stallion seems to have reached his limit after the thirteenth or fourteenth squirt. The flare shrinks enough to be pulled up and out of your throat, and your new friend is generous enough to leave you a taste of his equine issue in your mouth as he pops free. Falling back on your haunches you admire your swollen belly. It is a reminder of what you can achieve with hard work and dedication. The stallion praises your efforts, telling you that you make a fantastic cum dumpster. You're still smiling from his approval as you waddle out of the stalls, proud that not a single drop of his mighty seed was spilled.";

to say GholeBJMichael:
	if MichaelGholeMeetings is 0: [first time]
		say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. After shutting the barely functional latch on the door, it isn't long before someone enters. You kneel down on the grimy floor and knock twice at the hole, signalling you willingness to receive. There is some shuffling and moving about as your partner readies themselves. Your heart is beating in your chest, and you are eager to see what kind of dick you'll be sucking today. 'Uh hi.' You hear from the adjacent box. 'Is ummm, is th-this wh-wh-where I c-can get a uhhh, a job thing... A b-b-b-blowjob that is?' Looking through the hole in the wall, you can see a very nervous looking naked mall rat fondling what you are pleased to see is a rather impressively sized cock. The nervousness of the stuttering rat is rather endearing, and you confidently assure him that this is indeed the purpose of a gloryhole. 'Oh r-r-right, I mean, of c-c-course, of c-course it is.'";
		say "     There is a pause before he anxiously asks, 'Is ummm... That is t-to say, d-d-d-d'you... W-W-Would you like to uhh su-su-su-su...' 'Suck your cock?' you finish for him, before assuring him that you would very much like to suck his cock. 'Really!? Oh g-g-great!' He exclaims before eagerly pushing his tasty-looking man meat through the hole. It is of above average size, reaching an impressive nine inches long with a two-inch girth. Gripping the twitching pink length in your hand, you smile to hear your fretful partners sharp intake of breath. You begin to gently stroke his cock, eliciting a moan from the other side. The shaky rat releases a generous amount of precum, which you use to add slickness to the rock-hard pole in your hand, before descending to take the whole member into your mouth in one smooth motion.";
		WaitLineBreak;
		say "     Your ratty partner gasps at the sudden pleasurable sensation of your mouth enveloping him and, seeming to gain some confidence, starts to hump his cock in and out of your willing mouth. 'O-oh y-yes that f-f-feels s-so g-goooood!' He moans as he thrusts into your cock holster. Using your tongue, you apply your expert ministrations to his slickened rod, causing the rodent to groan with pleasure each time your skilled muscle slides along his vas deferens or over his sensitive helmet. 'Your mouth f-feels so f-f-fucking good, p-please don't stop!' You are almost shocked to hear the timid rodent swear, but it only makes him that much more charming and so you try harder to make this the best blowjob he will ever have. The very eager rat is humping harder and faster into your mouth, his breathing has become fast and you can hear his tail thrashing about behind him. He is about to cum.";
		say "     Sucking hard and deep as your tongue goes to town on his urethra is all it takes to send him over the edge. His hips lurch forward pushing his twitching cock towards your throat. 'Oh fuck here it comes! Drink it! DRINK IT!' He shouts, filling the bathroom with his cries of ecstasy. Your eyes go wide as your cheeks bulge with his copious issue, swallowing quickly as another squirt fills your mouth, followed by another and another. Some of his sweet semen spills out past your lips to dribble down over your chin and chest, there is just so much. You realise he is shaking as you remove his sloppy rat dick from your mouth, only to get one last shot to the face. 'Gods I am s-so s-s-sorry!' He stammers, 'I-I-I j-j-just don't know w-what c-c-came over me, it was j-just so g-good!'";
		WaitLineBreak;
		say "     Through all his stuttering and apologising you manage to assure him that you really enjoyed it and are actually quite pleased he was able to let loose like he did. He continues to thank you multiple times as he gets dressed. Before he leaves he bends down to the hole and whispers, 'I kn-kn-know this is s-s-supposed to be an-an-an-anonymous and all b-but... M-M-M-Michael, m-my name is M-Michael.' You wonder whether you'll see Michael again.";
		now MichaelGholeMeetings is 1;
	else if MichaelGholeMeetings is 1: [repeat]
		say "     ...";

to say GholeBJNaga:
	if player is male: [male + herm]
		say "     The bathrooms are quiet at the moment and you're sure no one saw you enter. After shutting the barely functional latch on the door, it isn't long before someone enters. You kneel down on the grimy floor and knock twice at the hole, signalling you willingness to receive. There is some shuffling and moving about as your partner readies themselves. Your heart is beating in your chest, and you are eager to see what kind of dick you'll be sucking today. A musky familiar smell fills your nostrils as you wait eagerly for something to come through the hole. It is one of the bigger gloryholes and you're about to steal a peek at your stall partner when the glistening scaly cloaca of a naga appears pressed against the opening. 'Lick me pleassse' comes the eager plea from the adjacent booth. Not one to keep your public waiting, you press your lips eagerly against her wet cloaca.";
		say "     The naga hisses in pleasured bliss as your tongue slides inside the sweet canal and laps eagerly at her flowing juices. He powerful scaled body presses against the stall walls trying to give you more access to her most tender of places. You in turn try your best to please the scaly woman with your tongue, delving deep in repetitive strokes before lapping gently at her outer opening. Her cloaca has become red and engorged with arousal. 'Pleassse.' You hear her ask, 'Let me insssside witttth you.'";
		say "     [bold type]Do you want to let the lusty reptile join you in your stall?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let her join you.";
		say "     ([link]N[as]n[end link]) - Refuse.";
		if player consents:
			LineBreak;
			say "     Excitedly you tell her you'd love for her to join you, and you move back to sit on the toilet. With an elated hiss the snake woman presses her beautiful head through the hole and begins to slither into your cramped little bathroom stall. You watch with amazement as her body contracts and shifts to allow her reptilian bulk through such a relatively small opening. It is with some trepidation that watch her uncoil before you, realising just how built this naga really is. Her tail must be fifteen long alone. She towers over you in this cramped space - hanging onto either side of the stall walls as she brings her dripping cloaca to your face once more.";
			say "     'Thank you my ssssssweet, now where were weeee?' She says before bearing her sex down upon your face. Once more you are licking at her swollen opening. The reptile tastes sweet, but there is a salty familiarity in her sex too, though you ignore it because you are eager to please. The scaled beastess gyrates powerfully against you, mashing her slick cloaca against your face in her pleasure. The reptilian tail uncoils under and thrashes wildly in the stall, almost uncontrolled. Suddenly she backs off your face, heaving and breathing hard. You can see her cloaca is pulsating, letting off rivulets of snake oil in its eagerness to be pleasured. 'My sssweet playmate.' She hisses, grinning down at you with her beautiful eyes 'Perhapsssss you would like sssome pleassssure of your own?' It occurs to you that she could hypnotise you if she wanted, but she isn't doing so. Perhaps she prefers a willing partner.";
			LineBreak;
			say "     [bold type]This amorous reptile clearly wants to step it up a notch. Will you take her up on the offer?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Let her ride your cock.";
			say "     [link](2)[as]2[end link] - Let her shove that scaly tail deep inside you. ([italic type]Extreme Content Warning[roman type])";
			say "     [link](3)[as]3[end link] - Refuse.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to fuck her, [link]2[end link] to be tail-fucked or [link]3[end link] to refuse.";
			if calcnumber is 1: 
				LineBreak;
				say "     You quickly undress, exposing your erect cock and indicating that you want her to ride you. The horny beastess doesn't need asking twice, and lowers her dripping hot cloaca onto your eager fuck-stick. 'Yessss my ssssweeeet.' She groans as her love channel undulates and shifts to hug your cock tightly in it's velvety embrace, before the muscled reptilian woman begins to rhythmically fuck herself with your dick. The naga's motions are fluid and constant, just like her cloaca which shifts and squeezes your thick rod in a way you didn't think possible for a living creature. Such control is unheard of in any other of your partners. You are a slave to her pleasure, not needing to move or thrust or adjust yourself in any way. This lithe reptile predicts every move, and it isn't long before you are both moaning in sweet ecstasy. The naga's tail continues thrashing behind her, more wildly than before - An indicator of her approaching orgasm, as well as yours.";
				say "     Your orgasm comes first as the reptilian channel enveloping your cock grips tightly around your pulsating manhood, seeming to suck the cum from your very balls. No sound exits your mouth as no sound can best vocalise this climax. Your face is set in a silent scream - a picture of bliss. The naga isn't far behind - gripping the stalls in her powerful arms she presses her bulk tightly against your spasming form, a gush of juices splashing against your pelvis, hissing as she rides out her own ecstasy. She collapses into a coiled heap as you both catch your breath, before slipping away under the door. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
			else if calcnumber is 2: 
				LineBreak;
				say "     You look at the snake woman's powerful tail. Thin at the tip, but gradually growing in girth until it becomes her torso. A blush fills your cheeks and you bite your lower lip, imagining what it would feel like to have it penetrate you, wondering how much of it you could take. The naga follows your gaze to her tail, understanding dawning upon her sublime features. 'Oh that is precioussss my sssssweeet.' She smiles sweetly, 'It will feel ssssssoooo good yessssss?' Nodding and still blushing scarlet, you remove your clothes and scoot down so your ass hangs off the toilet seat. The powerful appendage has ceased thrashing in its uncontrolled expression of pleasure and moves its tip to rest against your clenching asshole, pressing only ever so slightly. 'Are you ready for thissssss?' your scaled lover asks. You are ready for it and you press your ass against the pressure of her tail tip, feeling its smooth scales slide easily into your anus.";
				say "     You open your mouth to moan only to find it filled with wet cloaca once more. So you begin to work at it again, eager to provide the naga with as much pleasure as you hope she will give you. The armoured tail slips deeper into your rectum, moving rhythmically out then back in faster than it left. Each new thrust sends it a little bit deeper, each new thrust stretches you a little bit wider. Your mouth works its magic on the dripping sex at your lips, causing your lover to bear down on your face in her excitement. The tail in your ass presses hard against your prostate and fountain of cum erupts from your neglected cock, though you didn't orgasm. Your slick salty fluid drips down moisten the tail in your tail hole. She does it again and you grunt in her cloaca from the pleasure. Again and again she milks cum from your prostate, each time slickening the scaly appendage that seeks to bury itself inside you. When she thinks she has enough cum lube she resumes her violation of your tender rear.";
				WaitLineBreak;
				say "     With each thrust you give as good as you get using your oral expertise. You are however struggling to maintain focus as you feel her tail enter your lower colon, pressing still deeper. There must be about a foot at least inside you. The naga beastess is clearly enjoying it all. With each thrust into your rear she moans, and with each lick of the reptilian cloaca she gives a hiss of delight. Still the tail presses further, widening your asshole even more. You can feel its scaly tip penetrate deeper inside you, probing and feeling its way into the deepest recesses of your colon. 'You are sssssoooo warm insssssside my sssssweet!' She hisses in admiration, 'I wisssssssshhhhh I could jusssssst curl up insssssside you!' It feels like she's trying to do just that as she pushes her wriggling appendage even deeper. Your asshole feels as if it's been stretched open by a fist, she must be three feet deep by now.";
				say "     Still you focus on the task at hand, though it's getting more difficult, you maintain a constant rhythm and you know she must be getting close. However, as the snake becomes more excited, so does the tail become more erratic. The naga is becoming less focused the closer she draws to orgasm. You gasp as you feel the writhing appendage shove itself a foot deeper inside you, the sudden intrusion stretching you even wider. The snake woman seems to have forgotten your tongue is even there, choosing instead to press her bulging wet opening against your flustered face, grinding against you. The tail seems to have a mind of its own and you are thankful when you feel it slide out almost to the tip, only cry out in surprise as five feet of armoured tail shoot up into your ass, twisting to match the shape of your colon as it penetrates you deeper than anything has before.";
				WaitLineBreak;
				say "     Your reaction to being impaled goes unnoticed as the naga reaches a rutting frenzy on your sopping wet face. Her tail trashes inside your ass. Your legs are up off the ground, wide open to accommodate what feels like the girth of an arm inside you. The appendage thrashing inside you is holding you up and pushes deeper still. You move your hands to your abdomen, feeling the writhing tail find its way into your stomach. It is all too much and you cum, powerfully, although you barely notice it with all the other sensations vying for attention - your destroyed asshole, your lack of air, your writhing abdomen. Finally, mercifully, the ecstatic reptile cums screaming as she does so, drenching your face in her lust before slumping back against the door - tail still lodged deep in your ass though thankfully it no longer moves.";
				say "     You glance down at your belly which still writhes gently though the sensation is not entirely un-pleasurable. The girth of tail at your ass is so broad you are forced to hold your legs apart as if you were in stirrups.  The naga finally catches her breath and opens her eyes to see you impaled on nearly half her body. 'Sssssssssso sssssorry my dear, I sssseem to have gotten carried away.' Slowly, deliberately you're sure, the scaled appendage is withdrawn from your asshole. Your eyes gape in amazement. The thickest part was as wide around as your thigh. One foot, two feet - you feel the tip slip out of your stomach - three feet, four, five, six, seven! Seven feet of tail buried inside you. It feels as though a new highway has been built inside your colon, and the gape hasn't yet closed.";
				WaitLineBreak;
				say "     'You'll be okay yessssss?' she asks with genuine concern. You nod your head, grateful for the restorative nature of the nanites. She smiles before slipping away under the door. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
			else:
				LineBreak;
				say "     You politely decline her offer, saying instead that you prefer to focus on her. Dutifully you return to lapping at her pulsating sex, and soon her thrusting becomes more insistent as she approaches her orgasm. The sultry snake rhythmically grinds her pelvis into your face, erupting a sweet and salty nectar into your mouth, which you swallow eagerly. She collapses into a coiled heap as you both catch your breath, before slipping away under the door. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
		else:
			LineBreak;
			say "     You apologise, insisting you prefer the anonymity. 'I undersssstand,' She hisses, 'Now lick deeper!' Dutifully you return to lapping at her pulsating sex, amazed by how wet it is, and salty in a familiar way. Her thrusting becomes more insistent as she reaches her orgasm, shuddering against the opening and erupting a sweet and salty nectar into your mouth, which you swallow eagerly. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
	else:
		say "     A musky familiar smell fills your nostrils as you wait eagerly for something to come through the hole. It is one of the bigger gloryholes and you're about to steal a peek at your stall partner when the glistening scaly cloaca of a naga appears pressed against the opening. 'Lick me pleassse' comes the eager plea from the adjacent booth. Not one to keep your public waiting, you press your lips eagerly against her wet cloaca.";
		say "     The naga hisses in pleasured bliss as your tongue slides inside the sweet canal and laps eagerly at her flowing juices. He powerful scaled body presses against the stall walls trying to give you more access to her most tender of places. You in turn try your best to please the scaly woman with your tongue, delving deep in repetitive strokes before lapping gently at her outer opening. Her cloaca has become red and engorged with arousal. 'Pleassse.' You hear her ask, 'Let me insssside witttth you.'";
		say "     [bold type]Do you want to let the lusty reptile join you in your stall?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Let her join you.";
		say "     ([link]N[as]n[end link]) - Refuse.";
		if player consents:
			LineBreak;
			say "     Excitedly you tell her you'd love for her to join you, and you move back to sit on the toilet. With an elated hiss the snake woman presses her beautiful head through the hole and begins to slither into your cramped little bathroom stall. You watch with amazement as her body contracts and shifts to allow her reptilian bulk through such a relatively small opening. It is with some trepidation that watch her uncoil before you, realising just how built this naga really is. Her tail must be fifteen long alone. She towers over you in this cramped space - hanging onto either side of the stall walls as she brings her dripping cloaca to your face once more. 'Thank you my ssssssweet, now where were weeee?' She says before bearing her sex down upon your face. Once more you are licking at her swollen opening.";
			say "      The reptile tastes sweet, but there is a salty familiarity in her sex too, though you ignore it because you are eager to please. The scaled beastess gyrates powerfully against you, mashing her slick cloaca against your face in her pleasure. The reptilian tail uncoils under and thrashes wildly in the stall, almost uncontrolled. Suddenly she backs off your face, heaving and breathing hard. You can see her cloaca is pulsating, letting off rivulets of snake oil in its eagerness to be pleasured. 'My sssweet playmate.' She hisses, grinning down at you with her beautiful eyes 'Perhapsssss you would like sssome pleassssure of your own?' It occurs to you that she could hypnotise you if she wanted, but she isn't doing so. Perhaps she prefers a willing partner.";
			LineBreak;
			say "     [bold type]This amorous reptile clearly wants to step it up a notch. Will you take her up on the offer?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Let her grind against your wet cunt.";
			say "     [link](2)[as]2[end link] - Let her shove that scaly tail deep inside you. ([italic type]Extreme Content Warning[roman type])";
			say "     [link](3)[as]3[end link] - Refuse.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to grind with her, [link]2[end link] to get a tail fuck or [link]3[end link] to refuse.";
			if calcnumber is 1: 
				LineBreak;
				say "     You quickly undress, spreading your legs wide and exposing your sopping cunt. The horny beastess doesn't need further instructions and pushes her dripping hot cloaca against your leaking pussy. 'Yessss my ssssweeeet.' She groans as her love channel undulates and seemingly sucks at your soft labia, before beginning to rhythmically gyrate against your slick pelvis. The naga's motions are fluid and constant, just like her cloaca which shifts and squeezes your labia and clit in a way you didn't think possible for a living creature. Such control is unheard of in any other of your partners. You are a slave to her pleasure, not needing to move or thrust or adjust yourself in any way. This lithe reptile predicts every move, and it isn't long before you are both moaning in sweet ecstasy. The naga's tail continues thrashing behind her, more wildly than before - A indicator of her approaching orgasm, as well as yours.";
				say "     Your orgasm comes first as the reptilian woman grinds and manipulated your love button with the most unfathomable skill. No sound exits your mouth as no sound can best vocalise this climax. Your face is set in a silent scream - a picture of bliss as the only sound is of the shaking stall and gushing fluids spilling from your sensitive cunt. The naga isn't far behind - gripping the stalls in her powerful arms she presses her bulk tightly against your spasming form, a gush of juices splashing against your pelvis, hissing as she rides out her own ecstasy. She collapses into a coiled heap as you both catch your breath, before slipping away under the door. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
			else if calcnumber is 2: 
				LineBreak;
				say "     You look at the snake woman's powerful tail. Thin at the tip, but gradually growing in girth until it becomes her torso. A blush fills your cheeks and you bite your lower lip, imagining what it would feel like to have it penetrate you, wondering how much of it you could take. The naga follows your gaze to her tail, understanding dawning upon her sublime features. 'Oh that is precioussss my sssssweeet.' She smiles sweetly, 'It will feel ssssssoooo good yessssss?' Nodding and still blushing scarlet, you remove your clothes and scoot down so your ass hangs off the toilet seat. The powerful appendage has ceased thrashing in its uncontrolled expression of pleasure and moves its tip to rest against your glistening love channel, pressing only ever so slightly. 'Are you ready for thissssss?' Your scaled lover asks. You are ready for it and you press your pelvis against the pressure of her tail tip, feeling its smooth scales slide easily into your vagina.";
				say "     You open your mouth to moan only to find it filled with wet cloaca once more. So you begin to work at it again, eager to provide the naga with as much pleasure as you hope she will give you. The armoured tail slips deeper into your love channel, moving rhythmically out then back in faster than it left. Each new thrust sends it a little bit deeper, each new thrust stretches you a little bit wider. Your mouth works its magic on the dripping sex at your lips, causing your lover to bear down on your face in her excitement. The tail in your cunt presses hard against your g-spot and glut of femcum erupts from your urethra, though you didn't orgasm. Your slick salty fluid drips down moisten the tail in your hole. She does it again and you grunt in her cloaca from the pleasure. Again and again she milks ejaculate from your abused love spot, each time slickening the scaly appendage that seeks to bury itself inside you. When she thinks she has enough cum lube she resumes her violation of your tender lips.";
				WaitLineBreak;
				say "     With each thrust you give as good as you get using your oral expertise. You are however struggling to maintain focus as you feel her tail bend double inside your stretched tunnel, pressing still deeper. There must be about a foot at least inside you. The naga beastess is clearly enjoying it all. With each thrust into your sopping cunt she moans, and with each lick of the reptilian cloaca she gives a hiss of delight. Still the tail presses further, stretching your vaginal opening even more. Suddenly you feel its scaly tip press against your cervix probing and feeling its way into the deepest recesses of your sex. 'You are sssssoooo warm insssssside my sssssweet!' She hisses in admiration, 'I wisssssssshhhhh I could jusssssst curl up insssssside you!' It feels like she's trying to do just that as she pushes her wriggling appendage against your cervical opening stretching it open. Your vagina feels like it's being fisted, with that fist trying to push a finger into your cervix.";
				say "     Still you focus on the task at hand, though it's getting more difficult. However, as the snake becomes more excited, so does the tail become more erratic. The naga is becoming less focused the closer she draws to orgasm. You gasp as you feel the writhing appendage shove itself deeper inside you, the sudden intrusion stretching your cervix even wider. The snake woman seems to have forgotten your tongue is even there, choosing instead to press her bulging wet opening against your flustered face, grinding against you. The tail seems to have a mind of its own and you are thankful when you feel it slide out almost to the tip, only cry out in surprise as it shoots back inside, eager to open up your most intimate of places.";
				WaitLineBreak;
				say "     Your reaction to being impaled goes unnoticed as the naga reaches a rutting frenzy on your sopping wet face. Her tail trashes inside your abused hole. Your legs are up off the ground, wide open to accommodate what feels like the girth of an arm inside you. The appendage thrashing inside you is holding you up and pushes deeper still. It is all too much and you cum, powerfully, blacking out briefly as a result of the intense stimulation. Finally, mercifully, the ecstatic reptile cums screaming as she does so, drenching your face in her lust before slumping back against the door - tail still lodged in your pussy though thankfully it no longer moves. You glance down at your abdomen which still writhes gently though the sensation is not entirely un-pleasurable. The girth of tail in your vadge is so broad you are forced to hold your legs apart as if you were in stirrups.";
				say "     The naga finally catches her breath and opens her eyes to see you stuffed with her wriggling tail. 'Sssssssssso sssssorry my dear, I sssseem to have gotten carried away.' Slowly, deliberately you're sure, the scaled appendage is withdrawn from you, leaving a gaping pussy and really sore uterus. You imagine it would be possible for an average girth cock to actually penetrate your cervix at this width, though you hope it rights itself. 'You'll be okay yessssss?' she asks with genuine concern. You nod your head, grateful for the restorative nature of the nanites. She smiles before slipping away under the door. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
			else: 
				LineBreak;
				say "     You politely decline her offer, saying instead that you prefer to focus on her. Dutifully you return to lapping at her pulsating sex, and soon her thrusting becomes more insistent as she approaches her orgasm. The sultry snake rhythmically grinds her pelvis into your face, erupting a sweet and salty nectar into your mouth, which you swallow eagerly. She collapses into a coiled heap as you both catch your breath, before slipping away under the door. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";
		else:
			LineBreak;
			say "     You apologise, insisting you prefer the anonymity. 'I undersssstand,' She hisses, 'Now lick deeper!' Dutifully you return to lapping at her pulsating sex, amazed by how wet it is, and salty in a familiar way. Her thrusting becomes more insistent as she reaches her orgasm, shuddering against the opening and erupting a sweet and salty nectar into your mouth, which you swallow eagerly. 'Thanksssss amigo!' She says before slithering back down to her sewers. What a friendly naga, you think to yourself.";

Gloryhole ends here.