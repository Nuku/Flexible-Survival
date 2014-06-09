Version 2 of Latex Fox by Nuku Valente begins here.
[Version 2 -- Overhaul - Blue Bishop]

"Adds a Latex Fox creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Latex Fox" } to infections of guy;
	add { "Latex Fox" } to infections of furry;

to say latexfoxvictory:
	if toystoreoverride is false:
		if hp of player > 0:
			say "     Choosing to surrender to the monster, he immediately pounces";
		otherwise:
			say "     Too exhausted to fight any longer, the monster exploits this by suddenly pouncing";
		say " your [if scalevalue of player < 3]smaller, [bodytype of player] form, easily pinning you to the ground[otherwise if scalevalue of player > 3]larger, [bodytype of player] form, bringing you to your knees, though he cannot properly pin you down[otherwise][bodytype of player] form, pinning you to the ground[end if]. Yipping victoriously, he nips at his[if hp of player > 0] compliant[end if] [if scalevalue of player < 4]little[otherwise]'little'[end if] toy, rubbery maw squeaking loudly with each bite.";
		if anallevel is not 1 and (cunts of player is 0 or anallevel is 3) and (a random chance of 1 in 3 succeeds or (anallevel is 3 and a random chance of 1 in 2 succeeds)):
			say "     The latex fox barely checks to see if there's anything obstructing his access before thrusting his tainted precum-slicked dick between your cheeks, audibly squeaking as it's forced through your anal ring, and causing you to squirm and writhe under his[if scalevalue of player > 3] diminutive[end if] weight.";
			say "     Barely needing any time to get warmed up, the creature eagerly pounds your ass, air filled with the sound of his smooth form's creaking and squeaking, matched only by his incessant yipping. Unable to restrain yourself, your [if cocks of player > 0]own, unattended dick[smn] ache[smv] against the ground[otherwise if cunts of player > 0]unattended cunt[sfn] ache[sfv] against the open air[otherwise]genderless body aches with an insatiable need[end if].";
			say "     The monster doesn't need long before his motion reaches a fever pitch[if scalevalue of player < 4], body visibly rocking against each motion[end if]. With one final thrust, he forces his thick knot through your hole, loudly yipping as your bowels are pumped full with the twisted fox's rubbery seed";
			if libido of player > 20 and (cocks of player > 0 or cunts of player > 0):
				say ". More than enough to set you off as well, [if cocks of player > 0]you waste your [cum load size of player] load impotently against the ground[otherwise if cunts of player > 1]you stain the ground with your neglected pussies' honey[otherwise]you stain the ground with your neglected pussy's honey[end if].";
			otherwise:
				say ". Writhing in a lust-fuelled haze, his bliss isn't enough to set you off as well, with the fox showing little interest in helping you.";
			say "     Apparently satisfied, the monster pulls free of you and runs off, yipping happily. It takes you a while to recover from being used by the tainted creature and, eventually, you go about your business once more.[mimpregchance]";
		otherwise if cunts of player > 0 and a random chance of 1 in 2 succeeds:
			say "     The latex fox barely checks to see if there's anything obstructing his access before thrusting his tainted precum-slicked dick between your cheeks, audibly squeaking as it's forced through[if cunts of player > 1] one of[end if] your cunt[sfn], and causing you to squirm and writhe under his[if scalevalue of player > 3] diminutive[end if] weight.";
			say "     Barely needing any time to get warmed up, the creature eagerly pounds your hole, air filled with the sound of his smooth form's creaking and squeaking, matched only by his incessant yipping. Unable to restrain yourself, your [if cocks of player > 0]own, unattended dick[smn] ache[smv] against the ground[otherwise]your stuffed cunt squeezes against the supple and very yielding intrusion[end if].";
			say "     The monster doesn't need long before his motion reaches a fever pitch[if scalevalue of player < 4], body visibly rocking against each motion[end if]. With one final thrust, he forces his thick knot through your supple folds, loudly yipping as your womb is pumped full with the twisted fox's rubbery seed. More than enough to set you off as well, [if cocks of player > 0]you waste your [cum load size of player] load impotently against the ground[otherwise]your tied pussy oozes with its honey[end if].";
			say "     Apparently satisfied, the monster pulls free of you and runs off, yipping happily. It takes you a while to recover from being used by the tainted creature and, eventually, you go about your business once more.[impregchance]";
		otherwise:
			say "     Almost immediately, your face is assaulted by the latex fox's oozing, red dick. [if hp of player > 0 or player is submissive]Instinctively, you allow it to be[otherwise]Not intent on obliging the monster, he nips and claws at you until you are, tool eventually[end if] forced between your lips, taste awash in the bitter latex flavour of his tainted organ and its precum. The creature only seems to regard fucking your face as far as it being a hole for him to do so, caring little for what you have to offer in favour of thrusting against you in a blind fervour.";
			say "     Tongue made to caress the rubbery cock, you feel its supple, yielding texture, his body loudly squeaking and creaking with each relentless motion. Body aching with a rising need, your [if cocks of player > 0]own, unattended dick[smn] ache[smv] against the ground[otherwise if cunts of player > 0]unattended cunt[sfn] ache[sfv] against the open air[otherwise]genderless body aches with an insatiable lust[end if].";
			say "     It doesn't take long before the latex fox goes rigid, forcing his knot in and yipping loudly as his dick sputters its rubbery load down your throat, pinning his crotch firm against your lips and forcing you to swallow down the tainted fluid. After the flood dies down, the finally creature pulls free of you, a string of his latex seed following in its wake.";
			say "     Apparently satisfied, the monster runs off and leaves you, yipping happily. It takes you a while to recover from being used and your lingering, unsated lust. Eventually, you go about your business once more.";

