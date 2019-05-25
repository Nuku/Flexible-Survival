Version 5 of Yamato Dragoness by Blue Bishop begins here.
[ Version 5 - Player victory - Blue Bishop]
[- Originally Authored By: Kohryu -]

"Adds a Yamato Dragoness to Flexible Survival's Wandering Monsters table, with impreg chance"
[Description text for this Extension.]

Section 1 - Creature Responses

when play begins:
	add { "Yamato Dragoness" } to infections of FemaleList;

YDSF is a number that varies. [Yamato Dragon Succumb Fate]
FYDTBMM is a number that varies. [Female Yamato Dragon TBM Memory]
FYDM is a number that varies. [Female Yamato Dragon Memory]

to say Yamato Dragoness vic:
	if HP of Player > 0:
		say "     You ultimately choose to surrender yourself to the serpentine dragoness's mercy, dropping what you were carrying and offering yourself freely. When it's clear that this isn't some trick she pulls closer, a mouthless voice flooding your hearing.";
	else:
		say "     Overwhelmed by this massive dragoness, you're grabbed by her teeth, tearing you free of what attire you might have worn and slamming you against the dirt. Head spinning and too exhausted to contest her will, you feel her talons further expose you before herself, a mouthless voice flooding your hearing.";
	if vorelevel is 3 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):
		if HP of Player > 0:
			say "     '[one of]Oh, such an obliging little morsel[or]Ha, my meal delivers itself to me[or]I hunger[at random]...' Given little time to reconsider your circumstance, the dragoness grabs you and pulls you close to her maw.";
		else:
			say "     '[one of]Oh, it's fun when my meal struggles[or]You've only succeeded in making yourself all the more tender for my tastes[or]Oh, what an impudent little morsel[at random]!' Briefly taunting you, you're given little chance to escape before the serpentine creature grabs a hold of you, pulling you close to her maw.";
		if bodytype of Player is "Yamato Dragon" or bodytype of Player is "Yamato Dragoness":
			say "     Seemingly fine with consuming one of her own kin";
		else:
			say "     [if scalevalue of Player > 4]Much larger than you in spite of your size[else]The absolutely massive beast towering before your sight[end if]";
		say ", you're awash in a wave of the monster's hot breath as her scaled maw widens, exposing her sharp teeth and pink tongue to you. Eager to slather you in the slick appendages affection, she only revels in this ceremony for a few brief seconds before you find yourself tumbling downwards, into the dragoness's dark abyss.";
		say "     Quickly embraced on all sides by her supple flesh, her powerful muscles squeeze around your[if scalevalue of Player < 4] tiny,[end if] [bodytype of Player] form, plunging you further into her warm, pulsing depths. Almost made dizzy by her heaving flesh, she makes short work of your[if scalevalue of Player > 3] impressive[end if] form, plunging you into slick and churning confines of her stomach.";
		say "     Taking a moment to recover from the ordeal, you quickly begin to feel your confines drain you of your strength. You don't imagine you'll last long in here, [one of]especially since you get the impression that your trip through the serpentine creature has only begun[or]made worse by the prospect of being plunged even deeper into the serpentine creature's many faculties[stopping]...";
		now boundmod is 1;
		wait for any key;
		YamatFvore;
	else:
		if HP of Player > 0:
			say "     '[one of]Very wise to back down, little one, lest you make a fool of yourself[or]You are not as foolish a little thing as I had expected. Very well[or]I see your need is just as great as mine[at random].' In the wake of her remark she demands that you free yourself of any other attire you might have on, forced to oblige, else she tear them free of you.";
		else:
			say "     '[one of]Impudent little whelp, you are now mine[or]It amuses me that you thought you could contest my will[or]Know your place, little thing[or]Such gall, you will suffer from more than defeat[at random]!' Taunting you, as she does, it's very clear that you're now at the mercy of this impressive, serpentine creature.";
		if "Touched by Madness" is listed in feats of Player and ((player is kinky and a random chance of 1 in 2 succeeds) or (player is not kinky and a random chance of 1 in 4 succeeds)):
			if FYDTBMM is 0:
				say "     As she's about to set herself upon you, the dragoness finds herself struck by an otherworldly notion, seemingly interrupting whatever she was planning for you. For a few brief moments she appears conflicted, before she looks at you with an almost insane glare, apparently inspired by some new plan for you.";
				say "     'N-no... What you offer is not enough, I must have all of you!' Wanton need reignited by this twisted plot, the creature pulls you into the air, ";
				if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
					say "similarly serpentine form exposed before her";
				else:
					say "[bodytype of Player] form exposed before her";
				say ". Rolling her rear half against the earth so she can expose her draconic vent, it's already made slick through blatant arousal, bringing you close before gradually forcing you down on the eager portal rear-first.";
				say "     Clearly intending to consume you, [if HP of Player < 1 and player is not submissive]you immediately fight to resist, feet planted firmly against the hard-scaled lips of her hungering cunt. You only briefly inconvenience the dragoness, however, before you slip on her slick honey, quickly plunging yourself into her depths[else]you can't help but be a little troubled by twisted fate, not that the dragoness has much regard for your feelings on the matter, quickly plunging you into her slick depths[end if].";
				say "     Slippery, supple inner-flesh rapidly embracing your [bodydesc of Player] form, you're quickly forced to endure to her oppressive tightness, hugging firmly against you as she stuffs you ever-deeper into her throbbing abyss. Notably, [if scalevalue of Player > 4]she seems to have little difficulty in handling your massive body[else if scalevalue of Player is 4]she seems to have little difficulty in handling your rather large body[else]she appears innately adept at this demented game[end if]; however, she does not engulf you entirely yet, instead seemingly intent on using you for her sexual gratification first.";
				now FYDTBMM is 1;
			else:
				say "     The way she looks as you, it's made very clear what twisted fate this massive beast has planned for you. [if HP of Player < 1 and player is not submissive]Not wanting to subject yourself to that ordeal all over again, you try to get up and run, but you're too weak to flee her and, doubtlessly amused by your struggle, follows you in tow[else]Tainted hunger-streaked grin emerging from her lips, you feel somewhat sheepish regarding the dragoness's devious plans, who's clearly excited for it to go underway[end if].";
				say "     '[one of]Yes, yes[or]Oh, yes[or]Good[at random], [one of]ALL of you will be mine[or]your body will suffice[or]you will know my embrace[or]I beg you to squirm, whelp[or]there is no escape now[at random]!' Wanton need twisted by an insane desperation, she plucks you from the ground, ";
				if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
					say "similarly serpentine form exposed before her";
				else:
					say "[bodytype of Player] form exposed before her";
				say ". Rolling her rear half against the earth so she can expose her draconic vent, it's already made slick through blatant arousal, bringing you close before gradually forcing you down on the eager portal rear-first.";
				say "     Eager to begin consuming you, [if HP of Player < 1 and player is not submissive]you immediately fight to resist, feet planted firmly against the hard-scaled lips of her hungering cunt. You only briefly inconvenience the dragoness, however, before [one of]she forcibly straightens you out and thrusts you in, quickly plummeting[or]you slip on her slick honey, quickly plunging yourself[at random] into her depths[else]you can't help but be a little troubled by being subjected to this twisted fate again, not that the dragoness has much regard for your feelings on the matter, quickly plunging you into her slick depths[end if].";
				say "     Slippery, supple inner-flesh rapidly embracing your [bodydesc of Player] form, you're quickly forced to endure to her familiar, oppressive tightness, hugging firmly against you as she stuffs you ever-deeper into her throbbing abyss. Heated snatch wafting up against your abused frame, she spares no time to let you adjust to these circumstances before she commences fucking herself with you proper.";
			say "     Pulling and pushing you against her slick, vice-like hole, she ";
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "[if FYDTBMM is 0]shows no remorse in tormenting one of her own kind; on the contrary, it seems to make you all the more effective as her twisted toy[else]exploits her toy's elongated frame to further satisfy her twisted hunger[end if]";
			else:
				say "[if FYDTBMM is 0]shows no remorse in tormenting you, now relegating to being a mere toy for her twisted hunger[else]never relents in tormenting her toy in the name of her twisted hunger[end if]";
			say ". These persisting motions quickly arousing you, [if Player is neuter]much in spite your lack of outlet[else if HP of Player < 1 and player is not submissive]much in spite your better judgment[else]writhing impotently against these tainted confines[end if], it's not long before ";
			if lust of Player > 33 and (player is not neuter):
				say "you cry out in orgasm, [if Player is male]your throbbing, sputtering cock[smn][else]your audible climax[end if] more than enough to bring her over the edge along with you. The [if daytimer is night]night's[else]day's[end if] light replaced with an oppressive blackness, your [if FYDTBMM is 0]uncertain[else]inevitable[end if] fate is punctuated by your sudden disappearance, pulled into the depths of her voracious portal in the wake of her bliss.";
			else:
				say "finally she cries out in orgasm, the [if daytimer is night]night's[else]day's[end if] light replaced with an oppressive blackness, pulled into the depths of her voracious portal in the wake of this bliss.";
			say "     Such a prison as this, you imagine she could crush you with this grip, pulled deeper with each successive throb, seemingly going on for an eternity before you're finally granted the mercy of her comparatively less overbearing womb, only given a few seconds to appreciate the relief before thought fades from you entirely. Outwardly, [if scalevalue of Player > 3]the dragoness would no doubt look somewhat pregnant with your impressive form, though perhaps this serpentine creature perceives this as a mere trophy, signifying her[else]your captivity would be imperceivable, further punctuating this dragoness's[end if] complete and utter dominance over you.";
			infect;
			WaitLineBreak;
			if (player is kinky and a random chance of 1 in 3 succeeds) or ("Horny Bastard" is listed in feats of Player and a random chance of 1 in 3 succeeds) or a random chance of 1 in 6 succeeds:
				say "     You're gradually roused from unconsciousness by the feel of something slick and scaled writhing against your [bodytype of Player] form. Quickly realizing you're walled off within the translucent confines of an egg, the immediate and much more apparent issue is quickly brought to your attention. Another, much closer to your size, ";
				if a random chance of 1 in 2 succeeds and MaleList is not banned:
					say "dragon is wrapped around you. You can only assume that you weren't enough to satisfy your captor's mad need and left you another victim to keep you company. You can feel your body having long been impaled by his throbbing, ever-hard dick. Try to free yourself of him?";
					if Player consents:
						let bonus be ( strength of Player - 10 ) / 2;
						let target be 14;
						if Player is submissive, increase target by 1;
						let dice be a random number from 1 to 20;
						if bonus + dice > target:
							say "     Thankfully, you manage to pry the serpentine creature free of your form, soon breaking out of the egg and fleeing before he can crawl after you. Exhausted mess as you are, and it takes you some time to find your things and head back out from where you came.";
						else:
							say "     It's not enough, the serpentine creature's grip on you is vice-like, and it's clear he's not going to leave you be";
							if "Horny Bastard" is listed in feats of Player:
								say ". Shifting slightly against this tight prison, you quickly realize how sore and bloated your stomach is from the other occupant's seed, empowered by some unholy libido that's been compelling him to use you for a fair amount of time now.";
							else:
								say ". Loud, irreverent groans escaping the beast's scaled lips, he's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding his coarse, elongated frame against yours with a blind determination.";
							say "     Twisted, heated confines filled with the wet sounds of his persisting motion, you're eventually met with a long, exhausted groan by the creature, hot seed flooding your depths before he - finally - goes limp, spent, and loosens up his hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to find your things and head back from where you came.[impregchance][mimpregchance][line break]";
							infect;
					else:
						say "     In spite what better judgment you might have, you oblige the serpentine creature's need";
						if "Horny Bastard" is listed in feats of Player:
							say ". Shifting slightly against this tight prison, you quickly realize how sore and bloated your stomach is from the other occupant's seed, empowered by some unholy libido that's been compelling him to use you for a fair amount of time now.";
						else:
							say ". Loud, irreverent groans escaping the beast's scaled lips, he's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding his coarse, elongated frame against yours with a blind determination.";
						say "     Twisted, heated confines filled with the wet sounds of his persisting motion, you're eventually met with a long, exhausted groan by the creature, hot seed flooding your depths before he - finally - goes limp, spent, and loosens up his hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to find your things and head back from where you came.[impregchance][mimpregchance][line break]";
						infect;
				else:
					say "dragoness is wrapped around you. You can only assume that you weren't enough to satisfy your captor's mad need and left you another victim to keep you company. [if Cock Count of Player > 1]You feel blatantly hard, forcibly impaling her with one of your cocks[else if Cock Count of Player is 1]You feel blatantly hard, forcibly impaling her with your cock[else]Having nothing to impale herself with, she shows no restraint in grinding her rough form against you[end if]. Try to free yourself of her?";
					if Player consents:
						let bonus be ( strength of Player - 10 ) / 2;
						let target be 14;
						if Player is submissive, increase target by 1;
						let dice be a random number from 1 to 20;
						if bonus + dice > target:
							say "     Thankfully, you manage to pry the serpentine creature free of your form, soon breaking out of the egg and fleeing before he can crawl after you. Exhausted mess as you are, and it takes you some time to find your things and head back out from where you came.";
						else:
							say "     It's not enough, the serpentine creature's grip on you is vice-like, and it's clear he's not going to leave you be";
							if "Horny Bastard" is listed in feats of Player:
								say ". Shifting slightly against this tight prison, you quickly realize how sore and used you are, [if Player is male]cock[smn] strained by overuse[else]body strained from the constant grinding of her scaled form[end if], empowered by some unholy libido that's been compelling her to use you for a fair amount of time now.";
							else:
								say ". Loud, irreverent groans escaping the beast's lips, she's rather shameless in her need for relief, in spite of these particularly twisted circumstances, grinding her scaled, elongated frame against yours with a blind determination.";
							say "     Twisted, heated confines filled with the wet sounds of her persisting motion, you're eventually met with a long, exhausted groan by the creature, hot honey drenching your groin, before she - finally - goes limp, spent, and loosens up her hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to gather your things and head back out from where you came.";
							infect;
					else:
						say "     In spite what better judgment you might have, you oblige the serpentine creature's need";
						if "Horny Bastard" is listed in feats of Player:
							say ". Shifting slightly against this tight prison, you quickly realize how sore and used you are, [if Player is male]cock[smn] strained by overuse[else]body strained from the constant grinding of her scaled form[end if], empowered by some unholy libido that's been compelling her to use you for a fair amount of time now.";
						else:
							say ". Loud, irreverent groans escaping the beast's lips, she's rather shameless in her need for relief, in spite of these particularly twisted circumstances, grinding her scaled, elongated frame against yours with a blind determination.";
						say "     Twisted, heated confines filled with the wet sounds of her persisting motion, you're eventually met with a long, exhausted groan by the creature, hot honey drenching your groin, before she - finally - goes limp, spent, and loosens up her hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to gather your things and head back out from where you came.";
						infect;
			else:
				say "     You're gradually roused back from unconsciousness, quickly finding yourself trapped within the tight, translucent confines of an egg, compelling yourself to break free of this hot, moist prison. Exposed to the dry, [if daytimer is night]night[else]day[end if]time air once more, she at least offered the small courtesy of leaving you [if showlocale is true]in the park[else]where you first met[end if]. It takes you some time to find your things and return back from whence you came.";
		else if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
			if Player is male and a random chance of 1 in 2 succeeds:
				say "     Pinning you to the ground with a talon, you feel her scaled lips encircle your [if Player is internal]crotch, coaxing your [cock size desc of Player] cock[smn] out into the open air[else][cock size desc of Player] cock[smn], coaxing you into becoming fully hard[end if]. Satisfied with your preparation, she pulls your [if HP of Player > 0]exposed[else]battered[end if] form up into the air with her.";
				say "     '[one of]Such a little thing, I will grant you but a glimpse of your inevitable fate[or]So small and flightless you are, feel the open sky, as we all do[or]You will feel what only I might offer you[at random].' Drawing attention to your shared infection, her influence floods you with a rush of uncontrollable, tainted excitement at the notion of being great beast's consort.";
				say "     Her larger frame soon entwining itself with your own, you can feel the dragoness's scales grind firmly against you";
				if Cock Count of Player > 2:
					say ". She's intent on having you impale her with your [cock size desc of Player] dicks, lining yourself up [if Cock Length of Player > 24]enveloping one within her reptilian vent[else]enveloping two within her reptilian vent[end if] with little difficulty, brother[if Cock Count of Player > 3]s[else if Cock Length of Player > 24 and Cock Count of Player is 3]s[end if] left exposed to the open air";
					if FYDM is 0:
						say ". [if Cock Length of Player < 10]Much in spite your cock's small size, she seems to command a power that makes her scaled cunt overwhelmingly tight, further intensified by having two engulfed[else if Cock Length of Player < 25]She's quick to flaunt her now-apparent ability to take your expansive girth by enveloping the two, even as these almost otherworldly tight confines put a strain on your cocks[else]It's clear that she can only take one of your cocks - an impressive feat in of itself given its sheer size - though this doesn't change how overwhelmingly, almost excessively tight these confines feel[end if]";
					else:
						say ". [if Cock Length of Player < 10]Much in spite your cock's small size, her scaled cunt remains infinitely tight, further intensified by having two engulfed[else if Cock Length of Player < 25]She's quick to flaunt her ability to take your expansive girth by enveloping the two, even as these very tight confines put a strain on your cocks[else]It's clear that she can only take one of your cocks - an impressive feat in of itself given its sheer size - though this doesn't change how overwhelmingly tight these confines feel[end if]";
					say ", supple flesh a vice's hold on you.";
				else if Cock Count of Player is 2:
					say ". She's intent on having you impale her with your [cock size desc of Player] dicks, lining yourself up and [if Cock Length of Player > 24]enveloping one within her reptilian vent with little difficulty, leaving its brother to the open air[else]enveloping the two within her reptilian vent with little difficulty[end if]";
					if FYDM is 0:
						say ". [if Cock Length of Player < 10]Much in spite your cock's small size, she seems to command a power that makes her scaled cunt overwhelmingly tight, further intensified by having both engulfed[else if Cock Length of Player < 25]She's quick to flaunt her now-apparent ability to take your expansive girth by enveloping both, even as these almost otherworldly tight confines put a strain on your cocks[else]It's clear that she can only take one of your cocks - an impressive feat in of itself given its sheer size - though this doesn't change how overwhelmingly, almost excessively tight these confines feel[end if]";
					else:
						say ". [if Cock Length of Player < 10]Much in spite your cock's small size, her scaled cunt remains infinitely tight, further intensified by having both engulfed[else if Cock Length of Player < 25]She's quick to flaunt her ability to take your expansive girth by enveloping the two, even as these very tight confines put a strain on your cocks[else]It's clear that she can only take one of your cocks - an impressive feat in of itself given its sheer size - though this doesn't change how overwhelmingly tight these confines feel[end if]";
					say ", supple flesh a vice's hold on you.";
				else:
					say ". She's intent on having you impale her with your [cock size desc of Player] dick, lining yourself up and enveloping it within her reptilian vent with little difficulty";
					if FYDM is 0:
						say ". [if Cock Length of Player < 13]Much in spite your cock's small size, she seems to command a power that makes her scaled cunt overwhelmingly tight[else if Cock Length of Player < 25]Though you imagine you'd at least be a somewhat reasonable fit for her, she seems to command a power that makes her scaled cunt overwhelmingly tight[else]That she can even take your rod is a feat impressive in of itself, though this doesn't change how overwhelmingly, almost excessively tight these confines feel[end if]";
					else:
						say ". [if Cock Length of Player < 13]Much in spite your cock's small size, her scaled cunt remains infinitely tight[else if Cock Length of Player < 25]Though you imagine you'd at least be a somewhat reasonable fit for her, her scaled cunt remains infinitely tight[else]That she can even take your rod is a feat impressive in of itself, though this doesn't change how overwhelmingly tight these confines feel[end if]";
					say ", supple flesh a vice's hold on you.";
				say "     Chilling wind lashing against you, it does little to cool the heat of this dragoness's fiery need. Her long, winding form easily eclipsing yours, you're nothing more than a twisted captive to her merciless hole's overwhelming hunger";
				if Libido of Player > 33:
					say ". The whole ordeal is more than enough to make you quickly reach your climax.";
					say "     '[one of]Yes, yes[or]Yes, now[or]More, more[at random]! [one of]Offer yourself unto me[or]Do not relent[or]All that you have will be mine[at random]!' she cries out as you pump into her, strained gout after gout, full with your [Cum Load Size of Player] load";
					if Cock Count of Player > 2 or (Cock Count of Player is 2 and Cock Length of Player > 24):
						say ", exposed dick[if Cock Count of Player > 3]s[else if Cock Count of Player is 3 and Cock Length of Player > 24]s[end if] wasting your seed impotently across the open air, down to the trees below";
					say ". It's more than enough to set her off as well, powerful form tight as a noose around your quickly spent frame, intent on squeezing you dry of every last drop.";
				else:
					say ". It seems like an eternity before she finally roars out in bliss, her powerful form tight as a noose around your exhausted frame, intent on squeezing you into climaxing.";
					say "     '[one of]Yes, yes[or]Yes, now[or]More, more[at random]! [one of]Offer yourself unto me[or]Do not relent[or]All that you have will be mine[at random]!' she cries out as you're forced into orgasm, pumping her, strained gout after gout, full with your [Cum Load Size of Player] load";
					if Cock Count of Player > 2 or (Cock Count of Player is 2 and Cock Length of Player > 24):
						say ", exposed dick[if Cock Count of Player > 3]s[else if Cock Count of Player is 3 and Cock Length of Player > 24]s[end if] wasting your seed impotently across the open air, down to the trees below";
					say ". Her overwhelming grip is relentless until you're milked dry of every last drop.";
				say "     Shared fatigue the anchor that pulls you once more to the ground, she finally frees you from her grip, slowly rising once more into the air to depart in silence. Gradually catching your breath, you're left to gradually recover from the creature's powerful influence, [if Cock Length of Player < 24 and FYDM is 0]checking over your exceedingly sore cock[smn] to find that they seem slightly enlarged from the ordeal, though you're not rightly sure if it'll have any lingering effects[else if Cock Length of Player < 24]checking over your exceedingly sore cock[smn] to see that it does indeed appear larger from the ordeal..[run paragraph on][else]your oversized cock[smn] feeling extremely sore from the ordeal[end if].";
				if FYDM is 0, now FYDM is 1;
				if "Modest Organs" is not listed in feats of Player and Cock Length of Player < 24:
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cock length change detected! Allow?";
						if Player consents:
							if Cock Length of Player < 18:
								increase Cock Length of Player by 2;
							else:
								increase Cock Length of Player by 1;
							follow the cock descr rule;
							say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
						else:
							say "     It looks like you recover to their original size after treating it.";
					else:
						if Cock Length of Player < 18:
							increase Cock Length of Player by 2;
						else:
							increase Cock Length of Player by 1;
						follow the cock descr rule;
						say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
			else:
				say "     Grabbing you by your hind leg, you find yourself being dragged into the air, now subjected to the blowing wind along your ascent. Exposed before the [if daytimer is night]n[else]br[end if]ight sky, her taloned legs pull your head to her scaled snatch, revealing your imposed [if HP of Player > 0 or player is submissive]task. Obligingly[else]punishment. Reluctantly[end if], your tongue caresses along its coarse lips, had scaling gradually parting way to reveal her soft flesh, inviting your writhing organ's slick touch.";
				say "     '[one of]Yes[or]Ah[or]Mm[at random]... [one of]You will learn your place, whelp[or]You have but a taste of what I offer you[or]This is your natural appointment, under me as you are now[at random].' Her remark is punctuated by the feel of her talon";
				if Player is not neuter:
					say "[if Cock Count of Player > 2]s, gripping two of your now-hardening, [cock size desc of Player] cocks, putting you in an even more vulnerable position now that her sole hold on you is by your most sensitive organs[else if Cock Count of Player is 2]s, gripping both of your now-hardening, [cock size desc of Player] cocks, putting you in an even more vulnerable position now that her sole hold on you is by your most sensitive organs[else if Cock Count of Player is 1]'s grip, latched onto your now-hardening, [cock size desc of Player] cock, the other holding your similarly serpentine torso in place[else if Cunt Count of Player > 1]'s grip on your diminutive frame, freeing one to briefly tease one of your exposed portals[else]'s grip on your diminutive frame, freeing one to briefly tease your exposed portal[end if]. Eclipsing you in size, you can't help but shudder at the overwhelming sensation of her own tongue's reciprocation across [if Cock Count of Player > 1]one of your cock's length[else if Cock Count of Player is 1]the length of your cock[else]your [bodytype of Player] form[end if].";
					say "     Tight, heated vent inviting you to continue, your lips embrace the dragoness's hungry cunt and, in turn, she rewards your attendance with her own, draconic maw embracing [if Cock Count of Player > 1]one of your dicks, pumping its exposed brother[else if Player is male]your dick[else if Cunt Count of Player > 1]the one of your own cunts[else if Player is female]your own cunt[end if]. The victim half of this twisted ouroboros, ";
					If Libido of Player > 33:
						say "a muffled cry is quickly forced from your stuffed lips in blissful release, your subjugator[if Player is male] showing no relent in swallowing down your gushing, [Cum Load Size of Player] flood of sexual fluids[else]'s tongue showing no relent in pounding your gushing pussy[end if], [if Cock Count of Player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your unengulfed cocks[else if Cock Count of Player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your unengulfed cock[else if Player is male]greedily milking you of every last drop[else]driving you wild in throes of ecstasy[end if]. In the wake of this, you feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey.";
					else:
						say "you eventually feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey. Shortly, in the wake of this, a muffled cry is forced from your stuffed lips in blissful release, your subjugator[if Player is male]showing no relent in consuming your gushing, [Cum Load Size of Player] flood of sexual fluids[else]'s tongue showing no relent in assaulting your stuffed pussy[end if], [if Cock Count of Player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[else if Cock Count of Player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[else if Player is male]milking you of every last drop[else]driving you wild in the throes of bliss[end if].";
				else if (anallevel > 1 and a random chance of 1 in 2 succeeds) or anallevel is 3:
					say "'s grip on your diminutive frame. Eclipsing you in size, as she does, you can't help but shudder at the overwhelming sensation of her tongue's twisted reciprocation, penetrating your anal ring without remorse, no doubt a torment to your genderless form.";
					say "     Tight, heated vent inviting you to continue, your lips embrace the dragoness's hungry cunt and, in turn, she rewards your attendance with her own, draconic maw enveloping your anal ring, causing you to writhe in insatiable need. The [if HP of Player < 1 and player is not submissive]victim[else]smaller[end if] half of this twisted ouroboros, you eventually feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey.";
				else:
					say "'s grip on your diminutive frame. Eclipsing you in size, as she does, you can't help but shudder in the wake of her twisted reciprocation, large tongue caressing your genderless crotch, teasing you in the midst of your submissive task.";
					say "     Tight, heated vent inviting you to continue, your lips embrace the dragoness's hungry cunt and, in turn, she rewards your attendance by continuing to tease you, causing you to writhe in insatiable need. The [if HP of Player < 1 and player is not submissive]victim[else]smaller[end if] half of this twisted ouroboros, you eventually feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey.";
				say "     After a few moments, she finally wrenches you free of her, setting you down on the ground by your tail. Satisfied, she grins at you for a moment before silently floating off, away from you[if Cock Count of Player > 1] and your cum-soiled self[end if], doubtlessly fatigued and lust sated. You gather your things[if Cock Count of Player > 1], clean yourself off,[end if] and depart back from whence you came.";
		else:
			if Player is male and a random chance of 1 in 2 succeeds:
				say "     [if HP of Player < 1 and player is not submissive]Charged by a surge of rebellion, you make one final attempt to crawl away, only to be grabbed by the dragoness and dragged closer[else]Tainted need clear in her eyes, the dragoness shows no restraint in pulling you closer to her[end if]. [if scalevalue of Player > 4]Massive as you are, [one of]it's clear[or]you're reminded[stopping] that she eclipses even you in size[else if scalevalue of Player is 4]Fairly large as you are, [one of]it's clear[or]you're reminded[stopping] that she's much, much larger than you[else]Her appearance is somewhat intimidating, given how absolutely massive she is[end if]; regardless, you're forced to watch on as her scaled snout descends on you, tongue emerging to caress your [if Player is internal]crotch, coaxing your [cock size desc of Player] cock[smn] out into the open air[else]exposed, [cock size desc of Player] cock[smn], coaxing you into becoming fully hard[end if][if HP of Player > 0 and player is not submissive], in spite of your better judgment[end if].";
				say "     Blatantly revealing her plans for you, she slowly begins to shift over, lengthy, serpentine frame giving way until the creature's reptilian vent is exposed before you";
				if FYDM is 0:
					say ". Patiently lining herself up with you, [if Cock Length of Player < 20]you're not rightly sure how she intends to get anything out of this exchange, there's no way anyone of your size could be reasonably equipped for this monster. This reality never seems to cross her mind as[else]you imagine it must be uncommon for the monster to encounter someone as well-endowed as you are, clearly eager to get things going as[end if] she sinks ";
					if Cock Length of Player < 25:
						say "[if Cock Count of Player > 2]two of your cocks[else if Cock Count of Player is 2]both of your cocks[else]your cock[end if]";
					else:
						say "[if Cock Count of Player > 2]one of your numerous cocks[else if Cock Count of Player is 2]one of your twin cocks[else]your cock[end if]";
					say " past her folds. Hardened, yellow scales parting to expose your touch to her soft inner-flesh.";
					say "     The dragoness's hole reveals itself to be unbelievably tight[if Cock Length of Player < 20], a feat almost otherworldly given your organ's relative size[end if], powerful passage throbbing across every aching inch you offer her. Massive frame pinning you to the earth, you're forced to endure a portion of the creature's weight as she begins to ride you.";
				else:
					say ". Familiar, foreboding snach exposed, she clearly eager to exploit her twisted ability upon her little [if HP of Player > 0]toy[else]victim[end if]. You're forced to watch on as she carefully lines herself up before sinking ";
					if Cock Length of Player < 25:
						say "[if Cock Count of Player > 2]two of your cocks[else if Cock Count of Player is 2]both of your cocks[else]your cock[end if]";
					else:
						say "[if Cock Count of Player > 2]one of your numerous cocks[else if Cock Count of Player is 2]one of your twin cocks[else]your cock[end if]";
					say " past her folds. Hardened, yellow scales parting to expose your touch to her soft inner-flesh.";
					say "     The giant creature is at least mindful enough not to crush you under her weight as she pins you to the ground, but that's a small mercy compared to her vice-like grip on your quickly strained organ[if Cock Count of Player > 1 and Cock Length of Player < 25]s[end if], twisted passage throbbing across every aching inch you offer her, slowly beginning to ride against you.";
				say "     '[one of]Oh, I love it when they squirm like that[or]You are mine now[or]Give up what is mine, whelp[at random]!' Drowning in a sea of heat radiating from the dragoness, your [if scalevalue of Player > 3]crotch[else]lower half[end if] quickly drenched in her tainted honey, the sheer power of her influence is more that enough to easily force an orgasm from you, ";
				if Cock Length of Player < 25:
					say "[if Cock Count of Player > 3]twin, strained dicks unloading their [Cum Load Size of Player] load into her, exposed ones quickly making a mess of the both of you[else if Cock Count of Player > 2]twin, strained dicks unloading their [Cum Load Size of Player] load into her, exposed one quickly making a mess of the both of you[else if Cock Count of Player is 2]twin dicks unloading their [Cum Load Size of Player] load into her, strained by the serpent's overwhelming grip[else]dick unloading its [Cum Load Size of Player] load into her, strained by the serpent's overwhelming grip[end if].";
				else:
					say "[if Cock Count of Player > 2]strained dick unloading its [Cum Load Size of Player] load into her, exposed ones quickly making a mess of the both of you[else if Cock Count of Player is 2]strained dick unloading its [Cum Load Size of Player] load into her, exposed one quickly making a mess of the both of you[else] dick unloading its [Cum Load Size of Player] load into her, strained by the serpent's overwhelming grip[end if].";
				say "     Your organ[if Cock Count of Player > 1 and Cock Length of Player < 25]s'[else]'s[end if] tight prison is quickly puts even more of a strain on you as you're forced to endure the throes of the monster's own bliss, triggered, no doubt, by yours. Roaring out loudly as her body grinds you ever more firmly against the earth, she squeezes you dry of every last drop you can offer her.";
				say "     The beast's need finally sated, she eventually stops pinning you down as she pulls free of you. Slowly circling around your exhausted self, the grinning dragoness is doubtlessly amused by you, eventually departing back into the air in silence. Gradually catching your breath, you're left to recover from the creature's powerful influence, [if Cock Length of Player < 24 and FYDM is 0]checking over your exceedingly sore cock[smn] to find that they seem slightly enlarged from the ordeal, though you're not rightly sure if it'll have any lingering effects[else if Cock Length of Player < 24]checking over your exceedingly sore cock[smn] to see that it does indeed appear larger from the ordeal..[run paragraph on][else]your oversized cock[smn] feeling extremely sore from the ordeal[end if].";
				if FYDM is 0, now FYDM is 1;
				if "Modest Organs" is not listed in feats of Player and Cock Length of Player < 24:
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cock length change detected! Allow?";
						if Player consents:
							if Cock Length of Player < 18:
								increase Cock Length of Player by 2;
							else:
								increase Cock Length of Player by 1;
							follow the cock descr rule;
							say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
						else:
							say "     It looks like you recover to their original size after treating it.";
					else:
						if Cock Length of Player < 18:
							increase Cock Length of Player by 2;
						else:
							increase Cock Length of Player by 1;
						follow the cock descr rule;
						say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
			else:
				say "     She grabs a hold of your [if scalevalue of Player > 4]massive[else if scalevalue of Player is 4]large[else if scalevalue of Player < 4]small[end if], [bodytype of Player] body, vicious talons encircling you, before pulling you into the air with little difficulty. The serpentine dragoness having laid down [if showlocale is true]in the park, a feat not particularly easy - at least, not without making a bit of a mess, given her size -[else]before you, ground trembling with the massive beast's landing[end if] as [if HP of Player < 1 and player is not submissive]you struggle impotently against her hold[else]she eyes you with a curious expression[end if].";
				say "     She illuminates her plans for you when she sets you back down where her pelvic region resides, yellow-scaled cunt exposed to the open air. [if scalevalue of Player < 4 and FYDM is 0]Clearly interested in having you pleasure her, it's not apparent how she expects someone of your size to actually go about and do that; regardless, she pushes you forward against the reptilian vent[else]Reptilian vent exposed before you, she urges you closer to it[end if].";
				say "     Her plan for you is made very clear when she sets you back down where between her stout, hind legs, yellow-scaled cunt exposed to the open air. With very little restraint, the dragoness urges you closer to it, pressing you firmly against its carnal lips as it already begins to ooze her tainted juices.";
				say "     '[one of]Get to work[or]Hurry up[or]Do not waste my time[at random], [one of]I have little patience for stalling[or]whelp[or]you would not want to test my patience[or]you are mine now[at random]!' [if HP of Player < 1 and player is not submissive]Reluctantly, you're made to[else]Obligingly, you[end if] use your tongue to further invite her arousal. Slick portal eagerly squeezing against your initial, curious endeavors, you gradually plunge the organ deeper, [if scalevalue of Player < 4]diminutive head pressed firmly against her lips as her tough scales part[else]tough scales parting[end if] to expose soft, supple flesh to you touch. [if FYDM is 0 and scalevalue of Player < 4]Even as small as you are, her passage, oddly enough, remains extremely tight, almost challenging you efforts to invade her hole[else if FYDM is 0]Strangely enough, her passage remains extremely tight even with the most conservative approach, almost challenging any effort to invade her hole[else]Even as you work, her strangely tight portal continues to lightly challenge any effort to invade her hole[end if].";
				if FYDM is 0, now FYDM is 1;
				say "     Deep, approving moans escaping your captor's scaled lips, she presses you more firmly against her aching pussy, your maw quickly contending with the rising flood of her honey, senses quickly flooded with the taste and scent of her intoxicating sex. Relegated to a mere attendant to the dragoness's need, [if Player is male]you're driven erect[else if Player is female]you're made blatantly aroused[else]you find yourself tormented by an insatiable need[end if], overwhelming heat radiating from eager hole. It becomes unbearable, driving you to grind your [if Player is male]dick[smn][else if Player is female]own cunt[sfn][else]genital-less crotch[end if] against her ribbed body, slicked by her sexual fluids, the beast's wanton need rising in turn.";
				say "     In due time the serpent cries out in bliss, deceptive vent tightening against your hands as she's wracked in the throes of her orgasm";
				if Libido of Player > 50 and player is not neuter:
					say ", more than enough to drive you into a similar release, painting the side of her hole with your own sexual fluids";
				else:
					say ", forcing you to abide her wanton fury as you're beleaguered frame is doused by her bestial honey";
				say ". It takes but a moment of recovery before she finally pulls you free of her, setting off into the sky once more and leaving you to clean yourself and, once more, gather your thoughts from the ordeal.";
	if voreloss is false:
		now tempnum is 0;
		yamatbiasshift;

