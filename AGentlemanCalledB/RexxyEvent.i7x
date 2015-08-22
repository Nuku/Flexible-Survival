Version 3 of RexxyEvent by AGentlemanCalledB begins here.
"Adds a Adds an Alpha Retriever NPC and associated scenarios to the Flexible Survival game"
[Version 3 - Overhaul of code for saving and future content.]

Section 1 - Event

ForcedAdoption is a situation.

The sarea of ForcedAdoption is "High".
when play begins:
	add ForcedAdoption to badspots of guy;
	add ForcedAdoption to badspots of girl;
	add ForcedAdoption to badspots of furry;

Instead of Resolving a ForcedAdoption:
	if hp of Rex is 0:
		say "     As you walk down the street of what remains of an upscale neighborhood on the outskirts of the high rise district, you spot a figure up ahead and duck out of sight before they spot you. As the figure gets closer you see that she is an attractive female canine with a thick coat of golden fur, much like the other retriever girls you've seen around the district. From your hiding place you can see she is clutching something against her ample chest with both hands.";
		say "     She glances around nervously as she walks, when suddenly another figure, a large powerful looking male retriever, steps out of a nearby alley into her path, cutting her off. The retriever girl runs into him and stumbles backward, falling to the ground and dropping whatever she was carrying. Without even acknowledging the male's presence, she begins scrambling around on all fours, looking for her prize, until she comes face to face with his erect canine cock. Slowly she looks up over his body until she is staring lustfully into his eyes. The large male then reaches down and picks up the entranced girl, carrying her back down the alley he emerged from as she whimpers needfully.";
		attempttowait;
		say "     Once you are certain the pair is gone you get up from your hiding place and walk over to where they were standing. as you glance around you spot the object the retriever girls was so obsessed with, an unusual sex toy shaped like a canine cock on one end with a bone shaped handle on the other. Against your better judgment, you feel compelled to pick the strange toy up, examining it more closely momentarily before slipping it into your bag and heading on your way, even as faint thoughts of doggie sex begin to creep into your mind.";
		increase carried of Dog Bone by 1;
		now hp of Rex is 1;
	otherwise if hp of Rex is 4:
		if Dog Bone is owned:
			say "     As you once again find yourself passing through a familiar neighborhood you are suddenly stuck with concern for you favorite toy. pulling it from your bag you hold it tightly to your chest. In a moment of clarity you realize this is the very same place you first acquired the toy... and saw its previous owner captured by a large male retriever. ";
			say "     You ponder just how similar a position you are in to hers when you are suddenly grabbed from behind. You are spun around to see the large, sexy, male canine face to face before he presses his muzzle to your face, drawing you into a deep kiss.  Your mind is flooded with the thoughts and desires of the retriever bitch you have been becoming, your infection driven to new a new lust fueled high by the his deep kiss and powerful male scent.";
			attempttowait;
			say "     The large male breaks off the kiss and starts to introduce himself.  You try to reign in your mind, struggling to control the growing urges of the retriever bitch clawing at your thoughts, but in doing so you barely managed to hear any of what he says, other than his name, Rex. While he looks you over, a smile crossing his muzzle as he spots the doggie dildo clenched in both hands against your chest.";
			say "     'I see that wonderful bone has brought another lovely bitch right to my doorstep.  Why don't you come inside so we can start training you to be a proper pet?' he says, wrenching the bone from your grasp as he finishes. He then turns to a nearby house, motioning you towards the large doggy door as he enters through the front.";
			delete Dog Bone;
			now Rex's Place is known;
			now hp of Rex is 5;
			say "[bold type]Rex's Place is now known.[roman type]";
			now ForcedAdoption is resolved;
		Otherwise:
			Say "     Once again, you find yourself in the neighborhood where you saw the golden retriever girl being abducted by the large male. As you walk by nervously you find your thoughts once again drawn to your beloved doggie sex toy, feeling an overwhelming urge to return to where you left it and play with it again.";
			increase bonelust by 1;
	Otherwise:
		say "     Once again, you find yourself in the neighborhood where you saw the golden retriever girl being abducted by the large male. As you walk by nervously you find your thoughts once again drawn to doggie sex and the strange toy you picked up.";

Section 2 - Doggy Bone

Table of Game Objects (continued)
name	desc	weight	object
"Dog Bone"	"An unusual looking sex toy with a pointed canine cock on one end, and a bone-shaped handle on the other."	1	Dog Bone
"Dog Treats"	"A brown paper bag, emblazoned with the logo of François['] bakery, full of deliscious, meaty smelling dog treats."	1	Dog Treats

Dog Treats is a grab object. It is not temporary.
Dog Treats has a usedesc "[GourmetDogTreatsUse]".
the scent of Dog Treats is "	The Gourmet Treats have a rich, meaty aroma.".

To say GourmetDogTreatsUse:
	say "     Peering into the bag you hungrily eye up the wonderful smelling treats, but keeping your plan to escape Rex in mind you quickly close up the bag again and stow it in your pack before your hunger gets the better of you.";

doggyboned is a number that varies. [Used to track uses of bone, after meeting Rex counts number of fucks for pethood offers.]
bonelust is a number that varies. [tracks time without using bone or fucking Rex, increases sanity loss over time]

Dog Bone is a grab object.
Dog Bone has a usedesc "[DogBoneUse]".
Dog Bone is infectious. The strain of Dog Bone is "retriever". It is not temporary.

the scent of Dog Bone is "The bone shaped doggie dildo smells strongly of canine sex, much like the bitch you acquired it from.".

To say DogBoneUse:
	if hp of Rex is 1:
		say "[DogBoneScene1]";
		infect "Retriever";
		decrease humanity of player by 3;
		now hp of Rex is 2;
	otherwise if hp of Rex is 2:
		if cunts of player > 0:
			say "[DogBoneScene2f]";
		otherwise:
			say "[DogBoneScene2m]";
		infect "Retriever";
		decrease humanity of player by 3;
		now hp of Rex is 3;
	otherwise if hp of Rex is 3:
		if cunts of player > 0:
			say "[DogBoneScene3f]";
		otherwise:
			say "[DogBoneScene3m]";
		say "[fullRetrieverTF]";
		decrease humanity of player by 6;
		now hp of Rex is 4;
		now bonelust is 1;
	otherwise if hp of Rex is 4:
		if cunts of player > 0:
			say "[DogBoneScene4f]";
		otherwise:
			say "[DogBoneScene4m]";
		infect "Retriever";
		now bonelust is 1;
		decrease humanity of player by 4;

An everyturn rule:
	if HP of Rex > 3 and hp of Rex < 50:
		if bonelust > 10:
			say "     The instincts caused by the retriever infection and the burning need caused by the canine sex toy dominate your mind almost completely. You struggle to maintain some small part of yourself as the thoughts of the retriever bitch you're becoming begin to be indistinguishable from your own. You need to find some way to sate this burning need now, else you will surely lose yourself completely to these desires.";
			increase bonelust by 1;
			decrease humanity of player by 15;
		otherwise if bonelust > 6:
			if a random chance of 1 in 2 succeeds:
				say "     You struggle to resist the urges of the retriever bitch which the infection is trying to make of you, but its grip on your mind tightens. Your body burns with desire as the lewd daydreams of doggy sex dominate your thoughts. Perhaps you could relieve some of this lust with some playtime with [if hp of Rex > 6]Rex[otherwise]your beloved dog bone sex toy[end if]?";
				increase bonelust by 1;
				decrease humanity of player by 9;
		otherwise if bonelust > 3:
			if a random chance of 1 in 3 succeeds:
				say "The Retriever urges and desires continue clawing at your mind, growing more powerful. you catch yourself panting occasionally as the canine sex dreams invade your thoughts more frequently.";
				increase bonelust by 1;
				decrease humanity of player by 6;
		otherwise if hp of Rex > 3:
			if a random chance of 1 in 4 succeeds:
				say "You feel the retriever infection pawing at the back of your mind and a warm tingling deep within you as your mind drifts to thoughts of large male canines and their rigid knotted cocks.";
				increase bonelust by 1;
				decrease humanity of player by 3;


Section 3 - Rex's Place

Rex's Place is a room. It is fasttravel. It is private. 

The description of Rex's Place is "     Crawling on all fours through the doggy door you find yourself in a small but surprisingly tidy single room home. There are even a few pictures still hanging from the walls, mostly featuring an attractive blonde woman and her large Golden Retriever. As you spot Rex sitting in the back with his happy retriever sexpet, there is little doubt in your mind as to what became of the woman in the pictures.".
Rex is in Rex's Place.
Karen is in Rex's Place.
Treat Jar is in Rex's Place. 

The description of Treat Jar is "     Sitting on the table next to Rex's seat is a large glass jar full of bone shaped cookies. You find your mouth watering and stomach growling as you stare at the doggy treats. Rex spots you eyeing them longingly and a canine smile crosses his muzzle, 'If you want a treat, you're going to have to beg like a good little sexpet,' he informs you.".
the scent of Treat Jar is "Between the smell of canine sex pervading Rex's small house and the thick glass, you can't even catch a whiff of the scent from the jar full of doggy treats.".

