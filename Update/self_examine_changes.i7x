

Section 1 - Self Examine

This is the self examine rule:
	now looknow is 1;
	showstats player;
	if name of Player is not "Player":
		say "Your name is [name of Player].";
	[ Infection Descriptions Below   ]
	if HeadName of Player is not "":
		say "Pulling out a small mirror you check yourself over from head to toe, attempting to make sense of your current form. Your face and head resemble that of [Head Description of Player] with [Eye Color of Player], [Eye Adjective of Player] eyes and an overall [Gender Appearance of Player] appearance. [if Player is HasHeadHair]On top of your head you have [hair length of Player] inch long, [Hair Shape of Player], [Hair Color of Player] hair that has been styled into a [Hair Style of Player]. [end if]Inspecting your [Mouth Size of Player] mouth with both the mirror and your digits, you attempt to look past your [Tongue Length of Player], [Tongue Color of Player], [Tongue Adjective of Player] tongue and into your [Mouth Length Adjective of Player] throat. [if Player is HasHeadAdornments]Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress. [end if][line break]";
	else: [old infection]
		say "Your face is [Face of Player]. ";
	if torso skin adjective of Player is "":
		say "Looking at yourself, your body is covered in [Skin of Player] skin. ";
	if TorsoName of Player is not "" and BackName of Player is not "" and ArmName of Player is not "":
		say "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player]. Your [Limbs Adjective of Player] arms are [Arms Description of Player]. [if Player is HasBackAdornments]Your back tickles with the feeling of movement caused by [Back Adornments of Player]. [end if]";
		follow the breast descr rule;
		if Nipple Count of Player > 0:
			if Breast Size of Player is 0:
				say "Finally your attention is brought to your pecs. You have [Nipple Count of Player], [Nipple Color of Player], [Nipple Shape of Player] nipples on your [Body Adjective of Player], [Torso Adjective of Player] chest. ";
			else:
				if Nipple Count of Player > 2:
					say "Finally your attention is brought to your cleavage. You have [Nipple Count of Player] [Torso Adjective of Player] breasts on your [Body Adjective of Player], [Torso Adjective of Player] chest. Each one has [Nipple Color of Player], [Nipple Shape of Player] nipples resting at their center. The first pair looks [Breast Adjective of Player] and curves out, making it so you could easily fill a [Breast Size Description of Player]. The second pair is slightly smaller, going down a cup size. ";
				if Nipple Count of Player > 4, say "The rest of your breasts keep going down by around a cup size at least the lower they go. ";
			else:
				say "You have two breasts on your [Torso adjective of Player] chest, curving out making it so you could easily fill a [Breast Size Description of Player]. Each one with a [Nipple Color of Player] [Nipple Shape of Player] resting at their center. ";
		say "[if Player is HasTorsoAdornments]As you continue to inspect yourself, your [Arms Skin Adjective of Player] hand rubs across your lower stomach. You take a moment to feel your [Torso Adornments of Player]. [end if]";
	else: [old infection]
		say "Your body is [Body of Player]. ";
		follow the breast descr rule;
		if Nipple Count of Player > 0:
			if Breast Size of Player is 0:
				say "You have [Nipple Count of Player] nipples on your [Bodydesc of Player] chest. ";
			else:
				if Nipple Count of Player > 2:
					say "You have [Nipple Count of Player] breasts on your [Bodydesc of Player] chest. The first pair looks [descr] and curves out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. The second pair curves out [(Breast Size of Player times three) divided by five] inch[if ( Breast Size of Player times three ) divided by 5 is not 1]es[end if] from your chest. ";
					if Nipple Count of Player > 4, say "The rest jostle for space [Breast Size of Player divided by three] inch[if Breast Size of Player divided by 3 is not 1]es[end if] from your belly. ";
				else:
						say "You have two [descr] breasts on your [Bodydesc of Player] chest, curving out [Breast Size of Player] inch[if Breast Size of Player is not 1]es[end if] from your chest. ";
	if AssName of Player is not "" and TailName of Player is not "" and LegName of Player is not "":
		if ass width of Player > 0:
			say "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]. With a single finger you check out your [Asshole Color of Player] hole finding it to be [Asshole Tightness Adjective of Player]. [end if]";
		say "[if Player is HasTail]Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee. [end if]";
		say "As your inspection goes even lower, you come to the [if Player is bipedal]two [Limbs Adjective of Player] legs supporting you. They are [else if Player is quadrupedal]four [Limbs Adjective of Player] legs supporting you. They are [else if Player is serpentine]long slithering tail supporting you. It is [else if Player is sliding]gelatinous mass supporting you. It is [end if][Legs Description of Player].";
	else: [old infection]
		if tail of Player is empty:
			say "";
		else:
			say " [tail of Player] ";

