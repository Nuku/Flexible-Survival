Version 10 of Skunk by Damaged begins here.
[ Version 10.3 - Relocated to Urban Forest area ]

"Adds male and female Skunks to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

skunkready is a number that varies.
Skunk_type is a number that varies. [if it is 0 it means to pick a new creature type. if it is a 1 it is a skunk girl, if it's a 2 it's a skunkbeast...]
skunkfight is a number that varies.

to say skunk_desc:
	choose row monster from the table of random critters;
	let debit be 0;
	if hardmode is true and level of player > 5, let debit be level of player - 5;
	if a random number from 1 to 10 > 3 or skunkfight is 3 or skunkbeaststatus is 1: [female skunk]
		setmongender 4; [creature is female]
		say "A very female anthropomorphic skunk with hints of animal, its curves and breasts leave you wanting, without any reservations, to fuck it senseless.";
		now Skunk_type is 1;
		now HP entry is 28 + ( debit * 4 ); [- How many HP has the monster got? -]
		now monsterHP is 28 + ( debit * 4 );
		now wdam entry is 6 + ( debit / 3 ); [-Amount of Damage monster Does when attacking.-]
	else: [male skunk]
		setmongender 3; [creature is male]
		say "This skunkbeast would easily pass for a normal animal, if it weren't for two things. One, the creature is the size of a small horse, and two, it's sporting the biggest erection you've ever seen as it waddles around on all fours. Which is a bit less than comforting, with the way it looks into your eyes.";
		now Skunk_type is 2;
		now HP entry is 64 + ( debit * 5 ); [- How many HP has the monster got? -]
		now monsterHP is 64 + ( debit * 5 );
		now wdam entry is 10 + ( ( 4 * debit ) / 11 ); [-Amount of Damage monster Does when attacking.-]
	if bodyname of player is "Skunkbeast Lord":	[skunkbeast player auto-loses]
		now wdam entry is 0;
		now combat abort is 1;
		say "[line break][skunkg vict]";


to say skunk_attack:
	choose row monster from table of random critters;
	if skunkbeaststatus is 1 and bodyname of player is "Skunkbeast Lord":
		say "The skunk girl runs up to you, throwing herself upon you as she seeks her skunkbeast lord's affections.";
		now wdam entry is 0;
		now libido of player is 110;
	else if Skunk_type is 1:
		say "     The [one of]sexy skunk[or]buxom female[or]black and white babe[or]horny skunk[or]skunk girl[at random] [one of]charges at you, bringing her feet forward in a flying kick[or]leaps in and bites at your arm[or]claws at you with her slender paws[or]presses her sexy body to yours with a lustful moan[at random].";
	else:
		say "     The [one of]giant skunk[or]black and white beast[or]bestial skunk[or]skunkbeast[at random] [one of]lunges forward, batting you aside[or]rushes in and bites at your arm[or]claws at you viciously[at random].";


to say skunk vict:
	if skunkready > 2:
		if cunt length of player > 5:
			say "     The large skunk snuffles at the air for something, deciding you're what he's looking for it seems. A huge, heavy paw knocks you down onto your hands and knees, and before you can get back up, the heavy weight pins you down. The large skunkbeast climbs over your [bodydesc of player] body and makes a few attempts to line up his throbbing cock with your hot hole. The thick shaft parts your new black-furred slit, and pounds you wildly!";
			say "     The wild beast uses you for his own pleasure. As your body betrays you, a low groan rising in your throat and you submit to his animalistic mating. You find yourself pushing back and panting, lusting to be taken by this wild creature. You wriggle your rear and ride his cock, but the thick, messy cum that floods your body comes just before you can release, leaving you almost desperate and begging for more. Your womb is plump and warm with his ample load.[impregchance]";
			increase skunkready by 1;
		else if player is female:
			say "     The large skunk snuffles at the air for something and nuzzles at your crotch. As if deciding you're not quite ready yet, he lets his black, gooey tongue slide over your pussy, then push into it, making you moan in pleasure. The powerful beast dives his tongue into you repeatedly, lapping up your juices and sliding his thick, gooey drool into your pussy until you cum hard. You grip his head and stroke his ears, loving the attention this beast is giving you despite yourself and find yourself longing to be ready for him someday soon.";
			follow the sex change rule;
		else:
			say "     The massive skunk sprays thick, oily musk everywhere! Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
		increase skunkready by 1;
	else:
		say "     The massive skunk sprays thick, oily musk everywhere! Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
		infect;
		increase skunkready by 1;

