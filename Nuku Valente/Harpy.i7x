Version 2 of Harpy by Nuku Valente begins here.
[ Version 2 - Central Library content by Stripes ]

"Adds a Harpy to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

Harpydefeat is a number that varies.
Harpyconsent is a number that varies.

to say Harpy wins:
	choose row MonsterID from the Table of Random Critters;
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if harpyfight is 3:
		say "     The harpy swoops in and grabs you, running her taloned hands over your body as the others close in around you.";
	else if HP of Player > 0:
		if harpyconsent is 0:
			say "     She swoops down and grabs you up, pressing her lips to yours. Peace sweeps through this form even as your heart hammers in your chest. You pull her tight as she draws you closer, swept away in the fierce exchange. You are unsure how long you remain like that, but eventually she sets you down and shakes her head, 'We will meet again, I hope.' and she takes off.";
			now Harpyconsent is 1;
		else if harpyconsent is 1 and a random chance of 1 in 2 succeeds:
			say "     As you give in, the harpy swoops down and grabs you, pressing your lips to hers in another kiss. You moan in pleasure as happiness fills you, reunited with this wonderful creature in a fierce kiss. Having found you again, she carries you up to the roof of a nearby building so you two can have a more intimate reunion.";
			if Player is male:
				say "     The harpy woman pushes you down onto the roof and chirps happily a few times as she fondles your cock to full erection. Moving over your legs, she starts licking and kissing at your shaft, then presses her bosom around your [cock size desc of Player] [cock of Player] penis. The soft flesh of her breasts slide against your shaft as she gives you a tittyfuck. Her tongue and lips move in from time to time to work at your glans. The whole time you are lost in a wave of adoration for this beautiful creature, eventually crying out in joy as you cum messily across her tits and face. She grins at you and licks her lips while spreading your seed across your bosom in a wanton display that would make you rock hard again had you not cum so hard for this most lovely of beings. She grabs you again with her foot talons and carries you back to the ground.";
				say "     'Mmm... that was wonderful, my dear lover. I hope we shall meet again soon.' With that said, she flaps off, leaving you confused and dazed for some time.";
			else if Player is female:
				say "     The harpy woman pushes you down onto the roof and chirps happily a few times as she gropes your pussy with her taloned hands. Spreading your legs and moving overtop of you, she presses her wet pussy over your lips. Needing no more invitation, you press your lips to her juicy folds and start licking and lapping lustfully, hoping so hard to please this beautiful creature. She does the same for you, working her tongue and lips with a lustful hunger. The whole time you are lost in a wave of adoration for this beautiful creature, eventually crying out in joy as you cum messily and her hot juices soak your face. She grins at you and licks her lips as she spreads the juices that are running down her chin over her hard nipples in slow circles. Your pussy quivers, almost cumming again from this wanton display from this most lovely of beings. She grabs you again with her foot talons and carries you back to the ground.";
				say "     'Mmm... that was wonderful, my dear sister. I hope we shall meet again soon.' With that said, she flaps off, leaving you confused and dazed for some time.";
			else:
				say "     The harpy woman pushes you down onto the roof and chirps sadly as she notices your lack of sexual organs. Clearly disappointed, she starts to turn way, but you grab her hand, pausing her departure. Not wanting to lose this lovely creature's affection, you bury your face in her groin and start licking and kissing at her cunt, promising over and over that you can prove yourself to her. She moans and chirps in increasing pleasure as your eager tongue pleasures her, eventually driving her to a powerful climax that leaves her hot juices running down your face and her feathered legs. She grins at you and rubs her talon-hands over her wet cunt, then rubs her own juices over her nipples and then at your bare groin. 'Mmm... maybe there's hope for you yet. Let's see if this will help you along,' she says softly before grabbing you in her foot talons and carrying to back to the ground and flying off.";
				follow the sex change rule;
			now harpyconsent is 2;
			if Libido of Player < 50, increase Libido of Player by 10;
		else if harpyconsent is 2 and a random chance of 1 in 2 succeeds:
			say "     Having given in to the harpy, she rushes in and kisses you, reawakening to lust and love for this most beautiful of beings. At first you could not tell, but now you know this to be your feathered lover once again. Her taloned hands run over your body before she grabs you in her foot talons and carries you up to a rooftop for more private time.";
			if Player is male:
				say "     Once up on the roof, she presses you onto your back and leaps onto your lap. She grinds her wet pussy down onto your cock, making you moan happily, looking forward to making with this strangely beautiful creature. Between the wet motion of her hot lips across your shaft and the show she puts on groping her breasts, you are fully hard almost immediately. Once satisfied you're ready to go, she lifts her feathered rear and lowers herself down onto your shaft with an avian squawk. Her hot, wet pussy grips and squeezes at your throbbing penis. 'Mmm... yes, my lover... do it... fill me with your eggs...' she cries out as she cums hard and her inner walls grip down tightly on your cock, driving you to cum as well. Your hot seed rushes into her, filling her needy womb with your semen, breeding the lustful harpy.";
				say "     After you both recover from your breeding session, she picks you up and carries you back down to the ground, giving you another kiss. 'Mmm... thank you, my precious lover. You've done well and I have no more need of you,' she says. Your heart broken, you collapse to your knees as you watch your ex-lover fly away.";
				decrease morale of Player by 10;
				now harpyconsent is 0;
			else if Player is female:
				say "     Once up on the roof, she presses you down on your back and moves atop you. She presses her bosom to your face, pushing one of her nipples to your lips. Still catching the arousing scent of lust from your earlier lovemaking on it and quickly wrap your lips around it, starting to suckle at it. She slips a taloned hand between your thighs and presses a [if Cunt Tightness of Player > 10]trio of fingers[else if Cunt Tightness of Player > 5]pair of fingers[else]finger[end if] into your juicy cunt. You moan loudly and suckle all the harder, soon rewarded with the harpy's milk. 'Yes, my sweet. Drink up and soon you'll be another beautiful harpy like me. Wouldn't that be wonderful,' she says in a crooning voice. You moan and chirp in response, your besotted mind willing to agree to nearly anything for your feathered lover. You switch to her other breast for more of her delicious milk. You nurse from her until she has no more milk to give and you've had several powerful orgasms from her continuous attention to your quivering cunt. You are still in a daze as she takes you back to the ground and gropes you, urging you to become a lovely harpy quickly so you can join her and the others.";
				PlayerDrink 10;
				SanLoss 10;
				infect "Harpy";
			else:
				say "     Once she gets you up on the roof, she presses you down on your back, but is disappointed to see your lack of genitalia. She shrieks in frustration and slashes at you with her claws. 'Ugh! Why am I wasting my time with you?' You cry out to her needfully, but she has decided you are no longer worth the bother and flies off, leaving you on the roof to nurse your wounds before climbing down the fire escape, feeling dejected and heartbroken to have been rejected by her.";
				decrease morale of Player by 10;
				decrease HP of Player by wdam entry;
				now harpyconsent is 0;
		else:
			say "     She grabs at you with her powerful talons, leaving painful marks even as your body flushes with the warm tingles of nanite infection. She shouts at you angrily, scratching until her anger passes, then, with great pumps born of her frustration, she flaps her wings and retreats.";
	else:
		say "     She grabs at you with her powerful talons, leaving painful marks even as your body flushes with the warm tingles of nanite infection. She shouts at you angrily, scratching until her anger passes, then, with great pumps born of her frustration, she flaps her wings and retreats.";
	now harpyfight is 2;

