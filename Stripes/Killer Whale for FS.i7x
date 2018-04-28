Version 2 of Killer Whale for FS by Stripes begins here.
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

Section 1 - Monster Responses

to say orcadesc:
	setmongender 3; [creature is male]
	say "     Looking over Killer Whale, his body is covered in the distinctive patterning of an orca on thick, sleek flesh. His head is sleek and streamlined, drawing to the rounded blunt muzzled shape of an orca. His mouth is filled with small sharp, dagger-like teeth. The blowhole on the top of his head occasionally opens to take a breath. His body is large and heavily muscled, but with the sleek shape of a swimmer. He stands easily ten feet tall. The large dorsal fin projecting from his back extends nearly a foot behind him in a sharp knife-like shape. His arms are dense with sleek muscle. His hands have a thick webbing between his fingers. His legs are humanoid in appearance, thick with powerful muscle. His ass is dense with muscle, supporting a thick and very muscular tail 4 feet in length ending in a whale's flukes. Between his powerful, swimmer's legs he has a titanic, sleek and curving cetacean cock. Beneath his impressive maleness is a large bulge, showing his swollen balls. While they would normally be internal on the oceanic creature, their apparent hugeness cannot be fully contained inside him and bulge out considerably.";

to say losetoorca:
	if HP of player > 0:
		say "     Not wanting to fight, you immediately drop to your knees and let the Killer Whale advance upon you. Grabbing hold of you, you're given a clear view of the beast's long, curving cock as it commences the ritual of relinquishing itself from it's beleaguered confines. 'Suck it!' He orders to you in a deep, rumbling command. ";
	else:
		say "     Seeing an opening, he relinquishes you of your leg's support by sweeping them away with his thick and powerful tail. On the ground and too weak to continue, the Killer Whale pulls you onto your knees, displaying for you a clear view of the beast's long, curving cock as it commences the ritual of relinquishing itself from it's beleaguered confines. 'Suck it!' He orders to you in a deep, rumbling command. ";
	if libido of player > 40 or HP of player > 0:
		say "     Overwhelmed by lust, you shame your better senses as you engulf the emergent tip of the whale's cock within the confines of your [bodytype of player] lips, your olfactories flooded with the salty musk of the aquatic beast's arousal.";
	else:
		say "     You look reluctant to comply with such an order, and--perceiving this immediately--the orcaman grabs you by your head, carefully prying your [bodytype of player] maw loose so that he may so occupy this new void with his emergent cock, forcing you to taste his writhing, thick meat.";
	if cunts of player > 0:
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


to say orcadefeatsex1:		[anal sex]
	say "     Thrusting into your mouth at a slow and deliberate pace, you're made to slick his cetacean rod with your saliva whilst it becomes fully engorged; eventually, your feel its immense length depart from your abused orifice before he indicates to you that he would abuse another. He slides over top of you, his massive form pinning against the beach's sand as his muscular tail spreads and otherwise prepares your legs for his eager intrusion. With a sharp jab, you feel the flexible member invade your ass, worming itself deeper into you like some meaty tentacle as he proceeds to pound your vulnerable hole.";
	say "     Influenced by whale's perverse hold on you, you're soon unable to refuse the pleasure of such a wriggling intrusion. Slickly sliding across the supple walls of your [bodytype of player] anus, the orcaman's impressive shaft probes your depths of your fleshy labyrinth, and it's not long before your hole is sufficiently stretched to accommodate the whole of his cock within your confines. Writhing in pleasure against the wet sand, this strange sensation is enough to drive you to climax, and--as though like clockwork--the beast's on release felt apparent as his thick, virile cum floods the confines of your stomach.[mimpregchance]";
	say "     Visibly bloated by such an impressive release, your feel the writhing organ soften before the whale firmly pulls himself free of your tight hole. Satisfied with what he has wrought upon you, he departs, leaving you to lay across the sand in a dizzy stupor.";


to say orcadefeatsex2:		[new vaginal sex]
	say "     Thrusting into your mouth at a slow and deliberate pace, you're made to slick his cetacean rod with your saliva whilst it becomes fully engorged; eventually, your feel its immense length depart from your abused orifice before he indicates to you that he would abuse another. He slides over top of you, his massive form pinning against the beach's sand as his muscular tail spreads and otherwise prepares your legs for his eager intrusion. With a sharp jab, you feel the flexible member invade your pussy, worming itself deeper into you like some meaty tentacle as he proceeds to pound your vulnerable hole.";
	say "     Influenced by whale's perverse hold on you, you're soon unable to refuse the pleasure of such a wriggling intrusion. Slickly sliding across the supple walls of your [bodytype of player] cunt, the orcaman's impressive shaft probes your depths before it intrudes past your cervix, and the prospect of occupying your womb is enough motivation for him to engulf the remainder of his cock within these confines. Writhing in pleasure against the wet sand, this strange sensation is enough to drive you to climax, and--as though like clockwork--the beast's own release felt apparent as his thick, virile cum floods the confines of your uterus.[impregchance]";
	say "     Visibly bloated by such an impressive release, your feel the writhing organ soften before the whale firmly pulls himself free of your tight hole. Satisfied with what he has wrought upon you, he departs, leaving you to lay across the sand in a dizzy stupor.";


