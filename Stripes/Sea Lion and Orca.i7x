Version 1 of Sea Lion and Orca by Stripes begins here.

"Adds a special fight with the Sea Lion and Orca Toys in the Bouncy Castle, managed as a creature. It is not an infection."

Section 1 - Monster Responses

to say slaodesc:
	setmongender 19; [creatures are mixed/variable]
	choose row monster from table of random critters;
	if hardmode is true and level of player > 4:
		let debit be level of player - 4;
		now HP entry is 45 + ( ( debit * 9 ) / 2 );
		now monsterHP is 45 + ( ( debit * 9 ) / 2 );
		now lev entry is 4 + debit;
		now wdam entry is 5 + ( lev entry / 3 );
		now dex entry is 17 + ( ( lev entry * 2 ) / 9 );
	say "     You find yourself facing off against two inflatable sea animals at once, a male sea lion and a female orca. The former is an opaque purple in color and the latter is a translucent magenta. The sea lion gives a squeezing bark which is answered by a trill from the orca, at which point they both rush you from opposite sides. They are attacking you together, the male striking from the ground and trying to trip up your legs while the female floats in the air, trying to push your body over from the other direction. Either on their own [if level of player > 6]wouldn't be more than an annoyance, but together they're a bit of a hassle[else if level of player > 3]wouldn't be much trouble, but together they're more effective than some of the other inflatables you've seen[else]would be a bit of a hassle, but together they're much more of a threat[end if].";


to say losetoslao:
	if HP of player > 0:
		say "     Not wanting to resist the pair any further, you allow them to press you to the padded floor beneath them.";
	else:
		say "     Battered by their soft, but insistent, blows, you are knocked off your feet onto the padded floor. They quickly flop down atop you, pinning you down.";


to say beattheslao:
	say "     Your blows to the duo of inflatable toys is finally enough to weaken them to the point that they've both sprung leaks and deflated enough to flop down on the ground. Unable to keep fighting, they squirm over to one another for comfort while their hides mend and they reinflate. Successful, you're free to move on.";


to say slaoattack:
	if a random chance of 1 in 2 succeeds:	[male sea lion]
		say "[one of]The sea lion[or]The purple inflatable[or]The plump male[at random] [one of]bumps against one of your legs[or]noses firmly at your groin[or]presses his large body against your legs[or]grabs onto your hips with his flippers and humps your leg with his inflated penis[at random], making you stumble on the unsteady footing of the padded floor.";
	else:						[female orca]
		say "[one of]The orca[or]The magenta inflatable[or]The floating female[at random] [one of]bumps against your shoulder[or]noses firmly at your chest[or]presses her large body against your torso[or]turns quickly and slaps the white underside of her tail into your face[at random], making you stumble on the unsteady footing of the padded floor.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Sea Lion and Orca Toys"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[slaoattack]";
	now defeated entry is "[beattheslao]"; [ Text when monster loses. ]
	now victory entry is "[losetoslao]"; [ Text when monster wins. ]
	now desc entry is "[slaodesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "impossible"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "impossible"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "impossible"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "impossible"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "it changes in an impossible manner"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it changes in an impossible manner"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "it changes in an impossible manner"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it changes in an impossible manner"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it changes in an impossible manner"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 17; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 8;
	now cha entry is 13;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 45; [ The monster's starting HP. ]
	now lev entry is 4; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 0; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 60; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "impossible"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"  Use [one of] to vary ]
	now type entry is "impossible"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "slaoalt"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"slaoalt"	retaliation rule	--	--	slaodoubleteam rule	33	--	--	--	--	--


this is the slaodoubleteam rule:		[struck by both at once for increased dmg]
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 66 ); [+50% dmg]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "Coming at you both at once, the [one of]sea lion[or]purple inflatable[or]plump male[at random] [one of]bumps against one of your legs[or]noses firmly at your groin[or]presses his large body against your legs[or]grabs onto your hips with his flippers and humps your leg with his inflated penis[at random] while the [one of]orca[or]magenta inflatable[or]floating female[at random] [one of]bumps against your shoulder[or]noses firmly at your chest[or]presses her large body against your torso[or]turns quickly and slaps the white underside of her tail into your face[at random]. Being struck by both at once makes it much more difficult for you to stay upright and continue fighting. You take [special-style-2][dam][roman type] damage.";
	now damagein is dam;
	say "[normalabsorbancy]";
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of player by absorb;
	follow the player injury rule;
	say "You are [descr].";

Sea Lion and Orca ends here.
