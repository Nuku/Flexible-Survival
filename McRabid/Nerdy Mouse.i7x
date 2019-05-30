Version 1 of Nerdy Mouse by McRabid begins here.
[Version 0.5 - Touch-ups and framework for player victory sex created.]

"Adds a Nerdy Mouse creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say nerdymousedesc:
	setmongender 3; [creature is male]
	say "     As you're exploring the Campus Quad you almost literally collide with a short brown mouse [one of]with his nose buried in a book[or]absorbed with a handheld game system[or]reading a comic book[at random]. He's wearing thick circular glasses, a t-shirt [one of]reading 'I get +8 on all of my intelligence rolls'[or]reading 'l337'[or]with a picture of a blue police box[or]with a picture of a wizard casting a spell[at random], a pair of blue jeans and carries a large messenger bag.";
	say "     The mouse stares at you from behind his large glasses for a moment before letting out a startled squeak and jumping away from you. He adopts an almost comical boxing stance before speaking. 'I... I'm not afraid of you stupid bullies anymore! [one of]Allons-y[or]Engage[or]Excelsior[or]Let's get dangerous[or]Roll for initiative[at random]!' he cries, charging in with his arms flailing and his eyes tightly closed.";


to say losetonerdymouse:
	say "     The mouse grins at you and sticks his tongue out mockingly 'Brains over brawn ftw! Ha ha ha! Ha ha ha ha ha!' he arches his back and looks up to the sky as he gives his oddly familiar laugh. After laughing in this manner for an excessively long time, he turns his attention back to you and, empowered by his victory over you, flips you off while grinning.";
	if Player is not male and Breast Size of Player > 0: [no cock and at least an A-cup]
		say "     The rodent freezes as he stares at you. 'Oh crap, oh crap... I... I am so... soooo sorry. I... I was just so caught up in defending myself... Are you okay Miss?' As he talks, he's hurrying to your side to help you up, only to trip over his own feet. The nerd ends up face first between your breasts. Almost immediately you feel a dampness in your cleavage, the little nerd undoubtedly drooling at having a close up with breasts. He pulls back quickly, his face beet red. 'I didn't mean it! I would never do... er... not that you aren't pretty. I just.. prefer girls that have an IQ higher than their bust size.' The mouse's embarrassment had been so cute right up until that point. As if sensing your rising anger, he gives a startled squeak before scampering away as fast as he can.";
	else if Breast Size of Player > 0: [cock + at least an A-cup]
		say "     The rodent freezes as he stares at you. 'Oh crap, oh crap... I... I am so... soooo sorry. I.. I was just so caught up in defending myself... Are you okay Miss?' As he talks, he's hurrying to your side to help you up, only to trip over his own feet. The nerd ends up face first between your breasts. Almost immediately you feel a dampness in your cleavage, the little nerd undoubtedly drooling at having a close up with breasts. The mouse places his paws down to push himself up, one landing right on your crotch. The mouse bolts upright, his face covered in a blush. 'You... have a...' He clears his throat, blushing. 'I didn't mean to grab... I... uh...' He stands quickly, an obvious bulge in his pants, and without another word, bolts as quickly as he can.";
	else if scalevalue of Player < 3: [smaller than average player body]
		say "     He stares at you for a moment before smiling and holding out a paw to help you up. 'Sorry, us little guys really shouldn't be fighting each other. AH CHOO.' His ears flatten back as he looks at you sheepishly. 'I... s-sorry - allergies.' He hands you a tissue so you can wipe your face off. 'I think I'm still allergic to pet dander. At least I'm not a cat or a dog. Then I'd be allergic to myself.' He laughs some before starting to walk away. 'Watch yourself out there.'";
	else:
		say "     'You're the loser now. Jerk!' The mouse, empowered with his victory over you, grows bold and spits on you. Having had enough of this smarmy little bastard you stagger to your feet with fists balled. He gives a terrified squeak before darting off as fast as he can run.";

