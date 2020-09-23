Version 3 of Jaguar Warrior by AGentlemanCalledB begins here.
"Adds a Jaguar Warrior creature to Flexible Survival's Wandering Monsters table"
[Version 3.0 - Male Tehuantl added]
[Version 2.4 - Interaction with Sarah]


[ HP values of Tehuantl                                            ]
[ 1-9: Jaguar Warrior creature in Museum                           ]
[  10: Just brought Tehuantl home                                  ]
[  11: First heat started                                          ]
[  12: searching for toys for Tehuantl                             ]
[  13: fled BDSM shop                                              ]
[  14: toys found                                                  ]
[  15: toys given to Tehuantl, standard heat cycle begins here     ]
[  50: Just brought Male Tehuantl home                             ]
[ 255: lost during toy hunt event                                  ]

[Libido of Tehuantl - interactions with Carl                       ]
[   0: never met                                                   ]

Section 1 - Creature Responses

hoodequipped is a number that varies.[@Tag:NotSaved]

to say losetoJaguarWarrior:
	say "     [if HP of Player > 0]Unable to resist[else]Beaten by[end if] the jaguar warrior, you are helpless as he strips you of your gear. [run paragraph on]";
	if anallevel is 3 and a random chance of 1 in 3 succeeds:
		say "[JagWarVic_Anal]";
		NPCSexAftermath Player receives "AssFuck" from Tehuantl;
	else if Player is female and a random chance of 2 in 3 succeeds:
		say "[JagWarVic_Vag]";
		NPCSexAftermath Player receives "PussyFuck" from Tehuantl;
	else if anallevel > 1 and a random chance of 1 in 4 succeeds:
		say "[JagWarVic_Anal]";
		NPCSexAftermath Player receives "AssFuck" from Tehuantl;
	else:
		say "[JagWarVic_Oral]";
		NPCSexAftermath Player receives "OralCock" from Tehuantl;

to say beattheJaguarWarrior:
	if HP of Tehuantl is 1:
		say "     Just as it seems you're gaining the upper hand on the large jungle cat, he slips past you with an agile maneuver and retreats into the depths of the museum.";
		now HP of Tehuantl is 2;
	else if HP of Tehuantl is 2:
		say "     As you're once again gaining the upper hand over the feline warrior, he tries to slip away once again, but you're ready for it this time. You attempt to block his path, but he manages to slip by you when he [one of]knocks you off balance with his shield[or]surprises you by leaping over your head[or]slides under your grasp[at random].";
		if a random chance of 1 in 3 succeeds:
			now HP of Tehuantl is 3;
	else if HP of Tehuantl is 3:
		say "     As you're once again gaining the upper hand over the feline warrior, he tries to slip away once again, but you're ready for it this time. Cutting him off as he attempts to escape, you make a diving tackle towards him. The jaguar stumbles and falls as you nearly catch him, grabbing the back of his shawl as he makes his escape. He quickly scrambles to his feet and rolls away. He looks back at you holding his headdress for a moment, as if considering trying to get it back, but with a shake of his head he turns and slips back into the twisting museum corridors.";
		now HP of Tehuantl is 4;
		ItemGain Jaguar Headdress by 1;
	else if HP of Tehuantl is 4:
		if hoodequipped is 1:
			say "[JaguarWarriorCaptured]";
		else:
			say "     Beaten, the jaguar warrior is sent reeling with your final blow, stumbling backwards and falling to the ground. With one last nervous glance, he rolls over to his hands and feet, scrambling upright before retreating back into the twisting museum corridors. As you watch him once again slip away, you are reminded of the strange headdress you managed to take from him before...";
	else:
		say "Error! HP of Tehuantl = [HP of Tehuantl]. You shouldn't be able to encounter me right now! Please report this on the forums.";

to say JaguarWarriorDesc:
	setmongender 3;      [creature is male]
	if HP of Tehuantl is 0 and inasituation is false:
		say "     As you wander the halls of the museum, your attention is drawn to a large broken display case. What remains of the exhibit appears to document a powerful Aztec military unit known as jaguar warriors. As you wonder where the contents of the display case might have ended up you hear a low, rumbling growl behind you. Turning quickly to face this potential threat you [run paragraph on]";
		now HP of Tehuantl is 1;
	else if showlocale is true:
		say "     As you wander the halls of the museum you [one of]hear a low rumbling growl behind you. Turning quickly to face this potential threat you[or]turn a corner and[or]spot a figure moving towards you down the long corridor. Once the creature is close enough to make out the details you[at random] [run paragraph on]";
	else:
		say "     You [run paragraph on]";
	say "find yourself facing a powerful-looking feline warrior with the distinctive markings of a jaguar. He carries an ornate feathered shield and a dangerous-looking sword crafted from a stick with several sharp-looking black stones embedded in it[if HP of Tehuantl < 4]. Atop the jaguar's head is an elaborate headdress modeled after the large feline now wearing it[end if][if hoodequipped is 1]. Spotting the jaguar headdress you're wearing, the warrior shifts slightly, his stance becoming slightly more defensive as if intimidated by your garb[end if].";
	say "     As the jaguar readies his weapon and moves forward you see the barbed tip of his feline cock poking free of its sheath, making his intent clear as he charges forward.";

