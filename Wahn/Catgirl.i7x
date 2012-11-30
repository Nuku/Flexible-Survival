Version 1 of Catgirl by Wahn begins here.
[Version 1 - Base Infection]

"Adds a Catgirl to Flexible Survival's Wandering Monsters table."
[Description text for this Extension.]

Section 1 - Monster Responses

when play begins:
	add { "Catgirl" } to infections of girl;
	add { "Catgirl" } to infections of furry;
	add { "Catgirl" } to infections of Felinelist;

to say Catgirl_Wins:
	say "     The catgirl looks at you a bit disdainfully, then walks away with a flirt of her tail, on the lookout for a more worthy mating partner.";
	
to say Catgirl_Loses:
	say "     With a lust-filled mrowl, the catgirl accepts your dominance, dropping to all fours and flirting her tail at you. She lowers her chest and spreads her legs a bit, presenting you with a pussy just ready to be mounted.";
	if cunts of player > 0 and cocks of player < 1:		[female]
		say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, running your hands over her breasts and then starting to fondle her pussy. As she purrs and mrowls lustfully under your massaging fingers, your own libido awakens and you quickly push off your clothes and play with your female parts in tandem with the catgirl's.";
		say "     Her yowls and moans get louder and louder, and before too much longer, the catgirl orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you focus more on your own pussy, rubbing your fingers over sensitive lips. Then you get another idea and softly take hold of the feline's tail, rubbing it against your pussy. With its soft length rubbing your private parts, you soon join the catgirl in her bliss.";
		say "     Breathing deeply, you hold on to the catgirl for a while, stroking her fur as you come down from your high. She proves her amazing flexibility by cleaning herself, licking up all the female juices out of her fur. Watching her bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off. Pretty flighty, these hot felines - too bad, since having one all to your own would be awesome. For now, it looks like you'll have to hunt down her or another of the street-cats if you want another round.";
	otherwise if cocks of player > 0:									[male + herm]
		say "     Who could resist such a nice invitation? Quickly throwing off your clothes, you take hold of your already half-hard cock and kneel behind the catgirl. Her fur feels amazingly soft against your shaft as you rub it over the inside of her legs, then bring it to her moist opening. The feline girl gives a lust-filled yowl as you plunge in deep, burying your manhood into her in one quick thrust.";
		say "     It feels great to reap the pleasure you earned by defeating her, the now willing catgirl gripping your cock tightly with her inner muscles as you fuck her. The sexy little feline is deep in the grip of heat, using her flexible body in any way she can to get you to cum into her. And before too much longer, her efforts bear fruit, with the urgent need spend your load rising in your balls. With a last deep thrust, you bottom out in her, then shoot spurt after spurt of seed directly into her womb.";
		say "     Breathing deeply, you hold on to the catgirl for a while, stroking her soft fur until your shaft softens and slips from her body. She proves her amazing flexibility by cleaning herself up afterwards, licking up any cum that ran out of her pussy and cleaning up the rest of her fur too. Watching her bend and stretch has an invigorating effect on your maleness, and you're almost ready for another go when the catgirl finishes her cleaning and dashes off. Pretty flighty, these hot felines - too bad, since having one all to your own would be awesome. For now, it looks like you'll have to hunt down her or another of the street-cats if you want another round.";
	otherwise:																				[neuter]
		say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, running your hands over her breasts and then starting to fondle her pussy. As she purrs and mrowls lustfully under your massaging fingers, your genderless body attunes with hers, letting you feel part of the pleasure you're giving her.";
		say "     The catgirl's yowls and moans get louder and louder, and before too much longer, she orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you become a bit light-headed too, the fringe of orgasm you're picking up making you think about becoming a female yourself.";
		say "     She proves her amazing flexibility by cleaning herself up afterwards, licking her own female juices out of the fur between her legs. Watching her bend and stretch has an invigorating effect on you, waking a deep aching inside for a cock to fuck her with. All too soon, she finishes her cleaning and dashes off. Pretty flighty, these hot felines - too bad, since having one all to your own would be awesome. For now, it looks like you'll have to hunt down her or another of the street-cats if you want another round.";
		
