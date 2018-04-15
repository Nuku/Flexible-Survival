Version 1 of Horny Doctor For FS by Stripes begins here.
[ Version 1.1 - Female Doctor added w/Heat. Also endings.]

"Adds a Horny Doctor creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

hdmode is a number that varies.
hdform is a number that varies.
hdformname is a text that varies.

when play begins:
	add { "Horny Doctor" } to infections of furry;
	add { "Horny Doctor" } to infections of Caninelist; [list of canine infections]
	add { "Horny Doctor" } to infections of Knotlist; [list of cock infections with a knot]

to say hornydocdesc:
	choose row monster from the table of random critters;
	if a random chance of 1 in 2 succeeds:
		now loot entry is "libido suppressant";
		now lootchance entry is 20;
	else:
		now loot entry is "healing booster";
		now lootchance entry is 24;
	if hdmode is 3 or hdmode is 4:		[pre-selected gender from event]
		increase score by 0;
	else:
		now hdmode is a random number between 1 and 2;
	now hdform is a random number between 0 and 6;
	if hdform is 0, now hdformname is "mutt";
	if hdform is 1, now hdformname is "beagle";
	if hdform is 2, now hdformname is "rottweiler";
	if hdform is 3, now hdformname is "samoyed";
	if hdform is 4, now hdformname is "malamute";
	if hdform is 5, now hdformname is "boxer";
	if hdform is 6, now hdformname is "bulldog";
	if hdmode is 3:				[event forces male]
		now hdmode is 1;
	else if hdmode is 4:	[event forces female]
		now hdmode is 2;
	else if guy is banned and girl is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     A dog in a doctor's coat passes by you in the hall, barely looking up from his chart. He looks you over briefly, gives you a quick sniff. 'The healthcare plan you've selected will not allow you to see a doctor here. You should consider not using banning so much and get a new provider.' And with that cryptic comment, the canine continues on his way. It seems they won't have any interest in you for some reason.";
		blank out the whole row;
		now fightoutcome is 19;
		now combat abort is 1;
		now hdmode is 0;
	else if guy is banned:
		now hdmode is 2;
	else if girl is banned:
		now hdmode is 1;
	else if guy is warded and girl is warded:
		now hdmode is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if guy is warded and a random chance of 1 in 3 succeeds:
			now hdmode is 2;
		else if girl is warded and a random chance of 1 in 3 succeeds:
			now hdmode is 1;
	else if ishunting is false:
		if guy is warded:
			now hdmode is 2;
		else if girl is warded:
			now hdmode is 1;
	if hdmode is 1:				[male]
		setmongender 3; [creature is male]
		project the figure of HornyDoctor_M_icon;
		say "     You find yourself confronted by one of the denizens of the hospital, a canine doctor. Wearing a doctor's coat, stethoscope and little else, this male [hdformname] is of normal human stature, though adjusted somewhat [if hdform is 0]by his canine nature[else]to suit his breed[end if]. With his coat hanging open, his [if hdform is 0]scruffy[else if hdform is 1]brown- and black-patched white[else if hdform is 2]black[else if hdform is 3]white[else if hdform is 4]thick black and white[else if hdform is 5]brown[else if hdform is 6]tan[end if] fur can plainly be seen covering his whole body. This also gives you a clear view of his plump sheath and the pointed tip of the canine cock poking from it. Upon noticing you, his ears perk up and his [if hdform is 2 or hdform is 6]short [else if hdform is 3 or hdform is 4]fluffy [end if]tail wags and he moves to approach you. '[one of]Ooo! A patient. Let's start the examination[or]Oh my! You seem quite ill. Come over here so I can give you some proper treatment[or]Oh, for a case like yours, I'm going to have to prescribe a hot meat injection[or]I've got the cure for what ails you right here[or]Here for your full physical exam?  Now be a good patient and bend over. I promise I'll even warm up my hands first[or]Hmm... this looks serious. Please bend over so I can check out that [if cunts of player > 0]hot pussy[else]tight ass[end if] of yours[or]There you are. Bend over, [']cause I've got your 50 cc's of puppy batter right here[or]I've got your medicine right here. Now open up and say 'Ahhhh'[at random],' he barks excitedly. You can see the dog's penis rising from his exposed sheath as he talks to you. Clearly he's interested in more than your typical doctor-patient relationship.";
		now altcombat entry is "hump";
	else if hdmode is 2:		[female]
		setmongender 4; [creature is female]
		say "     You find yourself confronted by one of the denizens of the hospital, a canine doctor. Wearing a doctor's coat, stethoscope and little else, this female [hdformname] is of normal human stature, though adjusted somewhat [if hdform is 0]by her canine nature[else]to suit her breed[end if]. With her coat hanging open, her [if hdform is 0]scruffy[else if hdform is 1]brown- and black-patched white[else if hdform is 2]black[else if hdform is 3]white[else if hdform is 4]thick black and white[else if hdform is 5]brown[else if hdform is 6]tan[end if] fur can plainly be seen covering her whole body. This also gives you a clear view of her shapely breasts and the damp muff between her legs. Upon noticing you, her ears perk up and her [if hdform is 2 or hdform is 6]short [else if hdform is 3 or hdform is 4]fluffy [end if]tail wags and she moves to approach you. '[one of]Ooo! A patient. Let's start the examination[or]Oh my! You seem quite ill. Come over here so I can give you some proper treatment[or][if cocks of player > 0]Oh, for a case of swelling like that, I'm going to have to prescribe a hot, juicy fucking[else if cunts of player > 0]Oh, you seem to be seeping juices badly. Come here and I'll kiss it to make it all better[else]Oh my! It seems you've misplaced your genitals. Don't worry, you can lick mine until you're all better[end if][or]I've got the cure for what ails you right here[or]Here for your full physical exam?  Now be a good patient and bend over. I promise I'll even warm up my hands first[or]I've got your medicine right here[at random],' she barks excitedly. You can see the dog's pussy start to drip with her juices as she talks to you. Clearly she's interested in more than your typical doctor-patient relationship.";
		now altcombat entry is "default";
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if hdmode is 1:
		now sex entry is "Female";
	else:
		now sex entry is "Male";

to say losetohornydoc:
	if hdmode is 1:
		say "[losetohdmale]";
	else if hdmode is 2:
		say "[losetohdfemale]";
	hdheatprompt;

to hdheatprompt:
	now heatdrive is 0;
	drive heat;

