Version 2 of Latex Fox by Nuku Valente begins here.
[Version 2 -- Overhaul - Blue Bishop]

"Adds a Latex Fox creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Latex Fox" } to infections of guy;
	add { "Latex Fox" } to infections of furry;

to say latexfoxdesc:
	setmongender 3; [creature is male]
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	say "     You run into [one of]what appears to be a fox made entirely of latex[or]a latex fox[stopping]. Humanoid in build, its distinctly reddish and white, rubbery skin glistens in the [if daytimer is day]day[else]dim[end if] light. Loudly squeaking and creaking as the creature approaches, he appears very eager to see you, his blatant arousal exposed against the open air.";

to say latexfoxvictory:
	if HP of player > 0:
		say "     Choosing to surrender to the monster, he immediately pounces";
	else:
		say "     Too exhausted to fight any longer, the monster exploits this by suddenly pouncing";
	say " your [if scalevalue of player < 3]smaller, [bodytype of player] form, easily pinning you to the ground[else if scalevalue of player > 3]larger, [bodytype of player] form, bringing you to your knees, though he cannot properly pin you down[else][bodytype of player] form, pinning you to the ground[end if]. Yipping victoriously, he nips at his[if HP of player > 0] compliant[end if] [if scalevalue of player < 4]little[else]'little'[end if] toy, rubbery maw squeaking loudly with each bite.";
	if anallevel > 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 2 succeeds)):
		say "     The latex fox barely checks to see if there's anything obstructing his access before thrusting his tainted, precum-slicked dick between your cheeks, audibly squeaking as it's forced through your anal ring, causing you to squirm and writhe under his[if scalevalue of player > 3] diminutive[end if] weight.";
		say "     Barely needing any time to get warmed up, the creature eagerly pounds your ass, air filled with the sound of his smooth form's creaking and squeaking, matched only by his incessant yipping. Unable to restrain yourself, your [if player is male]own, unattended dick[smn] ache[smv] against the ground[else if player is female]unattended cunt[sfn] ache[sfv] against the open air[else]genderless body aches with an insatiable need[end if].";
		say "     The monster doesn't need long before his motion reaches a fever pitch[if scalevalue of player < 4], body visibly rocking against each motion[end if]. With one final thrust, he forces his thick knot through your hole, loudly yipping as your bowels are pumped full with the twisted fox's rubbery seed";
		if libido of player > 20 and player is not neuter:
			say ". More than enough to set you off as well, you [if player is male]waste your [cum load size of player] load impotently against the ground[else if cunts of player > 1]stain the ground with your neglected pussies['] honey[else]stain the ground with your neglected pussy's honey[end if].";
		else:
			say ". Writhing in a lust-fueled haze, his bliss isn't enough to set you off as well, with the fox showing little interest in helping you.";
		say "     Apparently satisfied, the monster pulls free of you and runs off, yipping happily. It takes you a while to recover from being used by the tainted creature and, eventually, you go about your business once more.[mimpregchance]";
	else if player is female and a random chance of 1 in 2 succeeds:
		say "     The latex fox barely checks to see if there's anything obstructing his access before thrusting his tainted, precum-slicked dick between your cheeks, audibly squeaking as it's forced through[if cunts of player > 1] one of[end if] your cunt[sfn], causing you to squirm and writhe under his[if scalevalue of player > 3] diminutive[end if] weight.";
		say "     Barely needing any time to get warmed up, the creature eagerly pounds your hole, air filled with the sound of his smooth form's creaking and squeaking, matched only by his incessant yipping. Unable to restrain yourself, your [if player is male]own, unattended dick[smn] ache[smv] against the ground[else]stuffed cunt squeezes against the supple and very yielding intrusion[end if].";
		say "     The monster doesn't need long before his motion reaches a fever pitch[if scalevalue of player < 4], body visibly rocking against each motion[end if]. With one final thrust, he forces his thick knot through your supple folds, loudly yipping as your womb is pumped full with the twisted fox's rubbery seed. More than enough to set you off as well, you[if player is male] waste your [cum load size of player] load impotently against the ground[else]r tied pussy oozes with its honey[end if].";
		say "     Apparently satisfied, the monster pulls free of you and runs off, yipping happily. It takes you a while to recover from being used by the tainted creature and, eventually, you go about your business once more.[impregchance]";
	else:
		say "     Almost immediately, your face is assaulted by the latex fox's red, oozing dick. [if HP of player > 0 or player is submissive]Instinctively, you allow it to be[else]Not intent on obliging the monster, he nips and claws at you until you are, tool eventually[end if] forced between your lips, taste awash in the latex flavor of his tainted organ and its precum. The creature only seems to regard fucking your face as far as it being a hole for him to do so, caring little for what you have to offer in favor of thrusting against you in a blind fervor.";
		say "     Tongue made to caress the rubbery cock, you feel its supple, yielding texture, his body loudly squeaking and creaking with each relentless motion. Body aching with a rising need, your [if player is male]own, unattended dick[smn] ache[smv] against the ground[else if player is female]unattended cunt[sfn] ache[sfv] against the open air[else]genderless body aches with an insatiable lust[end if].";
		say "     It doesn't take long before the latex fox goes rigid, forcing his knot in and yipping loudly as his dick sputters its rubbery load down your throat, pinning his crotch firm against your lips and forcing you to swallow down the tainted fluid. After the flood dies down, the creature finally pulls free of you, a string of his latex seed following in its wake.";
		say "     Apparently satisfied, the monster runs off and leaves you, yipping happily. It takes you a while to recover from being used and your lingering, unsated lust. Eventually, you go about your business once more.";

