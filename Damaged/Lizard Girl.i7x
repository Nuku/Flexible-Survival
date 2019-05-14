Version 8 of Lizard Girl by Damaged begins here.
[ Version 8.1.2 - Heat impregnation updated to ovichance - Stripes ]

"Adds a Lizard Girl to Flexible Survival's Wandering Monsters table."

Section 1 - Creature Responses

lizgirlmarked is a number that varies.
lizgirlimpreg is a number that varies.
lizgirlinheat is a number that varies.
lizgirlangry is a number that varies.

to say lizgirl herm:
	choose row MonsterID from the Table of Random Critters;
	now sex entry is "Both";
	now Cock Count entry is 1;
	now Cock Length entry is 8;
	now Ball Size entry is 1;
	infect;

to say lizgirl female:
	choose row MonsterID from the Table of Random Critters;
	now sex entry is "Female";
	now Cock Count entry is 0;
	now Cock Length entry is 0;
	now Ball Size entry is 0;
	infect;

to say lizgirl mark:
	now lizgirlmarked is 1;

to say lizgirl impreg:
	now lizgirlimpreg is 1;

to say lizgirl check angry:
	if lizgirlangry is 1:
		if HP of Player < 11:
			now fightoutcome is 19;
			say "     The lizard girl draws away from the fight.";
			LineBreak;
			say "     'Useless useless useless, your blood is weak and tainted!' she screams. With a final sigh she regains her composure and paces away.[combat abort]";

to say lizgirl attack:
	if lizgirlmarked is 0:
		say "[lizgirl mark]";
		if Player is male:
			say "     'Such a shame to have to come to this, I normally prefer my mates a little more willing. None the less,' she pins you down on your back, leaving you unable to move in your weakened state. Slowly she lowers down onto your [cock of Player] member, working herself up and down your rigid length. Just before your inevitable release she presses down tightly, taking your [Cock Length of Player] inch shaft deep inside herself. Just as the flow of seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, worming down inside you, coming to rest at your balls. 'Now it's my turn,' she purrs, snapping your attention away from her assault on your reproductive system. All of a sudden, a pressure builds all down your member's length as her own seed pours into your body, leaving your balls swollen and tingling.";
			say "     Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on to your thigh, rubbing her own juices over the wound. It stings a little, but you sigh contently, knowing she has future plans in store. 'Now be a good dear, and don't fight it anymore,' she chuckles over her shoulder before sashaying away.[lizgirl impreg][lizgirl female]";
		else:
			say "     'Oh, nothing for me to play with? I think we can fix that,' she growls sensually, pushing you on to your back and lowering herself between your legs. You would pull away but her reptilian tongue suddenly draws a gasp from you as it attacks your [cunt size desc of Player] cunt, leaving you paralyzed and unable to resist. As her ministrations increase you feel a tingling in your groin until finally her lips draw a feral moan from your own, the release of your juices cementing her dominance over you. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has future plans in store.[lizgirl herm]";
	else:
		if Player is not male:
			if lizgirlimpreg is 0:
				say "     'You are already marked as mine! And yet still here you are with nothing for me?' she says angrily, pushing you on to your back and lowering herself between your legs. This time, you know what's coming and you spread yourself a little wider for her as she draws a soft trail of whimpers from you while she takes to your dripping slit. Slowly as her ministrations increase you feel a tingling as your clitoris grows, swelling out into a male shaft, even as a pair of orbs bulge into existence below them. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has future plans in store.[lizgirl mark][lizgirl herm]";
			else:
				if lizgirlinheat is 0:
					say "     'Mmm, you carry my seed little one. Do not fear, you will be done soon,' the Lizard Girl murmurs close by your head, walking around you [one of]as she runs her clawed hands all over every exposed part[or]lashing out at random with her tongue every so often, leaving you tingling all over[at random].";
				else:
					say "     'Oh, what's this? Are we feeling a little tender, a little needy? Oh my poor baby. Come here,' the lizard girl says, taking you into her arms. For your part, it's a welcome relief as she starts to lap at your aching entrance, cleaning the latest stains of your semen that had leaked out. Your female orgasm wracks your body, leaving you at peace in the wonderful afterglow. Laying there still, you feel a need for something to taste and before you know what you are doing you have your head buried between the lizard girl's thighs, administering pleasure to her slit even as she continues on your own. After what feels like days of pleasure and release you slowly pull apart. 'My wonderful little treasure. You are, without a doubt, perfect,' she says, and you feel that inner glow intensify.";
					say "     Looking down at her thigh, you see another name scrawled there, similar to your own scars. 'She would be proud too,' you say softly, meaning every word of it. Kissing softly, you part ways.";
		else:
			if lizgirlimpreg is 0:
				say "     Looking to your thigh, the recognizable Lizard Girl smiles. 'Always wonderful to see my pets blossoming and ready.' She pins you to the ground on your back, leaving you unable to move in your weakened condition. Slowly at first she lowers down onto your [cock size desc of Player] rod, working herself up and down your rigid length. Just as your release is unavoidable she presses down tightly, engulfing your [Cock Length of Player] inch member deep inside herself. Just as the flow of your seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, down inside you, coming to rest at your balls. 'Now it's my turn,' she purrs, snapping your attention away from her assault on your reproductive system. All of a sudden, you feel a pressure build all down the length of your shaft as her own seed pours into your body, leaving your balls swollen and tingling.";
				say "     'Now be a good dear, and don't fight it anymore,' she says over her shoulder as she sashays away.[lizgirl female][lizgirl impreg]";
			else:
				say "     'Oh, who gave you this?' she says, running one claw over your [cock of Player] penis delightfully. 'Oh well, it matters not - it simply must go,' she says matter-of-factly and lowers her snout over your member. She begins to take it all into her, sucking, licking and sometimes biting. Your bliss is soon to come and when it does you only feel a dribble actually pass down your rod. With a start you realize your love tunnel is now awash with seed... your seed.[lizgirl female][ovichance]";
	infect;