to say losetohdmale:
	say "     The horny doctor eagerly pushes you down over a stray gurney and runs his paws roughly over you. '[if HP of player > 0]Now that's much better. Now take your medicine like a good patient. I've got it nice and hot right here,' he chuckles, grinding his throbbing cock against your hip as he does[else]Such a troublesome patient you're being. You don't want me to call an orderly to help me with you, do you?' he chuckles, grinding his throbbing cock against your hip as he does[end if]. No longer resisting his advances, he licks your neck and gives your crotch a probing caress, a quick examination of what fun he might have with his new patient. You can't help but moan in response, your lustful urges rapidly overpowering your good sense.";
	if inheat is true and ( ( cunts of player > 0 and heatform is 0 ) or ( heatform is 1 ) ):
		say "     While fondling your [if cunts of player > 0 and heatform is 0]juicy cunt[else]crinkled hole[end if], the canine doctor sniffs excitedly, catching your scent in the air. 'Oh, my poor patient is in heat. I have the cure for that right here,' he says, grinding his cock against your ass harder in emphasis. In your heat-addled state, you can't help but moan and raise your ass to him, allowing him to get his doggy dong lined up with your wanton hole. 'Mmm... it's [one of]malpractice time[or]time for some practical gynecology[or]heavy-duty doctoring time[as decreasingly likely outcomes], my dear,' he says with a grin and a lick just before thrusting firmly into your [if cunts of player > 0 and heatform is 0]needy cunt[else]needy back door[end if] with intent to breed you out of your heat.";
		if cunts of player > 0 and heatform is 0:
			say "[hdmale_sex01]";
		else:
			say "[hdmale_sex02]";
	else if a random chance of 1 in 4 succeeds:
		say "[hdmale_sex04]";
	else if cunts of player > 0 and a random chance of 2 in 3 succeeds:
		say "     While playing with your pussy, he pants excitedly. '[one of]I've got the cure for what ails you right here[or]Trust me, I'm a doctor[or]I diagnose you as 'sexy'[or]Oh, for a case like yours, I'm going to have to prescribe a hot meat injection[or]Let's get started on your treatment, my sexy patient[or]The prognosis isn't good. You need some hard doggy fucking stat[at random],' he says, grinding his cock against your ass harder in emphasis. Under the horny [hdformname][']s skillful teasing, you find yourself growing quite eager for his advances as he gets his doggy dong lined up with your waiting pussy. 'Mmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like fucking your patient to make a doctor's day[or]doctor-patient sex is the best sex[at random],' he says with a grin and a lick just before thrusting firmly into your wet cunt.";
		say "[hdmale_sex01]";
	else if cunts of player is 0 and a random chance of anallevel in 5 succeeds:
		say "     While playing with your asshole, he pants excitedly. '[one of]I've got the cure for what ails you right here[or]Trust me, I'm a doctor[or]I diagnose you as 'sexy'[or]Oh, for a case like yours, I'm going to have to prescribe a dog cum enema[or]Let's get started on your treatment, my sexy patient[or]The prognosis isn't good. You need some hard doggy fucking stat[or]Here, lemme check your temperature. I've got my thermometer right here[at random],' he says, grinding his cock against your ass harder in emphasis. Under the horny [hdformname][']s skillful teasing, you find yourself growing quite eager for his advances as he gets his doggy dong lined up with your waiting anus. 'Mmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like fucking your patient to make a doctor's day[or]doctor-patient sex is the best sex[at random],' he says with a grin and a lick just before thrusting firmly into your tight rectum.";
		say "[hdmale_sex02]";
	else:
		say "     After humping your leg while playing with your [if cunts of player > 0 and cocks of player > 0]cock[smn] and puss[yfn] and squeezing your [else if cunts of player > 0]puss[yfn] and squeezing your [else if cocks of player > 0]cock[smn] and squeezing your [end if]ass for a couple of minutes, the [hdformname] doctor moves around in front of you. '[one of]Nine out of ten doctors agree that sucking dog cock will help clear up lingering symptoms of humanity[or]Time for your tasty medicine, my dear[or]Here, lemme take your temperature. I've got my thermometer right here[or]My diagnosis is a lack of doggy protein. We need to give you a fresh dose right away[or]Open wide and say 'Ahhhh', my sexy patient[or]The prognosis isn't good. You need some creamy dog cum stat[or]You were such a good [if cunts of player > 0]girl[else]boy[end if] during your examination that you get a special lollipop[at random],' he says, presenting his doggy dong to you. He smears some precum across your lips, and you, already excited by his earlier teasing to the point of lustful eagerness, open your mouth and welcome it in. 'Mmmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like a cock-sucking patient to make a doctor's day[or]I've got a nice, big dose of creamy medicine for you, my slutty patient[or]patients suck cock the best[at random],' he says with a grin as he rubs a paw over your head just before thrusting firmly into your mouth.";
		say "[hdmale_sex03]";

to say hdmale_sex01:
	say "     With the doctor's canine bone buried inside you, he starts thrusting while panting in your ear. His tongue plays across your neck and ears as he pounds away at you, humping you wildly like the dog he is[if breast size of player > 0]. His paws reach around to fondle your tits, playing with your nipples in what's certainly more than a normal breast exam[end if]. You start to pant and bark alongside him as he fucks you, his canine cock and swelling knot feeling great inside [if inheat is true]your heat-stricken hole[else]you[end if]. This goes on for several minutes before he finally pops that knot of his fully into you and ties inside your cunt. A few locked thrusts are all he has left before his semen starts spurting into you, filling your needy hole[if inheat is true] in an attempt to breed you[end if]. You feel spurt after spurt of canine cum filling your womb as you cry out in climactic bliss yourself, soaking the edge of the gurney with your [if cocks of player > 0]cum and [end if]juices. Once the doctor's done with your [']treatment['], he slips his shrinking knot from your cunt with a wet pop and sends you on your way. Still in a bit of a daze after the hard fucking, you stumble off, canine cum running down your legs.[impregchance]";

to say hdmale_sex02:
	say "     With the doctor's canine bone buried inside you, he starts thrusting while panting in your ear. His tongue plays across your neck and ears as he pounds away at you, humping you wildly like the dog he is[if breast size of player > 0]. His paws reach around to fondle your tits, playing with your nipples in what's certainly more than a normal breast exam[end if]. You start to pant and bark alongside him as he fucks you, his canine cock and swelling knot feeling great inside [if inheat is true]your heat-stricken hole[else]you[end if]. This goes on for several minutes before he finally pops that knot of his fully into your ass and ties inside you. A few locked thrusts are all he has left before his semen starts spurting into you, filling your needy hole[if inheat is true] in an attempt to breed you[end if]. You feel spurt after spurt of canine cum filling your rectum as you cry out in climactic bliss yourself[if cocks of player > 0], soaking the edge of the gurney with your cum[end if]. Once the doctor's done with your [']treatment['], he slips his shrinking knot from your anus with a wet pop and sends you on your way. Still in a bit of a daze after the hard fucking, you stumble off, canine cum running down your legs.[mimpregchance]";

