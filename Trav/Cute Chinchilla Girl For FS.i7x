Version 2 of Cute Chinchilla Girl For FS by Trav begins here. 
[ Version 2 - Complete Overhaul by Blue Bishop]
[ - Originally written by Trav - ]

"Adds a Chinchilla to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

chindem is a truth state that varies. chindem is usually false. [Chinchilla Demeanour, true = coherent]

when play begins:
	add "Chinchilla" to infections of girl;
	add "Chinchilla" to infections of furry;

to say chinvic:
	if hp of player > 0:
		say "     Before there is any further conflict, you choose to offer yourself in submission. Clearly, the skittish rodent doesn't seem particularly inclined to trust your gesture.";
		say "     [if chindem is false]Squeaking incomprehensibly at you, it's clear she succumbs[otherwise]'[one of]I-I need to satisfy myself[or]I-I can't resist[or]W-why didn't you run? I can't help myself[at random]...' Succumbing[end if] to her infection's wanton influence, her better nature can't ward her from you for very long, slowly approaching until she's certain you offer no aggression. Growing a little giddy, she begins to fondle over you, inspecting what you have to offer and freeing you of any obstruction in her way.";
	otherwise:
		say "     Banging on you one last time, you finally succumb to exhaustion, falling to the earth. The rodent backs away from you, appearing a little surprised she managed to take you down.";
		say "     [if chindem is false]Squeaking incomprehensibly at you, n[otherwise]'[one of]S-so tempting[or]M-maybe just a little[or]I-I won? O-oh, I could[at random]...' N[end if]o doubt in need to sate her infection's wanton influence, she quickly climbs on top of you, giddily fondling over you and inspecting what you have to offer, freeing you of any obstruction in her way all the while.";
	if cocks of player > 0 and cock length of player < 17 and a random chance of 1 in 2 succeeds:
		say "     ";
		if chindem is false:
			say "[if scalevalue of player > 3]Chittering in awe over your physical scale[otherwise]Chittering eagerly[end if] as she crawls";
		otherwise:
			say "'[if scalevalue of player > 3][one of]S-so big[or]W-wow, you're massive[or]T-there's too much body here for me to use[at random][otherwise][one of]A-ah, yes[or]Y-yes, let's have some fun[or]P-plenty for me to play with here[at random][end if]!' Crawling";
		say " all over you, the creature eventually forces you onto your back, exposing your [cock size desc of player] dick[smn] into the open air. Squeezing and slowly pumping [if cocks of player > 2]two of them[otherwise if cocks of player is 2]both of them[otherwise]it[end if], her influence eventually [if hp of player < 1]forces[otherwise]drives[end if] you hard before the rodent's eager gaze. Once you're ready for her, she repositions herself over [if cocks of player > 1]one of your throbbing organs[otherwise]your throbbing organ[end if] before slowly sinking its head between her supple folds, squeaking lowly in lewd approval.";
		say "     '[if chindem is false][one of]Tssk, tcht[or]Tcht, ssk[or]Ksk, tsk[at random][otherwise][one of]A-ah, I needed this[or]O-h, I n-need more[or]F-feel's so good[at random][end if]...' Tightly embracing you, you're left to feel her immensely soft fur's caress against your [bodytype of player] form as she takes her time to acclimate to your tool[if cock length of player > 8], no doubt a fair bit strained by its size[end if]. Ready to proceed, she gradually builds up a motion of riding against your cock, the air quickly filled with the loud sound of her constant squeaking. Powerful hind legs [if scalevalue of player < 4]pinning you down[otherwise]pressing against you[end if], the beast's supple teats grind firmly against you as she rolls ever-closer to ecstasy.";
		if libido of player > 30:
			say "     Unable to [if hp of player < 1]resist[otherwise]hold back[end if] any longer, you finally cry out, pumping your [cum load size of player] load into the rodent's tight hole[if cocks of player > 2], your exposed, unattended dicks staining your torso and hers[otherwise if cocks of player is 2], your exposed, unattended dick staining your torso and hers[end if], and she's quick to respond with a gleeful screech, [if cockname of player is listed in infections of knotlist]tieing with[otherwise]hilting[end if] your tool, its squeezing passage milking you of every last drop[if cock width of player > 18]. However, quickly underestimating her capacity, she eventually forced free of your cock, the remaining load spilling all over to make a substantial mess[end if].";
		otherwise:
			say "     It's but a few short moments before she cries out in a gleeful screech, [if cockname of player is listed in infections of knotlist]tieing with[otherwise]hilting[end if] your tool, its squeezing passage milking you of every last drop. Unable to [if hp of player < 1]resist[otherwise]hold back[end if] any longer, this act is more than enough to make you cry out, pumping your [cum load size of player] load into the rodent's greedy hole[if cocks of player > 2], your exposed, unattended dicks staining your torso and hers[otherwise if cocks of player is 2], your exposed, unattended dick staining your torso and hers[end if][if cock width of player > 18]. Quickly underestimating her capacity, she eventually forced free of your cock, the remaining load spilling all over to make a substantial mess[end if].";
		say "     [if chindem is false]Chittering happily, she takes a brief moment to catch[otherwise]'[one of]Ah, I needed that[or]Oh, that felt too good[or]Mm, what a ride[or]Oh, that'll do[at random]...' Taking only a brief moment to catch[end if] her breath before happily hopping off of you, observing her surroundings for a moment before skittering off into the distance. You eventually manage to recover from the [if hp of player < 1]ordeal[otherwise]bout[end if], climbing back to your feet and gathering your things before departing yourself.";
	otherwise:
		say "     With little further restraint, she presses the supple, soft-furred lips of her cunt against your face, blatantly expecting you to satisfy her orally. [if hp of player < 1]You're not inclined in the slightest to oblige her, and she pleads constantly for you to, until her infectious influence eventually drives you to comply, gasping in pleasure at the feel of your tongue finally flooding her depths[otherwise]Curiously probing her yielding entrance, you're met with cooing approval, compelling you to plunge your slick organ into her depths, the creature gasping loudly in response[end if]. The stout critter writhes and squeaks against your tongue's influence[if scalevalue of player < 3], its substantial size no doubt quite straining on her[end if], the taste of her bestial sex flooding your senses.";
		if chindem is false:
			say "     Chittering incomprehensibly, it's clear she requires of her [if hp of player < 1]victim[otherwise]assistant[end if] to go harder, squeezing you tightly until you oblige. Y";
		otherwise:
			say "     '[one of]A-ah[or]O-oh[or]N-ng[at random], [one of]so g-good[or]h-harder[or][if scalevalue of player < 3]so b-big[otherwise]I need m-more[end if][at random]...!' Squeezing her [if hp of player < 1]victim[otherwise]assistant[end if] tighter until you intensify your endeavour, y";
		say "our arousal becomes increasingly apparent, [if cocks of player > 0]unattended, [cock size desc of player] cock[smn] standing achingly in attention[otherwise if cunts of player > 0]unattended, [cunt size desc of player] cunt[sfn] aching for attention[otherwise]in spite your lack of visible outlet[end if]; however, the rodent is clearly too distracted to regard it, the speed at which she writhes against your irreverent appendage becoming more desperate.";
		say "     [if hp of player < 1]Subjected to[otherwise]Attending[end if] this creature's wanton need, the wet, loud endeavour brings her to ecstasy, squeaking out weakly as she clings to you, [if hp of player < 1]forced to[otherwise]having you[end if] swallow down a flood of her subsequent sexual fluids. Exhausted as she now is, [if hp of player < 1]you toss the rodent free of you[otherwise]you pull yourself free of the rodent[end if], who weakly scrambles off into the distance, leaving you to recover from the ordeal and retreat back from whence you came.";

