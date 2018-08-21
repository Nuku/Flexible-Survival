Version 10 of Herm Hyena by Guest Writers begins here.
[ Version 10 - Player victory menu w/new scenes ]
[- Originally Authored By: Anony Mouse -]

"Adds a Herm Hyena to Flexible Survival's Wandering Monsters table, With Impreg chance"
[Description text for this Extension.]

Section 1 - Monster Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

to say herm hyena attack:
	if wslevel is not 1 and ( a random chance of ( wslevel * wslevel ) in 25 succeeds ):
		say "     [if HP of player > 0]Having given up[else]Unable to continue[end if] the fight, you are thrown to the ground by the victorious hyena as she gives a barking laugh. Grabbing your head, she pulls your face to her crotch and shoves her manhood into your mouth. The dark penis has a strong taste to it that is soon overwhelmed by the acrid flow of her piss into your mouth. You try to pull back in surprise, but she's got too firm a grip on your head. In the end, you're forced to swallow down her salty, bitter urine while she laughs mockingly. When she's done, she makes it a point to smear her wet cock across your cheeks, further marking you with her scent. It is quite some time before you're able to clear the taste of her from your mouth.";
	else if player is female:
		say "     She lets out a victorious laugh and quickly throws you to the ground, stripping you as you fall. You can only stare wide-eyed as she slowly strips, enjoying the anticipation (and the look on your face) as much as possible. When her black, knotted spear finally pops free she gasps with pleasure and grabs your legs, pulling you cunt-first toward her waiting shaft. She begins pumping torturously slowly, ponderously drawing her cock out before slamming it back in while her paws roam over your [bodytype of player] form. Eventually, you can't take it anymore and begin whimpering for release. Taking that as the sign of your complete submission, she begins fucking you with wild abandon. Very soon you are both howling with pleasure as she is pounding your [cunt size desc of player] snatch like a jackhammer, knot pressing urgently against your entrance with each thrust. With one final thrust she slips her knot inside you, bringing you both to a screaming orgasm as she paints your womb white with her seed. 'You're pretty good, come and see me again some time if you wanna fool around some more,' she says as she slips her clothes back on and walks off, leaving you panting in a puddle of fluids.[impregchance]";
	else:
		say "     She laughs loudly, stripping you stark naked in the blink of an eye. As she eyes your nude form she seems a bit disappointed at what she sees, or rather, what she doesn't see. But, you've got two other perfectly good holes and she intends to make use of one of them. You've just got a brief moment while she's tossing aside her clothes to free her large, knotted cock. Will you move in to use your mouth (Y) or offer up your ass (N)?";
		if player consents:
			say "     Opting to use your mouth over risking ending up with that knotted shaft in your anus, you take a hold of her cock. Putting a paw on your head, she presses it against your lips. You obey her and open your mouth, letting her shaft in as you begin to softly suck her head. Her eyes glaze over and her tongue lolls out of her mouth as you begin to bob up and down on her shaft, licking and sucking as you go. Soon you find your lips bumping against her rapidly growing knot, and when you decide to engulf it you are rewarded with a sharp cry of pleasure from your [']rapist[']. She begins to rapidly pant and moan as her knot swells far larger than you anticipated, locking it in your mouth. Suddenly, she howls loudly and orgasms, flooding your throat with her seed as her knot forces you to swallow it all. 'Not bad, I haven't had head that good in a long time. If we run into each other again we can pick up from here,' she says, dressing herself and walking away. At the moment all you can do in response is gurgle, your belly feeling bloated from her ample load.";
		else:
			say "     Deciding you'd prefer to let the sexy hyena mount you, you move onto all fours and offer your ass to the victorious creature. She grins and gives your ass a slap before moving into position atop you. Her cock leaks pre against your tight hole, which she smears around before pushing a few inches into you. You moan in a mix of pain and pleasure as she starts pounding into you with increasing zeal, working her large shaft further and further into your [bodydesc of player] body. [if scalevalue of player <= 3]Wrapping her arms around you, she pulls you to sit in her lap and bucks hard and fast into you, letting gravity force you down onto her big knot until she ties with you and fills your bowels with her seed. Once her knot goes[else]Gripping the sides of your large body, she pounds hard and fast into you until she can stretch you out enough to take her big knot. Once tied with you, you can feel her hot semen rushing into your bowels. When the knot's gone[end if] down enough, she pulls free, leaving you still feeling quite bloated from her ample load even after the removal of her cock and the large amount of cum that's leaked out of your spread asshole. She gives your ass another spank as she leans over to pick up her clothes. 'Mmm... not bad. You've got a fine piece of ass there. I hope to run into you again sometime soon.' After dressing herself, she heads on her way. All you can do in response is moan softly, your backside feeling quite tender, but pleasantly warm and stuffed as well.[impregchance]";

