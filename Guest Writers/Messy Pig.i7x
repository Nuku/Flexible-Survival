Version 10 of Messy Pig by Guest Writers begins here.
[ Version 9.1 - WS loss add-on - Stripes]
[ Version 10 - Grammar/code cleanup, add defeat rimjob, add vore/bound state - Kurainyx]
[- Originally Authored By: Anonymous -]

"Adds a Messy Pig to Flexible Survival's Wandering Monsters table"
[Description text for this Extension.]

messypigaltorgasm is a truth state that varies. messypigaltorgasm is usually false.

Section 1 - Creature Responses

to say messypigdesc:
	setmongender 4; [creature is female]
	now messypigaltorgasm is false;
	follow the monster combat mode rule; [select the combat mode for first-strike]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 12; [reset likelihood of alt attack]
	say "     You hear a strange snorting sound, and looking around, you see a bizarre creature. It rests on all fours, but its body seems human enough to stand on two legs. It appears to be a large, pinkish humanoid. She's quite fat and has a large pig snout for a face. Floppy pig ears also adorn her head and peak through her oddly human hair. Six breasts in two rows line her underside, and over her large bottom, there is a cute and curly pig's tail. Her hands end in cloven hooves, as do her feet. She spots you and looks up at you with hungry eyes! Uh oh!";

to say messypigattack:
	if anallevel is 3 or (anallevel is 2 and a random chance of 1 in 2 succeeds):
		say "     The pig girl charges at you, and in your weakened state, you fall backwards, landing painfully on your butt. Before you can get up, the pig turns around and launches her fat ass right into your face, knocking you onto your back as her buttcheeks envelop your senses. Thick rolls of piggy fat squish into your face as she uses her heavy weight to keep you pinned down underneath her. You try to push the porker off, but your struggles are absorbed by the layers of meat, your captor oinking happily as she enjoys your struggles and the unintended rubbing. The repugnant aroma of the pig's sloppy living and her musk is all that you can smell, and the scent only grows stronger when the female swine grinds on your face. After a few moments of the pig mashing her sphincter into your mouth, you figure out what she wants, and with you unable to push the hefty animal away, you slowly stick your tongue into the puckered hole.";
		say "     The horny female squeals in delight from your penetration, and she soon starts bouncing her thick butt to try and drive your tongue deeper into her. Your face is battered by her plump posterior, but thankfully, her fat ass hardly inflicts any pain and instead feels like being smothered by soft, but smelly, pillows. The unpleasant fragrance of the pig continues to permeate your senses, and although the stench remains unpleasant, her musk grows stronger and stokes your libido. It's hard to tell if her odor is making you horny or if you're getting desperate for fresh air, but you end up grabbing her flabby buttcheeks as you thrust your tongue as far as you can into her rear to try and hasten her release. Eventually, your rimjob brings the sow to her climax, and with a loud squeal, her backdoor squeezes your tongue as she splatters her femcum over your body.";
	else if Player is female:
		say "     The pig girl charges at you one last time, and in your weakened state you fall backwards, landing painfully on your butt. The pig quickly pins you down with her heavy body. She turns, and your vision is filled with large, fat pig butt. Perhaps due to being lazy, she lies down, drowning your face in her behind, as she hungrily goes about eating you out! Clearly, this creature has an appetite for your sex! She digs her snout deep as she laps at it greedily. You can do nothing but struggle weakly as she pins your head with her huge butt, grinding her ass down onto your face. Her strong scent makes you dizzy and strangely aroused, but you are too heavily pinned under her plump behind to get at that enticing pussy smell. After some time, the pleasure of the pig girl's meal becomes impossible to ignore, and you find your body quivering as you cum.";
	else if Player is male:
		say "     The pig girl charges at you one last time, and in your weakened state you fall backwards, landing painfully on your butt. The pig quickly pins you down with her heavy body. She turns, and your vision is filled with large, fat pig butt. Perhaps due to being lazy, she lies down, drowning your face in her behind, as she hungrily goes about sucking your [cock of Player] cock! Clearly, this creature has an appetite for your sex! She bobs her snout over your throbbing meat as she laps at it greedily. You can do nothing but struggle weakly as she pins your head with her huge butt, grinding her ass down onto your face. Her strong scent makes you dizzy and strangely aroused, but you are too heavily pinned under her plump behind to get at that enticing pussy smell. After some time, the pleasure of the pig girl's meal becomes impossible to ignore, and you find your body quivering as you cum.";
	else:
		say "     The pig girl looks you over and huffs angrily at your bare groin. She gives you a hard bite on the hip and a kick with one of her cloven hooves. Apparently, you're not quite what she wants! She turns around, giving you an ample view of her large behind before she kicks some dirt and mud into your face. You cough and sneeze, only to be body-slammed by the hefty sow, crushing the air from your lungs and filling your vision with spots.";
	if vorelevel is 3 and a random chance of 1 in 2 succeeds:
		say "     By the time the big porker's rising off of you, you've been badly flattened by her weight, and you don't have the energy to move. Exhausted by the fight and the subsequent session underneath the swine's posterior, you barely notice what's happening until you feel something clamp down on your legs. You look up to see that the pig is eating you, your legs quickly disappearing down her gluttonous throat. With most of your lower half already eaten, you cannot do much as the fat hog continues to swallow you at an alarming rate[if scalevalue of Player > 3], her body somehow stretching enough to accommodate your larger size[end if]. Her stinking breath washes over you, and it only gets stronger when your head enters her mouth. The full porker oinks in both delight and victory as you are dumped into her stomach. An assortment of foul odors assault you from within your tight confines, and yet, they also kindle your libido.";
		WaitLineBreak;
		MessyPigBind;
	else if wslevel is 3 and a random chance of 2 in 5 succeeds:
		say "     By the time the big porker's rising off of you, you've been badly flattened by her weight. Left sore and weak after the pleasurable abuse, you can only squirm feebly as she starts pissing with a sigh. You can't help but taste it as a stream of her urine sprays onto your face and more drips down from her crotch. When she's done and has waddled off, you're left very messy by the dirty sow.";
		infect;
	else:
		say "     The pig finally stands up and waddles off. You cough, finally having fresh air as you climb to your knees shakily.";


