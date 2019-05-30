Version 5 of Yamato Dragon by Blue Bishop begins here.
[ Version 5 - Player Victory - Blue Bishop]
[- Originally Authored By: Kohryu -]

"Adds a Yamato Dragon to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

MYDTBMM is a number that varies. [Male Yamato Dragon TBM Memory]
MYDAM is a number that varies. [Male Yamato Dragon Anal Memory]
MYDGM is a number that varies. [Male Yamato Dragon Gimmick Memory]
ydcolor is a number that varies.
yamatdom is a number that varies.

to say Yamato Dragon attack:
	if HP of Player > 0:
		say "     You ultimately choose to surrender yourself to the serpentine dragon's mercy, dropping what you were carrying and offering yourself freely. When it's clear that this isn't some trick he pulls closer, a mouthless voice flooding your hearing.";
	else:
		say "     Overwhelmed by this massive dragon, you are grabbed by his teeth, tearing you free of what attire you might have worn and slamming you against the dirt. Head spinning and too exhausted to contest his will, you feel his talons further expose you before himself, a mouthless voice flooding your hearing.";
	if vorelevel is 3 and (a random chance of 1 in 3 succeeds or (player is kinky and a random chance of 1 in 3 succeeds)):
		if HP of Player > 0:
			say "     '[one of]Oh, such an obliging little morsel[or]Ha, my meal delivers itself to me[or]I hunger[at random]...' Given little time to reconsider your circumstance, the dragon grabs you and pulls you close to his maw.";
		else:
			say "     '[one of]Oh, it's fun when my meal struggles[or]You've only succeeded in making yourself all the more tender for my tastes[or]Oh, what an impudent little morsel[at random]!' Briefly taunting you, you're given little chance to escape before the serpentine creature grabs a hold of you, pulling you close to his maw.";
		if bodytype of Player is "Yamato Dragon" or bodytype of Player is "Yamato Dragoness":
			say "     Seemingly fine with consuming one of his own kin";
		else:
			say "     [if scalevalue of Player > 4]Much larger than you in spite of your size[else]The absolutely massive beast towering before your sight[end if]";
		say ", you're awash in a wave of the monster's hot breath as his scaled maw widens, exposing his sharp teeth and crimson tongue to you. Eager to slather you in the slick appendages affection, he only revels in this ceremony for a few brief seconds before you find yourself tumbling downwards, into the dragon's dark abyss.";
		say "     Quickly embraced on all sides by his supple flesh, his powerful muscles squeeze around your[if scalevalue of Player < 4] tiny,[end if] [bodytype of Player] form, plunging you further into his warm, pulsing depths. Almost made dizzy by his heaving flesh, he makes short work of your[if scalevalue of Player > 3] impressive[end if] form, plunging you into slick and churning confines of his stomach.";
		say "     Taking a moment to recover from the ordeal, you quickly begin to feel your confines drain you of your strength. You don't imagine you'll last long in here, [one of]especially since you get the impression that your trip through the serpentine creature has only begun[or]made worse by the prospect of being plunged even deeper into the serpentine creature's many faculties[stopping]...";
		now boundmod is 1;
		wait for any key;
		YamatMvore;
	else:
		if HP of Player > 0:
			say "     '[one of]Very wise to back down, little one, lest you make a fool of yourself[or]You are not as foolish a little thing as I had expected. Very well[or]I see your need is just as great as mine[at random].' In the wake of his remark he demands that you free yourself of any other attire you might have on, forced to oblige, else he tear them free of you.";
		else:
			say "     '[one of]Impudent little whelp, you are now mine[or]It amuses me that you thought you could contest my will[or]Know your place, little thing[or]Such gall, you will suffer from more than defeat[at random]!' Taunting you, as he does, it's very clear that you're now at the mercy of this impressive, serpentine creature.";
		if "Touched by Madness" is listed in feats of Player and player is male and Cock Length of Player < 20 and ((player is kinky and a random chance of 1 in 2 succeeds) or (player is not kinky and a random chance of 1 in 5 succeeds)):
			If MYDTBMM is 0:
				say "     Before he sets himself on you, the dragon stops dead in his tracks, apparently stricken by some sort of irreverent thought. Pondering for a moment, he seem to struggle with himself before the creature looks like he's come to some conclusion, demented grin across his scaled lips.";
				say "     'N-no... I have something different in store for you...' To punctuate his foreboding remark, he pulls you closer, draconic snout descending to engulf your crotch. Caressed by his slick tongue's immediate and shameless affection, your cock[smn] [ismv] driven hard before he relents, appearing satisfied.";
				say "     Reeling backwards, the serpent shifts his position, exposing his hindquarters and displaying already-erect and dripping cock before you, clearly quite eager to put his little plot into motion. Talons gripping [if Cock Count of Player > 1]one of your [cock size desc of Player] dicks[else]your [cock size desc of Player] dick[end if], he lines it up with his own. Plan exposed, you aren't given any time to react before he plunges it into the depths of his eager cockhole.";
				say "     Loud, audible hiss from your [if HP of Player < 1]assailant[else]patron[end if] echoing through the air, it's clear that the sensation of your tool gradually inched deeper within is quite intense for him, and though you would think your circumstance would be more merciful you're hit with the reality of how tight these confines are, twisted prison of slick flesh throbbing oppressively against you.";
				say "     As he slowly begins to fuck your dick proper and you're given a little time to acclimate, you can't help but ponder the foreboding implication of how this might end; though his emergent pre slicks his motion, the fluid barely seems to ooze from the cockhole's lips, and as time passes the pressure continues to become more intense[if Cock Count of Player > 2]. Large talons gripping your exposed cocks, he tightens around them, indicating an intent to funnel your release through a singular outlet[else if Cock Count of Player is 2]. Large talon gripping your exposed cock, he tightens around it, indicating an intent to funnel your release through a singular outlet[end if].";
			else:
				say "     It takes you only a moment - given the way he soon looks at you - for you to find yourself familiar with the plan he has in store for you. [if HP of Player < 1 and player is not submissive]Immediately, you move to crawl away, but he's already on you, pulling you closer and forcibly spreading your legs[else]Somewhat sheepish over what is about to transpire, you find it difficult to oblige the beast as he pulls your legs until you're spread[end if] before him. Demented grin across the dragon's face, he's clearly eager to subject you to his twisted little game.";
				say "     [one of]'A conventional show of my prowess is not enough!' [or]'Oh, what I might have in store for you now...' [or]This will be fun to watch...' [at random]His foreboding remark offered up, he pulls you closer, thighs quickly under his eager, scaled lips. Caressed by his slick tongue's immediate and shameless affection, your cock[smn] [ismv] driven hard before he relents, appearing satisfied.";
				say "     Reeling backwards, the serpent shifts his position, exposing his hindquarters and displaying his already-erect and dripping cock before you, clearly quite eager to get things started. Talons gripping [if Cock Count of Player > 1]one of your [cock size desc of Player] dicks[else]your [cock size desc of Player] dick[end if], he lines it up with his own. Gripping the earth, you can do little to prepare yourself before he plunges it into the depths of his eager cockhole. Loud, audible hiss from your [if HP of Player < 1]assailant[else]patron[end if] echoing through the air, he revels in the intense sensation of your tool gradually inched deeper within, all the while forcing you to endure these tight confines.";
				say "     As the dragon begins to fuck your dick proper and you're given a chance to acclimate, your mind must endure the foreboding inevitability of this ritual's end. His slicked, rhythmic motion gradually building in pace, you're forced to contend with your own rising lust, streaked by [if HP of Player < 1]anxiety[else]twisted excitement[end if][if Cock Count of Player > 2]. Large talons gripping your exposed cocks, he tightens around them, intent on funneling your release through a singular outlet[else if Cock Count of Player is 2]. Large talon gripping your exposed cock, he tightens around it, intent on funneling your release through a singular outlet[end if].";
			if Libido of Player > 33:
				say "     You can't hold back any longer, crying out as your [Cum Load Size of Player] load floods serpent's urethra, each throb pumping more into his tight, slick depths, [if Ball Size of Player > 5]so much of it that it immediately triggers the dragon's backlash[else]the dragon's backlash quickly following in its wake[end if]. Hilting the massive organ against your crotch, your orgasm works against you as each successive wave now sends a mix of your own seed and that of the beast's right back, [if Player is internal]belly rapidly bloating to abide this overwhelming flood[else if Ball Size of Player > 5]Already-[Ball Size Adjective of Player] [Balls] gradually swelling to abide this overwhelming flood[else][Ball Size Adjective of Player] [Balls] quickly swelling to unmanageable sizes[end if], each continued gout by the dragon inflating you further.";
			else:
				say "     In due time, the serpent's continued diligence eventually causes him to roar out, almost immediately hit with the intense sensation of his massive load forcing its way into you. So intense is the sensation that it causes you to fire off as well, though this only ends up working against you as each successive pulse now sends a mix of your own seed and that of the beast's right back at you, [if Player is internal]belly rapidly bloating to abide this overwhelming flood[else if Ball Size of Player > 5]Already-[Ball Size Adjective of Player] [Balls] gradually swelling to abide this overwhelming flood[else][Ball Size Adjective of Player] [Balls] quickly swelling to unmanageable sizes[end if], each following gout by the dragon inflating your further.";
			say "     It goes on for what seems like forever, [if Cock Count of Player > 2]exposed cocks unable to offer reprieve against the dragon's grip until[else if Cock Count of Player is 2]exposed cock unable to offer reprieve against the dragon's grip until[else]too dazed by this circumstance to fully appreciate when[end if] his flow finally dies down. His dick remains hard against you, however, as to ensure that you retain his load; often you orgasm, the attempt rebuked and having your load sent back to you, [if Player is internal]pinned downed by the weight of your bloated frame[else]weighed down by your painfully overstuffed sack[end if].";
			WaitLineBreak;
			if "Horny Bastard" is listed in feats of Player:
				say "     [one of]You assume his bit of fun is over, but in only a brief moment you find the dragon picking up his pace again[or]You're given barely any time to recover before the dragon begins to pick up the pace for his second bout[stopping], stricken by another otherworldly influence. He pushes you to the ground, prior exhaustion dissipating in the wake of a renewed, manic need.";
				say "     '[one of]I-it's not enough[or]More, more[or]No[at random]! [one of]I'm not done with you yet[or]You need more[or]You thought we were done? Ha[at random]!' he retorts, mad with lust, his thrusting motion quickly returns to its original fervor. So sensitive from the first go, you orgasm almost immediately, but it proves to be of little good for you, as your confines have grown tight once more - so much so that little escapes the monster's dickhole.";
				say "     It's too much! Your head spins, afraid you might pass out from the ordeal, before your mind is snapped back to the fore once your demented captor finds bliss once more, second load bloating your beleaguered [if Player is internal]form[else]package[end if] further. Your sole balm the fact that the volume isn't quite as impressive the second time around, you nonetheless feel his hot, thick slime churning inside you at such an excess. The prior ritual repeats as his fervor descends once more, thankfully for good this time.";
				WaitLineBreak;
			say "     Finally satisfied, he pulls your dick free of his own, a trail of seed strung across your bloated [if Player is internal]form[else]package[end if]. Too exhausted to comment further, the serpent departs once more into the air. You're already exhausted yourself, but that doesn't stop you from furiously jerking yourself off in a desperate attempt to find reprieve from your immensely sore state, seemingly endless flood of jizz erupting from your poor cock[smn]. [if Ball Size of Player > 6 and player is internal]You're so over-endowed by this point that what endeavor you might make to alleviate the strain does little to help[else if Ball Size of Player > 5 and player is internal]You do manage to get the swelling down a little bit, but you feel that this circumstance might have permanently swelled them further[else if Player is internal]Thankfully, the swelling does go down a lot, though you imagine that this circumstance might have some more permanent implications[else]Thankfully, you do appear to return to normal, though what influence this might of had on you internally is beyond your current reckoning[end if]. Eventually you manage to recover, gathering your things and departing once more.[line break]";
			if "Modest Organs" is not listed in feats of Player and Ball Size of Player < 33:
				LineBreak;
				if "Microwaved" is listed in feats of Player:
					say "WARNING: Ball size change detected! Allow?";
					if Player consents:
						if Ball Size of Player < 20:
							if "Horny Bastard" is listed in feats of Player:
								increase Ball Size of Player by 4;
							else:
								increase Ball Size of Player by 2;
						else:
							if "Horny Bastard" is listed in feats of Player:
								increase Ball Size of Player by 2;
							else:
								increase Ball Size of Player by 1;
						follow the cock descr rule;
						say "You can [if Player is internal]feel your internal[else]see your[end if] [one of]testes[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grows larger, [if Player is internal]body straining to abide this[else]your flesh growing taught with the[end if] expansion, leaving you with [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] [Balls]!";
					else:
						say "     It looks like you recover to their original size after treating it.";
				else:
					if Ball Size of Player < 20:
						if "Horny Bastard" is listed in feats of Player:
							increase Ball Size of Player by 4;
						else:
							increase Ball Size of Player by 2;
					else:
						if "Horny Bastard" is listed in feats of Player:
							increase Ball Size of Player by 2;
						else:
							increase Ball Size of Player by 1;
					follow the cock descr rule;
					say "You can [if Player is internal]feel your internal[else]see your[end if] [one of]testes[or]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grows larger, [if Player is internal]body straining to abide this[else]your flesh growing taught with the[end if] expansion, leaving you with [one of]a pair of[or]a set of[at random] [Ball Size Adjective of Player] [Balls]!";
		else if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
			if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 4 succeeds)):
				say "     Talons wrapping around your serpentine frame, the dragon pulls you up into the air, dragging you along as he ascends. [if HP of Player < 1 and player is not submissive]Instinctively struggling against the beast's hold, being let go quickly stops being an option, given how high up you are[else]At the mercy of this beast, you watch on as the earth becomes more and more distance, instinctively driving you to cling to him in return[end if]. Entirely exposed before him as you are, he presses you against his growing arousal, forced to abide his hardening cock as he grinds it between your legs.";
				if MYDAM is 0 and player is not twistcapped:
					say "     Similar in form to him, your [if HP of Player < 1 and player is not submissive]assailant[else]patron[end if] is still fairly larger than you, forcing you to wonder how he intends to fit that impressive tool inside you; regardless, this notion doesn't even cross the dragon's mind, and you soon feel his organ's oozing tip press against your exposed anal ring. Deep rumbles of tainted pleasure escaping from the serpent's lips, he sinks each successive inch at a relentlessly persistent pace. Even when it eventually reaches your perceived limitations, you're wracked with the overwhelming sensation of such an intense violation as he keeps going, managing to engulf his dick's head within your tight confines.";
					say "     Pinning your side against his coarse frame, you're forced to watch yourself as the monster thrusts ever deeper, elongated frame gradually bulging with the silhouette of his proud cock as you're further impaled by it. It is clear now that he commands some otherworldly talent, allowing the beast to surpass any prior limitations you might've once had, though this doesn't spare you of its sheer intensity, your body trembling as you fight to stay conscious.";
				else if MYDAM is 1 and player is not twistcapped:
					say "     With an audible gulp[if HP of Player > 0 or player is submissive], and even though you'd normally be a bit more complicit to these circumstances[end if], you can't help but feel ill-at-ease for what is about to transpire; regardless, he shows little care for your present anxiety, and you soon feel his organ's hardened tip press against your exposed anal ring. Deep rumbles of tainted pleasure escaping from the serpent's lips, he sinks each successive inch at a relentlessly persistent pace. As it quickly reaches your prior limitations, you're wracked with the overwhelming sensation of such an intense violation as he keeps going, quickly managing to engulf his dick's head within your tight confines.";
					say "     Pinning your side against his coarse frame, you're forced to watch yourself as the monster thrusts ever deeper, elongated frame gradually bulging with the silhouette of his proud cock as you're further impaled by it. What small mercy you might garner from these circumstances, it's that you're getting slightly better as his inadequately-sized cock sleeve.";
				else if MYDAM is 2 and player is not twistcapped:
					say "     [if HP of Player > 0 or player is submissive]By this point you've grown to come to terms with this twisted fate, soon feeling that familiar[else]You beg and plead to the beast that he might spare you of this twisted fate; however, his answer is made quite clear when you feel his[end if] organ's hardened tip press against your exposed anal ring. Deep rumbles of tainted pleasure escaping from the serpent's lips, he sinks each successive inch at a relentlessly persistent pace. As it quickly reaches your prior limitations, you're wracked with the overwhelming sensation of such an intense violation as he keeps going, managing to engulf his dick's head within your tight confines with very little issue.";
					say "     Pinning your side against his coarse frame, you're forced to watch yourself as the monster thrusts ever deeper, elongated frame gradually bulging with the silhouette of his proud cock as you're further impaled by it. By this point, you find yourself able to manage this persisting assault with some measure of clarity.";
				else if MYDAM is 3 or player is twistcapped:
					say "     [if HP of Player > 0 or player is submissive]Pressing firmly against this massive organ, you can't help but eagerly await becoming this beast's cock sleeve. Your eagerness is richly rewarded when[else]Overexposed to this familiar organ, you can't help but fight your growing desire towards twisted prospect of being this beast's cock sleeve, not that you'll have much say in the matter before[end if] he abruptly plunges the entirety of his cock's head into your abiding hole, elastic ring slightly strained as it quickly stretches to accommodate the intrusion.";
					say "     Deep rumbles of tainted pleasure escaping from the serpent's lips, he pins your side against his coarse frame. Forced to watch yourself as he thrusts ever deeper, your elongated frame quickly bulges with the silhouette of his proud cock as you're further impaled by it. You abide him with ease, lost in a haze of this overwhelming sensation, fondling your form as you revel in every ridge and bump of his [if HP of Player > 0 or player is submissive]exceptional[else]expansive[end if] flesh as it bulges from you, each successive thrust running through you like a train car.";
				say "     '[one of]Y-yes[or]M-more[or]Nrgh[or]S-so tight[at random]...' Lust-laden mutterings squeezed from the dragon, his continued [if MYDAM < 3 and player is not twistcapped]torment[else]railing[end if] drives you into arousal, [if Player is neuter]much in spite your lack of outlet[else if HP of Player < 1 and player is not submissive]much in spite your better judgment[else]forcing you to moan under the oppressive weight of his wanton need[end if]. Riding you up and down the length of his expansive dick, you're pulled up only to be firmly shoved down again, causing [if Player is male]your own cock[smn] to sputter with pre[else if Player is female]your unattended cunt[sfn] to throb and ooze[else]you to writhe[end if] with each descent.";
				say "     This [if MYDAM < 3 and player is not twistcapped]torture[else]ritual[end if] persists for what seems like forever before the dragon finally finds bliss, hilting the full length of his impressive organ within you, body's cock-shaped bulge quickly rounded out in the wake of his torrential flood of cum";
				if MYDAM is 0 and player is not twistcapped:
					say ". Beleaguered cries, your [if Cock Count of Player > 1]unattended dicks spend their [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is male]unattended dick spends its [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is female]unattended cunt[sfn] gush against the open air, dripping down to the earth below in the wake of his release[else]weakened protests are left largely disregarded[end if]. His sexual fluids quickly begin to sputter from your excessively stuffed hole, drenching your immensely sore and stretched backside until he finally subsides.";
					say "     His cock gradually softening, the dragon pulls you free of it, the wet sound of its departure filling the [if daytimer is night]night [end if]sky before he descends and drops you onto the ground, audibly landing in a pool of the serpent's seed below, its depth exacerbated by your leaking hole. The monster can't help but laugh at you in your pitiful state before he flies off. It takes you a long time to regain your mental faculties - let alone walk - and gather your things, departing from this exhausting circumstance.[mimpregchance]";
				else if MYDAM is 1 and player is not twistcapped:
					say ". Beleaguered cries, your [if Cock Count of Player > 1]unattended dicks spend their [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is male]unattended dick spends its [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is female]unattended cunt[sfn] gush against the open air, dripping down to the earth below in the wake of his release[else]weakened protests are left largely disregarded[end if]. His sexual fluids eventually begin to sputter from your excessively stuffed hole, drenching your sore and stretched backside until he finally subsides.";
					say "     His cock gradually softening, the dragon pulls you free of it, the wet sound of its departure filling the [if daytimer is night]night [end if]sky before he descends and drops you onto the ground, audibly landing in a pool of the serpent's seed below, its depth exacerbated by your leaking hole. The monster can't help but laugh at you in your pitiful state before he flies off. You don't nearly take as long to recover this time - though you'll still be walking funny for a while - and gather your things, departing from this tiring circumstance.[mimpregchance]";
				else if MYDAM is 2 and player is not twistcapped:
					say ". Beleaguered cries, your [if Cock Count of Player > 1]unattended dicks eagerly spend their [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is male]unattended dick eagerly spends its [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is female]unattended cunt[sfn] eagerly gush against the open air, dripping down to the earth below in the wake of his release[else]your protests are undermined by your own tainted lust[end if]. His sexual fluids slowly begin to sputter from your excessively stuffed hole, painting your sore and stretched backside until he finally subsides.";
					say "     His cock gradually softening, the dragon pulls you free of it, the wet sound of its departure filling the [if daytimer is night]night [end if]sky before he descends and drops you onto the ground, audibly landing in a puddle of the serpent's seed below, no doubt fairly shallow given your increased retention. The monster can't help but somewhat amused by his used cock sleeve, watching you slowly struggle to your feet before flying off. By now you feel completely used to this twisted circumstance - [if HP of Player < 1 and player is not submissive]thought you'd much rather not be[else]bloated belly notwithstanding[end if] - and you move to gather your things before departing.[mimpregchance]";
				else if MYDAM is 3 or player is twistcapped:
					say ". Beleaguered cries, your [if Cock Count of Player > 1]unattended dicks eagerly spend their [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is male]unattended dick eagerly spends its [Cum Load Size of Player] load across your torso, dripping down to the earth below in the wake of his release[else if Player is female]unattended cunt[sfn] eagerly gush against the open air, dripping down to the earth below in the wake of his release[else]your protests are undermined by your own tainted lust[end if], belly gradually bloating as you abide every last drop of his release, finding yourself lost in a stupor of wanton hunger.";
					say "     His cock gradually softening, the dragon pulls you free of it, the wet sound of its departure filling the [if daytimer is night]night [end if]sky before he descends and setting you down onto the ground once more. The dragon seems both very pleased with himself and with his exceptional little cum dumpster, thick tongue offering you a slight show of affection before departing. It takes you awhile to recover from your bloated and fatigued self, but in due time you find the clarity to gather your things, departing once more.[mimpregchance]";
				if MYDGM is 0, now MYDGM is 1;    [now familiar w/Yamato's impressive size]
				if MYDAM is 0:
					now MYDAM is 1;
				else if MYDAM < 3 and player is not twistcapped and "Microwaved" is listed in feats of Player:
					LineBreak;
					say "WARNING: Anal elasticity change detected! Allow?";
					if Player consents:
						increase MYDAM by 1;
					else:
						say "     You manage to keep the dragon's influence at bay, for the most part.";
						now MYDAM is 1;
				else if MYDAM < 3:
					increase MYDAM by 1;
				if MYDAM is 3 and player is not twistcapped:
					LineBreak;
					say "     [italic type]...After some time you realize that your escapades with the massive dragon has had some permanent effect on you. Your anal ring feels permanently stretchier...[roman type][line break]";
					if Player is not twistcapped, add "Twisted Capacity" to feats of Player;
			else if Player is female and a random chance of 1 in 2 succeeds:
				say "     Talons wrapping around your serpentine frame, the dragon pulls you up into the air, dragging you along as he ascends. [if HP of Player < 1 and player is not submissive]Instinctively struggling against the beast's hold, being let go quickly stops being an option, given how high up you are[else]At the mercy of this beast, you watch on as the earth becomes more and more distance, instinctively driving you to cling to him in return[end if]. Entirely exposed before him as you are, he presses you against his growing arousal, forced to abide his hardening cock as he grinds it between your legs.";
				if MYDGM is 0:
					say "     Though you're similar in form to your [if HP of Player < 1 and player is not submissive]assailant[else]patron[end if][if Cunt Depth of Player > 19], and fairly well-endowed,[end if] you're not exactly sure how he intends to fit impressive tool inside you; regardless, this notion doesn't even cross the dragon's mind before he";
				else:
					say "     [if HP of Player < 1 and player is not submissive]You're doubtlessly a little sheepish to endure this beast's twisted wrath again[else]You find yourself eager to be subject to this patron once again[end if]; massive, bulbously ribbed thing eager to enveloped by your flesh. Sparing little time, the dragon";
				say " presses his organ's oozing tip against [if Cunt Count of Player > 1]the supple lips of one of your cunts[else]your cunt's supple lips[end if]. Deep rumbles of tainted pleasure escaping from the serpent's lips, you watch on as his dick's pointed tip slowly inches its way further into your depths, spreading your[if Cunt Depth of Player < 20] quickly[end if] strained with such a persistent dedication in spite of the [if Cunt Tightness of Player > 20]slowly[else]quickly[end if] rising intensity you must abide in the wake of this continued intrusion.";
				say "     Pinning your side against his coarse frame, you're forced to watch yourself as the monster thrusts ever deeper, elongated frame gradually bulging with the silhouette of his proud cock as you're further impaled by it";
				if MYDGM is 0:
					say ". It appears he commands some otherworldly attribute, able to impale you with his organ in spite your [if Cunt Tightness of Player < 10]very apparent[else]prior[end if] limitations[if Cunt Tightness of Player < 20], parting your vulnerable cunt to a degree beyond any prior comprehension[end if]";
					now MYDGM is 1;
				else:
					say ", each ridge grinding across your [if Cunt Tightness of Player < 20]quickly [end if]stuffed cunt with an aching excess";
				say ". Soon enough you can see the outline of his massive organ bulging through your beleaguered frame, your body trembling as you fight to stay conscious.";
				if Libido of Player > 33:
					say "     Almost immediately you cry out, wracked by the throes of your terribly strained orgasm, [cunt size desc of Player] hole weakly squeezing against its [if Cunt Tightness of Player < 20]oversized [end if]invader,[if Cock Count of Player > 1] your own cocks sputtering their [Cum Load Size of Player] load against you, and[else if Player is male] your own cock sputtering its [Cum Load Size of Player] load against you, and[end if] more than enough to set the dragon himself off. The beast loudly roars, a deafening proclamation of his bliss, as each powerful throb sends tremors through you, the once-defined outline of his dick quickly rounded off from gout after successive gout of hot seed until it begins to sputter free of you.";
				else:
					say "     After what seems like an eternity you're met with the dragon's loud roar, a deafening proclamation of his bliss. Each powerful throb sends tremors through you, as the once-defined outline of his dick is quickly rounded off from gout after successive gout of hot seed until it begins to sputter free of you. In the wake of this you cry out, wracked by the terribly strained throes of your own orgasm, [cunt size desc of Player] hole weakly squeezing against its [if Cunt Tightness of Player < 20]oversized [end if]invader[if Cock Count of Player > 1], your own cocks sputtering their [Cum Load Size of Player] load against you[else if Player is male], your own cock sputtering its [Cum Load Size of Player] load against you[end if].";
				say "     Lost in a dizzying, spent haze, you barely notice as the dragon descends back to the ground, firmly pulling you free of his now-softening dick before allowing you to fall off him, its audibly wet departure leaving a trail of his cum from your wrecked hole.";
				say "     '[one of]That you squirm like that[or]To sleeve me so well, as you do[at random], [if HP of Player < 1 and player is not submissive][one of]your protests amuse me[or]your struggle is in vain[or]you are mine regardless[at random][else][one of]you may be suitable as one of my consorts[or]I might reward your further obedience[or]you will return to me[at random][end if].' Leaving you with his parting remark, he retreats back into the air. It takes a fair amount of time recovering from your overfilled state before finding your things and heading back out.[impregchance]";
				if "Modest Organs" is not listed in feats of Player and (Cunt Depth of Player < 24 or Cunt Tightness of Player < 15):
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cunt size change detected! Allow?";
						if Player consents:
							if Cunt Depth of Player < 20:
								increase Cunt Depth of Player by 2;
							else if Cunt Depth of Player < 24:
								increase Cunt Depth of Player by 1;
							if Cunt Tightness of Player < 10:
								increase Cunt Tightness of Player by 2;
							else if Cunt Tightness of Player < 15:
								increase Cunt Tightness of Player by 1;
							follow the cunt descr rule;
							say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
						else:
							say "     It looks like you recover to your original size after treating it.";
					else:
						if Cunt Depth of Player < 20:
							increase Cunt Depth of Player by 2;
						else if Cunt Depth of Player < 24:
							increase Cunt Depth of Player by 1;
						if Cunt Tightness of Player < 10:
							increase Cunt Tightness of Player by 2;
						else if Cunt Tightness of Player < 15:
							increase Cunt Tightness of Player by 1;
						follow the cunt descr rule;
						say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
			else:
				say "     Grabbing you by your hind leg, you find yourself being dragged into the air, now subjected to the blowing wind along your ascent. Exposed before the [if daytimer is night]n[else]br[end if]ight sky, his taloned legs pull your head to his scaled, male vent, revealing your imposed [if HP of Player > 0 or player is submissive]task. Obligingly[else]punishment. Reluctantly[end if], your tongue caresses along its coarse lips, gradually parting way to reveal his soft, masculine flesh, inviting your writhing organ's slick touch.";
				say "     '[one of]Yes[or]Ah[or]Mm[at random]... [one of]You will learn your place, whelp[or]You have but a taste of what I offer you[or]This is your natural appointment, under me as you are now[at random].' His remark is punctuated by the feel of his talon";
				if Player is not neuter:
					say "[if Cock Count of Player > 2]s, gripping two of your now-hardening, [cock size desc of Player] cocks, putting you in an even more vulnerable position now that his sole hold on you is by your most sensitive organs[else if Cock Count of Player is 2]s, gripping both of your now-hardening, [cock size desc of Player] cocks, putting you in an even more vulnerable position now that his sole hold on you is by your most sensitive organs[else if Cock Count of Player is 1]'s grip, latched onto your now-hardening, [cock size desc of Player] cock, the other holding your similarly serpentine torso in place[else if Cunt Count of Player > 1]'s grip on your diminutive frame, freeing one to briefly tease one of your exposed cunts[else]'s grip on your diminutive frame, freeing one to briefly tease your exposed cunt[end if]. Eclipsing you in size, you can't help but shudder at the overwhelming sensation of his own tongue's reciprocation across [if Cock Count of Player > 1]one of your cock's length[else if Cock Count of Player is 1]the length of your cock[else]your [bodytype of Player] form[end if].";
					say "     Massive, ridged organ inviting you to continue, your lips envelop the head of the dragon's dick and, in turn, he rewards your attendance with his own, draconic maw embracing [if Cock Count of Player > 2]one of your own organs, pumping one of its exposed brothers[else if Cock Count of Player is 2]one of your own organs, pumping its exposed brother[else if Player is male]your organ[else if Cunt Count of Player > 1]the one of your cunts[else if Player is female]your cunt[end if]. The [if HP of Player < 1 and player is not submissive]victim[else]smaller[end if] half of this twisted ouroboros, ";
					if Libido of Player > 33:
						say "a muffled cry is quickly forced from your stuffed lips in blissful release, your subjugator[if Player is male] relentless in swallowing down your gushing, [Cum Load Size of Player] flood of sexual fluids[else]'s tongue relentless in pounding your gushing pussy[end if], [if Cock Count of Player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your unengulfed cocks[else if Cock Count of Player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your unengulfed cock[else if Player is male]greedily milking you of every last drop[else]driving you wild in throes of ecstasy[end if]. In the wake of this, you feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive organ entirely inside you, and subsequently forcing you to take the full brunt of the ensuing flood of his thick, virile seed.";
					else:
						say "you eventually feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take the full brunt of the ensuing flood of his thick, virile seed. Shortly, in the wake of this, a muffled cry is forced from your stuffed lips in blissful release, your subjugator[if Player is male] relentless in consuming your gushing, [Cum Load Size of Player] flood of sexual fluids[else]'s tongue relentless in assaulting your stuffed pussy[end if], [if Cock Count of Player > 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cocks[else if Cock Count of Player is 2]though gravity decides not to spare you when you're elongated torso is stained with the seed of your exposed cock[else if Player is male]milking you of every last drop[else]driving you wild in the throes of bliss[end if].";
				else if (anallevel > 1 and a random chance of 1 in 2 succeeds) or anallevel is 3:
					say "'s grip on your diminutive frame. Eclipsing you in size, as he does, you can't help but shudder at the overwhelming sensation of his tongue's twisted reciprocation, penetrating your anal ring without remorse, no doubt a torment to your genderless form.";
					say "     Massive, throbbing organ inviting you to continue, your lips envelop the head of the dragon's dick and, in turn, he rewards your attendance with his own, draconic maw enveloping your anal ring, causing you to writhe in insatiable need. The [if HP of Player < 1 and player is not submissive]victim[else]smaller[end if] half of this twisted ouroboros, you eventually feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take the full brunt of the ensuing flood of his thick, virile seed.";
				else:
					say "'s grip on your diminutive frame. Eclipsing you in size, as he does, you can't help but shudder in the wake of his twisted reciprocation, large tongue caressing your genderless crotch, teasing you in the midst of your submissive task.";
					say "     Massive, throbbing organ inviting you to continue, your lips envelop the head of the dragon's dick and, in turn, he rewards your attendance by continuing to tease you, causing you to writhe in insatiable need. The [if HP of Player < 1 and player is not submissive]victim[else]smaller[end if] half of this twisted ouroboros, you eventually feel his talons push your head firm against his massive rod, lengthy frame abused to hilt the impressive thing entirely inside you, and subsequently forcing you to take the full brunt of the ensuing flood of his thick, virile seed.";
				say "     After a few moments, he finally wrenches you free of his softening member, setting you down on the ground by your tail. Satisfied, he grins at you for a moment before silently floating off, away from you[if Cock Count of Player > 1] and your cum-soiled self[end if], doubtlessly fatigued and lust sated. You gather your things[if Cock Count of Player > 1], clean yourself off,[end if] and depart back from whence you came.";
		else:
			if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 2 in 3 succeeds)):
				say "     [if HP of Player < 1 and player is not submissive]Making one final attempt to flee the dragon's wrath, you try to crawl off, which only really succeeds in amusing the creature and expose offer you a telling view of your exposed behind, talons gripping you as you're pulled back towards him[else]The dragon sniffs you over, inspecting you for a moment before pinning you to the ground and circling around until your behind is exposed before his prying gaze[end if]. Barely given a moment to relax, you feel the beast grind his underbelly against you; coarse, yellow scales of his male vent parting way to the touch of his growing cock as it presses firmly against your ass.";
				if MYDAM is 0 and player is not twistcapped:
					say "     [if scalevalue of Player > 4]Impressive in size as you are, the serpent is still quite larger than you, making you unsure of how he'll even be able to fit his massive dick inside you[else if scalevalue of Player is 4]Fairly large as you are, the serpent is substantially larger, making you unsure of how he'll even be able to fit his massive dick inside you[else]Given how massive the serpent is compared to you, his dick is absolutely terrifying! There's no way that thing will fit inside you without splitting you in half[end if]; regardless, he seems unphased by the potential limitations of this prospect, and you soon feel his organ's hardened tip press against your exposed anal ring.";
					say "     Deep rumbles of tainted need escaping the dragon's lips, he sinks each successive inch at a relentless pace, even when it [if scalevalue of Player is 3]quickly[else]eventually[end if] reaches your perceived limitations, the overwhelming sensation of such an intense violation rising to seemingly impossible heights until you[if scalevalue of Player is 3], somehow,[end if] take his cock's head.";
					say "     Pulling you back, against his rough frame, you're forced to watch yourself as he plunges ever-deeper, belly [if scalevalue of Player is 3]already[else]quickly[end if] bulging with his overwhelming intrusion. It is clear now that he commands some otherworldly power, allowing him to utterly break past your previous limitations, though this doesn't spare you from the sheer intensity of the sensation, making it a fight to merely stay conscious.";
					if MYDGM is 0, now MYDGM is 1;    [now familiar w/Yamato's impressive size]
				else if MYDAM is 1 and player is not twistcapped:
					say "     With an audible gulp[if HP of Player > 0 or player is submissive], and even though you'd normally be a bit more complicit to these circumstances[end if], you can't help but feel ill-at-ease for what is about to transpire; regardless, he seems unphased by your present anxiety, and you soon feel his organ's hardened tip press against your exposed anal ring.";
					say "     Deep rumbles of tainted need escaping the dragon's lips, he sinks each successive inch at a relentless pace, the overwhelming sensation of such an intense violation rising to seemingly impossible heights until you take his cock's head. Pulling you back, against his rough frame, you're forced to watch yourself as he plunges ever-deeper, belly [if scalevalue of Player is 3]already[else]quickly[end if] bulging with his overwhelming intrusion. As tightly fitting as you remain, it appears that you're getting slightly better as the creature's undersized cocksleeve.";
				else if MYDAM is 2 and player is not twistcapped:
					say "     [if HP of Player > 0 or player is submissive]By this you've grown to come to terms with this twisted fate, soon feeling that familiar organ's hardened tip press[else]You beg and plead to the beast, in vain, that he might spare you of this twisted fate who, seemingly unphased by the gesture, presses his now-familiar organ's hardened tip[end if] against your exposed anal ring.";
					say "     Deep rumbles of tainted need escaping the dragon's lips, he sinks in each progressive inch with a foreboding diligence, the overwhelming sensation of such an intense violation rising at a seemingly endless pace until you abide his cock's head, now with substantial ease, given your overexposure. Pulling you back, against his rough frame, you're forced to watch yourself as he plunges ever-deeper, belly [if scalevalue of Player is 3]already[else]quickly[end if] bulging with his overwhelming intrusion.";
				else if MYDAM is 3 or player is twistcapped:
					say "     [if HP of Player > 0 or player is submissive]Pressing firmly against this massive organ, you can't help but eagerly await becoming this beast's cock sleeve. Your eagerness richly rewarded when[else]Overexposed to this familiar organ by this point, it's difficult to fight your growing desire for twisted prospect of being this beast's cock sleeve, not that you're left to linger on your indecision before[end if] he abruptly plunges the entirety of his cock's head into your abiding hole.";
					say "     Deep rumbles of tainted need escaping the dragon's lip, he pulls you back, against his rough frame. Forced to watch yourself as he thrusts ever-deeper, your belly [if scalevalue of Player is 3]already[else]quickly[end if] bulges with his overwhelming intrusion. You take him with ease, your mental grasp over the overwhelming intensity of his influence allows you to revel in every inch, every ridge and bump of his exceptional flesh as it runs through you like a train car.";
				say "     '[one of]Yes, yes[or]Take it[or]N-nghn[at random]! [one of]Take every last inch[or]You will sleeve the whole of me[or]Take all of it[at random]!' Lust-laden cries echoing through the [if showlocale is true]park[else]area[end if], his torment drives you into arousal, [if Player is neuter]much in spite your lack of outlet[else if HP of Player < 1 and player is not submissive]much in spite your better judgment[else]forcing you to moan under the intense weight of his wanton fury[end if].";
				say "     The thunderous sounds of his constant assault persist for what seems like an eternity before the beast finally finds bliss, stretching you to your absolute limits to bury his mammoth dick within you. Body hit with tremor after successive tremor, your stomach's cock-shaped bulge quickly rounds out from each gout of his torrential flood of cum.";
				if MYDAM is 0 and player is not twistcapped:
					say "     Beleaguered cries ripped from your lips, [if Player is male]your own, strained cock[smn] spending your [Cum Load Size of Player] load across your torso and the dragon's scales in the wake of his release[else if Player is female]cunt[sfn] dripping down across your crotch and the dragon's scales in the wake of his release[else]your weakened protests left disregarded[end if], his sexual fluids [if scalevalue of Player is 3]immediately[else]quickly[end if] begins to sputter from your excessively stuffed hole, drenching your immensely sore backside until he finally subsides.";
					say "     Finally wrenching his softening cock from your abused, [bodytype of Player] form, the loud, wet sound of its departure filling the air, he casually drops you back onto the earth, causing you to fall to the ground once more, splashing into a pool of the dragon's still-hot spunk, made all the deeper by your leaking hole. The beast can't help but laugh at you in your pitiful state before he flies off. It takes you a long time to gain your mental faculties - let alone walk - and gather your things, departing from this exhausting circumstance.[mimpregchance]";
				else if MYDAM is 1 and player is not twistcapped:
					say "     Beleaguered cries ripped from your lips, [if Player is male]your own, strained cock[smn] spending their [Cum Load Size of Player] load across your torso and the dragon's scales in the wake of his release[else if Player is female]cunt[sfn] dripping down across your crotch and the dragon's scales in the wake of his release[else]your weakened protests left disregarded[end if], his sexual fluids [if scalevalue of Player is 3]quickly[else]eventually[end if] begins to sputter from your excessive stuffed hole, drenching your sore backside until he finally subsides.";
					say "     Finally wrenching his softening cock from your abused, [bodytype of Player] form, the loud, wet sound of its departure filling the air, he casually drops you back onto the earth, causing you to fall to the ground once more, splashing into a pool of the dragon's still-hot spunk, made all the deeper by your leaking hole. The beast can't help but laugh at you in your pitiful state before he flies off. You don't nearly take as long to recover this time - though you'll still be walking funny for a while - and gather your things, departing from this tiring circumstance.[mimpregchance]";
				else if MYDAM is 2 and player is not twistcapped:
					say "     Beleaguered cries pulled from your lips, [if Player is male]your own, strained cock[smn] eagerly spending your [Cum Load Size of Player] load across your torso and the dragon's scales in the wake of his release[else if Player is female]cunt[sfn] eagerly dripping down across your crotch and the dragon's scales in the wake of his release[else]your protests muffled by your own tainted lust[end if], his sexual fluids [if scalevalue of Player is 3]eventually[else]slowly[end if] begins to sputter from your excessively stuffed hole, painting your sore backside until he finally subsides.";
					say "     Finally wrenching his softening cock from your abused, [bodytype of Player] form, the loud, wet sound of its departure filling the air, he casually drops you back onto the earth, causing you to fall to the ground once more, splashing into a puddle of the dragon's still-hot spunk, no doubt made shallower this time by your increasing retention. The beast can't help but be somewhat amused as he watches you slowly struggle to your feet before departing. By now you feel completely used to this twisted circumstance - [if HP of Player < 1 and player is not submissive]thought you'd much rather not be[else]uncomfortably bloated belly notwithstanding[end if] - and you move to gather your things before departing.[mimpregchance]";
				else if MYDAM is 3 or player is twistcapped:
					say "     Wanton moans squeezed from your lips, [if Player is male] your own, strained cock[smn] eagerly spending your [Cum Load Size of Player] load across your torso and the dragon's scales in the wake of his release[else if Player is female]cunt[sfn] eagerly dripping down across your crotch and the dragon's scales in the wake of his release[else]elicited by your tainted lust[end if], belly [if scalevalue of Player is 3]quickly[else]gradually[end if] bloating as you take every last drop of his release, and losing yourself in a stupor of twisted hunger.";
					say "     Finally wrenching his softening cock from your abused, [bodytype of Player] form, the loud, wet sound of its departure filling the air, he casually sets you back down on the ground. The beast seems both very pleased with himself and with his exceptional little cum dumpster, thick tongue offering you a slight show of affection against your bloated self before departing. It takes you awhile to recover from your stretched and fatigued self, but in due time you find your clarity and gather your things, departing once more.[mimpregchance]";
				if MYDGM is 0, now MYDGM is 1;    [now familiar w/Yamato's impressive size]
				if MYDAM is 0:
					now MYDAM is 1;
				else if MYDAM < 3 and player is not twistcapped and "Microwaved" is listed in feats of Player:
					LineBreak;
					say "WARNING: Anal elasticity change detected! Allow?";
					if Player consents:
						increase MYDAM by 1;
					else:
						say "     You manage to keep the dragon's influence at bay, for the most part.";
						now MYDAM is 1;
				else if MYDAM < 3:
					increase MYDAM by 1;
				if MYDAM is 3 and player is not twistcapped:
					LineBreak;
					say "     [italic type]...After some time you realize that your escapades with the massive dragon has had some permanent effect on you. Your anal ring feels permanently stretchier...[roman type][line break]";
					if Player is not twistcapped, add "Twisted Capacity" to feats of Player;
			else if Player is female and a random chance of 1 in 2 succeeds:
				say "     [if HP of Player < 1 and player is not submissive]Making a final attempt to crawl free, you only encourage the oversized reptile to pull you back by one of[else]Forced to gawk at the oversized reptile, he offers you a twisted grin as he begins pulling you closer by[end if] your legs. Your front exposed, he buries his [if scalevalue of Player < 5]massive[else]large[end if] snout between your thighs. Coarse scales grinding against you vulnerable, [bodytype of Player] frame, you must abide his thick tongue's shameless attention, firmly caressing your [cunt size desc of Player] cunt[sfn]. In the distance, forced to watch the crotch of his own serpentine form, you see his massive cock slowly growing hard against the open air.";
				if MYDGM is 0:
					say "     [if Cunt Tightness of Player > 19]Well-endowed as you are, you're[else]You're[end if] not exactly sure how this beast intends to fit that thing inside you, making you [if HP of Player > 0 or player is submissive]a fair bit worried about what is to follow[else]even more worried than you already are[end if]. This notion doesn't even cross his mind as he frees";
				else:
					say "     [if HP of Player > 0 or player is submissive]You're doubtlessly a little sheepish towards the prospect of being[else]Certainly not eager to be[end if] impaled by the beast again, massive, bulbously ribbed thing eager to plunge into your ill-equipped depths. With little regard to your [if HP of Player > 0 or player is submissive]worries[else]protests[end if], he frees";
				say " you of his slick appendage's influence, fore-talons replaced by hind as he lines the towering rod with [if Cunt Count of Player > 1]one of your exposed, saliva-slicked portals[else]your exposed, saliva-slicked portal[end if]. You're force to watch on as, slowly, his dick's pointed tip sinks past your hole's supple lips, spreading the beleaguered thing with such a persistent dedication, even as you [if Cunt Tightness of Player > 20]gradually[else]quickly[end if] begins to be stretched to your absolute limits.";
				say "     His rigid flesh slowly forcing its way further down your depths, it goes on seemingly without end";
				if MYDGM is 0:
					say ". It quickly becomes apparent that he commands some otherworldly power, able to impale you with his organ much in spite your [if Cunt Tightness of Player < 10]very apparent[end if] limitations[if Cunt Tightness of Player < 20], splitting your vulnerable pussy to extents beyond any prior comprehension[end if]";
					now MYDGM is 1;
				else:
					say ", each ridged edge grinding across your [if Cunt Tightness of Player < 20]quickly [end if]stuffed pussy with an aching excess";
				say ". [if scalevalue of Player < 5]Almost immediately[else]Soon enough[end if] you can see the outline of his massive organ bulging through your beleaguered, [bodytype of Player] frame, its demented apparency exacerbating your already overloaded senses.";
				if Libido of Player > 33:
					say "     Almost immediately you cry out, wracked by the throes of your terribly strained orgasm, [cunt size desc of Player] hole weakly squeezing against its [if Cunt Tightness of Player < 20]oversized [end if]invader[if Player is male] as your own cock[smn] waste[smv] your [Cum Load Size of Player] load against you and the creature's crotch[end if], more than enough to trigger your twisted reward. The dragon loudly announcing his bliss with a roar, you watch on, exhausted, as the dick's once-defined outline is quickly rounded off in the wake of his release, hot seed [if scalevalue of Player < 5]quickly flooding you until it's forced to sputter from your stuffed cunt[else]gradually flooding you until you're absolutely bloated with the stuff[end if].";
				else:
					say "     The dragon loudly announcing his bliss with a roar, you watch on, exhausted, as the dick's once-defined outline is quickly rounded off in the wake of his release, hot seed [if scalevalue of Player < 5]quickly flooding you until it's forced to sputter from your stuffed cunt[else]gradually flooding you until you're absolutely bloated with the stuff[end if]. In the wake of this you cry out, wracked by the strained throes of your own orgasm, [cunt size desc of Player] hole weakly squeezing against its [if Cunt Tightness of Player < 20]oversized [end if]invader[if Player is male] as your own cock[smn] waste[smv] your [Cum Load Size of Player] load against you and the creature's crotch[end if].";
				say "     Forced to endure some of the monster's weight as he recovers for a moment along with you, you're finally spared as he wrenches his now-softening dick free from you, an audible, wet sound of its departure as it leaves a trail of his white fluid in its wake.";
				say "     '[if scalevalue of Player < 4][one of]Such a little thing[or]So tiny you are[at random][else][one of]That you squirm like that[or]To barely abide me, as you do[at random][end if], [if HP of Player < 1 and player is not submissive][one of]your protests amuse me[or]your struggles are in vain[or]you are mine regardless[at random][else][one of]you're suitable as my toy[or]I might reward your further obedience[or]you will return to me[at random][end if].' Having offered up his parting remark he retreats back into the air, leaving you to take a fair amount of time recovering from your utterly stuffed state before finding your things and heading back out.[impregchance]";
				if "Modest Organs" is not listed in feats of Player and (Cunt Depth of Player < 20 or Cunt Tightness of Player < 10):
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cunt size change detected! Allow?";
						if Player consents:
							if Cunt Depth of Player < 20:
								increase Cunt Depth of Player by 2;
							else if Cunt Depth of Player < 24:
								increase Cunt Depth of Player by 1;
							if Cunt Tightness of Player < 10:
								increase Cunt Tightness of Player by 2;
							else if Cunt Tightness of Player < 15:
								increase Cunt Tightness of Player by 1;
							follow the cunt descr rule;
							say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
						else:
							say "     It looks like you recover to your original size after treating it.";
					else:
						if Cunt Depth of Player < 20:
							increase Cunt Depth of Player by 2;
						else if Cunt Depth of Player < 24:
							increase Cunt Depth of Player by 1;
						if Cunt Tightness of Player < 10:
							increase Cunt Tightness of Player by 2;
						else if Cunt Tightness of Player < 15:
							increase Cunt Tightness of Player by 1;
						follow the cunt descr rule;
						say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
			else:
				say "     He grabs a hold of your [if scalevalue of Player > 4]massive[else if scalevalue of Player is 4]large[else if scalevalue of Player < 4]small[end if], [bodytype of Player] body, vicious talons encircling you, before pulling you into the air with little difficulty. The serpentine dragon having laid down [if showlocale is true]in the park, a feat not particularly easy - at least, not without making a bit of a mess, given his size -[else]before you, ground trembling with the massive beast's landing[end if] as [if HP of Player < 1 and player is not submissive]you struggle impotently against his hold[else]he eyes you with a curious expression[end if].";
				say "     His plan for you is made very clear when he sets you back down where between his stout, hind legs, yellow-scaled, male vent exposed to the open air. With very little restraint, the dragon urges you closer to it, pressing you firmly against its carnal lips as the tip of his cock's head peers slightly from its home.";
				say "     '[one of]Get to work[or]Hurry up[or]Do not waste my time[at random], [one of]I have little patience for stalling[or]whelp[or]you would notwant to test my patience[or]you are mine now[at random]!' [if HP of Player < 1 and player is not submissive]Reluctantly, you're made to[else]Obligingly, you[end if] use your tongue to coax his organ into arousal. Tough scales parting to expose his growing, hardening flesh. He displays his [if scalevalue of Player < 4]towering[else]impressive[end if] dick before you proudly, compelling you[if scalevalue of Player > 3] wrap around the rod, tongue rising across its length to meet the head in lip's embrace[else]r diminutive frame to embrace the rod, tongue caressing its length[end if].";
				say "     Deep, approving rumbles escaping your captor's scaled lips, he presses you more firmly against his throbbing tool, your [if scalevalue of Player > 3]maw quickly contending with the rising flood of his precum[else]body quickly contending with a rising cascade of his precum flowing down on you[end if], senses quickly flooded with the taste and scent of his virile sex. Relegated to a mere attendant to the dragon's need, [if Player is male]you're driven erect[else if Player is female]you're made blatantly aroused[else]you find yourself tormented by an insatiable need[end if], overwhelming heat radiating from his pulsing cock. It becomes unbearable, driving you to grind your [if Player is male]own[else if Player is female]cunt[sfn][else]genital-less crotch[end if] against his ribbed body, slicked by his sexual fluids, the beast's wanton need rising in turn.";
				say "     In due time the serpent roars out in bliss, [if scalevalue of Player > 3]immediately contend with an excessive flood of seed as it erupts from his dick, that which you cannot swallow sputtering free of your maw's embrace[else]forced to bathe in a flood of the dragon's seed as it erupts from his dick[end if]";
				if Libido of Player > 49 and player is not neuter:
					say ", more than enough to drive you into a similar release, your own sexual fluids lost in a mix of his own";
				else:
					say ", forcing you to abide his lust-fueled fury as you're beleaguered frame is doused by his sexual fluids";
				say ". It takes a moment of recovery before he finally pulls you free of his softening dick, setting off into the sky once more and leaving you to clean yourself of the excessive mess.";
	if voreloss is false:
		now tempnum is 1;
		yamatbiasshift;
		now tempnum is 0;

to yamatbiasshift:
	if tempnum is 1: [Male]
		if YDSF is 0:
			now YDSF is 1;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male dragon. Surely you fate is tied to him, should you succumb[roman type].";
		else if YDSF is 4:
			now YDSF is 3;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male dragon. Your fate remains tied to a female, should you succumb, but continued exposure will cause a shift in your bias[roman type].";
		else if YDSF is 3 or YDSF is 2:
			now YDSF is 1;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male dragon. Surely your fate is tied to him, should you succumb[roman type].";
	else: [Female]
		if YDSF is 0:
			now YDSF is 4;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female dragon. Surely you fate is tied to her, should you succumb[roman type].";
		else if YDSF is 1:
			now YDSF is 2;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female dragon. Your fate remains tied to a male, should you succumb, but continued exposure will cause a shift in your bias[roman type].";
		else if YDSF is 3 or YDSF is 2:
			now YDSF is 4;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female dragon. Surely your fate is tied to her, should you succumb[roman type].";

to say yamato dragon desc:
	setmongender 3; [creature is male]
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
	psycheeval;
	libidoeval;
	say "     [if showlocale is true]Traveling through the park[else]Suddenly[end if], you find yourself beset by a dragon of eastern myth. Massive and serpentine in frame, airborne in spite of being wingless, his [one of]red[or]blue[or]green[at random] scales and yellow underbelly shimmering in the [if daytimer is night]starlight[else]sunlight[end if]. You instinctively attempt to find cover, but this only encourages him to pursue you on ground, a lustful hunger agleam in his eyes.";

to say ydskinchange:
	let tempnum be ydcolor;
	now ydcolor is a random number between 0 and 2;
	if ydcolor is tempnum, increase ydcolor by 1;
	if ydcolor is 3, now ydcolor is 0;
	say "you find yourself suddenly forced to abide the growth of large, smooth [if ydcolor is 0]red[else if ydcolor is 1]blue[else]green[end if] scales grow upon your back, smaller, coarser yellow scales quickly adorning your front and underside";

to say Yamato Dragon loss:
	say "     You successfully manage to fend off the massive dragon... Or, at least, he seems to yield to you, [one of]perhaps figuring that this fight is going nowhere for him[or]no doubt satisfied with you[stopping]. Pulling back, he glares down at you.";
	say "     '[one of]Alright[or]Very well[or]I see now[at random], ";
	if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
		say "whelp";
	else if scalevalue of Player < 4 and a random chance of 1 in 2 succeeds:
		say "little one";
	else:
		say "mortal";
	say ", [one of]I have been bested[or]you have proven your mettle[or]my strength has been matched[or]you are most impressive[or]I am satisfied with your prowess[at random]. [one of]For your victory, I will satisfy you as you see fit.' [or]How may I satisfy you?' [or]You are granted the opportunity to do what you will with me.' [at random]";
	if Libido of Player < 40 and "Dominant" is not listed in feats of Player: [Incomplete]
		say "You're not particularly in the mood to make any sort of lewd request, and since you don't need anything else of him you decide to simply send him off, leaving you to go about your business once more.";
	else:
		say "Shall you oblige the beast's offering?";
		if Player consents:
			yamatmalesexmenu;
		else:
			say "     You decide against making any lewd request, and since you don't need anything else of him you decide to simply send him off, leaving you to go about your business once more.";

Section 1-2 - Player Victory Sex

to yamatmalesexmenu:
	now calcnumber is -1;
	say "     What will you do?";
	let Trixieexit be 0;
	while Trixieexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [if Player is male][link]Mount him[as]1[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(2) [if Player is male][link]Have him suck your dick[as]2[end link][else][italic type]Male-specific interaction[roman type][end if][line break]";
		say "(3) [if Player is female][link]Have him eat your cunt[as]3[end link][else][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(4) [if Player is female][link]Ride his dick[as]4[end link][else][italic type]Female-specific interaction[roman type][end if][line break]";
		say "(5) [link]Ride his dick anally[as]5[end link] [if scalevalue of Player < 3][italic type]- Too small![roman type][end if][line break]";
		say "(6) [link]Suck him off[as]6[end link][line break]";
		LineBreak;
		say "(0) [link]Nevermind.[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Choice.";
		if calcnumber is 1:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatM_1]"; [Anal Pitching]
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
				now tempnum is 1;
				yamatbiasshift;
				now tempnum is 0;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 2:
			if Player is not male:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatM_2]"; [Oral Receiving Cock]
				now tempnum is 1;
				yamatbiasshift;
				now tempnum is 0;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 3:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatM_3]"; [Oral Receiving Cunt]
				now tempnum is 1;
				yamatbiasshift;
				now tempnum is 0;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 4:
			if Player is not female:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatM_4]"; [Cunt Catching]
				if "Modest Organs" is not listed in feats of Player and (Cunt Depth of Player < 24 or Cunt Tightness of Player < 15):
					LineBreak;
					if "Microwaved" is listed in feats of Player:
						say "WARNING: Cunt size change detected! Allow?";
						if Player consents:
							if Cunt Depth of Player < 20:
								increase Cunt Depth of Player by 2;
							else if Cunt Depth of Player < 24:
								increase Cunt Depth of Player by 1;
							if Cunt Tightness of Player < 10:
								increase Cunt Tightness of Player by 2;
							else if Cunt Tightness of Player < 15:
								increase Cunt Tightness of Player by 1;
							follow the cunt descr rule;
							say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
						else:
							say "     It looks like you recover to your original size after treating it.";
					else:
						if Cunt Depth of Player < 20:
							increase Cunt Depth of Player by 2;
						else if Cunt Depth of Player < 24:
							increase Cunt Depth of Player by 1;
						if Cunt Tightness of Player < 10:
							increase Cunt Tightness of Player by 2;
						else if Cunt Tightness of Player < 15:
							increase Cunt Tightness of Player by 1;
						follow the cunt descr rule;
						say "You can see your [if Cunt Count of Player is 1][one of]cunt[or]pussy[or]vagina[or]cleft[at random] [one of]engorges[or]swells[or]throbs[at random][else][one of]cunts[or]pussies[or]vaginas[or]clefts[at random] [one of]engorge[or]swell[or]throb[at random][end if] as [if Cunt Count of Player is 1]it grows[else]they grow[end if] deeper into your body, becoming [descr]!";
				now tempnum is 1;
				yamatbiasshift;
				now tempnum is 0;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 5:
			if scalevalue of Player < 3:
				say "[bracket]Invalid interaction: You don't meet the criteria[close bracket][line break]";
			else:
				say "[YamatM_5]"; [Anal Catching]
				now tempnum is 1;
				yamatbiasshift;
				now tempnum is 0;
				yamatdomshift;
				now Trixieexit is 1;
		else if calcnumber is 6:
			say "[YamatM_6]"; [Oral Giving Cock]
			now tempnum is 1;
			yamatbiasshift;
			now tempnum is 0;
			yamatdomshift;
			now Trixieexit is 1;
		else:
			say "     You have some second thoughts and choose to turn the dragon down, leaving you to go about your business once more."; [turn down]
			now Trixieexit is 1;

