Version 3 of Medical Checkups by Hellerhound begins here.
[ Version 3.3 - Ovi-birth activation by Stripes]

Section 1 - Pediatrics Office

Pediatrics door is a door. "The city lies out of the huge hole in the roof and south wall, jagged edges making the going difficult, but passable.".
Pediatrics Lobby is a room. "The lobby for one of those medical clinics people go to to find a doctor. This is the lobby, or was. The cushy seats are shattered, the wood splintered, and the floor cracked and gouged by huge claws. Cum lies everywhere, and you have to pick your way through the room carefully. The doors to the inner area are still shut and locked. Battered, but intact. Maybe there is someone hiding out there?".
Pediatrics Lobby is fasttravel.
Pediatrics door is dangerous.
North of Pediatrics door is pediatrics Lobby.
South of Pediatrics door is Wandering the City.
The marea of pediatrics door is "Outside".
North of Pediatrics Lobby is Doctors Office.
Doctors Office is a room. "A doctor's office, this one is a wreck.  There are stains everywhere and food and water stockpiled in the cabinets.  The clock is no longer running, and an oil lamp stands on the blue marble counter, on and burning.  It fills the air with smoke.  You idly wonder what happened to the smoke detectors.".

the scent of the Doctors Office is "The doctor's office smells of antiseptic and aroused lizard scents.";

the scent of Pediatrics Lobby is "With the numerous cum stains here, it hard to smell anything but that.";

instead of going north from the Pediatrics Lobby while ( hp of doctor medea is 0 and medeaget is 0 ):
	say "Examining the door to the north, you can hear some movement behind it and decide to risk knocking, asking if they need any assistance.  'Thank you, no.  I've already been quite thoroughly taken care of, I think,' a female voice responds.  Clarifying that you are a survivor and that you meant if they needed any help in there, you can hear the sounds of heavy objects being pushed aside, allowing you entrance.  'Well, perhaps I can be of assistance to you, then,' the voice responds.  The female voice does seem a little strange and you pick up the sound of clicking claws as she moves around inside, making you reconsider actually going in.";
	now hp of doctor medea is 1;

Section 2 - Doctor Medea

Doctor Medea is a person. "A doctor, by the name on the door label, [']Doctor Medea['], is busily mixing vials here.".
Doctor Medea is in Doctors Office.

the scent of Doctor Medea is "The doctor smells of female lizard, though there's a hint of male musk in there as well.";

medeaget is a number that varies.
medeaub is a truth state that varies.  medeaub is usually false.
ovipregmedeatalk is a truth state that varies.  ovipregmedeatalk is usually false.

The description of Doctor Medea is "[if medeaget is 0]Doctor Medea is a relatively human lizard, clothed, with multicolored scales.  You suspect she got caught in the park initially[otherwise]Doctor Medea is a relatively human lizard, clothed, with multicolored scales.  You suspect she got caught in the park initially.  There is now a darker line running down her skirt to where some whitish cum is dripping.  It looks like she came in herself, since the door was dust covered except for your marks[end if].";
The conversation of Doctor Medea is { "Babies!" }.


