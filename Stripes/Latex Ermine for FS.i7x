Version 1 of Latex Ermine For FS by Stripes begins here.
[ Version 1.1 - Player victory added ]

"Adds a Latex Ermine creature to Flexible Survivals Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses

erminecolour is a number that varies.  erminecolour is usually 1.
nolatexerminesex is a number that varies.

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Latex Ermine' with your creature's name entry.  Case sensitive.]
	add { "Latex Ermine" } to infections of girl;
	add { "Latex Ermine" } to infections of furry;
	add { "Latex Ermine" } to infections of Latexlist;		[list of latex/rubber/PVC skin infections]

to say losetolatexermine:
	now nolatexerminesex is 0;
	if hp of player > 0:
		say "     Pleased that you've finally relented, she pulls you into a kiss, pressing her soft, smooth body against yours";
	otherwise:
		say "     Eventually, the temptation she represents become too much for you and you stop resisting.  She pulls you into a kiss with a happy giggle, pressing her soft, smooth body against yours";
	say ".  The latex female runs her hands over you, reaching back to grab your ass firmly and give it a squeeze while pushing her tongue into your mouth.  You respond by sucking down on the slick intruder and groping her in return.  Soon enough, you're rolling around on the ground together, fondling each other with growing lust.";
	if bodyname of player is "Latex Ermine" and player is pure and (cocks of player > 0 or cunts of player > 0):
		if cocks of player > 0:
			say "     Finding your latex mustelid body to be just what she's looking for, she eventually ends up stretched out on the ground beneath you with her legs spread and her fingers holding her wet folds open.  With such a clear invitation, you grin and line up your [cock size desc of player] [cock of player] cock with her pussy and thrust into her.  You both release happy moans as her [if cock length of player > 12]latex cunt is stretched wide around your large manhood[otherwise]slick hole takes you easily[end if].  As you pump your [cock of player] penis into her, you are treated to the sexy sight of her [one of]playing with her plump breasts[or]sucking at one of her lovely nipples[or]slowly teasing her clit[at random].  The feel of her slick, squeezing, latex hole around your cock, made for fucking lovely ermines like her, is wonderful.";
			say "     The pair of you go at it like the lustful mustelids that you are.  Her slick, lubricating juices soak both your crotches as she cries out in orgasmic release.  This makes her love tunnel quiver around your cock, driving you to plunge your [cock size desc of player] shaft into her and unleash your [cum load size of player] load into her[if cock width of player > 30].  Her cunt keeps a tight grip around your cock, ensuring that every last drop of your excessive output remains inside her rapidly swelling tummy.  She moans and giggles happily, running her hands over her bulging belly as her latex skin stretches with ease to hold it all[otherwise if cock width of player > 20].  Her cunt forms a tight seal around your cock, keeping every last drop of your large output inside her.  She moans and giggles happily as her latex tummy forms a rounded bulge from all the cum you're shooting into her[otherwise].  Her pussy keeps a snug grip around your cock, not letting any of your seed escape from her needy body[end if].  When you're finally done mating the beautiful female, you share some more kisses and groping before finally each heading your own way.";
		otherwise:
			say "     Having a latex mustelid body much like hers, the pair of you make for a very sexy sight as you playfully tease one another.  Eventually, you end up in a 69 position each with your muzzles buried into the other's crotch.  Taking in the rich, rubbery scent of her juicy cunt, you dive right in, your flexible tongue probing into that wet hole of hers.  You moan moments later as the same is done to you.";
			say "     Soon it becomes a playful competition to one up each other, doing all you can with your mouths and fingers to pleasure the other into cumming first.  Latex folds are nibbled, hot holes are delved into, clits are licked and sucked[if anallevel is not 1], even assholes are tantalizingly fingered and licked[end if] - exciting you both all the more as latex-scented juices run freely from both your well-pleasured cunts[if a random number between 0 and 80 is greater than a random number between 0 and (libido of player)].  You end up winning your sexy game as your playmate cums with a happy moan when you [one of]suck hard on her clit[or]tease your latex tailtip against her pussy[or]dive your tongue as deep as you can into her[at random].  Your delight in victory has you cum moments later when she does the same right back to you[otherwise].  You can't hold back any longer when she [one of]stuffs a trio of fingers into your cunt and rubs at your g-spot[or]presses her muzzle to your pussy and licks at your folds wildly[or]nibbles across your thigh while giving your clit a playful pinch[at random].  You release a happy moan as your orgasm fills you with a wave of pleasure, quickly doing the same to your lover to push her over the edge[end if].  In the end, you both are left panting and satisfied, at least for the moment.  You share some more kisses and groping before finally each heading your own way.";
	otherwise:
		if cocks of player > 0 and a random chance of 2 in 3 succeeds:
			say "     Soon enough, you end up on your back with the sexy ermine's lovely breasts nestled around your [cock size desc of player] [cock of player] cock.  She squeezes them softly against your throbbing flesh before taking a long, slow lick over your manhood.  You moan in pleasure, loving the smooth feel of her latex breasts sliding across your erection while watching her play with her [if erminecolour is 1]blue[otherwise if erminecolour is 2]teal[otherwise if erminecolour is 3]green[otherwise if erminecolour is 4]red[otherwise]pink[end if] nipples[if cock length of player > 36].  Her breasts, ample as they are, have trouble encompassing your huge manhood.  She rubs them along your pillar of virility, clearly impressed by it[end if].  From time to time, that slick, latex tongue of hers slathers across your shaft, keeping it slick for her bosom to slip against.  The happy female's playful fun eventually gets to be too much for you and you cum hard, spraying your [cum load size of player] load onto yourself and her ivory tits.  She gets up with a giggle, rubbing your semen into her smooth flesh before bounding off with a swish of her tail.";
		otherwise:
			say "     Soon enough, you end up on your back with the sexy ermine sitting over your face, pressing her dripping white folds to your lips.  The taste of those latex-scented juices is a delight to your sex-addled mind and you dive in, lapping at her juicy pussy to get more.  She giggles and grinds down onto your face while [one of]playing with her plump breasts[or]sucking at one of her lovely nipples[or]pinching and squeezing her [if erminecolour is 1]blue[otherwise if erminecolour is 2]teal[otherwise if erminecolour is 3]green[otherwise if erminecolour is 4]red[otherwise]pink[end if] nipples[at random][if cocks of player > 0 or cunts of player > 0].  You can't resist playing with yourself while eating out the sexy female[end if].  The white ermine moans and giggles in pleasure, eventually growing louder until finally she cries out in ecstasy and a rush of slick juices wash across your tongue and soak your face.  Doing your best to lick up as much as you can, you're left wiping her juices from your face and sucking them from your fingers as she heads off with a big grin on her pretty face.";