Section 2 - Pregnancy

if child is not born and gestation of child > 0:
	if gestation of child < 10:
		now looknow is 0;
		say "Your [torso type] swollen belly looks ready to spill forth life at any moment. ";
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
	[ ^^ Infection Descriptions Done ]

Section 3 - Genitals

[ Genital Descriptions Below     ]
	if Cock Description of Player is not "": [new parts]
		let cocktext be "";
		follow the cock descr rule;
		if Player is male:
			if Cock Count of Player > 1:
				now cocktext is "have [Cock Count of Player] [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [one of]cocks[or]penises[or]shafts[or]manhoods[at random] that [cock description of Player]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [if ball count of Player is 1]a single[else if ball count of Player is 2][one of]a pair of[or]a set of[at random][else if ball count of Player is 4]a grouping of four[end if] [Ball Size Adjective of Player] [if Player is internal and ball count of Player > 1]internal balls. [else if Player is internal]internal ball. [else][ball description of Player]. [end if]";
			else:
				now cocktext is "have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if Player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [if ball count of Player is 1]a single[else if ball count of Player is 2][one of]a pair of[or]a set of[at random][else if ball count of Player is 4]a grouping of four[end if] [Ball Size Adjective of Player] [if Player is internal and ball count of Player > 1]internal balls. [else if Player is internal]internal ball. [else][ball description of Player]. [end if]";
	else: [old style]
		let cocktext be "";
		follow the cock descr rule;
		if player is male:
				if Cock Count of Player > 1:
						now cocktext is "have [Cock Count of Player] [cock size desc of Player] [Cock Length of Player]-inch-long [cock of Player] [one of]cocks[or]penises[or]shafts[or]manhoods[at random]. They are [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath them hangs[end if] [one of]a pair of[or]a set of[at random] [ball size]. ";
				else:
						now cocktext is "have a [cock size desc of Player] [Cock Length of Player]-inch-long [cock of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random]. It is [if Libido of Player <= 25]only somewhat aroused at the moment[else if Libido of Player <= 50]partially hard and dribbling a little pre[else if Libido of Player <= 75]erect and leaking precum[else]fully erect and drooling precum steadily[end if]. [if player is internal]Though they are not outwardly apparent, you wager you have[else]Underneath it hangs[end if] [one of]a pair of[or]a set of[at random] [ball size]. ";
	if Cunt Description of Player is not "":
		let cunttext be "";
		follow the cunt descr rule;
		if Player is female:
			if Cunt Count of Player > 1:
				now cunttext is "have [Cunt Count of Player] [Cunt Tightness Adjective of Player] [one of]cunts[or]pussies[or]vaginas[at random] that are [cunt description of Player]. Further probing shows them to be [Cunt Length of Player] inches deep and [Cunt Tightness Adjective of Player]. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. Right above your labia you have a [size of clit] clitoris that is extremely sensitive. ";
			else:
				now cunttext is "have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]. Further probing shows it to be [Cunt Length of Player] inches deep and [Cunt Tightness Adjective of Player]. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. Right above each of your labia's you have a [clit size adjective of Player] clitoris that is extremely sensitive. ";
	else: [old style]
		let cunttext be "";
		follow the cunt descr rule;
		if player is female:
				if Cunt Count of Player > 1:
						now cunttext is " have [Cunt Count of Player] [cunt size desc of Player] [one of]cunts[or]pussies[or]vaginas[at random]. Further probing shows them to be [cunt length of Player] inches deep and able to stretch to about [cunt width of Player] around. They are [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
				else:
						now cunttext is " have a [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that looks [cunt size desc of Player], and further probing shows it to be [cunt length of Player] inches deep and able to stretch to [cunt width of Player] around. It is [if Libido of Player <= 25]a little damp at the moment[else if Libido of Player <= 50]wet with your juices[else if Libido of Player <= 75]hot and dripping juices[else]drooling musky nectar down your thighs[end if]. ";
	[displaying the texts]
	if cocktext is not empty:
		if cunttext is empty:
			say "A private peek shows that you [cocktext]";
		else:
			say "A private peek shows that you [cocktext]";
			say "Also, you [cunttext]";
	else if cunttext is not "":
		say " You [cunttext]";