to say skunk defeat:
	if skunkready > 3: [been sprayed or mated a lot]
		let tempnum be a random number between 1 and 10;
		if cunt length of player > 5 and skunkready > tempnum: [ready to take him, chance for final fuck]
			say "     With one last feat of strength, the beast grabs you, lifting itself onto your rear, thrusting madly. You whimper as you find yourself unable to resist as his final rutting brings you to your limit. As your world turns fuzzy, gripped in a rushing orgasm you feel the beast's heated seed spray your inner most parts one last time.[impregchance]"; [rawr final mating]
			increase skunkready by 1;
			infect;
		else:
			say "     The beast reaches out a paw one last time, but before it reaches you the light fades from its eyes.";
	else:
		say "     The beast reaches out a paw one last time, but before it reaches you the light fades from its eyes.";

to say skunk bodyshift:
	if cunts of player > 1:
		say "your body becomes even more feminine, waist slimming, hips widening leaving you with curves that would make anyone, male or female, drool in lust";
	else:
		say "your body becomes more feminine, curves building that make it impossible to define you as anything but female despite what equipment you might have";

to say skunkg vict:
	now skunkfight is 2;
	if skunkbeaststatus is 1:	[skunkbeast lord]
		say "[sblvictorysex]";
	else if player is male and skunkready > 2:
		say "     Victorious, the female skunk grabs your [cock size desc of player] cock and starts pumping at it vigorously. With your [cock of player] meat hard in her paw, she sinks her muzzle down overtop of it. She licks and sucks at your shaft, drooling black goo onto it as you blast your hot load into her muzzle. She licks her lips and swallows your semen down. She grins as the stick, black goo doesn't remain on your skin for long as it smooths out in places and starts to sink into you, leaving behind a soft, almost rubbery-textured fur even as you feel a tingle in your groin.";
		follow the sex change rule;
	else:
		say "The female skunk turns, spraying thick, oily musk everywhere! Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
	increase skunkready by 1;

to say skunkg defeat:
	now skunkfight is 1;
	if skunkbeaststatus is 1:	[skunkbeast lord]
		say "[sblvictorysex]";
	else if a random number from 1 to 100 > 2:
		say "     The skunk girl looks up at you, smiling even as her body seems to turn to liquid, 'I may be gone, but you can still carry His kittens...' she mutters cryptically as she collapses, dissolving completely.";
	else:
		say "     The skunk girl turns to run from you and you relax thinking the fight over, suddenly you realize your error as one last gob of oily musk hits you. Sticky as it is, it doesn't remain on your skin for long as it smooths out in places, leaving behind a soft almost rubbery-textured fur, even as you feel a tingle at your groin.";
		infect "Skunk";

to say skunk_defeat:
	if Skunk_type is 1 or skunkbeaststatus is 1:
		say "[skunkg defeat]";
	else:
		say "[skunk defeat]";
	now Skunk_type is 0;

to say skunk_vict:
	if Skunk_type is 1 or skunkbeaststatus is 1:
		say "[skunkg vict]";
	else:
		say "[skunk vict]";
	now Skunk_type is 0;

to say sblvictorysex:
	now fightoutcome is 11;
	say "     Feeling the instinctual urges of your skunkbeast side, you cannot resist and growl lustfully, welcoming the advances of the buxom skunk. Her beautiful body presses against yours and she runs her paws across your bestial form. Her nimble paws roam around, lavishing attention upon every sensitive spot they can find as she seeks to please her skunkbeast [if player is not male and player is female]lady[else]lord[end if][if skrp is 1]. Your lower head is given several kisses as well, the two skunk girls diving their tongues into each other's muzzle[end if][if player is neuter]. The skunk girl snuggles with you, grooming your body, running her paws all over it and grinding her dripping crotch against your bare groin[end if].";
	if player is not neuter:		[not neuter]
		let randomskunksex be a list of numbers;
		if player is male, add 1 to randomskunksex;
		if player is male, add 1 to randomskunksex; [double-likelihood]
		if player is male, add 2 to randomskunksex;
		if player is female, add 3 to randomskunksex;
		if player is purefemale, add 4 to randomskunksex;
		if player is purefemale, add 4 to randomskunksex; [double-likelihood]
		sort randomskunksex in random order;
		if entry 1 of randomskunksex is 1, say "[sblsex1]";
		if entry 1 of randomskunksex is 2, say "[sblsex2]";
		if entry 1 of randomskunksex is 3, say "[sblsex3]";
		if entry 1 of randomskunksex is 4, say "[sblsex4]";
	sblinfect;