to say yamato dragoness desc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else if Player is herm:
		now sex entry is "Both";
	else if Player is male:
		now sex entry is "Male";
	else if Player is female:
		now sex entry is "Female";
	else:
		now sex entry is "nochange";
	now firebreathcount is 0;
	now firebreathready is false;
	say "     [if showlocale is true]Traveling through the park[else]Suddenly[end if], you find yourself beset by a dragoness of eastern myth. Massive and serpentine in frame, airborne in spite of being wingless, her [one of]red[or]blue[or]green[at random] scales and yellow underbelly shimmering in the [if daytimer is night]starlight[else]sunlight[end if]. You instinctively attempt to find cover, but this only encourages her to pursue you on ground, a lascivious hunger agleam in her eyes.";

to say ydskinchange:
	let tempnum be ydcolor;
	now ydcolor is a random number between 0 and 2;
	if ydcolor is tempnum, increase ydcolor by 1;
	if ydcolor is 3, now ydcolor is 0;
	say "you find yourself suddenly forced to abide the growth of large, smooth [if ydcolor is 0]red[else if ydcolor is 1]blue[else if ydcolor is 2]green[end if] scales grow upon your back, smaller, coarser yellow scales quickly adorning your front and underside";


to say Yamato Dragoness Loss:
	say "     You successfully manage to fend off the massive dragoness... Or, at least, she seems to yield to you, [one of]perhaps figuring that this fight is going nowhere for her[or]no doubt satisfied with you[stopping]. Pulling back, she glares down at you.";
	say "     '[one of]Alright[or]Very well[or]I see now[at random], ";
	if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
		say "whelp";
	else if scalevalue of Player < 4 and a random chance of 1 in 2 succeeds:
		say "little one";
	else:
		say "mortal";
	say ", [one of]I have been bested[or]you have proven your mettle[or]my strength has been matched[or]you are most impressive[or]I am satisfied with your prowess[at random]. [one of]For your victory, I will satisfy you as you see fit.' [or]How may I satisfy you?' [or]You are granted the opportunity to do what you will with me.' [at random]";
	if Libido of Player < 40 and "Dominant" is not listed in feats of Player: [Incomplete]
		say "You're not particularly in the mood to make any sort of lewd request, and since you don't need anything else of her you decide to simply send her off, leaving you to go about your business once more.";
	else:
		say "Shall you oblige the beast's offering?";
		if Player consents:
			yamatfemsexmenu;
		else:
			say "     You decide against making any lewd request, and since you don't need anything else of her you decide to simply send her off, leaving you to go about your business once more.";

