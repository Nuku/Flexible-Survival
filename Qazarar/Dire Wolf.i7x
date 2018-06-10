Version 1 of Dire Wolf by Qazarar begins here.

Section 1 - Monster Responses

to say DireWolfLoss: [IN PROGRESS]
	now wolffight is 2; [lost]
	if inasituation is true: [special event]
		say ""; [dealt with in the file where the event is described]
	else: [regular scene]
		say "     You collapse to the ground, defeated by the massive canine. The beast stands over you, growling loudly, the expression clearly demanding that you submit to him. At the mercy of the powerful wolf, you have no choice but to roll over and let him decide what to do with you.";
		[if cunts of player > 0 and ((anallevel is 3 and a random chance of 1 in 3 succeeds) or (anallevel < 3 and a random chance of 1 in 2 succeeds)):
			say "     <vaginal scene>";
		else if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds) or ("Mpreg" is listed in feats of player and a random chance of 1 in 5 succeeds)):
			say "     <anal scene>";
		else: [add knotting variation for repeat scenes later]]
		say "     The wolf looming over you nudges you with his muzzle, lifting you onto all fours. Once he has you exactly where he wants you, he steps into position above you, putting his massive canine cocks at eye level, merely inches away from your face. A quick jerk of his pelvis brings them even closer, the twin tips resting against your face. Without waiting at all, the wolf starts to press forward, the tip of the lower dick easily forcing it's way between your lips. The steady pressure pushes the fat shaft even further into your mouth, stretching it wider, as the tip of the upper shaft traces a path up your face, leaving a trail of fluid as it goes. Finally it comes to a rest, your lips resting against the knot of the lower cock, while you feel the warmth of the remaining shaft lying across your face.";
		say "     That moment of reprieve is all you have, as the dire wolf starts pumping in and out. He starts gently, pulling his dick in and out of your mouth, the knot lightly pressing against your mouth at the bottom of each stroke. At the same time, the other shaft thrusts up and down across your vision, drooling more pre onto you. The combination of the two incredible cocks, of their powerful taste and smell, starts to overwhelm you in the sensation. As they overtake your senses, the wolf speeds up his actions, his twin members pumping faster and faster, the knot starting to apply more and more pressure to your mouth on each stroke. Finally he howls, and erupts, one jet of semen pouring down your throat, and the other spraying upwards, covering your face and hair in his wolf spunk. The wolf edges backwards, causing his dicks to finally exit you, leaving one final trail of his seed across your face.";
	say "     Seemingly done with you, the massive wolf pulls away from you, turns around, and stalks back out into the wilderness, ready to pounce on whatever prey it finds next.";

to say DireWolfVictory:
	now wolffight is 1; [victory]
	if inasituation is true:
		say ""; [dealt with in the file where the event is described]
	else:
		say "[DireWolfVictorySex]";