treatbegging is an action applying to nothing.

Understand "beg Rex" as treatbegging.
Understand "beg treat" as treatbegging.
Understand "treat beg" as treatbegging.
Understand "beg for treat" as treatbegging.

Check Treatbegging:
	If Treat jar is not visible, say "eh?" instead;

Carry out Treatbegging:
	say "     Unable to deny your hunger for the bone-shaped treats any longer, you quickly find yourself on all fours in front of Rex, Whimpering and begging for one of the small cookies. He smiles intently as he pulls one of the treats from the jar, telling you to sit like a good doggy. As you sit patiently in front of him Rex reaches out and places the treat on the end of your nose, the delicious scent of it making your mouth water even more. When Rex finally signals you to eat the treat, you drop it to the floor and pounce on it instantly, eating the entire thing in one bite. As you lick the final crumbs from your chops, you begin to think how much you'd like another even as you realize how much of yourself you are losing to the happy retriever sexpet Rex is training you to be.";
	decrease hunger of player by 10;
	if hunger of player < 0, now hunger of player is 0;
	infect "Retriever";
	decrease humanity of player by a random number between 4 and 8;

the scent of Rex's Place is "The air here is thick with the scent of canine heat and sex.  You find the powerful musk of the large male lounging on a couch in the back especially arousing, thoughts of pleasing him like a proper pet drift into your mind as he eyes you intently.".

Section 4 - Rex

Rex is a man.
The description of Rex is "[Rexdescribing]".
The conversation of Rex is { "rextalk" }.

to say Rexdescribing:
	say "     Lounging on a couch near the back of the room is a large retriever male. On the table beside him, you spot the doggy bone sextoy he took from you when you first met.  But as you begin to think of a way to get your prize back, you find you attention drawn to his large sheath doggy cock, your goal of getting the toy back slips from your mind as you begin to wonder how much more fun the real thing must be.";

the scent of Rex is "     The large retriever carries the strong musk of a virile male, and the scent of doggy sex clings to his fur constantly thanks to his frequent playtime with his happy retriever sexpet.".