to say YamatM_1: [Anal Pitching]
	say "     You decide upon taking the massive serpent for a ride, a request he doesn't seem to mind obliging. His form slowly descends to meet you more closely.";
	say "     '[one of]Very well[or]If that is what you desire[or]I will bow to your need[or]Your wish is my command[at random]...' Lengthy frame shifting around, the dragon exposes his hindquarters, leaving his bestial, scaled vent before you. [if scalevalue of Player < 4]Given how small you are relative to him, he lays on his back so you can scale him to properly position yourself[else]It takes a bit of work to position yourself proper, given how massive he is, but he's at least compliant enough to not make the matter more difficult for you than need be[end if]. Curiously fondling his taut, coarse cleft, it takes a bit of work for your prying digits to penetrate its surface, exposing your touch to his supple, slick inner-flesh. Shall you engage in a bit of foreplay? Otherwise, you'll get straight to the matter at hand.";
	if Player consents:
		say "     Caressing his exceedingly tight inner-walls, the dragon doesn't seem affected by it, [if scalevalue of Player < 4]perhaps too small for it to really register[else]in spite of your adequate size[end if], inviting you to plunge the whole of your fist down its depths. It doesn't take long for the serpent's libido to take effect, his massive dick beginning to peek near the top of that same slit.";
		say "     '[one of]Oh[or]Ah[or]Yes[at random], [one of]do not stop[or]I can take more[or]you tease me so[at random]...' Oozing, throbbing dick soon jutting fully hard from your endeavor, [if scalevalue of Player < 4]it's very intimidating just to look at[else]you no doubt have to contend with a bit of interference from it, eventually shifting its direction to the side[end if]. Pulling your limb free, you think everything should be good to go.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	if Cock Length of Player < 20 and Cock Count of Player > 1:
		say "     Given how large he is, you figure you could fit [if Cock Count of Player is 2]both[else]two[end if] of your cocks down his hole, shall you try?";
		if Player consents:
			now tempnum2 is 1;
		else:
			now tempnum2 is 0;
	say "     Ready to take the plunge, you expose[if Cock Count of Player is 2 and tempnum2 is 1] both of[else if tempnum2 is 1] two of[else if Cock Count of Player > 1] one of[end if] your [cock size desc of Player], half-aroused dick[smn]. Grinding [if tempnum2 is 1]them[else]it[end if] against the eager vent, the dragon faintly moans against your touch, [if tempnum is 1]his own rod oozing against the open air[else]slowly becoming aroused by the tease[end if], before you slowly sink the[if Player is blunt] blunt[end if] head[if tempnum2 is 1]s[end if] past its scaled lips.";
	say "     It quickly becomes a struggle to force yourself deeper, the hole exceedingly tight[if tempnum is 1] in spite of your prior preparations[end if][if tempnum2 is 1], made worse by having both in there[else if Cock Length of Player > 20], made worse by your impressive size[end if]. The dragon grins slightly down at you.";
	say "     '[one of]Ha[or]Hmpf[or]Oh[at random], [one of]I allowed you to ride me, but I didn't say I would make it easy[or]if you want my hole so badly, prove your convictions[or]it would be a shame for you to fail this close to your goal[at random]!' Mocking you in your struggles, you're forced to steel yourself for the fight to inch deeper down the beast's bowels, its vice-like hold giving you difficulty all the way[if Cock Length of Player < 12] even with assets that he should have no problem taking[end if]. Several minutes of sweat and grunts eventually allows you to engulf your cock[if tempnum2 is 1]s[end if] all the way [if Player is knotted]- to the knot - [end if]down his powerful vent.";
	say "     After taking a moment to try and stretch out the serpentine creature's hole a bit more, you begin to fuck him proper. Even though he was teasing you before, he can't help but succumb once more to his baser desires, lowly moaning as he's railed by his[if scalevalue of Player < 5] much[end if] smaller companion. You seem to have no difficulty causing him to writhe in pleasure against your touch, which in turn makes his grip on you a little less tight and easier for you to work with. His towering, bulbously ribbed dick throbs painfully in the open air, its thick precum oozing down to make a bit of a mess of you.";
	say "     Continuing to pound the dragon, it soon becomes clear you won't be able to hold back for much longer! You figure he's compliant enough in his lustful state to oblige bringing his head closer. Perhaps you should pull out and shame him? Otherwise, you'll keep doing what you're doing.";
	if Player consents:
		say "     You call the dragon's face down to meet you, too lost in a wanton haze to see anything wrong in this, just before you wrench your dick[if tempnum2 is 1]s free from their[else] free from its[end if] tight confines, stroking yourself past the final inch to bliss. Cock[smn] firing off your [Cum Load Size of Player] load, it quickly paints the monster with your thick cum, who can only wallow in being shamed so.";
		say "     As you catch your breath, the serpent quickly becomes aware of what you've done to him, trying to cover up his embarrassment with a scowl.";
		say "     '[one of]This is the treatment I get[or]You find this amusing[or]Had your laugh, then[at random]? [one of]I see you have no respect for your betters[or]How contemptuous[or]Even my generosity has limits[at random]!' His threats seem empty, at least, as once you get off him he simply gets up and flies off, grumbling and still aroused from the ordeal. It takes you a moment to clean yourself off before you return from whence you came.";
	else:
		say "     Putting all your energy into one final thrust, you [if Player is knotted]finally tie[else]hilt[end if] yourself with the dragon before crying out, your cock[smn] exploding with your [Cum Load Size of Player] load, flooding his bowels with your thick cum";
		if Cock Count of Player > 1:
			if (tempnum2 is 1 and Cock Count of Player > 3) or (tempnum2 is 0 and Cock Count of Player > 2):
				say " while [if tempnum2 is 1]their[else]its[end if] exposed brothers stain his coarse undercarriage";
			else if (tempnum2 is 1 and Cock Count of Player > 2) or tempnum2 is 0:
				say " while [if tempnum2 is 1]their[else]its[end if] exposed brothers stain his coarse undercarriage";
		say ". His tight grip seems to squeeze every last drop out of you[if tempnum is 1], your orgasm more than enough to set off his own[end if], until you're completely spent and catching your breath.";
		say "     '[one of]Hmm[or]Well[or]Yes[at random], [one of]I hope you got what you wanted[or]I've satisfied my task[or]It seems you have no more need of me[at random]...' Allowing you to get off him before he takes to the air, flying off into the distance. He'd look more majestic if not for still partially aroused and oozing dick[if Ball Size of Player > 5], to say nothing of his leaking hole[end if]. You take a moment to catch your breath before you gather your things and go back to where you started.";