[ ^^ Genital Descriptions Done ]
[big changes are needed here to incorporate genital slits, cloaca, and such.]
[As far as cock size goes it's tedious to have something like "monstrous 30 inch cock", since 30 inches already lets us know this. However what we DO need is actual cock width aka girth and how thick this cock is. We also need proper ball options, for example we have size and that shows us how much cum we shoot, but what about ball count? People have shown interest in the ability to have as many as 4 and as little as 1 although the 1 is usually in the form of a huge uniball.]
[Onto pussy choices. As far as width goes it can work if its on par with persons size aka size 3 person with 3 foot wide vagina seems unlikely but not impossible, however when I played I always viewed width in the same grouping as tightness. Both depth and tightness should go into what can be inserted, obviously at a decent penalty for not being able to actually handle content either in the form of separate scenes where they cant be penetrated or they simply force it in causing a decent decrease in sanity.]

	[ Equipment Descriptions Below ]
	LineBreak;
	LineBreak;
	repeat with x running through equipped owned equipment:
			if placement of x is "helm":
					if descmod of x is "":
							break;
					else:
							say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
			if placement of x is "eyes":
					if descmod of x is "":
							break;
					else:
							say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
			if placement of x is "face":
					if descmod of x is "":
							break;
					else:
							say "[descmod of x] ";
	repeat with x running through equipped owned equipment:
			if placement of x is "chest":
					if descmod of x is "":
							break;
					else:
							say "[descmod of x] ";
	let CrotchVisible be true;
	repeat with x running through equipped owned equipment:
			if placement of x is "waist":
					if descmod of x is "":
							break;
					else:
							say "[descmod of x] ";
							now CrotchVisible is false;
	if CrotchVisible is true: [no pants, so undies might be visible]
			repeat with x running through equipped owned equipment:
					if placement of x is "crotch":
							if descmod of x is "":
									break;
							else:
									say "[descmod of x] ";
									now CrotchVisible is false;
	if CrotchVisible is true: [no undies, so the actual crotch is visible]
			say "Your [bodyname of Player in lower case] waist and legs are bare-ass naked, exposing your privates for everyone to see. ";
	let Barefoot be true;
	repeat with x running through equipped owned equipment:
			if placement of x is "feet":
					if descmod of x is "":
							break;
					else:
							say "[descmod of x] ";
							now Barefoot is false;
	if Barefoot is true:
			say "You are barefoot right now. ";
	LineBreak;
	if weapon object of Player is not journal:
			say "You are carrying a/an [weapon object of Player] just in case of trouble";
			if weapon object of Player is unwieldy:
					say ". Due to its comparatively [if scalevalue of Player > objsize of weapon object of Player]small[else]big[end if] size, it is [if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) > 3]very unwieldy[else if absolute value of ( scalevalue of Player - objsize of weapon object of Player ) is 3]rather unwieldy[else]somewhat unwieldy[end if] for you to use at the moment";
			say ". ";
	repeat with x running through equipped owned equipment:
			if descmod of x is "", next;
			if placement of x is "end":
					say " [descmod of x]";
	[ ^^ Eqipment Descriptions Done ]
	[ Children Descriptions Below   ]
	if the number of entries in childrenfaces > 0:
			if the number of entries in childrenfaces is 1:
					if ( 1 of childrenskins is not 1 of childrenbodies ) or ( 1 of childrenskins is not 1 of childrenfaces ):
							say "Trailing behind you, your child has a [entry 1 of childrenfaces] face, and a [entry 1 of childrenbodies] body covered in [entry 1 of childrenskins] skin.";
					else:
							say "Trailing behind you, your child is a pure blood [entry 1 of childrenfaces].";
					say "They look as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
			else:
					say "Trailing behind you come your children.";
					repeat with x running from 1 to number of entries in childrenfaces:
							if ( x of childrenskins is not x of childrenbodies ) or ( x of childrenskins is not x of childrenfaces ):
									say "One has a [entry x of childrenfaces] face, and a [entry x of childrenbodies] body covered in [entry x of childrenskins] skin.";
							else:
									say "One is a pure blood [entry x of childrenfaces].";
					say "They all are as alert and human as you are, taking after you eagerly. Despite their age, they are already grown to young adults, both physically and in apparent emotional and mental development.";
	if the player is not lonely:
			say "Accompanying you, you have a level [level of companion of Player] [link][companion of Player][as]look [companion of Player][end link]. [initial appearance of companion of Player]";
	now looknow is 0;
	rule succeeds;
