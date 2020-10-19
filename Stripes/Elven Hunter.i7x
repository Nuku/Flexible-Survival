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
	if BodyName of Player is "Elven Hunter", now Bodyname of Player is "Elven Male";
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
	if inasituation is true:
		stop the action; [text taken care of at the source]
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
		if BodyName of Player is "Woof Elf" or BodyName of Player is "Elven Hunter":
			say "     'And you want to call yourself an elf? Any novice hunter would have lasted longer in his first summer,' he scoffs at you. Pulling off your clothes, the hunter looks you over and touches your naked body, then remarks 'The tiny machines of this realm made you look the part, enough to fool pixies and lower fey. But believe me - you'll never be a true elf unless you get accepted for The Hunt.' ";
		else if ( BodyName of Player is listed in infections of Reptilelist and SkinName of Player is listed in infections of Reptilelist ):
			say "     The elf looks over your [bodytype of Player] form with disdain. 'You're already beaten? How disappointing. I had remembered those big lizards this world had a while ago with more cunning and strength. Oh well, maybe you're just an especially frail and sickly specimen. But you're certainly waking the hope for the existence of worthy prey in this realm.' ";
		[add other demons below as they are added to the game - left out the slutrat on purpose, as it's not a full demon the elf recognizes]
		else if BodyName of Player is "Incubus" or BodyName of Player is "Succubus" or BodyName of Player is "Demon Brute" or BodyName of Player is "Hellhound":
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
	if inasituation is true:
		stop the action; [text taken care of at the source]
	else:
		project the Figure of ElvenHunter_icon;
		if BodyName of Player is "Incubus" or BodyName of Player is "Succubus" or BodyName of Player is "Demon Brute" or BodyName of Player is "Hellhound":
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
			else if ( BodyName of Player is listed in infections of Reptilelist and SkinName of Player is listed in infections of Reptilelist ):
				say "'Maybe you are a fitting heir to the big lizards we hunted on this world in the past. I've many fond memories of hunting the dinosaurs, good to see the reappearance of something similar in cunning and strength. The Wild Hunt will be honored to take you on once we ride.' ";
			else:
				say "'The Wild Hunt will be honored to take you on once we ride. Always good to have some novel prey with unpredictable behavior.' ";
			say "Castien wiggles his eyebrows and winks at you, then adds, 'But for now, why don't we get to your reward for besting me?' His hands reach for his belt after doing so.";
			say "     [bold type]You seem to have impressed she elf, gaining you a point in his favor.[roman type][line break]";
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
				else if nam is "Fuck him on his back":
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
	say "     Only to happy to agree to the prospect of claiming your reward from this handsome being, you nod to him. Without further delay, Castien slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory, your cock instantly springing to attention. [if player is herm]He smiles at you, then says, 'I sense this realm's tiny machines have blessed you with both genders. Though I think I know what your mood is set for right now.' [end if]The elf's gaze wanders down to come to rest on your erection, his face now showing a lewd smirk. You move the willing elf over to the next tree and have him bend over, leaning against its bark. As the naked hunter murmurs a few arcane syllables under his breath, you see a sheen of slick wetness appear, covering his crack and pucker. Certainly a very useful spell he knows there.";
	say "     Eagerly stepping up behind Castien, you rub your [cock size desc of Player] cock between the silky smooth cheeks of his ass, then align its head with his pucker and start to push in. The elf moans lustfully as you slowly sink yourself into him, expertly keeping his muscles tight and gripping around your shaft while still allowing easy entry into his lubed hole. As you bottom out inside him with your hips meeting the smooth buns of his ass, he grips the tree tightly and groans, 'Take me hard and deep!' Following his lust-filled request, you pull out until only the very tip of your cock remains, then slide deep into him in one sharp thrust until your hips slap against his firm ass. The two of you fill the forest with moans and pants as you hold on to Castien's shoulders with both hands you pound into him, reveling in the vice-like grip he manages to keep your manhood in. The elf makes the most delightful sounds to accompany each new thrust and the things he can do with the muscles in his ass are just indescribable.";
	WaitLineBreak;
	say "     Not wanting this to be over too soon, you make yourself slow down a bit. As you let yourself rest for a moment with your [Cock of Player] cock deep inside its tight prison, your hands move over your partner's body, stroking over the smooth skin and feeling his hard muscles. Leaning your [bodydesc of Player] body lightly over his as your searching hands move to find his cock. It feels pretty long and smooth, bare of any imperfections, with a snug pair of balls just beneath. Delighting in the perfection of his physical form, his scent, just everything about the elf, you almost want to stay this way forever, deep inside as well as wrapped around your beautiful otherworldly visitor. Eventually though, as he seems to think that you've recovered enough, the elf starts moving his hips, fucking his own ass on your hard shaft and making both of you moan in pleasure. You join in, thrusting forward each time he pushes back, creating slapping noises each time his buns meet your hips.";
	say "     Soon, the arousal from you sliding in and out of the elf becomes too strong to be contained. You feel his perfect elven cock pulse in your hand as he splatters his seed all over the bark of the tree. His muscles around your cock convulse with each blast, driving you over the edge soon after. As you hold to him tightly, spurt after spurt of a massive load of cum blast through your [Cock of Player] cock and paint his insides. [if Player is herm]At the same time, your pussy gets dripping wet with femcum, which starts to run down the inside of your leg. [end if]You stay like that for a moment, just holding him until your cock shrinks and plops out of the elf's ass, bringing with it a thin line of cum slowly leaking out of him. Breathing heavily, the elf reaches down between his legs, feeling his freshly bred asshole and fingering it a little for good measure. 'That was amazing,' he pants happily, then turns around and gives you a long and deep kiss that seems to go on and on.";
	WaitLineBreak;
	say "     When you finally part after another long while of making out, the elf quickly grabs his clothes and weapon and starts to walk off into the forest, naked as he is and with your seed trickling down the insides of his legs. Glancing over his shoulder, he says, 'I really look forward to our next encounter. Be sure to be ready for a fight.' You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";
	say "     [bold type]He really liked you fucking him quite a bit. You think that gained you another point in his favor.[roman type][line break]";
	increase Charisma of Castien by 1; [bonus point because our elf really enjoys a good stuffing]
	NPCSexAftermath Castien receives "AssFuck" from Player;

to say Castien_Fucked_Vaginal:
	say "     Only to happy to agree to the prospect of claiming your reward from this handsome being, you nod to him. Without further delay, Castien slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory[if Player is herm], your cock instantly springing to attention. He smiles at you, then says, 'I sense this realm's tiny machines have blessed you with both genders. Though I think I know what your mood is set for right now.' [else]. [end if]Stepping towards you, the elf frees you from any clothing you might be wearing, revealing your naked [bodytype of Player] form. He guides you down to lay upon the discarded clothes, and kneels between your legs, kissing you softly on your nether lips. Before long, starts a line of soft kisses up your stomach and abs. He stops for a moment as he reaches your chest, playfully circling your nipples and licking them.";
	say "     Then the handsome elf moves up, putting pleasant little kisses on your shoulder and neck until he finally arrives at your lips and goes in for a long and deep kiss. When you pull back for air, your body tingling all over from the arousal that Castien has awoken, you notice something poking you in the stomach. Looking down, you see it's your partner's amazing cock, rock hard and ready. You take it in your hand eagerly, aligning it to your pussy while your other hand reaches around the lithe hunter, grabbing one of his firm buns and pulling him towards you. You both share a deep moan as his amazing cock sinks into your folds, rubbing against the walls of your pussy. He goes deeper and deeper, spearing you on his shaft until finally you feel the smooth skin of his balls against your hips. Then he pulls out almost all the way again and slides back in hard, starting a series of thrusts that leaves you panting in lust. While his cock expertly finds just the right spots inside you, his hands aren't idle either, stroking your body and playing with your nipples.";
	WaitLineBreak;
	say "     The skillful attentions of your otherworldly lover make you forget almost everything else around you, spreading pleasure into every fiber of your being. With a breathless scream, you climax, pussy getting dripping wet around his erection[if player is herm] and your own cock starting to spurt out long strings of cum. [else]. [end if]At the same time, he never stops fucking you, constantly adding to the stimulation that keeps you in blissful oblivion. You wish it'd last forever, but even your hunter's self discipline has limits. With a deep moan, he holds tight to your body as the first jet of his cum shoots deep into your body, painting your womb with his fertile seed. After several more spurts, he exhaustedly sinks to the ground beside you and leans in for a kiss. You stay like that for a while, holding on to your elven partner and stroking his silky smooth skin.";
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
		say "     As you pull an empty bottle out of your pack and wiggle it in the air, Castien looks at you with a raised eyebrow. 'Err, what exactly is it you're suggesting here?' Taking the plastic bottle out of your hand, he gives it a squeeze and watches the material deform. 'Odd shape for a sex toy, and it's rather squishy, is it not? I do hope you're not suggesting anything concerning... urination? That's not appropriate in my culture.' Hastily shaking your head, you explain that you want to catch his cum in your bottle. 'Oh. Well, that's still a bit peculiar, but if you got your heart set on it, let's do it.' Chuckling, the elf slips off his vest and pushes the leather pants over his bubble butt, then down his legs. He seems to revel in you watching him, your eyes glued to his pale, perfect body in all its naked glory. 'You can touch me, if you want,' Castien tells you with a wink, taking hold of your hand to guide it to his chest.";
		add "Milked" to Traits of Castien;
	else:
		say "     As you pull an empty bottle out of your pack, Castien lets out a laugh. 'Again? Okay then,' he says, accepting the bottle. 'Gotta say I'm curious what you're doing with the stuff. I mean, we could just fuck, if you want to knock yourself up with my seed. Or are you running a breeding farm somewhere, and soon I'll learn I have twenty half-elf children?' Looking at you with a curious expression and his head tilted a little, you can't tell if Castien is intrigued or off-put by that possibility. He doesn't really dwell on it though, instead throwing out more wild theories. 'What else... hmm, you're not drinking it, are you? If you are, I gotta tell you that this isn't the way to top off your mana levels.' Chuckling and giving a shrug, the elf then slips off his vest and pushes the leather pants over his bubble butt and down his legs. He seems to revel in you watching him, your eyes glued to his pale, perfect body in all its naked glory. 'You can touch me, if you want,' Castien tells you with a wink, taking hold of your hand to guide it to his chest.";
	say "     Starting to stroke and caress the hunter, fingers seeking out his nipples to lightly pinch them, the elf begins to masturbate at the same time, doing long strokes up and down his long, thin shaft. 'Meeting strange new beings from other world always brings some surprises with it, but this is a first I gotta say,' he comments with a chuckle. Still, the elf reacts very well to your hands on him, touching and stimulating his body as he pleasures himself. Pretty erotic actually, to just play with him like this, and you enjoy every minute of it until Castien gets kind of close, judging from his breathing coming kind of quick and shallow. Then suddenly, the elf winks at you and says, 'Okay, you take over now - bet it'll be extra special if you milked it yourself, ha!' With that said, he turns his hips a little, wagging the erect cock your way, and you quickly lower your hand to wrap it around the warm, firm shaft.";
	WaitLineBreak;
	say "     It takes only a few strokes before you drive the elf over the edge and he lets out an urgent grunt when the first spurt of his cum shoots into the bottle he is holding over his cum-slit, hitting the end with a quiet but audible splat. You squeeze his throbbing cock tightly as it erupts with more spurts of elven seed, making Castien's legs tremble from the sensations that gives him and prolonging his orgasm through the additional stimulation. Jerking him a little, and pinching his nipples with your free hand, you milk all the cum you can get out of your otherworldly visitor, until he eventually pats your wrist to show that he's done and getting kind of sensitive. He raises the bottle to look at it, showing you the moderate amount of cum in its depth. While it's a respectable amount for a human-like person, elves clearly aren't on the same level as some other creatures that are literal geysers of sperm.";
	say "     Seeing how much room there is left in the bottle makes Castien frown a little, then turn away from you for a second, hiding the bottle from sight. You hear him murmur something that must have been an arcane incantation, as he presents you with a fully topped off bottle a moment later, smirking a little as he puts the cap on it. While you take out a pen and label the bottle, the elf gets dressed again. He looks at your fresh bottle of elven cum and chuckles as you carefully pack it away. With a whispered, 'I hope to hunt you again later', he then turns away walks off. You have a very nice view of his bubble butt in those tight leather pants until he vanishes into the forest.";
	LineBreak;
	ItemGain elven male cum by 1;

to say Castien_Decline:
	say "     Taking care to soften the blow of your rejection, you shake your head and tell the elf that it was reward enough to face such a worthy adversary. 'Oh, a pity. Bedding otherworldly beings can bring quite a lot of enjoyment, you know. Maybe next time, then?' He gives his disappointment air with a sigh, but soon after smiles readily enough again. With a flourished bow, the elf then vanishes back into the darkness between the trees.";

to say Castien_Punch:
	say "     The boundless arrogance this elf shows really gets your blood boiling and in a second, you have your fist balled and land a punch right in his face. Catching himself after stumbling back a few steps, the pointy-eared hunter wipes a small trickle of blood from under his nose and gives you an annoyed look. 'I had hoped people in this world had evolved a bit, but I see you're as barbaric as ever. Oh well, even primitives will provide some sport...' With that, he murmurs some arcane syllables and vanishes into thin air. Faint, almost imperceptible sounds of footfalls tell you that he became invisible to extricate himself from this confrontation.";
	say "     [bold type]Castien didn't like that.[roman type][line break]";
	decrease Charisma of Castien by 1;

to say ElvenHunterDesc:
	setmongender 3;
	project the Figure of ElvenHunter_Encounter_icon;
	if PlayerMet of Castien is false:
		say "     A tall, slender man steps silently out of the shadows a bit ahead of you. He is a very handsome man dressed in dark green leather pants and an open fur-trimmed vest on first impression. But looking closer, you realize he's too beautiful to be a human - supernaturally so. With the clearly defined muscles under his pale, flawless skin and a face bearing sharp, beautiful features he'd make any human standing beside him look like a crudely assembled puppet. The sharp points of his ears poking out from under shoulder-length black hair and the bow in his hand remove any doubts - he's an elf. While you were busy staring at him, he studied you in turn with his jade green slit-pupiled eyes... and wasn't too impressed to judge from his expression.";
		if BodyName of Player is "Incubus" or BodyName of Player is "Succubus" or BodyName of Player is "Demon Brute" or BodyName of Player is "Hellhound":
			say "     He snarls 'Go back to the stinking pit you call home - demon', before gracefully pulling an arrow from the quiver on his back. With the comment, 'I'll show you why you shouldn't try to spread your infestation on elven hunting grounds,' he lets it fly, purposefully missing your head by less an inch.";
		else if BodyName of Player is "Elf" or BodyName of Player is "Elven Hunter":
			say "     He sighs, saying 'A lookalike? The human obsession to become something different than they are truly is amazing.' Gracefully pulling an arrow from the quiver on his back, he continues, 'Let's see if you're worthy of the shape you wear...'";
		else if (BodyName of Player is "Human" or BodyName of Player is "Herm Human") and player is pure:
			say "     He sighs, saying 'A human - how droll. Still, some of you are rather inventive...' Gracefully pulling an arrow from the quiver on his back, he continues, 'Let's see if you might be worth hunting. Start running and be a bit of a challenge, will you?'";
		else if ( BodyName of Player is listed in infections of Reptilelist and SkinName of Player is listed in infections of Reptilelist ):
			say "     He sighs, saying to himself 'It's scaly and looks a bit like the big lizards of the past - but will it be a worthy heir to their legacy of cunning and strength? Only one way to find out...' Gracefully pulling an arrow from the quiver on his back, he addresses you, 'Start running and be a bit of a challenge, will you?'";
		else:
			say "     He sighs, saying to himself, 'It'll have to do for now', before gracefully pulling an arrow from the quiver on his back. 'You there, creature - start running and be a bit of a challenge, will you?'";
	else:
		say "     Castien, the elven hunter you met before, steps out of the shadows some distance ahead of you. He is a very handsome male, dressed in dark green leather pants and an open fur-trimmed vest that shows his impressive abs and chest. With the clearly defined muscles under his pale, flawless skin and a face bearing sharp, beautiful features he'd make any human standing beside him look like a crudely assembled puppet. The sharp points of his ears poking out from under shoulder-length black hair and the bow in his hand complete the look of a proud elven hunter. While you were busy staring at him, he studied you in turn with his jade green slit-pupiled eyes...";
		if Charisma of Castien > 5 and PlayerFucked of Castien is true: [he likes the player]
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
				say "     Smiling at the handsome elf, you tell him that you've fought before, and by now he should know your prowess fairly well. While combat can be a challenge, in this instance, you both know that you'd beat him. 'Is that so? he asks in a tone both amused and challenging. Castien keeps his gaze locked with yours for a long moment, then laughs out loud and shakes his head. 'I'll... let you believe that, for now. So, if you're such a great fighter, what will you pick as your reward for besting me?' His hands reach for his belt as he says those words.";
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
			say "     'Oh, it's you. Going to let me down, or did you man up finally' The elf says this with a slightly up-turned nose, telling you that he doesn't believe you'll be any challenge at all.";
		else: [he dislikes the player]
			say "     'Oh, it's you.' With an eye-roll, he takes an arrow from his quiver right away. 'Likely just going to be another waste of my time, but then... I've seen some extreme transformations here, so maybe you've become less worthless somehow?' The elf says this with a slightly up-turned nose, telling you that he doesn't believe you'll be any challenge at all.";

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

to say Castien_Exploration_High:
	say "     Setting out with your elven companion, the two of you soon approach the edge of the Urban Forest. Trees and nature gives way to a more typical urban environment, with mostly intact streets and buildings, even if there are numerous wrecked cars, heaps of trash and scattered clothing accompanied by dried puddles of cum. [one of]Carefully setting his booted feet to avoid making any noise as he walks through an expanse of glass shards covering the ground in front of a looted store, [or]Touching the burned stump of a decorative tree and seeing its ashen bark crumble away under his fingertips, [or]Inspecting a luxury car that seems to have been peeled open by large claws to get at the driver, [or]Looking up from a giant claw-mark scoring deep into the asphalt of the road, [or]Spending a moment to poke at the left-behind possessions of someone who was fucked and transformed, [or]Inspecting a parking meter that seems to have been chewed on by... something, [at random]Castien then lets his gaze wander over the area. 'Charming place you've taken us to, really. I take it that these were the seat of your aristocracy?' the elf says, nodding to the tall shapes of high rises around you. For a second, you think of explaining the intricacies of modern economics to him, then decide to just nod instead, as his guess is close enough.";
	say "     'Perfect,' the elf says with a smirk. 'Ruthless people, with their fortunes ruined. They will fight like cornered rats once the chase draws to a close, and provide appropriate entertainment for the Hunt. Let us go and observe more closely then.' That said, Castien reaches out to touch your arm, murmuring some arcane incantation as he does so. The world all around you seems to shimmer for a second before stabilizing once more. 'Stay within five paces, or you'll step outside the shroud,' the elf tells you in a low whisper, then gives a handsign for you to move ahead with him. Seems he's turned you invisible. It doesn't take too long before your now much more direct exploration brings you into the proximity of ";
	let randomnumber be a random number from 1 to 5; [adjust the latter number for the number of options]
	if randomnumber is:
	-- 1: [leopardman]
		say "a side alley, from which you hear raised voices, followed by a the sounds of running footsteps. Castien takes a step back, arm outstretched to pull you with him, making sure that the (mostly human) woman running from the alley doesn't collide with either of you. The scrape of claws on asphalt heralds the person chasing her, which is a muscular anthro leopard.";
		WaitLineBreak;
		say "     The cat easily runs down his prey, wrapping a strong arm around the woman from behind and bringing her to a stand. Chuckling, he licks her cheek and says, 'Caught you! You know, we were only gonna take the backpack, but with you trying to run off and forcing us to chase, I think you owe me and the guys a bit more now!' For a second, you wonder who the 'we' is that he's referring to, but the question answers itself as two more leopardmen come sprinting around the corner at the end of the block. They must have split up to cut off the woman's avenues of escape. Now all three of them close in around her and she's pulled along to wherever they make their den. Castien watches them go with a dispassionate expression, only commenting when the group is out of earshot. 'Prosperity creates its own predators, that is true in any world I've seen so far. I wonder how they'll like it when they become the hunted.' As he says this, his green eyes narrow to thin slits, like those of a cat that has spotted prey.";
	-- 2: [peacock]
		say "one of the few stores that seems fully intact, a rarity between all the others. Looks like a high quality clothing boutique. Inside, you can see several people, standing around, all very well dressed. They seem nervous in some way, glancing at each other from the corner of their eyes, and over at the door.";
		WaitLineBreak;
		say "     One half-equine man suddenly breaks from the group and rushes towards the door, only to be intercepted by an anthro peacock stepping out between the long rows of designer clothing. Raising a clawed hand and wagging his finger, the bird spreads his glorious tail-feathers in a huge fan, which reduces the escapee to glassy-eyed immobility. The next thing that the peacock does is holding up a piece of clothing he had in his other hand to the man, apparently trying to decide if he likes it better than what the entranced guy is already wearing. With a quick command, he has the man stripping right there in the store and put it on, then shepherds him back to the other people he seems to be using as living dress-up dolls. 'Mindbenders too? Won't this be an interesting place to hunt! Though he'd have some issues trying that trick with one of us,' Castien comments with a smirk.";
	-- 3: [chocolate lab]
		say "a trail of paw-prints all along the sidewalk. Castien crouches down and looks at it, brushes a finger through the brown mass forming the prints and sniffs it. 'Chocolate,' the elf says before brushing his finger off against the ground. Clearly a bit puzzled, he follows the trail for a little while, eventually arriving at a store selling 'Fine Chocolates'.";
		WaitLineBreak;
		say "     Inside the store, there are numerous gloriously detailed chocolate animals on display in refrigerated display cases. One of those seems to have toppled over at some point, breaking when it did and possibly being responsible for releasing a chocolate Labrador that you can see in there. The other eight of the creatures forming a swarm of canine shapes and wagging tails as they play with each other surely can't have come from the display though, as there wouldn't have been enough room in it. Seems the further examples must have been created in the 'natural' way, if one can speak of it that way for living chocolate sculptures. 'Now that's just... bizarre. But novel, no one will be able to deny that,' your elven companion comments the scene, then adds in a contemplative tone, 'I wonder if the other creatures are alive too and just can't move because they're cooled.'";
	-- 4: [wolverine]
		say "the incredible high tower of a luxury hotel. Were it not for a maybe ten foot diameter crater of shattered windows marring the side of the building about halfway up, one might think that it was just any day. The lights in the place are still on, and you can see a human woman in a professional-looking jacket sitting at the front desk.";
		WaitLineBreak;
		say "     Castien takes a step towards the open entrance door, at which point you hear a deep-voiced growl coming from a niche in the wall, just inside the building. 'Stop right there! The hotel is in lockdown right now! Only already registered guests may enter, and for their security, no one may leave!' Stepping into the light, the person who spoke reveals himself to be an enormous anthro wolverine, so bulging with muscles that he burst the seams of his 'Wolverine Security' jacket. The nightstick in his large, clawed paws looks almost like a toy in comparison to the anthro's bulk. 'Wait, you can see us?' Castien inquires, curiosity audible in his voice. The guard shakes his head, then scrunches up his muzzle and taps it. 'You don't smell like any guest I know, so unless you have a room key you can show me, fuck off!'";
		say "     Behind the large wolverine and outside of his zone of vision, you see the front desk worker's desperate gaze search for whoever is talking. She doesn't seem to be able to perceive you. Pressing her lips together, the young woman quietly raises three handwritten signs, one after another: 'PLEASE DO NOT AGGRAVATE SECURITY - ALL FOUR OF THEM ARE OUT OF CONTROL', '68 GUESTS AND PERSONNEL INSIDE, ALL HUMAN', 'PLEASE SEND HELP!' Clearing his throat, your elven companion tells the guard, 'We did not mean to intrude. You can stand down and we will leave.' Tapping your arm, he walks away from the building in an unhurried tempo before eventually speaking up again. 'Mmmh, those people certainly seem secure, but they don't seem happy about it. One place to avoid, I would say. Creatures like that guardian will never run, and we're here to hunt, not fight pitched battles.'";
		WaitLineBreak;
	-- 5: [ocelot]
		say "a slender ocelot, hiding behind a wrecked car. He is dressed in a leather harness, collar, cuffs and a codpiece, letting his gaze sweep over the streets as if he's searching for someone. As the right person doesn't seem to be near, he soon moves on, sprinting to a new position where he can hide and continuing his search there. Waiting for the cat to be out of earshot, Castien taps his chin and comments, 'Looks like someone's pet got out, or maybe they were separated. Could be an interesting bit of prey, that one. Pre-trained, so to say. I'll be sure to mention him in my report.'";
	say "     Having seen enough for now, the elf angles his steps back in the direction you came from. Along the way, the two of you have a casual conversation about details of human society and the things that you've been seeing in the city recently, with him listening intently and making a mental note of it. When you finally arrive back at the urban forest and step into the shadow of its trees, Castien stops for a moment and turns to you fully. 'Thank you for such a delightful outing in this world. It was very informative, and also nice to spend some time conversing with you.' With a half-bow, the smiling elf makes his goodbye from you, turning and walking off into the shadows. You have a very nice view of his bubble butt in those tight leather pants until he vanishes into the forest.";
	AddNavPoint Entrance to the High Rise District;
	if Loyalty of Castien < 10:
		increase Loyalty of Castien by 1;

Section 2 - Creature Insertion

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
	now enemy title entry is "Elven Hunter"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Castien"; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]A finely fletched arrow buries itself in your lower leg.[or]Moving with an almost magical swiftness, the elf suddenly appears behind you and gives you a good kick.[or]You manage to get in close, just to be swatted on the head with the bow itself.[or]With his hunting knife in hand, the elf gives you a shallow, but bleeding cut.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Hunter loses]";
	now victory entry is "[Hunter wins]";
	now desc entry is "[ElvenHunterDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "supernaturally beautiful, with sharp but handsome features, full lips and a seductive smile. Your eyes are slightly larger than a human's, showing jade green slitted irises and two pointed ears poke out from under your long black hair";
	now body entry is "that of a lithe and slender human being, toned and strong";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a round, firm bubble butt, just waiting to be grabbed.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
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
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 63;
	now lev entry is 8;                 [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12;               [ Monster's average damage when attacking. ]
	now area entry is "Forest";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;          [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9;         [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2;           [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;        [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;          [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;          [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0;      [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]          [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is true;
	now libido entry is 0;
	now loot entry is "lembas bread";   [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;         [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "elven male cum";
	now TrophyFunction entry is "[GenerateTrophyList_ElvenHunter]";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if Player is male]handsome[else]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
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
lembas bread is infectious. The strain of lembas bread is "Elven Hunter".
the usedesc of lembas bread is "[lembas bread use]";

to say lembas bread use:
	say "     Unwrapping the thin bread from its leaf, you take a bite from it. Tastes delicious, almost as if it's been freshly baked an hour ago. The meal fills your stomach quite nicely, even though it is just a few bites.";
	PlayerEat 30;


Table of Game Objects (continued)
name	desc	weight	object
"purple berries"	"Wrapped in an artfully folded five-pointed leaf, you see a handful purple berries. They look fresh as if recently picked, and you can't help but feel that they'd be tasty and good for you."	0	purple berries

purple berries is a grab object.
the usedesc of purple berries is "[purple berries use]";

to say purple berries use:
	say "     Carefully pulling open the folded leaf, you pick up one of the berries between your fingers and put it into your mouth. Mmmh, tasty! Eagerly grabbing the next and throwing it into your mouth, it doesn't take long at all before you have finished them all off. The sweet taste lingers a little in your mouth, and you can feel a sensation of wellness spread through your whole body.";
	PlayerEat 10;
	PlayerHealed 15;

instead of sniffing purple berries:
	say "Smells like a leaf, and sweet berries.";

Table of Game Objects (continued)
name	desc	weight	object
"jade coin"	"A thin disk of green stone, with a square hole in the middle. On one side, a dragon with a very long and winding body is wrapped all the way around the hole, the other side is covered in otherworldly symbols that you do not understand."	0	jade coin

jade coin is a grab object.
the usedesc of jade coin is "[jade coin use]";

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
"elven male cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Elven Male Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	elven male cum

elven male cum is a grab object.
elven male cum is cum.
elven male cum is infectious.
The strain of elven male cum is "Elven Male".
the usedesc of elven male cum is "[elven male cum use]";

to say elven male cum use:
	say "     Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and almost... spicy? Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
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
Cunt Depth of Castien is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
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
The description of Castien is "[CastienDesc]".
The conversation of Castien is { "Woof." }.

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
		now title entry is "Blow job (receiving)";
		now sortorder entry is 7;
		now description entry is "Have him put that muzzle of his to use on your cock";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Blow job (giving)";
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
				else if nam is "Blow job (receiving)":
					say "[Castien_sex07]";
				else if nam is "Blow job (giving)":
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
