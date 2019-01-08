Version 1 of Copper Dragoness by Kurainyx begins here.
[Version 1 - Creation]

Section 1 - Monster Responses

when play begins:
	add { "Copper Dragoness" } to infections of girl;
	add { "Copper Dragoness" } to infections of furry;

to say CopperDragonessDesc:
	setmongender 4;	[female]
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "     Loud rustling is the only warning you get before a truck-sized dragon bursts through a nearby thicket of trees. Its scales are a reddish-brown, having a metallic sheen that makes them look like copper while two horns jut out from the top of its head with frills adorning the sides. Noting the curves and sleek form of the beast, you realize that the dragon is a dragoness, a dragoness who is leering at you with a hungry glint in her eyes as she unfurls her wings to charge toward you.";

to say LoseToCopperDragoness:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:	[Random chance of unbirth or anal vore scene]
		if a random chance of 1 in 2 succeeds:	[unbirth]
			if scalevalue of player > 4:	[Too big for unbirth]
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form, however, she frowns slightly when she looks over your large [bodydesc of player] body. Grabbing you with her claws, the reptile flips onto her back, taking you with her as she directs your face to her gaping pussy. At first, you think that she just wants you to merely service her, but because of her incessant pushing, you realize that she's actually trying to shove you into her cunt. However, after a minute without any progress, it becomes clear that you're simply too big to fit inside of the female. With a disgruntled growl, the dragoness kicks you off of her and stomps away.";
			else:
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form, picking you up with one of her claws as she reclines her back against a thick tree. After her other claw divests you of your gear, she brings you close to her mouth, and her tongue darts out from between her scaly lips to drag across your face, then to the rest of your body. Once you're coated with saliva, the beast brings you to between her legs, and her other claw moves below you to part her slit, revealing the pink, cavernous depths of her pussy. Realizing the dragoness's plan, you try to resist by pushing against the soft scales surrounding her cunt while you're lowered toward her sex, but between your slathered body and her strength, your head is effortlessly shoved inside of the damp tunnel.";
				say "     The salacious female rumbles in delight as you sink into her, and you can't do anything to halt your progress into the darkness, slick flesh eagerly engulfing you and contouring to your body. Inch by inch, you are slowly fed into the slit, the scaly beast huskily crooning from using your helpless form. Even as the last of you passes through the dragoness's lower lips, her claw tips follow you, continuing to gently push you further down the tight tunnel. Eventually, the claws retreat, and your journey into the dragoness's sex comes to a stop, but with you so deep inside of her, you can barely move, the pliant walls pressing into you from all sides. And yet, despite being trapped in the sweltering, confined space, you can't help but get aroused from stewing in the lavacious reptile's musk, as well as the oddly erotic caresses of the encompassing soft tissue.";
				say "     With no way to tend to yourself, you are kept in a suspended state of lust, but eventually, the fleshy prison begins to shake as the surrounding walls clenches down on you. Only when femcum starts to pool around you, accompanied by the dragoness's lustful growls, do you realize that your captor must be pleasuring herself because of the new toy inside of her. The walls press down on you one final time before you are rapidly shot back the way you came from, suddenly releasing you back into the outside world when you are forcibly ejected out of the dragoness's pussy, along with a torrent of her juices. Reeking of sex and exhausted, you shakily stand back up, only to balk when you see the lecherous beast eyeing you. Fortunately, she simply gives you a satisfied smirk and makes no effort to pursue you while you stumble off to recover from your twisted ordeal.";
		else:	[anal vore]
			if scalevalue of player > 4:	[Too big for anal vore]
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form, however, she frowns slightly when she looks over your large [bodydesc of player] body. She moves around until all that you can see above is a voluptuous, scaly booty. You are propped upright by the reptile's sinuous tail just as her ample rear crashes into you, grinding her anus into your face. At first, you think that she just wants you to merely service her, but because of her incessant pushing, you realize that she's actually trying to shove you into her ass. However, after a minute without any progress, it becomes clear that you're simply too big to fit inside of the female. With a disgruntled growl, the dragoness throws you to the side and stomps away.";
			else:
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form. One of her massive claws pins your prone form, but thankfully not rough enough to cause any further injuries. Her head then lowers to your trapped body, and her tongue darts out from between her scaly lips to drag across your face, then to the rest of your body. Once you're coated with saliva, the beast picks you up in her claw as she lowers her body, arching her back to leave only her rear end off of the ground. You are then brought to the dragoness's behind, and when she lifts her tail high into the air, you are treated to the sight of her puckered asshole. Realizing what lays in wait, you try to escape your captor's grasp, but your feeble struggles are no match for her raw strength.";
				say "     You can only watch in horror as your lower half is fed into her hungry sphincter, the hot, pliant tissue stretching to accommodate your helpless form. More and more of you disappears into the depraved female's depths as she slowly pushes you in, prolonging her pleasure while dragging out your abuse. Eventually, when only your head is awaiting to sink into her ass, the dragoness stands back up and lowers her tail, letting the clenching muscles at the base of her tail to finish taking you in. The light of the outside world shrinks away as you are ferried deeper into the reptile's anus until everything fades into darkness. The sweltering confines completely immobilizes you, hot dragon meat clenching down on you from every angle amidst a din of squelching flesh. and yet, despite being trapped in the depraved prison, the encompassing walls squeezing down on you is strangely erotic.";
				say "     Eventually, through the ever-present clenches from your surroundings, you can feel your fleshy prison shift as the dragoness flops onto her side, followed by even more movement as everything begins to shake. Muffled as they are, ragged breathing and lustful growls tell you that your captor is greatly enjoying the new toy inside of her. With a mighty roar, and one final squeeze on your helpless form, you are expelled from the dragoness's anus, back into the outside world, and unceremoniously dumped onto the ground. Exhausted, you shakily stand back up, only to balk when you see the lecherous beast eyeing you. Fortunately, she simply gives you a satisfied smirk and makes no effort to pursue you while you stumble off to recover from your twisted ordeal.";

to say BeatCopperDragoness:
	if inasituation is true:
		say "     "; [dealt with at the event source]
	else:
		say "     Exhausted from the battle, the dragoness slumps over in defeat, allowing you to continue on your way.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Copper Dragoness"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The dragoness bowls you over and grinds her crotch on your prone form[or]A powerful beat of the dragoness's wings creates a gust of wind that knocks you down[or]With surprising speed, the dragoness whirls around, her tail whipping around and slamming into you[at random]."; [ Successful attack message ]
	now defeated entry is "[BeatCopperDragoness]"; [ Text when monster loses. Change 'Behemoth' as above. ]
	now victory entry is "[LoseToCopperDragoness]"; [ Text when monster wins. Change 'Behemoth' as above. ]
	now desc entry is "[CopperDragonessDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is ""; [ Face. Format as Your face is [face of player]. ]
	now body entry is ""; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is ""; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is ""; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is ""; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is ""; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is ""; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is ""; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is ""; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 32; [ These are now the creature's stats... ]
	now dex entry is 25; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 30; [ These values may be used as part of alternate combat.]
	now per entry is 20;
	now int entry is 22;
	now cha entry is 10;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 240; [ The monster's starting HP. ]
	now lev entry is 20; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 35; [ Monster's average damage when attacking. ]
	now area entry is "Island"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 4; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 16; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 10; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 0; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "scaly"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "draconic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Copper Dragoness ends here.
