Version 2 of Wolverine Guard by Stripes begins here.
[Version 2.1.1 - Player loss fixed]

"Adds a Wolverine Guard creature to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

when play begins:
	add { "Wolverine Guard" } to infections of guy;
	add { "Wolverine Guard" } to infections of furry;

wolvloc is a text that varies.
wolvfightresult is a number that varies.

to say wolverinedesc:
	setmongender 3; [creature is male]
	if libfight is 1:			[Central Library]
		say "     James, the wolverine guard protecting the Central Library, growls angrily at you having turned on him. He is a large, muscular beast. Were he not so tall, you'd call him stocky, nearly as wide as he is tall, but all muscle. He still wears his battered security company jacket, bearing the Wolverine Security logo on it, on his animalistic body. He is covered in dark fur with a few lighter patches. His face narrows into a dark muzzle with lighter fur above his brow and at his shoulders. He has moved himself between you and the steps up to the library, his instincts locked on protecting his post here. Before you can back away, he charges at you with another growl.";
	else if wrknifefight is false:		[Getting the Knife - Wereraptor]
		say "     You find yourself facing off with a large, muscled beast. Were he not so tall, you would call him stocky, nearly as wide as he is tall, but all muscle. He has a battered security company jacket on his animalistic body. He is covered in dark fur with a few lighter patches. His face narrows into a dark muzzle with lighter fur above his brow and at his shoulders. He growls angrily as he watches you, clearly intent on keeping you from breaking into the warehouse. You spot the company logo on his clothing - Wolverine Security.";
	else if inasituation is true:
		say ""; [Dealt with at event source]
	else:
		say "[wolverinelocation]";
		say "     As you travel through the streets, you are spotted by a large, muscled beast. Were he not so tall, you would call him stocky, nearly as wide as he is tall, but all muscle. He has a battered security company [one of]jacket on his animalistic body[or]hat on his animalistic head[at random]. He is covered in dark fur with a few lighter patches. His face narrows into a dark muzzle with lighter fur above his brow and at his shoulders. He growls angrily as he watches you. You spot the company logo on his clothing - Wolverine Security.";
		say "     He is prowling around a [wolvloc], his instincts having locked him into aggressively guarding it. You seem to have come too close and set him off. Before you can back away, he charges at you aggressively, powerful paws raised to strike.";

to say wolverinelocation:							[sets random location for the wolverine]
	let T be a random number between 1 and 16;
	if T is 1:
		now wolvloc is "cluster of cars";
	if T is 2:
		now wolvloc is "fire hydrant";
	if T is 3:
		now wolvloc is "hotel lobby";
	if T is 4:
		now wolvloc is "condo high-rise";
	if T is 5:
		now wolvloc is "small store";
	if T is 6:
		now wolvloc is "burned-out restaurant";
	if T is 7:
		now wolvloc is "small office building";
	if T is 8:
		now wolvloc is "women's boutique";
	if T is 9:
		now wolvloc is "bank truck, overturned and empty";
	if T is 10:
		now wolvloc is "modern sculpture in a small plaza";
	if T is 11:
		now wolvloc is "phone booth";
	if T is 12:
		now wolvloc is "newspaper stand";
	if T is 13:
		now wolvloc is "chip wagon";
	if T is 14:
		now wolvloc is "sausage stand";
	if T is 15:
		now wolvloc is "bus shelter";
	if T is 16:
		now wolvloc is "parking garage";

