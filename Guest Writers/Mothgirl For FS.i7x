Version 9 of Mothgirl For FS by Guest Writers begins here.
[Version 9.1 - No sex counter added]
[- Originally Authored By: Soren -]

"Add a Moth to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses


mothgirlnosex is a number that varies.
Mothdefeat is a number that varies.

to say Moth attack:
	now mothgirlnosex is 0;
	if Mothdefeat is 0: [ first time losing to a moth ]
		say "     The Mothgirl, grinning at its newfound victim, rubs her hands together, conjuring a mote of light blue dust into her palms before she blows it over your exposed face. Inhaling the dust you feel tipsy and aroused, the girl exploiting your vulnerable state to grind her breasts against your [if breasts of player > 0]own [breast size desc of player] curvature[else][bodydesc of player] torso[end if] before sharing a light kiss on your lips, immediately departing thereafter. She leaves you only with the soft whisper of 'enjoy', and as you regain your senses it becomes clear that her ill-meaning affection has had some influence upon you, clouding your mind and leaving you more aroused.";
		increase libido of player by 5;
		decrease humanity of player by 3;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;
		now Mothdefeat is 1;
	else:
		if a random chance of 2 in 3 succeeds and cunts of player > 0:	[Prefer male action]
			say "     Tenderly forcing you to the ground, she climbs on top of you before relinquishing you of any attire you might have[if breasts of player > 0], teasing your nipples with gentle fingers until they are made erect by her influence[else]. Gentle fingers running along your exposed, [bodydesc of player] form, she would offer this teasing affection before commencing[end if]. Now at her mercy she slowly flaps her wings to send sparkling yellow dust raining down upon your vulnerable form. You can't help but find yourself aroused by the dust's perverse influence, feeling your cunt moisten with anticipation for what is to follow.";
			say "     In front of you she conjures a small sphere, no larger than a pea, before she consumes it. Whilst she waits for the effects to set in, she offers your needy portal some more direct affection, gently stroking and kissing the entrance. With strikingly perverse exuberance, she shows off her newly formed cock to you before it's immediately buried in folds of your flesh, the ferocity of which contradicts her otherwise deceptively demure demeanour[if scalevalue of player > 3]. You can clearly see how amused she is, that such a large creature like yourself is now victim to the wiles of one so diminutive as she[else]. Thrilled by her wanton fervor the mothgirl pulls your head against her bosom, her seemingly average breasts certainly not in any short supply of nectar as she forcibly breastfeeds you[end if]. She continues to ride you, her pace rapidly ascending before you feel your womb flooded with the creature's sexual fluids, triggering your own climax. Overwhelmed by your powerful release, you end up falling out of consciousness. Upon your sense's return the mothgirl is nowhere to be seen, and you gather your things before setting back out once again.[impregchance]";
		else if cocks of player > 0 and a random chance of 2 in 3 succeeds:
			say "     She quickly bears down on you, biting your neck, the effect of which paralyzes your entire body. Catching you on your way down she gently lays you on your back, pulling any articles of attire you might have on you and positioning herself over your vulnerable form. Gently, her wings lightly douse you with gout of yellow dust, the effects of which becoming immediately apparent as your cock goes rock hard before her. She is initially giddy with her new toy, though tempering her demeanour as she coos you, urging you to merely relax and enjoy--not that you have any say in the matter.";
			say "     [if cock length of player > 20]At first she ponders how such a [cock size desc of player] rod of flesh is going to fit, exactly, but it's clear that she isn't lacking in tenacity as she ultimately positions herself over the organ and makes for slow descent on it. She manages surprisingly well, her infection accommodating the circumstances, and you can clearly see your meat protrude from the confines of her body[else if cock length of player > 10]. She skips ceremony and bears down on your [cock size desc of player] rod, managing your considerable girth with surprising ease[else]. She skips ceremony and bears her cunt down on your rod, quickly engulfing its length in the folds of her soft flesh[end if]. Soon, she starts slowly rocking against you with slow deliberation, but that quickly accelerates to a fever pitch. However, you soon realize that the creature's paralyzing poison also has the effect of denying your orgasm, forcing you into an overly prolonged state of heightened bliss as this mothgirl hammers herself against you, observing her orgasm again and again while you feel like you could pass out at any moment. She occasionally teases you for your inability to find release, amused by her victim's perverted sufferings.";
			say "     Eventually, the sensation is too much for you--that or it's been so long that the effects of the poison are starting to wear off--and you finally climax[if cock width of player > 20]. No doubt she's unprepared for the sizeable measure of jizz you unload into her womb, visibly bloating with you with your seed until she can carry no more at it starts spurting you from her--admittedly willingly--beleaguered hole[else]. You are lost in the throes of your orgasm, unloading heartily into the mothgirl's greedy cunt, to which she's taken a bit by surprise[end if]. Overwhelmed by such forcibly belated release, you end up falling out of consciousness. Upon your sense's return the mothgirl is nowhere to be seen, and you gather your things before setting back out once again.";
		else if "More Anal" is listed in feats of player and a random chance of 1 in 3 succeeds:
			say "     Tenderly forcing you to the ground, she climbs on top of you before relinquishing you of any attire you might have[if breasts of player > 0], teasing your nipples with gentle fingers until they are made erect by her influence[else]. Gentle fingers running along your exposed, [bodydesc of player] form, she would offer this teasing affection before commencing[end if]. Now at her mercy, she slowly flaps her wings to send sparkling yellow dust raining down upon your vulnerable form. You can't help but find yourself aroused by the dust's perverse influence[if cocks of player > 0]. You feel your [cock size desc of player] cock grow hard, pleading for the mothgirl's attention, though she looks like she intends to have fun with you another way[else if cunts of player > 0], feeling your cunt moisten with anticipation for her affections to follow[else], though you are frustrated by the lack of a sexual outlet to satisfy your sudden urges[end if].";
			say "     Before you she conjures a small sphere, no larger than a pea, before she consumes it. Whilst she waits for the effects to set in, she moves around to offer you some more irreverent affections. Unable to see from your current position you feel, at first, a saliva-slicked finger assault fleshy ring, no doubt to test your tight hole before the digit is replaced with her tongue. You writhe weakly in protest, but you can only hear her amused giggling in response.";
			say "     Satisfied, her tongue retreats, and she returns proper to illustrate her newly formed cock. She only lets you ponder briefly before she thrusts it into your slickened hole, the ferocity of which contradicts her otherwise deceptively demure demeanour[if scalevalue of player > 3]. You can clearly see how amused she is, that such a large creature like yourself is now victim to the wiles of one so diminutive as she[else]. Thrilled by her wanton fervor the mothgirl pulls your head against her bosom, her seemingly average breasts certainly not in any short supply of nectar as she forcibly breastfeeds you[end if].";
			say "     She continues to ride you, her pace rapidly ascending before you feel your bowels flooded with the creature's sexual fluids, [if cocks of player > 0]your own cock exploding, wasting its load over your torso[else if cunts of player > 0]triggering your own climax[end if]. Overwhelmed by the rough mating, you end up falling out of consciousness. Upon your sense's return the mothgirl is nowhere to be seen, and you gather your things before setting back out once again.[mimpregchance]";
		else:
			say "     Aggressively, her wings flap to throw a gust of her dust down on your vulnerable form, and you find your weaker will overcome by the need to serve this mistress. Regarding you almost as a pet she commands your approach, to which you find yourself unable to refuse. She leans against a surface, spreading her legs before you. It's clear, as she forces you to your knees and gestures at her exposed snatch, what service she'll extract from you. By now the effects of her influence have set in and you lurch your [bodytype of player] face between her supple legs without hesitation, though at least showing some measure of restraint as your tongue's affection starts off fairly gentle.";
			say "     Only teasing her at this point, she retains some of her more demure demeanour when she politely asks you to pick up your pace. You do as she asks, the taste of her sexual fluids compelling your compliance further, and soon that prior demeanour dissolves in the heat of her sexual fervor, demanding that you go harder and harder. Tongue buried in the folds of her cunt she cries out in orgasm, spraying your face with her sweet nectar. Satisfied, she pushes you from her, her parting orders to lick yourself clean before she departs, an order you find yourself--in your presently inebriated state--more than happy to carry out. When you eventually regain your senses, you gather your things before setting back out once again.";
		increase libido of player by 8;
		if libido of player > 100, now libido of player is 100;
		decrease humanity of player by 3;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 1;


