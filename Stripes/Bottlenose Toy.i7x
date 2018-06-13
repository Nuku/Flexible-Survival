Version 3 of Bottlenose Toy by Stripes begins here.
[Version 3.7 - Bound State Addition -- Blue Bishop]
[Version 3.8 - Changed 'HP of Bubble' checks to 'dolphinmode' ones. This guarantees the BC scene only occurs there, and it's necessary now that players can return to the castle after saving/losing the vixen -- Song]
"Adds an Inflatable Dolphin creature to Flexible Survival's Wandering Monsters table"


Section 1 - Monster Responses

dolphinmode is a number that varies.
dolphinflatablefight is a number that varies.
dolinfloss is a number that varies.

when play begins:
	add { "Bottlenose Toy" } to infections of girl;
	add { "Bottlenose Toy" } to infections of furry;
	add { "Bottlenose Toy" } to infections of tailweapon;

to say dolphinflatabledesc:
	setmongender 4; [creature is female]
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	if dolphinflatablefight is 3:			[event pre-set to girl mode]
		now dolphinmode is 1;
	else if dolphinflatablefight is 4:	[event pre-set to toy mode]
		now dolphinmode is 2;
	else if dolcastlefight is 3:
		now dolphinmode is 3;
	else if ( hardmode is false and level of player < ( 5 - levelwindow ) ) or a random chance of 3 in 4 succeeds:	[girl only at low level]
		now dolphinmode is 1;
	else:																			[25% of toy mode]
		now dolphinmode is 2;
	if dolphinmode is 1:
		let debit be 0;
		if hardmode is true and level of player > 1, now debit is level of player - 1;
		now HP entry is 18 + ( debit * 3 );
		now monsterHP is 18 + ( debit * 3 );
		now wdam entry is 3 + ( debit / 4 );
		now lev entry is 1 + debit;
		now dex entry is 15 + ( lev entry / 5 );
		project the figure of Bottlenose_icon;
		say "     As you walk along the beach, you encounter another of the unusual creatures that have come into being. Rising from her playing in the water is an anthropomorphic dolphin girl, but what makes her strange is that she seems completely inflatable. Her skin is a bright pink and glossy white, with visible seams and everything. As she removes her red towel from around her waist, you can see that there are inflation nozzles where her nipples should be and another wet [']seam['] between her legs, showing her to be ready for more than innocent waterfront playing. There is a strange glisten to the towel's appearance, letting you realize that it is made of a living vinyl and has now bonded to her fin-like hand. She spins it into a rat-tail with a grin and moves in with a playful giggle.";
	else if dolphinmode is 2:
		let debit be 0;
		if hardmode is true and level of player > 5, now debit is level of player - 5;
		now HP entry is 38 + ( debit * 4 );
		now monsterHP is 38 + ( debit * 4 );
		now lev entry is 5 + debit;
		now wdam entry is 3 + ( lev entry / 3 );
		now dex entry is 16 + ( lev entry / 5 );
		say "     Resting peacefully on the beach is what looks at first to be a normal, child's inflatable beach toy. Aside from being a bigger model than most, nearly a man's height in length from nose to tail, it seems like others you've seen before. It is a bright green dolphin with a white underbelly and a cartoony grin on its bottlenose face. There is a darker section of textured rubber designed like a big scarf to provide better grip as well as a pair of small handles at its side for a child to hold. It seems innocent enough, until it starts to move on its own. With an airy giggle, it floats up into the air and does a playful backwards flip. This flip lets you see there's a slick slit towards the rear its underbelly, showing that this is no pure, children's toy but another of the unusual creatures that have come into being. As it playfully swims through the air past you, you try to push it away, finding the inflated creature's skin surprisingly durable for a beach toy. Turning around, it pulls its scarf off, fusing it to the tip of its fin and spins it in the air like a large, green towel to strike at you.";
	else if dolphinmode is 3:	[feral dolphin toy in castle]
		let debit be 0;
		if hardmode is true and level of player > 5, now debit is level of player - 5;
		now HP entry is 38 + ( debit * 4 );
		now monsterHP is 38 + ( debit * 4 );
		now lev entry is 5 + debit;
		now wdam entry is 3 + ( lev entry / 3 );
		now dex entry is 20 + ( lev entry / 5 );
		say "     Aside from being a bigger model than most inflatable beach toys, nearly a man's height in length from nose to tail, it seems like others you've seen before. It is a bright green dolphin with a white underbelly and a cartoony grin on its bottlenose face. There is a darker section of textured rubber designed like a big scarf to provide better grip as well as a pair of small handles at its side for a child to hold. It would seem innocent enough were it not moving on its own. With an airy giggle, it does a playful backwards flip. This flip lets you see there's a slick slit towards the rear its underbelly, showing that this is no pure, children's toy but another of the unusual creatures that have come into being. As it playfully swims through the air past you, you try to push it away, finding the inflated creature's skin surprisingly durable for a beach toy. Turning around, it pulls its scarf off, fusing it to the tip of its fin and spins it in the air like a large, green towel to strike at you.";
		say "     As you struggle to keep your footing on the wobbly floor of the bouncy castle, you catch sight of the now empty and partially deflated dolphin suit skulking around the edge of your fight. You get the feeling that it's waiting to ensnare you and give you the same treatment which created your opponent.";

to say losetodolphinflatable:
	choose row monster from table of random critters;
	now dolphinflatablefight is 2;
	increase dolinfloss by 1;
	if dolphinmode is 1:			[lose to girl form]
		say "     The bottlenose girl giggles again as she wraps her towel around your neck and wrists. It squeezes around your forearms, binding them tightly behind your back. Pushing you to the sandy ground, she climbs atop you, always keeping in contact with the towel, which rebonds to her wherever she's holding it so she always knows where her towel is. ";
		if inasituation is false and dolinfloss > 2: [BluB]
			now dolinfloss is 0; [resets, attempted every 3 losses]
			let dolescape be 0;
			say "     Once on the ground, she stretches her towel further, almost painfully so to partially bind your legs as well.";
			say "     Reaching over to a [one of]sand castle next to you[or]small picnic basket you'd not noticed before[or]small cooler beside where she pushed you down[or]sand mound shaped roughly like a dolphin[at random], she pulls out an uninflated dolphin toy. At first it seems like most any other dolphin toy, but as she starts pushing it overtop of you, you realize that it's actually some kind of inflatable suit shaped like a dolphin. As she fits a breathing tube to your mouth and starts sliding the PVC mask over your face, you realize that she intends to seal you up in it.";
			say "     [bold type]Shall you try to resist? You could probably escape afterwards, but you imagine it won't be easy...[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				let x be a random number between 1 and 3;
				if x is 1:
					say "     As she tries to move the head portion overtop of your face, you manage to push the mouthpiece from your lips. You try your best to act like you're enjoying her strange fun and try to tempt her into a kiss with sweet words. ";
					let playernum be a random number between 1 and charisma of player;
					let dolphinnum be a random number between 1 and cha entry;
					if playernum >= dolphinnum:
						say "     The dolphin girl giggles squeakily as you compliment her beautiful form and beg her for a kiss before she puts the mask on. Lured in by your pretty words, she takes your head in her hands and kisses you passionately. Her bottlenose face presses against your lips and a rubber tongue peeks out to slip into your mouth. You moan into the kiss but manage to stay focused. While holding your head like this, she's distracted by your tonguework and can only keep her tail on the towel to bind it. This lets you squirm your arms and legs, partially working free of your bonds.";
						increase dolescape by 1;
					else:
						say "     The dolphin girl giggles squeakily, but isn't tempted by your fumbling attempts to entice her.";
				else if x is 2:
					say "     As she tries to move the head portion overtop of your face, you twist and squirm your head around, trying to keep the mask off. But your main goal while doing this isn't to get your head out, but instead to try and squirm your arms free of their bonds.";
					let playernum be a random number between 1 and dexterity of player;
					let dolphinnum be a random number between 1 and dex entry;
					if playernum >= dolphinnum:
						say "     The rubbery towel has a tight grip on you, but you manage to shift your arms a little, getting one a few inches closer to freedom before she manages to grab your head.";
						increase dolescape by 1;
					else:
						say "     The rubbery towel has a tight grip on you, but as you momentarily focus on your arms, the dolphin girl manages to grab your head, cutting your attempt to escape short.";
				else if x is 3:
					say "     As she tries to move the head portion overtop of your face, you struggle to fight with all your might, trying to tear free of your bonds. ";
					let playernum be a random number between 1 and strength of player;
					let dolphinnum be a random number between 1 and str entry;
					if playernum >= dolphinnum:
						say "     The weak dolphin girl struggles to hold you down, even bound as you are. As you flex your muscles, you can feel the rubbery towel stretch and start to give way. By the time she manages to get you down again, you can feel that you've made some headway in getting out of this predicament.";
						increase dolescape by 1;
					else:
						say "     The dolphin girl fights against your attempt to break free and ends up gripping the towel for support. This seems to keep its grip taut around your limbs and prevents you from forcing your way free.";
				say "     The inflatable toy girl continues her work after that delay, making sure the breathing tube is properly seated and pulling the mask down over your head. It starts to inflate itself, molding around your flesh and growing out to form a bottlenose nose. As the head seats itself properly over your face, you find you can see out of its eyes, though everything has a soft, green tone to it.";
				say "     She runs her fin-like hands down your body and gropes you while she reaches to slide the rest of it over you. As the material is stretched over you, it feels very good and quite arousing, seeming to squeeze and rub against you almost with a life of its own. ";
				let playernum be ( 150 + humanity of player - libido of player + ( level of player * 2 ) );
				let playernum be a random number between 1 and playernum;
				let dolphinnum be a random number between 1 and ( 160 + ( lev entry * 2 ) );
				if playernum >= dolphinnum:
					say "     You manage to block out the pleasure that comes from the rubbery material rubbing and sliding against you and remain focused on trying to free yourself.";
					increase dolescape by 1;
				else:
					say "     The pleasure you feel as the rubbery material rubs and slides against you becomes quite distracting and you can't help but weakly moan in pleasure, momentarily lost in the sensation.";
				if dolescape is 2:
					say "     Managing to keep focused on freeing yourself, you get an arm free of the towel binding you and push the dolphin girl away. She giggles at this even as the binding towel unravels, as if even this is all part of the fun. Before she can recover and make another grab for you, you grab your fallen pack and make a run for it, leaving her and the strange, inflatable suit behind.";
				else:
					say "     As she's putting it on, it seems to stretch and adjust itself to be just the right shape and size to contain you. You can feel a slick lubricant coating its inside, letting it slide easily over your flesh. ";
					let x be a random number between 1 and 2;
					if x is 1:
						say "     You continue to try and squirm free, using your remaining strength to try and stretch the vinyl towel with a final burst of strength. ";
						let playernum be a random number between 1 and strength of player;
						let dolphinnum be a random number between 1 and str entry;
						if playernum >= dolphinnum:
							say "     Feeling that material stretch, you squirm and pull, working yourself closer to freedom.";
							increase dolescape by 1;
						else:
							say "     You flex and try to move your bound arms against your bonds, but fail to make any headway, too worn out from your struggle.";
					else if x is 2:
						say "     You continue to try and pull free, shifting your position and trying to push against the material as long as you can to by you the time to free yourself";
						let playernum be a random number between 1 and stamina of player;
						let dolphinnum be a random number between 1 and sta entry;
						if playernum >= dolphinnum:
							say "     Holding out as long as you can, you push against the stretchy material, trying to keep the girl from pulling it onto you. You twist and pull your arms while struggling and eventually she's forced to grab your legs in both arms, leaving only her tail to [']hold['] the red towel, weakening its ability to hold you for a few moments.";
							increase dolescape by 1;
						else:
							say "     You hold out for a little while, but eventually you tire and can't keep the material from sliding further over you.";
					if dolescape is 2:
						say "     Your struggling allows you to pull an arm free of the towel binding you and push the dolphin girl away. She giggles at this even as the binding towel unravels, as if even this is all part of the fun. Before she can recover and make another grab for you, you pull yourself out of the squirming inflatable, grab your fallen pack and make a run for it, leaving her and the strange, inflatable suit behind.";
					else:
						say "     Guiding your legs in, the giggling dolphin girl presses your feet into the bottom tail section. It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet. Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin suit. As she starts sealing up the front zipper, you can feel the whole of this strange, inflatable suit swelling and pressing in around you. As she's closing up the inflatable dolphin around you, she pulls her towel free. It is your final chance to escape.";
						let playernum be 150 + humanity of player - libido of player + ( level of player * 2 );
						if dolescape is 0, now playernum is playernum / 2; [penalty for no success in first three trials]
						let playernum be a random number between 1 and playernum;
						let dolphinnum be a random number between 1 and ( 160 + ( lev entry * 2 ) );
						if playernum >= dolphinnum:
							say "     Even as the pleasure of being inside the dolphin suit begins to grow, you manage to stay focused and slide a hand around against the plastic skin ballooning out to press against you. Reaching the zipper, you pull it down and struggle to pull yourself free. The dolphin girl squeaks in disappointment at having come so close to completing her goal and makes a grab for you, but you manage to push away her light form long enough to pull yourself the rest of the way free of the suit. Grabbing your pack, you start making a run for it, shaking off the last of your inflatable prison from your foot as you go. Thankfully she's more concerned about the suit than you and lets you go.";
							now dolescape is 2;
						else: [-- ]
							project figure of BT_Trapped_icon;
							say "     Even as you try to work yourself free, the inner walls of the suit press in snugly around your flesh, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you trapped inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy [else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly. Satisfied, your captor leaves you there to have fun elsewhere while they wait for you to change.";
							say "     Its influence on you is overwhelming, you don't imagine you'll keep a clear head for long while it still clings to you...";
							wait for any key;
							now tempnum2 is 0;
							now struggleatt is 1;
							bottleboundstate;
[
							if dolphinmode is 3:		[unwilling - bouncy castle version]
								say "     Even as you try to work yourself free, the inner walls of the suit press in snugly around your flesh, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you trapped inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy [else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly. Your thoughts of resisting fade as you lose yourself to the pleasure of your predicament[if player is not neuter]. You cum several times from the toy's motion against you as the dolphin girl picks you up by the handles and bounds off towards the sea[end if]. She pulls your inflatable prison out into the ocean, giggling happily the entire time. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when your air-headed captor grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
								say "     Eventually you hear the laughter and trilling of several more dolphin girls in the distance, and peering through the inflatable toy's eyes, you see a group of them playing merrily in a familiar blue castle that has come into view. As you approach the floating palace, the girls cheer excitedly, and several of them jump into the water too help push you towards it[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, dragging you out of the ocean into their floating castle[end if]. With you safely aboard, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls bounce around the castle happily, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit. With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through your mind, you're soon able to focus on nothing but the excitement around you. Finally the girls seem to tire of their play, several of them pick you up and hang you alongside the other inflatable dolphin suits lining the walls of the castle before jumping back into the sea and heading for the shore. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
							else:								[unwilling - storage shed version]
								say "     Even as you try to work yourself free, the inner walls of the suit press in snugly around your flesh, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you trapped inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly. Your thoughts of resisting fade as you lose yourself to the pleasure of your predicament[if player is not neuter]. You cum several times from the toy's motion against you as the dolphin girl picks you up by the handles and bounds off towards the sea[end if]. She pulls your inflatable prison out into the ocean, giggling happily the entire time. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when your air-headed captor grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
								say "     Eventually, you hear the laughter and trilling of several more dolphin girls in the distance, and peering through the inflatable toy's eyes, you see a group of them playing merrily along the shore. As you approach them, the girls cheer excitedly, and several of them jump into the water too help bring you over[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, leading you into the shallow waters by the shore[end if]. With you to play with, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls frolic in the warmer water between the dunes, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit. With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through your mind, you're soon able to focus on nothing but the excitement around you. Finally the girls, bored of the shoreline fun, decide to play some new game in the ocean. Several of the girls pick you up by the handles and your tail, carrying you off. As they start moving you onto the shore, you are momentarily sad that they don't want to play with you anymore before just letting yourself be lost in the pleasure of the inflatable dolphin around you. They bring you to a small storage building for beach supplies and put you inside. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
]
			else:
				project figure of BT_Trapped_icon;
				say "     Seeing that you have no intention of resisting her plan, she smiles and gives you several kisses before sliding the head over yours and it starts to inflate itself, molding around your flesh and growing out to form a bottlenose nose. As the head seats itself properly over your face, you find you can see out of its eyes, though everything has a soft, green tone to it.";
				say "     She runs her fin-like hands down your body and gropes you while she slides the rest of it over you. As the material is stretched over you, it feels very good and quite arousing, seeming to squeeze and rub against you almost with a life of its own. As she's putting it on, it seems to stretch and adjust itself to be just the right shape and size to contain you. You can feel a slick lubricant coating its inside, letting it slide easily over your flesh. Guiding your legs in, she presses your feet into the bottom tail section. It squeezes itself down around your legs, binding them together and molding its insides to grip around your feet. Your joints bend and stretch as needed to make you painlessly fit into the oversized dolphin suit.";
				say "     As you shift around within these confines, the inner walls of the suit press in snugly around your flesh, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you trapped inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy [else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly. Satisfied, your captor leaves you and goes off to have some fun elsewhere while they wait for you to change.";
				say "     Its influence on you is overwhelming, you don't imagine you'll keep a clear head for long while it still clings to you...";
				now tempnum2 is 5;
				wait for any key;
				[needs new framing content]
				bottleboundstate;
[
				if dolphinmode is 3:		[willing - bouncy castle version]
					say "     As she starts sealing up the front zipper, you can feel the whole of this strange, inflatable suit swelling and pressing in around you. Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you trapped inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly[if player is not neuter]. You cum several times from the toy's motion against you as the dolphin girl picks you up by the handles and bounds off towards the sea[end if]. She pulls your inflatable prison out into the ocean, giggling happily the entire time. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when your air-headed captor grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
					say "     Eventually you hear the laughter and trilling of several more dolphin girls in the distance, and peering through the inflatable toy's eyes, you see a group of them playing merrily in a familiar blue castle that has come into view. As you approach the floating palace, the girls cheer excitedly, and several of them jump into the water too help push you towards it[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, dragging you out of the ocean into their floating castle[end if]. With you safely aboard, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls bounce around the castle happily, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit. With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through your mind, you're soon able to focus on nothing but the excitement around you. Finally the girls seem to tire of their play, several of them pick you up and hang you alongside the other inflatable dolphin suits lining the walls of the castle before jumping back into the sea and heading for the shore. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
				else:								[willing - storage shed version]
					say "     As she starts sealing up the front zipper, you can feel the whole of this strange, inflatable suit swelling and pressing in around you. Its inner walls press in snugly around your skin, squeezing your limbs and body tightly while inflates to become a large dolphin-shaped toy with you trapped inside. You feel an increasing sense of euphoria as the inner lining [if player is herm]rubs against your throbbing cock and presses into your wet pussy[else if player is male]rubs against your maleness[else if player is female]presses into your wet pussy[else]slides against your bare groin[end if] arousing you greatly[if player is not neuter]. You cum several times from the toy's motion against you as the dolphin girl picks you up by the handles and bounds off towards the sea[end if]. She pulls your inflatable prison out into the ocean, giggling happily the entire time. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when your air-headed captor grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
					say "     Eventually, you hear the laughter and trilling of several more dolphin girls in the distance, and peering through the inflatable toy's eyes, you see a group of them playing merrily along the shore. As you approach them, the girls cheer excitedly, and several of them jump into the water too help bring you over[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, leading you into the shallow waters by the shore[end if]. With you to play with, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls frolic in the warmer water between the dunes, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit. With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through your mind, you're soon able to focus on nothing but the excitement around you. Finally the girls, bored of the shoreline fun, decide to play some new game in the ocean. Several of the girls pick you up by the handles and your tail, carrying you off. As they start moving you onto the shore, you are momentarily sad that they don't want to play with you anymore before just letting yourself be lost in the pleasure of the inflatable dolphin around you. They bring you to a small storage building for beach supplies and put you inside. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
			if dolescape is not 2:
				now dolinfloss is -100;
				now XP of player is 0; [prevents accidental level up]
				if the player is not lonely, now XP of companion of player is 0;
				now non-infectious entry is true; [prevents regular dolphin girl infection from occurring]
				now tailname of player is "Bottlenose Toy";
				now facename of player is "Bottlenose Toy";
				now skinname of player is "Bottlenose Toy";
				now bodyname of player is "Bottlenose Toy";
				now cockname of player is "Bottlenose Toy";
				now tail of player is "You have a buoyant, inflatable dolphin tail.";
				now face of player is "that of a cute, smiling dolphin";
				now skin of player is "smooth and green plastic, stretched and shaped with visible seams";
				now body of player is "shaped like an inflatable dolphin water toy. You are roughly as large as a real dolphin and have a pair of handles for someone to ride you";
				now cock of player is "tapered and made of clear, inflatable plastic, but can still become full and hard for mating. It leaks a clear, slick lubricant as precum";
				now scalevalue of player is 3;
				now bodydesc of player is "inflatable";
				now bodytype of player is "dolphin";
				now daycycle of player is 0;
				now breasts of player is 2;
				now breast size of player is 0;
				if hellHoundLevel is 0:
					follow the sex change rule;
					follow the sex change rule;
				if libido of player < 60, now libido of player is 60;
				now humanity of player is 0;
				now battleground is "void";
				now combat abort is 1;
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
				end the story saying "Trapped in the inflatable dolphin suit, your mind slowly fades away until there are no thoughts left in your air-filled head but that of playing at the beach.";
				stop the action;
]
		[END SCENE]
		else if ( sex entry is not "Male" or "Breasts" is listed in feats of player ) and "Passing Grade Chest" is not listed in feats of player and "Flat Chested" is not listed in feats of player and bodyname of player is "Bottlenose Toy" and breasts of player > 0 and ( breast size of player < 6 or "One Way" is listed in feats of player ) and a random chance of 2 in 5 succeeds:
			say "     She settles herself atop you and runs her decal eyes over your cetacean body, and soon has them focused on your nipples and their plastic air valves.";
			say "     The dolphin girl smirks down at you slyly while her fin-like hands drift across your [bodytype of player] form, squeaking lightly as the stroke and tease your PVC imitation of [skinname of player] flesh. A sharp gasp escapes your lips as one hand finds it's way to your chest, [if breast size of player > 0] giving your breast a quick squeeze before[end if] she pinches your inflation nozzle nipple with a giggle. With your arms bound and the giggling dolphin girl atop you, all you can do is squirm and moan in pleasure as your altered nipples are teased and tweaked endlessly. Eventually the pinching comes to an end and you are given a moment to catch your breath before the inflatable leans forward to take your altered nipple into her mouth with a mischievous squeak.";
			say "     Taking a deep breath before wrapping her snout tightly around your inflation nozzle, the dolphin girl begins blowing into your breast, filling your chest with a sudden tightness. Your PVC flesh creaks and groans as the bottlenose girl continues forcing air into your body, stretching your bosom to new limits. The sudden influx of air makes you lightheaded and giggly, and by the time she stops to take another breath you've given up resisting completely. After a quick kiss, the dolphin girl resumes at your other breast, plumping it up to match the first. ";
			if breasts of player > 2 and "Bouncy Bouncy" is listed in feats of player:
				say "     Your additional breasts are also given the same treatment once your upper pair's been expanded up a cup size";
			say "     With her work done, the inflatable girl pauses to grope and play with your newly swollen breasts briefly before she springs up off you. She deftly slips her towel out from underneath you and wraps it back around herself before running into the water to play and splash around some more. You are left to explore your new chest and regain clear your head.";
			increase breast size of player by 1;
			if ( breast size entry is 4 or breast size entry is 5 ) and breast size of player > breast size entry, increase breast size entry by 1;
		else if player is male:
			if dolinfloss is 2:	[oral]
				say "     She settles herself over your head, pressing her damp slit to your face. There is an arousing scent to her juices beyond the faint plasticky smell. Bound as you are, you cannot really get away, not that you're really thinking about that at this point. You start licking and kissing at her wet pussy, making her giggle merrily. You slide your tongue into her, teasing her smooth inner walls and lapping up her strangely arousing juices. Despite being a PVC pussy, it is quite warm, slick and tasty, gripping around your tongue.";
				say "     Once you've gotten into the moment and are eating her out eagerly, she leans forward and takes your [cock size desc of player] [cock of player] shaft into her cetacean head, giggling cutely before stuffing it in[if cock length of player > 36]. Her latex mouth stretches tightly around your huge member as she takes it all in happily despite the excessive stretching necessary to accomplish this[else if cock length of player > 24]. Her latex mouth stretches around your large member as she takes it all in with ease, seeming quite pleased to have it stretch her mouth open[else]. Her latex mouth engulfs your member as she takes it all in with ease[end if]. Her smooth, slick mouth and throat squeeze and slide across your pulsing meat, working you until you cum with a load groan and pump your load into the inflatable girl[if cock width of player > 40]. Despite your massive output, the dolphin girl swallows it all down, ending up considerably more inflated from your added semen filling her[else if cock width of player > 20]. Despite your considerable output, the dolphin girl swallows it all down, ending up visibly more inflated from your added semen inside her[end if][if daytimer is day]. With the sunlight shining through her, you can see the slightly shaded streaks where your cum has landed on the inside of her vinyl skin[end if][if daytimer is day and cock width of player > 20] and the pool it's forming in her belly[end if]. As she's drinking down your load, she cums with a trill of squeaky delight, spilling her slick juices across your face. Finished, the smiling inflatable slides off you, her towel unraveling on its own. She dons it like a bright red cape and dashes back into the water to frolic again.";
			else:
				say "     She settles herself into your lap, rubbing her slit over your cock and moaning softly. Bound as you are, you cannot really get away, not that you're really thinking about that at this point. A clear, slick fluid leaks from her plastic pussy, lubricating your shaft before she reaches back and guides it up into her. She trills in squeaky delight at having your throbbing cock inside her, stretching and resizing herself to take your [cock size desc of player] [cock of player] cock perfectly. Despite being a PVC pussy, it is quite warm and slick, gripping your cock nicely as the airhead giggles merrily. As she rides you, there's just something about her cute, innocent nature that really turns you on and you cum hard into her, pumping your seed into her[if daytimer is day]. With the sunlight shining through her, you can see the slightly shaded streaks where your cum has landed on the inside of her vinyl skin[end if][if daytimer is day and cock width of player > 20] and the pool it's forming in her belly[end if]. Finished, the smiling inflatable slides off you, her towel unravels on its own. She wraps it back around herself and runs into the water to play and splash around some more.";
		else:
			say "     She settles herself over your head, pressing her damp slit to your face. There is an arousing scent to her juices beyond the faint plasticky smell. Bound as you are, you cannot really get away, not that you're really thinking about that at this point. You start licking and kissing at her wet pussy, making her giggle merrily. You slide your tongue into her, teasing her smooth inner walls and lapping up her strangely arousing juices. Despite being a PVC pussy, it is quite warm, slick and tasty, gripping around your tongue. As she rides your face, there's just something about her cute, innocent nature that really drives you to please her until finally she cums with a trill of squeaky delight, spilling her slick juices across your face. Finished, the smiling inflatable slides off you, her towel unraveling on its own. She dons it like a bright red cape and dashes back into the water to splash and play.";
	else if dolphinmode is 2:	[lose to toy form - normal]
		if player is male:
			say "     The green dolphin giggles again as it wraps its vinyl towel around you, binding your arms to your sides and pulls you into the water with it. Floating on its back, it bobs in the water with you on top of it. Bound tightly as you are and with your bonds attached to its fins, you cannot do much to get away. And as the waves press its wet slit against your groin, you end up not really thinking about getting away at all. The rubbing teases your cock until you can't help but get hard and slide into its cunt. It trills happily and bobs on the water with your thrusts as you grow more excited, fucking with the motion of the ocean. The PVC pussy is pleasantly warm and slick, gripping your cock nicely as it resizes itself to take your [cock size desc of player] [cock of player] cock perfectly. As you ride the beach toy, there's just something about its soft, pliable body and smooth skin that excites you more the longer you touch it. It giggles in squeaky delight as you drive your cock hard into it while riding a large wave, pumping your hot seed into it. Finished, you pant atop the buoyant toy as the waves slowly take you back both to shore. With a little flick of its fins, the dark green towel releases you from its rubbery grip. The creature rises upright, splashing backwards over the water on its tail like a dolphin in a show, giving you a show of its creamy cunt leaking your seed[if daytimer is day]. The sunlight through its plastic body lets you see the sticky ropes of cum you've left on the inside of its air-filled body[end if]. It dons its towel once more like a scarf and dives into the water to frolic.";
		else:
			say "     The green dolphin giggles again as it wraps its vinyl towel around you, binding your arms to your sides and pulls you to the edge of the water with it. Laying on your back at the edge of the ocean, it lays itself over your body, pressing its inflated form down over you. It settles itself over your head, pressing that damp slit to your face. There is an arousing scent of its juices beyond the faint, plasticky smell. Bound as you are, you cannot really get away, not that you're really thinking about that once the bottlenose's snout finds your cunt and its tongue sets to work at your pussy. You start licking and kissing at those rubbery petals, making it trill happily. You slide your tongue into her, teasing her smooth inner walls and lapping up her strangely arousing juices. Despite being a PVC pussy, it is quite warm, slick and tasty, gripping around your tongue. It's tongue, meanwhile, is returning the favor to you. You shiver a little each time a wave splashes a little higher, sending cool water around your hot pussy, but the beach toy's tongue feels all the warmer and more pleasant after these splashes. As it rubs down onto your face, there's just something about this cute, playful toy that really drives you to please it until finally it cums with a trill of squeaky delight, spilling her slick juices across your face, pushing its bottlenose snout into your cunt to make you cum as well. After cumming hard, another big wave hits, making you cum again. Finished, the smiling inflatable slides off you, its towel unraveling on its own. It re-dons it like a dark green scarf and dives into the water to splash and play, leaving you panting at the water's edge in the afterglow of the strangely erotic toy's visit.";
	else if dolphinmode is 3:	[lose to toy mode - castle]
		now dolcastlefight is 2;
		if player is male:
			say "     The green dolphin giggles again as it wraps its vinyl towel around you, binding your arms to your sides and pulls you to the floor with it. Resting on its back, it bobs in the sway of the rubbery floor with you on top of it. Bound tightly as you are and with your bonds attached to its fins, you cannot do much to get away. And as its motion press its wet slit against your groin, you end up not really thinking about getting away at all. The rubbing teases your cock until you can't help but get hard and slide into its cunt. It trills happily and rocks on the padded floor with your thrusts as you grow more excited, fucking with the motion of the ocean. The PVC pussy is pleasantly warm and slick, gripping your cock nicely as it resizes itself to take your [cock size desc of player] [cock of player] cock perfectly. As you ride the beach toy, there's just something about its soft, pliable body and smooth skin that excites you more the longer you touch it. It giggles in squeaky delight as you drive your cock hard into it while riding a large sway of the castle, pumping your hot seed into it. Finished, you pant atop the buoyant toy as the waves slowly rock you both. With a little flick of its fins, the dark green towel releases you from its rubbery grip. The creature rises upright and flicks its tail like a dolphin in a show, giving you a show of its creamy cunt leaking your seed[if daytimer is day]. The sunlight through its plastic body lets you see the sticky ropes of cum you've left on the inside of its air-filled body[end if]. It dons its towel once more like a scarf and dives out one of the doorways and makes its way into the water. You are left panting on the inflated castle's floor, bouncing and giggling in the afterglow of the strangely erotic toy's playfulness.";
		else:
			say "     The green dolphin giggles again as it wraps its vinyl towel around you, binding your arms to your sides and pushing you onto the soft floor of the bouncy castle. Laying on your back on its bouncy surface, the dolphin lays itself over your body, pressing its inflated form down over you. It settles itself over your head, pressing that damp slit to your face. There is an arousing scent of its juices beyond the faint, plasticky smell. Bound as you are, you cannot really get away, not that you're really thinking about that once the bottlenose's snout finds your cunt and its tongue sets to work at your pussy. You start licking and kissing at those rubbery petals, making it trill happily. You slide your tongue into her, teasing her smooth inner walls and lapping up her strangely arousing juices. Despite being a PVC pussy, it is quite warm, slick and tasty, gripping around your tongue. It's tongue, meanwhile, is returning the favor to you. You moan and sway on the soft floor you're rocked by the waves of the ocean and the waves of pleasure running through your hot pussy. As it rubs down onto your face, there's just something about this cute, playful toy that really drives you to please it until finally it cums with a trill of squeaky delight, spilling her slick juices across your face, pushing its bottlenose snout into your cunt to make you cum as well. Finished, the smiling inflatable slides off you, its towel unraveling on its own. It re-dons it like a dark green scarf and dives out one of the doorways and makes its way into the water. You are left panting on the inflated castle's floor, bouncing and giggling in the afterglow of the strangely erotic toy's playfulness.";


to say beatthedolphinflatable:
	now dolphinflatablefight is 1;
	now dolcastlefight is 1;
	if dolphinmode is 1:			[defeat girl form]
		if libido of player > 45 and player is male and a random chance of 2 in 3 succeeds:
			say "     Having beaten the inflatable toy, you decide you want to have a little fun with her. Taking her own towel, you wind it around her wrists and push her onto the sandy beach. She squirms as if trying to get away, all while raising her tail and bubble bottom and trying to stifle her playful giggles. As she's so willing to play along, you climb atop her and line up your stiff cock with her leaking pussy. She moans softly as you sink it into her. She trills in squeaky delight as you mount her. Her PVC pussy is quite nice and warm, and resizes itself to be a perfect fit for your [cock size desc of player] [cock of player] cock. You hold the playfully squirming pooltoy down as you pound away at her, her inflated body shifting and deforming a little under your weight while it supports you softly. There's just something about her cute, innocent nature that really turns you on and you fuck her hard and fast, knowing you can't hurt her stretchy body. After a nice, satisfying ride atop her smooth body, you push into her one last time and unleash your hot load, spilling a pool of your hot cum inside her[if daytimer is day]. Under the bright sun, you can see the darker streaks and pool your semen makes against her inner skin[end if]. Finished, you get up and the bottlenose girl easily unwinds her towel and runs back off into the water. She gives you a farewell wave to you before getting back to splashing around, wearing her towel now as a cute, red bonnet.";
		else if libido of player > 30 and player is male and a random chance of 3 in 4 succeeds:
			say "     The inflatable dolphin girl giggles playfully as you pin her down on the sandy beach, smiling happily up at you. Looking over her strange body, you can't help but find her cute and adorable. Feeling yourself get hard, you decide to listen to your cock and move to line it up with her wet slit. She moans softly and helps you guide it into her, eager to keep playing with you. She trills in squeaky delight as you mount her. Her PVC pussy is quite nice and warm, resizing itself to best fit your [cock size desc of player] [cock of player] cock. As you thrust into her slick, lubricated hole, you let your hands wander across her body, running along the seams of her unusual skin, then to her breasts. They are like firm balloons, yielding to your touch as your squeezes make her giggle happily. But when you start playing with her nozzle nipples, she starts panting and moaning, drawing in fresh air to replace what you release as you tease them. Leaning forward, you blow into one, making her breast swell temporarily and that sets the bottlenose girl off, cumming hard around your cock and soaking your crotch in her slick juices. You cum as well, blasting your hot load into her, painting her inner skin with your semen. After you're finished, you let her back up[if daytimer is day], the sunlight showing the sticky streaks of your cum clinging to the inside of her skin,[end if] and watch her bound her way back into the water to play in the waves with her towel now around her waist like a skirt.";
		else if cunts of player > 45 and a random chance of 2 in 3 succeeds:
			say "     Having beaten the inflatable toy, you decide to have a little fun with her. Taking a hold of her yielding head, you pull her face to your pussy. Giggling happily, she nuzzles at your groin and starts licking. Her tongue is slick and plasticky like the rest of her, sliding smoothly along your sensitive folds and slipping into your cunt. You stroke her smooth head encouragingly and she licks all the more eagerly, pressing her dolphin nose all the more firmly against your pussy as she tries to please you. You moan in sudden surprise as the inflatable snout pushes into you, filling you like a dildo as she seeks to lick deeper inside you. She giggles happily at your reaction and runs her fin-like hands over your hips, licking and bobbing his head until you cum. Satisfied by the strange bit of fun with the toy, you let her get back up and she bounds her way happily back to the water, folding her towel and wrapping it around herself like a long, red scarf.";
		else:
			say "     Having beaten the inflatable toy, you give her a swat on the ass and send her giggling back to the water to play in the waves.";
	else:	[defeat toy form]
		if libido of player > 45 and dolphinmode is not 3:
			say "     Beaten, the inflatable dolphin sags slowly back towards the ground like a balloon low on helium. As it drifts down, it rolls over one last time, giving you a view of its wet, womanly slit. In your aroused state, you find yourself considering playing with the toy creature.";
			say "     [bold type]Will you play with the toy before continuing on your way?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				if player is male:
					say "     Climbing atop the toy, you pin it on its back on the sandy beach beneath you and rub your body against it, grinding your maleness along its smooth, plastic skin. As your cock stiffens, it giggles happily that you've decided to play with it after all. Pressing yourself down onto its inflatable body, you deform it slightly as you drive your throbbing shaft between those slick folds. It trills in squeaky delight as you mount it. Its PVC pussy is pleasantly warm and slick with lubricant, resizing itself to grip your [cock size desc of player] [cock of player] cock perfectly. You hold the playfully squirming pooltoy down by its handles as you pound into it, the creature's inflated body shifting and deforming a little under your weight while supporting you softly. There's just something about its smooth skin and pliable body that excites you more the longer you touch it. Knowing you can't hurt its stretchy body, you pound away at it good and hard, making the green dolphin squeak and trill in delight. After a nice, satisfying ride atop its smooth body, you push into the dolphin toy one last time and unleash your hot load, spilling a pool of your hot cum inside it[if daytimer is day]. Under the bright sun, you can see the darker streaks and the puddle your semen makes against her inner skin[end if]. Finished, you get up and the inflatable toy back up and it floats slowly back up into the air, weighed down a little by the tiring fight and your load. It slips its dark green towel back on and dives into the water to frolic and play in the waves.";
				else:
					say "     Pulling the toy over to the water by its handle, you float it on its back and climb atop the buoyant, green dolphin. Gripping its handles for support, you rub yourself against its wet slit, letting its PVC pussy glide against yours. The dolphin trills, happy that you've decided to play with it after all. Floating on its back, it bobs in the water with you on top of it as the waves press its wet slit against yours. You rub yourself against its smooth, pliable body, something about the feel of it making you more and more aroused as the motion of the ocean helps you rock against one another until finally you cum hard while riding a large wave, soaking your groins in a mix of feminine juices and slick lubricant. Finished, you pant atop the buoyant toy as the waves slowly take you back both to shore. You climb off the green toy, help it get righted and send it on its way to play in the waves with a soft slap. It does a little spin to pull its towel back into a scarf, flashing its pussy at you one last time before frolicking in the water.";
			else:
				say "     Resisting the impulse, you quickly grab the dolphin toy by the holding handles and toss it into the waves, letting it swim around in the water to amuse itself away from you before you reconsider playing with the strange being.";
		else:
			say "     Beaten, the inflatable dolphin sags slowly back towards the ground like a balloon low on helium. As it drifts down, you grab it by one of the handles and pull it over to the water, tossing it into the waves. You leave it there to frolic and play in the waves out of your way.";

to bottleboundstate:
	let partialengulf be 0;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Bottlenose Toy":
			now monster is y;
			break;
	now lustatt is libido of player;
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if tempnum2 is 5 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself quickly overtaken by lust, the tight vinyl clinging to your [if player is male]dick[smn], squeezing your bliss out of you, the warm, wet feel of your [cum load size of player] load quickly drenching your groin until it's absorbed by[else if player is female]crotch, squeezing your bliss out of you, the warm, wet feel of your honey quickly drenching your groin until it's absorbed by[else]genderless crotch, forcing you to writhe in insatiable need against[end if] the twisted material. ";
			if partialengulf is 1:
				say "     Exploiting you moment of weakness, the dolphin suit pulls you back within its embrace, forcing you to struggle free of its hold once more.";
			else:
				say "     Panting against the vinyl prison, its grip on you tightens ever further, eager to keep you within its twisted embrace.";
			now partialengulf is 0;
			now lustatt is libido of player;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		if struggleatt < 3:
			now partialengulf is 0; [player is fully engulfed]
		else:
			now partialengulf is 1; [player is partially engulfed]
		now enduring is false;
		if partialengulf is 0:
			say "     Enveloped entirely within the vinyl suit's confines, your vision blurred and tinted green through the eyes of this form-fitting attire. [one of]You can barely move, aroused, [if player is male][cock size desc of player] dick[smn] grinding firmly against the precum-slicked[else]sweat-slicked body grinding against the slippery[end if] walls, you can barely contain yourself[or]These tight, movement-restricting walls command such an overwhelming influence on your arousal, barely able to hold yourself back[or]The sounds of your moans and panting muffled and vibrating against the constricting walls, forcing you to face your intense need[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself free, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if], or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
		else:
			say "     Partially within the vinyl suit's confines, its grip on you still remains very tight. [one of]Your lower torso can barely, [if player is male][cock size desc of player] dick[smn] grinding firmly against the precum-slicked[else]sweat-slicked body grinding against the slippery[end if] walls, you can barely contain yourself[or]Even as you start to free yourself, these confines still command an overwhelming influence on your arousal, barely able to hold yourself back[or]Loudly moaning and panting against the open air, you don't imagine this partial freedom will last very long[at random]. You imagine your only active option is to [bold type]S[roman type]truggle enough until you can pull yourself completely free, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if], or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Struggle: [bottlenstrugglebar][line break]";
		if humanity of player < 1:
			if dolphinmode is 3:		[unwilling - bouncy castle version]
				say "     Your thoughts of resisting fade as you lose yourself to the pleasure of your predicament[if player is not neuter]. You cum several times from the toy's motion against you as the dolphin girl picks you up by the handles and bounds off towards the sea[end if]. She pulls your inflatable prison out into the ocean, giggling happily the entire time. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when your air-headed captor grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
				say "     Eventually you hear the laughter and trilling of several more dolphin girls in the distance, and peering through the inflatable toy's eyes, you see a group of them playing merrily in a familiar blue castle that has come into view. As you approach the floating palace, the girls cheer excitedly, and several of them jump into the water too help push you towards it[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, dragging you out of the ocean into their floating castle[end if]. With you safely aboard, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls bounce around the castle happily, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit.";
				say "     With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through your mind, you're soon able to focus on nothing but the excitement around you. Finally the girls seem to tire of their play, several of them pick you up and hang you alongside the other inflatable dolphin suits lining the walls of the castle before jumping back into the sea and heading for the shore. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
			else:								[unwilling - storage shed version]
				say "     Your thoughts of resisting fade as you lose yourself to the pleasure of your predicament[if player is not neuter]. You cum several times from the toy's motion against you as the dolphin girl picks you up by the handles and bounds off towards the sea[end if]. She pulls your inflatable prison out into the ocean, giggling happily the entire time. The motion of the strange suit riding the rolling ocean waves sends shocks of pleasure through your body, and the pleasure only intensifies when your air-headed captor grabs the toy's handles and pulls herself out of the water to ride atop it. The dolphin girl rides the toy for some time, stroking and hugging its vinyl exterior, each motion sending another echo of pleasure through you.";
				say "     Eventually, you hear the laughter and trilling of several more dolphin girls in the distance, and peering through the inflatable toy's eyes, you see a group of them playing merrily along the shore. As you approach them, the girls cheer excitedly, and several of them jump into the water too help bring you over[if player is not neuter]. You cum several more times as the girls push, pull and squeeze the inflatable suit, leading you into the shallow waters by the shore[end if]. With you to play with, the excited girls resume their giggling playtime with you as their new toy. The dolphin girls frolic in the warmer water between the dunes, occasionally stopping to squeeze each other's inflatable bodies, or lick at the slits between their legs, but there are always several girls focusing on you, lavishing attention on the inflatable suit.";
				say "     With the pleasure of each movement rolling through your body and the sounds of their trills and laughter echoing through your mind, you're soon able to focus on nothing but the excitement around you. Finally the girls, bored of the shoreline fun, decide to play some new game in the ocean. Several of the girls pick you up by the handles and your tail, carrying you off. As they start moving you onto the shore, you are momentarily sad that they don't want to play with you anymore before just letting yourself be lost in the pleasure of the inflatable dolphin around you. They bring you to a small storage building for beach supplies and put you inside. With the breathing tube in your mouth, all you can do is moan softly as the strange suit continues to pleasure you over and over again, seeming to draw strength from it.";
			now dolinfloss is -100;
			now XP of player is 0;
			now non-infectious entry is true; [prevents regular dolphin girl infection from occurring]
			now tailname of player is "Bottlenose Toy";
			now facename of player is "Bottlenose Toy";
			now skinname of player is "Bottlenose Toy";
			now bodyname of player is "Bottlenose Toy";
			now cockname of player is "Bottlenose Toy";
			now tail of player is "You have a buoyant, inflatable dolphin tail.";
			now face of player is "that of a cute, smiling dolphin";
			now skin of player is "smooth and green plastic, stretched and shaped with visible seams";
			now body of player is "shaped like an inflatable dolphin water toy. You are roughly as large as a real dolphin and have a pair of handles for someone to ride you";
			now cock of player is "tapered and made of clear, inflatable plastic, but can still become full and hard for mating. It leaks a clear, slick lubricant as precum";
			now scalevalue of player is 3;
			now bodydesc of player is "inflatable";
			now bodytype of player is "dolphin";
			now daycycle of player is 0;
			now breasts of player is 2;
			now breast size of player is 0;
			if hellHoundLevel is 0:
				follow the sex change rule;
				follow the sex change rule;
			if libido of player < 60, now libido of player is 60;
			now humanity of player is 0;
			now battleground is "void";
			now combat abort is 1;
			WaitLineBreak;
			now trixieexit is 1;
			end the story saying "Trapped in the inflatable dolphin suit, your mind slowly fades away until there are no thoughts left in your air-filled head but that of playing at the beach.";
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
				if struggleatt < 3:
					increase struggleatt by 1;
					say "     You struggle to pull yourself free, [one of]creaking loudly against your writhing protests[or]the suit groaning as you try to wrench it from you[or]the suit desperately trying to keep you within its grasp[at random]. ";
					if struggleatt is 3:
						say "     You finally manage to wrench the suit free of you, but it still manages to partially cling to your form, hellbent on keeping a hold on you and maintaining its toxic influence. [one of]The dolphin lady appears to have run off, ensuring this situation doesn't become even more difficult for you.[or][stopping]";
					LineBreak;
					if bodyname of player is "Bottlenose Toy":
						if a random chance of 1 in 3 succeeds:
							infect;
					else if a random chance of 2 in 3 succeeds:
						infect;
					increase libido of player by 2;
					if libido of player > 100, now libido of player is 99;
					decrease humanity of player by 4 + psycheadjust;
					increase lustatt by 35 + (lustadjust * 5);
				else:
					increase boundmod by 1;
					if boundmod < 3:
						say "     You try to peel the suit off of you, [one of]tainted apparel clinging to you like tape[or]creaking and whining as it fights to cling to you[or]a fight to remove it without it sticking to something else[at random].";
						LineBreak;
						if bodyname of player is "Bottlenose Toy":
							if a random chance of 1 in 3 succeeds:
								infect;
						else if a random chance of 2 in 3 succeeds:
							infect;
						increase libido of player by 2;
						if libido of player > 100, now libido of player is 99;
						decrease humanity of player by 4 + psycheadjust;
						increase lustatt by 35 + (lustadjust * 5);
					else:
						say "     After some while you manage to pry yourself free of the suit, its overwhelming influence still addling your lust-filled mind...";
						LineBreak;
						cleanboundmemory;
						wait for any key;
						now trixieexit is 1;
				wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     You actively submit to these overwhelming circumstances, [one of]mind quickly drowning in a haze of dizzying lust[or]loudly moaning and panting in a dizzying haze of rapidly rising need[or]tight suit squeezing shamelessly against your eager, [bodytype of player] form[at random].";
					LineBreak;
					if bodyname of player is "Bottlenose Toy":
						if a random chance of 1 in 3 succeeds:
							infect;
					else if a random chance of 2 in 3 succeeds:
						infect;
					increase libido of player by 2;
					if libido of player > 100, now libido of player is 99;
					decrease humanity of player by 4 + psycheadjust;
					increase lustatt by 60 + (lustadjust * 10);
				else:
					say "     You make the choice to tolerate these overwhelming circumstances, [one of]mind quickly losing itself in a lustful haze[or]moaning and panting in a dizzying haze of rapidly rising need[or]tight suit squeezing shamelessly against your [bodytype of player] form[at random].";
					LineBreak;
					if bodyname of player is "Bottlenose Toy":
						if a random chance of 1 in 3 succeeds:
							infect;
					else if a random chance of 2 in 3 succeeds:
						infect;
					increase libido of player by 2;
					if libido of player > 100, now libido of player is 99;
					decrease humanity of player by 4 + psycheadjust;
					increase lustatt by 35 + (lustadjust * 5);
				wait for any key;
				next;
			else:
				now enduring is true;
				LineBreak;
				if boundrecover is true:
					increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					LineBreak;
					if bodyname of player is "Bottlenose Toy":
						if a random chance of 1 in 3 succeeds:
							infect;
					else if a random chance of 2 in 3 succeeds:
						infect;
					increase lustatt by 20 + (lustadjust * 3);
					now boundrecover is false;
				else:
					say "     You fight to maintain clarity within these tight confines, [one of]its powerful influence making it difficult to maintain any clarity[or]barely able to keep the tide of need from overwhelming you[or]the creaking suit clinging ever more firmly against its occupant[at random].";
					LineBreak;
					if bodyname of player is "Bottlenose Toy":
						if a random chance of 1 in 3 succeeds:
							infect;
					else if a random chance of 2 in 3 succeeds:
						infect;
					increase libido of player by 1;
					if libido of player > 100, now libido of player is 99;
					decrease humanity of player by 2;
					increase lustatt by 20 + (lustadjust * 3);
				wait for any key;
				next;

to say bottlenstrugglebar:
	say "[if boundmod > 1]}[end if][if boundmod > 0]}[end if] [close bracket][if struggleatt is 3]X[else]-[end if][if struggleatt > 1]X[else]-[end if][if struggleatt > 0]X[else]-[end if][bracket] [if boundmod > 0]{[end if][if boundmod > 1]{[end if]";


to say dolphinflatableattack:
	if dolphinmode is 1:
		say "[one of]The playful dolphin girl wraps her towel firmly around your arm, giving a firm squeeze before you can pull free![or]The vinyl towel whips out, stinging you in the ass! The inflatable dolphin giggles as you jump![or]The inflatable giggles as she whips you with her towel![or]The towel smacks you in the face and the dolphin giggles and apologizes. 'That went a little high. Sorry!'[or]The pooltoy girl moves in close and rubs one of her hands over your groin, squeezing lightly![or]The pink bottlenose giggles 'Come on. Let's play!' and turns, raising her inflatable tail to give you a peek at her bubble bottom, plastic pucker and leaking slit![or]The dolphin toy turns and slaps her inflatable tail against your side![at random]";
	else:
		say "[one of]The playful dolphin does a flip in the air, smacking you with its rubbery tail![or]The vinyl towel whips out, stinging you in the ass! The inflatable dolphin giggles as you jump![or]The inflatable giggles as she whips you with its towel![or]The large pooltoy gets its towel entangled around your ankle and pulls you over before you can squirm free![or]The inflatable toy swims through the air and bumps its nose firmly against your groin for your continued resistance to its playing![or]The green bottlenose giggles 'Come on. Play with me!' and raises itself upright and batting its tail in imitations of a dolphin standing out of the water. This gives you another view of this inflatable creature's slick, womanly folds![or]The toy dolphin leaps over you and swats your ass with its tail![or]The large toy manages to get its dark green towel around your wrist. Swimming quickly around you, it spins you around dizzily while giving a clicking, dolphin-like laugh![at random]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Bottlenose Toy"; [ Infection/Creature name. Capitalized. ]
	now attack entry is "[dolphinflatableattack]"; [ Successful attack message ]
	now defeated entry is "[beatthedolphinflatable]"; [ Text when monster loses. ]
	now victory entry is "[losetodolphinflatable]"; [ Text when monster wins. ]
	now desc entry is "[dolphinflatabledesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "the cute face of a cartoonishly rounded dolphin, like some kind of inflatable pool toy. You have big, flat eyes and a wide grin drawn on your bottlenose snout. Both your eyes and mouth seem to work fine and your head feels hollow and empty, bending like a balloon when you touch it";
	now body entry is "that of an anthropomorphic dolphin, strangely somehow empty and filled with air. There is even a flappy little inflated fin at your back that you have press to one side when wearing your backpack. Your body is covered in a PVC imitation of [skinname of player] flesh, complete with seams. Your body is able to bend and reshape itself to move instead of having any actual bones or muscles. The scent of fresh plastic lingers around you. Your nipples have been replaced with small inflation nozzles, but are just as sensitive as normal nipples, if not more";
	now skin entry is "shiny PVC plastic of smooth [if player is herm]royal purple[else if player is male]sky blue[else]bright pink[end if] and glossy white";
	now tail entry is "You have an inflated, balloon-like dolphin tail attached just over your bubble-butt rear end."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]inflatable[or]PVC[or]vinyl[at random]";
	now face change entry is "your head bulges and swells as you take a deep breath. But the air is not drawn into your lungs, but instead into your head, filling it with air. Your head reforms into that of a cartoonish dolphin with a smooth exterior. Your eyes water momentarily before they flatten and become large, flat drawing on your surface of your face. Your mouth soon follows the same fate, turning into a cartoonish grin on your bottlenose snout";
	now body change entry is "a strange lightness suffuses through your body. You start panting heavily, but only drawing in air, never exhaling. But your body doesn't swell up either, instead the air seems to be replacing the contents of your body. Your skin becomes smooth and plasticky, becoming an imitation of [skinname of player] flesh with seams between the sections and airbrushed markings and shading. Your body reforms into a smooth, slender shape with fin-like hands and feet, as well as an inflated dorsal fin on your back";
	now skin change entry is "your skin becomes shiny and smooth, turning into flexible vinyl. Your front and inner thighs become a smooth, glossy white while the rest is a [if player is herm]royal purple[else if player is male]sky blue[else]bright pink[end if]";
	now ass change entry is "you feel a pressure building before releasing with a soft squeak. For a moment you think you farted, but the squeaking sound continues as a plump dolphin tail grows from your ass. But it is not made of flesh, but is made of plastic and is inflated with air, yet moves all the same";
	now cock change entry is "feels like its swelling and growing wildly. A quick look shows that it's not growing, but instead filling with air and becoming an inflatable cock, but still sensitive and fully functional, leaking a slick lubricant from its tip";
	now str entry is 8; [ These are now the creature's stats... ]
	now dex entry is 15; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 18; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Beach"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 4; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 24; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 10; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]inflatable[or]plasticky[or]light[or]buoyant[at random]";
	now type entry is "[one of]cetacean[or]dolphin-like[or]inflatable[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Bottlenose Toy":
		if dolinfloss is -100:
			say "     Safely stored away in the [if dolphinmode is 3]floating bouncy castle[else]small storage building[end if], you are continuously pleasured by the dolphin suit wrapped around you. What little remains of your fading mind is vaguely aware that you're being changed by the slick inner walls rubbing against you. You are unclear on what's happening and don't really care, your thoughts evaporating away as you become as empty and airheaded as those cute girls on the beach. After some time has passed (probably a few days, though you were unable to count them as you were only dimly aware of the growing and fading light outside), several of the girls return to the [if dolphinmode is 3]colorful castle[else]building[end if] and remove you and the inflatable dolphin suit.";
			say "     Snuggling and kissing it, they slowly open it up and release you. Their fin-hands run over your new, smooth skin and inflatable body, having been transformed a new feral dolphin toy. You are happy to be released and merrily play with several of the girls in the water while one of them licks the inside of the suit clean and bundles it up for the next happy victim they can find to put into it.";
			if player is male:
				say "     Having a cock to play with as well, the girls have a lot of fun rubbing their squeaky bodies against yours. Fucking is nothing more than another of the many games you play, mindlessly whiling away the time without a care in the world or a thought in your empty head past your eternal playtime. You play happily with the girls and the other dolphin toys, happy to share your cock with them as well.";
			else:
				say "     You and the other dolphin toys have plenty of fun together rubbing your squeaky bodies together or licking at the pleasant slit between your legs. But when a blue male toy joins your group, having him fuck you with his cock is a whole new game to play. You and the others mindlessly while away the time without a care in the world or a thought in your empty heads past your eternal playtime.";
		else if humanity of player < 10:
			say "     As your infection progresses, you become nothing but an inflatable creature, inside and out. With nothing more than thoughts of playing in the water, you bounce your way back to the waterfront. There you join several other inflatable dolphins and frolic in the water and play on the beach. While most are dolphin girls, there are a few shaped like regular dolphins as well to play with the pink girls. ";
			if player is male:
				say "     Having a cock to play with as well, the girls have a lot of fun rubbing their squeaky bodies against yours. Fucking is nothing more than another of the many games you play, mindlessly whiling away the time without a care in the world or a thought in your empty head past your eternal playtime.";
			else:
				say "     You and the other pink girls have plenty of fun together rubbing your squeaky bodies together or licking at the pleasant slit between your legs. You have many a pleasant ride on the dolphin toys as well. But when a blue male toy joins your group, having him fuck you with his cock is a whole new game to play. You and the others mindlessly while away the time without a care in the world or a thought in your empty heads past your eternal playtime.";
		else:
			say "     Your unusual body causes quite a bit of consternation for the scientists analyzing the various strains found in the infected city. Being an inflatable creature with no internal structure at all, they don't understand how you can be alive at all. They have some theories and ideas, but you can hardly follow it. Something about your transformation has made you not care about such complicated thoughts, preferring to live in the moment. While some would call you an airhead, you have retained enough of your humanity to still think. You just don't bother most of the time.";
			say "     Because of your body's strange nature, you decide to get a job as a lifeguard and swimming instructor at a local pool. The kids particularly like your cute, inflatable body and merry antics in the water. And there are always a student or two from your older classes who enjoys your pooltoy form in another way.";
			if player is male:
				say "     You grow quite close to one student, an older woman who's now found herself in the body of a youthful seal. Looking in her early twenties, she's ready to live life again. But her aquatic body is at odds with her phobia of the water. You work with her slowly over several months, having many after hours sessions with her, some for swimming and some for lovemaking. In time, you coax her to become more relaxed and eventually a great swimmer. She even starts to slowly change over time from all the exposure to you, gradually becoming an inflatable seal toy and your mate. You share long lives, ever youthful in your artificial bodies.";
			else:
				say "     You grow quite close to the parent of one batch of students. The single father and his two girls have become otters since the outbreak. The girls become great swimmers almost naturally and love visiting the pool. Their father loves visiting the pool to visit with you and will often join you in the break room for some private sex. In time from the constant exposure, he becomes an inflatable otter toy and your mate. His girls slowly change as well, becoming inflatables also. You love your new family and enjoy a long, happy life of swimming and playtime.";

Bottlenose Toy ends here.
