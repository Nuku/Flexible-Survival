Version 6 of Demon Brute For FS by Leo X begins here.
[Expansion & Rewriting by Wahn]
[Version 6 - Victory sex w/Brutus - Stripes]
[Todo: Endings]

"Adds a Monster name to Flexible Survivals Wandering Monsters table, With Impreg chance"

DBCaptureQuestVar is a number that varies. DBCaptureQuestVar is usually 0.
DemonBruteStatus is a number that varies. DemonBruteStatus is usually 0.

[ DBCaptureQuestVar - Capture a demon brute             ]
[  0: never fought against one                          ]
[  1: won once                                          ]
[  2: won twice or more                                 ]
[  3: talked to Nermine                                 ]
[  4: during the ritual fight                           ]
[  5: ritual done, demon controlled                     ]
[  6: cleansed from his evil                            ]
[  7: sworn to service to the player                    ]
[ 99: ritual failed                                     ]

[ DemonBruteStatus - Gender switching                   ]
[  0: just a normal demon brute                         ]
[  1: herm demon brute                                  ]
[  2: female demon brute                                ]

Section 1 - Fighting and Capturing the Brute

to say demonbrutedesc:
	now messypigaltorgasm is false;
	follow the monster combat mode rule;		[select the combat mode for first-strike]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 10;					[reset likelihood of alt attack]
	if DBCaptureQuestVar is 5:
		say "The large demon stretches its body, ropes of muscles rippling under dark purple skin and the spade-tipped tail whipping through the air. Then it turns its head towards you, red eyes glowing with hatred. With a roar, it rushes forward with outstretched claws.";
	otherwise:
		say "You see a massive beast ahead, with dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. His entire body is gigantic and muscle-bound, and between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his tailbone, which is constantly flicking back and forth. He wears nothing but a grin.";

to say demon brute wins:
	if cunts of player > 0:
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!'";
		otherwise:
			say "     'Just what I've been looking for, a bitch to impregnate.' the demon brute growls in a deep gravelly voice.";
		say "[line break]";
		say "     Picking you up bodily, he tears away any clothes you were wearing. The monster then smirks at your naked form, then throws your trembling body down onto the ground. He lifts your lower body into the air, leaving your shoulders and head to rest on the ground. Pushing apart your legs, he begins to rub his hard, long cock up and down your [cunt size desc of player] petals. The brutish demon moves into a position directly above you, his large balls sagging down far enough to rub against your [cunt size desc of player] lips. He plants a foot on each of your arms, and spreads your legs painfully far apart, putting a lot of his weight on them. You are effectively immobilized.";
		say "[WaitLineBreak]";
		say "     He then guides his cock to press against your warm slit, putting all his weight behind it. It slides in with some resistance, and you yelp in pain as it pushes all the way to your cervix in one thrust. The monster grunts, and begins to brutally ravage your [cunt size desc of player] sex. The bumps which cover his cock are a source of both pain and pleasure as he thrusts into you again and again. With each powerful push, he comes closer to bashing through your cervix with his blunt tool, and he is constantly ramming your body into the hard ground. It takes the brute 30 minutes to reach a climax, but the brutal fucking feels as if it has gone on forever. The monster grunts again, and then sighs with relief as he empties his massive, swollen balls into your womb, filling it to the brim with his seed, and then past it. Your stomach begins to swell with the sheer volume of seed being pumped into it, and massive quantities pour out of your abused cunt, spilling all over the rest of your body.";
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand and your pussy still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
		otherwise:
			say "     The brute stands up, letting you fall into the massive pool of warm cum he has created. His seed simply pours from within your abused [cunt size desc of player] petals as he disappears into thin air.[impregchance]";
	otherwise:
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!'";
		otherwise:
			say "     'I'd prefer to fuck a bitch, but I'm still gonna enjoy every second of this. I am going to ruin your body, and you're gonna enjoy it.' the demon brute growls in a deep gravelly voice.";
		say "[line break]";
		say "     He tears away your clothes, forcing you down on all limbs, your rear up in the air. Slapping your ass with a massive hand, the brutish demon gives his cock a few jerks with the other, bringing it to full stiffness. Without further ado, he comes up behind you and begins to prod his massive member against your asshole. He puts all his weight behind it, and it eventually begins to disappear slowly inside your body. You scream out in pain, but he simply pushes harder, forcing as much of his cock inside as he can. Your eyes begin to tear as he begins to fuck your ass slowly, still having to overcome a lot of painful resistance.";
		say "     Over time, it becomes easier and easier to thrust, and after almost an hour of anal abuse, he is finally able to thrust freely, helped by several fluids, including his pre and your blood. As he thrusts faster and faster, the bumps on his cock constantly tear at your insides, and you impulsively let out a yelp of discomfort with every thrust. It is not too much longer before he reaches his climax, and, without pausing, grunts, and begins to pump your bowels full of his warm seed. It easily fills your intestines and your stomach. In fact, there is so much cum it continues up your throat, spilling out in massive quantities from your panting mouth.";
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand and your asshole still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
		otherwise:
			say "     As he finally removes his cock with a lout *pop*, your stomach is distended from the sheer amount of cum he has injected into you, and he leaves you to drown in the massive pool of cum he has left behind. As he disappears into thin air, you find yourself choking and spitting up large balls of his seed, while a constant stream leaks from your abused asshole. And the scary part is that you did enjoy it.[mimpregchance]";		

to say demon brute loses:
	if DBCaptureQuestVar is 0:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to vanish into a fine purple mist, and is blown away by the wind.";
		increase DBCaptureQuestVar by 1;
	otherwise if DBCaptureQuestVar is 1:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. Not wanting to let this one get away too, you grab its muscle-bound arm with both hands - only to have the bruised demon proceed to turn into a fine purple mist right under your fingers. A deep chuckle can be heard as a sudden wind blows away the purple cloud.";
		increase DBCaptureQuestVar by 1;
	otherwise if DBCaptureQuestVar is 2:
		say "     As the demon crashes to the ground with a rather loud thud, you're prepared for what happens next. You might not be able to catch one of these fuckers, but you can - and do - give him a good hard kick between the legs. This time, your demonic opponent vanishes with a whimper, the purple smoke he turns into a bit paler than before.";
		if a random chance of 1 in 3 succeeds and inasituation is false:
			say "[line break]";
			say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Might be useful for something, so you pick it up."; 
			increase carried of demon tooth by 1;
	otherwise if DBCaptureQuestVar is 4:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to turn into a fine purple mist - but instead of dispersing in the air as before, it swirls around as one tight mass. The cloud of mist wavers as if it's fighting against some pull, then is drawn towards the pentagram in an elongated stream. Whirling around in an ever-tightening spiral, the purple mist finally is absorbed by the now blackened demon tooth in the brazier. As the last bit of it vanishes, the fire and surrounding candles are blown out by a sudden wind, silence falling over the room only disturbed by quiet ticking sounds of the slowly cooling brazier.";
		now DBCaptureQuestVar is 5;
	otherwise if companion of player is demon brute:
		if inasituation is true or a random chance of 2 in 7 succeeds:
			say "     With a rather loud thud, the demon brute collapses to the ground, defeated.  Brutus lunges forward to grab it, but your demonic [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] is moments too late - the last wisps of the purple cloud slipping through [if DemonBruteStatus is 0]his[otherwise]her[end if] clawed fingers.  A deep chuckle can be heard as a sudden wind blows the mist away and the demon escapes";
			if a random chance of 3 in 5 succeeds:
				say ".  All that is left behind is one of the demon's fangs, knocked out during the fight.  Seeing it, Brutus growls in frustration and crushes it to dust under [if DemonBruteStatus is 0]his[otherwise]her[end if] heel";
			say ".";
		otherwise:
			say "[Brutus_DBCapture]";
	otherwise if DBCaptureQuestVar > 2:
		say "     As the demon crashes to the ground with a rather loud thud, you're prepared for what happens next. You might not be able to catch this one, but you can - and do - give him a good hard kick between the legs. This time, your demonic opponent vanishes with a whimper, the purple smoke he turns into a bit paler than before.";
		if a random chance of 1 in 3 succeeds and inasituation is false:
			if DBCaptureQuestVar is 3:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. You already gave one to Nermine and she said that you won't need another, so you leave it where it is..."; 
			otherwise if DBCaptureQuestVar is 5:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Nermine said she doesn't have the supplies to capture another of these brutes, so you leave it where it is..."; 
			otherwise if DBCaptureQuestVar is 99:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Nermine said she only had the supplies for one try to capture one of these brutes, so you leave it where it is...";


to say Brutus_DBCapture:
	say "     With a rather loud thud, the demon brute collapses to the ground, defeated.  Immediately, Brutus lunges forward to grab it, your demonic [if DBCaptureQuestVar is 5]slave[otherwise]companion[end if] diving [if DemonBruteStatus is 0]his[otherwise]her[end if] clawed fingers into the purple could it has become.  With a growl, Brutus seems to grab onto something in that mist and pulls hard on seemingly nothing.  This tug of war against the smoke lasts a few seconds, [if DemonBruteStatus is 0]his[otherwise]her[end if] eyes aflame and a rumbling growl in [if DemonBruteStatus is 0]his[otherwise]her[end if] chest until the demon brute is pulled back into existence";
	if DBCaptureQuestVar is 5:
		say ".";
		say "     Brutus slams it to the ground and tears in with [if DemonBruteStatus is 0]his[otherwise]her[end if] claws.  The demon growls threatening back, but ends up with bloody streaks across its chest before your enslaved pet pins it to the ground with [if DemonBruteStatus is 0]his[otherwise]her[end if] claws digging into its meaty shoulders";
	say ".  Defeated and now captured, the demon is pinned under a panting and obviously aroused Brutus, leaving it open for your amusements.  Your demonic companion turns to you, silently awaiting your [if DBCaptureQuestVar is 5]orders[otherwise]instructions[end if], but obviously eager for this opportunity to sate its [if DBCaptureQuestVar is 5]carnal and violent lusts[otherwise]carnal lust[end if].";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if demonbrutestatus < 2:
		choose a blank row in table of fucking options;
		now title entry is "Brutus fucks";
		now sortorder entry is 3;
		now description entry is "watch while Brutus fucks the other demon";
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck it";
		now sortorder entry is 1;
		now description entry is "fuck the demon while Brutus holds it down";
[		choose a blank row in table of fucking options;
		if demonbrutestatus < 2:
			now title entry is "Blow job while fucked";
			now description entry is "make it suck you off while getting fucked";
		otherwise:
			now title entry is "Blow job";
			now description entry is "make it suck you off";
		now sortorder entry is 4;						]
[	if cocks of player > 0 and demonbrutestatus < 2:
		choose a blank row in table of fucking options;
		now title entry is "Spitroast";
		now sortorder entry is 2;
		now description entry is "fuck the demon while Brutus takes its mouth";	]
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Ride it (vaginal)";
		now sortorder entry is 6;
		now description entry is "ride the captured demon's cock";