to say YamatM_2: [Oral Receiving Cock]
	say "     Making your decision, the dragon looms closely over your [if scalevalue of Player < 5]significantly[else]slightly[end if] smaller, [bodytype of Player] form, carefully helping you to expose your assets before him until your [cock size desc of Player], partially aroused dick[smn] lay[smv] before his piercing gaze.";
	say "     '[one of]Hm[or]Yes[or]Very well[at random], [one of]this should be simple[or]such a paltry task[or]I hope this will satisfy you[at random]...' Large, thick tongue escaping his lips as he speaks, the slick, flexible thing has no trouble wrapping around [if Cock Count of Player > 2]all of them at once[else if Cock Count of Player is 2]both of them at once[else]it[end if], practically buried under the writhing, deep red flesh.";
	say "     His constant, unblinking gaze fixated on you, your [if scalevalue of Player < 4]entire body[else]torso[end if] is bathed in his steamy breath, lower half disappearing under his scaled snout as his lips hilt against your crotch[if Cock Length of Player > 19], utterly unphased by your size[end if]. As large as the serpent is, he seems extraordinarily dexterous with his tongue, able to squeeze and writhe against[if Cock Count of Player > 1] and between[end if] your rod[smn] with considerable ease.";
	say "     His skillful work filling the air with the wet sounds of his tongue's efforts, it doesn't need long before you're brought to your very limit! Shall you pull out at the last second and shame him? Otherwise, you'll reward the creature's diligence.";
	if Player consents:
		say "     His grip on you is fairly tight, practically pinning you to a tree, but you manage to order him off just before you cry out, aiming your now free, saliva-slicked dick[smn] at the dragon as you fire off your [Cum Load Size of Player] load, [if Ball Size of Player > 5]utterly soaking[else]painting[end if] his snout with your thick cum. His brief confusion allows you to spend your entire load on him.";
		say "     '[one of]Hmpf[or]Well[at random], [one of]I think you have had your fun[or]I hope you are sufficiently amused[or]I suppose whatever suits your need[at random]...' Thick tongue licking clean his snout, he's clearly trying to hide his embarrassment behind a terse expression. Once the both of you are clean, the serpent flies off into the distance, leaving you to go about your business once more.";
	else:
		say "     Practically pinning you to a tree with his snout, he appears fully prepared for when you finally cry out, methodical tongue squeezing you with every gout of your [Cum Load Size of Player] load[if Ball Size of Player > 5], seemingly unphased by its sheer volume[end if]. He makes every effort to prolong your orgasm as much as possible before finally pulling free.";
		say "     '[one of]Hmm[or]There[or]It is done[at random], [one of]I am sure you are satisfied[or]there is nothing more I can do for you[or]and now I depart[at random].' Thick tongue licking and remaining trace of your bliss clean of you, the serpent eventually turns to fly off into the distance, leaving you to catch your breath and go about your business once more.";