to say DireWolfVictorySex:
	if inasituation is true: [dealt with in the event]
		say "";
		stop the action;
	if inasituation is false: [standard text]
		say "     You watch the dire wolf crash to the ground in defeat, slumped over on his side. You can see that the massive creature is still very hard, his cocks dripping with pre. You realize that this dire wolf is completely at your mercy.";
	say "     [bold type]You could easily have your way with him if you want.[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Have fun with the dire wolf.";
	say "     ([link]N[as]n[end link]) - Leave it be.";
	if the player consents:
		if cocks of player > 0:
			say "     Deciding to have some fun with this poor wolf, you stop and think about how exactly you want to use him. You could easily roll him over and ride[if cunts of player < 1] one of[end if] his pair of thick canine shafts, or you could mount that tight little ass of his. (Y=Ride, N=Fuck)";
			if player consents:
				if cunts of player > 0: [herm ride]
					say "     The massive wolf doesn't resist as you roll him onto his back, leaving his twin members standing firmly in the open. You waste no time preparing yourself, and soon you stand above the beast, ready to lower yourself onto his shafts. Before you do, the creature begins to whimper slightly, clearly as eager for what comes next as you are. Unwilling to disappoint him, you start to drop yourself slowly, using one hand to hold the shafts in place. The tapered shape of his cocks lets the tips of each one slide into you easily, one in your cunt and the other in your ass. From there, you start to slide further down, and then back up, slowly increasing in speed until you're bouncing on his twin two canine shafts, the feeling of having two dicks inside you at once causing a rapidly building sense of pleasure..";
					say "     You soon increase the rate of your riding, feeling the massive dicks spearing you again and again, with the knots bumping against both of your entrances each time you bottom out. Finally, you can tell that the wolf is almost about to peak from the throbbing of the shafts, and you slam down with even more force than before, finally popping both of the knots into you simultaneously, filling you completely. That final thrust causes the beast to go overboard, both cocks erupting, filling you and coating you in his thick seed. The both of you are panting in exertion from the experience, but you feel a warm glow of satisfaction within you as you manage to climb off of the dire wolf. You leave the creature there, and finally leave, having shown it it's place.";
				else: [male ride]
					say "     The massive wolf doesn't resist as you roll him onto his back, leaving his twin members standing firmly in the open. You waste no time preparing yourself, and soon you stand above the beast, ready to lower yourself onto his shafts. Before you do, the creature begins to whimper slightly, clearly as eager for what comes next as you are. Unwilling to disappoint him, you start to drop yourself slowly, the tapered shape of his cocks letting the tip of one slide into you easily. From there, you start to slide further down, and then back up, slowly increasing in speed until you're bouncing on the lower of his two canine shafts, with the remaining shaft bobbing back and forth from the motion. The movement of the free cock causes it to slap against your currently unoccupied [cock of player] member, further increasing the pleasure of riding the wolf.";
					say "     You soon increase the rate of your riding, feeling the massive dick spearing you again and again, with the knot bumping against your rear each time you bottom out. Finally, you can tell that the wolf is almost about to peak from the throbbing of the shafts, and you slam down with even more force than before, finally popping the knot into you, filling you completely. That final thrust causes the beast to go overboard, both cocks erupting, filling you and coating you in his thick seed. The both of you are panting in exertion from the experience, but you feel a warm glow of satisfaction within you as you manage to climb off of the dire wolf. You leave the creature there, and finally leave, having shown it it's place.";
			else: [fucking the wolf]
				say "     Having the wolf's puckered ring waiting for you invitingly is too much to pass up, so you press right up against him without waiting. Your [cock of player] rod is straining with excitement, the tip pressed against the dire wolf's opening. It only keeps that position for a split second before you proceed to thrust in, the warm tightness of the canine passage gripping your cock, stroking you and pleasuring you. The sensation of taking this mighty predator and making him yours is intoxicating, only adding to the pleasure of taking his tight hole for your own. Soon your thrusting into the beast starts to bear fruit, as you feel the ever-increasing sensations start to approach a peak. When it arrives, your [cock of player] shaft releases a torrent of seed into the wolf's rear, claiming him as yours. Soon enough you clean up, and leave the dire wolf lying there, content to know that your semen will remain inside him for quite a while.";
		else:
			if cunts of player > 0: [female ride]
				say "     The massive wolf doesn't resist as you roll him onto his back, leaving his twin members standing firmly in the open. You waste no time preparing yourself, and soon you stand above the beast, ready to lower yourself onto his shafts. Before you do, the creature begins to whimper slightly, clearly as eager for what comes next as you are. Unwilling to disappoint him, you start to drop yourself slowly, using one hand to hold the shafts in place. The tapered shape of his cocks lets the tips of each one slide into you easily, one in your cunt and the other in your ass. From there, you start to slide further down, and then back up, slowly increasing in speed until you're bouncing on his twin two canine shafts, the feeling of having two dicks inside you at once causing a rapidly building sense of pleasure..";
				say "     You soon increase the rate of your riding, feeling the massive dicks spearing you again and again, with the knots bumping against both of your entrances each time you bottom out. Finally, you can tell that the wolf is almost about to peak from the throbbing of the shafts, and you slam down with even more force than before, finally popping both of the knots into you simultaneously, filling you completely. That final thrust causes the beast to go overboard, both cocks erupting, filling you and coating you in his thick seed. The both of you are panting in exertion from the experience, but you feel a warm glow of satisfaction within you as you manage to climb off of the dire wolf. You leave the creature there, and finally leave, having shown it it's place.";
			else: [neuter ride]
				say "     The massive wolf doesn't resist as you roll him onto his back, leaving his twin members standing firmly in the open. You waste no time preparing yourself, and soon you stand above the beast, ready to lower yourself onto his shafts. Before you do, the creature begins to whimper slightly, clearly as eager for what comes next as you are. Unwilling to disappoint him, you start to drop yourself slowly, the tapered shape of his cocks letting the tip of one slide into you easily. From there, you start to slide further down, and then back up, slowly increasing in speed until you're bouncing on the lower of his two canine shafts, with the remaining shaft bobbing back and forth from the motion.";
				say "     You soon increase the rate of your riding, feeling the massive dick spearing you again and again, with the knot bumping against your rear each time you bottom out. Finally, you can tell that the wolf is almost about to peak from the throbbing of the shafts, and you slam down with even more force than before, finally popping the knot into you, filling you completely. That final thrust causes the beast to go overboard, both cocks erupting, filling you and coating you in his thick seed. The both of you are panting in exertion from the experience, but you feel a warm glow of satisfaction within you as you manage to climb off of the dire wolf. You leave the creature there, and finally leave, having shown it it's place.";
	else:
		WaitLineBreak;
		say "     Deciding against it, you turn around and head off, leaving the wolf to the mercy of any other creature that might come across it.";

