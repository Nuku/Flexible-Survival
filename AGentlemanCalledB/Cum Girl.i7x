Version 1 of Cum Girl by AGentlemanCalledB begins here.
[Version 1 - Basic monster, cum feeding/growth mechanic, temporary fission scene]

"Adds a Cum Girl creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses


when play begins:
	add { "Cum Girl" } to infections of girl;
	add { "Cum Girl" } to infections of humorous;
	add { "Cum Girl" } to infections of humanoid;


cumgirlfed is a number that varies. cumgirlfed is usually -1.

to say losetoCumGirl:
	let CGFC be 0;
	let CGFB be 0;
	let cumgrowth be cumgirlfed / 5;
	if cumgrowth > 10, now cumgrowth is 10;
	say "     Unable to resist the cum girl's attacks, you stumble back and fall to the ground. The cum girl strides over to your fallen form, quickly freeing your groin of any obstructions as she kneels before you.";
	if player is male:
		if a random chance of 1 in 2 succeeds:
			say "     A smile creeps across her blank face as she strokes you to full erection before she sinks to the ground, her legs and lower torso melting into a shapeless mass as she leans forward, allowing her to bury your cock in her wet, slimy mouth. Her entire face undulates and pulses as her malleable flesh sucks and milks your member. You rapidly approach climax under her expert ministrations, your hands sinking into the back of her head as you try and grip her, causing her form to further deform into a pulsing mass of cum engulfing your groin. You climax powerfully, blowing your [cum load size of player] load into the shapeless mass as it continues milking you for all it can. Once you're finally spent, the creature pulls off your groin with a sickening slurp, reshaping itself into a feminine form once again. She licks her lips as she stands up, leaving your drained form without a second glance, wandering off in search of her next meal. As she leaves, you can't help but notice that her [one of]ass[or]bust[or]belly[or]form[at random] seems [if cock width of player > 20]significantly [else if cock width of player < 11]slightly [end if]larger thanks to your contribution.";
		else:
			say "     A faint smile creeps across her blank face as she strokes you to full erection, her hand beginning to lose definition as she strokes, soon nothing more than a pulsing tendril of cum milking your cock as her other hand begins engulfing your balls. Her face stares down at you, expressionless, as she continues to work your member and massage your balls, pushing you rapidly towards climax with her expert ministrations. With a groan you orgasm powerfully, blasting your [cum load size of player] load into the tendril milking your member. You watch the mass travel up her tendril-like arm and into the larger mass of her body as the licks her lips. Once you're finally spent, she pulls away from your groin, her hands returning to a mostly human shape as she stands up, leaving your drained form without a second glance, wandering off in search of her next meal. As she leaves, you can't help but notice that her [one of]ass seems[or]breasts seem[or]thighs seem[or]form seems[at random] [if cock width of player > 20]significantly [else if cock width of player < 11]slightly [end if]larger thanks to your contribution.";
		if cock width of player > 20:
			increase CumGirlFed by 6;
		else:
			increase CumGirlFed by ( cock width of player + 10 ) / 5;
		if "Modest Organs" is not listed in feats of player and "Female Preferred" is not listed in feats of player:
			if cock length of player < ( 18 + cumgirlfed ):
				increase cock length of player by a random number from 1 to 2;
				now CGFC is 1;
			if cock width of player < ( 18 + cumgirlfed ):
				increase cock width of player by 2;
				now CGFB is 1;
		Follow the cock descr rule;
		if CGFC is 1:
			say "     Your [if cocks of player is 1][one of]cock[or]penis[or]shaft[or]maleness[at random] [one of]engorges[or]swells[or]throbs[at random] as it gains[else][one of]cocks[or]penises[or]shafts[or]malenesses[at random] [one of]engorge[or]swell[or]throb[at random] as they gain[end if] in length, becoming [descr].";
		if CGFB is 1:
			say "     Your [one of]balls[or]orbs[or]cum factories[at random] [one of]tingle[or]churn audibly[or]throb[at random] as they grow larger, your flesh growing taught with the expansion, leaving you with [ball size].";
	else if player is female:
		say "     A faint smile crosses the cum girl's usually expressionless face as she strokes a pair of fingers across your outer folds, sending shivers of delight through you. Without hesitation she slips a pair of fingers inside you, then a third, and soon her entire slick hand is pumping into your body. With each thrust her limb loses more and more definition, soon little more than a warm, gooey mass that continues to surge into your cunt, working its way deeper inside you until you feel her pooling in your womb.";
		say "     Eventually the stimulation from the warm, pulsating mass filling your body becomes too much and you are struck by a powerful orgasm. None of your feminine honey is allowed to escape, instead drawn into the mass of living cum filling your inner passages. The cum girl licks her lips contently as she pulls out of your body with a wet slurp. She stands up slowly before leaving your drained form without a second glance, wandering off in search of her next meal, the long, tendril-like appendage dragging behind her as it slowly shifts back to its original feminine form. As she leaves, you can't help but notice that her [one of]ass[or]bust[or]tummy[or]form[at random] seems slightly larger thanks to your contribution.";
		increase CumGirlFed by 2;
	else:
		say "     An expression of disappointment slowly creeps across the cum girl's usually emotionless face as she discovers your bare groin, and without a second glance she rises to her feet and sets off in search of a proper victim.";
	if cumgirlfed > 35: [Temporary fission scene, to be built as a pre-combat event in later versions.]
		WaitLineBreak;
		say "     You watch her take a few more steps before stumbling again and falling to the ground with an uncharacteristic moan. You observe with morbid fascination as the cum girl pants and groans, her shifting fluid form pulsating violently as she sinks to the ground, melting away into a large, shapeless mass.";
		say "     Suddenly a limb surges out of the gooey mass, rapidly taking on a human-like form as it pulls its way out of the sticky goop. Then another limb emerges, followed quickly by several more. Two distinct forms begin to take shape as the bodiless limbs work to drag themselves out of the mass from which they emerged. Soon you realize there are two smaller cum girls forming from the pile of bodily fluids. Pulling themselves apart with one final sickening slurp, the twin cum girls take a few moments to caress each other before they wander off in opposite directions with a parting kiss. While the prospect of more of the insatiable creatures wandering around down here is a troubling one, at least the giant cum creature you were facing a few short minutes ago is no longer a concern.";
		now cumgirlfed is 0;

