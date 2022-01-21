Clockwork Fox by Stripes begins here.
[Adaptation for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Clockwork Fox to Flexible Survival."

Section 1 - Creature Responses

cfgmode is a number that varies. cfgmode is usually 1.

to say cfgdesc:
	choose row MonsterID from the Table of Random Critters;
	now cfgmode is a random number between 1 and 2;
	if MaleList is banned and FemaleList is banned:		[if both types are banned, the fight is aborted and removed from critter table]
		say "     You come across a strange, mechanical fox. It whirrs and clicks as it looks you over, eyes scanning you in a disjointed, strange manner. As if sensing something about you, it turns and heads off, somehow knowing you don't want to play with it.";
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
		say "     Before you is one of the most unusual forms the infection has taken, a wholly mechanical fox-creature. Looking over this clockwork fox girl, her body is made from metal segments and brass wire fur, which covers the internal mechanics of tiny metal gears. She whirrs and clicks as she moves in a jerking, hesitant manner, occasionally twitching as something catches in her gears for a few seconds. Her head is drawn forward into a muzzle, and the pointed, brass ears at the top give it a very foxy look. The anthro's body is thin and shapely, not dissimilar to the other vulpines you've seen in the city, but it's also covered in plated sections and protrusions of gears. Her chestplate has two small breasts formed onto it, her arms and legs are thin and vulpine, leading down to small, clawed paws, and she has a long plumed tail that seems to be made from extremely soft wire. The tail moves with the faint clicks of cogs and gears. A private peek reveals that she has a thick-lipped cunt nestled between her legs, made of shimmering, coppery flesh. It drips a clear lubricant, that glistens like oil, as the female mechanism moves forward to attack you.";
		now sex entry is "Male";
		if "Female Preferred" is listed in the feats of Player, now sex entry is "Female";
		if "Herm Preferred" is listed in the feats of Player, now sex entry is "Both";
	if cfgmode is 2:	[male]
		setmongender 3; [creature is male]
		say "     Before you is one of the most unusual forms the infection has taken, creating a wholly mechanical fox-creature. Looking over this clockwork fox guy, his body is made from metal segments and brass wire fur, covering internal mechanics of tiny metal gears. He whirrs and clicks as he moves in a slightly odd manner, occasionally twitching as something internal catches before releasing a moment later. His head is drawn forward into a muzzle, and the pointed, brass ears at the top give it a very foxy look. The anthro's body is thin and shapely, not dissimilar to the other vulpines you've seen in the city, but it's also covered in plated sections and protrusions of gears. His segmented chestplate gleams brightly, as if polished brass. His arms and legs are thin and vulpine, leading down to small, clawed paws, and he has a long plumed tail that seems to be made from extremely soft wire. The tail moves with the faint clicks of cogs and gears. A private peek reveals that he has a long, knotted cock made of coppery flesh, and it appears to be driven by a clockwork mechanism. It leaks a clear lubricant, that glistens like oil, as the male mechanism moves forward to attack you.";
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
		CreatureSexAftermath "Clockwork Fox" receives "PussyFuck" from "Player";
	else:
		say "     Finding only a wet pussy between your legs, the vixen releases a twang sound of disappointment. She presses you down onto your hands and knees, bringing your face to her crotch and pressing you to her leaking pussy. Her oily cunt is cool, but the scent is arousing in its own way. You find yourself licking at those soft, coppery lips and are soon diving your tongue into it. She warms up gradually as you keep licking and you press your tongue in deeper. Intrigued by the strange, mechanical movements of her inner walls and you slide a pair of fingers into her to better feel it. Some internal mechanism has her pussy squeeze and tug at your fingers as if they were a cock. You pump your digits into her, feeling her warm up further and those internal motions get smoother and faster until finally she cums hard, sending her tasty lubricant flowing out over your fingers and tongue. Finished and running much more smoothly now for the strange winding you gave her, she pulls off your fingers and heads down the halls with a quicker and smoother pace than when she first approached you.";
		CreatureSexAftermath "Player" receives "OralPussy" from "Clockwork Fox";

to say losetocfguy:
	if HP of Player > 0:
		say "     Enraptured by the unusual nature of this mechanical beauty, you stop resisting and submit to his desires. He runs his cool paws over your body, sliding off your clothes. He presses his cold, metal body to yours and chirrs mechanically in pleasure. With soft clicking noises, he moves his paw between your legs and runs his digits over your genitals.";
	else:
		say "     Unable to continue resisting this mechanical creature, you stumble to your knees. He wraps his arms around you, pressing his cold body to yours and slides off your clothes with his cool paws. He laughs in delight, having soft, music box chimes mixed into the sound. With soft clicking noises, he moves his paw between your legs and runs his digits over your genitals.";
	if Player is female:
		say "     Finding your wet pussy, the clockwork fox guy slips a pair of cold digits into you and starts pumping. You find yourself getting aroused despite (or perhaps because) of the unusual nature of your impromptu lover. He grins and nips at your neck with a muzzle full of small gears instead of teeth and chimes musically, saying 'I'm going to slide my key into you and get you so wound up.' With that, he presses you down onto your back and spreads your legs. With a series of clicks, his hips move forward, sliding that cool, brass cock into you, spreading your wet lips open as he mechanically mounts you. His vulpine cock starts pumping into you, driven by mechanical motion from within his hips. The brass rod warms up quickly as he pumps into you, making you moan in pleasure. His oily pre leaks into you, making the metallic flesh's passing smooth and sensual.";
		say "     The pleasure of this unusual mating builds quickly as his cock warms up and you start squeezing and squirming over it in pleasure. The motion of the mechanically-driven penis grows faster and smoother as he warms up as well, making the thrusting of his vulpine, knotted dick increasingly enjoyable. His paws roam over your body, teasing at your nipples with his nimble, mechanical digits. When you finally cum, he cries out happily with those music box tones intermixed with the moans and pants you're more used to hearing. He releases as well, the pressure built up inside until his oily cum is shot into you, flowing up into your waiting womb. Once his metal ballsack is drained, he withdraws from you and heads off down the halls, moving more quickly and smoothly than before, as if his mechanism was wound back up by fucking you.";
		CreatureSexAftermath "Player" receives "PussyFuck" from "Clockwork Fox";
	else:
		say "     Finding no wet pussy for him, the tod releases a twang sound of disappointment. He presses you down onto all fours and climbs atop you, lining up his cold, brass cock with your tight pucker. His vulpine penis leaks an oily precum that gets you slick, but the metallic flesh is quite cold as it begins to mechanically slide into your rump. You moan loudly and its mechanism pushes it steadily into you, inch by inch until fully buried in you. Thankfully, the fox's rod begins to warm up as he starts pumping into you, letting you start to enjoy the pleasure of it driving into you again and again. His oily pre leaks into you, making the metallic flesh's passing smooth and sensual.";
		say "     The metallic fox guy pumps his cock into you mechanically, driven by the hidden clockworks in his hips, keeping his motions steady as he pounds your prostate. And as he warms up, his motions get smoother and faster, making the mechanical fucking increasingly enjoyable. When his internal pressure finally builds up enough, his warmed, oily cum is shot into you, filling your ass with his mechanical vulpine seed. The feel of it flowing into you, spreading smoothly to coat your inner walls as he drives into your prostate again and again finally sets you off and you paint the floor with your own cum. Once his metal ballsack is drained, he withdraws from you and heads off down the halls, moving more quickly and smoothly than before, as if his mechanism was wound back up by fucking you.";
		CreatureSexAftermath "Player" receives "AssFuck" from "Clockwork Fox";

to say beatthecfg:
	if cfgmode is 1: [female cf]
		say "     The defeated clockwork fox girl winds down further and collapses to the floor. She moans weakly with a few clicks and whirrs as she tries to get back up, but she is too run down to do so.";
		WaitLineBreak;
		if CockName of Player is "Clockwork Fox" and player is male:
			say "[beatthecfgirl1]";
		else if libido of Player >= 50 and player is male:
			say "     You are way too turned on to do anything else but try to sate your lust...";
			say "[beatthecfgirl2]";
		else if player is female:
			say "     You don't think you're properly equipped for this, and so you get on with your other escapades.";
		else:
			say "     You suppose you could make your escape, if you wanted to. The other option would be to let yourself be drawn to her lure as her body tempts you to come closer...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Go to her.";
			say "     ([link]N[as]n[end link]) - Get away.";
			if player consents:
				LineBreak;
				say "[beatthecfgirl2]";
			else:
				LineBreak;
				say "     Thinking twice about it, you decide to take this opportunity to make your escape, leaving her to be enjoyed by the mechanical tods (or any of the other creatures) you've seen around the museum.";
	else: [male cf]
		say "     The defeated clockwork fox guy winds down further and collapses to the floor. He moans weakly with a few clicks and whirrs as he tries to get back up, but he is too run down to do so.";
		WaitLineBreak;
		if CockName of Player is "Clockwork Fox" and player is female:
			say "[beatthecfguy1]";
		else if libido of Player >= 50 and player is male: [currently only males can take advantage of cf guy]
			say "     You are way too turned on to do anything else but try to sate your lust...";
			say "[beatthecfguy2]";
		else if player is female: [plays this until a female scene is added]
			say "     You decide to take this opportunity to make your escape, leaving him to be enjoyed by the mechanical vixens (or any of the other creatures) you've seen around the museum.";
		else:
			say "     You suppose you could make your escape, if you wanted to. The other option would be to let yourself be drawn to his lure as his body tempts you to come closer...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Go to him.";
			say "     ([link]N[as]n[end link]) - Get away.";
			if player consents:
				LineBreak;
				say "[beatthecfgirl2]";
			else:
				LineBreak;
				say "     Thinking twice about it, you decide to take this opportunity to make your escape, leaving him to be enjoyed by the mechanical tods (or any of the other creatures) you've seen around the museum.";

to say beatthecfgirl1:
	say "     Your mechanically driven cock responds to the poor creature's need and grows hard. You climb atop her and sink your metallic member into her pussy, enjoying the soft, music box chimes she releases. You rock your hips and pump your cock into her well-lubricated mechanism, feeling it grow warmer as you fuck her. Her internal mechanism meshes with yours and your cock pumps into her at an increasing pace. As you wind the weakened vixen back up, she smiles up at you and runs her paws over your body, caressing you in thanks. Once she's fully wound back up and your mainspring is taut, you and she mesh fully and you reach your peak together. Her wet lubricant flows out, coating your semi-mechanical groin as you pump your oily seed deep inside her to fill. You both release chiming, music box tones intermixed with your moans and groans of lustful pleasure, then separate. Fully wound once more, the mechanical vixen gives you a peck on the cheek and heads down the halls, moving with a smooth, mechanical grace that she lacked when you first encountered her.";
	CreatureSexAftermath "Clockwork Fox" receives "PussyFuck" from "Player";
	increase morale of Player by 2;
	decrease humanity of Player by 2;

to say beatthecfgirl2:
	say "     With the sight of the defeated female before you, a metallic one at that, you lose all sense of control. Your body suddenly lights up with pure lust, your mind fogs over and your cock jerks to full attention. There's no way you can resist such a tempting specimen. As your dick dribbles, [if player is not naked]you rip off the clothes that block your cock from that dripping pussy[else]you give your length a few strokes, prepping it for what's to come[end if]. Your body then seems to go on autopilot, your hands gripping and flipping the clicking fox onto her belly. Your cock's dribbling excitement drinches her lower back, and as you hold your hands against her shoulders, you angle your crotch towards hers.";
	say "     Her resistance is nonexistant, and so you move your hands to grab at her hips, the angled metal plating is cool, and yet hot, to the touch. There's something about them, something that drives you to even further levels of depravity, but it's far too late to care. Her legs are spread, your hands have gotten their grip, and as you angle her towards you cock, your hips slam forward. You miss the first time, but your heated lust is too out of control to feel an ounce of embarrassment. There's only a single microsecond of hesitance as you pull back, and then you're slamming forward once more, and this time, you find your mark.";
	WaitLineBreak;
	say "     As your cock slips into her metallic body, you gasp at the warmth. The clockwork pussy is soft, wet and hot. It almost drives you to cum immediately, but you retain just enough control to avoid being a one-pump-chump. However, the slick feeling as you start fucking her, the mix of hot and cold as you push in and pull out, really drives you to a new high. It's almost as if this robotic entity was made for sex, and as you pick up your speed, you grin down at her, pounding her pussy with all of the power your hips can provide. The sounds of your hips slapping into her, and the feeling of folds wrapping around your cock, drive you over the edge.";
	say "     With a powerful, gutteral moan, you slam forward as hard as you can, bottoming out in her pussy. As soon as your balls slap into her, your cock fires off like a cannon. Your cum shoots into her depths, filling her up as the heat of your seed begins to surround the tip of your length. It's a feeling you'll never grow tired of. Your cock continues to pulse for a few minutes, but as you hear cries of something nearby, you quickly pull out and wipe your cock on her ass. Grabbing your things, you then head off on your own.";
	CreatureSexAftermath "Clockwork Fox" receives "PussyFuck" from "Player";
	increase morale of Player by 2;
	decrease humanity of Player by 2;

to say beatthecfguy1:
	say "     Your mechanically driven pussy responds to the poor creature's need and grows wet with oily lubricant. You climb atop him and guide his metallic member into your pussy, enjoying the soft, music box chimes he releases. You ride your hips up and down over his metallic flesh, sliding your well-lubricated mechanism over it. You can feel his member growing warmer as you fuck him. His internal mechanism meshes with yours and your motions and his come into synch and move with a gradually increasing pace. As you wind the weakened fox back up, he smiles up at you and runs his paws over your body, caressing you in thanks. Once his mainspring is taut and your mechanism is wound back up, you and he mesh fully and you reach your peak together. Your wet lubricant flows out, coating his semi-mechanical groin as he pumps his oily seed deep inside to fill you. You both release chiming, music box tones intermixed with your moans and groans of lustful pleasure, then separate. Fully wound once more, the mechanical fox guy gives you a peck on the cheek and heads down the halls, moving with smooth, mechanical grace that he lacked when you first encountered him.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Clockwork Fox";
	increase morale of Player by 2;
	decrease humanity of Player by 2;

to say beatthecfguy2:
	say "     With the sight of the defeated male before you, a metallic one at that, you lose all sense of control. Your body goes into autopilot, directing you to [if player is not naked]toss aside all things blocking your cock from your prize, and then you rush right over to the fox and lift his metal legs[else]rush right over to the fox and lift his metal legs[end if]. With his legs over you shoulders, and your cock angled just right, you slam forward. His anus seems to be self-lubricating, which makes the entire situation far easier on you, since you can immediately start pounding him with all your might.";
	say "     The lubricant feels like oil, and as you glance down, you realize that's exactly what it is. Your movements don't slow even the slightest bit, however, as you don't have the mind to care about why it's easy to fuck this tempting toy. All you care about is taking back an ounce of control over this crazy world. It may be fleeting, but you know this clockwork being is at your mercy. Your hips fly into a flury after you fully realize that, your balls pulling up into your crotch as you keep fucking the male with utter abandon.";
	WaitLineBreak;
	say "     It's only shortly thereafter that you release a gutteral moan, your cock surges and your seed spills into the mechanical innards of the beast before you. You find yourself still thinking about pounding the fox, plowing more seed deep into his innards, and there's no reason to resist, right? So you keep fucking, keep pounding at that ass, bits of cum pulling out with you before you pound right back in. You're spreading cum all over his hole the entire time, and as you reach your second peak, you grin in satisfaction.";
	say "     Not only did you beat this Clockwork fox, but you took it, twice, and spread your seed all over its hole. For the next while, everything that fucks this fox will be using your cum to help them along. That's the last thought you have before your give the fox a gutteral grunt, releasing your seed deep within it. You hold your hips to his ass, your balls and cock pulsing as you unload everything you've got. It feels like ages before everything finally shoots out of your cock, but when it does, you yank free and stand over your conquered toy.";
	WaitLineBreak;
	say "     With an arrogant grin, you grab you stuff and head for your next target.";
	CreatureSexAftermath "Clockwork Fox" receives "AssFuck" from "Player";
	increase morale of Player by 2;
	decrease humanity of Player by 2;




Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Clockwork Fox"; [name of the overall species of the infection, used for children, ...]
	add "Clockwork Fox" to infections of VulpineList;
	add "Clockwork Fox" to infections of FurryList;
	add "Clockwork Fox" to infections of MachineList;
	add "Clockwork Fox" to infections of MaleList;
	add "Clockwork Fox" to infections of TaperedCockList;
	add "Clockwork Fox" to infections of KnottedCockList;
	add "Clockwork Fox" to infections of BipedalList;
	add "Clockwork Fox" to infections of TailList;
	now Name entry is "Clockwork Fox"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
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
	now SeductionImmune entry is false;
	now libido entry is 40; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
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





Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Clockwork Fox Infection"	"Infection"	""	Clockwork Fox Infection rule	1000	false

This is the Clockwork Fox Infection rule:
	if Player has a body of "Clockwork Fox":
		trigger ending "Clockwork Fox Infection"; [Here it states, that the ending has been played.]
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