to say latexfoxdefeat:
	if (libido of player > 30 or "Dominant" is listed in feats of player) and (cunts of player > 0 or (cocks of player > 0 and anallevel is not 1)):
		say "     Having subdued to the fox, perhaps you should use him to sate your need?";
		if player consents:
			latexfoxdefeatsex;
		otherwise:
			say "     Deciding against it, the creature chooses to run off, yipping in defeat.";
	otherwise:
		say "[one of]With one final lash, the latex fox begins to make a whining sound.[run paragraph on] It appears that the creature is deflating, flumping onto the ground as an inanimate pile of rubber.[run paragraph on] It's unclear if the thing is dead or simply pretending to be to make you leave[or]Striking the critter down, he yips loudly, bouncing off into the distance and away from you[at random]. With the matter attended to, you move on.";

to latexfoxdefeatsex:
	if ( cunts of player is greater than 0 and (cocks of player is 0 or anallevel is 1)) or ( cunts of player > 0 and cocks of player > 0 and a random chance of 1 in 2 succeeds ):
		say "     The critter lays on the ground, his big red knotted cock looking painfully erect. Not wanting to waste such a perfect opportunity you straddle the fox and slowly ease yourself down. His paws move to your hips, then up to your [bodytype of player] body as you get into position.";
		if cunt length of player is less than 6:
			say "     As the tip of the fox's shaft reaches[if cunts of player > 1] one of[end if] your opening[sfn], you realize it is far too big for you to accommodate. Seeing your frustration the Fox lets out a long hissing sigh, and seems to shrink in size, You now easily take him right down to the knot.";
		otherwise if cunt length of player is less than 10:
			say "The fox's shaft slides into you smoothly as you take him all the way to the knot.";
		otherwise:
			say "The fox's little erection slides into you easily, a bit too easily for your liking as it seems too small to give you any real pleasure. Seeing your frustration the Fox takes a large breath and seems to grow in size, filling you completely.";
		say "     Resting comfortably on the fox's knot you start sliding up and down on his red latex shaft, gradually increasing speed. You feel the knot trying to sneak in on every thrust, but it seems like the knot is just too big to tie to you. You start to think it's a lost cause when suddenly a sharp blinding pain, and a yelp from the Fox lets you know that the knot made it inside and you are indeed tied.";
		say "     As the pain subsides you are left with an amazing feeling of fullness, as gob after gob of thick rubbery jism starts filling you. The feeling of the thick cum churning inside you is too much and sends you into a screaming orgasm.[impregchance]";
		say "     Eventually the swollen knot starts to shrink and the fox's spent member slides out of you. Still not satisfied you position your swollen moist pussy over the fox's face and descend slowly dribbling his own cum onto his face. To your surprise the Fox starts eagerly lapping it up burying his face in your crotch. Bolts of lightning travel through your body as the rubbery tongue seems to find all the right places to lick you. His bright red nose rubbing against your clit is all it takes to send you into another earth shattering orgasm, spilling the last of the rubbery Fox seed into his waiting mouth.";
		say "     Letting out happy little chirps the Fox bounds away, as you stand knees still shaking from your multiple orgasms. You get dressed and head off on your way.";
	otherwise:
		say "     Presenting its ass to you, it lets out a plaintive whimper. Needing no more invitation you dive right in.";
		say "     Positioning[if cocks of player > 1] one of[end if] your [cock size desc of player] cock[smn] at the puckered hole, you are amazed as you realize the little fox is leaking what appears to be a small dribble of lubricant from its asshole";
		if cock length of player is less than 6:
			say ". Your diminutive [cock of player] cock slips right into the fox's waiting asshole. With little effort you start pistoning away, what you lack in size you are more than making up for in force and speed.";
		otherwise if cock length of player is less than 10:
			say ". Your [cock of player] cock slides into the fox with little effort, the tight well lubed hole seems to suck you in even deeper as the Fox whimpers in pleasure.";
		otherwise if cock length of player is less than 15:
			say ". You place the head of your ample [cock of player] cock at the Foxes dribbling asshole slowly increasing the pressure. With a small yelp from the Fox you are in, you get the feeling that this little guy could stretch to accommodate a much larger member than you are currently packing.";
		otherwise:
			say ". With a sadistic grin you point your gargantuan [cock of player] missile at its target. The fox's eyes go wide when it realizes how large you are and starts trying to crawl away. Having none of that, you grab the fox by its ankles and start pulling him towards you. The fox's legs stretch elastically as you pull, his poor little asshole straining against your rod. Finally the fox's rubbery sphincter relaxes enough to let you in, and like a slingshot the fox is instantly impaled on your gigantic penis, obscenely stretching the poor creature all the way to his head. You realize the fox is just fine as he lets out a euphoric yelp and his eyes glaze over lost in the pleasurable fullness.";
		say "     As you start sliding your [cock size desc of player] shaft in and out you notice the fox's ass seems to be adjusting to you, stretching and tightening in just the right places to fit your [cock of player] penis perfectly. As this is happening the fox switches from whimpers and yelps to long low moans of pleasure as you press your [bodydesc of player] body over his and pound away, his red knotted shaft starts growing and leaking rubbery precum.";
		say "     Nearing orgasm you pick up the pace, your little red toy drooling in bliss. Fucking the fox like a wild beast, you let out a roar as [cum load size of player] load pours forth from your tool, lewdly distending the belly of your victim. Not to be left out, the fox starts shooting gobs of thick rubbery cum onto the ground, pooling around him. With some effort you pull your cock out of the little fox with an audible pop[if cock width of player > 40].  Your massive load bloats the rubbery fox, swelling him up like a cum-filled balloon[otherwise if cock width of player > 20].  Your large load causes a noticeable bulge in the rubbery fox, making his tummy look like he swallowed a cum-filled balloon[end if]. The seed you just planted come spilling out of the abused hole adding the the already large pool of cum the fox is laying in.";
		say "     With your lust sated you put on your clothes. Walking away you smile as you see the little fox lustily wallows in the pool of cum, occasionally dipping its head to the pool and taking loud slurpy gulps of semen, cooing with satisfaction.";

