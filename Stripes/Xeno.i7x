Version 1 of Xeno by Stripes begins here.
[This monster is partially based on the Alien creature translated from the multiplayer game automatically by Nuku Valente. Those portions may, most likely, have been written by someone else, but have been considerably edited.]

"Adds a Xenomorphic Alien to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Xeno" } to infections of hermaphrodite;
	add { "Xeno" } to infections of Tailweapon; [usable for Tail Strike feat]

to say xenodesc:
	setmongender 5; [creature is herm]
	say "     Before you is a black and horrifying creature of film nightmares. Its entire body is encased in a hard, black exoskeleton that is cold to the touch and has a smooth, glistening appearance. This vaguely insectile creature has a thin, elongated skull that curves backwards towards the top. It has black eyes encased in sunken eye sockets. It has no gums; its teeth are silvery, long, straight, and densely packed in several rows. As it opens its mouth, you see a smaller mouth extend out of its larger mouth with smaller but equally fearsome razor-sharp teeth. Its animal-like body has hints of feminine curves and wide hips you can see as it shifts easily between walking upright and on all fours. Its exoskeleton shows exposed ribs and other hard, bony plates to protect it while several breathing tubes extend from its back, providing the creature with the added oxygen it needs for the hunt.";
	say "     The alien creature's arms and legs bend in odd places and its sharp claws make almost no noise as they touch the ground or grip easy onto any surface for purchase. The creature crawls over the nearby rubble and debris with ease, moving swiftly and silently towards you. Those limbs seem lean and sleek, but also powerful with those sharp claws. It has a long tail consisting of many bony segments that hovers behind her, flashing its pointed, speared tip which it has at the ready.";
	say "     As it approaches you, you see it extend a strange, dripping pseudopod ending in short, inch long tendrils and a gaping, vaginal hole.";


to say losetoxeno:
	choose row monster from the table of random critters;
	say "     You are knocked down by the powerful creature and pinned beneath it. It hisses at you, extending its inner mouth and dripping thick slime onto your cheek as it stares down at you, small nasal holes flaring as it takes in your scent. ";
	if cunts of player > 0:
		say "     The xenomorphic creature, as if scenting what it wants, pushes your legs apart with its strong arms and lowers itself down onto you. Hissing again, it slides its strange, phallic probe into you, pushing into your pussy and sliding up to your womb. The black flesh pulses and shoots a thick, green goo into your cunt, making it slick and easy to penetrate. At your cervix, its tendrils squirm and rub, working your cervix until it opens and allows it entry. Once inside your womb, you feel a much thicker bulge pressing into you as an egg starts to travel up the ovipositor and into you to be deposited into your womb. More eggs follow after the first as your belly is stuffed with as many of the fleshy orbs as you can take[if cocks of player > 0]. As these push past your clit, you can't help but cum, moaning loudly as the alien creature violates you[end if].";
		say "     After the ovipositor is withdrawn and you're released, you stumble away as best you can being so laden down with eggs. Feeling your belly squirm and seeing the eggs already writhing and shifting inside you, you find somewhere secluded and deposit them, hoping you've managed to get them all out.[ovichance]";
	else:
		let mchance be 4;
		if player is submissive, increase mchance by 2;
		if anallevel is 3, increase mchance by 2;
		if player is mpreg_ok, increase mchance by 2;
		if anallevel is 1, now mchance is 0;
		if cocks of player is 0 or a random chance of mchance in 12 succeeds:
			say "     The xenomorphic creature, as if scenting what it wants, pushes onto all fours with its strong arms and lowers itself down onto you. Hissing again, it slides its strange, phallic probe into you, pushing into your ass and sliding into your bowels. The black flesh pulses and shoots a thick, green goo into your ass, making it slick and easy to penetrate. Its tendrils squirm and rub, teasing your [if cocks of player > 0]prostate[else]inner walls[end if] and exciting you despite the horrifying situation. But it doesn't thrust into you, instead staying buried deep inside you and stimulating you from within. As it does so, you feel a much thicker bulge pressing into you as an egg starts to travel up the ovipositor and into you to be deposited into your belly. More eggs follow after the first as your belly is stuffed with as many of the fleshy orbs as you can take[if cocks of player > 0]. As these push past your prostate, you can't help but cum, moaning loudly as the alien creature violates you[end if].";
			say "     After the ovipositor is withdrawn and you're released, you stumble away as best you can being so laden down with eggs. Feeling your belly squirm and seeing the eggs already writhing and shifting inside you, you find somewhere secluded and deposit them, hoping you've managed to get them all out.[movichance]";
		else:
			say "     The xenomorphic creature, as if scenting what it wants, pushes you onto your back with its strong arms and lowers itself down onto you. Hissing again, it slides its strange, phallic probe to your cock. Gripping your glans with the short tendrils, these pull your cock into the vaginal opening and start feeding your meat into its throbbing, pulsing hole. It squeezes and sucks at your shaft, stretching to fully cover your length until those tendrils are squeezing and massaging at your balls. You moan loudly and cum repeatedly until your balls are fully drained into the alien creature. Not sated, but having gotten all it can from you, it releases your cock with a wet, sticky slurp and a splatter of thick, green slime. It runs its sharp claws across your flesh almost tenderly, drooling over your face before rising and driving you from its territory.";
	infect;