to say hdmale_sex03:
	say "     With the doctor's canine bone stuffed in your mouth, he starts thrusting eagerly while holding your head. His tongue lolls out of the side of his [if hdform is 5 or hdform is 6]short [end if]muzzle as the [hdformname] goes to town humping your face like the dog he is. You start to moan and pant between breaths as you lick and suck on that throbbing, knotted cock. In your lustful haze, you lick eagerly over the infected doctor's shaft, eager for that hot load of doggy cum. With his knot swelling behind your lips and his glans pushing down your throat, he ends up locked in your mouth and can only give a few final tugs before his semen starts spurting down into your belly. You feel spurt after spurt of canine cum filling your tummy as some of the heavy flow splashes back into your mouth, giving you a taste of his musky seed. Once the doctor's done giving you your [']medicine['], he slips his shrinking knot from your mouth and gets you to finish licking him clean before sending you on your way. Still in a bit of a daze after all that, you stumble off while enjoying a [one of]red[or]blue[or]green[or]pink[or]yellow[at random] sucker he gave you.";

to say hdmale_sex04:
	say "     The canine continues by giving you an inquisitive sniff and gropes your crotch. Distracted by his molesting touch, you don't immediately notice that he's already strapped your arms down. Another firmer grab startles you long enough for him to do your legs as well. 'Oh my, this looks serious. You'll need a full exam,' he says with mock-concern. The horny doctor starts by running his paws over your [bodytype of player] body in a strange mix between a standard examination and sexual teasing.";
	say "     He moves up to your head to start off, examining your [facename of player] with a mix of medical scrutiny and caressing touches. An examination of your throat glands is followed by a nuzzle and lick along your neck. His scrutiny of your eyes and ears devolves into him licking and nibbling at your ears. Getting you to open up and say 'Ahhh' ends in him pressing his muzzle to your lips and french kissing you.";
	if breast size of player > 6:
		say "     He shifts his attention onto your nipples next, tracing around your areolae first and then tweaking them. Your moan brings a 'Mmm-hmm' and a nod of his head. He moves on to groping your enlarged breasts. 'Excellent increase in mammary tissue. Fine shape and elasticity,' he adds before leaning down and sucking on your nips, drawing more moans from you.";
	else if breast size of player > 0:
		say "     He shifts his attention onto your nipples next, tracing around your areolae first and then tweaking them. Your moan brings a 'tut-tut' and a shake of his head. He moves on to groping your breasts. 'Mammary tissue is within normal standards at present. Definite need for continued treatment,' he adds before leaning down and sucking on your nips, drawing more moans from you.";
	else if breasts of player > 0:
		say "     He shifts his attention onto your nipples next, tracing around your areolae first and then tweaking them[if cunts of player is 0]. Your moans increase as he leans down and runs his canine tongue across your flat chest to lap across your nips[else]. Your moan brings a 'tut-tut' and a shake of his head as he rubs his paws across your flat chest. 'The lack of mammary tissue is most concerning. Continued treatment will be required,' he adds before leaning down and lapping across your nips, drawing more moans from you.";
	else:
		say "     He shifts his attention onto your flat chest next, kneading your chest and rubbing his fingers across your chest. 'The lack of nipples[if cunts of player > 0] and breasts[end if] is most concerning. I recommend immediate treatment,' he adds before leaning down and lapping across your bare chest. His tongue slathers doggy drool across your flesh and he nips lightly at your pecs, drawing moans from you.";
	WaitLineBreak;
	if anallevel is 3 or ( player is neuter ):
		say "     Pulling on some latex gloves with a snap and a grin, he lubricates a finger and slips it between your ass cheeks. It is quite cool and uncomfortable at first, but quickly warms up as he probes around inside you. The wiggling of his digit becomes increasingly pleasurable as he even starts thrusting it in and out of you[if cocks of player > 0], stimulating your prostate[end if] until you're squirming and moaning from this as well.";
	if cocks of player > 0:
		say "     Taking [if cocks of player > 1]one of your cocks[else]your cock[end if] in paw, he strokes and over it. Already quite hard from all the teasing, he sizes you up even as he jerks you off[if cock length of player > 20]. He seems quite impressed with your [cock size desc of player] shaft[smn][else if cock length of player > 10]. He seems rather pleased with your [cock size desc of player] shaft[smn][else if cock length of player > 5]. He seems unimpressed with your [cock size desc of player] shaft[smn][else]. He shakes his head and clucks his tongue at your [cock size desc of player] shaft[smn][end if] and leans in to give [if cocks of player is 1]it[else]them[end if] a quick lick and suck[if cockname of player is not listed in infections of Internallist]. While he does this, his paw moves to your ballsack, rolling around your [ball size] in his palm and appraising their heft[end if]. He gets you to the point of drooling precum, laps some up for a taste test and then moves on.";
	if cunts of player > 0:
		say "     Burying his nose between your thighs, he nuzzles at your pussy before giving it a quick lick. This is then followed by a pair of digits slipping their way into your vagina and rubbing along your inner walls[if cunt width of player > 12]. Eventually two fingers moves up to three and then four before he ends up fisting you to pound away at your gaping cunny. As he stuffs[else if cunt width of player > 8]. Eventually two fingers moves up to three and then four as he continues to pound away at your spacious cunny. As he fingerfucks[else if cunt width of player > 5]Eventually two fingers moves up to three as he continues to pound away at your widened cunny. As he fingerfucks[else]. As he fingerfucks[end if] your wet pussy, his other paw rubs across your outer folds, both teasing you and allowing him to examine your cunny in detail. There's something embarrassingly exciting about his scrutiny, especially when his fingertips move to your clit and start playing with it. You're left dripping with juices by the time he's finished the gynecological exam.";
	WaitLineBreak;
	if cunts of player > 0 and cocks of player > 0:
		say "     Largely dropping the pretense of an exam, he throws himself into stuffing your dripping cunny with one hand and pumping your [cock of player] cock with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon soaking your crotch with your feminine juices as your [ball size] tighten up. Your [cock size desc of player] penis throbs in the canine doctor's paw as he watches[if cock width of player < 24], stunned and impressed by[else if cock width of player > 15], definitely impressed by[else if cock width of player > 10], seemingly pleased by[else if cock width of player > 5] with mild disapproval at[else], clearly disappointed with[end if] your [cum load size of player] output. Grabbing his stiff canine dong, he pumps it quickly, splattering a gooey mess of his own seed onto you, making you all the stickier";
	else if cunts of player > 0 and anallevel is 3:
		say "     Largely dropping the pretense of an exam, he throws himself into stuffing your dripping cunny with one hand and pumping a few fingers into your asshole with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon soaking your crotch with your feminine juices as your vagina quivers and your anus clutches around his thrusting digits. Your [cunt size desc of player] cunt gushes with juices as you climax. Grabbing his stiff canine dong, he pumps it quickly, splattering a gooey mess of his own seed onto you, making you all the stickier";
	else if cunts of player > 0:
		say "     Largely dropping the pretense of an exam, he throws himself into stuffing your dripping cunny with one hand and [if breast size of player > 0]groping one of your breasts[else]grabbing your ass[end if] with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon soaking your crotch with your feminine juices as your vagina quivers around his thrusting digits. Your [cunt size desc of player] cunt gushes with juices as you climax. Grabbing his stiff canine dong, he pumps it quickly, splattering a gooey mess of his own seed onto you, making you all the stickier";
	else if cocks of player > 0 and anallevel is 3:
		say "     Largely dropping the pretense of an exam, he throws himself into stroking your [cock of player] cock with one hand and pumping a few fingers into your asshole with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon feeling your [ball size] tighten up even as your anus clutches around his thrusting digits. Your [cock size desc of player] penis throbs in the canine doctor's paw as he watches[if cock width of player < 24], stunned and impressed by[else if cock width of player > 15], definitely impressed by[else if cock width of player > 10], seemingly pleased by[else if cock width of player > 5] with mild disapproval at[else], clearly disappointed with[end if] your [cum load size of player] output. Grabbing his stiff canine dong, he pumps it quickly, splattering a gooey mess of his own seed onto you, making you all the stickier";
	else if cocks of player > 0:
		say "     Largely dropping the pretense of an exam, he throws himself into stroking your [cock of player] cock with one hand and [if breast size of player > 0]groping one of your breasts[else]grabbing your ass[end if] with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon feeling your [ball size] tighten up. Your [cock size desc of player] penis throbs in the canine doctor's paw as he watches[if cock width of player < 24], stunned and impressed by[else if cock width of player > 15], definitely impressed by[else if cock width of player > 10], seemingly pleased by[else if cock width of player > 5] with mild disapproval at[else], clearly disappointed with[end if] your [cum load size of player] output. Grabbing his stiff canine dong, he pumps it quickly, splattering a gooey mess of his own seed onto you, making you all the stickier";
	else if anallevel is 3:
		say "     Largely dropping the pretense of an exam, he throws himself into pumping a few fingers into your asshole with one hand and [if breast size of player > 0]groping one of your breasts[else]grabbing your ass[end if] with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon feeling your [bodydesc of player] body quivering in undirected release even as your anus clutches around his thrusting digits. Clearly disappointed by your lack of genitals, he grabs his stiff canine dong, pumps it quickly and splatters a gooey mess of his own semen across your bare groin";
	say ". When your climax ebbs and you're left basking in the afterglow, he undoes your straps and makes some excuse about [one of]having an appointment to fuck one of the nurses[or]being late for tee-off[or]there being more patients to see[or]needing to check on the lab results[or]having just been paged[or]being needed in emergency[or]you needing to return for a follow-up soon[in random order] and heads off.";


