Version 1 of Vixentaur by Stripes begins here.
[Version 1.3 - Alt attack tweaked]
"Adds a Vixentaur creature to Flexible Survival's Wandering Monsters table to go along with Sam the Dual-Taur's content."

Section 1 - Creature Responses

vixentaurcatch is a number that varies. vixentaurcatch is usually -35.

when play begins:
	add { "Vixentaur" } to infections of girl;
	add { "Vixentaur" } to infections of furry;
	add { "Vixentaur" } to infections of Vulpinelist; [list of vulpine infections]
	add { "Vixentaur" } to infections of Taurlist; [list of tauric infections]

to say vixentaurdesc:
	setmongender 4; [creature is female]
	if HP of Sam is 15:	[Fight w/Sam]
		say "     Drawn into a fight with Samantha, you find yourself facing off against the alluring vixentaur. She has a vulpine head with a shapely muzzle filled with sharp teeth and keen eyes looking for her first opening. Her hands and feet have small claws. Her bushy tail swishes, spreading her perfumed scent. You notice it starting to make you aroused and docile, but you shake it off just as the vixentaur charges. Both tough and sexy, the vixentaur will be a dangerous enemy.";
	else:			[Random Vixentaur]
		say "     Before you is a vulpine taur creature, definitely one of Sam's many descendants. The creature's vulpine head has a sexy smile on its long, slender muzzle and fox ears. It has long lashes, pretty coral eyes and long, flowing cerise hair. Its upper body is generally human in form, but covered in pink fur and with a painted claws on its fingertips. It's quite curvaceous, with a lovely bosom, slender waist and round hips blending into its tauric lower half.";
		say "     Its lower body is fully vulpine, a slender creature with shapely legs and cute paws. Its pink fur becomes a very light shade at its chest and underbelly, as does the tip of its tail. What would normally be the black of its socks is a deep pink. Beneath its lower body hang several more breasts and under its tail waits its wet, pink pussy. It drips with her juices as her fluffy tail spreads the arousing scent coming from it.";


to say losetovixentaur:
	if HP of Sam is 15:
		say "     Sam growls and charges, slamming her body into yours and [if scalevalue of Player < 4]sends you tumbling back several yards[else]knocks you over[end if]. You land half on and half off a cot, painfully injuring your back.";
	else:
		if Player is male and a random chance of 2 in 3 succeeds:
			say "     Having defeated you, the vixentaur giggles excitedly and presses you to the ground. She murrs in your ear about how [if Player is male]she wants you to breed some kits in her[else]much fun she's going to have with you[end if]. You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom. You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
			say "     She gets your [cock size desc of Player] [cock of Player] shaft lined up and sinks down onto your throbbing rod with ease. She giggles and yips as she rides up and down. Her inner walls squeeze and ripple across your manmeat in so many delightful ways. She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk. The vixen fucks you with wild, animalistic abandon, pounding her hips down onto yours until you're nearly insensate with lust and finally climax as her pussy clamps down around your shaft as she cums. You blast your [if Ball Size of Player > 5]large [end if]load into her, breeding the lustful vixen, possibly siring more of these alluring creatures. Having got what she wanted, she giggles and heads off after flashing you her pussy with your cum [if Ball Size of Player > 5]flowing[else]leaking[end if] out of it.";
		else:
			say "     Having defeated you, the vixentaur giggles excitedly and presses you to the ground. She murrs in your ear about how [one of]much fun she's going to have with you[or]she's been looking for some fun[at random]. You are beyond resisting her advances at this point, wrapping your arms around her and burying your face in her bosom. You kiss and licks at her many nipples, drawing excited yips from the vulpine.";
			say "     She grinds her hips down onto you, rubbing her wet, dripping pussy against your [skin of Player] flesh. Her paws rub and knead over you, [if Player is herm]one of them wrapping around your [cock size desc of Player] cock while the other goes for your juicy pussy[else if Player is male]one of them wrapping around your [cock size desc of Player] [cock of Player] cock[else if Player is female]one of them slipping between your legs to tease your [cunt size desc of Player] pussy[else]teasing every sensitive spot they can find[end if]. She presses your face to her breast, coaxing you to start suckling from her, drinking down her tasty, perfumy milk. She continues to rub against you until she finally cums, soaking you in her juices. Having had her fun, she gets up with a giggle, presses her sticky crotch into your face and trots off merrily.";


