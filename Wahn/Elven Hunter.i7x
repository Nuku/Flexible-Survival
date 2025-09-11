Version 2 of Elven Hunter by Wahn begins here.
[Version 1.1 - Lembas Bread drop item]
[Version 2 - Gave him a name (Castien), and created an NPC]

[ Charisma of Castien - relationship with the player                                          ]
[  -1 - player displeased him                                                                 ]
[   0 - neutral                                                                               ]
[  1+ - player won before and pleased him                                                     ]
[  5+ - he respects the player                                                                ]


"Adds an Elven Hunter to Flexible Survival's Wandering Monsters table, with impreg chance"

a postimport rule:
	if BodyName of Player is "Elven Hunter", now BodyName of Player is "Elven Male";
	if SkinName of Player is "Elven Hunter", now SkinName of Player is "Elven Male";
	if FaceName of Player is "Elven Hunter", now FaceName of Player is "Elven Male";
	if TailName of Player is "Elven Hunter", now TailName of Player is "Elven Male";
	if CockName of Player is "Elven Hunter", now CockName of Player is "Elven Male";

to say GenerateTrophyList_ElvenHunter:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "lembas bread" to CombatTrophyList;
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "water bottle" to CombatTrophyList;
	if a random chance of (60 + LootBonus) in 100 succeeds: [common drop]
		add "jade coin" to CombatTrophyList;
	if a random chance of (40 + LootBonus) in 100 succeeds: [uncommon drop]
		add "purple berries" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "fur-lined armguards" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "elven knife" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "mithril necklace" to CombatTrophyList;
	else if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "arrowhead pendant" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say Hunter wins:
	project the Figure of ElvenHunter_icon;
	if HP of Player > 0: [player surrendered]
		if Charisma of Castien > 0: [player won over him before]
			say "     As you tell him that you give up, the elf looks at you with a baffled expression, then rolls his eyes in frustration. 'Oh, come on! What in this world - or any world - makes you think that it's a good idea to just... abandon the chase? Here I was, starting to feel you might be a worthwhile opponent after bested me in a previous hunt, only to be disappointed yet again. Humans, always ready to disappoint!' With that said, the elf silently vanishes into the shadows between the trees.";
			say "     [bold type]What standing you had in the elf's eyes just has taken a significant beating.[roman type][line break]";
		else if Charisma of Castien < 0: [player lost/surrendered to him before]
			say "     'Ugh, I had hoped against all reason that even a creature like you might learn over time. What foolery do you think you're doing? Hunting prey that just rolls over as soon as they're spotted is worthless.' Glancing you up and down, he scowls. 'What do you think I am? Pathetic like a degenerate human hunter, out to kill a creature that sleeps twenty hours each day to take home a lion trophy? We've watched you over the centuries and know how you act.' Making a shooing gesture at you with a fine-boned, slender hand, he sighs to himself. 'Even in the midst of their society's collapse, they refuse to learn. I hope I'll find some better prey than this for Auberon's hunt soon.' With that said, the elf silently vanishes into the shadows between the trees.";
			say "     [bold type]Your (already low) standing in the elf's eyes has dropped significantly.[roman type][line break]";
		else:
			say "     'Pathetic,' he sneers and shoves you to the ground. 'We had hoped this world would have finally brought forth something worthy of The Hunt again. A true warrior never surrenders.' He leaves you lying there, saying, 'You're not even worth sullying my blade. Do something useful with yourself - like serving as food for more worthy creatures.' He then silently vanishes into the shadows between the trees.";
			say "     [bold type]The so far neutral opinion the elf had of you just swung significantly towards the negative.[roman type][line break]";
		decrease Charisma of Castien by 2;
	else: [player was beaten in a fight]
		if BodyName of Player is "Wood Elf" or BodyName of Player is "Elven Hunter":
			say "     'And you want to call yourself an elf? Any novice hunter would have lasted longer in his first summer,' he scoffs at you. Pulling off your clothes, the hunter looks you over and touches your naked body, then remarks 'The tiny machines of this realm made you look the part, enough to fool pixies and lower fey. But believe me - you'll never be a true elf unless you get accepted for The Hunt.' ";
		else if ( BodyName of Player is listed in infections of ReptileList and SkinName of Player is listed in infections of ReptileList ):
			say "     The elf looks over your [bodytype of Player] form with disdain. 'You're already beaten? How disappointing. I had remembered those big lizards this world had a while ago with more cunning and strength. Oh well, maybe you're just an especially frail and sickly specimen. But you're certainly waking the hope for the existence of worthy prey in this realm.' ";
		[add other demons below as they are added to the game - left out the slutrat on purpose, as it's not a full demon the elf recognizes]
		else if BodyName of Player is listed in infections of DemonList:
			say "     The elf looks over your [bodytype of Player] form with disdain. 'A demon? Here? This is not your realm, creature. Go back where you belong - without the infernal energies of your home plane infusing you, you're pathetic. No challenge at all.' ";
		else: [generic text for creatures he doesn't specifically recognize]
			say "     The elf looks over your [bodytype of Player] form with disdain. 'You're already beaten? How disappointing. But finding a creature fit at least for the junior hunters gives hope that this world now has other, worthy prey again. A pity how quickly mortal races die off - those big lizards you had here a while ago had a certain reptilian cunning and made good hunting.' ";
		say "Pushing you to your knees, he stands in front of you and opens up his leather pants. 'Let's see if you are perhaps marginally better at providing another form of entertainment. Open up!'";
		say "     [bold type]Will you blow him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, the time to fight is over.";
		say "     ([link]N[as]n[end link]) - Clench your lips tight and shake your head.";
		if Player consents:
			LineBreak;
			say "     He pushes his long, human-like cock against your lips, with you obediently opening up to allow the erection to push into your mouth. As you begin to suck on the elf's member, your tongue playing over his shaft, he moans and holds on to you. You bob your head up and down on him, taking his cock deeper and deeper into your throat. Soon you find your nose bumping against the perfect and smooth skin of his pubic mount. 'Not bad, as a fucktoy,' he says under his breath, then takes hold of your head and starts to face-fuck you in earnest. Pumping in and out faster and faster, it doesn't actually take all that long until he orgasms, shooting his seed deep in your throat. After pulling out unceremoniously, the slender male wipes the spit and remnants of cum on his shaft off on your face. Stepping back to give you another inspecting glance, he gives a verdict of, 'Mhhh, that was... acceptable. With creatures like you here, we'll at least have something to keep ourselves busy with proper the hunts.' That said, he silently vanishes into the foliage, leaving you behind.";
			NPCSexAftermath Player receives "OralCock" from Castien;
			say "     [bold type]By servicing him, it seems you've more or less made up the points you lost for being defeated by the elf. Seems like his opinion of you didn't change much, in the positive or negative.[roman type][line break]";
		else:
			LineBreak;
			say "     He pushes his long, human-like cock against your lips, raising an eyebrow as you keep your mouth closed and turn your head away. 'I could just force you to do it, you know,' the otherworldly being says in a casual tone, smacking his erection in your face and rubbing it over your lips. He grabs hold of your head, bending it back so you can see his severe expression. 'Last chance now, submit!' the hunter adds, yet you simply shake your head as much as you can, with him still holding onto you. At that point, the hint of a smile crosses his face. 'Contrary till the very end, eh? If only you had shown such resilience during our fight as well. Still, this is a promising sign at least. Maybe I just encountered a particularly weak example of your people, with others having both the spirit and the strength.' It seems that the elf is picking his words specifically to goad and anger you, and you can see a hint of calculated contentment in his eyes as your features inevitably pull into a hostile stare.";
			say "     Then he starts to jerk off, fingers gripping his long, slender shaft and sliding up and down along its length. Soon, he drives himself over the edge, aiming his erection right at your face to cover it in fresh, elven cum. One of his spurts lands on your right eyelid, which you barely close in time to avoid the sting of cum getting on your eyeball. Keeping both eyes closed as a precaution after that, you obviously don't see anything further, but you hear the elf give a little chuckle, with his fingers grabbing your jaw and moving it left and right to inspect his handiwork. Then his voice comes, quite close to your ear so he must have bent down to you as he says, 'Think of this moment, when you wander the crumbling ruins of your world. Maybe a bit of humiliation and anger will motivate you to perform better next time. I look forward to that.' Everything is silence after that point, and by the time you wipe your face and can open your eyes again, the elf is long gone.";
			if Charisma of Castien < 2:
				say "     [bold type]Seems you've redeemed yourself from losing in combat by giving the elf resistance. He almost sounded impressed and eager at the end. Feels like you've got a plus point in his book now.[roman type][line break]";
				increase Charisma of Castien by 1;
			else:
				say "     [bold type]Seems you've redeemed yourself from losing in combat by giving the elf resistance. He almost sounded impressed and eager at the end. Still, without actually beating him, you don't think you'll get any further plus points in his book at this point.[roman type][line break]";

To say Hunter loses:
	project the Figure of ElvenHunter_icon;
	if BodyName of Player is listed in infections of DemonList:
		say "     Stepping back, the elf gives you a hateful stare. Even after all your blows, he still looks more than ready to continue the fight, although there is a sheen of sweat on his brow. 'You're stronger than expected, demon. Did you find some way to taint this world's essence with your infernal power?' Wrinkling his nose, he spits at your feet and continues, 'But I'm not here to vanquish vile beasts, just to survey a new and hopefully interesting hunting ground. But know this, creature - once our king is informed of your presence, I've no doubt all hunting parties will have orders to exterminate your filthy stain from existence wherever it is encountered here.' With that said, the elf murmurs a tongue-twister of arcane syllables under is breath and suddenly vanishes from sight. Faint, almost imperceptible sounds of footfalls tell you that he became invisible to extricate himself from your fight.";
	else:
		say "     'Well done,' the elf says with a smile on his lips. Even after all your blows, he still looks more than ready to continue the fight, although there is a sheen of sweat on his brow. He casually wipes that away, as if to show that he's got enough of toying with you, and clears his throat. ";
		if PlayerMet of Castien is false:
			say "'You should know that you have fought against Castien, scout of the Wild Hunt. Would you give me your name, in turn?' Wary about this sudden turnaround from combat to polite conversation, you tell him what to call you. '[if Player is not defaultnamed][name of Player]. That fits you well, I think. [end if]Well met.' ";
			choose a row with name of "Elven Male" in the Table of Random Critters;
			now enemy type entry is 2; [player knows his name]
			now PlayerMet of Castien is true;
		else:
			say "'Here we are again[if Player is not defaultnamed], [name of Player]. [end if]Thank you for proving that some creatures of this world are a worthy challenge.' ";
		say "That said, the elf gives you a nod of recognition, then looks you up and down. ";
		if BodySpeciesName of Player is "Elf" and FaceSpeciesName of Player is "Elf" and SkinSpeciesName of Player is "Elf":
			say "'Though maybe you long to be of another world, by your appearance? You almost do have the appearance of a real elf, though of course the difference is apparent by your aura. Still Auberon might deign to take on a local guide, and for your service you could become a true elf, not just a lookalike. Watch out for us if you hear the horns and present yourself, I might just put in a good word for you.' ";
		else if ( BodyName of Player is listed in infections of ReptileList and SkinName of Player is listed in infections of ReptileList ):
			say "'Maybe you are a fitting heir to the big lizards we hunted on this world in the past. I've many fond memories of hunting the dinosaurs, good to see the reappearance of something similar in cunning and strength. The Wild Hunt will be honored to take you on once we ride.' ";
		else:
			say "'The Wild Hunt will be honored to take you on once we ride. Always good to have some novel prey with unpredictable behavior.' ";
		say "Castien wiggles his eyebrows and winks at you, then adds, 'But for now, why don't we get to your reward for besting me?' His hands reach for his belt after doing so.";
		say "     [bold type]You seem to have impressed the elf, gaining you a point in his favor.[roman type][line break]";
		increase Charisma of Castien by 1;
		LineBreak;
		say "     [bold type]How exactly do you react to his offer of recreational sex?[roman type][line break]";
		say "[ElvenHunterVictoryMenu]";

to say ElvenHunterVictoryMenu:
	project the figure of ElvenHunter_hard_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him against a tree";
		now sortorder entry is 1;
		now description entry is "Take the elf from behind";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to take you (vaginal)";
		now sortorder entry is 2;
		now description entry is "Experience the elf's cock thrusting deep inside you";
	[]
	if Player is neuter:
		choose a blank row in table of fucking options;
		now title entry is "Let him caress your sexless form";
		now sortorder entry is 3;
		now description entry is "You don't have genitals, but you can still enjoy some time together";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Obtain a bottle of his cum";
	now sortorder entry is 4;
	now description entry is "Milk the elf's cock into a bottle";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Make some excuses and avoid sex for now";
	now sortorder entry is 100;
	now description entry is "Tell the elf that you're not up for sex at the moment";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Punch him in the nose";
	now sortorder entry is 101;
	now description entry is "Give the elf a pretty direct sign that you don't appreciate his high-nosed shit";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck him against a tree":
					say "[Castien_Fucked_Anal]";
				else if nam is "Tell him to take you (vaginal)":
					say "[Castien_Fucked_Vaginal]";
				else if nam is "Let him caress your sexless form":
					say "[Castien_Stroking]";
				else if nam is "Obtain a bottle of his cum":
					say "[Castien_Milking]";
				else if nam is "Make some excuses and avoid sex for now":
					say "[Castien_Decline]";
				else if nam is "Punch him in the nose":
					say "[Castien_Punch]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     As you simply turn around and walk away, you can hear the elf cluck his tongue and sigh. 'How rude. Oh well, that's what you get for visiting barbarian worlds.'";
			say "     [bold type]Castien really didn't like that.[roman type][line break]";
			decrease Charisma of Castien by 2;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	wait for any key;
	clear the screen and hyperlink list;

to say Castien_Fucked_Anal:
	say "     Only to happy to agree to the prospect of claiming your reward from this handsome being, you nod to him. Without further delay, Castien slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory, your cock instantly springing to attention. There is a little accent to him though, the tattoo of a beautiful little flower just where his back starts to flow over into the smooth curve of his right buttock. You reach out to touch it, which has Castien glance over his shoulder and smile. [if Player is herm]Then he says, 'I sense this realm's tiny machines have blessed you with both genders.' [end if]The elf's gaze wanders down to come to rest on your erection, his face now showing a lewd smirk. 'I see what you're interested in.' With that, he saunters over to the next tree, then braces himself against it. 'Bring it on!' As the naked hunter murmurs a few arcane syllables under his breath, you see a sheen of slick wetness appear, covering his crack and pucker. Certainly a very useful spell he knows there.";
	say "     Eagerly stepping up behind Castien, you rub your [cock size desc of Player] cock between the silky smooth cheeks of his ass, then align its head with his pucker and start to push in. The elf moans lustfully as you slowly sink yourself into him, expertly keeping his muscles tight and gripping around your shaft while still allowing easy entry into his lubed hole. As you bottom out inside him with your hips meeting the smooth buns of his ass, he grips the tree tightly and thrusts his rear back to envelop your shaft, 'Let's see how much staying power you have!' Following his lust-filled challenge, you pull out until only the very tip of your cock remains, then slide deep into him in one sharp thrust until your hips slap against his firm ass. The two of you fill the forest with moans and pants as you hold on to Castien's shoulders with both hands you pound into him, reveling in the vice-like grip he manages to keep your manhood in. The elf makes the most delightful sounds to accompany each new thrust and the things he can do with the muscles in his ass are just indescribable.";
	WaitLineBreak;
	say "     Not wanting this to be over too soon, you make yourself slow down a bit. As you let yourself rest for a moment with your [Cock of Player] cock deep inside its tight prison, your hands move over your partner's body, stroking over the smooth skin and feeling his hard muscles. Leaning your [bodydesc of Player] body lightly over his as your searching hands move to find his cock. It feels pretty long and smooth, bare of any imperfections, with a snug pair of balls just beneath. Delighting in the perfection of his physical form, his scent, just everything about the elf, you almost want to stay this way forever, deep inside as well as wrapped around your beautiful otherworldly visitor. Eventually though, as he seems to think that you've recovered enough, the elf starts moving his hips, fucking his own ass on your hard shaft and making both of you moan in pleasure. You join in, thrusting forward each time he pushes back, creating slapping noises each time his buns meet your hips.";
	say "     Soon, the arousal from you sliding in and out of the elf becomes too strong to be contained. You feel his perfect elven cock pulse in your hand as he splatters his seed all over the bark of the tree. His muscles around your cock convulse with each blast, driving you over the edge soon after. As you hold to him tightly, spurt after spurt of a massive load of cum blast through your [Cock of Player] cock and paint his insides. [if Player is herm]At the same time, your pussy gets dripping wet with femcum, which starts to run down the inside of your leg. [end if]You stay like that for a moment, just holding him until your cock shrinks and plops out of the elf's ass, bringing with it a thin line of cum slowly leaking out of him. Breathing heavily, the elf reaches down between his legs, feeling his freshly bred asshole and fingering it a little for good measure. 'Well done, for a primitive,' he pants in satisfaction, then turns around and gives you a long and deep kiss that seems to go on and on.";
	WaitLineBreak;
	say "     When you finally part after another long while of making out, the elf quickly grabs his clothes and weapon and starts to walk off into the forest, naked as he is and with your seed trickling down the insides of his legs. Glancing over his shoulder, he says, 'I really look forward to our next encounter. Be sure to be ready for a fight.' You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";
	say "     [bold type]He really liked you fucking him quite a bit. You think that gained you another point in his favor.[roman type][line break]";
	increase Charisma of Castien by 1; [bonus point because our elf really enjoys a good stuffing]
	NPCSexAftermath Castien receives "AssFuck" from Player;
	if "Flower Tattoo Seen" is not listed in Traits of Castien:
		add "Flower Tattoo Seen" to Traits of Castien;

to say Castien_Fucked_Vaginal:
	say "     Only to happy to agree to the prospect of claiming your reward from this handsome being, you nod to him. Without further delay, Castien slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory[if Player is herm], your cock instantly springing to attention. He smiles at you, then says, 'I sense this realm's tiny machines have blessed you with both genders. Though I think I know what your mood is set for right now.' [else]. [end if]Stepping towards you, the elf frees you from any clothing you might be wearing, revealing your naked [bodytype of Player] form. He guides you down to lay upon the discarded clothes, and kneels between your legs, kissing you softly on your nether lips. Before long, starts a line of soft kisses up your stomach and abs. He stops for a moment as he reaches your chest, playfully circling your nipples and licking them.";
	say "     Then the handsome elf moves up, putting pleasant little kisses on your shoulder and neck until he finally arrives at your lips and goes in for a long and deep kiss. When you pull back for air, your body tingling all over from the arousal that Castien has awoken, you notice something poking you in the stomach. Looking down, you see it's your partner's amazing cock, rock hard and ready. You take it in your hand eagerly, aligning it to your pussy while your other hand reaches around the lithe hunter, grabbing one of his firm buns and pulling him towards you. You both share a deep moan as his amazing cock sinks into your folds, rubbing against the walls of your pussy. He goes deeper and deeper, spearing you on his shaft until finally you feel the smooth skin of his balls against your hips. Then he pulls out almost all the way again and slides back in hard, starting a series of thrusts that leaves you panting in lust. While his cock expertly finds just the right spots inside you, his hands aren't idle either, stroking your body and playing with your nipples.";
	WaitLineBreak;
	say "     The skillful attentions of your otherworldly lover make you forget almost everything else around you, spreading pleasure into every fiber of your being. With a breathless scream, you climax, pussy getting dripping wet around his erection[if Player is herm] and your own cock starting to spurt out long strings of cum. [else]. [end if]At the same time, he never stops fucking you, constantly adding to the stimulation that keeps you in blissful oblivion. You wish it'd last forever, but even your hunter's self discipline has limits. With a deep moan, he holds tight to your body as the first jet of his cum shoots deep into your body, painting your womb with his fertile seed. After several more spurts, he exhaustedly sinks to the ground beside you and leans in for a kiss. You stay like that for a while, holding on to your elven partner and stroking his silky smooth skin.";
	say "     Some time later, Castien gives you a last soft kiss on the lips, then rises up and grabs his bow. With a whispered, 'I hope to hunt you again later', he turns from you and walks off. You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";
	NPCSexAftermath Player receives "PussyFuck" from Castien;

to say Castien_Stroking:
	say "     Only to happy to agree to the prospect of claiming your reward from this handsome being, you nod to him. Without further delay, he slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory. Stepping towards you, the elf frees you from any clothing you might be wearing, revealing your naked [bodytype of Player] form. Even as he realizes your complete lack of genitalia, it doesn't stop him for more than a second. Soft hands start moving all over your body, his long fingers massaging weary muscles and creating pleasant tingly feelings as they stroke over your skin. He guides you down to lie on the discarded clothes and kneels between your legs, kissing your smooth crotch area, then puts a line of soft kisses up your stomach and abs. He stops for a moment as he reaches your chest, playfully [if Nipple Count of Player > 0]circling your nipples and licking them[else if Breast Size of Player > 0]licking your breasts[else]licking your pecs[end if].";
	say "     Then he moves up, putting pleasant little kisses on your shoulder and neck until he finally arrives at your lips and goes in for a long and deep kiss. When you pull back for air, your body tingling all over from the arousal the elf has awoken, you notice something poking you in the stomach. Looking down, you see it's your partner's amazing cock, rock hard and ready. You grab for it to give the elf some relief too while your other hand pulls his head in for another kiss. Stroking each other, you spend some time entwined on the ground until at last the hunter's self discipline breaks down. With a deep moan, he holds tight to your body as the first jets of his cum shoot from his cock and splash onto your chest. After several more spurts, he exhaustedly sinks to the ground beside you and leans in for a kiss. You, without the ability to experience such an orgasmic finish, meanwhile hold on to your elven partner and the warm glow of pleasure and contentment your time together has built up inside you.";
	LineBreak;
	say "     Some time later, the elf gives you a last soft kiss on the lips, then rises up and grabs his bow. With a whispered, 'I hope to hunt you again later', he turns from you and walks off. You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";
	now LastFuck of Castien is turns;
	now PlayerFucked of Castien is true;

to say Castien_Milking:
	if "Milked" is not listed in Traits of Castien:
		say "     As you pull an empty bottle out of your pack and wiggle it in the air, Castien looks at you with a raised eyebrow. 'Err, what exactly is it you're suggesting here?' Taking the plastic bottle out of your hand, he gives it a squeeze and watches the material deform. 'Odd shape for a sex toy, and it's rather squishy, is it not? I do hope you're not suggesting anything concerning... liquid waste? That's not appropriate in my culture.' Hastily shaking your head, you explain that you want to catch his cum in your bottle. 'Oh. Well, that's still a bit peculiar, but if you got your heart set on it, let's do it.' Chuckling, the elf slips off his vest and pushes the leather pants over his bubble butt, then down his legs. He seems to revel in you watching him, your eyes glued to his pale, perfect body in all its naked glory. There is a little accent to him too, the tattoo of a beautiful little flower just where his back starts to flow over into the smooth curve of his right buttock. 'See something you like?' Castien tells you with a smirk, taking a half-step towards you as if daring you to touch him.";
		add "Milked" to Traits of Castien;
	else:
		say "     As you pull an empty bottle out of your pack, Castien lets out a laugh. 'Again? Okay then,' he says, accepting the bottle. 'Gotta say I'm curious what you're doing with my seed. I mean, we could just fuck, if you wanted to knock yourself up. Are you planning some sort of ritual? Or are you running a breeding farm somewhere, and soon I'll learn I have twenty half-elf children?' Looking at you with a curious expression and his head tilted a little, you can't tell if Castien is intrigued or off-put by that possibility. Then he adds, 'Make sure that only those who are worthy should get my seed, otherwise I will be so, so disappointed in you!' He doesn't really dwell on it though, instead throwing out more wild theories. 'What else... hmm, you're not drinking it, are you? If you are, I gotta tell you that this isn't the way to top off your mana levels.' Chuckling and giving a shrug, the elf then slips off his vest and pushes the leather pants over his bubble butt and down his legs. He seems to revel in you watching him, your eyes glued to his pale, perfect body in all its naked glory. There is a little accent to him too, the tattoo of a beautiful little flower just where his back starts to flow over into the smooth curve of his right buttock. 'See something you like?' Castien tells you with a smirk, taking a half-step towards you as if daring you to touch him.";
	say "     He turns a little, exposing himself and chuckling as this draws your gaze, followed by your hand twitching forward as you want to feel the soft skin of this beautiful male. His smirk turns into a full-on grin when you soon move to stroke and caress the hunter, fingers seeking out his nipples to lightly pinch them. The elf begins to masturbate at the same time, doing long strokes up and down his long, thin shaft. 'Meeting strange new beings from other world always brings some surprises with it, but this is a first I gotta say,' he comments with a chuckle. Still, the elf reacts very well to your hands on him, touching and stimulating his body as he pleasures himself. Pretty erotic actually, to just play with him like this, and you enjoy every minute of it. One especially fun moment is when you find out just how sensitive his ears are, drawing a gasp from the lithe male as you stroke a finger along the side of the tapering appendages, then roll the tip gently between your fingers.";
	WaitLineBreak;
	say "     Touching his ears pushes Castien to get quite close, judging from his breathing coming kind of quick and shallow. You continue to explore that part of him, running your fingertips down the underside and rubbing behind his ears, which makes the elf twitch and suppress a giggle. 'Hey, that tickles,' he snorts, batting at your hands to push them away from his weak spot. 'I thought you wanted to gather my seed, not start a tickle fight! And I was getting so close too when you distracted me!' He winks at you and goes on to say, 'Since it's your fault for touching me there, you can take over now - use those hands to pleasure me instead! And I bet it'll be an extra special bottle if you milked it yourself, ha!' With that said, he turns his hips a little, wagging the erect cock your way, and you quickly lower your hand to wrap it around the warm, firm shaft.";
	say "     It takes only a few strokes before you drive the elf over the edge and he lets out an urgent grunt when the first spurt of his cum shoots into the bottle he is holding over his cum-slit, hitting the end with a quiet but audible splat. You squeeze his throbbing cock tightly as it erupts with more spurts of elven seed, making Castien's legs tremble from the sensations that gives him and prolonging his orgasm through the additional stimulation. Jerking him a little, and pinching his nipples with your free hand, you milk all the cum you can get out of your otherworldly visitor, until he eventually pats your wrist to show that he's done and getting kind of sensitive. He raises the bottle to look at it, showing you the moderate amount of cum in its depth. It shimmers a little besides having a mainly white color, with flowing pearlescent highlights as light hits it this way or that. While it's a respectable amount for a human-like person, elves clearly aren't on the same level as some other creatures that are literal geysers of sperm.";
	WaitLineBreak;
	say "     Seeing how much room there is left in the bottle makes Castien frown a little, then turn away from you for a second, hiding the bottle from sight. You hear him murmur something that must have been an arcane incantation, as he presents you with a fully topped off bottle a moment later, smirking a little as he puts the cap on it. While you take out a pen and label the bottle, the elf gets dressed again. He looks at your fresh bottle of elven cum and chuckles as you carefully pack it away. With a whispered, 'I hope to hunt you again later', he then turns away walks off. You have a very nice view of his bubble butt in those tight leather pants until he vanishes into the forest.";
	LineBreak;
	ItemGain elven male cum by 1;

to say Castien_Decline:
	say "     Taking care to soften the blow of your rejection, you shake your head and tell the elf that it was reward enough to face such a worthy adversary. 'What? Do you doubt your strength in bed? Might be worth to challenge me there too, eh? Maybe next time, then?' He gives his disappointment air with a sigh, but soon after smiles readily enough again. With a flourished bow, the elf then vanishes back into the darkness between the trees.";

to say Castien_Punch:
	say "     The boundless arrogance this elf shows really gets your blood boiling and in a second, you have your fist balled and land a punch right in his face. Catching himself after stumbling back a few steps, the pointy-eared hunter wipes a small trickle of blood from under his nose and gives you an annoyed look. 'I had hoped people in this world had evolved a bit, but I see you're as barbaric as ever. Oh well, even primitives will provide some sport...' With that, he murmurs some arcane syllables and vanishes into thin air. Faint, almost imperceptible sounds of footfalls tell you that he became invisible to extricate himself from this confrontation.";
	say "     [bold type]Castien didn't like that.[roman type][line break]";
	decrease Charisma of Castien by 1;


to say ElvenHunterTourism:
	let TalkDone be false;
	project the figure of ElvenHunter_icon;
	say "     [bold type]Where do you want to take Castien?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Explore the high rise district";
	now sortorder entry is 1;
	now description entry is "Travel to the inner city";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Explore close to the library";
	now sortorder entry is 2;
	now description entry is "Roam the streets for a while";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Explore the high rise district":
					say "[Castien_Exploration_High]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the elven hunter, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to ScoutingIntervene:
	LineBreak;
	say "     [bold type]If you wanted to intervene, this would be your chance. What do you do now?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Do nothing, just watch. You're only here to scout with Castien.";
	say "     [link](2)[as]2[end link] - Do nothing, just watch - and steel yourself against any thoughts of intervention in the future. ";
	say "     [link](3)[as]3[end link] - Step in and do something about what is going on!";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to watch, [link]2[end link] to watch (and stop asking this question) or [link]3[end link] to step in.";
	if calcnumber is 1:
		LineBreak;
		if "Scouting Perspective" is not listed in Traits of Castien:
			say "     Glancing to the man standing beside you, you take in Castien as he watches the scene before you with an intense look in his slitted eyes. There is interest in his gaze, but it reminds you more of someone involved in making a nature documentary. He shows little trace of empathy or the desire to intervene, which serves as a reminder to yourself that he is not - and never has been - human. Having traveled through many worlds, the elf does not appear to see the simple fact that someone or something is intelligent as particularly exceptional. He notices your attention and gives you a small nod, then points you towards the action, apparently not wanting you to miss it.";
			add "Scouting Perspective" to Traits of Castien;
		else:
			say "     As before, you suppress any thought of wanting to intervene, instead giving the elf beside you a quick glance. Castien is focused on what plays out before you with impartial indifference, reminding you of a nature documentary filmmaker. Not getting hung up on any empathy must come easy for him, given that he is not - and never has been - human, and this is just one of many worlds he has visited. He notices your attention and gives you a small nod, then points you towards the action, apparently not wanting you to miss it.";
	else if calcnumber is 2:
		LineBreak;
		if "Scouting Perspective" is not listed in Traits of Castien:
			say "     Glancing to the man standing beside you, you take in Castien as he watches the scene before you with an intense look in his slitted eyes. There is interest in his gaze, but it reminds you more of someone involved in making a nature documentary. He shows little trace of empathy or the desire to intervene, which serves as a reminder to yourself that he is not - and never has been - human. Having traveled through many worlds, the elf does not appear to see the simple fact that someone or something is intelligent as particularly exceptional. He notices your attention and gives you a small nod, then points you towards the action, apparently not wanting you to miss it. [bold type]Making a mental note not to fall into the same train of thought again[bold type], you continue watching with him, quiet under your cloak of invisibility.";
			add "Scouting Perspective" to Traits of Castien;
		else:
			say "     As before, you suppress any thought of wanting to intervene, instead giving the elf beside you a quick glance. Castien is focused on what plays out before you with impartial indifference, reminding you of a nature documentary filmmaker. Not getting hung up on any empathy must come easy for him, given that he is not - and never has been - human, and this is just one of many worlds he has visited. He notices your attention and gives you a small nod, then points you towards the action, apparently not wanting you to miss it. [bold type]Making a mental note not to fall into the same train of thought again[bold type], you continue watching with him, quiet under your cloak of invisibility.";
		add "Scouting Intervention Ban" to Traits of Castien;
	else if calcnumber is 3:
		LineBreak;
		say "     As you take a step forward to get involved, Castien starts to hiss, 'Stop, the invis-' You feel a tingle run through your body as what he was starting to say happens and you emerge from within his invisibility spell, drawing attention to yourself. Growling a curse in his own language, the elf snatches you by the arm and pulls on it with surprising strength, leading to the two of you tumbling through the shimmering doorway suddenly forming in the air besides you. An eye-blink later, you are somewhere else: A similar area to the one you came from, but an unknown distance and direction from it, with the magical doorway having snapped shut behind you. Strained annoyance is audible in the elven hunter's voice, even as he does his best to remain civil when he says, 'You need to be more careful when we scout together! That thoughtless act destroyed the chance of observing what was going on unnoticed! Just touch my arm and point if you want to move closer next time, okay?'";
		LineBreak;
		say "     [bold type]What do you want to reply?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Apologize, and say you'll take better care next time.";
		say "     [link](2)[as]2[end link] - Tell him you wanted to intervene. Didn't he see that what was going on was wrong?";
		say "     [link](3)[as]3[end link] - Tell him that just standing back and watching is monstrous. You don't want to have anything to do with a cold-hearted asshole like him.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to apologize, [link]2[end link] to appeal to his empathy or [link]3[end link] to reject Castien.";
		if calcnumber is 1: [just continue as before]
			LineBreak;
			say "     As you make your apology, the elf takes a deep breath, then lets it out slowly. Pinching the bridge of his nose and shaking his head, he adds, 'It's... fine. You might be a suitable opponent, but you do not know our hunting tactics. Forgive me for my outburst, I guess I have become too accustomed to just hunt with my own kind. For now, let us return to the forest, I must gather my energies again after what was expended for our quick escape.' With that, the elf angles his steps back in the direction you came from. Along the way, the two of you have a casual conversation about details of human society and the things that you've been seeing in the city recently, with him listening intently and making a mental note of it.";
			say "     When you finally arrive back at the urban forest and step into the shadow of its trees, Castien stops for a moment and turns to you fully. 'Too bad our observations were cut shot, but it was still nice to spend some time conversing with you.' With a half-bow, the smiling elf makes his goodbye from you, turning and walking off into the shadows. You have a very nice view of his bubble butt in those tight leather pants until he vanishes into the forest.";
			decrease Charisma of Castien by 1;
		else if calcnumber is 2: [appeal to his empathy]
			LineBreak;
			say "     As you start to argue with Castien, the elf puts a hand to his forehead and lets out a groan as he shakes his head. A certain air of disappointment is audible in his voice as he says, 'I guess I shouldn't be surprised. This is your world, and we were observing those that are, or were before, your people. Those ties are hard to learn to ignore, for most species.' Blowing out his breath, he meets your gaze with his green, slitted pupils. Waving his hand airily at the spot the portal was in, Castien adds, 'So, you think you could have done something there. But let me ask you this: How about the next time, or the hundreds of others in similar distress everywhere around us. Do you want to start a fight after every corner you turn? You cannot save them all. To try would be futile.'";
			say "     Not giving up this easily, you continue to drive your point. In the end, it is immoral not to help those who deserve it. Well-shaped eyebrows drawing together, Castien appears to get somewhat annoyed with your rebuffal of his earlier point. 'And you think the universe cares about what is 'right' and 'proper'? Fine, let me tell you a story about the old days, when my people learned to open their first gates to other worlds. Their views were all too similar to your ideas that you are throwing at me. True altruists.' The last word is dripping with sarcasm as he says it, and seems more a curse than anything else. 'Guiding and protecting younger races, and leading them towards the light! Yeah, right! And one day, when the elven lords wouldn't just hand the knowledge of opening gates over - a group of those mayfly imbeciles stole it! Their first experiments, after torturing the spells out of a mage, were very effective - in ripping a gate into reality, from their planet straight to Hell!'";
			WaitLineBreak;
			say "     Glowering for a moment while letting his words sink in, Castien spears you with his gaze. 'So, tell me again that good acts are rewarded. Do you want me to go into more detail about the six - six whole worlds - that got overrun and turned into blood-drenched butchery pits? About my childhood years, spent following the Erlking in his campaign of exterminating every last demon that dared to raise their head from behind the burned trees covering half my home planet?' His voice is biting as he says this, and you refrain from any further comments. Silence stretches out between you for a long moment, before Castien clears his throat. 'Do you understand my point now? Scouting is scouting nothing more,' he states, one eyebrow raised as he waits for your reaction.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, you'll refrain from trying to intervene in the future.";
			say "     ([link]N[as]n[end link]) - You still think that something should have been done.";
			if Player consents:
				LineBreak;
				say "     After a quiet nod, accepting your reply, Castien says, 'For now, let us return to the forest, I must gather my energies again after what was expended for our escape.' With that, the elf angles his steps back in the direction you came from. As soon as you're roughly in the right area, the Castien bids you farewell and peels off from your side, vanishing behind a tree.";
				decrease Charisma of Castien by 2;
			else:
				LineBreak;
				say "     'I don't know what I ever saw in a creature like you,' the elf lets out in an annoyed snort, grimacing as he looks you up and down. 'This is clearly going nowhere, as you're just another primitive, nothing more. You should know that I will not treat you any different than the other beasts of this world from now on.' With that, he vanishes from sight, leaving you to find your own way back to where you started from. Seems like you've angered him quite a bit.";
				now Charisma of Castien is -10; [no respect for the player]
			if "Hell Lore" is not listed in Traits of Castien:
				add "Hell Lore" to Traits of Castien; [player knows about the ancient elves and hell]
		else if calcnumber is 3: [reject him]
			LineBreak;
			say "     As you start telling Castien in harsh words that his behavior is wrong, the elf lets out in an annoyed snort, grimacing as he looks you up and down. 'This is clearly going nowhere, as you're just another primitive, nothing more. You should know that I will not treat you any different than the other beasts of this world from now on.' With that, he vanishes from sight, leaving you to find your own way back to where you started from. Seems like you've angered him quite a bit.";
			now Charisma of Castien is -10; [no respect for the player]
		add "Scouting Interrupt" to Traits of Castien;

to say Castien_Exploration_High:
	say "     Setting out with your elven companion, the two of you soon approach the edge of the Urban Forest. Trees and nature gives way to a more typical urban environment, with mostly intact streets and buildings, even if there are numerous wrecked cars, heaps of trash and scattered clothing accompanied by dried puddles of cum. [one of]Carefully setting his booted feet to avoid making any noise as he walks through an expanse of glass shards covering the ground in front of a looted store, [or]Touching the burned stump of a decorative tree and seeing its ashen bark crumble away under his fingertips, [or]Inspecting a luxury car that seems to have been peeled open by large claws to get at the driver, [or]Looking up from a giant claw-mark scoring deep into the asphalt of the road, [or]Spending a moment to poke at the left-behind possessions of someone who was fucked and transformed, [or]Inspecting a parking meter that seems to have been chewed on by... something, [at random]Castien then lets his gaze wander over the area. 'Charming place you've taken us to, really. I take it that these were the seat of your aristocracy?' the elf says, nodding to the tall shapes of high rises around you. For a second, you think of explaining the intricacies of modern economics to him, then decide to just nod instead, as his guess is close enough.";
	say "     'Perfect,' the elf says with a smirk. 'Ruthless people, with their fortunes ruined. They will fight like cornered rats once the chase draws to a close, and provide appropriate entertainment for the Hunt. Let us go and observe more closely then.' That said, Castien reaches out to touch your arm, murmuring some arcane incantation as he does so. The world all around you seems to shimmer for a second before stabilizing once more. 'Stay within five paces, or you'll step outside the shroud,' the elf tells you in a low whisper, then gives a handsign for you to move ahead with him. Seems he's turned you invisible. It doesn't take too long before your now much more direct exploration brings you into the proximity of ";
	let randomnumber be a random number from 1 to 5; [adjust the latter number for the number of options]
	if randomnumber is 1: [leopardman]
		say "a side alley, from which you hear raised voices, followed by a the sounds of running footsteps. Castien takes a step back, arm outstretched to pull you with him, making sure that the (mostly human) woman running from the alley doesn't collide with either of you. The scrape of claws on asphalt heralds the person chasing her, which is a muscular anthro leopard.";
		if "Scouting Intervention Ban" is not listed in Traits of Castien:
			ScoutingIntervene;
		if "Scouting Interrupt" is not listed in Traits of Castien:
			WaitLineBreak;
			say "     The cat easily runs down his prey, wrapping a strong arm around the woman from behind and bringing her to a stand. Chuckling, he licks her cheek and says, 'Caught you! You know, we were only gonna take the backpack, but with you trying to run off and forcing us to chase, I think you owe me and the guys a bit more now!' For a second, you wonder who the 'we' is that he's referring to, but the question answers itself as two more leopardmen come sprinting around the corner at the end of the block. They must have split up to cut off the woman's avenues of escape. Now all three of them close in around her and she's pulled along to wherever they make their den. Castien watches them go with a dispassionate expression, only commenting when the group is out of earshot. 'Prosperity creates its own predators, that is true in any world I've seen so far. I wonder how they'll like it when they become the hunted.' As he says this, his green eyes narrow to thin slits, like those of a cat that has spotted prey.";
	else if randomnumber is 2: [peacock]
		say "one of the few stores that seems fully intact, a rarity between all the others. Looks like a high quality clothing boutique. Inside, you can see several people, standing around, all very well dressed. They seem nervous in some way, glancing at each other from the corner of their eyes, and over at the door.";
		if "Scouting Intervention Ban" is not listed in Traits of Castien:
			ScoutingIntervene;
		if "Scouting Interrupt" is not listed in Traits of Castien:
			WaitLineBreak;
			say "     One half-equine man suddenly breaks from the group and rushes towards the door, only to be intercepted by an anthro peacock stepping out between the long rows of designer clothing. Raising a clawed hand and wagging his finger, the bird spreads his glorious tail-feathers in a huge fan, which reduces the escapee to glassy-eyed immobility. The next thing that the peacock does is holding up a piece of clothing he had in his other hand to the man, apparently trying to decide if he likes it better than what the entranced guy is already wearing. With a quick command, he has the man stripping right there in the store and put it on, then shepherds him back to the other people he seems to be using as living dress-up dolls. 'Mindbenders too? Won't this be an interesting place to hunt! Though he'd have some issues trying that trick with one of us,' Castien comments with a smirk.";
	else if randomnumber is 3: [chocolate lab]
		say "a trail of paw-prints all along the sidewalk. Castien crouches down and looks at it, brushes a finger through the brown mass forming the prints and sniffs it. 'Chocolate,' the elf says before brushing his finger off against the ground. Clearly a bit puzzled, he follows the trail for a little while, eventually arriving at a store selling 'Fine Chocolates'.";
		WaitLineBreak;
		say "     Inside the store, there are numerous gloriously detailed chocolate animals on display in refrigerated display cases. One of those seems to have toppled over at some point, breaking when it did and possibly being responsible for releasing a chocolate Labrador that you can see in there. The other eight of the creatures forming a swarm of canine shapes and wagging tails as they play with each other surely can't have come from the display though, as there wouldn't have been enough room in it. Seems the further examples must have been created in the 'natural' way, if one can speak of it that way for living chocolate sculptures. 'Now that's just... bizarre. But novel, no one will be able to deny that,' your elven companion comments the scene, then adds in a contemplative tone, 'I wonder if the other creatures are alive too and just can't move because they're cooled.'";
	else if randomnumber is 4: [wolverine]
		say "the incredible high tower of a luxury hotel. Were it not for a maybe ten foot diameter crater of shattered windows marring the side of the building about halfway up, one might think that it was just any day. The lights in the place are still on, and you can see a human woman in a professional-looking jacket sitting at the front desk.";
		WaitLineBreak;
		say "     Castien takes a step towards the open entrance door, at which point you hear a deep-voiced growl coming from a niche in the wall, just inside the building. 'Stop right there! The hotel is in lockdown right now! Only already registered guests may enter, and for their security, no one may leave!' Stepping into the light, the person who spoke reveals himself to be an enormous anthro wolverine, so bulging with muscles that he burst the seams of his 'Wolverine Security' jacket. The nightstick in his large, clawed paws looks almost like a toy in comparison to the anthro's bulk. 'Wait, you can see us?' Castien inquires, curiosity audible in his voice. The guard shakes his head, then scrunches up his muzzle and taps it. 'You don't smell like any guest I know, so unless you have a room key you can show me, fuck off!'";
		say "     Behind the large wolverine and outside of his zone of vision, you see the front desk worker's desperate gaze search for whoever is talking. She doesn't seem to be able to perceive you. Pressing her lips together, the young woman quietly raises three handwritten signs, one after another: 'PLEASE DO NOT AGGRAVATE SECURITY - ALL FOUR OF THEM ARE OUT OF CONTROL', '68 GUESTS AND PERSONNEL INSIDE, ALL HUMAN', 'PLEASE SEND HELP!' Clearing his throat, your elven companion tells the guard, 'We did not mean to intrude. You can stand down and we will leave.' Tapping your arm, he walks away from the building in an unhurried tempo before eventually speaking up again. 'Mmmh, those people certainly seem secure, but they don't seem happy about it. One place to avoid, I would say. Creatures like that guardian will never run, and we're here to hunt, not fight pitched battles.'";
		WaitLineBreak;
	else if randomnumber is 5: [ocelot]
		say "a slender ocelot, hiding behind a wrecked car. He is dressed in a leather harness, collar, cuffs and a codpiece, letting his gaze sweep over the streets as if he's searching for someone. As the right person doesn't seem to be near, he soon moves on, sprinting to a new position where he can hide and continuing his search there. Waiting for the cat to be out of earshot, Castien taps his chin and comments, 'Looks like someone's pet got out, or maybe they were separated. Could be an nice thing to play with, between hunts, that one. Pre-trained, so to say. I'll be sure to mention him in my report.'"; [TODO: Add option for the player to suggest fucking him right now. Castien disapproves ("not worth hunting", and "we're just scouting right now")]
	if "Scouting Interrupt" is not listed in Traits of Castien:
		say "     Having seen enough for now, the elf angles his steps back in the direction you came from. Along the way, the two of you have a casual conversation about details of human society and the things that you've been seeing in the city recently, with him listening intently and making a mental note of it. When you finally arrive back at the urban forest and step into the shadow of its trees, Castien stops for a moment and turns to you fully. 'Thank you for such a delightful outing in this world. It was very informative, and also nice to spend some time conversing with you.' With a half-bow, the smiling elf makes his goodbye from you, turning and walking off into the shadows. You have a very nice view of his bubble butt in those tight leather pants until he vanishes into the forest.";
	if "Scouting Interrupt" is listed in Traits of Castien:
		remove "Scouting Interrupt" from Traits of Castien;
	AddNavPoint Entrance to the High Rise District;
	if Loyalty of Castien < 10:
		increase Loyalty of Castien by 1;

to say Castien_Exploration_Outside:
	say "     Setting out with your elven companion, the two of you soon approach the edge of the Urban Forest. Trees and nature gives way to a more typical urban environment, with mostly intact streets and buildings, even if there are numerous wrecked cars, heaps of trash and scattered clothing accompanied by dried puddles of cum. You lead Castien in the direction of the library, wanting to roam around in the 'normal' part of the city, outside one of the sections that has been changed too much by the ongoing nanite apocalypse. [one of]Carefully setting his booted feet to avoid making any noise as he walks through the glass shards scattered around a car having hit a light-pole, [or]Almost playfully tapping each board of a white picket fence as you walk along it, [or]Inspecting a crater in the asphalt of the street, half-filled with waste-water leaking out of busted pipes, [or]Glancing at a minivan lying on its side, front window shattered, [or]Crouching down next to a car that apparently had its tires, mud-flaps and anything even remotely rubbery chewed off, [or]Spending a moment to poke at the left-behind possessions of someone who was fucked and transformed, [or]Looking up to study the far-off shape of a winged creature gliding through the air, [at random]Castien then looks over to you. 'Charming place you've taken us to, really. Were these the homes of your bureaucrats and minor nobility? Well-built, some of them, but I feel there is a lack of defensibility,' the elf says, nodding over to the moderately high fences and hedges around you, some of which have actually been trampled flat.";
	say "     You start to explain a little about the 'middle class', and that your country is doing fairly well in the world, but you can see that your companion isn't all that interested, only giving a casual nod or two while he mostly focuses on your surroundings. 'We'll have to see if any of these people are worth the time of the Hunt,' the elf says with a shrug. 'Most will hide in their little homes when they hear the beat of the hooves near, and what use is that for anyone? Easy enough to take down, and no challenge at all. But I guess even among the broader population, there can be outstanding individuals. Those that are aiming to supplant their betters, or the loyal retainers of popular rulers. Let us go and observe more closely, and see if we can find them.' That said, Castien reaches out to touch your arm, murmuring some arcane incantation as he does so. The world all around you seems to shimmer for a second before stabilizing once more.";
	WaitLineBreak;
	say "     'Stay within five paces, or you'll step outside the shroud,' the elf tells you in a low whisper, then gives a handsign for you to move ahead with him. Seems he's turned you invisible. It doesn't take too long before your now much more direct exploration brings you into the proximity of ";
	let randomnumber be a random number from 1 to 4; [adjust the latter number for the number of options]
	if randomnumber is:
	if randomnumber is 1: [hawkman]
		say "a little huddle of people, garbed in partly torn and stained clothes. Several of them show partial transformations of more than one infection. Doesn't look like the nanite apocalypse has been kind on them. There is some haggling going on, apparently over the trade of a stack of dog food cans being offered for a pair of large soda bottles. The companions of the two of them negotiating with each other keep lookout for the other side trying anything, or outside interference. For a moment, one of them seems to look right at you, before his gaze drifts on along the street, Castien's spell easily outdoing his powers of observation. Despite their intent of providing security though, it seems that these people are still thinking too two-dimensional, as an attack from above doesn't seem to have crossed their minds. Suddenly, loud screeching fills the air as a trio of hawkmen swoop down on the haggling survivors, sharp claws outstretched in anticipation.";
		if "Scouting Intervention Ban" is not listed in Traits of Castien:
			ScoutingIntervene;
		if "Scouting Interrupt" is not listed in Traits of Castien:
			WaitLineBreak;
			say "     With the hawkmen's wild attack, the bird-morphs frighten their unprepared targets easily, scattering them and negating any chance of organized resistance. As people flee in all directions, the attacking flock spread out to chase down individuals, generally first swooping past once to bring them to a stumble, then literally landing on top of them and pinning them to the ground. With a sharp beak being brought close to their faces and the hawkmen screeching directly at them, the survivors quickly surrender. Castien glances over to you, rolling his eyes at the weak showing. His green eyes narrow to thin slits, watching dispassionately as the hawkmen rip and tear clothing out of the way, allowing them to start fucking their captives soon after.";
			say "     With all the noise of boastful hawkmen and sex being made around you, there is little danger of anyone overhearing and pinpointing you, so Castien casually comments, 'See what I meant? That was just pathetic. Though the feathered ones might serve as some entertainment. Depends a bit on how smart they turn out to be - too stupid and or aggressive prey will just try to attack a hunter, and what challenge is it to take down something simply running straight at you? Still, worth a try to see I guess. Pitting winged hunting beasts against them could be an amusing spectacle.'";
	else if randomnumber is 2: [hyena]
		say "a pair of anthro hyenas wearing leather jackets, strolling along the street as if they own the place. One of them is carrying a bulging sack that appears to be well-filled with all sorts of things. As they walk along, the two of them joke with each other, loudly cackling at the other's jokes. This appears to draw Castien's attention, and he makes a hand-sign to follow the pair. Clearly in a good mood, the hyenas often quite lewd humor is shared with the world, sometimes shouted at other people coming into sight, who generally hurry to get gone at that point. Soon, the pair saunters up to a well-sized home, coming up to the front door and banging against it impatiently.";
		say "     As the door is opened hurriedly a moment later, you can see a pale-faced man somewhere in his forties standing inside the house, who holds a paper shopping bag out to the anthro visitors. Accepting it, the first hyena weighs it in her hand, then growls, 'Feels a bit light!' before handing it to her partner, who starts to dig around in the bag. 'P-please!' the man in the house says in almost a whimper, 'This is the last we had! There literally isn't anything more I could give you, we're already going hungry. 'Tough luck! You really want to force us to check?' hyena number two tells him threateningly, baring her sharp teeth in a gesture that is decidedly not a smile. Her companion reaches out at that point, holding the other hyena back. 'Wait, I'm sure that our little buddy here wouldn't be stupid enough to keep something from us. Ain't that right, dude?' As the man desperately nods, she grins at him predatorily.";
		if "Scouting Intervention Ban" is not listed in Traits of Castien:
			ScoutingIntervene;
		if "Scouting Interrupt" is not listed in Traits of Castien:
			WaitLineBreak;
			say "     'I believe him, hold off with the beatdown a bit, sister,' the first hyena tells her still scowling partner, then snakes a hand into the bag and pulls out a large can out of it. 'And since you were so good and told the truth, my man, I'll give you this one back even. Can't have a family go hungry, eh?' With that, she steps into the house laying her arm around his shoulders and presses the metal can to his chest, with him accepting it in shaking fingers. 'Since we're all such good friends now, there's one more thing I'd like to know though,' the hyena tells the human, her hand clamping down on his shoulder now as he gulps. 'You got a daughter still living at home, I heard. Which one is her room?' Cackling in a mixture of gleeful amusement and lust, the second hyena now realizes what her partner was after and steps into the house herself, pushing the door shut behind her.";
			say "     'Thugs and lowlifes, preying on the weak,' Castien comments with an indifferent shrug. 'Gangs usually are weak individually, but can be challenging in a group. Hah, won't they be surprised when they find themselves being the prey for a change once the Hunt arrives!' You see a grin grow on his face, revealing canines somewhat longer than on a man. His slitted eyes narrow to a sharp focus and the whole image reminds you of a cat eager for stalking and bringing down its target. Seeing his reaction flip around this quickly reminds you that Castien isn't actually human, and has a viewpoint that may be hard to follow for someone of another species. He went from giving the scene the cold shoulder to almost giddy joy at the prospect of hunting the hyenas - not to punish them or anything, just for his own pleasure.";
	else if randomnumber is 3: [wyvern]
		say "what seems to be a crash-site, strewn with pieces of wreckage. It is hard to make out what the mangled wreck once was, but you think you can make out the shape of a traffic helicopter if you squint and let your imagination free reign. Informing your elven companion of this, he nods and raises an eyebrow. 'Now what could have brought down this flying machine of your people?' Castien asks with interest, walking closer to have a look. Poking around a bit, you find a large piece of the rotor, which has its moving parts crusted over by some dried resin. Looking at it, you doubt that it'd do a delicate machine all that good to be gunked up like this. Might have been partly responsible for the crash.";
		say "     While you're still making this observation, Castien suddenly says, 'Aha! Look at this!' He then crouches down to point at the side door of the helicopter, which appears to have been somewhat crumpled up. Reaching under it, he pulls a broken-off claw-tip out and holds it up. The piece of keratin is at least six inches long, and from its curvature it is clear that it is only the very tip of a quite large claw. 'The beast that this belongs to makes coming to this world worth it all on its own. The others will be overjoyed to see that there finally are big lizards again on earth!' Proudly wrapping his find in a piece of silken fabric, he mutters some arcane words under his breath, causing the whole bundle to disappear into thin air. 'Just sending a little preview to them,' he says with a grin.";
	else if randomnumber is 4: [gryphon]
		say "a small public park, with an exceptionally large chestnut tree in it. Halfway up the tree, you see something blue, which turns out to be an anthro gryphon on closer inspection. She is sitting on a broad branch, letting her legs swing under her while at the same time milking her well-filled breasts into a bottle. The curve of her stomach indicates that a clutch of eggs is soon to come. 'It seems like my people are not the only visitors to your world right now,' Castien says in a quiet tone, a curious expression on his face. 'Though I have to say, I've never seen one of their race so close to bearing eggs being out and about. Pregnant hens usually are well-protected in a nest by this time.'";
		say "     Eyes drawing together in thought, the elven hunter continues to stare at the gryphon for a moment longer. Then suddenly he says, 'Wait a minute!' and quietly intones a spell, which makes his eyes glow from within. Focusing on the person in the tree, he states, 'That's a human! Well, was a human anyways. Originally.' He taps his chin as he says this, followed by a smile. 'The fact that your people are so eagerly stealing the forms of other beings does open up some opportunities that I hadn't yet accounted for. It will be interesting to hunt a gryphon, who is at the same time not a gryphon. That one might have completely different reactions and tactics to the ones we know. Not that we'd hunt her right this minute, with the clutch and so on. We're not primitives, after all.'";
		WaitLineBreak;
	if "Scouting Interrupt" is not listed in Traits of Castien:
		say "     Having seen enough for now, the elf angles his steps back in the direction you came from. Along the way, the two of you have a casual conversation about details of human society and the things that you've been seeing in the city recently, with him listening intently and making a mental note of it. When you finally arrive back at the urban forest and step into the shadow of its trees, Castien stops for a moment and turns to you fully. 'Thank you for such a delightful outing in this world. It was very informative, and also nice to spend some time conversing with you.' With a half-bow, the smiling elf makes his goodbye from you, turning and walking off into the shadows. You have a very nice view of his bubble butt in those tight leather pants until he vanishes into the forest.";
	if "Scouting Interrupt" is listed in Traits of Castien:
		remove "Scouting Interrupt" from Traits of Castien;
	if Loyalty of Castien < 10:
		increase Loyalty of Castien by 1;

Section 2 - Creature Insertion

to say ElvenHunterDesc:
	if PlayerMet of Castien is false:
		say "     A tall, slender man steps silently out of the shadows a bit ahead of you. He is a very handsome man dressed in dark green leather pants and an open fur-trimmed vest on first impression. But looking closer, you realize he's too beautiful to be a human - supernaturally so. With the clearly defined muscles under his pale, flawless skin and a face bearing sharp, beautiful features he'd make any human standing beside him look like a crudely assembled puppet. The sharp points of his ears poking out from under shoulder-length black hair and the bow in his hand remove any doubts - he's an elf. While you were busy staring at him, he studied you in turn with his jade green slit-pupiled eyes... and wasn't too impressed to judge from his expression.";
		if BodyName of Player is "Incubus" or BodyName of Player is "Succubus" or BodyName of Player is "Demon Brute" or BodyName of Player is "Hellhound":
			say "     He snarls 'Go back to the stinking pit you call home - demon', before gracefully pulling an arrow from the quiver on his back. With the comment, 'I'll show you why you shouldn't try to spread your infestation on elven hunting grounds,' he lets it fly, purposefully missing your head by less an inch.";
		else if BodyName of Player is "Elf" or BodyName of Player is "Elven Hunter":
			say "     He sighs, saying 'Are you masquerading as one of us? The human phantasies of becoming something better than they are somewhat sad.' Gracefully pulling an arrow from the quiver on his back, he continues, 'Let's see if you're worthy of the shape you wear...'";
		else if (BodyName of Player is "Human" or BodyName of Player is "Herm Human") and Player is pure:
			say "     He sighs, saying 'A human - how droll. Still, some of you are rather inventive...' Gracefully pulling an arrow from the quiver on his back, he continues, 'Let's see if you might be worth hunting. Start running and be a bit of a challenge, will you?'";
		else if ( BodyName of Player is listed in infections of ReptileList and SkinName of Player is listed in infections of ReptileList ):
			say "     He sighs, saying to himself 'It's scaly and looks a bit like the big lizards of the past - but will it be a worthy heir to their legacy of cunning and strength? Only one way to find out...' Gracefully pulling an arrow from the quiver on his back, he addresses you, 'Start running and be a bit of a challenge, will you?'";
		else:
			say "     He sighs, saying to himself, 'It'll have to do for now', before gracefully pulling an arrow from the quiver on his back. 'You there, creature - start running and be a bit of a challenge, will you?'";
	else:
		say "     Castien, the elven hunter you met before, steps out of the shadows some distance ahead of you. He is a very handsome male, dressed in dark green leather pants and an open fur-trimmed vest that shows his impressive abs and chest. With the clearly defined muscles under his pale, flawless skin and a face bearing sharp, beautiful features he'd make any human standing beside him look like a crudely assembled puppet. The sharp points of his ears poking out from under shoulder-length black hair and the bow in his hand complete the look of a proud elven hunter. While you were busy staring at him, he studied you in turn with his jade green slit-pupiled eyes...";
		if Charisma of Castien > 4 and PlayerFucked of Castien is true: [he likes the player]
			say "     'So we meet again, out here in the forest.' A hint of a smile plays over Castien's lips as he dips his head in a nod to you. 'What shall it be then[if Player is not defaultnamed], [name of Player]? [else]? [end if]Do you want to play our game of old, becoming hunted and hunter? Shall we see which of us will claim what title this time?'";
			say "     [bold type]What do you reply?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Smile and give him a 'Bring it on!' wave of your hand.";
			say "     [link](2)[as]2[end link] - How about some companionship instead? And by that, you mean sex.";
			say "     [link](3)[as]3[end link] - Why not join up with him for a little while, and roam the city together?";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to fight, [link]2[end link] to fuck or [link]3[end link] to wander the city together.";
			if calcnumber is 1:
				LineBreak;
				say "     Castien grins at your challenge, drawing an arrow from his quiver. 'I'm sure it will be a great hunt!'";
			else if calcnumber is 2:
				LineBreak;
				say "     Smiling at the handsome elf, you tell him that you've fought before, and by now he should know your prowess fairly well. While combat can be a challenge, in this instance, you both know that you'd beat him. 'Is that so?' he asks in a tone both amused and challenging. Castien keeps his gaze locked with yours for a long moment, then laughs out loud and shakes his head. 'I'll... let you believe that, for now. So, if you're such a great fighter, what will you pick as your reward for besting me?' His hands reach for his belt as he says those words.";
				say "[ElvenHunterVictoryMenu]";
				now combat abort is 1;
			else if calcnumber is 3:
				LineBreak;
				say "     Smiling at the handsome elf, you tell him that you've fought before, and by now he should know your prowess fairly well. Therefore, you propose a different sort of amusement. Castien listens as you suggest that the two of you go and roam the city together for a while, tapping his chin thoughtfully. 'And what for, exactly?' the elf asks, to which you reply that you've only ever seen him in this forest, and that he needs to get around more if he really wants to scout more than just a little piece of the city. He takes a deep breath, then says, 'While you wouldn't necessarily have seen me if I didn't plan on it, I see your point. Maybe I have been a bit too... conservative, keeping to familiar terrain. Lead on then, and show me what you will.'";
				say "[ElvenHunterTourism]";
				now combat abort is 1;
		else if Charisma of Castien > 0: [he sees the player as worthy prey]
			say "     'Ah, good that it is you[if Player is not defaultnamed], [name of Player][end if]. I've been longing for a challenge!' A hint of a smile plays over Castien's lips as he dips his head in a nod to you.";
		else if Charisma of Castien is 0: [neutral]
			say "     'Oh, it's you. Going to let me down, or did you man up finally?' The elf says this with a slightly up-turned nose, telling you that he doesn't believe you'll be any challenge at all.";
		else: [he dislikes the player]
			say "     'Oh, it's you.' With an eye-roll, he takes an arrow from his quiver right away. 'Likely just going to be another waste of my time, but then... I've seen some extreme transformations here, so maybe you've become less worthless somehow?' The elf says this with a slightly up-turned nose, telling you that he doesn't believe you'll be any challenge at all.";


Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Elven Male"	"[PrepCombat_Elven Male]"

to say PrepCombat_Elven Male:
	setmongender 3;
	project the Figure of ElvenHunter_Encounter_icon;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Elf";
	add "Elven Male" to infections of HumanList; [close enough to pass]
	add "Elven Male" to infections of MagicalList;
	add "Elven Male" to infections of OtherworldlyList;
	add "Elven Male" to infections of MaleList;
	add "Elven Male" to infections of BipedalList;
	now Name entry is "Elven Male";
	now enemy title entry is "Elven Hunter"; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Castien"; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]A finely fletched arrow buries itself in your lower leg.[or]Moving with an almost magical swiftness, the elf suddenly appears behind you and gives you a good kick.[or]You manage to get in close, just to be swatted on the head with the bow itself.[or]With his hunting knife in hand, the elf gives you a shallow, but bleeding cut.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Hunter loses]";
	now victory entry is "[Hunter wins]";
	now desc entry is "[ElvenHunterDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "supernaturally beautiful, with sharp but handsome features, full lips and a seductive smile. Your eyes are slightly larger than a human's, showing jade green slitted irises and two pointed ears poke out from under your long black hair";
	now body entry is "that of a lithe and slender human being, toned and strong";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a round, firm bubble butt, just waiting to be grabbed."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into sharp, but handsome features. Your ears lengthen and taper to narrow points. Finally from one blink to the next your eyes change in some way, allowing for much sharper vision"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a more attractive form, ending up in a tall and slender, nicely muscled shape";
	now skin change entry is "it seems to soften and smooth out, creating the impression of timeless youth. Any blemishes and unwanted hair are wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now ass change entry is "it tightens up into a firm, round bubble butt";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 63;
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12; [ Monster's average damage when attacking. ]
	now area entry is "Forest"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]          [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is true;
	now libido entry is 10;
	now loot entry is "lembas bread"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "elven male milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "elven male cum";
	now TrophyFunction entry is "[GenerateTrophyList_ElvenHunter]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if Player is male]handsome[else]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"lembas bread"	"A thin cake of bread, wrapped in a large leaf. It looks very tasty."	1	lembas bread

instead of sniffing lembas bread:
	say "Mmmh! Smells like freshly baked, delicious bread.";

lembas bread is a grab object.
lembas bread is infectious. Strain of lembas bread is "Elven Hunter".
Usedesc of lembas bread is "[lembas bread use]";

to say lembas bread use:
	say "     Unwrapping the thin bread from its leaf, you take a bite from it. Tastes delicious, almost as if it's been freshly baked an hour ago. The meal fills your stomach quite nicely, even though it is just a few bites.";
	PlayerEat 30;


Table of Game Objects (continued)
name	desc	weight	object
"purple berries"	"Wrapped in an artfully folded five-pointed leaf, you see a handful purple berries. They look fresh as if recently picked, and you can't help but feel that they'd be tasty and good for you."	0	purple berries

purple berries is a grab object.
Usedesc of purple berries is "[purple berries use]";

to say purple berries use:
	say "     Carefully pulling open the folded leaf, you pick up one of the berries between your fingers and put it into your mouth. Mmmh, tasty! Eagerly grabbing the next and throwing it into your mouth, it doesn't take long at all before you have finished them all off. The sweet taste lingers a little in your mouth, and you can feel a sensation of wellness spread through your whole body.";
	PlayerEat 10;
	PlayerHealed 15;

instead of sniffing purple berries:
	say "Smells like a leaf, and sweet berries.";

Table of Game Objects (continued)
name	desc	weight	object
"jade coin"	"A thin disk of green stone, with a square hole in the middle. On one side, a dragon with a very long and winding body is wrapped all the way around the hole, the other side is covered in otherworldly symbols that you do not understand."	0	jade coin

jade coin is a grab object. It is not temporary.
Usedesc of jade coin is "[jade coin use]";

to say jade coin use:
	say "     You throw the coin into the air, watching it tumble end over end a few times before you catch it again and slap it on the back of your hand:[line break]";
	if a random chance of 1 in 20 succeeds:
		say "     [bold type]Baku![roman type][line break]";
		say "     ...wait - what?! You don't remember seeing that image on the coin before! Looks like a furry elephant-like creature with a long trunk. As you turn the coin over to check it out, you see the writing on the other side, then the regular dragon again as you flip it back.";
	else if a random chance of 1 in 2 succeeds:
		say "     [bold type]Dragon![roman type][line break]";
	else:
		say "     [bold type]Writing![roman type][line break]";

instead of sniffing jade coin:
	say "Smells like stone, nothing more.";

Table of Game Objects (continued)
name	desc	weight	object
"elven male cum"	"A plastic water bottle containing a moderate amount of milky white fluid. It shimmers a little, with flowing pearlescent highlights as light hits it this way or that. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Elven Male Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	elven male cum

elven male cum is a grab object.
elven male cum is cum.
elven male cum is infectious.
Strain of elven male cum is "Elven Male".
Usedesc of elven male cum is "[elven male cum use]";

to say elven male cum use:
	say "     Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and almost... spicy? Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing elven male cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";


Section 4 - NPC


Table of GameCharacterIDs (continued)
object	name
Castien	"Castien"

Castien is a man.
ScaleValue of Castien is 3. [human sized]
Body Weight of Castien is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Castien is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Castien is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Castien is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Castien is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Castien is 5. [length in inches]
Breast Size of Castien is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Castien is 2. [count of nipples]
Asshole Depth of Castien is 8. [inches deep for anal fucking]
Asshole Tightness of Castien is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Castien is 1. [number of cocks]
Cock Girth of Castien is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Castien is 9. [length in inches]
Ball Count of Castien is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Castien is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Castien is 0. [number of cunts]
Cunt Depth of Castien is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Castien is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Castien is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Castien is false.
PlayerRomanced of Castien is false.
PlayerFriended of Castien is false.
PlayerControlled of Castien is false.
PlayerFucked of Castien is false.
OralVirgin of Castien is false.
Virgin of Castien is true.
AnalVirgin of Castien is false.
PenileVirgin of Castien is false.
SexuallyExperienced of Castien is true.
TwistedCapacity of Castien is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Castien is false. [steriles can't knock people up]
MainInfection of Castien is "Elven Male".
Description of Castien is "[CastienDesc]".
Conversation of Castien is { "Woof." }.

to say CastienDesc:
	say "...";

instead of conversing the Castien:
	say "[Castien_TalkMenu]";

to say Castien_TalkMenu:
	let TalkDone be false;
	project the figure of ElvenHunter_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a little";
	now sortorder entry is 1;
	now description entry is "Talk about nothing in particular";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up your relationship";
	now sortorder entry is 4;
	now description entry is "Talk about how things stand, between him and you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up his sexual preferences";
	now sortorder entry is 5;
	now description entry is "Talk about what gets him off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Bring up the situation in the city as a whole";
	now sortorder entry is 6;
	now description entry is "Talk about how he sees things right now";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Wonder about what you should do next";
	now sortorder entry is 7;
	now description entry is "Talk about things to do";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Just chat a little":
					say "[Castien_Chat]";
				else if nam is "Bring up your relationship":
					say "[Castien_Relationship]";
				else if nam is "Bring up his sexual preferences":
					say "[Castien_Preferences]";
				else if nam is "Bring up the situation in the city as a whole":
					say "[Castien_City]";
				else if nam is "Wonder about what you should do next":
					say "[Castien_Plans]";
				if TalkDone is false: [didn't to any option that ends the conversation]
					say "     [bold type]What else do you want to talk about with Castien?[roman type][line break]";
					say "[Castien_TalkMenu]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the elven hunter, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Castien_Chat:
	say "...";

to say Castien_Relationship:
	say "...";

to say Castien_Preferences:
	say "...";

to say Castien_City:
	say "...";

to say Castien_Plans:
	say "...";


instead of fucking Castien:
	say "[CastienSexMenu]";

to say CastienSexMenu:
	project the figure of ElvenHunter_hard_icon;
	say "     [bold type]What exactly do you want to do with the elf?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him doggy style";
		now sortorder entry is 1;
		now description entry is "Get the buff dog on all fours and mount that tight ass of his";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Fuck him on his back";
		now sortorder entry is 2;
		now description entry is "Get the buff dog to roll over and take it";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride that doggy pole (vaginal)";
		now sortorder entry is 3;
		now description entry is "Have a round bouncing on his canine cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride that doggy pole (anal)";
	now sortorder entry is 4;
	now description entry is "Stuff that canine cock of his into your ass";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Tell him to take you (vaginal)";
		now sortorder entry is 5;
		now description entry is "Give the buff dog the freedom to make use of your body";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell him to take you (anal)";
	now sortorder entry is 6;
	now description entry is "Give the buff dog the freedom to make use of your body";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Blowjob (receiving)";
		now sortorder entry is 7;
		now description entry is "Have him put that muzzle of his to use on your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blowjob (giving)";
	now sortorder entry is 8;
	now description entry is "Reward your loyal dog by allowing him to face-fuck you";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck him doggy style":
					say "[Castien_sex01]";
				else if nam is "Fuck him on his back":
					say "[Castien_sex02]";
				else if nam is "Ride that doggy pole (vaginal)":
					say "[Castien_sex03]";
				else if nam is "Ride that doggy pole (anal)":
					say "[Castien_sex04]";
				else if nam is "Tell him to take you (vaginal)":
					say "[Castien_sex05]";
				else if nam is "Tell him to take you (anal)":
					say "[Castien_sex06]";
				else if nam is "Blowjob (receiving)":
					say "[Castien_sex07]";
				else if nam is "Blowjob (giving)":
					say "[Castien_sex08]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the elven hunter, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say Castien_sex01:
	say "...";

to say Castien_sex02:
	say "...";

to say Castien_sex03:
	say "...";

to say Castien_sex04:
	say "...";

to say Castien_sex05:
	say "...";

to say Castien_sex06:
	say "...";

to say Castien_sex07:
	say "...";

to say Castien_sex08:
	say "...";

Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Elven Hunter Infection"	"Infection"	""	Elven Hunter Infection rule	1000	false

This is the Elven Hunter Infection rule:
	if Player has a body of "Elven Hunter":
		trigger ending "Elven Hunter Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     Feeling all attachments to humanity and this world fading, you make your way to the park and go looking for the elves. Soon you hear one, at first, then many hunting horns in the distance, but drawing closer and closer. A large party of elves on horses and other, less easily recognizable beasts, breaks through the underbrush and surrounds you. The elf you met before is among them, and invites you to accompany the hunt through this and other worlds. You accept, swinging yourself on top of a black stallion that gets brought forward for you, then ride with them into the magical mist of a large portal, leaving this world - for now.";
		else:
			say "     When rescue comes, you're first brought into a holding facility of the military. Thanks to your otherworldly, elven beauty, it turns out to be a relatively short, comfortable stay, as male and female soldiers and medical personnel find themselves strongly attracted to you. You bed a few of them to pass the time until your tests are done and you're released as non-infectious. Returning to human society brings problems with it, as some people just can't keep their hands off you once they see your perfect body. An... incident leading to a mid-sized orgy with a football team and all of the cheerleaders forces you to seek help from the elves.";
			say "     You spend the next three weeks hiking through woods and wilderness until you finally hear first one, then many hunting horns in the distance, then closer and closer. A large party of elves on horses and other, less easily recognizable beasts, breaks through the underbrush and surrounds you. The elf you met before is among them and invites you to accompany the hunt through this and other worlds. You thank him, but decline, asking instead for help with your little problem. The elves gladly teach you how to weave illusions over yourself before they move on, allowing you to hide your true nature and walk through cities without constantly being propositioned. Except when you want it, that is.";


Elven Hunter ends here.