to say latexfoxdesc:
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
		now sex entry is "Both";
	say "     You run into [one of]what appears to be a fox made entirely of latex[or]a latex fox[stopping]. Humanoid in build, its distinctly reddish and white, rubbery skin glistens in the [if daytimer is day]day[otherwise]dim[end if] light. Loudly squeaking and creaking as the creature approach, he appears very eager to see you, his blatant arousal exposed against the open air.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Latex Fox";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The latex fox lunges at you with gleaming rubber fangs and sinks them into your body, growling as it does so.[or]The fox leaps on you, raking several bloody lines with its claws.[or]The fox bowls into you, knocking you back painfully as it snarls, exposing sharp rubber teeth.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "MISSING TEXT";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[one of]Yipping victoriously, the fox chews at you with loud squeaky noises. It would be adorable if you weren't in pain everywhere. Eventually the beast tires of chewing at your [bodydesc of player] body with its suddenly soft and noisy teeth, and wanders off, leaving you to pick yourself up and wander back to the bunker, defeated.[or]The fox rolls you over and clambers up on top of your [bodytype of player] form with a feral snarl.[if the cunts of the player is greater than 0]The fox slips his suddenly erect rubber cock into you without further delay, rutting into your [one of]cunt[or]pussy[or]passage[at random] with eager pumps of his hips. You feel something warm and tingling rushing into your body as he knots to your abused gender, remaining on top of you, holding you still until it diminishes.[impregchance] Sated, he rises and departs into the city.[otherwise] He thrusts up against your ass, probing with his hard rubber pecker until he finds his target and sends a whole new pain into your already abused form, starting to claim his dominance over you with happy yelps and growls. He floods your bowels with thick, tingling, seed, but does not knot with you. He draws back and flees, leaving a trail of rubbery looking seed.[mimpregchance][end if][at random]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "You encounter a creature made of glistening latex. It is largely red in colour, but white along its belly and groin. A fox, making squeaking sounds as it moves. It looks happy to see you. By happy we mean hungry.";						[ Description of the creature when you encounter it. ]
	now face entry is "mixture of a vulpine and human, in a perpetual sneer of exposed teeth, making for an interesting combination";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "mostly human, except for the digitigrade stance of your feet, er, or is that paws? And those claws look dangerous";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "red, black, and white latex covering your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long tail, shaped like a fox tail. It instinctively sways back and forth.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]canine[or]knotted[or]bright red doggy[or]bestial[or]vulpine[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your face reforms, vision blocked by a narrow snout, and new ears twitching on top of your head. It appears you now have the head of a fox";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "a wave of itching runs through your body. Humanoid in structure, your legs, however, pop into a new, digitigrade, configuration. Your feet begin to feel cramped before they snap loudly, becoming entirely paws. Your fingers are still itching as sharp little claws slip free of them";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox like tail curling and flicking energetically";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock grows steel hard as it begins to throb urgently. It grows increasingly red as it becomes slightly more slender. Soon a thick knot forms at the base, eager to be tied";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 8;			[ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 6;
	now cha entry is 6;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 15;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 4;			[ Monster's average damage when attacking. ]
	now area entry is "Outside";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 5;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 20;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]animalistic[or]vulpine[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "vulpine";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Endings

when play ends:
	if bodyname of player is "Latex Fox":
		if humanity of player is less than 10:
			say "     Driven mad with your new, rubbery instincts, you leave the bunker and wander the city looking for further victims";
			if the cocks of the player is greater than 0:
				say ". In time, you find plenty to play with, getting lots of practice with your knotted dick as you tie with them and they become another yapping fox beneath you";
			if the cunts of the player is greater than 0:
				say ". A strange pain paralyzes you a few days later and you squat. A small rubbery ball escapes your distended vulva, rapidly growing into another fox being. Driven mad with jealousy, you give the young thing a nip, and it flees off to find its own victims";
			say ". You set up a den at an adult toy manufacturing plant.  The stores of latex are wonderfully tasty and you drink some down every day, making you extra [if cocks of player > 0]virile[otherwise]fertile[end if], increasing the number of other latex foxes you are able to create.  The large collection of unshipped products are quite enjoyable as well, both as snacks and as playthings.  Despite being relatively weak, the surge in numbers help the latex foxes survive and spread.  And while you have little urge to leave your new den, you're quite certain many of your offspring have escaped to spread beyond the city and create dens of their own.";
		otherwise:
			say "     Your vulpine body draws little concern from the military, classified as a weak and inoffensive form. Despite it making your processing much simpler, this does rankle you a little for some reason.  After your release, you find work at a toy factory and save some money, eventually opening your own toy manufacturing business - an adult toy company.  Running it out of your basement at first, you design and create a variety of molds and toys for the needs of a new, altered customer base among the infected.  You get several other transformed individuals to act as models for some of your toys, which is a fun and enjoyable process for all concerned.  You also enjoy testing each and every design on yourself, often multiple times, to make sure that it meets your approval.  Your small business does well and grows quickly, soon hiring several other latex foxes to help your fledgling enterprise grow to meet the enormous demand for toys of all shapes, sizes and species.";

[ Edit this to have the correct creature name as well]
Latex Fox ends here.
