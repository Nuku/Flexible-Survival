Version 2 of Killer Whale by Stripes begins here.
[Version 2 - Sex update written by Blue Bishop w/assistance and coding by Stripes]
[Adaptation for Flexible Survival by Stripes]

[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes. All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Killer Whale to Flexible Survival."

orcadom is a number that varies.
orcafdom is a number that varies.
when play begins:
	add { "Killer Whale" } to infections of furry;
	add { "Killer Whale" } to infections of guy;
	add { "Killer Whale" } to infections of tailweapon;

Section 1 - Creature Responses

to say orcadesc:
	setmongender 3; [creature is male]
	say "     Looking over the killer whale, his body is covered in the distinctive patterning of an orca on thick, sleek flesh. His head is sleek and streamlined, drawing to a blunt, rounded muzzle. His mouth is filled with small, sharp, dagger-like teeth. The blowhole on the top of his head occasionally opens to take a breath. His body is large and heavily muscled, but with the sleek shape of a swimmer. He stands easily ten feet tall. The large dorsal fin projecting from his back extends nearly a foot behind him in a sharp, knife-like shape. His arms are dense with sleek muscle. His hands have a thick webbing between his fingers. His legs are humanoid in appearance, thick with powerful muscle. His ass is dense with muscle, supporting a thick and very muscular tail that is four feet in length and ends in a whale's flukes. Between his powerful swimmer's legs he has a titanic, sleek and curving cetacean cock. Beneath his impressive maleness is a large bulge, showing his swollen balls. While they would normally be internal on the oceanic creature, their apparent hugeness cannot be fully contained inside him and bulge out considerably.";

to say losetoorca:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	else:
		if HP of Player > 0:
			say "     Not wanting to fight, you immediately drop to your knees and let the Killer Whale advance upon you. Grabbing hold of you, you're given a clear view of the beast's long, curving cock as it commences the ritual of relinquishing itself from its beleaguered confines. 'Suck it!' he orders to you in a deep, rumbling command. ";
		else:
			say "     Seeing an opening, he relinquishes you of your leg's support by sweeping them away with his thick and powerful tail. On the ground and too weak to continue, the Killer Whale pulls you onto your knees, displaying for you a clear view of the beast's long, curving cock as it commences the ritual of relinquishing itself from it's beleaguered confines. 'Suck it!' He orders to you in a deep, rumbling command. ";
		if Libido of Player > 40 or HP of Player > 0:
			say "Overwhelmed by lust, you shame your better senses as you engulf the emergent tip of the whale's cock within the confines of your [bodytype of Player] lips, your olfactories flooded with the salty musk of the aquatic beast's arousal.";
		else:
			say "You look reluctant to comply with such an order, and - perceiving this immediately - the orcaman grabs you by your head, carefully prying your [bodytype of Player] maw loose so that he may so occupy this new void with his emergent cock, forcing you to taste his thick, writhing meat.";
		if Player is female:
			if anallevel is 3 and a random chance of 1 in 5 succeeds:
				say "[orcadefeatsex1]";
			else if a random chance of 3 in 5 succeeds:
				say "[orcadefeatsex2]";
			else if a random chance of 1 in 2 succeeds:
				say "[orcadefeatsex3]";
			else:
				say "[orcadefeatsex4]";
		else:
			if anallevel > 1 and a random chance of 1 in 3 succeeds:
				say "[orcadefeatsex1]";
			else:
				say "[orcadefeatsex4]";


to say orcadefeatsex1: [anal sex]
	say "     Thrusting into your mouth at a slow and deliberate pace, you're made to slick his cetacean rod with your saliva while it becomes fully engorged. Eventually, you feel its immense length depart from your abused orifice before he indicates to you that he will be claiming another. He slides overtop of you, his massive form pinning you against the beach's sand as his muscular tail spreads and otherwise prepares your legs for his eager intrusion. With a sharp jab, you feel the flexible member invade your ass, worming itself deeper into you like some meaty tentacle as he proceeds to pound your vulnerable hole.";
	say "     Influenced by whale's perverse hold on you, you're soon unable to refuse the pleasure of such a wriggling intrusion. Slickly sliding across the supple walls of your [bodytype of Player] anus, the orcaman's impressive shaft probes your depths of your fleshy labyrinth, and it's not long before your hole is sufficiently stretched to accommodate the whole of his cock within your confines. Writhing in pleasure against the wet sand, this strange sensation is enough to drive you to climax, and - like clockwork - the beast's own release is make apparent as his thick, virile cum floods the confines of your stomach.[mimpregchance]";
	say "     Visibly bloated by such an impressive release, your feel the writhing organ soften before the whale firmly pulls himself free of your tight hole. Satisfied with what he has wrought upon you, he departs, leaving you to lay across the sand in a dizzy stupor.";


to say orcadefeatsex2: [new vaginal sex]
	say "     Thrusting into your mouth at a slow and deliberate pace, you're made to slick his cetacean rod with your saliva while it becomes fully engorged. Eventually, you feel its immense length depart from your abused orifice before he indicates to you that he will be claiming another. He slides overtop of you, his massive form pinning you against the beach's sand as his muscular tail spreads and otherwise prepares your legs for his eager intrusion. With a sharp jab, you feel the flexible member invade your pussy, worming itself deeper into you like some meaty tentacle as he proceeds to pound your vulnerable hole.";
	say "     Influenced by whale's perverse hold on you, you're soon unable to refuse the pleasure of such a wriggling intrusion. Slickly sliding across the supple walls of your [bodytype of Player] cunt, the orcaman's impressive shaft probes your depths before it intrudes past your cervix, and the prospect of occupying your womb is enough motivation for him to engulf the remainder of his cock within these confines. Writhing in pleasure against the wet sand, this strange sensation is enough to drive you to climax, and - like clockwork - the beast's own release is made apparent as his thick, virile cum floods the confines of your uterus.[impregchance]";
	say "     Visibly bloated by such an impressive release, your feel the writhing organ soften before the whale firmly pulls himself free of your tight hole. Satisfied with what he has wrought upon you, he departs, leaving you to lay across the sand in a dizzy stupor.";


to say orcadefeatsex3: [old vaginal sex]
	say "     He thrusts into your mouth a few times, but once it's fully engorged, he slides that slick, flexible member from your throat and pushes you over. Sliding atop you, he keeps you pinned with his massive body and spreads your legs apart with his muscular tail. He drives his cock into your pussy, squirming and wiggling his flexible member around inside you like some meaty tentacle as he pounds into you.";
	if hasgills is 1:
		say "     Holding you under the water, you are thankful for your gills and breathe through them. Without the distraction of drowning, you quickly start to enjoy the strange sensation of that wriggling inside you. The orcaman's slick shaft slides along your walls and probes at the depths of your pussy before pushing past your cervix and worming its way into your womb. You writhe in pleasure beneath him as this strange sensation drives you to climax, the orca filling your uterus with his thick, virile cum.";
	else:
		say "     Holding you under the water, you struggle to hold your breath as each hard thrust he makes into you seeks to push the air from your lungs. You can feel his throbbing, wriggling cock inside you. It is very enjoyable and arousing despite your desperate situation. Your desire for air, your struggle to live, somehow makes it all the more exciting. It is as if some primal part of you wants you to live so that you may breed and have children. When the orca cums inside you, forcing his way into your womb and filling it with his seed, you orgasm powerfully as that primal need is fulfilled. You can feel him pumping blast after blast of his thick, virile cum into you even as you're starting to black out.[impregchance]";
	say "     When he's finished draining his large balls into you, his flexible cock pulls itself from your stuffed, bloated womb and he releases you. The killer whale departs, leaving you floating on your back in a stupor.";


to say orcadefeatsex4: [oral sex]
	say "     With an eager energy, he thrusts his writhing cock against your maw, driving him ever deeper into your throat as his arousal grows, happy to illustrate his pleasure with audible clicking noises.";
	if a random chance of 1 in 2 succeeds: [oral in]
		say "     You feel that worming rod throb against your tongue, informing you of his approaching release. The orcaman makes a concerted effort to conclude this ride with a handful of harsher, more deliberate thrusts before his release infers his relent, and you soon feel his thick fluids being pumped into your stomach.";
		say "     Eventually, as the flow relents, his rod softens somewhat before he pulls himself free of your maw, and he leaves to let you lay across the sand in a dizzy stupor.";
	else: [oral out]
		say "     You feel that worming rod throb against your tongue, informing you of his approaching release; however, your captor doubtlessly has a more articulate grasp on the state of his imminent orgasm and instead opts to abruptly pull his rod from your abused orifice. His intent made immediately clear, he finishes himself off with a few final strokes before you're showered with spray after spray of the orcaman's cum.";
		say "     Eventually, after having sufficiently unloaded himself all over you, he leaves to let you lay your jizz-soaked form across the sand in a dizzy stupor.";


to say beattheorca:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	else:
		if ( Libido of Player - humanity of Player > 15 ) and bodyname of Player is "Killer Whale" and player is not neuter:
			if Player is herm and anallevel > 1:
				say "     Having beaten your foe, the heat of battle has gotten your blood pumping and your lustful orca instincts come to the fore.";
				say "     [bold type]Being dual-gendered, does your male or female aspect take over to dominate this fallen male?[roman type][line break]";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Male.";
				say "     ([link]N[as]n[end link]) - Female.";
				if Player consents:
					say "[orcavicsex1]";
				else if Player is female:
					say "[orcavicsex2]";
				else:
					say "     Defeating the orca, you leave his exhausted form floating on the water. You're sure he'll be fine, but you feel ill-inclined to be around when he does recover.";
			else:
				say "     Defeating the orca, you leave his exhausted form floating on the water. You're sure he'll be fine, but you feel ill-inclined to be around when he does recover.";



to say orcavicsex1:
	say "     Victorious against the muscular orca, you find your better senses ill-equipped to handle your more feral needs. Too weak to challenge your strength any further, you pull the male into a headlock. Intent on asserting your dominance, you grind your throbbing [cockname of Player] cock against his ass, pushing it under his tail. The beast can only impotently struggle as you tease his tailhole with the tip of your [cock size desc of Player] rod before you ram it into the vulnerable portal, your victim's moans his only reply.";
	say "     Pumping your organ into him with assertive determination, you sate your lust by making an example of this lesser male and confirm your claim on this territory. Roughly abusing the orca's hole, his own lust betrays him, moaning audibly as the sheer force of your thrusts brings him to cum in the sand. The tight clenching of his abused hole enough to bring you to your own orgasm, [one of]flooding his bowels with your thick seed[or]pulling out just before to spend your seed across his back[at random]. Relinquishing him, you punctuate your violation with a hard swat on the killer whale's abused rump before he takes off. Satisfied after reasserting your territory by humiliating the muscular beast, you depart back from whence you came.";
	increase orcadom by 1;


to say orcavicsex2:
	say "     Victorious against the muscular orca, you find your better senses ill-equipped to handle your more feral needs. Too weak to challenge your strength any further, you pin the male to the ground. Amused by the male's physical inadequacy, you can be sure he'll be useful for at least one thing, stroking the whale's meaty rod until it is sufficiently hard. Only briefly teasing the beleaguered beast with the entrance of your [bodytype of Player] cunt, you skip the foreplay and jump straight to impaling yourself with that cetacean cock, your victim's moans his only reply.";
	say "     Too weak to contend with your will, you ride the creature's organ with brutal abandon, illustrating to him that the measure of his merit is scaled in these engulfed inches as you assert your dominion over this territory, and it's not long before your abuse finishes him off, moaning weakly as you feel his hot cum erupting within you.[impregchance]";
	say "     Relinquishing him, you punctuate your violation with a hard swat on the killer whale's abused rump before he hobbles off awkwardly, no doubt sore from such rough treatment. Satisfied after reasserting your territory by humiliating the muscled beast, you depart back from whence you came.";
	increase orcafdom by 1;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Killer Whale"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The orca smashes his tail against your side![or]The killer whale bites down onto your arm![or]The killer whale leans forward and hits you with a blast of sea water from his blowhole![or]The orca strikes you with his powerful arms![or]The orca tries to crush you in his strong arms![at random]";
	now defeated entry is "[beattheorca]";
	now victory entry is "[losetoorca]";
	now desc entry is "[orcadesc]";
	now face entry is "sleek and streamlined, drawing to a rounded, blunt muzzle. Your mouth is filled with small, sharp teeth. The blow hole on the top of your head occasionally opens to take a breath";
	now body entry is "large and heavily muscled, but with the sleek shape of a swimmer. You stand almost ten feet tall now. The large dorsal fin projecting from your back extends nearly a foot behind you, making it hard to comfortably rest your backpack. Your arms are dense with sleek muscle, and your hands have a thick webbing between your fingers. Your legs are humanoid in appearance, thick with powerful muscle as well[if Player is male]. A slit between the legs conceals your manhood[end if]";
	now skin entry is "the distinctive patterning of an orca on thick, sleek";
	now tail entry is "Your ass is dense with muscle, supporting a thick and very muscular tail that is four feet in length and ends in a whale's flukes.";
	now cock entry is "sleek and curving cetacean";
	now face change entry is "your skull reshape into something smoother and more aquadynamic, drawing into a blunt, rounded muzzle. Your larger mouth fills with many small but very sharp teeth. You feel a strange sensation and realize you are now breathing through a hole atop your head";
	now body change entry is "as you suddenly grow to a height of almost ten feet. You then feel all the muscles in your torso swell with new power. While you can feel great strength locked in your muscles, you still bear the sleek form of a swimmer. As these changes pass to your arms and legs, webbing grows thick between your fingers and toes";
	now skin change entry is "your hide thickens, but becomes sleek and highly aquadynamic. Dark patches color your skin, while other parts begin to pale. Soon you sport the rather distinctive patterning of a killer whale across your entire body";
	now ass change entry is "as your ass becomes dense with muscle to drive the strong orca tail that grows behind you, designed to help propel you through the water";
	now cock change entry is "it becomes narrow, but with a sleek and curving shape. It now emerges from a slit at your groin, and your balls have been mostly pulled into your body as well, so your waist may be smooth and streamlined while swimming";
	now str entry is 18;
	now dex entry is 13;
	now sta entry is 15;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 25; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 55; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]sleek[or]powerful[at random]";
	now type entry is "[one of]orca[or]cetacean[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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