to say YamatM_3: [Oral Receiving Cunt]
	say "     Making your decision, the dragon looms closely over your [if scalevalue of Player < 5]significantly[else]slightly[end if] smaller, [bodytype of Player] form, carefully helping you to reveal your assets before him until your [cunt size desc of Player], partially aroused cunt[sfn] [isfv] exposed before his piercing gaze.";
	say "     '[one of]Hm[or]Yes[or]Very well[at random], [one of]this should be simple[or]such a paltry task[or]I hope this will satisfy you[at random]...' Large, thick tongue escaping his lips as he speaks, the slick, flexible thing has no trouble engulfing your crotch, puss[yfn] completely buried under the writhing, deep red flesh.";
	say "     His constant, unblinking gaze fixated on you, your [if scalevalue of Player < 4]entire body[else]torso[end if] is bathed in his steamy breath, lower half disappearing under his scaled snout as his lips hilt against your crotch. As large as the serpent is, he seems extraordinarily dexterous with his tongue, able to squeeze and worm his way into your hole[sfn] with [if Cunt Depth of Player > 19]considerable[else]relative[end if] ease.";
	if Player is male:
		say "     His skillful work filling the air with the wet sounds of his tongue's efforts, it doesn't need long before you're brought to your very limit! Shall you pull out at the last second and shame him? Otherwise, you'll reward the creature's diligence.";
		if Player consents:
			say "     His grip on you is fairly tight, practically pinning you to a tree, but you manage to order him off just before you cry out, aiming your previously unattended, saliva-slicked dick[smn] at the dragon as you fire off your [Cum Load Size of Player] load, [if Ball Size of Player > 5]utterly soaking[else]painting[end if] his snout with your thick cum. His brief confusion allows you to spend your entire load on him.";
			say "     '[one of]Hmpf[or]Well[at random], [one of]I think you have had your fun[or]I hope you are sufficiently amused[or]I suppose whatever suits your need[at random]...' Thick tongue licking clean his snout, he's clearly trying to hide his embarrassment behind a terse expression. Once the both of you are clean, the serpent flies off into the distance, leaving you to go about your business once more.";
		else:
			say "     Practically pinning you to a tree with his snout, he appears fully prepared for when you finally cry out, methodical tongue writhing against you an extending your bliss for as long as he's able, unattended dick[smn] firing off their [Cum Load Size of Player] load against the open air. He makes every effort to prolong your orgasm as much as possible before finally pulling free.";
			say "     '[one of]Hmm[or]There[or]It is done[at random], [one of]I am sure you are satisfied[or]there is nothing more I can do for you[or]and now I depart[at random].' Thick tongue licking and remaining trace of your bliss clean of you, the serpent eventually turns to fly off into the distance, leaving you to catch your breath and go about your business once more.";
	else:
		say "     Practically pinning you to a tree with his snout, his skillful work filling the air with the wet sounds of his tongue's efforts, he appears fully prepared for when you finally cry out, methodical tongue writhing against you an extending your bliss for as long as he's able. He makes every effort to prolong your orgasm as much as possible before finally pulling free.";
		say "     '[one of]Hmm[or]There[or]It is done[at random], [one of]I am sure you are satisfied[or]there is nothing more I can do for you[or]and now I depart[at random].' Thick tongue licking and remaining trace of your bliss clean of you, the serpent eventually turns to fly off into the distance, leaving you to catch your breath and go about your business once more.";