Section 1-2 - Player Victory Sex

to yamatfemsexmenu:
	now calcnumber is -1;
	say "     What will you do?";
	let Trixieexit be 0;
	while Trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [if Player is male][link]Mount her[as]1[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(2) [if Player is male][link]Mount her anally[as]2[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(3) [if Player is male][link]Have her suck your dick[as]3[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(4) [if Player is female][link]Have her eat your cunt[as]4[end link][else][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(5) [link]Attend her cunt[as]5[end link][line break]";
		LineBreak;
		say "(0) [link]Nevermind.[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Choice.";
		if calcnumber is 1:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatF_1]"; [Cunt Pitching]
				if "Modest Organs" is not listed in feats of Player and Cock Length of Player < 24:
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cock length change detected! Allow?";
						if Player consents:
							if Cock Length of Player < 18:
								increase Cock Length of Player by 2;
							else:
								increase Cock Length of Player by 1;
							follow the cock descr rule;
							say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
					else:
						if Cock Length of Player < 18:
							increase Cock Length of Player by 2;
						else:
							increase Cock Length of Player by 1;
						follow the cock descr rule;
						say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
				now tempnum is 0;
				yamatbiasshift;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 2:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatF_2]"; [Anal Pitching]
				if "Modest Organs" is not listed in feats of Player and Cock Length of Player < 24:
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cock length change detected! Allow?";
						if Player consents:
							if Cock Length of Player < 18:
								increase Cock Length of Player by 2;
							else:
								increase Cock Length of Player by 1;
							follow the cock descr rule;
							say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
					else:
						if Cock Length of Player < 18:
							increase Cock Length of Player by 2;
						else:
							increase Cock Length of Player by 1;
						follow the cock descr rule;
						say "You can see your [if Cock Count of Player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][else][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if Cock Count of Player > 1]they gain[else]it gains[end if] in length, becoming [descr]!";
				now tempnum is 0;
				yamatbiasshift;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 3:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatF_3]"; [Oral Receiving Cock]
				now tempnum is 0;
				yamatbiasshift;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 4:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatF_4]"; [Oral Receiving Cunt]
				now tempnum is 0;
				yamatbiasshift;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 5:
			say "[YamatF_5]"; [Oral Giving Cunt]
			now tempnum is 0;
			yamatbiasshift;
			yamatdomshift;
			now Trixieexit is 1;
		else:
			say "     You have some second thoughts and choose to turn the dragoness down, leaving you to go about your business once more."; [turn down]
			now Trixieexit is 1;


