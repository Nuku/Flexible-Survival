Version 1 of Elven Hunter by Wahn begins here.
[Version 1.1 - Lembas Bread drop item]

"Adds an Elven Hunter to Flexible Survival's Wandering Monsters table, With Impreg chance"

when play begins:
	add { "Elven Hunter" } to infections of guy;

Section 1 - Monster Responses

to say Hunter wins:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if HP of player > 0:
		say "     'Pathetic,' he sneers and shoves you to the ground. 'We had hoped this world would have finally brought forth something worthy of The Hunt again. A true warrior never surrenders.' He leaves you lying there, saying, 'You're not even worth sullying my blade. Do something useful with yourself - like serving as food for more worthy creatures.' He then silently vanishes into the shadows between the trees.";
	else:
		if bodyname of player is "Woof Elf" or bodyname of player is "Elven Hunter":
			say "     'And you want to call yourself an elf? Any novice hunter would have lasted longer in his first summer,' he scoffs at you. Pulling off your clothes, the hunter looks you over and touches your naked body, then remarks 'The tiny machines of this realm made you look the part, enough to fool pixies and lower fey. But believe me - you'll never be a true elf unless you get accepted for The Hunt.'";
		else if ( bodyname of player is listed in infections of Reptilelist and skinname of player is listed in infections of Reptilelist ):
			say "     The elf looks over your [bodytype of player] form with disdain. 'You're already beaten? How disappointing. I had remembered those big lizards this world had a while ago with more cunning and strength. Oh well, maybe you're just an especially frail and sickly specimen. But you're certainly waking the hope for the existence of worthy prey in this realm.'";
		[add other demons below as they are added to the game - left out the slutrat on purpose, as it's not a full demon the elf recognizes]
		else if bodyname of player is "Incubus" or bodyname of player is "Succubus" or bodyname of player is "Demon Brute" or bodyname of player is "Hellhound":
			say "     The elf looks over your [bodytype of player] form with disdain. 'A demon? Here? This is not your realm, creature. Go back where you belong - without the infernal energies of your home plane infusing you, you're pathetic. No challenge at all.'";
		else: [generic text for creatures he doesn't specifically recognize]
			say "     The elf looks over your [bodytype of player] form with disdain. 'You're already beaten? How disappointing. But finding a creature fit at least for the junior hunters gives hope that this world now has other, worthy prey again. A pity how quickly mortal races die off - those big lizards you had here a while ago had a certain reptilian cunning and made good hunting.'";
		WaitLineBreak;
		say "     Pushing you to your knees, he stands in front of you and opens up his leather pants. 'Let's see if you are better at providing entertainment. Open up.'";
		say "     He pushes his long, human-like cock against your lips until you obey and take it in. As you begin to suck on his member, your tongue playing over his shaft, the elf moans and holds on to you. You bob your head up and down on him, taking his cock deeper and deeper into your throat. Soon you find your nose bumping against the perfect and smooth skin under his navel. Moaning in lust, the elf takes hold of your head, pumping in and out faster and faster until he orgasms, shooting his seed deep in your throat.";
		LineBreak;
		say "     'Not bad. With creatures like you here, we'll at least have something to keep ourselves busy with between the hunts,' he says, then vanishes into the foliage.";

To say Hunter loses:
	if inasituation is true:
		stop the action; [text taken care of at the source]
	if bodyname of player is "Incubus" or bodyname of player is "Succubus" or bodyname of player is "Demon Brute" or bodyname of player is "Hellhound":
		say "     Stepping back, the elf gives you a hateful stare. Even after all your blows, he still looks more than ready to continue the fight, with only a light sheen of sweat on his brow. 'You're stronger than expected, demon. Did you find some way to taint this world's essence with your infernal power?' Wrinkling his nose, he spits at your feet and continues 'I'll allow you to live - for now, so you can spread the word to leave this world. Flee while you can - once our king is informed of your presence, I've no doubt all hunting parties will have orders to exterminate any of you filthy beasts they encounter.' With that, the elf silently vanishes into the forest.";
	else:
		if bodyname of player is "Elf" or bodyname of player is "Elven Hunter":
			say "     'Well done,' the elf says with a smile and nods to you in recognition. Even after all your blows, he still looks more than ready to continue the fight, with only a light sheen of sweat on his brow. He casually wipes that away, as if to show that he's got enough of toying with you, and clears his throat. 'Looks like you're a perfect candidate to join the Wild Hunt. Watch out for us if you hear the horns and we'll make you a real elf, not just a lookalike. But for now, why don't we get to your reward for besting me?' he asks, reaching for his belt as he does so.";
		else if ( bodyname of player is listed in infections of Reptilelist and skinname of player is listed in infections of Reptilelist ):
			say "     'Well done,' the elf says with a smile and nods to you in recognition. Even after all your blows, he still looks more than ready to continue the fight, with only a light sheen of sweat on his brow. He casually wipes that away, as if to show that he's got enough of toying with you, and clears his throat. 'Maybe you are a fitting heir to the big lizards we hunted on this world in the past. I've many fond memories of hunting the dinosaurs, good to see the reappearance of something similar in cunning and strength. The Wild Hunt will be honored to take you on once we ride. But for now, why don't we get to your reward for besting me?' he asks, reaching for his belt as he does so.";
		else:
			say "     'You're not bad prey, I have to admit', the elf says with a smile and nods to you in recognition. Even after all your blows, he still looks more than ready to continue the fight, with only a light sheen of sweat on his brow. He casually wipes that away, as if to show that he's got enough of toying with you, and clears his throat. 'The Wild Hunt will be honored to take you on once we ride. But for now, why don't we get to your reward for besting me?' he asks, reaching for his belt as he does so.";
		LineBreak;
		say "     What's your reaction to this? Do you stick around and have some fun with the elf [link](1)[as]1[end link], punch the smug bastard in the face [link](2)[as]2[end link] or talk yourself out of it and just leave [link](3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to have sex with him, [link]2[end link] to punch him or [link]3[end link] to walk away.";
		if calcnumber is 1: [sex]
			say "     [ElvenHunterSex]";
		else if calcnumber is 2: [punch him]
			say "     The boundless arrogance this elf shows really gets your blood boiling and in a second, you have your fist balled and land a punch right in his face. Catching himself after stumbling back a few steps, the pointy-eared hunter wipes a small trickle of blood from under his nose and gives you an annoyed look. 'I had hoped people in this world had evolved a bit, but I see you're as barbaric as ever. Oh well, even primitives will provide some sport...' With that, he vanishes between the trees.";
		else: [break off]
			say "     You shake your head and tell the elf that it was reward enough to face such a worthy adversary. He seems a little disappointed, but smiles readily enough and performs a flourished bow before vanishing back into the trees.";

to say ElvenHunterSex:
	if player is herm: [herms may choose]
		say "     Smiling at the prospect of claiming your reward from this handsome creature, you nod to him. Without further delay, he slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory, your cock instantly springing to attention.";
		say "     He smiles at you, then says 'I sense this realm's tiny machines have blessed you with both genders. Which would you prefer to claim me with?' (Y for cock, N for pussy)[line break]";
		if player consents:
			say "     You move the willing elf over to the next tree and have him bend over, leaning against its bark. Eagerly stepping up behind him, you rub your [cock size desc of player] cock between the silky smooth cheeks of his ass, then align its head with his pucker and start to push in. The elf moans lustfully as you slowly sink yourself into him, expertly keeping his muscles tight and gripping around your shaft while still allowing easy entry. As you bottom out inside him with your hips meeting the smooth buns of his ass, he grips the tree tightly and groans 'Take me hard and deep.'";
			WaitLineBreak;
			say "     Following his lustful request, you pull out until only the very tip of your cock remains, then slide deep into him in one sharp thrust until your hips slap against his firm ass. Holding on to his shoulders with both hands you pound into him, reveling in the vice-like grip he manages to keep your manhood in. The elf makes the most delightful grunts and moans to accompany each new thrust and the things he can do with the muscles in his ass are just indescribable.";
			say "     Not wanting this to be over too soon, you make yourself slow down a bit. As you let yourself rest for a moment with your [cock of player] cock deep inside its tight prison, your hands move over your partner's body, stroking over the smooth skin and feeling his hard muscles. You rest your [bodydesc of player] body lightly over his as your searching hands move to find his cock. Stroking along its length and softly squeezing his balls, you delight in the idealized form. You almost want to stay this way forever, deep inside and wrapped around this beautiful otherworldly visitor.";
			WaitLineBreak;
			say "     Feeling that you've recovered enough, the elf starts moving his hips, sliding himself forward and backward on your hard shaft and making both of you moan in pleasure. You join in, thrusting forward each time he pushes back, creating slapping noises each time his buns meet your hips. Soon, the arousal from you sliding in and out of the elf becomes too strong to be contained. You feel his perfect elven cock pulse in your hand as he splatters his seed all over the bark of the tree. His muscles around your cock convulse with each blast, driving you over the edge soon after. As you hold to him tightly, spurt after spurt of a massive load of cum blast through your [cock of player] cock and paint his insides. At the same time, your pussy gets drippingly wet with femcum, which starts to run down the inside of your leg.";
			LineBreak;
			say "     You stay like that for a moment, just holding him until your cock shrinks and plops out of the elf's ass, bringing with it a thin line of cum slowly leaking out of him. He then turns around and gives you a long and deep kiss. He whispers, 'I hope to hunt you again later,' then vanishes behind a tree.";
		else:
			say "     Stepping towards you, the elf frees you from any clothing you might be wearing, revealing your naked [bodytype of player] form. He guides you down to lay upon the discarded clothes, and kneels between your legs, kissing you softly on your nether lips. Before long, starts a line of soft kisses up your stomach and abs. He stops for a moment as he reaches your chest, playfully circling your nipples and licking them. Then he moves up, putting pleasant little kisses on your shoulder and neck until he finally arrives at your lips and goes in for a long and deep kiss.";
			say "     When you pull back for air, your body tingling all over from the arousal the elf has awoken, you notice something poking you in the stomach. Looking down, you see it's your partner's amazing cock, rock hard and ready. You take it in your hand eagerly, aligning it to your pussy while your other hand reaches around the handsome elf, grabbing one of his firm buns and pulling him towards you.";
			say "     You both share a deep moan as his amazing cock sinks into your folds, rubbing against the walls of your pussy. He goes deeper and deeper, spearing you on his shaft until finally you feel the smooth skin of his balls against your hips. Then he pulls out almost all the way again and slides back in hard, starting a series of thrusts that leaves you panting in lust. While his cock expertly finds just the right spots inside you, his hands aren't idle either, stroking your body and playing with your nipples.";
			WaitLineBreak;
			say "     The skillful attentions of your otherworldly lover make you forget almost everything else around you, spreading bliss into every fiber of your being. You wish it'd last forever, but even your hunter's self discipline has limits. With a deep moan, he holds tight to your body as the first jet of his cum shoots deep into your body, painting your womb with his fertile seed. After several more spurts, he exhaustedly sinks to the ground beside you and leans in for a kiss. You stay like that for a while, holding on to your elven partner and stroking his silky smooth skin.[impregchance]";
			LineBreak;
			say "     Some time later, the elf gives you a last soft kiss on the lips, then rises up and grabs his bow. With a whispered, 'I hope to hunt you again later', he turns from you and walks off. You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";
	else if player is male: [male]
		say "     Smiling at the prospect of claiming your reward from this handsome creature, you nod to him. Without further delay, he slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory, your cock instantly springing to attention.";
		say "     You move the willing elf over to the next tree and have him bend over, leaning against its bark. Eagerly stepping up behind him, you rub your [cock size desc of player] cock between the silky smooth cheeks of his ass, then align its head with his pucker and start to push in. The elf moans lustfully as you slowly sink yourself into him, expertly keeping his muscles tight and gripping around your shaft while still allowing easy entry. As you bottom out inside him with your hips meeting the smooth buns of his ass, he grips the tree tightly and groans 'Take me hard and deep.'";
		WaitLineBreak;
		say "     Following his lustful request, you pull out until only the very tip of your cock remains, then slide deep into him in one sharp thrust until your hips slap against his firm ass. Holding on to his shoulders with both hands you pound into him, reveling in the vice-like grip he manages to keep your manhood in. The elf makes the most delightful grunts and moans to accompany each new thrust and the things he can do with the muscles in his ass are just indescribable.";
		say "     Not wanting this to be over too soon, you make yourself slow down a bit. As you let yourself rest for a moment with your [cock of player] cock deep inside its tight prison, your hands move over your partner's body, stroking over the smooth skin and feeling his hard muscles. You rest your [bodydesc of player] body lightly over his as your searching hands move to find his cock. Stroking along its length and softly squeezing his balls, you delight in the idealized form. You almost want to stay this way forever, deep inside and wrapped around this beautiful otherworldly visitor.";
		WaitLineBreak;
		say "     Feeling that you've recovered enough, the elf starts moving his hips, sliding himself forward and backward on your hard shaft and making both of you moan in pleasure. You join in, thrusting forward each time he pushes back, creating slapping noises each time his buns meet your hips. Soon, the arousal from you sliding in and out of the elf becomes too strong to be contained. You feel his perfect elven cock pulse in your hand as he splatters his seed all over the bark of the tree. His muscles around your cock convulse with each blast, driving you over the edge soon after. As you hold to him tightly, spurt after spurt of a massive load of cum blast through your [cock of player] cock and paint his insides.";
		LineBreak;
		say "     You stay like that for a moment, just holding him until your cock shrinks and plops out of the elf's ass, bringing with it a thin line of cum slowly leaking out of him. He then turns around and gives you a long and deep kiss. He whispers, 'I hope to hunt you again later', then vanishes behind a tree.";
	else if player is female: [female]
		say "     Smiling at the prospect of claiming your reward from this handsome creature, you nod to him. Without further delay, he slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory.";
		say "     Stepping towards you, the elf frees you from any clothing you might be wearing, revealing your naked [bodytype of player] form. He guides you down to lie on the discarded clothes and kneels between your legs, kissing you softly on your nether lips area, then puts a line of soft kisses up your stomach and abs. He stops for a moment as he reaches your chest, playfully circling your nipples and licking them. Then he moves up, putting pleasant little kisses on your shoulder and neck until he finally arrives at your lips and goes in for a long and deep kiss.";
		WaitLineBreak;
		say "     When you pull back for air, your body tingling all over from the arousal the elf has awoken, you notice something poking you in the stomach. Looking down, you see it's your partner's amazing cock, rock hard and ready. You take it in your hand eagerly, aligning it to your pussy while your other hand reaches around the handsome elf, grabbing one of his firm buns and pulling him towards you.";
		say "     You both share a deep moan as his amazing cock sinks into your folds, rubbing against the walls of your pussy. He goes deeper and deeper, spearing you on his shaft until finally you feel the smooth skin of his balls against your hips. Then he pulls out almost all the way again and slides back in hard, starting a series of thrusts that leaves you panting in lust. While his cock expertly finds just the right spots inside you, his hands aren't idle either, stroking your body and playing with your nipples.";
		WaitLineBreak;
		say "     The skillful attentions of your otherworldly lover make you forget almost everything else around you, spreading bliss into every fiber of your being. You wish it'd last forever, but even your hunter's self discipline has limits. With a deep moan, he holds tight to your body as the first jet of his cum shoots deep into your body, painting your womb with his fertile seed. After several more spurts, he exhaustedly sinks to the ground beside you and leans in for a kiss. You stay like that for a while, holding on to your elven partner and stroking his silky smooth skin.[impregchance]";
		say "     Some time later, the elf gives you a last soft kiss on the lips, then rises up and grabs his bow. With a whispered, 'I hope to hunt you again later', he turns from you and walks off. You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";
	else: [neuter]
		say "     Smiling at the prospect of claiming your reward from this handsome creature, you nod to him. Without further delay, he slips out of his vest and pushes the leather pants off his bubble butt and his legs. For a second, you are spell-struck at seeing his pale, perfect body in all its naked glory.";
		say "     Stepping towards you, the elf frees you from any clothing you might be wearing, revealing your naked [bodytype of player] form. Even as he realizes your complete lack of genitalia, it doesn't stop him for more than a second. Soft hands start moving all over your body, his long fingers massaging weary muscles and creating pleasant tingly feelings as they stroke over your skin.";
		WaitLineBreak;
		say "     He guides you down to lie on the discarded clothes and kneels between your legs, kissing your smooth crotch area, then puts a line of soft kisses up your stomach and abs. He stops for a moment as he reaches your chest, playfully circling your nipples and licking them. Then he moves up, putting pleasant little kisses on your shoulder and neck until he finally arrives at your lips and goes in for a long and deep kiss.";
		say "     When you pull back for air, your body tingling all over from the arousal the elf has awoken, you notice something poking you in the stomach. Looking down, you see it's your partner's amazing cock, rock hard and ready. You grab for it to give the elf some relief too while your other hand pulls his head in for another kiss.";
		WaitLineBreak;
		say "     Stroking each other, you spend some time entwined on the ground until at last the hunter's self discipline breaks down. With a deep moan, he holds tight to your body as the first jets of his cum shoot from his cock and splash onto your chest. After several more spurts, he exhaustedly sinks to the ground beside you and leans in for a kiss. You, without the ability to experience such an orgasmic finish, meanwhile hold on to your elven partner and the warm glow of pleasure and contentment your time together has built up inside you.";
		LineBreak;
		say "     Some time later, the elf gives you a last soft kiss on the lips, then rises up and grabs his bow. With a whispered, 'I hope to hunt you again later', he turns from you and walks off. You have a very nice view of his pale naked body and impressive buns until he vanishes into the forest.";

to say elfdesc:
	setmongender 3;
	say "     A tall, slender man steps silently out of the shadow a bit ahead of you. He is a very handsome man dressed in dark green leather pants and an open fur-trimmed vest on first impression. But looking closer, you realize he's too beautiful to be a human - supernaturally so. With the clearly defined muscles under his pale, flawless skin and a face bearing sharp, beautiful features he'd make any human standing beside him look like a crudely assembled puppet. The sharp points of his ears poking out from under shoulder-length black hair and the bow in his hand remove any doubts - he's an elf. While you were busy staring at him, he studied you in turn with his jade green slit-pupiled eyes... and wasn't too impressed to judge from his expression.";
	if bodyname of player is "Incubus" or bodyname of player is "Succubus" or bodyname of player is "Demon Brute" or bodyname of player is "Hellhound":
		say "     He snarls 'Go back to the stinking pit you call home - demon', before gracefully pulling an arrow from the quiver on his back. With the comment 'I'll show you why you shouldn't try to spread your infestation on elven hunting grounds.' he lets it fly, purposefully missing your head by less an inch.";
	else if bodyname of player is "Elf" or bodyname of player is "Elven Hunter":
		say "     He sighs, saying 'A lookalike? The human obsession to become something different than they are truly is amazing.' Gracefully pulling an arrow from the quiver on his back, he continues, 'Let's see if you're worthy of the shape you wear...'";
	else if (bodyname of player is "Human" or bodyname of player is "Herm Human") and player is pure:
		say "     He sighs, saying 'A human - how droll. Still, some of you are rather inventive...' Gracefully pulling an arrow from the quiver on his back, he continues, 'Let's see if you might be worth hunting. Start running and be a bit of a challenge, will you?'";
	else if ( bodyname of player is listed in infections of Reptilelist and skinname of player is listed in infections of Reptilelist ):
		say "     He sighs, saying to himself 'It's scaly and looks a bit like the big lizards of the past - but will it be a worthy heir to their legacy of cunning and strength? Only one way to find out...' Gracefully pulling an arrow from the quiver on his back, he addresses you, 'Start running and be a bit of a challenge, will you?'";
	else:
		say "     He sighs, saying to himself, 'It'll have to do for now', before gracefully pulling an arrow from the quiver on his back. 'You there, creature - start running and be a bit of a challenge, will you?'";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Elven Hunter";
	now attack entry is "[one of]A finely fletched arrow buries itself in your lower leg.[or]Moving with an almost magical swiftness, the elf suddenly appears behind you and gives you a good kick.[or]You manage to get in close, just to be swatted on the head with the bow itself.[or]With his hunting knife in hand, the elf gives you a shallow, but bleeding cut.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Hunter loses]";
	now victory entry is "[Hunter wins]";
	now desc entry is "[elfdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "supernaturally beautiful, with sharp but handsome features, full lips and a seductive smile. Your eyes are slightly larger than a human's, showing jade green slitted irises and two pointed ears poke out from under your long black hair";
	now body entry is "that of a lithe and slender human being, toned and strong. It is garbed in tight, dark green leather pants and a fur-trimmed vest, allowing for unhindered, graceful movement";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a round, firm bubble butt, just waiting to be grabbed.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into sharp, but handsome features. Your ears lengthen and taper to narrow points. Finally from one blink to the next your eyes change in some way, allowing for much sharper vision"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a more attractive form, ending up in a tall and slender, nicely muscled shape. You hear a flutter like fairies wings behind you and when you turn around, there's a small pile of clothing sitting on the ground. Slipping into the soft boots, tight leather pants and fur-trimmed vest, you just feel right";
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
	now cocks entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9;         [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of nipples the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "lembas bread";   [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if player is male]handsome[else]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

when play ends:
	if bodyname of player is "Elven Hunter":
		if humanity of player < 10:
			say "     Feeling all attachments to humanity and this world fading, you make your way to the park and go looking for the elves. Soon you hear one, at first, then many hunting horns in the distance, but drawing closer and closer. A large party of elves on horses and other, less easily recognizable beasts, breaks through the underbrush and surrounds you. The elf you met before is among them, and invites you to accompany the hunt through this and other worlds. You accept, swinging yourself on top of a black stallion that gets brought forward for you, then ride with them into the magical mist of a large portal, leaving this world - for now.";
		else:
			say "     When rescue comes, you're first brought into a holding facility of the military. Thanks to your otherworldly, elven beauty, it turns out to be a relatively short, comfortable stay, as male and female soldiers and medical personnel find themselves strongly attracted to you. You bed a few of them to pass the time until your tests are done and you're released as non-infectious. Returning to human society brings problems with it, as some people just can't keep their hands off you once they see your perfect body. An... incident leading to a mid-sized orgy with a football team and all of the cheerleaders forces you to seek help from the elves.";
			say "     You spend the next three weeks hiking through woods and wilderness until you finally hear first one, then many hunting horns in the distance, then closer and closer. A large party of elves on horses and other, less easily recognizable beasts, breaks through the underbrush and surrounds you. The elf you met before is among them and invites you to accompany the hunt through this and other worlds. You thank him, but decline, asking instead for help with your little problem. The elves gladly teach you how to weave illusions over yourself before they move on, allowing you to hide your true nature and walk through cities without constantly being propositioned. Except when you want it, that is.";

Table of Game Objects (continued)
name	desc	weight	object
"lembas bread"	"A thin cake of bread, wrapped in a large leaf. It looks very tasty."	1	lembas bread

instead of sniffing lembas bread:
	say "Mmmh! Smells like freshly baked, delicious bread.";

lembas bread is a grab object.
the usedesc of lembas bread is "[lembas bread use]";

to say lembas bread use:
	say "     Unwrapping the thin bread from its leaf, you take a bite from it. Tastes delicious, almost as if it's been freshly baked an hour ago. The meal fills your stomach quite nicely, even though it is just a few bites.";
	PlayerEat 30;

lembas bread is infectious. The strain of lembas bread is "Elven Hunter".

Elven Hunter ends here.
