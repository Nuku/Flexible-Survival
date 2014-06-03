Version 1 of Latex Fox by Nuku Valente begins here.
[Version 1 -- Taken from Story.ni file and given dedicated file]

"Adds a Latex Fox creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Latex Fox" } to infections of guy;
	add { "Latex Fox" } to infections of furry;

[Sample loss and victory text templates.]
[Numerous other variations can be found in existing creature files.]
[Change the 'template' in their names here and below to something appropriate to your creature.]

to say latexfoxrape:
	let c be 0;
	if a random number from 40 to 140 is less than libido of player:	[lust check, min 40 to pass]
		let c be 1;
	otherwise:
		say "The latex fox gets an odd expression before a soft hissing is heard. The poor creature slowly sinks to the ground as the air escapes it, softly whining until it is an inanimate pile of latex.";
	if c > 0:
		if ( cunts of player is greater than 0 and cocks of player is 0 ) or ( cunts of player > 0 and cocks of player > 0 and a random chance of 1 in 2 succeeds ):
			say "[latexfoxrapee]";
		otherwise if "Less Anal" is listed in feats of player:
			say "Having beaten the latex fox, you pop its rubbery hide, causing it to deflate into an inanimate pile of latex.";
		otherwise:
			say "The Latex Fox slumps to the ground defeated. Instead of popping like you're used to, the fox rolls onto its stomach, presents its ass to you and lets out a plaintive whimper. Needing no more invitation you dive right in.";
			say "Positioning your [cock size desc of player] cock at the puckered hole, you are amazed as you realize the little fox is leaking what appears to be a small dribble of lubricant from its asshole";
			if cock length of player is less than 6:
				say ". Your diminutive [cock of player] cock slips right into the fox's waiting asshole. With little effort you start pistoning away, what you lack in size you are more than making up for in force and speed.";
			otherwise if cock length of player is less than 10:
				say ". Your [cock of player] cock slides into the fox with little effort, the tight well lubed hole seems to suck you in even deeper as the Fox whimpers in pleasure.";
			otherwise if cock length of player is less than 15:
				say ". You place the head of your ample [cock of player] cock at the Foxes dribbling asshole slowly increasing the pressure. With a small yelp from the Fox you are in, you get the feeling that this little guy could stretch to accommodate a much larger member than you are currently packing.";
			otherwise:
				say ". With a sadistic grin you point your gargantuan [cock of player] missile at its target. The fox's eyes go wide when it realizes how large you are and starts trying to crawl away. Having none of that, you grab the fox by its ankles and start pulling him towards you. The fox's legs stretch elastically as you pull, his poor little asshole straining against your rod. Finally the fox's rubbery sphincter relaxes enough to let you in, and like a slingshot the fox is instantly impaled on your gigantic penis, obscenely stretching the poor creature all the way to his head. You realize the fox is just fine as he lets out a euphoric yelp and his eyes glaze over lost in the pleasurable fullness.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "As you start sliding your [cock size desc of player] shaft in and out you notice the fox's ass seems to be adjusting to you, stretching and tightening in just the right places to fit your [cock of player] penis perfectly. As this is happening the fox switches from whimpers and yelps to long low moans of pleasure as you press your [bodydesc of player] body over his and pound away, his red knotted shaft starts growing and leaking rubbery precum.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "Nearing orgasm you pick up the pace, your little red toy drooling in bliss. Fucking the fox like a wild man, you let out a roar as torrents of cum pour forth from your tool, lewdly distending the belly of your victim. Not to be left out, the fox starts shooting gobs of thick rubbery cum onto the ground, pooling around him. With some effort you pull your cock out of the little fox with an audible pop[if cock width of player > 40].  Your massive load bloats the rubbery fox, swelling him up like a cum-filled balloon[otherwise if cock width of player > 20].  Your large load causes a noticeable bulge in the rubbery fox, making his tummy look like he swallowed a cum-filled balloon[end if]. The seed you just planted come spilling out of the abused hole adding the the already large pool of cum the fox is laying in.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
			say "With your lust sated you put on your clothes. Walking away you smile as you see the little fox lustily wallows in the pool of cum, occasionally dipping its head to the pool and taking loud slurpy gulps of semen, cooing with satisfaction.";
			decrease libido of player by 30;
			if libido of player is less than 0, now libido of player is 0;