to say losetohdfemale:
	say "     The horny doctor eagerly pushes you backwards onto a stray gurney, climbs atop it and runs her paws roughly over you. '[if HP of player > 0]Now that's much better. I've got the cure for what ails you right here,' she giggles, grinding her dripping pussy against your hip as she does[else]Such a troublesome patient you're being. You don't want me to call an orderly to help me with you, do you?' she giggles, grinding her dripping pussy against your hip as she does[end if]. No longer resisting her advances, she licks your neck and gives your crotch a probing caress, a quick examination while she decides what fun she might have with her new patient. You can't help but moan in response, your lustful urges rapidly overpowering your good sense.";
	if a random chance of 1 in 4 succeeds:
		say "[hdfemale_sex04]";
	if cocks of player > 0 and a random chance of 2 in 3 succeeds:
		say "[hdfemale_sex01]";
	else:
		say "[hdfemale_sex02]";

to say hdfemale_sex01:
	say "     While playing with your cock, she pants excitedly. '[one of]I've got the cure for what ails you right here[or]Trust me, I'm a doctor[or]I diagnose you as 'sexy'[or]You've got a bad case of swelling. I'm going to have to prescribe the application of hot doggy cunt until it goes down[or]Let's get started on your treatment, my sexy patient[or]The prognosis isn't good. You need some hard doggy fucking stat[at random],' she says, grinding her pussy across your erection in emphasis. Under the horny [hdformname][']s skillful teasing, you find yourself growing quite eager for her advances as she gets your [cock of player] cock lined up with her dripping pussy. 'Mmm... [one of]med school was totally worth it for this[or]let's begin your treatment[or]nothing like fucking your patient to make a doctor's day[or]doctor-patient sex is the best sex[at random],' she says with a grin and a lick just before sinking down onto your throbbing manhood.";
	say "     With the doctor's canine pussy wrapped tightly around your shaft, she starts to bounce in your lap. Her tongue hangs out the side of her [if hdform is 5 or hdform is 6]short [end if]muzzle as she rides you hard and fast[if breast size of player > 0]. Her paws slide along your sides and move to fondle your tits, playing with your nipples in what's certainly more than a normal breast exam[end if]. You start to pant and bark alongside her as you fuck her, her quivering, clenching hole feeling great around your [cock size desc of player] dick. This goes on for several minutes before she finally pushes herself firmly down upon your shaft[if cockname of player is listed in infections of Knotlist], popping your growing knot past her juicy lips,[end if] as she cums with a cry of delight. With her hot cunny squeezing and milking at your manhood, it's not long before you're cumming as well, spraying your hot seed into the lustful [hdformname][']s womb. Her excess juices, streaked with semen, soak your crotch and run down your thighs to stain the gurney. Once the doctor's done with your [']treatment['], she slips off your [if cockname of player is listed in infections of Knotlist]shrinking knot[else]spent shaft[end if] with a wet pop and sends you on your way. Still in a bit of a daze after the hard fucking, you stumble off, smelling heavily of canine sex.";

