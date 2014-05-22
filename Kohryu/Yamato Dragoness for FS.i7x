Version 4 of Yamato Dragoness For FS by Kohryu begins here.
[ Version 4 - Complete Overhaul and TBM scene by Blue Bishop, as overseen by Stripes]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Yamato Dragoness to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Yamato Dragoness" } to infections of girl;

YDSF is a number that varies; [Yamato Dragon Succumb Fate]
FYDTBMM is a number that varies; [Female Yamato Dragon TBM Memory]
FYDM is a number that varies; [Female Yamato Dragon Memory]

to say Yamato Dragoness attack:
	if HP of player > 0:
		say "     You ultimately choose to surrender yourself to the serpentine creature's mercy, dropping all that you might be carrying as a concession to her will. When it's clear that this isn't some manner of trick, she draws near, a mouthless voice flooding your hearing.";
		say "     '[one of]Very wise, little one. I will spare you of any further embarrassment[or]You aren't as foolish a little thing as I had expected, very well[or]I see your need is just as great as mine[at random].' In the wake of her remark, she demands that you relinquish yourself of any other attire you might of had, forced to oblige lest she tear them free of you.";
	otherwise:
		say "     Overwhelmed by this massive beast, you are grabbed by her teeth, tearing you free of what attire you might have worn and slamming you against the dirt. Head spinning and too exhausted to contest the dragoness's will, you feel her talons further expose you before herself, a mouthless voice flooding your hearing.";
		say "     '[one of]Impudent little whelp, you are now mine[or]It amuses me to no end that you thought you could take me on[or]Know your place, little thing[or]Such gall, you will taste more than defeat[at random]!' Taunting you, as she does, it's very clear that you're now at the mercy of this massive serpentine creature.";
	if "Touched by Madness" is listed in feats of player and (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 4 succeeds)):
		if FYDTBMM is 0:
			say "     As she is about to set herself upon you, she finds herself struck by an otherworldly notion, interrupting what twisted train of thought she previously held for you. Her demeanour trends from one of confusion to some manner of internal conflict, before she looks upon you with an almost insane glare, seemingly roused by a new plan for you.";
			say "     'N-no... What you offer isn't enough, I must have all of you!' Wanton need streaked with aberrant inspiration, she pulls you into the air,";
			if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
				say "similarly serpentine form exposed before her";
			otherwise:
				say "[bodytype of player] form exposed before her";
			say ". Rolling her rear half against the earth as to uncover her draconic vent, already made slick through blatant arousal, before you are carried over to it and lowered towards the foreboding portal rear-first.";
			say "     Demented desire made known, [if hp of player < 1 and player is not submissive]you immediately try to prevent it from coming to pass, feet planted firmly against the hard-scaled lips of her hungering cunt. You only briefly inconvenience the dragoness before you slip on her sexual fluids, quickly plummeting into her depths[otherwise]you can't help but be a little troubled by ominous fate, not that she has much regard for your well-being by this point, quickly plunging you into her depths[end if].";
			say "     Slippery, supple flesh rapidly embracing your [bodydesc of player] form, you're quickly exposed to her oppressive tightness, hugging against you as she stuffs you ever-deeper into this abyss. Notably, [if scalevalue of player > 4]she seems to have little difficulty in handling your massive body[otherwise if scalevalue of player is 4]she seems to have little difficulty in handling your rather large body[otherwise]she appears innately adept at handling these tainted circumstances, much to your expense[end if]; however, she does not engulf you entirely yet, instead intent on using you for her sexual gratification first.";
			now FYDTBMM is 1;
		otherwise:
			say "     The way she looks as you, it's made very clear what twisted fate this massive beast has planned for you. [if hp of player < 1 and player is not submissive]Not wanting to subject yourself to that torment again, you try to get up and run, but you're too weak to flee her and, doubtlessly amused by your struggle, follows you along[otherwise]Tainted hunger in her emergent grin, you feel somewhat sheepish regarding the dragoness's devious intent, who is doubtlessly quite excited for it to go underway[end if].";
			say "     '[one of]Yes, yes[or]Oh, yes[or]Good[at random], [one of]ALL of you will be mine[or]you will suffice[or]you're all mine now[or]I beg you to squirm, whelp[or]there is no escape now[at random]!' Wanton need streaked with an insane desperation, she plucks you from the ground,";
			if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
				say "similarly serpentine form exposed before her";
			otherwise:
				say "[bodytype of player] form exposed before her";
			say ". Rolling her rear half against the earth, uncovering her draconic vent, already made slick through blatant arousal, before you are carried over to it and lowered towards the familiar and foreboding portal rear-first.";
			say "     Demented desire quickly coming to fruition, [if hp of player < 1 and player is not submissive]you attempt one last-ditch effort to dissuade the serpentine creature's endeavours, feet planted firmly against the hard-scaled lips of her hungering cunt. You only briefly inconvenience the dragoness before she forcibly straightens you out and thrusts you in, quickly plummeting into her depths[otherwise]you can't help but be a little troubled by the though of exposing yourself to this ominous fate once again, not that she has much regard for your concern by this point, quickly plunging you into her depths[end if].";
			say "     Slippery, supple flesh rapidly embracing your [bodydesc of player] form, you must contend with her familiar, oppressive tightness, hugging against you as she stuffs you ever-deeper into this abyss. Heated snatch resonating across your abused frame, she spares no time to let you adjust to these circumstances before she commences fucking herself with you proper.";
		say "     Pulling and pushing you against her slick, vice-like hole, she ";
		if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
			say "[if FYDTBMM is 0]shows no remorse in tormenting one of her own kind; nay, it makes you all the more effective as a toy for her wanton need[otherwise]exploits her toy's elongated frame to further satisfy her wanton need[end if]";
		otherwise:
			say "[if FYDTBMM is 0]shows no remorse in tormenting you, now relegating to being a mere toy for her wanton need[otherwise]she never relents in tormenting her toy in the name of her wanton need[end if]";
		say ". Her endeavours increasingly arouse you, [if cocks of player is 0 or cunts of player is 0]much in spite your lack of outlet[otherwise if hp of player < 1 and player is not submissive]much in spite your better judgment[otherwise]writhing impotently against these tainted confines[end if], and it's not long before ";
		if lust of player > 33 and (cunts of player > 0 or cocks of player > 0):
			say "you cry out in orgasm, [if cocks of player > 0]your throbbing, sputtering cock[smn][otherwise]your audible bliss[end if] more than enough to bring her over the edge along with you. Your [if FYDTBMM is 0]uncertain[otherwise]inevitable[end if] fate is punctuated by your sudden disappearance, pulled into the depths of her voracious portal in the wake of her climax.";
		otherwise:
			say "she cries out in orgasm, the [if daytimer is night]night[otherwise]day[end if]'s light replaced with an oppressive blackness, pulled into the depths of her voracious portal in the wake of this climax.";
		say "     Such a prison as this, you imagine she could crush you with this grip, pulled deeper with each successive throb, seemingly going on for an eternity before you are finally granted the mercy of her comparatively less overbearing womb, reveling in this relief for but a moment before thought fades from you entirely. Outwardly, [if scalevalue of player > 3]the dragoness would no doubt look somewhat pregnant with your oversized form, though perhaps this serpentine creature perceives this as a mere badge, signifying her[otherwise]your captivity would be imperceivable, further punctuating this dragoness's[end if] physical prowess over you.";
		infect;
		if waiterhater is 0, wait for any key;
		if ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or ("Horny Bastard" is listed in feats of player and a random chance of 1 in 3 succeeds) or a random chance of 1 in 6 succeeds:
			say "     You are gradually roused by the feel of something slick and scaled writhing against your form, given only a moment to realize your occupancy within an egg before the more immediate issue is made clear. Another, much smaller";
			if a random chance of 1 in 2 succeeds and guy is not banned:
				say "yamato dragon is wrapped around you. You can probably guess that you weren't enough for your prior captor and thusly found someone else to keep you company, though whether this is the case or not is a little moot right now. Try to free yourself of him?";
				if player consents:
					let bonus be ( strength of player - 10 ) / 2;
					let target be 14;
					if "Submissive" is listed in feats of player, increase target by 1;
					let dice be a random number from 1 to 20;
					if bonus + dice is greater than target:
						say "     Thankfully, you manage to pry him free of your form, busting out of the egg and fleeing before he can retaliate. Exhausted mess as you are, and it takes you some time to find your things and head back out.";
						infect;
					otherwise:
						say "     It's not enough, his grip on you is vice-like, and it's clear he's not going to leave you be";
						if "Horny Bastard" is listed in feats of player:
							say ". Shifting slightly, you're struck with the realization that your stomach is bloated with the seed of your assailant, empowered by some unholy libido that's compelled him to use you for a fair amount of time now, rendering you quite sore and used.";
						otherwise:
							say ". Loud, irreverent groans elicited from the beast, he's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding his scaled, elongated framed against yours with a lustful determination.";
						say "     Twisted confined filled with the wet sounds of his thrusts, you're eventually met with a beleaguered moan by the beast, hot seed flooding your depths before--thankfully--he collapses from exhaustion, freeing you to break yourself out of these confines. You're a complete, exhausted mess by this point, and it takes you some time to gather your things and head back out.[impregchance] [mimpregchance]";
						infect;
						infect;
				otherwise:
					say "     In spite what better judgement you might have, you oblige the dragon's need";
					if "Horny Bastard" is listed in feats of player:
						say ". Shifting slightly, you're struck with the realization that your stomach is bloated with the seed of this beast, empowered by some unholy libido that's compelled him to use you for a fair amount of time now, doubtlessly rendering you quite sore and used.";
					otherwise:
						say ". Loud, irreverent groans elicited from the beast, he's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding his scaled, elongated framed against yours with a lustful determination.";
					say "     Twisted confined filled with the wet sounds of his thrusts, you're eventually met with a beleaguered moan by the beast, hot seed flooding your depths before he collapses from exhaustion, freeing you to break yourself out of these confines. You're a complete, exhausted mess by this point, and it takes you some time to gather your things and head back out.[impregchance] [mimpregchance]";
					infect;
					infect;
			otherwise:
				say "yamato dragoness is wrapped around you. You can probably guess that you weren't enough for your prior captor and thusly found someone else to keep you company, though whether this is the case or not is a little moot right now. Try to free yourself of her?";
				if player consents:
					let bonus be ( strength of player - 10 ) / 2;
					let target be 14;
					if "Submissive" is listed in feats of player, increase target by 1;
					let dice be a random number from 1 to 20;
					if bonus + dice is greater than target:
						say "     Thankfully, you manage to pry her free of your form, busting out of the egg and fleeing before she can retaliate. Exhausted mess as you are, and it takes you some time to find your things and head back out.";
						infect;
					otherwise:
						say "     It's not enough, her grip on you is vice-like, and it's clear she's not going to leave you be";
						if "Horny Bastard" is listed in feats of player:
							say ". Shifting slightly, her excessive abuse is made clear, [if cocks of player > 0]cock[smn] sore from overuse[otherwise]body sore from the constant grinding of her scaled form[end if], empowered by some unholy libido that's compelled her to use you for a fair amount of time now.";
						otherwise:
							say ". Loud, irreverent groans elicited from the beast, she's rather shameless in her need for relief, in spite of these particularly twisted circumstances, grinding her scaled, elongated framed against yours with a lustful determination.";
						say "     Twisted confined filled with the wet sounds of her thrusts, you're eventually met with a beleaguered moan by the beast, hot honey drenching your groin, before--thankfully--she collapses from exhaustion, freeing you to break yourself out of these confines. You're a complete, exhausted mess by this point, and it takes you some time to gather your things and head back out.";
						infect;
						infect;
				otherwise:
					say "     In spite what better judgement you might have, you oblige the dragoness's need";
					if "Horny Bastard" is listed in feats of player:
						say ". Shifting slightly, her excessive abuse is made clear, [if cocks of player > 0]cock[smn] sore from overuse[otherwise]body sore from the constant grinding of her scaled form[end if], empowered by some unholy libido that's compelled her to use you for a fair amount of time now.";
					otherwise:
						say ". Loud, irreverent groans elicited from the beast, she's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding her scaled, elongated framed against yours with a lustful determination.";
					say "     Twisted confined filled with the wet sounds of her thrusts, you're eventually met with a beleaguered moan by the beast, hot honey drenching your groin, before she collapses from exhaustion, freeing you to break yourself out of these confines. You're a complete, exhausted mess by this point, and it takes you some time to gather your things and head back out.";
					infect;
					infect;
		otherwise:
			say "     You are inevitably roused from your prior slumber, you find yourself within the confines of an egg, compelling yourself to break free of this twisted prison. Exposed to the [if daytimer is night]night[otherwise]daylight[end if] once more, she at least offered the small courtesy of leaving you [if showlocale is true]in the park[otherwise]where you met[end if]. It takes you some time to find your things and return back from whence you came.";
			infect;
	otherwise if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
		if cocks of player > 0 and a random chance of 1 in 2 succeeds:
			say "     Pinning you to the ground with a talon, you feel her lips embrace your [if cockname of player is listed in infections of Internallist]male nethers, coaxing your [cock size desc of player] cock[smn] out into the open air[otherwise][cock size desc of player] cock[smn], driving you to inevitable arousal[end if]. Her satisfaction met, she pulls your [if hp of player > 0]exposed[otherwise]battered[end if] form up into the air with her.";
			say "     '[one of]Such a little thing, I will grant you but a glimpse of what your fate will become[or]So small and flightless you are, feel the open air, as we all do[or]You will feel what only I might offer you[at random].' Her claim an implicit elucidation on your twisted infection, that same infection rushing you with a surge wanton need at the thought of being this great beast's consort.";
			say "     Her larger frame entwined with your own, you can feel her scales grind firmly against you";
			if cocks of player > 2:
				say ". She's intent on having you impale her with your [cock size desc of player] dicks, [if cock length of player > 24]enveloping one within her reptilian vent[otherwise]enveloping two within her reptilian vent[end if] with little difficulty, what remains left exposed to the open air. [if cock length of player < 13]Much in spite your cock's smaller size, her scaled cunt remains infinitely tight, seemingly exacerbated with two engulfed, as they are[otherwise if cock length of player < 25]She's quick to illustrate her capacity to abide your expansive girth by taking two of your rods, though this is very much at your expense, given how tight these confines feel[otherwise]It's clear that she can only take one of your rods--a feat impressive in of itself, though this doesn't change how overwhelmingly tight these confines feel[end if], soft flesh a vice's hold on you.";
			otherwise if cocks of player is 2:
				say ". She's intent on having you impale her with your [cock size desc of player] dicks, [if cock length of player > 24]enveloping one within her reptilian vent with little difficulty, leaving its brother to the open air[otherwise]enveloping the two within her reptilian vent with little difficulty[end if]. [if cock length of player < 10]Much in spite your cock's small size, her scaled cunt remains infinitely tight, seemingly exacerbated with both engulfed, as they are[otherwise if cock length of player < 25]She's quick to illustrate her capacity to abide your expansive girth by taking both your rods, though this is very much at your expense, given how tight these confines feel[otherwise]It's clear that she can only take one of your rods--a feat impressive in of itself, though this doesn't change how overwhelmingly tight these confines feel[end if], soft flesh a vice's hold on you.";
			otherwise:
				say ". She's intent on having you impale her with your [cock size desc of player] dick, enveloping it within her reptilian vent with little difficulty[if cock length of player < 13]. Much in spite your cock's small size, her scaled cunt remains infinitely tight[otherwise if cock length of player > 24]. That she can even take your rod is a feat impressive in of itself, though this doesn't change how overwhelmingly tight these confines feel[end if], soft flesh a vice's hold on you.";
			say "     Chilling wind around you, it is the sole balm to the heat of this dragoness's fiery lust. Her long, winding form easily eclipsing yours; twisted captive to her merciless hole's overwhelming hunger";
			if libido of player > 33:
				say ". It need but be only a moment before you cry out in blissful climax.";
				say "     '[one of]Yes, yes[or]Yes, now[or]More, more[at random]! [one of]Offer yourself unto me[or]Do not relent[or]All that you have will be mine[at random]!' She cries out as you pump her, strained gout after gout, full of your [cum load size of player] load";
				if cocks of player > 2:
					say ", exposed [if cocks of player > 3]cocks firing their load[otherwise if cock length of player > 24]cocks firing their load[otherwise]cock firing its load[end if] impotently across the open air, down to the scenery below";
				otherwise if cocks of player is 2 and cock length of player > 24:
					say ", exposed cock firing its load impotently across the open air, down to the scenery below";
				say ". It's more than enough to compel her own bliss, her powerful form tight as a noose around your beleaguered frame; she intent to squeeze you of every last drop.";
			otherwise:
				say ". It doesn't take long before she cries out in bliss, her powerful form tight as a noose around your beleaguered frame, that you might be brought to climax in her wake.";
				say "     '[one of]Yes, yes[or]Yes, now[or]More, more[at random]! [one of]Offer yourself unto me[or]Do not relent[or]All that you have will be mine[at random]!' She cries out as you pump her, strained gout after gout, full of your [cum load size of player] load";
				if cocks of player > 2:
					say ", exposed [if cocks of player > 3]cocks firing their load[otherwise if cock length of player > 24]cocks firing their load[otherwise]cock firing its load[end if] impotently across the open air, down to the scenery below";
				otherwise if cocks of player is 2 and cock length of player > 24:
					say ", exposed cock firing its load impotently across the open air, down to the scenery below";
				say ". Her exhausting grip never fails to relent until you are squeezed of every last drop.";
			say "Twin fatigue the anchor that pulls you once more to the ground, she finally relinquishes you from her hold, rising once more into the air to depart in silence. Her influence has doubtlessly left an impression on you, though as you gather your things you do imagine that the more literal impression will fade once the soreness subsides.";
		otherwise:
			say "     Grabbing you by your hind leg, you find yourself being dragged into the air, now subjected to the blowing wind in addition to this draconian captor. Exposed before the [if daytimer is day]br[otherwise]n[end if]ight sky, her taloned legs pull you to her scaled snatch, elucidating on your imposed [if hp of player > 0]task[otherwise]punishment[end if]. [if hp of player < 1 and player is not submissive]Reluctantly[otherwise]Obligingly[end if], you offer up your tongue as tribute to the dragoness's impressive cunt, hard scaling parting way to soft flesh, inviting your organ's slick intrusion.";
			say "     '[one of]Yes[or]Ah[or]Mm[at random]... [one of]You will learn your place, whelp[or]You have but a taste of what I offer you[or]This is your natural appointment, under me as you are now[at random].' Her remark is punctuated by the feel of her talon";
			if cocks of player > 0 or cunts of player > 0:
				say "[if cocks of player > 2]s, gripping two of your now-hardening, [cock size desc of player] cocks, a circumstance somewhat unsettling now that her sole hold on you is with your most sensitive organs[otherwise if cocks of player is 2]s, gripping both of your now-hardening, [cock size desc of player] cocks, a circumstance somewhat unsettling now that her sole hold on you is with your most sensitive organs[otherwise if cocks of player is 1]'s grip, latched your now-hardening, [cock size desc of player] cock, the other holding your similarly serpentine torso in place[otherwise if cunts of player > 1]'s grip on your diminutive frame, freeing one to briefly tease one of your similar portals[otherwise]'s grip on your diminutive frame, freeing one to briefly tease your similar portal[end if]. Eclipsing you in size, as she does, you can't help but shudder at the overwhelming sensation of her tongue's reciprocation across [if cocks of player > 1]one of your cock's length[otherwise if cocks of player is 1]the length of your cock[otherwise]your vulnerable surface[end if].";
				say "     Tight, heated vent coaxing a rising fervor, your lips embrace the dragoness's hungry cunt and, in turn, she acts, draconic maw enveloping [if cocks of player > 1]one of your dicks, pumping its exposed brother[otherwise if cocks of player > 0]your dick[otherwise if cunts of player > 1]the one of your own cunts[otherwise if cunts of player > 0]your own cunt[end if]. The victim half of this twisted ouroboros, you";
				if libido of player > 33:
					say "'re quick to offer up a muffled cry of blissful release, your subjugator[if cocks of player > 0]showing no relent in consuming the emergent, [cum load size of player] flood of sexual fluids[otherwise]'s tongue showing no relent in assaulting your stuffed portal[end if], [if cocks of player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[otherwise if cocks of player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[otherwise if cocks of player > 0]milking you of every last drop with a particularly vain greed[otherwise]driving you wild with throes of bliss[end if]. In the wake of this, you feel her talons pull your head firm against her portal, tongue beset by the throbbing of her vent, imposing her bliss on you, and subsequently forcing you to take every drop of her emergent sexual fluids.";
				otherwise:
					say " inevitably feel her talons pull your head firm against her portal, tongue beset by the throbbing of her vent, imposing her bliss on you, and subsequently forcing you to take every drop of her emergent sexual fluids. Shortly, in the wake of this, offer up a muffled cry of blissful release, your subjugator[if cocks of player > 0]showing no relent in consuming the emergent, [cum load size of player] flood of sexual fluids[otherwise]'s tongue showing no relent in assaulting your stuffed portal[end if], [if cocks of player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[otherwise if cocks of player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[otherwise if cocks of player > 0]milking you of every last drop with a particularly vain greed[otherwise]driving you wild with throes of bliss[end if].";
			otherwise if ("less anal" is not listed in feats of player and a random chance of 1 in 2 succeeds) or "more anal" is listed in feats of player:
				say "'s grip on your diminutive frame. Eclipsing you in size, as she does, you can't help but shudder at the overwhelming sensation of her tongue's twisted reciprocation, penetrating your anal ring without remorse, no doubt a torment to your genderless form.";
				say "     Tight, heated vent coaxing a rising fervor, your lips embrace the dragoness's hungry cunt and, in turn, she acts, draconic maw enveloping your anal ring, much to your torment. The victim half of this twisted ouroboros, you inevitably feel her talons pull your head firm against her portal, tongue beset by the throbbing of her vent, imposing her bliss on you, and subsequently forcing you to take every drop of her emergent sexual fluids.";
			otherwise:
				say "'s grip on your diminutive frame. Eclipsing you in size, as she does, you can't help but shudder of her twisted reciprocation, large tongue caressing your genderless crotch, teasing you in the midst of your submissive circumstance.";
				say "     Tight, heated vent coaxing a rising fervor, your lips embrace the dragoness's hungry cunt and, in turn, she continues to torment you with her tongue. The victim half of this twisted ouroboros, you inevitably feel her talons pull your head firm against her portal, tongue beset by the throbbing of her vent, imposing her bliss on you, and subsequently forcing you to take every drop of her emergent sexual fluids.";
			say "     Pulling you free of her, she sets you down on the ground. She floats off, away from you [if cocks of player > 1]and your cum-soiled self[end if], doubtlessly fatigued and lust sated. You gather your things[if cocks of player > 1], clean yourself off,[end if] and depart back from whence you came.";
	otherwise:
		if cocks of player > 0 and a random chance of 1 in 2 succeeds:
			say "     [if hp of player < 1 and player is not submissive]Charged by a surge of rebellion, you attempt to crawl away, only to be grabbed by the dragoness and dragged closer[otherwise]Wanton need clear in her eyes, the dragoness pulls you closer with little regard to your personal comfort[end if]. [if scalevalue of player > 4]Massive as you are, she eclipses even you in size[otherwise if scalevalue of player is 4]Fairly large as you are, she eclipses even you in size by a long shot[otherwise]Her demeanour is somewhat intimidating, given how absolutely massive she is[end if]; regardless, you are forced to watch on as her tongue caresses your exposed, [cock size desc of player] cock[smn], compelling you into arousal[if hp of player > 0 and player is not submissive], much in spite your better judgement[end if].";
			say "     Blatant elucidation of her intent, she moves over you, lengthy, serpentine frame giving way until you're face-to-face with her reptilian vent";
			if FYDM is 0:
				say ". Foreboding portal before you, [if cock length of player < 20]you're not rightly sure how she intends to get anything out of this exchange, there's no way anyone of your size could be reasonably equipped for her. This reality doesn't even cross her mind as[otherwise]you can at least take some small comfort in being at least somewhat well-equipped for her before[end if] she sinks";
				if cock length of player < 25:
					say "[if cocks of player > 2]two of your cocks[otherwise if cocks of player is 2]both of your cocks[otherwise]your cock[end if]";
				otherwise:
					say "[if cocks of player > 2]one of your numerous cocks[otherwise if cocks of player is 2]one of your twin cocks[otherwise]your cock[end if]";
				say " into her folds. Hardened, yellow scales parting way for soft flesh.";
				say "     The dragoness's snatch is unbelievably tight[if cock length of player < 20], a feat seeming otherworldly given your organ's relative size[end if], twisted passage throbbing across every aching inch you offer her. Massive frame pinning you to the earth, you are forced to abide this beast riding you.";
				now FYDM is 1;
			otherwise:
				say ". Familiar, foreboding portal before you, she exploits her twisted property upon your comparatively diminutive self. You are forced to watch on as she carefully sinks";
				if cock length of player < 25:
					say "[if cocks of player > 2]two of your cocks[otherwise if cocks of player is 2]both of your cocks[otherwise]your cock[end if]";
				otherwise:
					say "[if cocks of player > 2]one of your numerous cocks[otherwise if cocks of player is 2]one of your twin cocks[otherwise]your cock[end if]";
				say " into her folds. Hardened, yellow scales parting way for soft flesh.";
				say "     You are granted the small mercy that she is at least mindful not to crush you under her, but that revelation is a poor balm when you must contest with her vice-like grip on you, twisted passage throbbing across every aching inch you offer her. Massive frame pinning you to the earth, you are forced to abide this beast riding you.";
			say "     '[one of]Oh, I love it when they squirm like that[or]You are mine now[or]Give up what is mine, whelp[at random]!' Victim to the ponderous weight of the dragoness's wanton hunger, it takes but a moment before you cry out in orgasm, ";
			if cock length of player < 25:
				say "[if cocks of player > 3]twin dicks unloading their [cum load size of player] load into her, exposed ones staining both your groin and that of the serpent's[otherwise if cocks of player > 2]twin dicks unloading their [cum load size of player] load into her, exposed one staining both your groin and that of the serpent's[otherwise if cocks of player is 2]twin dicks unloading their [cum load size of player] load into her, strained by the serpent's vice-like grip[otherwise]beleaguered dick unloading its [cum load size of player] load into her, strained by the serpent's vice-like grip[end if]";
			otherwise:
				say "[if cocks of player > 2]beleaguered dick unloading its [cum load size of player] load into her, exposed ones staining both your groin and that of the serpent's[otherwise if cocks of player is 2]beleaguered dick unloading its [cum load size of player] load into her, exposed one staining both your groin and that of the serpent's[otherwise]beleaguered dick unloading its [cum load size of player] load into her, strained by the serpent's vice-like grip[end if]";
			say ". Your organ's twisted circumstance is made even worse in the wake of this release as you must then endure the throes of this beast's own bliss, squeezing you until you have naught to offer her.";
			say "     Need sated, you are finally spared of her hold. Circling your exhausted and sore self momentarily, doubtlessly amused, before departing back into the air. It takes you awhile to regain your strength and gather your things, returning back from whence you came.";
		otherwise:
			say "     She grabs a hold of your [if scalevalue of player > 4]massive[otherwise if scalevalue of player is 4]large[otherwise if scalevalue of player < 3]small[end if] frame, vicious talons gripping you, picking you up with little difficulty. The serpentine dragoness having laid down [if showlocale is true]in the park, a feat not particularly easy--at least, not without making a bit of a mess, given her size--[otherwise]before you, her clearly larger size made very apparent by this point[end if], [if hp of player < 1 and player is not submissive]yourself struggling impotently against her hold[otherwise]eyeing you over with a curious expression[end if].";
			say "     She illuminates her plans for you when she sets you back down where her pelvic region resides, yellow-scaled cunt exposed to the open air. [if scalevalue of player < 4 and FYDM is 0]Clearly interested in having you pleasure her, it's not apparent how she expects someone of your size to actually go about and do that; regardless, she pushes you forward against the reptilian vent[otherwise]Twisted vent exposed before you, she urges you closer to it[end if].";
			say "     '[one of]Get to work[or]Hurry up[or]Don't waste my time[at random], [one of]I have little patience for stalling[or]whelp[or]you wouldn't want to test my patience[at random]!' [if hp of player < 1 and player is not submissive]Reluctantly[otherwise]Obligingly[end if]";
			if FYDM is 0:
				say ", you use your hand to test her impressive portal. Surprisingly enough, as you expose yourself to the soft flesh beneath, you find her twisted passage extremely tight in spite its expansive size, almost as though to challenge your intrusion. Empowered with this knowledge, your endeavours become increasingly deliberate in their intent to satisfy this beast.";
				now FYDM is 1;
			otherwise:
				say ", you use your hand to probe her impressive portal. Tough scales parting to expose soft flesh, she offers up no relent in how tight her twisted passage is, gradually building up a rhythm of fingering this beast.";
			say "     Deep, approving moans elicited from your captor, a clear indication of progress, your hands are drenched with her arousal, olfactories flooded with the scent of her wanton sex. Perverse circumstance as this is, [if cocks of player > 0]you are driven erect[otherwise if cunts of player > 0]you are made blatantly aroused[otherwise]you find yourself tormented by an insatiable need[end if], overwhelming heat wafting from her needy cunt. It becomes unbearable, driving you to grind your [if cocks of player > 0]cock[smn][otherwise if cunts of player > 0]own cunt[sfn][otherwise]genital-less crotch[end if] against her coarse scales, slicked by her sexual fluids, and the dragoness's lascivious fervor rising in turn.";
			say "     In due time the serpentine creature cries out in bliss, deceptive vent tightening against your hands as she's wracked in the throes of her orgasm";
			if libido of player > 50 and (cocks of player > 0 or cunts of player > 0):
				say ", more than enough to drive you into a similar release, painting the side of her hole with your own sexual fluids";
			otherwise:
				say ", forcing you to abide her bawdy fury as you're beleaguered frame is doused by her bestial honey";
			say ". It takes but a moment of recovery for her to finally relinquish you of your imposed contract, pulling you free and setting off into the sky once more, leaving you to clean yourself off and gather your things.";
	if YDSF is 0:
		now YDSF is 4;
	otherwise:
		if YDSF < 4, increase YDSF by 1;