to say beatthevixentaur:
	if HP of Sam is 15:
		say "     You manage to knock Samantha down, having beaten the fight out of her.";
	else if a random number between 1 and 100 < vixentaurcatch and ( player is not neuter):
		say "     The beaten vixentaur backs away from you, stumbling somewhat from her wounds. Like the others, she prepares to shove you back, but you move in time to grab her and push her to the ground. With her caught, you consider having some fun with her.";
		say "     [bold type]Shall you go ahead with that plan?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			if Player is male:
				say "     Keeping the defeated vixen pinned beneath you, you move around so you're laying across her back. Pushing her tail up, you get your cock into position and slide it across her wet folds. She vixen moans and fidgets beneath you with growing excitement. '[one of]Oh, you do want to play with me[or]Hurry up and give it to me[or]Come on! Fuck that naughty vixen[or]Breed me, you [bodytype of Player] stud[at random]!' she says excitedly. Grabbing her sexy bottom, you drive your cock into her and start fucking, pounding the slutty fox's juicy hole.";
				say "     The vixentaur giggles, yips and moans as you fuck her. Her cunt squeezes and rubs over your thrusting shaft in strange and delightful ways, the taur's vagina clearly made for pleasing any male that mounts her. Reaching around, your grab her plump breasts and play with her nipples, getting her to dribble milk in a growing pool on the ground while enjoying the sounds of delight she makes at this. When you finally cum, you drive hard into her and unleash your [if Ball Size of Player > 6]huge[else]large[end if] load while she cries out in ecstasy. When you're through, you pull out, wipe your cock on her fluffy ass and give her a playful swat. She bounds off, happily filled with your virile seed.";
			else:
				say "     Keeping a grip on the vixen, you move around in front of her. Grabbing her head, you push her face between your legs so her muzzle's squarely at your pussy. Finding herself face to cunt with you, she stops resisting and giggles happily. [one of]'Oh, you do want to play with me!'[or]'Let me take care of that for you,'[or]'I'm sorry for being such a naughty vixen earlier. Let me make it up to you,'[or]'Ooo! This looks serious! Lemme kiss it and make it aaallllll better,'[at random] she says excitedly. And with that, the pink vulpine sets to work licking and lapping at your cunt.";
				say "     Her tongue is quite adept at the task, working hard to please you and able to reach so many delightfully sensitive spots inside you with ease. Despite your attempts to remain quiet, you can't help but moan and cry out as she expertly eats you out. She eagerly laps up your flowing juices as she works that flexible appendage around inside you. You run your hands over her ears and through her hair. After a few small orgasms, she works you up to a large, crashing one that leaves your head spinning as her tongue goes wild inside your spasming vagina. When you finally manage to push the eager vixen's muzzle back, her tongue pops out with a wet slurp. She grins at you, licks her muzzle and dashes off with a happy giggle.";
		else:
			LineBreak;
			say "     Not in the mood to play with the pink vixentaur, you give her ass a hard swat and warn her not to get in your way again. She pouts and dashes off with a soft whimper and a bit of a limp from her injuries.";
		decrease vixentaurcatch by 15;
	else:
		say "     The beaten vixentaur backs away from you, stumbling somewhat from her wounds. She gives you an angry shove, grumbling about how you're a big meanie for not wanting to play with her, before dashing off with a bit of a limp from her injuries.";
		increase vixentaurcatch by 33;
		if vixentaurcatch > 90, now vixentaurcatch is 90;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Vixentaur"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The vixentaur grinds her buxom breasts against your body![or]The vixentaur rears up and slashes you with her foreclaws![or]She snaps at you with her muzzle![or]The vixentaur slaps you soundly across the cheek![or]The vixen creature grabs you with her clawed hands and slams your face into her bosom. The surprise motorboating leaves you momentarily dazed.[or]The vixen giggles and gives her breasts a tantalizing grope as she moves sexily around you.[at random]";
	now defeated entry is "[beatthevixentaur]"; [ Text when monster loses. ]
	now victory entry is "[losetovixentaur]"; [ Text when monster wins. ]
	now desc entry is "[vixentaurdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "vulpine with a long, slender muzzle with a sexy smile always on it. You have long lashes, pretty coral eyes and long, flowing cerise hair";
	now body entry is "considerably transformed, having gained a tauric lower half that is vulpine in appearance. While your upper body largely resembles that of a sexy woman, your lower body is that of a sleek fox";
	now skin entry is "pink fur";
	now tail entry is "You have a fluffy fox tail that threatens to raise itself at every passing creature if you don't consciously keep it down.";
	now cock entry is "[one of]knotted[or]vulpine[or]sheathed[or]fox-like[as decreasingly likely outcomes]";
	now face change entry is "you start to titter involuntarily. As this grows worse into girlish giggling, your face pushes outward and changes with several snaps and pops. A vulpine muzzle forms as the giggling subsides suddenly, leaving a sexy smile on your face";
	now body change entry is "your body shifts and bends unnaturally into two sections. The upper half reforms into an alluring and feminine body with sexy curves. The lower section becomes that of a four-legged fox with a sleek frame and soft paws for feet. Your hands are a cross between these and normal hands. Finding yourself with a vixentaur body like Sam's, your mind quickly adjusts to compensate for your new quadrupedal form";
	now skin change entry is "your skin prickles as thick and fluffy pink fur spreads across your entire body";
	now ass change entry is "strange twinges run up and down your spine. Each time these tingles run down, they seem to travel further and further down until the growth of your new, vulpine tail is complete";
	now cock change entry is "pulses and throbs with need. As you watch, it changes shape and becomes more vulpine in shape and forms a fluffy sheath to house it when not in use. A knot forms at the base of your cock to tie with your lovers until you're done. You find yourself looking forward to putting your new tool to use";
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 21; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 12;
	now cha entry is 17;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 69; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 8; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 24; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 15; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sexy[or]alluring[or]shapely[or]tauric[at random]";
	now type entry is "[one of]vulpine[or]vixentaur[or]vixen[as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "vixentaur"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
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
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
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
"vixentaur"	retaliation rule	--	--	vxntaurpounce rule	20	--	--	--	vixentaurscent rule	--

