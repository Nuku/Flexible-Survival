Version 1 of Cougar by Stripes begins here.
[ Version 1.2 - Relocated to Urban Forest ]
"Adds a Cougar creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

cougarfight is a number that varies.

when play begins:
	add { "Cougar" } to infections of hermaphrodite;
	add { "Cougar" } to infections of furry;

to say losetocougar:
	now cougarfight is 2;
	say "     Falling to your knees in front of the cougar herm, she growls triumphantly and climbs atop you. Her strong body holds you down as she rubs herself against you. Her soft fur and lovely breasts slide against your chest, and you can feel the firm press of her throbbing cock on your skin.";
	if wslevel is 3 and a random chance of 2 in 5 succeeds:
		say "     She rubs herself against you as she moves forward, bringing her crotch to your face. Sitting up with her legs across your arms, she slaps your cheek with her dark brown cock. Expecting her to want you to suck her off, you open your mouth. But instead of a mouthful of cock, you get a mouthful of her hot piss as she releases her bladder with a chuckle. Coughing and sputtering at the acrid surprise, she sprays more across your face before forcing her penis into your mouth to empty the rest down your throat. After your hot drink is done, she moves on to satisfying her lusts.";
	else if a random chance of 1 in 3 succeeds:
		say "     She rubs herself against you as she moves forward, bringing her crotch to your face. Sitting up with her legs across your arms, she slaps your cheek with her dark brown cock. Knowing what's expected of you and [if HP of player > 0]accepting that you must satisfy the feline's needs[else]seeing little point in resisting further[end if], you open your mouth and take her throbbing cock into it. You lick and suck at the dribbling member while she rumbles and purrs in pleasure. After a few minutes of having you suck her off for foreplay, she moves on to satisfying her lusts more actively.";
	if player is puremale:
		say "[cougarride]";
	else if player is purefemale:
		say "[cougartop]";
	else:
		if a random chance of 1 in 2 succeeds:
			say "[cougarride]";
		else:
			say "[cougartop]";

to say cougarride:
	say "     Placing her paws on your shoulders to pin you down, she grinds her wet pussy against your cock, getting you hard before mounting it. She mrowls as she rides your shaft, gripping her inner walls around it. This feline wildwoman rides your cock hard and fast until finally you cum, shooting your hot seed into her womb. She leaves you spent and panting as she pads off on all fours, cum dripping out behind her.";

to say cougartop:
		say "     Placing her paws on your shoulders to pin you down, she grinds her hard shaft between your thighs, lining it up with your pussy before sinking it into you. She mrowls as she thrusts into you again and again, sliding those feline barbs along your vaginal walls, stimulating you deep inside. This feline wildwoman pounds away at you hard and fast until she finally cums, shooting her hot seed into your womb. She leaves you spent and pads off on all fours.[impregchance]";

to say beatthecougar:
	now cougarfight is 1;
	say "     Managing to beat the cougar herm, you stand over her slumped, panting form. The fight has gone out of her, but she still looks quite aroused. ";
	if a random number between 30 and 125 < libido of player:
		say "You ponder having a little fun with the aroused feline, now that she's calmed down a little.";
		say "     [bold type]Will you sex up the poor, aroused puma?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "     Feeling in the mood for some feline fun, you grab the exhausted kitty and push her into position. She mewls softly, wary of you hurting her further, yet hopeful for some sexual relief for her lustful urges.";
			if player is male:
				say "     You push her onto her back and line up your cock with her pussy, making her mrowl in delight. You fondle her breasts and pound away at her. You tweak and tease her nipples while watching her hard cock bounce against her tummy with each thrust you make. Her precum soaks the soft, cream fur there as you drive into her. Her horny mewls get louder as she digs her paws into the ground and climaxes. Her hot pussy clamps down firmly, milking your cock for all you'll give as you cum moments later. Her own thick seed sprays across her chest and muzzle, leaving white streaks all across her body and face. When done, you get her to lick your cock clean before leaving her panting on the ground and leaking your cum.";
			else:
				say "     You push her back and take her throbbing shaft in your hand, making her mrowl in delight. You stroke it a few times before climbing atop her and sinking down onto that hard meat. Its soft, feline barbs stimulate your inner walls as they slide in and out. You fondle her breasts and bounce in her lap, tweaking and teasing her nipples. Her cock throbs and pulses inside you as her excitement builds until finally she mrowls lustfully and sprays her hot cum deep inside you, painting your insides with her virile seed. You squeeze down around her, loving the hot flow into your [if player is female]womb[else]bowels[end if]. Waiting until she's drained her balls into you, you get off her slowly. You guide her muzzle between your legs, getting her to lick your leaking [if player is female]pussy[else]asshole[end if] clean before leaving her panting on the ground, reeking of sex.[impregchance]";
		else:
			say "     Deciding to head off while you can, you leave her to her own devices. Which is just what she does, stroking her cock needfully while fingering herself. You can hear her lustful yowls as you walk off.";
	else:
		say "Deciding to head off while you can, you leave her to her own devices. Which is just what she does, stroking her cock needfully while fingering herself. You can hear her lustful yowls as you walk off.";


