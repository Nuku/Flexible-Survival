Version 8 of Lizard Girl For FS by Damaged begins here.
[ Version 8.1.2 - Heat impregnation updated to ovichance - Stripes ]

"Adds a Lizard Girl to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

Section 1 - Monster Responses


lizgirlmarked is a number that varies.
lizgirlimpreg is a number that varies.
lizgirlinheat is a number that varies.
lizgirlangry is a number that varies.


to say lizgirl herm:
	choose row monster from the table of random critters;
	now sex entry is "Both";
	now cocks entry is 1;
	now cock length entry is 8;
	now cock width entry is 3;
	infect;

to say lizgirl female:
	choose row monster from the table of random critters;
	now sex entry is "Female";
	now cocks entry is 0;
	now cock length entry is 0;
	now cock width entry is 0;
	infect;

to say lizgirl mark:
	now lizgirlmarked is 1;

to say lizgirl impreg:
	now lizgirlimpreg is 1;

to say lizgirl check angry:
	if lizgirlangry is 1:
		if hp of player < 11:
			now fightoutcome is 19;
			say "     The lizard girl draws away from the fight.[line break][line break]'Useless useless useless, your blood is tainted and weak!' she screams. With a final sigh she regains her composure and paces away.[combat abort]";

to say lizgirl attack:
	if lizgirlmarked is 0:
		say "[lizgirl mark]";
		if cocks of player > 0:
			say "'Such a shame to have to come to this, I normally prefer my mates a little more willing. None the less.' she pins you to the ground on your back, leaving you unable to move in your weakened condition. Slowly at first she lowers down onto your [cock of player] member, working herself up and down your rigid length. Just as your release is unavoidable she presses down tightly, engulfing your [cock length of player] inch member deep inside herself. Just as the flow of your seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, down inside you, coming to rest at your balls. 'Now it's my turn.' she says, snapping your attention away from her assault on your reproductive system. All of a sudden, you feel a pressure build all down the your members length as her own seed pours into your body, leaving your balls swollen and tingling.[line break]Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future. 'Now be a good dear, and don't fight it any more.' she says over her shoulder as she sashays away.[lizgirl impreg][lizgirl female]";
		else:
			say "'Oh, nothing for me to play with? I have a cure for that.' she says, pushing you to your back and lowering herself between your legs. You would pull away but her reptilian tongue suddenly draws a gasp from you as it attacks your [cunt size desc of player] cunt, leaving you paralyzed and unable to resist. Slowly as her ministrations increase you feel a tingling in your groin. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future.[lizgirl herm]";
	otherwise:
		if cocks of player is 0:
			if lizgirlimpreg is 0:
				say "     'You are already marked as mine! And yet still here you are with nothing for me?' she says angrily, pushing you on to your back and lowering herself between your legs. This time, you know what's coming and you spread yourself a little wider for her as she draws a whimper after whimper from you as she takes to your dripping slit. Slowly as her ministrations increase you feel a tingling in your front as your clitoris grows, swelling out into a male shaft, even as a pair of orbs swell into existence below them. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future.[lizgirl mark][lizgirl herm]";
			otherwise:
				if lizgirlinheat is 0:
					say "     'Mmm, you carry my seed little one, do not fear, you will be done soon.' the Lizard Girl murmurs close by your head, walking around you [one of]as she runs her clawed hands all over every exposed part[or]lashing out at random with her tongue every so often, leaving tingling little spots all over you[at random].";
				otherwise:
					say "     'Oh, what's this? Are we feeling a little tender, a little needy? Oh my poor baby. Come here.' the lizard girl says, taking you into her arms. For your part, it's a welcome relief as she starts to lap at your aching entrance, cleaning the latest stains of your semen that had leaked out. Your orgasm, female in origin, wracks your body, leaving you at peace in the wonderful afterglow. Laying there still, you feel a need for something to taste and before you know what you are doing you have your head buried between the lizard girl's thighs, administering pleasure to her slit even as she continues on your own. After what feels like days of pleasure and release you slowly pull apart. 'My wonderful little treasure, you are, without a doubt, perfect.' she says, and you feel that inner glow intensify.";
					say "     Looking down at her thigh, you see another name scrawled there, similar to hers on your own leg. 'She would be proud too,' you say softly, meaning every word of it. Kissing softly, you part ways.";
		otherwise:
			if lizgirlimpreg is 0:
				say "     Looking to your thigh, the recognizable Lizard Girl smiles, 'Always wonderful to see my pets blossoming and ready.' she pins you to the ground on your back, leaving you unable to move in your weakened condition. Slowly at first she lowers down onto your [cock size desc of player] rod, working herself up and down your rigid length. Just as your release is unavoidable she presses down tightly, engulfing your [cock length of player] inch member deep inside herself. Just as the flow of your seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, down inside you, coming to rest at your balls. 'Now it's my turn.' she says, snapping your attention away from her assault on your reproductive system. All of a sudden, you feel a pressure build all down the your members length as her own seed pours into your body, leaving your balls swollen and tingling.[line break]";
				say "     'Now be a good dear, and don't fight it anymore.' she says over her shoulder as she sashays away.[lizgirl female][lizgirl impreg]";
			otherwise:
				say "     'Oh, who gave you this?' she says, running one claw over your [cock of player] penis delightfully. 'Oh well, it matters not - it simply must go,' she says matter of factly and lowers her snout over your member. She begins to take it all into her, sucking, licking and sometimes biting. Your bliss is soon to come and when it does you only feel a dribble actually pass down your rod. With a start you realize your love tunnel is now awash with seed... your seed.[lizgirl female][ovichance]";
			say "     'Such a shame to have to come to this, I normally prefer my mates a little more willing. None the less.' she pins you to the ground on your back, leaving you unable to move in your weakened condition. Slowly at first she lowers down onto your [cock of player] member, working herself up and down your rigid length. Just as your release is unavoidable she presses down tightly, engulfing your [cock length of player] inch member deep inside herself. Just as the flow of your seed starts to taper off you feel an incessant pressing at the opening in your rod. Deeper and deeper her tentacle member pushes, down inside you, coming to rest at your balls. 'Now it's my turn.' she says, snapping your attention away from her assault on your reproductive system. All of a sudden, you feel a pressure build all down the your members length as her own seed pours into your body, leaving your balls swollen and tingling.";
			say "[line break]Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future. 'Now be a good dear, and don't fight it any more.' she says over her shoulder as she sashays away.[lizgirl impreg][lizgirl female]";