to say hdfemale_sex02:
	say "     After grinding herself against your leg while playing with your [if cunts of player > 0 and cocks of player > 0]cock[smn] and puss[yfn][else if cunts of player > 0]puss[yfn][else if cocks of player > 0]cock[smn][else]bare groin and asshole[end if] for a couple of minutes, the [hdformname] doctor moves around on the gurney to lower her crotch over your face. '[one of]Nine out of ten doctors agree that licking dog pussy will help clear up lingering symptoms of humanity[or]Time for your tasty medicine, my dear[or]Here, I've got a juicy sample for you right here[or]My diagnosis is that you're dehydrated from lack of pussy juice. We need to give you a fresh dose right away[or]Now breathe in deeply and start licking, my sexy patient[or]The prognosis isn't good. You need some juicy doggy cum stat[or][if cocks of player > 0]That's a bad case of swelling you've got there,' she says while stroking your cock[else if cunts of player > 0]You're seeping quite a bit of juice there,' she says while fingering your pussy[else]It seems someone's absconded with your genitals. That simply won't do at all these days,' she says while rubbing your featureless crotch[end if]. 'Here, breathe in deeply and start licking while I tend to it[at random].' Pressing her canine muff to your lips, she gives an excited yip and grinds those wet folds down onto your mouth. 'Mmm... [one of]med school was totally worth it for this[or]it's the doctor's turn for some treatment this time[or]nothing like a pussy-eating patient to make a doctor's day[or]doctor-patient sex is the best sex[at random],' she adds with a grin.";
	say "     With the doctor's canine cunny pressed to your mouth, you can't help but breathe in her excited scent and taste her juices as they run across your lips. Your tongue slips out before you even realize and starts lapping at her folds to get more. Her tongue lolls out the side of her [if hdform is 5 or hdform is 6]short [end if]muzzle as you go to town eating out the [hdformname]'s cunt while she yips and barks in delight. You start to moan and pant between breaths as you lick across and into her dripping cunny. In your lustful haze, you swallow down the infected doctor's juices eagerly, thirsty for more. She leans down overtop of you and buries her muzzle between your legs, [if cocks of player > 0]taking your cock into her muzzle and sucking you off in return[else if cunts of player > 0]pushing her long, canine tongue into your pussy and lapping deep inside you[else]slathering her long, canine tongue across your bare groin and asshole[end if] while humping your face. With your tongue teasing her clit and her own tongue working over your groin, it is not much longer before she cums with an excited bark. Her hot juices flow across your tongue and soak your face as she cries out in climactic bliss[if cocks of player > 0 or cunts of player > 0]. This sends you over the edge, cumming with a muffled moan from beneath her leaking muff. She laps it all up eagerly with that long tongue of hers[end if]. Once the doctor's done soaking your face with her musky [']medicine['], she climbs off of your face and helps you out of the gurney before sending you on your way. Still in a bit of a daze after all that, you stumble off while licking the last of her juices from your lips.";

to say hdfemale_sex03:
	say "***slot for another scene.";

to say hdfemale_sex04:
	say "     The canine continues by giving you an inquisitive sniff and gropes your crotch. Distracted by her molesting touch, you don't immediately notice that she's already strapped your arms down. Another firmer grab startles you long enough for her to do your legs as well. 'Oh my, this looks serious. You'll need a full exam,' she says with mock-concern. The horny doctor starts by running her paws over your [bodytype of player] body in a strange mix between a standard examination and sexual teasing.";
	say "     She moves up to your head to start off, examining your [facename of player] with a mix of medical scrutiny and caressing touches. An examination of your throat glands is followed by a nuzzle and lick along your neck. Her scrutiny of your eyes and ears devolves into her licking and nibbling at your ears. Getting you to open up and say 'Ahhh' ends in her pressing her muzzle to your lips and french kissing you.";
	if breast size of player > 6:
		say "     She shifts her attention onto your nipples next, tracing around your areolae first and then tweaking them. Your moan brings a 'Mmm-hmm' and a nod of her head. She moves on to groping your enlarged breasts. 'Excellent increase in mammary tissue. Fine shape and elasticity,' she adds before leaning down and sucking on your nips, drawing more moans from you.";
	else if breast size of player > 0:
		say "     She shifts her attention onto your nipples next, tracing around your areolae first and then tweaking them. Your moan brings a 'tut-tut' and a shake of her head. She moves on to groping your breasts. 'Mammary tissue is within normal standards at present. Definite need for continued treatment,' she adds before leaning down and sucking on your nips, drawing more moans from you.";
	else if breasts of player > 0:
		say "     She shifts her attention onto your nipples next, tracing around your areolae first and then tweaking them[if cunts of player is 0]. Your moans increase as she leans down and runs her canine tongue across your flat chest to lap across your nips[else]. Your moan brings a 'tut-tut' and a shake of her head as she rubs her paws across your flat chest. 'The lack of mammary tissue is most concerning. Continued treatment will be required,' she adds before leaning down and lapping across your nips, drawing more moans from you.";
	else:
		say "     She shifts her attention onto your flat chest next, kneading your chest and rubbing her fingers across your chest. 'The lack of nipples[if cunts of player > 0] and breasts[end if] is most concerning. I recommend immediate treatment,' she adds before leaning down and lapping across your bare chest. Her tongue slathers doggy drool across your flesh and she nips lightly at your pecs, drawing moans from you.";
	WaitLineBreak;
	if anallevel is 3 or ( player is neuter ):
		say "     Pulling on some latex gloves with a snap and a grin, she lubricates a finger and slips it between your ass cheeks. It is quite cool and uncomfortable at first, but quickly warms up as she probes around inside you. The wiggling of her digit becomes increasingly pleasurable as she even starts thrusting it in and out of you[if cocks of player > 0], stimulating your prostate[end if] until you're squirming and moaning from this as well.";
	if cocks of player > 0:
		say "     Taking [if cocks of player > 1]one of your cocks[else]your cock[end if] in paw, she strokes and over it. Already quite hard from all the teasing, she sizes you up even as she jerks you off[if cock length of player > 20]. She seems quite impressed with[else if cock length of player > 10]. She seems rather pleased with[else if cock length of player > 5]. She seems unimpressed with[else]. She shakes her head and clucks her tongue at[end if] your [cock size desc of player] shaft[smn] and leans in to give [if cocks of player is 1]it[else]them[end if] a quick lick and suck[if cockname of player is not listed in infections of Internallist]. While she does this, her paw moves to your ballsack, rolling around your [ball size] in her palm and appraising their heft[end if]. She gets you to the point of drooling precum, laps some up for a taste test and then moves on.";
	if cunts of player > 0:
		say "     Burying her nose between your thighs, she nuzzles at your pussy before giving it a quick lick. This is then followed by a pair of digits slipping their way into your vagina and rubbing along your inner walls[if cunt width of player > 12]. Eventually two fingers moves up to three and then four before she ends up fisting you to pound away at your gaping cunny. As she stuffs[else if cunt width of player > 8]. Eventually two fingers moves up to three and then four as she continues to pound away at your spacious cunny. As she fingerfucks[else if cunt width of player > 5]. Eventually two fingers moves up to three as she continues to pound away at your widened cunny. As she fingerfucks[else]. As she fingerfucks[end if] your wet pussy, her other paw rubs across your outer folds, both teasing you and allowing her to examine your cunny in detail. There's something embarassingly exciting about her scrutiny, especially when her fingertips move to your clit and start playing with it. You're left dripping with juices by the time she's finished the gynecological exam.";
	WaitLineBreak;
	if cunts of player > 0 and cocks of player > 0:
		say "     Largely dropping the pretense of an exam, she throws herself into stuffing your dripping cunny with one hand and pumping your [cock of player] cock with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon soaking your crotch with your feminine juices as your [ball size] tighten up. Your [cock size desc of player] penis throbs in the canine doctor's paw as she watches[if cock width of player < 24], stunned and impressed by[else if cock width of player > 15], definitely impressed by[else if cock width of player > 10], seemingly pleased by[else if cock width of player > 5] with mild disapproval at[else], clearly disappointed with[end if] your [cum load size of player] output. Stuffing a few fingers into her own cunny, she works herself up to a barking climax and wipes her stick fingers off onto you";
	else if cunts of player > 0 and anallevel is 3:
		say "     Largely dropping the pretense of an exam, she throws herself into stuffing your dripping cunny with one hand and pumping a few fingers into your asshole with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon soaking your crotch with your feminine juices as your vagina quivers and your anus clutches around her thrusting digits. Your [cunt size desc of player] cunt gushes with juices as you climax. Stuffing a few fingers into her own cunny, she works herself up to a barking climax and wipes her stick fingers off onto you";
	else if cunts of player > 0:
		say "     Largely dropping the pretense of an exam, she throws herself into stuffing your dripping cunny with one hand and [if breast size of player > 0]groping one of your breasts[else]grabbing your ass[end if] with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon soaking your crotch with your feminine juices as your vagina quivers around her thrusting digits. Your [cunt size desc of player] cunt gushes with juices as you climax. Stuffing a few fingers into her own cunny, she works herself up to a barking climax and wipes her stick fingers off onto you";
	else if cocks of player > 0 and anallevel is 3:
		say "     Largely dropping the pretense of an exam, she throws herself into stroking your [cock of player] cock with one hand and pumping a few fingers into your asshole with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon feeling your [ball size] tighten up even as your anus clutches around her thrusting digits. Your [cock size desc of player] penis throbs in the canine doctor's paw as she watches[if cock width of player < 24], stunned and impressed by[else if cock width of player > 15], definitely impressed by[else if cock width of player > 10], seemingly pleased by[else if cock width of player > 5] with mild disapproval at[else], clearly disappointed with[end if] your [cum load size of player] output. Stuffing a few fingers into her own cunny, she works herself up to a barking climax and wipes her stick fingers off onto you";
	else if cocks of player > 0:
		say "     Largely dropping the pretense of an exam, she throws herself into stroking your [cock of player] cock with one hand and [if breast size of player > 0]groping one of your breasts[else]grabbing your ass[end if] with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon feeling your [ball size] tighten up. Your [cock size desc of player] penis throbs in the canine doctor's paw as she watches[if cock width of player < 24], stunned and impressed by[else if cock width of player > 15], definitely impressed by[else if cock width of player > 10], seemingly pleased by[else if cock width of player > 5] with mild disapproval at[else], clearly disappointed with[end if] your [cum load size of player] output. Stuffing a few fingers into her own cunny, she works herself up to a barking climax and wipes her stick fingers off onto you";
	else if anallevel is 3:
		say "     Largely dropping the pretense of an exam, she throws herself into pumping a few fingers into your asshole with one hand and [if breast size of player > 0]groping one of your breasts[else]grabbing your ass[end if] with the other. Already very worked up by the constant teasing without proper release, you don't last for much longer, soon feeling your [bodydesc of player] body quivering in undirected release even as your anus clutches around his thrusting digits. Clearly disappointed by your lack of genitals, she stuffs a few fingers into her own cunny, works herself up to a barking climax and then wipes her stick fingers off across your bare groin";
	say ". When your climax ebbs and you're left basking in the afterglow, she undoes your straps and makes some excuse about [one of]having an appointment to fuck one of the orderlies[or]being late for the spa[or]there being more patients to see[or]needing to check on the lab results[or]having just been paged[or]being needed in emergency[or]you needing to return for a follow-up soon[in random order] and heads off.";