instead of conversing the Rex:
	if hp of Karen is 3 and Dog Treats is owned:
		say "     You slowly approach Rex, sliding your bag off your shoulders as you step towards him. As you get close Rex's ears suddenly perk up and he begins sniffing the air around you, 'Is that wonderful scent what I think it is?' Rex asks, eagerly trying to peer into your bag.";
		say "	You hesitate a moment before reaching into your sack for the treats, you may only get one shot at this, are you sure you're ready? (Y-make you escape attempt now! N-hide the cookies from Rex, you're not ready to escape just yet.)";
		if the player consents:
			say "     With a knowing grin you reach into you backpack, digging out the bag of treats you retrieved from the bakery. Rex begins panting heavily as you pull the brown paper bag out, even drooling a bit from the corner of his mouth. 'My lovely stray bringing ME a treat? and how did you know these were my favorite?' Rex asks happily as you drop the bag into his waiting paws. With a sharp whistle he calls Karen over before digging into the bag. He divides the treats up into a few small piles, pushing one towards Karen who barks happily in response before digging in. Next he offers one pile to you, which you politely refuse, despite a strong desire to enjoy the share he's offering you, With a confused smirk and a shrug Rex combines your pile with his own before he begins eating. With the two retrievers seemingly distracted by your gift you slowly begin creeping around the room, carefully approaching your prize sitting on a side table near Rex's favorite seat. Soon the bone is within your grasp again, you reach out to take it but stop just short when you hear a low growl behind you. Slowly turning around you find yourself face to face with Rex, apparently your little distraction wasn't enough to occupy him long. You glance towards the door on the other side of the room, then back to Rex, realizing that it's unlikely you'll be able to get past with him blocking your escape. Trying to flee this situation is probably not an option.";
			now hp of Karen is 4;
			now inasituation is true;
			challenge "Retriever";
			now inasituation is false;
			if fightoutcome is 30:
				say "     You jump back and grab the bone off the nearby table, deciding to try and make a break for it. Unfortunately your earlier assessment was quite correct and as you try to weave past Rex he steps back to block your escape, catching you by the throat as you collide with him. Before you have a chance to react he lifts you into the air and throws you to the ground, knocking the wind out of you and sending the bone flying out of your grasp.";
				now fightoutcome is 20;
			if fightoutcome >= 10 and fightoutcome <= 19:
				say "	Looking over Rex's beaten form you feel a familiar need welling up inside you, but this time there's something different. Deep inside you a new desire is rapidly growing, A need to take what you want from the beaten canine, rather then the submissive desire to have it given to you.";
				if cocks of player > 0:
					say "     Unable to resist these powerful new urges long you're soon reaching for the limp canine, propping his furred ass in the air as best you can before moving into position behind him. Softly stroking your would-be master's furred ass with one hand you stroke your [cock size desc of player] [cock of player] shaft to full attention with the other before driving it into the canine below you. Rex whimpers beneath you at your sudden entrance. However, despite his clear displeasure at the situation you notice Rex bracing himself against the floor as you pull back and prepare to sink into his pucker again, some small part of him apparently accepting this outcome. Before long Rex has all four paws firmly planted on the floor, pushing his arse backwards to meet each of your thrusts while groaning wantonly beneath you. Your fucking grows increasingly powerful with each push, being fueled by the swelling dominant desires washing through you. You howl in pleasure as you reach climax, driving yourself into Rex one last time as you drain your balls into his bowels, Rex groans in frustration beneath you, clearly on the verge of his own orgasm as your fucking comes to a stop, denying him of the release. Collapsing on top of Rex your body is filled with a pleasant cooling sensation,  soothing the overwhelming lust and clearing your mind of his taint.  Even as your twitching member gives it's last few spurts of cum, you begin to drift from consciousness as the squirming canine beneath you tries to pull himself free with a weak whine.";
				otherwise:
					say "     Unable to resist these powerful new urges long you're soon reaching for the limp canine, and after rolling him onto his back you reach for his thick member, stroking it to full attention as he whimpers at your touch. Stepping over the beaten canine you begin lowering yourself onto his pointed cock, reaching behind yourself to ensure it's properly aligned with your [if cunts of player > 0]dripping cunt[otherwise]ass[end if]. With a sigh of relief you slowly lower yourself onto his firm rod, [if cunts of player > 0]your cunt quivering with pleasure as the pointed member spreads you open[otherwise]your cheeks spreading easily for the pointed member[end if]. Rex groans beneath you, clearly beginning to enjoy the feeling despite his displeasure at the situation. When you finally feel the swelling canine knot pressing at your [if cunts of player > 0]pussy lips[otherwise]ass[end if] you pause for a moment, staring into the eyes of the canine below you with a smirk until he looks away. With your dominant position asserted you eagerly begin riding the thick shaft buried within you, rocking back and forth as you slide up and down the engorged member.  Riding him faster and harder you soon feel Rex's swollen knot pressing deeper into your wanton entrance, and with a howl of ecstasy you throw all your weight into one final thrust, driving the knot into your body [if cunts of player > 0]as you both reach[otherwise]as Rex reaches[end if] a powerful climax[impregchance]."; 
					say "     You brace yourself on Rex's shoulders [if cunts of player > 0]as orgasm wracks your body, delighting in the sensation of Rex's warm seed, trapped by his knot, flows into your womb while you bask in the afterglow of your own climax[otherwise]as you enjoy the sensation of Rex's warm seed surging into your body, trapped deep within you by his knot[end if]";
					if cunts of player > 0:
						say ". Even as Rex's twitching member is giving it's last few spurts of cum you start your slow rocking motion again, riding the whimpering canine below you to several more orgasms before you are finally sated";
					say ". As exhaustion begins to overtake you, you let yourself collapse atop Rex, your body filled with a pleasant cooling sensation soothing the overwhelming lust and clearing your mind of his taint, drifting out of consciousness as the squirming canine, still tied to you by his knot, tries to pull himself free with a weak whine.";
				attempttowait;
				say "     As you awaken sometime later, the first thing you see is Karen looking down on you. Scrambling to your feet, you scan the room quickly, expecting Rex to be waiting to exact his revenge, but find the room empty save for the attractive female canine smiling at you. 'Calm down, he's gone' Karen informs you as she steps closer 'Went scampering out with his tail between his legs as soon as he was able to pull free.' Breathing a sigh of relief you let your guard down for just a moment before finding yourself in Karen's embrace. hugging you tightly, pressing her ample assets against your chest, Karen licks your cheek lightly before whispering her thanks in your ear. 'My mind is so much clearer since he left, I feel a little like myself again.' she says, releasing you from her warm hug 'If you hadn't come along, I....I don't even want to think about how I might have ended up...'";
				say "     Reaching out to wipe away the tear welling in her eye, you do your best to comfort the poor girl. Leaning into your hand, a smile creeps across Karen's face, 'Thank you' she says again quietly 'Do you think...I could come with you? I can't stay here in case Rex comes back, but I don't know if I would fare any better against the other monsters out there, please?' Wiping the fresh tear from her face you consider her request for a moment and come to the same conclusion, she's far too vulnerable right now to leave alone, and so you agree to bring her with you.";
				say "     With an excited squeal she pulls you in for another quick hug before dashing around the house collecting a small bag of supplies. After gathering your own things and preparing to head out you pause for a moment, considering finding and bringing that strange bone with you, but when a quick glance around the room doesn't reveal it, you decide it's probably best to leave it behind anyway.'";
				now Retriever Girl is tamed;
				say "     (The Retriever Girl is now tamed! You can make her your active pet by typing [bold type][link]pet Retriever Girl[end link][roman type] and initiate sex with her while active by typing [bold type][link]fuck Retriever Girl[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
				now carried of Dog Treats is 0;
				now KarenTimer is turns;
				now hp of Rex is 50;
				now HP of Karen is 5;
				now Rex's Place is unknown;
				move player to high rise district;
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:
				say "     After roughly knocking you to the floor Rex Pads over to a nearby cupboard and starts digging in it with a heavy sigh. 'I hate resorting to this' he says, while pulling a thin blue collar out of the cupboard. 'But I can see that if we don't get your properly 'trained' you're going to continue being a problem.' Rex kneels down beside you, reaching around your head to fasten the collar around your neck, before taking hold of it and standing up. He unceremoniously begins dragging your limp body towards the back room by your new accessory, throwing you face first onto the bed with your legs hanging over the side and your rear presented for him.";
				say "     Grabbing you roughly by the hips, Rex positions you just as he wants before driving his entire length into your unprepared[if cunts of player > 0] cunt[otherwise] ass[end if] in one sharp motion, causing you to yelp in pain. With his swelling knot pressed against your [if cunts of player > 0]pussy lip[otherwise]cheek[end if]s Rex takes a firm grip of your shoulders, pressing your face down into the bed as he begins fucking you. Despite your efforts to maintain control, your eager body soon begins responding to the dominant canine, and as waves of pleasure begin to cloud your mind you find your grip slipping.";
				say "     As Rex's pace quickens you start to become a more active participant in the rough fucking you're receiving, pushing your hips back to meet his thrusts as best you can even as your mind screams out to resist. You feel his thick knot pressing deeper and deeper against [if cunts of player > 0]your cunt[otherwise]asshole[end if] and your body longs to have it within you, but just as it is about to tie you together Rex stops, leaning down overtop you with a low chuckle.";
				say "     'Beg for it.' he whispers in your ear 'Beg like a proper little bitch, a good little pet.' He slowly being shifting the swollen knot that your body so wantonly desires, teasing and tormenting you simultaneously until you're crying out in submission, pleading to have the large canine tie with you. Finally with one final push Rex drives the knot into your body, shattering your wold with intense climax as his hot seed blasts deep into your body.";
				say "     Before you've even had a chance to fully recover Rex begins his rhythmic pounding again, sending fresh waves of delight through your eager body further clouding your mind in the lustful haze, fucking away the last remnants of your humanity with each powerful thrust. As your master continues his relentless pounding you begging to lose focus on anything but the wonderful cock and delightful knot tying you to him, everything begins to fade and time slips away as your training continues until you finally black out after what feel like a wonderful eternity.";
				say "[fullRetrieverTF]";
				wait for any key;
				now hp of Rex is 49;
				now humanity of player is 0;
				end the story saying "Your mind is lost to the retriever infection, submitting to life as Rex's newest happy sexpet.";
				wait for any key;
				follow the turnpass rule;
				stop the action;
		otherwise:
			say "     Deciding you're not quite ready to follow through with your plans you hide your bag behind your back, playing dumb as best you can in response to Rex's questions about it's contents. Eventually Rex tires of trying to discover the bag's contents and turns to leave you be.";
	otherwise if hp of Rex is 5:
		say "     'Ah, glad to see you've come to accept my offer' the large male says, waving a small blue collar towards you.";
		if humanity of player is less than 10:
			say "     Realizing his intent the retriever bitch that has been slowly taking control of your mind snaps to the forefront, consuming you entirely. You pad over to Rex happily and kneel down in front of him, allowing him to affix the collar around your neck, once down he pets the top of your head softly as your look up at your new master and smile, already imagining the new life ahead of you.";
			say "[fullRetrieverTF]";
			wait for any key;
			now hp of Rex is 10;
			end the story saying "     Your mind is lost to the retriever infection, submitting to life as Rex's newest happy sexpet.";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		otherwise:
			say "     You realize Rex's intent immediately and push the collar away, informing him that you have no intention of submitting to him. 'That's too bad,' Rex replies. 'It really would be much easier for both of us if you just gave in now, but I'm sure I'll have plenty of opportunity to change your mind,' he says with a smirk as he glances back at your bone sitting in the back of the room. 'After all, who else is going to help you control those urges your struggling with?'";
			say "     'But enough of that, let me show you around our home,' Rex says as he begins touring you around the small house.  Finally he introduces you to Karen, the other retriever in the home, who you quickly recognize as the girl you saw Rex grab earlier and the original owner of the bone that drew you here. As Rex introduces you properly she smiles at you knowingly, apparently somehow recognizing you as well.";
		now hp of Rex is 6;
	otherwise if hp of Rex > 9:
		say "     [one of]Isn't life as a pet some much simpler, I hope your enjoying it as much as Karen does.[or]'your such a good  pet.' Rex says, patting you on the head softly.[or]'You make such a lovely pet,' Rex says, giving the small tag on your collar a light swat. aren't you glad you decided to stay with us?'[or]'Go ahead and do whatever you feel you need to do out in the city, just make sure you come home when you're done' Rex says, trying to hide the worry in his expression.[or]Before you can say anything Rex pulls you close into a deep kiss, his long canine tongue plays in your mouth as he holds you tight against himself. By the time he breaks off the kiss your left speechless, your lust fogged mind having forgotten what you intended to speak with him about.[at random]";
	otherwise if hp of Rex is 9:
		say "     'So, have you reconsidered my offer yet?' Rex asks, pulling the familiar blue collar from behind his back and brandishing it in front of you. 'Now that we've spent more time together, surely you must see how much better life is here then out wandering the city alone.'";
		say "     Will you accept Rex's collar and a place as his newest pet? (Y/N)";
		if the player consents:
			say "     As you stare at the thin blue collar in Rex's paw-life hand, you find yourself longing to reach out and accept it. Unsure if it's the infection, your lust, or maybe even your own personal desire, you tentatively reach out to take the collar from Rex. Turning it over slowly in your hands, you become more and more sure this is what you want the longer you hold the lovely leather collar. Finally you look up into Rex's eyes, staring deeply into to them for a moment before nodding in acceptance. A broad genuine smile creep across his face as Rex gently takes the collar from you, reaching around your neck to fasten the small buckle behind your head. When Rex steps back to admire your fully you look down to look at your new accessory, running your fingers over the small silver bone shaped tag, realizing it even has your name engraved on it already.";
			say "     When you finally look up the first thing you see is your new master, still smiling contently at you. Stepping forward to embrace him you bury your face in his shining golden fur, nuzzling him affectionately as he whispers in your ear. 'You made the right choice', he says, 'you'll love your new life here with us.' Realizing the finality of this statement you find your thoughts drawn back to the city, the people and things out there you might have left undone. As if knowing your concern Rex releases you and takes a step back, 'But I can tell there are still things out in that city you need to do.' he starts, placing a paw on your shoulder, 'If you really must, you can go out there and do as you please, but make sure you return home as soon as you've finished, after all, this is where you belong.' All you can manage is a nod in response before Rex returns to his business, leaving you alone to ponder the consequences of this decision.";
			now hp of Rex is 11;
		otherwise:
			say "     Pushing the collar away, you inform Rex you still have no intention of giving in and becoming his pet";
			now hp of Rex is 6;
			if hp of Karen is 0:
				say ". As Rex walks away dejectedly you realize he probably isn't going to give up on making a proper pet out of you, and with the powerful urges his infection causes you're unsure how long you'll be able to continue resisting his offers. Perhaps you should try and find a way to escape his grasp.";
				say "     Glancing around the room looking for ideas, you Spot the dog bone sex toy that got you into this mess you realize that while you may not have a way to prevent the urges it caused, if you could get your hands on it at least you wouldn't need to see Rex to curb your need. Unfortunately Rex always seams to keep a close eye on the toy, You'll need to find some way to distract him before making your move";
				now hp of Karen is 1;
			say ".";
	otherwise:
		say "     [one of]'Karen is so much happier now that she's become my pet rather than the other way around. You really should give in and join her.'[or]'Would you like a treat?' Rex says, gesturing to the large jar of cookies beside him.[or]'Why don't you come over here and let me show you how nice life as a retriever sexpet can be?'[or]'It must be difficult finding relief without that dog bone sex toy huh?' the large male says with a mischievous grin.[or]Rex doesn't seem to notice you as he twirls a small blue collar in his paw like hand, looking up he spots you, and waves the collar towards you, trying to entice you to put it on.[or]'Are you sure you don't want to stay here with Karen and I? Life as a pet is so much easier, and I'll even be sure to give you some lovely pups to play with.'[or]'Rex doesn't seem to be interesting in talking as he rolls around on the floor, playing with Karen.'[or]'Rex lies sleeping on the couch with Karen in his arms, she smiles at you vacantly, almost making you jealous of the simple happy life she must now lead.'[or]'Why don't you just stay a while with us, I'm sure you'll come to enjoy your time here.'[at random]";