to say beatthelatexermine:
	if nolatexerminesex > 2:
		say "     The ermine girl stumbles backwards from your final blow, falling backwards onto her padded tail with a soft [']meep['].  She makes one last attempt to convince you to play with her with a wanton display, but you wave her off as you have the others of her kind, telling her to leave.  She pouts that you're just being a grump and gets up, heading on her way.";
	otherwise if cocks of player is 0 and cunts of player is 0:
		say "     The ermine girl stumbles backwards from your final blow, falling backwards onto her padded tail with a soft [']meep['].  She makes one last attempt to convince you to play with her, but your genderless body isn't overly tempted by her offer.  When you tell her to leave, she pouts that you're just being a grump and gets up, heading on her way.";
	otherwise:
		project the figure of LatexErmine_icon;
		say "     The ermine girl stumbles backwards from your final blow, falling backwards onto her padded tail with a soft [']meep['].  She makes one last attempt to convince you to play with her, [one of]stretching out and posing sexily on the ground[or]rubbing her breasts while licking her lips provocatively[or]fingering her pussy in a wanton display[at random].  '[one of]Won't you claim your prize?' [or]Okay, you win.  And to the victor...' [or]Alright, I give up.  I'm all yours,' [at random]she says with an alluring purr in her voice.  Shall you have some fun with the latex lovely or send her packing?";
		if the player consents:
			now nolatexerminesex is 0;
			if cocks of player > 0:
				if a random chance of 2 in 3 succeeds:
					say "     In the mood for some fun after the fight, you pounce onto the ermine girl, pinning her to the ground.  She giggles happily and squirms beneath you, rubbing her smooth, ivory skin against you.  Between groping her lovely body, you push off your gear and get your cock into position";
					if bodyname of player is "Latex Ermine" and player is pure:
						say ".  She welcomes your ermine cock into her eagerly, moaning in pleasure as you thrust into her.";
					otherwise:
						say ".  She struggles briefly as you move in to mount her, but moans in pleasure and ceases her resistance when you penetrate her needy cunt.";
					say "     Sinking your [cock size desc of player] [cock of player] cock into the latex woman's stretchable hole, you grab her breasts and start playing with them as you fuck her[if cock length of player > 12].  Her ivory pussy is stretched wide around your large manhood[end if].  You pinch and tease her [if erminecolour is 1]blue[otherwise if erminecolour is 2]teal[otherwise if erminecolour is 3]green[otherwise if erminecolour is 4]red[otherwise]pink[end if] nipples, enjoying the cute squeaks and moans she makes as you do.  As you pump your [cock of player] penis into her, you are treated to the sexy sight of her [one of]slowly teasing her clit[or]sensually licking the coloured tip of her thick tail as she hugs it tightly[or]sensually licking her fingers and then running them down her neck and shoulder before giving her nipples a tease as well[at random].  The feel of her slick, squeezing, latex hole around your cock";
					if bodyname of player is "Latex Ermine" and player is pure:
						say ", made for fucking lovely ermines like her,";
					say " is wonderful.";
					say "     The two of you go at it for quite some time, groping and fondling one another as your excitement builds.  Finally, her slick, lubricating juices soak both your crotches as she cries out in orgasmic release.  As she cums, her latex tunnel quivers around your shaft, driving you to push yourself fully into her and unleash your [cum load size of player] load";
					if bodyname of player is "Latex Ermine" and player is pure:
						say "[if cock width of player > 30].  Her cunt keeps a tight seal around your cock, ensuring that every last drop of your excessive output remains inside her rapidly swelling tummy.  She moans and giggles happily, running her hands over her bulging belly as her latex skin stretches with ease to hold it all[otherwise if cock width of player > 20].  Her cunt forms a tight seal around your cock, keeping every last drop of your large output inside her.  She moans and giggles happily as her latex tummy forms a rounded bulge from all the cum you're shooting into her[otherwise].  Her pussy keeps a snug grip around your cock, not letting any of your seed escape from her needy body[end if].  Having had your fun with the beautiful female, you share some more kisses and groping before finally letting her go.";
					otherwise:
						say "[if cock width of player > 30].  Her cunt relaxes its grip around your [cock size desc of player] cock, letting your excessive output flow out around your pulsing shaft.  In the end, both your lower bodies are drenched by the copious contents of your huge balls[otherwise if cock width of player > 20].  Her cunt relaxes its grip around your [cock size desc of player] cock, letting your large output flow out around your pulsing shaft.  In the end, both your groins are sticky with the considerable contents of your bloated balls[otherwise].  Her cunt relaxes its grip around your [cock size desc of player] cock, letting your sticky load flow out around your pulsing shaft and run down her thighs[end if].  Having had your fun with the latex female, you pull out and let her up.  You can see the glistening streaks of your cum running down her ivory thighs as she giggles and heads off.";
				otherwise:
					say "     In the mood to blow off a little steam after the fight, you stride over to the cute ermine and press her face to your loins.  Faced with your [cock size desc of player] [cock of player] cock, she ooos in appreciation and starts licking at it.  Her smooth hands stroke your thighs and rub at your ballsac as she takes your [if cock length of player > 24]huge [otherwise if cock length of player > 12]enlarged [end if]shaft into her muzzle[if cock length of player > 12] with ease[end if].  Her slick latex tongue and mouth are a delight as they slide across your [cock of player] manhood, working it with enthusiasm.  She grins happily around your meat, sucking you hard while [one of]fingering her juicy cunt[or]playing with her plump breasts[or]teasing her [if erminecolour is 1]blue[otherwise if erminecolour is 2]teal[otherwise if erminecolour is 3]green[otherwise if erminecolour is 4]red[otherwise]pink[end if] nipples[at random].";
					say "     The ivory beauty provides a wonderful blow job, her latex mouth feeling so nice around your shaft that you have trouble holding out for long.  You grit your teeth and try to resist, but soon groan in pleasure as you can't hold back any longer and blast your [cum load size of player] load down her throat.  She happily gulps it all down, not letting a single drop go to waste[if cock width of player > 30], her tummy bloating from your excessive output[otherwise if cock width of player > 20], her tummy visibly rounded by your considerable output[end if].  Only once your balls are drained does she release the vacuum grip her muzzle's been keeping on your shaft and lets it slide free.  She licks her latex muzzle as she gets up and heads off with a happy giggle[if cock width of player > 30], bloated tummy sloshing with swallowed cum[otherwise if cock width of player > 20], stuffed belly swishing with swallowed cum[end if].";
			otherwise:
				say "     In the mood to blow off a little steam after the fight, you stride over to the cute ermine and press her face to your loins.  Faced with your [cunt size desc of player] pussy, she ooos in appreciation and starts licking at it.  Her smooth hands stroke your thighs and knead your ass as she slides her slick, flexible tongue into your vagina.  The latex appendage [one of]alternates between wriggling inside you as she laps at your sensitive spots and thrusting into your dripping hole like a sex toy[or]takes turns with a pair of fingers that she thrusts into your dripping hole[or]alternates between wriggling inside you as she laps at your sensitive spots and slathering across your outer folds and clit[at random].  She [if anallevel is 3 and a random chance of 1 in 3 succeeds]slips a slick finger between your ass cheeks and teases at your back door, sliding it smoothly into your rear to further stimulate you[otherwise]presses a hand between her own legs and you can her the slick sounds of her quickly pumping a few digits into her needy cunt[end if].  Subject to such talented tonguework, you can only hold out for so long before you moan loudly and cry out in lustful release.  Gripping her cushiony head, you pull her to your loins to get her to lick as deeply as she can while your pussy quivers around her tongue until your long, drawn out orgasm passes.  Having had your fun with the beautiful female, you release her and she heads off, licking her muzzle and rubbing your excess juices over her smooth, alabaster skin.";
		otherwise:
			increase nolatexerminesex by 1;
			say "     Resisting her charms, you tell her to leave.  She pouts that you're just being a grump and gets up, heading on her way.";