instead of conversing the Doctor Medea:
	if medeaget is 0:
		say "     Doctor Medea is a relatively human lizard, clothed, with multicolored scales[if park entrance is known].  You suspect she got caught in the park initially[otherwise].  You wonder where she got such an interesting infection[end if].  'Hello.  I am Doctor Medea.  I used to work here, and am only still here because the monster that broke in was too dumb to think of doors as an entrance.  The condition of the lobby keeps the other monsters away, thinking this place has already been looted.  Perhaps I could help you with something?' she asks with a helpful smile.";
	otherwise:
		say "     You approach Doctor Medea again.  All that is different is there is now a darker line running down her skirt to where some whitish cum is dripping.  It looks like she came in herself, since the door is still dust covered except for your marks.  'Have you come looking for some help with your pregnancy needs?' she asks with more interest than a doctor perhaps should.";
	if cunts of player > 0:
		say "[medeaadjustments]";
	otherwise if the cunts of the player is 0:
		if hp of Doctor Medea is 1:
			if "MPreg" is listed in feats of player:
				say "     'I cannot help you.  I specialize in childbirth and minor illnesses.  As the latter are not occurring with the nanite plague and you lack a womb...'  You interrupt the reptilian doctor here as you start to explain your unusual ability to become pregnant rectally, she seems quite surprised and intrigued.  'I had started to consider such possibilities induced by the infection, but you're the first case I've been able to study.  Please, you must let me examine you!' she says excitedly, taking your hands and rushing you towards the examination table.";
				say "     Climbing up, she gets you onto all fours and starts with a cursory examination of your anus before spreading some cool gel over it and sinking a gloved finger into you.  She probes around your backside, causing a few moans of pleasure.  As her examination continues, you can hear her panting heavily as well as she stimulates [if cocks of player > 0]your prostate, making your cock hard and getting you to dribble pre onto the padded seat[otherwise]you[end if].  She leans atop you, pounding her fingers hard and fast into you [if cocks of player > 0]until you cum messily[otherwise]until you're left panting and moaning[end if] from the vigorous stimulation.";
				if medeaget is 0 or medeaget is 1:
					say "     Doctor Medea straightens herself up and removes the glove, trying to act professional again, despite the rivulets of white cum you see running down her thighs.  'You are very interesting.  This has been most... instructive.  I believe I may be able to provide you with at least some assistance.'";
					now hp of Doctor Medea is 5;
				otherwise:
					say "     Doctor Medea straightens herself up and removes the glove, trying to act professional again, despite the rivulets of white cum you see running down her thighs.  'You are very interesting.  This has been most... instructive.  I believe I should be able to provide you with some assistance as I would my female patients.'";
					if medeaget is 2, now medeaget is 3;
					now hp of Doctor Medea is 6;
			otherwise if medeaget is 0:
				say "     'I cannot help you.  I specialize in childbirth and minor illnesses.  As the latter are not occurring with the nanite plague.  Maybe I could help if you were a female?'";
				say "     She pauses and ponders for a moment.  'There is another possibility as well.  With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation.  I had just started to look into those possibilities.  Perhaps you might be interested in becoming my test subject for this.  To accomplish this, I would first need you to obtain some medical supplies I would need.  The delivery truck was supposed to arrive the day of the outbreak, so you may be able to locate it.  Here is a list of what I need.  I would need those supplies regardless if you choose to undergo this procedure or if you find a means to become female.'  She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
				now medeaget is 1;
				now hp of doctor medea is 2;
			otherwise if medeaget is 1:
				say "     'I cannot help you.  I specialize in childbirth and minor illnesses.  As the latter are not occurring with the nanite plague.  Maybe I could help if you were a female?'";
				say "      She pauses and ponders for a moment.  'There is another possibility as well.  With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation.  I had just started to look into those possibilities.  Perhaps you might be interested in becoming my test subject for this.  To accomplish this, I would need you to obtain those medical supplies I had mentioned previously.  I would need those supplies regardless if you choose to undergo this procedure or if you find a means to become female again.'  She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
				now hp of doctor medea is 2;
			otherwise if medeaget is 2 or medeaget is 3:
				say "     'I cannot help you.  I specialize in childbirth and minor illnesses.  As the latter are not occurring with the nanite plague.  Maybe I could help if you were a female?'";
				say "     She pauses and ponders for a moment.  'There is another possibility as well.  With the changes the spreading infection can create, it may be possible to allow a male individual to form a surrogate womb for impregnation.  I had just started to look into those possibilities.  Perhaps you might be interested in becoming my test subject for this.  Thankfully, you've already obtained the medical supplies I'd requested earlier.  I now just need you to obtain some more specialized equipment.  Your best chance of locating it would be at either the Pediatrics Ward or the Obstetrics Department of the City Hospital for these supplies I require.'";
				now Obstetrics Department is unresolved;
				now hp of doctor medea is 3;
				if medeaget is 2, now medeaget is 3;
		otherwise if hp of Doctor Medea is 2:
			if medeaget is 2:
				say "     You present the equipment and supplies to Dr. Medea, who seems quite pleased with your haul.  'Yes, it seems you've obtained everything I'd listed.  We're halfway there, now.  For the procedure itself, I will also be needing some more specialized equipment.  Your best chance of locating it would be at either the Pediatrics Ward or the Obstetrics Department of the City Hospital for these supplies I require.";
				now Obstetrics Department is unresolved;
				now hp of doctor medea is 3;
				now medeaget is 3;
			otherwise:
				say "     'I would like you to try to obtain those supplies the clinic was supposed to receive.  Without them, there's little I can do to assist you.'";
		otherwise if hp of Doctor Medea is 3:
			say "     'I would like to you try to obtain that specialized equipment I've described.  Without it, I cannot complete the procedure.  If you're still interested, you should try searching the City Hospital for those items.'";
		otherwise if hp of Doctor Medea is 4:
			say "     When you place the requested equipment on the counter for Dr. Medea, she is quite pleased.  'Excellent!  Give me a few moments to look this over and prepare, but we should be able to start any time now.'";
			now hp of Doctor Medea is 6;
		otherwise if hp of Doctor Medea is 5:	[Able to check for M-Pregnancy]
			say "[medeaadjustments]";
		otherwise if hp of Doctor Medea is 6:
			if "MPreg" is listed in feats of player:
				say "     'You are currently able to carry a male pregnancy.  Would you like me to remove that ability?' the lizard doctor asks.";
				if the player consents:
					if gestation of the child > 0:
						say "     'You're already pregnant at this time, so I cannot do that at this time,' she says.";
					otherwise:
						remove "MPreg" from the feats of player;
						say "     She seems a little disappointed, but nods and goes ahead with the procedure, removing your ability to become impregnated from anal sex.";
				otherwise:
					say "[medeaadjustments]";
			otherwise if "MPreg" is not listed in feats of player:
				say "     'You are currently unable to carry a pregnancy as a male.  Would you like me to grant you the ability to become pregnant as a male?' she asks.";
				if the player consents:
					say "     She seems pleased at the prospect of helping you become pregnant by granting you this strange ability.  The procedure is swiftly accomplished.  The lizard doctor smiles and strokes over your belly, grinning at the thought of it swelling with life.";
					add "MPreg" to feats of player;
					say "[medeaadjustments]";
				otherwise:
					say "     The lizard doctor seems a little disappointed in your reply, but nods.  'Until you're able to become pregnant, there's not much more that I can do for you.  If you won't accept to undergo the procedure, you'd best go out into the city and change into a female or herm,' she says.";


Section 3 - Medical Adjustments