to say sblsex1:		[fuck skunkgirl]
	say "     The skunk girl positions herself on all fours, moaning in need as she raises her fluffy tail as wiggles her round bottom[if skrp is 1]. Your skunkhead body companion grins and licks her lips at the sight of that dripping muff. '[one of]Awwww yeah[or]That's what I'm talkin['] about[or]Let's go[at random]!' she says excitedly[end if]. You are atop the skunk right away, bringing you throbbing prick to her juicy cunt and pressing it deep inside her. She moans loudly and claws at the ground [if cock length of player > 16]as your massive [cock of player] cock pushes into her, stuffing so much her tight belly is stretched out by it[else]as your cock is stuffed into her[end if]. You growl lustfully, pounding into her hard and fast before finally driving deep inside and pumping her full of your hot load.";


to say sblsex2:		[fellatio]
	say "     The skunk runs her paws over your stiff cock, licking and kissing at it before opening her muzzle wide and giving you a blow job[if skrp is 1]. Your lower head moans in pleasure. '[one of]Mmmm... open wide[or]Take it all, slut[or]Suck us good, girl[at random],' she says excitedly[end if]. The skunk's talented muzzle works over your dripping shaft, lavishing attention upon it[if cock length of player > 12] and eventually managing to get the whole big thing stuffed down her throat[end if]. You moan and growl in pleasure at her expert work, eventually cumming hard and blasting your hot seed down her throat, feeding your buxom servant a heavy load of skunk cum.";