to say latexerminedesc:
	choose row monster from table of random critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
	otherwise if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
	otherwise:
		now sex entry is "Male";
	now erminecolour is a random number between 1 and 5;
	say "     Before you is a latex ermine creature with a very feminine physique.  Her body is covered by or might even be made of seamless white latex.  It is quite smooth and has a soft sheen to it, helping to emphasize her shapely breasts, curvy hips and long legs.  She runs her eyes over you with a growing expression of lust, moving her hands across her sexy body as she does.  She [one of]gives her breasts a playful squeeze, teasing her nipples[or]starts to finger her slick, stretchable pussy[or]hefts up her breasts with a grin[at random] and licks her lips.  Her head and face are shaped like a stoat, but cast in latex and with long lashes and full, cock-sucking lips.  Even the [if erminecolour is 1]blue[otherwise if erminecolour is 2]teal[otherwise if erminecolour is 3]green[otherwise if erminecolour is 4]red[otherwise]pink[end if] hair on her head, styled into [one of]a ponytail[or]wavy bangs[or]a bouffant[as decreasingly likely outcomes], is made of latex.  Her eyes, nipples and tailtip share the same colour of latex as her hair.";
	say "     'Let's snuggle, [one of]cutey[or]hot stuff[or]honey[at random],' she says with a soft, sensual voice and a swish of her long, padded tail.  You can tell from that look in her eyes that she's quite intent on more than just snuggling - whether you're willing or not.";