to say lizgirl defeat:
	if lizgirlimpreg is 0:
		if lizgirlangry is 0:
			say "     She looks up at you mournfully. 'Oh the things I could've done with you...' she says softly before collapsing.";
		else:
			say "     Looking at you one last time, she sheds a tear. 'Such a wonderful fighter. How can such a flawed creature be so grand?' before collapsing on the ground.";
	else:
		if lizgirlmarked is 1:
			say "     'Did you not want this? Was the canvas too flawed?' she murmurs before collapsing on the ground.";
		else:
			say "     With a whine she says, 'I only wanted what was best for you, now another artist must finish my work' before collapsing.";
	if HP of ronda is 4:
		say "     Remembering that the lizard girl has part of the cure for Ronda, you run your hands over her body and slip a finger into her wet pussy. You start to rub and finger her cunt, making her moan and squirm in pleasure. She grips your shoulders firmly and bucks her hips as you pump a pair of fingers into her again and again. As her excitement builds and her vaginal walls quiver around your digits, she moans and bucks her hips almost as if thrusting before finally climaxing loudly. She sags against you, panting for breath after her orgasm. Still holding her up with one arm, you place a small vial under her pussy to gather the leaking juices, a little surprised to find them a thick and creamy white instead of clear juices. Sealing up the unusual sample, you resist the urge to lick your fingers clean and instead wipe them off after taking a moment to enjoy her thick, musky scent.";
		now carried of lizard juice is 1;
		now HP of ronda is 5;
	if Libido of Player > 33:
		if Player is male:
			say "[lizdefmale]";
		else if Player is female:
			say "[lizdeffemale]";
		else:
			say "[lizdefnone]";