to say latexfoxdefeat:
	if (libido of player > 30 or "Dominant" is listed in feats of player) and (player is female or (player is male and anallevel > 1)):
		say "     Having subdued to the fox, perhaps you should use him to sate your need?";
		if player consents:
			latexfoxdefeatsex;
		else:
			say "     Deciding against it, the creature chooses to run off, yipping in defeat.";
	else:
		say "[one of]With one final lash, the latex fox begins to make a whining sound.[run paragraph on] It appears that the creature is deflating, flumping onto the ground as an inanimate pile of rubber.[run paragraph on] It's unclear if the thing is dead or simply pretending to be to make you leave[or]Striking the critter down, he yips loudly, bouncing off into the distance and away from you[at random]. With the matter attended to, you move on.";

to latexfoxdefeatsex:
	if ( player is female and (cocks of player is 0 or anallevel is 1)) or ( player is herm and a random chance of 1 in 2 succeeds ):
		say "     The critter lays on the ground, his big red knotted cock looking painfully erect. Not wanting to waste such a perfect opportunity, you straddle the fox and slowly ease yourself down. His paws move to your hips, then up to your [bodytype of player] body as you get into position.";
		if cunt length of player < 6:
			say "     As the tip of the fox's shaft reaches[if cunts of player > 1] one of[end if] your opening[sfn], you realize it is far too big for you to accommodate. Seeing your frustration, the fox lets out a long, hissing sigh and seems to shrink in size. You now easily take him right down to the knot.";
		else if cunt length of player < 10:
			say "The fox's shaft slides into you smoothly as you take him all the way to the knot.";
		else:
			say "The fox's little erection slides into you easily, a bit too easily for your liking as it seems too small to give you any real pleasure. Seeing your frustration, the fox takes a large breath and seems to grow in size, filling you completely.";
		say "     Resting comfortably on the fox's knot, you start sliding up and down on his red latex shaft, gradually increasing speed. You feel the knot trying to sneak in on every thrust, but it seems like the knot is just too big to tie to you. You start to think it's a lost cause when suddenly a sharp, blinding pain and a yelp from the Fox lets you know that the knot made it inside and you are indeed tied.";
		say "     As the pain subsides, you are left with an amazing feeling of fullness, gob after gob of thick rubbery jism starting to fill you. The feeling of the thick cum churning inside you is too much and sends you into a screaming orgasm.[impregchance]";
		say "     Eventually, the swollen knot starts to shrink and the fox's spent member slides out of you. Still not satisfied, you position your moist, swollen pussy over the fox's face and descend slowly, dribbling his own cum onto his face. To your surprise, the fox starts eagerly lapping it up, burying his face in your crotch. Bolts of lightning travel through your body as that rubbery tongue seems to find all the right places to lick you. His bright red nose rubbing against your clit is all it takes to send you into another earth-shattering orgasm, spilling the last of his rubbery canid seed into his waiting mouth.";
		say "     Letting out happy little chirps, the fox bounds away. You take the opportunity to rise to a stand, knees still shaking from your multiple orgasms, then get dressed and head off on your way.";
	else:
		say "     Presenting its ass to you, it lets out a plaintive whimper. Needing no more invitation you dive right in.";
		say "     Positioning[if cocks of player > 1] one of[end if] your [cock size desc of player] cock[smn] at the puckered hole, you are amazed as you realize the little fox is leaking what appears to be a small dribble of lubricant from its asshole";
		if cock length of player < 6:
			say ". Your diminutive [cock of player] cock slips right into the fox's waiting asshole. With little effort you start pistoning away; what you lack in size you are more than making up for in force and speed.";
		else if cock length of player < 10:
			say ". Your [cock of player] cock slides into the fox with little effort; the tight, well-lubed hole seems to suck you in even deeper as the fox whimpers in pleasure.";
		else if cock length of player < 15:
			say ". You place the head of your ample [cock of player] cock at the fox's dribbling asshole, slowly increasing the pressure. With a small yelp from the fox you are in, you get the feeling that this little guy could stretch to accommodate a much larger member than you are currently packing.";
		else:
			say ". With a sadistic grin, you point your gargantuan [cock of player] missile at its target. The fox's eyes go wide when it realizes how large you are. He starts trying to crawl away, but you have none of that, grabbing the fox by its ankles and pulling him towards you. The fox's legs stretch elastically as you pull, his poor little asshole straining against your rod. [one of]At last[or]Finally[at random], the fox's rubbery sphincter relaxes enough to let you in, and like a slingshot the fox is instantly impaled on your gigantic penis, obscenely stretching the poor creature all the way to his head. You realize the fox is just fine as he lets out a euphoric yelp and his eyes glaze over, lost in the pleasurable fullness.";
		say "     As you start sliding your [cock size desc of player] shaft in and out, you notice the fox's ass seems to be adjusting to you, stretching and tightening in just the right places to fit your [cock of player] penis perfectly. As this is happening, the fox switches from whimpers and yelps to long, low moans of pleasure as you press your [bodydesc of player] body over his and pound away, his knotted red shaft starting to grow and leak rubbery precum.";
		say "     Nearing orgasm, you pick up the pace, your little red toy drooling in bliss. Fucking the fox like a wild beast, you let out a roar as your [cum load size of player] load pours forth from your tool, lewdly distending the belly of your victim. Not to be left out, the fox starts shooting gobs of thick, rubbery cum onto the ground, pooling around him. Through some effort, you pull your cock out of the little fox with an audible pop[if cock width of player > 40]. Your massive load bloats the rubbery fox, swelling him up like a cum-filled balloon[else if cock width of player > 20]. Your large load causes a noticeable bulge in the rubbery fox, making his tummy look like he swallowed a cum-filled balloon[end if]. The seed you just planted comes spilling out of the abused hole, adding to the already large pool of cum the fox is laying in.";
		say "     With your lust sated, you put on your clothes. Walking away, you smile as you see the little fox lustily wallowing in the pool of cum, occasionally dipping its head to the pool and taking loud slurpy gulps of semen, cooing with satisfaction.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Latex Fox"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]latex fox lunges at you with gleaming rubber fangs and sinks them into your body, growling as it does so[or]fox leaps on you, raking several bloody lines with its claws[or]fox bowls into you, knocking you back painfully as it snarls, exposing sharp rubber teeth[at random].";
	now defeated entry is "[if toystoreoverride is false][latexfoxdefeat][end if]";
	now victory entry is "[if toystoreoverride is false][latexfoxvictory][end if]";
	now desc entry is "[latexfoxdesc]";
	now face entry is "a mixture of a vulpine and human, in a perpetual sneer of exposed teeth, making for an interesting combination"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "mostly human, except for the digitigrade stance of your feet, er, or is that paws? And those claws look dangerous"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "red, black, and white latex covering your"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "You have a long, vulpine tail. It instinctively sways back and forth."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]canine[or]knotted[or]bright red doggy[or]bestial[or]vulpine[at random]"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "your face reforms, vision blocked by a narrow snout, and new ears twitching on top of your head. It appears you now have the head of a fox"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "a wave of itching runs through your body. Humanoid in structure, your legs, however, pop into a new, digitigrade, configuration. Your feet begin to feel cramped before they snap loudly, becoming entirely paws. Your fingers are still itching as sharp little claws slip free of them"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox-like tail curling and flicking energetically"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your cock grows steel hard and begins to throb urgently. It grows increasingly red as it becomes slightly more slender. Soon a thick knot forms at the base, eager to be tied"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 8; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 6;
	now cha entry is 6;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 15;
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 20; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]animalistic[or]vulpine[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]