[		otherwise:
			say "     'Oh, nothing for me to play with? I have a cure for that.' she says, pushing you to your back and lowering herself between your legs. You would pull away but her reptilian tongue suddenly draws a gasp from you as it attacks your [cunt size desc of player] cunt, leaving you paralyzed and unable to resist. Slowly as her ministrations increase you feel a tingling in your groin. She pulls back at last, licking her lips. Using one razor sharp claw she scratches her name, [one of]Ryslan[or]Stryth[or]Rasth[at random] on your thigh, rubbing her own juices over the wound. It stings a little, but you sigh in contentment knowing she has plans for your future.[lizgirl herm]";]
	infect;

to say lizgirl defeat:
	if lizgirlimpreg is 0:
		if lizgirlangry is 0:
			say "     She looks up at you mournfully, 'Oh what I could have done with you...' she says softly before collapsing.";
		otherwise:
			say "     Looking at you one last time, she sheds a tear. 'Such a wonderful fighter. How can such a flawed being be so grand?' before collapsing on the ground.";
	otherwise:
		if lizgirlmarked is 1:
			say "     'Why did you not want this? Was the canvas too flawed?' she murmurs before collapsing on the ground.";
		otherwise:
			say "     With a whine she says, 'I only wanted what was best for you, now another artist must finish my work' before collapsing.";
	if hp of ronda is 4:
		say "     Remembering that the lizard girl has part of the cure for Ronda, you run your hands over her body and slip a finger into her wet pussy.  You start to rub and finger her cunt, making her moan and squirm in pleasure.  She grips your shoulders firmly and bucks her hips as you pump a pair of fingers into her again and again.  As her excitement builds and her vaginal walls quiver around your digits, she moans and bucks her hips almost as if thrusting before finally climaxing loudly. She sags against you, panting for breath after her orgasm. Still holding her up with one arm, you place a small vial under her pussy to gather the leaking juices, a little surprised to find them a thick and creamy white instead of clear juices. Sealing up the unusual sample, you resist the urge to lick your fingers clean and instead wipe them off after taking a moment to enjoy her thick, musky scent.";
		now carried of lizard juice is 1;
		now hp of ronda is 5;
	if libido of player > 33:
		if cocks of player > 0:
			say "[lizdefmale]";
		else if cunts of player > 0:
			say "[lizdeffemale]";
		else:
			say "[lizdefnone]";