to say beatthepig:
	if ( cockname of Player is "Messy Pig" or cockname of Player is "Piggy" ) and player is male:
		say "     The pig, when realizing that the encounter is not going well, turns to make a run for it, but as you catch a glimpse of her wet pussy as she turns away, your porcine cock throbs with need.";
		say "     [bold type]Do you have your way with the female swine?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Catch the piggy.";
		say "     ([link]N[as]n[end link]) - Let the pig go.";
		if Player consents:
			LineBreak;
			say "     You leap atop her, making her squeal loudly. She struggles to pull away, but you manage to keep a grip on the sow and pull out your throbbing pig sticker. With a loud, piggish oink, you thrust your stiff penis into her cunt. She continues to squirm and struggle, but it soon becomes less a matter of her trying to get away as more part of the game of fucking the sow. She squeals and paws at the ground with her hoof-like hands as you thrust into her again and again with your [bodytype of Player] form atop her. Your cock throbs inside of her as you drive it in one last time, [if Cock Length of Player > 19]making her belly bulge with your overgrown meat, [end if]pumping your hot cum deep inside of her as your porcine cock seeks to breed this plump sow. When you're finished with her, you give her ass a swat, sending her squealing again as she waddles away quickly, dripping your semen from her well-used pussy as she goes.";
		else:
			say "     The pig turns tail and waddles away faster than you thought possible. You hear its squeals of terror die down as it leaves your range of hearing. Looks like you win!";
	else:
		say "     The pig, when realizing that the encounter is not going well, turns tail and waddles away faster than you thought possible. You hear its squeals of terror die down as it leaves your range of hearing. Looks like you win!";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	add "Messy Pig" to infections of girl;
	add "Messy Pig" to infections of furry;
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Messy Pig"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The pig creature charges at you, slamming forcefully into your stomach and knocking the wind out of you![or]Chomp! The pig bites your arm. Perhaps disappointed in your taste, she backs off and prepares for another attack.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[beatthepig]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[messypigattack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[messypigdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "pudgy with a large pig's snout and two floppy ears"; [ Face description, format as "Your face is (your text)."]
	now body entry is "large, with copious amounts of heavy fat. Some would probably like your rotund figure, if it weren't for the wretched stench that it emits"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "a pinkish hue"; [ skin Description]
	now tail entry is "Your ass has reshaped to a ridiculous degree, with each plush cheek rivaling your own head. Last time you checked, you did have a tail, but with your now titanic tush, it's not such an easy task to get even a glimpse of your corkscrew piggy tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is ""; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "you feel an odd feeling against your nose, as if invisible hands are molding and shaping it, as well as stretching it. Right before your eyes, you see your nose deform, becoming large and snout-like, perfectly matching that of a pig. Your ears can also be felt, changing into large and floppy versions of their former selves"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your stomach gurgles, and your body quickly starts to put on fat! Your frame billows with sudden and heavy fat, completely ruining your figure. There is a mildly unpleasant smell in the air after the change as well, and it does not take long to realize that it's you"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it tingles all over, its color shifting mildly. The change isn't too obvious at first, but you quickly realize that you're much pinker then you used to be"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it starts to rumble and grow, becoming comically large and fat. As if that weren't bad enough, a pinch of your tail bone signifies the growth of a curly pig tail to call your own"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes pink and human-like"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 17;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 8;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 3; [Amount of Damage monster Does when attacking.]
	now area entry is "Mall"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 6; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 4; [ Width of female sex infection will try and give you ]
	now libido entry is 45; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fat[or]chubby[or]plump[or]hefty[or]overweight[at random]";
	now type entry is "[one of]porcine[or]piggish[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "messypig"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
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