Section 3 - Endings

when play ends:
	if bodyname of player is "Latex Fox":
		if humanity of player < 10:
			say "     Driven mad with your new, rubbery instincts, you leave the bunker and wander the city, looking for further victims";
			if player is male:
				say ". In time, you find plenty to play with, getting lots of practice with your knotted dick as you tie with them and they become another yapping fox beneath you";
			if player is female:
				say ". A strange pain paralyzes you a few days later and you squat. A small rubbery ball escapes your distended vulva, rapidly growing into another fox being. Driven mad with jealousy, you give the young thing a nip, and it flees off to find its own victims";
			say ". You set up a den at an adult toy manufacturing plant. The stores of latex are wonderfully tasty and you drink some down every day, making you extra [if player is male]virile[else]fertile[end if], increasing the number of other latex foxes you are able to create. The large collection of unshipped products are quite enjoyable as well, both as snacks and as playthings. Despite being relatively weak, the surge in numbers help the latex foxes survive and spread. And while you have little urge to leave your new den, you're quite certain many of your offspring have escaped to spread beyond the city and create dens of their own.";
		else:
			say "     Your vulpine body draws little concern from the military, classified as a weak and inoffensive form. Despite it making your processing much simpler, this does rankle you a little for some reason. After your release, you find work at a toy factory and save some money, eventually opening your own toy manufacturing business - an adult toy company. Running it out of your basement at first, you design and create a variety of molds and toys for the needs of a new, altered customer base among the infected. You get several other transformed individuals to act as models for some of your toys, which is a fun and enjoyable process for all concerned. You also enjoy testing each and every design on yourself, often multiple times, to make sure that it meets your approval. Your small business does well and grows quickly, soon hiring several other latex foxes to help your fledgling enterprise grow to meet the enormous demand for toys of all shapes, sizes and species.";

[ Edit this to have the correct creature name as well]
Latex Fox ends here.
