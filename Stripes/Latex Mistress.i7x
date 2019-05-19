Version 1 of Latex Mistress by Stripes begins here.
[Version 1.1 - Expanded existing player loss scenes and added cunnilingus w/possible WS.]
[This monster is heavily based off the Leather Mistress from the multiplayer game.]

"Adds Latex Mistress to Flexible Survival."

Section 1 - Creature Responses

when play begins:
	add { "Latex Mistress" } to infections of girl;


to say latexmistressdesc:
	setmongender 4; [creature is female]
	say "     You are faced with a strange latex-bound person. While looking quite human beneath the black latex suit, this covers her entirely and seems to be bonded to her or may even be completely a part of her flesh. Her head is covered completely in a black mask with only her eyes and mouth visible behind it. Her body, arms and legs are completely covered by the skin-tight latex. Even her hands are covered in claw-tipped gloves and her feet in boots with a six inch platform and a nine inch heel. These, like the rest of the latex seem melded into the suit and part of the seamless whole. The only other openings are those giving access to her wet pussy and tight anus. She looks you over for a moment, rubbing the handle of her whip across her pussy and licking her lips slowly. She then gives the whip a meaningful crack and moves in to attack you.";


to say losetolatexmistress:
	if a random chance of 1 in 2 succeeds:
		say "     Having beaten you, this latex mistress pushes you roughly to the ground and grabs your head. Pinching your ear (or the closest equivalent thereof), she forces you between her latex-clad thighs and presses your face to her crotch[if HP of Player > 0]. You need no further direction, but she still twists her fingers painfully and orders you to start licking[else]. Twisting her fingers painfully, she orders you to start licking[end if]. With a close-up view, you can see the that latex kinkwear opens across her mons, but is all part of her flesh. But even her bare pussy isn't normal, having black latex folds and dripping rubbery scented juices. That scent is strangely arousing and you take a deep whiff of it.";
		if wslevel > 1 and a random chance of ( wslevel * wslevel ) in 12 succeeds:
			say "     Getting whipped for the delay, you groan and start lapping across her clit. You run your tongue up and down those quivering lips and delve into her dark tunnel. Deciding to punish you for your delay, she grabs the back of your head with her free hand and holds you in place as she releases her bladder. You cough and sputter as that acrid fluid soaks your face and flows into your mouth. With another blow, she orders you to drink, so you find yourself licking across her pee hole and drinking her piss. It has a strong aftertaste of latex to it that clings to your tongue.";
			say "     When the flow stops, she orders you back to licking, which you do eagerly, if for nothing else than to try and get that taste out of your mouth... or perhaps to get more of it, part of your confused mind thinks. As you eat her out, you get struck several more times and ordered to go faster, slower or deeper, or to suck her clit, or any other thing she desires of you. And you obey, moaning softly as the pain and pleasure blur. Eventually, your obedient licking pays off, your mistress flogging you hard as she cries out in orgasmic bliss. When she pushes you away, you tumble onto the ground, too sore from the whipping to rise. She grinds her heel down onto your shoulder, calling you a good slave. Reeking of her scent, you can't help but smile before passing out, having been complimented by your dark mistress.";
			if FaceName of Player is not "Latex Mistress":		[WS results in face TF]
				choose row MonsterID from the Table of Random Critters;
				say " Your face [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [face change entry].";
				now FaceName of Player is Name entry;
				now Face of Player is face entry;
		else:
			say "     Getting whipped for the delay, you groan and start lapping across her clit. You run your tongue up and down those quivering lips and delve into her dark tunnel. As you eat her out, you get struck several more times and ordered to go faster, slower or deeper, or to suck her clit, or any other thing she desires of you. And you obey, moaning softly as the pain and pleasure blur. Eventually, your obedient licking pays off, your mistress flogging you hard as she cries out in orgasmic bliss. When she pushes you away, you tumble onto the ground, too sore from the whipping to rise. She grinds her heel down onto your shoulder, calling you a good slave. You can't help but smile before passing out, having been complimented by your dark mistress.";
	else if anallevel is 1:
		say "     Having beaten you, this latex mistress pushes you roughly over [one of]some rubble[or]the back of a car[or]over a fallen garbage can[or]over a nearby bench[at random] and whips you several more times. Through this, she often humps against you, grinding her latex-clad body and exposed pussy against you. Having been slapped and whipped across it repeatedly, the flow of her hot juices across your thigh is delightfully soothing. As the line between pleasure and pain begins to blur, she continues whipping you with sadistic glee. She ignores your cries and continues until you eventually pass out from the pain. When you wake up later, you feel sore all over from her harsh discipline and especially so across your back and backside.";
		now HP of Player is HP of Player / 2;
	else:
		say "     Having beaten you, this latex mistress pushes you roughly over [one of]some rubble[or]the back of a car[or]over a fallen garbage can[or]over a nearby bench[at random] and whips you several more times. Through this, she often humps against you, grinding her latex-clad body and exposed pussy against you. Having been slapped and whipped across it repeatedly, the flow of her hot juices across your thigh is delightfully soothing.";
		say "     As the line between pleasure and pain begins to blur, she pauses for a moment to roughly manhandle your [if Player is herm][Cock of Player] cock and dripping pussy[else if Player is male][Cock of Player] cock[else if Player is female]dripping pussy[else]bare crotch[end if] while plunging the handle of her whip into her pussy. She rides it for a few thrusts while moaning. Now wet with her juices, she pulls it out and instead crams the handle of that toughened latex whip into your anus, ignoring your cries. She takes you roughly with it, driving it hard and fast into you or bending it awkwardly inside you to press uncomfortably against your sensitive inner walls. There's pleasured mixed in with her painful discipline, but you do eventually pass out from the ordeal, awakening some time later more sore than you've ever been.";