to say le_libidoup:
	if "Cold Fish" is listed in feats of player:
		increase libido of player by a random number between 0 and 3;
	otherwise:
		increase libido of player by a random number between 0 and 4;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Latex Ermine";
	now attack entry is "[one of]The latex ermine[or]The latex beauty[or]The curvy ermine[or]The sensual stoat[or]She[at random] [one of]gropes you before you can pull away from her eager grabbing[or]caresses her smooth hands over your [bodytype of player] body while suggesting you two have some fun together[or]manages to slide in close and rubs her sexy body against yours, tempting you to give in[or]presses her soft, tantalizing melons against you, weakening your resistance to just giving in and playing with her[or]shoves you roughly, calling you a meanie for not playing with her[or]runs her large tail across your [bodydesc of player] body.  Its sensual touch feels very good, making you want to grab that sexy body of hers[at random].[le_libidoup]";
	now defeated entry is "[beatthelatexermine]";				[ Text when monster loses.  Change 'latexermine' as above. ]
	now victory entry is "[losetolatexermine]";					[ Text when monster wins.  Change 'latexermine' as above. ]
	now desc entry is "[latexerminedesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "that of a ermine with a sexy smile and bedroom eyes that give alluring glances to all you see.  Atop your head is a coiffure of indigo hair formed of latex into a ponytail, matching your indigo eyes";
	now body entry is "slender and sexy[if cunts of player > 0] with curvy hips and long legs[otherwise], but with a strong physique[end if].  Your body is quite flexible and will always strike a sexy, or even slutty, pose if you're not careful";
	now skin entry is "seamless white latex";
	now tail entry is "Attached to your rear is a long, tubular tail of white latex that seamless changes to indigo at the tip.  Your stoat tail feels thick and padded, just right for snuggling in your arms or around someone.";
	now cock entry is "[one of]latex[or]ivory[or]smooth[or]white[or]dildo-like[at random]";
	now face change entry is "your senses get all confused, your vision blurring and your mouth feeling like its full of something thick and syrupy.  Your head seems to go soft and flow as it reforms into latex shaped like a happy ermine with a sexy smile and latex hair";
	now body change entry is "your insides seem to go soft and turn malleable as the transformation begins to take effect.  Your body becomes slender and sexy with [if cunts of player > 0]curvy hips and long legs[otherwise]a strong physique[end if].  The pliant nature of your insides doesn't seem to quite go away though, leaving you quite flexible";
	now skin change entry is "white latex spreads gradually from your every orifice.  It covers your body, turning your skin into a seamless sheen of smooth, sensual ivory rubber[if breasts of player > 0].  Your nipples turn an indigo colour[end if].  The sensation spreads gradually deeper and deeper into you, until you're left feeling like you're latex all the way through";
	now ass change entry is "a thick tube of soft, padded latex forms from the base of your spine.  It stretches and swells until you're left with a stoat's tail made of smooth, white latex with an indigo tip";
	now cock change entry is "bubbles up with white latex that flows down over your cock.  It seals seamlessly over your manhood and sinks into it, leaving you with a smooth dildo of living latex for a penis";
	now str entry is 10;			[ These are now the creature's stats... ]
	now dex entry is 18;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 17;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 48;			[ The monster's starting hit points. ]
	now lev entry is 7;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 7;			[ Monster's average damage when attacking. ]
	now area entry is "High";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 7;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 5;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 12;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sensual[or]sexy[or]slinky[or]flexible[at random]";
	now type entry is "[one of]mustelid[or]ermine[or]stoat[as decreasingly likely outcomes]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Latex Ermine":
		if humanity of player is less than 10:
			say "     You succumb to your latexermine infection.";
		otherwise:
			say "     You survive, but were infected by the latexermine.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Latex Ermine For FS ends here.