[ [Harpy loss] ]
To say Harpy loses:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if harpyfight is not 3 and player is male and Libido of Player > 40 and a random chance of 1 in 3 succeeds:
		say "     Your final blow sends the harpy tumbling to the ground momentarily. You have a brief moment to decide if you'll take advantage of her while you can. Shall you fuck the harpy?";
		if Player consents:
			say "     You jump atop the harpy, pinning her down before she can take to the air again. She shrieks, but is too weak to fight you off as you get your cock lined up and thrust into her. Despite her resistance, she moans in pleasure as you start pounding into her wet pussy. As her lust builds, you relax your grip so you can fondle her breasts as well. After an enjoyable ride, you drive deep into her and release your hot seed, making her shriek in delight. You pump your hot load into her before letting her get up and leave.";
			if harpyconsent > 0:
				say "     When you release her, she slashes at your face angrily with your claws. 'You terrible wretch! It would have been so wonderful, but you had to turn out to be so horrible,' she shrieks angrily. You realize that it was the same harpy who made your heart all a flutter before, but she's left you now. There is a strange sadness in your heart even as the strange spell she had over you fades away.";
				decrease morale of Player by 5;
				now harpyconsent is 0;
	else:
		say "     Emitting a sudden foul curse, the young woman takes to the air, fleeing before her wounds can ground her.";
	now harpyfight is 1;