to say JagWarVic_Vag:
	say "You groan as the powerful jungle cat pushes you to the ground roughly, leaving you staring up at the large cat and his thick feline member as he approaches your supine form. Unceremoniously he kicks your legs apart, exposing your damp [cunt size desc of Player] cunt to him as he towers above you.";
	say "     The big kitty rumbles in anticipation as he lowers himself atop you, his barbed member scraping along your thighs as he leans forward to tease your [if Nipple Count of Player > 0]nipples[else]neck[end if] with his rough feline tongue. A shiver runs through you as you feel the tip of his feline shaft stroke along your outer folds. After one final playful nip the jaguar finally begins sinking his cock into your damp cunt, rumbling in satisfaction as he does. You can't help but moan as you feel the feline barbs that adorn his shaft sliding across your tender flesh, gently tickling your inner walls. Once his entire length is hilted within you the jaguar leans in close[one of], running a paw along your side[or], licking your cheek[or][at random] before pressing his muzzle to your lips and kissing you deeply.";
	WaitLineBreak;
	say "     Pain lances through you as he begins withdrawing his length from your body, the sharp feline barbs scraping and tearing your soft inner walls, but your cries are muffled by the muzzle locked to your lips and the rough feline tongue wrestling with your own. Even before you've recovered from his agonizing withdrawal, the jaguar begins thrusting into you again, the pain fading back into pleasure as his thick member once again delves into your depths. Your mind quickly begins to be overwhelmed by the alternating pleasure and pain; with each thrust of the jaguar's barbed cock the two sensations seem to bleed more and more into each other until the constant stimulation pushes you, and your companion, to your limits.";
	say "     With a triumphant roar the jaguar warrior makes one final thrust into you, forcing his entire length into your exhausted body before unleashing his thick feline seed into your womb. The sensation of this final thrust and the warm sticky seed spilling into your body pushes you over the edge as well, and you cry out in a yowl of ecstasy as your spasming cunt clamps down around the twitching barbed member buried within you, your feminine juices spilling out around him as you soak both your crotches with womanly nectars.";
	say "     Sated, the jaguar finally pulls his still-twitching cock from your body in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. As you lay on the floor, still lost in the afterglow of your powerful climax, the powerful male stalks off into the museum, leaving you to recover on your own.";
	NPCSexAftermath Player receives "PussyFuck" from Tehuantl;

to say JagWarVic_Anal:
	say "You wince as the jaguar warrior grips your shoulder tightly, pressing his sharp claws into your flesh as he forces you to your knees before he begins pacing around you slowly. Soon you feel his large, heavy foot-paw pressing against the middle of your back, forcing you forwards to your hands and knees as you feel splatters of his warm pre dripping onto your back.";
	say "     A shiver runs through you as you feel the powerful feline's paws at your hips, his claws once again finding purchase in your flesh as he roughly aligns your ass with his thick member. The big kitty rumbles in satisfaction as he traces his barbed cock along your ass, leaving great streaks of his ample pre along your backside before he finally begins sinking his cock into you. You can't help but moan as you feel the feline barbs that adorn his shaft sliding across your tender flesh, gently tickling your inner walls as he pushes deeper into your bowels. However, the almost pleasant sensation is brought to a quick halt when the jaguar finally stops his forward motion. Pain lances through you as he begins withdrawing his length from your body, the sharp feline barbs scraping and tearing your soft inner walls, causing you to cry out in pain.";
	WaitLineBreak;
	say "     Even before you've recovered from his agonizing withdrawal, the jaguar begins thrusting into you again, the pain fading back into pleasure as his thick member once again delves into your depths. Your mind quickly begins to be overwhelmed by the alternating pleasure and pain; with each thrust of the jaguar's barbed cock the two sensations seem to bleed more and more into each other until the constant stimulation pushes you, and your companion, to your limits.";
	say "     With a triumphant roar the jaguar warrior makes one final thrust into you, forcing his entire length into your exhausted body before unleashing his thick feline seed into your bowels[if Player is herm] while your own seed splatters across the ground and feminine juices soak your thighs[else if Player is male] while your own seed splatters across the ground below you[else if Player is female] while your own climax soaks your thighs in feminine juices[end if]. Sated, the jaguar finally pulls his still twitching cock from your body in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. You slump to the floor as the powerful male releases you, leaving you to recover from the encounter as he stalks off into the museum.";
	NPCSexAftermath Player receives "AssFuck" from Tehuantl;