to say mothgirl defeat:
	if mothgirlnosex > 2:
		say "     Defeated, the mothgirl stumbles onto the sandy ground with a soft moan. Her wings hang low and she looks up at you defiantly despite having lost. As you have with her kind before, you decide to let her go. Slowly, she scrambles to her feet and flies off, no doubt to recover from her loss.";
	else:
		say "     Defeated, the mothgirl stumbles onto the sandy ground with a soft moan. Her wings hang low and she looks up at you defiantly despite having lost. Shall you enact your punishment?";
		if the player consents:
			now mothgirlnosex is 0;
			if cocks of player > 0 and a random chance of 3 in 5 succeeds:
				say "     You push the mothgirl onto all fours, compliant to your will as you move behind her[if cock length of player > 20]. She looks back at you, not exactly sure how you intend to fit that thing in a little lady such as herself, but matters of practicality haven't stopped you yet, and you thrust heartily into her vulnerable cunt. It takes a little work, but eventually the influence of your infection forces the hole to accommodate your oversized organ, her belly visibly bulging with it once it's prominently engulfed within these considerably beleaguered confines[else if cock length of player > 8]. You briefly taunt her as you rub your gradually hardening cock between her legs, before thrusting the [cock size desc of player] meat into her hole. The diminutive portal is a little reluctant to accommodate your sizeable girth, but it only requires a bit of effort for it to eventually comply[else]. You briefly tease her as you rub your hardening cock between her legs, your victim moaning as you only briefly deny her. Promptly, you thrust your rod into her eager hole, your initial efforts slow and drawn out to better illicit the creature's inevitable arousal[end if].";
				say "     You waste no time as you begin to ride the mothgirl with an ever increasing pace, her initial protests drowned out by her own lusts as things progress, and in no time you're hit with the throes of your own orgasm[if cock width of player > 20]. The poor girl is nearly rocketed off your member from the sheer scale of your load, but you know well enough to hold her in place, her belly visibly inflated with your cum until the rest is force to spurt from her stuffed cunt[else]. She moans loudly as she feels your [bodytype of player] load flood her womb, writhing in her own orgasm against your throbbing cock[end if][if cock width of player > 20]. Eventually, you pull your [cock size desc of player] rod from her hole, a flood of your copious ejaculate spewing from the abused hole. She's completely knocked out by this point, and you decide to leave her as is[else]. Eventually, you pull your [cock size desc of player] rod from her hole, the fluttering about in dismay as she dizzly falls over. It'll be awhile before she gathers her proper senses, and you decide to leave her in this state[end if].";
			else if ( cocks of player > 0 or cunts of player > 0 ) and a random chance of 3 in 5 succeeds:
				if cocks of player > 0:
					say "     On her knees, you pull the mothgirl to your crotch, forcing her to suck on your [cock size desc of player] cock, [if cock length of player > 9]the thing's much too big for her delicate mouth to contain, but she makes every effort she can to please you regardless[else]gradually engulfing it within the confines of her delicate mouth[end if]. Eventually, her involuntary affections bring you to blissful release, [if cock width of player > 20]the subsequent torrent of cum more than she can handle, and subsequently her subtly [']dusty['] aura is doused by your excessive fluids[else]the creature struggling only briefly to swallow your cum as it explodes from your rod[end if]. Sated, you pull yourself free of the creature, [if cock width of player > 20]who has succumbed to an obsession over consuming your excessive release[else]no doubt dazed by the whole affair[end if]. You decide to leave her as-is and go on your way.";
				else:
					say "     On her knees, you grip the mothgirl by the tuft of fur on her chest and pull her to your crotch, pressing her face against your [cunt size desc of player] cunt. Inevitably obliging, you begin to feel her tongue caress your supple surface. You coax her to make a greater effort in pleasuring you, and her pace hastens, soon feeling that slick organ explore your depths.";
					say "     Eventually, her involuntary affections are rewarded with your blissful release, dousing the beleaguered creature with your sexual fluids. Obsessed with her own lust, the mothgirl licks up these fluids even from her own face after you inevitably part from her. You decide to leave her to her own devices and depart.";
			else:
				say "     At this point the mothgirl is bent over, giving you a clear view of her exposed behind, which inspires you to offer her a more [']literal['] punishment. You harshly swat her supple ass before making a more deliberate rhythm of spanking the diminutive creature. Her pleads for reprieve transform into moans as the pain gradually trends into pleasure, so much so that your efforts are enough to cause her to orgasm into the open air. Satisfied with what you have wrought, you let her go. No doubt immensely embarrassed, she hobbles away, rubbing her red ass as she departs.";
		else:
			increase mothgirlnosex by 1;
			say "     You decide to let her go. Slowly, she scrambles to her feet and flies off, no doubt to recover from her loss.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mothgirl"; [Name of your new Monster]
	now attack entry is "[one of]She hits you on the cheek with her hand[or]A kick lands upside your face as the moth girl turns in midair[or]The mothgirl punches you in the gut with her fist[or]The mothgirl rams her butt into your face[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "The mothgirl slumps onto the ground with a sigh and tries to protect herself with her fragile wings."; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Moth attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 4]     In your travels, you are suddenly accosted by a diminutive girl adorned in only a pair of moth wings and similarly moth-like fur around her neck. [one of]Blue[or]Grey[or]Hazel[or]Green[or]Lavender[or]Brown[at random] eyes agleam like jewels, the grey-skinned creature advances upon you, intent on attacking you, though you imagine she'd be a bit more intimidating if she wasn't stark naked.";[ Description of the creature when you encounter it.]
	now face entry is "feminine visage looking with bright eyes";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "has been reduced down to about 5 feet tall and has a light, curvy form. You have moth that, wings with each flap, leave a trail of small dust behind you";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "glimmering grey";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]gray[or]ashen[at random]";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face begins to pull in and feel softer"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your back feels odd as two moth wings come out from behind you. Your body also feels like it is shrinking and exhibiting more of a female looking body"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "your skin feels warm as it changes to a greyish tone. You feel majestic as your skin seems to reflect the light slightly"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "your rump changes from what it was to a softer and a better feeling ass where you can sit on anything and not feel discomfort"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "your maleness throbs and pulses as it turns an ashen, gray colour"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 11;
	now dex entry is 14;
	now sta entry is 13;
	now per entry is 16;
	now int entry is 13;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 25;
	now lev entry is 2; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 15; [ Length infection will make cock grow to if cocks]
	now cock width entry is 9; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 10; [ Width of female sex infection will try and give you ]
	now libido entry is 50; [ Amount player Libido will go up if defeated ]
	now loot entry is "cock pill";
	now lootchance entry is 30; [ Chance of loot dropping 0-100 ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]winged[or]light[or]slender[or]feminine[at random]";
	now type entry is "[one of]insectile[or]lepidopterous[or]moth-like[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname is "Mothgirl":
		if humanity of player < 10:
			say "You do not have any prejudice to any particular infected creature, except spidergirls whose nature invites trouble. You flit around acting on the instincts of wanting sex or having sex with numerable partners.";
		else:
			say "You are able to fly anywhere you want in the city and take up a small delivery service, in exchange you get money and multiple sex partners to satisfy your lust.";