to say YamatF_1: [cunt pitching]
	say "     You decide upon taking the massive serpent for a ride, a request she doesn't seem to mind obliging. Her form slowly descends to meet you more closely.";
	say "     '[one of]Very well[or]If that is what you desire[or]I will bow to your need[or]Your wish is my command[at random]...' Lengthy frame shifting around, the dragoness exposes her hindquarters, leaving her bestial, scaled vent before you. [if scalevalue of Player < 4]Given how small you are relative to her, she lays on her back so you can scale her and properly position yourself[else]It takes a bit of work to position yourself proper, given how massive she is, but she's at least compliant enough to not make the matter more difficult for you than need be[end if]. Curiously fondling her taut, coarse cleft, it takes a bit of work for your prying digits to penetrate its surface, exposing your touch to her supple, slick inner-flesh. Shall you engage in a bit of foreplay? Otherwise, you'll get straight to the matter at hand.";
	if Player consents:
		say "     Caressing her exceedingly tight inner-walls, the dragoness doesn't seem affected by it, [if scalevalue of Player < 4]perhaps too small for it to really register[else]in spite of your adequate size[end if], inviting you to plunge the whole of your fist down its depths. It doesn't take long for the serpent's libido to finally take effect, your intrusion increasingly slicked by her tainted honey.";
		say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]do not stop[or]I can take more[or]you tease me so[at random]...' Oozing, throbbing portal aching against your endeavor, you imagine this bit of foreplay won't be all that effective at stretching her out, given how tight she is. Pulling your limb free, you think everything should be good to go.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	if Cunt Depth of Player < 22 and Cock Count of Player > 1:
		say "     Given how large she is, you figure you could fit [if Cock Count of Player is 2]both[else]two[end if] of your cocks down into her, shall you try?";
		if Player consents:
			say "     Very well. Shall it be down both her holes? Otherwise, you'll only go for her vaginal passage.";
			if Player consents:
				now tempnum2 is 2;
			else:
				now tempnum2 is 1;
		else:
			now tempnum2 is 0;
	else if Cock Count of Player > 1:
		say "     Given how large she is, you figure you could fit [if Cock Count of Player is 2]both[else]two[end if] of your cocks down both of her holes, shall you try?";
		if Player consents:
			now tempnum2 is 2;
		else:
			now tempnum2 is 0;
	else:
		now tempnum2 is 0;
	say "     Ready to take the plunge, you expose[if Cock Count of Player is 2 and tempnum2 > 0] both of[else if tempnum2 > 0] two of[else if Cock Count of Player > 1] one of[end if] your [cock size desc of Player], half-aroused dick[smn]. Grinding [if tempnum2 > 0]them[else]it[end if] against the eager vent, the dragoness faintly moans against your touch, [if tempnum is 1]your motion slicked by her eager juices[else]slowly becoming aroused by the tease[end if], before you slowly sink the[if Player is flared] blunt[end if] head[if tempnum2 > 0]s[end if] past its scaled lips.";
	say "     It quickly becomes a struggle to force yourself deeper, the hole exceedingly tight[if tempnum is 1] in spite of your prior preparations[end if][if tempnum2 > 0], made worse by having both in there[else if Cock Length of Player > 20], made worse by your impressive size[end if]. The dragoness grins slightly down at you.";
	say "     '[one of]Ha[or]Hmpf[or]Oh[at random], [one of]I allowed you to ride me, but I didn't say I would make it easy[or]if you want my hole so badly, prove your convictions[or]it would be a shame for you to fail this close to your goal[at random]!' Mocking you in your struggles, you're forced to steel yourself for the fight to inch deeper down the beast's [if tempnum2 is 2]twin passages[else]cunt[end if], its vice-like hold giving you difficulty all the way[if Cock Length of Player < 12] even with assets that she should have no problem taking[end if]. Several minutes of sweat and grunts eventually allows you to engulf your cock[if tempnum2 is 1]s[end if] all the way[if Player is knotted] - to the knot -[end if] down her powerful vent.";
	say "     After taking a moment to try and stretch out the serpentine creature's hole a bit more, you begin to fuck her proper. Even though she was teasing you before, she can't help but succumb once more to her baser desires, lowly moaning as she's railed by her[if scalevalue of Player < 5] much[end if] smaller companion. You seem to have no difficulty causing her to writhe in pleasure against your touch, which in turn makes her grip on you a little less tight and easier for you to work with. Her slick, throbbing cave[if tempnum2 is 2]s[end if] ache and squeeze against [if tempnum2 is 2]their[else]its[end if] invader[if tempnum2 > 0]s[end if], it's nearly incessant gushing making a bit of a mess of you.";
	say "     Continuing to pound the dragoness, it soon becomes clear you won't be able to hold back for much longer! You figure she's compliant enough in her lustful state to oblige bringing her head closer. Perhaps you should pull out and shame her? Otherwise, you'll keep doing what you're doing.";
	if Player consents:
		say "     You call the dragoness's face down to meet you, too lost in a wanton haze to see anything wrong in this, just before you wrench your dick[if tempnum2 > 0]s free from their[else] free from its[end if] tight confines, stroking yourself past the final inch to bliss. Cock[smn] firing off your [Cum Load Size of Player] load, it quickly paints the monster with your thick cum, who can only wallow in being shamed so.";
		say "     As you catch your breath, the serpent quickly becomes aware of what you've done to her, trying to cover up her embarrassment with a scowl.";
		say "     '[one of]This is the treatment I get[or]You find this amusing[or]Had your laugh, then[at random]? [one of]I see you have no respect for your betters[or]How contemptuous[or]Even my generosity has limits[at random]!' Her threats seem empty, at least, as once you get off her she simply gets up and fly off, grumbling and still aroused from the ordeal. It takes you a moment to clean yourself off before you return from whence you came, no doubt amused by these turn of events.";
	else:
		say "     Putting all your energy into one final thrust, you [if Player is knotted]finally tie[else]hilt[end if] yourself with the dragoness before crying out, your cock[smn] exploding with your [Cum Load Size of Player] load, flooding her womb[if tempnum2 is 2] and bowels[end if] with your thick cum";
		if Cock Count of Player > 1:
			if (tempnum2 > 0 and Cock Count of Player > 3) or (tempnum2 is 0 and Cock Count of Player > 2):
				say " while [if tempnum2 > 0]their[else]its[end if] exposed brothers stain her coarse undercarriage";
			else if (tempnum2 > 0 and Cock Count of Player > 2) or tempnum2 is 0:
				say " while [if tempnum2 > 0]their[else]its[end if] exposed brothers stain her coarse undercarriage";
		say ". her tight grip seems to squeeze every last drop out of you[if tempnum is 1], your orgasm more than enough to set off her own[end if], until you're completely spent and catching your breath.";
		say "     '[one of]Hmm[or]Well[or]Yes[at random], [one of]I hope you got what you wanted[or]I've satisfied my task[or]It seems you have no more need of me[at random]...' Allowing you to get off her before she takes to the air, flying off into the distance. She'd look more majestic if not for her[if Ball Size of Player > 5] considerably[end if] leaking hole. You take a moment to catch your breath before you gather your things and go back to where you started.";