to say beatthehyena:
	say "     With a bit of delirious sounding laughter the Herm Hyena hits the ground, momentarily passing out. This leaves you free to leave... or to have some fun with the horny herm.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the hyena";
		now sortorder entry is 1;
		now description entry is "screw the horny herm";
	[
	choose a blank row in table of fucking options;
	now title entry is "Get a blow job";
	now sortorder entry is 4;
	now description entry is "make the horny herm blow you";
	]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride the herm's cock - vaginal";
		now sortorder entry is 2;
		now description entry is "get that knotted cock in your pussy";
	[
		choose a blank row in table of fucking options;
		now title entry is "Get eaten out";
		now sortorder entry is 5;
		now description entry is "get the hyena to lick your snatch";
	]
	choose a blank row in table of fucking options;
	now title entry is "Ride the herm's cock - anal";
	now sortorder entry is 3;
	now description entry is "stuff that knotted cock up your ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck hyena cock";
	now sortorder entry is 6;
	now description entry is "suck a load from that sexy black cock of hers";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				now sextablerun is 1;
				if title entry is:
				-- "Fuck the hyena":
					say "[beatthehyena01]";
				-- "Ride the herm's cock - vaginal":
					say "[beatthehyena02]";
				-- "Ride the herm's cock - anal":
					say "[beatthehyena03]";
				-- "Get a blow job":
					say "[beatthehyena04]";
				-- "Get eaten out":
					say "[beatthehyena05]";
				-- "Suck hyena cock":
					say "[beatthehyena06]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You resist the urge to indulge your base urges and leave the hyena passed out.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;



to say beatthehyena01:	[player tops]
	say "     Allowing the temptation of your arousal to decide, you approach the incapacitated herm cautiously. You open her jeans and expose her crotch, taking in the sight of her hard cock, hefty balls and more to the point, her wet pussy under those furry balls. Your [cock size desc of player] cock aches for relief and the hyena will do fine for sating those needs. You stroke your stiff erection as you kneel atop her, raising her balls and fully exposing her pussy before thrusting into her.";
	if cock length of player > 17 or cock width of player > 9:
		say "     She moans a little in discomfort as you drive your huge cock into her, but eventually stretches open to take you. You feel little urge to hold back, something about her aroused scent making you want to take her rough and fast. Her belly bulges from the size of the manmeat you're driving into her and soon enough her moaning turns to sounds of lustful pleasure as you bang away at her wet hole. Still in a semi-conscious state, her body is yours to use and your sex-addled mind is intent on using it as your own fucktoy. Each hard thrust you make into her causes her hard cock to bound against her belly and spill out more pre into her fur.";
	else:
		say "     As you pump your [cock of player] cock into her deep pussy, you feel little urge to hold back, something about her aroused scent making you want to take her rough and fast. Soon enough, she is releasing moaning sounds of lustful pleasure as you bang away at her wet hole. Still in a semi-conscious state, her body is yours to use and your sex-addled mind is intent on using it as your own fucktoy. Each hard thrust you make into her causes her hard cock to bound against her belly and spill out more pre into her fur.";
	say "     Your pace is hard and fast, rocking her body and slapping your balls against her. You grab her hips to keep her from sliding across the ground and redouble your efforts. As your peak is building, you notice that she's come to, but makes no attempt to resist your forceful fucking. She moves a paw to her breast and the other to her cock, stroking them as she closes her eyes, lost in lustful pleasure of being taken by a more powerful [if player is not female]male[else]herm[end if]. When your orgasm is reached, you grab her hips firmly and drive your [cock of player] cock deep inside her, unleashing your hot seed to paint her womb with your virile seed[if cock width of player > 10], bloating her belly with your ample seed[end if]. She cums hard as well, soaking you in her juices and spraying her seed across her body before passing out. You withdraw and leave her like that, unconscious and reeking of sex.";