Table of Game Objects(continued)
name	desc	weight	object
"cock pill"	"This small pea like object is blue in colour and seems to have a phallic symbol of a penis on it"	1	cock pill

cock pill is a grab object. It is temporary. It is a part of the player.

instead of sniffing cock pill:
	say "The small pill smells faintly of male pheromones and arousal.";

the usedesc of cock pill is "[cock pill use]";

to say cock pill use:
	say "You take the pill and pop it into your mouth...";
	if cocks of player is 0:
		now cocks of player is 1;
		now cock length of player is 7;
		now cock width of player is 10;
		say "With a rush of euphoria, your groin practically explodes as a new [cock of player] cock bursts free of you, twitching readily, fueled by [short ball size] orbs dangling underneath.";
	else if a random chance of 1 in 5 succeeds:
		say "You feel dizzy, leaning against the nearest support as your [cock of player] shaft[if cocks of player > 1]s[end if] engorge painfully, growing larger before splitting, revealing a new shaft.";
		increase cocks of player by 1;
	else:
		increase cock length of player by a random number from 1 to 2;
		Follow the cock descr rule;
		say "You groan as you gain more male meat, leaving you with a [cock size desc of player] [cock of player] dick[if cocks of player > 1]s[end if]";

Mothgirl For FS ends here.