to say YamatM_4: [Cunt Catching]
	if MYDGM is 0:
		say "     Eyeing the dragon up lewdly, [if scalevalue of Player > 4]it's clear that, even at your size, he probably wouldn't fit. [else]it's apparent that there's no chance he'd ever fit! [end if]He seems to pick up on your desire and grins darkly at you.";
		say "     'I know what it is you seek. If you will allow me, I might surprise you...' Somewhat ominous though that offering might've been you nonetheless oblige it, since you've gone this far already";
	else:
		say "     Eyeing the dragon up lewdly, you consider the prospect of riding his oversized dick. He grins darkly at you once you make your request.";
		say "     '[one of]I can respect one who tests their limits[or]I am sure you will fit, with a bit of work[or]I am going to enjoy this task[at random]...' He seems amused by your offering, though you remain confident in making it";
	say ". Lowering himself to the ground, the serpent exposes his hindquarters for you, allowing you to curiously fondle the expansive stretch of his underside's coarse, yellow scales.";
	say "     Feeling his firm cleft of a genital slit, it's enough to cause him to rumble lowly in wanton approval. Taut lips parting to gradually expose his proud, massive dick, his growing flesh becomes much more supple and yielding to your touch. Should you engage in a bit of foreplay? Otherwise, you'll [IF FIRST]see what the dragon has up his sleeve[else]get straight to the point[end if].";
	if Player consents:
		say "     Slowly feeling up the organ's shaft, it's arrayed with a distinct, almost bulbous ribbing across its length, ending in a pointed, draconic head. As it grows to full attention, [if scalevalue of Player is 3]it's almost as big as you are[else if scalevalue of Player is 4]it's over half your size[else]it's at least a third your size[end if]!";
		say "     Tool throbbing against the open air, you're driven to caress its length with your tongue, bitter flesh radiating an intense, wanton heat. As your affection continues, you're faced with a dribbling cascade of the beast's precum, salty swill slicking the monstrous dick, you can't help but revel in its masculine aroma. The dragon showering you in his hot breath in the wake of your preparations, you eventually pull away, returning your focus back onto the matter at hand.";
		now tempnum is 1;
	else:
		now tempnum is 2;
	if Cunt Depth of Player < 13:
		say "     [if tempnum is 1]Now[else]Once he's[end if] ready for you, [if MYDGM is 0]you're not exactly sure how this is going to work, to which the serpent grins again[else]you're feeling a little anxious over what is about to transpire, the serpent - seemingly aware of this - grinning down at you[end if]. As soon as you'll oblige, he lifts you up over the mountain of flesh, firmly pressing[if Cunt Count of Player > 1] one of[end if] your cunt[sfn] against its oozing tip. You quickly begin to question the wisdom of your decision as your body strains to abide having the dick slowly sink past your supple lips.";
		say "     '[one of]Oh[or]Nng[or]Hmpf[at random], [one of]fear not, I will make it fit[or]such a tight little thing[or]this will take some work[at random]...!' Practically giddy with dark anticipation, the monster continues to gradually impale you with his massive cock, [if scalevalue of Player < 5]almost immediately[else]quickly[end if] reaching your perceived limits[if MYDGM is 0]... And yet, it keeps going[else] before exceeding them[end if], stomach beginning to visibly bulge with the silhouette of the organ, each successive throb sending sharp tremors across the whole of your [bodytype of Player] body.";
		say "     Inch by inch, your body descends across this obscene girth, until after what seems like forever you finally reach your destination, pressed firmly against the monster's scaled crotch, twitching organ blatantly visible before you, sheathed in your own flesh. It's by this point that the dragon lets go of you, showing little desire to continue.";
		say "     '[one of]It is done[or]Very well[at random], [one of]I think you can handle it from here[or]set whatever pace pleases you[or]it is all yours[at random].' He presents this matter-of-factly, but you can tell the beast is secretly mocking you. You're absolutely paralyzed with the intense sensation of being utterly impaled by the dick, shall you command the dragon to do the work for you? You figure he won't be particularly easy on you if you do, though...";
		if Player consents:
			say "     Your words strained by the overwhelming intrusion, your oversized companion eventually picks up on your plea.";
			say "     '[one of]Oh[or]Hmm[or]What[at random]? [one of]I thought you wanted to be in control[or]Seems someone bit off more than they could chew[or]Not so arrogant now, I imagine[at random]!' Teasing you as the dragon does, he does at least oblige your request, talons wrapping around you a second time. Gradually raising you up the rod, you can feel each ridge leave you, air already heavy with the scent of sex, loud with the organ's wet departure.";
			say "     At around the halfway point, he harshly plunges you back down on the briefly exposed length, loudly slapping against the serpent's scaled underbelly. Hit with a single, hard gout of precum sputtering from your strained hole, you immediately and unceremoniously orgasm, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt weakly aching against the dragon's overwhelming intrusion[end if]. The beast can't help but laugh at how you've clearly bit off more than you can chew.";
			say "     '[one of]You should be better than this, little one[or]What a pitiful little whelp[or]Oh, how embarrassing for you[at random]. [one of]I am just getting started[or]Now then[at random]...' Exhausted and spent as you already are, this doesn't stop the dragon from repeating the ritual a second time, this time harder, then again, then faster. It's hard to keep conscious as your pussy is repeatedly abused, over and over again.";
			say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar. Suddenly and harshly pumped with gout after successive gout of his massive load, your belly balloons outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your hole, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
		else:
			say "     Ever the tenacious - or perhaps foolish - you make the [if scalevalue of Player > 3]slow[else]tremendous[end if] effort of pulling yourself up along your oversized companion's overwhelming intrusion.";
			say "     '[one of]Hmm, still have you pride, then[or]Oh, feel you can handle yourself[at random]? [one of]I doubt that will last for very long[or]This will be entertaining[at random]...' Forcing yourself past each crevice is an ordeal in of itself, until your legs finally buckle under the strain and you're sent plummeting down once more, landing against the serpent's scaled underbelly with an audible slap. Hit with a single, hard gout of precum, you immediately and unceremoniously orgasm, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt weakly aching against the dragon's overwhelming intrusion[end if]. The beast can't help but laugh at how you've clearly bit off more than you can chew.";
			say "     '[one of]As I suspected[or]Typical[or]Of course[at random]. [one of]But do not think we are done here just yet[or]I, however, am not finished[or]Now it is my turn[at random]!' Exhausted and spent as you already are, the dragon exploits this opening to take charge of the situation. Talons wrapping around you a second time, he builds a motion of raising you half way before plunging you back down, becoming harder and faster with each descent. It's hard to keep conscious as your pussy is repeatedly abused, over and over again.";
			say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar, suddenly and harshly pumped with gout after successive gout of his massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your hole, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
		say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of seed escaping you in its wake, before gently tossing you back on the ground. Taking a moment to clean himself off of the mess, he grins at your utterly ruined state.";
		say "     '[one of]Good enough[or]Not bad[or]Well done[at random], [one of]you show a lot of promise[or]perhaps we should train again soon[or]it will be easier for you next time[at random].' Reassuring you even as you're completely wrecked, he eventually leaves you to recover from the whole ordeal. You eventually recover enough strength to walk again...[impregchance]";
	else if Cunt Depth of Player < 21:
		say "     [if tempnum is 1]Now[else]Once he's[end if] ready for you, [if MYDGM is 0]you're not exactly sure how this is going to work, to which the serpent grins again[else]you're feeling a little anxious over what is about to transpire, the serpent - seemingly aware of this - grinning down at you[end if]. As soon as you'll oblige, he lifts you up over the mountain of flesh, firmly pressing[if Cunt Count of Player > 1] one of[end if] your cunt[sfn] against its oozing tip. You brace yourself, your body gradually straining to abide his dick as it slowly sinks past your supple lips.";
		say "     '[one of]Such a tight fit[or]I will be sure to make it fit[or]Ha, this will be fun to watch[at random]...' Practically giddy with dark anticipation, the monster continues to slowly impale you with his massive cock, [if scalevalue of Player < 5]quickly[else]gradually[end if] reaching your supposed limits[if MYDGM is 0]... And yet, it keeps going[else] before exceeding them[end if], stomach beginning to visibly bulge with the silhouette of the organ, each successive throb sending powerful tremors across the whole of your [bodytype of Player] body.";
		say "     Inch by inch, your body descends across this obscene girth until, after what seems like forever, you finally reach your destination, pressed firmly against the monster's scaled crotch, twitching organ blatantly visible before you, sheathed in your own flesh. It's by this point that the dragon lets go of you, showing little desire to continue.";
		say "     '[one of]It is done[or]Very well[at random], [one of]I think you can handle it from here[or]set whatever pace pleases you[or]it is all yours[at random].' He presents this matter-of-factly, but you can tell the beast is secretly mocking you. It's extremely hard to move with this intense sensation of being utterly impaled by the dick, shall you command the dragon to do the work for you? You figure he won't be particularly easy on you if you do, though...";
		if Player consents:
			say "     Your words[if scalevalue of Player > 3] slightly[end if] strained by the overwhelming intrusion, your oversized companion eventually picks up on your plea.";
			say "     '[one of]Oh[or]Hmm[or]What[at random]? [one of]I thought you wanted to be in control[or]Seems someone bit off more than they could chew[or]Not so arrogant now, I imagine[at random]!' Teasing you as the dragon does, he does at least oblige your request, talons wrapping around you a second time. Gradually raising you up the rod, you can feel each ridge leave you, air already heavy with the scent of sex, loud with the organ's wet departure.";
			say "     At around the halfway point, he harshly plunges you back down on the briefly exposed length, loudly slapping against the serpent's scaled underbelly, before repeating this ritual. With each successive, hard gout of precum sputtering from your strained hole, it becomes more and more difficult for you to restrain your orgasm. You put up a decent fight for a while, before you finally succumb, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt weakly aching against the dragon's overwhelming intrusion[end if]. The beast chuckles lowly at you.";
			say "     '[one of]Not bad[or]I am impressed[at random], [one of]but not quite good enough[or]I expected you to succumb sooner[or]it is surprising you lasted even that long[at random].' Exhausted and spent as you already are, this doesn't stop the dragon from exploiting you vulnerability to continue hammering you, each plunge faster and harder than the last. It's hard to keep conscious as your pussy is repeatedly abused, over and over again.";
			say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar, suddenly and harshly pumped with gout after successive gout of his massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your hole, the dragon keeping you pinned, lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
			say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of his seed escaping you in its wake, before setting you down back on the ground. Taking a moment to clean himself off of the mess, he grins at your completely ruined state.";
			say "     '[one of]I am impressed[or]Very impressive[or]Well done[at random], [one of]you show a lot of promise[or]perhaps we should train again soon[or]it will be easier for you next time[at random].' Reassuring you even as you were completely wrecked, he eventually leaves you to recover from the whole ordeal. Eventually, you get enough strength to walk again...[impregchance]";
		else:
			say "     Ever the tenacious, you make the [if scalevalue of Player > 3]slow[else]tremendous[end if] endeavor of pulling yourself up along your oversized companion's overwhelming intrusion.";
			say "     '[one of]This should be fun to watch[or]Good luck[or]Take all the time you need[at random]...' Forcing yourself past each crevice is an ordeal in of itself, but you eventually manage to work something of a slow and methodical pace, building a humble motion against his rod. Occasional gouts of precum sputtering from your hole, it's a challenge to restrain your quickly rising bliss. Shall you give in? Otherwise, you'll try to keep your pace.";
			if Player consents:
				say "     Firmly hilting with the dragon one last time, it's more than enough to set you off, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt weakly aching against the dragon's overwhelming intrusion[end if]. The beast chuckles lowly at you. You imagine he's going to try and take charge from here, but your will is strong enough to make a run for it. Shall you pull yourself free?";
				if Player consents:
					say "     Eager to deny the serpent of his own bliss, or perhaps wanting to avoid any further abuse, you manage to push yourself free of his throbbing tool with your legs, a flood of precum leaking from your terribly stretched hole, before stumbling off the dragon and out of his reach. He appears briefly amused before becoming annoyed.";
					say "     '[one of]Tsk[or]Hmpf[or]Ha[at random], [one of]such arrogance[or]you sneaky little whelp[or]I should have known[at random]!' It's a challenge to put some distance between you and him, but he doesn't seem to pursue you, eventually deciding to take to the air once and depart, perhaps to find someone else to sate his lingering lust. It takes you a while to catch your breath, and a bit longer to walk normally...";
				else:
					say "     '[one of]Not so fast[or]Ah[or]Oh[at random], [one of]we are not done here yet[or]I am not fully satisfied[or]you can do better than that[at random]...!' Exhausted and spent as you already are, the dragon exploits this opening to take charge of the situation. Wrapping his talons around you, he builds a motion of raising you half way before plunging you back down, his motion becoming harder and faster with each descent. It's difficult to keep a clear head as your pussy is repeatedly abused, over and over again.";
					say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar, suddenly and harshly pumped with gout after successive gout of his massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your hole, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
					say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of his seed escaping you in its wake, before setting you down back on the ground. Taking a moment to clean himself off of the mess, he grins at your completely ruined state.";
					say "     '[one of]I am impressed[or]Very impressive[or]Well done[at random], [one of]you show a lot of promise[or]perhaps we should train again soon[or]it will be easier for you next time[at random].' Reassuring you even as you're a complete mess, he eventually leaves you to recover from the whole ordeal. Eventually, you recover enough to walk again...[impregchance]";
			else:
				say "     You make an effort to keep things as slow as possible for yourself. The dragon seems a little impatient with you, but your ponderous endeavors do seem to gradually win him over, his dick gushing more and more with each motion. You're soon dizzy and exhausted with this continued endeavor, becoming more difficult with each passing second before you finally can't take it anymore.";
				say "     '[one of]N-nng[or]H-hmpf[or]O-oh[at random], [one of]y-you[or]I w-will not[or]d-do not think[at random]-!' The dragon's taunt interrupted by his bliss, you use the last of your energy to pick up the pace for just a little longer, the sudden spike thankfully enough to set him off along with you. The force of each, powerful gout of his overwhelming load is almost enough to launch you off his throbbing tool, forcing you to weakly push yourself down against it. Lost in the haze of your own bliss, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt weakly aching against the dragon's overwhelming intrusion[end if].";
				say "     Once the flow subsides and you're able to pull yourself free of the serpent's softening organ, you manage to climb off him and take a moment to catch your breath.";
				say "     '[one of]Not bad[or]I am impressed[at random], [one of]few can handle my fury[or]you show promise[or]I look forward to testing your mettle again[at random]...' It takes him a second to recover, casually cleaning himself off before taking to the sky once more. It takes you a little longer to fully recover yourself, and a bit more to stop walking funny...[impregchance]";
	else: [IS LARGE]
		say "     [if tempnum is 1]Now[else]Once he's[end if] ready for you, [if MYDGM is 0]you're not exactly sure how this is going to work, even as well-endowed as you are, to which the serpent grins again[else]you're more than eager to get this ball rolling, much to the serpent's excitement[end if]. As soon as you'll oblige, he lifts you up over the mountain on flesh, slowly lowering[if Player is female] one of[end if] your cunt[sfn] against its oozing tip. You brace yourself as your body gradually abide his dick as it slowly sinks past your supple lips.";
		say "     '[one of]Such a tight fit[or]I will be sure to make it fit[or]Ha, this will be fun to watch[at random]...' Practically giddy with dark anticipation, the monster continues to slowly impale you with his massive cock, [if scalevalue of Player < 5]quickly[else]gradually[end if] reaching your supposed limits[if MYDGM is 0]... And yet, it keeps going[else] before exceeding them[end if], stomach beginning to visibly bulge with the silhouette of the organ, each successive throb sending powerful tremors across the whole of your [bodytype of Player] body.";
		say "     Inch by inch, your body descends across this obscene girth until, after what seems like forever, you finally reach your destination, pressed firmly against the monster's scaled crotch, twitching organ blatantly visible before you, sheathed in your own flesh. It's by this point that the dragon lets go of you, showing little desire to continue.";
		say "     '[one of]It is done[or]Very well[at random], [one of]I think you can handle it from here[or]set whatever pace pleases you[or]it is all yours[at random].' He presents this matter-of-factly, and he seems like he's secretly mocking you, but he's perhaps a little surprised at how easily you managed him thus far. It's a little hard to move with this intense sensation of being utterly impaled by the dick, shall you command the dragon to do the work for you? You figure he won't be particularly easy on you if you do, though!";
		if Player consents:
			say "     '[one of]Oh[or]Hmm[or]What[at random]? [one of]I thought you wanted to be in control[or]Seems someone bit off more than they could chew[or]Not so arrogant now, I imagine[at random]!' Teasing you as the dragon does, he does at least oblige your request, talons wrapping around you a second time. Gradually raising you up the rod, you can feel each ridge leave you, air already heavy with the scent of sex, loud with the organ's wet departure.";
			say "     At around the halfway point, he harshly plunges you back down on the briefly exposed length, loudly slapping against the serpent's scaled underbelly, before repeating this ritual. He seems a little surprised that you can handle him so easily, so he picks up the motion pretty quickly, all the better for you.";
			say "     By this point, your impressive size makes you able to withstand the strain of being constantly railed by this terrible organ, and it's the dragon himself that seems to have a bit of difficulty with keeping pace.";
			say "     '[one of]S-such skill[or]S-Still you persist?[run paragraph on][or]I-I will outlast you[at random]!' He tries to force your bliss before his, but eventually he's succumbs to his overwhelming need, bathed in the hot, panting breath of the serpent until the air is filled with his loud roar.";
			say "     Harshly pumped with gout after successive gout of his massive load, your belly balloons outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your hole, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to finally set you off[if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt firmly squeezing against the dragon's overwhelming intrusion[end if].";
			say "     As his fury subsides, you slowly pull yourself free of the dragon's softening dick, a flood of his seed escaping you in its wake, before climbing off him. Taking a moment to clean himself off of the mess, he seems a little taken aback at how quickly you recover.";
			say "     '[one of]I am impressed[or]Very impressive[or]Exceptional[at random], [one of]you must have a lot of practice[or]I think few could match your skill[or]you are full of surprises[at random]!' Musing over your display, he catches his breath before returning, once more, to the sky, and leaving you to your own devices.[impregchance]";
		else:
			say "     Ever the tenacious, you make the[if scalevalue of Player < 5] slow[end if] endeavor of pulling yourself up along your oversized companion's overwhelming intrusion.";
			say "     '[one of]This should be fun to watch[or]Good luck[or]Take all the time you need[at random]...' Forcing yourself past each crevice sends pleasure down your spine, your tainted revels a little surprising to the dragon as you begin to build a motion. Occasional gouts of precum sputtering from your hole, you easily manage the whole ordeal. Shall you go rough and fast? Otherwise, you'll keep things slow.";
			if Player consents:
				say "     As you begin to kick it into high gear, the creature can't help but writhe with each descent, as though unprepared for how well you'd handle him. Though your strange talent allows you to handle this ordeal without immediately succumbing, it nonetheless tests the very limits of your ability, your body becoming more exhausted with each passing second.";
				say "     Once you can't take it anymore you firmly hilt with him one last time. More than enough to set you off, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else]cunt firmly squeezing against the dragon's overwhelming intrusion[end if].";
				say "     The beast is clearly about to find bliss, himself. You don't think you can deny him of it this late, but you could try to shame him with his own release. Shall you?";
				if Player consents:
					say "     His head not far above you, it's easy to pull him in closer. It's something of a challenge to do - especially given how exhausted you are by this point - but you manage to pull yourself free of the sputtering tool before grinding his own snout against its length. The half second it takes for him to realize what you're doing isn't fast enough to stop it before roars out in orgasm, utterly painting his face with his thick, white cum.";
					say "     Once his bliss dies down, you make a modest retreat before he retaliate, the poor lizard absolutely fuming by this point.";
					say "     '[one of]Ooh[or]Hmpf[or]Agh[at random]! [one of]come back here[or]I will not stand this embarrassment[or]I should have known[at random]!' Thankfully, he doesn't pursue you, and instead flies off into the air, the dripping mess grumbling loudly to himself. It takes a brief while to catch your breath and recover from your little prank, before you head off on your merry way.";
				else:
					say "     '[one of]N-nng[or]H-hmpf[or]O-oh[at random], [one of]y-you[or]I-I cannot[or]S-such[at random]-!' His remark immediately interrupted by a deafening roar, bathing you in his hot breath until, finally, you feel yourself harshly pumped with gout after successive gout of the serpent's massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your hole, weakly keeping yourself in place, lest you fire off like a rocket.";
					say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of his seed escaping you in its wake, before setting you down back on the ground. Taking a moment to clean himself off of the mess, he grins at your completely ruined state.";
					say "     '...[one of]Such fury[or]I am exceedingly impressed[or]You are something else[or]You are full of surprises[at random]!' Complimenting you, it seems like he has to catch his breath for about as long as you do, before finally taking to the air and leaving you to go about your merry way...[impregchance]";
			else:
				say "     You make an effort to keep things as slow as possible for yourself. Your impressive size allows you to be just quick enough to still have an effect on the dragon, thankfully, his dick gushing more and more with each motion. You're able to keep up pace for quite a long time, drawing out your shared road to bliss for a much as you reasonably can.";
				say "     It's clear, after several minutes of this, that the dragon can't hold back for much longer! Shall you pull out and embarrass him? Otherwise, you'll finish proper.";
				if Player consents:
					say "     You call upon the beast's massive head to close in, embracing his scaled lips in a gentle kiss. Eager to oblige your ruse, the additional affection distracts him long enough to pull yourself free of his monolithic rod, needing only to attend it for a sparse few seconds before he finally roars out in ecstasy.";
					say "     Aiming his own dick straight for the dragon, he immediately gets doused by his own, immense load. Grinding against the throbbing organ, you quickly follow suit, [if Player is male]your cock[smn] painting the dragon's face with your [Cum Load Size of Player] load as well[else]your cunt[sfn] gushing and staining the dragon further[end if]. Briefly dazed by bliss, he does eventually wrench himself free of your hold and seems to appear quite upset, somewhere under that blanket of cum...";
					say "     '[one of]Hmpf[or]Aagh[or]Oh[at random], [one of]I will not stand for the indignity[or]absolutely no respect for your betters[or]I have obliged your need far enough[at random].' Getting off him, the embarrassed and exhausted beast eventually concedes to taking to the air, grumbling loudly as he flies off into the distance and starts cleaning himself off. Satisfied with your little prank, you take a brief while to recover and gather your things before heading off on your merry way.";
				else:
					say "     '[one of]N-nng[or]H-hmpf[or]O-oh[at random], [one of]do not think I w-will not outlast[or]impressive b-but[or]I can only a-abide this torment for so long[at random]-!' The dragon makes a considerable effort to hold back his bliss, but it's inevitable that he finally succumbs. Roaring out loudly, the force of each, powerful gout of his overwhelming load is almost enough to launch you off his throbbing tool, forcing you to firmly push yourself down against it. More than enough to set you off as well, [if Player is male]your cock[smn] paint the dragon with your [Cum Load Size of Player] load[else]cunt firmly squeezes against the dragon's overwhelming intrusion[end if].";
					say "     Once the flow subsides and you're able to pull yourself free of the serpent's softening organ, you manage to climb off him and take a moment to catch your breath.";
					say "     '[one of]Astounding[or]Most impressive[at random], [one of]few can handle my fury so well[or]You are full of surprises[or]I look forward to testing your mettle again[at random]...' It takes him a second to recover, casually cleaning himself off before taking to the sky once more. It doesn't take you that long to recover, gathering your things and going off on your merry way.";
	if MYDGM is 0, now MYDGM is 1;