to say yamato dragoness desc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise if cocks of player > 0 and cunts of player > 0:
		now sex entry is "Both";
	otherwise if cocks of player > 0:
		now sex entry is "Male";
	otherwise if cunts of player > 0:
		now sex entry is "Female";
	otherwise:
		now sex entry is "nochange";
	now firebreathcount is 0;
	now firebreathready is false;
	say "     [if showlocale is true]Travelling through the park[otherwise]Suddenly[end if], you find yourself beset by a dragoness of eastern myth. Massive and serpentine in frame, airborne in spite of being wingless, her [one of]red[or]blue[or]green[at random] scales and yellow underbelly shimmering in the [if daytimer is night]starlight[otherwise]sunlight[end if]. You instinctively attempt to find cover, but this only encourages her to pursue you on ground, a lascivious hunger agleam in her eyes.";

to say ydskinchange:
	let tempnum be ydcolour;
	now ydcolour is a random number between 0 and 2;
	if ydcolour is tempnum, increase ydcolour by 1;
	if ydcolour is 3, now ydcolour is 0;
	say "you find yourself suddenly forced to abide the growth of large, smooth [if ydcolour is 0]red[otherwise if ydcolour is 1]blue[otherwise if ydcolour is 2]green[end if] scales grow upon your back, smaller, coarser yellow scales quickly adorning your front and underside";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Yamato Dragoness"; [Name of your new Monster]
	now attack entry is "[one of]The oriental dragoness[or]The Yamato Dragoness[or]It[purely at random] [one of]snaps it's neck forward like a snake to bite at you.[or]whips it's tail around, smacking your body off the ground and through the air before landing roughly onto the ground.[or]slams you with one of its talons.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "You successfully manage to fend off the dragoness, whom is forced to float off in retreat.";[ Text or say command used when Monster is defeated.]
	now victory entry is  "[Yamato Dragoness attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[yamato dragoness desc]";[ Description of the creature when you encounter it.]
	now face entry is "distinctly draconic; long-snouted, a pair of curious, lengthy whiskers at its tip, and a stout pair of antlers and a golden mane at the crown, flowing down to your neck"; [ Face description, format as the text "Your face is (your text)."]
	now body entry is "elongated, serpentine with stout, taloned fore and hind limbs and a fin-like, golden mane across its length"; [ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "smooth, [if ydcolour is 0]red[otherwise if ydcolour is 1]blue[otherwise if ydcolour is 2]green[end if]-scaled with a coarse yellow underside adorning your"; [ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "You wield a very long, reptilian tail with an impressive, fin-like mane of golden hair at the end."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "draconic, pink, and ribbed"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you suddenly feel overwhelmed by a sudden change, face elongating into a proud, draconic snout, a pair of very lengthy whiskers sprouting from it's tip. Two short antlers and a mane of golden hair growing from the back of your head."; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you soon double over, frame shifting into something now much more elongated, arms and legs shifting in shape to something much more stout and less equipped to walk around. As you recover, you see that you're quite large, too, though you're likely only a little over two-thirds the size from which this strain originates, and you can't fly--only able to hover with limited efficacy, a golden mane now running across the entire length of your serpentine torso"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "[ydskinchange]"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a lengthy tail sprouts forth from it.  It takes some time to adjust to it, limb adorned in a golden, fin-like mane, culminating in a flattened tuft at the tip."; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you're made curious by an odd tingling feeling. Taking a look, you're shocked to find that your junk has disappeared! After some observation, you find that your dick is now housed in some manner of draconic vent, head-tapered, pink, and quite proudly ribbed thing exposed before you with some coaxing. After coming to terms with this change, you go back to making your next move"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 22;
	now dex entry is 20;
	now sta entry is 20;
	now per entry is 18;
	now int entry is 20;
	now cha entry is 10;
	now sex entry is "nochange"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 90;			[ How many HP has the monster got? ]
	now lev entry is 9;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 20;			[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 15;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 24;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 15;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "dragon hair";			[ Loot monster drops, ]
	now lootchance entry is 40;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 5;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]serpentine[or]flexible[or]strong[at random]";
	now type entry is "draconic";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath";	[ Row used to designate any special combat features, "default" for standard combat. ]

[ Edit this to have the correct Name as wall]
Yamato Dragoness For FS ends here.