[		choose a blank row in table of fucking options;
		if demonbrutestatus < 2:
			now title entry is "Cunnilingus while fucked";
			now description entry is "make it eat out your pussy while getting fucked";
		otherwise:
			now title entry is "Cunnilingus";
			now description entry is "make it eat out your pussy";
		now sortorder entry is 5;						]
	choose a blank row in table of fucking options;
	now title entry is "Ride it (anal)";
	now sortorder entry is 7;
	now description entry is "stuff your ass with the demon's cock";
	if demonbrutestatus > 0:
		choose a blank row in table of fucking options;
		now title entry is "Brutus receives vaginal";
		now sortorder entry is 8;
		now description entry is "watch while Brutus rides the other demon's cock";
	choose a blank row in table of fucking options;
	now title entry is "Brutus receives anal";
	now sortorder entry is 9;
	now description entry is "watch while Brutus takes the other demon's cock up [if demonbrutestatus is 0]his[otherwise]her[end if] ass";
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Let her go[as][0][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber is 0:
			say "     Having beaten her and in no mood for stooping to her level, you give her a hard boot to the rear and send her scrambling away.  She snatches up her doll and hisses angrily as she makes her escape.";
			now sextablerun is 1;
		otherwise if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "Shall you [description entry]?";
			if player consents:
				let num be sortorder entry;
				now sextablerun is 1;
				if num is 1:
					say "[dbcapturesex_01]";			[fuck it]
				otherwise if num is 2:
					say "[dbcapturesex_02]";			[spit roast]
				otherwise if num is 3:
					say "[dbcapturesex_03]";			[brutus fucks]
				otherwise if num is 4:
					if demonbrutestatus < 2:
						say "[dbcapturesex_04_fuck]";	[bj w/fuck]
					otherwise:
						say "[dbcapturesex_04]";		[bj]
				otherwise if num is 5:
					if demonbrutestatus < 2:
						say "[dbcapturesex_05_fuck]";	[cunn w/fuck]
					otherwise:
						say "[dbcapturesex_05]";		[cunn]
				otherwise if num is 6:
					say "[dbcapturesex_06]";			[vaginal]
				otherwise if num is 7:
					say "[dbcapturesex_07]";			[anal]
				otherwise if num is 8:
					say "[dbcapturesex_08]";			[brutus rides - vag]
				otherwise if num is 8:
					say "[dbcapturesex_09]";			[brutus rides - anal]
		otherwise:
			say "Invalid Option.  Pick between 0 and [the number of filled rows in the table of fucking options].";

to say dbcapturesex_01:
	say "     Deciding you want a go at the captured demon, you have Brutus hold it down.  Pulling out your [cock size desc of player] cock and stroking it to erection, you move to get your [cock of player] meat into position.  The defeated demon snarls and tries slap at you with its tail, but your [if DBCaptureQuestVar is 5]demonic slave[otherwise]demonic companion[end if] grabs at the willful appendage and yanks it up roughly[if DBCaptureQuestVar is 5] in a crushing grip[end if].  After all your frustration with the demons, you can't help but chuckle at how the tables have turned now that you have one of your own.  Eager to take advantage of it, you thrust hard into your captured foe and start pounding its muscular ass.";
	say "     The demon's ass is hot and tight around your [cock of player] manhood, and the demon's attempts to resist only make it moreso[if cock length of player < 10].  The large creature's easily able to take your [cock size desc of player] cock, but remains deliciously snug due to its struggles[otherwise if cock length of player < 20].  The large creature takes your [cock size desc of player] cock with some difficulty, in part due to its struggles keeping it deliciously snug around you[otherwise].  The large creature has some difficulty taking your [cock size desc of player] cock, which is exacerbated by its struggles keeping it deliciously snug around you[end if].  You chuckle and slap its meaty rear end.  It growls and makes threats, but they prove to be empty ones as Brutus [if DBCaptureQuestVar is 5]grinds its face to the floor and claws into the creature all the harder[otherwise]keeps a tight grip on it[end if].";
	say "     You fuck that muscled ass hard and fast, knowing the big guy can take it (and has no choice but to do so).  In the end, it is not long before you reach your peak and cum with a lustful cry.  The demon beneath you groans and ends up cumming as well[if DBCaptureQuestVar is 5], much to Brutus's twisted delight[otherwise]much to Brutus's amusement[end if].  Speaking of your demonic companion, [if DemonBruteStatus is 0]he grinds his throbbing erection against the pinned demon's face, splattering it with thick gobs of semen[otherwise if DemonBruteStatus is 1]she grinds her throbbing erection against the pinned demon's face, splattering it with thick gobs of semen[otherwise]she grinds her dripping pussy against the pinned demon's face, splattering it with a stream of female cum[end if].  After you've drained your [cum load size of player] load into the demon's ass, you pull your cock free and give it another slap on the rear.  Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";

to say dbcapturesex_02:
	say "***spit roast";

to say dbcapturesex_03:
	if DBCaptureQuestVar is 5:
		say "     Deciding [if DemonBruteStatus is 0]he[otherwise]she[end if] deserves some relief, you tell Brutus to fuck the captured demon.  Brutus grins sinisterly and yanks it up roughly before plowing into its infernal brethren's ass.  The sight of that big cock driving into your fallen foe's muscular ass is very arousing and soon you're playing with yourself as you enjoy the show.  Your demonic slave, relishing the opportunity to be let loose, shows no mercy to [if DemonBruteStatus is 0]his[otherwise]her[end if] victim and pounds [if DemonBruteStatus is 0]his[otherwise]her[end if] pulsing rod into it.  The buggered demon makes threats and snarls, but [one of]Brutus just laughs that [if DemonBruteStatus is 0]he[otherwise]she[end if] is enslaved and must do as [if DemonBruteStatus is 0]his[otherwise]her[end if] master commands[or]Brutus gives an insincere apology that [if DemonBruteStatus is 0]he[otherwise]she[end if] must follow your orders[or]Brutus just digs [if DemonBruteStatus is 0]his[otherwise]her[end if] claws in deeper and pounds it all the harder[or]Brutus laughs off the threats and continues fucking the demon[or]Brutus responds with threats of [if DemonBruteStatus is 0]his[otherwise]her[end if] own to do even worse should the demon show itself again[at random].";
		say "     Brutus snarls as [if DemonBruteStatus is 0]he[otherwise]she[end if] cums messily into the struggling demon.  It groans and ends up cumming as well, much to your pet's twisted delight[if cocks of player > 0 or cunts of player > 0].  The sight of this sends you into orgasm as well[end if].  After draining [if DemonBruteStatus is 0]his[otherwise]her[end if] balls into the demon's ass, Brutus yanks [if DemonBruteStatus is 0]his[otherwise]her[end if] bump-ridden cock free with a laugh.  The messy, sex-stinking demon is tossed aside with a growl that it can now slink away to its hole.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	otherwise:
		say "     Deciding [if DemonBruteStatus is 0]he[otherwise]she[end if] deserves some relief, you tell Brutus to fuck the captured demon.  Brutus grins lustfully and yanks it up roughly before sinking into its infernal brethren's ass.  Your demonic thrall, relishing the opportunity to let loose and knowing the infernal creature can take it, [if DemonBruteStatus is 0]he[otherwise]she[end if] shows little restraint, but does reach around to stroke its cock in return.  The buggered demon makes threats and snarls, but [one of]Brutus only tells him to relax and enjoy it[or]Brutus tells him to just let go of all that anger and hate[or]Brutus tells him to just accept that it feels good[or]Brutus gives its hard cock a squeeze and says he knows it's enjoying it[or]Brutus keeps a firm grip as he continues fucking its ass[or]Brutus just spanks his ass and tells him to take it like a good hell-bitch[or]Brutus reminds it that it was beaten soundly before and will be beaten again if it tries to make good on its threats[at random].";
		say "     Brutus snarls as [if DemonBruteStatus is 0]he[otherwise]she[end if] cums messily into the struggling demon.  It groans and ends up cumming as well, painting a mess across the ground as the cleansed demon strokes it off[if cocks of player > 0 or cunts of player > 0].  The sight of this sends you into orgasm as well[end if].  After draining [if DemonBruteStatus is 0]his[otherwise]her[end if] balls into the demon's ass, Brutus slides [if DemonBruteStatus is 0]his[otherwise]her[end if] bump-ridden cock free and then wipes it on the other demon's ass.  The messy, sex-stinking demon is tossed aside with a growl that it's free to go now.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";

to say dbcapturesex_04_fuck:
	say "***bj w/fuck";

to say dbcapturesex_04:
	say "***bj";

to say dbcapturesex_05_fuck:
	say "***cunn w/fuck";

to say dbcapturesex_05:
	say "***cunnilingus";

to say dbcapturesex_06:
	say "     Wanting to enjoy the demon's cock, you order Brutus to keep it pinned while you do just that.  [if DemonBruteStatus is 0]He[otherwise]She[end if] chuckles at this and complies, starting by giving [if DemonBruteStatus is 0]his[otherwise]her[end if] fallen foe a knee in the gut before pushing it over onto its back.  Pinning it down, [if DemonBruteStatus is 0]he grinds his cock into[otherwise if DemonBruteStatus is 1]she grinds her cock into[otherwise]she grinds her pussy down onto[end if] the creature's face even as you move into position.  You slide your wet cunny across that pulsing rod, stiffening it to full erection.  As you lower yourself down onto that pillar of infernal meat, the demon tries to taunt you that [one of]it'll pound you until you're broken[or]you could have just bent over and taken it if you'd wanted it that badly[or]you can't resist its massive cock[or]you're nothing but another horny slut for it to breed[at random], but Brutus [if DBCaptureQuestVar is 5]grabs it by the throat, crushing its words into silence.  This proves again that you two have beaten it and will do as you please with it[otherwise if DemonBruteStatus is 0]presses his crotch back over its mouth to silence it and remind it who was the victor here[otherwise]presses her crotch back over its mouth to silence it and remind it who was the victor here[end if].  And what you want right now is that knobby rod stuffed inside you, and you [if cunt length of player < 10]work your [cunt size desc of player] cunt slowly down onto the massive thing[otherwise if cunt length of player < 20]lower your enlarged cunt down onto the very filling thing[otherwise]slide your spacious cunt down over it with no trouble[end if].";
	say "     You take your time at first, allowing yourself to adjust to its impressive size as well as drawing out your own pleasure.  Your increasingly lustful opponent struggles, wanting to pin you down and take you violently, but Brutus is there to keep the other demon in its place[if DBCaptureQuestVar is 5], clawing and slashing at it further as[otherwise], grappling with it until[end if] [if DemonBruteStatus is 0]he[otherwise]she[end if] beats it back to the ground.  The violent struggle certainly makes the demon's cock throb and buck inside you, causing you to moan in pleasure.  You chuckle and knead its hefty ballsac even as it growls and makes threats before Brutus [if DemonBruteStatus < 2]stuffs its maw with infernal meat[otherwise]cuts it off with her dripping loins in its face[end if].";
	say "     In time, you end up riding that pulsing pole hard and fast[if cunt length of player < 20] once you've adjusted to its huge size[end if].  And once you're going at it with reckless, lustful abandon, it is not long before the demon beneath you groans and cums hard, blasting his demonic load into your womb, only adding to the heat of your lust.  You cry out in orgasm and clamp down tightly around that spurting rod, milking it for all it'll give until your uterus is overflowing.  From the wet, messy pool of fluid at the junction between Brutus's crotch and the demon's mouth, you can tell [if DemonBruteStatus is 0]he's[otherwise]she's[end if] cummed as well.  Not even waiting to let it finish once you're filled up, you pull off the demon's cock and grind your foot down onto its balls as it finishes unloading onto its scaly chest.  Done now, Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";

to say dbcapturesex_07:
	say "     Wanting to enjoy the demon's cock, you order Brutus to keep it pinned while you do just that.  [if DemonBruteStatus is 0]He[otherwise]She[end if] chuckles at this and complies, starting by giving [if DemonBruteStatus is 0]his[otherwise]her[end if] fallen foe a knee in the gut before pushing it over onto its back.  Pinning it down, [if DemonBruteStatus is 0]he grinds his cock into[otherwise if DemonBruteStatus is 1]she grinds her cock into[otherwise]she grinds her pussy down onto[end if] the creature's face even as you move into position.  You slide your ass cheeks across that pulsing rod, stiffening it to full erection.  As you lower yourself down onto that pillar of infernal meat, the demon tries to taunt you that [one of]it'll pound you until you're broken[or]you could have just bent over and taken it if you'd wanted it that badly[or]you can't resist its massive cock[or]you're nothing but another [if cunts of player > 0]horny slut[otherwise]man-whore[end if] for it to rape[at random], but Brutus [if DBCaptureQuestVar is 5]grabs it by the throat, crushing its words into silence.  This proves again that you two have beaten it and will do as you please with it[otherwise if DemonBruteStatus is 0]presses his crotch back over its mouth to silence it and remind it who was the victor here[otherwise]presses her crotch back over its mouth to silence it and remind it who was the victor here[end if].  And what you want right now is that knobby rod stuffed inside you, and you [if player is twistcapped or scalevalue of player is 5]slide your spacious ass down over it with little trouble past some pleasant stretching[otherwise if scalevalue of player is 4]lower your enlarged ass down onto the very filling thing with only some passing discomfort[otherwise]work your tight asshole down over the massive thing with considerable effort and slowly fading discomfort[end if].";
	say "     You take your time at first, allowing yourself to adjust to its impressive size as well as drawing out your own pleasure.  Your increasingly lustful opponent struggles, wanting to pin you down and take you violently, but Brutus is there to keep the other demon in its place[if DBCaptureQuestVar is 5], clawing and slashing at it further as[otherwise], grappling with it until[end if] [if DemonBruteStatus is 0]he[otherwise]she[end if] beats it back to the ground.  The violent struggle certainly makes the demon's cock throb and buck inside you, causing you to moan in pleasure.  You chuckle and knead its hefty ballsac even as it growls and makes threats before Brutus [if DemonBruteStatus < 2]stuffs its maw with infernal meat[otherwise]cuts it off with her dripping loins in its face[end if].";
	say "     In time, you end up riding that pulsing pole hard and fast[if cunt length of player < 20] once you've adjusted to its huge size[end if].  And once you're going at it with reckless, lustful abandon, it is not long before the demon beneath you groans and cums hard, blasting his demonic load into your rectum, only adding to the heat of your lust[if cunts of player > 0 or cocks of player > 0].  You cry out in orgasm and clamp down tightly around that spurting rod, milking it for all it'll give until your bowels are overflowing[end if].  From the wet, messy pool of fluid at the junction between Brutus's crotch and the demon's mouth, you can tell [if DemonBruteStatus is 0]he's[otherwise]she's[end if] cummed as well.  Not even waiting to let it finish once you're filled up, you pull off the demon's cock and grind your foot down onto its balls as it finishes unloading onto its scaly chest.  Done now, Brutus tosses the messy, sex-stinking demon aside with a growl that it can now slink away to its hole.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";

to say dbcapturesex_08:		[Brutus rides - vaginal]
	if DBCaptureQuestVar is 5:
		say "     Wanting to see Brutus get fucked by another demon, you tell her to ride the demon's cock.  [if DemonBruteStatus is 1]She growls at this, but obeys[otherwise]She grins lustfully at this and obeys[end if], kneeing the demon in the gut before pushing it over onto its back.  Pinning it down, she grinds her juicy cunt over his pulsing rod, stiffening it to full erection.  As Brutus lowers herself down onto that pillar of infernal meat, the demon taunts that she's become nothing but a slave, but she grabs it by the throat, crushing its words into silence, proving that she is still stronger than it and can take what she wants.  And what she wants, now that she's excited from roughing up her fallen foe, is that huge cock stuffed inside her.  She lowers herself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
		say "     Brutus rides the demonic cock slowly at first, more to torment her increasingly lustful opponent than for her own satisfaction.  The fallen demon struggles, not to break free, but to pin her down and take her violently.  Brutus is able to keep it pinned though, clawing and slashing at it further as she beats it back to the ground.  Aroused by the bloodlust, her pace soon quickens until she's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm[if DemonBruteStatus is 1].  She paints the demon's scaly hide with her seed even as it fills her up with its infernal load[otherwise].  Your demonic companion's cunt clutches tightly around her foe's shaft, milking it for its infernal load[end if][if cocks of player > 0 or cunts of player > 0].  The sight of this sends you into orgasm as well[end if].  Once the demon's balls are drained, Brutus pulls off of its rod and makes it lick its own load from her snatch.  That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
	otherwise:
		say "     Wanting to see Brutus get fucked by another demon, you tell her to ride the demon's cock.  [if DemonBruteStatus is 1]She seems momentarily disappointed, her cock twitching, but obeys[otherwise]She grins lustfully at this and obeys eagerly[end if], wrestling the demon onto its back.  Pinning it down, she grinds her juicy cunt over his pulsing rod, stiffening it to full erection.  As Brutus lowers herself down onto that pillar of infernal meat, the demon taunts that she's become nothing but a slut, but she slaps her spaded tail across its ballsac to cut its taunts short, proving that she's still stronger than it and will take what she wants.  And what she wants is clearly that huge cock stuffed inside her.  She lowers herself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
		say "     Brutus rides the demonic cock slowly at first, seeking to make the most of the opportunity.  The fallen demon struggles, not to break free, but to pin her down and take her violently.  Brutus is able to keep it pinned though, holding the weakened demon down with her great strength and the leverage of her position over it.  Not able to hold herself back for long, her pace soon quickens until she's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm[if DemonBruteStatus is 1].  She paints the demon's scaly hide with her seed even as it fills her up with its infernal load[otherwise].  Your demonic companion's cunt clutches tightly around her foe's shaft, milking it for its infernal load[end if][if cocks of player > 0 or cunts of player > 0].  The sight of this sends you into orgasm as well[end if].  Once the demon's balls are drained, Brutus pulls off of its rod and offers for it to lick its own load from her snatch, which it does despite its obvious anger.  That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";


to say dbcapturesex_09:		[Brutus rides - anal]
	if DBCaptureQuestVar is 5:
		if DemonBruteStatus is 0:
			say "     Wanting to see Brutus get fucked by another demon, you tell him to take the demon's cock up his ass.  He growls at this, but obeys, kneeing the demon in the gut before pushing it over onto its back.  Pinning it down, he grinds his muscular ass over its pulsing rod, stiffening it to full erection.  As Brutus lowers himself down onto that pillar of infernal meat, the demon taunts that he's become nothing but a slave, but he grabs it by the throat, crushing its words into silence, proving that he is still stronger than it and can take what he wants.  And what he wants, now that he's overexcited from roughing up his fallen foe, is that huge cock stuffed inside him.  He lowers himself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
			say "     Brutus rides the demonic cock slowly at first, taking his time adjusting to the massive intruder.  The fallen demon struggles, not to break free, but to pin him down and take him violently.  Brutus is able to keep it pinned though, clawing and slashing at it further as he beats it back to the ground.  Aroused by the bloodlust, his pace soon quickens until he's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm.  He paints the demon's scaly hide with his seed even as it fills her up with its infernal load[if cocks of player > 0 or cunts of player > 0].  The sight of this sends you into orgasm as well[end if].  Once the demon's balls are drained, Brutus pulls off of its rod and makes it lick its own load from his asshole.  That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";
		otherwise:
			say "     Wanting to see Brutus get fucked by another demon, you tell her to take the demon's cock up her ass.  She growls at this,  [if DemonBruteStatus is 1]her cock twitching[otherwise]her cunt dripping[end if], but obeys.  She knees the demon in the gut before pushing it over onto its back.  Pinning it down, she grinds her muscular ass over its pulsing rod, stiffening it to full erection.  As Brutus lowers herself down onto that pillar of infernal meat, the demon taunts that she's become nothing but a slave, but she grabs it by the throat, crushing its words into silence, proving that she is still stronger than it and can take what she wants.  And what she wants, now that she's overexcited from roughing up her fallen foe, is that huge cock stuffed inside her ass.  She lowers herself down onto it with a snarl, splattering dark saliva across the other demon's chest.";
			say "     Brutus rides the demonic cock slowly at first, taking her time adjusting to the massive intruder.  The fallen demon struggles, not to break free, but to pin her down and take her violently.  Brutus is able to keep it pinned though, clawing and slashing at it further as she beats it back to the ground.  Aroused by the bloodlust, her pace soon quickens until she's bouncing up and down on the groaning demon's rod until they're both pushed to orgasm[if DemonBruteStatus is 1].  She paints the demon's scaly hide with her seed even as it fills her up with its infernal load[otherwise].  Your demonic companion's anus clutches tightly around her foe's shaft, milking it for its infernal load[end if][if cocks of player > 0 or cunts of player > 0].  The sight of this sends you into orgasm as well[end if].  Once the demon's balls are drained, Brutus pulls off of its rod and makes it lick its own load from her asshole.  That done, the messy, sex-stinking demon is tossed aside with a growl that it's free to go now.  The demon gives a final threatening growl before dissolving into purple smoke and whisking away.";


Table of Game Objects(continued)
name	desc	weight	object
"demon tooth"	"A pretty long, curved fang with a sharp tip. You knocked it out of a demon brute's mouth. Maybe you could find someone who has knowledge of the supernatural and show it to them - there might be something interesting to be done with it."	1	demon tooth

demon tooth is a grab object. demon tooth is not temporary.
the usedesc of demon tooth  is "And just what do you want to do with it? Maybe find someone who understands the supernatural and give it to them...";

instead of trading the demon tooth when the current action involves the Nermine:
	if DBCaptureQuestVar is 2:
		say "     Nermine takes a look at the fang, then says 'What you are showing here is a tooth of a demon soldier. How did you acquire it?'";
		say "     You tell her about your previous clashes with multiple demon brutes and how they always evaded you in the end. Nodding, the jackalwoman says 'You wanting revenge then? A spell to capture this old enemy?' *she holds up the fang, looking at it, then you, with a calculating look* 'Nermine can help you do this - but I have to warn you that you'll have to have ritual somewhere else. I do not want hellish attention here if you make mistakes.' Agreeing to the storekeeper's conditions, you wait while she vanishes in a back room for a while, then comes back out with a small box holding candles, herbs, a small brazier and a scroll.";
		say "     'This here is almost all you need - but it's still necessary to gather some essence of your enemy. You needing it to paint the symbol...' From her description, you'd say about three bottles of demon seed should suffice. Finally Nermine gives you the tooth back and stores her box behind the counter. 'You keep it for now. Give it to me when you've got the essence and want to do ritual.'";
		now DBCaptureQuestVar is 3;
	otherwise if DBCaptureQuestVar is 3:
		if carried of demon seed > 2:
			say "     Taking the tooth from you again, Nermine asks 'You having the demon's essence?'";
			say "     Aware of the multiple bottles of demonic cum in your pack, you answer...";
			if player consents:
				say "     The jackalwoman nods, then gets out the small box with stuff again and hands it to you. 'You got everything you need now. Follow the instructions closely. This the last supply of these ingredients Nermine has right now - you got only one try.' With that, Nermine starts to shoo you out of her store. 'You go now, far - Nermine not want her bones eaten if you fail. When done, come back and bring the tooth.'";
				say "[WaitLineBreak]";
				say "     Carrying your box of summoning supplies out of the mall, you make your way along the streets for several blocks until you find a suitable abandoned building. Unrolling the scroll Nermine gave you, you find it's a step-by step instruction manual for demon summoning. After (1) setting up a pentagram painted in demon seed and double-checking that it's closed everywhere, you (2) set up black candles on the points and light them. After that, it's time to (3) put the brazier in the middle and burn the herbs in it. With their spicy odours filling the room, you read further down the list. Hmmm.... (4) is smearing your own blood on the tooth and throwing it into the brazier.";
				decrease carried of demon seed by 3;
				say "     Something about using your blood in a demon summoning ritual just makes you nervous. Do you want to do this anyways?";
				if player consents:
					say "     Having come this far, you poke your thumb with the tooth and spread some blood over it, then lug it into the burning brazier and step back. The fire in the brazier and the candles flare up brightly and a demon brute materializes in the pentagram with an annoyed growl.";
					decrease carried of demon tooth by 1;
					now DBCaptureQuestVar is 4;
					now inasituation is true;
					challenge "Demon Brute";
					now inasituation is false;
					if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
						now bodyname of player is "Captured";
						now facename of player is "Captured";
						now skinname of player is "Captured";
						now tailname of player is "Captured";
						now cockname of player is "Captured";
						now humanity of player is 0;
						end the game saying "An enraged demon brute dragged you off to hell.";						
					otherwise if fightoutcome >= 30:			[fled]			
						say "     Seems like this was a bit too much for you to take on. Running out of the building, closely followed by the enraged demon, you flee for your life and only barely make an escape. Well, there goes your one and only try for this ritual. But then, maybe that's for the best...";
					otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]
						say "[WaitLineBreak]";
						say "     Looks like it worked. You carefully fish out the tooth from amongst the ashes and put it in your pocket, then make your way back to Nermine's shop. The jackalwoman seems just a bit surprised when you hand her the demon tooth. 'Congratulations. Nermine is glad you were not eaten. Rare to see business with demons work out.' She looks closely at the tooth, then continues 'One can feel it struggling to get out, your captive. Might even break free over time - let's put a stop to that.' Opening a box in one of the many shelves, the jackalwoman grabs a rough chunk of clear crystal, then touches it with the sharp end of the tooth and murmurs something. A swirl of dark purple flows from the contact point, filling the center of the crystal with a wavering cloud. Setting the changed crystal back into its box, Nermine says 'There, that's demon power your captive no longer has - and payment for Nermine. He is controllable now.'";
						say "     With skilled fingers, Nermine clamps the tooth into a small metal socket with a loop on the back and pulls a leather string through that. She hands you your new demontooth amulet and leans close to whisper some magical words you can use to summon the captured demon from within.";	
						now DBCaptureQuestVar is 5; 	[captured and controlled]
						now demon brute is tamed;
						say "[line break]";
						say "     (That demon brute is now controlled! You can make him your active companion by typing [bold type][link]pet demon brute[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck demon brute[end link][roman type].  You can see all the pets and followers you have with the [bold type][link]pet[end link][roman type] command.  Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap.  Want to leave a companion home for a while and go out alone? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";	
						choose blank row from Table of confession entries;
						now title entry is "Ask about the possibility of freeing a demon of his inner evil";
						now description entry is "";
						now toggle entry is demoncleansing rule;										
				otherwise:
					say "     Getting cold feet at almost he last second, you blow out the candles and douse the brazier. Well, there goes your one and only try for this ritual. With the herbs already up in smoke, you won't have any for a second try. But then, maybe that's for the best...";
					now DBCaptureQuestVar is 99;		[failed]
			otherwise:
				say "     As you shake your head, the jackalwoman says 'Nermine cannot help you unless you bring enough demon essence to paint the needed symbols. Go out and gather...' She describes the amount you need, which you'd say translates to three bottles of demon seed.";
		otherwise:
			say "     Taking the tooth from you again, Nermine asks 'You having the demon's essence?'";
			say "     As you shake your head, the jackalwoman says 'Nermine cannot help you unless you bring enough demon essence to paint the needed symbols. Go out and gather...' She describes the amount you need, which you'd say translates to three bottles of demon seed.";
	otherwise if DBCaptureQuestVar is 5:
		say "     The jackalwoman looks at the tooth, then says 'You want to catch another one? Nermine told you, she only had enough for one try at the ritual. There is nothing more to do without new rare supplies that are not in this city.'";			
	otherwise if DBCaptureQuestVar is 99:
		say "     The jackalwoman looks at the tooth, then says 'Nermine told you, she only had enough for one try at the ritual. There is nothing more to do without new rare supplies that are not in this city.'";			