to say YamatM_5: [Anal Catching]
	if MYDGM is 0:
		say "     Eyeing the dragon up lewdly, [if scalevalue of Player > 4]it's clear that, even at your size, he probably wouldn't fit. [else]it's apparent that there's no chance he'd ever fit! [end if]He seems to pick up on your desire and grins darkly at you.";
		say "     'I know what it is you seek. If you will allow me, I might surprise you...' Somewhat ominous though that offering might've been you nonetheless oblige it, since you've gone this far already";
	else:
		say "     Eyeing the dragon up lewdly, you consider the prospect of riding his oversized dick. He grins darkly at you once you make your request.";
		say "     '[one of]I can respect one who tests their limits[or]I am sure you will fit, with a bit of work[or]I am going to enjoy this task[at random]...' He seems amused by your offering, though you remain confident in making it";
	say ". Lowering himself to the ground, the serpent exposes his hindquarters for you, allowing you to curiously fondle the expansive stretch of his underside's coarse, yellow scales.";
	say "     Feeling his firm cleft of a genital slit, it's enough to cause him to rumble lowly in wanton approval. Taut lips parting to gradually expose his proud, massive dick, his growing flesh becomes much more supple and yielding to your touch. Should you engage in a bit of foreplay? Otherwise, you'll [if MYDGM is 0]see what the dragon has up his sleeve[else]get straight to the point[end if].";
	if Player consents:
		say "     Slowly feeling up the organ's shaft, it's arrayed with a distinct, almost bulbous ribbing across its length, ending in a pointed, draconic head. As it grows to full attention, [if scalevalue of Player is 3]it's almost as big as you are[else if scalevalue of Player is 4]it's over half your size[else]it's at least a third your size[end if]!";
		say "     Tool throbbing against the open air, you're driven to caress its length with your tongue, bitter flesh radiating an intense, wanton heat. As your affection continues, you're faced with a dribbling cascade of the beast's precum, salty swill slicking the monstrous dick, you can't help but revel in its masculine aroma. The dragon showering you in his hot breath in the wake of your preparations, you eventually pull away, returning your focus back onto the matter at hand.";
		now tempnum is 1;
	else:
		now tempnum is 0;
	if MYDAM is 0 and player is not twistcapped:
		say "     [if tempnum is 1]Now[else]Once he's[end if] ready for you, you're not exactly sure how this is going to work, to which the serpent grins again. As soon as you'll oblige, he lifts you up over the mountain of flesh, slowly lowering your ass against its oozing tip. You quickly begin to question the wisdom of your decision as your body strains to abide having the dick slowly sink past your anal ring.";
		say "     'Oh, fear not, I will make it fit...!' Practically giddy with dark anticipation, the monster continues to gradually impale you with his massive cock, [if scalevalue of Player < 5]almost immediately[else]quickly[end if] reaching your perceived limits... And yet, it keeps going, stomach beginning to visibly bulge with the silhouette of the organ, each successive throb sending sharp tremors across the whole of your [bodytype of Player] body.";
		say "     Inch by inch, your body descends across this obscene girth, until after what seems like forever you finally reach your destination, pressed firmly against the monster's scaled crotch, twitching organ blatantly visible before you, sheathed in your own flesh. It's by this point that the dragon lets go of you, showing little desire to continue.";
		say "     'It is done. Is this not what you wanted? I expect you would rather do as you wish from here.' He presents this matter-of-factly, but you can tell the beast is secretly mocking you. You're absolutely paralyzed with the intense sensation of being utterly impaled by the dick, shall you command the dragon to do the work for you? You figure he won't be particularly easy on you if you do, though...";
		if Player consents:
			say "     Your words strained by the overwhelming intrusion, your oversized companion eventually picks up on your plea.";
			say "     'Oh? I assumed you could handle it yourself, given how eagerly you threw yourself on me.' Teasing you as the dragon does, he does eventually oblige your request, talons wrapping around you a second time. Gradually raising you up the rod, you can feel each ridge leave you, air already heavy with the scent of sex, loud with the organ's wet departure.";
			say "     At around the halfway point, he harshly plunges you back down on the briefly exposed length, loudly slapping against the serpent's scaled underbelly. Hit with a single, hard gout of precum sputtering from your strained hole, you immediately and unceremoniously orgasm, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else if Player is female]cunt[sfn] gushing and staining the dragon[else]much in spite your lack of proper outlet[end if]. The beast can't help but laugh at how you've clearly bit off more than you can chew.";
			say "     'You should be better than this, little one. I am just getting started...' Exhausted and spent as you already are, this doesn't stop the dragon from repeating the ritual a second time, this time harder, then again, then faster. It's hard to keep conscious as your ass is repeatedly abused, over and over again.";
			say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar. Suddenly and harshly pumped with gout after successive gout of his massive load, your belly balloons outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your ass, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
		else:
			say "     Ever the tenacious - or perhaps foolish - you make the [if scalevalue of Player > 3]slow[else]tremendous[end if] effort of pulling yourself up along your oversized companion's overwhelming intrusion.";
			say "     'Hmm, still have you pride, then? I doubt that will last for very long...' Forcing yourself past each crevice is an ordeal in of itself, until your legs finally buckle under the strain and you're sent plummeting down once more, landing against the serpent's scaled underbelly with an audible slap. Hit with a single, hard gout of precum, you immediately and unceremoniously orgasm, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else if Player is female]cunt[sfn] gushing and staining the dragon[else]much in spite your lack of proper outlet[end if]. The beast can't help but laugh at how you've clearly bit off more than you can chew.";
			say "     'As I suspected. But do not think we are done here just yet.' Exhausted and spent as you already are, the dragon exploits this opening to take charge of the situation. Talons wrapping around you a second time, he builds a motion of raising you half way before plunging you back down, becoming harder and faster with each descent. It's hard to keep conscious as your ass is repeatedly abused, over and over again.";
			say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar, suddenly and harshly pumped with gout after successive gout of his massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your ass, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
		say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of seed escaping you in its wake, before gently tossing you back on the ground. Taking a moment to clean himself off of the mess, he grins at your utterly ruined state.";
		say "     '[one of]Good enough[or]Not bad[or]Well done[at random], [one of]you show a lot of promise[or]perhaps we should train again soon[or]it will be easier for you next time[at random].' Reassuring you even as you're completely wrecked, he eventually leaves you to recover from the whole ordeal. You eventually recover enough strength to walk again...[mimpregchance]";
		now MYDAM is 1;
	else if MYDAM < 3 and player is not twistcapped:
		say "     [if tempnum is 1]Now[else]Once he's[end if] ready for you, you're feeling a little anxious over what is about to transpire, the serpent - seemingly aware of this - grinning down at you. As soon as you'll oblige, he lifts you up over the mountain of flesh, firmly pressing your ass against its oozing tip. You brace yourself, your body gradually straining to abide his dick as it slowly sinks past your anal ring.";
		say "     '[one of]Such a tight fit[or]I will be sure to make it fit[or]Ha, this will be fun to watch[at random]...' Practically giddy with dark anticipation, the monster continues to slowly impale you with his massive cock, [if scalevalue of Player < 5]quickly[else]gradually[end if] reaching your supposed limits before exceeding them, stomach beginning to visibly bulge with the silhouette of the organ, each successive throb sending powerful tremors across the whole of your [bodytype of Player] body.";
		say "     Inch by inch, your body descends across this obscene girth until, after what seems like forever, you finally reach your destination, pressed firmly against the monster's scaled crotch, twitching organ blatantly visible before you, sheathed in your own flesh. It's by this point that the dragon lets go of you, showing little desire to continue.";
		say "     '[one of]It is done[or]Very well[at random], [one of]I think you can handle it from here[or]set whatever pace pleases you[or]it is all yours[at random].' He presents this matter-of-factly, but you can tell the beast is secretly mocking you. It's extremely hard to move with this intense sensation of being utterly impaled by the dick, shall you command the dragon to do the work for you? You figure he won't be particularly easy on you if you do, though...";
		if Player consents:
			say "     Your words[if scalevalue of Player > 3] slightly[end if] strained by the overwhelming intrusion, your oversized companion eventually picks up on your plea.";
			say "     '[one of]Oh[or]Hmm[or]What[at random]? [one of]I thought you wanted to be in control[or]Seems someone bit off more than they could chew[or]Not so arrogant now, I imagine[at random]!' Teasing you as the dragon does, he does at least oblige your request, talons wrapping around you a second time. Gradually raising you up the rod, you can feel each ridge leave you, air already heavy with the scent of sex, loud with the organ's wet departure.";
			say "     At around the halfway point, he harshly plunges you back down on the briefly exposed length, loudly slapping against the serpent's scaled underbelly, before repeating this ritual. With each successive, hard gout of precum sputtering from your strained hole, it becomes more and more difficult for you to restrain your orgasm. You put up a decent fight for a while, before you finally succumb, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else if Player is female]cunt[sfn] gushing and staining the dragon[else]much in spite your lack of proper outlet[end if]. The beast chuckles lowly at you.";
			say "     '[one of]Not bad[or]That is reasonable[at random], [one of]but not quite good enough[or]I expected you to succumb sooner[or]it is surprising you lasted even that long[at random].' Exhausted and spent as you already are, this doesn't stop the dragon from exploiting you vulnerability to continue hammering you, each plunge faster and harder than the last. It's hard to keep conscious as your ass is repeatedly abused, over and over again.";
			say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar, suddenly and harshly pumped with gout after successive gout of his massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your ass, the dragon keeping you pinned, lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
			say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of his seed escaping you in its wake, before setting you down back on the ground. Taking a moment to clean himself off of the mess, he grins at your completely ruined state.";
			say "     '[one of]I am impressed[or]Very impressive[or]Well done[at random], [one of]you show a lot of promise[or]perhaps we should train again soon[or]it will be easier for you next time[at random].' Reassuring you even as you were completely wrecked, he eventually leaves you to recover from the whole ordeal. Eventually, you get enough strength to walk again...[mimpregchance]";
		else:
			say "     Ever the tenacious, you make the [if scalevalue of Player > 3]slow[else]tremendous[end if] endeavor of pulling yourself up along your oversized companion's overwhelming intrusion.";
			say "     '[one of]This should be fun to watch[or]Good luck[or]Take all the time you need[at random]...' Forcing yourself past each crevice is an ordeal in of itself, but you eventually manage to work something of a slow and methodical pace, building a humble motion against his rod. Occasional gouts of precum sputtering from your hole, it's a challenge to restrain your quickly rising bliss. Shall you give in? Otherwise, you'll try to keep your pace.";
			if Player consents:
				say "     Firmly hilting with the dragon one last time, it's more than enough to set you off, [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else if Player is female]cunt[sfn] gushing and staining the dragon[else]much in spite your lack of proper outlet[end if]. The beast chuckles lowly at you. You imagine he's going to try and take charge from here, but your will is strong enough to make a run for it. Shall you pull yourself free?";
				if Player consents:
					say "     Eager to deny the serpent of his own bliss, or perhaps wanting to avoid any further abuse, you manage to push yourself free of his throbbing tool with your legs, a flood of precum leaking from your terribly stretched hole, before stumbling off the dragon and out of his reach. He appears briefly amused before becoming annoyed.";
					say "     '[one of]Tsk[or]Hmpf[or]Ha[at random], [one of]such arrogance[or]you sneaky little whelp[or]I should have known[at random]!' It's a challenge to put some distance between you and him, but he doesn't seem to pursue you, eventually deciding to take to the air once and depart, perhaps to find someone else to sate his lingering lust. It takes you a while to catch your breath, and a bit longer to walk normally...";
				else:
					say "     '[one of]Not so fast[or]Ah[or]Oh[at random], [one of]we are not done here yet[or]I am not fully satisfied[or]you can do better than that[at random]...!' Exhausted and spent as you already are, the dragon exploits this opening to take charge of the situation. Wrapping his talons around you, he builds a motion of raising you half way before plunging you back down, his motion becoming harder and faster with each descent. It's difficult to keep a clear head as your ass is repeatedly abused, over and over again.";
					say "     The pace eventually reaches a fever pitch, bathed in the hot, panting breath of the serpent until, finally, the air is filled with his loud roar, suddenly and harshly pumped with gout after successive gout of his massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your ass, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to cause you to orgasm a second time.";
					say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of his seed escaping you in its wake, before setting you down back on the ground. Taking a moment to clean himself off of the mess, he grins at your completely ruined state.";
					say "     '[one of]I am impressed[or]Very impressive[or]Well done[at random], [one of]you show a lot of promise[or]perhaps we should train again soon[or]it will be easier for you next time[at random].' Reassuring you even as you're a complete mess, he eventually leaves you to recover from the whole ordeal. Eventually, you recover enough to walk again...[mimpregchance]";
			else:
				say "     You make an effort to keep things as slow as possible for yourself. The dragon seems a little impatient with you, but your ponderous endeavors do seem to gradually win him over, his dick gushing more and more with each motion. You're soon dizzy and exhausted with this continued endeavor, becoming more difficult with each passing second before you finally can't take it anymore.";
				say "     '[one of]N-nng[or]H-hmpf[or]O-oh[at random], [one of]y-you[or]I w-will not[or]d-do not think[at random]-!' The dragon's taunt interrupted by his bliss, you use the last of your energy to pick up the pace for just a little longer, the sudden spike thankfully enough to set him off along with you. The force of each, powerful gout of his overwhelming load is almost enough to launch you off his throbbing tool, forcing you to weakly push yourself down against it. Lost in the haze of your own bliss, [if Player is male]your cock[smn] paint the dragon with your [Cum Load Size of Player] load[else if Player is female]your cunt[sfn] gush and stain the dragon further[else]you writhe in an insatiable need[end if].";
				say "     Once the flow subsides and you're able to pull yourself free of the serpent's softening organ, you manage to climb off him and take a moment to catch your breath.";
				say "     '[one of]Not bad[or]I am impressed[at random], [one of]few can handle my fury[or]you show promise[or]I look forward to testing your mettle again[at random]...' It takes him a second to recover, casually cleaning himself off before taking to the sky once more. It takes you a little longer to fully recover yourself, and a bit more to stop walking funny...[mimpregchance]";
		if Player is not twistcapped and "Microwaved" is listed in feats of Player:
			LineBreak;
			say "WARNING: Anal elasticity change detected! Allow?";
			if Player consents:
				now MYDAM is 3;
			else:
				say "     You manage to keep the dragon's influence at bay, for the most part.";
		else:
			now MYDAM is 3;
		if MYDAM is 3 and player is not twistcapped:
			LineBreak;
			say "     [italic type]...After some time you realize that your escapades with the massive dragon has had some permanent effect on you. Your anal ring feels permanently stretchier...[roman type][line break]";
			if Player is not twistcapped, add "Twisted Capacity" to feats of Player;
	else: [Has Twistcap]
		say "     [if tempnum is 1]Now[else]Once he's[end if] ready for you, you're more than eager to get this ball rolling, much to the serpent's surprise. As soon as you'll oblige, he lifts you up over the mountain of flesh, slowly lowering your ass against its oozing tip. You brace yourself as your body gradually abide his dick as it slowly sinks past your anal ring.";
		say "     '[one of]Such a tight fit[or]I will be sure to make it fit[or]Ha, this will be fun to watch[at random]...' Practically giddy with dark anticipation, the monster continues to slowly impale you with his massive cock, [if scalevalue of Player < 5]quickly[else]gradually[end if] reaching your supposed limits before exceeding them, stomach beginning to visibly bulge with the silhouette of the organ, each successive throb sending powerful tremors across the whole of your [bodytype of Player] body.";
		say "     Inch by inch, your body descends across this obscene girth until, after what seems like forever, you finally reach your destination, pressed firmly against the monster's scaled crotch, twitching organ blatantly visible before you, sheathed in your own flesh. It's by this point that the dragon lets go of you, showing little desire to continue.";
		say "     '[one of]I am done[or]Very well[at random], [one of]I think you can handle it from here[or]set whatever pace pleases you[or]it is all yours[at random].' He presents this matter-of-factly, and he seems like he's secretly mocking you, but he's perhaps a little surprised at how easily you managed him thus far. It's a little hard to move with this intense sensation of being utterly impaled by the dick, shall you command the dragon to do the work for you? You figure he won't be particularly easy on you if you do, though!";
		if Player consents:
			say "     '[one of]Oh[or]Hmm[or]What[at random]? [one of]I thought you wanted to be in control[or]Seems someone bit off more than they could chew[or]Not so arrogant now, I imagine[at random]!' Teasing you as the dragon does, he does at least oblige your request, talons wrapping around you a second time. Gradually raising you up the rod, you can feel each ridge leave you, air already heavy with the scent of sex, loud with the organ's wet departure.";
			say "     At around the halfway point, he harshly plunges you back down on the briefly exposed length, loudly slapping against the serpent's scaled underbelly, before repeating this ritual. He seems a little surprised that you can handle him so easily, so he picks up the motion pretty quickly, all the better for you.";
			say "     By this point, your tainted skill makes you strong enough to withstand the strain of being constantly railed by this terrible organ, and it's the dragon himself that seems to have a bit of difficulty with keeping pace.";
			say "     '[one of]S-such skill[or]H-how is this possible?[run paragraph on][or]T-this is impossible[at random]!' He tries to force your bliss before his, but eventually he's succumbs to his overwhelming need, bathed in the hot, panting breath of the serpent until the air is filled with his loud roar.";
			say "     Harshly pumped with gout after successive gout of his massive load, your belly balloons outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your ass, the dragon keeping you pinned lest you fire off like a rocket. The whole ordeal more than enough to finally set you off [if Player is male]cock[smn] painting the dragon with your [Cum Load Size of Player] load[else if Player is female]cunt[sfn] gushing and staining the dragon[else]much in spite your lack of proper outlet[end if].";
			say "     As his fury subsides, you slowly pull yourself free of the dragon's softening dick, a flood of his seed escaping you in its wake, before climbing off him. Taking a moment to clean himself off of the mess, he seems a little taken aback at how quickly you recover.";
			say "     '[one of]I am impressed[or]Very impressive[or]Exceptional[at random], [one of]you must have a lot of practice[or]I think few could match your skill[or]you are full of surprises[at random]!' Musing over your display, he catches his breath before returning, once more, to the sky, and leaving you to your own devices.[mimpregchance]";
		else:
			say "     Ever the tenacious, you make the[if scalevalue of Player < 5] slow[end if] endeavor of pulling yourself up along your oversized companion's overwhelming intrusion.";
			say "     '[one of]This should be fun to watch[or]Good luck[or]Take all the time you need[at random]...' Forcing yourself past each crevice sends pleasure down your spine, your tainted revels a little surprising to the dragon as you begin to build a motion. Occasional gouts of precum sputtering from your hole, you easily manage the whole ordeal. Shall you go rough and fast? Otherwise, you'll keep things slow.";
			if Player consents:
				say "     As you begin to kick it into high gear, the creature can't help but writhe with each descent, as though unprepared for how well you'd handle him. Though your strange talent allows you to handle this ordeal without immediately succumbing, it nonetheless tests the very limits of your ability, your body becoming more exhausted with each passing second.";
				say "     Once you can't take it anymore you firmly hilt with him one last time. More than enough to set you off, [if Player is male]your cock[smn] paint the dragon with your [Cum Load Size of Player] load[else if Player is female]your unattended cunt[sfn] gushing and staining the dragon[else]much in spite your lack of proper outlet[end if].";
				say "     The beast is clearly about to find bliss, himself. You don't think you can deny him of it this late, but you could try to shame him with his own release. Shall you?";
				if Player consents:
					say "     His head not far above you, it's easy to pull him in closer. It's something of a challenge to do - especially given how exhausted you are by this point - but you manage to pull yourself free of the sputtering tool before grinding his own snout against its length. The half second it takes for him to realize what you're doing isn't fast enough to stop it before roars out in orgasm, utterly painting his face with his thick, white cum.";
					say "     Once his bliss dies down, you make a modest retreat before he retaliate, the poor lizard absolutely fuming by this point.";
					say "     '[one of]Ooh[or]Hmpf[or]Agh[at random]! [one of]come back here[or]I will not stand this embarrassment[or]I should have known[at random]!' Thankfully, he doesn't pursue you, and instead flies off into the air, the dripping mess grumbling loudly to himself. It takes a brief while to catch your breath and recover from your little prank, before you head off on your merry way.";
				else:
					say "     '[one of]N-nng[or]H-hmpf[or]O-oh[at random], [one of]y-you[or]I-I cannot[or]S-such[at random]-!' His remark immediately interrupted by a deafening roar, bathing you in his hot breath until, finally, you feel yourself harshly pumped with gout after successive gout of the serpent's massive load, belly ballooning outward[if scalevalue of Player > 4] almost[end if] immediately before it begins to gush out from your ass, weakly keeping yourself in place, lest you fire off like a rocket.";
					say "     As his fury subsides, the dragon slowly pulls you free of his softening dick, a flood of his seed escaping you in its wake, before setting you down back on the ground. Taking a moment to clean himself off of the mess, he grins at your completely ruined state.";
					say "     '...[one of]Such fury[or]I am exceedingly impressed[or]You are something else[or]You are full of surprises[at random]!' Complimenting you, it seems like he has to catch his breath for about as long as you do, before finally taking to the air and leaving you to go about your merry way...[mimpregchance]";
			else:
				say "     You make an effort to keep things as slow as possible for yourself. Your peculiar talent allows you to be just quick enough to still have an effect on the dragon, thankfully, his dick gushing more and more with each motion. You're able to keep up pace for quite a long time, drawing out your shared road to bliss for a much as you reasonably can.";
				say "     It's clear, after several minutes of this, that the dragon can't hold back for much longer! Shall you pull out and embarrass him? Otherwise, you'll finish proper.";
				if Player consents:
					say "     You call upon the beast's massive head to close in, embracing his scaled lips in a gentle kiss. Eager to oblige your ruse, the additional affection distracts him long enough to pull yourself free of his monolithic rod, needing only to attend it for a sparse few seconds before he finally roars out in ecstasy.";
					say "     Aiming his own dick straight for the dragon, he immediately gets doused by his own, immense load. Grinding against the throbbing organ, you quickly follow suit, [if Player is male]your cock[smn] painting the dragon's face with your [Cum Load Size of Player] load as well[else if Player is female]your cunt[sfn] gushing and staining the dragon further[else]causing you writhe with an insatiable need[end if]. Briefly dazed by bliss, he does eventually wrench himself free of your hold and seems to appear quite upset, somewhere under that blanket of cum...";
					say "     '[one of]Hmpf[or]Aagh[or]Oh[at random], [one of]I will not stand for the indignity[or]absolutely no respect for your betters[or]I have obliged your need far enough[at random].' Getting off him, the embarrassed and exhausted beast eventually concedes to taking to the air, grumbling loudly as he flies off into the distance and starts cleaning himself off. Satisfied with your little prank, you take a brief while to recover and gather your things before heading off on your merry way.";
				else:
					say "     '[one of]N-nng[or]H-hmpf[or]O-oh[at random], [one of]do not think I w-will not outlast[or]impressive b-but[or]I can only a-abide this torment for so long[at random]-!' The dragon makes a considerable effort to hold back his bliss, but it's inevitable that he finally succumbs. Roaring out loudly, the force of each, powerful gout of his overwhelming load is almost enough to launch you off his throbbing tool, forcing you to firmly push yourself down against it. More than enough to set you off as well, [if Player is male]your cock[smn] paint the dragon with your [Cum Load Size of Player] load[else if Player is female]your cunt[sfn] gush and stain the dragon further[else]you writhe in an insatiable need[end if].";
					say "     Once the flow subsides and you're able to pull yourself free of the serpent's softening organ, you manage to climb off him and take a moment to catch your breath.";
					say "     '[one of]Astounding[or]Most impressive[at random], [one of]few can handle my fury so well[or]You are full of surprises[or]I look forward to testing your mettle again[at random]...' It takes him a second to recover, casually cleaning himself off before taking to the sky once more. It doesn't take you that long to recover, gathering your things and going off on your merry way.";
	if MYDGM is 0, now MYDGM is 1;