to say losetowolverine:
	now wolvfightresult is 2;
	if lbfight is 1:						[Viking Longboat - Hospital Quest]
		if Player is female:
			if a random chance of 2 in 3 succeeds:
				say "     The obsessed wolverine knocks you to ground, getting ready to strike again when he starts to sniff at you. Soon, he's buried his muzzle between your legs and sniffing your crotch. He grabs you roughly and drags you back towards the alcove he was standing guard in before you arrived.";
				say "     Keeping you pinned down, he looks around for any other threats to his post. This gives you a moment to look around for a way out of this predicament, but find none.";
				say "     Satisfied that he won't be interrupted, he quickly tears off your remaining clothes and presses his nose against your wet pussy, licking at it before rolling you over. He quickly mounts you, driving his large, brown cock deep inside you. He pants and growls as he pounds into you hard and fast, driving his thick meat in over and over again until he finally releases a hot blast of seed deep inside you.[impregchance]";
				say "     As he cum inside you, he grows more gentle, nuzzling you and snuffling at your ear. He gives your neck and shoulder a few nips before dismounting and firmly sending you on your way, forcing you to leave that section of the museum and to head back to the main foyer.";
			else:
				say "     The obsessed wolverine strikes you down to the floor and growls as he strikes you again and again. His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you. He batters you until he's satisfied that you won't dare return and then finally drives you off from the Medieval History wing of the museum.";
		else:
			say "     The obsessed wolverine strikes you down to the floor and growls as he strikes you again and again. His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you. He batters you until he's satisfied that you won't dare return and then finally drives you off from the Medieval History wing of the museum.";
			if HP of Player > 0, now HP of Player is HP of Player / 2;
	else if libfight is 1:				[Central Library]
		say "     The obsessed wolverine knocks you firmly to the ground, leaving you unable to keep fighting.";
	else if wrknifefight is true:		[Getting the Knife - Wereraptor]
		say "     The obsessed wolverine strikes you down to the floor and growls as he strikes you again and again. His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you. He batters you until he's satisfied that you won't dare return and then finally drives you away from the warehouse he's so vigilantly guarding.";
		if HP of Player > 0, now HP of Player is HP of Player / 2;
	else if inasituation is true:
		say ""; [Dealt with at the event source]
	else:
		[Normal encounter]
		if Player is female:
			if a random chance of 3 in 5 succeeds:
				say "     The obsessed wolverine knocks you to ground, getting ready to strike again when he starts to sniff at you. Soon, he's buried his muzzle between your legs and sniffing your crotch. He grabs you roughly and drags you back towards the [wolvloc] he was protecting so aggressively.";
				say "     Keeping you pinned down, he looks around for any other threats to his post. This gives you a moment to look around as well, but you can't spot anything of use or wealth around. Any food has long since been eaten by the wolverine and you don't see anything of particular value to you or anyone in this crisis.";
				say "     Satisfied that he won't be interrupted, he quickly tears off your remaining clothes and presses his nose against your wet pussy, licking at it before rolling you over. He quickly mounts you, driving his large, brown cock deep inside you. He pants and growls as he pounds into you hard and fast, driving his thick meat in over and over again until he finally releases a hot blast of seed deep inside you.[impregchance]";
				say "     As he cum inside you, he grows more gentle, nuzzling you and snuffling at your ear. He gives your neck and shoulder a few nips before dismounting and firmly sending you on your way.";
			else if a random chance of 1 in 2 succeeds:
				say "[wolv_oral]";
			else:
				say "     The obsessed wolverine strikes you down onto the pavement and growls as he strikes you again and again. His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you. He batters you until he's satisfied that you won't dare return and then finally drives you off from the [wolvloc] he's protecting so aggressively.";
		else:
			if a random chance of 2 in 5 succeeds:
				say "[wolv_oral]";
			else:
				say "     The obsessed wolverine strikes you down onto the pavement and growls as he strikes you again and again. His slavering muzzle drips saliva onto you as he snaps those crushing jaws at you. He batters you until he's satisfied that you won't dare return and then finally drives you off from the [wolvloc] he's protecting so aggressively.";

to say wolv_oral:
	say "     The fanatical wolverine knocks you down with a growl. As he gets ready to strike you again, he holds back and instead grapples you roughly. Your face is pressed into the creature's groin, his dark brown cock emerging from its sheath to grind against your cheek. Precum drools across your cheek and lips, the beast's musky scent arousing you. You lick the sticky precum from your lips and then lick at its source. Eager for more, the lustful mutant forces his meaty shaft into your mouth and fucks it hard. He pounds his pulsing rod into your mouth with firm thrusts while holding your head with his powerful paws. Despite the rough treatment, you moan and try your best to lick and suck at the throbbing penis stuffed into your mouth and throat. With a growl, he cums, shooting his strong flavored cum down your throat, warming your belly with it. Once spent, the bestial wolverine is less crazed, sending you firmly on your way before wandering back to the [wolvloc] he's guarding so adamantly.";