to say orcadefeatsex3:		[old vaginal sex]
	say "     He thrusts into your mouth a few times, but once it's fully engorged, he slides that slick, flexible member from your throat and pushes you over. Sliding atop you, he keeps you pinned with his massive body and spreads your legs apart with his muscular tail. He drives his cock into your pussy, squirming and wiggling his flexible member around inside you like some meaty tentacle as he pounds into you.";
	if hasgills is 1:
		say "     Holding you under the water, you are thankful for your gills and breathe through them. Without the distraction of drowning, you quickly start to enjoy the strange sensation of that wriggling inside you. The orcaman's slick shaft slides along your walls and probes at the depths of your pussy before pushing past your cervix and worming its way into your womb. As you writhe in pleasure beneath him as this strange sensation drives you to climax, he starts filling your uterus with his thick, virile orca cum.";
	else:
		say "     Holding you under the water, you struggle to hold your breath as each hard thrust he makes into you seeks to push the air from your lungs. You can feel his throbbing, wriggling cock inside you. It is very enjoyable and arousing despite your desperate situation. Your desire for air, your struggle to live, somehow makes it all the more exciting. It is as if some primal part of you wants you to live so that you may breed and have children. So when the orca cums inside you, forcing his way into your womb and filling it with his seed, you orgasm powerfully as that primal need is fulfilled even. You can feel him pumping blast after blast of his thick, virile orca cum into you even as you're starting to black out.[impregchance]";
	say "     When he's finished draining his large balls into you, his flexible cock pulls itself from your stuffed, bloated womb and he releases you. The Killer Whale departs, leaving you floating on your back in a stupor.";


to say orcadefeatsex4:		[oral sex]
	say "     With an eager energy, he thrusts his writhing cock against your maw, driving him ever deeper into your throat as his arousal grows, happy to illustrate his pleasure with audible clicking noises. ";
	if a random chance of 1 in 2 succeeds:		[oral in]
		say "     You feel that worming rod throb against your tongue, informing you of his approaching release. The orcaman makes a concerted effort to conclude this ride with a handful of harsher, more deliberate thrusts before his release infers his relent, and you soon feel his thick fluids being pumped into your stomach.";
		say "     Eventually, as the flow relents, his rod softened somewhat before he pulls himself free of your maw, and he leaves to let you lay across the sand in a dizzy stupor.";
	else:							[oral out]
		say "     You feel that worming rod throb against your tongue, informing you of his approaching release; however, your captor doubtlessly has a more articulate grasp on the state of his imminent orgasm and instead opts to abruptly pull his rod from your abused orifice. His intent made immediately clear, he finishes himself off with a few final strokes before you're showered with spray after spray of the orcaman's cum.";
		say "     Eventually, after having sufficiently unloaded himself all over you, he leaves to let you lay your jizz-soaked form across the sand in a dizzy stupor.";


to say beattheorca:
	if ( libido of player - humanity of player > 15 ) and bodyname of player is "Killer Whale" and ( cocks of player > 0 or cunts of player > 0 ):
		if cocks of player > 0 and cunts of player > 0 and anallevel > 1:
			say "     Having beaten your foe, the heat of battle has gotten your blood pumping and your lustful orca instincts come to the fore.";
			say "     [bold type] Being dual-gendered, does your male or female aspect take over to dominate this fallen male?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Male.";
			say "     ([link]N[as]n[end link]) - Female.";
			if the player consents:
				say "[orcavicsex1]";
			else:
				say "[orcavicsex2]";
		else if cocks of player > 0 and anallevel > 1:
			say "[orcavicsex1]";
		else if cunts of player > 0:
			say "[orcavicsex2]";
		else:
			say "     Defeating the orca, you leave his exhausted form floating on the water. You're sure he'll be fine, but you feel ill-inclined to be around when he does recover.";
	else:
		say "     Defeating the orca, you leave his exhausted form floating on the water. You're sure he'll be fine, but you feel ill-inclined to be around when he does recover.";