This is the demoncleansing rule:
	say "     The priestess sighs, then answers 'With how deep in their innermost being it generally is anchored, that's usually very difficult. But tell me more...' You explain about the demon brute, how you captured him and bound him with the ritual, and Nermine drawing off his demonic powers. There is a pause as the priestess thinks about this, then she says 'With the beast weakened and you having bound it to yourself, I see a possibility. How about holy water? That is supposedly able to drive out evil in the Christian faith, and with your demon fitting the bill pretty well, it should work on him.' She hesitates again for a second, then continues 'We do have some here, the former Christian priest of this place blessed all the water bottles he had before he left and didn't return. But that's our emergency fresh water supply, with it in closed bottles and clean. While we're more than willing to help you with your plan, child, I sadly must ask that you [bold type]give us other clean water in exchange[roman type]. And with your companion so large, you will need at least [bold type]eight bottles[roman type] of holy water.'";
	if carried of water bottle > 7:
		say "     Aware that you currently do have enough fresh water to make the exchange, do you trade them in?";
		if player consents:
			say "     Telling her you have enough water and would like to start as soon as possible, the priestess answers 'Of course. Just a moment, brother Aaron will bring the holy water to you soon.' You hear the other door of the confessional open and steps move away. Several minutes later, there is a knock on your door and as you open it and step outside, an anthro red fox in bermuda-shorts and with a tight green top awaits you, holding a crate full of large water bottles. 'I'm Aaron.' he says with a friendly smile, setting down the crate to shake your hand. 'And here's your stuff. Hope it works out for you.'";
			say "     He accepts the other bottles from you one after another and puts them in an empty box standing ready for them, then continues 'You know, if it's holy you want - holy ground can't be bad either, no? Here in the back of the church is a mid-size shelter - homeless, you know - and there's a large shower room. Same building, so it should be blessed too. You can use that, if you want.' Thanking the fox, you let him lead you through the back rooms into the shower room, grabbing a washcloth along the way.";
			say "     [line break]";
			say "     Then it's time to start. Grasping the demontooth amulet in one hand, you call out the magic words to summon your captive, who materializes in a cloud of purple smoke. Growling at you, as usual, he nevertheless seems a bit distracted, the surroundings seemingly making him itchy. Ordering the large demon to lie down and keep still, you take the first bottle of holy water in hand, pouring some on the washcloth and dab it against his chest. In the instant of contact with the demon's hot skin, the water boils into steam in a violent reaction. The demon chuckles darkly as you pull back your hand. Thankfully there wasn't too much on the washcloth so you didn't burn yourself.";
			say "     Looks like this requires a bit of a different approach. Taking the plastic water bottle in hand, you gain a few steps distance, then use it to splash the demon. The resulting explosion of steam is about what you'd have expected when aiming a water cannon at molten lava. The bottle is empty pretty soon, and you take another, and another. With all the steam boiling off from the demon, it's getting pretty warm in here and sometimes you can barely see him through the clouds, but it's endurable. You just hope this works and you're not just wasting your time - though you think you noticed some difference, a lessening of the amount of steam, after the sixth bottle. Armed with your next to last one, you step a bit closer, splashing parts of the demon you missed before. Then it's the last bottle, which you upend all over his head and chest, getting only a last little sizzling sound before that too stops.";
			say "     [WaitLineBreak]";
			say "     Looking down on the thoroughly drenched, unconscious demon, you do notice some differences in him. He's a bit lighter purple in the shade of his skin and you could swear that his horns and claws a somewhat smaller and less sharp. Then he sits up, opening his eyes and focuses on you with their now azure blue slitted irises. A curious look comes to his face as he starts to rub his skin, then runs a claw over his arm, leaving a bleeding but shallow scratch. 'That hurts. But why don't I hurt? Inside. I always hurt inside... you made it stop.' Hesitantly, as if he has trouble remembering the expression, he smiles - which still is rather frightening, in light of his many many sharp teeth.";
			say "     Hey, looks like it worked. Asking the demon what he'd like to do to you if he were free, you get a puzzled expression and a shrug as an answer. Definitively a step forward from threats of dismemberment. With this hopefully leading to a bit nicer a relationship, having a name to talk to him seems appropriate too, so you ask him about it. As it turns out, your captive demon has the unpronounceable name Ba'haz-eu'nizaal't'chha. You decide to just call him [bold type]'Brutus'[roman type], a name he accepts without complaint.";
			say "     For now, you banish the demon brute back into your amulet with a magical command. Turning towards the door, you see Aaron standing there, smiling as he gives you a thumbs up. Thanking the fox, you follow him as he leads you back out to the main room of the chapel.";
			now DBCaptureQuestVar is 6;
			decrease carried of water bottle by 8;
			choose the row with a title of "Ask about the possibility of freeing a demon of his inner evil" from Table of confession entries;
			blank out the whole row;			
			wait for any key;
			decrease the menu depth by 1;			
		otherwise:
			say "     You thank the priestess for her aid, but tell her that you can't afford trading in so much water right now.";
	otherwise:
		say "     Since you don't have enough water, you can do nothing but to thank the priestess and maybe come back later once you've collected some more.";
	wait for any key;
	clear the screen;
	rule succeeds;		
		