Section 3 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"messypig"	retaliation rule	pigpussyinc rule	--	pigpussy rule	12	--	--	--	--	--


this is the pigpussyinc rule:			[increasing likelihood of alt attack]
	choose row monstercom from the table of critter combat;
	if messypigaltorgasm is false or a random chance of 2 in 3 succeeds:		[slower increase if she's already cum]
		increase alt1chance entry by a random number between 1 and 5;
	if alt1chance entry > 40, now alt1chance entry is 40;


this is the pigpussy rule:
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 6;
	choose row MonsterID from Table of Random Critters;
	let playernum be 150 + humanity of Player - Libido of Player + ( level of Player * 2 ) + charisma of Player;
	say "     [piggycheck]";
	if tempnum is 1, decrease playernum by 30;
	let messypigcaught be 1;
	let messypignum be 200 + ( lev entry * 2 ) + cha entry;
	let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125; [80% dmg this round]
	say "     The pig creature makes a grab at you and manages to knock you over briefly. Before you can get back up, she's atop you, grinding her wet, messy pussy down onto your face. Her juices run across your face, and her heavy scent is strong and strangely alluring. You take [special-style-2][dam][roman type] damage as those juices arouse you further and weaken your efforts to keep fighting!";
	decrease HP of Player by dam;
	WaitLineBreak;
	increase Libido of Player by a random number between 3 and 5;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 1;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 1;
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[caught and fighting]
[		say "     TEST: [playernum] vs [messypignum]:[line break]"; ]
		let playernum be a random number between 50 and playernum;
		let messypignum be a random number between 50 and messypignum;
		say "     [special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and HP of Player > 0 and Libido of Player < 110:		[caught / escape attempt]
		say "     As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late.";
		now messypigcaught is 0;
	else if messypigcaught is 1:													[still caught]
		say "     Enticed by her dripping juices, you bury your face in her cunt and start licking away, making her squeal in pleasure. You fade further, your resistance continuing to wane.";
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 125; [80% dmg this round]
		say "     You take [special-style-2][dam][roman type] damage and grow more aroused!";
		decrease HP of Player by dam;
		WaitLineBreak;
	if messypigcaught is 1:															[still caught, aroused]
		increase Libido of Player by a random number between 4 and 6;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 1;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 1;
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[caught and fighting]
[		say "     TEST: [playernum] vs [messypignum]:[line break]"; ]
		let playernum be a random number between 25 and playernum;
		let messypignum be a random number between 25 and messypignum;
		say "     [special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and HP of Player > 0 and Libido of Player < 110:		[caught / escape attempt]
		say "     As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late.";
		now messypigcaught is 0;
	else if messypigcaught is 1:													[still caught]
		say "     You continue to lick the pig woman's wonderful pussy, growing more and more excited as you continue to do so. You happily work your tongue inside of her, growing more and more pleased by her squeals of pleasure.";
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 100; [100% dmg this round]
		say "     You take another [special-style-2][dam][roman type] damage as your lustful longing for her grows higher!";
		decrease HP of Player by dam;
		WaitLineBreak;
	if messypigcaught is 1:															[still caught, aroused]
		increase Libido of Player by a random number between 5 and 8;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 1 and 2;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[caught and fighting]
[		say "     TEST: [playernum] vs [messypignum]:[line break]"; ]
		let playernum be a random number between 10 and playernum;
		let messypignum be a random number between 10 and messypignum;
		say "     [special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and HP of Player > 0 and Libido of Player < 110:		[caught / escape attempt]
		say "     As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late.";
		now messypigcaught is 0;
	else if messypigcaught is 1:													[still caught]
		say "     You dive your tongue in and out of her while rubbing her sticky folds and messy bottom with your hands. Her scent is leaving you reeling, and you're starting to oink and grunt in pleasure as well.";
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 90; [111% dmg this round]
		say "     You take another [special-style-2][dam][roman type] damage as your arousal continues to climb while hers does!";
		decrease HP of Player by dam;
		WaitLineBreak;
	if messypigcaught is 1:															[still caught, aroused]
		decrease humanity of Player by a random number between 1 and 3;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by a random number between 0 and 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by a random number between 0 and 1;
		increase Libido of Player by a random number between 6 and 9;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 1 and 3;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 1 and 2;
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[caught and fighting]
[		say "     TEST: [playernum] vs [messypignum]:[line break]"; ]
		let playernum be a random number between 1 and playernum;
		let messypignum be a random number between 1 and messypignum;
		say "     [special-style-1][playernum][roman type] vs [special-style-2][messypignum][roman type]: ";
	if messypigcaught is 1 and playernum >= messypignum and HP of Player > 0 and Libido of Player < 110:		[caught / escape attempt]
		say "     As enticing as her pussy may be, you manage to come to your senses and push the porcine female off of you before it is too late. She grunts in frustration, you having managed to stop just before her climax.";
		now messypigcaught is 0;
	else if messypigcaught is 1:													[still caught]
		say "     Your efforts finally pay off as you drive the porcine beauty to climax, spraying a fresh wave of her juices across your face and down your throat. You oink and squeal happily, lapping it all up even as it starts to seep into your skin and start changing you.";
	if messypigcaught is 1 and HP of Player > 0 and Libido of Player < 110:							[still fighting, damaged]
		let dam be ( wdam entry times a random number from 80 to 120 ) divided by 67; [150% dmg this round]
		say "     You take [special-style-2][dam][roman type] damage and are left sexually lustful yourself.";
		decrease HP of Player by dam;
	if messypigcaught is 1:															[completely caught, infected]
		decrease humanity of Player by a random number between 2 and 5;
		if "Strong Psyche" is listed in feats of Player, increase Humanity of Player by 1;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 1;
		increase Libido of Player by a random number between 8 and 12;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 3;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 2;
		LineBreak;
		infect "Messy Pig";
		choose row monstercom from the table of critter combat;
		now alt1chance entry is 0;
		now messypigaltorgasm is true;
		WaitLineBreak;


Section 5 - Bound State

to MessyPigBind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     Despite the tight, smelly space that you're trapped in, lust overwhelms you, and you [if Player is male]jerk yourself off[else if Player is female]play with your clit[else]rub your crotch[end if]. Eventually, your body quivers when you reach your climax[if Player is male], your cum adding to the messy confines[else if Player is female], your femcum adding to the messy confines[end if]. As you come down from your high, you can't help but shake the feeling that even though your lust had been satisfied, it's also harder to resist the pig's stomach.[line break]";
			infect;
			LineBreak;
			now struggleatt is 0;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		say "     You are stuck inside of the female pig's gluttonous gut. [one of]The stifling air smells foul, but at the same time, there's something about it that's making you feel horny[or]A little bit of light filters into the stomach every now and then, revealing the food scraps that the hungry piggy had eaten before you[or]You can feel your prison jostle around as the hog waddles off in search of more food[at random]. Your only options are to [bold type]S[roman type]truggle [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if].[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [MessyPigStruggle]";
		if humanity of Player < 1:
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Messy Pig":
					now MonsterID is y;
					break;
			now voreloss is true;
			now bodyname of Player is "Messy Pig";
			now facename of Player is "Messy Pig";
			now tailname of Player is "Messy Pig";
			now skinname of Player is "Messy Pig";
			now cockname of Player is "Messy Pig";
			now tail of Player is tail entry;
			now face of Player is face entry;
			now skin of Player is skin entry;
			now body of Player is body entry;
			now cock of Player is cock entry;
			now Trixieexit is 1;
			end the story saying "A pig pigged out on you";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     [one of]The pig squeals angrily as you make a fuss inside of her[or]The walls of flesh might be thick with fat, but you still manage to get your captor to oink uncomfortably with your struggles[or]You kick and squirm as much as you can in the hopes of giving the ravenous animal indigestion[at random].";
					if a random chance of 1 in 5 succeeds:
						infect;
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
					wait for any key;
				else:
					say "     You continue to thrash about from within your hungry captor, and eventually, your efforts are rewarded when you are pushed up and out of her stomach. You travel back through the constricting throat and then get spat out onto the floor, covered in her juices and various food scraps. The irritated piggy snorts angrily as you recover, and after kicking a cloud of dirt at you, she runs away, likely to search for an easier meal.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
					wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					decrease struggleatt by 1;
					say "     [one of]As you relax inside of your makeshift prison, you can feel the walls shift and press down on you as the pig flops onto her stomach, using the bulge you're making as a pillow[or]The pig, wanting to have some fun with her unresisting captive, shakes her full stomach with her hands, tossing you about in your prison[at random].";
					if a random chance of 2 in 5 succeeds:
						infect;
					wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					decrease struggleatt by 1;
					say "     [one of]As you wait inside of the pig's stomach, a shower of [one of]sticky soda[or]chips[or]canned fruit[at random] suddenly rains down upon you[or]You idle around a bit, listening to the pig's oinks and grunts as she searches for food[at random].";
					if a random chance of 1 in 5 succeeds:
						infect;
					wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
					SanBoost 3;
				else:
					say "     [one of]The swine makes curious oinking noises as you try to resist her influences[or]Despite the crummy space that you're in, you manage to keep relatively calm as you figure out what to do[at random].";
					wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wait for any key;
				next;
			say "Invalid action.";

to say MessyPigStruggle:
	say "[bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";

Section 6 - Endings

[See Philip: 'Hungry Boar Man' by Hiccup for endings]

[ Edit this to have the correct name as well]
Messy Pig ends here.