to say JagWarVic_Oral:
	choose row MonsterID from the Table of Random Critters;
	say "You wince as the jaguar warrior grips your shoulder tightly, pressing his sharp claws into your flesh as he forces you to your knees while taking hold of his thick feline member with his free hand. You soon find yourself level with the jungle cat's impressive member, already erect and dripping with pre after your [if monsterHP < ( HP entry / 3 ) ]drawn out[else if monsterHP < ( HP entry / 2 )][else]brief[end if] struggle. A shiver runs through you as you eye the barbed feline shaft, quickly moving towards your face as the jaguar moves closer.";
	say "     Having no other choice, you open your mouth wide as the jaguar warrior grips the back of your head and pulls you forward, driving his length down your throat roughly. You feel the feline barbs that adorn his shaft slide easily across your flesh until he pauses his forward motion. Ripples of pain lance through you as the jaguar pulls back slowly, the pointed spines of his feline cock scraping agonizingly across your tender flesh as he rumbles in satisfaction. As the tip of his length reaches your lips, you try to pull your mouth away, until you feel the jaguar's grip tighten and the threatening presence of his claws at the back of your skull.";
	WaitLineBreak;
	say "     When the Jaguar once again drives his length into you, you begin licking and sucking at the engorged length, working through the pain to get the big kitty off so he may finally release you. As the big kitty's rhythmic thrusting begins to increase you begin to lose track of the painful scraping barbs as your attention is focused more and more on pleasing the powerful male. Soon you once again feel his claws at the back of your head, gripping you tightly as he makes his final powerful thrusts into your wanton mouth before driving his length into you with a triumphant roar. You [one of]work the barbed shaft between your tongue and palate[or]suck as hard as you can on the barbed intruder[or]tease the large feline's swollen balls while working your tongue over his length[at random] as he drains his balls into you, milking the big kitty for every drop of cream you can get.";
	say "     Sated, the jaguar finally pulls his still twitching cock from your mouth in one quick motion, the sharp barbs sending one last ripple of pain through you as he does so. You slump to the floor as the powerful male releases your head, leaving you to recover from the encounter as he stalks off into the museum.";
	NPCSexAftermath Player receives "OralCock" from Tehuantl;

to say JaguarWarriorCaptured:
	say "     The jaguar's weapon and shield clatter to the floor as your last blow sends him reeling. He stumbles backwards, barely managing to catch himself on a nearby display case. Trembling slightly, the large feline looks you in the eyes for a moment before his head drops in submission. You feel a surge of energy rush through you as the jaguar warrior finally acknowledges you as his better and you step forward to claim your hard-earned prize. You knock the jaguar's arm away from the display case he's supporting himself with and watch with satisfaction as he falls to one knee. With a low rumble emanating from somewhere inside you, you step around the beaten feline and press your foot against the middle of his back, pushing him to his hands and knees. Seeing himself be put in this position, Tehuantl himself actually pulls his spotted tail aside, exposing his tight ass to you in a submissive gesture.";
	now sextablerun is 0;
	say "     [bold type]Feeling like you could do... something to cement your mastery over this muscled feline, you let your thoughts wander through all the possibilities.[roman type][line break]";
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Dominate him (nonsexually)"; [-> male T]
	now sortorder entry is 1;
	now description entry is "Grab him by the scruff of the neck and make him acknowledge you as his [master]";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Dominate him and emasculate him (nonsexually)"; [-> female T]
	now sortorder entry is 1;
	now description entry is "Grab him by the scruff of the neck and make him acknowledge you as his [master]";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Rub his balls and then fuck his ass"; [-> male T]
		now sortorder entry is 2;
		now description entry is "Get the kitty hot and ready, then pound him";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Rub his balls and then ride his cock"; [-> male T]
		now sortorder entry is 3;
		now description entry is "Get the kitty hot and ready, then ride him";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Tease his nipples and then fuck his ass"; [-> female T]
		now sortorder entry is 4;
		now description entry is "Get the kitty hot and ready, then pound him";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Tease his nipples and then ride his cock"; [-> female T]
		now sortorder entry is 5;
		now description entry is "Get the kitty hot and ready, then ride him";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Dominate him (nonsexually)":
					say "[TehuantlTameNonSexM]";
				else if nam is "Dominate him and emasculate him (nonsexually)":
					say "[TehuantlTameNonSexF]";
				else if (nam is "Rub his balls and then fuck his ass"):
					say "[TehuantlTameSex1]";
				else if (nam is "Rub his balls and then ride his cock"):
					say "[TehuantlTameSex2]";
				else if (nam is "Tease his nipples and then fuck his ass"):
					say "[TehuantlTameSex3]";
				else if (nam is "Tease his nipples and then ride his cock"):
					say "[TehuantlTameSex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You change your mind, just pushing him over to sprawl confusedly on the ground as you walk off without a word. The sudden rejection makes the feline hiss after you as he slowly gets to his feet afterwards.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say TehuantlTameNonSexM:
	say "     You swat the muscled feline's ass lightly, telling him that there's enough of that for now, you're not going to rape him. No, you just pull him up by the scruff of his neck, meeting his eyes and giving him a good long stare to show your dominance. Then you lay out how things are going to be - he's proven to be weaker than you more than once, and you're claiming him as yours now. As such, he'll follow you and obey, or else. The proud warrior actually starts to nod and relax even before you add the last part, accepting the new status you're putting him in readily. 'Yes, tlacahua. I'm your warslave and will serve,' he says, almost purring. Curiosity has you ask what that word he used was, and he explains that it means 'master' in his original Nahuatl language. You can't help but smile at this and tell him that he's starting to behave like a very good little kitty, then hold out a hand for him to take and pull him up along as you stand up. Your new pet leans in and nuzzles against your chest as you make your way back to the Grey Abbey Library with him.";
	say "[TehuantlMaleShift]";
	say "[TameTehuantl]";

