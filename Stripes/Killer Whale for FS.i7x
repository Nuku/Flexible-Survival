Version 1 of Killer Whale for FS by Stripes begins here.
[Adaptation for Flexible Survival by Stripes]
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else.]
[This monster was updated and converted to a more readable format by Stripes.  All sexual encounters from MP MUD have been rewritten to fit the game better, all credit to creature idea goes to original author!]

"Adds Killer Whale to Flexible Survival."

orcadom is a number that varies.
when play begins:
	add { "Killer Whale" } to infections of furry;
	add { "Killer Whale" } to infections of guy;
	add ( "Killer Whale" ) to infections of tailweapon;

Section 1 - Monster Responses

to say losetoorca:
	say "     The Killer Whale is suddenly on top of you, forcing you to your back as his long, curving cock begins to slip free from the slit between his legs. 'Suck it!' The command is a given in a deep rumble";
	if libido of player > 40:
		say ".  You are suddenly only too happy to oblige as your lustful urges drive you to take the tip of the whale cock into your mouth. You begin to eagerly suck at him as he slides himself in and out of your mouth";
	otherwise:
		say ".  Not so eager to do what he says, he grips your jaw, forcing your mouth open and ramming his stiff cock down your throat";
	if cunts of player > 0:
		say ".  He thrusts into your mouth a few times, but once it's fully engorged, he slides that slick, flexible member from your throat and pushes you over.  Sliding atop you, he keeps you pinned with his massive body and spreads your legs apart with his muscular tail.  He drives his cock into your pussy, squirming and wiggling his flexible member around inside you like some meaty tentacle as he pounds into you.";
		if hasgills is 1:
			say "     Holding you under the water, you are thankful for your gills and breathe through them.  Without the distraction of drowning, you quickly start to enjoy the strange sensation of that wriggling inside you.  The orcaman's slick shaft slides along your walls and probes at the depths of your pussy before pushing past your cervix and worming its way into your womb.  As you writhe in pleasure beneath him as this strange sensation drives you to climax, he starts filling your uterus with his thick, virile orca cum.";
		otherwise:
			say "     Holding you under the water, you struggle to hold your breath as each hard thrust he makes into you seeks to push the air from your lungs.  You can feel his throbbing, wriggling cock inside you.  It is very enjoyable and arousing despite your desperate situation.  Your desire for air, your struggle to live, somehow makes it all the more exciting.  It is as if some primal part of you wants you to live so that you may breed and have children.  So when the orca cums inside you, forcing his way into your womb and filling it with his seed, you orgasm powerfully as that primal need is fulfilled even.  You can feel him pumping blast after blast of his thick, virile orca cum into you even as you're starting to black out.";
		say "[impregchance]";
		say "     When he's finished draining his large balls into you, his flexible cock pulls itself from your stuffed, bloated womb and he releases you.  The Killer Whale departs, leaving you floating on your back in a stupor.";
	otherwise:
		say ".  He keeps up the eager violation of your throat, occasionally making pleased clicking noises. As you feel his cock begin to throb against your tongue, he pulls out. Finishing himself off with a few last strokes of his shaft, he showers you with a spray after spray of orca cum.  His seed is thick and clings to you even in the water, only slowly dissolving away... or perhaps seeping into your skin.  The Killer Whale departs, leaving you floating on your back in a stupor.";


to say beattheorca:
	if ( libido of player - humanity of player > 15 ) and bodyname of player is "Killer Whale" and cocks of player > 0:
		say "     Having defeated the muscled orca, you growl down at him, feeling your strange, lustful instincts taking over.  You climb atop the woozy male and grab him firmly.  'These waters are my territory,' you growl to him as you grab him into a headlock.  With him tightly held, you grind your throbbing [cockname of player] cock against his ass, pushing it under his tail.  He struggles weakly, but has little strength left after battling you.  After a few teasing taps against his tailhole, you drive yourself into him, making the powerful male moan.  You pump your hard shaft into him again and again, asserting your dominance over the male.  The act is primally enjoyable as you lay claim to your territory and satisfy your lustful urges on the powerful orca.  You try to draw it out, enjoying the lustful moans that the big, tough male starts releasing despite himself, but eventually you can hold back no longer.  You cum hard into him, enjoying the tight grip as his ass clenches around you as he cums, wasting his heavy seed in the water as he's lost this fight for dominance.";
		say "     After you withdraw your spent shaft, you give the beaten Killer Whale a hard swat on his sore rump and send him off to look for other waters to hunt in.  You smile happily, having driven off one of those seeking to claim your territory.";
		increase orcadom by 1;
	otherwise:
		say "     Having beaten the muscled orca, you leave him woozy and floating in the water as you swim away.";