to say beatthenerdymouse:
	say "     You smirk at the defeated nerd as he slumps to the ground with a whimper. 'You... you're just jealous that I'm smarter than you,' the nerd sniffles as he pushes his glasses back up his maw. You stare at him for some time, giving the nerd enough time to stand back up, but a warning look from you makes him think better of running away. You feel a growing urge to get some payback on the little upstart";
	[This section to be replaced with the lower portion once sex is added]
	say ".";
	say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks[or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse squeaks[or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie[at random]. Satisfied with adding insult to injury you wander away from the humiliated nerd.";

[
	if Player is neuter:
		say ".";
		say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks[or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse squeaks[or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie[at random]. Satisfied with adding insult to injury you wander away from the humiliated nerd.";
	else:
		say ". Shall you go for some [link]sexy fun (1)[as]1[end link], a little [link]kinky payback (2)[as]2[end link] or just go for a [link]final reminder (0)[as]0[end link] to put this nerd in his place?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
		if calcnumber is 1:		[playful sex]
			if Player is female:
				say "***Ride mousie cock. A mix of apologetic and overly eager, but still fun. Finishes quick, but messy.";
			else if anallevel > 1 and a random chance of anallevel in 5 succeeds:
				say "***Ride mousie cock - anal. Tries to refuse, but his body is definitely turned on. Finishes quick, but messy.";
			else:
				say "***Mutual frot. Mousie blushing and shy, but clearly enjoying it.";
		else if calcnumber is 2:	[rough/bully sex]
			if Player is male and anallevel > 1 and a random chance of anallevel in 5 succeeds:
				say "***Anal on mousie.";
			else if Player is herm:
				say "***Force mousie into oral. Make suck cock and lick pussy. Tease how he seems to love that cock and how this is probably the most pussy he'll ever get so he better do a good job.";
			else if Player is male:
				say "***Force mousie into oral. Make suck cock and lick pussy. Tease how he seems to love that cock.";
			else:
				say "***Force mousie into oral. Make suck cock and lick pussy. Tease how this is probably the most pussy he'll ever get.";
		else:
			say "     [one of]You grin widely as you wrap the nerd up in a headlock and give him a brutal noogie. 'Stoppiiiiiiit noooo!' the puny mouse squeaks[or]You wrap your arm over the little guy's shoulders and noisily slurp your finger before jabbing it into one of his big, round ears. 'Aaaah noooo! Wet willie!' the puny mouse squeaks[or]Acting like you're leaving, you walk past him before quickly grabbing the waistband of his underwear and yanking it upwards. 'AAGH!' The mouse gives a high-pitched squeak before falling over from your wedgie[at random]. Satisfied with adding insult to injury you wander away from the humiliated nerd.";
]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mouse"; [name of the overall species of the infection, used for children, ...]
	add "Nerdy Mouse" to infections of RodentList;
	add "Nerdy Mouse" to infections of FurryList;
	add "Nerdy Mouse" to infections of NatureList;
	add "Nerdy Mouse" to infections of MaleList;
	add "Nerdy Mouse" to infections of TaperedCockList;
	add "Nerdy Mouse" to infections of SheathedCockList;
	add "Nerdy Mouse" to infections of BipedalList;
	add "Nerdy Mouse" to infections of TailList;
	now Name entry is "Nerdy Mouse";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The mouse blocks another attack from you, while shouting 'Barrier!' by using his messenger bag as a shield. OUCH! What does he have in there anyway?[or]Seemingly recalling a self-defense class, the mouse shouts 'I don't know you! This is my purse!' as he manages to deliver a swift, and very painful, kick right to your groin.[or]'Look behind you! A three-headed monkey!' The mouse shouts, pointing behind you. You turn to look and find nothing, your pride is wounded for falling for the oldest trick in the book, further punctuated by a heady thump of his satchel bag onto your head![or]The mouse flails his balled up fists in your general direction. It would be almost comical if he wasn't actually hitting you.[or]The mouse flails his heavy bag wildly while blocking his face. '[mnfacequote]!' he squeaks with fear. The bag ends up clocking you in the side of the head with a heavy thud.[or]The nerdy mouse swings his little fists wildly with his eyes squeezed tightly shut, some of his frantic blows hitting you.[at random]";
	now defeated entry is "[beatthenerdymouse]";
	now victory entry is "[losetonerdymouse]";
	now desc entry is "[nerdymousedesc]";
	now face entry is "that of an anthropomorphic mouse, complete with large ears and slightly buck teeth"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a lithe mouse with very little definition"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "light tan fur covers your"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your tail is roughly the same length as your body, thin and naked like that of a typical mouse."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "rodent"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your gums start to hurt around your two front teeth, almost like you're teething all over again, your tongue feels over them finding your front teeth have grown larger giving you slightly bucked teeth. Before you're able to fully comprehend this, you feel the very shape of your skull starting to change, growing out into a short muzzle, your ears shift and grow much larger giving your head the appearance of a mouse"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your stomach churns and tightens, as you reach to it you can feel your muscles shrinking along with the rest of you. The focus on your shrinking body moves to the changing shape of your hands and feet as they turn into furless, mouse-like paws"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "you give an idle scratch to your belly to get at a sudden itch. As the itch subsides, you feel thin fur covering the area. A moment later you feel two more spots itching, soon your entire body is just one big itch that you can't scratch. After what feels like hours of scratching your body finally relaxes enough to notice your whole body is now covered in soft, light tan fur"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "An itch forms at your backside, reaching back to scratch at it reveals a change occurring. A tail is growing from the base of your spine. After several minutes you become the proud owner of a naked whip of a tail, like that of a mouse"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "a sudden wave of euphoria shoots through your groin. The feeling leaves you gasping for what feels like hours before you finally compose yourself enough to actually look at your crotch. You find your cock has grown slender and is now covered in a protective sheath when not aroused"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 8;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 11;
	now per entry is 9;
	now int entry is 17;
	now cha entry is 11;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 32;
	now lev entry is 3; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Campus"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is "soda"; 	[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 20; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lanky[or]skinny[or]lithe[or]short[at random]";
	now type entry is "[one of]rodent[or]murine[or]mousey[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


to say mnfacequote:
	say "[one of]Don't break my glasses[or]Not in the face! Not in the face[or]Larp rules! Larp Rules! Aiming for the head is cheating[at random]";


Section 3 - Endings

[
when play ends:
	if BodyName of Player is "Nerdy Mouse":
		if humanity of Player < 10:
			say "     You give in to the vast nerdiness inside your head. After pouring over all of the books you can find in the library you grow bored and desire a more structured path of learning. Wandering around, you eventually find yourself at the College Campus and are overjoyed at the thought of getting a higher education. Almost immediately you find yourself on the receiving end of a wedgie to shouts of 'NERD!'. Ah, sweet academia.";
		else:
			say "     You survived, by some miracle, with your humanity still intact. It takes some time but you finally find a place you fit in, surrounded by those like you, by fellow nerds.";
			if Player is male: [MALE]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player: [F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else: [F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Nerdy Mouse ends here.