to say TehuantlTameNonSexF:
	say "     You swat the muscled feline's ass lightly, telling him that there's enough of that for now, you're not going to rape him. No, you just pull him up by the scruff of his neck, meeting his eyes and giving him a good long stare to show your dominance. Then you lay out how things are going to be - he's proven to be weaker than you more than once, and you're claiming him as yours now. In fact, he's so weak and pathetic that you're doubting that he even should be a male warrior. Acting like he did, getting his ass beat and then submitting to you seems more appropriate of a mewling pussy. To underline these words, you reach under him and squeeze his chest, to 'check if he's actually a girl', and somewhat surprisingly, your hand starts to fill with a furred curve as you do so, his chest bulging outwards and taking on more female curves in just a few seconds.";
	say "     The formerly proud warrior lets out a moan and collapses to the ground, writhing before you. Stepping back a little, you watch the transformation you inadvertently kicked off, seeing the man change all over, with some subtle and other quite obvious adjustments to his forms. His cock shrinks back into his body, for one, leaving behind feminine folds, and the shape of his face and head softens a bit. When his new form stabilizes after a few moments, the now female jaguar pushes herself up to kneel before you, looking at you worshipfully. 'Yes, tlacahua. I'm your warslave and will serve,' she says, almost purring. Curiosity has you ask what that word she used was, and she explains that it means 'master' in her original Nahuatl language. You can't help but smile at this and tell her that she's starting to behave like a very good little kitty, then hold out a hand for her to take and pull her up along as you stand up. Your new pet leans in and nuzzles against your chest as you make your way back to the Grey Abbey Library with her.";
	say "[TameTehuantl]";

to say TehuantlTameSex1: [player rubs balls, then fucks his ass -> male T]
	say "     Stroking a hand over the jaguar warrior's firm and muscled buttocks, you dip in a finger between their furry curves and brush it over his back door, drawing a little mewl as he tenses up. Quite sensitive, this feline - a clear sign of a virgin at anal sex. You almost stay right there, as the idea of playing with his ass a little springs up in your mind, but eventually decide to shift your hand deeper, on top of the tin globes of his balls. Cupping the jaguar's family jewels, you weigh them in your hand and comment that he's quite the virile kitty - and that he shouldn't worry too much about his fate. Sure, he's yours now, as are his balls, cock and ass - but there's no reason this shouldn't be enjoyable for the both of you. And with that, you start to gently caress him with your hand, drawing a little surprised mewl as you do so. As you proceed to fondle him, there even is a little purr that can be heard from your former opponent. Clearly, he is starting to realize that becoming your kitty will have its own rewards.";
	say "     The jaguar makes no attempt to resist as you position your [cock size desc of Player] [Cock of Player] cock at his rear, merely releasing a whimpering mewl as you tease his outer ring with the tip of your member. You groan in pleasure as you begin pushing into his tight opening, slowly driving your entire length into the whimpering kitty beneath you. As your hips meet his ass you lean forward over your plaything, reaching around his body to grasp his cock, hard and ready despite his current situation. As you gently stroke his cock you feel the feline barbs adorning it, finding them strangely soft and pliant. After teasing the beaten kitty for a short while you begin giving him a proper fucking, gripping his hips tightly as you pound into his tight bottom relentlessly[if Player is barbed], delighting in his yowls of pleasure and pain as your barbed shaft pistons in and out of his tight hole[end if]. You roar in pleasure as you rapidly push yourself to climax, holding the jaguar's ass tightly to your body as you unleash your [Cum Load Size of Player] load into his bowels while his own seed splatters onto the museum floor beneath him. As your climax begins to subside [if Player is barbed]the jaguar releases one last weak whimper as you pull yourself from his tight ass, your barbs scraping along his inner walls one last time before you[else]you pull yourself from the jaguar's tight ass and[end if] allow him to fall to the floor.";
	NPCSexAftermath Tehuantl receives "AssFuck" from Player;
	WaitLineBreak;
	say "     After remaining on his belly for a few moments as he pants in exhaustion, the jaguar eventually twists around, flopping down to lay on his back. What an inviting sight - so very docile now that you've broken him in, looking up at you in adoration. His belly-fur is wet and matted with the load of cum you fucked out of him and a slight trickle of your seed oozes out of his well-bred ass. Crouching down over the jaguar warrior, you wipe up the cum with two fingers and bring them to his muzzle - and your pet laps up the creamy treat without any hesitation. You can't help but smile as you tell him that he's been a very good boy, then hold out a hand for him to take and pull him up along as you stand up. Your new pet leans in and nuzzles against your chest as you make your way back to the Grey Abbey Library with him.";
	say "[TehuantlMaleShift]";
	say "[TameTehuantl]";

