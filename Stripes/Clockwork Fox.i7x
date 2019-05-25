Clockwork Fox by Stripes begins here.
[Adaptation for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Clockwork Fox to Flexible Survival."

when play begins:
	add { "Clockwork Fox" } to infections of FurryList;


Section 1 - Creature Responses

cfgmode is a number that varies. cfgmode is usually 1.

to say cfgdesc:
	choose row MonsterID from the Table of Random Critters;
	now cfgmode is a random number between 1 and 2;
	if MaleList is banned and FemaleList is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You come across a strange, mechanical fox. The mechanical fox whirrs and clicks as it looks you over, eyes scanning you in some strange manner. As if sensing something about you, it turns and heads off, somehow knowing you don't want to play with it.";
		now BannedStatus entry is true;
		now fightoutcome is 19;
		now combat abort is 1;
		now cfgmode is 0;
	else if MaleList is banned:
		now cfgmode is 1;
	else if FemaleList is banned:
		now cfgmode is 2;
	else if MaleList is warded and FemaleList is warded:
		now cfgmode is a random number between 1 and 2;
	else if ishunting is true:	[hunting results in 2/3rds chance to get unwarded option]
		if MaleList is warded and a random chance of 1 in 3 succeeds:
			now cfgmode is 1;
		else if FemaleList is warded and a random chance of 1 in 3 succeeds:
			now cfgmode is 2;
	else if ishunting is false:
		if MaleList is warded:
			now cfgmode is 1;
		else if FemaleList is warded:
			now cfgmode is 2;
	if cfgmode is 1:	[female]
		setmongender 4; [creature is female]
		say "     Before you is one of the most unusual forms the infection has taken, creating a partially mechanical fox-creature. Looking over this clockwork fox girl, her body is covered in gears sticking through brass wire fur. She whirrs and clicks as she moves in a strangely mechanical manner, occasionally twitching as something internal catches before releasing a moment later. Her head is drawn forward into a muzzle and the pointed brass ears at the top give it a very foxy look. Her body is thin and shapely, not dissimilar to the other vulpines you've seen in the city, but having several plated sections and protrusions of gears. Her chestplate has two small breasts formed onto it. Her arms and legs are thin and vulpine, leading down to small-clawed paws. She has a long plumed tail that seems to be made from extremely soft wire that resembles a fox tail, moving with the faint click of cogs and gears within. A private peek reveals that she has a thick-lipped cunt nestled between her legs, made of shimmering, coppery flesh, but dripping a clear lubricant that glistens like oil as the female mechanism moves forward to attack you.";
		now sex entry is "Male";
		if "Female Preferred" is listed in the feats of Player, now sex entry is "Female";
		if "Herm Preferred" is listed in the feats of Player, now sex entry is "Both";
	if cfgmode is 2:	[male]
		setmongender 3; [creature is male]
		say "     Before you is one of the most unusual forms the infection has taken, creating a partially mechanical fox-creature. Looking over this clockwork fox guy, his body is covered in gears sticking through brass wire fur. He whirrs and clicks as he moves in a strangely mechanical manner, occasionally twitching as something internal catches before releasing a moment later. His head is drawn forward into a muzzle and the pointed brass ears at the top give it a very foxy look. His body is thin and shapely, not dissimilar to the other vulpines you've seen in the city, but having several plated sections and protrusions of gears. His chestplate gleams brightly, as if polished brass. His arms and legs are thin and vulpine, leading down to small-clawed paws. He has a long plumed tail that seems to be made from extremely soft wire that resembles a fox tail, moving with the faint click of cogs and gears within. A private peek reveals that he has a long, knotted cock made of coppery flesh and driven by a clockwork mechanism. It leaks a clear lubricant that glistens like oil as the male mechanism moves forward to attack you.";
		now sex entry is "Female";
		if "Male Preferred" is listed in the feats of Player, now sex entry is "Male";
		if "Herm Preferred" is listed in the feats of Player, now sex entry is "Both";

to say cfgfight:
	if cfgmode is 1:
		say "[one of]The clockwork vixen digs her metal claws into you![or]The clockwork vixen's eyes whirr and click as they calculate a path through your defenses so she may strike you![or]With a mechanical whirr, the clockwork fox girl bends at her waist to duck a swing and grabs you. She almost tackles you down, but you pull away with several scratches![or]The mechanical vixen clicks internally, then spins her upper body around in circles, sending you tumbling from the sudden series of swings before the spinning winds down and her upper body clicks back into place![or]The metallic vixen head butts you with the resounding clang of a bell![or]The mechanical fox girl twists her nipple, releasing a squirt of scented oil across your shoulder. Its scent is arousing and weakens your resolve to keep fighting![at random]";
	else:
		say "[one of]The clockwork fox digs his metal claws into you![or]The clockwork fox guy's eyes whirr and click as they calculate a path through your defenses so he may strike you![or]With a mechanical whirr, the clockwork fox guy bends at his waist to duck a swing and grabs you. He almost tackles you down, but you pull away with several scratches![or]The mechanical tod clicks internally, then spins his upper body around in circles, sending you tumbling from the sudden series of swings before the spinning winds down and his upper body clicks back into place![or]The metallic fox head butts you with the resounding clang of a bell![or]The mechanical fox pumps his cock and tugs at a latch behind his balls, releasing a squirt of scented oil across your shoulder. Its scent is arousing and weakens your resolve to keep fighting![at random]";

to say losetocfg:
	if cfgmode is 1:
		say "[losetocfgirl]";
	else:
		say "[losetocfguy]";

to say losetocfgirl:
	if HP of Player > 0:
		say "     Enraptured by the unusual nature of this mechanical beauty, you stop resisting and submit to her desires. She runs her cool paws over your body, sliding off your clothes. She presses her cold, metal body to yours and chirrs mechanically in pleasure. With soft clicking noises, she moves her paw between your legs and runs her digits over your genitals.";
	else:
		say "     Unable to continue resisting this mechanical creature, you stumble to your knees. She wraps her arms around you, pressing her cold body to yours and slides off your clothes with her cool paws. She laughs in delight, having soft, music box chimes mixed into the sound. With soft clicking noises, she moves her paw between your legs and runs her digits over your genitals.";
	if Player is male:
		say "     The clockwork vixen wraps her cool paw around your cock and strokes it. You find yourself getting hard despite (or perhaps because) of the unusual nature of your impromptu lover. She grins and nips at your neck with a muzzle full of small gears instead of teeth and chimes musically, saying 'Let's get this key of yours in me so you can wind me up.' With that, she presses you down onto your back and straddles your hips. With a series of clicks, she lowers herself an inch at a time down onto your erection, making you moan as her cool pussy sinks down around you. Her pussy, lubricated by some oils she's producing, is very soft and wet. It grips around your cock and slides over it like flesh would, but squeezes and milks at your cock in an odd, mechanical manner.";
		say "     The pleasure from this unusual mating builds quickly as her pussy warms up as your heated rod pumps into her. The motion of her internal walls grows faster and smoother as she warms up as well, making the motion of her vaginal walls over you increasingly enjoyable. Her paws roam over your body as she lets her nimble, mechanical digits tease and caress your body. When you finally cum, she cries out happily with those music box tones intermixed with the moans and pants you're more used to hearing. As your spent shaft softens, she withdraws from you and heads off down the halls, moving more quickly and smoothly than before, as if you did indeed somehow wind up her mechanism through fucking her.";
	else:
		say "     Finding only a wet pussy between your legs, the vixen releases a twang sound of disappointment. She presses you down onto your hands and knees, bringing your face to her crotch and pressing you to her leaking pussy. Her oily cunt is cool, but the scent is arousing in its own way. You find yourself licking at those soft, coppery lips and are soon diving your tongue into it. She warms up gradually as you keep licking and you press your tongue in deeper. Intrigued by the strange, mechanical movements of her inner walls and you slide a pair of fingers into her to better feel it. Some internal mechanism has her pussy squeeze and tug at your fingers as if they were a cock. You pump your digits into her, feeling her warm up further and those internal motions get smoother and faster until finally she cums hard, sending her tasty lubricant flowing out over your fingers and tongue. Finished and running much more smoothly now for the strange winding you gave her, she pulls off your fingers and heads down the halls with a quicker and smoother pace than when she first approached you.";

to say losetocfguy:
	if HP of Player > 0:
		say "     Enraptured by the unusual nature of this mechanical beauty, you stop resisting and submit to his desires. He runs his cool paws over your body, sliding off your clothes. He presses his cold, metal body to yours and chirrs mechanically in pleasure. With soft clicking noises, he moves his paw between your legs and runs his digits over your genitals.";
	else:
		say "     Unable to continue resisting this mechanical creature, you stumble to your knees. He wraps his arms around you, pressing his cold body to yours and slides off your clothes with his cool paws. He laughs in delight, having soft, music box chimes mixed into the sound. With soft clicking noises, he moves his paw between your legs and runs his digits over your genitals.";
	if Player is female:
		say "     Finding your wet pussy, the clockwork fox guy slips a pair of cold digits into you and starts pumping. You find yourself getting aroused despite (or perhaps because) of the unusual nature of your impromptu lover. He grins and nips at your neck with a muzzle full of small gears instead of teeth and chimes musically, saying 'I'm going to slide my key into you and get you so wound up.' With that, he presses you down onto your back and spreads your legs. With a series of clicks, his hips move forward, sliding that cool, brass cock into you, spreading your wet lips open as he mechanically mounts you. His vulpine cock starts pumping into you, driven by mechanical motion from within his hips. The brass rod warms up quickly as he pumps into you, making you moan in pleasure. His oily pre leaks into you, making the metallic flesh's passing smooth and sensual.";
		say "     The pleasure of this unusual mating builds quickly as his cock warms up and you start squeezing and squirming over it in pleasure. The motion of the mechanically-driven penis grows faster and smoother as he warms up as well, making the thrusting of his vulpine, knotted dick increasingly enjoyable. His paws roam over your body, teasing at your nipples with his nimble, mechanical digits. When you finally cum, he cries out happily with those music box tones intermixed with the moans and pants you're more used to hearing. He releases as well, the pressure built up inside until his oily cum is shot into you, flowing up into your waiting womb. Once his metal ballsack is drained, he withdraws from you and heads off down the halls, moving more quickly and smoothly than before, as if his mechanism was wound back up by fucking you.[impregchance]";
	else:
		say "     Finding no wet pussy for him, the tod releases a twang sound of disappointment. He presses you down onto all fours and climbs atop you, lining up his cold, brass cock with your tight pucker. His vulpine penis leaks an oily precum that gets you slick, but the metallic flesh is quite cold as it begins to mechanically slide into your rump. You moan loudly and its mechanism pushes it steadily into you, inch by inch until fully buried in you. Thankfully, the fox's rod begins to warm up as he starts pumping into you, letting you start to enjoy the pleasure of it driving into you again and again. His oily pre leaks into you, making the metallic flesh's passing smooth and sensual.";
		say "     The metallic fox guy pumps his cock into you mechanically, driven by the hidden clockworks in his hips, keeping his motions steady as he pounds your prostate. And as he warms up, his motions get smoother and faster, making the mechanical fucking increasingly enjoyable. When his internal pressure finally builds up enough, his warmed, oily cum is shot into you, filling your ass with his mechanical vulpine seed. The feel of it flowing into you, spreading smoothly to coat your inner walls as he drives into your prostate again and again finally sets you off and you paint the floor with your own cum. Once his metal ballsack is drained, he withdraws from you and heads off down the halls, moving more quickly and smoothly than before, as if his mechanism was wound back up by fucking you.[impregchance]";

to say beatthecfg:
	if cfgmode is 1:
		say "[beatthecfgirl]";
	else:
		say "[beatthecfguy]";

to say beatthecfgirl:
	say "     The defeated clockwork fox girl winds down further and collapses to the floor. She moans weakly with a few clicks and whirrs as she tries to get back up, but is too run down to do so";
	if CockName of Player is "Clockwork Fox" and player is male:
		say ". Your mechanically driven cock responds to the poor creature's need and grows hard. You climb atop her and sink your metallic member into her pussy, enjoying the soft, music box chimes she releases. You rock your hips and pump your cock into her well-lubricated mechanism, feeling it grow warmer as you fuck her. Her internal mechanism meshes with yours and your cock pumps into her at an increasing pace. As you wind the weakened vixen back up, she smiles up at you and runs her paws over your body, caressing you in thanks. Once she's fully wound back up and your mainspring is taut, you and she mesh fully and you reach your peak together. Her wet lubricant flows out, coating your semi-mechanical groin as you pump your oily seed deep inside her to fill. You both release chiming, music box tones intermixed with your moans and groans of lustful pleasure, then separate. Fully wound once more, the mechanical vixen gives you a peck on the cheek and heads down the halls, moving with a smooth, mechanical grace that she lacked when you first encountered her.";
	else:
		say ". You decide to take this opportunity to make your escape, leaving her to be enjoyed by the mechanical tods (or any of the other creatures) you've seen around the museum.";

to say beatthecfguy:
	say "     The defeated clockwork fox guy winds down further and collapses to the floor. He moans weakly with a few clicks and whirrs as he tries to get back up, but is too run down to do so.";
	if CockName of Player is "Clockwork Fox" and player is female:
		say "     Your mechanically driven pussy responds to the poor creature's need and grows wet with oily lubricant. You climb atop him and guide his metallic member into your pussy, enjoying the soft, music box chimes he releases. You ride your hips up and down over his metallic flesh, sliding your well-lubricated mechanism over it. You can feel his member growing warmer as you fuck him. His internal mechanism meshes with yours and your motions and his come into synch and move with a gradually increasing pace. As you wind the weakened fox back up, he smiles up at you and runs his paws over your body, caressing you in thanks. Once his mainspring is taut and your mechanism is wound back up, you and he mesh fully and you reach your peak together. Your wet lubricant flows out, coating his semi-mechanical groin as he pumps his oily seed deep inside to fill you. You both release chiming, music box tones intermixed with your moans and groans of lustful pleasure, then separate. Fully wound once more, the mechanical fox guy gives you a peck on the cheek and heads down the halls, moving with smooth, mechanical grace that he lacked when you first encountered him.[impregchance]";
		increase morale of Player by 2;
		decrease humanity of Player by 2;
	else:
		say "     You decide to take this opportunity to make your escape, leaving him to be enjoyed by the mechanical vixens (or any of the other creatures) you've seen around the museum.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "";
	now Name entry is "Clockwork Fox"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[cfgfight]";
	now defeated entry is "[beatthecfg]";
	now victory entry is "[losetocfg]";
	now desc entry is "[cfgdesc]";
	now face entry is "drawn forward into a mechanical muzzle with whirring gears for teeth. Atop your head, you have a pair of pointed ears made of shiny brass, adding to your foxish look";
	now body entry is "thin and muscled, resembling that of one of the clockwork fox beings. Your arms are thin and vulpine, leading down to small-clawed paws. Your legs are thin but filled with a mix of muscles and clockwork mechanisms, leading down to a pair of foxy paws";
	now skin entry is "[one of]brass wire fur with gears poking through your metallic[or]lush wire fur over your brass[or]gears sticking through brass wire fur to cover your metallic[at random]";
	now tail entry is "You have a mechanical fox tail that is covered in soft, metallic fur. It whirrs and clicks softly with the sounds of the cogs and gears inside to make it move so beautifully.";
	now cock entry is "[one of]clockwork[or]knotted[or]clockwork knotted[or]mechanically-driven[at random]";
	now face change entry is "your nose and mouth pull forward into a foxy muzzle, but one filled with clockwork mechanics instead of flesh and bone. Your teeth become small, clicking gears to chew your food or nibble at playmates. You can feel your ears rise up the side of your head, becoming pointed cups of shiny brass";
	now body change entry is "it slims down, becoming strong yet compact, almost exactly like that of a Clockwork Fox. You feel your arms and legs change, muscles bunching, becoming more dense and gaining gears and cogs to drive them. Your limbs end in vaguely fox-like paws that quite nimble despite being mechanical inside";
	now skin change entry is "you feel your whole body go cold as suddenly you are left covered in patches of gears, cogs and shafts in clusters of gearworks that poke through a brass wire coat of fur over your metal";
	now ass change entry is "pressure builds at your rear as a long, metal furred fox tail springs into being";
	now cock change entry is "you gasp as the change pulses through your groin, changing your cock, making it both more vulpine in shape and turning it into cool, brass flesh. From your hips come a constant clicking sound from the mechanism to drive it into any lovers you may find. Your ballsack becomes a brass reservoir to contain your built up oily cum until the pressure increases to your orgasm to pump it out";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 10;
	now int entry is 14;
	now cha entry is 10;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 28; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 2; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Museum"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 6;
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]clockwork[or]mechanical[or]compact[at random]";
	now type entry is "vulpine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
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