to say latexfoxrapee:
	say "The Latex Fox slumps to the ground defeated. The critter lays on the ground, his big red knotted cock looking painfully erect. Not wanting to waste such a perfect opportunity you straddle the fox and slowly ease yourself down.  His paws move to your hips, then up to your [bodytype of player] body as you get into position.";
	if cunt length of player is less than 6:
		say "As the tip of the Foxes shaft reaches your opening, you realize it is far too big for you to accommodate. Seeing your frustration the Fox lets out a long hissing sigh, and seems to shrink in size, You now easily take him right down to the knot.";
	otherwise if cunt length of player is less than 10:
		say "The fox's shaft slides into you smoothly as you take him all the way to the knot.";
	otherwise:
		say "The fox's little erection slides into you easily, a bit too easily for your liking as it seems too small to give you any real pleasure. Seeing your frustration the Fox takes a large breath and seems to grow in size, filling you completely.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "Resting comfortably on the fox's knot you start sliding up and down on his red latex shaft, gradually increasing speed. You feel the knot trying to sneak in on every thrust, but it seems like the knot is just too big to tie to you. You start to think it's a lost cause when suddenly a sharp blinding pain, and a yelp from the Fox lets you know that the knot made it inside and you are indeed tied.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "As the pain subsides you are left with an amazing feeling of fullness, as gob after gob of thick rubbery jism starts filling you. The feeling of the thick cum churning inside you is too much and sends you into a screaming orgasm.[impregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, say "[line break]";	[adds a break after the 'more']
	say "Eventually the swollen knot starts to shrink and the fox's spent member slides out of you. Still not satisfied you position your swollen moist pussy over the fox's face and descend slowly dribbling his own cum onto his face. To your surprise the Fox starts eagerly lapping it up burying his face in your crotch. Bolts of lightning travel through your body as the rubbery tongue seems to find all the right places to lick you. His bright red nose rubbing against your clit is all it takes to send you into another earth shattering orgasm, spilling the last of the rubbery Fox seed into his waiting mouth.";
	say "Letting out happy little chirps the Fox bounds away, as you stand knees still shaking from your multiple orgasms. You get dressed and head off on your way.";
	decrease libido of player by 30;
	if libido of player is less than 0, now libido of player is 0;

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Latex Fox";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The latex fox lunges at you with gleaming rubber fangs and sinks them into your body, growling as it does so.[or]The fox leaps on you, raking several bloody lines with its claws.[or]The fox bowls into you, knocking you back painfully as it snarls, exposing sharp rubber teeth.[at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[latexfoxrape]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[one of]Yipping victoriously, the fox chews at you with loud squeaky noises. It would be adorable if you weren't in pain everywhere. Eventually the beast tires of chewing at your [bodydesc of player] body with its suddenly soft and noisy teeth, and wanders off, leaving you to pick yourself up and wander back to the bunker, defeated.[or]The fox rolls you over and clambers up on top of your [bodytype of player] form with a feral snarl.[if the cunts of the player is greater than 0]The fox slips his suddenly erect rubber cock into you without further delay, rutting into your [one of]cunt[or]pussy[or]passage[at random] with eager pumps of his hips. You feel something warm and tingling rushing into your body as he knots to your abused gender, remaining on top of you, holding you still until it diminishes.[impregchance] Sated, he rises and departs into the city.[otherwise] He thrusts up against your ass, probing with his hard rubber pecker until he finds his target and sends a whole new pain into your already abused form, starting to claim his dominance over you with happy yelps and growls. He floods your bowels with thick, tingling, seed, but does not knot with you. He draws back and flees, leaving a trail of rubbery looking seed.[mimpregchance][end if][at random]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "You encounter a creature made of glistening latex. It is largely red in colour, but white along its belly and groin. A fox, making squeaking sounds as it moves. It looks happy to see you. By happy we mean hungry.";						[ Description of the creature when you encounter it. ]
	now face entry is "mixture of a vulpine and human, in a perpetual sneer of exposed teeth, making for an interesting combination";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "mostly human, except for the digitigrade stance of your feet, er, or is that paws? And those claws look dangerous";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "red, black, and white latex covering your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a long tail, shaped like a fox tail, but made entirely of rubber. It squeaks as it sways back and forth.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "[one of]canine[or]knotted[or]bright red doggy[or]bestial[at random]";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your face reforms, vision blocked by a narrow fox like snout, and new ears twitching on top of your head";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "a wave of itching runs through the meat of your body as your legs pop into a new, digitigrade, configuration. Your feet begin to feel cramped before they snap loudly, becoming entirely paws. Your fingers are still itching as sharp little claws slip free of them";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox like tail curling and flicking energetically";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your cock grows steel hard as it begins to throb urgently. It grows increasingly red as it becomes slightly more slender. Soon a [cock width of player] inch knot forms at the base, ready to tie you to a willing, or not, partner";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
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
	now cunts entry is 4;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 20;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]animalistic[or]sexy[at random]";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
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
				follow the cock descr rule;
				say ".  You find a few females to practice your [descr] manliness on, enjoying your new knot as it ties you to them and they become another yapping fox beneath you";
			if the cunts of the player is greater than 0:
				say ".  A strange pain paralyzes you a few days later and you squat. A small rubbery ball escapes your distended vulva, rapidly growing into another fox being. Driven mad with jealousy, you give the young thing a nip, and it flees off to find its own victims";
			say ".  You set up a den at an adult toy manufacturing plant.  The stores of latex are wonderfully tasty and you drink some down every day, making you extra [if cocks of player > 0]virile[otherwise]fertile[end if], increasing the number of other latex foxes you are able to create.  The large collection of unshipped products are quite enjoyable as well, both as snacks and as playthings.  Despite being relatively weak, the surge in numbers help the latex foxes survive and spread.  And while you have little urge to leave your new den, you're quite certain many of your offspring have escaped to spread beyond the city and create dens of their own.";
		otherwise:
			say "Your vulpine body draws little concern from the military, classified as a weak and inoffensive form.  Despite it making your processing much simpler, this does rankle you a little for some reason.  After your release, you find work at a toy factory and save some money, eventually opening your own toy manufacturing business - an adult toy company.  Running it out of your basement at first, you design and create a variety of molds and toys for the needs of a new, altered customer base among the infected.  You get several other transformed individuals to act as models for some of your toys, which is a fun and enjoyable process for all concerned.  You also enjoy testing each and every design on yourself, often multiple times, to make sure that it meets your approval.  Your small business does well and grows quickly, soon hiring several other latex foxes to help your fledgling enterprise grow to meet the enormous demand for toys of all shapes, sizes and species.";

[ Edit this to have the correct creature name as well]
Latex Fox ends here.