to say sblsex3:		[skunkbeast tops player]
	[puts Skunkbeast Lord as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Skunkbeast Lord":
			now monster is y;
			break;
	say "     As the skunk is running her paws over your body in tribute to her [if player is purefemale]mistress[else]master[end if], you notice the scent of another in the air. A skunkbeast snuffles towards you, having been drawn by your scent[if skrp is 1]. The skunk face at your groin smiles at the sight of him. '[one of]Oh, look at how hung he is[or]Just what we need[or]Oh baby[at random]!' she moans excitedly, your shared cunt getting wet at the sight of him[end if]. You rumble happily and shift around and present your rump to him, offering your dripping cunt to the sexy beast. He growls and climbs atop your [bodydesc of player] form, sinking his large cock into your skunkbeast body and stuffing you oh so wonderfully. As he pounds away at you, the skunk girl [if player is male]licks and sucks at your cock until you cum down her throat[else]latches onto one of your nipples, nursing for your milk[end if]. When the skunkbeast atop you finally cums, you both growl loudly, loving the sensation of his ample load being blasted into your needy womb as he seeks to breed you.[impregchance]";


to say sblsex4:		[cunnilingus]
	say "     The skunk runs her paws back towards your hind legs and runs her fingers across your pussy, making it quiver and drip musky fluids. There are a few tentative licks before her muzzle is buried in your muff and her tongue is lavishing attention upon your hot cunt. You [if skrp is 1]and your extra head [end if]moan in pleasure, telling the sexy girl what a fine job she's doing for her mistress. Her tongue darts all over and even into your pussy as far as it can reach. There's the occasional nibble from those sharp teeth that send shivers along your spine while her fingers tease and pinch your clit. She eats you out through several climaxes until you're fully satisfied.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Skunk"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[skunk_attack]";
	now defeated entry is "[skunk_defeat]";
	now victory entry is "[skunk_vict]";
	now desc entry is "[skunk_desc]"; [ Description of the creature when you encounter it.]
	now face entry is "that of a large-muzzled female skunk's"; [ Face description, format as "Your face is (your text)."]
	now body entry is "curvaceous and screams 'female and NEEDS it'. Men want to fuck you, women want to be you... and fuck you"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]dark black fur contrasting with pure white down your front and a matching stripe down your back, completely covering your[else]black and white furred[end if]"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "A thick, black mass of fur blossoms from your rear, growing in size until it's reached just above your head and then bending gracefully near the tip. A pair of white stripes travel up its length, completing the effect."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human-shaped"; [- Cock Description, format as you have a "size" (your text) cock-]
	now face change entry is "black fur moves over your head like a hood, leaving a muzzle that's white on the bottom with a head that's all black, all completed by the pair of rounded ears sitting atop it and a white stripe from the tip of your nose to your back"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "[skunk bodyshift]"; [body change text. format as "Your body feels funny as (your text)."]
	now skin change entry is "a sea of black moves over your back and a sea of white over your chest, while a matching stripe forms down the middle of the black"; [- skin change text. format as "Your skin feels funny as (your text)." -]
	now ass change entry is "the black fur shifts over your ass, squeezing it until it's tight and sexy"; [- ass/tail change text. format as "Your ass feels funny as (your text)." -]
	now cock change entry is "it seems unneeded"; [- cock change text. format as "Your cock feels funny as (your text)." -]
	now str entry is 12;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 19;
	now sex entry is "Female";       [- Defines which sex the infection will try and make you. current options are "Male" "Female" "Both"-]
	now HP entry is 64;              [- How many HP has the monster got? -]
	now lev entry is 5;              [- Level of the Monster, you get this much HP if you win, or this much HP halved if you loose -]
	now wdam entry is 10;            [-Amount of Damage monster Does when attacking.-]
	now area entry is "Forest";      [- Current options are "Outside" and "Mall"  Case sensitive-]
	now cocks entry is 0;            [- How many cocks will the infection try and cause if sex is "Male" or "Both"-]
	now cock length entry is 0;      [- Length infection will make cock grow to if cocks-]
	now cock width entry is 0;       [- Size of balls apparently ;) sneaky Nuku-]
	now breasts entry is 2;          [- Number of Breasts infection will give you. -]
	now breast size entry is 3;      [-Size of breasts infection will try to attain -]
	now male breast size entry is 0; [- Breast size for if Sex="Male", usually zero. -]
	now cunts entry is 1;            [- if sex = "Female or both", indicates the number of female sexes infection will grant you.-]
	now cunt length entry is 14;     [- Length of female sex infection will attempt to give you. -]
	now cunt width entry is 5;       [- Width of female sex infection will try and give you -]
	now libido entry is 10;          [- Amount player Libido will go up if defeated -]
	now loot entry is "skunk goo";   [- Loot monster drops, -]
	now lootchance entry is 70;      [- Chance of loot dropping 0-100 -]
	now scale entry is 3;            [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]slender[or]sensual[or]curvaceous[at random]";
	now type entry is "[one of]skunk[or]mephit[at random]";
	now magic entry is false;        [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;    [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "forestskunk";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"forestskunk"	skunkspray rule	--	--	--	--	--	--	--	--	--

this is the skunkspray rule:
	if a random chance of 1 in 10 succeeds and bodyname of player is not "Skunkbeast Lord":
		skspray;
	else:
		retaliate; [follows the advanced model if alternate]

to skspray:						[ignores defenses, requires no hit, hum/lib check instead to resist]
	choose row monster from table of random critters;
	let checknum be ( humanity of player + ( level of player * 2 ) + ( plmindbonus * 2 ) - libido of player ) * 2;
	if checknum > 180, now checknum is 180;
	let rangenum be 200 + ( monhitbonus + monmindbonus );
	if a random chance of checknum in rangenum succeeds:
		say "The skunk turns around and flashes its tail moments before releasing its spray at you. You move out of the way of the thick, oily musk and cover your mouth and nose, blocking out the strangely tempting scent.";
	else:
		now tempnum is 0;
		if bodyname of player is "Skunk" or bodyname of player is "Skunk Taur", increase tempnum by 1;
		if facename of player is "Skunk" or facename of player is "Skunk Taur", increase tempnum by 1;
		if skinname of player is "Skunk" or skinname of player is "Skunk Taur", increase tempnum by 1;
		if cockname of player is "Skunk" or cockname of player is "Skunk Taur", increase tempnum by 1;
		if tailname of player is "Skunk" or tailname of player is "Skunk Taur", increase tempnum by 1;
		if skunk kit is tamed, increase tempnum by 1;
		if companion of player is skunk kit, increase tempnum by 1;
		let randomizer be ( a random number from 67 to 80 ) + ( tempnum * tempnum * 2 ) + lev entry;
		let dam be ( wdam entry times randomizer ) / 100;
		let libdam be 3 + lev entry + tempnum;
		if libdam > 16, now libdam is 16;
		if face mask is equipped:
			let dam be ( dam * 3 ) / 4;
			let libdam be libdam / 2;
		say "The skunk turns around and flashes its tail moments before releasing its spray at you. You move away from the thick, oily musk, but end up breathing in the rich scent[if face mask is equipped]. Your mask helps block some of it, dampening the effects, though you still find[else], finding[end if] it very arousing. You find yourself tempted by the creature's alluring body and consider just stopping fighting. Your will to keep fighting drops ( [special-style-2][dam][roman type] ) and your lustful, instinctual urges become more powerful.";
		decrease HP of player by dam;
		increase libido of player by a random number between 3 and libdam;
		decrease humanity of player by a random number between 2 and ( ( libdam + 1 ) / 2 );
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 0 and 2;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 2;
	now peppereyes is 0; [pepperspray wears off]
	if libido of player >= 110 or HP of player <= 0 or humanity of player < 10:
		if HP of player <= 0, now fightoutcome is 20;
		if libido of player >= 110, now fightoutcome is 21;
		if humanity of player < 10, now fightoutcome is 21;
		lose;
	else:
		wait for any key;
	rule succeeds;

Section 3 - Skunk heat and Skunk goo

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Skunk"; [ This should be exactly the same as your monster name in the main table]
	now heat cycle entry is 5; [ This is the number of days a heat "cycle" lasts, usually 7 ]
	now heat duration entry is 2; [ This is how many days of the cycle you are actually in heat. default is 1, set it to the same as cycle for permanently in heat.]
	now trigger text entry is "Your need seems to swell suddenly, an ache between your legs causing you to fall down to all fours at its intensity. As you stand there, propped, rear in the air, drooling, only one thought consumes your mind, find a skunk and let fuck it you until you can't move."; [ This is the text that is written to the screen when the player comes into heat]
	now heat start entry is "[skunk heat start]"; [this is a to say block that causes things to happen when the player enters heat. for example the GSD sex grows wider. Delete entire line if you wish nothing to happen.]
	now heat end entry is "[skunk heat end]"; [this is the same as heat start only it's for ending the cycle. GSSD her sex is reduced back to its previous size. Delete entire line if you wish nothing to happen. ]
	now inheat entry is "[skunk in heat]"; [this final say block is triggered every 3 hours the player is in heat. you can use defaultheat or write your own. defaultheat raises libido value by 5 every 3 hours. ]
	now fheat entry is true;
	now mpregheat entry is false;

to say skunk heat start:
	increase cunt width of player by 3;
	increase cunt length of player by 2;

to say skunk heat end:
	decrease cunt length of player by 2;
	decrease cunt width of player by 3;
	if cunt length of player < 1, now cunt length of player is 1;
	if cunt width of player < 1, now cunt width of player is 1;


to say skunk in heat:
	say "[one of]You ache constantly for a male, preferably skunk, but as you think about a large rod pushing into you, you realize that any would do.[or]You need to fuck, again and again and again and again.[or]You need to be filled by a skunk's breeding tool.[or]Thinking becomes harder as the need to mate pushes everything else from your mind.[or]You NEED to fill your cunt NOW![or]'Skunk kittens...' your mind tells you, 'Skunk kittens would be fun to have.'[at random]";
	increase skunkready by 1;
	increase libido of player by a random number between 5 and 10;


Table of Game Objects (continued)
name	desc	weight	object
"skunk goo"	"Black skunk goo on a stick."	1	skunk goo

skunk goo is a grab object.

skunk goo is infectious. The strain of skunk goo is "Skunk".

The scent of skunk goo is "The gooey black gunk smells strongly of skunk.".


Section 4 - Endings

[For endings, see the 'Skunkbeast Lord' file by Stripes.]

[ Edit this to have the correct name as well]
Skunk ends here.