Instead of fucking the Rex:
	[puts Retriever as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Retriever":
			now monster is y;
			break;
	if lastfuck of Rex - turns < 8:
		if hp of Rex > 10:
			say "     'Oh, my lovely little pet is back for more fun already?' Rex says with his familiar grin, 'I don't know if I'm ready to go again yet, and it certainly wouldn't be fair to Karen if I keep spending all my time with you now would it?'";
		otherwise:
			say "     'Back again ready? Are you sure you're here because you really need it or are you just starting to enjoy my company?' Rex says with a mischievous grin. 'either way, I don't think I'm ready to go again, so I guess you'll just have to wait' He continues, his smirk broadening even more.";
	otherwise:
		if hp of Rex > 9:
			if bonelust > 6:
				say "[RexPetHighLustScene]";
			otherwise if bonelust > 3:
				say "[RexPetMedLustScene]";
			otherwise:
				say "[RexPetLowLustScene]";
		otherwise if bonelust > 6:
			say "[RexTrainHighLustScene]";
		otherwise if bonelust > 3:
			say "[RexTrainMedLustScene]";
		otherwise:
			say "[RexTrainLowLustScene]";
		infect "Retriever";
		now bonelust is 1;
		decrease humanity of player by 5;
		now lastfuck of Rex is turns;
		if humanity of player < 10:
			attempttowait;
			if hp of Rex > 9:
				say "     Eventually you find the energy to rise from your rest, but you find the that this time the lust induced fog in your mind never fully clears, the last of your concerns in the city begin to fade away, lost in this haze. Finally you realize everything you could ever want is here, in your home with your loving master Rex, why did you ever want to continue wandering that city to begin with?";
			Otherwise:
				say "     As you begin to rise you see Rex has left that damned blue collar laying out on a nearby counter for you to see again, but this time something clicks inside you, his 'training' seemingly finally have taken hold you reach out and pick up the collar, fastening it around your neck without a second thought.";
				say "     All your other concerns seam to drain away as the retriever infection takes full control of your mind and body, shaping you into another perfect sexpet for you new owner. Eagerly you return to him, finding him waiting for you on his couch at the back of the room, the broad smile on his face as he see you in the collar filling you with pride. He motions for you to join him laying on the couch, and you happily snuggle up against him. You begin to drift off to sleep as he scratches your ears, telling you that you made the right decision, and you can't help but agree as you drift off into slumber, dreaming off all the wonderful times in your new life ahead of you.";
				now hp of Rex is 10;
			wait for any key;
			say "[fullRetrieverTF]";
			end the story saying "Your mind is lost to the retriever infection, submitting to life as Rex's newest happy sexpet.";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		otherwise:
			attempttowait;
			if hp of Rex > 9:
				say "     Eventually you find the energy to rise from your rest, rubbing the tag of your collar idly as you collect your thoughts and prepare to return to your tasks.";
			otherwise:
				say "     You eventually return to your senses, the fog seaming to have lifted from your mind once again and you note the burning desires within you seem to have diminished, but so has some of your resistance to Rex and the retriever infection.";
				if hp of Rex < 9, increase hp of Rex by 1;


Section 5 - Karen

[Moved to Karen.i7x file.]


Section 6 - Rex Pet Events

Every turn when the player is in Rex's Place and Rex is visible:
	if hp of Rex > 9:
		if lastfuck of Rex - turns > 14:
			say "[RexPetLongWait]";
			infect "Retriever";
			now bonelust is 1;
			decrease humanity of player by 5;
			now lastfuck of Rex is turns;
		otherwise if lastfuck of Rex - turns > 10 and a random chance of 1 in 5 succeeds:
			if a random chance of 1 in 2 succeeds:
				say "[RexPetMedWait1]";
			otherwise:
				say "[RexPetMedWait2]";
			infect "Retriever";
			decrease bonelust by 4;
			decrease humanity of player by 5;
			decrease lastfuck of Rex by 4;
		otherwise if a random chance of 1 in 5 succeeds:
			let T be a random number between 1 and 5;
			if T is 1:
				say "[RexPetScene1]";
			if T is 2:
				say "[RexPetScene2]";
			if T is 3:
				say "[RexPetScene3]";
			if T is 4:
				say "[RexPetScene4]";
			if T is 5:
				say "[RexPetScene5]";

Section 7 - ALL the scenes

to say fullRetrieverTF:
	[puts Retriever as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Retriever":
			now monster is y;
			break;
	now tailname of player is "Retriever";
	now facename of player is "Retriever";
	now skinname of player is "Retriever";
	now bodyname of player is "Retriever";
	now cockname of player is "Retriever";
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;

to say DogBoneScene1:
	say "     You pull the unusual doggy bone from your bag, intending to get a better look at it now that you're in a more secure location, but as you turn the realistic looking cock in your hands you soon find your thoughts consumed with a desire to taste it.";
	say "     Tentatively at first, you give the tip of the shaft a few small licks but soon you've graduated to broadly licking across its entire length. As strange new thoughts of doggy sex start filling your fogged mind, you find yourself with most of the rod in your mouth, happily sucking away like a good bitch."; 
	attempttowait;
	say "     You come to your senses some time later, blushing sheepishly over what you've been doing you slip the toy back into your bag, not even noticing the changes your fun has caused until some time later.";

to say DogBoneScene2f:
	say "     You pull the bone from your bag again and your mind is already flooded with thoughts and images of doggy sex. Without a second thought, you quickly strip you gear off, intent on using the toy as it was obviously intended to be used.";
	say "     Slowly at first you begin to push the tip of the doggy dildo into your moistening folds, savoring this feeling of the first penetration as long as you can, but as the familiar warm tingling feeling begins to overtake you again the pace steadily quickens.";
	say "     In your mind, you imagine yourself being taken by a handsome retriever stud. Driving his large canine cock into you again and again as you bark and yip in pleasure beneath him.";
	say "     When your orgasm finally strikes you are snapped back to reality by the rush of liquids soaking your hands and thighs.";
	attempttowait;
	say "     As you lay there recovering, a part of you wonders, even worries, about the power this simple sex toy seems to be taking over you.";
	say "     You wonder if continuing to use it is a good idea as you take stock of the new changes it has caused in your body, but those worries are soon pushed away when your mind begins to wander to dreams of doggy sex once again while you gather your things to leave.";

to say DogBoneScene2m:
	say "     You eagerly dig your doggy dildo from your bag once again as you look for a safe place to stop and enjoy yourself.";
	say "     Despite the desire burning inside you, you lack the equipment to use the toy the way it was intended. Deciding to go with the next best thing, you lick and suck at on the artificial shaft until it is well lubricated by your saliva before bringing the pointed tip towards your eager ass";
	say "     You can't help but whimper and moan as you slowly push the canine member into yourself, a familiar warm tingling sensation begins to overtake your body and mind, filling your head with lewd imagery of canine sex.";
	say "     One image in particular begins to come into focus above all the others, that of yourself under a large male Retriever. Soon you begin to lose track of reality, focusing only on the image of yourself being taken by this large canine, when he finally drives his length home, forcing his swollen knot into your tight pucker you do the same, forcing full length of the dildo into yourself with a howl of pleasure before finally passing out.";
	attempttowait;
	say "     You awaken some time later, the bone shaped sex toy still buried in your ass. As you pull the toy from yourself with a whimper you can't help but wonder if it's a good idea to continue using it. Taking stock of the new changes it has caused in your body you ponder the powerful effect it seems to have over your body and mind, but by the time you've gathered your things and prepared to venture out into the city again your concerns have already started giving way to familiar daydreams of canine sex.";

to say DogBoneScene3f:
	say "     Eagerly, you dig your canine sex toy from your bag once again and find a safe spot to stop and enjoy yourself, without even considering the consequences you are quickly naked and teasing your female passage with the pointed tip of the canine cock.";
	say "     You slip into the trance-like state again as you being dreaming about the same handsome canine stud, only this time the figure beneath him is indistinguishable from the retriever bitch your originally acquired the bone from. In a moment of clarity you realize you're even beginning to identify yourself as just another retriever bitch.";
	say "     Despite this moment of resistance you are soon overwhelmed by the burning need between your legs once again, and despite your fear of how it will affect you, you drive the entire length of the dildo into yourself, hilting the bone shaped handle against your nether lips.";
	say "     Your world shatters in the intense pleasure and having given into it your retriever infection kicks into overdrive. The last of your concerns about this wonderful bone are washed away as it rapidly reshapes your body to better suit your new self image.";
	attempttowait;
	say "     Once you recover from your intense orgasm you pull the dildo from your  cunt with a wet slurp and begin licking it clean of your juices. All the while telling yourself how glad you are that you decided to pick it up after that other silly bitch left it behind, as it's definitely the best toy you've ever had.";
	say "     Eventually you gather your things and set out on your way again, carefully stashing your bone back in your bag as you put your equipment back on your wonderful new retriever body.";

to say DogBoneScene3m:
	say "     Eagerly, you dig your canine sex toy from your bag once again and find a safe spot to stop and enjoy yourself, without even considering the consequences you are quickly naked and teasing your back door with the pointed shaft.";
	say "     As you begin driving the dildo into yourself again, your free hand is drawn to your [if cocks of player > 0]own erect cock, slowly working it's length at the same pace[otherwise]featureless crotch, rubbing against it futilely as you moan in pleasure[end if].";
	say "     You welcome the familiar warmth as dreams of large canine studs begin to flood your mind, the same image of a large male retriever mounting a smaller figure beneath him once again comes to the forefront, only this time you realize the figure beneath him is indistinguishable from the retriever bitch your originally acquired the bone from.";
	say "     You are struck with a moment of clarity, realizing even your own self image is beginning to shift towards that of a retriever bitch, but despite this resistance you are soon overwhelmed again by the need burning within your and you find yourself howling in pleasure as you drive the canine cock into yourself.";
	say "     With one final powerful thrust you push the entire length of the canine shaft into yourself, hilting the handle against your cheeks [if cocks of player > 0]pushing your over the edge into the ecstasy of orgasm, your own twitching member unleashing your hot, thick seed into the air[end if]. As you bask in the afterglow of your [if cocks of player > 0]climax[otherwise]fun[end if] you feel the warm tingling throughout your body intensify, the retriever infection working rapidly to reshape your body to match your new self image, washing away the last of your concerns about this wonderful bone in the process.";
	attempttowait;
	say "     After you come to your senses some time later you can't help but wonder how that other silly bitch could have let this wonderful bone slip from her grasp, while your clean up and gather your things. It's definitely the best toy you've ever had you tell yourself, admiring your perfect new retriever body as you slip the toy back into your bag and head back out into to the city.";

to say DogBoneScene4f:
	say "     You begin panting eagerly when you realize you have another free moment to play with your favorite sextoy. By the time you've stripped off your clothes and dug the bone from your bag, you already feel the familiar warmth filling your body.";
	say "     As you being driving the pointed tip of the dildo into your moist, needy slit your mind quickly returns to the same fantasies of yourself being taken over and over by that handsome retriever alpha. Soon, your pace driving the dildo into your body is perfectly synchronized with that of the stud in your fantasy and as he makes that final powerful thrust, forcing his large knot into you howling in the pleasure of his orgasm you do the same, pushing the entire length of the cock into yourself, your own howls of pleasure echoing through the streets around you.";
	attempttowait;
	say "     After cleaning yourself up and gathering your equipment once again, you set out into the city, the burning need between your legs having been curbed again for now.";

to say DogBoneScene4m:
	say "     A familiar dull fog beings to cloud your mind as your draw the canine dildo from your bag once again, your already sucking on it happily by the time you find a safe place to stop and have your fun.";
	say "     You eagerly begin forcing the already wet shaft into your ass as the familiar warm tingling and lewd dreams begin to fill your body and mind. Your moans and howling echo in the streets around you as you work the toy in and out of your tight hole matching the pace of the canine stud in your fantasy.";
	say "     Before long the pleasure overwhelms you, and with one final howl the handle of the canine dildo is once again hilted against your cheeks before you slip out of consciousness.";
	attempttowait;
	say "     You awaken shortly afterward and after cleaning yourself up you gathering your equipment once again before you set out into the city, the burning need inside you curbed again for now.";

to say RexPetHighLustScene:
	if cunts of player > 0:
		say "     You approach your master whimpering needfully, and upon seeing you that familiar smug smirk creeps across his canine face. Consumed by the desire burning within you stumble and fall to all fours, making the last few steps towards the object of your desires on your hands and knees. Squeezing Rex's leg tightly you continue begging and whimpering, pleading for him to help sate the fiery need in your lions. Finally he raises, patting your head gently as he stands. 'Anything for my lovely pet' he says, running a paw along your back as he move behind you causing your entire body to shudder with anticipation, 'What kind of owner would I be if I let you continue suffering like this?'";
		attempttowait;
		say "     Without another word he begins stroking your hips softly as he starts teasing your dripping slit with the tip of his Canine cock. You can't help but yip loudly as he thrusts his tool into you, spreading your feminine passage before him as you push back to meet him, filling your cunt with as much of his slick pointed cock as you can. With each thrust you feel his swelling knot teasing your outer folds and, eager to have him fill you completely, you push back with increased vigor matching every thrust he makes while the pace quickens. You howl in pleasure as your cunt finally stretches enough to allow his wonderful knot inside you, the rush of your feminine juices soaks your thighs as it gushes out around Rex's rod, but he leaves you little time to recover from your first climax, beginning to hump you in earnest again moments later. Each movement pulls and teases the knot inside you, quickly bringing you towards a second climax. With one final powerful thrust he pushes both of you over the edge, howling in unison as his throbbing members fills your womb with virile retriever seed, finally quenching the fire inside you, for now.";
		attempttowait;
		say "     Exhausted, you both collapse to the floor, still tied together by his knot. Rex begins stroking the back of your head softly as he lay atop you, both of you still basking in the afterglow of your intense orgasms. 'isn't this nice?' he whispers into your ear, 'Aren't you glad you decided this was the life you wanted? There's always more what that came from.' Eventually Rex's knot has softened enough that he can pull himself free, leaving you whimpering for a moment at the sudden empty feeling. He slowly climbs to his feet, taking a moment to rub your full belly before returning to his business, leaving you to finish recovering on your own.[impregchance]";
	otherwise:
		say "     Rex looks deep into your eyes as you move towards him, eager to have him sate the powerful desire within you. Seeing the look in your eyes he smiles knowingly and places an arm around your shoulder, leading you off towards his bed in the back room. Leaning heavily against your master as you walk, you take a deep breath of his strong male scent, leaving you panting heavily by the time you reach your destination. Rex gives you a light swat on the ass as you jump onto the bed and present your rear to him.";
		attempttowait;
		say "     Soon you feel Rex's weight upon you, his broad chest pressing against your back as he mounts you, forcing his thick canine shaft into your ass with a low groan. He takes a moment to pet the back of your head softly and whisper into your ear what a good pet you are before he begins fucking you hard and fast, each thrust driving his length deeper and deeper into your ass. As you begin bucking back against him, matching his pace drive for drive you begin to feel his swelling canine knot teasing against your eager pucker. This powerful fucking continues for some time, your entwined bodies mirroring each other's movements perfectly until finally Rex makes one final powerful thrust, causing you to yip in surprise as he drives his swollen knot into you. He howls in pleasure as you feel his powerful member unleash a torrent of seed deep into your bowels, the warm sticky feeling filling your body as you both collapse onto the bed.[impregchance]";
		attempttowait;
		say "     You lay there tied together by his know for some time, Rex scratches behind your ear while licking and nipping the back of your next affectionately while he basks in the afterglow of his climax. Eventually you both drift off to sleep, Rex's softening knot still buried inside you.";

to say RexPetMedLustScene:
	if cunts of player > 0:
		say "     Slowly you approach Rex, taking breathing deeply, taking in the strong male scent growing stronger as you get closer to your master. Rex motions for you to take a seat beside him, and you happily oblige. With you head leaning against his shoulder Rex gently scratches behind your ear as he tells you what a lovely pet you've become. Soon Rex's gently scratching stops and he reaches around your body, lifting you into his powerful embrace. AS he carries you to the back room where his bed awaits while you bury your face in the soft fur of his powerful chest, bathing yourself in his arousing scent. Rex gently lays you on the bed before laying down beside you.";
		attempttowait;
		say "     He pulls you closer to himself, licking you on the cheek a few times before locking you in a deep kiss. As his long canine tongue darts around your mouth you feel his paw like hands roaming your body, rubbing, stroking and teasing you in all over. Each touch sends electric shivers through your already aroused body, causing you to moan needfully despite your lips still being locked with his. Finally Rex breaks off the kiss, 'Your Such a good girl' he says, before rolling both of you sideways, leaving himself on top of you.";
		attempttowait;
		say "     Rex reaches down and begins positioning himself to guide himself into you, and you eagerly spread your legs before him. Slowly he begins Driving the pointed tip of his canine cock into your already soaked cunt, Your legs wrap around his body, trying to pull as much of him into yourself as you can. As you feel his already swelling knot teasing the other lips of your passage he leans forward, almost pressing his chest against yours giving your cheek one final doggy kiss before he begins fucking you eagerly. His slow, deliberate thrusts soon quicken and you body easily matches his rhythm, eagerly trying to pull as his large canine knot into your needy slit. You howl in the pleasure of orgasm beneath him as your opening finally stretches enough to allow that wonderful knot inside, and Rex momentarily slows his thrusts, drawing your pleasure out as long as possible before he resumes his earlier pace. After a long powerful fucking you finally feel Rex's body tense up above you, you both howl in unison as his pulsing member fills your womb with his virile seed, leaving you feeling full and satisfied as Rex release finally comes to an end.";
		attempttowait;
		say "     You both lay there, locked together by his knot for some time, your passage still convulsing around his rod, milking him for all he's worth. As the afterglow finally begins to fade Rex gives you a few final licks on the cheek as he pulls his softening manhood from you, letting your combined juices overflow out onto the bed. He pats your on the head a few times, telling you what a good girl you are before getting up and leaving you to recover on your own.[impregchance]";
	otherwise:
		say "     Rex smiles broadly as you approach, standing to embrace you in a powerful hug as you get near. 'My favorite little he-bitch, back for some more attention?' he whispers in your ear, giving your ass a possessive squeeze before releasing you. Holding you close under one arm you walk together to the back bedroom, reaching the foot of the bed before he lets you go. With one hand he pushes down on your shoulder, maneuvering you onto your knees in front of him as he sits on the edge of the bed. All you attention is drawn to the erect doggy cock before you, your hands moving gingerly to stroke and rub it's length. soon its entire length as well as your hands are slick with Rex's pre. Rex pats your head softly as he raises to his feet again, eyeing you hungrily as he circles you several times. Finally he stops behind you, bending down to grasp your thighs firmly repositioning you on all fours, presenting your rear for him.";
		attempttowait;
		say "     He begins teasing your tight pucker with the pointed tip of his cock, lubing your entrance with his still dribbling pre before slowly but firmly pushing into you. You whimper needfully as he drives his length deep into you, your body eagerly spreading before him. Rex's pace increases steadily, driving more and more of his shaft into your bowels with each thrust and soon his deep groans are mingling with your own sharp yips, marking each push he makes into you.  Finally he can take no more and with one last thrust he forces most of his length into you, his large knot pressing against the outer lips of your asshole. His throbbing member begins pouring his hot load deep into you, filling your body with the warmth of his canine seed.[impregchance]";
		attempttowait;
		say "     As you enjoy the last few twitching spurts of his tool still buried inside you, Rex leans forward, pressing his furred chest against your back, nuzzling your neck and giving you one last lick on the cheek before he stands up and pulls out, leaving you feeling empty save for the warm sticky load left deep inside you. He pats you softly on the head as you lower yourself to the floor, Rex watches you relax with a grin before stepping back out into the living room, closing the door behind himself as he leaves you laying on the floor with a vapid smile, enjoying the warm tingling deep inside you.";

to say RexPetLowLustScene:
	say "     Rex smiles as you approach. 'Mmm, aren't you an eager little pet, back again already?' he says with a smile, motioning you to come close, the tip of his shaft beginning to poke out of its sheath. Your soon kneeling on the ground between his thighs, face to face with his knotted rod, Panting eagerly. Rex begins scratching behind your ears as he guides your head towards his pointed canine cock. You eagerly begin licking and sucking at his shaft, soon taking most of its length into your mouth, your head bobbing merrily as you suck and tease him, all the while Rex continues petting and scratching the back of your head while guiding you. Meanwhile you hands have wandered too your own [if cunts of player > 0]dripping cunt[otherwise if cocks of player > 0]slick cock[otherwise]featureless groin[end if], rubbing and stroking yourself furiously while you enjoy your master's cock.";
	attempttowait;
	say "     Soon Rex begins moaning out loud as his grip on your head tightens and he forces his entire shaft down your throat. You feel his knot swelling in your mouth, the entire shaft throbbing and twitching as it begins spurting cum down your throat. Rex howls in pleasure, draining his balls into you, filling your tummy with his warm seed. [if cunts of player > 0]You moan around his rod as he fills you with his seed, the combination of Rex's powerful orgasm and your fingers furiously fucking your own cunt driving you to orgasm as well, soaking your hand and thighs with cum before you set to work cleaning the last of Rex's seed from your lips and his still twitching cock.[otherwise if cocks of player > 0]You moan around his rod as he fills you with his seed, the combination of Rex's powerful orgasm and your furiously stroking driving you to orgasm as well, your semen spurting powerfully from your spasming tool before you set to work cleaning the last of Rex's seed from your lips and his still twitching cock.[end if]";
	attempttowait;
	say "     Rex releases your head and lays back against his seat, panting happily in the afterglow of his orgasm. you climb up alongside your master, resting your head on his shoulder, rubbing your full belly contently as you drift off to sleep.";

to say RexTrainHighLustScene:
	if cunts of player > 0:
		say "     Wanting to maintain some semblance of yourself you struggle to control your bodies urges at you approach Rex. The mental battle to control the overpowering urges is a difficult one, requiring all your willpower just to keep yourself from leaping into his arms, begging him to fuck you senseless.";
		say "     Apparently recognizing your struggle Rex watches intently, a smug smirk across his muzzle, obviously amused by your losing battle against powerful need caused by the retriever infection and that strange bone.";
		say "     Finally you can take no more, falling to your hands and knees, giving in to your bodies desires once again. You crawl forward to Rex, begging him to help sate the fiery desire consuming you. He draws his response out for what seems like a lifetime, clearly still enjoying watching you squirm under the influence of the infection. Your already trying to take the edge off yourself, two fingers working deep into your dripping cunt with no avail by the time Rex finally agrees.";
		attempttowait;
		say "     Standing up, he motions towards the back bedroom, but before he even begins to step away you grab his leg, holding him back. Not wishing to wait any longer You look up at him pleadingly. 'Or I could take you here and now, on the floor like a proper bitch.' he says looking down into your eyes, still grinning fiendishly. You've already bobbed your head in agreement before he's even finished speaking and release his leg, turning to present yourself eagerly as soon as he's made the offer.";
		say "     Without another word Rex moves behind you, stroking your hips softly as he begins teasing your already soaked slit. You can't help but yip loudly as he thrusts into you the first time without warning, but when he pulls back and prepares to drive into you again you are prepared for him, bucking back to meet him. With each thrust you feel his swelling knot teasing your outer folds and, eager to have him fill you completely, you push back with increased vigor matching every thrust he makes while the pace quickens.";
		say "     You howl in pleasure as your cunt finally stretches enough to allow his wonderful knot inside you, the rush of your feminine juices soaks your thighs as it gushes out around Rex's rod but he leaves you little time to recover from your first climax, beginning to hump you in earnest again moments later.";
		say "     Each movement pulls and teases the knot inside you, quickly bringing you towards a second climax. With one final powerful thrust he pushes both of you over the edge, howling in unison as his throbbing members fills your womb with virile retriever seed, finally quenching the fire inside you, for now.";
		attempttowait;
		say "     Exhausted, you both collapse to the floor, still tied together by his knot. Rex begins stroking the back of your head softly as he lay atop you, both of you still basking in the afterglow of your intense orgasms. 'isn't this nice?' he whispers into your ear, ' Are you sure this isn't the life you want to live?'";
		say "     Eventually Rex's knot has softened enough that he can pull himself free, leaving you whimpering for a moment at the sudden empty feeling. He slowly climbs to his feet, taking a moment to stretch with a low groan before returning to his business, leaving you to finish recovering on your own.[impregchance]";
	otherwise:
		say "     Rex looks deep into your eyes as you stumble towards him, struggling to not lose yourself entirely to the overwhelming urges welling up inside you. Seeing the pleading look in your eyes he smiles knowingly and places an arm around your shoulder, leading you off towards his bed in the back room. By the time you reach your destination your mind is made up, you can't resist the powerful need burning inside you any longer, and as your resistance slips away once again you lean heavily against Rex, taking a deep breath of his powerful male scent as you reach the bed.";
		say "     Eagerly you climb onto the bed in front of him, panting heavily as you turn to present your rear to him. Soon you feel his weight atop you reaching around your chest as he mounts you like a proper bitch, forcing his thick canine shaft into your ass with a low groan. He fucks you hard and fast, each thrust teasing your pucker as his knot rubs against you. He quickens to an almost frantic pace as you buck back against him, meeting every push with a push of your own before he suddenly pulls out.";
		say "     You look back in confusion to see him stroking his dripping rod with a low growl before he grabs your shoulder with his free hand, forcefully turning your body to face him just as he erupts, thick streams of his hot seed coating your chest and face as he howls in pleasure. Once his twitching canine cock stops spurting the thick seed he brings his crotch in close to your face, allowing you to lick and suck his length clean. You happily lap up the last droplets of cum from him before he rolls off you, panting happily as the lick the last of the salty deposit from your lips. Idly he scratches your head as he basks in the afterglow of his climax, not saying a word before he slowly drifts off to sleep.";

to say RexTrainMedLustScene:
	if cunts of player > 0:
		say "     As you approach Rex you become keenly aware of the powerful need burning inside you, and Rex's powerful male musk only serves to increase the desire to submit to him. You know giving in to these urges is exactly what Rex wants you to do, but at the same time the need only seems to becomes more unbearable the longer you resist.";
		say "     As if sensing your internal struggle Rex steps forward, placing his paw like hand on your shoulders he leans in close to whisper in your ear, his soft touch sending shivers through your body. 'It's alright,' he whispers. 'You don't need to resist these feelings.' His overwhelming scent is almost intoxicating to your lust-addled mind at this proximity, you barely manage a weak nod before falling into his embrace.";
		attempttowait;
		say "     After a few moments, Rex breaks the hug and bends down to pick you up, carrying you to the back room where his bed awaits while you bury your face in the soft fur of his powerful chest, bathing yourself in his arousing scent. By the time you've reached the bed the last of your resistance has long since slipped away and your bodies urges have taken full control, leaving you panting in anticipation as Rex gently lays you on the bed.";
		say "     Slowly at first, he begins petting and stroking your body, each touch sending electric shivers through your already aroused body. He progresses slowly up your body, rubbing, petting and even scratching in all the right places, eventually reaching your head. he reaches back and begins scratching behind your ears softly as he leans in close once again and licks you cheek.";
		say "     By this point you realize he's laying almost completely on top of you and without stopping the delicious doggy kisses he reaches down and begins guiding his rod to tease the outer folds of your feminine passage. You can't help but moan in delight as he begins to slowly push himself deeper into you, your legs wrapping around his body trying to speed up his slow, deliberate thrusting. As his pace quickens your body begin to match his rhythm, matching each of his thrusts, trying to force as much of him into you as possible.";
		say "     With each push you feel more and more of his canine knot pushing into you, only to be pulled back again teasingly. Finally Rex's pace begins to reach its peak and with one final powerful thrust and your bucking back to meet him the entirety of his knot is forced into you, sealing you together as you both howl in pleasure.";
		say "     You both lay there, locked together for some time, your passage still convulsing around his rod, milking him for all he's worth. As the afterglow finally begins to fade Rex gives you a few final licks on the cheek as he pulls his softening manhood from you, letting your combined juices overflow out onto the bed. He pats your on the head a few times, telling you what a good girl you are before getting up and leaving you to recover on your own.[impregchance]";
	otherwise:
		say "     Slowly you approach Rex, still struggling your decision to have him help you sate the need burning in your body. Rex smiles broadly as you finally give in to the urges and ask for his 'help' in the matter. 'I'd love to show you more of what it's like to be a proper pet. You seem to be lacking the proper equipment, but I suppose we make due though.' he says as he smacks your ass firmly before heading off to the back bedroom.";
		say "     You follow close behind him until he pauses and turns to face you. Without warning he leans in and gives you a quick peck on the cheek before scooping you up off the floor and placing you on the bed, He maneuvers you onto all fours 	with your rear facing him before he climbs onto the bed behind you. you can't help but moan softly as he teases your tight pucker with one finger before gripping your ass firmly with both hands. He strokes his erect dripping canine cock up and down your rear a few times, lubing you up with his dribbling pre before slowly but firmly pushing into you. The feeling of your insides being spread before him easily overwhelms your lust fogged mind and your already moaning deeply under him before he starts humping in earnest.";
		say "     Rex's pace increases steadily, driving more and more of his shaft into your bowels with each thrust and soon his deep groans are mingling with your own sharp yips, marking each push he makes into you.  Finally he can take no more and with one last thrust he forces most of his length into you, his large knot pressing against the outer lips of your asshole. His throbbing member begins pouring his hot load deep into your bowels, filling you with the warmth of his canine seed.[impregchance]";
		say "     After finally draining his balls Rex gives the back of your head a soft pat and your ass another firm smack before pulling his still dripping shaft from your body. You collapse onto the bed as he dismounts you leaving the room with a small chuckle. He calls back to you as he reaches the door. 'Maybe next time we do this I can show you what it's like to be a proper bitch? I know you must be looking forward to that.' He says before stepping back out into the living room, closing the door behind him. You find a part of yourself agreeing silently as you lay on the bed with a vapid smile, enjoying the warm tingling sensation deep inside you.";

to say RexTrainLowLustScene:
	say "     Rex smiles as you approach. 'Look who's back, feeling a little needy are we?' he asks. 'Don't know if I'm in the mood to play right now, but I guess I could give you a little taste. 'he says with a smile, motioning you to come closer, the tip of his shaft beginning to poke out of its sheath.";
	say "     You're soon kneeling on the ground between his thighs, face to face with his knotted rod. You find yourself licking your lips in spite of yourself. Rex begins scratching behind your ears as he guides your head towards his pointed canine cock.";
	say "     As your urges begin to take over you eagerly begin licking and sucking at his shaft, soon taking most of its length into your mouth, your head bobbing merrily as you suck and tease him, all the while Rex continues petting and scratching the back of your head while guiding you.";
	say "     Soon Rex moaning out loud as his grip on your head tightens and he forces his entire shaft down your throat. You moan around his rod as you feel his knot swelling in your mouth, the entire shaft throbbing and twitching as it begins spurting cum down your throat. Rex howls in pleasure, draining his balls into you, filling your tummy with his warm seed.";
	say "     Rex releases your head and lays back against his seat, his cock still dripping as he pulls it from your mouth, panting happily in the afterglow of his orgasm. After licking the last few droplets of cum from his shaft and your lips you slouch to the ground in front of him, rubbing your full belly contently for some time.";

to say RexPetLongWait:
	say "     Rex approaches you purposefully, with a look in his eyes you could easily mistake for hunger, 'It's been quite some time since we've spent any 'special' time together.; Rex says, eyeing your body up and down as he slowly moves behind you. 'Don't you want to be a good pet and show your master how thankful you are?' He asks, placing a paw on each of your shoulders. You feel a familiar burning need welling up inside you as Rex gently massages your shoulders, and it rapidly grows worse as he starts grinding his firm cock against your backside. With your lust fogged mind finding no reason to disagree with him you are soon nodding vacantly, allowing yourself to be gently steered towards the nearby bed.";
	if cunts of player > 0:
		say "     Upon reaching the foot of the bed Rex turns you around slowly, giving you a quick doggy kiss on the cheek before pushing you onto the bed. Wasting no time with foreplay he eagerly pounces on your needy body, only taking a moment to drive two wriggling fingers into your cunt to ensure your good and wet before he begins positioning his throbbing maleness. Gone is Rex's usual slow tender lovemaking, replaced by an almost feral dominance. Rex releases a low groan as he pounds into you, his already swollen knot teasing your netherlips within the first few thrusts. This long powerful fucking has you cum several times before Rex finally manages to force his knot into you, leaving you howling in both pleasure and pain as you stretch around the seemingly larger than usual mass of flesh. Rex pauses for a moment, panting heavily above you as he stares int your eyes. After a few moments you can't help but look away, and when you do Rex resumes his eager humping, tugging and teasing the knot inside your body as he thrusts his hips against yours. finally you feel his entire body tense up above your, a low growl quickly grows into a sharp howl as his twitching cock unleashes a torrent of thick, hot semen, draining his swollen balls into your womb.";
		attempttowait;
		say "     Finally spent Rex collapses on top of you, sighing contently. He lays there from some time waiting for his knot to soften enough to free himself, and as he does he seems to return to his usual tender loving self, licking and nuzzling you affectionately while he waits. When he is finally able to pull himself from your well used cunt he does so with an audible pop, leaving you whimpering at the sudden void as he takes his leave. You lay there alone for some time, a mixture of Rex's seed and your own cum dribbling from your overflowing cunt, as you ponder this previously unseen dominant side of your canine owner, uncertain whether or not you want to keep him waiting again.[impregchance]";
	otherwise:
		say "     Upon reaching the foot of the bed Rex nuzzles the side of your face from behind, grinding his erection against your back one last time before he pushes you onto the bed. Wasting no time with foreplay he eagerly pounces on your prone body, only taking a few moments to wet two fingers with his dribbling pre, working them in and around your tight hole to ensure your well lubed before positioning his throbbing maleness. Gone is Rex's usual slow tender lovemaking, replaced by an almost feral dominance. Rex releases a low groan as he pounds into you, his already swollen knot pressing against your cheeks within the first few thrusts. This long powerful fucking has you moaning lewdly beneath him for some time before Rex finally manages to force his knot into you, leaving you howling in both pleasure and pain as you stretch around the seemingly larger than usual mass of flesh. Rex pauses for a moment, panting heavily above you as he gently strokes the back of your head. eventually he resumes his eager humping, tugging and teasing the knot inside your body as he thrusts his hips against yours. finally you feel his entire body tense up above your, a low growl quickly grows into a sharp howl as his twitching cock unleashes a torrent of thick, hot semen, draining his swollen balls into your body.";
		attempttowait;
		say "     Finally spent Rex collapses on top of you, sighing contently He lays there from some time waiting for his knot to soften enough to free himself, and as he does he seems to return to his usual tender loving self, licking and nuzzling you affectionately while he waits. When he is finally able to pull himself from your tender pucker he does so with an audible pop, leaving you whimpering at the sudden void as he takes his leave. You lay there alone for some time, Rex's overflowing seed slowly leaking from your ass, as you ponder this previously unseen dominant side of your canine owner, uncertain whether or not you want to keep him waiting again.";

to say RexPetMedWait1:
	say "     You can't help but notice Rex trying to subtly call Karen over. As you watch out of the corner of your eye you see Rex whispering something into Karen's ear, both of them glancing over at you frequently. With each word Karen becomes noticeably more excited, her expression brightening rapidly and her ears perking up in anticipation.";
	attempttowait;
	say "     After a short while the conversation comes to an end, Karen trembling with excitement as Rex reaches over to a nearby table picking up that familiar bone shaped sex toy. Before you have a chance to realize what they've been planning Karen has already taken the bone from Rex and begun charging towards you, barking happily as she tackles you to the floor. Karen give one last excited bark before she begins licking and nuzzling you affectionately.";
	if cunts of player > 0:
		say "     After the playful show of affection Karen quickly turns around and you quickly realize her intent when she begins driving the pointed tip of the canine dildo into your moist cunt. you can't help but release a small yip or bark each time she pulls the bone back and forces it into you again. Before long you are howling in pleasure beneath her, her relentless assault on your needy cunt pushing you to orgasm several times before she finally puts the bone aside and begins licking you clean.";
		attempttowait;
		say "     You lay there beneath her for some time, your passage still spasming  from your final climax as you pant happily in the afterglow. eventually you spot the bone shaped toy laying beside you, and without a second though you reach for it, and still distracted lapping up the last of your juices Karen is caught completely off guard when your spin and flip her onto her back. You set about returning the favor, pounding the synthetic cock into her sopping folds as she moans and withers beneath you.";	
		attempttowait;
		say "     You fuck you playmate with the toy for some quite a while, pushing her to climax several times before you finally rest, collapsing on top of her in exhaustion, both from your own orgasms and the time spent returning the favor in kind. Karen wiggles out from beneath you, turning around to lay next to you, face to face. She licks you face affectionately a few times before snuggling up close to you and drifting off to sleep. You pant happily as you lay next to her, but before you join her in drift off your attention is pulled away by a low moaning, looking around you see Rex still back in his seat furiously stroking his own canine cock, clearly excited by the show his two pets put on for him.";
	otherwise if cocks of player > 0:
		say "     she pushes the bone into your hands before she turns, exposing her raised tail to you while she begins lick and sucking at your rapidly rising maleness. Needing no further prompting you begin teasing the outer lips of her feminine folds with the pointed tip of the toy, causing her to moan in delight around your hard shaft. The faster you begin working the canine dildo into her dripping slit the more enthusiastically she sucks on your throbbing cock, and before long you've worked each other to the edge of climax. Finally you can't take it anymore, thrusting your hips forward, pushing your shaft deep into Karen's muzzle, fillings her mouth with your warm seed. At the same time you give the bone a final powerful thrust, her howls of pleasure are muffled by your own climax in her mouth, but you know you've struck home when the rush of feminine fluids gushing from her cunt soak your head and torso.";
		attempttowait;
		say "     When you are both finally spent, Karen collapses atop you, both of you panting happily in the afterglow. Your attention is pulled away from the moment by a low moaning, looking around you see Rex still back in his seat furiously stroking his own canine cock, clearly excited by the show his two pets put on for him.";
	otherwise:
		say "     she pushes the bone into your hands before she turns, exposing her raised tail to you, Needing no further prompting you begin teasing the outer lips of her feminine folds with the pointed tip of the toy, causing her to moan in delight. The faster you begin working the canine dildo into her dripping slit the more enthusiastically she moans and barks, and before long you've worked her to the edge of climax. Finally she can't take it anymore, thrusting her hips forward, she meets your own thrust with powerful howls of pleasure, and you know you've struck home when the rush of feminine fluids gushing from her cunt soak your head and torso. When you she is finally spent, Karen collapses atop you, both of you panting happily. Your attention is pulled away from the moment by a low moaning, looking around you see Rex still back in his seat furiously stroking his own canine cock, clearly excited by the show his two pets put on for him.";

to say RexPetMedWait2:
	say "     Your attention is suddenly drawn to the far side of the room as Rex calls out your name. You stare at him quizzically as that all too familiar mischievous grin creeps across his muzzle, as you're about to return to your business Rex gives a sharp whistle, you hear the sound of clawed feet running across the floor behind you, and you are bowled over from behind before you have a chance to react. Held down by Karen sitting on your back you are helpless to resist her licking and nuzzling at your face and neck. Both of you are giggling playfully, wrestling on the floor by the time Rex joins in.";
	attempttowait;
	say "     The three of you play together  for some time, but soon the innocent fun begins to take a lustful turn. Playful nips and nibbles give way to lewd licking and sucking, innocent hugging and laughing becoming groping and moaning. Before long you find yourself kneeling between Rex's spread legs, furiously pumping his cock as Karen sits on his chest, moaning loudly while Rex's long tongue works deep into her sopping cunt. Soon they are both howling loudly, Rex's member throbs powerfully in your hands as it releases thick streams of his warm sticky cum, coating your face and chest in his virile seed. At the same time Karen's powerful release soaks Rex in her feminine juices, her musky scent mingled with Rex's, filling the room with their arousing fragrances.";
	attempttowait;
	say "     They both lay there for some time, panting heavily in their afterglow while you eagerly lick as much of Rex's seed from your body as you can, savoring the taste of his salty deposit. However, they soon begin to stir, and you suddenly find yourself staring into their faces as they eye you lewdly. The two of them pounce on you eagerly, leaving you no chance to escape, even if you wanted too. Their sudden sexual assault on your body is overwhelming, licking, nibbling, stroking and humping at every tender or pleasurable spot they can find, rapidly pushing you to climax and beyond several times before they release you.";
	attempttowait;
	say "     Finally sated the three of you lay snuggled together for some time, both you and Karen nuzzling at Rex's strong chest as he wraps his powerful arms around you. Eventually you all pass out together on the floor slipping into dreams of more lustful fun as you lay together in your sticky mess.";

to say RexPetScene1:
	say "     Rex surprises you with a big hug from behind, you feel his firm cock pressing into your back as he wraps you in his powerful embrace, he [if breasts of player > 0 and breast size of player > 0]gives your breasts a firm squeeze[otherwise]scratches your belly softly[end if] while licking and nuzzling your cheek affectionately. By the time he releases you, patting you on the head softly as he walks away, you are left panting with arousal, the familiar warmth once again washing through your body.";

to say RexPetScene2:
	say "     Rex gives you a firm smack on the ass as you walk past, causing you to yip loudly in surprise. When you turn to look at him all you get is a wink and that familiar mischievous smile, you can't help but smile in return while you stare into his eyes for a few moments before returning to what you were doing.";

to say RexPetScene3:
	say "     Karen calls out to you and Rex as she turns from the kitchenette, carrying three small plastic dishes filled with some sort of dried kibble. You suddenly find your mouth watering as she passes one dish to Rex before placing the other two on the ground in front of him. They both motion you over as she takes a seat at one of the dishes at Rex's feet, and you eagerly join her there. You are soon crunching the dried meal happily at the feet of your master, licking the whole bowl clean before Karen collects the dishes and you return to the task at hand";
	decrease hunger of player by 15;
	if hunger of player < 0, now hunger of player is 0;

to say RexPetScene4:
	say "     Without warning you are suddenly knocked over by a heavy weight from behind. You can hear Rex laughing out loud from the other side of the room as you try to push Karen off. She eagerly licks and nuzzles your face as you struggle beneath her. Eventually you give up resisting and return the affection, playing with her for a short while before she finally releases you, leaving you panting happily on the ground as she pads away happily.";

to say RexPetScene5:
	say "     You yip in surprise as you suddenly have a cold, wet feeling [if cunts of player > 0]between your thigh[otherwise]at your as[end if]s and you quickly turn around to find Rex on all fours behind you with an almost guilty look in his eyes. 'Sorry, I guess old habits die hard eh?' he says, taking another deep sniff of your groin before getting up leaving. You stand there somewhat shocked for a short while, confused by the conflicting feelings of violation and arousal before you shake your head clear and move on.";

Section 8 - Progression Values

[  hp of Rex   ]
[ 0 = not met        ]
[ 1 = done event once, received bone]
[ 2-4 = used bone  1-3 times]
[ 5 = met Rex, lost bone ]
[ 6-9 = "training phase, fucked Rex, pet offer at 9]
[ 10 = Pet game over  1]
[ 11= Accepted collar]
[ 49 = Defeated by Rex in escape quest]
[ 50 = Defeated Rex]

[  hp of Karen  ]
[ 0 = Default state        ]
[ 1 = Refused Rex offer @ Rex HP 9 ]
[ 2 = talked about bakery ]
[ 3 = Spoke to Francois, got cookies ]
[ 4 = Trigger Fight against Rex ]
[ 5 = Defeated Rex, default Pet Karen Value ]

RexxyEvent ends here.
