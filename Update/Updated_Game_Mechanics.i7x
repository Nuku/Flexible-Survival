updated game mechanics by Luneth begins here.

Section 1 - Orientations
This feat will be chosen at the start of the game and will effect many scenes. The point of this feat is to alter what types of sex scenes will fire off during events and whether or not you will be sexually aroused from certain enemies. The most effective use of this will be to have it play a role with the players starting gender or to simply have it be something that can be altered via the trixie menu at your convenience.

Section 2 - Masculine/Feminine/Androgynous
These stats will play a part in deciding the overall appearance of the player. They will also play off of a new infection stat and will help differentiate gender. For example a character that has a vagina, no cock and no breasts will usually be viewed as a cuntboy character but with this new variable it could also simply be a flat chested girl.

Section 3 - New Body options
Skin- should most likely be removed and have each body part use it own species specific skin
Appearance- masculine/feminine/androgynous overall body and face type
Head-same base
Adornments- additions to the head such as horns
Torso-same base
Back-additions to the torso such as wings
Arms-descriptions of both arms and hands
Groin- same but with the additional variables for cock thickness and clit size
Tail- description of the tail type if Player has one
Ass- description of Players ass with added variables for ass size as well as tightness vs looseness
Legs- description of Players legs and feet this will also be the most important variable for taurs

Table of random critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "German Shepherd"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[attk gsd]";
	now defeated entry is "[beatthegsd]";
	now victory entry is "[losetogsd]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block]
	now desc entry is "[gsd_desc]";