to say YamatF_2: [anal pitching]
	say "     You decide upon taking the massive serpent for a ride, a request she doesn't seem to mind obliging. Her form slowly descends to meet you more closely.";
	say "     '[one of]Very well[or]If that is what you desire[or]I will bow to your need[or]Your wish is my command[at random]...' Lengthy frame shifting around, the dragoness exposes her hindquarters, leaving her bestial, scaled vent before you. [if scalevalue of Player < 4]Given how small you are relative to her, she lays on her back so you can scale her and properly position yourself[else]It takes a bit of work to position yourself proper, given how massive she is, but she's at least compliant enough to not make the matter more difficult for you than need be[end if]. Curiously fondling her taut, coarse cleft, it takes a bit of work for your prying digits to penetrate its surface, exposing your touch to her supple, slick inner-flesh. Shall you engage in a bit of foreplay? Otherwise, you'll get straight to the matter at hand.";
	if Player consents:
		say "     Caressing her exceedingly tight inner-walls, the dragoness doesn't seem affected by it, [if scalevalue of Player < 4]perhaps too small for it to really register[else]in spite of your adequate size[end if], inviting you to plunge the whole of your fist down its depths. It doesn't take long for the serpent's libido to finally take effect, your intrusion increasingly slicked by her tainted honey.";
		say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]do not stop[or]I can take more[or]you tease me so[at random]...' Oozing, throbbing portal aching against your endeavor, you imagine this bit of foreplay won't be all that effective at stretching her out, given how tight she is. Pulling your limb free, you think everything should be good to go.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	if Cock Length of Player < 22 and Cock Count of Player > 1:
		say "     Given how large she is, you figure you could fit [if Cock Count of Player is 2]both[else]two[end if] of your cocks down into her, shall you try?";
		if Player consents:
			say "     Very well. Shall it be down both her holes? Otherwise, you'll only go for her ass.";
			if Player consents:
				now tempnum2 is 2;
			else:
				now tempnum2 is 1;
		else:
			now tempnum2 is 0;
	else if Cock Count of Player > 1:
		say "     Given how large she is, you figure you could fit [if Cock Count of Player is 2]both[else]two[end if] of your cocks down both of her holes, shall you try?";
		if Player consents:
			now tempnum2 is 2;
		else:
			now tempnum2 is 0;
	else:
		now tempnum2 is 0;
	say "     Ready to take the plunge, you expose[if Cock Count of Player is 2 and tempnum2 > 0] both of[else if tempnum2 > 0] two of[else if Cock Count of Player > 1] one of[end if] your [cock size desc of Player], half-aroused dick[smn]. Grinding [if tempnum2 > 0]them[else]it[end if] against the eager vent, the dragoness faintly moans against your touch, [if tempnum is 1]your motion slicked by her eager juices[else]slowly becoming aroused by the tease[end if], before you slowly sink the[if Player is flared] blunt[end if] head[if tempnum2 > 0]s[end if] past its scaled lips.";
	say "     It quickly becomes a struggle to force yourself deeper, the hole exceedingly tight[if tempnum is 1] in spite of your prior preparations[end if][if tempnum2 > 0], made worse by having both in there[else if Cock Length of Player > 20], made worse by your impressive size[end if]. The dragoness grins slightly down at you.";
	say "     '[one of]Ha[or]Hmpf[or]Oh[at random], [one of]I allowed you to ride me, but I didn't say I would make it easy[or]if you want my hole so badly, prove your convictions[or]it would be a shame for you to fail this close to your goal[at random]!' Mocking you in your struggles, you're forced to steel yourself for the fight to inch deeper down the beast's [if tempnum2 is 2]twin passages[else]bowels[end if], its vice-like hold giving you difficulty all the way[if Cock Length of Player < 12] even with assets that she should have no problem taking[end if]. Several minutes of sweat and grunts eventually allows you to engulf your cock[if tempnum2 is 1]s[end if] all the way[if Player is knotted] - to the knot -[end if] down her powerful vent.";
	say "     After taking a moment to try and stretch out the serpentine creature's hole a bit more, you begin to fuck her proper. Even though she was teasing you before, she can't help but succumb once more to her baser desires, lowly moaning as she's railed by her[if scalevalue of Player < 5] much[end if] smaller companion. You seem to have no difficulty causing her to writhe in pleasure against your touch, which in turn makes her grip on you a little less tight and easier for you to work with. Her slick, throbbing cave[if tempnum2 is 2]s[end if] ache and squeeze against [if tempnum2 is 2]their[else]its[end if] invader[if tempnum2 > 0]s[end if], it's nearly incessant gushing making a bit of a mess of you.";
	say "     Continuing to pound the dragoness, it soon becomes clear you won't be able to hold back for much longer! You figure she's compliant enough in her lustful state to oblige bringing her head closer. Perhaps you should pull out and shame her? Otherwise, you'll keep doing what you're doing.";
	if Player consents:
		say "     You call the dragoness's face down to meet you, too lost in a wanton haze to see anything wrong in this, just before you wrench your dick[if tempnum2 > 0]s free from their[else] free from its[end if] tight confines, stroking yourself past the final inch to bliss. Cock[smn] firing off your [Cum Load Size of Player] load, it quickly paints the monster with your thick cum, who can only wallow in being shamed so.";
		say "     As you catch your breath, the serpent quickly becomes aware of what you've done to her, trying to cover up her embarrassment with a scowl.";
		say "     '[one of]This is the treatment I get[or]You find this amusing[or]Had your laugh, then[at random]? [one of]I see you have no respect for your betters[or]How contemptuous[or]Even my generosity has limits[at random]!' Her threats seem empty, at least, as once you get off her she simply gets up and flies away, grumbling and still aroused from the ordeal. It takes you a moment to clean yourself off before you return from whence you came, no doubt amused by these turn of events.";
	else:
		say "     Putting all your energy into one final thrust, you [if Player is knotted]finally tie[else]hilt[end if] yourself with the dragoness before crying out, your cock[smn] exploding with your [Cum Load Size of Player] load, flooding her bowels[if tempnum2 is 2] and womb[end if] with your thick cum";
		if Cock Count of Player > 1:
			if (tempnum2 > 0 and Cock Count of Player > 3) or (tempnum2 is 0 and Cock Count of Player > 2):
				say " while [if tempnum2 > 0]their[else]its[end if] exposed brothers stain her coarse undercarriage";
			else if (tempnum2 > 0 and Cock Count of Player > 2) or tempnum2 is 0:
				say " while [if tempnum2 > 0]their[else]its[end if] exposed brothers stain her coarse undercarriage";
		say ". her tight grip seems to squeeze every last drop out of you[if tempnum is 1], your orgasm more than enough to set off her own[end if], until you're completely spent and catching your breath.";
		say "     '[one of]Hmm[or]Well[or]Yes[at random], [one of]I hope you got what you wanted[or]I've satisfied my task[or]It seems you have no more need of me[at random]...' Allowing you to get off her before she takes to the air, flying off into the distance. She'd look more majestic if not for her[if Ball Size of Player > 5] considerably[end if] leaking hole. You take a moment to catch your breath before you gather your things and go back to where you started.";