to say cougardesc:
	setmongender 5;
	say "     Before you is a powerful looking feline, with golden brown fur and piercing eyes. She looks at you with cold intent, claws unsheathed and teeth bared. This puma herm has two, C-cup breasts on her athletic body and a hefty cock and set of balls waiting to be used. Her cock is a deep brown and human in shape, but with stimulating barbs as well. She drops to all fours and pads slowly around you, emitting an animalistic growl before charging.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Cougar"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The tough feline slashes at you with her sharp claws![or]The puma tries to bear you down under her weight. You get away, but not without several scratches![or]The cougar's teeth dig into your side![or]The mountain lion kicks you in the leg![or]The creature grabs you with one paw and digs her claws in while the other moves to grope you![or]Grabbing your wrists, the big cat pushes your arms away so she can grind her body against yours. You can feel her firm breasts and throbbing cock pressed against you![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthecougar]";
	now victory entry is "[losetocougar]";
	now desc entry is "[cougardesc]";
	now face entry is "feline in form, with a short muzzle and yellow, feline eyes. The sides of your muzzle are darker and there are marks above your eyes, but otherwise, it lacks any markings"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "athletic and firmly muscled, with a vaguely feline form and large paws for hands. Your body and limbs are shaped such that you can comfortably switch to going upright or on all fours, and find yourself changing between these postures naturally when the need arises"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "golden brown fur with a creamy belly"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is "Attached at your rear is a cougar's tail, golden brown and darkening towards the tip."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]deep brown[or]sensually barbed[or]feline[as decreasingly likely outcomes]"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "it reshapes into a feline muzzle and head"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it becomes more feline in form and more athletically built. You feel comfortable switching between walking upright and on all fours. Your hands become feline paws with retractable claws"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "golden brown fur spreads all over your body. Your coloration is uniform over most of your body, lacking elaborate markings or patterns and only a shift to a creamy color at your belly and groin"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "a feline tail grows into place, swishing as it becomes more distinctly puma-like in form and pattern"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your balls churn and your cock reshapes itself into a vaguely human form, but with the stimulating spines of a feline penis. Your shaft changes color, becoming a deep brown as these changes complete themselves"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 16; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]athletic[or]muscled[at random]";
	now type entry is "feline"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

when play ends:
	if bodyname of player is "Cougar":
		if humanity of player < 10:
			say "     Losing yourself in the lustful, animalistic urges of your feline body, you wander out into the city for satisfaction. In time, you come across an overturned bus, as if drawn by the scent of the horny feline living within. You mate with her repeatedly, your yowls of pleasure loud [if player is herm]as you take turns fucking one another[else if player is male]as you fuck her again and again[else]as she fucks you again and again[end if]. Together, you capture a few others to be mates as well, but find the increasing military activity to be more of a distraction than a source of new playthings. Taking your collected mates, you head off to another bus you spotted elsewhere in your travels through the city, one still able to run. When a weak point in the military lines opens up, your mate, with lingering skills from her past life, pushes the bus through the gap and gets you away from the city.";
			say "     While the busload of pumas celebrate lustfully, the orgy is sadly brief. As the military will eventually track the bus that got through, you start dropping off cougars in pairs as you go, letting them slip into the woods to escape on foot or to gain other means of transport. You and the driver are the last to go, commandeering a car and making its driver and passenger into the first of your new set of lovers. The cougars, having spread out from across a stretch of a hundred miles, cannot be contained and many small towns become puma colonies.";
		else:
			say "     Managing to keep yourself alive and relatively sane throughout the outbreak, you are rescued by the military forces as they sweep through the city. You endure the time in the military camp until you are finally released. You manage to get a few jobs as you adjust to being a feline with some animalistic urges. You eventually manage to find employment at a high school, becoming a phys ed teacher for their infected students as part of an [']innovative initiative['] some politician cooked up. Given the variety of strains, many of your students have different skills or needs, but you cope well enough. Barred from participating in events with [']regular kids['], it provides a good outlet for them. And if many come by to visit you after moving on to college, no one needs to be the wiser about you giving them a little sex ed, too.";


Cougar ends here.
