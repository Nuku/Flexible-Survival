Version 1 of Friendship Pony For FS by Stripes begins here.
[Version 1.0 - April Fool's 2013]

"Adds a Friendship Pony creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

rfponytype is a number that varies.  rfponytype is normally 0.
rfponycolour1 is a text that varies.  rfponycolour1 is normally "pink".
rfponycolour2 is a text that varies.  rfponycolour2 is normally "lavender".
rfponybm is a text that varies.  rfponybm is normally "a cock".
nofponysex is a number that varies.

[ colour list 1: body ]
rfpclist1 is a list of text that varies.  rfpclist1 is usually { "sky blue", "sapphire blue", "powder blue", "periwinkle", "light yellow", "jasmine", "yellow", "citrine", "teal", "soft pink", "salmon", "fuchsia", "light green", "honeydew", "forest green", "grass green", "celadon", "orange", "pumpkin", "light brown", "tan", "brown", "lilac", "amethyst", "thistle", "red", "russet", "ruby red", "burgundy", "white", "grey", "cream" }.

[ colour list 2: hair ]
rfpclist2 is a list of text that varies.  rfpclist2 is usually { "blue", "cobalt blue", "cyan", "azure", "turquoise", "black", "golden yellow", "neon yellow", "sunglow", "maroon", "pink", "hot pink", "carnation", "cerise", "green", "emerald green", "neon green", "light orange", "apricot", "peach", "royal purple", "deep purple", "indigo", "carmine", "flame red", "candy apple red" }.

[ booty mark list ]
rfpbmlist is a list of text that varies.  rfpbmlist is usually { "a dildo", "a vibrator", "an egg vibrator", "a horsecock", "a mare's pussy", "a horsecock being licked", "a pussy being licked", "a cum-slick cock", "an overflowing pussy", "an ejaculating cock", "a cock stuffing an anus", "two humping dogs", "a necklace of pearls", "a pair of tits", "a pair of cum-coated tits", "a pony head sucking cock", "a swallow", "a raised tail", "a leather whip", "a broken bed", "a set of furred handcuffs", "a pair of cocks rubbing together", "an extra-thick dildo", "a pair of nipple clamps", "a burst condom", "a strap-on", "a gimp mask", "the shocker handsign", "a finger-stuffed pussy", "a butt plug", "a ball gag", "a dripping candle", "a leather harness", "anal beads" }.

pfpbmlist is a list of text that varies.

[	rfponytype	]
[ 1 = earth pony	]
[ 2 = pegasus	]
[ 3 = unicorn	]


when play begins:
	add { "Friendship Pony" } to infections of girl;
	add { "Friendship Pony" } to infections of furry;
	add { "Friendship Pony" } to infections of humorous;
	add { "Friendship Pony" } to infections of Equinelist;		[list of equine infections]
	add { "Friendship Pony" } to infections of Latexlist;			[list of latex/rubber/PVC skin infections]

to say fponydesc:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise:
		now sex entry is "nochange";
	now rfponytype is a random number between 1 and 3;
	if a random chance of 1 in 4 succeeds, now rfponytype is 1;	[basic pony is most common, 50% chance]
	rotate rfpclist1;
	rotate rfpclist2;
	rotate rfpbmlist;
	now rfponycolour1 is "[entry 1 in rfpclist1]";
	now rfponycolour2 is "[entry 1 in rfpclist2]";
	now rfponybm is "[entry 1 in rfpbmlist]";
	say "     You find yourself facing off against a vaguely equine creature with a rather strange and toyetic appearance.  Its short body is slender and has only a few curves to accentuate the creature's femininity[if rfponytype is 2] and has a pair of small, feathered wings at its back[end if].  The strange, smiling pony creature stands on four flat, featureless hooves that are little more than flat stumps at the end of its legs.  Its overall look is quite smooth and plasticky, having a [rfponycolour1] colour to its body.  Its head is large and roundish with cartoonishly oversized eyes that look at you with a vacant, happy gaze.  Despite lacking any hair or fur anywhere else on its body, the pony has a lush mane and fluffy tail of [rfponycolour2] hair [if a random chance of 1 in 5 succeeds]with brighter highlights [end if]that looks stylishly brushed[if rfponytype is 3].  There is a short horn poking out the front of her hair[end if].";
	say "     '[if player is fponybodied and the player is fponyskinned]Oh! I loooove your booty mark!  Let's be friends[otherwise if player is fponybodied]Come, cutie!  Let's see if we can't earn you a booty mark[otherwise if player is fponyskinned]Oh! I love your booty mark!  Now lets see if we can't get you looking like a proper little pony[otherwise]Do you like my booty mark?  Let's be friends[end if],' she says with a giggle before turning around to show off the design of [rfponybm] on her flanks and the dripping pussy under her raised tail.  She gives her rear a shake before coming towards you at a trot.  'Oh, we'll have so much fun together, my new friend,' she says with a grin.  Given how things are around here, you're pretty sure you know just what kind of a friend she's looking for and that she won't take no for an answer.";

to say fpattack:
	if rfponytype is 1:
		say "[one of]The pony[or]She[or]The happy pony[or]The eager equine[or]The overly-friendly pony[at random] [one of]turns around and kicks you hard with her hind legs[or]bashes herself against you, trying to knock you over[or]grinds her body against yours[or]turns around and rubs her wet pussy against you excitedly[at random].";
	otherwise if rfponytype is 2:
		say "[one of]The pony[or]The pegasus[or]She[or]The flying pony[or]The overly-friendly pegasus[at random] [one of]pushes a cartoonishly puffy cloud over you and gives it a hard kick, sending a lightning bolt down onto you[or]gives you a hard kick[or]zips behind you and knocks you with one of her front legs[or]zooms into you hard, trying to push you over[or]flies quickly around you, making a brief whirlwind that batters you with rubble until she's too dizzy to maintain it any longer[or]grinds her body against yours[at random].";
	otherwise if rfponytype is 3:
		say "[one of]The pony[or]The unicorn[or]She[or]The horned pony[or]The overly-friendly unicorn[at random] [one of]shoots a beam of sparkles at your chest[or]levitates some rubble to throw at you[or]stomps on your foot with a hoof[or]uses her magic to make the ground slippery, dropping you on your ass[or]gives you a hard kick[or]jabs you in the belly with her horn, making you cough up some flowers[at random].";

to say losetofpony:
	now nofponysex is 0;
	if hp of player > 0:
		say "     Giving in to the pony's demands for friendship, you stop resisting and let her approach you";
	otherwise:
		say "     Unable to continue resisting the pony's demands for friendship, you drop to your knees as she approaches you";
	say ".  The [if rfponytype is 1]cute equine[otherwise if rfponytype is 2]pegasus[otherwise]unicorn[end if] giggles happily as she bounds up to you putting her forelegs around you and cuddling so tightly it feels like your eyes are going to pop out of your head.  After this crushing hug, she fall back on the ground when she releases you.";
	if cocks of player > 0:
		say "     Spotting your cock, quite hard after that hug left nowhere else for your blood to go, she giggles all the more and licks her lips.  'Oh, we are going to be such great friends.  I can tell,' the [rfponycolour1] pony says[if rfponytype is 2 and cock length of player > 10] as her wings stiffen outwards at the sight of it[end if], hopping atop you.  She grinds her wet mare's pussy down atop your throbbing rod, stiffening it right back up before it has a chance to get soft.  After a little playful grinding between friends, she shifts her hips and pushes herself down onto your shaft, moaning as she takes your [cock of player] penis into her juicy folds[if cock length of player > 20].  Despite your considerable size, she's able to stretch to take you, her plasticky booty stretching wider as your cock plows into her[end if].  Her flanks, marked as they are with [rfponybm], rise and fall over your pulsing member.";
		say "     She rides you eagerly, her hooves rubbing over your [bodytype of player] body[if rfponytype is 2], her wings aflutter with excitement[otherwise if rfponytype is 3] while glowing magic from her horn lets her grope your balls[end if].  You can feel her hot juices running down your shaft and across your balls as she rides your rod faster and faster.  As the happy [if rfponytype is 1]pony[otherwise if rfponytype is 2]pegasus[otherwise]unicorn[end if] squeezes and grinds down hard onto your cock, she smiles and swishes her flowing [rfponycolour2] hair.  With your excitement and lust growing, your confused mind is happy to have met such a pretty, lovely and oh so friendly pony.  Giggling merrily along with her, you cum hard, pumping your hot load into the pleased pony as a fresh rush of hot juices from her soaks your crotch.  Once you're drained, she nuzzles your cheek and pulls off[if cock length of player > 20] with a groan[end if].";
	otherwise:
		say "     Grinning down at you, she giggles all the more as she looks over your prone form.  'Oh, we are going to be such great friends.  I can tell,' the [rfponycolour1] pony says, hopping atop you.  She raises her [rfponycolour2] tail and grinds her wet mare's pussy down into your face, the scent and sweetness of her juices overpowering your senses.  You lick your lips, getting your first sample of her juices before diving your tongue into her juicy, mare's pussy.  She moans and nickers happily[if rfponytype is 2] as her wings flutter[end if], giggling about what a good friend you are and to lick her faster.";
		say "     Grabbing onto her ass right on those designs of [rfponybm] on each flank, you squeeze tightly and pull her delicious pussy to your face.  You lap away eagerly, finding the [if rfponytype is 1]pony[otherwise if rfponytype is 2]pegasus[otherwise]unicorn[end if]'s taste delightful.  It is sugary, saccharine, almost tooth-rottingly sweet, but it seems wonderful to you and you lick for more and more[if rfponytype is 3 and cunts of player > 0].  She uses glowing magic from her horn to tease your pussy before forming a phallic force to thrust and pound into you while you eat her out[otherwise if rfponytype is 3].  She uses glowing magic from her horn to tease your tight pucker before forming a phallic force to thrust and pound into you while you eat her out[end if].  With your excitement and lust growing, your confused mind is happy to have met such a pretty, lovely and oh so friendly pony.  Giggling merrily along with her as she climaxes, your face is covered in her sweet, sticky juices and you lap up as much of it as you can get.  After a few more climaxes like that, she's finally satisfied and stands back up.";
	say "     'I hope to see you again, my new friend.  It's been magic.'  That said, she [if rfponytype is 2]flies[otherwise]trots[end if] off, probably in search of another new friends.  It's some time before your head clears enough for you to get up and head on your way.";


[
rfponytype - type (earth/pegasus/unicorn)
rfponycolour1 - body colour
rfponycolour2 - hair colour
rfponybm - booty mark
]


to say beatthefpony:
	say "     After your last blow, you slam yourself against the staggering pony's side, knocking her over.  The [rfponycolour1] [if rfponytype is 1]equine[otherwise if rfponytype is 2]pegasus[otherwise if rfponytype is 3]unicorn[end if] lands in the dirt with a groan.  '[one of]Why are you being such a meany?' [or]That's not how friends should act!' [or]I think you need to learn a lesson about friendship,' [at random] she whines";
	if nofponysex > 2:
		say ".  As with the others of your kind, you [if rfponytype is 2]send her flying away[otherwise]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";
	otherwise if cocks of player > 0:
		say ".  As you look over her, your eyes wander back to that rear of her and the juicy pussy under her [rfponycolour2] tail.  You find yourself tempted to get [']friendly['] with the pony, but on your own terms.  Shall you grab those flanks and mount her?";
		if the player consents:
			now nofponysex is 0;
			say "     Moving around behind the [rfponycolour1] pony, you grab her by the ass and knead her flanks right over her booty mark of [rfponybm].  This makes her moan and raise her [rfponycolour2] tail reflexively, putting that juicy mare's pussy of hers on display.  As you grope her ass, drops of her cum trickle across those smooth lips and down her thighs.  The sight of this gets you hard and, not wanting to wait any longer, you plow your pulsing rod into her.  The pretty pony moans and pushes back, her body urging you to thrust fully into her[if cock length of player > 20] despite your considerable size, her plasticky booty stretching wider as your cock plows into it[end if].";
			say "     Keeping a tight grip on her marked flanks, you pound away at her hard and fast, delighting in her soft moans and giggles of pleasure as her cunt squeezes and clutches at your [cock size desc of player] [cock of player] with obvious need.  The mare's hot hole is delightfully slick, her plasticky pussy turning out to be a very enjoyable fuck[if rfponytype is 1].  The pretty pony moans like a little slut, begging for you to fuck her like a manly stallion[otherwise if rfponytype is 2].  The pretty pegasus moans like a little slut while her wings flutter excitedly[otherwise if rfponytype is 3].  The pretty unicorn moans like a little slut while her glowing horn forms a magical hand to grope your balls[end if].  With a few last, hard thrusts, you drive hard into her and groan, unleashing your hot seed and draining your [cum load size of player] load into her.  Finished, you pull out and wipe your sticky cock across her flank, swat her on her booty mark and send her [if rfponytype is 2]flying[otherwise]trotting[end if] off with a giggling whinny.";
		otherwise:
			say "     Resisting the impulse, you decide to instead [if rfponytype is 2]send her flying away[otherwise]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";
			increase nofponysex by 1;
	otherwise if cunts of player > 0:
		say ".  As you look over her, your eyes wander back to that cute face of her.  You find yourself tempted to get [']friendly['] with the pony, but on your own terms.  Shall you grab that pretty [rfponycolour2] hair of hers and make her eat you out?";
		if the player consents:
			now nofponysex is 0;
			say "     Moving around to the front of the [rfponycolour1] pony, you grab her by the rounded head by her [rfponycolour2] hair, pulling her petite muzzle to your crotch.  This makes her give a little whimper, but her also sets herself to task without reservation.  Her soft, smooth muzzle rubs against your wet folds before her tongue slides out and gets to licking your pussy.  As she continues eating you out, you find yourself stroking and brushing her long, plastic hair with your hand.  But you don't let up though, keeping her at it until you've had several orgasms from her licking before you're satisfied.  When you push her back, her face and muzzle is soaked in your juices, which she eagerly tries to lick away.  Finished with her, you give her a swat her on her [rfponybm] booty mark and send her [if rfponytype is 2]flying[otherwise]trotting[end if] off with a giggling whinny.";
		otherwise:
			say "     Resisting the impulse, you decide to instead [if rfponytype is 2]send her flying away[otherwise]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";
			increase nofponysex by 1;
	otherwise:
		say ".  With no gender of your own, you don't really feel like taking advantage of this opportunity.  You decide to instead [if rfponytype is 2]send her flying away[otherwise]drive her off[end if] with a hard swat to her flank, right on her mark of [rfponybm].";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	sort rfpclist1 in random order;
	sort rfpclist2 in random order;
	sort pfpclist in random order;
	sort rfpbmlist in random order;
	now name entry is "Friendship Pony";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[fpattack]";
	now defeated entry is "[beatthefpony]";				[ Text when monster loses.  Change 'fpony' as above. ]
	now victory entry is "[losetofpony]";					[ Text when monster wins.  Change 'fpony' as above. ]
	now desc entry is "[fponydesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "vaguely equine in shape with large, [pfpcock] eyes and a friendly smile.  You have a [if cunts of player > 0]pretty little muzzle[otherwise]blocky, square-jawed muzzle[end if] at the end of your pony face.  Atop your head you have [if cunts of player > 0]long, flowing hair of [pfphair] in colour and made of long, glossy, plastic strands.  It always seems to be properly styled[otherwise]a crop of short, [pfphair] made of glossy, plastic strands[end if][if pfptype is 3].  Poking out from your hair is a short, magical horn - though the best you can manage with it is a couple of sparks[end if]";
	now body entry is "that of a [if cunts of player > 0]slender female[otherwise]stocky male[end if] pony creature with a smooth body and tubular limbs ending in flat and featureless hooves.  And while you are still able to stand upright when you try, your normal posture is to be on all fours.  Your front hooves strangely seem to be able to still pick up or hold things as if they were hands, though only if you don't think about it too much[if pfptype is 3].  Resting against your back are a small pair of feathered wings that seem far too small to lift you.  Your attempts to use them only raise your back up a little[end if]";
	now skin entry is "[fpskindesc]";
	now tail entry is "You have a long and lush tail of [pfphair] hair emerging from a round hole at the base of your spine.  Despite being nothing but long strands of glossy plastic, it swishes and moves on its own, drawing attention to your [if player is fponyskinned][one of]equine bottom[or]sexy ass[or]hot flanks[or]booty mark[at random][otherwise][one of]equine bottom[or]sexy ass[or]hot flanks[at random]";
	now cock entry is "[one of]equine[or]pony[or]horsey[or][pfpcock][at random]";
	now face change entry is "[fponyfacechange]";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "[fponybodychange]";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "[fpskinchange]";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "[fptailchange]";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 15;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "nochange";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 26;			[ The monster's starting hit points. ]
	now lev entry is 3;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;			[ Monster's average damage when attacking. ]
	now area entry is "Everywhere";	[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 10;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 55;			[ Target libido the infection will rise towards. ]
	now loot entry is "pony cider";	[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 22;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]smooth[or][if cocks of player > 0 and cunts of player is 0]stocky[otherwise]slender[end if][or]toyetic[at random]";
	now type entry is "[one of]equine[or]pony[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "fpony";		[ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"fpony"	retaliation rule	--	fpony rule	--	--	--	--	--	--	--

this is the fpony rule:
	choose row monster from table of random critters;
	if a random chance of 2 in 5 succeeds:
		decrease hp of player by wdam entry / 2;
		let libgrowth be wdam entry / 2;
		if facename of player is listed in infections of equinelist, increase libgrowth by 1;
		if "Cold Fish" is listed in feats of player, decrease libgrowth by a random number between 1 and 2;
		if "Horny Bastard" is listed in feats of player, increase libgrowth by a random number between 0 and 2;
		if libgrowth > 10, now libgrowth is 10;
		increase libido of player by libgrowth;
		say "[one of]'We shouldn't fight over this.  Let's be friends!' [or]'I'm sorry.  Let's just snuggle, friend!' [or]'How about we just kiss and make up?' [or]'Let's get to know each other,' [or]'Stop being so grumpy and gimme a kiss,' [or]'I know!  A kiss will cheer you up,' [at random]the pony says, putting her forelegs around you in a hug while you're still recovering from her recent assault.  She pulls you into a kiss for [special-style-2][wdam entry / 2][roman type] damage and [if libgrowth < 5]slightly [end if]increased libido[if hp of player > 0 and lust of player < 110].  You moan softly and reach to grab that ass of hers, but recover your reason and push her back[otherwise].  You moan softly into the kiss and reach back, grabbing that ass of hers right on that design of [rfponybm] on her flank[end if].";

Section 4 - TF mechanics

to say fpskindesc:
	if looknow is 1:
		say "smooth, plasticky flesh without marks of blemishes.  Save for the design of [pfpbootymark] on your [if the player is fponybodied]flanks[otherwise]ass cheeks[end if], you have an even [pfpskin] colour to your";
	otherwise:
		say "[one of][pfpskin][or]plasticky[as decreasingly likely outcomes]";

to say fponybodychange:
	ponystatuscheck;
	say "changes rapidly spread through your body, rendering your body into a smooth and equine shape with tube-like limbs ending in flat, featureless hooves[if pfptype is 3].  There is a stretching at your back as a small pair of feathered wings push their way out[end if]";

to say fponyfacechange:
	ponystatuscheck;
	say "a rush of giddy happiness overtakes you.  Your vision goes blurry and - with a pop and pop - your eyes grows much larger than normal.  As you're adjusting to this, your head changes as well, becoming vaguely equine in shape, in a very simplistic and stylized sort of way[if cunts of player > 0].  A mane of long, [pfphair] hair grows in atop your transformed head[otherwise].  A crop of short, [pfphair] hair grows in atop your transformed head[end if][if pfptype is 3].  There is a final pop as a short horn suddenly pushes out of your forehead with a few sparkles of colour[end if]";

to say fpskinchange:
	ponystatuscheck;
	selectbootymark;
	say "your skin loses any marks or blemishes, becoming as smooth as plastic and turning [pfpskin] in colour.  There's a strange tingling at your hips followed by a strange flash of light.  Looking down at it, you can see that the design of [pfpbootymark] has been emblazoned upon your [if the player is fponybodied]flanks[otherwise]ass cheeks[end if] - your new booty mark";

to say fptailchange:
	ponystatuscheck;
	say "a strange sensation vibrates through it.  Your spine twitches and, with a sudden push and a burst of colour, a lush tail of long, vibrant hair pops out of a hole formed for it.  Your tail is [pfphair] in colour and made of plastic hair";


pfpclist is a list of numbers that varies.  pfpclist is usually { 1, 2, 3, 4, 5, 6, 7, 8 }.
pfptype is a number that varies. pfptype is usually 1.
pfpskin is a text that varies.  pfpskin is normally "baby blue";
pfpcock is a text that varies.  pfpcock is normally "blue";
pfphair is a text that varies.  pfphair is normally "turquoise";
pfpbootymark is a text that varies.  pfpbootymark is normally "a jar of cum";

to ponystatuscheck:
	if player is not fponybodied and player is not fponyfaced:
		if pfptype is 0:
			let pfptype be a random number between 1 and 4;
		otherwise if pfptype is 1 or pfptype is 2:	[earth]
			let pfptype be a random number between 2 and 4;
		otherwise if pfptype is 3:				[pegasus]
			let pfptype be a random number between 2 and 4;
			if pfptype is 3, now pfptype is 2;		[unicorn]
		otherwise if pfptype is 4:
			let pfptype be a random number between 1 and 3;
	if player is not fponytailed and player is not fponyfaced and player is not fponyskinned and player is not fponycocked:
		rotate pfpclist;
		let pfpc be entry 1 in pfpclist;
		if pfpc is 1:
			now pfpskin is "baby blue";
			now pfpcock is "blue";
			now pfphair is "turquoise";
		otherwise if pfpc is 2:
			now pfpskin is "amber";
			now pfpcock is "golden";
			now pfphair is "chartreuse";
		otherwise if pfpc is 3:
			now pfpskin is "pastel green";
			now pfpcock is "mint green";
			now pfphair is "tangerine";
		otherwise if pfpc is 4:
			now pfpskin is "coral";
			now pfpcock is "cerise";
			now pfphair is "magenta";
		otherwise if pfpc is 5:
			now pfpskin is "pale orange";
			now pfpcock is "orange";
			now pfphair is "straw";
		otherwise if pfpc is 6:
			now pfpskin is "raspberry red";
			now pfpcock is "maroon";
			now pfphair is "violet";
		otherwise if pfpc is 7:
			now pfpskin is "lavender";
			now pfpcock is "teal";
			now pfphair is "navy blue";
		otherwise if pfpc is 8:
			now pfpskin is "ivory";
			now pfpcock is "green";
			now pfphair is "lime green";

to selectbootymark:
	now pfpbmlist is {};
	add { "a black dildo", "a red vibrator", "a slice of cream pie", "a jar of cum" } to pfpbmlist;
	if "Junk Food Junky" is listed in feats of player, add "a soda can" to pfpbmlist;
	if "Male Preferred" is listed in feats of player, add "a blue male symbol" to pfpbmlist;
	if "Female Preferred" is listed in feats of player, add "a pink female symbol" to pfpbmlist;
	if "Herm Preferred" is listed in feats of player, add "a purple herm symbol" to pfpbmlist;
	if "Submissive" is listed in feats of player, add "a leather collar" to pfpbmlist;
	if "Cold Fish" is listed in feats of player, add "a fish packed in ice" to pfpbmlist;
	if "Physical Booster" is listed in feats of player, add "a muscly arm" to pfpbmlist;
	if "Mental Booster" is listed in feats of player, add "a throbbing brain" to pfpbmlist;
	if "Cuckold" is listed in feats of player, add "a cuckoo chick in a nest" to pfpbmlist;
	if "Top Dog" is listed in feats of player, add "an alert doberman with a blue ribbon" to pfpbmlist;
	if "Proud Parent" is listed in feats of player, add "a collection of puppies" to pfpbmlist;
	if "Black Belt" is listed in feats of player, add "a gi and black belt" to pfpbmlist;
	if "One Way" is listed in feats of player, add "a one-way street sign" to pfpbmlist;
	if "More Anal" is listed in feats of player, add "a bottle of lube" to pfpbmlist;
	if "Kinky" is listed in feats of player, add "a whip and chains" to pfpbmlist;
	if "Wary Watcher" is listed in feats of player, add "the all-seeing eye" to pfpbmlist;
	if "MPreg" is listed in feats of player, add "an egg stamped with the male symbol" to pfpbmlist;
	if "Sterile" is not listed in feats of player:
		if "Litter Bearer" is listed in feats of player:
			add "several egg cells surrounded by sperm" to pfpbmlist;
		otherwise if "Fertile" is listed in feats of player:
			add "an egg cell surrounded by sperm" to pfpbmlist;
	if "Roughing It" is listed in feats of player, add "a bedroll" to pfpbmlist;
	if "Breasts" is listed in feats of player, add "a pair of coconuts" to pfpbmlist;
	if "Bad Luck" is listed in feats of player, add "a broken mirror" to pfpbmlist;
	if "Curious" is listed in feats of player, add "a magnifying glass examining a sticky cumstain" to pfpbmlist;
	if "City Map" is listed in feats of player or "Open World" is listed in feats of player, add "a map with pushpins in it" to pfpbmlist;
	if "Sterile" is listed in feats of player, add "a tied-off used condom" to pfpbmlist;
	if "Expert Medic" is listed in feats of player, add "a caduceus" to pfpbmlist;
	if "Cock Slap" is listed in feats of player, add "a meaty cock hitting something" to pfpbmlist;
	if "Ball Crush" is listed in feats of player, add "a hefty set of balls cracking the ground" to pfpbmlist;
	if "Boob Smother" is listed in feats of player, add "a giant set of tits around the silhouette of a head" to pfpbmlist;
	if "Microwaved" is listed in feats of player, add "a microwave oven" to pfpbmlist;
	if lust of Sven is 2 or FangWS is 1, add "a pissing horsecock" to pfpbmlist;
	sort pfpbmlist in random order;
	now pfpbootymark is "[entry 1 in pfpbmlist]";


Section 5 - Pony Cider

Table of Game Objects (continued)
name	desc	weight	object
"pony cider"	"A bottle of golden liquid labeled as [']cider[']."	1	pony cider

pony cider is a grab object. It is a part of the player. pony cider is infectious. The strain of pony cider is "Friendship Pony".

The usedesc of pony cider is "[drinkponycider]";

to say drinkponycider:
	choose row monster from table of random critters;
	if "Male Preferred" is listed in feats of player:
		setmonster "Friendship Pony";
		now sex entry is "Male";
	otherwise if "Herm Preferred" is listed in feats of player:
		setmonster "Friendship Pony";
		now sex entry is "Both";
	otherwise:
		setmonster "Friendship Pony";
		now sex entry is "Female";
	say "     Deciding to drink down the cider, you pop the top off and start downing it.  It has a strong, sharp taste to it, heavy with apple and equine flavour.  As well, there is a faint plastic taste despite being stored in a glass bottle.";
	increase libido of player by 5;
	decrease thirst of player by 8;

the scent of pony cider is "The cider smells strongly of apples and equines.";


Section 6 - Definitions

Definition: a person is unpony:
	if the bodyname of the player is "Friendship Pony", no;
	if the facename of the player is "Friendship Pony", no;
	if the skinname of the player is "Friendship Pony", no;
	if the tailname of the player is "Friendship Pony", no;
	if the cockname of the player is "Friendship Pony", no;
	yes;

Definition: a person is fponyfaced:
	if the facename of the player is "Friendship Pony", yes;
	no;

Definition: a person is fponyskinned:
	if the skinname of the player is "Friendship Pony", yes;
	no;

Definition: a person is fponybodied:
	if the bodyname of the player is "Friendship Pony", yes;
	no;

Definition: a person is fponycocked:
	if the cockname of the player is "Friendship Pony", yes;
	no;

Definition: a person is fponytailed:
	if the tailname of the player is "Friendship Pony", yes;
	no;


Section 7 - Endings

when play ends:
	if bodyname of player is "Friendship Pony":
		if humanity of player is less than 10:
			say "     Having your old identity slip away from you, the new instincts of your infection take over.  Your mind is rewritten, filled with thoughts of friendship, kindness and simplistic moral lessons[if pfptype is 4 and the player is fponyfaced].  You also figure out what you were doing wrong and are able to unlock your horn's magic.  After taking a few minutes to enjoy it on yourself, you remember how fun it is to share with friends and trot off to make some[otherwise if pfptype is 3].  Realizing you have wings, you flap them and fly with ease now.  Taking to the air, you go off in search of some friends to play with[otherwise].  Excited at the prospect of making some new friends, you head off to find some[end if].";
			say "     Over the course of your wandering, you inexorably make your way to the fairgrounds.  There you meet up with five other pretty ponies, representing a diverse set of character archetypes who all want to be your friend.  Life with your new friends is wonderful, magical even, because there's nothing better than friends, especially when it's friends with benefits.";
		otherwise:
			say "     When the military comes to pick you up, a few of the tough soldiers can't help but chuckle and crack jokes between themselves at your strange, pony-like body[if player is fponyskinned].  Your booty mark of [pfpbootymark] is a particular source of amusement for them[end if].  You bear with it though, feeling friendly and good-natured about it, probably due to your imminent departure from the infected city.  It's a small price to pay for getting out of there safely even if not unchanged for your experience.";
			say "     Your unusual form draws a different kind of attention from the military's scientists.  They are rather perplexed by some of your body's unusual abilities, such as how you can bend your limps like arms at some times but also use them to trot at others as well as your ability to manipulate objects despite having a flat, featureless hooves instead of hands at the end of your forelimbs[if pfptype is 4 and the player is fponyfaced].  You also start to get the hang of using your horn's magic during this time, but you take care not to show that off, lest you be subject to another battery of tests.  You instead save it for some discrete fun when you're alone and in need of a little telekinetic [']relief['][otherwise if pfptype is 3].  You also start to get the hang of using your tiny wings to fly.  You're not really sure how you're doing it, since they're clearly too small to support you, but as long as you don't think about it too hard, you manage to stay aloft[end if].  You get little in the way of answers to satisfy you, but you remain as pleasant as can be expected until some new surprise from the city distracts them and you're released.";
			if pfptype is 4 and the player is fponyfaced:
				say "     After your release, you put more work into perfecting your talent at using your horn to levitate and manipulate objects, eventually becoming quite talented at it.  As part of your practice, you try manipulating and carving clay, which you find an enjoyable passtime.  As your skill improves, so does your sculpted creations and they start to draw the attention of others.  While there's little demand for art in this new, chaotic world, you do well enough to make a living.  Sexual pieces and renditions of transformed models are certainly the most popular items, with the latter being particularly enjoyable for you as you do so enjoy making friends with your clients.  This keeps them coming back for more in more ways than one.";
			otherwise if pfptype is 3:
				say "     After your release, you put more work into perfecting your flying skills.  At first, you have a few close calls where you think about what you're doing too hard or remember that it's physically impossible and almost crash.  With this in mind, you mainly stick low to the ground over fields until you eventually are able to retain a proper mindset to sustain flight.";
				say "     It is during one of your test flights to higher altitudes that you discover your flight comes with another unusual ability.  You'd decided to fly through a cloud but were surprised to find that it seemed poofy and fluffy in your presence.  Despite being only airborne water vapour, it can be even walked on.  With a little practice you learn how to push the clouds around, kick them to stimulate precipitation or to even prompt a lightning strike from a storm cloud.  As word starts to get around about your ability, you're hired by Zephyr to keep the skies around their helipad clear whenever they need it.  And working with the pilots, you make plenty of friends, many of whom are happy to get extra-friendly with their personal weatherman.";
			otherwise:
				say "     After your release, you wander in search of a new place to call your home.  Eventually you come across a small pear orchard that's been abandoned.  At first, you're a little wary of just moving in, but after a while you figure the residents are coming back one way or another and start sprucing it up more to your liking.  Despite your strange form, you take to the work of maintaining the orchard and working the farmland on the property.  And when others infected with barnyard creature forms, you make friends with them and soon have a motley collection of hired hands to help work the land for you.  Your farm produces food for the nearby communities struggling to function in the midst of the fall of society, helping them be just a little more safe and stable.  You and your new friends live well, if hardworking, lives on this land that you've made yours by your own two hands - er, hooves.  And it's not all work, as there always seems to be time to take a break for a sexy snuggle under a shady pear tree or a romp in the hay.";
			say "     Life with your new friends is wonderful, magical even, because there's nothing better than friends, especially when it's friends with benefits.";


[ Edit this to have the correct creature name as well]
Friendship Pony For FS ends here.