to say beatthehornydoc:
	if hdmode is 1:
		say "[beatthehdmale]";
	else if hdmode is 2:
		say "[beatthehdfemale]";

to say beatthehdmale:
	say "     Having enough of the fight, the doctor stumbles back a few feet. There, he growls and shakes his paw at you. 'Just you wait until you get my bill. Then I'll have the last laugh!' And with that, he turns and dashes off into the dark depths of the hospital.";

to say beatthehdfemale:
	say "     Having enough of the fight, the doctor stumbles back a few feet. There, she growls and shakes her paw at you. 'Just you wait until you get my bill. Then I'll have the last laugh!' And with that, she turns and dashes off into the dark depths of the hospital.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Horny Doctor"; [The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]dog[or]canine doctor[or]doggy doctor[or]infected doctor[or]horny hound[or][hdformname][at random]
[one of]presses [if hdmode is 1]his[else]her[end if] stethoscope against your groin. BRrr! That's cold![or]gropes you lustfully while grinding [if hdmode is 1]his[else]her[end if] crotch against your leg[or]strikes your hard on the temple, making your ear ring.[or]seems to know just where to grab and grope you to turn you on.[or]gives you a hard punch to the solar plexus.[or]manages to slip behind you and grab your ass with one paw while fondling you with the other.[at random]";
	now defeated entry is "[beatthehornydoc]"; [ Text when monster loses. Change 'hornydoc' as above. ]
	now victory entry is "[losetohornydoc]"; [ Text when monster wins. Change 'hornydoc' as above. ]
	now desc entry is "[hornydocdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "quite canine, with a muzzle and doggy ears. Resembling a samoyed, your head is covered in fluffy white fur contrasted by dark eyes, lips and nose";
	now body entry is "that of a dog person, with paw-like hands that long to grab and grope others";
	now skin entry is "floofy white fur covering your";
	now tail entry is "You've got a poofy white tail that naturally curls upwards.";
	now cock entry is "[one of]canine[or]doggy[or]knotted[at random]";
	now face change entry is "your skull bones crackle and snap as they stretch and shift. Your colour vision fades somewhat, but smells become much more vibrant. You just want to bury your new doggy muzzle in someone's crotch or sniff their ass";
	now body change entry is "your joints all tighten up in advance of your body reshaping itself. You become rather dog-like, with paws for hands and feet. You feel a growing eagerness to [']play doctor['] with someone and perform a rather naughty exam of their privates";
	now skin change entry is "you gain a fluffy coat of white fur";
	now ass change entry is "a floofy white tail forms, curling upwards and wagging happily";
	now cock change entry is "it becomes a throbbing dog dick, complete with knot. Looking at it, you find yourself eager to bury your bone in a tight, hot hole";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 17;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 85; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Hospital"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 9; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of breasts the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;
	now cunt width entry is 7;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is "libido suppressant"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 20; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]animalistic[at random]";
	now type entry is "[one of]canine[or]samoyed[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Heat

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
"Horny Doctor"	7	2	"You moan as a heated need grows inside you from a quiver to a clenching emptiness in your cunt that you try in vain to fill with some fingers. Your canine womb has gone into estrus and your pussy drips with juices to advertise this fact. You are in heat."	--	--	--	"[hdoctorheat]"	true	true	"You moan as a heated need grows inside you from a quiver to a clenching emptiness in your bowels that you try in vain to fill with some fingers. Your hidden womb has gone into estrus and your need for a horny male to treat your condition only grows. Your altered body is in heat."