to say medeaadjustments:
	now sextablerun is 0;
	if medeaget is 0:
		say "     'I could determine if you are pregnant.  For anything past that, I'm going to need your assistance in obtaining the necessary supplies.  With those, I could make you more fertile, or sterilize you.  With even more equipment, I might be able to do even more than that,' she says with an odd eagerness in her tone.";
		say "     'I would be able to render further assistance to you, changing some of the fertility-related aspects of your altered body, but I lack the materials necessary for such an operation,' the lizard doctor says.  'There should be some in a medical delivery truck that was supposed to arrive the day the infection started.  Here is a list of the items I'll need.'  She provides you with the list and describes the truck used by the delivery company, asking that you keep an eye out for it.";
		now medeaget is 1;
	otherwise if medeaget is 1:
		say "     'I could determine if you are pregnant and check on it with my current instrumentation.  For anything more, you'll need to get those materials I asked about earlier.  They should be in the abandoned truck I described.'";
	otherwise if medeaget is 2:
		say "     'Wonderful!  You managed to get the supplies.  Thanks!  I can now do medical work again!' the lizard doctor says happily.";
		now medeaget is 3;
	otherwise if medeaget is 3:
		say "     'In thanks for your help, I can provide you with several services.  As before, I can determine if you're pregnant and provide some information on the fetus.  I can also adjust your degree of fertility [if lust of Medea >= 3]and your estrus cycle [end if]if you'd like.  Would you like me to do that?  I could make you extra fertile or even sterile if you'd like.'  While she seems rather eager about the first, she's clearly less enthused about the second.";
	if medeaub is false and medeaget >= 3 and cunts of player > 0 and playercanvore is true:
		say "     As you're listening to her, you feel that dark hunger inside you well up.  That heady scent of reptilian arousal starts to make your mouth water.  Your reaction does not go unnoticed and the doctor urges you to take a seat while she examines you.  'Hmmm... this is most interesting.  And you say that your body's become capable of ingesting prey nearly your own size whole?  Most intriguing.'";
		attempttowait;
		say "     She runs a few quick tests and poking your belly with some very long needles.  'This is by no means my field of expertise, so I can't really do anything to help you cope with this hunger.  But the effect it's had on your nanites and your body may be used in another manner.  Several unusual chemicals are being produced by the tissues of your digestive system to allow you to stretch and engulf your meals.  Were I to inject these chemicals into your reproductive system, I expect similar results would occur for it,' she says, her regular excitement returning.  'This would allow you take your intended victim into your uterus, essentially [']unbirthing['] them.  Imagine something like in vitro fertilization writ large, with it being a mature creature being used instead of a test-tube baby to become your fetus.  Similar behaviour's been observed among a few creatures in the city, but it is a rare ability.'  The more she talks about it, the more worked up she gets, this plan of hers clearly exciting both her scientific curiosity as well as her strange fascination with all things pregnancy-related.";
		say "     'Now, this alteration would be a one-way procedure, though you should be able to resist the urge... if you're willing to try, that is.  I should expect you'd not want to,' she adds as she rubs her lower belly, pausing as she imagines what it would be like.  'I should mention that I won't risk the procedure should you already be pregnant.  You'll just have to come back at another time instead.'";
		now medeaub is true;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Check for pregnancy";
	now sortorder entry is 1;
	now description entry is "check on a potential pregnancy.";
	if medeaget is 3:
		if "Selective Mother" is listed in feats of player:
			choose a blank row in table of fucking options;
			now title entry is "Remove impregnation control";
			now sortorder entry is 2;
			now description entry is "remove your ability to pick if a mate can impregnate you. (-Selective Mother)";
		otherwise if "Fertile" is listed in feats of player:
			choose a blank row in table of fucking options;
			now title entry is "Remove excess fertility";
			now sortorder entry is 2;
			now description entry is "restore your normal level of fertility. (-Fertile)";
			choose a blank row in table of fucking options;
			now title entry is "Gain impregnation control";
			now sortorder entry is 3;
			now description entry is "bestow the ability to pick if a mate can impregnate you. (+Selective Mother)";
		otherwise if "Sterile" is listed in feats of player:
			choose a blank row in table of fucking options;
			now title entry is "Remove sterility";
			now sortorder entry is 2;
			now description entry is "restore your normal level of fertility. (-Sterile)";
		otherwise:
			choose a blank row in table of fucking options;
			now title entry is "Gain increased fertility";
			now sortorder entry is 2;
			now description entry is "increase your body's fertility. (+Fertile)";
			choose a blank row in table of fucking options;
			now title entry is "Become sterile";
			now sortorder entry is 3;
			now description entry is "render you sterile. (+Sterile)";
		if "Sterile" is not listed in feats of player and heat enabled is true:
			if lust of Medea >= 3 and heatlevel is not 1:
				choose a blank row in table of fucking options;
				now title entry is "Heat exam";
				now sortorder entry is 4;
				now description entry is "examine the current state of your heat cycle.";
		if "Sterile" is not listed in feats of player and heat enabled is true and animal heat is true:
			if lust of Medea <= 2:
				choose a blank row in table of fucking options;
				now title entry is "Discuss heat control";
				now sortorder entry is 5;
				now description entry is "discuss heat control with you.";
			otherwise if heatlevel is 1:
				choose a blank row in table of fucking options;
				now title entry is "Reactivate heats";
				now sortorder entry is 5;
				now description entry is "allow you to go into heat again.";
			otherwise if heatlevel is 2:
				choose a blank row in table of fucking options;
				now title entry is "Block heats";
				now sortorder entry is 5;
				now description entry is "prevent you from going into heat.";
				choose a blank row in table of fucking options;
				now title entry is "Intensify heats";
				now sortorder entry is 6;
				now description entry is "make your heats even more intense.";
			otherwise if heatlevel is 3:
				choose a blank row in table of fucking options;
				now title entry is "Restore normal heats";
				now sortorder entry is 5;
				now description entry is "reduce your heat level to normal.";
		if cunts of player > 0 and "Sterile" is not listed in feats of player:
			choose a blank row in table of fucking options;
			now title entry is "Oviposition";
			now sortorder entry is 7;
			now description entry is "talk to you about egg-laying.";
		if medeaub is true and playercanub is false and gestation of child is 0:
			choose a blank row in table of fucking options;
			now title entry is "Gain unbirthing ability";
			now sortorder entry is 8;
			now description entry is "allow you to unbirth your foes.";
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber is 0:
			if "Sterile" is listed in feats of player:
				say "     Dr. Medea nods.  'Very well.  We'll leave it at that, then,' she says, tidying up her instruments.";
			otherwise:
				say "     Dr. Medea nods.  'Very well.  We'll leave it at that, then.  I hope you have an enjoyable and productive time,' she says, tidying up her instruments.";
			now sextablerun is 1;
		otherwise if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: This will have Dr. Medea [description entry]  Is this what you want?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Check for pregnancy":
					say "     Doctor Medea takes out a machine and places it against your [bodyname of player] abdomen.  It buzzes, and she looks at the results.  She ";
					if the gestation of the child is greater than 0:
						say "smiles.  'Congratulations, you are pregnant.  According to these readings, it currently has [skinname of child] skin, a [bodyname of child] body, and a [facename of child] face.'";
					otherwise:
						say "shakes her head in disappointment.  'You are not pregnant.'";
				otherwise if nam is "Remove impregnation control":
					remove "Selective Mother" from feats of player;
					say "     Dr. Medea performs the procedure, altering your womb to no longer discriminate between which males can and cannot impregnate you.  'I hope you have an enjoyable and productive time,' she says, tidying up her instruments.";
				otherwise if nam is "Remove excess fertility":
					remove "Fertile" from feats of player;
					say "     Dr. Medea seems a little disappointed in your choice, but performs the procedure, removing your excessive fertility.  'There, you should have a normal level of fertility now.  Well, normal for this new, rapidly gestating standard among the infected.  I hope you will still have an enjoyable and productive time,' she says, tidying up her instruments.";
				otherwise if nam is "Gain impregnation control":
					add "Selective Mother" to feats of player;
					say "     Dr. Medea performs the procedure, altering your womb to only accept a male's seed when you desire it.  'I hope you have an enjoyable and productive time,' she says, tidying up her instruments.";
				otherwise if nam is "Remove sterility":
					remove "Sterile" from feats of player;
					say "     Dr. Medea performs the procedure with pleasure, removing the change that made you sterile.  'There we go.  Much better,' she says.  'I hope you'll have an enjoyable and productive time now,' she adds, tidying up her instruments.";
				otherwise if nam is "Gain increased fertility":
					add "Fertile" to feats of player;
					say "     Dr. Medea performs the procedure with pleasure, altering your body to be even more fertile.  'You should be much more fertile and also experience accelerated gestation thanks to this procedure.  I hope you have an enjoyable and very productive time,' she says, tidying up her instruments.";
				otherwise if nam is "Become sterile":
					if player is impreg_now:
						say "     Dr. Medea shakes her head.  'I cannot perform such a procedure while you're pregnant.  Guess we'll just have to skip it,' she adds cheerfully.";
					otherwise:
						add "Sterile" to feats of player;
						say "     Dr. Medea seems particularly disappointed in your choice, but performs the procedure, rendering you sterile.  'There, you should no longer be able to produce offspring, except in rare cases.  Be aware that the nanite infection may overcome this in time, but it should last at least until the rescue comes.  Provided you don't change your mind and let me restore you, that is,' she says, sounding a little hopeful as she tidies up her instruments.";
				otherwise if nam is "Heat exam":
					say "     The lizard doctor pokes and prods at you with a few instruments, throwing in the (mis)use of a few fingers in there as well[if inheat is true].  By the time she's done, you're left panting and moaning, much to her obvious delight[otherwise].  By the time she's done, you aren't quite sure if you want it to continue or are glad it's over[end if].  She checks her data quickly and runs a couple of quick tests.";
					let defaultheat be true;
					choose row 1 in table of infection heat;
					if the cockname of player is a infect name listed in Table of infection heat:	[check name of heat]
						choose a row with a infect name of (cockname of player) in Table of infection heat;
						if cunts of player > 0 and fheat entry is false:	[no female heat for that form]
							choose row 1 in table of infection heat;
						otherwise if cunts of player is 0 and mpregheat entry is false:		[no mpreg-heat for that form]
							choose row 1 in table of infection heat;
						otherwise:
							now defaultheat is false;
					otherwise:
						choose row 1 in table of infection heat;
					if animal heat is false:
						say "     'Currently, you are not being subject to any form of heat cycle due to [if player is impreg_now]your pregnancy[otherwise if player is not impreg_able]your inability to become pregnant at the present[otherwise]some change your body's undergone[end if].'";
					otherwise if inheat is true:
						say "     'Well, you're currently in a heightened period of estrus.  It is marked by increase arousal and a higher fertility rate[if defaultheat is false].  In your particular case, you are going through a [cockname of player] heat[otherwise].  In your particular case, you are going through a fairly common version of the heat cycle the infected go through[end if]";
						if heat cycle entry is heat duration entry:
							say ".  This particular heat is ongoing and so will not end until you become pregnant.'";
						otherwise if turns in heat >= heat cycle entry or turns in heat < (heat cycle entry - heat duration entry) * 8:
							say ".  This particular round of heat is set to end at any moment.'";
						otherwise if turns in heat >= ( heat cycle entry - heat duration entry ) * 8:
							let num be heat cycle entry * 8;
							now num is num - turns in heat;
							if heatlevel is 3:
								now num is num + ( num / 4 );
							say ".  I'd estimate this particular round of heat will [if heatlevel is 3]roughly [end if]last ";
							guestimate time at num;
							say ".'";
					otherwise:
						say "     'You are not currently in heat, though you are on an active estrus cycle,' she says with a hint of disappointment.  'When it starts up again, it will be marked by increased arousal and a higher fertility rate.'  Saying this does seem to perk her back up a little[if defaultheat is false].  In your particular case, you are on a [cockname of player] heat cycle[otherwise].  In your particular case, you are on a fairly common version of the heat cycle the infected go through[end if] which should reach estrus ";
						if heat cycle entry is heat duration entry:
							say "at any moment.  It will then be ongoing and so will not end until you become pregnant.'";
						otherwise if turns in heat >= heat cycle entry:		[cycle to force restart]
							let num be ( heat cycle entry - heat duration entry ) * 8;
							if heatlevel is 3:
								now num is num - ( num / 5 );
							say "in [if heatlevel is 3]roughly [end if]";
							guestimate time at num;
							say ".'";
						otherwise if turns in heat >= ( heat cycle entry - heat duration entry ) * 8:
							say "at any moment.'";
						otherwise:
							let num be ( heat cycle entry - heat duration entry ) * 8;
							now num is num - turns in heat;
							if heatlevel is 3:
								now num is num - ( num / 5 );
							say "in [if heatlevel is 3]roughly [end if]";
							guestimate time at num;
							say ".'";
				otherwise if nam is "Discuss heat control":
					if lust of Medea is 0:
						say "     The lizard doctor grins when you bring up the internal changes you've been feeling in your [if cunts of player > 0]womb[otherwise]lower body[end if].  'Oh, so you have been feeling that particular aspect of the transformation, have you?' she says with a grin.  'Most of those transformed feel a cycle of intensified arousal and fertility as they go into estrus - what is commonly know as heat.  While most infected are continuously fertile, they are particularly fecund and lustful during this period.  I might be able to provide you with more assistance through a more detailed examination, but I would need some specialized equipment to do so.  It is not the sort of problem that human beings have had to deal with directly, so this clinic doesn't have the necessary tools or materials for testing.'";
						say "     As she's speaking, she jots down some notes on a pad of paper.  'If you were to find a [bold type]veterinary hospital[roman type] and bring me some supplies from there, I might be able to do something.  I recall there being a particularly large one in the High Rise District of the city.  Go there and bring me these items and drugs and we'll see what I can do.'";
						now lust of Medea is 1;
						now Veterinary Hospital is unresolved;
					otherwise if lust of Medea is 1:
						say "     'As I explained before, I cannot do anything to affect your heat unless you get me those items from a [bold type]veterinary hospital[roman type] like the one in the High Rise District.  This clinic was for human patients, not animal ones.  Well, at least until the people started to become animals, that is,' she adds with a grin.";
					otherwise:
						say "     Taking out the requested items, you eagerly await her response while she looks it all over.  'Hmmm... yes... yes, this should be enough.  By the time you're ready for your next examination, I should be able to give rough estimates on how long before you'll go into heat or how long you'll stay in your current heat.  I should also be able influence your heat cycle.  Perhaps you'd like me to ramp it up?  That'd really let you get the most out of those animal urges to breed of yours,' she says with an eager, toothy grin.  Noting your reaction to her almost perverse enthusiasm, she sighs.  'Or, I could block you from feeling the effects of heat, if that's what you'd prefer.'";
						now lust of Medea is 3;
				otherwise if nam is "Reactivate heats":
					say "     Dr. Medea performs the procedure with pleasure, removing the change that prevented you from going into heat.  'There we go.  All fixed up again,' she says.  'It's good that you've realized that enjoying your new body's needs can be most fulfilling,' she adds as she tidies up the instruments, the scent of her own arousal in the air as you see white cum trickle down her thighs.";
					now heatlevel is 2;
				otherwise if nam is "Block heats":
					say "     Dr. Medea seems rather disappointed by your choice, but performs the procedure, blocking you from going into heat.  'There, your body's need to go into heat has been largely inhibited, except in rare cases.  Be aware that the nanite infection may overcome this in time, but it should last at least until the rescue comes.  Provided you don't change your mind and let me restore you, that is,' she says, sounding a little hopeful as she tidies up her instruments.";
					now heatlevel is 1;
				otherwise if nam is "Intensify heats":
					say "     Dr. Medea performs the procedure with pleasure, altering your body to be more receptive to heat.  'This should reduce your delay before going into heat as well as prolong your time in heat.  Until you're successfully impregnated, that is.  Remember, being in heat makes that more likely.  There may also be other unforeseen effects, but I wouldn't worry about it - that'll only add to the fun.  It will be a more difficult for me to get a proper estimate of your heat cycle under these conditions, but I'll try my best to give you a rough estimate.  I hope you have a very enjoyable and productive time,' she says, tidying up her instruments.";
					now heatlevel is 3;
				otherwise if nam is "Restore normal heats":
					say "     Dr. Medea seems a little disappointed by your choice, but performs the procedure, reducing the intensity of your heats to normal.  'There, your body's need to go into heat has been restored to its original level.  It is unfortunate, but I understand.  I'd have cranked mine up already, but it'd make focusing on my work too difficult right now,' she says, tidying up her instruments.";
					now heatlevel is 2;
				otherwise if nam is "Oviposition":
					if ovipregalways is false:
						if ovipregmedeatalk is false:
							say "     'Oh, have you witnessed or experienced that yet?  There are indeed several the creatures in the city which have responded to their transformation by becoming egg-layers or impregnating their lovers with eggs.  It is especially common in reptiles and birds,' the lizard doctor says with a smile, 'though I wouldn't be surprised to find a few others out there doing it.  I've had a few egg-laying patients and have had a chance to examine their alterations.  With my added equipment, if you'd like, I'd be able to alter your womb to be like theirs and bear eggs whenever you get pregnant.  Doesn't that sound delightful?' she says with an eager smile on her reptilian face.";
							now ovipregmedeatalk is true;
						otherwise:
							say "     'Oh, have you reconsidered becoming an egg-bearer?  I could alter your womb so you lay eggs instead of live young.  Doesn't that sound delightful?' she asks with an eager smile on her reptilian face.";
						if the player consents:
							if gestation of child is 0:
								say "     Dr. Medea seems particularly pleased with your decision and performs the procedure with pleasure.  Your womb is altered to form eggs when you become pregnant.  'I've made you into an egg-breeder, able to be filled with eggs from any and all creatures you mate with, regardless of their infection.  Now, should you get cold feet,' she adds, 'you should be able to curb your egg-laying abilities by concentrating upon it for a while.  I hope you have an enjoyable and productive time,' she adds, tidying up her instruments.";
								say "     [bracket]Use the [bold type][link]adjust ovi[end link][roman type] command or Trixie's setting menu to adjust your preferences for oviposition.[close bracket]";
								now ovipregalways is true;
								now ovipreglevel is 3;
							otherwise:
								say "     Dr. Medea seems particularly pleased with your decision, but cannot perform the procedure while you're pregnant.  You'll need to ask her again after you've given birth.";
						otherwise:
							say "     She seems a little disappointed by your response.  'Well, do think about it.  I'll be available when you are willing to go through with it.'";
					otherwise:
						say "     'I hope you're enjoying the ability to lay eggs,' the lizard doctor says as she rubs over your tummy with a smile.  'Such a special way to have one's children, I think.  Remember, if you want to [if ovipreglevel is 3]curb your egg-laying and revert to live births[otherwise]get yourself laying more eggs[end if], concentrate and you should be able to take control of your change.'";
						say "     [bracket]Use the [bold type][link]adjust ovi[end link][roman type] command or Trixie's setting menu to adjust your preferences for oviposition.[close bracket]";
				otherwise if nam is "Gain unbirthing ability":
					choose row monster from the table of random critters;
					say "     Dr. Medea gets a perverse grin on her reptilian face, clearly excited to undertake her twisted experiment.  She eagerly gets you up onto the examination table and does a cursory exam before getting started.  'I've prepared a dose of the chemicals, which are to be applied to your reproductive system, triggering the alterations in your digestive system to spread there as well.  I'm glad you're willing to go through with this procedure.  Unfortunately, while I don't believe this alone would be enough to induce the same results in others, it does provide a starting point to understanding this rare ability.  Well, enough waiting, let's get to it,' she says with glee.";
					say "     Rather than provide you with a concoction to drink or an injection, she instead starts to smear some oily cream across your pussy.  She starts slow and keeps her touch professional at first, but as you start to feel a warm tingle at the mouth of your vagina and it begins to stretch, her fingers become more playful, teasing you to arousal.  She pauses from time to time to scoop up more of the cream and work it deeper into your cunny, getting it to spread further and wider as the lotion is absorbed into your vaginal walls.";
					say "     Soon she's working her [if cunt length of player < 12]whole hand[otherwise if cunt length of player < 24]forearm[otherwise]whole arm[end if] into your squeezing, tugging cunt and smearing the slick goo at your very depths.  As your cervix starts to relax, she pushes another handful of the body-altering cream right into your womb.  It takes a lot of effort from her to be able to pull her arm free after that, grunting with the effort to resist the strong inward motion of your vaginal muscles.";
					attempttowait;
					say "     As the cream inside your uterus starts to react, you become increasingly aware of the empty feeling of your unfertilized womb and you want to do something about it.  Noticing your attention focusing on her, the reptilian doctor stops fingering herself and rushes you outside, that sense of emptiness to be filled growing with every step.  Catching sight of another creature wandering nearby, she pushes you off in its direction and moves back to observe the results, her medical ethics forgotten in her desire to observe your altered reproductive system in action.";
					if girl is not banned:
						setmonster "Female Husky";
						say "     As you approach the rummaging creature, part of you can't help but be pleased to see that it is a female husky.  That small part of you which is still able to reason can't help but think it appropriate.  Given how your first meal was also one of these cute girls, there is a certain symmetry to that.  She seems pleased to see you as well, smelling your arousal and sniffing her way towards your crotch.  Making no effort to dissuade her, you seem like a willing playmate and she approaches with eager caution.";
						say "     When she brings her muzzle in to lick at your leaking pussy, your body is struck with another throbbing sense of the void inside you.  You look down at the cute husky with new, maternally longing instincts, feeling that she'd be perfect to fill it.  Before you can even think about it, you grab the husky by the head and yank it forward, driving her muzzle into your hot, needy cunny.  Your pussy stretches as you continue to pull her in, stretching around her canine head with an orgasmic effort that has you moaning.  Your juices soak her head and shoulders, making it easier for your tugging inner walls to start pulling them in as well.";
						say "     Having succumbed to this instinctual drive, you are unable to control yourself, your body acting of its own volition to satisfy that inner need.  Even with the foreknowledge of what would happen, what's happening would still be quite disturbing and shocking were it not for the extreme pleasure the act provides.  There is considerable effort to doing it, your vaginal muscles having to stretch and pull in unnatural ways to drag your prey deeper and deeper into you.";
						attempttowait;
						say "     The canine girl tries to struggle, but she is quite confused and is likely overwhelmed by the taste and scent of your rampant arousal, making her attempts unfocused and weak.  As you grip her arms to her sides to keep her pinned, you drop to your knees, forcing yourself down over her ample bosom and taking in most of her torso.  Your belly bulges as more squirming husky is squished into it with a deliciously juicy slurp.  With your cervix spread open and her partially inside your womb, your urge to have her inside you only grows rather than feeling sated in any way.";
						say "     You undergo another moaning orgasm as your vaginal walls tug her even further into you.  With so much of her inside you, you can no longer see what's going on, but you can feel every delightful inch of her fluffy body being pulled into yours.  Giving another loud moan, you feel her hips making their way along your impossibly stretched vaginal tunnel.  With only her legs and tail left to go, the rest is easier, giving you an opportunity to enjoy the pleasant sensations without the distraction of the effort involved.  Glancing over, you see Dr. Medea watching intently, a hand under her skirt, pumping her fingers into her juicy cunt as creamy white goo leaks from it.  Any medical ethics forgotten as the transformed obstetrician perversely watches her patient's pussy completely devour a helpless victim.";
						say "     Sitting back, dazed, you feel the form of the husky sliding around inside your womb, your belly now bulging out with your massive pregnancy.  There is a brief period where she struggles, paws pressing against your uterine walls as she seeks exit before settling down.  With a quiver of pleasure, the nanites in your body throw your gestation process into overdrive.  You can't help but moan in satisfaction as you feel [if ovipreglevel is 3]an eggshell forming around your prey[otherwise]a placenta form to connect you to your prey[end if].  Soon enough, she's drifted off into slumber and you are in late-term pregnancy.  Crossing the [if ovipreglevel is 3]egg membrane[otherwise]placental barrier[end if], you share nanites with one another, further bonding you and your new [']child['] with one another.  You are filled with contentment as this happens, as if you've fulfilled some deep purpose in your infected body.  You are helped back to your feet by Dr. Medea, who eagerly examines you, confirming what your body's already told you.";
					otherwise:
						setmonster "Latex Fox";
						say "     As you approach the rummaging creature, part of you can't help but be pleased to see that it is a latex fox.  That small part of you which is still able to reason can't help but think it appropriate.  Given how your first meal was also one of these rubbery guys, there is a certain symmetry to that.  He seems pleased to see you as well, smelling your arousal and sniffing his way towards your crotch.  Making no effort to dissuade him, you seem like a willing playmate and he approaches with eager caution.";
						say "     When he brings his muzzle in to lick at your leaking pussy, your body is struck with another throbbing sense of the void inside you.  You look down at the cute fox with new, maternally longing instincts, feeling that he'd be perfect to fill it.  Before you can even think about it, you grab the fox by the head and yank it forward, driving his muzzle into your hot, needy cunny.  Your pussy stretches as you continue to pull him in, stretching around his vulpine head with an orgasmic effort that has you moaning.  Your juices soak his head and shoulders, making it easier for your tugging inner walls to start pulling them in as well.";
						say "     Having succumbed to this instinctual drive, you are unable to control yourself, your body acting of its own volition to satisfy that inner need.  Even with the foreknowledge of what would happen, what's happening would still be quite disturbing and shocking were it not for the extreme pleasure the act provides.  There is considerable effort to doing it, your vaginal muscles having to stretch and pull in unnatural ways to drag your prey deeper and deeper into you.";
						attempttowait;
						say "     The vulpine guy tries to struggle, but he is quite confused and is likely overwhelmed by the taste and scent of your rampant arousal, making his attempts unfocused and weak.  As you grip his arms to his sides to keep him pinned, you drop to your knees, forcing yourself down over his chest and taking in most of his torso.  Your belly bulges as more squirming fox is squished into it with a deliciously juicy slurp.  With your cervix spread open and him partially inside your womb, your urge to have him inside you only grows rather than feeling sated in any way.";
						say "     You undergo another moaning orgasm as your vaginal walls tug him even further into you.  With so much of him inside you, you can no longer see what's going on, but you can feel every delightful inch of his smooth body being pulled into yours.  Giving another loud moan, you feel his hips making their way along your impossibly stretched vaginal tunnel.  With only his legs and tail left to go, the rest is easier, giving you an opportunity to enjoy the pleasant sensations without the distraction of the effort involved.  Glancing over, you see Dr. Medea watching intently, a hand under her skirt, pumping her fingers into her juicy cunt as creamy white goo leaks from it.  Any medical ethics forgotten as the transformed obstetrician perversely watches her patient's pussy completely devour a helpless victim.";
						say "     Sitting back, dazed, you feel the form of the fox sliding around inside your womb, your belly now bulging out with your massive pregnancy.  There is a brief period where he struggles, paws pressing against your uterine walls as he seeks exit before settling down.  With a quiver of pleasure, the nanites in your body throw your gestation process into overdrive.  You can't help but moan in satisfaction as you feel [if ovipreglevel is 3]an eggshell forming around your prey[otherwise]a placenta form to connect you to your prey[end if].  Soon enough, he's drifted off into slumber and you are in late-term pregnancy.  Crossing the [if ovipreglevel is 3]egg membrane[otherwise]placental barrier[end if], you share nanites with one another, further bonding you and your new [']child['] with one another.  You are filled with contentment as this happens, as if you've fulfilled some deep purpose in your infected body.  You are helped back to your feet by Dr. Medea, who eagerly examines you, confirming what your body's already told you.";
					now playercanub is true;
					add "UB Pred" to feats of player;
					now ubcount is 1;
					decrease humanity of player by 3;
					say "     You have the [bold type]UB Predator[roman type] feat, granting you the ability to unbirth fallen foes.  If you're not pregnant, there is a chance your body will want to use your enemy to fill your womb.  You may adjust some vore related settings via the [bold type]vore menu[roman type].";
					now gestation of child is a random number between 8 and 16;
					now ubpreg is name entry;
					if "Safe Appetite" is not listed in feats of player:
						now researchbypass is 1;
						infect;
						now researchbypass is 0;
					if "They Have Your Eyes" is listed in feats of player:
						now skinname of child is skinname of player;
						now bodyname of child is bodyname of player;
						now tailname of child is tailname of player;
						now facename of child is facename of player;
					otherwise:
						now skinname of child is name entry;
						now bodyname of child is name entry;
						now tailname of child is name entry;
						now facename of child is name entry;


