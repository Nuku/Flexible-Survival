Version 4 of Yamato Dragoness For FS by Kohryu begins here.
[ Version 4.5 - Dragonpalooza 2 - player loss and bound state]
[ - Originally Written by Kohryu - ]

"Adds a Yamato Dragoness to Flexible Survival's Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Yamato Dragoness" } to infections of girl;

YDSF is a number that varies. [Yamato Dragon Succumb Fate]
FYDTBMM is a number that varies. [Female Yamato Dragon TBM Memory]
FYDM is a number that varies. [Female Yamato Dragon Memory]

to say Yamato Dragoness attack:
	if HP of player > 0:
		say "     You ultimately choose to surrender yourself to the serpentine dragoness's mercy, dropping what you were carrying and offering yourself freely. When it's clear that this isn't some trick she pulls closer, a mouthless voice flooding your hearing.";
	otherwise:
		say "     Overwhelmed by this massive dragoness, you're grabbed by her teeth, tearing you free of what attire you might have worn and slamming you against the dirt. Head spinning and too exhausted to contest her will, you feel her talons further expose you before herself, a mouthless voice flooding your hearing.";
	if vorelevel is 3 and (a random chance of 1 in 3 succeeds or ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds)):
		if hp of player > 0:
			say "     '[one of]Oh, such an obliging little morsel[or]Ha, my meal delivers itself to me[or]I hunger[at random]...' Given little time to reconsider your circumstance, the dragoness grabs you and pulls you close to her maw.";
		otherwise:
			say "     '[one of]Oh, it's fun when my meal struggles[or]You've only succeeded in making yourself all the more tender for my tastes[or]Oh, what an impudent little morsel[at random]!' Briefly taunting you, you're given little chance to escape before the serpentine creature grabs a hold of you, pulling you close to her maw.";
		if bodytype of player is "Yamato Dragon" or bodytype of player is "Yamato Dragoness":
			say "     Seemingly fine with consuming one of her own kin";
		otherwise:
			say "     [if scalevalue of player > 4]Much larger than you in spite of your size[otherwise]The absolutely massive beast towering before your sight[end if]";
		say ", you're awash in a wave of the monster's hot breath as her scaled maw widens, exposing her sharp teeth and pink tongue to you. Eager to slather you in the slick appendages affection, she only revels in this ceremony for a few brief seconds before you find yourself tumbling downwards, into the dragoness's dark abyss.";
		say "     Quickly embraced on all sides by his supple flesh, her powerful muscles squeeze around your[if scalevalue of player < 4] tiny,[end if] [bodytype of player] form, plunging you further into his warm, pulsing depths. Almost made dizzy by her heaving flesh, she makes short work of your[if scalevalue of player > 3] impressive[end if] form, plunging you into slick and churning confines of her stomach.";
		say "     Taking a moment to recover from the ordeal, you quickly begin to feel your confines drain you of your strength. You don't imagine you'll last long in here, [one of]especially since you get the impression that your trip through the serpentine creature has only begun[or]made worse by the prospect of being plunged even deeper into the serpentine creature's many faculties[stopping]...";
		now boundmod is 1;
		wait for any key;
		YamatFvore;
	otherwise:
		if HP of player > 0:
			say "     '[one of]Very wise to back down, little one, lest you make a fool of yourself[or]You aren't as foolish a little thing as I had expected, very well[or]I see your need is just as great as mine[at random].' In the wake of his remark she demands that you free yourself of any other attire you might have on, forced to oblige, else she tear them free of you.";
		otherwise:
			say "     '[one of]Impudent little whelp, you are now mine[or]It amuses me that you thought you could contest my will[or]Know your place, little thing[or]Such gall, you will suffer from more than defeat[at random]!' Taunting you, as she does, it's very clear that you're now at the mercy of this impressive, serpentine creature.";
		if "Touched by Madness" is listed in feats of player and (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 4 succeeds)):
			if FYDTBMM is 0:
				say "     As she's about to set herself upon you, the dragoness finds herself struck by an otherworldly notion, seemingly interrupting whatever she was planning for you. For a few brief moments she appears conflicted, before she looks at you with an almost insane glare, apparently inspired by some new plan for you.";
				say "     'N-no... What you offer is not enough, I must have all of you!' Wanton need reignited by this twisted plot, the creature pulls you into the air, ";
				if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
					say "similarly serpentine form exposed before her";
				otherwise:
					say "[bodytype of player] form exposed before her";
				say ". Rolling her rear half against the earth so she can expose her draconic vent, it's already made slick through blatant arousal, bringing you close before gradually forcing you down on the eager portal rear-first.";
				say "     Clearly intending to consume you, [if hp of player < 1 and player is not submissive]you immediately fight to resist, feet planted firmly against the hard-scaled lips of her hungering cunt. You only briefly inconvenience the dragoness, however, before you slip on her slick honey, quickly plunging yourself into her depths[otherwise]you can't help but be a little troubled by twisted fate, not that the dragoness has much regard for your feelings on the matter, quickly plunging you into her slick depths[end if].";
				say "     Slippery, supple inner-flesh rapidly embracing your [bodydesc of player] form, you're quickly forced to endure to her oppressive tightness, hugging firmly against you as she stuffs you ever-deeper into her throbbing abyss. Notably, [if scalevalue of player > 4]she seems to have little difficulty in handling your massive body[otherwise if scalevalue of player is 4]she seems to have little difficulty in handling your rather large body[otherwise]she appears innately adept at this demented game[end if]; however, she does not engulf you entirely yet, instead seemingly intent on using you for her sexual gratification first.";
				now FYDTBMM is 1;
			otherwise:
				say "     The way she looks as you, it's made very clear what twisted fate this massive beast has planned for you. [if hp of player < 1 and player is not submissive]Not wanting to subject yourself to that ordeal all over again, you try to get up and run, but you're too weak to flee her and, doubtlessly amused by your struggle, follows you in tow[otherwise]Tainted hunger-streaked grin emerging from her lips, you feel somewhat sheepish regarding the dragoness's devious plans, who's clearly excited for it to go underway[end if].";
				say "     '[one of]Yes, yes[or]Oh, yes[or]Good[at random], [one of]ALL of you will be mine[or]your body will suffice[or]you will know my embrace[or]I beg you to squirm, whelp[or]there is no escape now[at random]!' Wanton need twisted by an insane desperation, she plucks you from the ground,";
				if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
					say "similarly serpentine form exposed before her";
				otherwise:
					say "[bodytype of player] form exposed before her";
				say ". Rolling her rear half against the earth so she can expose her draconic vent, it's already made slick through blatant arousal, bringing you close before gradually forcing you down on the eager portal rear-first.";
				say "     Eager to begin consuming you, [if hp of player < 1 and player is not submissive]you immediately fight to resist, feet planted firmly against the hard-scaled lips of her hungering cunt. You only briefly inconvenience the dragoness, however, before [one of]she forcibly straightens you out and thrusts you in, quickly plummeting[or]you slip on her slick honey, quickly plunging yourself[at random] into her depths[otherwise]you can't help but be a little troubled by being subjected to this twisted fate again, not that the dragoness has much regard for your feelings on the matter, quickly plunging you into her slick depths[end if].";
				say "     Slippery, supple inner-flesh rapidly embracing your [bodydesc of player] form, you're quickly forced to endure to her familiar, oppressive tightness, hugging firmly against you as she stuffs you ever-deeper into her throbbing abyss. Heated snatch wafting up against your abused frame, she spares no time to let you adjust to these circumstances before she commences fucking herself with you proper.";
			say "     Pulling and pushing you against her slick, vice-like hole, she ";
			if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
				say "[if FYDTBMM is 0]shows no remorse in tormenting one of her own kind; on the contrary, it seems to make you all the more effective as her twisted toy[otherwise]exploits her toy's elongated frame to further satisfy her twisted hunger[end if]";
			otherwise:
				say "[if FYDTBMM is 0]shows no remorse in tormenting you, now relegating to being a mere toy for her twisted hunger[otherwise]never relents in tormenting her toy in the name of her twisted hunger[end if]";
			say ". These persisting motions quickly arousing you, [if cocks of player is 0 and cunts of player is 0]much in spite your lack of outlet[otherwise if hp of player < 1 and player is not submissive]much in spite your better judgment[otherwise]writhing impotently against these tainted confines[end if], it's not long before ";
			if lust of player > 33 and (cunts of player > 0 or cocks of player > 0):
				say "you cry out in orgasm, [if cocks of player > 0]your throbbing, sputtering cock[smn][otherwise]your audible climax[end if] more than enough to bring her over the edge along with you. The [if daytimer is night]night[otherwise]day[end if]'s light replaced with an oppressive blackness, your [if FYDTBMM is 0]uncertain[otherwise]inevitable[end if] fate is punctuated by your sudden disappearance, pulled into the depths of her voracious portal in the wake of her bliss.";
			otherwise:
				say "finally she cries out in orgasm, the [if daytimer is night]night[otherwise]day[end if]'s light replaced with an oppressive blackness, pulled into the depths of her voracious portal in the wake of this bliss.";
			say "     Such a prison as this, you imagine she could crush you with this grip, pulled deeper with each successive throb, seemingly going on for an eternity before you're finally granted the mercy of her comparatively less overbearing womb, only given a few seconds to appreciate the relief before thought fades from you entirely. Outwardly, [if scalevalue of player > 3]the dragoness would no doubt look somewhat pregnant with your impressive form, though perhaps this serpentine creature perceives this as a mere trophy, signifying her[otherwise]your captivity would be imperceivable, further punctuating this dragoness's[end if] complete and utter dominance over you.";
			infect;
			if waiterhater is 0, wait for any key;
			say "[line break]";
			if ("Kinky" is listed in feats of player and a random chance of 1 in 3 succeeds) or ("Horny Bastard" is listed in feats of player and a random chance of 1 in 3 succeeds) or a random chance of 1 in 6 succeeds:
				say "     You're gradually roused from unconsciousness by the feel of something slick and scaled writhing against your [bodytype of player] form. Quickly realizing you're walled off within the translucent confines of an egg, the immediate and much more apparent issue is quickly brought to your attention. Another, much closer to your size, ";
				if a random chance of 1 in 2 succeeds and guy is not banned:
					say "dragon is wrapped around you. You can only assume that you weren't enough to satisfy your captor's mad need and left you another victim to keep you company. You can feel your body having long been impaled by his throbbing, ever-hard dick. Try to free yourself of him?";
					if player consents:
						let bonus be ( strength of player - 10 ) / 2;
						let target be 14;
						if "Submissive" is listed in feats of player, increase target by 1;
						let dice be a random number from 1 to 20;
						if bonus + dice is greater than target:
							say "     Thankfully, you manage to pry the serpentine creature free of your form, soon breaking out of the egg and fleeing before he can crawl after you. Exhausted mess as you are, and it takes you some time to find your things and head back out from where you came.";
						otherwise:
							say "     It's not enough, the serpentine creature's grip on you is vice-like, and it's clear he's not going to leave you be";
							if "Horny Bastard" is listed in feats of player:
								say ". Shifting slightly against this tight prison, you quickly realize how sore and bloated your stomach is from the other occupant's seed, empowered by some unholy libido that's been compelling him to use you for a fair amount of time now.";
							otherwise:
								say ". Loud, irreverent groans escaping the beast's scaled lips, he's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding his coarse, elongated frame against yours with a blind determination.";
							say "     Twisted, heated confines filled with the wet sounds of his persisting motion, you're eventually met with a long, exhausted groan by the creature, hot seed flooding your depths before he -- finally -- goes limp, spent, and loosens up his hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to find your things and head back from where you came.[impregchance] [mimpregchance][line break]";
							infect;
					otherwise:
						say "     In spite what better judgment you might have, you oblige the serpentine creature's need";
						if "Horny Bastard" is listed in feats of player:
							say ". Shifting slightly against this tight prison, you quickly realize how sore and bloated your stomach is from the other occupant's seed, empowered by some unholy libido that's been compelling him to use you for a fair amount of time now.";
						otherwise:
							say ". Loud, irreverent groans escaping the beast's scaled lips, he's rather shameless in his need for relief, in spite of these particularly twisted circumstances, grinding his coarse, elongated frame against yours with a blind determination.";
						say "     Twisted, heated confines filled with the wet sounds of his persisting motion, you're eventually met with a long, exhausted groan by the creature, hot seed flooding your depths before he -- finally -- goes limp, spent, and loosens up his hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to find your things and head back from where you came.[impregchance] [mimpregchance][line break]";
						infect;
				otherwise:
					say "dragoness is wrapped around you. You can only assume that you weren't enough to satisfy your captor's mad need and left you another victim to keep you company. [if cocks of player > 1]You feel blatantly hard, forcibly impaling her with one of your cocks[otherwise if cocks of player is 1]You feel blatantly hard, forcibly impaling her with your cock[otherwise]Having nothing to impale herself with, she shows no restraint in grinding her rough form against you[end if]. Try to free yourself of her?";
					if player consents:
						let bonus be ( strength of player - 10 ) / 2;
						let target be 14;
						if "Submissive" is listed in feats of player, increase target by 1;
						let dice be a random number from 1 to 20;
						if bonus + dice is greater than target:
							say "     Thankfully, you manage to pry the serpentine creature free of your form, soon breaking out of the egg and fleeing before he can crawl after you. Exhausted mess as you are, and it takes you some time to find your things and head back out from where you came.";
						otherwise:
							say "     It's not enough, the serpentine creature's grip on you is vice-like, and it's clear he's not going to leave you be";
							if "Horny Bastard" is listed in feats of player:
								say ". Shifting slightly against this tight prison, you quickly realize how sore and used you are, [if cocks of player > 0]cock[smn] strained by overuse[otherwise]body strained from the constant grinding of her scaled form[end if], empowered by some unholy libido that's been compelling her to use you for a fair amount of time now.";
							otherwise:
								say ". Loud, irreverent groans escaping the beast's lips, she's rather shameless in her need for relief, in spite of these particularly twisted circumstances, grinding her scaled, elongated frame against yours with a blind determination.";
							say "     Twisted, heated confines filled with the wet sounds of her persisting motion, you're eventually met with a long, exhausted groan by the creature, hot honey drenching your groin, before she -- finally -- goes limp, spent, and loosens up her hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to gather your things and head back out from where you came.";
							infect;
					otherwise:
						say "     In spite what better judgment you might have, you oblige the serpentine creature's need";
						if "Horny Bastard" is listed in feats of player:
							say ". Shifting slightly against this tight prison, you quickly realize how sore and used you are, [if cocks of player > 0]cock[smn] strained by overuse[otherwise]body strained from the constant grinding of her scaled form[end if], empowered by some unholy libido that's been compelling her to use you for a fair amount of time now.";
						otherwise:
							say ". Loud, irreverent groans escaping the beast's lips, she's rather shameless in her need for relief, in spite of these particularly twisted circumstances, grinding her scaled, elongated frame against yours with a blind determination.";
						say "     Twisted, heated confines filled with the wet sounds of her persisting motion, you're eventually met with a long, exhausted groan by the creature, hot honey drenching your groin, before she -- finally -- goes limp, spent, and loosens up her hold enough for you to break yourself out of the shell. You're a complete, worn out mess by this point, and it takes you some time to gather your things and head back out from where you came.";
						infect;
			otherwise:
				say "     You're gradually roused back from unconsciousness, quicking finding yourself trapped within the tight, translucent confines of an egg, compelling yourself to break free of this hot, moist prison. Exposed to the dry, [if daytimer is night]night[otherwise]day[end if]time air once more, she at least offered the small courtesy of leaving you [if showlocale is true]in the park[otherwise]where you first met[end if]. It takes you some time to find your things and return back from whence you came.";
		otherwise if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
			if cocks of player > 0 and a random chance of 1 in 2 succeeds:
				say "     Pinning you to the ground with a talon, you feel her scaled lips encircle your [if cockname of player is listed in infections of Internallist]crotch, coaxing your [cock size desc of player] cock[smn] out into the open air[otherwise][cock size desc of player] cock[smn], coaxing you into becoming fully hard[end if]. Satisfied with your preparation, she pulls your [if hp of player > 0]exposed[otherwise]battered[end if] form up into the air with her.";
				say "     '[one of]Such a little thing, I will grant you but a glimpse of your inevitable fate[or]So small and flightless you are, feel the open sky, as we all do[or]You will feel what only I might offer you[at random].' Drawing attention to your shared infection, her influence floods you with a rush of uncontrollable, tainted excitement at the notion of being great beast's consort.";
				say "     Her larger frame soon entwining itself with your own, you can feel the dragoness's scales grind firmly against you";
				if cocks of player > 2:
					say ". She's intent on having you impale her with your [cock size desc of player] dicks, lining yourself up [if cock length of player > 24]enveloping one within her reptilian vent[otherwise]enveloping two within her reptilian vent[end if] with little difficulty, brother[if cocks of player > 3]s[otherwise if cock length of player > 24 and cocks of player is 3]s[end if] left exposed to the open air";
					if FYDM is 0:
						say ". [if cock length of player < 10]Much in spite your cock's small size, she seems to command a power that makes her scaled cunt overwhelmingly tight, further intensified by having two engulfed[otherwise if cock length of player < 25]She's quick to flaunt her now-apparent ability to take your expansive girth by enveloping the two, even as these almost otherworldly tight confines put a strain on your cocks[otherwise]It's clear that she can only take one of your cocks -- an impressive feat in of itself given its sheer size -- though this doesn't change how overwhelmingly, almost excessively tight these confines feel[end if]";
					otherwise:
						say ". [if cock length of player < 10]Much in spite your cock's small size, her scaled cunt remains infinitely tight, further intensified by having two engulfed[otherwise if cock length of player < 25]She's quick to flaunt her ability to take your expansive girth by enveloping the two, even as these very tight confines put a strain on your cocks[otherwise]It's clear that she can only take one of your cocks -- an impressive feat in of itself given its sheer size -- though this doesn't change how overwhelmingly tight these confines feel[end if]";
					say ", supple flesh a vice's hold on you.";
				otherwise if cocks of player is 2:
					say ". She's intent on having you impale her with your [cock size desc of player] dicks, lining yourself up and [if cock length of player > 24]enveloping one within her reptilian vent with little difficulty, leaving its brother to the open air[otherwise]enveloping the two within her reptilian vent with little difficulty[end if]";
					if FYDM is 0:
						say ". [if cock length of player < 10]Much in spite your cock's small size, she seems to command a power that makes her scaled cunt overwhelmingly tight, further intensified by having both engulfed[otherwise if cock length of player < 25]She's quick to flaunt her now-apparent ability to take your expansive girth by enveloping both, even as these almost otherworldly tight confines put a strain on your cocks[otherwise]It's clear that she can only take one of your cocks -- an impressive feat in of itself given its sheer size -- though this doesn't change how overwhelmingly, almost excessively tight these confines feel[end if]";
					otherwise:
						say ". [if cock length of player < 10]Much in spite your cock's small size, her scaled cunt remains infinitely tight, further intensified by having both engulfed[otherwise if cock length of player < 25]She's quick to flaunt her ability to take your expansive girth by enveloping the two, even as these very tight confines put a strain on your cocks[otherwise]It's clear that she can only take one of your cocks -- an impressive feat in of itself given its sheer size -- though this doesn't change how overwhelmingly tight these confines feel[end if]";
					say ", supple flesh a vice's hold on you.";
				otherwise:
					say ". She's intent on having you impale her with your [cock size desc of player] dick, lining yourself up and enveloping it within her reptilian vent with little difficulty";
					if FYDM is 0:
						say ". [if cock length of player < 13]Much in spite your cock's small size, she seems to command a power that makes her scaled cunt overwhelmingly tight[otherwise if cock length of player < 25]Though you imagine you'd at least be a somewhat reasonable fit for her, she seems to command a power that makes her scaled cunt overwhelmingly tight[otherwise]That she can even take your rod is a feat impressive in of itself, though this doesn't change how overwhelmingly, almost excessively tight these confines feel[end if]";
					otherwise:
						say ". [if cock length of player < 13]Much in spite your cock's small size, her scaled cunt remains infinitely tight[otherwise if cock length of player < 25]Though you imagine you'd at least be a somewhat reasonable fit for her, her scaled cunt remains infinitely tight[otherwise]That she can even take your rod is a feat impressive in of itself, though this doesn't change how overwhelmingly tight these confines feel[end if]";
					say ", supple flesh a vice's hold on you.";
				say "     Chilling wind lashing against you, it does little to cool the heat of this dragoness's fiery need. Her long, winding form easily eclipsing yours, you're nothing more than a twisted captive to her merciless hole's overwhelming hunger";
				if libido of player > 33:
					say ". The whole ordeal is more than enough to make you quickly reach your climax.";
					say "     '[one of]Yes, yes[or]Yes, now[or]More, more[at random]! [one of]Offer yourself unto me[or]Do not relent[or]All that you have will be mine[at random]!' She cries out as you pump into her, strained gout after gout, full with your [cum load size of player] load";
					if cocks of player > 2 or (cocks of player is 2 and cock length of player > 24):
						say ", exposed dick[if cocks of player > 3]s[otherwise if cocks of player is 3 and cock length of player > 24]s[otherwise][end if] wasting your seed impotently across the open air, down to the trees below";
					say ". It's more than enough to set her off as well, powerful form tight as a noose around your quickly spent frame, intent on squeezing you dry of every last drop.";
				otherwise:
					say ". It seems like an eternity before she finally roars out in bliss, her powerful form tight as a noose around your exhausted frame, intent on squeezing you into climaxing.";
					say "     '[one of]Yes, yes[or]Yes, now[or]More, more[at random]! [one of]Offer yourself unto me[or]Do not relent[or]All that you have will be mine[at random]!' She cries out as you forced into orgasm, pumping her, strained gout after gout, full with your [cum load size of player] load";
					if cocks of player > 2 or (cocks of player is 2 and cock length of player > 24):
						say ", exposed dick[if cocks of player > 3]s[otherwise if cocks of player is 3 and cock length of player > 24]s[otherwise][end if] wasting your seed impotently across the open air, down to the trees below";
					say ". Her overwhelming grip is relentless until you're milked dry of every last drop.";
				say "     Shared fatigue the anchor that pulls you once more to the ground, she finally frees you from her grip, slowly rising once more into the air to depart in silence. Gradually catching your breath, you're left to gradually recover from the creature's powerful influence, [if cock length of player < 24 and FYDM is 0]checking over your exceedingly sore cock[smn] to find that they seem slightly enlarged from the ordeal, though you're not rightly sure if it'll have any lingering effects[otherwise if cock length of player < 24]checking over your exceedingly sore cock[smn] to see that it does indeed appear larger from the ordeal.[run paragraph on].[run paragraph on][otherwise]your oversized cock[smn] feeling extremely sore from the ordeal[end if].";
				if FYDM is 0, now FYDM is 1;
				if "Modest Organs" is not listed in feats of player and cock length of player < 24:
					say "[line break]";
					if "Microwaved" is listed in feats of player:
						say "WARNING: Cock length change detected! Allow?";
						if player consents:
							if cock length of player < 18:
								increase cock length of player by 2;
							otherwise:
								increase cock length of player by 1;
							follow the cock descr rule;
							say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if cocks of player > 1]they gain[otherwise]it gains[end if] in length, becoming [descr]!";
						otherwise:
							say "     It looks like you recover to their original size after treating it.";
					otherwise:
						if cock length of player < 18:
							increase cock length of player by 2;
						otherwise:
							increase cock length of player by 1;
						follow the cock descr rule;
						say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if cocks of player > 1]they gain[otherwise]it gains[end if] in length, becoming [descr]!";
			otherwise:
				say "     Grabbing you by your hind leg, you find yourself being dragged into the air, now subjected to the blowing wind along your ascent. Exposed before the [if daytimer is night]n[otherwise]br[end if]ight sky, her taloned legs pull your head to his scaled snatch, revealing your imposed [if hp of player > 0 or player is submissive]task.[run paragraph on] Obligingly[otherwise]punishment.[run paragraph on] Reluctantly[end if], your tongue caresses along its coarse lips, had scaling gradually parting way to reveal her soft flesh, inviting your writhing organ's slick touch.";
				say "     '[one of]Yes[or]Ah[or]Mm[at random]... [one of]You will learn your place, whelp[or]You have but a taste of what I offer you[or]This is your natural appointment, under me as you are now[at random].' Her remark is punctuated by the feel of her talon";
				if cocks of player > 0 or cunts of player > 0:
					say "[if cocks of player > 2]s, gripping two of your now-hardening, [cock size desc of player] cocks, putting you in an even more vulnerable position now that her sole hold on you is by your most sensitive organs[otherwise if cocks of player is 2]s, gripping both of your now-hardening, [cock size desc of player] cocks, putting you in an even more vulnerable position now that her sole hold on you is by your most sensitive organs[otherwise if cocks of player is 1]'s grip, latched onto your now-hardening, [cock size desc of player] cock, the other holding your similarly serpentine torso in place[otherwise if cunts of player > 1]'s grip on your diminutive frame, freeing one to briefly tease one of your exposed portals[otherwise]'s grip on your diminutive frame, freeing one to briefly tease your exposed portal[end if]. Eclipsing you in size, you can't help but shudder at the overwhelming sensation of her own tongue's reciprocation across [if cocks of player > 1]one of your cock's length[otherwise if cocks of player is 1]the length of your cock[otherwise]your [bodytype of player] form[end if].";
					say "     Tight, heated vent inviting you to continue, your lips embrace the dragoness's hungry cunt and, in turn, she rewards your attendance with her own, draconic maw embracing [if cocks of player > 1]one of your dicks, pumping its exposed brother[otherwise if cocks of player > 0]your dick[otherwise if cunts of player > 1]the one of your own cunts[otherwise if cunts of player > 0]your own cunt[end if]. The victim half of this twisted ouroboros, ";
					If libido of player > 33:
						say "a muffled cry is quickly forced from your stuffed lips in blissful release, your subjugator[if cocks of player > 0] showing no relent in swallowing down your gushing, [cum load size of player] flood of sexual fluids[otherwise]'s tongue showing no relent in pounding your gushing pussy[end if], [if cocks of player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your unengulfed cocks[otherwise if cocks of player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your unengulfed cock[otherwise if cocks of player > 0]greedily milking you of every last drop[otherwise]driving you wild in throes of ecstasy[end if]. In the wake of this, you feel his talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey.";
					otherwise:
						say "you eventually feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey. Shortly, in the wake of this, a muffled cry is forced from your stuffed lips in blissful release, your subjugator[if cocks of player > 0]showing no relent in consuming your gushing, [cum load size of player] flood of sexual fluids[otherwise]'s tongue showing no relent in assaulting your stuffed pussy[end if], [if cocks of player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[otherwise if cocks of player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[otherwise if cocks of player > 0]milking you of every last drop[otherwise]driving you wild in the throes of bliss[end if].";
				otherwise if ("less anal" is not listed in feats of player and a random chance of 1 in 2 succeeds) or "more anal" is listed in feats of player:
					say "'s grip on your diminutive frame. Eclipsing you in size, as she does, you can't help but shudder at the overwhelming sensation of her tongue's twisted reciprocation, penetrating your anal ring without remorse, no doubt a torment to your genderless form.";
					say "     Tight, heated vent inviting you to continue, your lips embrace the dragoness's hungry cunt and, in turn, she rewards your attendance with her own, draconic maw enveloping your anal ring, causing you to writhe in insatiable need. The [if hp of player < 1 and player is not submissive]victim[otherwise]smaller[end if] half of this twisted ouroboros, you eventually feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey.";
				otherwise:
					say "'s grip on your diminutive frame. Eclipsing you in size, as she does, you can't help but shudder in the wake of her twisted reciprocation, large tongue caressing your genderless crotch, teasing you in the midst of your submissive task.";
					say "     Tight, heated vent inviting you to continue, your lips embrace the dragoness's hungry cunt and, in turn, he rewards your attendance by continuing to tease you, causing you to writhe in insatiable need. The [if hp of player < 1 and player is not submissive]victim[otherwise]smaller[end if] half of this twisted ouroboros, you eventually feel her talons push your head firm against her scaled cunt, tongue assaulted by her throbbing vent and subsequently forcing you to take every drop of her ensuing flood of tainted honey.";
				say "     After a few moments, she finally wrenches you free of her, setting you down on the ground by your tail. Satisfied, she grins at you for a moment before silently floating off, away from you[if cocks of player > 1] and your cum-soiled self[end if], doubtlessly fatigued and lust sated. You gather your things[if cocks of player > 1], clean yourself off,[end if] and depart back from whence you came.";
		otherwise:
			if cocks of player > 0 and a random chance of 1 in 2 succeeds:
				say "     [if hp of player < 1 and player is not submissive]Charged by a surge of rebellion, you make one final attempt to crawl away, only to be grabbed by the dragoness and dragged closer[otherwise]Tainted need clear in her eyes, the dragoness shows no restraint in pulling you closer to her[end if]. [if scalevalue of player > 4]Massive as you are, [one of]it's clear[or]you're reminded[stopping] that she eclipses even you in size[otherwise if scalevalue of player is 4]Fairly large as you are, [one of]it's clear[or]you're reminded[stopping] that she's much, much larger than you[otherwise]Her appearance is somewhat intimidating, given how absolutely massive she is[end if]; regardless, you're forced to watch on as her scaled snout descends on you, tongue emerging to caress your  [if cockname of player is listed in infections of Internallist]crotch, coaxing your [cock size desc of player] cock[smn] out into the open air[otherwise]exposed, [cock size desc of player] cock[smn], coaxing you into becoming fully hard[end if][if hp of player > 0 and player is not submissive], in spite of your better judgment[end if].";
				say "     Blatantly revealing her plans for you, she slowly begins to shift over, lengthy, serpentine frame giving way until the creature's reptilian vent is exposed before you";
				if FYDM is 0:
					say ". Patiently lining herself up with you, [if cock length of player < 20]you're not rightly sure how she intends to get anything out of this exchange, there's no way anyone of your size could be reasonably equipped for this monster.[run paragraph on] This reality never seems to cross her mind as[otherwise]you imagine it must be uncommon for the monster to encounter someone as well-endowed as you are, clearly eager to get things going as[end if] she sinks ";
					if cock length of player < 25:
						say "[if cocks of player > 2]two of your cocks[otherwise if cocks of player is 2]both of your cocks[otherwise]your cock[end if]";
					otherwise:
						say "[if cocks of player > 2]one of your numerous cocks[otherwise if cocks of player is 2]one of your twin cocks[otherwise]your cock[end if]";
					say " past her folds. Hardened, yellow scales parting to expose your touch to her soft inner-flesh.";
					say "     The dragoness's hole reveals itself to be unbelievably tight[if cock length of player < 20], a feat almost otherworldly given your organ's relative size[end if], powerful passage throbbing across every aching inch you offer her. Massive frame pinning you to the earth, you're forced to endure a portion of the creature's weight as she begins to ride you.";
				otherwise:
					say ". Familiar, foreboding snach exposed, she clearly eager to exploit her twisted ability upon her little [if hp of player > 0]toy[otherwise]victim[end if]. You're forced to watch on as she carefully lines herself up before sinking ";
					if cock length of player < 25:
						say "[if cocks of player > 2]two of your cocks[otherwise if cocks of player is 2]both of your cocks[otherwise]your cock[end if]";
					otherwise:
						say "[if cocks of player > 2]one of your numerous cocks[otherwise if cocks of player is 2]one of your twin cocks[otherwise]your cock[end if]";
					say " past her folds. Hardened, yellow scales parting to expose your touch to her soft inner-flesh.";
					say "     The giant creature is at least mindful enough not to crush you under her weight as she pins you to the ground, but that's a small mercy compared to her vice-like grip on your quickly strained organ[if cocks of player > 1 and cock length of player < 25]s[end if], twisted passage throbbing across every aching inch you offer her, slowly beginning to ride against you.";
				say "     '[one of]Oh, I love it when they squirm like that[or]You are mine now[or]Give up what is mine, whelp[at random]!' Drowning in a sea of heat radiating from the dragoness, your [if scalevalue of player > 3]crotch[otherwise]lower half[end if] quickly drenched in her tainted honey, the sheer power of her influence is more that enough to easily force an orgasm from you, ";
				if cock length of player < 25:
					say "[if cocks of player > 3]twin, strained dicks unloading their [cum load size of player] load into her, exposed ones quickly making a mess of the both of you[otherwise if cocks of player > 2]twin, strained dicks unloading their [cum load size of player] load into her, exposed one quickly making a mess of the both of you[otherwise if cocks of player is 2]twin dicks unloading their [cum load size of player] load into her, strained by the serpent's overwhelming grip[otherwise]dick unloading its [cum load size of player] load into her, strained by the serpent's overwhelming grip[end if].";
				otherwise:
					say "[if cocks of player > 2]strained dick unloading its [cum load size of player] load into her, exposed ones quickly making a mess of the both of you[otherwise if cocks of player is 2]strained dick unloading its [cum load size of player] load into her, exposed one quickly making a mess of the both of you[otherwise] dick unloading its [cum load size of player] load into her, strained by the serpent's overwhelming grip[end if].";
				say "     Your organ[if cocks of player > 1 and cock length of player < 25]s'[otherwise]'s[end if] tight prison is quickly puts even more of a strain on you as you're forced to endure the throes of the monster's own bliss, triggered, no doubt, by yours. Roaring out loudly as her body grinds you ever more firmly against the earth, she squeezes you dry of every last drop you can offer her.";
				say "     The beast's need finally sated, she eventually stops pinning you down as she pulls free of you. Slowly circling around your exhausted self, the grinning dragoness is doubtlessly amused by you, eventually departing back into the air in silence. Gradually catching your breath, you're left to recover from the creature's powerful influence, [if cock length of player < 24 and FYDM is 0]checking over your exceedingly sore cock[smn] to find that they seem slightly enlarged from the ordeal, though you're not rightly sure if it'll have any lingering effects[otherwise if cock length of player < 24]checking over your exceedingly sore cock[smn] to see that it does indeed appear larger from the ordeal.[run paragraph on].[run paragraph on][otherwise]your oversized cock[smn] feeling extremely sore from the ordeal[end if].";
				if FYDM is 0, now FYDM is 1;
				if "Modest Organs" is not listed in feats of player and cock length of player < 24:
					say "[line break]";
					if "Microwaved" is listed in feats of player:
						say "WARNING: Cock length change detected! Allow?";
						if player consents:
							if cock length of player < 18:
								increase cock length of player by 2;
							otherwise:
								increase cock length of player by 1;
							follow the cock descr rule;
							say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if cocks of player > 1]they gain[otherwise]it gains[end if] in length, becoming [descr]!";
						otherwise:
							say "     It looks like you recover to their original size after treating it.";
					otherwise:
						if cock length of player < 18:
							increase cock length of player by 2;
						otherwise:
							increase cock length of player by 1;
						follow the cock descr rule;
						say "You can see your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random][otherwise][one of]cocks[or]penises[or]shafts[or]malenesses[at random][end if] [one of]engorge[or]swell[or]throb[at random][smv] as [if cocks of player > 1]they gain[otherwise]it gains[end if] in length, becoming [descr]!";
			otherwise:
				say "     She grabs a hold of your [if scalevalue of player > 4]massive[otherwise if scalevalue of player is 4]large[otherwise if scalevalue of player < 4]small[end if], [bodytype of player] body, vicious talons encircling you, before pulling you into the air with little difficulty. The serpentine dragoness having laid down [if showlocale is true]in the park, a feat not particularly easy -- at least, not without making a bit of a mess, given her size --[otherwise]before you, ground trembling with the massive beast's landing[end if] as [if hp of player < 1 and player is not submissive]you struggle impotently against her hold[otherwise]she eyes you with a curious expression[end if].";
				say "     She illuminates her plans for you when she sets you back down where her pelvic region resides, yellow-scaled cunt exposed to the open air. [if scalevalue of player < 4 and FYDM is 0]Clearly interested in having you pleasure her, it's not apparent how she expects someone of your size to actually go about and do that; regardless, she pushes you forward against the reptilian vent[otherwise]Reptilian vent exposed before you, she urges you closer to it[end if].";
				say "     Her plan for you is made very clear when she sets you back down where between her stout, hind legs, yellow-scaled cunt exposed to the open air. With very little restraint, the dragon urges you closer to it, pressing you firmly against its carnal lips as it already begins to ooze her tainted juices.";
				say "     '[one of]Get to work[or]Hurry up[or]Don't waste my time[at random], [one of]I have little patience for stalling[or]whelp[or]you wouldn't want to test my patience[or]you're mine now[at random]!' [if hp of player < 1 and player is not submissive]Reluctantly, you're made to[otherwise]Obligingly, you[end if] use your tongue to further invite her arousal. Slick portal eagerly squeezing against your initial, curious endeavours, you gradually plunge the organ deeper, [if scalevalue of player < 4]diminutive head pressed firmly against her lips as her tough scales part[otherwise]tough scales parting[end if] to expose soft, supple flesh to you touch. [if FYDM is 0 and scalevalue of player < 4]Even as small as you are, her passage, oddly enough, remains extremely tight, almost challenging you efforts to invade her hole[otherwise if FYDM is 0]Strangely enough, her passage remains extremely tight even with the most conservative approach, almost challenging any effort to invade her hole[otherwise]Even as you work, her strangely tight portal continues to lightly challenge any effort to invade her hole[end if].";
				if FYDM is 0, now FYDM is 1;
				say "     Deep, approving moans escaping your captor's scaled lips, she presses you more firmly against her aching pussy, your maw quickly contending with the rising flood of her honey, senses quickly flooded with the taste and scent of her intoxicating sex. Relegated to a mere attendant to the dragoness's need, [if cocks of player > 0]you're driven erect[otherwise if cunts of player > 0]you're made blatantly aroused[otherwise]you find yourself tormented by an insatiable need[end if], overwhelming heat radiating from eager hole. It becomes unbearable, driving you to grind your [if cocks of player > 0]dick[smn][otherwise if cunts of player > 0]own cunt[sfn][otherwise]genital-less crotch[end if] against her ribbed body, slicked by her sexual fluids, the beast's wanton need rising in turn.";
				say "     In due time the serpent cries out in bliss, deceptive vent tightening against your hands as she's wracked in the throes of her orgasm";
				if libido of player > 50 and (cocks of player > 0 or cunts of player > 0):
					say ", more than enough to drive you into a similar release, painting the side of her hole with your own sexual fluids";
				otherwise:
					say ", forcing you to abide her wanton fury as you're beleaguered frame is doused by her bestial honey";
				say ". It takes but a moment of recovery before she finally pulls you free of her, setting off into the sky once more and leaving you to clean yourself and, once more, gather your thoughts from the ordeal.";
	if voreloss is false:
		now tempnum is 0;
		yamatbiasshift;

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
	now defeated entry is "You successfully manage to fend off the dragoness, who is forced to float off in retreat.";[ Text or say command used when Monster is defeated.]
	now victory entry is  "[Yamato Dragoness attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[yamato dragoness desc]";[ Description of the creature when you encounter it.]
	now face entry is "distinctly draconic; long-snouted, a pair of curious, lengthy whiskers at its tip, and a stout pair of antlers and a golden mane at the crown, flowing down to your neck"; [ Face description, format as the text "Your face is (your text)."]
	now body entry is "elongated, serpentine with stout, taloned fore and hind limbs and a fin-like, golden mane across its length"; [ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "smooth, [if ydcolour is 0]red[otherwise if ydcolour is 1]blue[otherwise if ydcolour is 2]green[end if]-scaled with a coarse yellow underside adorning your"; [ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "You wield a very long, reptilian tail with an impressive, fin-like mane of golden hair at the end."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "draconic, pink, and ribbed"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you suddenly feel overwhelmed by a sudden change, face elongating into a proud, draconic snout, a pair of very lengthy whiskers sprouting from it's tip. Two short antlers and a mane of golden hair growing from the back of your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you soon double over, frame shifting into something now much more elongated, arms and legs shifting in shape to something much more stout and less equipped to walk around. As you recover, you see that you're quite large, too, though you're likely only a little over two-thirds the size from which this strain originates, and you can't fly -- only able to hover with limited efficacy. A golden mane now runs across the entire length of your serpentine torso"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "[ydskinchange]"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a lengthy tail sprouts forth from it.  It takes some time to adjust to it, limb adorned in a golden, fin-like mane, culminating in a flattened tuft at the tip"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
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

Section 3 - Vore Bound State

to YamatFvore:
	now lustatt is libido of player;
	now calcnumber is -1;		
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if hp of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     Finding yourself overtaken by lust, you are given no choice but to furiously [if cocks of player > 0]jerk yourself off[otherwise]fondle yourself[end if], writhing and twisting in these dark, damp confines until you finally find reprieve, [if cocks of player > 0]unloading your [cum load size of player] load against the supple flesh[otherwise if cunts of player > 0]cunt throbbing firmly against the supple flesh[otherwise]a particularly trying task given your lack of outlet[end if][if cocks of player > 0 and cock width of player > 20]. This wasn't a particularly wise task, as you're now made to swim in a pool of your own seed, though it thankfully diminishes over time[end if]. Panting to catch your breath, your mental faculties eventually return to you, leaving you to assess the matter at hand.[line break]";
			decrease libido of player by (libido of player / 10) + 1;
			if libido of player < 0, now libido of player is 0;
			now lustatt is libido of player;
			if struggleatt > 0, decrease struggleatt by 1;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			otherwise:
				decrease humanity of player by 15 + (psycheadjust * 5);
		increase boundcounter by 1;
		yamatbowelmovement;
		if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
			increase hunger of player by 1;
			increase thirst of player by 2;
		otherwise if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
			increase thirst of player by 1;
		now enduring is false;
		say "     Bathed in saliva and utter darkness, you're enveloped by the dragoness's churning, pinkish stomach. [one of]You feel yourself slowly being drained by these twisted confines[or]It churns and groans against its writhing occupant[or]You find it extremely hard to figure up from down in this tainted prison[at random]. You're presently in the monster's [bold type][if boundsegment is 0]first[otherwise if boundsegment is 1]second[otherwise if boundsegment is 2]third[otherwise]fourth[end if][roman type] stomach. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[otherwise][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[otherwise][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[otherwise]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[otherwise]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of player]	Thirst: [thirst of player]	Struggle: [yamatstrugglebar][line break][run paragraph on]";
		if humanity of player < 1:
			now bodyname of player is "Yamato Dragon";
			now facename of player is "Yamato Dragon";
			now tailname of player is "Yamato Dragon";
			now skinname of player is "Yamato Dragon";
			now cockname of player is "Yamato Dragon";
			now tempnum is 0;
			now voreloss is true;
			now trixieexit is 1;
		otherwise:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				say "[line break]";
				increase struggleatt by 1;
				if (boundsegment < 2 and struggleatt < 2) or (boundsegment > 1 and struggleatt < 3):
					say "     You struggle to escape these twisted confines, writhing and fighting against the flesh that holds you. The dragoness lowly [one of]growls[or]groans[at random] as her body churns in ill-content towards its disruptive occupant.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
				otherwise:
					if boundsegment is 0:
						say "     Unable to keep you down any longer, you feel the dragoness loudly begin to hack as you're squeezed out from the stomach's confines and back up through her throat. Quickly flung from her maw, the creature grabs you with one of her talon. Gripping you with disdain, she leers at you before tossing you back down to the earth.";
						say "     '[one of]Hmpf[or]Ugh[or]Disgusting[at random], [one of]perhaps I shall find a prey that respects its meal[or]you were hardly worth my time anyways[or]you just can't help but be an annoyance, I see now[at random]...' Sneering at you, she floats off into the distance, leaving you to recover. Exhausted and saliva soaked, it takes you a while to find your things and return from whence you came.";
						cleanboundmemory;
						now trixieexit is 1;
						follow the turnpass rule;
					otherwise if boundsegment is 1:
						now boundmod is 0;
						now boundsegment is 0;
						now struggleatt is 0;
						yamatmstomachascent;
					otherwise if boundsegment is 2:
						now boundmod is 0;
						now boundsegment is 1;
						now struggleatt is 0;
						yamatmstomachascent;
					otherwise if boundsegment is 3:
						say "     Unable to hold you in any longer, your feel the dragoness's body loudly groan, stomach squeezing around you and forcing you downwards one final time. Body twisted and contorted as you're forced through the monster's labyrinthine bowels, its grip on you extremely tight[if scalevalue of player < 4] even in spite of your small size[end if], you eventually feel yourself forced past her tight ring, exposing yourself to the cool, dry air once more.";
						say "     Grabbing you before you can fall to the earth, the beast's grip is nonetheless fairly limp, glaring at you with mild contempt before tossing you to earth once more.";
						say "     '[one of]Hmpf[or]Ugh[or]Disgusting[at random], [one of]perhaps I shall find a prey that respects its meal[or]I suppose I got all I can from this writhing little worm[or]you just can't help but be an annoyance, I see now[at random]...' Sneering at you, she floats off into the distance, leaving you to recover. Exhausted and saliva soaked, it takes you a while to find your things and return from whence you came.";
						cleanboundmemory;
						now trixieexit is 1;
						follow the turnpass rule;
				wait for any key;
				next;
			otherwise if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				say "[line break]";
				if obliging is true:
					say "     You're compelled to submit to you tainted prison, [one of]your captor rumbly lowly in approval of her compliant meal[or]the dragon idly playing with writhing meal as you feel her talon's caress against you from the outside[or]your captor lounging happily as she drains her meal[at random].";
					if boundsegment is not 3:
						increase boundmod by 1;
					increase lustatt by 14 + (lustadjust * 4);
				otherwise:
					say "     You're driven to tolerate these extreme circumstances, [one of]your captor floating about idly as she slowly drains her meal[or]the dragoness idly prodding at you as you writhe within your confines[or]the monster rumbly lowly in approval of her meal[at random].";
					if a random chance of 2 in 3 succeeds and boundsegment is not 3:
						increase boundmod by 1;
					increase lustatt by 7 + (lustadjust * 2);
				wyvhumanityroll;
				wait for any key;
				next;
			otherwise:
				say "[line break]";
				now enduring is true;
				if a random chance of 1 in 3 succeeds and boundsegment is not 3:
					increase boundmod by 1;
				if boundrecover is true:
					increase humanity of player by 3;
					if humanity of player > 100, now humanity of player is 100;
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
				otherwise:
					say "     You struggle to retain clarity from within these slick, writhing confines, resisting the dragoness's power over you. [one of]She seems to audibly mock you as you resist[or]Your captor doesn't seem to care all too much about your struggles[or]You feel yourself tested as the monster teases you by prodding you with a talon over her firm scales[at random].";
				increase lustatt by 4 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";

[ Edit this to have the correct Name as wall]
Yamato Dragoness For FS ends here.