to say beatthehyena02:	[ride - vaginal]
	say "     Allowing the temptation of your arousal to decide, you approach the incapacitated herm cautiously. You open her jeans and expose her crotch, taking in the sight of her hard cock, hefty balls and her wet pussy under those furry balls. Your pussy quivers at the sight of it of her black-skinned meat and you find yourself with an overwhelming need to have it inside you. You promise yourself you'll only ride it a bit and pull out before she cums. Just enough to take the edge off your lustful need.";
	if cunt width of player < 3 or cunt length of player < 6:
		say "     Moving your [cunt size desc of player] cunt into position over that rather canine pole, you stroke it to full hardness while trying to slowly ease yourself down onto it. It is slow going at first, the large shaft difficult to get inside you. You keep at it though, feeling more and more aroused and unwilling to stop what you've started until you've had it all. And in time, you do manage to get your dripping pussy lips rubbing against that engorged knot. Having completely forgotten your earlier promise in your lustful need, you grind your hips down hard, groaning through gritted teeth as you get that knot popped inside you. This sends you crashing over the edge into orgasmic bliss, further heightened as the dazed hyena beneath you cums hard as well, blasting her hot load into your waiting womb. It's quite some time before her knot goes down and you're able to pop free. A big splash of hyena cum soaks your erstwhile lover's crotch as it overflows out of you, though you can certainly feel plenty of it still resting inside you.[impregchance]";
	else:
		say "     Moving your [cunt size desc of player] cunt into position over that rather canine pole, you stroke it to full hardness while trying to slowly ease yourself down onto it. You go gradually at first, but are soon riding eagerly up and down the large shaft. Having that big, throbbing meat inside you makes you more and more aroused and unwilling to stop what you've started until you've had it all. Soon enough, you manage to get your dripping pussy lips rubbing against that engorged knot. Having completely forgotten your earlier promise in your lustful need, you grind your hips down hard, groaning through gritted teeth as you get that knot popped inside you. This sends you crashing over the edge into orgasmic bliss, further heightened as the dazed hyena beneath you cums hard as well, blasting her hot load into your waiting womb. It's quite some time before her knot goes down and you're able to pop free. A big splash of hyena cum soaks your erstwhile lover's crotch as it overflows out of you, though you can certainly feel plenty of it still resting inside you.[impregchance]";

to say beatthehyena03:	[ride - anal]
	say "     Allowing the temptation of your arousal to decide, you approach the incapacitated herm cautiously. You open her jeans and expose her crotch, taking in the sight of her hard cock, hefty balls and her wet pussy under those furry balls. Just the sight of that dark-skinned meat makes your ass feel empty and you have an overwhelming need to have it inside you. You promise yourself you'll only ride it a bit and pull out before she cums. Just enough to take the edge off your lustful need.";
	if scalevalue of player < 3 and player is not twistcapped:
		say "     Moving your ass into position over that rather canine pole, you stroke it to full hardness while trying to slowly ease yourself down onto it. It is slow going at first, the large shaft difficult to get inside your [body size of player] rear. You keep at it though, feeling more and more aroused and unwilling to stop what you've started until you've had it all. And in time, you do manage to get your tight sphincter rubbing against that engorged knot. Having completely forgotten your earlier promise in your lustful need, you grind your hips down hard, groaning through gritted teeth as you get that knot popped inside you[if player is male] and pressed delightfully against your prostate[end if]. This sends you crashing over the edge into orgasmic bliss, further heightened as the dazed hyena beneath you cums hard as well, blasting her hot load into quivering bowels. It's quite some time before her knot goes down and you're able to pop free. A big splash of hyena cum soaks your erstwhile lover's crotch as it overflows out of you, though you can certainly feel plenty of it still resting inside you.[mimpregchance]";
	else:
		say "     Moving your ass into position over that rather canine pole, you stroke it to full hardness while trying to slowly ease yourself down onto it. You go gradually at first, but are soon riding eagerly up and down the large shaft. Having that big, throbbing meat inside you makes you more and more aroused and unwilling to stop what you've started until you've had it all. Soon enough, you manage to get your tight sphincter rubbing against that engorged knot. Having completely forgotten your earlier promise in your lustful need, you grind your hips down hard, groaning through gritted teeth as you get that knot popped inside you[if player is male] and pressed delightfully against your prostate[end if]. This sends you crashing over the edge into orgasmic bliss, further heightened as the dazed hyena beneath you cums hard as well, blasting her hot load into your quivering bowels. It's quite some time before her knot goes down and you're able to pop free. A big splash of hyena cum soaks your erstwhile lover's crotch as it overflows out of you, though you can certainly feel plenty of it still resting inside you.[mimpregchance]";