Section 2 - Amulet, Pet & Sex

demon brute is a pet.  demon brute is a part of the player;
understand "Brutus" as demon brute.
The description of demon brute is "[DemonBrutePetDesc]";
The weapon damage of demon brute is 8;
The level of demon brute is 4;
The Dexterity of demon brute is 8;
The summondesc of demon brute is "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your [if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7]demon companion[otherwise]captive demon brute[end if]. You tell him 'I want you to help me when I get into fights, ok?' In a [if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7]deep[otherwise]growling[end if] voice, the demon answers 'Yes... master.'";
The assault of demon brute is "[one of]The demon brute charges into combat, swinging wildly at your enemy in uncontrolled bloodlust![or]A loud roar of your demon brute frightens and distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, your demon brute slashes your enemy with his claws![at random]";
the fuckscene of demon brute is "[sexwithdemonbrutepet]";

to say DemonBrutePetDesc:
	if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7: [cleansed]
		if DemonBruteStatus is 0:
			say "     Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. Cleansing the demon brute from the evil he carried around in him for so long has had a distinct effect on his appearance. Now, the humanoid beast's purple skin is several shades lighter than before, and while his face still looks rather frightening, the permanent scowl has left it. He looks upon the world with new eyes - literally, as they now show white eyeballs with azure blue, still slitted, pupils. Three matched pairs of horns crown his head, curved and getting smaller front to back, though you think they're less sharp and jagged than before. Between the enlarged and well-toned thighs of Brutus hangs a thick veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time.";
		otherwise if DemonBruteStatus is 1:			
			say "     Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. Cleansing the demon brute from the evil he carried around in him for so long has had a distinct effect on his appearance. Now, the humanoid beast's purple skin is several shades lighter than before, and while his face still looks rather frightening, the permanent scowl has left it. He looks upon the world with new eyes - literally, as they now show white eyeballs with azure blue, still slitted, pupils. Three matched pairs of horns crown his head, curved and getting smaller front to back, though you think they're less sharp and jagged than before. Between the enlarged and well-toned thighs of Brutus hangs a thick veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time.";
		otherwise if DemonBruteStatus is 2:			
			say "     Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. Cleansing the demon brute from the evil he carried around in him for so long has had a distinct effect on his appearance. Now, the humanoid beast's purple skin is several shades lighter than before, and while his face still looks rather frightening, the permanent scowl has left it. He looks upon the world with new eyes - literally, as they now show white eyeballs with azure blue, still slitted, pupils. Three matched pairs of horns crown his head, curved and getting smaller front to back, though you think they're less sharp and jagged than before. Between his legs, you see a female's pussy, looking quite inviting. He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time.";			
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";				
	otherwise: 	[original 'evil']
		if DemonBruteStatus is 0:
			say "     Your captured demon brute is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
		otherwise if DemonBruteStatus is 1:			
			say "     Your captured demon brute is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
		otherwise if DemonBruteStatus is 2:			
			say "     Your captured demon brute is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs, you see a female's pussy, looking quite inviting. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";		

instead of sniffing demon brute:
	say "Smells like fire, ash and brimstone.";

instead of conversing demon brute:
	if DBCaptureQuestVar < 5:
		say "     You don't have a demon brute to talk to right now...";
	otherwise:
		say "[demon brute summoning]";	
		say "[demon brute talk]";

to say sexwithdemonbrutepet:
	if DBCaptureQuestVar is 6:
		say "     Having gone through the trouble of freeing this demon from his inner torment, maybe you should talk to him first before ordering him to have sex with you. With a clear mind, he'll be able to talk instead of just growling and threatening like he did before.";
	otherwise:
		say "[demon brute summoning]";	
		say "[DemonBruteSexMenu]";	
	
to say demon brute summoning:
	if companion of player is demon brute:		[already summoned]	
		if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7:  [cleansed version]		
			say "You call your demon companion to you. As he hulking beast comes to stand before you, he says with a deep voice 'Yes... master?'";
		otherwise:  [standard evil version]
			say "Holding your demontooth amulet tightly in your fist, you call over your controlled demon. As he hulking beast comes to stand before you, he says with a growling voice 'Yes... master?'";
	otherwise:
		if DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7:  [cleansed version]
			say "Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. Brutus is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has purple skin, a frightening face with slits for nostrils, azure blue slitted irises, and sharp, intimidating teeth. [if DemonBruteStatus is 0]Between the enlarged and well-toned thighs of Brutus hangs a thick veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum.[otherwise if DemonBruteStatus is 1]Between the enlarged and well-toned thighs of Brutus hangs a thick veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs.[otherwise if DemonBruteStatus is 2]Between his legs, you see a female's pussy, looking quite inviting.[end if] He also has a long, spade-tipped tail protruding from his body somewhere behind, lazily flicking through the air from time to time. He wears nothing, unashamedly standing before you in his nakedness. With a deep voice, you hear the demon say 'Yes... master?'";
		otherwise:  [standard evil version]
			say "Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. He is certainly impressive in stature, standing tall on his digitigrade legs and showing a broad chest and muscle-packed arms. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. [if DemonBruteStatus is 0]Between the enlarged and well-toned thighs of the demon hangs a thick veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum.[otherwise if DemonBruteStatus is 1]Between the enlarged and well-toned thighs of the demon hangs a thick veiny cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs.[otherwise if DemonBruteStatus is 2]Between his legs, you see a female's pussy, looking quite inviting.[end if] He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression. With a growling voice, you hear the demon say 'Yes... master?'";	
	wait for any key;
	