to say TehuantlTameSex2: [player rubs balls, then rides his dick -> male T]
		say "     Twisting your upper body and leaning back a little, you reach out and cup the jaguar's family jewels. His furry balls are warm and delightfully soft against your skin - at the same time as they are nicely full and weighty. You just have to comment that he's quite the virile kitty - then add that he shouldn't worry too much about his fate. Sure, he's yours now, as are his balls and cock - but there's no reason this shouldn't be enjoyable for the both of you. And with that, you start to gently caress him with your hand, drawing a little surprised mewl as you do so. As you proceed to fondle him, there even is a little purr that can be heard from your former opponent. Clearly, he is starting to realize that becoming your kitty will have its own rewards.";
		say "     When you let go of him and rise to reposition yourself, the jaguar makes no attempt to escape, merely releasing a whimpering mewl as you take hold of his feline shaft, hard and ready despite his current situation. As you gently stroke his cock, you feel the feline barbs adorning it, strangely soft and pliant despite their sharp appearance. Satisfied that your plaything is ready for some fun, you position his cock just outside your [cunt size desc of Player] cunt and slowly lower yourself down onto it with another rumble of delight, the feeling of his soft barbs gently teasing your inner walls only adding to the pleasant sensation. As the jaguar's entire length is hilted inside you, you lean forward once again, gripping his shoulders tightly as you begin to ride his shaft roughly.";
		WaitLineBreak;
		say "     You moan and gasp in pleasure as you rise and fall along the stimulating barbed shaft while the jaguar groans and mewls beneath you. Oh yeah - winning this fight really was worth it! You ride the muscled feline with great pleasure, playing your hands over his strong arms and ribbed abs. Quite a hunk - and he's all yours! A roar in pleasure rises in your throat you rapidly push yourself to a breathtaking climax, your pussy clamping down tight around the feline member as your orgasm strikes, pushing the jaguar to climax as well. His entire form shudders beneath you as his warm load pulses into your body. Even as your climax begins to subside and you begin rocking your body against the shivering jaguar once again, his pulsing member continues to fire spurt after spurt of feline cum into you.";
		say "     The jaguar's orgasm lasts a long while, with more and more of his potent seed gushing into your depths. The constant throb inside your body and twitching of his nubby barbs against your inner walls keeps the high from your own climax going - reducing you to the strength of a kitten from all the pleasure. Yet despite this, your sexual partner still does nothing to gain the upper hand. Clearly, he has learned his lesson - and is feeling far too good right now to care that he's gonna be your pet. In fact, the exhausted feline starts rumbling in a pleasant purr and looks up at you with adoration. Very nice - and you immediately get another idea what he can do for you next. Raising your hips a little, you slide off the barbed shaft in your pussy and move up to his head on your knees, leaving a trail of dripping cum all over his belly fur. Coming to kneel over his face, there is no hesitation at all for your boy-toy to start licking, eating his load out of your pussy.";
		WaitLineBreak;
		say "     After a very pleasurable time having your female bits licked and teased, you can't help but smile as you tell the jaguar that he's been a very good boy, then you hold out a hand for him to take and pull him up along as you stand up. Your new pet leans in and nuzzles against your chest as you make your way back to the Grey Abbey Library with him.";
		NPCSexAftermath Player receives "PussyFuck" from Tehuantl;
		NPCSexAftermath Tehuantl receives "OralPussy" from Player;
		say "[TameTehuantl]";
		now HP of Tehuantl is 50; [male jaguar pet]