to say orcadesc:
	say "     Looking over Killer Whale, his body is covered in the distinctive patterning of an orca on thick, sleek flesh.  His head is sleek and streamlined, drawing to the rounded blunt muzzled shape of an orca.  His mouth is filled with small sharp, dagger-like teeth.  The blow hole on the top of his head occasionally opens to take a breath. His body is large and heavily muscled, but with the sleek shape of a swimmer.  He stands easily ten feet tall.  The large dorsal fin projecting from his back extends nearly a foot behind him in a sharp knife-like shape.  His arms are dense with sleek muscle.  His hands have a thick webbing between his fingers.  His legs are humanoid in appearance, thick with powerful muscle.  His ass is dense with muscle, supporting a thick and very muscular tail 4 feet in length ending in a whale's flukes.  Between his powerful, swimmer's legs he has a titanic, sleek and curving cetacean cock.  Beneath his impressive maleness is a large bulge, showing his swollen balls.  While they would normally be internal on the oceanic creature, their apparent hugeness cannot be fully contained inside him and bulge out considerably.";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
 
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Killer Whale"; [Name of your new Monster]
	now attack entry is "[one of]The orca smashes his tail against your side![or]The killer whale bites down onto your arm![or]The killer whale leans forward and hits you with a blast of sea water from his blowhole![or]The orca strikes you with his powerful arms![or]The orca tries to crush you in his strong arms![at random]";
	now defeated entry is "[beattheorca]";
	now victory entry is  "[losetoorca]";
	now desc entry is "[orcadesc]";
	now face entry is "sleek and streamlined, drawing to the rounded blunt muzzled shape of an orca. Your mouth is filled with small, sharp teeth. The blow hole on the top of your head occasionally opens to take a breath";
	now body entry is "large and heavily muscled, but with the sleek shape of a swimmer. You stand almost ten feet tall now. The large dorsal fin projecting from your back extends nearly a foot behind you, making it hard to comfortably rest your backpack.  Your arms are dense with sleek muscle and your hands have a thick webbing between your fingers.  Your legs are humanoid in appearance, thick with powerful muscle as well[if cocks of player > 0].  A slit between the legs conceals your manhood[end if]";
	now skin entry is "the distinctive patterning of an orca on thick, sleek";
	now tail entry is "Your ass is dense with muscle, supporting a thick and very muscular tail 4 feet in length ending in a whale's flukes.";
	now cock entry is "sleek and curving cetacean";
	now face change entry is "your skull reshape into something smoother and more aquadynamic, drawing into a blunt rounded muzzle. Your larger mouth fills with many small but very sharp teeth. You feel a strange sensation and realize you are now breathing through a hole atop your head";
	now body change entry is "as you suddenly grow to a height of almost ten feet you feel all the muscles in your torso swell with new power. While you can feel great strength locked in your muscles, you still bear the sleek form of a swimmer.  As these changes pass to your arms and legs, webbing grows thick between your fingers and toes";
	now skin change entry is "your hide thickens, but becomes sleek and highly aquadynamic.  Dark patches color your skin, while other parts begin to pale. Soon you sport the rather distinctive patterning of a killer whale across your entire body";
	now ass change entry is "as your ass becomes dense with muscle to drive the strong orca tail that grows behind you to help propel you through the water";
	now cock change entry is "it becomes narrow, but with a sleek and curving shape.  It now emerges from a slit at your groin and your balls have been mostly pulled into your body as well, so your waist may be smooth and streamlined while swimming";
	now str entry is 18;
	now dex entry is 13;
	now sta entry is 15;				
	now per entry is 10;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got?  She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 5;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you loose ] 
	now wdam entry is 7;			[Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Beach";	[ Current options are 'Outside' and 'Mall'  Case sensitive If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 25;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 10;		[ Size of balls apparently ;) sneaky Nuku  (big balls are underrated.)]
	now breasts entry is 0;			[ Number of Breasts infection will give you. ]
	now breast size entry is 0;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 55;			[ Amount player Libido will go up if defeated ]
	now loot entry is "";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]

