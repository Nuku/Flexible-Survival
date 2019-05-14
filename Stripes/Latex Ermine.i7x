Version 1 of Latex Ermine by Stripes begins here.
[ Version 1.2 - Player endings w/pure image ]

"Adds a Latex Ermine creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

erminecolor is a number that varies. erminecolor is usually 1.
nolatexerminesex is a number that varies.

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
[Delete the lines with unneeded flags and replace 'Latex Ermine' with your creature's Name entry. Case sensitive.]
	add { "Latex Ermine" } to infections of girl;
	add { "Latex Ermine" } to infections of furry;
	add { "Latex Ermine" } to infections of Latexlist; [list of latex/rubber/PVC skin infections]

to say latexerminedesc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	now erminecolor is a random number between 1 and 5;
	if erminecolor is 1:
		project the figure of LatexErmineBlue_icon;
	else if erminecolor is 2:
		project the figure of LatexErmineTeal_icon;
	else if erminecolor is 3:
		project the figure of LatexErmineGreen_icon;
	else if erminecolor is 4:
		project the figure of LatexErmineRed_icon;
	else if erminecolor is 5:
		project the figure of LatexErminePink_icon;
	say "     Before you is a latex ermine creature with a very feminine physique. Her body is covered by or might even be made of seamless white latex. It is quite smooth and has a soft sheen to it, helping to emphasize her shapely breasts, curvy hips and long legs. She runs her eyes over you with a growing expression of lust, moving her hands across her sexy body as she does. She [one of]gives her breasts a playful squeeze, teasing her nipples[or]starts to finger her slick, stretchable pussy[or]hefts up her breasts with a grin[at random] and licks her lips. Her head and face are shaped like a stoat, but cast in latex and with long lashes and full, cock-sucking lips. Even the [if erminecolor is 1]blue[else if erminecolor is 2]teal[else if erminecolor is 3]green[else if erminecolor is 4]red[else]pink[end if] hair on her head, styled into [one of]a ponytail[or]wavy bangs[or]a bouffant[as decreasingly likely outcomes], is made of latex. Her eyes, nipples and tailtip share the same color of latex as her hair.";
	say "     'Let's snuggle, [one of]cutie[or]hot stuff[or]honey[at random],' she says with a soft, sensual voice and a swish of her long, padded tail. You can tell from that look in her eyes that she's quite intent on more than just snuggling - whether you're willing or not.";

to say le_libidoup:
	if "Cold Fish" is listed in feats of Player:
		increase Libido of Player by a random number between 0 and 3;
	else:
		increase Libido of Player by a random number between 0 and 4;


to say losetolatexermine:
	now nolatexerminesex is 0;
	if HP of Player > 0:
		say "     Pleased that you've finally relented, she pulls you into a kiss, pressing her soft, smooth body against yours. ";
	else:
		say "     Eventually, the temptation she represents become too much for you and you stop resisting. She pulls you into a kiss with a happy giggle, pressing her soft, smooth body against yours. ";
	say "The latex female runs her hands over you, reaching back to grab your ass firmly and give it a squeeze while pushing her tongue into your mouth. You respond by sucking down on the slick intruder and groping her in return. Soon enough, you're rolling around on the ground together, fondling each other with growing lust.";
	if bodyname of Player is "Latex Ermine" and player is pure and player is not neuter:
		if Player is male:
			say "     Finding your latex mustelid body to be just what she's looking for, she eventually ends up stretched out on the ground beneath you with her legs spread and her fingers holding her wet folds open. With such a clear invitation, you grin and line up your [cock size desc of Player] [cock of Player] cock with her pussy and thrust into her. You both release happy moans as her [if Cock Length of Player > 12]latex cunt is stretched wide around your large manhood[else]slick hole takes you easily[end if]. As you pump your [cock of Player] penis into her, you are treated to the sexy sight of her [one of]playing with her plump breasts[or]sucking at one of her lovely nipples[or]slowly teasing her clit[at random]. The feel of her slick, squeezing, latex hole around your cock, made for fucking lovely ermines like her, is wonderful.";
			say "     The pair of you go at it like the lustful mustelids that you are. Her slick, lubricating juices soak both your crotches as she cries out in orgasmic release. This makes her love tunnel quiver around your cock, driving you to plunge your [cock size desc of Player] shaft into her and unleash your [Cum Load Size of Player] load into her[if Ball Size of Player > 6]. Her cunt keeps a tight grip around your cock, ensuring that every last drop of your excessive output remains inside her rapidly swelling tummy. She moans and giggles happily, running her hands over her bulging belly as her latex skin stretches with ease to hold it all[else if Ball Size of Player > 5]. Her cunt forms a tight seal around your cock, keeping every last drop of your large output inside her. She moans and giggles happily as her latex tummy forms a rounded bulge from all the cum you're shooting into her[else]. Her pussy keeps a snug grip around your cock, not letting any of your seed escape from her needy body[end if]. When you're finally done mating the beautiful female, you share some more kisses and groping before finally each heading your own way.";
		else:
			say "     Having a latex mustelid body much like hers, the pair of you make for a very sexy sight as you playfully tease one another. Eventually, you end up in a 69 position each with your muzzles buried into the other's crotch. Taking in the rich, rubbery scent of her juicy cunt, you dive right in, your flexible tongue probing into that wet hole of hers. You moan moments later as the same is done to you.";
			say "     Soon it becomes a playful competition to one up each other, doing all you can with your mouths and fingers to pleasure the other into cumming first. Latex folds are nibbled, hot holes are delved into, clits are licked and sucked[if anallevel > 1], even assholes are tantalizingly fingered and licked[end if] - exciting you both all the more as latex-scented juices run freely from both your well-pleasured cunts[if a random number between 0 and 80 > a random number between 0 and (Libido of Player)]. You end up winning your sexy game as your playmate cums with a happy moan when you [one of]suck hard on her clit[or]tease your latex tailtip against her pussy[or]dive your tongue as deep as you can into her[at random]. Your delight in victory has you cum moments later when she does the same right back to you[else]. You can't hold back any longer when she [one of]stuffs a trio of fingers into your cunt and rubs at your g-spot[or]presses her muzzle to your pussy and licks at your folds wildly[or]nibbles across your thigh while giving your clit a playful pinch[at random]. You release a happy moan as your orgasm fills you with a wave of pleasure, quickly doing the same to your lover to push her over the edge[end if]. In the end, you both are left panting and satisfied, at least for the moment. You share some more kisses and groping before finally each heading your own way.";
	else:
		if Player is male and a random chance of 2 in 3 succeeds:
			say "     Soon enough, you end up on your back with the sexy ermine's lovely breasts nestled around your [cock size desc of Player] [cock of Player] cock. She squeezes them softly against your throbbing flesh before taking a long, slow lick over your manhood. You moan in pleasure, loving the smooth feel of her latex breasts sliding across your erection while watching her play with her [if erminecolor is 1]blue[else if erminecolor is 2]teal[else if erminecolor is 3]green[else if erminecolor is 4]red[else]pink[end if] nipples[if Cock Length of Player > 36]. Her breasts, ample as they are, have trouble encompassing your huge manhood. She rubs them along your pillar of virility, clearly impressed by it[end if]. From time to time, that slick, latex tongue of hers slathers across your shaft, keeping it slick for her bosom to slip against. The happy female's playful fun eventually gets to be too much for you and you cum hard, spraying your [Cum Load Size of Player] load onto yourself and her ivory tits. She gets up with a giggle, rubbing your semen into her smooth flesh before bounding off with a swish of her tail.";
		else:
			say "     Soon enough, you end up on your back with the sexy ermine sitting over your face, pressing her dripping white folds to your lips. The taste of those latex-scented juices is a delight to your sex-addled mind and you dive in, lapping at her juicy pussy to get more. She giggles and grinds down onto your face while [one of]playing with her plump breasts[or]sucking at one of her lovely nipples[or]pinching and squeezing her [if erminecolor is 1]blue[else if erminecolor is 2]teal[else if erminecolor is 3]green[else if erminecolor is 4]red[else]pink[end if] nipples[at random][if Player is not neuter]. You can't resist playing with yourself while eating out the sexy female[end if]. The white ermine moans and giggles in pleasure, eventually growing louder until finally she cries out in ecstasy and a rush of slick juices wash across your tongue and soak your face. Doing your best to lick up as much as you can, you're left wiping her juices from your face and sucking them from your fingers as she heads off with a big grin on her pretty face.";

to say beatthelatexermine:
	if nolatexerminesex > 2 and the remainder after dividing nolatexerminesex by 5 is not 0:
		say "     The ermine girl stumbles backwards from your final blow, falling backwards onto her padded tail with a soft [']meep[']. She makes one last attempt to convince you to play with her with a wanton display, but you wave her off as you have the others of her kind, telling her to leave. She pouts that you're just being a grump and gets up, heading on her way.";
		increase nolatexerminesex by 1;
	else if Player is neuter:
		say "     The ermine girl stumbles backwards from your final blow, falling backwards onto her padded tail with a soft [']meep[']. She makes one last attempt to convince you to play with her, but your genderless body isn't overly tempted by her offer. When you tell her to leave, she pouts that you're just being a grump and gets up, heading on her way.";
	else:
		project the figure of LatexErmine_icon;
		say "     The ermine girl stumbles backwards from your final blow, falling backwards onto her padded tail with a soft [']meep[']. She makes one last attempt to convince you to play with her, [one of]stretching out and posing sexily on the ground[or]rubbing her breasts while licking her lips provocatively[or]fingering her pussy in a wanton display[at random]. '[one of]Won't you claim your prize?' [or]Okay, you win. And to the victor...' [or]Alright, I give up. I'm all yours,' [at random]she says with an alluring purr in her voice.";
		say "     [bold type]Shall you have some fun with the latex lovely or send her packing?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Have some fun.";
		say "     ([link]N[as]n[end link]) - Send her packing.";
		if Player consents:
			now nolatexerminesex is 0;
			if Player is male:
				if a random chance of 2 in 3 succeeds:
					say "     In the mood for some fun after the fight, you pounce onto the ermine girl, pinning her to the ground. She giggles happily and squirms beneath you, rubbing her smooth, ivory skin against you. Between groping her lovely body, you push off your gear and get your cock into position. ";
					if bodyname of Player is "Latex Ermine" and player is pure:
						say "She welcomes your ermine cock into her eagerly, moaning in pleasure as you thrust into her.";
					else:
						say "She struggles briefly as you move in to mount her, but moans in pleasure and ceases her resistance when you penetrate her needy cunt.";
					say "     Sinking your [cock size desc of Player] [cock of Player] cock into the latex woman's stretchable hole, you grab her breasts and start playing with them as you fuck her[if Cock Length of Player > 12]. Her ivory pussy is stretched wide around your large manhood[end if]. You pinch and tease her [if erminecolor is 1]blue[else if erminecolor is 2]teal[else if erminecolor is 3]green[else if erminecolor is 4]red[else]pink[end if] nipples, enjoying the cute squeaks and moans she makes as you do. As you pump your [cock of Player] penis into her, you are treated to the sexy sight of her [one of]slowly teasing her clit[or]sensually licking the colored tip of her thick tail as she hugs it tightly[or]sensually licking her fingers and then running them down her neck and shoulder before giving her nipples a tease as well[at random]. The feel of her slick, squeezing, latex hole around your cock";
					if bodyname of Player is "Latex Ermine" and player is pure:
						say ", made for fucking lovely ermines like her,";
					say " is wonderful.";
					say "     The two of you go at it for quite some time, groping and fondling one another as your excitement builds. Finally, her slick, lubricating juices soak both your crotches as she cries out in orgasmic release. As she cums, her latex tunnel quivers around your shaft, driving you to push yourself fully into her and unleash your [Cum Load Size of Player] load";
					if bodyname of Player is "Latex Ermine" and player is pure:
						say "[if Ball Size of Player > 6]. Her cunt keeps a tight seal around your cock, ensuring that every last drop of your excessive output remains inside her rapidly swelling tummy. She moans and giggles happily, running her hands over her bulging belly as her latex skin stretches with ease to hold it all[else if Ball Size of Player > 5]. Her cunt forms a tight seal around your cock, keeping every last drop of your large output inside her. She moans and giggles happily as her latex tummy forms a rounded bulge from all the cum you're shooting into her[else]. Her pussy keeps a snug grip around your cock, not letting any of your seed escape from her needy body[end if]. Having had your fun with the beautiful female, you share some more kisses and groping before finally letting her go.";
					else:
						say "[if Ball Size of Player > 6]. Her cunt relaxes its grip around your [cock size desc of Player] cock, letting your excessive output flow out around your pulsing shaft. In the end, both your lower bodies are drenched by the copious contents of your huge balls[else if Ball Size of Player > 5]. Her cunt relaxes its grip around your [cock size desc of Player] cock, letting your large output flow out around your pulsing shaft. In the end, both your groins are sticky with the considerable contents of your bloated balls[else]. Her cunt relaxes its grip around your [cock size desc of Player] cock, letting your sticky load flow out around your pulsing shaft and run down her thighs[end if]. Having had your fun with the latex female, you pull out and let her up. You can see the glistening streaks of your cum running down her ivory thighs as she giggles and heads off.";
				else:
					say "     In the mood to blow off a little steam after the fight, you stride over to the cute ermine and press her face to your loins. Faced with your [cock size desc of Player] [cock of Player] cock, she ooos in appreciation and starts licking at it. Her smooth hands stroke your thighs and rub at your ballsack as she takes your [if Cock Length of Player > 24]huge [else if Cock Length of Player > 12]enlarged [end if]shaft into her muzzle[if Cock Length of Player < 13] with ease[end if]. Her slick latex tongue and mouth are a delight as they slide across your [cock of Player] manhood, working it with enthusiasm. She grins happily around your meat, sucking you hard while [one of]fingering her juicy cunt[or]playing with her plump breasts[or]teasing her [if erminecolor is 1]blue[else if erminecolor is 2]teal[else if erminecolor is 3]green[else if erminecolor is 4]red[else]pink[end if] nipples[at random].";
					say "     The ivory beauty provides a wonderful blow job, her latex mouth feeling so nice around your shaft that you have trouble holding out for long. You grit your teeth and try to resist, but soon groan in pleasure as you can't hold back any longer and blast your [Cum Load Size of Player] load down her throat. She happily gulps it all down, not letting a single drop go to waste[if Ball Size of Player > 6], her tummy bloating from your excessive output[else if Ball Size of Player > 5], her tummy visibly rounded by your considerable output[end if]. Only once your balls are drained does she release the vacuum grip her muzzle's been keeping on your shaft and lets it slide free. She licks her latex muzzle as she gets up and heads off with a happy giggle[if Ball Size of Player > 6], bloated tummy sloshing with swallowed cum[else if Ball Size of Player > 5], stuffed belly swishing with swallowed cum[end if].";
			else:
				say "     In the mood to blow off a little steam after the fight, you stride over to the cute ermine and press her face to your loins. Faced with your [cunt size desc of Player] pussy, she ooos in appreciation and starts licking at it. Her smooth hands stroke your thighs and knead your ass as she slides her slick, flexible tongue into your vagina. The latex appendage [one of]alternates between wriggling inside you as she laps at your sensitive spots and thrusting into your dripping hole like a sex toy[or]takes turns with a pair of fingers that she thrusts into your dripping hole[or]alternates between wriggling inside you as she laps at your sensitive spots and slathering across your outer folds and clit[at random]. She [if anallevel is 3 and a random chance of 1 in 3 succeeds]slips a slick finger between your ass cheeks and teases at your back door, sliding it smoothly into your rear to further stimulate you[else]presses a hand between her own legs and you can her the slick sounds of her quickly pumping a few digits into her needy cunt[end if]. Subject to such talented tonguework, you can only hold out for so long before you moan loudly and cry out in lustful release. Gripping her cushiony head, you pull her to your loins to get her to lick as deeply as she can while your pussy quivers around her tongue until your long, drawn out orgasm passes. Having had your fun with the beautiful female, you release her and she heads off, licking her muzzle and rubbing your excess juices over her smooth, alabaster skin.";
		else:
			increase nolatexerminesex by 1;
			say "     Resisting her charms, you tell her to leave. She pouts that you're just being a grump and gets up, heading on her way.";
	if bradfordBountyNum is 5:
		if bradfordbounty > 0:
			LineBreak;
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Latex Ermine";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The latex ermine[or]The latex beauty[or]The curvy ermine[or]The sensual stoat[or]She[at random] [one of]gropes you before you can pull away from her eager grabbing[or]caresses her smooth hands over your [bodytype of Player] body while suggesting you two have some fun together[or]manages to slide in close and rubs her sexy body against yours, tempting you to give in[or]presses her soft, tantalizing melons against you, weakening your resistance to just giving in and playing with her[or]shoves you roughly, calling you a meanie for not playing with her[or]runs her large tail across your [bodydesc of Player] body. Its sensual touch feels very good, making you want to grab that sexy body of hers[at random].[le_libidoup]";
	now defeated entry is "[beatthelatexermine]"; [ Text when monster loses. Change 'latexermine' as above. ]
	now victory entry is "[losetolatexermine]"; [ Text when monster wins. Change 'latexermine' as above. ]
	now desc entry is "[latexerminedesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of an ermine with a sexy smile and bedroom eyes that give alluring glances to all you see. Atop your head is a coiffure of indigo hair formed of latex into a ponytail, matching your indigo eyes";
	now body entry is "slender and sexy[if Player is female] with curvy hips and long legs[else], but with a strong physique[end if]. Your body is quite flexible and will always strike a sexy, or even slutty, pose if you're not careful";
	now skin entry is "seamless white latex";
	now tail entry is "Attached to your rear is a long, tubular tail of white latex that seamlessly changes to indigo at the tip. Your stoat tail feels thick and padded, just right for snuggling in your arms or around someone.";
	now cock entry is "[one of]latex[or]ivory[or]smooth[or]white[or]dildo-like[at random]";
	now face change entry is "your senses get all confused, your vision blurring and your mouth feeling like it's full of something thick and syrupy. Your head seems to go soft and flow as it reforms into latex shaped like a happy ermine with a sexy smile and latex hair";
	now body change entry is "your insides seem to go soft and turn malleable as the transformation begins to take effect. Your body becomes slender and sexy with [if Player is female]curvy hips and long legs[else]a strong physique[end if]. The pliant nature of your insides doesn't seem to quite go away though, leaving you quite flexible";
	now skin change entry is "white latex spreads gradually from your every orifice. It covers your body, turning your skin into a seamless sheen of smooth, sensual ivory rubber[if Nipple Count of Player > 0]. Your nipples turn an indigo color[end if]. The sensation spreads gradually deeper and deeper into you, until you're left feeling like you're latex all the way through";
	now ass change entry is "a thick tube of soft, padded latex forms from the base of your spine. It stretches and swells until you're left with a stoat's tail made of smooth, white latex with an indigo tip";
	now cock change entry is "bubbles up with white latex that flows down over your cock. It seals seamlessly over your manhood and sinks into it, leaving you with a smooth dildo of living latex for a penis";
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 17;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 48; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "High"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Length entry is 12;
	now Cunt Tightness entry is 12;
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sensual[or]sexy[or]slinky[or]flexible[at random]";
	now type entry is "[one of]mustelid[or]ermine[or]stoat[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Endings


when play ends:
	if bodyname of Player is "Latex Ermine":
		if Player is pure and Breast Size of Player > 0:
			project the figure of LatexErmineIndigo_icon;
		if humanity of Player < 10:
			say "     Your latex infection seeps too deeply into your mind and you lose yourself to it. Your thoughts fill with a desire for playful fun and sexual pleasure. You wander the city briefly, having a few flings with those who catch your fancy before eventually ";
			if Player is pure:
				if Player is male:
					say "ending up in the high rise district. There you come across another sexy ermine. She's got the same indigo markings as yours and is very lovely. And she's quite smitten with you as well. Soon you're kissing, snuggling and giggling happily together while fornicating wildly. Your mate becomes quite pregnant from your repeated romps, which makes you all the happier.";
				else if Player is female:
					say "ending up in the high rise district. There you come across another sexy ermine. He's got the same indigo markings as yours and is quite pretty. And he's quite smitten with you as well. Soon you're kissing, snuggling and giggling happily together while fornicating wildly[if Player is impreg_ok]. You become quite pregnant from your repeated romps, which makes you and your mate all the happier.";
				else:
					say "ending up in the high rise district. There you get to know the other latex ermines very well - [']very well[']. You are happy to be playmates with any of them you come across. They're always so nice to you and willing to play despite your own lack of gender. While you never have a mate of your own, you're happy being there for all the others.";
				say "     And things only get more fun when the soldiers pass through the area in search of survivors. The alluring ermines are able to seduce many a soldier away from his squad and you get to participate several times in the fun of converting them into a new sexy ermine[if Player is not neuter]. You and your mate capture a couple of them for you to share and playfully draw out the process so you can savor every moment[end if]. Seeing that smooth white skin spread over them turns you on so much and betting on their final color is a fun game you all get to play.";
			else:
				if Player is female:
					say "being beset by a trio of latex foxes. While not particularly threated by the three weak monsters, the prospect of being the recipient of the attention of three horny males is quite enticing. Allowing them to take you back to their lair, they fuck you repeatedly, pumping latex loads of gooey fox spunk into you. And while you originally intended to leave after the sex, their eagerness endears them to you and you end up staying for a little longer.";
					say "     That [']little longer['] never really seems to run out as you become content to stay with your three vulpine lovers";
					if skinname of Player is "Latex Ermine":
						say ". Over time, the indigo color of your hair and tailtip changes, becoming orange instead to match your lovers";
					else:
						say ". Over time, your skin becomes orange latex like your vulpine lovers, but you remain an ermine";
					say ". You are more than satisfied sexually by them[if Player is impreg_ok], eventually becoming pregnant. You have no way of knowing which of them is the father, but it matters little. You bear these kits and many more for them over the years to come[else] and their eagerness[end if]. Between the three of them, at least one is always available for sex whenever desired.";
				else if Player is male:
					say "being taken by surprise by a human survivor.";
					say "     She has a strange gun that overpowers your latex-filled body. It only takes a few shots for your rubbery body to drop to the ground, barely able to move. At first, she's seems ready to move on, but changes her mind after eyeing your crotch. Despite your insides feeling like mush, a few strokes of her hand gets you hard for her. She rides your cock with moans of pleasure until she orgasms. Having recovered during the romp, you pump a hot load into her while fondling her boobs and sucking on her nipples.";
					say "     But rather than leave you behind after claiming her victory fuck, she prods you at gunpoint to rise. You're marched back to her safe haven inside a warehouse. There she leashes you to a pipe in the office she uses as her room to be kept as a fucktoy plaything by the woman. There are other survivors there as well, mainly infected people, but you rarely get to see them unless your mistress is having sex with them in the office - which always gets you really horny and ready for your next romp with her. You do get to have the occasional threesome fun when she lets one of her other friends play with you.";
				else:
					say "getting captured by a lone soldier. He's quite impressed by your blowjob skills and eventually manages to smuggle you out of the city. You're secretly kept in his basement to provide him with sexual satisfaction whenever needed.";
		else:
			if Player is pure and Breast Size of Player > 0:
				project the figure of LatexErmineIndigo_icon;
			if Player is pure:
				if Player is female:
					say "     After being rescued by the military, you bounce around from job to job for a bit at first. Eventually though, you manage to get a bit part in a television show and that goes well. The director certainly remembers you thanks to the great blow job you gave him after the shooting, and you're called back for another project. After a couple more of these, you're given a spot on a soap opera.";
					if charisma of Player > 17:
						say "     Thanks to your lovely appearance and warm personality, you quickly become a popular character. You exhibit a knack for acting beyond that of most others on the show, really selling what would otherwise be overwrought melodrama. You're given more and more screen time and a greater role in the show as your fanbase increases. You find it a fun job and that shines through in your work. You manage to stay on for several years, an achievement in a type of program that cycles characters in and out nearly as often as they change plot lines. You get to go through several of these, occasionally even as the leading actress in it. And when you leave, you do so for a career of film roles.";
					else if charisma of Player > 14:
						say "     Thanks to your pretty appearance and warm personality, you draw some viewer interest for a while. You turn out to be a prety good actress as well. You're given some added screen time and get into a steamy relationship with one of the male leads... and with his wife. You manage to stay on for a couple of years before eventually getting cycled out for a new character and a new plot line. But it's loads of fun while it lasts and is enough to set you up with some minor film and tv roles to keep you working.";
					else:
						say "     Thanks to your pretty appearance, you make for some nice eye candy for the viewers. And while your acting's little better than that of the other secondaries on the show, you get by well enough. You manage to work yourself into one of the B-plots during your short run - thanks in part to more backstage blow-jobs, this time among the writing staff. It's nothing special, but you find it loads of fun while it lasts and stay in friends with several people from the show afterwards. You don't get much acting work after, though these contacts do get you the occasional minor or background role.";
					say "     Now soap operas of this post-apocalypse world are a little different than those of before. Oh, the same cheesy plot lines and torrid affairs abound, but now the sex is on-screen and frequent. They are lurid, serialized porn shows and your exotic body makes for some particularly sensational television. And several of the others you get to work with are great at their work (at least the lovemaking side of it), more than making up for the eye-rolling dialog or mediocre acting.";
				else if Player is male:
					say "     After being rescued by the military, you bounce around from job to job for a bit at first. Eventually though, you open a small company with some other latex-based people you know. Using your inherent familiarity with the material, you start a line high-quality sex toys. Given the increase in sexual urges people feel, your products turn out to be very popular. Be it to burn through their excessive libido or just some sex toys for the kinky couple, your myriad wares can provide just what your clients need.";
					say "     The near-lifelike quality secretly comes (of course) from the addition of copious amounts of latex spunk from the male partners or slick lubricating juices from the females. This is mixed into the regular latex formula to make the toys just that extra bit better, a little more realistic and a little more responsive. They are treated to ensure they're not infectious so the special ingredient won't be revealed. The occasional special client is given an untreated toy during a company visit though, resulting in another loyal employee providing production material.";
					say "     And it's grand fun on product-testing day.";
				else:
					say "     After being rescued by the military, you bounce around from job to job for a bit at first. Eventually though, you get a job as a cameraman for a female reporter. Your genderless state proves to be an asset on the job, allowing you to stay focused on filming even in the face of some very sexualized material being reported on. You capture some very carnal details, especially when the reporter gets too close to a rogue feral. And given the rather lax broadcast standards of the post-apocalypse era, every detail of her rape, fucking, impregnation and transformation are recorded and televised.";
					say "     The ratings from that special report are so high that you're given your own show. While nominally a news program to report on the wilds of the infection zone, your disposable co-hosts are all picked for their gullibility and are sent into situations where they're very likely to be attacked by sex monsters. You film each of these assaults live with the same attention to detail, making sure every lurid moment is captured for the audience. And while some make it out with vestiges of their humanity intact, many do not and instead join the feral monsters of the wilds. Some of the latter are even lucky enough to be featured on a [']special report['] in which a new partner meets with them for a follow-up interview... leading to you being assigned another hapless partner the next week.";
			else:
				if Player is female:
					say "     After being rescued by the military, you bounce around from job to job for a bit. Eventually though, you are taken on as a secretary to a mid-level bureaucrat at Zephyr. Your happy, friendly personality makes the job fun for you. He doesn't have that much work for you to do either, as most paperwork and messages are handled electronically these days. This means you have more time to socialize and look pretty.";
					say "     One afternoon, your called into your boss's office, and after discussing some minor tasks he wants you to take care of, you decide to show him your appreciation for the job he's given you. He turns out to be quite receptive to your advances and soon enough you're on your knees in front of him sucking his meaty cock. You do such a fine job of it that servicing him is added to your daily duties and you enjoy getting banged by him or blowing him every afternoon. You end up receiving a nice raise upon your next performance review[if Player is impreg_ok] and a big bonus any time he manages to knock you up[end if].";
				else if Player is male:
					say "     After being rescued by the military, you bounce around from job to job for a bit. Eventually though, you find a job working the counter at a sex toy shop. Your exotic form and friendly personality make you popular with the clients. You get to know the regulars and have fun socializing with them while they browse. The store is very well stocked with a wide range of products of all sizes and shapes to suit the broad range of possible client forms and genders of the transformed society.";
					say "     And needing to be able to provide an informed opinion on these wares, you have personally tested many of them. Your boss, a studly lion, has a special room just for that in the back. When things aren't too busy, you've been known to slip back there with one of the regulars for some [']hands-on testing[']... for an added [']restocking['] fee. And while they may not always leave with the item these occasions, you know they'll be back again to test another soon enough.";
				else:
					say "     After being rescued by the military, you bounce around from job to job for a bit. Eventually though, you find a job working as a lab assistant at Zephyr... though the title is a bit of a misnomer. You are assigned to one of their scientists to care for the test subjects he has brought to him. Studying the ferals, those who lost their minds because of the transformation, he needs someone to endure their attentions and wear them out so he can safely collect samples and perform tests.";
					say "     For this task, you do receive some top-notch anti-infection treatments, bolstering your resistance to transformation and mental breakdown, but are then treated as little more than a fucktoy for whatever creature the scientist chooses to study next. Not that it's all bad, as it provides you with a variety of wild lovers to lick, suck or be fucked by for hours of carnal delight. Your latex body also gets treatments to ensure it can take any abuse these creatures can dish out, many of them being quite large or strangely endowed. Somehow it's both very demeaning and satisfying work, as you basically live in the feral pen and are a plaything for whatever beast currently occupies it.";

Latex Ermine ends here.