to say YamatF_3: [oral receiving cock]
	say "     Making your decision, the dragoness looms closely over your [if scalevalue of Player < 5]significantly[else]slightly[end if] smaller, [bodytype of Player] form, carefully helping you to expose your assets before her until your [cock size desc of Player], partially aroused dick[if Cock Count of Player > 1]s lay[else] lays[end if] before her piercing gaze.";
	say "     '[one of]Hm[or]Yes[or]Very well[at random], [one of]this should be simple[or]such a paltry task[or]I hope this will satisfy you[at random]...' Large, thick tongue escaping her lips as she speaks, the slick, flexible thing has no trouble wrapping around [if Cock Count of Player > 2]all of them at once[else if Cock Count of Player is 2]both of them at once[else]it[end if], practically buried under the writhing, pink flesh.";
	say "     Her constant, unblinking gaze fixated on you, your [if scalevalue of Player < 4]entire body[else]torso[end if] is bathed in her steamy breath, lower half disappearing under her scaled snout as her lips hilt against your crotch[if Cock Length of Player > 19], utterly unphased by your size[end if]. As large as the serpent is, she seems extraordinarily dexterous with her tongue, able to squeeze and writhe against[if Cock Count of Player > 1] and between[end if] your rod[smn] with considerable ease.";
	say "     Her skillful work filling the air with the wet sounds of her tongue's efforts, it doesn't need long before you're brought to your very limit! Shall you pull out at the last second and shame her? Otherwise, you'll reward the creature's diligence.";
	if Player consents:
		say "     Her grip on you is fairly tight, practically pinning you to a tree, but you manage to order her off just before you cry out, aiming your now free, saliva-slicked dick[smn] at the dragoness as you fire off your [Cum Load Size of Player] load, [if Ball Size of Player > 5]utterly soaking[else]painting[end if] her snout with your thick cum. Her brief confusion allows you to spend your entire load on her.";
		say "     '[one of]Hmpf[or]Well[at random], [one of]I think you have had your fun[or]I hope you are sufficiently amused[or]I suppose whatever suits your need[at random]...' Thick tongue licking clean her snout, she's clearly trying to hide her embarrassment behind a terse expression. Once the both of you are clean, the serpent flies off into the distance, leaving you to go about your business once more.";
	else:
		say "     Practically pinning you to a tree with her snout, she appears fully prepared for when you finally cry out, methodical tongue squeezing you with every gout of your [Cum Load Size of Player] load[if Ball Size of Player > 5], seemingly unphased by its sheer volume[end if]. She makes every effort to prolong your orgasm as much as possible before finally pulling free.";
		say "     '[one of]Hmm[or]There[or]It is done[at random], [one of]I am sure you are satisfied[or]there is nothing more I can do for you[or]and now I depart[at random].' Thick tongue licking and remaining trace of your bliss clean of you, the serpent eventually turns to fly off into the distance, leaving you to catch your breath and go about your business once more.";