Section 3 - Endings

when play ends:
	if bodyname of Player is "Killer Whale":
		if humanity of Player < 10: [SUCCUMB]
			say "     As the last of your humanity is washed away like a sand castle by the waves of the ocean, you are drawn back to the beachside. You join the other beachgoers and lose yourself in the enjoyment of the beachfront area. You swim among the other creatures, strong and powerful. You are not troubled by the other predators often and happily satisfy your urges on the others swimming in the area.";
			if orcadom < 4 and player is male:
				say "     The only difficulties you have are with the other male orcas in the area, as you fight with them over the territory and to defend the breeding females of your pod.";
			else if Player is male:
				say "     Having driven away several of the other muscled orcamen from the area, the territory is yours and you have little trouble driving away the other, weaker males. With the territory near the city claimed as yours, you build up a large pod of females to breed. Those killer whales who do venture into your waters are quickly beaten and dominated as you did the others before them.";
			else if orcafdom < 4 and player is female:
				say "     You find a powerful male among the other killer whales swimming in the waters around the city and join his pod, relishing the feel of him atop you. He breeds you, and the other females of the pod, often, to add to his mates. The males, when mature, are driven off to find pods of their own. You miss them a little, but there will always me more young ones, as your mate is strong and virile.";
			else if Player is female:
				say "     Doubtlessly unprepared for a reign such as yours, you wrangle together a number of males and females for your own pod, wherein the males are subjugated to your whims and to those of the females whom you matron over. Rarely do you find a consort to sufficiently placate your desires, but when you do, you make considerable use of them, regardless of their compliance.";
			else:
				say "     Lacking a gender of your own, you instead delight in turning others into orcas, stroking their cocks or rubbing their pussies, making them cum repeatedly as you transform them. You take particular amusement in watching them sate their new, instinctual lusts for the first time.";
		else: [SURVIVE]
			if HP of doctor mouse > 13: [ALLIED W/DR MOUSE]
				say "     When the military rescues you, you are pleased to find that they've built some special holding facilities for those like yourself who have become partially aquatic creatures. There is some interest in you and the others, and they get several marine biologists to study your group. Several members of the military speak to you as well. At first, it seems their interest is casual, but you soon catch on to what they're doing and you start talking to the others when they're not around. You argue against the military's offer to work for them, instead telling them you know someone who would be interested in their services and that he can help them with their infection. You keep your promises vague, but work to undermine the military's tempting offer to those who would otherwise feel they have no possible future. In the end, the military is only able to recruit a few of the people kept in your group, and predominantly those with lesser infections. Those more greatly infected and with more powerful bodies were more easily swayed by you.";
				say "     After your release, you keep in contact with the most promising of those you spoke with, content to simply leave the others out of military control. When Dr. Mouse gets in touch with you, you relay your information to him and he happily thanks you for the addition of what will soon become his aquatic research material and sea forces to further his plans. Among the group is a shark-infected person who has managed to retain enough of their mind while being transformed enough to be quite powerful. You become mates, and your hybrid children are composites of you both, strong and vicious. As they grow, you teach them to be powerful sea fighters and carry out raids upon coastal cities and towns or marine research facilities on any tasks the little mouse doctor needs taken care of by his loyal assistant and his aquatic family.";
			else: [NOT ALLIED W/DR MOUSE]
				say "     When the military rescues you, you are pleased to find that they've built some special holding facilities for those like yourself who have become partially aquatic creatures. There is some interest in you and the others, and they get several marine biologist to study your group. Several members of the military speak to you as well. At first, it seems their interest is casual, and before you know it, you're becoming interested in their offer to join their forces as an aquatic soldier.";
				say "     You and several of the others in the tanks are recruited and trained, becoming a secret force working with the navy and the marines to perform aquatic missions and to help defend coastal cities from the menace of the many aquatic infected creatures who would raid them for supplies and to spread their infection. You become strong friends with and eventually mated to a shark creature who is also in your group, one of the few who could overcome their more vicious and piratical tendencies while still being transformed enough and willing enough to join the para-military group. While your hybrid children are even more aquatic in nature than their parents and are a little more wild and vicious, they are trained from a young age by the yourselves and the military to become powerful grunts in the military's coastal defense teams.";

Killer Whale ends here.