to say beattheCumGirl:
	say "     With your final blow, the cum girl's mass begins to collapse into itself, sinking to the ground and forming a sticky white puddle. Deciding not to stick around and see what happens next, you quickly move on.";
	decrease cumgirlfed by 3;
	if cumgirlfed < 0, now cumgirlfed is 0;

to say CumGirldesc:
	setmongender 4;      [creature is female]
	choose row monster from the Table of Random Critters;
	let cumgrowth be cumgirlfed / 5;
	if cumgrowth > 10, now cumgrowth is 10;
	let debit be 0;
	if hardmode is true:
		if level of player > 4:
			let debit be level of player - 4;
			now lev entry is level of player;
	else:
		now lev entry is 4 + cumgrowth;
	now HP entry is 40 + ( debit * 4 );
	now wdam entry is 5 + ( ( debit + 1 ) / 3 );
	now dex entry is 12 + ( ( debit + 4 ) / 5 );
	if cumgrowth > 0:
		increase HP entry by ( 2 * cumgrowth * lev entry ) / 3;
		increase dex entry by cumgrowth;
		increase wdam entry by ( ( cumgrowth + 1 ) / 2 );
	now monsterHP is HP entry;
	say "     Before you is a creature that appears, at a glance, to be a pale-looking female human, but as she steps out of the shadows you quickly realize something is very wrong. Her entire form is slick and white, her flesh seeming to run slightly as she moves, as if reshaping itself with each motion. However, the most disturbing feature is the creature's face. While vaguely human in shape, it is almost mannequin like, devoid of any features other than her expressionless mouth and the flat, empty depressions where her eyes should be.";
	if cumgirlfed is -1:
		say "     The overwhelming smell of sex hits you as the creature gets within striking distance, and you realize this sickening creature appears to be made entirely of animate cum and other bodily fluids.";
		now cumgirlfed is 0;
	else if cumgrowth > 5:
		say "     Having fed off you many times, the disturbing creature before you is now frighteningly large, her large, slimy mass seeming to have trouble supporting itself as the hungry cum girl shuffles forward.";
	else if cumgrowth > 3:
		say "     Having fed off you several times before, the cum girl is now slightly larger than the first time you encountered her, with added bulk in her [one of]breast[or]thigh[at random]s and [one of]ass[or]belly[or]hips[at random] that jiggles enticingly as she moves forward.";
	else:
		say "     The overwhelming smell of sex hits you again as the cum girl steps forward, licking her lips slowly as she approaches.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Cum Girl"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The cum girl's arm quickly elongates as she strikes at you with a whip-like motion[or]The cum girl pulls you into a warm, sticky hug, planting several kisses on your face before you manage to push her away[or]The cum girl's arousing aroma of sex distracts you momentarily, allowing her to strike you quickly[or]The cum girl lashes out with both arms, quickly forming long gooey tendrils that wrap themselves around your legs, tripping you[at random]!"; [ Successful attack message ]
	now defeated entry is "[beattheCumGirl]"; [ Text when monster loses. Change 'Cum Girl' as above. ]
	now victory entry is "[losetoCumGirl]"; [ Text when monster wins. Change 'Cum Girl' as above. ]
	now desc entry is "[CumGirldesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "N/A - Non-infectious"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "N/A - Non-infectious"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "N/A - Non-infectious"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "N/A - Non-infectious"; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "N/A - Non-infectious"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "N/A - Non-infectious"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "N/A - Non-infectious"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "N/A - Non-infectious"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "N/A - Non-infectious"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "N/A - Non-infectious"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 12; [ These are now the creature's stats... ]
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "No change"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Sealed"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "erudite"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "conceptual"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 3 - Endings

[N/A - Non-Infectious!]
[
when play ends:
	if bodyname of player is "Cum Girl":
		if humanity of player < 10:
			say "     You succumb to your Cum Girl infection.";
		else:
			say "     You survive, but were infected by the Cum Girl.";
			if player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Cum Girl ends here.