to say YamatF_4: [oral receiving cunt]
	say "     Making your decision, the dragoness looms closely over your [if scalevalue of Player < 5]significantly[else]slightly[end if] smaller, [bodytype of Player] form, carefully helping you to reveal your assets before her until your [cunt size desc of Player], partially aroused cunt[sfn] [isfv] exposed before her piercing gaze.";
	say "     '[one of]Hm[or]Yes[or]Very well[at random], [one of]this should be simple[or]such a paltry task[or]I hope this will satisfy you[at random]...' Large, thick tongue escaping her lips as she speaks, the slick, flexible thing has no trouble engulfing your crotch, puss[yfn] completely buried under the writhing, pink flesh.";
	say "     Her constant, unblinking gaze fixated on you, your [if scalevalue of Player < 4]entire body[else]torso[end if] is bathed in her steamy breath, lower half disappearing under her scaled snout as her lips hilt against your crotch. As large as the serpent is, she seems extraordinarily dexterous with her tongue, able to squeeze and worm her way into your hole[sfn] with [if Cunt Depth of Player > 19]considerable[else]relative[end if] ease.";
	if Player is male:
		say "     Her skillful work filling the air with the wet sounds of her tongue's efforts, it doesn't need long before you're brought to your very limit! Shall you pull out at the last second and shame her? Otherwise, you'll reward the creature's diligence.";
		if Player consents:
			say "     Her grip on you is fairly tight, practically pinning you to a tree, but you manage to order her off just before you cry out, aiming your previously unattended, saliva-slicked dick[smn] at the dragoness as you fire off your [Cum Load Size of Player] load, [if Ball Size of Player > 5]utterly soaking[else]painting[end if] her snout with your thick cum. Her brief confusion allows you to spend your entire load on her.";
			say "     '[one of]Hmpf[or]Well[at random], [one of]I think you have had your fun[or]I hope you are sufficiently amused[or]I suppose whatever suits your need[at random]...' Thick tongue licking clean her snout, she's clearly trying to hide her embarrassment behind a terse expression. Once the both of you are clean, the serpent flies off into the distance, leaving you to go about your business once more.";
		else:
			say "     Practically pinning you to a tree with her snout, she appears fully prepared for when you finally cry out, methodical tongue writhing against you an extending your bliss for as long as she's able, unattended dick[smn] firing off their [Cum Load Size of Player] load against the open air. She makes every effort to prolong your orgasm as much as possible before finally pulling free.";
			say "     '[one of]Hmm[or]There[or]It is done[at random], [one of]I am sure you are satisfied[or]there is nothing more I can do for you[or]and now I depart[at random].' Thick tongue licking and remaining trace of your bliss clean of you, the serpent eventually turns to fly off into the distance, leaving you to catch your breath and go about your business once more.";
	else:
		say "     Practically pinning you to a tree with her snout, her skillful work filling the air with the wet sounds of her tongue's efforts, she appears fully prepared for when you finally cry out, methodical tongue writhing against you an extending your bliss for as long as she's able. She makes every effort to prolong your orgasm as much as possible before finally pulling free.";
		say "     '[one of]Hmm[or]There[or]It is done[at random], [one of]I am sure you are satisfied[or]there is nothing more I can do for you[or]and now I depart[at random].' Thick tongue licking and remaining trace of your bliss clean of you, the serpent eventually turns to fly off into the distance, leaving you to catch your breath and go about your business once more.";

to say YamatF_5: [Oral Giving Cunt]
	say "     Eyeing the dragoness up lewdly, she seems to know what you want without having to ask, lowering herself to lay on the ground and expose her hindquarters for you.";
	say "     '[one of]Very well[or]As you wish[or]I understand[at random], [one of]you are free to do as you please[or]then it is yours[or]I will humor you[at random]...' Climbing onto the massive beast, she allows you to fondle across her coarse, yellow underside, the serpent's genital slit freely exposed for you to meddle with. Her unyielding lips, though very firm, gradually part around your prodding digits.";
	say "     Awash in a wave of heat, her feminine scent floods the air, your digits slicked by her tainted honey. Even for what little you force down her portal, she remains incredibly tight, visibly affected by your diminutive touch. Shall you be more affectionate? Otherwise, you'll keep your distance.";
	if Player consents:
		say "     Unable to resist the opportunity, you press your body firmly against her draconic lips, [if scalevalue of Player < 3]practically as big as you are[else if scalevalue of Player is 3]almost as big as you are[else]impressively large even for someone of your size[end if]. Radiating an intense heat, you plunge your tongue in to caress her supple, hidden inner-flesh.";
		say "     '[one of]Oh[or]Hmm[or]Yes[at random]... [one of]revel in all I have[or]savor your reward[or]enjoy what I have to offer[at random].' The dragoness rumbles lowly as your tongue caresses along the length of her now fluid-slicked opening, taste awash in her sweet flavor. It's not long before your continued, drawn out affections start making a mess of things. Practically swimming in her juices, you can't help but grind your [if Player is male][cock size desc of Player], blatantly aroused cock[smn][else if Player is female]blatantly wet cunt[sfn][else]genderless crotch[end if] against her coarse scales.";
		say "     Completely drenched by the stuff, it's very clear your new friend won't be able to hold back much longer. Shall you take the full brunt of her release? Otherwise, you'll try to avoid making any more of a mess of yourself.";
		if Player consents:
			say "     Tightening your grip, you wrap your lips around the monster's gushing nethers just before she's no longer able to hold back. [if scalevalue of Player < 3]You maybe only last a few seconds before you're completely[else if scalevalue of Player is 3]You put up a fair effort before you're eventually[else]It's a struggle to keep up with her, just shy of being[end if] overwhelmed by the flood, senses utterly flooded with the sweet taste of her abundant honey.";
			say "     Completely overtaken by a primal need, it's not long before your [bodytype of Player] body, grinding against the dragoness's, is wracked with bliss, [if Player is male]staining her your own, [Cum Load Size of Player] load[else if Player is female]staining her with your own sexual fluids[else]writhing in an insatiable need[end if]. Once your fervor dies down, you pull away and survey the carnage, utterly drenched in the monster's substantial sex. She seems amused by you.";
			say "     '[one of]Hmm[or]Ha[or]Mhm[at random], [one of]you are certainly a strange one[or]I hope you enjoyed yourself[or]that was certainly entertaining[at random]... [one of]I think you're deserving of one last favor[or]You probably deserve a little extra[at random].' Lowering her snout, you're quickly assaulted by her large and powerful tongue, slick organ embracing your sullied form, licking clean the obscene mess you've made of yourself. When she's done, you're uncertain if being drenched in the monster's saliva is all that better than her sexual fluids.";
		else:
			say "     Just as she's no longer able to hold back, you try to put at least a little distance between the monster and her aching geyser. Roaring out loudly, her taut portal aches against the open, the air humid with her intense body heat and the scent of her sweet honey.";
			say "     Unable to hold yourself back in the wake of this display, you're quickly wracked with your own bliss, [if Player is male]staining her your own, [Cum Load Size of Player] load[else if Player is female]staining her with your own honey[else]writhing in an insatiable need[end if]. Once your fervor dies down, you pull away and observe the end results of your little adventure. Though you managed to avoid getting completely drenched, you're still a mess of the monster's sticky sex. She seems amused by you.";
			say "     '[one of]Hmm[or]Ha[or]Mhm[at random], [one of]you are certainly a strange one[or]I hope you enjoyed yourself[or]that was certainly entertaining[at random]... [one of]I think you're deserving of one last favor[or]You probably deserve a little extra[at random].' Lowering her snout, you're quickly assaulted by her large and powerful tongue, slick organ embracing your sullied form, licking clean the mess you've made of yourself. When she's done, you're fairly certain that being drenched in the monsters saliva isn't much of an improvement.";
		say "     Laughing at you, the dragoness finally takes to the air and departs, leaving you to dry off and go back from whence you came.";
	else:
		say "     Carefully, you work both hands past her draconic lips, [if scalevalue of Player < 3]practically as big as you are[else if scalevalue of Player is 3]almost as big as you are[else]impressively large even for someone of your size[end if]. Radiating an intense heat, you caress your digits along her supple, hidden inner-flesh.";
		say "     '[one of]Oh[or]Hmm[or]Yes[at random]... [one of]You must be impressed[or]Do not stop[or]I wonder if you can handle all that[at random].' The dragoness rumbles lowly as you continue to plunge further down her depths, the thing like a vice's hold on you. It becomes increasingly difficult to avoid the mess, practically sputtering her juices by this point, and you concede to at least getting your hands slick. Working up and down her powerful opening, now slippery with her fluid, you're able to pick up the pace, much to the creature's approval.";
		say "     You continue this for some while until it's glaringly apparent that the monster is on the brink... The dragon's laying entirely on her back by this point, looping around such that her head is fairly close to you. Perhaps you could shame her with her own bliss? Otherwise, you'll spare her the embarrassment.";
		if Player consents:
			say "     Too lost in a haze of her imminent bliss, when you ask her over she probably assumes you're drawing her in close for a kiss, briefly awash in her shallow breath before you pull both hands free and use them to thrust her face down onto her nethers. Completely taken by surprise just before she's lost in the throes of ecstasy, she's too stunned to do anything but revel in this sudden autofellatio.";
			say "     Once it starts to subside, she quickly pulls her head back into the air, practically fuming over what has transpired and desperately trying to clean her face off while still looking at least somewhat dignified.";
			say "     '[one of]Agh[or]Oh[or]Hmpf[at random], fool! [one of]You think I will tolerate this embarrassment[or]Make a mockery of me, will you[or]You think my patience is endless[at random]? [one of]Pray we never meet again[or]I won't forget this trespass[at random]!' You're able to jump off her before she takes to the air, the dragoness grumbling loudly to herself as she bolts off into the distance. You gather your things and clean yourself off before you head back from whence you came, no doubt amused by the ultimate outcome of that exchange.";
		else:
			say "     Just as she's no longer able to hold back, you try to put at least a little distance between the monster and her aching geyser. Roaring out loudly, her taut portal aches against the open, the air humid with her intense body heat and the scent of her sweet honey. Once her fervor dies down, you step off and make an effort to clean yourself before the dragoness takes to the air once more.";
			say "     '[one of]Hmm[or]Yes[or]Mhm[at random], [one of]you are certainly a strange one[or]I hope you enjoyed yourself[or]that was certainly entertaining[at random].' Slowly, the creature flies off into the distance, no doubt satisfied by your endeavors. You gather your things and set off to return from whence you came.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Yamato Dragoness";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The serpentine dragoness[or]The Yamato Dragoness[or]It[purely at random] [one of]snaps it's neck forward like a snake to bite at you.[or]whips it's tail around, smacking your body off the ground and through the air before landing roughly onto the ground.[or]slams you with one of its talons.[at random]";
	now defeated entry is "[Yamato Dragoness Loss]";
	now victory entry is "[Yamato Dragoness Vic]";
	now desc entry is "[yamato dragoness desc]";
	now face entry is "distinctly draconic; long-snouted, a pair of curious, lengthy whiskers at its tip, and a stout pair of antlers and a golden mane at the crown, flowing down to your neck";
	now body entry is "elongated, serpentine with stout, taloned fore and hind limbs and a fin-like, golden mane across its length";
	now skin entry is "smooth, [if ydcolor is 0]red[else if ydcolor is 1]blue[else if ydcolor is 2]green[end if]-scaled with a coarse yellow underside adorning your";
	now tail entry is "You wield a very long, reptilian tail with an impressive, fin-like mane of golden hair at the end.";
	now cock entry is "draconic, pink, and [one of]strangely[or]bulbously[at random] ribbed";
	now face change entry is "you suddenly feel overwhelmed by a sudden change, face elongating into a proud, draconic snout, a pair of very lengthy whiskers sprouting from its tip. Two short antlers and a mane of golden hair grow out from the back of your head";
	now body change entry is "you soon double over, frame shifting into something now much more elongated, arms and legs shifting in shape to something much more stout and less equipped to walk around. As you recover, you see that you're quite large, too, though you're likely only a little over two-thirds the size from which this strain originates, and you can't fly - only able to hover with limited efficacy. A golden mane now runs across the entire length of your serpentine torso";
	now skin change entry is "[ydskinchange]";
	now ass change entry is "a lengthy tail sprouts forth from it. It takes some time to adjust to it, limb adorned in a golden, fin-like mane, culminating in a flattened tuft at the tip";
	now cock change entry is "you're made curious by an odd tingling feeling. Taking a look, you're shocked to find that your junk has disappeared! After some observation, you find that your dick is now housed in some manner of draconic vent, the head-tapered, pinkish thing exposed before you with some coaxing, its shaft a peculiar, bulbous ribbing. After coming to terms with this change, you go back to making your next move";
	now str entry is 22;
	now dex entry is 20;
	now sta entry is 20;
	now per entry is 18;
	now int entry is 20;
	now cha entry is 10;
	now sex entry is "nochange";
	now HP entry is 90;
	now lev entry is 9;
	now wdam entry is 20;
	now area entry is "Park";
	now Cock Count entry is 1;
	now Cock Length entry is 24;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 24;
	now Cunt Tightness entry is 15;
	now libido entry is 45;
	now loot entry is "dragon hair";
	now lootchance entry is 40;
	now scale entry is 5;
	now body descriptor entry is "[one of]slender[or]serpentine[or]flexible[or]strong[at random]";
	now type entry is "draconic";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "firebreath";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
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
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
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
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Vore Bound State