to say Catgirl_Desc:
	say "     A slender black-furred female crosses your path, meowing as she comes closer to have a look at you. She's a mixture between human and cat, having short cream colored fur covering her humanoid body, pointy ears, typical cat's eyes and a long tail. She walks with seductive grace on two digitigrade paws.";		
	say "     After a moment of studying you from a distance, it seems she comes to a decision and starts to give you a bit of a show. With flowing movements, she runs her hands over her own body, stroking over her own breasts and flirting her tail at you. Then she demonstratively bends over, flashing you her moist and ready pussy.";
	say "     But as you step closer and each out to touch her, she hisses and bares her claws, though even then still showing off her body. Looks like she's in heat and wants to be mated - but only from a partner who proves his strength and virility.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Catgirl";
	now attack entry is "She rakes you with her claws, leaving long bloody marks on your body.";
	now defeated entry is "[Catgirl_Loses]";
	now victory entry is "[Catgirl_Wins]";
	now desc entry is "[Catgirl_Desc]";
	now face entry is "a mixture of cat and human, with rather sharp features and a mouth full of sharp teeth. Vertically slitted eyes and large pointy cat's ears higher up than a human's would be complete the picture";
	now body entry is "very slender and sleek, built for speed and agility. Your hands are mostly human, although equipped with sharp claws, while your long legs end in more paw-like digitigrade feet";
	now skin entry is "black, soft-furred";
	now tail entry is "You have a long mobile tail over the tight buns of your behind. It's pretty useful for helping you hold your balance in any situation.";
	now cock entry is "spined";
	now face change entry is "it reshapes itself, giving you sharp features and a pretty pointy chin. You feel your mouth filling with a predator's sharp teeth and your ears grow and migrate further up on your head";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a slender, sleek new shape. Your hands acquire sharp claws, while your feet take the shape of digitigrade paws";
	now skin change entry is "short black fur sprouts all over your body";
	now ass change entry is "your ass becomes tight and firmly muscled. This is followed by a very strange feeling as a long tail rapidly forms above it, making you stumble around for a moment before you adjust to using it for balance";
	now cock change entry is "it develops lots of tiny spines";
	now str entry is 12;
	now dex entry is 22;
	now sta entry is 14;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";			[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 60;				[ How many HP has the monster got? ]
	now lev entry is 8;				[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 8;				[ Amount of Damage monster Does when attacking.]
	now area entry is "Warehouse";		[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 0;				[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;			[ Length infection will make cock grow to if cocks]
	now cock width entry is 0;			[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2;				[ Number of Breasts infection will give you. ]
	now breast size entry is 2;			[ Size of breasts infection will try to attain ]
	now male breast size entry is 0;		[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;				[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 16;			[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 8;			[ Width of female sex  infection will try and give you ] 
	now libido entry is 25;				[ Amount player Libido will go up if defeated ]
	now loot entry is "";				[ Loot monster drops, ]
	now lootchance entry is 0;			[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]flexible[or]slender[at random]";
	now type entry is "feline";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

when play ends:
	if bodyname of player is "Catgirl" and cunts of player > 0:
		if humanity of player is less than 10:
			say "Before long, your instincts take over, with your human life only a fading memory. Driven by powerful urges to be bred by any strong male, no matter what shape, you roam the streets of the city and flirt your sexy body in front of those you meet.";
			say "When the military finally moves in, a scouting soldier finds you in a fight with another potential mate and 'saves' you, driving off the creature with a few shots in the air. As worked up as you are, you immediately rub up against him and soon have the human's cock balls deep inside you. Several more matings follow as he escorts you out of the city, and before you even arrive at the holding facility, your belly starts to bulge with the fruit of your soldier's fertile seed. The man smuggles you past the checkpoints and brings you home with him as his private sex-pet, very well taken care of and fucked daily. You bear him several litters of kittens, many of whom go to his buddies who helped smuggle you out.";
		otherwise:
			say "When the military moves in, you're brought to a holding facility with all the other survivors, with doctors and scientists struggling to check out everyone coming in. As you wait for your turn, day after day in overfilled quarters, you spend your time flirting with several of the younger soldiers, leading to more than one intimate encounter. Despite your body urging you to let them knock you up, you're always careful to use condoms, not wanting to end up like one of the baby factories you see around you.";
			say "After finally getting released two weeks later, you try to find your niche in the new and changed world. Knowing that most humans just can't resist watching your slender feline body as you move, you take up dancing, some of it erotic some otherwise. With the raised acceptance of asexuality in the post-infection world, you make your big break a while later starring in a popular musical starring cats. People just love watching the crew move and dance as only they can, and the climax of the play - where you as the lead are mated by a handsome tom - is great fun for everyone involved.";

Catgirl ends here.
