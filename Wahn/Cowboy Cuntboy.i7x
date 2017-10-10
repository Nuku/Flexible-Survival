Version 1 of Cowboy Cuntboy by Wahn begins here.
[Version 1 - Initial Setup]

"Adds a Cowboy Cuntboy to Flexible Survival's Wandering Monsters table."

Section 1 - Monster Responses

to say Cowboy_Wins:
	say "     As you go down, the cowboy gives you a hard kick in the side with his right hoof that drives the air out of your lungs. 'I don't want to see you out here again, do you hear me, fucker?' You can only groan, in answer to which he gives you another kick and walks off.";

to say Cowboy_Loses:
	say "     Pretty beat up, the cowboy raises his hands in a placating gesture. 'Okay okay - you win, you bastard. Let's get this over with.' With that, he sets his cowboy hat on the ground, then undoes his jeans and slides them down over his legs. As he does so, the true reason for the bulge in his pants comes into sight - there's a pair of small and perky breasts on his pubic mound, just a bit up and to the sides of a very nice pussy.";
	if cocks of player > 0 or cunts of player > 0: [male/female/herm]
		say "     [bold type]So, do you want to have sex with him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents: [fuck him]
			LineBreak;
			if cocks of player > 0: [males]
				say "     Telling the cowboy to lie down on the ground, you quickly strip off your own clothing, then take in hand your rapidly hardening cock. Kneeling between Corbin's legs, you rub it up and down over the scowling anthro horse's pussy, drawing an involuntary moan from him. 'You're no better than an - aaah' he starts saying, then gives a breathless gasp as you spread his pussy lips with the tip of your shaft and thrust deep. Sinking your manhood into this equine cuntboy, you feel the tight walls of his passage around your cock start to get wet quickly as his body reacts to your entry. Starting to fuck him with rapid thrusts in and out, you make him pant and moan, helplessly in the grip of his body's arousal and only cussing at you from time to time in between.";
				say "     Putting your hands on the small breasts near his pussy, you fondle and hold them, pushing him even deeper into helpless arousal. Soon you've got Corbin writhing on the ground under you, ripping out bales of grass left and right as he tries to hold on to anything in a lust-filled haze. His pussy feels amazing around your manhood, warm and tight, plus really well lubed with the copious amounts of femcum he's leaking. You decide to switch to a different rhythm for a while, now pounding into him as deep as you can, grinding your hips against his each time to rub your cock against his insides before pulling back again.[if cock length of player > 12] With the length of your shaft, you even reach his cervix with that, rubbing up against it and making Corbin moan breathlessly.[end if] Seems like that really hit the spot with the cuntboy - it doesn't take much longer until he suddenly tenses, his whole body stiffening as a breathtaking climax runs through him.";
				WaitLineBreak;
				say "     You continue thrusting into the anthro horse, satisfied at having made him come and now eager to join him in orgasm. With your movements speeding up and you getting closer and closer to the point of no return, you get so focused on it that you almost overhear the next thing Corbin says. In between deep breaths as he rides out the last of his orgasm, the cuntboy pants 'You've got your fun, but... at least don't cum in me, ok?'";
				say "     With your orgasm rapidly approaching, you've got to decide fast... where do you cum? In ([link]Y[as]y[end link]) or out ([link]N[as]n[end link])?";
				if player consents: [just fill him up]
					LineBreak;
					say "     You just keep going, slamming forward one last time, your hard cock all the way in the equine cowboy's vagina as it starts pulsing with burst after burst of fertile seed being pumped into his body. A grin spreads on your face as you imagine it splashing against his cervix, passing through that and filling his womb. Corbin lets his head drop back to the ground, muttering 'Fucking feral bastard'. You stay on top of him for a while longer till the last spurt of your cum is inside him, then stand up and grab your gear, leaving the freshly bred cowboy lying there as you move on.";
				else: [pull out]
					LineBreak;
					say "     Feeling the familiar tingle rise in your balls, you decide not to be too much of an ass about this and quickly pull out, spraying long ropes of cum all over the equine cowboy's muscular chest. Looking down over himself as you come, Corbin lets out a relieved sigh, then lowers his head to rest against the ground. Having gotten what you wanted off him, you stand up and grab your gear, leaving the freshly fucked cowboy lying there as you move on.";
			else if cunts of player > 0: [females]
				say "     Telling the cowboy to kneel, you quickly strip off your own clothing, then come to stand closely in front of him. One hand stroking your pussy lips, you hold them spread apart as you pull Corbin's head against your crotch with the other hand. After only a seconds hesitation, he starts licking you out, showing a pretty good skill with his wide equine tongue. Putting both of your hands on his equine head, you let the pleasure of his oral attention wash over you, moaning in satisfaction. Then suddenly, he brings his fingers into the action too, pushing them in between your pussy lips and fondling your insides with a knowing touch.";
				say "     It doesn't take all that long until the equine cuntboy's tonguework and fingering pushes you over the edge, making you gasp as an intense orgasm floods your senses with pleasure. Panting, you sink to the ground as your knees get a bit weak, then lie back in the soft grass. Meanwhile, Corbin uses this opportunity to leave while you're distracted with yourself.";
		else: [don't fuck him]
			say "     With a shrug, you turn around and walk away.";
	else: [neuter]
		say "     With you not having any genitals, there isn't anything for you to do with him. With a shrug, you turn around and walk away.";

to say Cowboy_Desc:
	setmongender 8;
	say "     You run into Corbin, the anthro horse cowboy. He doesn't seem at all happy to see you, balling his fists and rushing forward...";

Section 2 - Monster Insertion, Drop Item

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Cowboy Cuntboy";
	now attack entry is "[one of]He gives you a good kick.[or]The cowboy lands a blow to your stomach.[at random]";
	now defeated entry is "[Cowboy_Loses]";
	now victory entry is "[Cowboy_Wins]";
	now desc entry is "[Cowboy_Desc]";
	now face entry is "that of an anthro equine, with a broad muzzle, large round blue eyes and expressive horse-like ears, sitting pretty far up on your elongated head";
	now body entry is "large and muscular, with strong digitigrade equine legs ending in powerful hooves. Your hands seem to be slightly hoof-like as well, the ends of your fingers tipped with little hooflet like nails. Your crotch has a pair of small, perky breasts, slightly above the genitals";
	now skin entry is "[one of]cow-like[or]dappled[or]black and white patterned[or]softly furred[or]short fur covered[at random]";
	now tail entry is "You have a long horse-like tail swaying behind you almost to the ground, its long strands of coarse hair covering your ass completely as it flicks this way and that seemingly on its own.";
	now cock entry is "[one of]equine[or]horse-like[or]blunt[or]powerful[at random]";
	now face change entry is "your mouth stretches forward, your nose flattening as it merges with your equine muzzle. You find yourself groaning slightly as your forehead flattens and your eyes shift their position to the sides slightly. Meanwhile your ears lengthen into larger and pointed horse-like ears, which come to rest atop your equine face"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your muscles seem to shift around underneath your skin, making you stumble around trying to keep your balance for a moment. Looking down, you see that you new have powerful digitigrade legs ending in a pair of hooves. The rest of your body finishes changing as well, your hands having acquired rather hoof-like nails, and your chest and torso pretty broad and more equine looking. Also, your crotch seems to have acquired a pair of small, perky breasts sitting a bit above and to the sides of your genitals"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "soft cow-fur begins to push its way out of your flesh, the black and white pattern forming into several rather interesting dappled shapes as it finishes covering your body completely."; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it seems to tighten into a rather broader and flatter ass, long strands of thick equine hair beginning to sprout from the base of your spine, quickly growing out to form a long and handsome equine tail which hangs down past your knees and seems to flick from side to side as if it had a mind of its own"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it grows erect and aroused, before beginning to shift and change. Its tip becomes pretty broad and flattens into a rather blunt equine shape, while a proper sheath forms around the base, and a ribbed ring forms about halfway up your changed member"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 35;                 [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 4;                 [ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ]
	now wdam entry is 6;                [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Nowhere";        [ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;         [ Length infection will make cock grow to if cocks]
	now cock width entry is 0;          [ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;             [ Number of Breasts infection will give you. ]
	now breast size entry is 4;         [Size of breasts infection will try to attain ]
	now male breast size entry is 2;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12;        [ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;          [ Width of female sex  infection will try and give you ]
	now libido entry is 40;             [ Amount player Libido will go up if defeated ]
	now loot entry is "cowboy milk";    [ Loot monster drops, ]
	now lootchance entry is 25;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscular[or]equine[at random]";
	now type entry is "equine";         [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "hoofstomp"; [ Row used to designate any special combat features, "default" for standard combat. ]

Table of Game Objects(continued)
name	desc	weight	object
"cowboy milk"	"A plastic bottle full of milk of Corbin James, the cowboy cuntboy you met."	1	cowboy milk

instead of sniffing cowboy milk:
	say "Smells good, fresh milk...";

cowboy milk is a grab object.
the usedesc of cowboy milk is "[cowboy milk use]";

to say cowboy milk use:
	say "Screwing the cap of the plastic bottle, you put it to your lips and drink its contents with deep swallows of the fresh and tasty milk.";
	decrease thirst of the player by 10;

cowboy milk is infectious. The strain of cowboy milk is "Cowboy Cuntboy".

Section 3 - Endings

[
when play ends:
	if bodyname of player is "Cowboy Cuntboy":
		if humanity of player is less than 10:
			if level of player > 10:
				say "     A";
			else:
				say "     B";
		else:
			say "     C";

]

Cowboy Cuntboy ends here.