to say YamatM_6: [Oral Giving Cock]
	say "     Eyeing the dragon up lewdly, he seems to know what you want without having to ask, lowering himself to lay on the ground and expose his hindquarters for you.";
	say "     '[one of]Very well[or]As you wish[or]I understand[at random], [one of]you are free to do as you please[or]then it is yours[or]I will humor you[at random]...' Climbing onto the massive beast, he allows you to fondle across his coarse, yellow underside, the serpent's genital slit freely exposed for you to meddle with. Unyielding lips, though very firm, gradually part around your prodding digits, your curiosity eventually rewarded when it slowly expands on its own.";
	say "     Awash in a wave of heat, his deeply red organ slowly rises from its home. Still only partially aroused, the thing is nonetheless absolutely massive[if scalevalue of Player > 4], even for someone of your size[end if]! You imagine it'll take a bit of work to get him off. In any case, since he's at your mercy, shall you obsess over this monolithic rod? Otherwise, you'll be more straightforward.";
	if Player consents:
		say "     Unable to resist the opportunity, you wrap [if scalevalue of Player > 3]your hands[else]yourself[end if] around the draconic cock, [if scalevalue of Player < 3]towering over you[else if scalevalue of Player is 3]barely taller than it[else]your hold encircling it with relative ease[end if]. Still partially soft slab of flesh radiating an intense heat, your tongue caresses along its supple length, gradually tightening within your grip as it fully hardens.";
		say "     '[one of]Oh[or]Hmm[or]Yes[at random]... [one of]revel in all I have[or]savor your reward[or]enjoy what I have to offer[at random].' The dragon rumbles lowly as your tongue caresses along his cockhead, eagerly dribbling a copious amount of his powerful, heady precum. It's not long before your continued affections start making a mess of things, practically sputtering the fluid until it starts to coat you and his dick. It's bulbous ribbing allowing you to maintain your grip even as it becomes increasingly slippery, you can't help but grind your [if Player is male][cock size desc of Player], blatantly aroused cock[smn][else if Player is female]blatantly wet cunt[sfn][else]genderless crotch[end if] against his slick rod.";
		say "     Practically bathing in this stuff, it's very clear your new friend won't be able to hold back much longer. Shall you take the full brunt of his release? Otherwise, you'll try to avoid making any more of a mess of yourself.";
		if Player consents:
			say "     Tightening your grip, you wrap your lips around the monster's dickhead just before he's no longer able to hold back. [if scalevalue of Player < 3]You maybe only last a few seconds before the successive gouts spurt out from between your lips, quickly overwhelming you[else if scalevalue of Player is 3]You put up a fair effort before the successive gouts start to spurt out from between your lips, eventually overwhelming you[else]It's a struggle to keep up with him, your stomach quickly bloating how overwhelming the load is[end if], senses utterly flooded with the virile taste and scent of his thick cum.";
			say "     Completely overtaken by a primal need, it's not long before your [bodytype of Player] body, grinding against the dragon's, is wracked with bliss, [if Player is male]staining him your own, [Cum Load Size of Player] load[else if Player is female]staining him with your own honey[else]writhing in an insatiable need[end if]. Once your fervor dies down, you pull away and survey the carnage, utterly drenched in the monster's heady seed. He seems amused by you.";
			say "     '[one of]Hmm[or]Ha[or]Mhm[at random], [one of]you are certainly a strange one[or]I hope you enjoyed yourself[or]that was certainly entertaining[at random]... [one of]I think you're deserving of one last favor[or]You probably deserve a little extra[at random].' Lowering his snout, you're quickly assaulted by his large and powerful tongue, slick organ embracing your sullied form, licking clean the obscene mess you've made of yourself. When he's done, you're uncertain if being drenched in the monster's saliva is all that better than his jizz.";
		else:
			say "     Just as he's no longer able to hold back, you make an effort to aim the monster's dick to the side. Roaring out loudly, you paint a nearby tree white with his overwhelmingly large load, the air humid with his intense body heat and the scent of his thick cum.";
			say "     Unable to hold yourself back in the wake of this display, you're quickly wracked with your own bliss, [if Player is male]staining him your own, [Cum Load Size of Player] load[else if Player is female]staining him with your own honey[else]writhing in an insatiable need[end if]. Once your fervor dies down, you pull away and observe the end results of your little adventure. Though you managed to avoid getting completely drenched, you're still a mess of the monster's sticky precum. He seems amused by you.";
			say "     '[one of]Hmm[or]Ha[or]Mhm[at random], [one of]you are certainly a strange one[or]I hope you enjoyed yourself[or]that was certainly entertaining[at random]... [one of]I think you're deserving of one last favor[or]You probably deserve a little extra[at random].' Lowering his snout, you're quickly assaulted by his large and powerful tongue, slick organ embracing your sullied form, licking clean the mess you've made of yourself. When he's done, you're fairly certain that being drenched in the monsters saliva isn't much of an improvement.";
		say "     Laughing at you, the dragon finally takes to the air and departs, leaving you to dry off and go back from whence you came.";
	else:
		say "     Carefully, you move to grip the draconic cock, [if scalevalue of Player < 3]towering over you, the thing is simply too large to wrap your hands around it[else if scalevalue of Player is 3]barely taller than it, the thing is simply too large to completely wrap your hands around it[else]your hold encircling it with relative ease[end if]. Still partially soft slap of flesh radiating an intense heat, your make an effort to pump along its supple length, gradually tightening within your grip as it fully hardens.";
		say "     '[one of]Oh[or]Hmm[or]Yes[at random]... [one of]You must be impressed[or]Do not stop[or]I wonder if you can handle all that[at random].' The dragon rumbles lowly as you continue to caress his length, cockhead slowly dribbling a copious amount of his powerful, heady precum. It becomes increasingly difficult to avoid the mess, practically sputtering the fluid by this point, and you concede to at least getting your hands slick. Rising up and down along its bulbous ribbing, now slippery with his fluid, you're able to pick up the pace, much to the creature's approval.";
		say "     You continue this for some while until it's glaringly apparent that the monster is on the brink... The dragon's laying entirely on his back by this point, looping around such that his head is fairly close to you. Perhaps you could shame him with his own release? Otherwise, you'll spare him the embarrassment.";
		if Player consents:
			say "     Too lost in a haze of his imminent bliss, he fails to notice when you aim his dick directly at him just as he finally roars out, almost immediately stifled when he takes a mouthful of his own seed. Completely taken by surprise and still in the throes of ecstasy, he's too stunned to do anything but take the full brunt of his immense load.";
			say "     Once it starts to subside, he quickly pulls his head back into the air, practically fuming over what has transpired and desperately trying to clean his face off while still looking at least somewhat dignified...";
			say "     '[one of]Agh[or]Oh[or]Hmpf[at random], fool! [one of]You think I will tolerate this embarrassment[or]Make a mockery of me, will you[or]You think my patience is endless[at random]? [one of]Pray we never meet again[or]I will not forget this trespass[at random]!' You're able to jump off him before he takes to the air, the dragon grumbling loudly to himself as he bolts off into the distance. You gather your things and clean yourself off before you head back from whence you came, no doubt amused by the ultimate outcome of that exchange.";
		else:
			say "     Just as he's no longer able to hold back, you make an effort to aim the monster's dick to the side. Roaring out loudly, you paint a nearby tree white with his overwhelmingly large load, the air humid with his intense body heat and the scent of his thick cum. Once his fervor dies down, you step off and make an effort to clean yourself before the dragon takes to the air.";
			say "     '[one of]Hmm[or]Yes[or]Mhm[at random], [one of]you are certainly a strange one[or]I hope you enjoyed yourself[or]that was certainly entertaining[at random].' Slowly, the creature flies off into the distance, no doubt satisfied by your endeavors. You gather your things and set off to return from whence you came.";