to say lizdefmale:
	say "     You look down upon the defeated lizard girl's body, you arousal growing as you decide to sate your lusts on this creature.[line break]You stride over to her and undress, your cock growing erect with thoughts of what you're about to do to her. You kneel down beside her and push her onto her stomach, causing her to groan. You position yourself behind her, taking hold of her hips with one hand while the other lifts up her reptilian tail to reveal her wet folds. You grin and lick your lips pulling her hips up to meet yours as you press the tip of your [cock of player] length against her sex and slide it in.[line break]You moan out in pleasure, her reptilian cunt instinctively gripping and pulling on your shaft, urging you to fuck her. Not wasting any time, you begin to buck into her tight depths, both arms rapped around her tail for support.[line break]The lizard girl beneath your gasps and groans at this treatment, her tail wrapping around you as much as it can, trying to pull you closer to her.";
	say "     You grit your teeth and buck into her harder, trying your best to hold of the impending orgasm you feel coming. You can barely hold on any longer when the girl beneath you cries out as she climaxes, her cunt spasming along your length and sending you over the edge. Your cries of joy mix with hers as you empty your balls into her depths, her cunt milking your [cock size desc of player] shaft for your cum.[line break]You pant and groan as you come down from your climax, slipping your length out of her cunt, your cum leaking out from her hole. You stand up and give the lizard girl's ass a soft slap, making her shiver and groan, before you grab your gear and head out.";

to say lizdeffemale:
	say "     You look down upon the defeated lizard girl's body, you arousal growing as you decide to sate your lusts on this creature.[line break]You stride over to her and undress, your pussy getting nice and wet thinking about what you're going to do to her. You kneel down beside her and roll her onto her back, taking hold of her legs and spreading them open to show her sexy cunt. You grin, licking your lips and moving yourself between her legs, sliding your folds up against hers.[line break]She moan, involuntarily pressing back against you as you begin to grind your pussy against hers. Holding one leg of hers up with a hand, you take hold of one of your breasts with the other and gently begin stoking it and playing with the nipple. You look down at the female beneath you and notice that she's begun fondling her own breasts too, tweaking her nipples, and rubbing them together.";
	say "     You smile and laugh, getting even more turned on by her wanton display of need.[line break]You gasp, eyes going wide as you feel a long scaly shape sliding between your cunt and hers. You glance down and moan as you see her tail pressing and grinding against both of her sexes, the end pressing up against yours and slipping in. You arch your back and groan in pleasure as she stimulates your insides with her tail, pressing up against the walls of your pussy and flicking the tip of her tail up and down your depths. Your body shakes and shivers at this, quickly bringing you to orgasm as your cunt clamps down on her tail, your fem juices squirting out around the sides.[line break]You collapse in a heap, panting hard and groaning in the aftermath. Not one to be ungrateful though, you roll yourself onto your stomach and move to press your mouth against her folds, gently kissing and licking at them.";
	WaitLineBreak;
	say "     Taking hold of the end of her tail, still slick with your juices, you press it against her sex and slide it in, using it like a living dildo. She gasps and squirms in response as you pump the end of her tail in and out of her while you lick and nibble at her clitoris. Soon enough she is crying out in orgasm, spraying your face with her juices. You eagerly lap them up and slip her tail out of her cunt. Once she lets out one last shiver or orgasmic pleasure, she collapses in an exhausted heap.[line break]Smiling all the while, you get up and grab your equipment and quietly sneak away, the taste of the lizard girl still on your lips.";

to say lizdefnone:
	say "     You look down upon the defeated lizard girl's body, you arousal growing as you decide to sate your lusts on this creature. However, you stop and look down at yourself, realizing that you lack the proper equipment. Growling at yourself, you turn around and storm off in a huff.";