[old]
[Looking at yourself, your body is covered in coarse, brown and black furred skin. Your face is distinctly canine, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your head. Your body is that of a bipedal dog, with digitigrade legs and paw-like hands.
You have 8 nipples on your animalistic chest.  Behind you is a dog's tail, which whips about expressively and frequently betrays your mood.
A private peek shows that you have a small 5-inch-long surrounded in a tight sheath surrounded by coarse, brown and black furred skin, protecting the wonderfully sensitive German Shepherd cock residing within penis. It is fully erect and drooling precum steadily. Underneath it hangs a set of plum-sized testicles.]
[new]
[Looking at yourself, your body is [Body Size Adjective of Player] and covered in a coarse coat of fur, your chest being more cream colored while your back is a mixture of black and brown. Your face is distinctly canine, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your skull. Your head is also adorned with ridges and fins that have grown out from the sides of your face. Your torso is trim yet muscular, with prominent abs and wide shoulders. You have 8 pink nipples on your animalistic chest. Sprouting from your back are a great set of dragonfly wings that when not in use rest against your form. Each of your arms end in paw-like hands, with sharp black claws coming out of the tips.
Behind you is a dog's tail, which whips about expressively and frequently betrays your mood. Your [ass size adjective of Player] [type of Player] ass is [Ass Adjective of Player], with a [anal tightness] pucker between its cheeks. The lower part of your body is that of a bipedal dog, with digitigrade legs. A private peek shows that you have a [girth of penis] 5-inch-long dick surrounded in a tight sheath and coarse, brown and black fur, protecting the wonderfully sensitive German Shepherd cock residing within. It is fully erect and drooling precum steadily. Underneath it hangs a set of plum-sized testicles.]

Infection Parts:

Head: head adjective, head description, head skin adjective, eye color, eye adjective, tongue color, tongue length, tongue adjective
Head Adornments:
Torso: body weight, body definition, torso adjective, torso description, torso skin adjective
Breasts: breast size, Nipple Count, nipple color, nipple shape
Torso Adornments:

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Count	Cock Girth	Cock Length	Cock Adjective	Cock Description	Cock Color	Ball Count	Ball Size	Ball Description	Cunt Count	Cunt Length	Cunt Tightness	Cunt Adjective	Cunt Description	Cunt Color	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;


	now Body Weight entry is 5; [scale of 1-9 for body weight; creature overwrites the player's body]
	now Body Definition entry is 5; [scale of 1-9 for body definition; creature overwrites the player's body]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Adjective entry is "avian"; [one word descriptive adjective]
	now Head Description entry is "covered in coarse brown and black fur, your face is distinctly canine, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your head"; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with..."]
	now Head Skin Adjective entry is "furry, scaly, feathered"; [one word descriptive adjective]
	now Head Adornments entry is "ridges and fins that adorn the sides of your head"; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [one word length descriptor]
	now Hair Shape entry is "curly"; [one word shape descriptor]
	now Hair Color entry is "blond"; [one word color descriptor]
	now Hair Style entry is "ponytail"; [one word style descriptor]
	now Eye Color entry is "amethyst"; [one word color descriptor]
	now Eye Adjective entry is "slitted, round"; [one word descriptive adjective]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "wide, slobbery"; [one word descriptive adjective]
	now Tongue Color entry is "yellow"; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Description entry is "covered in coarse, [body color of Player] fur"; [partial sentence]
	now Torso Adjective entry is "avian"; [one word descriptive adjective]
	now Torso Adornments entry is "pouch, udders";
	now Torso Skin Adjective entry is "furry, scaly, feathered"; [one word descriptive adjective]
	now Torso Color entry is "blue"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is "striped"; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 1; [cup size as number, counting A = 1, B = 2, ...]
	now Nipple Count entry is 16; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "star-shaped"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Adornments entry is "set of dragonfly wings beat quickly in the air for a moment";
	now Back Skin Adjective entry is "furry, scaly, feathered"; [Basically this will not be used right away but could be early implemented to make it easier down the road to change via shop, while it wont actually effect the body part it will lead to a specific skin type for people that would like it.]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Description entry is " are covered in dark brown fur with paw-like hands, that end in sharp black claws"; [partial sentence]
	now Arms Skin Adjective entry is "furry, scaly, feathered"; [Basically this will not be used right away but could be early implemented to make it easier down the road to change via shop, while it wont actually effect the body part it will lead to a specific skin type for people that would like it.]
	now Locomotion entry is "bipedal"; [bipedal, quadrupedal, serpentine, sliding]
	now Legs Description entry is "those of a bipedal dog, with digitigrade legs covered in coarse cream and brown fur";
	now Legs Skin Adjective entry is "furry, scaly, feathered"; [Basically this will not be used right away but could be early implemented to make it easier down the road to change via shop, while it wont actually effect the body part it will lead to a specific skin type for people that would like it.]
	now Ass Description entry is "";
	now Ass Skin Adjective entry is "furry, scaly, feathered"; [Basically this will not be used right away but could be early implemented to make it easier down the road to change via shop, while it wont actually effect the body part it will lead to a specific skin type for people that would like it.]
	now Ass Width entry is 3; [width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Description entry is "long, slender tail with a purple tuft at the end"; [ text containing the word "tail" ]
	now Tail Skin Adjective entry is "fur, scales, feathers"; [Basically this will not be used right away but could be early implemented to make it easier down the road to change via shop, while it wont actually effect the body part it will lead to a specific skin type for people that would like it.]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is "black"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 5;
	[Cock Girth Adjective is generated by a function and can be used in scenes too]
	now Cock Length entry is 8;
	now Cock Adjective entry is "avian";
	now cock description entry is "[if looknow is 1]surrounded in a tight sheath surrounded by [skin of Player] skin, protecting the wonderfully sensitive German Shepherd cock residing within[else][one of]knotted[or]animalistic canine[or]doggy[at random][end if]";
	now Cock Color entry is "black"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 4; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "[number of balls] [ball size] cream colored furry balls hang below your cock";
	now Cunt Count entry is 1;
	now Cunt Length entry is 8;
	now Cunt Tightness entry is 5;
	now Cunt Adjective entry is "avian";
	now Cunt Description entry is "triangular, with fleshy lips";
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 1;



	[now skin change entry is "fur begins to push through from underneath, soon covering you in a coarse, protective coat of brown and black fur";]
	now head change entry is "black and brown fur quickly begins to grow across your face and it draws forward into a canine muzzle, which rapidly fills with teeth and a broad, lolling tongue. At the same time, your ears become more pointed and expressive and migrate towards the top of your now canine head";
	now adornments change entry is "ridged fins suddenly sprout from the sides of your head, giving you a regal aquatic look"; [if feral sea dragon is used]
	now torso change entry is "fur begins to push through from underneath, soon covering you in a coarse, protective coat of cream colored fur";
	now breasts change entry is "?";
	now back change entry is "Behind you, dragonfly like wings extend outwards, buzzing excitedly for a moment before folding neatly against your form"; [if sprite is used]
	now arms change entry is "your hands become somewhat paw-like with dull black claws in the tips";
	[now body change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like and your hands become somewhat paw-like with dull black claws in the tips";]
	now ass change entry is "?";
	now tail change entry is "a long tail pushes from your spine. It rushes straight out, then curls between your legs at the feeling of shock as you study the appendage";
	now cock change entry is "your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago";
	now legs change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like";
	now str entry is 12;
	now dex entry is 13;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Female"; [ Defines which organs will be altered by the infection. current options are 'Male' 'Female' 'Both']
	now appearance is "feminine"; [Defines which direction your appearance will take in terms of femininity and masculinity]
	now HP entry is 20;
	now lev entry is 3;
	now wdam entry is 5; [ Amount of Damage monster Does when attacking.]
	now area entry is "Outside";
	now Cock Count entry is 1; [ Used in infection Calculations, if cocks > 0 shaft will grow to cock length & girth dimensions slowly]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks > 0 ]
	now Cock Girth entry is 4; [ Width Infection will make cock grow to is cocks > 0 ]
	now ball number entry is 2;
	now Ball Size entry is 2;
	now ball adjective entry is "[one of]dangling[or]wrinkled[or]smooth[]";
	now breast number entry is 8; [ Number of nipples. ]
	now Breast Size entry is 4; [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Unknown. ]
	now Cunt Count entry is 1; [ if > 0 and sex = female or both, indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 6;
	now Cunt Tightness entry is 4;
	now libido entry is 5; [ Amount libido goes up by if you submit or are defeated by this monster ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]animalistic[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "gsd"; [ Row used to designate any special combat features, "default" for standard combat. ]

Expert researcher upgrade= Master researcher- guarantees 1 vial with normal roll for second, also can control which parts are effected by vials via injection.


Story.ni-4250 for original

This is the self examine rule:
	now looknow is 1;
	showstats player;
	if name of Player is not "Player":
		say "Your name is [name of Player].";
	[ Infection Descriptions Below   ]
	say "Looking at yourself, your body is covered in [skin of Player]. Your face is [face of Player].[adornment of Player]";
	say "Each of your arms are [arms of Player].[back of Player] The overall shape of your body is [torso of Player]";
	follow the breast descr rule;
	if Nipple Count of Player > 0:
		if Breast Size of Player is 0:
			say "You have [Nipple Count of Player] nipples on your [bodydesc of Player] chest. ";
		else:
			if Nipple Count of Player > 2:
				say "You have [Nipple Count of Player] breasts on your [bodydesc of Player] chest. The first pair looks [descr] and curves out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. The second pair curves out [(Breast Size of Player times three) divided by five] inch[if ( Breast Size of Player times three ) divided by 5 is not 1]es[end if] from your chest. ";
				if Nipple Count of Player > 4, say "The rest jostle for space [Breast Size of Player divided by three] inch[if Breast Size of Player divided by 3 is not 1]es[end if] from your belly. ";
			else:
				say "You have two [descr] breasts on your [bodydesc of Player] chest, curving out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. ";
	if child is not born and gestation of child > 0:
		if gestation of child < 10:
			now looknow is 0;
			say "Your [skin of Player] swollen belly looks ready to spill forth life at any moment. ";
			now looknow is 1;
		else if gestation of child < 20:
			say "You have a noticeable bulge, a soft roundness to your belly that speaks of too many nights with a tub of ice cream, or an incoming child. ";
		else if gestation of child < 30:
			say "You feel a soft subtle glow somewhere in your belly. ";
	else if heat enabled is true:
		if inheat is true:
			say "You also feel [if heatlevel is 3]an intense[else]a[end if] need to be on the receiving end of a good, hard fuck because of your presently heated state. ";
		else if heatlevel is 1 and player is impreg_able and cockname of Player is not "Human":
			say "You are thankfully spared some undo sexual yearning because you've prevented your tainted womb from going into heat. ";
		else if heatlevel is 3 and player is impreg_able and cockname of Player is not "Human":
			say "Your tainted womb is not troubling you unduly at the moment, though you're unsure when your next intensified heat may strike you. ";
	if "Angie's Mate" is listed in feats of Player:
		say "Thin lines of healed claw-marks run down your back, marking you as Angie's mate. ";
	if "Boghrim's Mark" is listed in feats of Player:
		say "Two small scars from Boghrim's tusks mark your shoulder, a reminder of the first time the big orc fucked you. ";
	if "Top Dog" is listed in feats of Player:
		say "Your back still bears the scars left by Alexandra's claws during a bout of intense mating, a reminder of your dominance over her and your status as 'Top Dog'. ";
	if tail of Player is empty:
		say "";
	else:
		say " [tail of Player] ";
	[ ^^ Infection Descriptions Done ]
	[ Genital Descriptions Below     ]
	let cocktext be "";
	follow the cock descr rule;
	if Player is male:
		if Cock Count of Player > 1:
			now cocktext is "have [Cock Count of Player] [cock size desc of Player] [Cock Length of Player]-inch-long [cock of Player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [ball size]. ";
		else:
			now cocktext is "have a [cock size desc of Player] [Cock Length of Player]-inch-long [cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [ball size]. ";
	let cunttext be "";
	follow the cunt descr rule;
	if Player is female:
		if Cunt Count of Player > 1:
			now cunttext is " have [Cunt Count of Player] [cunt size desc of Player] [one of]cunts[or]pussies[or]vaginas[at random]. Further probing shows them to be [Cunt Length of Player] inches deep and able to stretch to about [Cunt Tightness of Player] around. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
		else:
			now cunttext is "r [one of]cunt[or]pussy[or]vagina[or]cleft[at random] looks [cunt size desc of Player], and further probing shows it to be [Cunt Length of Player] inches deep and able to stretch to [Cunt Tightness of Player] around. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
	if cocktext is not empty:
		if cunttext is empty:
			say "A private peek shows that you [cocktext]";
		else:
			say "A private peek shows that you [cocktext]";
			say "Also, you[cunttext]";
	else if cunttext is not "":
		say " You[cunttext]";
	[ ^^ Genital Descriptions Done ]

updated game mechanics ends here.
