Version 4 of Yamato Dragon For FS by Kohryu begins here.
[ Version 4 - Complete Overhaul and TBM scene by Blue Bishop, as overseen by Stripes]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a Yamato Dragon to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Yamato Dragon" } to infections of guy;

MYDTBMM is a number that varies; [Male Yamato Dragon TBM Memory]
MYDAM is a number that varies; [Male Yamato Dragon Anal Memory]
MYDGM is a number that varies; [Male Yamato Dragon Gimmick Memory]
ydcolour is a number that varies;

[ Use To say for overlong behaviours that would make the table difficult to read and understand. Typically needed if there are alot of cock/species/cunt checks. ] 
to say Yamato Dragon attack:
	if HP of player > 0:
		say "     You ultimately choose to surrender yourself to the serpentine creature's mercy, dropping all that you might be carrying as a concession to his will. When it's clear that this isn't some manner of trick he draws near, a mouthless voice flooding your hearing.";
		say "     '[one of]Very wise to back down, little one, lest you make a fool of yourself[or]You aren't as foolish a little thing as I had expected, very well[or]I see your need is just as great as mine[at random].' In the wake of his remark he demands that you relinquish yourself of any other attire you might of had, forced to oblige lest he tear them free of you.";
	otherwise:
		say "     Overwhelmed by this massive beast, you are grabbed by his teeth, tearing you free of what attire you might have worn and slamming you against the dirt. Head spinning and too exhausted to contest the dragon's will, you feel his talons further expose you before himself, a mouthless voice flooding your hearing.";
		say "     '[one of]Impudent little whelp, you are now mine[or]It amuses me to no end that you thought you could contest my will[or]Know your place, little thing[or]Such gall, you will suffer from more than defeat[at random]!' Taunting you, as he does, it's very clear that you're now at the mercy of this impressive serpentine creature.";
	if "Touched by Madness" is listed in feats of player and cocks of player > 0 and cock length of player < 20 and (("Kinky" is listed in feats of player and a random chance of 1 in 2 succeeds) or ("Kinky" is not listed in feats of player and a random chance of 1 in 5 succeeds)):
		If MYDTBMM is 0:
			say "     Before he would set himself upon you, you observe on as he's suddenly stopped by what would appear to be some manner of irreverent thought. Forced to rethink over this circumstance, he contests with himself internally before he appears to come to some conclusion, demented grin across his draconic lips.";
			say "     'N-no... I have something different in store for you...' His foreboding remark offered up, he pulls you closer, thighs suddenly engulfed by his wanton, scaled lips. Forced to abide his slick tongues immediate and irreverent affection, you are driven aroused, much to the dragon's satisfaction.";
			say "     From here, he moves upwards, hindquarters revealed to exposed his already-erect and dripping cock before you, his imminent plot doubtlessly quite exciting to him. Talons gripping [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], he lines it up with his own. Plan revealed, you are offered no time to react before he plunges it into the depths of his eager dickhole.";
			say "     Loud, audible hiss from your [if hp of player < 1]assailant[otherwise]patron[end if], it's clear that the sensation he subjects himself to is quite intense, and though you would think your circumstance would be more merciful you're hit with the reality of how tight these confines are, twisted prison of flesh throbbing oppressively against your enveloped rod.";
			say "     As he slowly begins to fuck your dick proper, and as you're given a small measure of acclimation, you must abide the foreboding implication of your potential bliss; though his pre slicks his motion against you, it fails to escape his organ in any sort of substantive measure, and though your own tool might reject abiding this particular flow, the same might not be said later on[if cocks of player > 2]. Large talons gripping your exposed cocks, he tightens around them, perhaps elucidating on an intent to funnel your release through a singular outlet[otherwise if cocks of player is 2]. Large talon gripping your exposed cock, he tightens around it, perhaps elucidating on an intent to funnel your release through a singular outlet[end if].";
		otherwise:
			say "     It takes you only a moment, the way he soon looks at you, for you to find yourself familiar with the plan he has in store for you. [if hp of player < 1 and player is not submissive]Immediately, you move to crawl away, but he's already on you, pulling you closer and forcibly spreading your legs before him[otherwise]Somewhat sheepish over what is about to transpire, you find it difficult to oblige the beast as he pulls your legs until you're spread before him[end if]. Demented grin across his face, hungry that he might subject you to his twisted torment.";
			say "     '[one of]A conventional show of my prowess is not enough![or]Oh, what I might have in store for you now...[or]This will be fun to watch...[at random]' His foreboding remark offered up, he pulls you closer, thighs quickly engulfed by his wanton, scaled lips. Forced to abide his slick tongues immediate and irreverent affection, you are driven aroused, [if hp of player < 1 and player is not submissive]much in spite your better judgment[otherwise]much to the dragon's satisfaction[end if].";
			say "     From here, he moves upwards, hindquarters revealed to exposed his already-erect and dripping cock before you, doubtlessly very eager to get things started. Talons gripping [if cocks of player > 1]one of your [cock size desc of player] cocks[otherwise]your [cock size desc of player] cock[end if], he lines it up with his own. Gripping the earth, you can do little to prepare yourself before he plunges it into the depths of his eager dickhole. Loud, audible hiss from your [if hp of player < 1]assailant[otherwise]patron[end if], he revels in this intense sensation, all the while forced to endure these tight confines.";
			say "     As he slowly begins to fuck your dick proper, and as you're given a small measure of acclimation, you must abide the foreboding inevitability of your bliss. His slicked rhythmic motion slowly building in pace, forcing you to contend with your own rising lust, streaked by [if hp of player < 1]anxiety[otherwise]twisted excitement[end if][if cocks of player > 2]. Large talons gripping your exposed cocks, he tightens around them, intent on funneling your release through a singular outlet[otherwise if cocks of player is 2]. Large talon gripping your exposed cock, he tightens around it, intent on funneling your release through a singular outlet[end if].";
		if libido of player > 33:
			say "     You can hold back no longer, crying out as your [cum load size of player] load floods these irregular confines, each throb pumping more into these abyssal depths, [if cock width of player > 24]so much of it that it immediately triggers the dragon's backlash[otherwise]the dragon's backlash quickly following in its wake[end if]. Hilting the massive thing against your beleaguered thighs, your orgasm works against you as each successive pulse now sends a mix of your own seed and that of the beast's right back at you, [if cockname of player is listed in infections of Internallist]belly rapidly bloating to abide this overwhelming flood[otherwise if cock width of player > 24]Already-[ball size] gradually swelling to abide this overwhelming flood[otherwise][ball size] quickly swelling to unmanageable sizes[end if], each following gout by the dragon inflicting further expansion.";
		otherwise:
			say "     In due time, his diligence is rewarded as you hear him roar out, anxious rush of inevitability washed away as you must very quickly contend with the intense sensation of his virile seed forcing it's way into you. So intense, in fact, that it might elicit your orgasm, thought this only ends up working against you as each successive pulse now sends a mix of your own seed and that of the beast's right back at you, [if cockname of player is listed in infections of Internallist]belly rapidly bloating to abide this overwhelming flood[otherwise if cock width of player > 24]Already-[ball size] gradually swelling to abide this overwhelming flood[otherwise][ball size] quickly swelling to unmanageable sizes[end if], each following gout by the dragon inflicting further expansion.";
		say "     It goes on for what seems like forever, [if cocks of player > 2]exposed cocks unable to offer reprieve against the dragon's grip until[otherwise if cocks of player is 2]exposed cock unable to offer reprieve against the dragon's grip until[otherwise]too dazed by this circumstance to fully appreciate when[end if] his flow finally dies down. His dick remains hard against you, however, as to ensure that you retain his load; often you orgasm, the attempt rebuked and having your load sent back to you, [if cockname of player is listed in infections of Internallist]pinned downed by the weight of your bloated frame[otherwise]weighed down by your painfully overstuffed sack[end if].";
		if waiterhater is 0, wait for any key;
		if "Horny Bastard" is listed in feats of player:
			say "     You think that he might be done, but this brief rest is enough time for him to be stricken by another otherworldly influence. He pushs you to the ground, prior exhaustion dissipating in the wake of a renewed, manic need.";
			say "     '[one of]I-it's not enough[or]More, more[or]No[at random]! [one of]I'm not done with you yet[or]You need more[or]You thought we were done? Ha[at random]!' He retorts, mad with lust, his thrusting motion commencing one more. So sensitive, as you are, your orgasm almost immediately, but it is ultimately for naught, as your confines have grown tight once more--so much so that little might escape.";
			say "     It's too much, you fear you might pass out if not that your demented captor finds bliss once more, second load bloating your beleaguered [if cockname of player is listed in infections of Internallist]form[otherwise]package[end if] further. Though perhaps not as impressive in volume, you find yourself unable to find fault in that, hot, thick slime churning inside you at such an excess. The prior ritual repeats as his fervor descends once more, thankfully for good this time.";
			if waiterhater is 0, wait for any key;
		say "     Finally satisfied, he pull your cock free of his own, trail of remnant seed left across your [if cockname of player is listed in infections of Internallist]form[otherwise]package[end if]. Too exhausted to comment further, your assailant departs once more into the air, you're already exhausted yourself, but that doesn't stop you from furiously jerking yourself off in a desperate attempt to find reprieve from your immensely sore state, seemingly endless flood of jizz erupting from your poor dick[smn]. [if cock width of player > 32 and cockname of player is not listed in infections of Internallist]You're so over-endowed by this point that what endeavour you might make to alleviate the strain does little to help[otherwise if cock width of player > 19 and cockname of player is not listed in infections of Internallist]You do manage to get the swelling down a little bit, but you feel that this circumstance might have permanently swelled them further[otherwise if cockname of player is not listed in infections of Internallist]Thankfully, the swelling does go down a lot, though you imagine that this circumstance might have some more permanent implications[otherwise]Thankfully, you do appear to return to normal, though what influence this might of had on you internally is beyond your current reckoning[end if]. Eventually you manage to recover, gathering your things and departing once more.";
		if "Modest Organs" is not listed in feats of player:
			if cock width of player < 20:
				if "Horny Bastard" is listed in feats of player:
					increase cock width of player by 4;
				otherwise:
					increase cock width of player by 2;
			otherwise if cock width of player < 33:
				if "Horny Bastard" is listed in feats of player:
					increase cock width of player by 2;
				otherwise:
					increase cock width of player by 1;
	otherwise if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
		if ("More Anal" is listed in feats of player and a random chance of 2 in 3 succeeds) or ((cunts of player is 0 and "Less anal" is not listed in feats of player) and a random chance of 1 in 3 succeeds):
			say "     Grip wrapped around your serpentine frame, he pulls you up into the air, dragging through the wake of his ascent. [if hp of player < 1 and player is not submissive]Though you might instinctively protest his hold, it's soon made apparent that your other choice is to play victim to gravity, a notion none too promising given your increasing altitude[otherwise]At the mercy of this beast, you are compelled to watch on as the earth below you becomes increasingly distant, driving you to hold onto him in turn, lest he--by some surge of sadistic amusement--drops you[end if]. Entirely exposed before him as you are, he carries you to his growing arousal, forced to abide his hardening cock as he grinds it between your legs.";
			if MYDAM is 0 and player is not twistcapped:
				say "     Similar in form to him as you are, your [if hp of player < 1 and player is not submissive]assailant[otherwise]patron[end if] is still a fair measure larger than you, putting you ill-at-ease over the circumstances to follow; regardless, this notion doesn't even cross the dragon's mind, and you soon feel his organ's hardened tip press against your exposed anal ring. Deep rumbles of tainted reverence emerging from your assailant, he sinks each progressive inch with an ominously persistent pace, even when it eventually reaches your perceived limitations, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you abide his cock's head.";
				say "     Pinning your side against his coarse frame, you're forced to watch yourself as he thrusts ever-deeper, elongated frame gradually bulging with every additional measure of this overwhelming intrusion. It is clear now that he commands some otherworldly talent, allowing him to twist what prior laws of limitations you might have wielded, though this doesn't spare you of it's sheer intensity, making it a fight to merely stay conscious.";
			otherwise if MYDAM is 1 and player is not twistcapped:
				say "     With an audible gulp[if hp of player > 0 or player is submissive], and even though you'd normally be a bit more complicit to these circumstances[end if], you can't help but feel ill-at-ease for what is about to transpire; regardless, he shows little care for your present anxiety, and you soon feel his organ's hardened tip press against your exposed anal ring. Deep rumbles of tainted reverence emerging from your assailant, he sinks each progressive inch with at an foreboding diligence, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you abide his cock's head. What small mercy you might garner from these circumstances, it's that you're getting slightly better as his inadequately-sized cock sleeve.";
				say "     Pinning your side against his coarse frame, you're forced to watch yourself as he thrusts ever-deeper, elongated frame gradually bulging with every additional measure of this overwhelming intrusion. Though you might abide him better, it doesn't spare you intense duress this act inflicts upon you.";
			otherwise if MYDAM is 2 and player is not twistcapped:
				say "     [if hp of player > 0 or player is submissive]By this you've grown to come to terms with this twisted fate, soon feeling that familiar[otherwise]You beg and plead to the beast, in vain, that he might spare you of this twisted fate; his answer is made quite clear when you feel his[end if] organ's hardened tip press against your exposed anal ring. Deep rumbles of tainted reverence emerging from your assailant, he sinks each progressive inch with at an foreboding diligence, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you abide his cock's head, now with substantial ease, given your overexposure.";
				say "     Pinning your side against his coarse frame, you're forced to watch yourself as he thrusts ever-deeper, elongated frame gradually bulging with every progressive measure of this overwhelming intrusion, you have at least acclimated to handle this assault whilst retaining a slight measure of clarity.";
			otherwise if MYDAM is 3 or player is twistcapped:
				say "     [if hp of player > 0 or player is submissive]Pressing firmly against this massive organ, you can't help but eagerly await becoming this beast's cock sleeve. Your eagerness richly rewarded when[otherwise]Overexposed to this familiar organ as you are, you can't help but fight your growing desire towards twisted prospect of being this beast's cock sleeve, not that you'll have much say in the matter before[end if] he abruptly plunges the entirety of his cock's head into your abiding hole.";
				say "     Deep rumbles of tainted reverence emerging from your assailant, pinning your side against his coarse frame. Forced to watch yourself as he thrusts ever-deeper, elongated frame gradually bulging with every progressive measure of this overwhelming intrusion. You abide him with ease, overwhelming intensity twisted into overwhelming bliss as you feel every inch, every ridge and bump of his [if hp of player > 0 or player is submissive]exceptional[otherwise]expansive[end if] flesh as it runs through you like a train car.";
			say "     '[one of]Y-yes[or]M-more[or]Nrgh[or]S-so tight[at random]...' Lust-laden mutterings cascading down upon you, his torment drives you into arousal, [if cocks of player is 0 and cunts of player is 0]much in spite your lack of outlet[otherwise if hp of player < 1 and player is not submissive]much in spite your better judgment[otherwise]forcing you to moan under the oppressive weight of his wanton need[end if].";
			say "     In due time you must abide his inevitable bliss, the dragon hilting the full length of his impressive organ within you, frame's cock-shaped bulge quickly rounded out in the wake of his torrential flood of cum";
			if MYDAM is 0 and player is not twistcapped:
				say ". Beleaguered cries, [if cocks of player > 1]cocks spending their [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cocks of player > 0]cock spending its [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cunts of player > 0]cunt[sfn] dripping down across your crotch and to the earth below in the wake of his release[otherwise]your weakened protests left disregarded[end if]. His sexual fluids quickly begin to sputter from your excessively stuffed hole, drenching your immensely sore backside until he finally subsides.";
				say "     His cock gradually softening, clearly sated, he pulls you free of his dick, the wet sound of his organ escaping you filling the [if daytimer is night]night [end if]sky before he descends and drops you onto the ground, audibly landing in a pool of the dragon's seed below, its depth exacerbated by your leaking hole. Your assailant can't help but laugh at you in your pitiful state before he flies off. It takes you a long time to regain your mental faculties--let alone walk--and gather your things, departing from this exhausting circumstance.[mimpregchance]";
				if MYDGM is 0, now MYDGM is 1;	[now familiar w/Yamato's impressive size]
			otherwise if MYDAM is 1 and player is not twistcapped:
				say ". Beleaguered cries, [if cocks of player > 1]cocks spending their [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cocks of player > 0]cock spending its [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cunts of player > 0]cunt[sfn] dripping down across your crotch and to the earth below in the wake of his release[otherwise]your weakened protests left disregarded[end if]. His sexual fluids eventually begin to sputter from your excessive stuffed hole, drenching your sore backside until he finally subsides.";
				say "     His cock gradually softening, clearly sated, he pulls you free of his dick, the wet sound of his organ escaping you filling the [if daytimer is night]night [end if]sky before he descends and drops you onto the ground, audibly landing in a pool of the dragon's seed below, its depth exacerbated by your leaking hole. Your assailant can't help but laugh at you in your pitiful state before he flies off. You don't nearly take as long to recover this time--though you'll still be walking funny for a while--and gather your things, departing from this tiring circumstance.[mimpregchance]";
			otherwise if MYDAM is 2 and player is not twistcapped:
				say ". Beleaguered cries, [if cocks of player > 1]cocks eagerly spending their [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cocks of player > 0]cock eagerly spending its [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cunts of player > 0]cunt[sfn] eagerly dripping down across your crotch and to the earth below in the wake of his release[otherwise]your protests muffled by your own tainted lust[end if]. His sexual fluids slowly begin to sputter from your excessively stuffed hole, painting your sore backside until he finally subsides.";
				say "     His cock gradually softening, clearly sated, he pulls you free of his dick, the wet sound of his organ escaping you filling the [if daytimer is night]night [end if]sky before he descends and drops you onto the ground, audibly landing in a puddle of the dragon's seed below, no doubt made shallow by your increasingly adept retention. Your assailant can't help but somewhat amused as he watches you slowly struggle to your feet before flying off. By now you feel completely used to this twisted circumstance--[if hp of player < 1 and player is not submissive]thought you'd much rather not be[otherwise]bloated belly notwithstanding[end if]--and you move to gather your things before departing.[mimpregchance]";
				if waiterhater is 0, wait for any key;
				say "     After some time you realize that your escapades with the massive dragon has had some permanent effect on you. Your anal ring feels permanently stretchier, though how far this effect extends onto other monsters is beyond you.";
				if "Twisted Capacity" is not listed in feats of player, add "Twisted Capacity" to feats of player;
			otherwise if MYDAM is 3 or player is twistcapped:
				say ". Wanton moans, [if cocks of player > 1]cocks eagerly spending their [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cocks of player > 0]cock eagerly spending its [cum load size of player] load across your torso and dripping down to the earth below in the wake of his release[otherwise if cunts of player > 0]cunt[sfn] eagerly dripping down across your crotch and to the earth below in the wake of his release[otherwise]elicited by your tainted lust[end if], belly gradually bloating as you abide every last drop of his release, finding yourself lost in a stupor of this twisted hunger.";
				say "     His cock gradually softening, clearly sated, before he pulls you free of his dick, descending and setting you down onto the ground once more. The dragon seems both very pleased with himself and with his exceptional little cum dumpster, thick tongue offering you a slight show of affection before departing. It takes you awhile to recover from your bloated and fatigued self, but in due time you find your clarity and gather your things, departing once more.[mimpregchance]";
			if MYDAM < 3, increase MYDAM by 1;
		otherwise if cunts of player > 0 and a random chance of 1 in 2 succeeds:
			say "     Grip wrapped around your serpentine frame, he pulls you up into the air, dragging through the wake of his ascent. [if hp of player < 1 and player is not submissive]Though you might instinctively protest his hold, it's soon made apparent that your other choice is to play victim to gravity, a notion none too promising given your increasing altitude[otherwise]At the mercy of this beast, you are compelled to watch on as the earth below you becomes increasingly distant, driving you to hold onto him in turn, lest he--by some surge of sadistic amusement--drops you[end if]. Entirely exposed before him as you are, he carries you to his growing arousal, forced to abide his hardening cock as he grinds it between your legs.";
			if MYDGM is 0:
				say "     Similar in form to him [if cunt width of player > 19]and well-endowed [end if]as you are, you're not exactly sure how this beast intends to fit that thing inside you, rendering you a fair measure ill-at-ease over what is to follow. This notion doesn't even cross his mind before he plunges";
			otherwise:
				say "     [if hp of player < 1 and player is not submissive]You're doubtlessly a little sheepish to endure this beast's twisted wrath again[otherwise]You find yourself eager to be subject to this patron once again[end if]; massive, ribbed thing eager to enveloped by your flesh. Sparing little time, he plunges";
			say " his dick within the depths of[if cunts of player > 1]one of your exposed portals[otherwise]your exposed portal[end if]. Slowly, you must watch on as his dick's pointed tip sinks past your hole's slicked lips, spreading the beleaguered thing with such a persistent dedication in spite of the [if cunt width of player > 20]slowly[otherwise]quickly[end if] rising intensity you must abide in the wake of this continued intrusion.";
			say "     His flesh quickly descending further upon your depths, it goes on seemingly without end";
			if MYDGM is 0:
				say ". It appears he commands some otherworld attribute, able to submerge his organ in spite your [if cunt width of player < 10]very apparent[otherwise]prior[end if] limitations[if cunt width of player < 20], splitting your vulnerable cunt to extents beyond any prior comprehension[end if]";
				now MYDGM is 1;
			otherwise:
				say ", each ridge grinding across your [if cunt width of player < 20]quickly [end if]stuffed cunt with an aching excess";
			say ". Soon enough you can see the outline of his massive organ bulging through your beleaguered frame, it's demented apparency exacerbating your already overloaded senses.";
			if libido of player > 33:
				say "     Almost immediately you cry out, wracked by the throes of your strained orgasm, [cunt size desc of player] hole weakly squeezing against it's [if cunt width of player < 20]oversized [end if]invader,[if cocks of player > 1] your own cocks unleashing their [cum load size of player] load against you,[otherwise if cocks of player > 0] your own cock unleashing its [cum load size of player] load against you,[end if] more than enough to trigger your twisted reward. A loud roar, an announcement of its arrival; you watch on, exhausted, as the once-defined outline is quickly rounded off in the wake of his release, hot seed gradually flooding you until you are made very heavy with the dragon's load.";
			otherwise:
				say "     In due time you are met with a loud roar, an announcement of your assailant arriving bliss. You watch on, exhausted, as the once-defined outline is quickly rounded off in the wake of his release, hot seed gradually flooding you until you are made very heavy with the dragon's load. In the wake of this you cry out, wracked by the strained throes of your own orgasm, [cunt size desc of player] hole weakly squeezing against it's [if cunt width of player < 20]oversized [end if]invader[if cocks of player > 1], your own cocks unleashing their [cum load size of player] load against you[otherwise if cocks of player > 0], your own cock unleashing its [cum load size of player] load against you[end if].";
			say "     What reprieve you might find in the wake of this encounter imminent, you watch as the dragon descends back to the ground, eventually pulled free of his now-softening dick, an audible, wet sound of its departure as it leaves a trail of his white fluid.";
			say "     '[one of]That you squirm like that[or]To sleeve me so well, as you do[at random], [if hp of player < 1 and player is not submissive][one of]your protests amuse me[or]your discontent is in vain[or]you are mine regardless[at random][otherwise][one of]you're suitable as one of my consorts[or]I might reward your further obedience[or]you will return to me[at random][end if].' Having offered up his parting remark he retreats back into the air, leaving you to take a fair amount of time recovering from your overfilled state before finding your things and heading back out.[impregchance]";
			if "Modest Organs" is not listed in feats of player:
				if cunt length of player < 20:
					increase cunt length of player by 2;
				otherwise if cunt length of player < 24:
					increase cunt length of player by 1;
				if cunt width of player < 10:
					increase cunt width of player by 2;
				otherwise if cunt width of player < 15:
					increase cunt width of player by 1;
		otherwise:
			say "     Grabbing you by your hind leg, you find yourself being dragged into the air, now subjected to the blowing wind along your ascent. Exposed before the [if daytimer is night]n[otherwise]br[end if]ight sky, his taloned legs pull you to his scaled, male vent, elucidating on your imposed [if hp of player > 0 or player is submissive]task. Obligingly[otherwise]punishment. Reluctantly[end if], you offer up your tongue as tribute to the dragon's emergent cock, hard scaling parting way to soft, masculine flesh, inviting your organ's slick caress.";
			say "     '[one of]Yes[or]Ah[or]Mm[at random]... [one of]You will learn your place, whelp[or]You have but a taste of what I offer you[or]This is your natural appointment, under me as you are now[at random].' His remark is punctuated by the feel of his talon";
			If cocks of player > 0 or cunts of player > 0:
				say "[if cocks of player > 2]s, gripping two of your now-hardening, [cock size desc of player] cocks, a circumstance somewhat unsettling now that his sole hold on you is by your most sensitive organs[otherwise if cocks of player is 2]s, gripping both of your now-hardening, [cock size desc of player] cocks, a circumstance somewhat unsettling now that his sole hold on you is by your most sensitive organs[otherwise if cocks of player is 1]'s grip, latched onto your now-hardening, [cock size desc of player] cock, the other holding your similarly serpentine torso in place[otherwise if cunts of player > 1]'s grip on your diminutive frame, freeing one to briefly tease one of your exposed cunts[otherwise]'s grip on your diminutive frame, freeing one to briefly tease your exposed cunt[end if]. Eclipsing you in size, as he does, you can't help but shudder at the overwhelming sensation of his tongue's reciprocation across [if cocks of player > 1]one of your cock's length[otherwise if cocks of player is 1]the length of your cock[otherwise]your vulnerable surface[end if].";
				say "     Massive, throbbing organ coaxing a rising fervor, your lips envelope the head of the dragon's dick and, in turn, he acts, draconic maw also embracing [if cocks of player > 1]one of your own organs, pumping its exposed brother[otherwise if cocks of player > 0]your organ[otherwise if cunts of player > 1]the one of your cunts[otherwise if cunts of player > 0]your cunt[end if]. The [if hp of player < 1 and player is not submissive]victim[otherwise]smaller[end if] half of this twisted ouroboros, you ";
				If libido of player > 33:
					say "offer up a muffled cry of blissful release, your subjugator [if cocks of player > 0]showing no relent in consuming the emergent, [cum load size of player] flood of sexual fluids[otherwise]'s tongue showing no relent in assaulting your stuffed portal[end if], [if cocks of player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[otherwise if cocks of player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[otherwise if cocks of player > 0]milking you of every last drop with a particularly vain greed[otherwise]driving you wild with throes of bliss[end if]. In the wake of this, you feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take every drop of his thick, virile seed.";
				otherwise:
					say "suddenly feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take every drop of his thick, virile seed. Shortly, in the wake of this, offer up a muffled cry of blissful release, your subjugator[if cocks of player > 0]showing no relent in consuming the emergent, [cum load size of player] flood of sexual fluids[otherwise]'s tongue showing no relent in assaulting your stuffed portal[end if], [if cocks of player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[otherwise if cocks of player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[otherwise if cocks of player > 0]milking you of every last drop with a particularly vain greed[otherwise]driving you wild with throes of bliss[end if].";
			otherwise if ("less anal" is not listed in feats of player and a random chance of 1 in 2 succeeds) or "more anal" is listed in feats of player:
				say "'s grip on your diminutive frame. Eclipsing you in size, as he does, you can't help but shudder at the overwhelming sensation of his tongue's twisted reciprocation, penetrating your anal ring without remorse, no doubt a torment to your genderless form.";
				say "     Massive, throbbing organ coaxing a rising fervor, your lips envelope the head of the dragon's dick and, in turn, he acts, draconic maw enveloping your anal ring, much to your torment. The [if hp of player < 1 and player is not submissive]victim[otherwise]smaller[end if] half of this twisted ouroboros, you suddenly feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take every drop of his thick, virile seed.";
			otherwise:
				say "'s grip on your diminutive frame. Eclipsing you in size, as he does, you can't help but shudder in the wake of his twisted reciprocation, large tongue caressing your genderless crotch, teasing you in the midst of your submissive circumstance.";
				say "     Massive, throbbing organ coaxing a rising fervor, your lips envelope the head of the dragon's dick and, in turn, he acts, draconic maw enveloping your anal ring, much to your torment. The [if hp of player < 1 and player is not submissive]victim[otherwise]smaller[end if] half of this twisted ouroboros, you suddenly feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take every drop of his thick, virile seed.";
			say "     Pulling you free of his softening member, he sets you down on the ground by your tail. He floats off, away from you[if cocks of player > 1] and your cum-soiled self[end if], doubtlessly fatigued and lust sated. You gather your things[if cocks of player > 1], clean yourself off,[end if] and depart back from whence you came.";
	otherwise:
		if (("More Anal" is listed in feats of player and a random chance of 2 in 3 succeeds) or ((cunts of player is 0 and "Less anal" is not listed in feats of player) and a random chance of 1 in 3 succeeds)) and scalevalue of player > 2:
			say "     [if hp of player < 1 and player is not submissive]Making one final attempt to flee the dragon's wrath you try to crawl off, though this only seems to amuse your assailant and offer him a telling view of your exposed behind, inspiring him to act on it, pulling you back towards him[otherwise]He sniffs you over, inspecting you for a moment before pushing you to the ground and pulling you around until your behind is exposed, clear elaboration of what he has in store for you[end if]. In the moments that follow, you feel the beast grind his underbelly against you; hardened, yellow scales of his male vent parting way to the touch of his growing cock as it caresses along your ass";
			if MYDAM is 0 and player is not twistcapped:
				say ". [if scalevalue of player > 4]Impressive in size as you are, the serpent is a fair measure larger than even you, making you unsure of how he'll even be able to fit his massive dick inside you[otherwise if scalevalue of player is 4]Fairly large as you are, the serpent is substantially larger, making you unsure of how he'll even be able to fit his massive dick inside you[otherwise]His dick is absolutely massive! There's no way that thing will fit inside you without splitting you in half[end if]; regardless, he seems unphased by the potential limitations of this prospect, and you soon feel his organ's hardened tip press against your exposed anal ring.";
				say "     Deep rumbles of tainted reverence emerging from your assailant, he sinks each progressive inch with at an ominously persistent pace, even when it [if scalevalue of player is 3]quickly[otherwise]eventually[end if] reaches your perceived limitations, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you[if scalevalue of player is 3], somehow,[end if] abide his cock's head.";
				say "     Pulling you back, against his coarse frame, you're forced to watch yourself as he thrusts ever-deeper, belly [if scalevalue of player is 3]already[otherwise]quickly[end if] bulging with his overwhelming intrusion. It is clear now that he commands some otherworldly talent, allowing him to twist what prior laws of limitations you might have wielded, though this doesn't spare you of it's sheer intensity, making it a fight to merely stay conscious.";
				if MYDGM is 0, now MYDGM is 1;	[now familiar w/Yamato's impressive size]
			otherwise if MYDAM is 1 and player is not twistcapped:
				say ". With an audible gulp[if hp of player > 0 or player is submissive], and even though you'd normally be a bit more complicit to these circumstances[end if], you can't help but feel ill-at-ease for what is about to transpire; regardless, he shows little care for your present anxiety, and you soon feel his organ's hardened tip press against your exposed anal ring.";
				say "     Deep rumbles of tainted reverence emerging from your assailant, he sinks each progressive inch with at an foreboding diligence, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you abide his cock's head. What small mercy you might garner from these circumstances, it's that you're getting slightly better as his undersized cocksleeve.";
				say "     Pulling you back, against his coarse frame, you're forced to watch yourself as he thrusts ever-deeper, belly [if scalevalue of player is 3]already[otherwise]quickly[end if] bulging with his overwhelming intrusion. Though you might abide him better, it doesn't spare you intense duress this act inflicts upon you.";
			otherwise if MYDAM is 2 and player is not twistcapped:
				say ". [if hp of player > 0 or player is submissive]By this you've grown to come to terms with this twisted fate, soon feeling that familiar organ's hardened tip press against your exposed anal ring[otherwise]You beg and plead to the beast, in vain, that he might spare you of this twisted fate; his answer is made quite clear when you feel his organ's hardened tip press against your exposed anal ring[end if].";
				say "     Deep rumbles of tainted reverence emerging from your assailant, he sinks each progressive inch with at an foreboding diligence, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you abide his cock's head, now with substantial ease, given your overexposure.";
				say "     Pulling you back, against his coarse frame, you're forced to watch yourself as he thrusts ever-deeper, belly [if scalevalue of player is 3]already[otherwise]quickly[end if] bulging with his overwhelming intrusion. You have at least acclimated to handle this assault whilst retaining a slight measure of clarity.";
			otherwise if MYDAM is 3 or player is twistcapped:
				say ". [if hp of player > 0 or player is submissive]Pressing firmly against this massive organ, you can't help but eagerly await becoming this beast's cock sleeve. Your eagerness richly rewarded when[otherwise]Overexposed to this familiar organ as you are, you can't help but fight yourself against the twisted prospect of being this beast's cock sleeve, not that you'll have much say in the matter before[end if] he abruptly plunges the entirety of his cock's head into your abiding hole.";
				say "     Deep rumbles of tainted reverence emerging from your assailant, he pulls you back, against his coarse frame. Forced to watch yourself as he thrusts ever-deeper, your belly [if scalevalue of player is 3]already[otherwise]quickly[end if] bulging with his overwhelming intrusion. You abide him with ease, overwhelming intensity twisted into overwhelming bliss as you feel every inch, every ridge and bump of his exceptional flesh as it runs through you like a train car.";
			say "     '[one of]Yes, yes[or]Take it[or]N-nghn[at random]! [one of]Take every last inch[or]You will sleeve the whole of me[or]Take all of it[at random]!' Lust-laden cries echoing through the [if showlocale is true]park[otherwise]area[end if], his torment drives you into arousal, [if cocks of player is 0 and cunts of player is 0]much in spite your lack of outlet[otherwise if hp of player < 1 and player is not submissive]much in spite your better judgment[otherwise]forcing you to moan under the oppressive weight of his wanton need[end if].";
			say "     In due time you must abide his inevitable bliss, the beast stretching the limits of his twisted penetration [if scalevalue of player is 3]to their maximum[otherwise]far[end if], stomach's cock-shaped bulge quickly rounded out in the wake of his torrential flood of cum";
			if MYDAM is 0 and player is not twistcapped:
				say ". Beleaguered cries, [if cocks of player > 1]cocks spending their [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise if cocks of player > 0]cock spending its [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise]cunt[sfn] dripping down across your crotch and the dragon's scales in the wake of his release[otherwise]your weakened protests left disregarded[end if], his sexual fluids [if scalevalue of player is 3]immediately[otherwise]quickly[end if] begins to sputter from your excessively stuffed hole, drenching your immensely sore backside until he finally subsides.";
				say "     His cock gradually softening, clearly sated, he lets go of you, causing you to fall to the ground once more, the wet sound of his organ escaping you followed by an audible splash as you land in a pool of the dragon's seed below, its depth exacerbated as your leaking hole expands it. Your assailant can't help but laugh at you in your pitiful state before he flies off. It takes you a long time to gain your mental faculties--let alone walk--and gather your things, departing from this exhausting circumstance.[mimpregchance]";
			otherwise if MYDAM is 1 and player is not twistcapped:
				say ". Beleaguered cries, [if cocks of player > 1]cocks spending their [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise if cocks of player > 0]cock spending its [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise]cunt[sfn] dripping down across your crotch and the dragon's scales in the wake of his release[otherwise]your weakened protests left disregarded[end if], his sexual fluids [if scalevalue of player is 3]quickly[otherwise]eventually[end if] begins to sputter from your excessive stuffed hole, drenching your sore backside until he finally subsides.";
				say "     His cock gradually softening, clearly sated, he lets go of you, causing you to fall to the ground once more, the wet sound of his organ escaping you followed by an audible splash as you land in a pool of the dragon's seed below, its depth exacerbated as your leaking hole expands it. Your assailant can't help but laugh at you in your pitiful state before he flies off. You don't nearly take as long to recover this time--though you'll still be walking funny for a while--and gather your things, departing from this tiring circumstance.[mimpregchance]";
			otherwise if MYDAM is 2 and player is not twistcapped:
				say ". Beleaguered cries, [if cocks of player > 1]cocks eagerly spending their [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise if cocks of player > 0]cock eagerly spending its [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise]cunt[sfn] eagerly dripping down across your crotch and the dragon's scales in the wake of his release[otherwise] your protests muffled by your own tainted lust[end if], his sexual fluids [if scalevalue of player is 3]eventually[otherwise]slowly[end if] begins to sputter from your excessively stuffed hole, painting your sore backside until he finally subsides.";
				say "     His cock gradually softening, clearly sated, he lets go of you, causing you to fall to the ground once more, the wet sound of his organ escaping you followed by a slight splash as you land in a puddle of the dragon's seed below, no doubt made shallow by your increasingly adept retention. Your assailant can't help but somewhat amused as he watches you slowly struggle to your feet before departing. By now you feel completely used to this twisted circumstance--[if hp of player < 1 and player is not submissive]thought you'd much rather not be[otherwise]bloated belly notwithstanding[end if]--and you move to gather your things before departing.[mimpregchance]";
				if waiterhater is 0, wait for any key;
				say "     After some time you realize that your escapades with the massive dragon has had some permanent effect on you. Your anal ring feels permanently stretchier, though how far this effect extends onto other monsters is beyond you.";
				if "Twisted Capacity" is not listed in feats of player, add "Twisted Capacity" to feats of player;
			otherwise if MYDAM is 3 or player is twistcapped:
				say ". Wanton moans, [if cocks of player > 1]cocks eagerly spending their [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise if cocks of player > 0]cock eagerly spending its [cum load size of player] load across your torso and the dragon's scales in the wake of his release[otherwise]cunt[sfn] eagerly dripping down across your crotch and the dragon's scales in the wake of his release[otherwise]elicited by your tainted lust[end if], belly [if scalevalue of player is 3]quickly[otherwise]gradually[end if] bloating as you abide every last drop of his release, finding yourself lost in a stupor of this twisted hunger.";
				say "     His cock gradually softening, clearly sated, before he sets you down on the ground once more. Your assailant seems both very pleased with himself and with his exceptional little cum dumpster, thick tongue offering you a slight show of affection before departing. It takes you awhile to recover from your bloated and fatigued self, but in due time you find your clarity and gather your things, departing once more.[mimpregchance]";
			if MYDAM < 3, increase MYDAM by 1;
		otherwise if cunts of player > 0 and a random chance of 1 in 2 succeeds:
			say "     [if hp of player < 1 and player is not submissive]Compelled to crawl free, you only encourage your reptilian assailant to pull you back by one of[otherwise]Forced to gawk at your new friend, he offers up a twisted grin, pulling you closer by[end if] your legs. Front exposed before him, he buries his [if scalevalue of player < 5]massive[otherwise]large[end if] snout between your thighs. Coarse scales scraping you vulnerable frame, you must abide his thick tongue's tainted affection, twisted caress of your exposed cunt[sfn]. In the distance, you might see the crotch of his own serpentine form, massive cock growing hard against the open air.";
			if MYDGM is 0:
				say "     [if cunt width of player > 19]Well-endowed as you are, y[otherwise]Y[end if]ou're not exactly sure how this beast intends to fit that thing inside you, rendering you a fair measure ill-at-ease over what is to follow. This notion doesn't even cross his mind as he frees";
			otherwise:
				say "     You're doubtlessly a little sheepish to endure this beast's twisted wrath again; massive, ribbed thing eager to plunge into your ill-equipped depths. In due time, he frees";
			say " you of his slick organ's influence, fore-talons replaced by hind as he lines the rod with [if cunts of player > 1]one of your exposed portals[otherwise]your exposed portal[end if]. Slowly, you must watch on as his dick's pointed tip sinks past your hole's slicked lips, spreading the beleaguered thing with such a persistent dedication in spite of the [if cunt width of player > 20]slowly[otherwise]quickly[end if] rising intensity you must abide in the wake of this continued intrusion.";
			say "     His flesh slowly descending further upon your depths, it goes on seemingly without end";
			if MYDGM is 0:
				say ". It appears he commands some otherworld attribute, able to plunge his organ through in spite your [if cunt width of player < 10]very apparent[end if] limitations[if cunt width of player < 20], splitting your vulnerable cunt to extents beyond any prior comprehension[end if]";
				now MYDGM is 1;
			otherwise:
				say ", each ridge grinding across your [if cunt width of player < 20]quickly [end if]stuffed cunt with an aching excess";
			say ". [if scalevalue of player < 5]Almost immediately[otherwise]Soon enough[end if] you can see the outline of his massive organ bulging through your beleaguered frame, it's demented apparency exacerbating your already overloaded senses.";
			if libido of player > 33:
				say "     Almost immediately you cry out, wracked by the throes of your strained orgasm, [cunt size desc of player] hole weakly squeezing against it's [if cunt width of player < 20]oversized [end if]invader,[if cocks of player > 1] your own cocks unleashing their [cum load size of player] load against you,[otherwise if cocks of player > 0] your own cock unleashing its [cum load size of player] load against you,[end if] more than enough to trigger your twisted reward. A loud roar, an announcement of its arrival; you watch on, exhausted, as the once-defined outline is quickly rounded off in the wake of his release, hot seed [if scalevalue of player < 5]quickly flooding you until what remains must sputter across your thighs and the dragon's scaled crotch[otherwise]gradually flooding you until you are made very heavy with the dragon's load[end if].";
			otherwise:
				say "     In due time you are met with a loud roar, an announcement of your assailant arriving bliss. You watch on, exhausted, as the once-defined outline is quickly rounded off in the wake of his release, hot seed [if scalevalue of player < 5]quickly flooding you until what remains must sputter across your thighs and the dragon's scaled crotch[otherwise]gradually flooding you until you are made very heavy with the dragon's load[end if]. In the wake of this you cry out, wracked by the strained throes of your own orgasm, [cunt size desc of player] hole weakly squeezing against it's [if cunt width of player < 20]oversized [end if]invader[if cocks of player > 1], your own cocks unleashing their [cum load size of player] load against you[otherwise if cocks of player > 0], your own cock unleashing its [cum load size of player] load against you[end if].";
			say "     Forced to abide the weight of your captor's shared exhaustion for some measure of time, you're finally offered reprieve as he pull his now-softening dick free from you, an audible, wet sound of its departure as it leaves a trail of his white fluid.";
			say "     '[if scalevalue of player < 4][one of]Such a little thing[or]So tiny you are[at random][otherwise][one of]That you squirm like that[or]To barely abide me, as you do[at random][end if], [if hp of player < 1 and player is not submissive][one of]your protests amuse me[or]your discontent is in vain[or]you are mine regardless[at random][otherwise][one of]you're suitable as my toy[or]I might reward your further obedience[or]you will return to me[at random][end if].' Having offered up his parting remark he retreats back into the air, leaving you to take a fair amount of time recovering from your overfilled state before finding your things and heading back out.[impregchance]";
			if "Modest Organs" is not listed in feats of player:
				if cunt length of player < 20:
					increase cunt length of player by 2;
				otherwise if cunt length of player < 24:
					increase cunt length of player by 1;
				if cunt width of player < 10:
					increase cunt width of player by 2;
				otherwise if cunt width of player < 15:
					increase cunt width of player by 1;
		otherwise:
			say "     He grabs a hold of your [if scalevalue of player > 4]massive[otherwise if scalevalue of player is 4]large[otherwise if scalevalue of player < 3]small[end if] frame, vicious talons gripping you, picking you up with little difficulty. The serpentine dragon having laid down [if showlocale is true]in the park, a feat not particularly easy--at least, not without making a bit of a mess, given his size--[otherwise]before you, his clearly larger size made very apparent by this point[end if], [if hp of player < 1 and player is not submissive]you struggle impotently against his hold[otherwise]he eyes you with a curious expression[end if].";
			say "     He illuminates his plans for you when he sets you back down where his pelvic region resides, yellow-scaled, male vent exposed to the open air. Twisted portal exposed before you, he urges you closer to it, tip of his cock's head peering slightly through it's abode.";
			say "     '[one of]Get to work[or]Hurry up[or]Don't waste my time[at random], [one of]I have little patience for stalling[or]whelp[or]you wouldn't want to test my patience[or]you're mine now[at random]!' [if hp of player < 1 and player is not submissive]Reluctantly[otherwise]Obligingly[end if], you use your tongue to coax his organ into arousal. Tough scales parting to expose his growing, hardening flesh. He displays his impressive dick before you proudly, compelling you[if scalevalue of player > 3] to wrap around the rod, tongue rising across its length to meet the head in lip's embrace[otherwise]r diminutive frame to embrace the rod, tongue caressing its length[end if].";
			say "     Deep, approving moans elicited from your captor, a clear indication of progress, your [if scalevalue of player > 3]maw must contend with the increasing flow of his pre[otherwise]frame must contend with his pre flowing down upon you[end if], olfactories flooded with the scent of his virile musk. Perverse circumstance as this is, [if cocks of player > 0]you are driven erect[otherwise if cunts of player > 0]you are made blatantly aroused[otherwise]you find yourself tormented by an insatiable need[end if], overwhelming heat radiating from his throbbing organ. It becomes unbearable, driving you to grind your [if cocks of player > 0]own cock[smn][otherwise if cunts of player > 0]cunt[sfn][otherwise]genital-less crotch[end if] against his ribbed flesh, slicked by his sexual fluids, the dragon's lascivious fervor rising in turn.";
			say "     In due time the serpentine creature roars out in bliss, [if scalevalue of player > 3]forced to suddenly contend with an excessive flood of seed, that which you cannot abide sputtering free of your maw's embrace[otherwise]forced to bathe in a flood of the dragon's seed[end if]";
			If libido of player > 50 and (cocks of player > 0 or cunts of player > 0):
				say ", more than enough to drive you into a similar release, your own sexual fluids lost in the mix of his own";
			otherwise:
				say ", forcing you to abide his bawdy fury as you're beleaguered frame is doused by his sexual fluids";
			say ". It takes but a moment of recovery for him to finally relinquish you of your imposed contract, pulling you free and setting off into the sky once more, leaving you to clean yourself off and gather your things.";
	if YDSF is 0:
		now YDSF is 1;
	otherwise:
		if YDSF > 1:
			decrease YDSF by 1;

to say yamato dragon desc:
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
	say "     [if showlocale is true]Travelling through the park[otherwise]Suddenly[end if], you find yourself beset by a dragon of eastern myth. Massive and serpentine in frame, airborne in spite of being wingless, his [one of]red[or]blue[or]green[at random] scales and yellow underbelly shimmering in the [if daytimer is night]starlight[otherwise]sunlight[end if]. You instinctively attempt to find cover, but this only encourages him to pursue you on ground, a lustful hunger agleam in his eyes.";

to say ydskinchange:
	let tempnum be ydcolour;
	now ydcolour is a random number between 0 and 2;
	if ydcolour is tempnum, increase ydcolour by 1;
	if ydcolour is 3, now ydcolour is 0; 
	say "you find yourself suddenly forced to abide the growth of large, smooth [if ydcolour is 0]red[otherwise if ydcolour is 1]blue[otherwise]green[end if] scales grow upon your back, smaller, coarser yellow scales quickly adorning your front and underside";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Yamato Dragon"; [Name of your new Monster]
	now attack entry is "[one of]The oriental dragon[or]The Yamato Dragon[or]It[purely at random] [one of]snaps it's neck forward like a snake to bite at you.[or]whips it's tail around, smacking your body off the ground and through the air before landing roughly onto the ground.[or]slams you with one of its clawed paws.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "You successfully manage to fend off the dragon, whom is forced to float off in retreat."; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[Yamato Dragon attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[yamato dragon desc]";[ Description of the creature when you encounter it.]
	now face entry is "distinctly draconic; long-snouted, a pair of curious whiskers at its tip, with a long pair of antlers and a silver mane at the crown, flowing down to your neck"; [ Face description, format as the text "Your face is (your text)."]
	now body entry is "elongated, serpentine with stout, taloned fore and hind limbs and a fin-like, silver mane across its length"; [ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "smooth, [if ydcolour is 0]red[otherwise if ydcolour is 1]blue[otherwise if ydcolour is 2]green[end if]-scaled with a coarse yellow underside adorning your"; [ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "You wield a very long, reptilian tail with an impressive, fin-like mane of silver hair at the end."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "draconic, deep red, and ribbed"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you suddenly feel overwhelmed by a sudden change, face elongating into a proud, draconic snout, a pair of fairly lengthy whiskers sprouting from it's tip. Two long antlers and a mane of silver hair growing from the back of your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you soon double over, frame shifting into something now much more elongated, arms and legs shifting in shape to something much more stout and less equipped to walk around. As you recover, you see that you're quite large, too, though you're likely only a little over two-thirds the size from which this strain originates, and you can't fly--only able to hover with limited efficacy, a silver mane now running across the entire length of your serpentine torso"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "[ydskinchange]"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a lengthy tail sprouts forth from it.  It takes some time to adjust to it, limb adorned in a silver, fin-like mane, culminating in a flattened tuft at the tip"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "you're made curious by an odd tingling feeling. Taking a look, you're shocked to find that your junk has disappeared! After some observation, you find that your dick is now housed in some manner of draconic vent, head-tapered, deep red, and quite proudly ribbed thing exposed before you with some coaxing. After coming to terms with this change, you go back to making your next move"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 26;
	now dex entry is 18;
	now sta entry is 24;
	now per entry is 16;
	now int entry is 18;
	now cha entry is 10;
	now sex entry is "nochange"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 100;			[ How many HP has the monster got? ]
	now lev entry is 10;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 24;			[Amount of Damage monster Does when attacking.]
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
	now libido entry is 25;			[ Amount player Libido will go up if defeated ]
	now loot entry is "dragon scale";			[ Loot monster drops, ]
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

Section 3 - Drop Objects

Table of Game Objects (continued)
name	desc	weight	object
"dragon scale"	"A yellow, slightly shimmering dragon scale."	1	dragon scale
"dragon hair"	"Some strands of golden hair that shimmer slightly in the light."	1	dragon hair

dragon scale is a grab object. It is a part of the player. dragon scale is infectious. The strain of dragon scale is "Yamato Dragon".
the scent of dragon scale is "The yellow scale smells strange and otherworldly.";
The usedesc of dragon scale is "[usedragonscale]";

to say usedragonscale:		[only alters sizes, not gender]
	choose row monster from table of random critters;
	setmonster "Yamato Dragon";
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
	say "     Following the strange urge you have, press the large scale to your chest.  As the spot starts to tingle, the scale slowly sinks into you and those tingles spread out across your body.";

dragon hair is a grab object. It is a part of the player. dragon hair is infectious. The strain of dragon hair is "Yamato Dragoness".
the scent of dragon hair is "The golden hair smells of exotic, otherworldly scents.";
The usedesc of dragon hair is "[usedragonhair]";

to say usedragonhair:
	choose row monster from table of random critters;
	setmonster "Yamato Dragoness";		[only alters sizes, not gender]
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
	say "     Following the strange urge you have, brush the hairs to your face, enjoying the feel of them against your cheek.  As you continue brushing, the hairs grow gradually shorter, sinking into your face and hand before disappearing entirely.";

Section 4 - Endings

when play ends:
	if bodyname of player is "Yamato Dragon" or bodyname of player is "Yamato Dragoness":
		if humanity of player < 10:
			if YDSF is 0:
				if girl is banned:
					now YDSF is 1;
				otherwise if guy is banned:
					now YDSF is 4;
				otherwise:
					now YDSF is a random number between 2 and 3;
    			if YDSF is 1:
	  			say "     Driven by an overriding need to be reunited with your potential master, you find yourself wandering back to the park, crying out until you find him once more. More than glad to have you in his fold, along with his many other male consorts. Many nights follow; an endless, blurred string of frequently being filled by with his virile seed. [if player is submissive]So submissive, as you are, you're quickly relegated as the fold's eager cum dumpster, often filled by his other consorts when they aren't afforded the master's affection. You're rather fond of this setup, though it's quite a chore to keep afloat when heavy with the seed of so many[otherwise]When you aren't afforded the master's attention, you find plenty of entertainment with his other consorts; entwined affections, you sate your rampant lust with them.";
			otherwise if YDSF is 2:
				say "     Driven by an overriding need to be reunited with your potential master, you find yourself wandering back to the park, crying out until you find him once more. More than glad to have you in his fold, along with his many other consorts. Many nights follow; an endless, blurred string of frequently being used to sate his eternal hunger. [if player is submissive]So submissive, as you are, you're quickly relegated as the fold's eager sex toy, often used by his other consorts when they aren't afforded the master's affection. You're rather fond of this setup, though it's quite a chore to keep afloat when sore after so many romps[otherwise]When you aren't afforded the master's attention, you find plenty of entertainment with his other consorts; entwined affections, you sate your rampant lust with them.";
			otherwise if YDSF is 3:
				say "     Driven by an overriding need to be reunited with your potential mistress, you find yourself wandering back to the park, crying out until you find her once more. More than glad to have you in her fold, along with her many other consorts. Many nights follow; an endless, blurred string of frequently being used to sate her eternal hunger. [if player is submissive]So submissive, as you are, you're quickly relegated as the fold's eager sex toy, often used by her other consorts when they aren't afforded the mistress's affection. You're rather fond of this setup, though it's quite a chore to keep afloat when sore after so many romps[otherwise]When you aren't afforded the mistress's attention, you find plenty of entertainment with her other consorts; entwined affections, you sate your rampant lust with them.";
			otherwise if YDSF is 4:
				say "     Driven by an overriding need to be reunited with your potential mistress, you find yourself wandering back to the park, crying out until you find her once more. More than glad to have you in her fold, along with her many other female consorts. Many nights follow; an endless, blurred string of frequently being used to sate her eternal hunger. [if player is submissive]So submissive, as you are, you're quickly relegated as the fold's eager sex toy, often used by her other consorts when they aren't afforded the mistress's affection. You're rather fond of this setup, though it's quite a chore to keep afloat when sore after so many romps[otherwise]When you aren't afforded the mistress's attention, you find plenty of entertainment with her other consorts; entwined affections, you sate your rampant lust with them.";
		otherwise:
			say "Reorientation with the 'normal' world takes a fair amount of time, eventually being released by the military back into civilization. Large and awkward as you are, it takes a fair while to settle in, and you get a decent amount of income as part of a delivery service--once you figure out the whole flying thing. There's a fair measure of income on the side during lunar new years, amusingly enough, and plenty of fun to be had with others eager to be taken on a 'Ride', should you so oblige them.";

[ Edit this to have the correct Name as wall]
Yamato Dragon For FS ends here.