to say HarpyDesc:
	setmongender 4;
	if inasituation is false:
		say "     An athletic-looking young woman with feathery wings attached to her arms like fins and great talons for hands and feet. Her legs are also covered in feathers, and she has a fan of feathers over her butt. She has light, flawless flesh where exposed on her front and a fine, elfin face. She would be cute if she wasn't scary.";
	else:
		say ""; [taken care of at the event source]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Harpy" to infections of girl;
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Harpy"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She manages to get a good grip with a talon around an arm, digging her claws in as her wings-arms beat powerfully[or]She dive bombs from above, knocking you to the ground[or]A sudden hug has you pressed to her soft front, only to be released above the ground[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[Harpy loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Harpy wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[HarpyDesc]"; [ Description of the creature when you encounter it.]
	now face entry is "young woman with large, elfin ears and unruly red hair that barely reaches your shoulders. While a little chubby, it could pass as a human"; [ Face description, format as "Your face is (your text)."]
	now body entry is "built slightly, with slender curves that remind of a teenaged female and an exposed belly button on your [skin of Player] front. Feathers spread over your shoulders and back, light brown in color. Your thighs are covered in downy looking feathers, but shins fade into tough looking bird talons that grip the ground securely. Your arms have wings like fins, with powerful flight feathers ready"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "smooth and flawless"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "Above your pert ass is a fan of brown feathers that curve upwards."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "a soft warmth flows through your head as it dwindles and rounds to nymph like appeal. Your ears stretch a little to the sides as hair shifts in hue"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "light brown feathers spread rapidly, covering your shoulders and back. Brown feathers spread over your legs, from the hips down towards your shin where it fades towards yellow scaly skin. Your feet become powerful looking bird talons with wicked claws. Even as you consider reaching to touch, wing fins burst from your arms with new feathers"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "your skin evens out its blemishes, becoming youthful and smooth"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you feel your [skin of Player] rump rounding. Feathers burst free from it and form a tail fin, upturned and in a fan spread"; [ ass/tail change text. format as "Your ass tingles as (your text)." ]
	now cock change entry is "it thrums with an alien pleasure"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 6; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 6; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "winged"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "avian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


when play ends:
	if bodyname of Player is "Harpy":
		if humanity of Player < 10:
			if centrallib is 7:
				say "     As a harpy in the library, you quietly tend to the stacks as do the others. The guard outside makes sure that you are rarely disturbed, leaving you and your sisters to quietly read most of the time. On occasion, you fly out into the city to pluck up a [if Player is female]male to satisfy your needs and give you an egg for the season. Sometimes, if he's cute enough, smart enough and quiet enough, you [']allow['] him to stay, making him into the newest harpy of the aerie[else]female or herm to satisfy your lusts, screwing her until you're sure she'll grow round with a harpy egg. Sometimes, if she's cute enough, smart enough and quiet enough, you [']allow['] her to stay, making her into the newest harpy of the aerie[end if][if Player is male]. The other harpies also enjoy your cock often, many of them getting eggs from you[end if][if Player is puremale]. You have become an unusual creature of myth and legend, the rare male librarian[end if].";
			if hellHoundLevel > 0:			[Hellhound while taken by the librarians]
				say "[line break]     Lost to your new fate as a harpy at the library, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream or an uncomfortable feeling when reading stories about deals with the devil. But he does not forget; your foul contract was only delayed to better prepare you for your coming, unending fate.";
				say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave to the countless foul hellhounds who guard the gates of Hell. You're chained down, never to fly freely again and made to mate with the hellish dogs. The fel beasts breed you incessantly[if Player is female], filling your womb with corrupted eggs[else], forcing you to mount bitches while the males climb atop you[end if]. The blood-red eggs hatch to release more hellhounds, but these have large, raven wings on their backs, allowing the hounds to fly. The flying hounds add to the dark forces of the underworld. They nurse from your [if Player is female]tits[else]cock[end if]and grow strong, eventually joining the others in mating you until the ends of time.";
			else:
				say "     You take flight and are rejoined with other harpies high in a secluded mountain. You are content with one another except when heat strikes. Once a year, each of you feels a 'special' need that cannot be met by your sisters and you descend on the small city below, plucking up a male to satisfy you and give you an egg to care for, until the next year. Most men prove to be pliable enough, and a few even stay, helping to tend to the aeries while the females do business and hunt.";
		else:
			if Harpyconsent > 0:
				say "     You are rescued and taken back to civilization. Though you greatly enjoy having access to flowing water and easy food, you never forget the tingle of her lips on your own. Eventually, driven by longing, you take flight back to that great city, and eventually find her. Convincing her to leave with you would be a whole other adventure...";
			else:
				say "     Adjusting to life as a harpy takes some getting use to. You find that a good perch works better than a couch, and your diet has a lot more nuts and berries than your old diet ever had. Still, you're mostly human, and getting by proves easy enough for such a young, pretty, looking thing.";


[ Edit this to have the correct name as well]
Harpy ends here.
