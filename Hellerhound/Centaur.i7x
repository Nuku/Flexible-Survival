Centaur by Hellerhound begins here.

[converted from FI]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]

"Adds a centaur to Flexible Survivals Wandering Monsters table"

[Description text for this Extension.]

Section 1 - Dry Plain

understand "plains" as Dry Plain.


Dry Plain is a room. It is fasttravel. "A great plain streches away from you, in the southern east side of the city. It looks like the quake leveled all the buildings, and now all that is left is dirt. Hoofprints are visible in the dust, and clouds of dust, periodically rising into spinners that travel a short distance, reveal dangers here.";
Plains Door is a door. The marea of plains door is "Plains". "The plains stretch as far as the eye can see here, to the raptor or the human.". Plains Door is dangerous. Plains door is east of dry plain.
Plains door is west of wandering the plains.
Wandering the plains is a room.







Section 2 - Fresh Apple

Table of Game Objects (continued)
name	desc	weight	object
"Fresh Apple"	"A rosy red apple."	3	fresh apple

fresh apple is a grab object. It is a part of the player. Understand "apple" and "fresh" as fresh apple. fresh apple is infectious. The strain of fresh apple is "Mutant Centaur". The purified of fresh apple is "food".


Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]

To say centaur defeat:
	if libido of player < 50:
		Say "The centaur groans, falling onto its face as you strike the final blow. An apple spills out of the pack on its back.";
		add "Fresh Apple" to the invent of the player;
	if libido of player > 50 and cocks of player is greater than 0:
		Say "The centaur is lying on the ground with its tail skewed off to the side, is the perfect target for your [cock of player] maleness. You sidle up behind the centaur, ignored by it in the pain and embarrassment of loss, and slowly insert your cock.";
		wait for any key;
		say "The centaur starts as it realizes what you are doing, and two green tentacles, covered with bumps, raise out from under the body of the centaur.";
		if the humanity of the player > 90:
			say "You instantly pull out, looking at the tentacles like the abomination they are. You kick dirt over the centaur as you leave, stealing an apple from its pack.";
			add "Fresh Apple" to the invent of the player;
			increase the libido of the player by 20;
		otherwise:
			say "The appearance of the helping tentacles is a welcome development, and you begin thrusting with vigor, the lubrication of the creature's waste keeping you from ripping the walls.";
			if the cunts of the player is greater than 0:
				say "The tentacles circle your cock, and one rubs by your clit on its way. Almost immediately, they abandon your moving cock for the wetness of your pussy, stroking in and out in coils as they work to bring you to climax.";
				say "You lose the battle to hold the climax back as you let out a scream of pleasure, your semen filling the bowels of the centaur while its tentacles are washed out of your pussy by the flow of fluids.";
			otherwise:
				say "The tentacles wrap around your cock, and then enter your ass with a slight poke of pain, driving you over the edge. The combined scream of rage from the centaur, along with the one of pleasure from you, mixes horribly and seems to shatter the air. The tentacles retract, and the centaur curls up, pulling your [cock of player] cock out of its dripping ass.";
			say "Dazed by the sex, you wander off.";
			now the libido of the player is 0;
			decrease the humanity of the player by 4;
	if libido of player > 50 and cocks of player is 0 and cunts of player is greater than 0:
		say "The centaur groans and falls to the ground, his legs crumpling and shoving him onto his side. You get a good view of a massive, green cock with vinelike bumps on the shaft. Its sheath is a darker green, and a matching ball sack hangs down half a foot from the powerful member, two giant round forms stretching the skin. What really gets to you is the two tentacles, like growths, that sprout from stumplike protusions of the base of its sheath.";
		if the humanity of the player < 40:
			say "The sight of those tentacles drives you insane with lust. You grab them, and stuff them into your mouth, working your throat to get them down. They then come alive, wriggling down your stomach, into your small intestine, and then out of your hole, causing pain, that when mixed wth your lust turns to pleasure. The tentacles then enter your pussy, and begin to stimulate it with their wriggling. You are immobilized by the feeling of those long tendrils pumping in and out of more holes in your body than any cock could fuck, and it doesn't take long to come to climax. You cum hard, juices running out of your cunt and pushing the tendrils out with it. Then your hear a moan, and the centaur climaxes, spraying thick green seed all over the dusty ground and its underside. The tendrils retract from your body, and you leave the centaur, accepting an apple that it offers you.";
			add "Fresh Apple" to the invent of the player;
			now the libido of the player is 0;
		otherwise if the humanity of the player < 90:
			say "The sight of the tentacles doesn't bother your fuzzy mind in the least as you leap onto the centaur's furry belly and rub yourself forward and back, arousing yourself and trying to raise yourself to orgasm. Your dripping pussy leaves streaks of wetness on the centaur's fur, and after a short while, something wet and large pokes at your back, breaking your concentration. You stop and turn back in surprise to see the huge green cock starkly erect, its precum-dripping tip a few inches from your face. A trail of precum leads along your body to your back. It isn't done growing, and pushes you forwards a few inches before it is fully ready.";
			say "You turn and place the cock at your waiting entrance, smearing your hole with precum as you try and force it in.";
			if the cunt width of the player is less than 16:[too small, cock won't fit]
				say "The cock doesn't go in, no matter how hard you try, so you bend over and start to lick it eagerly. It spams more precum in response, and your mouth becomes hot and gooey in an instant.";
				say "You open your mouth wide and fit as much of it in as you can, which means only the soft head. You start to lick it and suck at the hole, drinking in the juices, until it climaxes.";
				say "The spray of fluid begins slowly, but increases in flow rapidly until you cannot swallow it all, and it shoves your face back, and sprays of hot green cum soak your whole body in a few seconds.";
				say "After cleaning up the centaur as well as yourself, you go on your way, with an apple as payment.";
				add "Fresh Apple" to the invent of the player;
				now the libido of the player is 0;
			otherwise: [cock will fit]
				say "After pulling at it for a moment, the head goes in. Your walls contract, bringing more of it inside you, and you closer to the monstrous testicles. All of a sudden, the two tentacles that had been lying limp on the ground dart into your ass, causing you to gasp from addictive pleasure.";
				say "At the noise, the centaur seems to wake up, and begins to bend its powerful muscles. You feel the giant cock pumping in and out of your cunt, soaking your insides in precum and bottoming out at each thrust.";
				say "You drift off into a haze of pleasure, filled with slapping noises of the centaur's balls. You come out of the haze into your orgasm, pleasure flooding your senses and hot cum flooding your insides, filling them until you look overdue for triplets. When your belly can stretch no more, cum sprays out of the tight seal between your lips and its shaft, covering what is in the way with green seed.";
				say "The centaur pulls out of you with a splotchy noise, green cum running like a small stream from your abused lips, and walks off, leaving you to clean up and be on your way, an apple or two in your bag.";
				if a random chance of one in two succeeds:
					add "Fresh Apple" to the invent of the player;
				add "Fresh Apple" to the invent of the player;
		otherwise:
			if "Kinky" is not listed in the feats of the player:
				say "The sight of the tentacles puts you off your lunch, and you lose it a short time later, heaving your guts all over the ground.";
				increase hunger of the player by 10;
				decrease the hp of the player by 8;
				say "You feel weaker after losing your lunch. Maybe you aren't good enough to survive the new world.";
				now the libido of the player is 0;
			otherwise:
				say "The tentacles put your lust back where it came from, and you leave the stricken centaur where it is.";
				say "You find an apple in its discarded backpack.";
				decrease the libido of the player by 10;
				add "Fresh Apple" to the invent of the player;
		[todo]

to say centaur rape female:
	say "You turn and place the cock at your waiting entrance, smearing your hole with precum as you try and force it in.";
	say "After pulling at it for a moment, the head goes in. Your walls contract, bringing more of it inside you, and you closer to the monstrous testicles. All of a sudden, the two tentacles that had been lying limp on the ground dart into your ass, causing you to gasp from addictive pleasure.";
	say "At the noise, the centaur seems to wake up, and begins to bend its powerful muscles. You feel the giant cock pumping in and out of your cunt, soaking your insides in precum and bottoming out at each thrust.";
	say "You drift off into a haze of pleasure, filled with slapping noises of the centaur's balls. You come out of the haze into your orgasm, pleasure flooding your senses and hot cum flooding your insides, filling them until you look overdue for triplets. When your belly can stretch no more, cum sprays out of the tight seal between your lips and its shaft, covering what is in the way with green seed.";
	say "[impregchance][impregchance]";
	say "The centaur pulls out of you with a splotchy noise, green cum running like a small stream from your abused lips, and walks off, leaving you to clean up and be on your way, an apple or two in your bag.";
	if a random chance of one in two succeeds:
		add "Fresh Apple" to the invent of the player;
	add "Fresh Apple" to the invent of the player;
	repeat with n running from one to nine:
		infect "Mutant Centaur";


centaurmate is a number that varies.
to say centaurmeet:
	say "As you walk in the plain, a dust cloud becomes visible. You look at it with fear, and attempt to run, but fail to escape.";
	say "The dust cloud engulfs you and settles to the ground, revealing an equine form with a powerful human torso. As it turns to slow down and stop in front of you, you catch a glimpse of a green thing under his belly, as it is very definitely a male.";
	if centaurmate is 0:
		say "He details you for a moment, and get aclear sight of a monstrously huge cock head sliding out of its sheath. Two green tentacle-like things move around, seemingly attached to its base. With a booming voice, he asks: 'Are you going to submit to me?'. You have a feeling that if you don't agree, he will take what he wants by force.";
		if the player consents:
			say "You bow down your head, and he laughs.";
			now centaurmate is 1;
			say "[centaur attack]";
			follow the turnpass rule;
		otherwise:
			say "The centaur roars 'Fine then, be unwilling, but by the end you will want to be mine anyway!'";
			now centaurmate is -1;
			









compressedcock is a number that varies.
to say compresscock:
	now compressedcock is 1;

An everyturn rule:
	if compressedcock is 1:
		if the cocks of the player > 0:
			now the libido of the player is 0;
			decrease the cock length of the player by 4;
			say "Your cock keeps bleeding, and shrank a little just now.";
			decrease the hp of the player by 4;
			say "The loss of blood is making you feel woozy.";
			if the cock length of the player < 0:
				now the cocks of the player is 0;
				now compressedcock is 0;
				say "Your cock shrinks until you think it would be one for a mouse, and falls off, to your horror. Seems like that centaur meant what he said.";
		otherwise:
			now compressedcock is 0;



To say centaur attack:
	if cocks of the player is not 0:
		say "The centaur flips you over, and then looks you over as you go limp. he snarls at the sight of your cock. 'Little bastard' he growls, twin green tentacles from his underside reaching out and wrapping around the base of your [cock of player] member. They tighten, slowly at first, then faster until your poor cock is bleeding from every hole, trying to relieve the pressure. [compresscock]The centaur leaves you like that. 'Never come with one of those again.'";
		[male fury, centaur wants mate, not a companion!]
	if cunts of player > 0:
		Say "[centaur rape female]";
	if cocks of player is 0 and cunts of player is 0 and "Male Preferred" is not listed in feats of player:
		say "The Centaur looks at you with aprehension. 'Nothing at all?' He groans, and kicks his front hoof, opening a hole in your body, which quickly heals into a vagina. 'See me next time, and don't lose it.'";
		now the cunts of the player is 1;
		now the cunt length of the player is 2;
		now the cunt width of the player is 1;
		infect "Mutant Centaur";
		
		[ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 


to say centaurgrowtorso:
	say "you tip forwards, face first as a pair of new legs grows out from your behind, and a equine torso follows";
	if the skinname of the player is "Mutant Centaur":
		say ", covered with black fur, newly grown muscles rippling underneath.";
	otherwise if the skinname of the player is "human":
		say ", the human skin contorting and strecthing, leaving pink streaks as it expands to support the required muscles.";
	increase the hunger of the player by 10;
	say "You feel hungry, the energy being sapped out of you by the new growth.";
	say "[line break]";
	wait for any key;
	say " Your feet grow hooves, large and noisy as they clatter on the road. They also change direction and stature as they begin to look truly like those of a horses";



When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Mutant Centaur"; [Name of your new Monster]
	now attack entry is "The Centaur[one of] punches your face with its hand[or] headbutts you[or]'s green tentacles rise from under him and slap you[or] rears up and slams you with his front hooves[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "[centaur defeat]";
	 [ Text or say command used when Monster is defeated.]
	now victory entry is "[centaur attack]";
	now desc entry is "[centaurmeet]";[ Description of the creature when you encounter it.]
	now face entry is "human, with horse ears";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "distinctively equine, with a muscled human torso where the horse's head should be";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "human, blending smoothly into black fur on your bottom half";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "Your tail is made of spindry fibers that twitch in the still air.";[ Tail description, write a whole Sentence or leave blank. ]  
	now cock entry is "green and equine, with bumps covering it and tentacles growing out of two bulges along its sheath";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "your ears become longer and grow fur, changing shape to become like a horse's"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your body grows muscled at the bottom, and your legs change into those of a horse. Your breasts feel odd, and it seems like most of their girth is inside of you"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "the skin below your abdomen grows black fur, melding smoothly into the human skin above"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "[centaurgrowtorso]"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it spasms in orgasm, spraying out all its cum until dry as it shrinks and looks like it is dead, your balls shrunken and crinkling. They do not look like they were meant to be"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 22;
	now dex entry is 24;
	now sta entry is 20;					
	now per entry is 13;
	now int entry is 14;
	now cha entry is 14;
	now sex entry is "Female"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now hp entry is 45;			[ How many HP has the monster got? ]
	now lev entry is 6;			[ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose ] 
	now wdam entry is 8;			[Amount of Damage monster Does when attacking.]
	now area entry is "Plains";	[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;			[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 24;		[ Length infection will make cock grow to if cocks]
	now cock width entry is 24;		[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 4;			[ Number of Breasts infection will give you. ]
	now breast size entry is 4;		[Size of breasts infection will try to attain ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 17;		[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 24;		[ Width of female sex  infection will try and give you ] 
	now libido entry is 0;	[done in the loss/win text]		[ Amount player Libido will go up if defeated ]
	now loot entry is "Fresh Apple";			[ Loot monster drops, ]
	now lootchance entry is 0;		[ Chance of loot dropping 0-100 ]
	
	
	
	
Section 4 - Centaur Heat
	
Table of infection heat(continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat
"Mutant Centaur"	7	10	"[centheat]"	"winking and dripping green cunt "	--	--	"[defaultheat]"

to say centheat:
	say "You gasp in lust, and then gasp at the suddenness of the feeling. You look down to see your green cunt begin to wink open and closed, light green juices running from it and down your legs.";
	if centaurmate is 1:
		say "You think returning to your mate would be a good remedy.";
	otherwise:
		say "You don't know what to do. Maybe you could hole up in the bunker until it is over.";




Section 5 - Endings

when play ends:
	if humanity of the player < 40:
		if centaurmate is 1:
			say "You return to your mate in the plains, and bear him many children, each time becoming more like him until you look as if you were made for each other. Evntually your growing herd needs more space, and you overthrow one of the nearby herds, turning them all into sex slaves for yours.";
			say "When the rescue arrives, they section off the plains with electrical fences and try many ways to disarm the nanites remotely, all without effect. A few years later, they just enlose you in a concrete tomb with fake light.";
			say "You get used to it over time, but it still stinks.";
		otherwise if the bodyname of the player is "Mutant Centaur":
			if cunts of player is 1:
				say "Your odd body attracts attention in the reviving world, as normal humans return, and you eventually give up the struggle to be normal, and offer rides and pulling services to those at a nearby farm. You mate with the horses there when the need arises, but the rejection of the centaurs still weighs on your shoulders for years.";
			otherwise:
				say "Your cock everntually shrivels off, much to the surprise of your doctors, and you become the subject of much study, a genderless centaur, and are pampered for the rest of your life.";
		otherwise if compressedcock is 1:
			say "Your bleeding cock catches the attention of the authorities, but they are still unable to save it.";
			if the bodyname of the player is "human" and the cunts of the player is 0:
				say "You are one of the few genderless humans, and people come to you with opportunities for those who are barely affected by lust and/or will not lose control in a sexual situation. These new clients pay richly for the assurance of your services.";
	otherwise:
		if centaurmate is 1:
			say "You return to your mate, and entice him back home, where you bear him many children, after you change. The neighbors are slightly fearful, but they are also quick to ask for help if they cannot carry something, or if their children want a ride.";
			say "You are not fully trusted, however, the green growths inside you and on him prevent that. The surveillance goes away after a few years, the mysteries explained to those in charge in some way.";
	if centaurmate is -1:
		say "The rejection of the centaurs hurts, especially when one walks over you as if it didn't see you to prove its point.";

	
	
	
[ Edit this to have the correct Name as wall]




Centaur ends here.