to say beatthehyena04:	[get blow job]
	say "";

to say beatthehyena05:	[get cunnilingus]
	say "";

to say beatthehyena06:	[give blow job]
	say "     Deciding to give into temptation, you approach the incapacitated herm cautiously. You open her jeans and expose her crotch, taking in the sight of her hard cock, hefty balls and her wet pussy under those furry balls. Taking her black-skinned meat in hand, you examine the canine-like cock while licking your lips. Despite having been stunned, her penis is still mostly hard and even dribbles a bit of pre as you stroke it. It's got a somewhat pointed glans and a bulge at the base of a partially engorged knot. You'd never have thought yourself tempted by such a sight in the past, but presented with it now, you find its exotic shape and virile scent very appealing.";
	say "     Cupping the herm's balls in the one hand, you guide her cock past your lips with the other. The strong taste floods your senses, arousing you all the more. So while you go gradually at first, soon you're bobbing your head eagerly up and down that throbbing pole. You lick and suck at the hyena penis, your tongue sliding along its dark flesh and lapping up the precum that dribbles from it.";
	say "     Rubbing and squeezing the now hard knot at its base, you lick and suck all the harder on the unconscious herm's cock. She releases soft moans of pleasure, especially when you fondle her hefty balls and tweak her clit underneath her sac. This drives her over the edge and she gives a little growl as she cums hard. Gooey shots of hyena cum blast into your mouth and down your throat, though some overflows as well to dribble down your chin. You swallow the semen down hungrily, its taste strong and virile. Once she's spent, you release her floppy dick and leave her passed out with her cock hanging out.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Herm Hyena"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The hyena [one of]rakes her claws across your midsection, leaving bloody gashes in their wake[or]suddenly clocks you with one hell of a haymaker. You kind of want to sit down for a moment now[or]leaps at you, bringing her knee to your face with alarming speed[or]sweepkicks your legs out from under you, then swiftly and painfully drops herself elbow first directly onto your sternum[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthehyena]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Herm Hyena attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mongendernum 5]     An anthropomorphic hyena. She has bright [one of]brown[or]amber[or]green[at random] eyes and a grinning mouth full of saber-like teeth. She is wearing jeans and a leather jacket with no shirt whatsoever, leaving her full breasts exposed to the world. When she spots you, a low chuckling begins to emanate from her throat and her mouth opens into a toothy smile. She begins to run toward you, and as she approaches, it becomes very clear that 'she' is also a he, a large bulge in her pants growing ever larger.";
	now face entry is "[if matriarchowned is 1]that of a strong hyena, with a scruffy streak of dark fur atop your head[else]brown-furred, hyena-like[end if]";
	now body entry is "[if matriarchowned is 1]that of a toughened hyena with an impressive build[else]lean and tightly muscled[end if]";
	now skin entry is "[if matriarchowned is 1]hyena-spotted[else]brown[end if] furred";
	now tail entry is "Your rear end has become tightly muscled, with enough size to it that one could still get a nice handful. Hanging just above your sculpted derriere is a hyena tail, its brown-furred length barely reaching past your upper thigh.";
	now cock entry is "[one of]black[or]knotted[at random]";
	now face change entry is "[if matriarchowned is 1]shifts and stretches as a short but powerful muzzle forms at the end of your face, filled with sharp fangs. Your ears move upwards and grow rounded as a scruffy streak of dark fur forms between them as your head settles into that of a hyena[else]it rapidly stretches outward, your mouth suddenly feeling very full as your new teeth settle into place[end if]";
	now body change entry is "[if matriarchowned is 1]toughens up as it transforms once again, returning to your form as the hyena matriarch[else]you lose any trace of fat you may have had on you, it being replaced with tightly compacted muscle[end if]";
	now skin change entry is "it is covered in shaggy[if matriarchowned is 1], brown and spotted fur of a hyena again[else] brown fur[end if]";
	now ass change entry is "it tightens noticeably and becomes attractively muscled. Given no time to rest, you feel a sharp pain as your tail bone starts grow out, lengthening out to a more animalistic norm. Pain subsiding you find a freshly grown brown-furred tail, a quick test shows that you have slight control over your new hyena tail";
	now cock change entry is "it [if matriarchowned is 1]pulses and throbs with excitement. Its flesh darkens to pitch black and a knot swells up at its base. You can't help but look at it and see it for the fine breeding tool that it is[else]turns pitch black, a knot forming at the base[end if]";
	now str entry is 16;
	now dex entry is 18;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 30;
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking.]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 4; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 7; [ Width of female sex infection will try and give you ]
	now libido entry is 20; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if matriarchowned is 1][one of]strong[or]powerful[or]muscular[or]impressive[or]matriarchal[at random][else][one of]lean[or]muscled[at random][end if]";
	now type entry is "hyena"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]


