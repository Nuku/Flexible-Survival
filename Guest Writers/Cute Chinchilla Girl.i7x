Version 2 of Cute Chinchilla Girl by Guest Writers begins here.
[ Version 2.1 - Player victory added by Stripes]
[ Version 2.0 - Complete Overhaul by Blue Bishop]
[- Originally Authored By: Trav -]

"Adds a Chinchilla to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

chindem is a truth state that varies. chindem is usually false. [Chinchilla demeanor, true = coherent]
nochinchillasex is a number that varies.

when play begins:
	add "Chinchilla" to infections of girl;
	add "Chinchilla" to infections of furry;
	add "Chinchilla" to infections of Rodentlist;

to say chinvic:
	if HP of player > 0:
		say "     Before there is any further conflict, you choose to offer yourself in submission. Clearly, the skittish rodent doesn't seem particularly inclined to trust your gesture.";
		say "     [if chindem is false]Squeaking incomprehensibly at you, it's clear she succumbs[else]'[one of]I-I need to satisfy myself[or]I-I can't resist[or]W-why didn't you run? I can't help myself[at random]...' Succumbing[end if] to her infection's wanton influence, her better nature can't ward her from you for very long, slowly approaching until she's certain you offer no aggression. Growing a little giddy, she begins to fondle over you, inspecting what you have to offer and freeing you of any obstruction in her way.";
	else:
		say "     Banging on you one last time, you finally succumb to exhaustion, falling to the earth. The rodent backs away from you, appearing a little surprised she managed to take you down.";
		say "     [if chindem is false]Squeaking incomprehensibly at you, n[else]'[one of]S-so tempting[or]M-maybe just a little[or]I-I won? O-oh, I could[at random]...' N[end if]o doubt in need to sate her infection's wanton influence, she quickly climbs on top of you, giddily fondling over you and inspecting what you have to offer, freeing you of any obstruction in her way all the while.";
	if cocks of player > 0 and cock length of player < 17 and a random chance of 1 in 2 succeeds:
		if chindem is false:
			say "     [if scalevalue of player > 3]Chittering in awe over your physical scale[else]Chittering eagerly[end if] as she crawls";
		else:
			say "     '[if scalevalue of player > 3][one of]S-so big[or]W-wow, you're massive[or]T-there's too much body here for me to use[at random][else][one of]A-ah, yes[or]Y-yes, let's have some fun[or]P-plenty for me to play with here[at random][end if]!' Crawling";
		say " all over you, the creature eventually forces you onto your back, exposing your [cock size desc of player] dick[smn] into the open air. Squeezing and slowly pumping [if cocks of player > 2]two of them[else if cocks of player is 2]both of them[else]it[end if], her influence eventually [if HP of player < 1]forces[else]drives[end if] you hard before the rodent's eager gaze. Once you're ready for her, she repositions herself over [if cocks of player > 1]one of your throbbing organs[else]your throbbing organ[end if] before slowly sinking its head between her supple folds, squeaking lowly in lewd approval.";
		say "     '[if chindem is false][one of]Tssk, tcht[or]Tcht, ssk[or]Ksk, tsk[at random][else][one of]A-ah, I needed this[or]O-h, I n-need more[or]F-feel's so good[at random][end if]...' Tightly embracing you, you're left to feel her immensely soft fur's caress against your [bodytype of player] form as she takes her time to acclimate to your tool[if cock length of player > 8], no doubt a fair bit strained by its size[end if]. Ready to proceed, she gradually builds up a motion of riding against your cock, the air quickly filled with the loud sound of her constant squeaking. Powerful hind legs [if scalevalue of player < 4]pinning you down[else]pressing against you[end if], the beast's supple teats grind firmly against you as she rolls ever-closer to ecstasy.";
		if libido of player > 30:
			say "     Unable to [if HP of player < 1]resist[else]hold back[end if] any longer, you finally cry out, pumping your [cum load size of player] load into the rodent's tight hole[if cocks of player > 2], your exposed, unattended dicks staining your torso and hers[else if cocks of player is 2], your exposed, unattended dick staining your torso and hers[end if], and she's quick to respond with a gleeful screech, [if cockname of player is listed in infections of knotlist]tieing with[else]hilting[end if] your tool, its squeezing passage milking you of every last drop[if cock width of player > 18]. However, quickly underestimating her capacity, she eventually forced free of your cock, the remaining load spilling all over to make a substantial mess[end if].";
		else:
			say "     It's but a few short moments before she cries out in a gleeful screech, [if cockname of player is listed in infections of knotlist]tieing with[else]hilting[end if] your tool, its squeezing passage milking you of every last drop. Unable to [if HP of player < 1]resist[else]hold back[end if] any longer, this act is more than enough to make you cry out, pumping your [cum load size of player] load into the rodent's greedy hole[if cocks of player > 2], your exposed, unattended dicks staining your torso and hers[else if cocks of player is 2], your exposed, unattended dick staining your torso and hers[end if][if cock width of player > 18]. Quickly underestimating her capacity, she eventually forced free of your cock, the remaining load spilling all over to make a substantial mess[end if].";
		say "     [if chindem is false]Chittering happily, she takes a brief moment to catch[else]'[one of]Ah, I needed that[or]Oh, that felt too good[or]Mm, what a ride[or]Oh, that'll do[at random]...' Taking only a brief moment to catch[end if] her breath before happily hopping off of you, observing her surroundings for a moment before skittering off into the distance. You eventually manage to recover from the [if HP of player < 1]ordeal[else]bout[end if], climbing back to your feet and gathering your things before departing yourself.";
	else:
		say "     With little further restraint, she presses the supple, soft-furred lips of her cunt against your face, blatantly expecting you to satisfy her orally. [if HP of player < 1]You're not inclined in the slightest to oblige her, and she pleads constantly for you to, until her infectious influence eventually drives you to comply, gasping in pleasure at the feel of your tongue finally flooding her depths[else]Curiously probing her yielding entrance, you're met with cooing approval, compelling you to plunge your slick organ into her depths, the creature gasping loudly in response[end if]. The stout critter writhes and squeaks against your tongue's influence[if scalevalue of player < 3], its substantial size no doubt quite straining on her[end if], the taste of her bestial sex flooding your senses.";
		if chindem is false:
			say "     Chittering incomprehensibly, it's clear she requires of her [if HP of player < 1]victim[else]assistant[end if] to go harder, squeezing you tightly until you oblige. Your ";
		else:
			say "     '[one of]A-ah[or]O-oh[or]N-ng[at random], [one of]so g-good[or]h-harder[or][if scalevalue of player < 3]so b-big[else]I need m-more[end if][at random]...!' Squeezing her [if HP of player < 1]victim[else]assistant[end if] tighter until you intensify your endeavor, your ";
		say "arousal becomes increasingly apparent, [if player is male]unattended, [cock size desc of player] cock[smn] standing achingly in attention[else if player is female]unattended, [cunt size desc of player] cunt[sfn] aching for attention[else]in spite your lack of visible outlet[end if]; however, the rodent is clearly too distracted to regard it, the speed at which she writhes against your irreverent appendage becoming more desperate.";
		say "     [if HP of player < 1]Subjected to[else]Attending[end if] this creature's wanton need, the wet, loud endeavor brings her to ecstasy, squeaking out weakly as she clings to you, [if HP of player < 1]forced to[else]having you[end if] swallow down a flood of her subsequent sexual fluids. Exhausted as she now is, [if HP of player < 1]you toss the rodent free of you[else]you pull yourself free of the rodent[end if], who weakly scrambles off into the distance, leaving you to recover from the ordeal and retreat back from whence you came.";