to say beatthelatexmistress:
	let ltxmscene be 0;
	say "     Your final blow knocks the latex mistress to her knees and causes her to drop her dark whip. She moans softly as you grab onto her by the shoulder and ";
	if Libido of Player < 25 or ( player is neuter ):
		say "push her to the ground. With your foot pressed between this latex woman's shoulders, you growl at her to not mess with you in the future or you'll punish her more severely. You only let her rise once she moans that she's learned her lesson. When you release her, she grabs her latex whip, which was already starting to melt away, and runs off in search of easier prey to dominate.";
	else:
		say "consider your options. It might be fun to dominate the would-be dominatrix. Shall you ";
		if Player is not male:
			say "     [bold type]make her lick your pussy or let her go?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Lick your pussy.";
			say "     ([link]N[as]n[end link]) - Let her go.";
			if Player consents:
				now ltxmscene is 3;
			else:
				now ltxmscene is 99;
		else:
			say "[link]fuck her (1)[as]1[end link], [link]make her suck you off (2)[as]2[end link] or [link]let her go (3)[as]3[end link]?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>";
				get a number;
				if calcnumber < 1 or calcnumber > 3:
					say "Invalid choice. Pick from 1 to 3.";
			if calcnumber is 1:
				now ltxmscene is 1;
			else if calcnumber is 2:
				now ltxmscene is 2;
			else:
				now ltxmscene is 99;
	if ltxmscene is 1:
		say "     Taking the latex woman, you bend her over [one of]some rubble[or]the back of a car[or]over a fallen garbage can[or]over a nearby bench[at random] and spread her legs to give you access to her black latex pussy. You line up your cock and slide it into her as she moans and squirms. Her struggles seem largely for show as she's clearly enjoying being dominated and fucked. As you pound into her, you teasingly call her your slutty slave and a needy slut, which seems to further please the latex-suited woman, eventually driving you both to orgasm as you shoot your hot load into her womb. She remains slumped there after you've finished with her, cum leaking from her stuffed slit, almost as if in invitation for the next creature to come along to similarly use her as well.";
	else if ltxmscene is 2:
		say "     Pushing the latex woman to her knees, you press her face to your loins and rub your erection against her smooth latex mask, dribbling streaks of pre across it. Holding her head firmly, you order her to start sucking you like a good slave, which she makes a show of resisting at first, but soon has her mouth eagerly around your shaft and bobbing up and down over it. You continue to treat her like a sex object, much to her obvious delight given the increasing response of her mouth and tongue over your pulsing shaft. When her eager sucking finally pushes you over the edge, you [one of]grab her head tightly and push your cock down her throat, blasting your hot load into her[or]push her head back and spray your hot load across her latex masked face, coating the black material in streaks of semen[purely at random]. Once done, you push her away roughly and send her on her way.";
	else if ltxmscene is 3:
		say "     Pushing the latex woman to her knees, you press her face to your loins and rub your wet folds against the smooth, cool latex mask, leaving streaks of your juices across it. Holding her head firmly, you order her to start licking like a good slave, which she makes a show of resisting at first, but soon has her mouth eagerly pressed to your pussy and her adept tongue diving into your cunt. You continue to treat her like a sex object, much to her obvious delight given the increasing zeal of her tonguework. When her eager lapping finally pushes you over the edge, you grab her head tightly and cum hard, soaking her mouth in your hot juices so they flow down her chin and across her smoothly skinned body. Finished with her now, you push her away roughly and send her on her way.";
	else if ltxmscene is 99:
		say "     You push her to the ground and press your heel between the latex woman's shoulders. With her pinned underheel, you growl at her to not mess with you in the future or you'll punish her more severely. You only let her rise once she moans that she's learned her lesson. When you release her, she grabs her latex whip, which was already starting to melt away, and runs off in search of easier prey to dominate.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Latex Mistress"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "The [one of]Latex Mistress[or]strange dominatrix[or]latex-clad woman[at random] [one of]strikes you with her whip[or]lashes you with her whip[or]whips around your ankle and pulls you over[or]slashes at you with her small claws when you get too close[at random].";
	now defeated entry is "[beatthelatexmistress]";
	now victory entry is "[losetolatexmistress]";
	now desc entry is "[latexmistressdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "[one of]covered completely[or]completely wrapped[or]concealed[at random] in a black latex mask[if the player is ltxmskinned] that is attached seamlessly to the black latex covering your body[end if]. At the front of your face are solid black eyes that seem to blink even thought they are part of the mask. Your mouth is usually shut, seeming to be part of the mask until it moves, [one of]stretching open[or]opening up[at random] along the mask around it when you talk or eat";
	now body entry is "human in shape with possessing the build of a strong, powerful female. Your hands and feet are encased in black latex formed into gloves and boots that are a part of you[if Player is ltxmskinned] and blend seamlessly into your latex skinsuit[end if]. These gloves are tipped with small claws at their fingertips and the boots have a high platform and a higher heel, making you seem latter and more imposing";
	now skin entry is "solid black [one of]rubber[or]latex[at random]";
	now tail entry is "You have a tight ass wrapped in black latex fused to your skin. There are holes built in to give access to your crotch and your [one of]anus[or]pucker[or]asshole[at random].";
	now cock entry is "[if freecred > 1000]gold[else]silver[end if]-studded";
	now face change entry is "black latex starts to bubble up from the base of your neck and flow up over the back of your [one of]skull[or]head[at random]. Though it might seem like it will suffocate you, the black goo that covers over your mouth doesn't seal it shut, but rather becomes fixed around it. While you can feel that your head is human beneath the mask, you cannot, try as you might, manage to pull it off[if Player is ltxmskinned], joining itself seamlessly with the latex suit covering your skin[end if]";
	now body change entry is "your body twists and changes, becoming more feminine in form until you have the body of a strong and sexy woman. Even as these changes spread to your extremities, black goo starts to bubble up from your fingertips and toes, flowing over your hands and feet to coat them in jet black latex. This latex shapes itself into shapely gloves with [if freecred > 1000]golden studs and clawed fingertips[else if freecred > 50]silver studs and clawed fingertips[else]black clawed fingertips[end if] and similarly decorated boots";
	now skin change entry is "your skin shifts to a more human appearance before being covered in a layer of tight black latex that wells up from your nipples and flows across your skin[if Player is ltxmfaced]. As this change spreads up to your neck, it joins with the mask into one united whole[else] and over your shoulders to form a collar at your neck[end if][if Player is ltxmtailed]. As it progresses down your body, it blends into and fuses seamlessly with the latex encasing your crotch and ass[end if]. The black goo flows along your limbs, encasing them in the latex skinsuit as well [if Player is ltxmbodied]and melding together with your latex gloves and boots into a complete body suit[else]before ending at your ankles and wrists to leave your feet and hands uncovered, the latex sealing into immobile cuffs at your extremities[end if]";
	now ass change entry is "a cold chill runs down your spine as a sudden flow of black latex goo pushes itself out of your [one of]asshole[or]anus[or]pucker[at random] and begins to grow over your [one of]ass[or]cheeks[or]butt[at random]. Wrapping around your hips and loins tightly, it feels as if it's replaced your skin. It forms an opening at your crotch that reveals everything you have to show to the open air and melds into your [one of]asshole[or]anus[or]pucker[at random] to allow access there as well";
	now cock change entry is "your cock shifts, altering back into a more normalized, human shape, covered in black latex. A single [if freecred > 1000]gold[else]silver[end if] stud forms in the middle of your penis, the cool chill of metal quite an interesting sensation[if Player is female]. Your pussy has a similar coating of black latex that is so form fitting and sensitive that it seems like your own flesh[end if]";
	now str entry is 12;
	now dex entry is 15;
	now sta entry is 14;
	now per entry is 10;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Female";
	now HP entry is 25;
	now lev entry is 2;
	now wdam entry is 5;
	now area entry is "Red";
	now Cock Count entry is 0;
	now Cock Length entry is 0;
	now Ball Size entry is 0;
	now Nipple Count entry is 2;
	now Breast Size entry is 4;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 7;
	now libido entry is 50;
	now loot entry is "";
	now lootchance entry is 0;
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]imposing[or]strong[or]feminine[at random]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "";
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Definitions

Definition: a person is ltxmfaced:
	if FaceName of Player is "Latex Mistress", yes;
	no;

Definition: a person is ltxmskinned:
	if SkinName of Player is "Latex Mistress", yes;
	no;

Definition: a person is ltxmbodied:
	if BodyName of Player is "Latex Mistress", yes;
	no;

Definition: a person is ltxmcocked:
	if CockName of Player is "Latex Mistress", yes;
	no;

Definition: a person is ltxmtailed:
	if TailName of Player is "Latex Mistress", yes;
	no;

[
Section 4 - Endings

when play ends:
	if BodyName of Player is "Latex Mistress":
		if humanity of Player < 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Latex Mistress ends here.