to say DireWolfDesc:
	setmongender 3;
	if inasituation is false: [regular text]
		say "     A feral-looking wolf on four feet, easily a full head taller than you, with great muscles under dense black fur. He has dark red eyes and white, sharp, canine teeth. His legs are thick and powerful, and his frame far bulkier and more powerful than any normal wolf. Visible between his rear legs are a pair of [one of]oversized canine shafts[or]massive wolf cocks[or]huge lupine members[at random]. When he sees you, his lips peel in a snarl, exposing those deadly teeth. [one of]'Grrrrrrrr!' he growls[or]He barks aggressively[or]He howls[at random], charging at you with feral rage in his eyes.";
	else:
		say ""; [dealt with at the source]

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Dire Wolf" to infections of guy;
	add "Dire Wolf" to infections of furry;
	Choose a blank row from Table of random critters;
	now name entry is "Dire Wolf";
	now attack entry is "[one of]He slams into you and bites down.[or]He roars and swipes at you with his claws.[or]He pounces you and pins you down, tearing into you with his claws.[at random]";
	now defeated entry is "[DireWolfVictory]";
	now victory entry is "[DireWolfLoss]";
	now desc entry is "[DireWolfDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "dire wolf face, with a long canine snout filled with the sharp teeth of a powerful predator"; [ Face description, format as the text "Your face is (your text)."]
	now body entry is "that of a large and very muscled wolf, with canine features that give you a wild and deadly appearance"; [ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]black furred[or]roughly furred[or]furry[at random]"; [ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a long black tail that trails behind you, your lupine tail displaying your emotions quite clearly."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feral canine[or]dire wolf[or]lupine[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face stretches and creaks as it warps into a long canine snout"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your bones creak and crack as they morph into a more suitable form for hunting, leaving you with the strong body of a dire wolf"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "coarse dark fur spreads rapidly over your form, leaving you more capable of enduring the elements."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "a long, bushy black tail emerges from above your ass, twitching about lightly"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your shaft swells with sudden arousal as the end tapers out to a point, a thick knot swelling up at the base, giving it a distinct canine shape, the entire length taking on an intense reddish color"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 19;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 65;
	now lev entry is 9; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 14; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 2; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20; [ Length infection will make cock grow to if cocks]
	now cock width entry is 14; [ Size of balls ]
	now breasts entry is 6; [ Number of Breasts infection will give you. ]
	now breast size entry is 9; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15;
	now cunt width entry is 10;
	now libido entry is 50; [ Amount player Libido will go up if defeated ]
	now loot entry is "dire wolf cum";
	now lootchance entry is 35; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]animalistic[or]powerful[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "lupine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Dire Wolf":
		if humanity of player < 10:
			say "Giving in to your feral nature, you prowl the city streets, enforcing your status as the biggest and most dominant. Your mind is gone and now only the most primal of instincts remain.";
		else:
			say "Returning to modern society proves to be hard for you. Your feral tendencies make it hard for you to be accepted in large urban areas, so you move out to a more secluded area in the mountains. You make your living by hunting deer and the like, your wolf senses giving you a major edge over anything else, and soon enough you have a comfortable and stable life to live till you're a gray muzzle.";

Table of Game Objects (continued)
name	desc	weight	object
"dire-wolf cum"	"A vial of thick, creamy, white liquid. [']DNA sample - species: dire wolf['] is written on the side."	1	dire-wolf cum

dire-wolf cum is a grab object. dire-wolf cum is cum.

instead of sniffing dire-wolf cum:
	say "The dire wolf semen smells of wolves and cum, naturally.";

the usedesc of dire-wolf cum is "[dire-wolf cum use]";

to say dire-wolf cum use:
	say "You shrug and gulp down the creamy liquid, gasping as you feel a sudden heat in your groin. Moaning as you rub your crotch, you realize that you need to get fucked, NOW!";
	if libido of player < 75:
		now libido of player is 75;

dire-wolf cum is infectious. The strain of dire-wolf cum is "Dire Wolf".

Dire Wolf ends here.