to say lizdefmale:
	say "     You look down upon the defeated lizard girl's body, your arousal growing as you decide to sate your lust on this creature. You stride over to her and undress, your cock growing erect with thoughts of what you're about to do to her. You kneel down beside her and push her onto her stomach, causing her to groan. You position yourself behind her, taking hold of her hips with one hand while the other lifts up her reptilian tail to reveal her wet folds. You grin and lick your lips pulling her up to meet you as you press the tip of your [cock of Player] length against her sex and slide it in.";
	say "     You moan out in pleasure, her reptilian cunt instinctively gripping and pulling on your shaft, urging you to fuck her. Not wasting any time, you begin to buck into her tight depths, both arms rapped around her tail for support. The lizard girl beneath your gasps and groans at this treatment, her tail wrapping around you as much as it can, trying to pull you closer to her.";
	WaitLineBreak;
	say "     You grit your teeth and buck into her harder, trying your best to hold off the impending orgasm you feel coming. You can barely hold on any longer when the girl beneath you cries out as she climaxes, her cunt spasming along your length and sending you over the edge. Your cries of joy mix with hers as you empty your balls into her depths, her cunt milking your [cock size desc of Player] shaft for your cum. You pant and groan as you come down from your climax, slipping your length out of her cunt and letting your cum leak out from her hole. You stand up and give the lizard girl's ass a soft slap, making her shiver and groan, before you grab your gear and head out.";

to say lizdeffemale:
	say "     You look down upon the defeated lizard girl's body, your arousal growing as you decide to sate your lusts on this creature. You stride over to her and undress, your pussy getting nice and wet thinking about what you're going to do to her. You kneel down beside her and roll her onto her back, taking hold of her legs and spreading them open to show her sexy cunt. You grin, licking your lips and move yourself between her legs and slide your folds up against her own. She moan, involuntarily pressing back against you as you begin to grind your sex against her. Holding one leg of hers up with a hand, you take hold of one of your breasts with the other and gently begin groping it and playing with the nipple. You look down at the female beneath you and notice that she's begun fondling her own breasts too, tweaking her nipples, and rubbing them together.";
	say "     You smile and laugh, getting even more turned on by her wanton display of need. You gasp, eyes going wide as you feel a long scaly shape sliding between your cunt and hers. You glance down and moan as you see her tail pressing and grinding against both of her sexes, the end pressing up against yours and slipping in. You arch your back and groan in pleasure as she stimulates your insides with her tail, pressing up against the walls of your pussy and flicking the tip of her tail up and down your depths. Your body shakes and shivers at this, quickly bringing you to orgasm as your cunt clamps down on her tail, your fem juices squirting out around the sides. You collapse in a heap, panting hard and groaning in the aftermath. Not one to be ungrateful though, you roll yourself onto your stomach and move to press your mouth against her folds, gently kissing and licking at them.";
	WaitLineBreak;
	say "     Taking hold of the end of her tail, still slick with your juices, you press it against her sex and slide it in, using it like a living dildo. She gasps and squirms in response as you pump the end of her tail in and out of her while you lick and nibble at her clitoris. Soon enough she is crying out in orgasm, spraying your face with her juices. You eagerly lap them up and slip her tail out of her cunt. Once she lets out one last shiver or orgasmic pleasure, she collapses in an exhausted heap. Grinning all the while, you get up and grab your equipment and quietly sneak away, the taste of the lizard girl still on your lips.";

to say lizdefnone:
	say "     You look down upon the defeated lizard girl's body, you arousal growing as you decide to sate your lusts on this creature. However, you stop and look down at yourself, realizing that you lack the proper equipment. Growling at yourself, you turn around and storm off in a huff.";