to say TehuantlTameSex3: [player rubs nipples, then fucks his ass and pussy -> female T]
	say "     Stroking both hands over the jaguar warrior's back, you let them slide around his sides, searching out the little nubs of his nipples on the feline's chest. He gives a little surprised mewl as you brush over them, then lightly pinch both at the same time. Bent over the spotted feline, you comment that he's quite the sexy pussycat - and that he shouldn't worry too much about his fate. Sure, he's yours now, and you reserve the right to pet him and play with his nipples whenever you want - but there's no reason this shouldn't be enjoyable for the both of you. As you proceed to rub him in circling motions, there even is a little purr that can be heard from your former opponent. Clearly, he is starting to realize that becoming your kitty will have its own rewards.";
	say "     The jaguar makes no attempt to resist as you position your [cock size desc of Player] [Cock of Player] cock at his rear, merely releasing a whimpering mewl as you tease his outer ring with the tip of your member. You groan in pleasure as you begin pushing into his tight opening, slowly driving your entire length into the whimpering kitty beneath you. As your hips meet his ass you lean forward over your plaything, reaching around his body to grasp his cock, hard and ready despite his current situation. As you gently stroke his cock you feel the feline barbs adorning it, finding them strangely soft and pliant. After teasing the beaten kitty for a short while you begin giving him a proper fucking, gripping his hips tightly as you pound into his tight bottom relentlessly[if Player is barbed], delighting in his yowls of pleasure and pain as your barbed shaft pistons in and out of his tight hole[end if]. You roar in pleasure as you rapidly push yourself to climax, holding the jaguar's ass tightly to your body as you unleash your [Cum Load Size of Player] load into his bowels while his own seed splatters onto the museum floor beneath him. As your climax begins to subside [if Player is barbed]the jaguar releases one last weak whimper as you pull yourself from his tight ass, your barbs scraping along his inner walls one last time before you[else]you pull yourself from the jaguar's tight ass and[end if] allow him to fall to the floor.";
	NPCSexAftermath Tehuantl receives "AssFuck" from Player;
	WaitLineBreak;
	say "     You watch with curious interest as the shivering feline rolls to his back, his thick white seed still spilling from his spasming shaft. His cock is now noticeably smaller than it was when you held it in your hand. As the final spurts of his male cum drip from its tip, you watch his once-virile balls pull tightly against his body before slipping inside him with an unsettling slurp, leaving behind a dripping feline cunt. The jaguar moans in pleasure as you slip a finger into the wet new opening, almost effortlessly pushing her to her first female climax as what remains of her cock shrinks away to a tiny nub at the top of her pussy.";
	say "     Eager to make use of this inviting new opening you lower yourself over the whimpering kitty, aligning your shaft with her new cunt and driving into her before her last orgasm has even subsided. You rumble happily as you pound into the newly-minted female feline, taking it slowly this time as you watch the changes ripple outwards from her crotch. Her hips and ass plump out to an attractive new shape, clearly built for childbirth. Her form becomes slim and delicate as the masculine features seem to melt away, extra mass rolling up and across her body to gather at her chest. You tweak and tease her swollen puffy nipples as they swell outward, into large sumptuous breasts. The jaguar mewls up at you plaintively as the changes shift to her face, the once-strong masculine features becoming gentle and feminine while long locks of dark hair flow from her head. As the changes come to their end the jaguar yowls out in ecstasy beneath you, her cunt clamping around you tightly as she reaches orgasm once again, driving you to mark her new womb with another powerful climax.";
	NPCSexAftermath Tehuantl receives "PussyFuck" from Player;
	WaitLineBreak;
	say "     As you roll off her exhausted form, the rumbling kitty snuggles up against you, staring up at you with a look of adoration as she slips out of consciousness. Clearly very little of the once dominant feline remains in this docile new creature and without a second thought you pull her into your arms as you rise to your feet. Your new pet nuzzles against your chest as you make your way back to the bunker.";
	say "[TameTehuantl]";
	now HP of Tehuantl is 10; [female jaguar pet]