to yamatdomshift:
	if yamatdom < 2:
		increase yamatdom by 1;
		if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
			say "     [italic type]You feel a thrill of dominance that your strain seems to revel in. It has not quite reached its apex...[roman type].";
	else if yamatdom is 2:
		now yamatdom is 3;
		if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
			say "     [italic type]The thrill of dominance over your tainted kin has reached its apex. Your fate will surely be as their master, should you succumb.[roman type].";


to yamatbiasshift:
	if tempnum is 1: [Male]
		if YDSF is 0:
			now YDSF is 1;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male beast. Surely you fate is tied to him, should you succumb[roman type].";
		else if YDSF is 4:
			now YDSF is 3;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male beast. Your fate remains tied to a female, should you succumb, but continued exposure will cause a shift in your bias[roman type].";
		else if YDSF is 3 or YDSF is 2:
			now YDSF is 1;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the male beast. Surely your fate is tied to him, should you succumb[roman type].";
	else: [Female]
		if YDSF is 0:
			now YDSF is 4;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female beast. Surely you fate is tied to her, should you succumb[roman type].";
		else if YDSF is 1:
			now YDSF is 2;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female beast. Your fate remains tied to a male, should you succumb, but continued exposure will cause a shift in your bias[roman type].";
		else if YDSF is 3 or YDSF is 2:
			now YDSF is 4;
			if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
				say "     [italic type]Your tainted mind echoes with your defeat, reveling in your exposure to the female beast. Surely your fate is tied to her, should you succumb[roman type].";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Yamato Dragon"; [name of the overall species of the infection, used for children, ...]
	add "Yamato Dragon" to infections of ReptileList;
	add "Yamato Dragon" to infections of MythologicalList;
	add "Yamato Dragon" to infections of FemaleList;
	add "Yamato Dragon" to infections of BarbedCockList;
	add "Yamato Dragon" to infections of InternalCockList;
	add "Yamato Dragon" to infections of QuadrupedalList;
	add "Yamato Dragon" to infections of TailList;
	add "Yamato Dragon" to infections of TailweaponList;
	now Name entry is "Yamato Dragon";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The serpentine dragon[or]The Yamato Dragon[or]It[purely at random] [one of]snaps its neck forward like a snake to bite at you.[or]whips its tail around, smacking your body off the ground and through the air before landing roughly onto the ground.[or]slams you with one of its clawed paws.[at random]";
	now defeated entry is "[Yamato Dragon loss]";
	now victory entry is "[Yamato Dragon attack]";
	now desc entry is "[yamato dragon desc]";
	now face entry is "distinctly draconic; long-snouted, a pair of curious whiskers at its tip, with a long pair of antlers and a silver mane at the crown, flowing down to your neck";
	now body entry is "elongated, serpentine with stout, taloned fore and hind limbs and a fin-like, silver mane across its length";
	now skin entry is "smooth, [if ydcolor is 0]red[else if ydcolor is 1]blue[else if ydcolor is 2]green[end if]-scaled with a coarse yellow underside adorning your";
	now tail entry is "You wield a very long, reptilian tail with an impressive, fin-like mane of silver hair at the end.";
	now cock entry is "draconic, deep red, and [one of]strangely[or]bulbously[at random] ribbed";
	now face change entry is "you suddenly feel overwhelmed by a sudden change, face elongating into a proud, draconic snout, a pair of fairly lengthy whiskers sprouting from its tip. Two long antlers and a mane of silver hair growing from the back of your head";
	now body change entry is "you soon double over, frame shifting into something now much more elongated, arms and legs shifting in shape to something much more stout and less equipped to walk around. As you recover, you see that you're quite large, too, though you're likely only a little over two-thirds the size from which this strain originates, and you can't fly - only able to hover with limited efficacy. A silver mane now runs across the entire length of your serpentine torso";
	now skin change entry is "[ydskinchange]";
	now ass change entry is "a lengthy tail sprouts forth from it. It takes some time to adjust to it, limb adorned in a silver, fin-like mane, culminating in a flattened tuft at the tip";
	now cock change entry is "you're made curious by an odd tingling feeling. Taking a look, you're shocked to find that your junk has disappeared! After some observation, you find that your dick is now housed in some manner of draconic vent, the head-tapered, deep reddish thing exposed before you with some coaxing, its shaft a peculiar, bulbous ribbing. After coming to terms with this change, you go back to making your next move";
	now str entry is 26;
	now dex entry is 18;
	now sta entry is 24;
	now per entry is 16;
	now int entry is 18;
	now cha entry is 10;
	now sex entry is "nochange";
	now HP entry is 100;
	now lev entry is 10;
	now wdam entry is 24;
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
	now libido entry is 25;
	now loot entry is "dragon scale";
	now lootchance entry is 40;
	now scale entry is 5;
	now body descriptor entry is "[one of]slender[or]serpentine[or]flexible[or]elongated[at random]";
	now type entry is "[one of]draconic[or]serpentine[at random]";
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


Section 3 - Drop Objects

Table of Game Objects (continued)
name	desc	weight	object
"dragon scale"	"A yellow, slightly shimmering dragon scale."	1	dragon scale
"dragon hair"	"Some strands of golden hair that shimmer slightly in the light."	1	dragon hair

dragon scale is a grab object. It is a part of the player. dragon scale is infectious. The strain of dragon scale is "Yamato Dragon".
the scent of dragon scale is "The yellow scale smells strange and otherworldly.".
The usedesc of dragon scale is "[usedragonscale]";

to say usedragonscale:		[only alters sizes, not gender]
	choose row MonsterID from Table of Random Critters;
	setmonster "Yamato Dragon";
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
	say "     Following the strange urge you have, press the large scale to your chest. As the spot starts to tingle, the scale slowly sinks into you and those tingles spread out across your body.";

dragon hair is a grab object. It is a part of the player. dragon hair is infectious. The strain of dragon hair is "Yamato Dragoness".
the scent of dragon hair is "The golden hair smells of exotic, otherworldly scents.".
The usedesc of dragon hair is "[usedragonhair]";

to say usedragonhair:
	choose row MonsterID from Table of Random Critters;
	setmonster "Yamato Dragoness"; [only alters sizes, not gender]
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
	say "     Following the strange urge you have, brush the hairs to your face, enjoying the feel of them against your cheek. As you continue brushing, the hairs grow gradually shorter, sinking into your face and hand before disappearing entirely.";

Section 4 - Vore Bound State

to YamatMvore:
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
				if struggleatt > 0, decrease struggleatt by 1;
				decrease humanity of Player by 15 + (psycheadjust * 5);
		increase boundcounter by 1;
		yamatbowelmovement;
		if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
			increase hunger of Player by 1;
			increase thirst of Player by 2;
		else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
			increase thirst of Player by 1;
		now enduring is false;
		say "     Bathed in saliva and utter darkness, you're enveloped by the dragon's churning, crimson stomach. [one of]You feel yourself slowly being drained by these twisted confines[or]It churns and groans against its writhing occupant[or]You find it extremely hard to figure up from down in this tainted prison[at random]. You're presently in the monster's [bold type][if boundsegment is 0]first[else if boundsegment is 1]second[else if boundsegment is 2]third[else]fourth[end if][roman type] stomach. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
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
			now voreloss is true;
			now tempnum is 1;
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
					say "     You struggle to escape these twisted confines, writhing and fighting against the flesh that holds you. The dragon lowly [one of]growls[or]groans[at random] as his body churns in ill-content towards its disruptive occupant.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
				else:
					if boundsegment is 0:
						say "     Unable to keep you down any longer, you feel the dragon loudly begin to hack as you're squeezed out from the stomach's confines and back up through his throat. Quickly flung from his maw, the creature grabs you with one of his talon. Gripping you with disdain, he leers at you before tossing you back down to the earth.";
						say "     '[one of]Hmpf[or]Ugh[or]Disgusting[at random], [one of]perhaps I shall find a prey that respects its meal[or]you were hardly worth my time anyways[or]you just can't help but be an annoyance, I see now[at random]...' Sneering at you, he floats off into the distance, leaving you to recover. Exhausted and saliva soaked, it takes you a while to find your things and return from whence you came.";
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
						say "     Unable to hold you in any longer, your feel the dragon's body loudly groan, stomach squeezing around you and forcing you downwards one final time. Body twisted and contorted as you're forced through the monster's labyrinthine bowels, its grip on you extremely tight[if scalevalue of Player < 4] even in spite of your small size[end if], you eventually feel yourself forced past his tight ring, exposing yourself to the cool, dry air once more.";
						say "     Grabbing you before you can fall to the earth, the beast's grip is nonetheless fairly limp, glaring at you with mild contempt before tossing you to earth once more.";
						say "     '[one of]Hmpf[or]Ugh[or]Disgusting[at random], [one of]perhaps I shall find a prey that respects its meal[or]I suppose I got all I can from this writhing little worm[or]you just can't help but be an annoyance, I see now[at random]...' Sneering at you, he floats off into the distance, leaving you to recover. Exhausted and saliva soaked, it takes you a while to find your things and return from whence you came.";
						cleanboundmemory;
						now Trixieexit is 1;
						follow the turnpass rule;
				wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     You're compelled to submit to you tainted prison, [one of]your captor rumbly lowly in approval of his compliant meal[or]the dragon idly playing with writhing meal as you feel his talon's caress against you from the outside[or]your captor lounging happily as he drains his meal[at random].";
					if boundsegment is not 3:
						increase boundmod by 1;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					say "     You're driven to tolerate these extreme circumstances, [one of]your captor floating about idly as he slowly drains his meal[or]the dragon idly prodding at you as you writhe within your confines[or]the monster rumbly lowly in approval of his meal[at random].";
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
					say "     You struggle to retain clarity from within these slick, writhing confines, resisting the dragon's power over you. [one of]He seems to audibly mock you as you resist[or]Your captor doesn't seem to care all too much about your struggles[or]You feel yourself tested as the monster teases you by prodding you with a talon over his firm scales[at random].";
				increase lustatt by 4 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";

to yamatmstomachascent:
	say "     Driven by your disruptive behavior, your prison constricts even more tightly around you as the monster's bowels churn, forced upward, you find yourself pushed into the confines yet another of their stomachs. It's hard to keep track in this dizzying mess, but you imagine you're in the [bold type][if boundsegment is 0]first[else if boundsegment is 1]second[else if boundsegment is 2]third[else]fourth[end if][roman type] one now.";

[to yamatmstomachdescent:
	say "     Your prison constricts even more tightly around you as the dragon's stomach churns, forced downward, you find yourself pushed into the confines yet another of his stomachs. It's hard to keep track in this dizzying mess, but you imagine you're in the [bold type][if boundsegment is 0]first[else if boundsegment is 1]second[else if boundsegment is 2]third[else]fourth[end if][roman type] one now.";] [self note: Nothing to worry about here]

to say yamatstrugglebar:
	if boundsegment is 0:
		say "< [bracket]-[if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket] [bold type][if boundmod > 1]}} [else if boundmod > 0]} [end if][roman type][italic type][bracket]--[close bracket] [bracket]---[close bracket] [bracket]---[close bracket][roman type]";
	else if boundsegment is 1:
		say "[italic type][bracket]--[close bracket][roman type] < [bracket]-[if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket] [bold type][if boundmod > 1]}} [else if boundmod > 0]} [end if][roman type][italic type][bracket]---[close bracket] [bracket]---[close bracket][roman type]";
	else if boundsegment is 2:
		say "[italic type][bracket]--[close bracket] [bracket]--[close bracket][roman type] < [bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket] [bold type][if boundmod > 2]}}} [else if boundmod > 1]}} [else if boundmod > 0]} [end if][roman type][italic type][bracket]---[close bracket][roman type]";
	else if boundsegment is 3:
		say "[italic type][bracket]--[close bracket] [bracket]--[close bracket] [bracket]---[close bracket][roman type] [bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket] >";
	else:
		say "ERROR";

to yamatbowelmovement:
	if boundsegment is not 3:
		increase boundmod by 1;
		if (boundsegment is not 2 and boundmod > 2) or (boundsegment is 2 and boundmod > 3):
			now boundmod is 0;
			increase boundsegment by 1;
			say "     Your prison constricts even more tightly around you as the monster's bowels churn, forced downward, you find yourself pushed into the confines of yet another stomach. It's hard to keep track in this dizzying mess, but you imagine you're in the [bold type][if boundsegment is 0]first[else if boundsegment is 1]second[else if boundsegment is 2]third[else]fourth[end if][roman type] one now";
			if boundsegment is 3:
				say ". At this point you're in so deep that the only way out is through the back door...";
			else:
				say ".";
			LineBreak;


Section 5 - Endings

when play ends:
	if BodyName of Player is "Yamato Dragon" or BodyName of Player is "Yamato Dragoness":
		if humanity of Player < 10:
			if voreloss is true:
				say "     [if scalevalue of Player < 4]B[else]Substantive b[end if]ulg that once was you, having sunk to the lowermost pits of the monster's labyrinthine organs, gradually begins to recede until nothing remains. The dragon[if tempnum is 0]ess[end if][']s, no doubt, bottomless hunger [if scalevalue of Player > 3]only partially[else]barely[end if] sated by its pitiful victim, [if tempnum is 1]he[else]she[end if] gradually floats off in search of new prey to fall under [if tempnum is 1]his[else]her[end if] raw might, nobody the wiser to your ultimate fate...";
			else:
				if YDSF is 0:
					if Player is female and (Cock Count of Player is 0 or (player is male and a random chance of 1 in 2 succeeds)):
						if MaleList is banned or MaleList is warded:
							now YDSF is 4;
						else:
							now YDSF is 1;
					else:
						if FemaleList is banned or FemaleList is warded:
							now YDSF is 1;
						else:
							now YDSF is 4;
				if yamatdom is 3:
					say "     Finally overtaken by your infection, an overwhelming sense of power fills you're very being and compels you to seek out your kin.";
					say "     Once you encounter one, you engage in an intense battle until ";
					if YDSF is 1 or YDSF is 2:
						say "he finally concedes. It doesn't take much work after that until the dragon serves your every whim without question";
						if Player is submissive or player is kinky:
							say ", no matter how strange it might be";
						say ". Over time, more join his ranks, the word of your strength spreading far and wide, until subjects start to come with the deliberate desire to serve you.";
					else:
						say "she finally concedes. It doesn't take much work after that until the dragoness serves your every whim without question";
						if Player is submissive or player is kinky:
							say ", no matter how strange it might be";
						say ". Over time, more join her ranks, the word of your strength spreading far and wide, until subjects start to come with the deliberate desire to serve you.";
					say "     As you settle into your new position, you find yourself growing in size until you're a match for any of your kin. Your every need attended to, you slowly forget everything about your past, until all that remains is your insatiable lust and unmatched power...";
				else:
					say "     Finally overtaken by your infection, you grow drunk with an intoxicating need to serve your betters, compelling you to seek out your kin.";
					say "     Once you encounter one you put up a token fight, if only so the dragon";
					if YDSF is 1 or YDSF is 2:
						say " is allowed the opportunity to display his absolute power over you before you submit yourself. He ultimately seems satisfied with your offering, and it's not long before you're just another plaything in his harem";
						if Player is submissive:
							say ". So eager you are to serve, that you quickly end up a plaything for the other consorts, until you're eventually regarded as the sluttiest and most pitiful in his harem";
						say ".";
						say "     Your memory becomes a blur of constant servitude under your master, satisfying his every, tainted need";
						if Player is kinky:
							say ", no matter how strange";
						say ". Ultimately, you seem more than happy with your eternal fate as his plaything...";
					else:
						say "ess is allowed the opportunity to display her absolute power over you before your submit yourself. She ultimately seems satisfied with your offering, and it's not long before you're just another plaything in her harem";
						if Player is submissive:
							say ". So eager you are to serve, that you quickly end up a plaything for the other consorts, until you're eventually regarded as the sluttiest and most pitiful in her harem";
						say ".";
						say "     Your memory becomes a blur of constant servitude under your mistress, satisfying her every, tainted need";
						if Player is kinky:
							say ", no matter how strange";
						say ". Ultimately, you seem more than happy with your eternal fate as her plaything...";
		else:
			say "     After being processed by the military, you find yourself returning to the normal world - as normal as it can be after all that's happened. Your large, elongated body makes finding suitable living space something of a challenge, but you eventually manage.";
			if Player is pure:
				say "     Your pure form makes you an incredibly high-value asset for lunar new year celebrations, bidders often paying top dollar for your attendance in their revelry. It's not even a particularly hard job, and it allows you the opportunity to travel abroad and enjoy the company of many a new people, either in public or in private.";
			else:
				say "     Navigating the streets is still something of an awkward ordeal, regardless. When you eventually figure out how to fly, you're quickly spared this embarrassment. You soon find yourself using this to your advantage, getting paid to ferry would-be passengers who want to avoid the traffic.";
			say "     In your off time, you run something of a modest delivery service";
			if "Horny Bastard" is listed in feats of Player:
				say ". During the night, you sate your intense lust by offering rides of a different sort";
			say ". Overall, you're pretty well off...";

Yamato Dragon ends here.