Section 3 - Endings

when play ends:
	if BodyName of Player is "Clockwork Fox":
		if humanity of Player < 10:
			say "     As your humanity is ground away by the inner clicking of your increasingly mechanical mind, you automatically make your way back to the shadowy museum. There, you meet up with several other mechanical foxes and vixens who have set up their dens in a hall displaying the growth of mechanical clockwork from its beginnings in the 13th Century and onto the later mechanical marvels designed before electricity hastened to make the art obsolete. As you're setting up your new den among the others, several of them snuggle up to you, clearly wanting to welcome you properly into the mechanical skulk with a good, long winding.";
		else:
			say "     You survive your experience in the city, but emerge changed, having become a partially mechanical fox creature. Your unusual body creates a lot of head scratching and arguments among the scientists who examine you, as such a blending of life and technology is astounding. In the end though, they are ordered to focus on other more pressing and dangerous strains of the infection. You overhear one conversation where a colonel is berating one interested scientist, saying that they won't learn anything useful from someone fused with such outdated technology. This makes you grind your gears, but you keep quiet, as it means you get released soon.";
			say "     Trying to rejoin society, your very unusual body, even among the infected, makes things difficult and you're often the object of surprised gawkers or inane questions. As if drawn to it, you eventually find your way to clockmaker's shop. The astonished old man is impressed by your incredible form and while he is intensely curious, there is something much more acceptable about his interest. Perhaps it is his clear love of the intricate metalwork and your mechanical systems, perhaps it is just his informed questions and knowledgeable answers as he teaches you about your new body even as it examines it and learns as well. You visit him several times, soon becoming his assistant and learning the precise work of making and repairing a myriad of clockwork devices.";
			if Player is female:							[FEMALE/HERM]
				say "     Over time, he examinations of you become more and more in depth, sometimes even removing and disassembling sections to see how they run. You are quite at ease with this, trusting in his work and curious to learn as well. One day, during the course of his examination, he works down your body and focuses on the intricate mechanics running your automated pussy. He is quite astounded by it, hardly noticing your increasing pleasure as he strokes those sensitive folds and slides his fingers into your vagina to feel the squeezing and pulling mechanism at work. Your scented, lubricating oil excite the older gentleman and when you press him down onto his chair and straddle his lap, he doesn't resist. Soon enough, you're riding his stiff cock, moaning and chiming musically in pleasure as he fucks you.";
				say "     After that first wild romp, it is easy to coax him into making love to you again and again. Over time, he starts to change, becoming more and more a clockwork fox to be your mate. This change from flesh to clockwork slows his aging, giving you many years with your wonderful lover.";
			else:									[MALE]
				say "     Over time, you get to know him and his daughter, a lovely young woman with considerable knowledge of her father's craft, if not quite the same passion. She is intrigued by you and is happy to spend time with you where many others won't. But she is very comfortable with you, relaxed and open. One evening, she gives you a soft peck on the side of your muzzle, then blushes and turns away. Your clockworks click and whirr, setting to their new goal and soon enough, you woo the pretty girl into being your lover and in time, your mate. She becomes a clockwork vixen as your infection spreads to her, but neither her nor her father are upset by this turn of events, merely happy that his quiet girl has found happiness through the mechanical art he loves too much, if not quite in the way he would have expected.";


Clockwork Fox ends here.