Section 4 - Events

Abandoned truck is a situation.
the sarea of abandoned truck is "Outside".

instead of resolving an abandoned truck:
	say "You come across an abandoned truck, filled with medical supplies. The drivers cab is filled with some sort of goo that covers all the entrances. Maybe some of the supplies can be of use?";
	if medeaget is 1:
		say "This must be the truck Medea sent you after!";
		now medeaget is 2;
		say "As you ruffle through the truck, you bring back the parts she requested.";
	otherwise:
		say "Maybe you could find a medkit. Do you wish to try?";
		if the player consents:
			say "You ruffle through the boxes, searching for a medkit and leaving mess in your wake.";
			if a random chance of one in 8 succeeds:
				say "You found a medkit!";
				increase carried of medkit by 1;
			otherwise:
				say "You find nothing of interest.";
		otherwise:
			say "You leave the abandoned truck behind and walk on.";


Obstetrics Department is a situation.  Obstetrics Department is resolved.
the sarea of Obstetrics Department is "Hospital".

instead of resolving Obstetrics Department:
	say "     Making your way through the darkened hospital, you manage to reach the Obstetrics Department and slip inside, searching for the items that Dr. Medea mentioned needing.  This area seems to have been particularly [']active['] during the outbreak, with a lot of sticky fluids of all kinds over everything.  Aside from pools of what must be semen and feminine juices, there's a variety of placentae and egg shells scattered around as well.  The scent of lust, fertility and virility is very strong in here, making you somewhat dizzy with growing excitement.";
	let playernum be a random number between 0 and ( 200 + humanity of player - libido of player );
	say "     [special-style-1][playernum][roman type] vs [special-style-2]120[roman type]:  ";
	if playernum >= 120:
		if furry is banned:
			say "You manage to block out the smell, at least for the moment, and start searching through the Obstetrics Department for the items that Dr. Medea described.  You gather up the specialized equipment that she's requested and leave as quickly as you can before your activity can draw the attention of one of the hospital's denizens.";
			now hp of doctor medea is 4;
			now Obstetrics Department is resolved;
		otherwise:
			say "You manage to block out the smell, at least for the moment, and start searching through the Obstetrics Department for the items that Dr. Medea described.  As you start to gather up the specialized equipment she needs, you hear some activity outside moments before a creature comes bursting in, perhaps drawn by the noise.  You will have to deal with them if you want to leave here with the supplies.";
			say "[hospfight4]";
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "     Having defeated the creature, you gather up the rest of the equipment as quickly as you can and head out of there as quickly as you can.  You can hear your opponent becoming increasingly lustful inside as the scents filling the area send its arousal skyrocketing.  You rush off back to the entrance, trying to get as far from the noisy creature before it draws others for an orgy that will only add their musky juices to the scents pervading the area.  As it is, having been in there has left you increasingly aroused and longing to breed.";
				now hp of doctor medea is 4;
				now Obstetrics Department is resolved;
				decrease humanity of player by 6;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 1 and 3;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 1 and 3;
				increase libido of player by 15;
				if "Horny Bastard" is listed in feats of player, increase libido of player by 3;
				if "Cold Fish" is listed in feats of player, decrease libido of player by 3;
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "     Beaten by the creature, you are forced to leave the room once the creature's satisfied itself.  You are forced to leave the equipment you were searching for and will have to try returning at some other point.  As it stands, you can still hear the creature inside, growing increasingly loud and lustful as its arousal skyrockets.  You rush back to the entrance, trying to get as far from the noisy creature before it draws others for an orgy that will only add their musky juices to the scents pervading the area.  As it is, having been in there for so long has left you increasingly aroused and longing to breed.";
				decrease humanity of player by 12;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 2 and 5;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 2 and 5;
				increase libido of player by 25;
				if "Horny Bastard" is listed in feats of player, increase libido of player by 5;
				if "Cold Fish" is listed in feats of player, decrease libido of player by 5;
			otherwise:
				say "     Rather than continue to face the creature in the scent-laden room, you find your opportunity and escape.  You'll have to risk returning at a later point to obtain the specialized equipment Dr. Medea needs, but for the moment, you're just happy to have gotten away.  As it is, you can hear the increasingly loud sounds of the creature as its arousal skyrockets.  You rush back to the entrance, trying to get as far from the noisy creature before it draws others for an orgy that will only add their musky juices to the scents pervading the area.  As it is, having been in there for so long has left you increasingly aroused and longing to breed.";
	otherwise:
		say "You attempt to search the ward, but the scents filling the place become too much.  You are forced to leave before you can accomplish your goal or risk succumbing to your lusts completely.  As it stands, you are left aroused and confused, with thoughts of sex and breeding filling your mind.";
		decrease humanity of player by 12;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 2 and 5;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 2 and 5;
		increase libido of player by 25;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 5;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 5;


Medical Checkups ends here.