to say chinloss: [Placeholder, player victory scenes expected to be added in later]
	if cocks of player is 0 or ( nochinchillasex > 2 and the remainder after dividing nochinchillasex by 5 is not 0 ):
		say "     Eventually, the critter collapses, too exhausted to fight back any further. With nothing more to gain from this exchange, you choose to depart, letting the rodent retreat back from whence it came.";
		if cocks of player > 0, increase nochinchillasex by 1;
	else:
		say "     Eventually, the critter collapses, too exhausted to fight back any further. With the energetic creature down, you're free to take advantage of the situation if you'd like. You can see traces of a sexy female figure beneath the little fuzzball's fluffy fur. Shall you [if cock length of player > 16]have some naughty fun with her[else]fuck her[end if]?";
		if the player consents:
			if cock length of player > 16:
				say "     Giving her diminutive size, especially when compared to your [cock size desc of player] cock, you pass on outright fucking the little cutie and instead go for some other fun. Having to problem pinning her down, you press your drooling glans to her face and tell her to start licking. The small [if chindem is true][one of]fluffball grumbles something about how you don't have to so mean about it, but[or]fluffball giggles that you should've just said so in the first place. She[or]fluffball's eyes go wide with desire at the size of your manhood. With such a prize, she[at random][else][one of]fluffball chitters indignantly, but[or]fluffball releases a chittering giggle of excitement. She[or]fluffball's eyes go wide with desire at the size of your manhood. With such a prize, she[at random][end if] relents and slides her tongue slowly along several inches of cock before twirling it across the tip. Soon more licks follow along with her fuzzy paws joining in on caressing your [if cock length of player < 30]comparatively [end if]huge penis.";
				say "     With her thus occupied, you slip your hands into her fuzzy fur and start caressing her curvaceous body. While it's hard to see buried under all that fluff, she's got a sexy (if rather animalistic) body hidden under her fur. You rub her breasts and tease her hidden nipples, drawing chitters of delight from her. You then let a hand slide down between her legs and slip [if scalevalue of player < 4]a pair of digits[else]a finger[end if] into her cunt. Her cunny's quite hot and wet, clearly excited from her fun with your cock.";
				WaitLineBreak;
				say "     You continue to finger and pet the female rodent while she licks and strokes your manhood. As your excitement grows, your dick drools pre onto her tongue as well as her fuzzy face. Feeling your orgasm approaching, you grab the back of her head with your free hand and stuff the end of your cock into her little muzzle. You groan and [if cock width of player > 15]bulge her cheeks out with just the first few blasts[else]shoot several blasts[end if] of your [cum load size of player] load into her mouth before pulling it out. You pump your cock frantically, spraying the rest of your seed onto her fuzzy fur, making sure she's good and messy. Even as you're cumming all over her, you finger her to a chittering orgasm.";
				say "     After you get off her, she gets up and [if chindem is true][one of]grumbles about how messy you've gotten her soft coat[or]complains about how her fur is dry-clean only[or]complains about needing a good, long dust-bath now[at random][else]chitters indignantly, clearly upset at having her soft coat soaked in your seed[end if]. She tries her best to wipe it off while shakes her sticky arms as she walks off. This flings gobs of semen from her little paws onto the ground, though she also licks several gooey globs from them as well.";
			else:
				say "     Pinning down the fluffy female easily, you straddle her hips and grind your [cock of player] cock between her legs. The soft fluff is a sensual delight against it, making you all the more aroused. Her legs part a little further and you catch a glimpse of her wet pussy under that fur. Adjusting your position, you get lined up and thrust into the fluffy rodent's tight little cunny.";
				say "     '[if chindem is false][one of]Tssk, tcht[or]Tcht, ssk[or]Ksk, tsk[at random][else][one of]A-ah, I needed this[or]O-h, I n-need more[or]F-feel's so good[or]If you wanted to play, you should've just said so[at random][end if]...' The fluffball's chitters of sexual pleasure grow louder as you withdraw and thrust into her again. Sinking your fingers into the plush fur of her thighs, you hold her legs up and apart so you can keep pounding away at her. She stuffs a paw in her muzzle to muffle her sounds of delight a little.";
				WaitLineBreak;
				say "     With her snug cunny gripping your [if cock length of player > 10]large [else if cock length of player > 6]relatively large [end if]cock so tightly, you have a great time fucking the soft rodent. Her vaginal walls quiver and squeeze around your shaft through several small orgasms before finally building to a big one as you pound her hard and fast as your own climax approaches. When it arrives, you drill deep into her vagina and unleash your [cum load size of player] load into her womb[if cock width of player >= 20]. Your [cum load size of player] output is such that her belly visibly swells despite her fluffy coat of fur[end if]. By the time you're done and you pull out, a gush of your gooey seed leaks from her stretched petals, soaking her furry thighs.";
				say "     After you get off her, she staggers to her feet. With cum running down her legs, it soaks into her soft fur, matting it. She [if chindem is true][one of]grumbles about how messy you've gotten her soft coat[or]complains about how her fur is dry-clean only[or]pouts that she'll need a good, long dust-bath now[or]sighs happily about how good that felt[at random][else][one of]chitters indignantly, clearly upset at having her soft coat soaked in your seed[or]chitters incoherently in a daze of post-coital bliss[at random][end if]. A paw slips between her legs, fingering her cunny lightly while trying to hold back the flow of cum leaking from her stretched cunt. She staggers off slowly like this, a paw between her legs to keep as much of your load as she can in her.";
			now nochinchillasex is 0;
		else:
			say "     Resisting the temptation and nothing more to gain from this exchange, you choose to depart, leaving the rodent retreat back from whence it came.";
			increase nochinchillasex by 1;