to say demon brute talk:		
	if DBCaptureQuestVar is 6:   [cleansed Brutus]
		say "     [line break]";			
		say "     Curious what your captured demon will say, now that he's newly cleansed from evil, you ask Brutus how he feels - about himself, you and serving you. His bright azure-blue eyes fixate on you in an intense gaze and he says 'I feel good. There is no pain - there always, always was pain before. Around me all the time, and after a while it stayed inside me, for eternity.' He points to you, or rather the amulet around your neck. 'You are my master, because of that, but more so because you stopped the hurting, the burning. My old master gave me pain, had me give pain to others. You took it away. I like you better.' He falls to one knee, bending his horned head. 'I will follow your commands, always. Say do and I will, say kill and I kill. For you, Master.'";
		say "     Well, that was certainly an intense answer. And after all the time Brutus spent in hell, he deserves some good treatment now - even though he is still your slave.";
		now DBCaptureQuestVar is 7;
	otherwise if DBCaptureQuestVar is 7:   [cleansed Brutus, had a talk with him]
		if libido of David > 49 and libido of David < 80:	[relationship range]
			say "     [line break]";		
			say "     So what do you want to do now? You could chat with him a bit [link](1)[as]1[end link], have sex with the demon [link](2)[as]2[end link], talk to him about David [link](3)[as]3[end link], or just banish him back into the amulet [link](4)[as]4[end link]?";		
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat with him, [link]2[end link] to have sex, [link]3[end link] to talk about David and [link](4)[as]4[end link] to banish him again.";
			if calcnumber is 1:               [chat]
				say "     Talking with the demon brute about this and that, the conversation eventually drifts to... hell, that being the only thing he's actually knowledgeable about. Stories about an infinite realm of pain and suffering make you shudder, especially as Brutus tells you that demons aren't native to that place either. They're made, corrupted by endless times of despair with the only distraction from their pain the torment of newcomers, just like they lived through themselves.";
				say "     He can't remember who - or what - he was before, only that he earned a place in the Infernal Legion through violence, betrayal and malice, then was sent here. He concludes '...after that, you made me your slave. And then you took away the burning, the pain inside me.' The big brute turns his head to you, brows wrinkling over his azure blue eyes, as he is seemingly still trying to figure out why anyone wold do something like that. Help another.";
				if companion of player is not demon brute:
					say "      With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";
			otherwise if calcnumber is 2:     [sex]
				say "[DemonBruteSexMenu]";
			otherwise if calcnumber is 3:			[talk about David]
				if libido of David is 50:
					say "     Taking Brutus aside so you can talk privately, you ask him what is up between him and David. He lowers his head dejectedly and replies 'Master, I feel an urge near him - to throw him down and... do what I used to do. I haven't felt like that since you helped me, but now I bring shame to you.' That last sentence is spoken with an underlying tone of despair. 'And he fears me - I can smell it on him. That... excited me before, but now I hate it. He fears me a lot. Why? I didn't hurt him.' Trying to explain why David is justifiably afraid of demons, you tell Brutus the story about your first meeting with the young soldier.";
					say "     Brutus azure blue eyes widen as you tell him about the fight. 'He was marked by that demon?' he asks, raising a clawed finger and miming it slawhing. Remembering the bloody streaks on David's chest from when his clothes were ripped off, you nod. An alert and excited tone enters Brutus voice as he says 'I must see his scars, please Master. There could be a danger for him, a possibility that his attacker has put the seal of enslavement on his body.' Looking down again, he continues silently '...and that's the possibility that I'm not shaming my Master after all.'";
					say "     [line break]";
					say "     He certainly sounds determined about checking up on David. Maybe you should talk to the young soldier, though getting him to agree to strip before the demon likely won't be too easy...";			
					now libido of David is 51;
				otherwise if libido of David is 51:
					say "     Taking Brutus aside so you can talk privately, you ask him to repeat what he said about David. The demon looks down with a shamed expression, saying 'I feel like I have to... rape him. But at the same time, I don't want to and hate him smelling of fear of me.' His eyes blaze as he continues with a bit of urgency 'With another demon having hurt him, there is the possibility that he's bearing the seal of enslavement. If he has it, he's prepared to become bound to a demon, any demon that finishes the spell by taking him. Taking him hard, making him bleed. He is not safe, if that is so. I have to see his scars, please.' The next bit he murmurs dejectedly 'It might be pulling me to him too, making me feel... bad things. Making me be a disappointment for my Master.'";
					say "     [line break]";
					say "     He certainly sounds determined about checking up on David. Maybe you should talk to the young soldier, though getting him to agree to strip before the demon likely won't be too easy...";			
				otherwise if libido of David is 52:
					say "     Taking Brutus aside so you can talk privately, you ask him about David and what he did to him. Why he just did it, even if it could hurt - did hurt - him. The demon replies 'I'm sorry master, I should have asked. It is just - I saw him tremble in fear, from my presence, felt the seal drawing me to... do things. That made me remember all those hurt by me, again and again. I just had to stop him from getting hurt.' He flexes his healed hand a bit. 'Now there is no more evil around him. Nothing calling to me. I can look at his body without... bad thoughts. Serve you better.'";
				otherwise if libido of David is 53:
					say "     Taking Brutus aside so you can talk privately, you ask him what he thinks about David. The demon replies 'He is my friend', his lips drawing upward to show one of his happy tooth-filled smiles. He gets a glum expression on his face for a second as he adds 'My first friend, ever', then shakes his head, throwing off of the unhappy mood. 'I'm very happy to know David - he's nice, friendly and doesn't fear me.' The demon waves his hand in the air as he says 'He looks nice, maybe a bit small - I could just pick him up. But sometimes that can be good too, when you...' A somewhat vacant look comes into his eyes as he imagines something, his large hands moving into position in front of him as if they were holding someone.";
					say "     One look at his [if DemonBruteStatus is 0 or DemonBruteStatus is 1]quickly hardening cock[otherwise]soon drippingly wet pussy[end if] and the reflexive tensing of his hip muscles makes obvious to you where Brutus mind just went. Clearing your throat, you bring the demon back to reality. He drops his hands to his sides, saying 'Err.. sorry, master. As I was saying, David is a nice friend. Really nice.'";
				otherwise if libido of David is 54:
					say "     <talk after he had sex with David - to be written later>";
			otherwise:                        [banish]	
				say "     You say 'I changed my mind. Go back into the amulet and rest, Brutus.' and murmur the magic words Nermine told you. With a shrug, the demon brute turns into purple mist and is absorbed by the amulet.";
				if companion of player is demon brute:
					now companion of player is nullpet;				
		otherwise:			
			say "     [line break]";		
			say "     So what do you want to do now? You could chat with him a bit [link](1)[as]1[end link], have sex with the demon [link](2)[as]2[end link], or just banish him back into the amulet [link](3)[as]3[end link]?";		
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				otherwise:
					say "Invalid choice.  Type [link]1[end link] to chat with him, [link]2[end link] to have sex [link]3[end link] to banish him again.";
			if calcnumber is 1:               [chat]
				say "     Talking with the demon brute about this and that, the conversation eventually drifts to... hell, that being the only thing he's actually knowledgeable about. Stories about an infinite realm of pain and suffering make you shudder, especially as Brutus tells you that demons aren't native to that place either. They're made, corrupted by endless times of despair with the only distraction from their pain the torment of newcomers, just like they lived through themselves.";
				say "     He can't remember who - or what - he was before, only that he earned a place in the Infernal Legion through violence, betrayal and malice, then was sent here. He concludes '...after that, you made me your slave. And then you took away the burning, the pain inside me.' The big brute turns his head to you, brows wrinkling over his azure blue eyes, as he is seemingly still trying to figure out why anyone wold do something like that. Help another.";
				if companion of player is not demon brute:
					say "      With a sigh, you murmur the magic words Nermine told you, sending him back into the amulet for now.";
			otherwise if calcnumber is 2:     [sex]
				say "[DemonBruteSexMenu]";
		[	otherwise if calcnumber is 3:			[make him work - there could be some situations where a strong pet is useful]
				say "     You say 'I got a task for you, my pet...'";
				say "[DemonBruteWorkMenu]";																	]
			otherwise:                        [banish]	
				say "     You say 'I changed my mind. Go back into the amulet and rest, demon.' and dangle the amulet in front of his face and murmur the magic words Nermine told you. With a shrug, the demon brute turns into purple mist and is absorbed by the amulet.";
				if companion of player is demon brute:
					now companion of player is nullpet;					
	otherwise:	[original, evil Brutus]
		say "     So what do you want to do now? You could mock him a bit [link](1)[as]1[end link], have sex with the demon [link](2)[as]2[end link], or just banish him back into the amulet [link](3)[as]3[end link]?";		
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to mock him, [link]2[end link] to have sex [link]3[end link] to banish him again.";
		if calcnumber is 1:               [mock]
			say "     You step up to the creature and run your hand over his bulging muscles, squeezing them, then pull up his arm and look at the long claws at the end of his fingers. 'So strong, such sharp claws - and nevertheless so helpless you are, little demon.' You pat the cheek of his snarling face and dangle your amulet in front of him. 'Not so powerful now, hm? Controlled by this little trinket. You're mine now.'";
			if companion of player is not demon brute:
				say "      To show him your power again, you murmur the magic words Nermine told you, banishing him back inside the amulet.";
		otherwise if calcnumber is 2:     [sex]
			say "[DemonBruteSexMenu]";
	[	otherwise if calcnumber is 3:			[make him work - there could be some situations where a strong pet is useful]
			say "     You say 'I got a task for you, my pet...'";
			say "[DemonBruteWorkMenu]";																	]
		otherwise:                        [banish]	
			say "     You say 'I changed my mind. Back to your cage, little demon.' and dangle the amulet in front of his face and murmur the magic words Nermine told you. With a snarl, the demon brute turns into purple mist and is absorbed by the amulet.";
			if companion of player is demon brute:
				now companion of player is nullpet;			

to say DemonBruteSexMenu:
	setmonster "Demon Brute";
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your captured demon's mouth to good use.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Suck the demon brute's cock";
		now sortorder entry is 2;
		now description entry is "Suck him off.";
		now toggle entry is DemonBruteSex rule;		
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put your captured demon's mouth to good use.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus > 0):
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 4;
		now description entry is "Finger-fuck your captured demon's pussy to make him cum.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus > 0 and cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the your captured demon's pussy with your cock.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus < 2 and cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Ride your captured demon's thick cock.";
		now toggle entry is DemonBruteSex rule;
	if (DBCaptureQuestVar > 5):
		choose a blank row in table of fucking options;
		now title entry is "Finger his ass";
		now sortorder entry is 7;
		now description entry is "Get Brutus off by fingering his ass.";
		now toggle entry is DemonBruteSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take the demon brute's ass";
		now sortorder entry is 8;
		now description entry is "Fill your captured demon's ass with your cock.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 9;
		now description entry is "Ride the thick cock of your captured demon.";
		now toggle entry is DemonBruteSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the DemonBruteSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have him blow your cock"):
			say "[DemonBruteSex1]";
		if (nam is "Suck the demon brute's cock"):
			say "[DemonBruteSex2]";	
		otherwise if (nam is "Have him lick your pussy"):
			say "[DemonBruteSex3]";
		otherwise if (nam is "Finger his pussy"):
			say "[DemonBruteSex4]";
		otherwise if (nam is "Fuck his pussy"):
			say "[DemonBruteSex5]";
		otherwise if (nam is "Let him fuck your pussy"):
			say "[DemonBruteSex6]";
		otherwise if (nam is "Finger his ass"):
			say "[DemonBruteSex7]";					
		otherwise if (nam is "Take the demon brute's ass"):
			say "[DemonBruteSex8]";
		otherwise if (nam is "Let him fuck your ass"):
			say "[DemonBruteSex9]";
		wait for any key;