to say hdoctorheat:
	increase libido of player by 6;
	if heatlevel is 3:
		increase libido of player by 2;
	if libido of player > 100, now libido of player is 100;


Section 4 - Endings

when play ends:
	if bodyname of player is "Horny Doctor":
		if humanity of player < 10:
			say "     As you lose your grip on your mind, a new set of instincts and thoughts replace your old memories. A lot of it is a jumble of medical knowledge that occupies your thoughts, drawing you to come to the city hospital. There you feel a need to work alongside the other canine doctors wandering the halls. They welcome you happily, and lustfully, as do the other denizens of the medical facility.";
			if hospquest < 2:
				if cocks of player > 0 and cunts of player > 0:
					say "     Following your new urges, you hump and are humped by many of the other canine doctors, breeding more of your kind. You end up claiming one of the offices as your own and making it your preferred place to [']confer['] with your peers or give your patients an in-depth [']examination[']. Your favorite though is when you're able to book one of the operating rooms for a medical orgy where you and some of the nurses and orderlies take turns sexing up a captured patient until the treatment is successful in turning them into another member of the staff.";
				else if cocks of player > 0:
					say "     Following your new urges, you hump many of the other canine doctors, breeding more of your kind. You end up claiming one of the offices as your own and making it your preferred place to [']confer['] with your peers or give your patients an in-depth [']examination[']. Your favorite though is when you're able to book one of the operating rooms for a medical orgy where you and some of the nurses and orderlies take turns sexing up a captured patient until the treatment is successful in turning them into another member of the staff.";
				else if player is impreg_ok:
					say "     Following your new urges, you are humped by many of the other canine doctors, breeding more of your kind. You end up claiming one of the offices as your own and making it your preferred place to [']confer['] with your peers or give your patients an in-depth [']examination[']. Your favorite though is when you're able to book one of the operating rooms for a medical orgy where you and some of the nurses and orderlies take turns sexing up a captured patient until the treatment is successful in turning them into another member of the staff.";
				else:
					say "     Following your new urges, you are humped by many of the other canine doctors. You end up claiming one of the offices as your own and making it your preferred place to [']confer['] with your peers or give your patients an in-depth [']examination[']. Your favorite though is when you're able to book one of the operating rooms for a medical orgy where you and some of the nurses and orderlies take turns sexing up a captured patient until the treatment is successful in turning them into another member of the staff.";
			else if hospquest < 13:
				say "     Drawn by your instincts as a member of the hospital staff, you report back to Dr Mouse. While you only vaguely remember him, he greets you with a smile and happily adds you to his hospital's staff. He assigns you to one of the vacant offices and has you direct a few of his exploratory teams. You rarely go out with these teams, instead focused on keeping tabs on their forays to capture new [']volunteers['] for his experiments as well as the occasional [']patient['] for you.";
				if cocks of player > 0:
					say "     During one of these trips to accompany a team, needing to survey the situation at the college campus yourself, your team gets stormed by a muscular team of bunnies in sports gear. During the fray, you get tackled by a pair of them and dragged away from the group. By the time you regain consciousness, you are in a locker room surrounded by the bunnies, who take turns celebrating their capture. Having been treated by the mouse director, you resist physically changing and becoming another bunny like them, but that's not what they want anyhow. You are instead remade into their sexy team doctor, tending to their injuries and providing relief for their aching loins.";
				else:
					say "     During one of these trips to accompany a team, wanting to hand-pick the next set of test subjects for a crucial experiment, the team gets stormed by a pack of huskies. While the females keep the team occupied, their alpha male leader - tired of having his girls snatched up by the hospital raids - assaults you from behind and captures you. You get added to his little pack of fucktoy bitches as a samoyed plaything to add some spice to his breeding bitches.";
			else if hospquest is 13 and HP of doctor mouse is 1:
				say "     Drawn by your instincts as a member of the hospital staff, you report back to Dr Mouse. While you only vaguely remember him, he somehow recognizes you readily and is cruelly pleased with your fate. Fully subservient to him now, he takes delight in ordering you around and using you for any twisted experiment he wants. Your body is changed over and over again in countless ways over the years and you are often used to mate with any new test subjects he captures for his amusement. ";
				if "Sterile" is not listed in feats of player and cunts of player > 0:
					say "     You birth many bizarre, hybrid creatures from these matings";
				say "     You do all this for him gladly, though never understanding why he is so mean to you, his loyal follower.";
			else if hospquest is 13 and HP of doctor mouse is 2:
				say "     The hospital is in disarray when you arrive, more like a bunch of seagulls squabbling over scraps than the orderly flock of birds flying in formation it once resembled. The various factions strike out at each other at times, but cooperate at others. Some sections, such as the doctors' offices are calm enough, but the cafeteria and other locations are frequent homes to squabbles over mates.";
				if intelligence of player >= 20 and charisma of player >= 15 and "Expert Medic" is listed in feats of player:
					say "     It is only with the coming of the military that control is restored. The united threat of military action unifies the factions, at least temporarily. And you would see that order remain and start taking charge of the groups. Feeling the need to have someone in charge, the other groups begin to respond to your commands, beginning to rely on you to fill that void. Your familiarity and experience in the city helps counter the military incursion. Using the hospital's collected samples, you direct raids against the military forces, infecting them groups of them with various strains, thereby creating pockets of sex-crazed creatures in their midst. These strikes are well planned and use infections selected to provide the most disruption, either by their power or by their high breeding rate. With their forces falling into disarray and being lost to these hot spots you've created, the military is eventually forced to withdraw from the area around the hospital and eventually from the city. With the hospital left alone and a new collection of test subjects, you turn your attention away from the army and back inwards.";
					say "     Taking over as the head of the hospital from that point comes naturally. The groups fall into line and order is restored to you hospital. While lacking the extensive medical training and experience Dr. Mouse had, your infection does provide you with some mismatched knowledge and fragments of training that you quickly improve upon by studying the numerous medical books and journals throughout the hospital. As you're doing this, you direct your staff to shift towards capturing injured 'patients' to bring back to the hospital for 'treatment'. Many of these end up staying on as staff as they are converted into more doctors, nurses or orderlies. A few you keep from changing and have as your personal roster of permanent patients, always seeking to breed with and cross-breed them in your search to create the perfect fucktoy breeder to satisfy your sexual hungers.";
					increase score by 50;
				else:
					say "     It is only with the coming of the military that control is restored. The united threat of military action unites the factions, at least temporarily. And you would see that unity remain and head out into the city to search for a means to ensure this. Feeling the need to have someone in charge, you break from the defence and slip past the military lines. You find a small clinic with a reptilian doctor performing gynecological work within its ruins. Armed with a syringe filled with tranquilizers and a need to do what must be done for the good of the hospital, you slip in and attack the lizard girl doctor. Being a rather weak creature and having preferred to hide rather than fight to survive, she is easily taken down and knocked out.";
					say "     It is touch and go at times, but you manage to evade the increasing military activity and drag her back to the hospital[if cocks of player > 0]. You have a very enjoyable time welcoming her to the hospital[else]. You have a very enjoyable time watching one the male doctor's welcome her to the hospital[end if], fucking her senseless until she's bonded to become part of the staff as your new leader. The lizard doctor fills her position well, maintaining the unity of the hospital after the military is repulsed. The hospital's medical work picks up again after that time, but now is largely focused towards breeding and fertility of its patients (voluntary and involuntary), resulting in an overall increase in creature numbers. This growth in population strains the military's capacity to hold back their tide until finally they spill forth in all directions.";
			else:
				say "     Drawn by your instincts as a member of the hospital staff, you report back to Dr Mouse. While you only vaguely remember him, he greets you with a smile and happily adds you to his hospital's staff. He puts you in charge of monitoring the other doctors on his staff. Obediently, you follow the mad doctor's orders and relay them to the other doctors while checking up or assisting them with their activities and [']patients[']. This often involves you sexing up the horny canines as their alpha as well as aiding in several operations or experiments of theirs[if susan is in hidden lab]. Susan, as Dr Mouse's assistant, is there with him to help you and reward you with lustful sex[end if].";
				say "     Once all the preparations have been made and the military is about to move, Dr Mouse takes you[if susan is in hidden lab], Susan[end if] and your small selection of staff to escape through the service tunnels under the hospital. The rest of the staff and the helicopter crew act as a distraction, holding the hospital against the army and drawing their attention while the director makes his getaway. You all escape out of the city and Dr Mouse sets up a new lab in secret. He begins selling off the fruits of his research to foreign powers and the growing factions of transformed creatures that form. He has you continue to act as his chief of staff, checking up on and assisting with their work when he is otherwise occupied.";
		else:
			if hospquest > 13:
				say "     When you are rescued from the infected city by the military, they take you to a base they've set up for testing and processing of the infected. While you're being examined, often by doctors and technicians whom you feel have no clue what they're doing, you have to bite your tongue often. You pass yourself off as another random canine survivor rather than as a doctor yourself. As much as you'd like the opportunity to join their staff and get your paws on their records, it is far more likely you'd be interrogated and monitored in regards to the strange activity at the hospital. Using your innate medical knowledge, you do know how to fool several of their tests as well as avoid receiving the treatment to render you non-infectious by fudging the results.";
				if "Expert Medic" is listed in feats of player:
					say "     Once you're cleared, you travel to a small town and establish a private practice. At first, the residents are a little leery of the transformed doctor, but you gradually become accepted after a few residents come see you for their ailments rather than travelling to the city. As word gets around that you're a good doctor, the town starts to accept you and your practice blossoms. And once you've earned their trust, then you start to gradually and secretly infect your patients[if cocks of player > 0 or cunts of player > 0]. With some you have to slip some of your sexual fluids into their treatment, though others you get to fuck outright in your examination room[else]. With most you have to slip some of your nanites into their treatment, though with a few you're able to entice into oral sex in your examination room[end if]. By the time people are starting to show outward signs, almost everyone's been infected, either directly or indirectly by you, and the whole town becomes populated by horny dog patients, eager for [']treatment['] by their favorite doctor.";
				else:
					say "     Once you're cleared, you gather some resources and take to the road as a travelling doctor. Only possessing a mish-mash of medical knowledge from your infection and what extra you can pick up from some books and journals you find, you are more quack than true doctor. You offer a variety of sexual healing, anti-nanite [']cures['] and other quackery. You trick a few rubes, make a few bucks and get a few fucks before leaving town with some doggy-infected people[if cocks of player > 0] and puppies[end if] in your wake. Early on, it is difficult for you to get by, but as time goes on and the infection spreads, it becomes easier for you. You are increasingly treated as a show that people will willingly fall for, especially in towns you frequent regularly and have sown full of horny canines like yourself, often getting to fuck your [']patients['] right on stage for the audience as proof of your wonderous [']medical['] techniques.";
			else if "Expert Medic" is listed in feats of player:
				say "     After being rescued by the military forces, you are brought to the base they've set up for the testing and processing of the infected. While you are being examined, you can't help but become an active participant in their testing. The medical knowledge you have, while somewhat jumbled or distorted in places, gives you some insight into what is being done and what you can do to help with their tests (or fool them, as needed). They are a little cautious at first but, being understaffed, they add you to their staff after a thorough clearance process by the military staff. While you're only cleared to assist with a few of the simpler tasks, the other doctors get lax over time as no issues seem to arise. Generally, you do very good work, though you do fudge a few things when it's convenient to you or to earn a sexual favour from one of the infected you're processing. Once the city clean-up attempt comes to an end, you use the contacts you've built up with the doctors and scientists to get hired on by Zephyr as part of their staff. The work with them is much the same, though for actual pay and greater opportunity for sex. While not strictly allowed by company policy, your coworkers are quite willing to turn a blind eye to your proclivities, fully knowing you'll afford them the same courtesy.";
			else:
				say "     After being rescued by the military forces, you are brought to the base they've set up for testing and processing of the infected. While you are being examined, the jumble of medical knowledge you've picked up from your infection helps you understand the tests they're doing (and even fool them as necessary). You comment and discuss the procedures, but your distorted knowledge often has you thinking there should be some sexual bent to what should be done. While it's clear to the staff that you aren't qualified to assist them, a couple of them do find your kinky ideas of medical sex play interesting and discretely take you up on them after hours. By the time of your release, you've become well-acquainted with several of the doctors and scientists in this manner. You remain in contact with them and visit them often for roleplay sex or for some of their kinkier experiments to avoid requesting volunteers through proper channels. This gives you a lot of fun as well as a fair bit of money under the table.";


Horny Doctor For FS ends here.