to say TehuantlTameSex4: [player rubs nipples, then rides his dick -> female T]
	say "     Stroking both hands over the jaguar warrior's firm pecs, you feel his muscles and then search out the little nubs of his nipples. He gives a little surprised mewl as you brush over them, then lightly pinch both at the same time. Bent over the spotted feline, you comment that he's quite the sexy pussycat - and that he shouldn't worry too much about his fate. Sure, he's yours now, and you reserve the right to pet him and play with his nipples whenever you want - but there's no reason this shouldn't be enjoyable for the both of you. As you proceed to rub him in circling motions, there even is a little purr that can be heard from your former opponent. Clearly, he is starting to realize that becoming your kitty will have its own rewards.";
	say "     When you let go of him and rise to reposition yourself, the jaguar makes no attempt to escape, merely releasing a whimpering mewl as you take hold of his feline shaft, hard and ready despite his current situation. As you gently stroke his cock, you feel the feline barbs adorning it, strangely soft and pliant despite their sharp appearance. Satisfied that your plaything is ready for some fun, you position his cock just outside your [cunt size desc of Player] cunt and slowly lower yourself down onto it with another rumble of delight, the feeling of his soft barbs gently teasing your inner walls only adding to the pleasant sensation. As the jaguar's entire length is hilted inside you, you lean forward once again, gripping his shoulders tightly as you begin to ride his shaft roughly.";
	WaitLineBreak;
	say "     You moan and gasp in pleasure as you rise and fall along the stimulating barbed shaft while the jaguar groans and mewls beneath you. You roar in pleasure as you rapidly push yourself to your first climax, your pussy clamping down tight around the feline member as your orgasm strikes, pushing the jaguar to climax as well. His entire form shudders beneath you as his warm load pulses into your body and you feel a strange shifting of his shaft within you. Even as your climax begins to subside and you begin rocking your body against the shivering jaguar once again, his pulsing member continues to fire spurt after spurt of his feline cum into you. Intent on riding him to a second climax, you continue driving his length into your body, but with each thrust you feel less and less of that intense stimulation. Fearing your plaything may be going soft on you, you slow to a stop and growl down at him, but you notice something very different about the once-large feline beneath you. His broad, powerful torso has slimmed to a shapely female form, as your eyes follow his body down to where your crotch meets his, you are shocked by the wide birthing hips the feline now possesses. Releasing his shoulders, you trace a finger down his slim, delicate chest to the swollen, puffy nipples, cupping them gently as they swell into large, sumptuous breasts before your eyes.";
	say "     The jaguar mewls up at you plaintively as the changes shift to his face, the once-strong masculine features becoming gentle and feminine while long locks of dark hair flow from his head. Realizing there is only one sign of the jaguar warrior's previous male self left, you slowly lift yourself from his cock, now noticeably smaller as you once again hold it in your hand. As the final spurts of his male cum drip from it tip, you watch his once-virile balls pull tightly against his body before slipping inside him with an unsettling slurp, leaving behind a dripping feline cunt. The jaguar moans in pleasure as you slip a finger into the wet new opening, almost effortlessly pushing her to her first female climax as what remains of her cock shrinks away to a tiny nub at the top of her pussy.";
	WaitLineBreak;
	say "     The exhausted kitty rumbles at she stares up at your with adoration, clearly very little of the once dominant feline remains in this docile new creature and without a second thought your reach down for her. Your new pet nuzzles against your chest as you lift her into your arms, cradling her gently against you as you make your way back to the bunker.";
	NPCSexAftermath Player receives "PussyFuck" from Tehuantl;
	say "[TameTehuantl]";
	now HP of Tehuantl is 10; [female jaguar pet]

to say TehuantlMaleShift:
	now HP of Tehuantl is 50; [male jaguar pet]
	now Cock Count of Tehuantl is 1;
	now Cock Length of Tehuantl is 12;
	now Ball Size of Tehuantl is 5;
	now Ball Count of Tehuantl is 2;
	now Cunt Count of Tehuantl is 0;
	now Cunt Depth of Tehuantl is 0;
	now Cunt Tightness of Tehuantl is 0;
	now Nipple Count of Tehuantl is 2; [2 nipples]
	now Breast Size of Tehuantl is 0;