When play ends:
	if bodyname of player is "Herm Hyena" and matriarchdefeated is 0 and matriarchowned is 0:
		if humanity of player < 10:
			say "You prowl the city, owing allegiance to no one but your own feral appetites. Any time you happen on something with compatible parts, or that looked particularly tasty when you were feeling peckish, would be ambushed. You proved to be quite good at your trade, keeping your corner of the city largely devoid of interlopers, until the bus went by. They were just skirting the city, trying to get past, when the motor died. What fortune... You were on them the moment the door opened, knocking the driver down, growling at the others. When all was said and done, you had created a pack of twenty some odd people, and celebrated with a riotous orgy that went on until every womb was full of the next generation. Your cackling giggles would fill the city.";
		else:
			say "Life as a hyena proves difficult in civilized life. Your laugh unnerves most, to say nothing of that grin. You wander a bit aimlessly, finding a job in a local coffee shop and keeping the cups full and your mouth shut for most of the day.";
			if player is herm:
				say "One day, your monotony is interrupted when a mutant wanders in. Your heart skips a beat and your nose flares. Another hyena! Shi approaches you directly, and stuffs a card into your numb hands before leaving, her tail wagging in a way that invites attention, making you ragingly hard. You duck to the bathroom, to take care of that problem, and to check out the card. An address. You rush over as soon as your shift is over to find a small suburban house. A knock at the door has it swinging open quickly. Shi grabs you and hauls you into the house and into hir arms. Maybe this hyena thing won't be so bad, after all.";
			else if player is male:
				say "You notice a particular college student, female, who comes in quite frequently. She's getting a degree in anthropology, and seems quite fascinated with how the virus has changed the human condition in some ways, and not in others. She gabs on at you for hours, leaving you nodding softly. You fail to grasp most of it, but you know you like her, and your body likes her, soft scent teasing you to a half firm arousal every time she stops by. She comes in one time, crying, and tells you a story about how her boyfriend cheated on her and left her. Unable to hold back any longer, you admit your love for her. This scares her at first, and she vanishes from the shop for several weeks, leaving you despondent and alone.[line break][line break]But she does return, and holds your hands, and asks to go slow. A date at the park, a trip to the movies. You get more chances to talk with her and be with her, and something builds. There is no one 'moment', it simply grows into a deep, satisfying, relationship. You eventually marry and sire pups in the woman of your life.";
			else:
				say "You have escaped as a hyena, though you avoided that cock that the original had, through luck or otherwise. Many confuse you for a dog person of some kind, one person thought you were some kind of cat. You didn't much mind. You were sexy and felt it. You presented your exotic body to any who wanted to see it, and started gathering many friends around yourself, some true, many shallow. You could tell the difference. Your lovers were usually casual, but there were two that kept your interest, a man and a woman that you kept close at your side even as the rest of the world fluidly shifted around. You bore two litters of pups in your life. The father of them was never entirely certain, due to the virus, but you were pretty sure the man was at least father to one. He took care of both with you though, and even gave your lady friend a baby as well. A close, if unconventional, family.";

Herm Hyena ends here.