to say chinloss: [Placeholder, player victory scenes expected to be added in later]
	say "     Eventually, the critter collapses, too exhausted to fight back any further. With nothing more to gain from this exchange, you choose to depart, letting the rodent retreat back from whence it came.";

to say chindesc:
	choose row monster from table of random critters;
	setmonster "Chinchilla";
	if a random chance of 1 in 2 succeeds:
		now chindem is true;
	otherwise:
		now chindem is false;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	say "     [if showlocale is true]Popping up from a nearby [one of]crevice[or]alcove[at random] you are met with[otherwise]You run up against[end if] what appears a female who's succumbed to the appearance of a chinchilla. Now no more than a few feet tall, very little in the way of human attributes remain. The diminutive creature squeaks distressingly in regards to your presence, [if a random chance of 1 in 2 succeeds and chindem is true]dressed in naught but a makeshift, canvas cloak[otherwise]stark naked before you[end if] its pelt extraordinarily soft and inviting to your sight.";
	say "     '[if chindem is true][one of]Don't think I can't take you on[or]Leave this place, please[or]I'll get what I need, one way or another[at random][otherwise][one of]Tcht, kst kst[or]Scree, tcht tcht[or]Kst, tcht[at random][end if]!' [if chindem is true]Still somewhat lucid[otherwise]Completely lost to its feral influence[end if], the little beast stands on its hindpaws, bearing its forepaws threateningly at you... Though, the gesture comes off as more adorable than threatening.";
		
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Chinchilla";
	now attack entry is "[one of]She[or]The chinchilla[at random] [one of]pounces onto you, clinging to your [bodydesc of player] form. You manage to pry her off, but not before she assails you with a barrage of clawing and nipping[or]manages to get close to one of your legs, chomping down and holding on for dear life until you finally kick her free[or]swipes at you with her tiny claws[or]manages to kick you with one of her more powerful hindpaws[or]finds and rock and manages to throw it at you[at random].";
	now defeated entry is "[chinloss].";
	now victory entry is  "[chinvic]";
	now desc entry is "[chindesc]";
	now face entry is "short chinchilla muzzle, small grey mouse-like ears, and cute, little whiskers adorned on your";[ Face description, format as the text "Your have a (your text) face."]
	now body entry is "voluptuous and somewhat bestial.  You have powerful hindpaws that that allow you to move with some speed and grace.";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "[one of]grey fur[or]downy soft fur[at random] in place of";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You fairly long tail which fluffs out quite a bit.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]tapered[or]chinchilla[at random], pinkish";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it draws forward into a chinchilla muzzle, sprouting soft, twitchy whiskers. Your ears migrating to the top of your head twisting into a more round, rodent-like shape."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "a soft heat sweeps over you. Your feet grow to leave you with plump, distinctive hind paws, tipped with little black claws. While your hands and arms shrink, as very small claws sprout from your new paw tips."; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "grey fur spreads rapidly over your form, a lighter grey stripe covering your chest. Feeling yourself following the change, the fur is extremely soft to the touch."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "A long, sprig-like tail grows from you, hair sprouting across its length to give it a distinctly fluffy appearance"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "Your shaft tingles with sudden arousal as it is engulfed in a soft grey sheath, the tool itself looking pinkish and tapered before your prying eyes."; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 10;
	now dex entry is 20;
	now sta entry is 10;					
	now per entry is 12;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Female";	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 19;			[ How many HP has the monster got? ]
	now lev entry is 2;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 3;			[Amount of Damage monster Does when attacking.]
	now area entry is "Plains";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 5;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 5;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;			[ Number of Breasts infection will give you. ]
	now breast size entry is 3;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 7;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 6;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 30;			[ Amount player Libido will go up if defeated ]
	now loot entry is "tuft of chin fur";			[ Loot monster drops, ]
	now lootchance entry is 50;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 1;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]curvy[or]feminine[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "rodent";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname is "Chinchilla":
		if humanity of player is less than 10:
			say "     Overtaken by your infection's influence you retreat to the plains, where your kin reside. Warmly greeted by them, you find yourself fitting in quite well, your days soon filled with constant sex, only occasionally interrupted by other predators or hunters, of which you either evade or add to your numbers. Your population eventually reach a point where you start spilling into more civilized areas, your disarming appearance proving very effective and quickly bringing them into the fold as well...";
		otherwise:
			say "     Once you're rescued by the military you're processed by them with zero issue, likely aided by how non-threatening you look. Back in normal society, you find that, while children are easily drawn to your cute appearance, the rest of mainstream society doesn't quite regard you as highly, likely due to a stigma attached to the infected. You end up mostly staying within the social circles of other survivors, but otherwise lead a fairly reasonable life.";
			
Table of Game Objects(continued)
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
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Female";
	say "     You feel inclined to rub the chinchilla tuft against your [bodytype of player] form. The material is exceedingly soft, and makes you feel a little better, though doing this has caused the infectious fur to dissipate into your skin...";
	if morale of player is less than 30, increase morale of player by 5;

Cute Chinchilla Girl For FS ends here.