to say orcavicsex1:
	say "     Victorious against the muscled orca, you find your better senses ill-equipped to handle your more feral needs. Too weak to challenge your strength any further, you pull the male into a headlock. Intent on asserting your dominance, you grind your throbbing [cockname of player] cock against his ass, pushing it under his tail. The beast can only impotently struggle as you tease his tailhole with the tip of your [cock size desc of player] rod before you ram it into the vulnerable portal, your victim's moans his only reply.";
	say "     Pumping your organ into him with assertive determination, you would sate your lust by making an example of this lesser male and confirm your claim on this to this territory. Roughly abusing the orca's hole, his own lust betrays him, moaning audibly as the sheer force of your thrusts brings him to cum into sand, the tight clenching of his abused hole enough to bring you to your own orgasm, [one of]flooding his bowels with your thick seed[or]pulling out just before to spend your seed across his back[at random]. Relinquishing him, you punctuate your violation with a hard swat on the Killer Whale's abused rump before he takes off. Satisfied to reasserting your territory by humiliating the muscled beast, you depart back from whence you came.";
	increase orcadom by 1;


to say orcavicsex2:
	say "     Victorious against the muscle orca, you find your better senses ill-equipped to handle your more feral needs. Too weak to challenge your strength any further, you pin the male to the ground. Amused by the male's physical inadequacy you can be sure he'll be useful for at least one thing, stroking the whale's meaty rod until it is sufficiently hard. Only briefly teasing the beleaguered beast with the entrance of your [bodytype of player] cunt, you skip the foreplay and jump straight to impaling yourself with that cetacean cock, your victim's moans his only reply.";
	say "     Too weak to contend with your will you ride the creature's organ with brutal abandon, illustrating to him that the measure of his merit scaled in these engulfed inches as you assert your dominion over this territory, and it's not long before your abuse finishes him off, moaning weakly as you feel his hot cum erupting from within you.[impregchance]";
	say "     Relinquishing him, you punctuate your violation with a hard swat on the Killer Whale's abused rump before he hobbles off awkwardly, no doubt sore from such rough treatment. Satisfied to reasserting your territory by humiliating the muscled beast, you depart back from whence you came.";
	increase orcafdom by 1;


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Killer Whale"; [Name of your new Monster]
	now attack entry is "[one of]The orca smashes his tail against your side![or]The killer whale bites down onto your arm![or]The killer whale leans forward and hits you with a blast of sea water from his blowhole![or]The orca strikes you with his powerful arms![or]The orca tries to crush you in his strong arms![at random]";
	now defeated entry is "[beattheorca]";
	now victory entry is "[losetoorca]";
	now desc entry is "[orcadesc]";
	now face entry is "sleek and streamlined, drawing to the rounded blunt muzzled shape of an orca. Your mouth is filled with small, sharp teeth. The blow hole on the top of your head occasionally opens to take a breath";
	now body entry is "large and heavily muscled, but with the sleek shape of a swimmer. You stand almost ten feet tall now. The large dorsal fin projecting from your back extends nearly a foot behind you, making it hard to comfortably rest your backpack. Your arms are dense with sleek muscle, and your hands have a thick webbing between your fingers. Your legs are humanoid in appearance, thick with powerful muscle as well[if cocks of player > 0]. A slit between the legs conceals your manhood[end if]";
	now skin entry is "the distinctive patterning of an orca on thick, sleek";
	now tail entry is "Your ass is dense with muscle, supporting a thick and very muscular tail that is four feet in length and ends in a whale's flukes.";
	now cock entry is "sleek and curving cetacean";
	now face change entry is "your skull reshape into something smoother and more aquadynamic, drawing into a blunt rounded muzzle. Your larger mouth fills with many small but very sharp teeth. You feel a strange sensation and realize you are now breathing through a hole atop your head";
	now body change entry is "as you suddenly grow to a height of almost ten feet you feel all the muscles in your torso swell with new power. While you can feel great strength locked in your muscles, you still bear the sleek form of a swimmer. As these changes pass to your arms and legs, webbing grows thick between your fingers and toes";
	now skin change entry is "your hide thickens, but becomes sleek and highly aquadynamic. Dark patches colour your skin, while other parts begin to pale. Soon you sport the rather distinctive patterning of a killer whale across your entire body";
	now ass change entry is "as your ass becomes dense with muscle to drive the strong orca tail that grows behind you to help propel you through the water";
	now cock change entry is "it becomes narrow, but with a sleek and curving shape. It now emerges from a slit at your groin and your balls have been mostly pulled into your body as well, so your waist may be smooth and streamlined while swimming";
	now str entry is 18;
	now dex entry is 13;
	now sta entry is 15;
	now per entry is 10;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 45; [ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 25; [ Length infection will make cock grow to if cocks]
	now cock width entry is 10; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 0; [ Number of Breasts infection will give you. ]
	now breast size entry is 0; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 55; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]sleek[or]powerful[at random]";
	now type entry is "[one of]orca[or]cetacean[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Killer Whale":
		if humanity of player < 10:			[SUCCUMB]
			say "     As the last of your humanity is washed away as a sand castle by the waves of the ocean, you are drawn back to the beachside. You join the other beachgoers and lose yourself in the enjoyment of the beachfront area. You swim among the other creatures, strong and powerful. You are not troubled by the other predators often and happily satisfy your urges on the others swimming in the area. ";
			if orcadom < 4 and cocks of player > 0:
				say "     The only difficulties you have are with the other male orcas in the area, as you fight with them over the territory and to defend the breeding females of your pod.";
			else if cocks of player > 0:
				say "     Having driven away several of the other muscled orcamen from the area, the territory is yours and you have little trouble driving away the other weaker males. With the territory near the city claimed as yours, you build up a large pod of females to breed. Those killer whales who do venture into your waters are quickly beaten and dominated as you did the others before them.";
			else if orcafdom < 4 and cunts of player > 0:
				say "     You find a powerful male among the other killer whales swimming in the waters around the city and join his pod, relishing the feel of him atop you. He breeds you, and the other females of the pod, often, to add to his mates. The males, when mature, are driven off to find pods of their own. You miss them a little, but there will always me more young ones, as your mate is strong and virile.";
			else if cunts of player > 0:
				say "     Doubtlessly unprepared for such a reign as yours, you wrangle together a number of males and females for your own pod, wherein the males are subjugated to your whims and to those of the females whom you matron over. Rarely do you find a consort to sufficiently placate your desires, but when you do you make considerable use of them, regardless of their compliance.";
			else:
				say "     Lacking a gender of your own, you instead delight in turning others into orcas stroking theirs or rubbing their pussies, making them cum repeatedly as you transform them. You take particular amusement in watching them sate their new instinctual lusts for the first time.";
		else:						[SURVIVE]
			if HP of doctor mouse > 13:		[ALLIED W/DR MOUSE]
				say "     When the military rescues you, you are pleased to find they've built some special holding facilities for those like yourself who have become partially aquatic creatures. There is some interest in you and the others and they get several marine biologists to study your group. Several members of the military speak to you as well. At first, it seems their interest is casual, but you soon catch on to what they're doing and you start talking to the others when they're not around. You argue against the military's offer to work for them, instead telling them you know someone who would be interested in their services and that he can help them with their infection. You keep your promises vague, but work to undermine the military's tempting offer to those who would otherwise feel they have no possible future. In the end, the military is only able to recruit a few of the people kept in your group, and predominantly those with lesser infections. Those more greatly infected and with more powerful bodies were more easily swayed by you.";
				say "     After your release, you keep in contact with the most promising of those you spoke with, content to simply leave the others out of military control. When Dr. Mouse gets in touch with you, you relay your information to him and he happily thanks you for the addition of what will soon become his aquatic research material and sea forces to further his plans. Among the group is a shark-infected person who has managed to retain enough of their mind while being transformed enough to be quite powerful. You become mates and your hybrid children are composites of you both, strong and vicious. As they grow, you teach them to be powerful sea fighters and carry out raids upon coastal cities and towns or marine research facilities on any tasks the little mouse doctor needs taken care of by his loyal assistant and his aquatic family.";
			else:					[NOT ALLIED W/DR MOUSE]
				say "     When the military rescues you, you are pleased to find they've built some special holding facilities for those like yourself who have become partially aquatic creatures. There is some interest in you and the others and they get several marine biologist to study your group. Several members of the military speak to you as well. At first, it seems their interest is casual and before you know it, you're becoming interested in their offer to join their forces as an aquatic soldier.";
				say "     You and several of the others in the tanks are recruited and trained, becoming a secret force working with the navy and the marines to perform aquatic missions and to help defend coastal cities from the menace of the many aquatic infected creatures who would raid them for supplies and to spread their infection. You become strong friends and eventually mated to a shark creature who is also in your group, one of the few who could overcome their more vicious and piratical tendencies while still being transformed enough and willing enough to join the para-military group. While your hybrid children are even more aquatic in nature than their parents and are a little more wild and vicious, they are trained from a young age by the yourselves and the military to become powerful grunts in the military's coastal defense teams.";

Killer Whale for FS ends here.