to say beatthewolverine:
	now wolvfightresult is 1;
	if lbfight is 0 and libfight is not 1 and wrknifefight is false and inasituation is false:
		if Player is female and Libido of Player > 39 and bodyname of Player is "Wolverine Guard":
			say "     Having managed to beat the wolverine until you finally knocked him down, you look over the powerful male and you feel a yearning inside you. The excitement of the fight has gotten your wolverine body quite aroused. Your eyes wander down to the hefty package between his legs and you see that his cock is half-hard as well, aroused by the scent of a strong female.";
			say "     [bold type]Do you give in to your urges and ride that thick monster?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				LineBreak;
				say "     Finding the prospect very enticing, you take a hold of his thick shaft and stroke it to full erection. He rumbles appreciatively and rocks his hips, thrusting into your warm paw. Once you've gotten him sufficiently ready, you climb atop that thick pole and line it up with your wet pussy.";
				say "     You take it slow at first, despite your instincts screaming to cram it in, letting yourself adjust to its girth and enjoy the feeling of him filling you. But once you've finally gotten it all in, you start riding hard and fast, eager to let this strong male mate with you.";
				say "     As you ride him, you start growling and snapping at him and he growls and nips in return. As your mating continues, it only grows more loud and aggressive, almost as violent as the fight that led up to it until finally he's pumping his hot load into you and satisfying that burning need inside you.[impregchance]";
				say "     Your mating done, you both settle down, licking and nuzzling each other for a few minutes. You pull yourself off his flagging erection and head back on your way, leaving him to continue to guard his [wolvloc] with strong, instinctual dedication.";
			else:
				LineBreak;
				say "     You resist the urge to give in to your lust and turn away, quickly leaving him before you can have second thoughts.";
		else:
			say "     Having managed to beat the wolverine until you finally knocked him down, you give him a final blow to put him unconscious. You move past him to look at the [wolvloc] was guarding. You search around carefully, but can't seem to find anything to warrant the aggressive defense of this location. Any food around here has already been consumed by the mad creature and there is nothing of material interest for you to use. You shake your head at the poor fellow, driven by strange instincts to uselessly guard this spot.";
	else if lbfight is 1:
		say "     Having managed to beat the wolverine until you finally knocked him down, you give him a finally blow to put him unconscious. You move past him to look up at the longship he was guarding, ready to continue with your mission.";
	else if libfight is 1:
		say "     You manage to knock the wolverine out.";
	else if wrknifefight is false:
		say "     You manage to knock the wolverine out, leaving you free to search for a way inside.";
	else if inasituation is true:
		say ""; [Dealt with at event source]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Wolverine Guard"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The aggressive male clubs you with his heavy fist, staggering you for a moment![or]The wolverine slashes his claws across your side before you can pull away![or]The wolverine's teeth snap at you, but you grab his shoulders to keep him from sinking them into you. This leaves you open for a pair of hard jabs to the breadbasket![or]The powerful creature lands a heavy punch to your temple![or]The guard manages to land a powerful uppercut that rattles your teeth![or]The aggressive creature swings a series of wild punches. You manage to block some, but the barrage wears you down further![at random]";
	now defeated entry is "[beatthewolverine]";
	now victory entry is "[losetowolverine]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[wolverinedesc]"; [ Description of the creature when you encounter it.]
	now face entry is "now wolverine's head, with a strong muzzle. Aside from the lighter patches above your brows, you dark brown fur covers your face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "stocky and muscled, coiled and itching for a fight"; [ Body Description, format as "Your body is (your text)."]
	now skin entry is "dark brown fur with lighter patches at your sides, flanks and rear to cover your"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "You have a short, thickly furred tail hanging from your rear."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "brown"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it shifts and changes, forming a short muzzle. Your new nose and muzzle twitch as your whiskers grow in. Coarse, dark fur starts to spread over it, giving you a wolverine's head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it grows tougher, becoming tall, yet stocky in build. You have wide shoulders and a large body that is all coiled muscle. Your hands and feet become paw-like, with black claws at the ends of your digits. You become aware of your own growing scent, strong and mustelid in odor. You feel yourself filling with aggressive power, as well as an urge to protect... something"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "coarse fur spreads across your body. It is a dark brown with some lighter patches forming along your sides, flanks and rear"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you start to shift, gaining a short, thickly furred tail"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes brown in color, but otherwise human-like in appearance. As you watch, your new shaft is bundled up in a coarse-furred sheath which spreads down to cover your ballsack as well"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 16;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 10;
	now sex entry is "Female"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 111;
	now lev entry is 8; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 15; [Amount of Damage monster Does when attacking.]
	now area entry is "High"; [ Location of monster, in this case the High Rise District]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 4;
	now libido entry is 50; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]muscular[or]broad-shouldered[at random]";
	now type entry is "[one of]mustelid[or]wolverine[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
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