Section 3 - Endings

when play ends:
	if bodyname of player is "Killer Whale":
		if humanity of player < 10:			[SUCCUMB]
			say "     As the last of your humanity is washed away as a sand castle by the waves of the ocean, you are drawn back to the beachside.  You join the other beachgoers and lose yourself in the enjoyment of the beachfront area.  You swim among the other creatures, strong and powerful.  You are not troubled by the other predators often and happily satisfy your urges on the others swimming in the area";
			if orcadom < 4 and cocks of player > 0:
				say ".  The only difficulties you have are with the other male orcas in the area, as you fight with them over the territory and to defend the breeding females of your pod.";
			otherwise if cocks of player > 0:
				say ".  Having driven away several of the other muscled orcamen from the area, the territory is yours and you have little trouble driving away the other weaker males.  With the territory near the city claimed as yours, you build up a large pod of females to breed.  Those killer whales who do venture into your waters are quickly beaten and dominated as you did the others before them.";
			otherwise:
				say ".  You find a powerful male among the other killer whales swimming in the waters around the city and join his pod, relishing the feel of him atop you.  He breeds you, and the other females of the pod, often, to add to his mates.  The males, when mature, are driven off to find pods of their own.  You miss them a little, but there will always me more young ones, as your mate is strong and virile.";
		otherwise:						[SURVIVE]
			if hp of doctor mouse > 13:		[ALLIED W/DR MOUSE]
				say "     When the military rescues you, you are pleased to find they've built some special holding facilities for those like yourself who have become partially aquatic creatures.  There is some interest in you and the others and they get several marine biologists to study your group.  Several members of the military speak to you as well.  At first, it seems their interest is casual, but you soon catch on to what they're doing and you start talking to the others when they're not around.  You argue against the military's offer to work for them, instead telling them you know someone who would be interested in their services and that he can help them with their infection.  You keep your promises vague, but work to undermine the military's tempting offer to those who would otherwise feel they have no possible future.  In the end, the military is only able to recruit a few of the people kept in your group, and predominantly those with lesser infections.  Those more greatly infected and with more powerful bodies were more easily swayed by you.";
				say "     After your release, you keep in contact with the most promising of those you spoke with, content to simply leave the others out of military control.  When Dr. Mouse gets in touch with you, you relay your information to him and he happily thanks you for the addition of what will soon become his aquatic research material and sea forces to further his plans.  Among the group is a shark-infected person who has managed to retain enough of their mind while being transformed enough to be quite powerful.  You become mates and your hybrid children are composites of you both, strong and vicious.  As they grow, you teach them to be powerful sea fighters and carry out raids upon coastal cities and towns or marine research facilities on any tasks the little mouse doctor needs taken care of by his loyal assistant and his aquatic family.";
			otherwise:					[NOT ALLIED W/DR MOUSE]
				say "     When the military rescues you, you are pleased to find they've built some special holding facilities for those like yourself who have become partially aquatic creatures.  There is some interest in you and the others and they get several marine biologist to study your group.  Several members of the military speak to you as well.  At first, it seems their interest is casual and before you know it, you're becoming interested in their offer to join their forces as an aquatic soldier.";
				say "     You and several of the others in the tanks are recruited and trained, becoming a secret force working with the navy and the marines to perform aquatic missions and to help defend coastal cities from the menace of the many aquatic infected creatures who would raid them for supplies and to spread their infection.  You become strong friends and eventually mated to a shark creature who is also in your group, one of the few who could overcome their more vicious and piratical tendencies while still being transformed enough and willing enough to join the para-military group.  While your hybrid children are even more aquatic in nature than their parents and are a little more wild and vicious, they are trained from a young age by the yourselves and the military to become powerful grunts in the military's coastal defense teams.";

Killer Whale for FS ends here. 