to say chindesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	setmonster "Chinchilla";
	if a random chance of 1 in 2 succeeds:
		now chindem is true;
	else:
		now chindem is false;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     [if showlocale is true]Popping up from a nearby [one of]crevice[or]alcove[at random] you are met with[else]You run up against[end if] what appears a female who's succumbed to the appearance of a chinchilla. Now no more than a few feet tall, very little in the way of human attributes remain. The diminutive creature squeaks distressingly in regards to your presence, [if a random chance of 1 in 2 succeeds and chindem is true]dressed in naught but a makeshift, canvas cloak[else]stark naked before you[end if] its pelt extraordinarily soft and inviting to your sight.";
	say "     '[if chindem is true][one of]Don't think I can't take you on[or]Leave this place, please[or]I'll get what I need, one way or another[at random][else][one of]Tcht, kst kst[or]Scree, tcht tcht[or]Kst, tcht[at random][end if]!' [if chindem is true]Still somewhat lucid[else]Completely lost to its feral influence[end if], the little beast stands on its hindpaws, bearing its forepaws threateningly at you... Though, the gesture comes off as more adorable than threatening.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Chinchilla";
	now attack entry is "[one of]She[or]The chinchilla[at random] [one of]pounces onto you, clinging to your [bodydesc of player] form. You manage to pry her off, but not before she assails you with a barrage of clawing and nipping[or]manages to get close to one of your legs, chomping down and holding on for dear life until you finally kick her free[or]swipes at you with her tiny claws[or]manages to kick you with one of her more powerful hindpaws[or]finds and rock and manages to throw it at you[at random].";
	now defeated entry is "[chinloss].";
	now victory entry is "[chinvic]";
	now desc entry is "[chindesc]";
	now face entry is "short chinchilla muzzle, small gray mouse-like ears, and cute, little whiskers adorned on it";[ Face description, format as the text "Your face is (your text)."]
	now body entry is "voluptuous and somewhat bestial. You have powerful hindpaws that allow you to move with some speed and grace";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]gray fur[or]downy soft fur[at random] in place of";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You fairly long tail which fluffs out quite a bit.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]tapered[or]chinchilla[at random], pinkish";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it draws forward into a chinchilla muzzle, sprouting soft, twitchy whiskers. Your ears migrating to the top of your head twisting into a more round, rodent-like shape."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "a soft heat sweeps over you. Your feet grow to leave you with plump, distinctive hind paws, tipped with little black claws. While your hands and arms shrink, as very small claws sprout from your new paw tips."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "gray fur spreads rapidly over your form, a lighter gray stripe covering your chest. Feeling yourself following the change, the fur is extremely soft to the touch."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "A long, sprig-like tail grows from you, hair sprouting across its length to give it a distinctly fluffy appearance"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "Your shaft tingles with sudden arousal as it is engulfed in a soft gray sheath, the tool itself looking pinkish and tapered before your prying eyes."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 10;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 19;
	now lev entry is 2; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 3; [Amount of Damage monster Does when attacking.]
	now area entry is "Plains"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 5; [ Length infection will make cock grow to if cocks]
	now cock width entry is 5; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4; [ Number of Breasts infection will give you. ]
	now breast size entry is 3; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 30; [ Amount player Libido will go up if defeated ]
	now loot entry is "tuft of chin fur";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 1; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]curvy[or]feminine[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "rodent"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname is "Chinchilla":
		if humanity of player < 10:
			say "     Overtaken by your infection's influence you retreat to the plains, where your kin reside. Warmly greeted by them, you find yourself fitting in quite well, your days soon filled with constant sex, only occasionally interrupted by other predators or hunters, of which you either evade or add to your numbers. Your population eventually reach a point where you start spilling into more civilized areas, your disarming appearance proving very effective and quickly bringing them into the fold as well...";
		else:
			say "     Once you're rescued by the military you're processed by them with zero issue, likely aided by how non-threatening you look. Back in normal society, you find that, while children are easily drawn to your cute appearance, the rest of mainstream society doesn't quite regard you as highly, likely due to a stigma attached to the infected. You end up mostly staying within the social circles of other survivors, but otherwise lead a fairly reasonable life.";

Table of Game Objects (continued)
name	desc	weight	object
"tuft of chin fur"	"A soft piece of chinchilla fur."	1	tuft of chin fur

tuft of chin fur is a grab object. It is a part of the player. tuft of chin fur is infectious. The strain of tuft of chin fur is "Chinchilla".

instead of sniffing tuft of chin fur:
	say "This soft fur smells a little dusty, but quite nice.";

the usedesc of tuft of chin fur is "[tuft of chin fur use]";

to say tuft of chin fur use:
	choose row monster from table of random critters;
	setmonster "Chinchilla";
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	else if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     You feel inclined to rub the chinchilla tuft against your [bodytype of player] form. The material is exceedingly soft, and makes you feel a little better, though doing this has caused the infectious fur to dissipate into your skin...";
	if morale of player < 30, increase morale of player by 5;

Cute Chinchilla Girl ends here.