to YamatFvore:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if Player is male]jerk yourself off[else]fondle yourself[end if], writhing and twisting in these dark, damp confines until you finally find reprieve, [if Player is male]unloading your [Cum Load Size of Player] load against the supple flesh[else if Player is female]cunt throbbing firmly against the supple flesh[else]a particularly trying task given your lack of outlet[end if][if Player is male and Ball Size of Player > 5]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			decrease Libido of Player by (Libido of Player / 10) + 1;
			if Libido of Player < 0, now Libido of Player is 0;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		increase boundcounter by 1;
		yamatbowelmovement;
		if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
			increase hunger of Player by 1;
			increase thirst of Player by 2;
		else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
			increase thirst of Player by 1;
		now enduring is false;
		say "     Bathed in saliva and utter darkness, you're enveloped by the dragoness's churning, pinkish stomach. [one of]You feel yourself slowly being drained by these twisted confines[or]It churns and groans against its writhing occupant[or]You find it extremely hard to figure up from down in this tainted prison[at random]. You're presently in the monster's [bold type][if boundsegment is 0]first[else if boundsegment is 1]second[else if boundsegment is 2]third[else]fourth[end if][roman type] stomach. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [yamatstrugglebar][line break][run paragraph on]";
		if humanity of Player < 1:
			now BodyName of Player is "Yamato Dragon";
			now FaceName of Player is "Yamato Dragon";
			now TailName of Player is "Yamato Dragon";
			now SkinName of Player is "Yamato Dragon";
			now CockName of Player is "Yamato Dragon";
			now tempnum is 0;
			now voreloss is true;
			now Trixieexit is 1;
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
				increase struggleatt by 1;
				if (boundsegment < 2 and struggleatt < 2) or (boundsegment > 1 and struggleatt < 3):
					say "     You struggle to escape these twisted confines, writhing and fighting against the flesh that holds you. The dragoness lowly [one of]growls[or]groans[at random] as her body churns in ill-content towards its disruptive occupant.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
				else:
					if boundsegment is 0:
						say "     Unable to keep you down any longer, you feel the dragoness loudly begin to hack as you're squeezed out from the stomach's confines and back up through her throat. Quickly flung from her maw, the creature grabs you with one of her talon. Gripping you with disdain, she leers at you before tossing you back down to the earth.";
						say "     '[one of]Hmpf[or]Ugh[or]Disgusting[at random], [one of]perhaps I shall find a prey that respects its meal[or]you were hardly worth my time anyways[or]you just can't help but be an annoyance, I see now[at random]...' Sneering at you, she floats off into the distance, leaving you to recover. Exhausted and saliva soaked, it takes you a while to find your things and return from whence you came.";
						cleanboundmemory;
						now Trixieexit is 1;
						follow the turnpass rule;
					else if boundsegment is 1:
						now boundmod is 0;
						now boundsegment is 0;
						now struggleatt is 0;
						yamatmstomachascent;
					else if boundsegment is 2:
						now boundmod is 0;
						now boundsegment is 1;
						now struggleatt is 0;
						yamatmstomachascent;
					else if boundsegment is 3:
						say "     Unable to hold you in any longer, your feel the dragoness's body loudly groan, stomach squeezing around you and forcing you downwards one final time. Body twisted and contorted as you're forced through the monster's labyrinthine bowels, its grip on you extremely tight[if scalevalue of Player < 4] even in spite of your small size[end if], you eventually feel yourself forced past her tight ring, exposing yourself to the cool, dry air once more.";
						say "     Grabbing you before you can fall to the earth, the beast's grip is nonetheless fairly limp, glaring at you with mild contempt before tossing you to earth once more.";
						say "     '[one of]Hmpf[or]Ugh[or]Disgusting[at random], [one of]perhaps I shall find a prey that respects its meal[or]I suppose I got all I can from this writhing little worm[or]you just can't help but be an annoyance, I see now[at random]...' Sneering at you, she floats off into the distance, leaving you to recover. Exhausted and saliva soaked, it takes you a while to find your things and return from whence you came.";
						cleanboundmemory;
						now Trixieexit is 1;
						follow the turnpass rule;
				wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     You're compelled to submit to you tainted prison, [one of]your captor rumbly lowly in approval of her compliant meal[or]the dragoness idly playing with writhing meal as you feel her talon's caress against you from the outside[or]your captor lounging happily as she drains her meal[at random].";
					if boundsegment is not 3:
						increase boundmod by 1;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					say "     You're driven to tolerate these extreme circumstances, [one of]your captor floating about idly as she slowly drains her meal[or]the dragoness idly prodding at you as you writhe within your confines[or]the monster rumbly lowly in approval of her meal[at random].";
					if a random chance of 2 in 3 succeeds and boundsegment is not 3:
						increase boundmod by 1;
					increase lustatt by 7 + (lustadjust * 2);
				wyvhumanityroll;
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if a random chance of 1 in 3 succeeds and boundsegment is not 3:
					increase boundmod by 1;
				if boundrecover is true:
					SanBoost 3;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
				else:
					say "     You struggle to retain clarity from within these slick, writhing confines, resisting the dragoness's power over you. [one of]She seems to audibly mock you as you resist[or]Your captor doesn't seem to care all too much about your struggles[or]You feel yourself tested as the monster teases you by prodding you with a talon over her firm scales[at random].";
				increase lustatt by 4 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";

Yamato Dragoness ends here.
