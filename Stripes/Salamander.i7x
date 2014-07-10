Version 1 of Salamander by Stripes begins here.
[Parts of this creature's appearance and transformation are based off the Salamander Femme creature from the multiplayer game]

"Adds a Salamander creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Salamander" } to infections of girl;
	add { "Salamander" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Salamander" } to infections of Reptilelist;	[list of reptile infections]
	add { "Salamander" } to infections of Internallist;	[list of infections w/internal male genitals]
	add { "Salamander" } to infections of Firebreathlist;	[List of fire breathing creatures]

to say losetosalamander:
	if hp of player > 0:
		say "     Rather than resist, you submit to the red amphibian.  You allow her to push you to the ground, after which she moves atop you to have her way with you";
	otherwise:
		say "     The red amphibian's latest blow leaves you weak and staggered.  After that, she's easily able to knock you to the ground and moves atop you to have her way with you";
	say ".  With you down, she reins in her heat and rubs her smooth body against yours.  Her flesh is slick with a thin coating of slime that causes your own skin to tingle where it touches.  This tingling blossoms into a blissful warmth that is arousing, but also mind-numbing.  Your thoughts get jumbled and manage to focus on little past having sex with the increasingly alluring amphibian.";
	if cocks of player > 0 and a random chance of 2 in 3 succeeds:		[usually opts for sex]
		say "     Taking your [cock size desc of player] erection in hand, she runs her elongated tongue across her muzzle as she eyes it[if cock length of player > 24].  With great effort[otherwise if cock length of player > 16].  With considerable effort[otherwise].  With obvious eagerness[end if], she lowers herself down onto your pulsing rod.  As she starts working her dripping[if cock length of player > 16] and overstuffed[end if] cunt over your [cock of player] cock, she presses her lizard-like face to yours and wriggles her long tongue into your mouth for a tonsil-licking kiss that causes your addled head to spin.  Soon you're cumming into that heated, vice-like cunt of hers as she drains your [cum load size of player] load into her womb.  Once she's gotten what she wanted, you're left sticky with cum and slime until you can recover your senses.";
	otherwise:
		say "     Pressing her shapely thighs around your head, she pushes her wet and heated cunny right in your face.  With her hot juices dripping down onto your mouth, you can't help yourself and dive into licking her smooth-skinned snatch.  Already muddleheaded and aroused by effects of her slime, the taste of her pussy overwhelms you.  Your tongue plunges into her cunt and licks at her clit as you lap up every drop you can get of her delicious juices[if cocks of player > 0 and cunts of player > 0].  While you're eating her out, her long, slick tongue slathers across your loins, licking your cock[smn] and diving into your cunt[sfn][otherwise if cocks of player > 0].  While you're eating her out, her long, slick tongue slathers across your loins, licking your cock[smn][otherwise if cunts of player > 0].  While you're eating her out, her long, slick tongue slathers across your loins, diving into your cunt[sfn][otherwise].  While you're eating her out, her long, slick tongue slathers across your bare groin[end if].  You keep going at her non-stop until she cums with a messy gush of steaming-hot femmecum.  Once she's gotten what she wanted, you're left sticky with cum and slime until you can recover your senses.";

to say beatthesalamander:
	say "     Your final blow sends the slender creature stumbling back.  The hot aura around her wavers as she's unable to maintain it any longer.  She blows you a big, messy raspberry with her elongated tongue and runs off.";

to say salamanderdesc:
	say "     The salamander creature before you is a mix of animal and human body, with a definitively female form.  Her body is especially effeminate, with wide hips, thighs, and a thin waist that clamours for attention.  Her breasts are quite modest, being pert B-cups.  Her arms and legs look quite human, but flex a little more than normal, making her seem sinuous and agile.  Her fingers and toes terminate in small, dark claws.  She possesses a flat, wide head with a mouth full of diminutive teeth.  She has a long, narrow, fleshy tail mounted atop her soft and squishy ass cheeks.  Making no effort to hide it, you can also see her moderately large pussy between her legs, wet and waiting.";
	say "     Her smooth skin is a rich red colour with yellow and black speckling, predominantly across her breasts and extremities.  A shimmer of intense heat radiates from it intensely enough to make the air ripple around her.  It seems the nanites have jumbled the old myths of salamanders with its amphibian nature, making this creature into one suitable for two environments, on land and in lava.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Salamander";
	now attack entry is "The [one of]salamander[or]salamander femme[or]female amphibian[or]red salamander[or]speckled salamander[at random] [one of]scratches at you with her claws[or]smacks you with her tail[or]bites you with her wide mouth[or]contorts in an unnatural manner to punch you in the side[or]grabs onto you and turns up her personal heat, cooking your flesh[in random order].";
	now defeated entry is "[beatthesalamander]";
	now victory entry is  "[losetosalamander]";
	now desc entry is "[salamanderdesc]";
	now face entry is "now flatted down with a short muzzle.  You have a widened mouth full of diminutive teeth";
	now body entry is "especially effeminate, with wide hips, thighs, and a thin waist that draws the eye.  Your limbs are still human, though they flex a little more than could be considered normal.  Your digits end in short, dark claws that are probably better suited for climbing than fighting";
	now skin entry is "[one of]smooth[or]sensitive[or]speckled[or]slimy[or]red[or]crimson[at random]";
	now tail entry is "You have a long, fleshy tail growing from your squishy ass cheeks.  It starts thick and tapers down gradually along its length";
	now cock entry is "[one of]red[or]speckled[or]glistening[or]retractable[as decreasingly likely outcomes]";
	now face change entry is "your jaw stretches and warps uncomfortably.  Your skull aches as becomes flatter and broader.  A short muzzle protrudes forwards and your mouth widens to suit your enlarged jaw.  Your long, slimy tongue brushes across your teeth as they become small and numerous";
	now body change entry is "your hips and thighs become wide and rounded.  Your waist narrows to a sultry, seductive thinness that further accentuates your effeminate appearance.  Your limbs creak and twist as they bend in strange ways, your bones and joints becoming slightly flexible";
	now skin change entry is "it loses any and all hair and becomes smooth.  It reddens over the course of the next minute, with small spots and speckles of yellow and black appearing soon after.  Your hide has a slight sheen from the thin layer of slime that coats it";
	now ass change entry is "the base of your spine throbs.  It creaks in protest as a long, smooth tail bursts from the bottom of your spine";
	now cock change entry is "its flesh turns red.  It pulse and throbs as your balls are drawn right up into your body.  Your transforming cock bubbles up a mix of precum and semen to coat its surface in a glistening layer of slime.  A warm slit forms at your crotch and your altered manhood retracts into it until you next become aroused";
	now str entry is 15;
	now dex entry is 20;
	now sta entry is 13;
	now per entry is 14;
	now int entry is 9;
	now cha entry is 9;
	now sex entry is "Female";
	now hp entry is 66;	
	now lev entry is 9;
	now wdam entry is 8;
	now area entry is "Capitol";
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 5;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 2;			[ Number of Breasts infection will give you. ]
	now breast size entry is 2;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 5;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 45;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]flexible[or]curvy[or]effeminate[in random order]";
	now type entry is "[one of]salamander[or]amphibian[in random order]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Salamander":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Salamander ends here.
