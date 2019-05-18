Version 2 of Drone Wasp by Nuku Valente begins here.
[ Version 1.0 - Initial content - Asani                                       ]
[ Version 2.0 - Moved from story.ni file to Nuku Valente folder - Blue Bishop ]
[ Version 2.1 - General writing cleanup - Song                                ]

"Adds a Drone Wasp creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

when play begins:
	add { "Drone Wasp" } to infections of girl;

dronevict is a number that varies.

to say beatthedrone:
	if dronevict > 2 and Libido of Player > 33 and a random chance of dronevict in 5 succeeds and ( player is not neuter ):
		say "     Having knocked down the wasp girl, you make a grab for her before she can get away. Now that you've caught this cute little thing, you need to decide what you'll do with her. Shall you put her honeyed lips to work or just let her go?";
		if Player consents:
			if Player is male:
				say "     Pulling out your stiffening cock, you bring her head forward. While she was worried at first, she grins at the sight of your [cock of Player] erection and brings her soft lips to kiss and suck at it[if Cock Length of Player > 17]. The girlish wasp has trouble dealing with your [cock size desc of Player] member, contenting herself with stroking, licking and kissing at it until you cum all over her face. She swallows down as much of your load as she can before fluttering off with[else]. The girlish wasp strokes, kisses and licks at your [cock size desc of Player] cock before sliding her sweet lips down over it. She sucks it greedily until you cum, shooting your load down her throat. After getting your tasty treat, she flutters off with[end if] [if Ball Size of Player > 4]her tummy so bloated with your excessive semen that she can hardly fly[else]a full tummy[end if].";
				increase Libido of Player by 8;
				decrease dronevict by 1;
			else:
				say "     Rubbing your hand over your wet pussy, you bring her head forward. While she was worried at first, she smiles at the sight of your juicy flower and brings her soft lips to lick and kiss at it. The girlish wasp lavishes attention on you, clearly having had lots of practice with her hive sisters. You stroke her hair and enjoy the delightful attention before finally cumming, soaking her face and your thighs in your juices. She laps as much of your feminine cum as she can get before fluttering off with a happy buzz.";
				increase Libido of Player by 8;
				decrease dronevict by 1;
		else:
			say "     Deciding it'd be best to send the little pest on her way, you lift her wasp-like abdomen, give her a spank on the ass and send her fluttering off. She sniffles like a punished little girl as she buzzes away.";
			now dronevict is 0;
	else:
		say "[one of]The drone flutters off with a tattered wing, crying as she flies away, leaving you with a slight sense of guilt.[or]The drone falls to the ground and begins to cry. Hearing buzzing nearby, you quickly run away before another wasp catches wind of you.[at random]";
		if dronevict < 5, increase dronevict by 1;

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Drone Wasp"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The drone attacks with its small claws, leaving tiny furrows that sting slightly.[or]The drone dive bombs through the air with its stinger at the ready, spreading its venom into your body, causing you to shudder in pain and lust.[or]The drone flies in close and hugs you, not harming you but seeming to gaze longingly into your eyes.[at random]";
	now defeated entry is "[beatthedrone]";
	now victory entry is "[one of]The drone slips her lips onto yours, kissing deeply as she lets a small amount of honey in her mouth slip into your own.[or]The drone flies around happily before fluttering off to brag to her sisters.[or]The drone pins you down to the ground and grins, forcing your lips against her sex as she rubs her small mound against you. She moans softly as you're forced to pleasure her, lapping along her slick honeypot until she finally cums. Satisfied, the wasp giggles to herself and flies off as quickly as she came.[at random]";
	now desc entry is "[mongendernum 4]A small, shy of four feet, wasp-like girl with delicate, buzzing wings on her back. Her skin is yellow with brown markings and a short, soft layer of fuzz. Her hands have only three fingers and small claws at the end of each digit. Out of her rear extends her wasp-like abdomen with a small stinger on the end. Her face is mostly human with cute, short, brown/blond hair. She looks at you with a soft smile on her lips, buzzing left and right.";
	now face entry is "charmingly human"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "largely human, except for the new abdomen protruding from your rump, sporting a new stinger. You are also a lot shorter, shy of four feet at best"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "black and brown striped"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "normal"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "your face tingles softly, but not much physically changes from the human norm, except that it is now cute and female looking"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "you feel a bulging from your bottom that expands out to a whole new segment of body, a stinger slipping free"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin changes color, changing to yellow and brown, the striped markings covering your body"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you feel something internal shifting around"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "you feel something internal shifting around"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 10;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 14; [ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 20;
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Park"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 6; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]exotic[or]feminine[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]insectoid[or]wasp[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
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
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, well-used, open, gaping"]
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




Section 3 - Endings

when play ends:
	if bodyname of Player is "Drone Wasp":
		if humanity of Player < 10:
			if bee girl is tamed:
				say "     Hearing a faint buzzing in your mind, you are drawn back to the park, followed at a distance by a worried Honey. There you meet up with several others from the wasp nest and join them. When Honey is spotted in the bushes nearby, the other drones charge in to attack to kill the rival insect, but you stop them. Still sensing a faint connection in your failing mind, you are able to coax the scared bee girl into your arms and, with the help of the others, help her to become a lovely wasp like yourselves. She moans in ecstasy, climaxing repeatedly as a new, permanent stinger grows in to replace her lost one, becomes a strong and beautiful member of the wasp nest and a lifelong companion to you.";
			else:
				say "     Hearing a faint buzzing in your mind, you are drawn back to the park. There you meet up with several others from the wasp nest and join them, lustfully giving yourself over to the pleasure of your insectile bodies. You go along with them, following the buzzing sound you're sensing back to the nest which has been set up in one of the park maintenance buildings. There you enjoy a pleasant life of work and sex with the other beautiful wasps.";
		else:
			say "     Your unusual body is analyzed by the military scientists, but you are given little concern. You do happen to befriend a helicopter pilot, chatting with him while you're in a waiting area, and he's come in with reports after another extraction. He chats with you for a while and even visits you a few times at the compound where you're being held with a large group of others";
			if Player is female:
				say ". Claiming that you've been called over for consulting on some of the areas you witnessed in the city, he manages to get some alone time with you in his chopper one evening. There he makes sweet love to you, a wonderfully exciting time with the risk of being caught looming over you to make it all the more invigorating.";
				say "     But at the moment of climax, you instinctively sting him. You apologize profusely, and after his initial anger wears off, he kisses you and promises he'll not tell anyone. He quickly makes up a plan to claim he'd gotten stung on his next mission. Keeping his helmet on over his growing antennae and his fatigues over the chitin covering his legs, he returns you to the compound.";
				say "     When he does not return from his next mission, fallen prey to the drone wasps drawn to his altered body, you are heartbroken. The only solace you can find is that he joined the wasps he found so sexy and is probably very happy with them. To assuage your guilt, you join the military's air force, training to be a helicopter pilot to replace the one you cost them through your foolishness. You are much more cautious in the future, and even after being rendered non-infectious, you make sure to get regular treatments to prevent it from ever happening again. The child he gave you that one night grows up to become a lovely wasp girl who turns the heads of all the boys at the military academy.";
			else:
				say ". You become fast friends and he convinces you to join the military. Becoming a gunner, you join his helicopter crew, helping to defend your friend on his missions into infected zones.";

Drone Wasp ends here.