when play ends:
	if bodyname of Player is "Wolverine Guard":
		if humanity of Player < 10:
			if jamessex is 3 and player is female:
				say "     You find your growing urge to protect and defend your post increasing. Joining James at the Central Library, you become his mate and share the duty with him. He accepts him place now, no longer fighting his powerful body. Most of the time, you both guard it together, though occasionally alone so the other can get a brief nap. As with that first time, you rut often on the library steps. The lustful growls of your animalistic sex carry far, warning any would be interlopers away. You eventually bear him some kits, who grow big and strong like their parents and take up the duty to protect the library as well. You live peaceably with the librarians inside, guarding their home and leaving them undisturbed. There is some commotion when the soldiers come through the city, but you, your mate and your offspring are able to drive them off, protecting your post.";
			else:
				say "     You find your growing urge to protect and defend your post increasing. Cutting short your wandering, you head back to the bunker at the Abbey to clear your head. Once there, you decide to scout around from top to bottom, making sure it's secure before you relax. You find nothing, but still remain on edge, and patrol on guard for any disturbances. You keep at your post, staying on watch without rest, protecting it from the monsters of the city and the soldiers who later arrive. You keep it, and its contents, safe from interlopers day after day.";
		else:
			if centrallib is 5:
				say "     When the military enters the city and rescue you and the other survivors, you recall another wolverine you met. Telling them about James, you give them information on how to take him calmly, with a soldier disguised in a company jacket and a call from the security company's headquarters relayed through the military network, they convince him to switch assignments. He joins you in one of the military staging camps, happy to see a friendly face[if Player is female]. You share a good romp with him that evening[end if].";
				say "     The security company, now involved, helps to get you both cleared. Your idea was able to rescue several of their employees and they offer to hire you on as well. You and James get partnered with ";
				if Player is herm:
					say "a female wolverine and are stationed to guard a nuclear power plant. You don't have to deal with the general public, only the plant regulars, so your appearance isn't much of an issue. If anything, its another strong deterrent for any unwanted visitors. Your trio makes a fine partnership, with the off-duty pair eager to spend time with one another. ";
				else if Player is male:
					say "a female wolverine and are stationed to guard a nuclear power plant. You don't have to deal with the general public, only the plant regulars, so your appearance isn't much of an issue. If anything, its another strong deterrent for any unwanted visitors. Your trio makes a fine partnership, with the female eager to spend time with either of you when off duty. ";
				else:
					say "another female wolverine and are stationed to guard a nuclear power plant. You don't have to deal with the general public, only the plant regulars, so your appearance isn't much of an issue. If anything, its another strong deterrent for any unwanted visitors. Your trio makes a fine partnership, with James eager to spend time with either of you when off duty. ";
				say "Your wild romps get rather loud and vicious sounding at times, so eventually the guardhouse you all share as home gets soundproofed.";
			else if HP of Doctor Matt <= 100:
				say "     You hold out until the rescue comes and you are taken in by the military. You wait impatiently for your release, always on edge and feeling that there's something you should be doing. You are eventually moved into the care of Dr. Matt, who has you alternate with Orthas as his personal guard at the research station the military sets him up at to combat the spreading infection. While on duty, you are tireless in your vigil, protecting your post and feeling a sense of fulfillment from doing so.";
			else:
				say "     You hold out until the rescue comes and you are taken in by the military. With your false identity never questioned, you wait impatiently for your release, always on edge and feeling that there's something you should be doing. One day, you are released and are quickly picked up by a large van. You are quietly taken to where Dr Mouse is hiding, apparently having funneled some bribes through a third party to gain custody of you. He takes you on as his private security guard, watching over him as he conducts his secret research. He works for a variety of foreign countries and infected factions[if susan is in hidden lab]. Susan continues to accompany him as an assistant and a lover for you when off duty[end if]. While on duty, you are tireless in your vigil, protecting your post and feeling a sense of fulfillment from doing so.";

Wolverine Guard ends here.