to say lizgirl desc:
	setmongender 4; [creature is female]
	now lizgirlangry is 0;
	if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player or "Female Preferred" is listed in feats of Player or "Sterile" is listed in feats of Player or "One Way" is listed in feats of Player or "Always Cocky" is listed in feats of Player or "Always A Pussy" is listed in feats of Player:
		say "     A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace. She sniffs the air, and leaps at you without warning, slicing you on the arm. Leaning in close, not touching you with any part of herself, her slender forked tongue dances out, above the small trail of blood. Pulling back with a stricken look on her muzzle she cries out, 'This clay is useless!' she seems angry as all hell now, and comes at you with claws flashing.";
		now lizgirlangry is 1;
	else:
		say "     A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace, a half smile across her short muzzle. You can't help feel that to her, you are nothing more than an art piece awaiting her masterful expertise.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Lizard Girl"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She rakes you with her sharp claws.[or]A spinning scaled form precludes the tail that smacks into your face, knocking you down.[or]Laughing the reptile lances her head forward to bite you on the arm.[at random][line break][lizgirl check angry]"; [Text used when the monster makes an Attack]
	now defeated entry is "[lizgirl defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[lizgirl attack]";
	now desc entry is "[lizgirl desc]"; [ Description of the creature when you encounter it.]
	now face entry is "longer and thinner as soft dark colored scales cover your short muzzle, lending your ear less features a very reptilian air"; [ Face description, format as "Your face is (your text)."]
	now body entry is "compact and solid, yet showing off every curve to perfection, heavy compact muscles belay strength despite their small representation"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "beautiful reptilian scaled"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "Long and plump, your lizard-like tail is a solid mass of muscle."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human-shaped"; [ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it draws forward a little, a reptilian muzzle forming as your teeth reshape into delicate sharp points"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you can feel the tingling radiate outwards, muscles, bones and organs shifting and rearranging"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a wave of scales of seemingly random colors pours over you. Yet as they thicken and interlock, you notice a strangely beautiful pattern emerge"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your cheeks are pulled in and tight. A lizard tail grows out, strong and muscled, but shaped to nicely cover your tight bottom"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it feels wrong, as though it is not meant to stay and is just a means to an end"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";   [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 32; [ How many HP has the monster got? ]
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Park";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;   [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 1;   [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 1;   [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 8;   [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 4;   [ Width of female sex infection will try and give you ]
	now libido entry is 2; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;   [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "curvaceous"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]reptilian[or]lizard-like[at random]";
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
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


Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "Lizard Girl";
	now heat cycle entry is 2;
	now heat duration entry is 2;
	now heat start entry is "You feel a warming in your belly, the same tingling as when the lizard gave you her seed seems to begin and intensify, leaving you almost panting for breath.[toggle heat flag]";
	now heat end entry is "The heat, the ache, all fades slowly, leaving you relieved.[toggle heat flag]";
	now trigger text entry is "";
	now description text entry is "";
	now inheat entry is "[liz impreg]"; [The lizard girl's seed effectively internalized the male organs, leaving the poor character impregnating themselves every heat cycle. This will be much more 'fun' once repeated births are in :3 ]
	now fheat entry is true;
	now mpregheat entry is false;
	now mpregtrigger entry is "";

to say liz impreg:
	let found be 0;
	repeat with Z running from 1 to number of rows in Table of Random Critters:
		choose row Z from the Table of Random Critters;
		if Name entry matches the text "Lizard Girl":
			now MonsterID is z;
			now found is 1;
			break;
	if lizgirlimpreg is 1 and found is 1:
		if Player is not male:
			say "     With a gasp you feel something you thought long lost to you, a male orgasm, but it feels odd, as it should since you have no member, but it feels like you are still ejaculating. A growing fullness in your feminine depths reveals the true purpose of the Lizard Girl's earlier actions, she has reworked your reproductive system quite amazingly. As you look down in wonder, the glow of release still holding you immobile, you notice a small trail of cum leaking from your pussy lips.[ovichance]";
		else:
			say "     With a gasp you feel a male orgasm, but it feels odd, you cannot see any of your seed leaking out of your member, but it feels like you are still ejaculating. A growing fullness in your feminine depths reveals the true purpose of the Lizard Girl's earlier actions, she has reworked your reproductive system quite amazingly. As you look down in wonder, the glow of release still holding you immobile, you notice a small trail of cum leaking from your pussy lips.[ovichance]";

to say toggle heat flag:
	now lizgirlinheat is 1 minus lizgirlinheat;

Lizard Girl ends here.
