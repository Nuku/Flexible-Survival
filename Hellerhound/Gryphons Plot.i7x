Gryphons Plot by Hellerhound begins here.
[Version 1.1 - Some rewriting and expansion by Wahn]

GryphPlotTracking is a number that varies.

Gryphons Plot is a situation.  The level of Gryphons Plot is 2.
the sarea of Gryphons Plot is "Outside".
when play begins:
	add Gryphons Plot to badspots of hermaphrodite;
	add Gryphons Plot to badspots of furry;

instead of resolving a Gryphons Plot:
	if GryphPlotTracking is 0 or GryphPlotTracking is 1: [first time or repeat after failing to find them]
		say "     Somewhere in the vicinity, you hear the screeching of... you think a gryphon, then another and another. They sound pretty excited and/or aggressive, with further noises on top that seem to belong to a fight. You wonder what is going on, and if you should check it out. Could be difficult to actually find out where exactly they are - the sound could be bouncing off the surrounding buildings... so it is easy to accidentally get going in exactly the wrong direction.";
		say "     [bold type]Do you want to try to find the gryphons?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure! You want to know what's going on!";
		say "     ([link]N[as]n[end link]) - Nah, better not. Who knows what you'll find.";
		if player consents:
			LineBreak;
			let bonus be (( perception of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Perception Check):[line break]";
			if diceroll + bonus >= 13:
				say "     Wandering through the debris of buildings, scattered trash-piles and past wrecked cars, you manage to find the right direction and progress fairly quickly, soon finding the scene that all the noise was coming from. Just a short distance ahead of you, there are three gryphons attacking a group of soldiers in a military jeep. Seems like they ambushed the men by boxing their vehicle in with an abandoned car rolled out on the street behind them while the men were trying to clear some rubble at the front. Now the soldiers can't drive away and are stuck hiding out in the jeep from a near-constant aerial bombardment with trash and all kinds of stuff. The men are still unchanged, but they are getting more desperate, judging by the extreme amount of swearing coming from the car.";
				LineBreak;
				say "     [bold type]Do you want to intervene in this?[roman type][line break]";
				say "     [link](1)[as]1[end link] - Do you help the men fight off their feral attackers!";
				say "     [link](2)[as]2[end link] - Join in on the gryphons attack and help them take the soldiers down.";
				say "     [link](3)[as]3[end link] - Just... watch. Do not interfere.";
				say "     [link](4)[as]4[end link] - Fuck this. You're out of here!";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 4:
					say "Choice? (1-4)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to help the soldiers, [link]2[end link] to help the gryphons, [link]3[end link] to simply watch or [link]4[end link] to just walk away.";
				if calcnumber is 1: [helping the soldiers]
					LineBreak;
					say "     <text for storming up to help>";
					let GroupFightCounter be 0;
					now fightoutcome is 0; [reset]
					while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
						now inasituation is true;
						challenge "Hermaphrodite Gryphon";
						increase GroupFightCounter by 1;
					if fightoutcome < 20: [player won]
						say "[PlayerWinsVsGryphonPlot1]";
						now GryphPlotTracking is 10; [player helped the soldiers]
					else if fightoutcome > 19 and fightoutcome < 30: [lost]
						say "[PlayerLosesVsGryphonPlot1]";
						now GryphPlotTracking is 90; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
					else if fightoutcome is 90: [fled]
						say "[PlayerFleesVsGryphonPlot1]";
						now GryphPlotTracking is 20; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
					now inasituation is false;
				else if calcnumber is 2: [helping the gryphons]
					LineBreak;
					say "[PlayerHelpsGryphonPlot1]";
					now GryphPlotTracking is 50; [player helped the gryphons]
				else if calcnumber is 3: [watching]
					LineBreak;
					say "[PlayerWatchesGryphonPlot1]";
				else: [leaving]
					LineBreak;
					say "     The situation clealy isn't your problem, so you quietly step back and wander away - slowly, so you don't attract any attention yourself. Soon you're out of sight from the scene and not long after that, the screeching and other noises die down. You can't help but wonder how things worked out, but you're not curious enough to go back and possibly run into trouble there.";
					now GryphPlotTracking is 100; [player had no interest]
					now Gryphons Plot is Resolved; [event will not come up again]
			else: [not perceptive enough / unlucky]
				say "     You set out in search of where the gryphons are, but while you still wander through the deserted streets, skirting around piles of trash, rubble and crashed cars, the sounds stop eventually. Hm, seems like you won't find that group of gryphons today. Maybe if you were a bit more perceptive, you might have found a quicker way to get to them...";
				now GryphPlotTracking is 1; [player failed to find them]
		else: [refused to investigate]
			LineBreak;
			say "     With a shug, you try to ignore the noises and concentrate on your immediate surroundings instead. Surviving in the city is difficult enough without actively going out to find trouble...";
			now GryphPlotTracking is 100; [player had no interest]
			now Gryphons Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 10: [player helped the soldiers, gryphons are pissed]
		say "     <meeting the soldiers again who ask for help, or meeting pissed gryphons>";
	else if GryphPlotTracking is 50: [player helped the gryphons, soldiers are transformed]
		say "     <meeting a transformed soldier who wants to pay the player back for their transformation (angry or thankful), or meeting the gryphons again who ask if the player could play decoy for a new plan of theirs>";
	else if GryphPlotTracking is 90: [player tried to help, failed, gryphons are pissed]
		say "     <meeting a transformed soldier who thanks the player for their try at helping (maybe saying they enjoy the gryphon shape after all and want to let the player be a gryphon too) or meeting the pissed gryphons>";

to say PlayerWinsVsGryphonPlot1: [player beat up the 3 gryphons]
	say "     <postcombat resolution>";

to say PlayerLosesVsGryphonPlot1: [player lost to the 3 gryphons]
	say "     <soldiers get transformed, player gets... fucked?>";

to say PlayerFleesVsGryphonPlot1: [player fled the 3 gryphons]
	say "     <soldiers left behind, can be assumed to be transformed, guilt the player a bit maybe>";

to say PlayerHelpsGryphonPlot1: [player helped the gryphons]
	say "     <soldiers get transformed, a gryphon player may join in, nongryphons may be set upon too>";

to say PlayerWatchesGryphonPlot1: [player observes the gryphons]
	say "     <soldiers get transformed, option for the player to step up for submission too?>";

-------------------------
Original text for Intervening on the soldier's behalf:

	if the bodyname of the player is not "Hermaphrodite Gryphon":
		say "You leap in front of one of the gryphons gathering something to throw in another round of dive bombing, to the rescue and surprise of the soldiers. All of the gryphons react with furious screeches to your intrusion and attack you with singleminded intensity.";
		challenge "Hermaphrodite Gryphon";
		say "Almost as soon as the first gryphon goes down, the next attacks.";
		challenge "Hermaphrodite Gryphon";
		say "The third gryphon, wary of the defeat of the first two, flees.";
		now milsave is 1;
		say "The soldiers congratulate you and thank you for helping them, though they are rather wary of your own exposure to the nanites in the city and hesitate at coming too close to you. While they clear a way out of the ambush, they give you some well-meant suggestions, mostly about finding a safe place to hide from the troubles in the city until the military has time to marshal their forces and save you. Then they drive off, though not without leaving a small stack with several ration bars from their pockets for you to collect as a reward.";
		increase carried of food by 2;
	else:
		say "You fly into the air on your wings, screeching a challenge at the gryphons. One, flying low, is startled and crashes into a nearby building, eliminating her from the fight. The other two don't pay their unfortunate compatriot any mind, come on to attack you with singleminded intensity.";
		challenge "Hermaphrodite Gryphon";
		say "That's one down, but the other gryphon immediately takes over and attacks.";
		challenge "Hermaphrodite Gryphon";
		now milsave is 1;
		say "The soldiers congratulate you and thank you for helping them, though they are rather wary of your own exposure to the nanites in the city and hesitate at coming too close to you. Giving some well-meant suggestions of finding a safe place to hide from the troubles in the city until the military has time to marshal their forces and save you, they soon drive off, though not without leaving a small stack with several ration bars from their pockets for you to collect as a reward.";
		say "     As you pick up the food, you hear someone groan nearby - it's the gryphon that crashed into one of the buildings around you earlier, looking only somewhat bruised though still rather out of it. Seems like her fall was slowed by the car roof she landed on and dented in, and the nanites are now doing their usual quick work of quickly fixing anything that doesn't kill instantly. Seeing the trickle of milk running down the windscreen of the car the semiconscious gryphon lies on and starting at her generous bosom, you decide to be pragmatic and use the chance to milk her, filling up an empty plastic bottle from your pack before you move on.";
		increase carried of food by 2;
		increase carried of gryphon milk by 1;

Original text for helping the gryphons: (this was just available for grpyhon players, but I'd love to see that opened for others too)

	say "Do you join in on the gryphons attack and help them?";
	if the player consents:
		say "With your help on top of the three other gryphons, the men in the jeep are quickly overwhelmed. Accompanied by gryphon screeches of victory, the soldiers are dragged out of their seats and stripped, then pinned to the ground by your lusty compatriots. Your own pick from among the men is the driver, a handsome guy with short-cut black hair whom you take from behind on the back seats. Fucking his ass hard and deep, you see him changing under you, tail extending and blue fur growing. As you blow your load into his rear you notice he now has a pussy. Good. It was time you took some...";
		say "You transition your still cumming cock into his waiting pussy, the parting swollen pussy lips dripping in anticipation. The newly transformed herm under you squawks in surprise as you take his virginity, then quickly gets into getting fucked, rocking back to meet each of your thrusts. As you slam in and out of him, you both let out a keening noises of pleasure, increasing in volume until you both climax.";
		if the cunts of the player > 0 and the cunt length of the player > 12:
			say "As soon as you catch your breath, you turn around and point your rear in his direction. Already subsumed by the infection, the former soldier does what any real gryphon herm would do - mount you and slam his still transforming cock into your waiting hole, pistoning in and out. Even though you've already come two times, feeling his manhood inside you quickly gets you going again, especially as you feel his knot form and get hard inside you. As you're quickly driven over the edge and a copious amount of femcum starts to drip onto the back seats of the jeep from your stretched pussy, the changed soldier leans in with a cry and climaxes into you.[ovichance]";
		WaitLineBreak;
		say "For a while, you seem to lose all sense of time and place in the lustful haze you're in, then realize you are in front of one of the feral gryphons coming at you with amorous intent.";
		say "[losetohgryphon]";
		say "You pass out after she leaves, lying on the cum-stained back seats of the jeep when you come to later.";
		follow turnpass rule;
		now milsave is -1;

Original Option of watching:

	say "Standing back and not interfering, you watch as the three gryphons do several more bombardment runs before they switch tactics and land instead of just dropping their loads. Before the soldiers leaning away from the windows to not get hit realize what's going on, the blue-feathered attackers are right at the jeep, ripping open the doors to get at them. Some quick hand to clawed hand wrangling later, the humans - being the losers - are dragged out of the car, stripped and fucked.";
	say "Do you join the soldiers in their submission?";
	if the player consents:
		say "You run towards the small free-for-all orgy, removing any clothing on the go, and jump right in.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "[losetohgryphon]";
		say "[losetohgryphon]";
		say "[losetohgryphon]";
		say "The orgy lasted a long time, and by the time you wake, the others are long gone. Trails of cum lead off down the road...";
		say "As you go to collect your clothes and gear, you notice two formerly empty bottles from your pack resting on top of it, filled with obviously fresh gryphon milk. Seems like one of your sexual partners felt the need to relieve themselves of some pressure by milking their gryphon breasts and left you the result.";
		increase carried of gryphon milk by 2;
		now milsave is -1;
	else:
		say "You leave the soldiers in a state of sexual frenzy and transformation, fucking and being fucked by the three gryphons while they themselves start sprouting blue fur.";
		now milsave is -1;


Gryphons Plot for fs ends here.