to say TameTehuantl:
	now battleground is "void";
	increase score by 20;
	move Tehuantl to Grey Abbey 2F;
	move player to Grey Abbey 2F;
	setmonster "Jaguar Warrior";
	choose row MonsterID from the Table of Random Critters;
	now area entry is "Nowhere";
	now Energy of Tehuantl is turns;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Jaguar"; [name of the overall species of the infection, used for children, ...]
	add "Jaguar Warrior" to infections of FelineList;
	add "Jaguar Warrior" to infections of FurryList;
	add "Jaguar Warrior" to infections of NatureList;
	add "Jaguar Warrior" to infections of MaleList;
	add "Jaguar Warrior" to infections of BarbedCockList;
	add "Jaguar Warrior" to infections of SheathedCockList;
	add "Jaguar Warrior" to infections of BipedalList;
	add "Jaguar Warrior" to infections of TailList; [TODO: Male Female Jaguar infection]
	now Name entry is "Jaguar Warrior";                   [ The creature's name as displayed and used in naming descriptions]
	now enemy title entry is "Jaguar Warrior";
	now enemy Name entry is "Tehuantl";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The jaguar warrior [one of]raises his shield and charges forward, knocking you off balance as he smashes it into your chest[or]strikes at you with his obsidian-edged sword[or]knocks your feet out from under you with a sweeping low kick[or]knocks you off balance with his shield before following up with a quick sword strike[at random]!";                      [ Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheJaguarWarrior]";       [ Text when monster loses. Change 'Jaguar' as above. ]
	now victory entry is "[losetoJaguarWarrior]";         [ Text when monster wins. Change 'Jaguar' as above. ]
	now desc entry is "[JaguarWarriorDesc]";              [ Description of the creature when you encounter it. ]
	now face entry is "that of an attractive feline";     [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "[JagBodyDesc]";                    [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "golden yellow fur, with elegant black rosettes and spots covering your"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a tight, sexy bottom, accentuated by your elegant jaguar tail lashing back and forth as you move."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]red[or]barbed[or]spined[or]feline[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "everything goes fuzzy, your senses struggling to keep up as your head shifts to that of an attractive jungle cat"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "[JagBodyTF]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "golden yellow fur spreads across your body, adorned by elegant black rosettes and spots"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes tight and sexy. Your balance seems to shift slightly as you gain a long, spotted jaguar's tail, which lashes back and forth excitedly even as it helps you maintain a sexy, graceful stride"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it shifts to a feline form, complete with menacing-looking barbs"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17;                  [ These are now the creature's stats... ]
	now dex entry is 18;                  [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;                  [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 95;                   [ The monster's starting HP. ]
	now lev entry is 13;                  [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15;                 [ Monster's average damage when attacking. ]
	now area entry is "Museum";           [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;                 [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 10;          [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3;            [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;               [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4;           [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;                 [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10;          [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6;            [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 35;               [ Target libido the infection will rise towards. ]
	now loot entry is "";                 [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]lithe[or]alluring[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "feline";           [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;             [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;        [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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
	[ Row used to designate any special combat features, "default" for standard combat. ]

to say JagBodyDesc:
	if hoodequipped is 0:
		say "sleek and [if Player is female]feminine, with the alluring curves of a beautiful[else]agile, with the lithe build of a[end if] jungle cat, and claws to match";
	else:
		say "sleek and agile, with the build of a powerful jungle predator. Your feline form is that of a seasoned warrior, fit and toned [if Player is female]while still carrying the alluring feminine curves of an exotic[else]with the striking physique of a dangerous[end if] jungle cat";

to say JagBodyTF:
	if hoodequipped is 0:
		say "it shifts to a feline shape, gaining the sleek, alluring form of a beautiful jungle cat";
	else:
		say "it shifts to a feline shape, surging with power as you gain the physique of a seasoned warrior, a sleek and agile jungle predator";

Section 3 - Jaguar Headdress

Table of Game Objects (continued)
name	desc	weight	object
"Jaguar Headdress"	"A golden yellow hood and shawl, covered in the exotic rosettes and spots of a Jaguar."	2	Jaguar Headdress

Jaguar Headdress is equipment.
It is not temporary.
Plural of Jaguar Headdress is false.
Taur-compatible of Jaguar Headdress is true.
The size of Jaguar Headdress is 0.
The AC of Jaguar Headdress is 12.
The effectiveness of Jaguar Headdress is 35.
The placement of Jaguar Headdress is "head".
The descmod of Jaguar Headdress is "A golden yellow furred hood and shawl with black rosettes and spots is draped over your head.".
The slot of Jaguar Headdress is "head".
The damagebonus of Jaguar Headdress is 1.
The dodgebonus of Jaguar Headdress is 1.

An everyturn rule:
	if Jaguar Headdress is equipped:
		if hoodequipped is 0:
			if BodyName of Player is "Jaguar Warrior":
				say "     You drop to a knee as you feel a surge of heat roll through you, your feline physique shifting as the power of the jaguar headdress you're wearing ripples through your feline body, remaking you into a powerful jungle predator.";
			setmonster "Jaguar Warrior";
			choose row MonsterID from the Table of Random Critters;
			if "Female Preferred" is not listed in feats of Player:
				now sex entry is "Both";
			now hoodequipped is 1;
		infect "Jaguar Warrior";
	else if hoodequipped is 1:
		if BodyName of Player is "Jaguar Warrior":
			say "     No longer under the influence of the jaguar headdress, you feel your warrior's physique burning away, leaving your feline form lithe and more delicate as the last of its power drains out of you.";
		now hoodequipped is 0;
		setmonster "Jaguar Warrior";
		choose row MonsterID from the Table of Random Critters;
		if "Male Preferred" is not listed in feats of Player:
			now sex entry is "Female";

Section 4 - NPC

[moved to Tehuantl.i7x in Wahn's folder]

Jaguar Warrior ends here.