this is the vxntaurpounce rule:		[damage+arousing pounce]
	choose row MonsterID from the Table of Random Critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 66 ); [+50% damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "The [one of][Name entry][of]vulpine[or]vixentaur[or]fox creature[or]vixen[purely at random] growls and pounces atop you, [one of]knocking[or]pushing[or]shoving[purely at random] you down briefly. Her many talons claw at you while she giggles and presses her many breasts down atop you while giggling happily. This [one of]painfully[or]viciously[or]devastatingly[purely at random] [one of]arousing[or]sexy[purely at random] assault does [special-style-2][dam][roman type] damage and aroused you further!";
	now damagein is dam;
	say "[noshieldabsorbancy]"; [unable to use shield while pinned]
	if absorb > dam:
		now absorb is dam;
	if absorb > 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease HP of the player by dam;
	increase HP of Player by absorb;
	follow the player injury rule;
	increase Libido of Player by a random number from 3 to 8;
	if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 1;
	if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 1;
	say "You are [descr].";

this is the vixentaurscent rule:
	choose row MonsterID from the Table of Random Critters;
	let playernum be Stamina of Player + level of Player + plmindbonus;
	if face mask is equipped, increase playernum by 4;
	let vixennum be cha entry + ( lev entry / 2 ) + monmindbonus;
	let playernum be a random number between 0 and playernum;
	let vixennum be a random number between 0 and vixennum;
	if vixennum > playernum:
		let dam be ( wdam entry + lev entry ) / 6;
		let mod be a random number between -2 and 2;
		let mod be mod / 2;
		let dam be dam + mod;
		say "[one of]The vixentaur's scent continues to turn you on[or]The perfumy scent coming from the vixentaur further arouses you[or]You find yourself thinking of just dropping your hands and letting the vixentaur have her fun[or]The vixen's wonderful scent arouses your lusts[or]The sexy motion of alluring vulpine draws your eyes to her beautiful body and buxom breasts[at random][one of], making you less willing to keep fighting her[or] as sexy images of you and the vixentaur fill your thoughts[or], turning you on[or][at random]. You take [special-style-2][dam][roman type] damage!";
		decrease HP of Player by dam;
		increase Libido of Player by a random number from 1 to 4;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by a random number between 0 and 1;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by a random number between 0 and 1;
		LineBreak;
		if HP of Player < 1:
			if HP of Player <= 0, now fightoutcome is 20;
			if Libido of Player >= 110, now fightoutcome is 21;
			lose;


Section 4 - Endings

when play ends:
	if bodyname of Player is "Vixentaur":
		if humanity of Player < 10:
			if HP of Sam >= 10 and HP of Sam <= 29:
				say "***Succumb w/Sam as Dragontaur. Should not be possible.";
			else if HP of Sam >= 30 and HP of Sam <= 49:
				if Player is herm:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful heat growing stronger. You and Sam pair up as a couple of increasingly feral vixentaurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal den. You breed her often, filling her plump with kits most of the time. You do make forays with her out into the city as well, allowing the sexy males and herms you find out there to breed you as well as breeding kits in many a juicy pussy as well. With you both breeding alluring, vulpine offspring, the numbers of vixentaurs in the area quickly grow.";
				else if Player is female:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful heat growing stronger. You and Sam pair up as a couple of increasingly feral vixentaurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal den. You make numerous forays with her out into the city as well, allowing the sexy males and herms you find out there to breed you. With you both breeding alluring, vulpine offspring, the numbers of vixentaurs in the area quickly grow.";
				else if Player is male:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful desires growing stronger. You and Sam pair up as a couple of increasingly feral vixentaurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal den. You breed her often, filling her plump with kits most of the time. You do make forays with her out into the city as well, with you breeding fresh holes while Sam goes for any cock she can get. With you both breeding alluring, vulpine offspring, the numbers of vixentaurs in the area quickly grow.";
				else:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful heat growing stronger. You and Sam pair up as a couple of increasingly feral vixentaurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal den. Lacking any defined gender of your own, you often babysit and play with her quickly maturing offspring while the vixentaur is out. You also enjoy the role of servicing the alluring female, particularly enjoying to lick her leaking pussy clean after returning from an expedition into the city to be bred by the males she finds out there. With the alluring vixentaur's efforts out there, the number of her vulpine progeny grow steadily.";
			else if HP of Sam >= 50 and HP of Sam <= 69:
				if Player is herm:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful heat growing stronger. You and Sam pair up as a couple of increasingly feral, herm taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. You breed with the dracovixentaur often, swapping roles as top or bottom to ensure you're both well bred. You do make forays with her out into the city often, siring plenty of offspring of your own in the many sexy females and herms you find out there. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of vixentaurs in the area grow to be the most frequent of the three.";
				else if Player is female:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful heat growing stronger. You and Sam pair up as a couple of increasingly feral taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. You are bred by the dracovixentaur often, filling you plump with numerous kits most of the time. You do make forays with her out into the city often, getting mounted by other males while Sam partakes in the females. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of vixentaurs in the area grow to be the most frequent of the three.";
				else if Player is male:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful heat growing stronger. You and Sam pair up as a couple of increasingly feral, herm taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. She allows you to mount her and breed her often, keeping her heavy with kits most of the time. You do make forays with her out into the city often, enjoying mounting and breeding many of the females you find with her. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of vixentaurs in the area grow to be the most frequent of the three.";
				else:
					say "     As you lose your humanity to your increasingly vixentaur nature, you feel your lustful urges growing stronger. You and Sam pair up as a couple of increasingly feral, herm taurs. While Sam does maintain more of her old self than you do in the end, she's more than happy to stay in the city and turn the library into her personal lair. Lacking any defined gender of your own, you often babysit and play with her quickly maturing offspring while the vixentaur is out. You also enjoy the role of servicing the powerful herm, particularly enjoying to lick her clean after returning from an expedition into the city, sucking her cock or licking the leaking cum from her well-used pussy. While Sam's offspring are a collection of dragontaurs, vixentaurs and dracovixentaurs, the number of dragontaurs in the area grow to be the most frequent of the three.";
			else if HP of Sam is 99:
				say "     Shortly after you lose your humanity, you are found by Sam the Vixentaur, who takes you in to be her personal sex toy. She greatly enjoys using you to satisfy her sexual desires. Her ample bosom is pressed to your face and you're forced to nurse until you're nothing but an obedient slut to lick your mistress's cunt[if Player is male]. She rarely permits you to breed her, preferring to deny you that pleasure by forcing you to watch others breed her instead[end if]. She'll share you often with her offspring or take you with her on her forays into the city, offering you up as a plaything for any creature she desires. She barters the use of your mouth[if Player is male], cock[end if][if Player is female], cunt[end if] or ass at times to bribe a potential new lover on occasion. A duty you're more than happy to perform. With the alluring vixentaur's efforts out there, the number of her vulpine progeny grow steadily.";
		else:
			if HP of Sam >= 10 and HP of Sam <= 29:
				say "***Survive w/Sam as Dragontaur. Should not be possible.";
				say "     You are able, through the strong connection Sam shares with you, to convince the dragontaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in his time in the city, [if hospquest is 13 and HP of Doctor Matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[else]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of his rather enthusiastic work.";
				say "     You and Sam continue his work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs and litters of vixentaurs start popping up in those areas as well, then all the better[if Player is female]. As Sam's mate, you enjoy siring several clutches and litters in her as well, helping the spread of the strong dragontaurs and sexy vixentaurs wherever you go[end if].";
			else if HP of Sam >= 30 and HP of Sam <= 49:
				say "     You are able, through the strong connection Sam shares with you, to convince the vixentaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in her time in the city, [if hospquest is 13 and HP of Doctor Matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[else]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of her rather enthusiastic work.";
				say "     You and Sam continue her work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if litters of vixentaurs start popping up in those areas as well, then all the better[if Player is male]. As Sam's mate, you enjoy siring several litters in her as well, helping the spread of the sexy vixentaurs wherever you go[end if].";
			else if HP of Sam >= 50 and HP of Sam <= 69:
				say "     You are able, through the strong connection Sam shares with you, to convince the dracovixentaur to leave the city with you once the military forces move in to extract the survivors. There is some interest over your unusual forms, but Sam's university's connections to RSX keep you from too much unwanted scrutiny. There is also much interest over the data Sam's managed to collect in her time in the city, [if hospquest is 13 and HP of Doctor Matt >= 12]which you do arrange to quietly share with Dr. Matt to assist in his research efforts[else if hospquest > 13]which you do manage to slip a copy of to Dr. Mouse before departing[else]but RSX's pull is able to keep it from being confiscated[end if]. The reward you earn for this is quite sizable, more than Sam had originally been anticipating, having gained Rick's share and more due to the exceptional success of her rather enthusiastic work.";
				say "     You and Sam continue her work, entering other infected hot spots to collect samples and classify the creatures within, all while getting to enjoy their myriad variety. Your collective strength and experience make you able to deal with most anything you find while exploring. And if clutches of dragontaurs, litters of vixentaurs and broods of dracovixentaurs start popping up in those areas as well, then all the better[if Player is herm]. As Sam's mate, you enjoy siring several offspring in her as well as having her breed you with them, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[else if Player is male]. As Sam's mate, you enjoy siring several clutches and litters in her as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[else if Player is female]. As Sam's mate, you enjoy getting bred with many of her offspring as well, helping the spread of the strong dragontaurs, sexy vixentaurs and herm dracovixentaurs wherever you go[end if].";
			else if HP of Sam is 99:
				say "     When the military arrive to rescue you and the others, you feel somewhat disappointed about not being able to patch things up with Sam, but hope she's enjoying her new life out in the city. There is considerable interest over your new form and you are subject to a battery of tests by the military scientists before finally being released. You visit the university which sponsored Sam's work upon you're release, informing them (in general terms) what happened to their researchers and of the loss of their data. They provide you with a reward for this information. It is unfortunately quite small[if Player is male], but the human secretary your seduced and banged while there more than makes it worth your time. Being unprepared for the virility of those transformed, she's left bred full of vixentaurs[else], but is enough to make it worth your time[end if].";
				say "     Being an alluring and sexy creature, you seduce people of wealth or influence to make a living. Sometimes they provide gifts or accommodations to take care of you while you're with them. Other times you simply collect secrets from their loose lips after sex, which can then be sold for the things you want. And while this sort of life is not without its risks, your sultry physique keeps you from getting into too much trouble (except when you want to be). This also allows you to entice and seduce many a prospective lover into sex with you[if Player is female], bearing many a litter of kits which you leave behind to spread in your wake as you travel the countryside[else if Player is male], breeding many a litter of kits in your wake as you travel the countryside[end if].";


Vixentaur ends here.