to say lizgirl desc:
	setmongender 4;		[creature is female]
	now lizgirlangry is 0;
	if "Male Preferred" is listed in feats of player or "Herm Preferred" is listed in feats of player or "Female Preferred" is listed in feats of player or "Sterile" is listed in feats of player or "One Way" is listed in feats of player or "Always Cocky" is listed in feats of player or "Always A Pussy" is listed in feats of player:
		say "     A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace. She sniffs the air, and leaps at you without warning, slicing you on the arm. Leaning in close, not touching you with any part of herself, her slender forked tongue dances out, above the small trail of blood. Pulling back with a stricken look on her muzzle she cries out, 'This clay is useless!' she seems angry as all hell now, and comes at you with claws flashing.";
		now lizgirlangry is 1;
	otherwise:
		say "     A five foot tall upright lizard stands before you. Dark green scales cover her back leading to a lighter almost blue shade around her front, with a white stripe leading from her neck down, between her small breasts to her cleft. She stands appraising, looking at you with a detached sort of grace, a half smile across her short muzzle. You can't help feel that to her, you are nothing more than an art piece awaiting her masterful expertise.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Lizard Girl"; [Name of your new Monster]
	now attack entry is "[one of]She rakes you with her sharp claws.[or]A spinning scaled form precludes the tail that smacks into your face, knocking you down.[or]Laughing the reptile lances her head forward to bite you on the arm[at random][line break][lizgirl check angry]"; [Text used when the monster makes an Attack]
	now defeated entry is "[lizgirl defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[lizgirl attack]";
	now desc entry is "[lizgirl desc]";	[ Description of the creature when you encounter it.]
	now face entry is "longer and thinner as soft dark colored scales cover your short muzzle, lending your ear less features a very reptilian air";	[ Face description, format as the text "Your face is (your text)."]
	now body entry is "compact and solid, yet showing off every curve to perfection, heavy compact muscles belay strength despite their small representation";[ Body Description, format as the text "Your Body is (your text)."]
	now skin entry is "beautiful reptilian scaled";	[ skin Description, format as the text "You have (your text) skin."]
	now tail entry is "Long and plump, your lizard-like tail is solid mass of muscle.";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human shaped";[ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it draws forward a little, a reptilian muzzle forming as your teeth reshape into delicate sharp points"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you can feel the tingling radiate outwards, muscles, bones and organs shifting and rearranging"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "a wave of scales of seemingly random colors pours over you. Yet as they thicken and interlock, you notice a strangely beautiful pattern emerge"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your cheeks are pulled in and tight.  A lizard tail grows out, strong and muscled, but shaped to nicely cover your tight bottom"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it feels wrong, as though it is not meant to stay and is just a means to an end"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";	  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 32;				[ How many HP has the monster got? ]
	now lev entry is 3;				[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 5;				[Amount of Damage monster Does when attacking.]
	now area entry is "Park";	 [ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;				[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;		  [ Length infection will make cock grow to if cocks]
	now cock width entry is 3;		  [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;				[ Number of Breasts infection will give you. ]
	now breast size entry is 1;		  [Size of breasts infection will try to attain ]
	now male breast size entry is 0;	 [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;				[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		  [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 4;		  [ Width of female sex  infection will try and give you ]
	now libido entry is 2;				[ Amount player Libido will go up if defeated ]
	now loot entry is "";				[ Loot monster drops, ]
	now lootchance entry is 0;		  [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "curvaceous";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]reptilian[or]lizard-like[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]



Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect name entry is "Lizard Girl";
	now heat cycle entry is 2;
	now heat duration entry is 2;
	now heat start entry is "You feel a warming in your belly, the same tingling as when the lizard gave you her seed seems to begin and intensify, leaving you almost panting for breath.[toggle heat flag]";
	now heat end entry is "The heat, the ache, all fades slowly, leaving you relieved.[toggle heat flag]";
	now trigger text entry is "";
	now description text entry is "";
	now inheat entry is "[liz impreg]";			[The lizard girls seed effectively internalised the male organs, leaving the poor character impregnating themselves every heat cycle. This will be much more 'fun' once repeated births are in :3 ]
	now fheat entry is true;
	now mpregheat entry is false;
	now mpregtrigger entry is "";


to say liz impreg:
	let found be 0;
	repeat with Z running from 1 to number of rows in table of random critters:
		choose row Z from the table of random critters;
		if name entry matches the text "Lizard Girl":
			now monster is z;
			now found is 1;
			break;
	if lizgirlimpreg is 1 and found is 1:
		if cocks of player is 0:
			say "     With a gasp you feel something you thought long lost to you, a male orgasm, but it feels odd, as it should since you have no member, but it feels like you are still ejaculating. A growing fullness in your feminine depths reveals the true purpose of the Lizard Girl's earlier actions, she has reworked your reproductive system quite amazingly. As you look down in wonder, the glow of release still holding you immobile, you notice a small trail of cum leaking from your pussy lips.[ovichance]";
		otherwise:
			say "     With a gasp you feel a male orgasm, but it feels odd, you cannot see any of your seed leaking out of your member, but it feels like you are still ejaculating. A growing fullness in your feminine depths reveals the true purpose of the Lizard Girl's earlier actions, she has reworked your reproductive system quite amazingly. As you look down in wonder, the glow of release still holding you immobile, you notice a small trail of cum leaking from your pussy lips.[ovichance]";

to say toggle heat flag:
	now lizgirlinheat is 1 minus lizgirlinheat;


[ Edit this to have the correct name as well]
Lizard Girl For FS ends here.