to say DemonBruteSex1:    [cock sucked by demon brute]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:  [male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your own erect manhood. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, licking your balls, even snaking it between your legs to poke your asshole for a second, before he wraps it around your cock. After teasing your manhood a bit, he gently takes hold of it with his lips, taking care to keep your precious piece away from all the sharp teeth filling his mouth as he bobs up and down on it. Amazingly good at oral sex, this demon - his hot lips around your manhood and his tongue teasing its shaft.";
			say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus erection some attention too. A smile on your lips, you tell him he may rub himself against you, tease your asshole a bit. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your back door, then starting to rub it up against your ass. The hot member of this infernal creature sliding over your skin, touching your pucker and - almost - pushing in, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum shooting from your cock to splat down on your chest.";	
			say "     [WaitLineBreak]";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings both his hands up to his massive erection, using them to jerk himself off. Quickly getting ready to cum, he pushes it in between your ass-cheeks, right against your pucker - and blows a hot burst of demonic seed into you. The force of his spurts alone is enough to push open your iris and you can feel shot after shot jet deep into your body. A warm feeling begins to spread through your insides as the demon fills you with his seed. With the sheer amount he's shooting, quite a bit immediately leaks out of your chock-full ass and forms a puddle between your legs.[mimpregchance]";
			say "     [line break]";		
			if companion of player is demon brute:    [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";		
			otherwise:                                [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";		
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit and sliding two fingers into his pussy, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your erect manhood. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, licking your balls, even snaking it between your legs to poke your asshole for a second, before he wraps it around your cock. After teasing your manhood a bit, he gently takes hold of it with his lips, taking care to keep your precious piece away from all the sharp teeth filling his mouth as he bobs up and down on it. Amazingly good at oral sex, this demon - his hot lips around your manhood and his tongue teasing its shaft.";
			say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus pussy some attention too. A smile on your lips, you tell him he may rub himself against you. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, straddling you with his knees on the ground besides your hips. Lowering his hips slightly, he brings his pussy lips against your shaft slowly, gasping as he feels the tip spread them a bit, then moves to rub himself up and down along its length. The hot nether lips of this infernal creature sliding over your skin, touching your cock and - almost - sliding over it from time to time, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum starting to shoot from your cock to splat down on your chest. After the first, Brutus gently pushes your shaft down a bit, putting its tip right against his opening and making the rest of your load shoot up into his pussy.";	
			say "     [WaitLineBreak]";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings one of his hands to his dripping pussy, rubbing it and pushing in a finger or two to stimulate himself. Quickly getting the rest of the way to his own orgasm, he moans deeply, his shoulders shaking a bit as he starts dripping femcum from his pussy, intermixed with your load. It's quite a bit, running down over your crotch until it forms a small puddle between your legs.";
			say "     [line break]";		
			if companion of player is demon brute:    [is the active pet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";		
			otherwise:                                [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";		
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	otherwise:	[evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:  [male+herm]
			say "     You smile at the demon and say 'I command you to please me - suck my cock - and no teeth!' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and push on his shoulders so he kneels down. Stroking your hard shaft, you hold it out for him and say 'Get to work.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting his two massive hands on your hips. Bringing his long forked tongue to your crotch, he licks over your balls, then up the shaft of your cock before taking it into his mouth. Being willing - but not able - to harm you in any way, he takes great care to hold your member in his lips and keep it away from the sharp teeth filling his mouth. While he sucks you, his forked tongue plays over your shaft, stroking and teasing the most sensitive spots. Amazingly good at oral sex, this demon - if one can make him do it.";
			say "[WaitLineBreak]";
			say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, teasing your captive demon. A smile on your lips, you say 'Good job so far - for pleasing me, I'll allow you a bit more - you can touch my asshole with your cock too ...but only on the outside.' With a hungry growl, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your back door. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow breaking your commands. Finally he relents, venting his frustration by digging his claws into the ground left and right of your chest with a crunch, then starts rubbing up against your ass. The hot member of this infernal creature sliding over your skin, touching your pucker and - almost - pushing in, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum shooting from your cock to splat down on your chest.";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to bring both hands to the infernal erection between your legs and jerking himself off. Quickly getting ready to cum, he pushes it in between your ass-cheeks, right against your pucker - and blows a hot burst of demonic seed right into you. The force of his spurts alone is enough to push open your iris and you can feel shot after shot jet deep into your body. A warm feeling begins to spread through your insides as the demon fills you with his seed. With the sheer amount he's shooting, quite a bit immediately leaks out of your chock-full ass and forms a puddle between your legs.[mimpregchance]";
			say "     [line break]";
			if companion of player is demon brute:    [is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";		
			otherwise:                                [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You smile at the demon and say 'I command you to please me - suck my cock - and no teeth!' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and push on his shoulders so he kneels down. Stroking your hard shaft, you hold it out for him and say 'Get to work.'";
			say "     With an annoyed grumble at not being able to fuck you, the demon obeys, leaning forward and putting his two massive hands on your hips. Bringing his long forked tongue to your crotch, he licks over your balls, then up the shaft of your cock before taking it into his mouth. Being willing - but not able - to harm you in any way, he takes great care to hold your member in his lips and keep it away from the sharp teeth filling his mouth. While he sucks you, his forked tongue plays over your shaft, stroking and teasing the most sensitive spots. Amazingly good at oral sex, this demon - if one can make him do it.";
			say "[WaitLineBreak]";
			say "     Moaning deeply in your mounting arousal, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your arousal moves to a crescendo, a lustful groan accompanying long strings of cum you shoot down the demon's throat, directly into his stomach. As you stand there, holding the creature's head to your crotch and still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to move a massive hand to his own pussy, rubbing it and masturbating. Quickly getting himself ready, he throws his head back and roars in orgasm, quite a bit of femcum squirting out of his pussy to land on the ground and your lower legs.";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]	
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";		
			otherwise:		                            [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex2:    [suck demon cock]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up and take hold of his thick, meaty shaft. You feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your companion's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, you slow down a bit, not wanting to get him off too quickly. Pulling back, you look up over his broad chest, one hand sneaking up to touch his impressive muscles while your other keeps slowly stroking his shaft. Keeping this up for a while, sometimes leaning down to lick his erection and tease it with your tongue, you keep Brutus going in this aroused state, getting more and more sensitive from the growing need to finally cum. In between moans, he soon starts giving you pleading looks.";			
			say "     [WaitLineBreak]";			
			say "     That's enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. Chuckling at the relieved look on the demon's face, you tell him to clean you up, indicating the sticky white fluid running down your whole front.";			
			say "     [line break]";		
			if companion of player is demon brute:		[is the active pet]	
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell Brutus to resume guarding you.";	
			otherwise:		                            [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to send him away again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";	
		otherwise if DemonBruteStatus is 1:		[herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up and take hold of his thick, meaty shaft. You feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your companion's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, you slow down a bit, not wanting to get him off too quickly. Pulling back, you look up over his broad chest, then turn your attention to his pussy, one hand sneaking between his legs to touch its sensitive folds while your other keeps slowly stroking his shaft. Keeping this up for a while, sometimes leaning down to lick his erection and tease it with your tongue, you keep Brutus going in this aroused state, getting more and more sensitive from the growing need to finally cum. In between moans, he soon starts giving you pleading looks.";			
			say "     [WaitLineBreak]";			
			say "     That's enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. His pussy isn't far behind on the sheer amount of femcum it produces, squirting over you and dripping on the ground to produce a puddle. Chuckling at the relieved look on the demon's face, you tell him to clean you up, indicating the sticky white fluid running down your whole front.";		
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]	
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell Brutus to resume guarding you.";	
			otherwise:		                            [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to send him away again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";	
		otherwise if DemonBruteStatus is 2:		[female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";	
	otherwise:	[evil Brutus]	
		if DemonBruteStatus is 0:							[male]
			say "     You smile at the demon and say 'I'm in the mood for some cock right now. Stand there while I suck you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and kneel down.";
			say "     Laying a hand on the creature's meaty shaft, you feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your pet's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			say "[WaitLineBreak]";
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, it's time to... take it slow. A grin on your face, you pull back, only running a stroking finger slowly along the infernal beast's erection to keep him all boned up without allowing him to come. Keeping this up for a full ten minutes or so, you finally hear a growl from above - 'Get me off already... you little bitch!' Looking up, you can't suppress a chuckle at the demon's expression - a mixture of urgent need, pleading and pure loathing. 'Don't be crude, pet - you're mine to command. I can do anything I want...' With that, you flick one of his balls with a finger as punishment, making him twinge in discomfort, then softly stroke and caress the other. 'You decide how it shall be - I could leave you standing here for hours... or you could be nice.' The demon's face twitches as he fights to control himself, slowly smoothing out the scowl he was wearing. Hesitantly, he growls 'P- Please... Master. Get mE OFF. PLEASE!'";
			say "     Good enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. 'Quite a mess you made' you tell the demon, looking down at the sticky white fluid running down your whole front. 'Clean that up - with your tongue.'";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city, and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city, and intone the magic words to banish him again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 1:		[herm]
			say "     You smile at the demon and say 'I'm in the mood for some cock right now. Stand there while I suck you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and kneel down.";
			say "     Laying a hand on the creature's meaty shaft, you feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your pet's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
			say "[WaitLineBreak]";
			say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, it's time to... take it slow. A grin on your face, you pull back, only running a stroking finger slowly along the infernal beast's erection to keep him all boned up without allowing him to come. Keeping this up for a full ten minutes or so, you finally hear a growl from above - 'Get me off already... you little bitch!' Looking up, you can't suppress a chuckle at the demon's expression - a mixture of urgent need, pleading and pure loathing. 'Don't be crude, pet - you're mine to command. I can do anything I want...' With that, you flick one of his balls with a finger as punishment, making him twinge in discomfort, then softly stroke and caress the other. 'Or would you rather want some attention somewhere else?' With that, you slide your hand lower, finding the pussy you gave your demon slave and stroking over its sensitive lips before sinking two fingers inside. The creature doesn't quite manage to suppress a moan at the stimulation of its unwanted female parts. 'You decide how it shall be - I could leave you standing here for hours... or you could be nice.' The demon's face twitches as he fights to control himself, slowly smoothing out the scowl he was wearing. Hesitantly, he growls 'P- Please... Master. Get mE OFF. PLEASE!'";
			say "     Good enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. His pussy isn't far behind on the sheer amount of femcum it produces, squirting over you and dripping on the ground to produce a puddle. 'Quite a mess you made' you tell the demon, looking down at the sticky white fluid running down your whole front. 'Clean that up - with your tongue.'";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to banish him again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex3:    [pussy licked by demon brute]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your pussy. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus erection some attention too. A smile on your lips, you tell him he may rub himself against you, tease your body a bit. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection nudging your nether lips apart slightly, then starting to rub it up and down over them. The hot member of this infernal creature sliding over your skin, touching sensitive folds and - almost - pushing in sometimes, drives your arousal through the roof. Moaning deeply, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your lust moves to a crescendo, a long satisfied moan marking your orgasm.";
			say "     [WaitLineBreak]";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings both his hands up to his massive erection, using them to jerk himself off. Quickly getting ready to cum, he puts the tip of his shaft in between your pussy lips - directly against your waiting opening - and blows a hot burst of demonic seed right into you. You can feel it shoot deep into your body, hitting your cervix, followed by another shot, and another until your vagina is filled up. Grunting, Brutus keeps shooting several more spurts of cum into you, some of it seeping into your womb but most splashing out of your cunt again to form a puddle between your legs.[fimpregchance]";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]	
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";		
			otherwise:		                            [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit and sliding two fingers into his pussy, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your pussy. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus pussy some attention too. A smile on your lips, you tell him he may rub himself against you. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - making his moist female folds brush against yours. Feeling his hot skin against yours - the large creature's parts rubbing your crotch - drives your arousal through the roof. Moaning deeply, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your lust moves to a crescendo, a long satisfied moan marking your orgasm.";
			say "     [WaitLineBreak]";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings one of his hands to his dripping pussy, rubbing it and pushing in a finger or two to stimulate himself. Quickly getting the rest of the way to his own orgasm, he moans deeply, his shoulders shaking a bit as he starts dripping femcum from his pussy. It's quite a bit, running down over your crotch until it forms a small puddle between your legs.";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]	
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently over you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";	
	otherwise:	[evil Brutus]	
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You smile at the demon and say 'I command you to please me - lick my pussy till I come.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then get down on on your back, spreading your legs invitingly. 'Get to work.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			say "[WaitLineBreak]";
			say "     Lying there on the ground, moaning deeply in your mounting arousal, you have an idea for even more fun, teasing your captive demon. A smile on your lips, you say 'Good job so far - for pleasing me, I'll allow you a bit more - you can touch my pussy with your cock too ...but only on the outside.' With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow breaking your commands. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then starts rubbing up against your crotch. The hot member of this infernal creature sliding over your skin, touching your pussy lips and - almost - parting them, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful scream marking your orgasm.";
			say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to bring both hands to the infernal erection between your legs and jerking himself off. Quickly getting himself ready, he pushes it in between your pussy lips - as far as he can - and blows a hot burst of demonic seed right into you. You can feel it shoot deep into your body, hitting your cervix, followed by another shot, and another until your vagina is filled up. Your captive demon keeps shooting several more spurts of cum into you, some of it seeping into your womb but most splashing out of your cunt again to form a puddle between your legs.[fimpregchance]";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You smile at the demon and say 'I command you to please me - lick my pussy till I come.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then get down on on your back, spreading your legs invitingly. 'Get to work.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			say "[WaitLineBreak]";
			say "     Moaning deeply in your mounting arousal, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your arousal moves to a crescendo, a lustful scream marking your orgasm. As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to move a massive hand to his own pussy, rubbing it and masturbating. Quickly getting himself ready, the demon brute throws his head back and roars in orgasm, quite a bit of femcum squirting out of his pussy to land on the ground and your legs.";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex4:    [finger his pussy]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0:							[male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		otherwise if DemonBruteStatus is 1:		[herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up and have him take hold of his thick, meaty shaft. With him holding it up, you fondle his balls for a second, then slide your hand deeper, brushing over the feminine folds right under them, which immediately makes him pant in lust. Getting on your knees between Brutus legs, you grab his powerfully muscled thighs, pushing them a bit further apart to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his nether lips, you move them in and out, prompting some moans and gasps from him. Then you pull your hand out and show it to him, his female juices dripping from your fingers - until he licks them up with his forked tongue, that is.";
			say "     Getting back to pleasing the demon with your mouth and fingers, you fill your companion with bliss, with loud moaning and panting coming from him. He puts his clawed right hand to rest softly on your head, pulling you a bit tighter and directing your efforts. Not soon afterwards, Brutus has an explosive orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, femcum gushing out of his vagina and his cock spraying long ropes of cum to arc over you and land on the ground behind.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your demon companion and the floor behind where you were kneeling. Phew - he really cums out a lot, with both his thick shaft and the pussy. There's a big pattern of white splatters on the ground and the femcum is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "    Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. There's a big pattern of white splatters on the ground and the femcum is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";		
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to stand up again. Running your hands up the insides of his legs, you move on to his crotch, brushing over the feminine folds waiting for you there, which immediately makes him pant in lust. Getting on your knees between Brutus legs, you grab his powerfully muscled thighs, pushing them a bit further apart to allow yourself access to the swollen between them. Sticking two fingers in between his nether lips, you move them in and out, prompting some moans and gasps from him. Then you pull your hand out and show it to him, his female juices dripping from your fingers - until he licks them up with his forked tongue, that is.";
			say "     Getting back to pleasing the demon with your mouth and fingers, you fill your companion with bliss, with loud moaning and panting coming from him. He puts his clawed right hand to rest softly on your head, pulling you a bit tighter and directing your efforts. Not soon afterwards, Brutus has an explosive orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, femcum gushing out of his vagina.";			
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even femcum from his pussy. It is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even femcum from his pussy. It is still running down his legs to form a puddle on the ground. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";		
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";	
	otherwise:	[evil Brutus]	
		if DemonBruteStatus is 0:							[male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		otherwise if DemonBruteStatus is 1:		[herm]
			say "     You smile at the demon and say 'I'm in a good mood right now, so I'll get you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'Ah, but it won't be through that thing. Let's train you to appreciate your female side a bit more...' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. And spread your legs a bit.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Doesn't it feel good to have a pussy? Come on, don't lie' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Yes, master. It makes me feel... good.' A grin on your face, you intensify your efforts, fucking the demon with two, then three fingers moving in and out of him. To mix things up a bit, you bring your head down to his crotch too, nibbling on his clit and teasing it with your tongue.";
			say "     [WaitLineBreak]";
			say "     Pleasing the demon with your mouth and fingers, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from him. Now his clawed right hand, which only the amulet's magic kept from taking your head off before, just rests on your head softly, pulling you a bit tighter and directing your efforts. Not soon afterwards, the demon brute actually has an orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina.";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "    Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You smile at the demon and say 'I'm in a good mood right now, so I'll get you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'Ah, but it won't be through that thing. Let's train you to appreciate your female side a bit more...' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. And spread your legs a bit.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Doesn't it feel good to have a pussy? Come on, don't lie' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Yes, master. It makes me feel... good.' A grin on your face, you intensify your efforts, fucking the demon with two, then three fingers moving in and out of him. To mix things up a bit, you bring your head down to his crotch too, nibbling on his clit and teasing it with your tongue.";
			say "     [WaitLineBreak]";
			say "     Pleasing the demon with your mouth and fingers, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from him. Now his clawed right hand, which only the amulet's magic kept from taking your head off before, just rests on your head softly, pulling you a bit tighter and directing your efforts. Not soon afterwards, the demon brute actually has an orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina.";
			say "     [line break]";
			if companion of player is demon brute:		[is the active pet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex5:    [fuck his pussy]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0:							[male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		otherwise if DemonBruteStatus is 1:		[herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to lie on the ground. Smiling, he does so, the spade-tipped sticking out from under him moving through the air in slow arcs, as if beckoning you. Getting on your knees between Brutus legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Stroking over his sensitive nether lips, then sticking in two fingers between them, you push in and out, making your demon companion give a very satisfied moan. Stimulating him with just your hand has Brutus trembling with arousal, his claws leaving furrows in the ground left and right as he grips it to hold on to something.";
			say "     Oh, it'll be fun to really fuck him. A grin on your face, you rub your cock against his member, feeling him hotly against yourself, then guide it further down, stroking over his large balls to arrive at the herm demon's nether lips. Sliding the tip of your shaft up and down between them for a moment, you finally press in, sinking your manhood into his moist depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and compliment him on it, making Brutus face blush in interesting shade of purple.";
			say "     [WaitLineBreak]";
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. He gives you a pleased grunt at that - seems like your demon companion likes it a bit rough. Eager to oblige, you start thrusting in and out quickly, slamming back into him hard again and again. Besides being a tight fuck, you feel something of an additional, special satisfaction in dominating this powerful a creature, feeling his inner passages spread around your shaft as he moans for you to fuck him and take him harder. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina. That lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside Brutus pussy as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a while, listening to the demon's breathing.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. Pleased at the satisfied look on his face, you thank Brutus for his service, then tell him to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. Pleased at the satisfied look on his face, you thank Brutus for his service, then intone the magic words to send him away. Still lying on the ground, he turns into a cloud of purple smoke, then vanishes into your amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct him to lie on the ground. Smiling, he does so, the spade-tipped sticking out from under him moving through the air in slow arcs, as if beckoning you. Getting on your knees between Brutus legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Stroking over his sensitive nether lips, then sticking in two fingers between them, you push in and out, making your demon companion give a very satisfied moan. Stimulating him with just your hand has Brutus trembling with arousal, his claws leaving furrows in the ground left and right as he grips it to hold on to something.";
			say "     Oh, it'll be fun to really fuck him. A grin on your face, you rub your cock against sensitive pussy lips, running its tip up and down between them before pressing in, sinking your manhood into his moist depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and compliment him on it, making Brutus face blush in interesting shade of purple.";
			say "     [WaitLineBreak]";
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. He gives you a pleased grunt at that - seems like your demon companion likes it a bit rough. Eager to oblige, you start thrusting in and out quickly, slamming back into him hard again and again. Besides being a tight fuck, you feel something of an additional, special satisfaction in dominating this powerful a creature, feeling his inner passages spread around your shaft as he moans for you to fuck him and take him harder. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. It lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside Brutus pussy as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a while, listening to the demon's breathing.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, even just femcum. It is still dripping out of him, running down over his crotch to join the puddle on the ground between his legs. Pleased at the satisfied look on Brutus face, you thank him for his service, then tell him to resume guarding you.";		
			otherwise:		                            [back into the amulet]
				say "     Some time later, you pull out of him with a sigh, a trickle of your white cum escaping his pussy as you do so, running down between his legs. You stand up and have a look at your demon companion. Phew - he really cums out a lot, even just femcum. It is still dripping out of him, running down over his crotch to join the puddle on the ground between his legs. Pleased at the satisfied look on his face, you thank Brutus for his service, then intone the magic words to send him away. Still lying on the ground, he turns into a cloud of purple smoke, then vanishes into your amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	otherwise:	[evil Brutus]
		if DemonBruteStatus is 0:							[male]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
		otherwise if DemonBruteStatus is 1:		[herm]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'I will be fucking YOU - not the other way around, if you thought that.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. I want to see your face when I slide into you.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Say you want me in you!' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Please fuck me, master.' A grin on your face, you rub your cock against his, then guide it further down, stroking over his large balls to arrive at the herm demon's nether lips. Sliding the tip of your shaft up and down between them for a moment, you finally press in, sinking your shaft into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice hole. You're an amazing fucktoy.'";
			say "     [WaitLineBreak]";
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, spreading his inner passages around your shaft. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina. That lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a moment, secure in your dominance over the mighty creature.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you say 'Of course, I will be the one fucking YOU.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. I want to see your face when I slide into you.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Say you want me in you!' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Please fuck me, master.' A grin on your face, you rub the tip of your erection up and down over his nether lips, then press in between them, sinking your shaft into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice hole. You're an amazing fucktoy.'";
			say "     [WaitLineBreak]";
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, spreading his inner passages around your shaft. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. It lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a moment, secure in your dominance over the mighty creature.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex6:    [player pussy fucked]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your pussy. Leaning downward and putting his two massive hands on your hips, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you could almost just let him keep going like this... but no, it's time for the main event now. A smile on your lips, you tell him he may use that thick cock of his to fuck you. With an eager, lust-filled grunt, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection nudging your nether lips apart slightly. Brutus face close to yours, he says 'With pleasure, my master', then puts his arms forward to hold you softly as he presses forward, entering your body with his hard shaft.";
			say "     It's big - very big, spreading your pussy lips around it, then sinking deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take. Thankfully, he seems to know what very well, only slowly moving deeper and often stopping to just hold you so you can get used to it. Finally he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. Panting deeply, you grab his head and pull it close, finding his lips with yours. It's amazing to have this huge, muscular creature on top of you, feeling him deep inside you - and being absolutely sure that you're safe in his arms.";
			say "     [WaitLineBreak]";
			say "     A few minutes of making out with Brutus later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over your chest.[otherwise if cunts of player > 0]and with a loud moan, you orgasm, femcum running down from your stretched cunt.[otherwise]and with a loud moan, your body shakes in orgasm.[end if]";
			say "     His duty at getting you off fulfilled, the demon gives something like a very deep purr in satisfaction, his pleasure at serving his master quite obvious. He keeps fucking you while you ride out your orgasm, getting a bit faster than before in his urge to join you. Soon, he reaches his own climax - and with a loud grunt, he begins to pump your insides full of his seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around Brutus thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to create a white-ish pool under you.[fimpregchance]";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]	
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";		
			otherwise:		                            [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";			
		otherwise if DemonBruteStatus is 2:		[female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";	
	otherwise:	[evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You smile at the demon and say 'I'll allow you a treat, my demon pet - you may fuck me.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. You slip your clothes of slowly to tease the demon a bit, then lie down on your back spread your legs invitingly. 'Eat me out first.'";
			say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			say "[WaitLineBreak]";
			say "     With the musclebound creature eating you out, wiggling his tongue inside your vagina, you could almost just let him keep going like this... but no, it's time for the main event now. With a gasped 'Fuck me now!' you allow your pet to do what he wanted right from the start. With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow hurting you by just slamming inside with force as he wanted. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then start to slowly press forward. The hot member of your infernal servant spreads your pussy lips around it, then sinks deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. 'Wait!' you order the creature, panting deeply as you try to get used to having him inside you.";
			say "     A few minutes later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over your chest.[otherwise if cunts of player > 0]and with a loud moan, you orgasm, femcum running down from your stretched cunt.[otherwise]and with a loud moan, your body shakes in orgasm.[end if] His duty at getting you off fulfilled, the constraints on the demon's libido fall away and he starts fucking you even harder to get himself off. Soon, he reaches his climax too - and with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to create a white-ish pool under you.[fimpregchance]"; 
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex7:    [finger his ass]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
		say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
		say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
		say "     [WaitLineBreak]";
		say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening, stretching it slowly until you can add another finger, and another. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
		say "     You keep going, stroking that same spot a few more times, then slide your other hand in between his legs to fondle his balls at the same time. The large orbs are very warm to your touch, heavy with the stored-up load inside them. Then suddenly, accompanied by a lust-filled roar by the demon, you feel them pulse under your fingers. Seems like getting that bit of extra stimulation at the same time as you working on his ass drove him over the edge. Holding on to the large cum-factories, you keep stroking them as Brutus shoots burst after burst of his demon seed on the ground below. His anal muscles twitch in rhythm to his balls, gripping your fingers tightly.";
		say "     [WaitLineBreak]";
		if companion of player is demon brute:		[is the active pet]
			say "     As the demons orgasm abates, you caress his cheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really creamed the floor, creating a large puddle of sticky cum. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
		otherwise:		                            [back into the amulet]
			say "     As the demons orgasm abates, you caress his cheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really creamed the floor, creating a large puddle of sticky cum. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";		
	otherwise if DemonBruteStatus is 2:		[female]
		say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
		say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
		say "     [WaitLineBreak]";
		say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening, stretching it slowly until you can add another finger, and another. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
		say "     You keep going, stroking that same spot a few more times, then slide your other hand in between his legs to fondle his pussy at the same time. His female folds are swollen and moist, showing the state of his heightened arousal. Then suddenly, accompanied by a lust-filled roar by the demon, you feel them get even wetter, gushing femcum over your fingers. Seems like getting that bit of extra stimulation at the same time as you working on his ass drove him over the edge. Keeping your hand between his legs, you keep stroking his pussy lips as Brutus femcum drips on the ground below. His anal muscles twitch rhythmically around your fingers, gripping them tightly.";
		say "     [WaitLineBreak]";
		if companion of player is demon brute:		[is the active pet]
			say "     As the demons orgasm abates, you caress his asscheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really cums a lot, even femcum, creating a puddle on the ground. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
		otherwise:		                            [back into the amulet]
			say "     As the demons orgasm abates, you caress his asscheeks, then walk around to his front and put your hand to his shoulder to tell him to sit up. Phew - he really cums a lot, even femcum, creating a puddle on the ground. Looking up from the floor, you find Brutus azure blue eyes focused on you in an intense gaze.  'Thank you, master.' he says, and you can feel he's just a bit baffled - and very pleased - at you getting him off without using him for your own pleasure. Making a few steps back, you take in the picture of your content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and murmur the magic words to send him away for now. Your demon companion turns into a cloud of purple mist and vanishes into the amulet.";		
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
		
to say DemonBruteSex8:    [fuck his ass]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening and start stretching him in preparation. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
			say "     You keep going, stroking that same spot a few more times, then ask him what he wants you to do next. 'Fuck me, master. Please.' the demon answers in between moans and he rocks back a little bit to bring his ass in contact with your crotch. Who could resist this... taking hold of your erection to aim it at Brutus pucker, you're against his opening in a second, pushing forward till it stretches around your invading member and allows you to sink deeper into his warm depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. You even have to slow down a bit so you don't just cum before you're all the way in. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a moment to get yourself back under control, taking deep breaths and stroking Brutus back and hips.";
			say "     [WaitLineBreak]";
			say "     With you just resting your cock where it is buried in Brutus rear, cooling off, your demon companion gets a bit impatient after a while and you can feel him rocking forward and backward slightly to fuck himself on your shaft. Seems like it's time to take the reins again and give him what he so desperately needs. Pulling back till only the head of your cock is left inside him, you start thrusting in and out, making Brutus moan loudly each time you bottom out inside him. Following pants of 'Harder! Faster!', your movements speed up to oblige him and soon you're really pounding the demon's ass, your hips slapping against his cheeks with each thrust. Fucking Brutus with hard and deep strokes, you keep hitting his prostrate, filling your companion with bliss. His long tail rubs against you as you fuck him, sometimes wrapping around you to pull you closer.";
			say "     The demon brute is the first one to cum from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be massive spurts of demon seed splat on the ground below. Also feeling his anal muscles twitch around your cock with each burst of the demon's cum, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";			
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really creamed the floor, creating a large puddle of sticky cum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had.' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really creamed the floor, creating a large puddle of sticky cum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had.' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and mutter the magic words to send him back into the amulet.";			
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your fingers over the sensitive folds between his legs. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now quite aroused hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then tell him to get down on the ground on all fours. Obeying without any hesitation, the demon takes the position and looks back to you over his shoulder, his tail lazily moving through the air as if beckoning you closer to his tightly muscled ass. Moving up behind him, you rub Brutus well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening and start stretching him in preparation. Fondling your demonic companion's ass gets him all hot and bothered pretty quickly, moaning deeply as your fingers probe his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the ground out of reflex.";
			say "     You keep going, stroking that same spot a few more times, then ask him what he wants you to do next. 'Fuck me, master. Please.' the demon answers in between moans and he rocks back a little bit to bring his ass in contact with your crotch. Who could resist this... taking hold of your erection to aim it at Brutus pucker, you're against his opening in a second, pushing forward till it stretches around your invading member and allows you to sink deeper into his warm depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. You even have to slow down a bit so you don't just cum before you're all the way in. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a moment to get yourself back under control, taking deep breaths and stroking Brutus back and hips.";
			say "     [WaitLineBreak]";
			say "     With you just resting your cock where it is buried in Brutus rear, cooling off, your demon companion gets a bit impatient after a while and you can feel him rocking forward and backward slightly to fuck himself on your shaft. Seems like it's time to take the reins again and give him what he so desperately needs. Pulling back till only the head of your cock is left inside him, you start thrusting in and out, making Brutus moan loudly each time you bottom out inside him. Following pants of 'Harder! Faster!', your movements speed up to oblige him and soon you're really pounding the demon's ass, your hips slapping against his cheeks with each thrust. Fucking Brutus with hard and deep strokes, you keep hitting his prostrate, filling your companion with bliss. His long tail rubs against you as you fuck him, sometimes wrapping around you to pull you closer.";
			say "     The demon brute is the first one to orgasm from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be spurts of fluid hit the ground below. Also feeling his anal muscles twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";		
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had.' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Pulling out of him, his light purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your demon companion. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. Walking around and putting a hand on his shoulder to make him raise his upper body, you give him a kiss on the mouth and ask how he liked it. 'You're the best master I ever had.' the demon replies, turning his azure blue eyes on you in an intense look, then affectionately licking your neck with his forked tongue. Making a few steps back, you take in the picture of your freshly fucked, content demon brute, then put your thoughts back to other things with a sigh - like surviving in this destroyed city - and mutter the magic words to send him back into the amulet.";				
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	otherwise:	[evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'I will be fucking YOU - not the other way around, if you thought that.' You slip your clothes of slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'Get on all fours now - and relax that ass of yours.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, falling to his knees, then leaning forward to rest on all fours. His spade-tipped tail whips through the air unruly over a tightly muscled ass. Getting into position behind him, you grab him by the tail, pulling it up and stroking along its length a few times while aiming your erection at the demon's pucker. Then you're against his opening, pushing inward until it slowly spreads around your invading member and allows you to sink deeper into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice tight hole. Almost thought I'd cum before I even was fully in.'";
			say "     [WaitLineBreak]";
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's ass again, your hips meeting his butt with a slap. 'How does it feel to be the bitch for once? My private little fuckhole.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, rubbing his prostrate in the process. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks back to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to cum from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be massive spurts of demon seed splat on the ground below. Also feeling his anal muscles twitch around your cock with each burst of the demon's cum, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really creamed the floor, creating a large puddle of sticky cum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really creamed the floor, creating a large puddle of sticky cum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you say 'Of course, I will be the one fucking YOU.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'Get on all fours now - and relax that ass of yours.'";
			say "     With an annoyed grumble at his intended role, the demon obeys, falling to his knees, then leaning forward to rest on all fours. His spade-tipped tail whips through the air unruly over a tightly muscled ass. Getting into position behind him, you grab him by the tail, pulling it up and stroking along its length a few times while aiming your erection at the demon's pucker. Then you're against his opening, pushing inward until it slowly spreads around your invading member and allows you to sink deeper into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice tight hole. Almost thought I'd cum before I even was fully in.'";
			say "     [WaitLineBreak]";
			say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's ass again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, rubbing his prostrate in the process. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks back to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
			say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be spurts of fluid hit the ground below. Also feeling his anal muscles twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex9:    [player ass fucked]
	if DBCaptureQuestVar > 5: [cleansed Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You step up to the demon, running a hand over his wide chest, tracing his muscles with your fingers. Going lower and lower, you stroke over his hard, defined abs, then rub your hand along his thick, veiny cock. Brutus moans in his deep voice as you touch him, revelling in the feelings it creates.";
			say "     After stroking your demonic companion a bit, you decide it's time for you to get naked too. Stepping back from him, you demonstratively pull off your clothing piece by piece, feeling the gaze of his azure eyes wander over your increasingly bared body. As the last piece of fabric falls, the by now fully hard Brutus falls to his knees, asking 'How can I serve you, master?'";
			say "     [WaitLineBreak]";
			say "     Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then get down on the ground on all fours, wiggling your ass a bit and give it a light slap as you tell him to fuck you. 'With pleasure, master.' he says, leaning downward and putting his two massive hands on your cheeks, spreading them. Bringing his long forked tongue to your crack without any hesitation, he licks over your back door, then starts to push it against your pucker. The wet appendage slides inside you, probing and wiggling in your passage and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
			say "     With the musclebound creature eating you out, playing with your hole, you could almost just let him keep going like this... but no, it's time for the main event now. A smile on your lips, you look over your shoulder tell him he may use that thick cock of his to fuck you. With an eager, lust-filled grunt, the demon moves tight against you, gripping your cheeks, and you can feel the warmth of his erection rest against your back. Then he hesitates... until suddenly you feel yourself being picked up, turned around and then lowered to lie on your back with amazing gentleness. Brutus is on top of you in a second, his body covering yours as he lifts and spreads your legs. 'With pleasure, my master', he says, licking your neck with his forked tongue and putting his arms around you to hold you softly. Then he moves forward, his massive member slowly increasing its pressure against your asshole until the head pushes open your pucker, stretching it wide as he enters your body with his hard shaft.";
			say "     It's big - very big, making you gasp from the initial penetration. Then, as it sinks deeper into your body, pleasant feelings prevail as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take. Thankfully, he seems to know what very well, only slowly moving deeper and often stopping to just hold you so you can get used to it. Finally he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. Panting deeply, you grab his head and pull it close, finding his lips with yours. It's amazing to have this huge, muscular creature on top of you, feeling him deep inside you - and being absolutely sure that you're safe in his arms.";
			say "     [WaitLineBreak]";
			say "     A few minutes of making out with Brutus later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over your chest.[otherwise if cunts of player > 0]and with a loud moan, you orgasm, femcum running down from your stretched cunt.[otherwise]and with a loud moan, your body shakes in orgasm.[end if]";
			say "     His duty at getting you off fulfilled, the demon gives something like a very deep purr in satisfaction, his pleasure at serving his master quite obvious. He keeps fucking you while you ride out your orgasm, getting a bit faster than before in his urge to join you. Soon, he reaches his own climax - and with a loud grunt, he begins to pump your bowels full of his seed. Easily filling your asshole and intestines, the remaining cum starts squirting out around the demon's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a white-ish pool under you.[mimpregchance]"; 
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]	
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and tell the large demon to resume guarding you.";		
			otherwise:		                            [back into the amulet]
				say "     Exhausted and pretty sticky as you are now, you lie there on the ground for a while, resting and looking up at Brutus form, still kneeling obediently besides you. Finally you sit up with a sigh, thank him for his service and murmur the magic words to send the demon back to his resting place inside your amulet.";				
		otherwise if DemonBruteStatus is 2:		[female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";
	otherwise:	[evil Brutus]
		if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
			say "     You smile at the demon and say 'I'll allow you a treat, my demon pet - you may fuck my ass.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. You slip your clothes of slowly to tease the demon a bit, then get down on all fours and wave your ass invitingly at him. 'Eat me out first.'";
			say "     With an annoyed grumble at still not fucking you, the demon obeys, leaning forward and putting two massive hands on your cheeks, spreading them. Bringing his long forked tongue to your crack, he licks over your back door, then starts to push it against your pucker. The wet appendage slides inside you, probing and wiggling in your passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
			say "     [WaitLineBreak]";
			say "     With the musclebound creature eating you out, playing with your hole, you could almost just let him keep going like this... but no, it's time for the main event now. With a gasped 'Fuck me now!' you allow your pet to do what he wanted right from the start. Slapping your ass - just light enough not to leave marks (as hard as the binding spell allows), the brutish demon moves up behind you. You can feel the thick width of his erection hotly against your back for a moment, then he aims it lower and prods his massive member against your asshole. With the weight of this large creature behind it, the demon's shaft pushes into your body, spreading your pucker wide around its girth and slowly sinking further inside. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster, as he's prohibited from really hurting you. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. 'Wait!' you order the creature, panting deeply as you try to get used to having him inside you.";
			say "     A few minutes later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, creating a very pleasurable feeling. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your ass now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over the ground under you.[otherwise if cunts of player > 0]and with a loud moan, you orgasm and start dripping femcum on the ground under you.[otherwise]and with a loud moan, your body shakes in orgasm.[end if] Your anal passage twitching and contracting around the demon's shaft makes him reach his climax too - with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. Easily filling your asshole and intestines, the remaining cum starts squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a white-ish pool under you.[mimpregchance]"; 
			say "     [WaitLineBreak]";
			if companion of player is demon brute:		[is the active pet]
				say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";
			otherwise:		                            [back into the amulet]
				say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
		otherwise if DemonBruteStatus is 2:		[female]
			say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
		otherwise:
			say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Brute";
	add {"Demon Brute"} to infections of hellspawn;
	now attack entry is "The brute [one of]throws a powerful punch[or]swings a great fist[or]begins to kick wildly with powerful legs[at random].";
	now defeated entry is "[demon brute loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[demon brute wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[demonbrutedesc]";[ Description of the creature when you encounter it.]
	now face entry is "very inhuman, with a pair of slits for nostrils, sharp teeth, and yellow eyes with red slitted pupils. The top of your head is crowned by three matching pairs of horns, curved and getting smaller front to back";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "now large and muscle-bound, any body-builder would be proud to have it";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "a deep shade of purple as the color of your";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long demon tail that sways back and forth behind you, equipped with a spaded tip and everything!";
	now cock entry is "[one of]demonic[or]demon[or]infernal[or]bump-ridden[at random]";
	now face change entry is "you begin to feel your skull reshaping under your skin. Your nose disappears, leaving a pair of slits. A strange feeling in your mouth heralds your teeth changing, sharpening and becoming longer to give you a monstrous smile. Finally three pairs of horns grow out of the top of your head, with the front pair the largest, the others getting smaller towards the back. Even your eyes have changed, the white parts now yellow and around red, slitted pupils."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your arms and legs begin to grow longer and more muscular. Your chest widens as well.";
	now skin change entry is "you begin to feel a strange burning sensation. You look down, and realize that your skin has turned a deep shade of purple!";
	now ass change entry is "you feel it becoming tighter, leaner, and more fit.  This is followed by a strange feeling at the base of your spine, and then there is a very strange, and painful, burning sensation, as if your flesh is boiling and liquefying.  The pain lasts for some time, but, when it finally subsides, you can feel your new, long demon tail sway back and forth behind you, equipped with a spaded tip and everything"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it begins to grow thicker, large bumps sprouting up all across its surface. At first, you think it is some sort of strange disease, but, then you realize that this entire thing is some sort of disease";
	now str entry is 20;
	now dex entry is 8;
	now sta entry is 14;					
	now per entry is 5;
	now int entry is 3;
	now cha entry is 0;
	now sex entry is "Male"; 	
	now hp entry is 50;			
	now lev entry is 4;			 
	now wdam entry is 9;			
	now area entry is "Mall";
	now cocks entry is 1;			
	now cock length entry is 18;		
	now cock width entry is 8;    
	now breasts entry is 0;     
	now breast size entry is 0;   
	now male breast size entry is 0;  
	now cunts entry is 0;     
	now cunt length entry is 0;   
	now cunt width entry is 0;    
	now libido entry is 45;     
	now loot entry is "demon seed";       [ Loot monster drops, ]
	now lootchance entry is 50;           [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;                 [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]muscular[or]powerful[at random]";
	now type entry is "demonic";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;              [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "demonbrute";  [ Row used to designate any special combat features, "default" for standard combat. ]
			
Table of Game Objects(continued)
name	desc	weight	object
"demon seed"	"The white, gooey seed of one of your past demonic lovers. It smells very sweet, and is still warm."	1	demon seed

demon seed is a grab object.

demon seed is infectious. The strain of demon seed is "Demon Brute".

the usedesc of demon seed is "The warm, sticky liquid tastes sweet as you drink it.";

instead of sniffing demon seed:
	say "The demonic semen smells cloyingly sweet.";

Section 4 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"demonbrute"	retaliation rule	brfoinc rule	--	bruteforce rule	10	--	--	--	--	--

this is the brfoinc rule:   [increasing likelihood of bruteforce attack]
	choose row monstercom from the table of critter combat;
	increase alt1chance entry by a random number between 1 and 5;
	if alt1chance entry > 40, now alt1chance entry is 40;

this is the bruteforce rule:
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 0;
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );	[double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "[one of]The demonic creature[or]The [name entry][or]Your enemy[or]The demon[purely at random] growls and charges you, pinning you against a wall briefly.  It leans its strong, heavy body against yours and punches you several times in the [one of]gut[or]side[or]solar plexus[or]sternum[or]breadbasket[purely at random].  It then tosses you aside roughly with another growl, sending you tumbling.  You suffer [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";   [unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";

instead of sniffing the demon brute:
	say "     Your captive demon brute smells of ash, sulfur and brimstone.";

Section 5 - Endings

when play ends:
	if bodyname of player is "demon brute":
		if humanity of player is less than 10:
			say "You find yourself overcome with lust, your balls simply aching, ready to burst. You need to find some relief, and soon! You go on a proper rampage, pushing over small trees and walls, and smashing in windows, and generally wreaking havoc. You eventually spot what you want, a woman in her prime. She is a [one of]human-feline mix, with large cat-ears, a tail, and beautiful black fur[or]husky-human mix, with soft white and grey fur and a puffy white-grey tail[at random]. You seize her, and, without much resistance on her part, are able to gain control. You tear her clothes away, revealing her naked, furry body. She seems too overcome with lust to worry about the size of your cock. But, then again, you aren't the only one with a large tool, and you aren't the first to rut with this girl. She wraps her arms and legs around your large body, her wet sex exposed and moistening, ready for your massive meat. You thrust into her without hesitating, and before long the both of you are moaning and grunting two lust-filled monsters mating like the animals they have become. During the ordeal, the girl climaxes several times, each time becoming more intense than the last. You can feel that you are approaching your climax as well, and your grunts become more frequent. Then, as she is hit by her most powerful orgasm yet, her tight sex squeezes your big meat, enough to push you ever the edge. You begin to come, shooting your seed up inside your new bitch. She pants and moans as your cum fills her womb, causing it to swell to a great size. Massive quantities of cum spill out onto the ground beneath your feet, and a constant stream of it is leaking out around your cock. You realize that this ordeal was too much for the girl, and that she has passed out. Since you really enjoyed your time with this girl, you decide to hold onto her as you disappear back to your den, that safe-room you started your journey in. You set up the cot, and then lay her down on it, her pussy still leaking fluid. Months of wild mating later, and she is heavily pregnant with your brood, which gives you the utmost satisfaction.";
		otherwise:
			say "You are eventually found by a rather strange man, leading a group of explorers through the city. He walks up to you, and holds out his hand. He introduces himself as a adult film producer with a special request. He says that you would make the perfect monster to fill the part of the evil demon-lord in a live-action version of a hentai anime series he has decided to produce. He offers you asylum, a mountain estate away from the peering eyes of society, and a large sum of money. How could you possibly turn that kind of an offer down? The series becomes [one of]a great success, with millions flowing in from frenzied fans. You become a hero to many hentai fans, and you can use all the fangirls you want..[or]a controversial work which ends up getting banned in several countries. The money soon dries up, and you are forced to move out, eventually joining a circus.[at random]";
[	if demon brute is tamed:
		if DemonBruteStatus is 0:            
			say "A";
		otherwise if DemonBruteStatus is 1:  
			say "B";
		otherwise if DemonBruteStatus is 2:
			say "C";  ]

Demon Brute For FS ends here.