to say beatthexeno:
	choose row monster from the table of random critters;
	say "     Victorious over the alien creature, you knock the hissing black creature to the ground. Its tail thrashes and green goo leaks from its phallic probe. ";
	if cockname of player is "Xeno" and player is herm:
		say "     Seeing your prey fallen before you, your alien cock throbs and its tendrils squirm. Following your infected cock's compulsion to mate, you pin the xenomorph beneath you and press your strange cock to its. Your tendrils entwine with one another briefly before your cock is able to pull its into your wet, vaginal hole. Your ovipositor squeeze and sucks at the cock inside it, milking at the black creature until it cums again and again, draining its internal balls into you to feed and fertilize the Xeno eggs inside you.";
		say "     Overcome with instinct, you keep the Xeno pinned down, hissing in pleasure as these eggs start to travel out of your ovipositor. You have what feels like climax after climax as you release these eggs into the alien creature below, stuffing its egg chamber with your offspring until its carapace is stretched and bloated with your many swollen eggs added to her own. With a twisted sense of pride and accomplishment, you release the creature's ovipositor cock and send it off to find somewhere else to deposit the many eggs it now bears inside it.";
		infect;
	else if cockname of player is "Xeno" and cocks of player > 0 and player is mpreg_ok:
		say "     Seeing your prey fallen before you, your alien cock throbs and its tendrils squirm. You also feel a shifting inside your hidden male womb. Following your infected cock's compulsion to mate, you pin the xenomorph beneath you and press your strange cock to its. Your tendrils entwine with one another briefly before your cock is able to push its way into the creature's vaginal opening, intent on fertilizing its eggs with your tainted seed. Its ovipositor squeezes and sucks at your cock inside it, milking you for all the slimy cum you can give it. This is pumped deep inside the creature's egg chamber, fertilizing her young and starting them to swell.";
		say "     Once you're done, you pull out and shift your hips, bringing your black ring to its ovipositor. The creature hisses beneath you, but you feel its tendrils pry open your anal ring and the ovipositor push into your anus. There it presses against your prostate and massages at it before moving further back. Squeezing and milking at it, you get it to spurt its thick, gooey slime into you, preparing you for the coming eggs.";
		say "     Finding the hidden entrance to your male womb, the tendrils tease open this passage and press into it, bringing you considerable pleasure even before its eggs start to push your back passage open and make their way into your hidden womb. You hiss in pleasure as these start sliding into you, each one moving past your prostate sending you to orgasm before it presses its way into your waiting egg chamber. You take as many of the creature's eggs into you as you can until your belly is full and bloated with the growing, swelling, squirming ovoids. Having what your body wants from the creature, you release it and drive it off while you look around for someone suitable to deposit your eggs. As each one slides out of you, you cum again in ecstasy. Once they're lain, you find yourself wondering, even hoping, that one or a few may still remain inside you.[ovichance]";
		infect;
	else if cockname of player is "Xeno" and cocks of player > 0:
		say "     Seeing your prey fallen before you, your alien cock throbs and its tendrils squirm. Following your infected cock's compulsion to mate, you pin the xenomorph beneath you and press your strange cock to its. Your tendrils entwine with one another briefly before your cock pushes its way into the creature's vaginal opening, intent on fertilizing its eggs with your tainted seed. Its ovipositor squeezes and sucks at your cock inside it, milking you for all the slimy cum you can give it. This is pumped deep inside the creature's egg chamber, fertilizing her young and starting them to swell. Once you're done, you pull out and send it off to find somewhere else to deposit the many eggs you've sired inside it.";
		infect;
	else if cunts of player > 0 and cockname of player is "Xeno":
		say "     Seeing your prey fallen before you, your alien pussy pulses with need and its tendrils squirm. Following your infected cunt's compulsion to mate, you pin the xenomorph beneath you and press your needy pussy to its cock-like protrusion. Your tendrils entwine with one another briefly before pulling its ovipositor into your juicy hole. Squeezing and milking at it, you get it to spurt its thick, gooey slime into you, preparing you for the coming eggs. You hiss in pleasure as these start sliding into you, each one moving past your clit sending you to orgasm before it presses its way into your waiting egg chamber. You take as many of the creature's eggs into you as you can until your belly is full and bloated with the growing, swelling, squirming ovoids. Having what your body wants from the creature, you release it and drive it off while you look around for someone suitable to deposit your eggs. As each one slides out of you, you cum again in ecstasy. Once they're lain, you find yourself wondering, even hoping, that one or a few may still remain inside you.[ovichance]";
		infect;
	else:
		say "     Being very mindful of its slashing tail, you drive the fallen creature off, hoping you won't see it again anytime soon.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Xeno"; [Name of your new Monster]
	now attack entry is "[one of]The Xeno[or]The alien[or]The creature[at random] attacks using its [one of]sharpened claws[or]deadly talons[or]vicious claws[or]slashing tail[at random]!";
	now defeated entry is "[beatthexeno]";
	now victory entry is "[losetoxeno]";
	now desc entry is "[xenodesc]";
	now face entry is "a thin elongated skull that curves backwards towards the top. Your eyes are large black orbs encased in sunken sockets. You have no gums, and your teeth are silvery, long, straight, and densely packed in several rows. Behind your first mouth is a second smaller mouth able to extend out atop your black tongue. This smaller mouth has smaller, but equally fearsome, razor-sharp teeth";
	now body entry is "large, but oddly enough you can see your [skin] fold around your ribs and bones as it all forms into an exoskeleton[if the player is not xenoskinned] just beneath your taut skin[end if]. Your animal-like body has hints of feminine curves and wide, bony hips[if breasts of player > 0 and breast size of player > 5]. Your breasts, heavy with milk, leak a green acid with each bounce[end if][if player is xenoskinned and breasts of player > 0]. You easily notice green blood vessels and veins running along your breasts and converging on your nipples[end if]. Your long, thin arms and legs bend in odd places, and you're able to walk both upright and on all fours, moving surprisingly silently despite your hard claws. From your back grow breathing tubes that take in air for you[if cunts of player > 0 and cocks of player > 0 and the player is xenococked]. Your cock extends out like a hard, phallic probe with squirming, inch-long tendrils at its tip. Encircled by these is a wet, vaginal opening to complete your ovipositor. You thankfully have a normal, [cunt size desc of player] pussy beneath your cock as well, allowing you to enjoy a good fucking as well[else if cunts of player > 0 and the player is xenococked]. Your [cunt size desc of player] juicy pussy has a quartet of inch-long, squirming tendrils around it that rub constantly against your folds, feeling wonderfully stimulating and making you crave a good fucking to fill it[else if cocks of player > 0 and the player is xenococked]. Your cock extends out like a hard, phallic probe with squirming, inch-long tendrils at its tip. These rub against your glans and cumslit, keeping you aroused and eager to find a wet hole to fill[end if]";
	now skin entry is "hard, black exoskeleton"; [ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "You have a long tail consisting of many vertebrae but completely absent of any muscle. It hovers behind you, snaking this way and that, slashing its pointed, razor-sharp end through the air as if eager to find something to sink into.";
	now cock entry is "[one of][if cunts of player > 0]ovipositor[else]probing[end if][or]black[or]ebon[or]tendrilled[at random]";
	now face change entry is "you suddenly get a massive headache as your skull reshapes and stretches itself as any hair you have falls from it. Your skull changes, becoming completely smooth and elongated. As your headache subsides, you feel a sharp pain in your mouth as your gums pull away your teeth elongate and gather in several pointed rows. Your tongue erupts in pain as you feel it thicken and lengthen, splitting off to form a second, smaller mouth filled with more sharp teeth";
	now body change entry is "your torso starts to ache. Looking down, you notice that your torso is growing longer and twisting its shape, your ribs and bones pushing outwards to form into an exoskeleton[if player is not xenoskinned] just beneath your taut skin[end if]. The bones in your hips crack as they expand and your animalistic body takes on subtle, female curves[if player is xenoskinned and breasts of player > 0]. Feeling strange tingles spreading from your nipples, you see green blood vessels and veins spreading towards your erect nipples[end if][if breasts of player > 0 and breast size of player > 5]. Your breasts start to leak a green, acidic milk that sizzles when it hits the ground[end if][if cunts of player > 0]. You feel a growing vacancy inside lower abdomen as your insides stretch to make room for countless eggs[end if]. Your arms and legs have a dull ache as they become thinner and bend in odd places and directions. Your fingers and toes grow long, sinister claws";
	now skin change entry is "pain erupts through your body as your skin becomes hard and fuses with your bones. You can see a strong exoskeleton forming around your arms, legs, and head. Your skin becomes black and as solid as onyx, glistening and hard";
	now ass change entry is "a sharp pain strikes at the rear base of your back almost causing you to pass out. You feel your spinal column stretching and cracking as it bursts through your skin and becomes a long tail consisting of many vertebrae with no visible muscle whatsoever. It extends out like this, bony and hard until it ends in a pointed, bladed tip that slices through the air";
	now cock change entry is "your cock hardens into a black, ebon spire ending in short, squirming tendrils[if cunts of player > 0]. You groan in pain as it pulses and throbs, forming a thick, fleshy channel down its length with a cunt-like orifice as it mutates into an ovipositor cock. Your pain turns to pleasure as you feel the eggs inside you shifting and you find yourself eager to find a willing (or maybe even unwilling) home for them. You try to suppress this desire, but it grows increasingly tempting[else]. You feel considerable pleasure as those squirming tendrils slide across your glans and play with your cum-slit. But something doesn't feel right, like its incomplete as it is[end if]. Your balls are pulled into your body and become internalized, pressed and swollen as bulges protruding below your ebon spire";
	now str entry is 16; [a big strong bear]
	now dex entry is 20; [not so limber]
	now sta entry is 12; [not too much stamina -a lot of bear to lug about.]
	now per entry is 12; [bears are good at finding stuff]
	now int entry is 14; [not that much of a bear with little brain]
	now cha entry is 6; [because you wouldn't want to argue]
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 80; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 12; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 15; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is "Capitol"; [ Current options are 'Outside' and 'Mall' Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12; [ Length infection will make cock grow to if cocks]
	now cock width entry is 8; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now breasts entry is 8; [ Number of Breasts infection will give you. ]
	now breast size entry is 6; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 50; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 35; [ Width of female sex infection will try and give you ]
	now libido entry is 80; [ Amount player Libido will go up if defeated ]
	now loot entry is "acid milk";
	now lootchance entry is 25; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]bony[or]twisted[or]unnatural[or]hardened[at random]";
	now type entry is "[one of]xeno[or]alien[or]monstrous[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Acid Milk

Table of Game Objects (continued)
name	desc	weight	object
"acid milk"	"The green, acidic milk of a xeno slowly eating away at its container."	1	acid milk

acid milk is a grab object. It is a part of the player. it is milky. it is temporary. acid milk is infectious. The strain of acid milk is "Xeno".

The usedesc of acid milk is "[drinkacidmilk]";

to say drinkacidmilk:
	say "     Foolishly, you take a gulp of the acid milk. ";
	if facename of player is not "Xeno":
		say "     The caustic acid eats away at your flesh and you're forced to spit it up, but not before it does terrible things to the inside of your mouth and throat.";
		now HP of player is HP of player / 3;
	else if bodyname of player is not "Xeno":
		say "     You are able to swallow down the acidic milk thanks to your altered head and mouth, but this only allows it access to your body where it starts to eat away at your internals instead. You writhe in pain as it burns inside you for several minutes until it's spread out enough for the nanites to start dealing with cleaning it up.";
		now HP of player is HP of player / 4;
	else:
		say "     You are able to drink down the acidic milk thanks to your altered mouth and your infected body is able to deal with it. It still stings and burns inside you, but does restore a small amount of thirst in return.";
		decrease HP of player by level of player;
		PlayerDrink 3;

the scent of acid milk is "The milk has a sharp, acidic scent and doesn't seem very appetizing.".


Section 4 - Definitions

Definition: a person is xenofaced:
	if the facename of the player is "Xeno", yes;
	no;

Definition: a person is xenoskinned:
	if the skinname of the player is "Xeno", yes;
	no;

Definition: a person is xenobodied:
	if the bodyname of the player is "Xeno", yes;
	no;

Definition: a person is xenococked:
	if the cockname of the player is "Xeno", yes;
	no;

Definition: a person is xenotailed:
	if the tailname of the player is "Xeno", yes;
	no;

Section 5 - Endings

when play ends:
	if bodyname of player is "Xeno":
		if humanity of player < 10:
			say "     You succumb to your horrific infection, feeling its silent power and reveling in it. You head out into the city to seek your prey, eager to breed and spread your kind to satisfy your lustful instincts. ";
			if cunts of player > 0 and cocks of player > 0:
				say "     Finding others of your kind, you breed with them. But unlike before, you are no longer restrained by your humanity and seek out victims to mount and fill with your eggs, corrupting them even as you turn them into incubators and carriers for your offspring.";
			else if cocks of player > 0 and player is mpreg_ok:
				say "     Finding others of your kind, you breed with them. You sire eggs in them, often taking those eggs into yourself and carrying them. No longer restrained by your humanity, you seek out places near other potential victims for your offspring so they might find hosts and incubators of their own to use, breed and corrupt into more of your kind.";
			else if cocks of player > 0:
				say "     Finding others of your kind, you breed with them. You sire eggs in them. No longer restrained by your humanity, you also seek out other potential victims so they might be brought before your mates and then implanted with those eggs to be incubators and carriers for your offspring even as they are themselves corrupted.";
			else:
				say "     Lacking any true gender of your own, you instead act as a hunter for the others. No longer restrained by your humanity, you seek out other potential victims so they might be brought before your xenomorphic brethren and then implanted with their eggs to be incubators and carriers for the offspring even as they are themselves corrupted.";
		else:
			say "     You survive to rescue, but the military forces that come are very wary of you. At first, they refuse to extract you at all, fearful of what they've seen in the movies. You do your best to convince them and eventually a team of armored soldiers come and take you out under very high security. You restrain your monstrous instincts and come peacefully.";
			say "     Their scientists have a field day with you, putting you through batteries of tests trying to understand your incredibly changed form and its alterations. Your acidic venom does considerable damage to their equipment and interferes with a lot of their testing, eventually forcing them to give up and take what little they've been able to discover. It is deemed that your body, following movie logic helped along by the nanites, is not one that functions under normal science and so cannot be replicated or weaponized as they might like.";
			say "     You are given a halfhearted offer by some military men to join their forces, but it seems even they are wary of you. Fearing their control or even worse testing, you turn them down and try to settle down into a more normal life. Your altered form prevents you from living with most people, but works well in film, earning you a steady income from the entertainment industry, both conventional and erotic for those into the most extreme content and the excitement of horror porn.";
			say "     In this second line of work, you are able to find the occasional partner, mainly from others transformed, who are not put off by your exotic, alien form[if cunts of player > 0 or cocks of player > 0] and you have many offspring with them[end if].";

Xeno ends here.
