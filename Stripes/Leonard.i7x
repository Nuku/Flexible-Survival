Version 4 of Leonard by Stripes begins here.
[Version 4.1.1 - description tweaks]

"Adds a Male Feline NPC named Leonard to the Flexible Survival game"

Section 1 - Event and Lion's Den

Feline Friend is a situation.
The sarea of Feline Friend is "Park".
when play begins:
	add Feline Friend to badspots of guy;
	add Feline Friend to badspots of girl;
	add Feline Friend to badspots of furry;

Instead of resolving a Feline Friend:
	say "     Move through the trees after being forced off the path by a pack of wolves you spotted, you try your best to remain quiet while moving quickly. As you hear the pack howl, you push aside some branches, hoping to find another section of path, but instead find yourself at a small clearing before a rocky hillside. There is the mouth to a cave in the cliff's face at this edge of the park. Worried about what may lurk there, you start to step back when you hear a voice call out.";
	say "     'No, you need not go. Do not worry. I shall not attack you unless provoked,' says the deep, male voice, rich with refinement. 'Come inside, let us talk. I would enjoy some company.'";
	say "     Uncertain, you are about to leave when you hear the howl of those wolves, closer than before, you hesitate again. A leonine figure steps from the cave, motioning quickly for you to come inside. He does not seem aggressive and still has a suit coat on, though his lower body is unclothed. 'Quick! They'll not be able to notice your scent over mine and they don't dare come here.' Deciding to risk it, you enter the cave.";
	now Lion's Den is known;
	move player to Lion's Den;
	Now Feline Friend is resolved;
	now battleground is "void";


Lion's Den is a room. It is fasttravel. It is private.
The description of Lion's Den is "[lionsdendesc]".

the scent of Lion's Den is "There is a faint, damp smell to the lion's den beneath the strong, masculine scent of its occupant.".

to say lionsdendesc:
	say "     The dark cave extends for about thirty or forty meters at a roughly even diameter, making you suspect it is some sort of abandoned tunnel project. The back half of the cave has been furnished rather lavishly, with such items as plush chairs and ottomans arranged on a large rug like a sitting room. Beside those are a small bookcase and a coat rack holding several lanterns for light[if Leonardwrdesk is true] as well as Leonard's new writing desk[end if]. Past those, there lies a dining room table and chairs with a small camping stove set up along one wall[if Leonardcabinet is true]. There is an ornate cabinet to house his cooking supplies[else]. There is another bookcase nearby for cooking supplies[end if][if Leonardcaraway is true] with Caraway working away happily in the kitchen[end if][if leopocketwatch is true]. Beside it is a tall grandfather clock with simple and dignified woodwork[end if]. This forms a partial wall with a hand-carved wardrobe at its back. This last section holds a very large, four-poster bed that abuts the end of the tunnel cave.";
	say "     There are several paintings attached to the walls. These seem quite old and possibly quite expensive. They have been tastefully chosen, all going well together despite being from different styles and artists. While not depicting anything overtly erotic, you can't help but feel the paintings have a primal, sexual quality to them.";
	if HP of Leonard >= 16:
		say "     Leonard's subservient maids are here as well, having obtained cute maid outfits from somewhere. They are happily [one of]cleaning the cave[or]and lovingly grooming their handsome master's mane[or]changing the sheets on the bed[or][if Leonardcaraway is true]helping Caraway prepare some food in the kitchen[else]preparing some food for their master[end if][or]dusting, making sure to bend over with their tails up to flash their pantiless bottoms at their handsome master[or][if Leonardcaraway is true and a random chance of 2 in 5 succeeds]snuggled up with Caraway, playfully cuddling with her as she watches the stove[else]snuggled up together, their paws caressing one another[end if][or]snuggling up to you, showing their love for their pride mother[in random order]. They seem quite content in their new role as Leonard's servants, having completely forgotten about ever once being lions or leading prides of their own.";


Section 2 - Leonard the Lion

Leonard is a man. Leonard is in Lion's Den.
The description of Leonard is "[Leonarddesc]".
The conversation of Leonard is { "Tut Tut!" }.
feline_status is a number that varies.
violinfound is a number that varies.
Leonardtimer is a number that varies. Leonardtimer is normally 255.
feline_pride_defeat is a truth state that varies. feline_pride_defeat is normally false.

the scent of Leonard is "The feline smells strong and manly.".

to say Leonarddesc:
	say "     Leonard is a lion-man like those you've seen in the park, but well-groomed and well-mannered. He has a strong, manly chest, which he loosely covers with his suit coat. While it could probably close, it certainly seems more comfortable open[if leopocketwatch is true]. He keeps an antique gold pocket watch in the breast pocket[end if]. He is covered in tawny fur and has a large, russet mane. His lower body is unclothed, leaving his sheath and plump balls exposed.";

Instead of conversing the Leonard:
	if HP of Leonard is 0:
		say "     'I'm glad you were willing to trust me and come in. You should be safe enough here. Those lupine ruffians don't like to get close since I sent them packing the last time.'";
		say "     'But yes, I should properly introduce myself. My name is Leonard and this is my humble abode now. It is not much,' he says, 'but I have been rather fortunate. I have managed to retain my faculties and have been able to secure a suitable, if somewhat unconventional, new home.' He motions with a sweep of his arm down the passageway, indicating his surprisingly well-furnished cave. You consider asking about it, as it seems the powerful lion could have taken a house or apartment instead of transporting all of this from the city into the park and to his cave, but he continues on, motioning you to have a seat in his improvised sitting room.";
		if Feline_attached > 0:		[suckling feline]
			say "     'I see you've run into one of the girls running around in the park,' he says, stroking the ears of the small feline nursing at your breast. 'I hope she wasn't any trouble to you,' he rumbles, passing you a drink from a small bar to one side of the [']room[']. You smile and take the drink, relaxing into the plush chair. 'Perhaps you should stay here for a time with me, my dear. It would give us an opportunity to get to know one another. Clearly you have an affinity for the beauty of the feline form. I can assure you that you'll find my company quite enjoyable,' the lion says with a smile, taking a seat of his own. You can see that his sheath has grown fuller and the tip of his feline cock is poking free. The scent of his strong, feline musk increases, beginning to arouse you.";
			now feline_status is 1;
		else if bodyname of player is "Feline":
			say "     'You must be quite put out by these trying events in the city,' he rumbles, passing you a drink from a small bar to one side of the [']room[']. You smile and take the drink, relaxing into the plush chair. 'Perhaps you should stay here for a time with me, my dear. It would give us an opportunity to get to know one another. I can see that you've already encountered those other felines out in the park. I can assure you that you'll find my company much more enjoyable,' the lion says with a smile, taking a seat of his own. You can see that his sheath has grown fuller and the tip of his feline cock is poking free. The scent of his strong, feline musk increases, beginning to arouse you.";
		else if cunts of player > 0:
			say "     'You must be quite put out by these trying events in the city,' he rumbles, passing you a drink from a small bar to one side of the [']room[']. You smile and take the drink, relaxing into the plush chair. 'Perhaps you should stay here for a time with me, my dear. It would give us an opportunity to get to know one another,' the lion says with a smile, taking a seat of his own. You can see that his sheath has grown fuller and the tip of his feline cock is poking free. The scent of his strong, feline musk increases, beginning to arouse you.";
		else:
			say "     'You must find it quite difficult out there,' he says with a soft rumble, passing you a drink from a small bar to one side of the [']room[']. You smile and take the drink, relaxing into the plush chair. 'Perhaps you should stay here for a time, under my protection. You could take a break and we could get to know each other better,' the lion says with a smile, taking a seat of his own. You can see that his sheath has grown fuller and the tip of his feline cock is poking free. The scent of his strong, feline musk increases, beginning to arouse you.";
		increase libido of player by 10;
		PlayerDrink 5;
		now HP of Leonard is 1;
	else if HP of Leonard is 1:
		say "     [one of]'I hope you've reconsidered my offer of sharing my company,' he says with a rumble, running a paw along your side.[or]'I do hope you'll say for a while,' he purrs with a smile.[or]'You should relax and stay. Let a big, strong male take care of you,' he rumbles in your ear.[or]'Wouldn't things be simpler if you had a big, strong lion watching over you?' the powerful feline rumbles.[or][if cunts of player > 0]'I hope you'll consider staying and enjoying my company, my dear,' the sexy lion rumbles. 'A sexy girl like you deserves a handsome male like myself.'[else]'I hope you'll consider staying and enjoying my company,' the sexy lion rumbles. 'I can tell you need a proper, strong male to take care of you.'[end if][at random]";
	else if HP of Leonard is 2:
		say "     The handsome lion [one of]runs his paws along your sides[or]strokes a strong paw over your ass[or]rubs his body against yours[or]slides his tail across your hip[or]scritches down your back[at random][one of]. 'I look forward to having you underneath me,' he rumbles in your ear[or]. 'You'll make a lovely, sexy kitty for me,' he purrs[or]. 'You're looking forward to having the big kitty mount you, aren't you?' he rumbles[or][if cunts of player > 0]. 'Your hot, little pussy's wet for your big lion, isn't it?' he purrs in your ear[else]. 'You're longing to let a proper male like me to mount you and show you your place, aren't you?' he purrs in your ear[end if][or]. 'You know, deep down, you're nothing but my horny girl,' he rumbles[in random order]. Surrounded by the lion's arousing scent, you find yourself nodding, part of you agreeing with the sexy male.";
	else if HP of Leonard is 3:
		say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of]. 'I look forward to having you underneath me again soon,' he rumbles in your ear[or]. 'You'll fit right in with my other horny, kitty girls,' he purrs, nibbling your ear[or]. 'You need the big kitty to mount you again soon, don't you?' he rumbles[or][if cunts of player > 0]. 'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[else]. 'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or]. 'You know you're nothing but my horny girl, my mewling kitty slut,' he rumbles[in random order]. With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
	else if HP of Leonard is 4:
		say "     The handsome lion moves up beside you, holding you close as he runs a paw over your [if cunts of player > 0]breast[else]ass[end if], making you moan softly. 'I have a small favor I'd like to ask of you, my dear[if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist] kitty[end if]. The other girls have been so helpful in trying to help make my meager accommodations somewhat more suitable, but I have found myself needing something to occupy my time.' He nuzzles at your neck and slides a finger between your legs. 'When I'm not taking care of my lovely kitties and their needs, that is,' he amends, purring in your ear.";
		say "     'I used to be an accomplished violinist in my old life, but had to set my practicing aside to deal with other obligations,' he says with remorse. 'But I have found myself thinking that it would be a fine hobby for a proper gentlelion such as myself.' Running his paws over your hips, he continues. 'Would you not like to hear me play, my dear?' You mewl in response to his touch and nod in agreement, longing to hear the handsome lion play something just for you. 'Unfortunately, I have no violin to play. Perhaps one could be found in the city though,' he rumbles thoughtfully. Finding yourself eager to please the handsome male, you quickly promise him that you'll find one for him, not even pausing to consider the matter. He smiles and caresses your cheek. 'Oh, you are such a kind and thoughtful [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[else]lover[end if] to offer doing that for me.' He runs his other paw across your thigh, giving a light squeeze. 'I would be most grateful if you were to bring me one.'";
		now Music Store is unresolved;
		now Concert Hall is unresolved;
		now HP of Leonard is 5;
	else if HP of Leonard is 5 and violin is not owned:
		if a random chance of 2 in 5 succeeds:
			say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of]. 'I look forward to having you underneath me again soon,' he rumbles in your ear[or]. 'You'll fit right in with my other horny, kitty girls,' he purrs, nibbling your ear[or]. 'You need the big kitty to mount you again soon, don't you?' he rumbles[or][if cunts of player > 0]. 'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[else]. 'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or]. 'You know you're nothing but my horny girl, my mewling kitty slut,' he rumbles[in random order]. With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
		else:
			say "     The handsome lion holds you close as he [one of]strokes a paw along your hip[or]gives your ass a possessive squeeze[or]caresses a paw across your cheek[or]lets his warm, full sheath rub against you[or]nuzzles at your ear[at random]. '[one of]I hope you haven't forgotten about your promise, my dear[or]I do hope you'll be able to find a nice violin for me[or]You might be able to find a violin for me at a concert hall or perhaps even in a music store[or]Have you tried finding a violin at a concert hall in the city? If that doesn't work out, try searching through a music store[or]Please keep looking for me, my dear[if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist] kitty[end if][at random]. I would so like to play something special for you,' he purrs, [one of]running a finger across your groin[or]caressing your inner thigh[or][if cunts of player > 0]rubbing your breast[else]patting your bottom[end if][at random]. You moan and nod in response, [if violinfound is 1 or violinfound is 2][else]eager to rush out and find one to please your sexy lion[end if].";
	else if HP of Leonard is 5 and violin is owned:
		delete violin;
		now HP of Leonard is 6;
		now the icon of Leonard is the figure of LeonardViolin_icon;
		now Leonardtimer is turns;
		now lastfuck of Leonard is turns;
		say "     Pulling the violin you found out of your pack, you bring it over to the handsome lion with a swell of excitement in your heart. Catching sight of what you've brought him, he smiles wraps an arm around you, hugging you tightly to him and running his paw along your side and down to your rear before taking the case from you with the other paw. 'Oh, I knew you were the one to speak to about this. You seem like such a resourceful [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[else if cunts of player > 0]girl[else]girly boy[end if].'";
		if violinfound is 10:			[apprentice]
			say "     He opens the case and examines the violin carefully, letting his pawpads slide gingerly over it. Taking a few moments, he adjusts the tuning pegs and listens. 'You've done a fine job, my dear. While this is a... rather common violin, I did have one much like it when I first started learning. It should do well enough for now.' Eager to improve his opinion of your gift, you dig out all the other supplies and sheet music you were able to find for him, which does indeed improve his disposition. 'Oh, very resourceful,' he says with a smile as you reveal one item after the next. 'I wish more of my girls were as forward-thinking as you are. This should give me plenty of enjoyment out of this fine gift you've given me,' he purrs as he caresses your cheek and leans in to give you a kiss. You moan softly into it as his paw slides down your side.";
			increase score by 50;
			increase morale of player by 3;
		else if violinfound is 20:	[excellent]
			say "     He opens the case and examines the violin carefully, letting his pawpads slide gingerly over it. Taking a few moments, he adjusts adjusts the tuning pegs and listens. 'You've done an exceptional job, my dear. This is a very old and finely crafted instrument you've been able to find. It has such wonderful tone and depth to its music. Such fine music I will be able to play with it.' You are filled with warmth at his praise, so very pleased to have made your wonderful lion happy. Eager for more praise, you show him the other supplies and the sheet music you have for him. 'Nicely done, my dear,' he rumbles, still plucking at the violin to hear its pure notes. 'I shall have several lovely pieces to play with this excellent instrument,' he purrs as he caresses your cheek and leans in to give you a kiss. You moan softly into it as his paw slides down your side.";
			increase score by 75;
			increase morale of player by 5;
		else if violinfound is 21:	[good]
			say "     He opens the case and examines the violin carefully, letting his pawpads slide gingerly over it. Taking a few moments, he adjusts adjusts the tuning pegs and listens. 'You've done a very good job, my dear. This is a refined instrument you've been able to find for me. It is very well crafted and should be a fine violin for one such as myself,' he purrs, looking your gift over with a smile. Eager for more praise, you show him the few other supplies and the sheet music you were able to grab for him. 'Hmm... I'm glad you were able to get this. They should do me for a little while. He flips through the pages you've brought him. 'You don't have much music, but I guess that's understandable. They are lovely pieces though and I should be able to play a few others from memory.' Turning his attention back to the violin, he looks it over again. 'Still, when one is presented with a fine instrument such as this, one should be grateful. And I am so grateful to you, my dear,' he purrs as he caresses your cheek and leans in to give you a kiss. You moan softly into it as his paw slides down your side.";
			increase score by 40;
			increase morale of player by 3;
		say "     After breaking the kiss, the handsome lion smiles down at you. 'And would you care to hear me play, my dear,' he purrs. 'I believe I promised I would play for you if you found me one.' You nod eagerly, almost begging to hear him play for you. Smiling, he holds the violin in one paw and runs the other over your body, making you release a soft mewl of need. 'Very well, then. I shall need a moment to prepare,' he says, working to set up the stand and music, then makes some final adjustments to the tuning. He takes a seat on what appears to be a vintage Chippendale chair, a new addition that one of the other girls probably found for him. Seeing such an opulent gift, you get butterflies in your stomach, hoping all the more to have pleased your lover. After making a few attempts to push his mane aside and properly position the violin with his new facial structure, he begins to play.";
		WaitLineBreak;
		project the figure of LeonardViolin_icon;
		say "     The song, as is the playing, is hesitant at first, as it tentatively exploring. The notes are few, but clear, with just enough of a pause between each stroke to convey the increasing confidence. In time, short but excited measures are played, followed by a silence as if worried of reprisal. The acoustics of the tunnel only add to the effect, as if the violin's music itself is testing out the space where it will now live. As the song continues, the playing grows bolder, with fewer and shorter pauses until finally it breaks into a long and joyous ballad, full of tones and shifts, but still carrying that earlier, tentative playing with it, but now united in the fullness of its freedom. When the last, powerful strokes send triumphant notes through the tunnel room and out into the surrounding park, you begin to clap, moved almost to tears by your handsome and talented master's playing. He bows to you and gently sets his instrument aside.";
		WaitLineBreak;
		say "     Spreading his arms wide, he welcomes you into a hug, holding you close as you tell him repeatedly how wonderful his playing was and how moved you were. He humbly accepts your praise, saying he's out of practice and that he should be able to do something better for you later. You start another rush of praise for him, but he smiles and puts a finger across your lips. 'Now, my dear, I believe you deserve a special reward for finding such a nice present for me,' he purrs. His paw slides across your cheek and down your neck to [if cunts of player > 0]cup your breast[else if cocks of player > 0]cup your stiffening cock[else]your rear and squeezing it[end if]. You moan lustfully, feeling incredibly turned on now. Leading you back to his large bed, he tosses you onto it and growls lustfully[if cunts of player > 0], making you wet between your thighs[else if cocks of player > 0], making you rigidly hard[else], getting you even more excited for what's to come[end if].";
		if bodyname of player is "Feline":
			say "     'Mmm... your cute, feline body looks lovely. Just right for a fine [if cunts of player > 0]girl[else]girly-boy[end if] like you,' he rumbles as he holds you tightly. Rolling onto his back, he positions you to sit in his lap atop his hard pole. Mewling with need, you raise your hips and let the sexy lion guide you down onto his throbbing maleness. Your cat girl body trembles in delight at having the strong male inside you again. His paws slide up your chest to play with your nipples as he begins thrusting up into you, making your smaller form bounce atop him.";
		else if cunts of player > 0:
			say "     'Mmm... my sexy girl,' he rumbles as he holds you tightly. 'You've earned this ride, my eager [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[else]slut[end if].' Rolling onto his back, he positions you to sit in his lap atop his hard pole. Mewling with need, you raise your hips and let the sexy lion guide you down onto his throbbing maleness. Your [bodytype of player] body trembles in delight at having the strong male inside you again. His paws slide up your chest to play with your nipples as he begins thrusting up into you, making your [if scalevalue of player < 3]smaller[else if scalevalue of player is 3][bodydesc of player][else]larger[end if] form bounce atop him.";
		else:
			say "     'Mmm... that's a good boy,' he rumbles as he holds you tightly. 'You've earned this ride, my eager [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[else]slut[end if].' Rolling onto his back, he positions you to sit in his lap atop his hard pole. Mewling with need, you raise your hips and let the sexy lion guide you down onto his throbbing maleness. Your [bodytype of player] body trembles in delight at having the strong male inside you again. His paws slide around to grab your ass, squeezing it firmly as he begins thrusting up into you, making your [if scalevalue of player < 3]smaller[else if scalevalue of player is 3][bodydesc of player][else]larger[end if] form bounce atop him.";
		say "     As the strong male continues to make love to you, you knead your hands at his chest-fur, moaning and mewling like a lustful kitty, his lustful kitty. His sizable member throbs and pulses inside you, making you feel so good, so fulfilled at having pleased your loving master. You have passing thoughts about what you could do next to please him, but those ideas are bumped away by another hard thrust of his hips sending waves of pleasure through you. His paws slide across your body, caressing at every erogenous zone they can find, showing you how pleased his is with your gift.";
		WaitLineBreak;
		say "     After letting you ride him for several minutes, he shifts positions by pushing you to lay back on the plush bed while he kneels between your legs. With his cock still buried in you, but your ass raised and legs around his waist, he growls and pounds into you with even greater vigor. 'Ngg... you're such a horny kitty slut, ready to do whatever I want to get another ride on my big, lion cock,' he rumbles, gripping your ass firmly. As he fucks you, he continues to tell you what you already know, that you're one of his eager, needy, submissive kitty sluts and you mewl and nod in agreement with the powerful male, willing to do whatever he wants of you as long as he keeps fucking you.";
		say "     As his balls tighten up as his cock pulses in readiness, he drives himself hard into you. 'Yes, take it all, my eager [if cunts of player > 0]girl[else]girly-boy[end if]. Another hot dose of cum from your lion master,' he says with a growl of lust. You grip the sheets tightly and [if cocks of player > 0 or cunts of player > 0]cum hard[else]yowl in delight[end if] as your feel his hot seed pumping into you, filling your needy body with his heat. Once this balls have drained their ample load into your [if cunts of player > 0]womb[else]bowels[end if], you are released and slide slowly off his spent member to sprawl out on your master's bed with him atop you while you both drift off for a quick catnap filled with dreams of feline lust and submission.[impregchance]";
		infect "Feline";
		rest;
		now feline_meow is feline_meow / 2;
		now libido of player is ( libido of player + libido of player + 30 ) / 3;
		decrease humanity of player by 5;
		follow the turnpass rule;
	else if HP of Leonard is 6 and ( Leonardtimer - turns ) < 16:
		if a random chance of 3 in 5 succeeds:
			say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of]. 'I look forward to having you underneath me again soon,' he rumbles in your ear[or]. 'You'll fit right in with my other horny, kitty girls,' he purrs, nibbling your ear[or]. 'You need the big kitty to mount you again soon, don't you?' he rumbles[or][if cunts of player > 0]. 'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[else]. 'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or]. 'You know you're nothing but my horny girl, my mewling kitty slut,' he rumbles[in random order]. With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
		else:
			say "     The handsome lion [one of]takes up the violin you brought him and plays a few notes[or]carefully cleans and waxes the violin you brought him[or]plays a short tune on his violin[at random][one of]. 'I've been enjoying your gift very much, my dear,' he purrs. You are quite pleased with yourself to hear this and you try to come up with more ideas on how to earn his favor[or]. 'I believe my playing's starting to improve now that I've been able to practice again,' he rumbles as you moan softly in response to the manly lion's touch[or]. 'I hope to have a new piece composed for the violin soon. Just a simple little song that I want to put onto paper,' he rumbles. Despite his casual nature about it, you are filled with a powerful longing to hear what your wonderful feline master will compose[at random]. You feel a sense of warmth and longing for the handsome lion, happy that he's enjoying your gift.";
	else if HP of Leonard is 6:
		say "     'I was wondering if you might do me another favor, my dear kitty,' Leonard purrs as he runs his paws over you. You moan and nod eagerly, willingly agreeing before even hearing the handsome lion's request. 'There are so many other kitty girls out there in the park that haven't come to visit me yet. Could you find a few more of them and bring them to me? You're such a good, obedient pet that I know you won't be jealous,' he rumbles, stroking over your groin. 'I'd be most grateful, my precious darling,' he adds with a purr and a firm press of his hard sheath against your side. You agree readily, wanting to do anything to please your sexy lover and master.";
		now HP of Leonard is 7;
	else if HP of Leonard is 7:
		if a random chance of 3 in 5 succeeds:
			say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of][if cunts of player > 0]. 'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[else]. 'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or]. 'Please don't forget your promise to help those other wayward girls find their way here,' he rumbles as he runs a finger down your side[or]. 'Please bring me a few more lost feline girls, my dear. We'll have such a pleasant time welcoming them into the pride together,' he purrs softly as he licks the edge of your ear, making you tremble in delight[or]. 'Don't forget that I asked you to lead a few more feline girls here so I could meet them,' he rumbles as he fondles you[in random order]. With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
		else:
			say "     The handsome lion [one of]takes up the violin you brought him and plays a few notes[or]carefully cleans and waxes the violin you brought him[or]plays a short tune on his violin[at random][one of]. 'I've been enjoying your gift very much, my dear,' he purrs. You are quite pleased with yourself to hear this and you try to come up with more ideas on how to earn his favor[or]. 'I believe my playing's starting to improve now that I've been able to practice again,' he rumbles as you moan softly in response to the manly lion's touch[or]. 'I hope to have a new piece composed for the violin soon. Just a simple little song that I want to put onto paper,' he rumbles. Despite his casual nature about it, you are filled with a powerful longing to hear what your wonderful feline master will compose[or]. 'Please look for more wayward felines to bring back here. I should like to let them hear me play your wonderful gift,' he says with a smile[at random]. You feel a sense of warmth and longing for the handsome lion, happy that he's enjoying your gift.";
	else if HP of Leonard is 8:
		say "     Leonard wraps his strong arms around you, running his paws along your sides to your hips. 'You've done very well, my dear,' he rumbles. 'All your efforts have been very [']inspiring['],' he adds with a deep purr on the last word as he whispers it in your ear before nibbling you lightly there. This sends shivers of delight down your spine, making you mewl in response. 'I have decided I will put on a small recital for you and the rest of the pride. I've put the word out and they should be arriving shortly.' Looking up from you, he smiles. 'Ah, they're arriving to set up now. Go and lend them a [if bodyname of player is listed in infections of Felinelist]paw[else]hand[end if],' he rumbles, giving you a pat on the ass to send you on your way.";
		say "     You can see a large group of feline girls have arrived and are unrolling Afghan and Persian rugs. You obediently rush over to join them, helping to cover a large area at the entrance of the tunnel. You are accepted immediately into the work group with the rest of Leonard's pride, working well with your pride sisters to set up for your master's important first recital. You find yourself teaming up with the females you've recently brought in at Leonard's behest and receive many kisses and caresses from them as you work. As you're finishing up, spreading numerous plush cushions across the rugs, you notice that the group's gotten larger, with more girls having arrived with refreshments. As you enjoy some of the delicious treats, you snuggle up with the other felines you'd been working with for more loving nuzzles and caresses.";
		say "     A gentle tapping draws your attention to the music stand that has been set up in front of the seating area. The group almost immediately settles down, drawing in closer as the lion prepares to start. He makes a small motion to you with his paw, pointing to an opening left at the very front of the group. He smiles indulgently as you bring the other girls along with you. They are very pleased to get such premium seating and lavish even more attention upon you in thanks.";
		WaitLineBreak;
		project the figure of LeonardViolin_icon;
		say "     Satisfied that all is ready, Leonard takes a seat on his Chippendale chair and raises his violin to his chin. The silence becomes complete as all the felines listen intently. This empty pause lasts longer than you'd initially expect, but you soon realize that it's part of the song, a moment of anticipation before the player begins. Once the playing begins, the audience is enthralled by the lion's beautiful music as it fills the tunnel chamber and flows out into the park. His playing evokes waves of emotion through you all. His opening song starts sad, even lonely, resonating with your feelings of being trapped alone in this changing city. But as it evolves, it becomes one of welcome and love as the music finds a place that will welcome it home. Hearing some shuffling outside, you notice that a few others felines joining the group at the back. Realizing they're roaming girls who've come to listen, you turn back to Leonard and see a faint smile on his muzzle, having spotted them as well.";
		say "     The recital continues on through several more pieces, each seeming more beautiful than the last. Feelings of love, belonging, passion, adoration, loving service are carried along by the music to the ears and minds of the audience. As the final piece, one of passion, desire and lust plays, the audience becomes more restless. No, restless is not the proper word for it, since you all still listen to the lion play, but also let it spur you to action. Soft caresses, gentle licks and nibbles become more frequent between the excited felines. A glance back shows the newcomers, of whom there are several more, also snuggled up with felines from the pride. As the music continues, the caresses turn to groping and the licks move to more sensitive, sensual spots.";
		WaitLineBreak;
		say "     And by the time the song is done, the gathered lionesses, now a considerably larger group than before, has turned into an orgy of feline females. The girlish lionesses are too lost in their own lusts to applaud, but Leonard seems quite pleased with his playing's reception. After setting his instrument down carefully, he heads over to join you, giving you the privilege of being the first to receive his loving attention and hard cock after his recital. You, and the girls from your work group, lavish attention and compliments upon him as he pounds his throbbing meat into you, rewarding you once again for your beautiful gift with another load of his hot seed deep inside you.[impregchance]";
		say "     Leonard travels through the pride after that, bestowing his attention upon other clusters of horny females, eventually making his way to the back to personally welcome the newcomers. While the orgy of feline lust continues, the groups shift and change, some of those around you moving to join nearby groups with others moving from others to snuggle with your cluster[if cocks of player > 0]. Several girls lick and suck at your cock, taking care of your need for male release. You feel little urge to mount them though, knowing they're to be mated by your loving master[end if]. In time, the orgy disperses, many of the groups heading back into the park in search of new playmates or to return to their other duties. You remain behind, taking a nap on the cushions, thoroughly worn out after the lustful fun. As one of the handsome lion's preferred girls, you were always lavished with attention and it's left you quite spent.";
		say "     When you awaken, you find the girls from your group snuggled back around you. As you start to get up, they are roused as well. After some kisses and snuggles with your feline sisters, they head on their way.";
		infect "Feline";
		infect "Feline";
		rest;
		now feline_meow is feline_meow / 2;
		now libido of player is ( libido of player + libido of player + 60 ) / 3;
		decrease humanity of player by 25;
		if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 5 and 10;
		if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 0 and 5;
		now HP of Leonard is 9;
		now Leonardtimer is turns;
		now lastfuck of Leonard is turns;
		follow the turnpass rule;
	else if HP of Leonard is 9 and Leonardtimer - turns < 8:
		if a random chance of 3 in 5 succeeds:
			say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of][if cunts of player > 0]. 'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[else]. 'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or]. 'Please don't forget your promise to help those other wayward girls find their way here,' he rumbles as he runs a finger down your side[or]. 'Please bring me a few more lost feline girls, my dear. We'll have such a pleasant time welcoming them into the pride together,' he purrs softly as he licks the edge of your ear, making you tremble in delight[or]. 'Don't forget that I asked you to lead a few more feline girls here so I could meet them,' he rumbles as he fondles you[in random order]. With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
		else:
			say "     The handsome lion [one of]takes up the violin you brought him and plays a few notes[or]carefully cleans and waxes the violin you brought him[or]plays a short tune on his violin[at random][one of]. 'I've been enjoying your gift very much, my dear,' he purrs. You are quite pleased with yourself to hear this and you try to come up with more ideas on how to earn his favor[or]. 'I believe my recital was very successful,' he rumbles as his paws move over you, reminding you of just how much of a success it, and the ensuing orgy, was[or]. 'I've been playing more since my recital. Often a feline from the park will stop by to enjoy my music and my company,' he rumbles, rubbing his warm sheath against you, making it clear just what kind of company these lucky felines receive after finding their way to your master[or]. 'Please look for more wayward felines to bring back here. I should like to let them hear me play your wonderful gift,' he says with a smile[at random]. You feel a sense of warmth and longing for the handsome lion, happy that he's enjoying your gift.";
	else if HP of Leonard is 9:
		say "     The handsome lion takes a seat in his plush chair and motions for you to come closer[if scalevalue of player > 3]. Obediently kneeling down beside you, you wait eagerly on his words. He smiles and caresses your cheek, eliciting a moan and soft purr[else]. You eagerly climb into his lap, purring softly as he caresses you[end if]. He strokes under your chin, tilting your head before giving you a kiss that makes you feel so special. 'My precious [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[else if cunts of player > 0]girl[else]pet[end if], it seems I'm in need of your help again. It seems the other lions in the park - the savage, feral ones - have gotten upset. My girls tell me that these lions are upset that lionesses from their pride aren't returning to them. As if it is somehow my fault that they can't keep their kitties satisfied,' he rumbles, stroking a paw along your side while nuzzling you, making you purr in response.'";
		say "     'Regardless of the cause, it seems they've started fighting over what felines they can capture and have sent out their pride in bands to capture other felines. Outnumbered several to one, some of my precious kitties are getting beaten up or captured by these hunting groups. But most of my girls aren't experienced fighters like you are,' he rumbles, stroking your face again. 'And so I need you, my strong kitty hunter, to go out and deal with these bands. Are you strong enough, brave enough to help me with this?' he purrs, licking your ear. Eager to show him that you could do anything for him, you nuzzle him in return, promising to deal with his problem to protect your pride sisters.";
		say "     Leonard smiles and gives you another kiss. 'I knew I could count on you, my brave hunter. Now, go out into the park and search for these [bold type]hunting prides[roman type],' he says with confidence. 'I must prepare to deal with these feral upstarts for harassing my lovely girls.' He gets up out of the chair, and you are again reminded of how regal and impressive the handsome lion is. Driven by his words to action, you leave the lion's den, heading back out into the park.";
		move player to Park Trail;
		now HP of Leonard is 10;
		now Hunting Prides is unresolved;
	else if ( HP of Leonard >= 10 and HP of Leonard <= 15 ) or HP of Leonard is 100:
		say "ERROR-Leonard-[HP of Leonard]C: You should not be able to talk to me!";
	else if HP of Leonard >= 16:
		if a random chance of 3 in 5 succeeds:
			say "     The handsome lion [one of]gives your ass a firm squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of][if cunts of player > 0]. 'Your sexy pussy's wet for your lion mate, isn't it?' he purrs as he rubs a finger over it[else]. 'You're looking for your big lion mate to mount you so you can maybe get your juicy pussy back, aren't you?' he purrs in your ear as he grabs your ass firmly[end if][or]. 'Please don't forget your promise to help those other wayward girls find their way here,' he rumbles as he runs a finger down your side[or]. 'Please bring me a few more lost feline girls, my dear. We'll have such a pleasant time welcoming them into the pride together,' he purrs softly as he licks the edge of your ear, making you tremble in delight[or]. 'With those prides broken up, there's probably quite a few feline girls in need of a new home. I look forward to you helping more of them find their way back here,' he rumbles as he fondles you[or]. 'I'm very pleased with my lovely new servants. It was a very clever of you to find such a suitable place for them,' he rumbles with an amused grin before giving you a kiss[in random order]. With the lion's scent filling your senses, your aroused, needy body responds as you long to have your handsome mate inside you again soon.";
		else:
			say "     The handsome lion [one of]takes up the violin you brought him and plays a few notes[or]carefully cleans and waxes the violin you brought him[or]plays a short tune on his violin[or]practices a few chords on his violin[at random][one of]. 'This lovely gift helps remind me of you when you're away, my dear,' he purrs. You are quite pleased with yourself, glad to hear his fondness for that first gift which helped you earn his favor and your special place as his cherished mate[or]. 'I really enjoyed my first recital, and now that my critics have been silenced,' he adds with a glance over at his playful maids, 'I should consider having more of them in the future,' he rumbles as his paws move over you, reminding you of just how much of a success it, and the ensuing orgy, was[or]. 'I've been playing more since my recital. Often a feline from the park will stop by to enjoy my music and my company,' he rumbles, rubbing his warm sheath against you, making it clear just what kind of company these lucky felines receive after finding their way to your handsome mate[or]. 'Please look for more wayward felines to bring back here. I should like to let them hear me play your wonderful gift,' he says with a smile[at random]. You feel a sense of warmth and longing for the handsome lion, happy that he's enjoying your gift.";


Section 3 - Sexy Times

Part 1 - Basic Sex

the fuckscene of Leonard is "[sexwithLeonard]".

to say sexwithLeonard:
	setmonster "Feline";
	if Feline_attached > 0 and feline_status is 0, now lastfuck of Leonard is 255; [resets Leonard for immediate fun if the player has a new kitty girl]
	if HP of Leonard is 0:
		say "     That's rather forward of you. Perhaps you should at least talk to him first.";
	else if lastfuck of Leonard - turns < 8:
		say "     'I really appreciate your eagerness, my dear, but I think it'd be all the sweeter if we wait until we're both recovered from the last time.";
	else if HP of Leonard >= 16:
		Leonardmatesex;
	else if HP of Leonard is 1:
		now lastfuck of Leonard is turns;
		now HP of Leonard is 2;
		if cunts of player > 0 or bodyname of player is "Feline":
			say "[Leonardsex_firsttimeA]";
			infect "Feline";
			infect "Feline";
			rest;
			increase libido of player by 20;
			if libido of player > 80, now libido of player is 80;
			decrease humanity of player by 4;
		else:
			say "[Leonardsex_firsttimeB]";
			infect "Feline";
			infect "Feline";
			rest;
			increase libido of player by 5;
			if libido of player > 100, now libido of player is 100;
			decrease humanity of player by 4;
	else if HP of Leonard >= 3 and Feline_attached > 0 and feline_status is 0 and ( a random chance of 1 in 2 succeeds or HP of Leonard is 7 ):
		[not one of Leonard's girls... yet.]
		now lastfuck of Leonard is turns;
		if HP of Leonard < 4, now HP of Leonard is 4;
		say "[Leonardsex_newkitty]";
		now feline_status is 2;
		rest;
		decrease humanity of player by 8;
		follow the turnpass rule;
		if HP of Leonard is 7:
			increase libido of Leonard by 1;
			if libido of Leonard is 3, now HP of Leonard is 8;
	else if HP of Leonard >= 3 and Feline_attached > 0:
		now lastfuck of Leonard is turns - 4; [longer delay after fucking you both]
		if HP of Leonard < 4, now HP of Leonard is 4;
		say "[Leonardsex_pridekitty]";
		now feline_status is 3;
		rest;
		now feline_meow is feline_meow / 2;
		decrease libido of player by libido of player / 3;
		decrease humanity of player by 8;
		follow the turnpass rule;
	else if bodyname of player is "Feline" and player is pure and ( HP of Leonard is 3 or ( HP of Leonard > 3 and a random chance of 1 in 2 succeeds ) ):
		now lastfuck of Leonard is turns;
		if HP of Leonard < 4, now HP of Leonard is 4;
		say "[Leonardsex_purefeline]";
		infect "Feline";
		rest;
		now feline_meow is feline_meow / 2;
		decrease libido of player by libido of player / 4;
		decrease humanity of player by 8;
		follow the turnpass rule;
	else:
		now lastfuck of Leonard is turns;
		say "[Leonardsex_general]";
		if Feline_attached > 0:
			increase libido of player by 4;
			decrease humanity of player by 4;
		infect "Feline";
		rest;
		now feline_meow is feline_meow / 2;
		decrease libido of player by libido of player / 4;
		decrease humanity of player by 4;
		if HP of Leonard < 3, now HP of Leonard is 3;
		follow the turnpass rule;


to say Leonardsex_firsttimeA:		[First time - female or Feline]
	say "     Leonard smiles and takes your hand in his strong paw. 'Splendid, my dear! I knew you'd accept my invitation.' He leads you to the large bed at the back of his home. His strong, virile scent is even stronger here, making you increasingly aroused. His paws slide over your body, removing your gear and clothes so that he may look over your [bodytype of player] form[if Feline_attached > 0]. He gives the feline girl at your chest a scritch behind the ear and she releases your nipple after giving you a final lick. She hops onto the bed and sits cross-legged in the corner with a paw between her legs while she watches you both[end if]. After removing his suit jacket, the lion hangs it on a nearby coat rack and pulls you into a hug. One paw caresses your head, pressing your face into his soft mane, filling your senses with his feline scent.";
	say "     'That's a good girl,' he rumbles, stroking his other paw along your back. 'A big, strong lion is just what you need, isn't it?' he purrs in your ear. With your senses focused on his musk, you nod in agreement. Who wouldn't want such a sexy male?";
	say "     You moan in pleasure as paw moves down to grab your ass, giving it a firm squeeze. And speaking of firm, your hands have moved down his sides and have taking hold of his hard, throbbing cock. You stroke over it, working to get this big kitty fully hard. His precum flows down his length, soaking your fingers with it. You caress his full, heavy orbs as well, feeling the warmth of his virile balls, making you long for their contents all the more.";
	say "     Leonard strokes your head and pushes you to sit on the plush bed, bringing his cock to your face. 'Now, my sweet, it's time to put that mouth of yours to work,' he rumbles. Needing no further encouragement at this point, you wrap your lips around his cock, licking and sucking at it hungrily. He moans in pleasure and caresses your head as he thrusts into your wanton mouth. 'Mmm... that's a good girl. You know how to serve a male properly. You were meant to be a horny kitty for me,' he says between thrusts. With your senses awash in his scent, his taste, his words, you can't help but agree, nodding as best you can over the thick shaft stuffed into your mouth and he smiles at your assent. His words sink into your mind, making you long to do whatever this handsome lion wants.";
	say "     His cock pulses and throbs in your mouth as your rub his balls, feeling them twitch and tense. The lion groans and pulls your head forward, stuffing his feline shaft down your throat moments before release. As he cums hard, his hot seed blasts down your throat and into your mouth. Much of it pushes its way down into your belly, filling you with warmth at having pleased the sexy male. Some of it overflows from your mouth as well, clearly the big kitty having saved up a large load for you. Before he's finished cumming, he pulls his cock from your mouth and strokes it, spraying the rest of his load across your [bodytype of player] body. You moan happily at this and rub your hands over yourself as you swallow down the remaining cum in your mouth and lick what you can from your lips.";
	say "     Flopped out on the bed, you writhe in pleasure, savoring the feel of your big lion's cum all over you. Leonard slides a paw along your side and down to your [if cunts of player > 0]pussy, fingering it until you orgasm loudly[else]ass, giving it another squeeze[end if][if cocks of player > 0]. Your cock is hard with arousal, but you feel no desire to play with it, content to have let the handsome male cum[end if]. 'Mmm... you did well, my lovely. Next time we'll mount you properly and you can get good and stuffed.' You moan and purr, eager to return and give yourself to the lion again.";
	if Feline_attached > 0:
		say "     As you lie there on the bed, panting to recover after your wonderful orgasm, the small feline snuggles back up to you. You can feel that her crotch is quite wet from several orgasms while watching. You moan softly and stroke her ears, guiding her muzzle back to your bosom. She wraps her lips around your nipple and resumes nursing milk from your breast, making you rumble in satisfaction.";
		increase libido of player by 4;
		decrease humanity of player by 4;


to say Leonardsex_firsttimeB:		[First time - male]
	say "     Leonard smiles and takes your hand in his strong paw. 'Splendid, my dear! I had hoped you'd accept my invitation.' He leads to the large bed at the back of his home. His strong, virile scent is even stronger here, making you increasingly aroused. His paws slide over your body, removing your gear and clothes so that he may look over your [bodytype of player] form[if Feline_attached > 0]. He gives the feline girl at your chest a scritch behind the ear and she releases your nipple after giving you a final lick. She hops onto the bed and sits cross-legged in the corner with a paw between her legs while she watches you both[end if]. After removing his suit jacket, he hangs it on a nearby coat rack and pulls you into a hug. One paw caresses your head, pressing your face into his soft mane, filling your senses with his feline scent.";
	say "     'Take it in. That's the scent of a real male,' he rumbles, stroking his other paw along your back. 'A big, strong lion is just what you need, isn't it?' he purrs in your ear. With your senses focused on his musk, you nod in agreement. Who wouldn't want such a sexy male?";
	say "     You moan in pleasure as paw moves down to grab your ass, giving it a firm squeeze. And speaking of firm, your hands have moved down his sides and have taking hold of his hard, throbbing cock. You stroke over it, working to get this big kitty fully hard. His precum flows down his length, soaking your fingers with it. You caress his full, heavy orbs as well, feeling the warmth of his virile balls, making you long for their contents all the more.";
	say "     Leonard strokes your head and pushes you to sit on the plush bed, bringing his cock to your face. 'Now, my sweet, it's time to put that mouth of yours to work,' he rumbles. Needing no further encouragement at this point, you wrap your lips around his cock, licking and sucking at it hungrily. He moans in pleasure and caresses your head as he thrusts into your wanton mouth. 'Mmm... that's it. You know how to serve a male properly. A weak man like you was really meant to be a horny kitty for me,' he says between thrusts. With your senses awash in his scent, his taste, his words, you can't help but agree, nodding as best you can over the thick shaft stuffed into your mouth and he smiles at your assent. His words sink into your mind, making you long to do whatever this handsome lion wants.";
	say "     His cock pulses and throbs in your mouth as your rub his balls, feeling them twitch and tense. The lion groans and pulls your head forward, stuffing his feline shaft down your throat moments before release. As he cums hard, his hot seed blasts down your throat and into your mouth. Much of it pushes its way down into your belly, filling you with warmth at having pleased the stronger male. Some of it overflows from your mouth as well, clearly the big kitty having saved up a large load for you. Before he's finished cumming, he pulls his cock from your mouth and strokes it, spraying the rest of his load across your [bodytype of player] body. You moan happily at this and rub your hands over yourself as you swallow down the remaining cum in your mouth and lick what you can from your lips.";
	say "     Flopped out on the bed, you writhe in pleasure, savoring the feel of your big lion's cum all over you. Leonard slides a paw along your side and down to your ass, giving it another squeeze[if cocks of player > 0]. Your cock is hard with arousal, but you feel no desire to play with it, content to have let the handsome male cum[end if]. 'Mmm... you did well, my lovely. Next time we'll mount you properly and you can get good and stuffed.' Rubbing his fingers at your taint, he adds, 'And let's hope you come back with a lovely pussy so you can be taken like a proper, horny girl.' You moan and purr, eager to return and give yourself to the lion again.";
	if Feline_attached > 0:
		say "     As you lie there on the bed, panting to recover after your wonderful orgasm, the small feline snuggles back up to you. You can feel that her crotch is quite wet from several orgasms while watching. You moan softly and stroke her ears, guiding her muzzle back to your bosom. She wraps her lips around your nipple and resumes nursing milk from your breast, making you rumble in satisfaction.";
		increase libido of player by 4;
		decrease humanity of player by 4;


to say Leonardsex_newkitty:		[Brought Leonard a new kitty]
	if HP of Leonard is 7:
		say "     Leonard looks over the kitty girl you've brought to him and rumbles happily. 'Good work, my dear. I am always pleased to welcome another of these poor, wayward felines into my home and give them the proper loving care they need. He gives you a tender kiss even as a paw slides down your back to your ass while the other does the same to the feline nursing from you. 'Shall you help me welcome her to the pride?'";
	else:
		say "     'Oh my! It seems you've brought a special treat, my dear,' he says with a rumble as he runs his paw down your body and over your ass. 'This cute kitty girl you've found isn't one from my pride. Perhaps you'd like to help me invite her to join us. What do you say?'";
	say "     [bold type]What do you say?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Bring the feline to join.";
	say "     ([link]N[as]n[end link]) - No thanks.";
	if the player consents:
		say "     Smiling and nodding to Leonard as you suddenly feel quite turned on by this idea, you run your hand along the kitty's back, scritching her ears. She rumbles in pleasure as she is roused from the nap she was taking to resume nursing from your bosom. Heading towards the back of the cave with Leonard right behind you, he strokes your sides and rear as he guides you towards the four-poster bed. There your feline lover strips you down and has you lie back on the bed, still cradling the other feline to your chest. She gives a soft mewl of inquiry, unsure what's going on, but you press her muzzle back to your nipple and she settles down to enjoy her feeding.";
		say "     Leonard moves onto the bed slowly with feline grace and stealth, padding slowly overtop of you. His paw moves in to replace your stroking hand at the feline's back, eventually drifting lower. When his fingers move to her wet pussy, she mewls again, but you make sure she continues suckling peacefully. The kitty in your arms starts rumbling and purring excitedly, raising her tail and wiggling her ass. Leonard smiles at this and bring his cock into position, slowly sinking it into the smaller female's body. She releases a yowl of pleasure, briefly sinking her claws into you.";
		if cunts of player > 0:
			say "     The larger lion rumbles and nibbles at the kitty's ear, telling her what a sexy kitty she is and how she belongs in his pride. He goes on like this as he fucks her, weaving words of lust and obedience in her ears that excite you as well, making you long to have the lion's cock in you as well. As the feline atop you slips further into her lustful mating and shifts from nursing from you to kissing you, you move your hand down between your legs to finger your hot, dripping pussy.";
			say "     The mating continues for some time, Leonard drawing it out as he tells the feline what a good, submissive lioness she is and how she belongs in his pride. Between his words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates. You moan at that thought, fingering your clit eagerly at that thought, imagining yourself in her place, being fucked and bred by the lion so you can share this fate. As the lion roars and takes the feline's nape in his muzzle, he drives hard into her one last time and you know he's pumping her full of his hot seed. You moan loudly, plunging your tongue into the feline's muzzle and cumming hard as you finger yourself to a powerful climax, longing for it to be the lion's cock instead of your own fingers next time.";
		else:
			say "     The larger lion rumbles and nibbles at the kitty's ear, telling her what a sexy kitty she is and how she belongs in his pride. He goes on like this as he fucks her, weaving words of lust and obedience in her ears that excite you as well, making you long to have the lion's cock in you as well. As the feline atop you slips further into her lustful mating and shifts from nursing from you to kissing you, you move your hand down between her legs stroke her dripping pussy and rub at Leonard's hefty balls.";
			say "     The mating continues for some time, Leonard drawing it out as he tells the feline what a good, submissive lioness she is and how she belongs in his pride. Between his words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates. You moan at that thought, fingering her sopping folds and the lion's cock as it sinks into her over and over again. You can't help but imagine yourself in her place, being fucked and filled by the lion so you can share this fate. As the lion roars and takes the feline's nape in his muzzle, he drives hard into her one last time and you know he's pumping her full of his hot seed. You moan loudly, plunging your tongue into the feline's muzzle as she cums hard as a mix of leonine cum and juices flow out around the pistoning cock, longing to have it happening to you next time.";
		say "     As you all lie back on the bed, the feline girl snuggles up to the lion on one side and you on the other. His strong, furry arms wrap around you both. He nuzzles you, telling you again what a good job you did in finding another lioness for his pride and bringing her here.";
		infect "Feline";
		decrease libido of player by libido of player / 4;
		now feline_meow is feline_meow / 2;
	else:
		say "     You smile and tell him that you'd rather watch and he grins and gives your rear a playful swat. Quite turned on by the idea of seeing the lion add the cute feline to his pride, you run your hand along her back and scritch her ears. She rumbles in pleasure as she roused from the nap she was taking to resume nursing from your bosom. Heading towards the back of the cave with Leonard right behind you, he strokes your sides and rear as he guides you towards the four-poster bed. There your feline lover eases the feline from your chest and into his arms. She mewls indignantly as your nipple is pulled away from her muzzle and then growls as she notices the unknown feline moving atop her. She mrowls and tries to take a swat at him, but he pins her down easily, rubbing his powerful body against hers.";
		say "     As you watch from the side of the bed, the lion keeps her face pressed onto the bed, forcing her to take in his scent even as he rumbles in her ear about what a lovely kitty she is and how she belongs in his pride. She struggles a little at first, her wild nature resisting the male, but his scent and his words (as well as the thick cock pressed against her rear) eventually have her mewling in need and raising her rear to present her dripping pussy. As the lion drives his hard shaft into her, she yowls in lustful pleasure and you finger your pussy excitedly, greatly turned on by the display of feline dominance.";
		say "     The mating continues for some time, Leonard drawing it out as he tells the feline what a good, submissive lioness she is and how she belongs in his pride. Between his words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates. You moan at that thought, [if cunts of player > 0]fingering your clit eagerly at that thought, imagining yourself in her place, being fucked and bred by the lion so you can share this fate. As the lion roars and takes the feline's nape in his muzzle, you watch as he drives hard into her one last time and his ballsack tightens, pumping her full of his hot seed. You moan loudly, cumming hard as you finger yourself to a powerful climax, longing for it to be the lion's cock instead of your own fingers next time[else]running your hands over yourself excitedly, imagining yourself in her place, being fucked and filled by the lion so you can share this fate. As the lion roars and takes the feline's nape in his muzzle, you watch as he drives hard into her one last time and his ballsack tightens, pumping her full of his hot seed. You moan loudly in time with her excited calls, imagining yourself in her place with the studly lion atop you next time[end if].";
		say "     As you all lie back on the bed, the feline girl snuggles up to the lion on one side and you on the other. His strong, furry arms wrap around you both. He nuzzles you, telling you again what a good job you did in finding another lioness for his pride and bringing her here.";
		increase libido of player by 12;
		if libido of player > 100, now libido of player is 100;


to say Leonardsex_pridekitty:		[Brought Leonard a kitty from his pride]
	say "     Feeling drawn to the masculine lion's body, you moan in pleasure as he runs his paws over you. Walking close behind you, his paws stroke your sides and rear as he guides you further into his cave home towards the four-poster bed. Divesting you of your gear and clothes, he presses his manly chest to your [bodytype of player] body. You moan in pleasure and nuzzle at his mane, taking in his strong scent.";
	say "     'Mmmm... I must say, you look so pretty with one of pride nursing from your bosom,' he says with a rumble as he runs a paw down the kitty's back to scritch her ears and draw a rumble from her. His paw then drifts over to stroke your other breast. Walking close behind you, his paws stroke your sides and rear as he guides you further into his cave home towards the four-poster bed. Divesting you of your gear and clothes, helps the small kitty onto his bed to wait eagerly while he presses his manly chest to your [bodytype of player] body. You moan in pleasure and nuzzle at his mane, taking in his strong scent.";
	say "     After the lioness kitty helps you onto the bed with her, Leonard pads onto it with a hungry, lustful look in his eyes as he smiles at having you both there to play with. 'Mmm... you're both such lovely treasures. Such sexy creatures here to get what they need from the sexy lion,' he rumbles as he runs a paw over each of you and you both respond to his touch, growing more eager for the male's attention. He rumbles and pads over to you, guiding you onto all fours and mounting you quickly. You release a mewling groan as he takes you quickly, getting right to the action this time, much to your body's pleasure.";
	if cunts of player > 0 and a random chance of 1 in 2 succeeds:
		say "     The other feline moves in behind Leonard, nuzzling at his ballsack and licking at his cock each time it slides back before another thrust. You can feel her raspy tongue playing at the edge of your pussy before moving on to attend to your clit as the lion starts pounding you hard and fast. 'That's a good, sexy girl,' he rumbles between thrusts. 'Such a good, submissive slut you are. In need of a hot load of lion cum, aren't you?' You nod enthusiastically, your body lusting to feel the sexy lion breed you.";
		say "     As he continues to tell you what an eager, needy, submissive kitties you both are, he pounds his pulsing shaft into you. You grip the sheets and beg him for him to fill you, for the kitty to keep licking, for him to take you. Soon your wish is granted as the lion drives hard into you and his balls pulse as his hot seed flows deep inside you, flooding your womb with his virile sperm. The horny kitty between your legs licks eagerly, lapping up the cum that leaks out around her master's shaft.";
		say "     After he withdraws from you and mounts the other kitty, you roll onto your back, lost in the blissful pleasure of having his hot semen filling your tummy. Watching the show, you soon feel the urge to return the favor and nuzzle under Leonard's balls to lick at his cock and her pussy. The lustful romp continues like this for some time, with the three of you swapping positions and you both getting several loads from the big male. Eventually, your threesome runs down and you all end up snuggled together on the bed, purring happily as you drift off for a quick catnap.";
	else:
		say "     The other feline moves in front of you, bringing her dripping pussy to your face. With the scent of aroused feline all around you, you dive in right away, licking and kissing at those wet folds, enjoying the mewls and purrs she emits. Watching this lovely show, Leonard starts pounding you hard and fast. 'That's a good, sexy [if cunts of player > 0]girl[else]kitty[end if],' he rumbles between thrusts. 'Such a good, submissive slut you are. Lick your pride-mate's pussy. You want to earn a nice, hot load of lion cum, don't you?' You nod enthusiastically, your body lusting to feel the sexy lion breed you.";
		say "     As he continues to tell you what an eager, needy, submissive kitties you both are, he pounds his pulsing shaft into you. You grip the sheets and beg him for him to fill you between licks, crying out for him to take you. Soon your wish is granted as the lion drives hard into you and his balls pulse as his hot seed flows deep inside you, flooding your [if cunts of player > 0]womb[else]ass[end if] with his virile sperm. The horny kitty before you grinds her pussy against your face as she cums hard as well. All of this sends you over the edge as well, climaxing as you lapping up her juices and feel your pride leader's hot load filling you.";
		say "     After he withdraws from you and mounts the other kitty, you roll onto your back, lost in the blissful pleasure of having his hot semen filling your tummy. Watching the show, you soon feel the urge to get a turn of your own. You push yourself up and bring your dripping [if cunts of player > 0]pussy[else]asshole[end if] to the lioness's muzzle, moaning in delight as her raspy tongue starts lapping up the leonine cum leaking from your stuffed [if cunts of player > 0]cunt[else]hole[end if]. The lustful romp continues like this for some time, with the three of you swapping positions and you both getting several loads from the big male. Eventually, your threesome runs down and you all end up snuggled together on the bed, purring happily as you drift off for a quick catnap.";


to say Leonardsex_purefeline:
	say "     Feeling drawn to the masculine lion's body, you moan in pleasure as he runs his paws over you. Walking close behind you, his paws stroke your sides and rear before taking hold of your leonine tail and raising it. You shiver in delight and mewl, showing off your ass to the strong lion. Kneeling down, he nuzzles and nibbles at your ear. 'Mmm... I knew you'd make a fine, submissive kitty girl... they always do,' he purrs, roaming his paws over your body before he picks you up bodily and carries you to the bed.";
	say "     Your feline lover strips you down, leaving your diminutive, cute body all on display for him to enjoy as he sits on the edge of the bed. You feel a warmth inside as he looks you over, proud that it pleases him so";
	if cunts of player > 0:
		say ". And that warmth spreads down to your cunt, wet and dripping with need for him. He strokes his fingers across your snatch, making you mewl with desire. When he spreads his arms, you pounce into his lap, kissing and nuzzling at your big lion lover before he turns you sit with your back to his strong chest. Lowering you down, his throbbing erection spreads your needy cunt open, filling you with the lion meat your body craves.";
	else:
		say ". His strokes his fingers across your [if cocks of player is 0]bare groin[else]your maleness with passing interest. 'Just a horny, slutty girly-boy needing a real cock in him, that's what you are.' Spreading his arms, he rumbles 'Well, come and get it, my submissive kitty-boy.' Needing no more incentive, you pounce into his lap, kissing and nuzzling at your big lion lover before he turns you to sit with your back to his strong chest. Lowering you down, his throbbing erection spreads your ass, filling you with the lion meat your body craves.";
	say "     His strong arms and legs bounce you in his lap, sliding you up and down that hard cock. Your body quivers and you mewl in delight, loving every moment of the powerful fucking you're getting. His paws rub your chest[if breast size of player > 0], stroking your breasts and teasing your nipples[end if]. You can feel his warm breath against your ears before he gives them another nibble, rumbling to you what a sexy kitty you are, what a good, submissive lioness, how you belong with his pride. Your whole body is filled with shivers of delight at the idea of becoming a member of his pride and you mrowl [if cunts of player > 0]in orgasm[else]excitedly[end if]. He chuckles and slows his thrusting, helping you draw out the ecstasy of that wonderful image.";
	say "     As he continues to tell you what an eager, needy, submissive kitty you are, he pounds his throbbing rod into you. You can feel the pulsing of his maleness with his power, dribbling a steady supply of precum into your [if cunts of player > 0]hot pussy[else]needy hole[end if]. His soft fur rubs against yours as your feline bodies slide against one another as his strong limbs easily support your smaller one, making sure you stay planted atop his feline penis. Not that you would consider resisting your handsome lover, but it feels so good to have him in control. Aside from squeezing your [if cunts of player > 0]your cunt[else]your tight hole[end if] around his rod, you hold yourself steady, letting Leonard use you as he pleases and loving it.";
	say "     After a good, long pounding[if cunts of player > 0] that's had you cum several times[end if], the lion drives his stiff cock deep inside you a final time and roars loudly. You can feel his hot seed blasting into you, splashing against your [if cunts of player > 0]cervix and flowing into your womb[else]prostate and filling your bowels[end if]. You release a feline yowl of pleasure[if cunts of player > 0] and cum hard, soaking your crotch in a fresh flow of your juices and his semen[end if] as he continues breeding you like the horny [if cunts of player > 0]girl[else]girly-boy[end if] you are. By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that makes you feel fulfilled.[impregchance]";
	say "     Easing you from his lap, he lays his cum-filled kitty on the bed, guiding your head down to his cock. You take it into your mouth and lick it clean while he strokes your head and scritches your ears. 'That's right, lick your lion master clean. Yes... you're becoming a wonderful kitty girl. You'll fit in nicely with the others,' he rumbles. You blush with pride and clean him attentively. Eventually you both drift off with his half-hard cock still in your mouth as you nurse softly at it, taking a quick catnap on the soft bed.";


to say Leonardsex_general:
	say "     Feeling drawn to the masculine lion's body, you moan in pleasure as he runs his paws over you. Walking close behind you, his paws stroke your sides and rear as he guides you further into his cave home towards the four-poster bed[if Feline_attached > 0]. He runs his paws over the cute lioness at your chest, coaxing her to release your breast and take a place on the bed to watch. As the lion divests you of your clothes and gear, she fishes under the bed for something[else]. Divesting you of your gear and clothes, he presses his manly chest to your [bodytype of player] body[end if]. You moan in pleasure and nuzzle at his mane, taking in his strong scent.";
	if bodyname of player is "Feline":
		say "     'Mmm... your cute, feline body looks lovely. Just right for a submissive girl like you,' he rumbles as he cradles you in his arms and lowers you onto the bed. You mewl softly and knead your paws at his chest, your cat girl body longing to let the sexy lion mount you. His paws move to your breasts, stroking and caressing them, making you mewl all the more. As he plays with your nipples, he leans in and gives you a kiss, running his raspy tongue across your lips before sliding it into your [facename of player] mouth.";
	else if cunts of player > 0:
		say "     'Mmm... my sexy girl,' he rumbles, nuzzling at your neck and nibbling along it. 'A good, submissive girl looking for her big lion stud to fill her,' he continues, sliding his arms around you. He cradles you in his arms and lowers you onto the bed. Caught up in your arousal and desires for the lion, you mewl softly. You can feel the truth in his words, the longing inside you to let the sexy lion mount you. His paws move to your breasts, stroking and caressing them, making you moan in pleasure. As he plays with your nipples, he leans in and gives you a kiss, running his raspy tongue across your lips before sliding it into your [facename of player] mouth.";
	else:
		say "     'Mmm... that's a good boy,' he rumbles, nuzzling at your neck and nibbling along it. 'Deep down, you're nothing but a submissive slut. A girly-boy looking for his big lion stud to fill him,' he continues, sliding his arms around you. He cradles you in his arms and lowers you onto the bed. Caught up in your arousal and desires for the lion, you mewl softly. You can feel the truth in his words, the growing longing inside you to let the sexy lion mount you. His paws knead your ass, making you moan in pleasure. He leans overtop you and runs his raspy tongue up your [bodydesc of player] chest.";
	say "     With his paws at your hips, he tells you to move onto all fours. You move readily into position, raising your ass and offering yourself to the big, strong male you desire[if cunts of player > 0]. He smiles and kneads your bottom[else]. He smiles and spreads your cheeks[end if] before moving his throbbing, leonine cock into position. Teasingly, he eases just the tip into you as he leans overtop of you, making you mrowl with need and push your hips back as your lustful body demands more. 'That's a good, eager [if cunts of player > 0]girl[else]girly-boy[end if]. You were made to take lion-cock, weren't you?' he rumbles, nibbling your ear. 'A horny slut like you wants all the lion cock you can get.'";
	say "     As he continues to tell you what an eager, needy, submissive kitty you are, he pounds his throbbing rod into you. You can feel the pulsing of his maleness with his power, dribbling a steady supply of precum into your [if cunts of player > 0]hot pussy[else]needy hole[end if][if player is felinebodied]. His strong, muscled body keeps you pinned to the bed as he takes the nape of your neck in his teeth. They hold you firmly, but gently, making your feline body relax and submit to the big male. Not that you would consider resisting your handsome lover, but it feels so good to have him in control[else]. His strong, muscled body keeps you pinned to the bed, not that you would consider resisting your handsome lover[end if]. Aside from pushing your hips back into each thrust, you hold yourself steady, letting Leonard use you as he pleases and loving it[if Feline_attached > 0]. Glancing over as you hear some moaning mewls, you spot the small lioness working a [one of]pink[or]black[or]ridged[or]vibrating[at random] dildo into her cunt as she watches the sexy lion mating you[end if].";
	say "     After a good, long fucking[if cunts of player > 0] that's had you cum several times[end if], the lion drives his stiff cock deep inside you a final time and roars loudly. You can feel his hot seed blasting into you, splashing against your [if cunts of player > 0]cervix and flowing into your womb[else]prostate and filling your bowels[end if]. You release a feline yowl of pleasure[if cunts of player > 0] and cum hard, soaking your crotch in a fresh flow of your juices and his semen[end if] as he continues breeding you like the horny [if cunts of player > 0]girl[else]girly-boy[end if] you are. By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that makes you feel fulfilled.[impregchance]";
	say "     Dismounting, he pulls you close and guides your head down to his cock. You take it into your mouth and lick it clean while he strokes your head and scritches your ears. 'That's right, lick your lion master clean. Mmm... you'll make a fine kitty girl like the others,' he rumbles. You blush with pride and clean him attentively[if Feline_attached > 0]. The other kitty purrs softly and snuggles back up to your chest, taking your nipple into her muzzle and resumes nursing from you. For a moment you think that will be all, but then you feel her slide the slick toy she was using into your well-used hole, ensuring the lion's seed stays stopped up nicely inside you[end if]. Eventually you both drift off with his half-hard cock still in your mouth as you nurse softly at it, taking a quick catnap on the soft bed.";


Part 2 - Mate Sex

to Leonardmatesex:
	if Feline_attached > 0 and feline_status is 0:
		say "[Leonardmate_newkitty]";
	else if cunts of player > 0 and player is felinebodied and a random chance of 2 in 5 succeeds:
		say "[Leonardmatesex_lc]";
	else:
		say "     You snuggle up to your sexy mate and run your hands over his chest, making him rumble happily. He pulls you into his arms and gives you a kiss. As you kiss, you wonder how you might best show your love for the handsome lion.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 1;
		now description entry is "suck the lion's cock";
		if breast size of player > 2 and player is felinebodied:
			choose a blank row in table of fucking options;
			now title entry is "Titty Fuck";
			now sortorder entry is 2;
			now description entry is "Share the bounty of the pride with him";
		if cunts of player > 0:
			choose a blank row in table of fucking options;
			now title entry is "Cunnilingus";
			now sortorder entry is 3;
			now description entry is "have the lion eat you out";
			choose a blank row in table of fucking options;
			now title entry is "Have sex";
			now sortorder entry is 4;
			now description entry is "have the lion fuck you";
		choose a blank row in table of fucking options;
		now title entry is "Doggy style";
		now sortorder entry is 5;
		now description entry is "have the lion mount you like a beast";
		if ( cunts of player > 0 or cocks of player > 0 ) and HP of Leonard >= 17:
			choose a blank row in table of fucking options;
			now title entry is "Maid foot rub";
			now sortorder entry is 6;
			now description entry is "have the maids lick your feet (and more)";
		if cocks of player > 0 and HP of Leonard >= 17:
			choose a blank row in table of fucking options;
			now title entry is "Maid fuck";
			now sortorder entry is 7;
			now description entry is "fuck one of the maids";
		if ( cunts of player > 0 or cocks of player > 0 ) and Leonardcaraway is true:
			choose a blank row in table of fucking options;
			now title entry is "Sexy chef";
			now sortorder entry is 8;
			now description entry is "play around with Caraway";
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number (1-[number of filled rows in table of fucking options])> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				choose row calcnumber in table of fucking options;
				say "Confirmation: Would you like to [description entry]?";
				if player consents:
					now sextablerun is 1;
					now lastfuck of Leonard is turns;
					if title entry is "Fellatio":
						say "[Leonardmatesex1]";
					else if title entry is "Cunnilingus":
						say "[Leonardmatesex2]";
					else if title entry is "Have sex":
						say "[Leonardmatesex3]";
					else if title entry is "Doggy style":
						say "[Leonardmatesex4]";
					else if title entry is "Titty Fuck":
						say "[Leonardmatesex5]";
					else if title entry is "Maid foot rub":
						say "[Leonardmaidsex1]";
					else if title entry is "Maid sex":
						say "[Leonardmaidsex2]";
					else if title entry is "Sexy chef":
						say "[Leonardcarawaysex1]";
			else:
				say "Invalid Option.";

[
You make for such a lovely feline.
Let's help make you into that lovely feline your pride and I love so much.
]

to say Leonardmate_newkitty:
	say "     Leonard looks over the kitty girl you've brought to him and rumbles happily. 'And I see you've brought a new friend to me,' he purrs, lightly caressing her head. 'I take it she's ready to join our pride if you've brought her to me.' You smile and nod to him, having fed her well on your milk and purred soothing words of love and welcome to the pride to her on your journey back here. He gives you a quick kiss and leads you to the bed at the back with an arm around you and a paw resting on your rear. 'I am always pleased to welcome another of these poor, wayward felines into my home and give them the proper loving care they need. Shall you help me welcome her properly into our pride or would you prefer to watch this time?' he purrs, licking your ear.";
	say "     [bold type]Will you help him welcome her into the pride or would you prefer to watch?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Welcome her to the pride.";
	say "     ([link]N[as]n[end link]) - Watch.";
	if the player consents:
		say "     Looking forward to helping Leonard bring another feline into the pride, you scritch the kitty's ears and nuzzle her, rousing her from the nap she was taking to resume nursing from your bosom. As your mate helps you strip down, you purr soothingly to the kitty about how she'll love being part of the pride and that it's where she belongs. She mewls softly and kneads her paws, your maternal milk making her susceptible to your invitation.";
		say "     Leonard moves onto the bed slowly with feline grace and stealth, padding slowly overtop of you. His paw moves in to replace your stroking hand at the feline's back, eventually drifting lower. When his fingers move to her wet pussy, she mewls again, but you make sure she continues suckling peacefully as you purr affectionately to her. The kitty in your arms starts rumbling and purring excitedly, raising her tail and wiggling her ass. Leonard smiles at this and bring his cock into position, slowly sinking it into the smaller female's body. She releases a yowl of pleasure, briefly sinking her claws into you, sending shivers of delight through you as you are reminded of [one of]your first time the with the sexy lion[or]all the other pretty kitties you've helped join the pride[or]the wonderful bond you've formed with the other girls in the pride[in random order].";
		if cunts of player > 0:
			say "     The larger lion rumbles and nibbles at the kitty's ear, telling her what a sexy kitty she is and how she belongs in his pride. He goes on like this as he fucks her, weaving words of lust and obedience in her ears that excite you as well, knowing you'll soon have another pretty girl in the pride for you to cherish. As the feline atop you slips further into her lustful mating and shifts from nursing from you to kissing you, you move your hand down between your legs to finger your hot, dripping pussy.";
			say "     The mating continues for some time, Leonard drawing it out as you and he tells the feline what a good, submissive lioness she is and how she belongs in his pride. Between your words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates. You moan at that thought, fingering your clit eagerly as you imagine the next time your mate will make love to you, being fucked and bred by your handsome lion lover. As the lion roars and takes the feline's nape in his muzzle, he drives hard into her one last time and you know he's pumping her full of his hot seed. You moan loudly, plunging your tongue into the feline's muzzle and cumming hard as you finger yourself to a powerful climax, longing for it to be the lion's cock instead of your own fingers next time.";
		else:
			say "     The larger lion rumbles and nibbles at the kitty's ear, telling her what a sexy kitty she is and how she belongs in his pride. He goes on like this as he fucks her, weaving words of lust and obedience in her ears that excite you as well, knowing you'll soon have another pretty girl in the pride for you to cherish. As the feline atop you slips further into her lustful mating and shifts from nursing from you to kissing you, you move your hand down between her legs stroke her dripping pussy and rub at Leonard's hefty balls.";
			say "     The mating continues for some time, Leonard drawing it out as you and he tells the feline what a good, submissive lioness she is and how she belongs in his pride. Between your words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates. You moan at that thought, fingering her sopping folds and the lion's cock as it sinks into her over and over again. You long for the next time your mate will make love to you, being fucked and filled by your handsome lion lover. As the lion roars and takes the feline's nape in his muzzle, he drives hard into her one last time and you know he's pumping her full of his hot seed. You moan loudly, plunging your tongue into the feline's muzzle as she cums hard as a mix of leonine cum and juices flow out around the pistoning cock, longing to have it happening to you next time.";
		say "     As you all lie back on the bed, the feline girl snuggles up contentedly between your both, her new pride leader and lover on one side and her pride matron on the other. Leonard wraps his strong, furry arms wrap around you both. He nuzzles you, telling you again how he loves you and what a beautiful lioness you've become. He strokes your [if facename of player is listed in infections of felinelist]muzzle[else]cheek[end if], saying that with you by his side, you can form a beautiful pride together.";
		infect "Feline";
		decrease libido of player by libido of player / 4;
		now feline_meow is feline_meow / 2;
	else:
		say "     You smile and tell him that you'd rather watch and he grins and gives your rear a playful swat. Quite turned on by the idea of seeing the lion add the cute feline to his pride, you run your hand along her back and scritch her ears. She rumbles in pleasure as she roused from the nap she was taking to resume nursing from your bosom. As your mate helps you strip down, you purr soothingly to the kitty about how she'll love being part of the pride and that it's where she belongs. She mewls softly and kneads her paws, your maternal milk making her susceptible to your invitation. After letting her nurse from you for a while, you ease her muzzle back and tell her you have someone very special who wants to meet her. She mewls softly and makes grabby paws at your breasts, but is else shifted into the lion's strong, loving arms. Still under the effects of your matronly milk, she does not resist Leonard's advances as he guides her to lay face down on his lovely bed with the lion moving atop her.";
		say "     As you watch from the side of the bed, the lion keeps her face nuzzling onto the bed, making her to take in his scent even as he rumbles in her ear about what a lovely kitty she is and how she belongs in his pride. She squirms a little at first, the last of her wild nature resisting the male, but his scent and his words (as well as the thick cock pressed against her rear) quickly put an end to that and have her mewling in need and raising her rear to present her dripping pussy. As the lion drives his hard shaft into her, she yowls in lustful pleasure and you [if cunts of player > 0]finger your pussy[else if cocks of player > 0]stroke yourself[else]run your paws over your body[end if] excitedly, greatly turned on by the display of feline dominance and by the knowledge you'll soon have another pretty kitty in the pride for you to cherish.";
		say "     The mating continues for some time, Leonard drawing it out as he tells the feline what a good, submissive lioness she is and how she belongs in his pride. Between his words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates. You moan at that thought, [if cunts of player > 0]fingering your clit eagerly as you imagine the next time your mate will make love to you, being fucked and bred by your handsome lion lover. As the lion roars and takes the feline's nape in his muzzle, you watch as he drives hard into her one last time and his ballsack tightens, pumping her full of his hot seed. You moan loudly, cumming hard as you finger yourself to a powerful climax, longing for it to be the lion's cock instead of your own fingers next time[else]running your hands over yourself excitedly, imagining yourself being fucked and filled by your handsome lion lover. As the lion roars and takes the feline's nape in his muzzle, you watch as he drives hard into her one last time and his ballsack tightens, pumping her full of his hot seed. You moan loudly in time with her excited calls, imagining yourself in her place with the studly lion atop you next time[end if].";
		say "     As you all lie back on the bed, the feline girl snuggles up contentedly between your both, her new pride leader and lover on one side and her pride matron on the other. Leonard wraps his strong, furry arms wrap around you both. He nuzzles you, telling you again how he loves you and what a beautiful lioness you've become. He strokes your [if facename of player is listed in infections of felinelist]muzzle[else]cheek[end if], saying that with you by his side, you can form a beautiful pride together.";
		increase libido of player by 12;
		if libido of player > 100, now libido of player is 100;
	rest;
	now feline_status is 2;
	decrease humanity of player by 5;
	follow the turnpass rule;


to say Leonardmatesex_lc:		[Leonard's choice]
	if a random chance of 3 in 5 succeeds:
		say "     As you give Leonard a sexy look and start to stride over to him, he rumbles lustfully and wraps his arms around you. He pulls you in close and kisses you passionately, his paws running over your body. 'Mmm... I want you, my mate,' he rumbles, kneading your bottom as he slides his tongue across your neck. You can only moan weakly in response, any sexy plans of your own thrown out as your body responds to the lion's advances. Smiling up at him, you accompany him to the bed where, after divesting you both of your clothing and gear, he moves to climb atop you on all fours.";
		say "     With a large paw to either side of you, he presses his hips forward, grinding his hard cock against your rear to make you moan softly. He nuzzles your neck and nibbles along it, purring as he dribbles streaks of precum over you[one of]. Despite his earlier eagerness, he takes some time to get you even more worked up[or]. Taking little time for foreplay, he makes a few teasing slides across your wet lips[at random] before finally pulling back and mounting you properly. As his hard, feline shaft sinks into your hot pussy, you mrowl in pleasure and push back into his thrust. Once hilted inside you, he nuzzles your cheek and you turn your head to kiss him quickly[if gestation of child is 0 and larvaegg is not 2]. 'Mmm... let's make some cubs[else]. 'Mmm... my sexy, pregnant beauty[end if],' he rumbles before starting to thrust.";
		say "     Your aroused and needy body grips and squeezes at his cock as he mates you, longing for your mate to claim your [if gestation of child is 0 and larvaegg is not 2]womb[else]body[end if] once again with his seed[if breast size of player > 0]. His paw rubs at your chest, stroking your breasts and teasing your nipples[else]. His paw rubs at your chest and teases your nipples[end if]. The lion's steady thrusts as he pounds his throbbing rod into you make you more and more excited and you push back into his powerful thrusts. You reach back and grab his hefty balls, which have been slapping warmly against your [if cocks of player > 0]own[else]thighs[end if] and fondle them, longing to feel their thick, creamy product within you and knowing that time's coming soon.";
		say "     His pace accelerates and his breathing grows heavier as his arousal builds. As he pumps into your squeezing, quivering pussy, your hot juices run down your thighs, your arousal climbing. Leonard takes your nape in his muzzle and holds it gently while driving into you hard and fast, his shaft throbbing inside you with every heavy thud of his heart. After a few of these pounding thrusts, you feel his hot seed blasting into you in thick spurts that are wonderfully fulfilling. His ample load fills you with warmth and satisfaction, getting you to cum powerfully as well with a feline yowl of ecstasy as his virile semen splashes against your cervix and flows into your womb[if gestation of child is 0 and larvaegg is not 2] in an attempt to breed you[end if]. By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that leaves you purring happily.[impregchance]";
		say "     Remaining sheathed inside you, he rolls onto his side with you in his arms, spooning with you even as his cock gives its last twitches. 'Mmm... my beautiful, strong mate. We were meant to be together like this,' he rumbles, running his paw over your well-seeded tummy. 'You should stay so I might breed you with litter after litter of cubs.' You snuggle yourself back against him and you long to agree, but tell him that you feel there's more you must do out in the city as well for now. He nuzzles you and licks your ear, letting you know he hopes the day will come soon when you're done with the city and can be his alone. You drift off to rest for a bit with his half-hard cock still buried inside you, purring happily together.";
		decrease humanity of player by 5;
	else:
		say "     As you give Leonard a sexy look and start to stride over to him, he rumbles lustfully and wraps his arms around you. He pulls you in close and kisses you passionately, his paws running over your body. 'Mmm... come, my lovely mate,' he rumbles as he kneads your bottom and runs his tongue along your neck. 'I wish to show the passion of my love to you.' You rumble softly in response, any sexy plans of your own thrown out as your body responds to the lion's advances. Smiling up at him, you accompany him to the bed where, after divesting you both of your clothing and gear, he lays you back across the sheets and moves atop you.";
		say "     Eager to have the handsome lion mate you, you mrowl softly and wrap your arms around him. Rumbling at your eagerness to mate, he nuzzles across your chest, licking your nipples in passing and soon has his cock pressing against your thigh. He strokes it across your wet, sensitive folds slowly before lining it up for entry and kissing him passionately. As you kiss, he pushes his hips forward and thrusts into you.";
		say "     You mrowl and purr beneath your leonine lover as he thrusts into you steadily, taking a slower approach than his usual animal mating. With your arms around him, you stroke his softly-furred back and rear, giving those strong muscles the occasional squeeze as tremors of delight run through you. [if breast size of player > 0]. He slides a paw across your breasts, caressing them before teasing your nipples. He licks his lips as dribbles of milk leak from them and leans forward to wrap his lips around your nipple, nursing some of your feline milk from it. 'Mmm... delicious. It will feed our cubs well,' he purrs before kissing you, sliding his tongue into your mouth. You can taste traces of your milk on his tongue as you kiss[else]. He moves a paw to rub over your flat chest and tweaks your nipples. He leans down and licks slowly across one of them with his raspy tongue before nuzzling back up to kiss you again[end if]. As you kiss, you slide a hand around to fondle the lion's hefty ballsack, enjoying the thought of soon obtaining their contents within your womb[if gestation of child is 0 and larvaegg is not 2] to breed you[end if].";
		say "     As Leonard licks and nips along your neck and shoulders, his panting grows heavier and his thrusts harder as his excitement builds. You grip his muscled shoulders with your hands and squeeze them with every thrust he makes into you, digging your claws in as you yowl in ecstasy. With the pain of your claws and the pleasure of your cunt spasming around his shaft, he roars loudly and drives himself hard into you, blasting his hot seed into your womb as he seeks to breed you. After several firm thrusts and their accompanying blasts of lion cum, his balls are drained and your womb is full of his thick seed, leaving you with a pleasant bump from his considerable output[if gestation of child is 0 and larvaegg is not 2] which you hope will soon grow even larger[end if]. He eases himself from you slowly and snuggles up beside you, purring happily as his fingers run over your body, working steadily to bring you to another climax as fingers pump into your cream-filled pussy and teeth nibble your [if breast size of player > 0]milky [end if]nipple. Once he's sure that you're quite satisfied, he snuggles you in his arms and purrs softly to you about how the pride treasures you and how much he and all the pride long for you to stay so you might enjoy such pleasures always. Even as you drift off, the desire to stay is very tempting.[impregchance]";
		decrease humanity of player by 8;
	infect "Feline";
	rest;
	now feline_meow is feline_meow / 2;
	decrease libido of player by libido of player / 4;
	follow the turnpass rule;


to say Leonardmatesex1:			[Fellatio]
	say "     Deciding you want to show your feline lover how much you appreciate him, you shove him back into his chair with a grin. You run your hands down his body as you lower yourself between his legs. After the initial surprise has passed, it fades to a rumble of pleasure and a gentle caress of his paw across your cheek. You nuzzle against those soft pads and wrap your fingers around his sheath and balls, stroking the warm fur. 'Mmm... you are such a lovely, beautiful and mmm...' he moans as you lick across his glans, '...thoughtful mate.' You grin up at him one last time before leaning forward and taking the emerged portion of his shaft into your mouth. As you take more of it in, you let your lips push back his sheath so you can feel his maleness growing fully hard in your mouth, excited by the thought that you're doing that to him.";
	say "     His loins heavy with his strong, virile scent, you quickly grow excited as well. You think back to the first time you did this. It seems so long ago. You never dreamed at the time how close you'd become to your wonderful mate and his pride. With thoughts to all this great lion has given you, you work your mouth and tongue to the best of your abilities, seeking to show him how much you love him for all you've shared together. 'Oh, my wonderful mate,' he moans as his cock pulses and throbs in your mouth, dribbling his pre down your throat.";
	say "     As you rub his balls, you can feel them twitch and tense with his approaching climax. Knowing his peak is near, you [one of]lean forward to take the full length of his shaft into your mouth and suck harder, getting him to blast his load down your throat. You squeeze his pulsing rod between your tongue and palate, milking him to feed you his hot load. Once he's drained, you make a show of licking your lips and purring[or]work your tongue frantically across his glans, getting him to blast his load across your tongue so you can savor all of it in your mouth. You have to swallow much of it down in the end, pumping his shaft and rubbing his balls to get all the lion can give before releasing him. Once he's drained, you show him the sticky semen filling your mouth before you swallow it down with obvious delight[or]pull your head back and pump his shaft and rub his balls, getting the lion to blast his thick load across your face in heavy streaks. Once he's drained, you wipe up a big gob of his semen with your finger and then suck it off before giving his glans a kiss[as decreasingly likely outcomes][one of]. You then smile up at him before standing and striding off with a sexy sway to your hips. He leans back in his chair to recover, smiling happily as he watches that sexy ass of yours[or]. You get back up slowly and snuggle into his lap to enjoy his tender caresses. 'My dear, I simply must have you show some of my girls how to do that properly. Many of them aren't even half as good as you at that.' Beaming with pride and love, you enjoy a happy snuggle with your mate[as decreasingly likely outcomes].";
	infect "Feline";
	increase libido of player by 6;
	if libido of player > 100, now libido of player is 100;
	increase feline_meow by 1;


to say Leonardmatesex2:			[Cunnilingus]
	say "     You nuzzle to nibble at Leonard's feline ear and guide on of his paws between your legs, [if player is felinebodied or player is felinefaced]rumbling[else]whispering[end if] to him that you would like to enjoy that rough tongue of his for a change. He grins at you and guides you over to one of the chairs, keeping his paw between your legs the whole time. Once you're comfortably seated, he leans in and gives you a long kiss before lowering himself between your legs. He starts by nuzzling your thighs and caressing your legs, purring softly about what a lovely feline you've become and about how he and the whole pride love you very much. He adds how much he's looking forward to breeding plenty of beautiful cubs with his pride's matron.";
	say "     By the time his tongue reaches your pussy, you are already very wet, excited from his tantalizing licking and his lovely words. He runs his tongue slowly across your cunt several times in slow licks. The rough texture of his leonine tongue sends shivers of delight through you and you spread your legs wider. Rubbing your hands through his mane, you urge your handsome lover to delve further and soon enough you can feel that tongue diving into you, spreading your dripping lips and diving into your wet tunnel. He laps and licks attentively, working slowly to please you. The work of his padded thumb is particularly enjoyable as it rubs at your stiff clit. Soon enough, you are pushed over the edge into climax, your hot juices soaking the lion's muzzle as he laps up as much as he can get. As your climax is passing, you find yourself very thankful that already you're sitting down, momentarily weak in the knees. Leonard licks his muzzle as he gives up slowly, gives you a passionate, juicy kiss while running his paws over your body before leaving you to recover after your satisfying release.";
	infect "Feline";
	increase libido of player by 6;
	if libido of player > 100, now libido of player is 100;
	increase feline_meow by 1;


to say Leonardmatesex3:			[Have sex]
	say "     Longing to have the handsome lion mate you, you slide a hand down to his loins and stroke his shaft. He rumbles in pleasure and [if scalevalue of player <= 3]scoops you into his arms and carries you over to his bed. As he does, he kisses you repeatedly, purring about what a beautiful mate you are. He lowers you gently onto the sheets and slides onto the bed beside you[else]leads you over the bed with a paw caressing your ass. He gives you several more kisses before climbing onto the bed with you[end if]. You wrap one arm around him and take hold of his cock with the other, tugging him to move over your supine body as you spread your legs. Rumbling at your eagerness to mate, he nuzzles across your chest, licks your nipples in passing and soon has his cock pressing against your thigh. You stroke it across your wet, sensitive folds slowly before lining it up for entry and kissing him passionately. As you kiss, he pushes his hips forward and thrusts into you.";
	say "     You mrowl and purr beneath your leonine lover as he thrusts into you steadily, taking a slower approach than his usual animal mating. With your arms around him, you stroke his softly-furred back and rear, giving those strong muscles the occasional squeeze as tremors of delight run through you[if breast size of player > 0 and the player is felinebodied]. He moves a paw to cup one of your breasts, caressing it before leaning down to wrap his lips around your nipple, nursing some of your feline milk from it. 'Mmm... you are delicious, my dear. It is no wonder that the feline girls love nursing from you so much,' he purrs, licking his muzzle. You caress his cheek and tell him to leave some for them as well, to which he grins and gives your nipple a slow lick with his raspy tongue, cleaning up the stray drops of milk from it before kissing you[else if breast size of player > 0]. He moves a paw to cup one of your breasts, caressing it. He leans down and licks his raspy tongue slowly across your hard nipple, sending a shiver of pleasure through you. He then presses his muzzle to your lips, kissing you again[else]. He moves a paw to rub over your flat chest and tweaks your nipples. He leans down and licks slowly across one of them with his raspy tongue before nuzzling back up to kiss you again[end if]. As you kiss, you slide a hand around to fondle the lion's hefty ballsack, enjoying the thought of soon obtaining their contents within your womb[if gestation of child is 0 and larvaegg is not 2] to breed you[end if].";
	say "     As Leonard starts to lick and nip along your neck and shoulders, his panting grows heavier and his thrusts harder as his excitement builds. You grip his firm ass with your hands and squeeze it with every thrust he makes into you, pulling him firmly forward to drive his leonine shaft into you. Soon enough, he roars in lustful release and you feel that familiar rush of your handsome lover's hot seed shooting into you and flowing into your womb as his body seeks to breed its mate again. You mrowl and [if bodyname of player is listed in infections of Felinelist]dig your claws into his rear as you orgasm powerfully, arching your back and cry out in ecstasy[else]grab his rear firmly as you orgasm powerfully, arching your back and crying out in ecstasy[end if]. After several firm thrusts and their accompanying blasts of lion cum, his balls are drained and your womb is full of his thick seed, leaving you with a pleasant bump from his considerable output[if gestation of child is 0 and larvaegg is not 2] which you hope will soon grow even larger[end if]. He eases himself from you slowly and snuggles up beside you, purring happily about what a wonderful mate you are and that the pride will become even greater with you as its matron. As you drift off for a brief catnap after your romp, he wraps his arms around you, resting one paw on your tummy and the other at your recently-filled pussy.[impregchance]";
	infect "Feline";
	rest;
	now feline_meow is feline_meow / 2;
	decrease libido of player by libido of player / 4;
	decrease humanity of player by 4;
	follow the turnpass rule;


to say Leonardmatesex4:			[Doggy style]
	say "     Feeling the urge for some carnal pleasure with your handsome mate, you strut over to the bed at the back of the tunnel. You sway your hips[if player is felinetailed] and leonine tail[end if] at the lion, who eagerly follows you with a playful, predatory rumble. As you pause at the bed, he places his strong paws on your rear and gives it a squeeze. You run your hands over one another, helping each other out of your clothes before the lion tosses you onto the bed and pounces atop you. You roll around on the large bed for a while, hands moving over each other before finally you move onto all fours and give your ass a meaningful shake. 'Mmm... yes, let me mount you like a lion should[if cunts of player > 0]. I'll pound you and breed you full of strong cubs[end if],' he rumbles even as he moves atop you.";
	say "     With a paw groping your chest and the other gripping the sheets for support, he presses his hips forward, letting his hard cock grind against your rear, making you moan softly. He nuzzles your neck and nibbles along it, purring as he dribbles streaks of precum over you before finally pulling back and mounting you properly. As his hard, feline shaft sinks into your [if cunts of player > 0]hot pussy[else]tight ass[end if], you mrowl in pleasure and push back into his thrust. Once hilted inside you, he nuzzles your cheek and you turn your head to kiss him quickly. 'Mmm... we were made for one another,' he rumbles before starting to thrust.";
	say "     Your aroused and needy body grips and squeezes at his cock as he mates you, longing for your mate to claim your [if cunts of player > 0]womb[else]body[end if] once again with his seed[if breast size of player > 0]. His paw rubs at your chest, stroking your breasts and teasing your nipples[else]. His paw rubs at your chest and teases your nipples[end if]. The lion's steady thrusts as he pounds his throbbing rod into you make you more and more excited and you push back into his powerful thrusts. You reach back and grab his hefty balls, which have been slapping warmly against your [if cocks of player > 0]own[else]thighs[end if] and fondle them, longing to feel their thick, creamy product within you and knowing that time's coming soon.";
	say "     His pace picks up and his breathing grows heavier as his arousal builds[if cunts of player > 0]. Your feminine juices run down your legs as he pumps into your squeezing, quivering pussy[else]. Your anus clenches down around him tightly each time he pushes deep inside you[end if]. And soon your effort is rewarded as Leonard takes your nape in his muzzle and holds it gently while driving into you hard and fast. After a few of these pounding thrusts, you feel his ballsack tauten and feel his hot seed blasting into you moments later. His ample load fills you with warmth and satisfaction[if cocks of player > 0 or cunts of player > 0], getting you to cum powerfully as well with a feline yowl of ecstasy[end if]. You can feel his virile semen [if cunts of player > 0]splashing against your cervix and flowing into your womb[else if cocks of player > 0]splashing against your prostate and filling your bowels[else]filling your bowels[end if]. By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that makes you feel fulfilled.[impregchance]";
	say "     Remaining sheathed inside you, he rolls onto his side with you in his arms, spooning with you even as his cock gives its last twitches. 'Mmm... my beautiful strong mate. I do so enjoy our times together like this. You must simply stay so I might enjoy this pleasure every day[if cunts of player > 0]and fill you with litters of cubs[end if].' You snuggle yourself back against him and you promise him that you'll think about it, but add that you feel there's more you must do out in the city as well. He nuzzles you and licks your ear, letting you know he understands before you drift off to rest for a bit with his half-hard cock still buried inside you, purring happily together.";
	infect "Feline";
	rest;
	now feline_meow is feline_meow / 2;
	decrease libido of player by libido of player / 4;
	decrease humanity of player by 4;
	follow the turnpass rule;


to say Leonardmatesex5:
	say "     Wanting to share the bounty of the pride with your lovely mate, you rub your full breasts against his chest and slowly lower yourself down to your knees. With your feline mammaries pressed around his stiff member, you slide your tits against his shaft, causing the lion's rumbles of pleasure to grow. He smiles down at you, stroking your ears and petting you lovingly as you seek to please him. 'Mmm... you are such a wonderful mate. The pride is fortunate to have such a... [if breast size of player < 6]lovely[else if breast size of player < 10]giving[else]bountiful[end if] beauty to provide for it,' he rumbles, his eyes locked on your [breast size desc of player] boobs. You merely grin up at him and lick slowly across his glans, delighting in his shiver of excitement and the dollop of delicious pre it brings.";
	say "     With his cock so close, his strong, virile scent has you quickly grow excited as well. You pinch and tease your own nipples, drawing out dribbles of milk that run down your body and send shivers of delight through you. You lick and kiss some more, but let your [breast size desc of player] breasts do most of the work of pleasing your mate. You pick up the pace, pressing harder and rubbing faster.";
	say "     As the spurts of pre from his leonine cock grow more frequent, you know his climax is fast approaching. Placing [one of]a paw at your shoulder, he pushes you back. 'Take it and spread my seed across your breasts. Mark those lovely breasts of yours for the pride,' your strong, virile mate rumbles. Obediently, eagerly, you put one paw on his shaft and the other on his balls and start stroking the sexy lion off. Soon he roars and cums heavily, painting your [breast size desc of player] breasts in his seed, claiming them for him and his pride. After the last shots splatter across your bosom, you plunge your mouth over his cock and lick it clean while rubbing his semen into your tits and over your nipples. Your mate can't help but smile down at the sight of you messy with his cum[or]a paw at the back of your head, he presses his cock to your lips and into your mouth. 'Suck it all down, my hungry kitty,' he rumbles, rubbing his paws firmly over your head. You do so obediently, eagerly even, and work your lips, tongue and mouth over the throbbing length of leonine meat, working to finish the job. This doesn't take long and soon you're rewarded with heavy blasts of heavenly juicy cum from his throbbing shaft. You swallow down every shot he provides, eagerly taking it all in, rolling it over your tongue before letting it slide down your throat. Your mate can't help but smile down at the sight of you sucking down his seed[at random]. When done, you slowly slide your mouth off his shaft and smile up at him as you flop down on the floor in a sexy pose, lightly teasing your nipples[if cunts of player > 0] as you finger yourself to orgasm in a final show[else if cocks of player > 0] as you stroke yourself off across yourself in a final show[end if].";
	infect "Feline";
	increase libido of player by 6;
	if libido of player > 100, now libido of player is 100;
	increase feline_meow by 1;


to say Leonardmaidsex1:
	let T be a random number between 1 and 3; [black-haired maid's position = oral/Leonard/player]
	let TT be a random number between 1 and 2; [Leonard enjoys foot rub / fucks maid]
	say "     Feeling rather road-weary from trekking all around the city, you decide you'd like to share in one of those special foot rubs with your gentlemanly mate. Running your [if bodyname of player is listed in infections of Felinelist]paws[else]hands[end if] over his body, you get him to sit down and call over the maids. Even as you stroke the male to full erection, you tell the servant girls that you'd like for them to groom your footpaws and service you both.";
	say "     They move swiftly forward, obediently moving in to tend to their leonine master. You relinquish his erect cock to the first of the maids to reach it, smiling as she starts to lick and kiss at it. After watching [if T is 1]the black-haired girl[else]her[end if] lower her muzzle overtop of it, you take your own seat. Leonard's right foot is already being tended to as well, [if T is 2]the black-haired kitty[else]a maid[end if] running her tongue slowly along its underside. Sharing a grin with him at how you've managed to humble his rivals, you raise your foot into the waiting paws of another maid girl[if T is 3], the black-haired one[end if], so she can massage it. With a smile and a purr at the opportunity to serve you, she nuzzles your foot and tends to your needs with gentle paws and licking tongue.";
	if the player is not felinebodied:
		say "     The rubbing and licking quickly starts to have an effect on you. With each lick, your foot shifts and changes a little more, soon returning to a leonine paw. As this change starts to creep up your leg, she turns her attention to your other foot, soon remaking it into a lion's paw as well. The transformation progresses up your legs, across your hips and through the rest of your body, restoring much of your matronly form.";
	say "     The obedient maid is thorough in her attention, rubbing at your feline paws to soothe the aches of walking all around the city. You smile a toothy grin as the servile girl licks and kisses your foot, the massage both soothing and arousing. The brush of her rough tongue grooming the underside of your foot and between your feline toes is a delight. She seems pleased as well with her task, purring happily at her opportunity to bestow attention upon her loving matron. She takes particular pleasure at sucking on your toes, fellating them with her tongue as she does.";
	say "     While you've been enjoying your foot rub, Leonard's blow job has come to an end, the [if T is 1]black-haired [end if]maid having sucked him off. She gives his cock a parting lick and moves to you, dribbles of his cum still on her muzzle";
	if TT is 1:
		say ". Leonard leaves the other girl to continue tending his feet, having moved on to massaging and grooming his left one now while he leans back to enjoy the show of you being pleasured by the other two lovely servants.";
	else:
		say ". Leonard, clearly in the mood for more fun, motions for the other girl to climb into his lap. As the lion's paws opens the front of her French maid's dress so he can grope her breast, [if T is 2]the black-haired kitty[else]she[end if] flips up her skirt and gives you a lovely view of her juicy pussy as it sinks down onto your lover's rod. Watching as his throbbing, leonine cock sinks into her quivering hole, you lick your lips and smile, spreading your legs for the [if T is 1]black-haired [end if]maid who's now free to service you as well.";
		increase feline_meow by 1;
	if cocks of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. They share a brief moment of affection before returning their attention upon you. The maid takes her place between your legs and nuzzles at your erection. Her tongue slides over your balls and up your pulsing rod, the subservient kitty being as thorough in licking your groin as the other is at licking your foot. As she lowers her muzzle down onto your shaft and sucks hard, you moan softly and run your fingers through her [if T is 1]dark [end if]hair. Her oral attention is very enjoyable, clearly having gotten lots of practice sucking off her new master. Between [if TT is 1]watching one of his ex-rivals licking Leonard's paws[else]the sexy show of Leonard fucking one of his ex-rivals[end if] while the other two fawn upon your feet and cock, it is not long before you cum with a loud rumble of delight[if TT is 1], a sound that brings a happy smile to your lover's muzzle[else], a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt[end if].";
	else if cunts of player > 0:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. They share a brief moment of affection before returning their attention upon you. The maid takes her place between your legs and nuzzles at your damp thighs. Her tongue slides over your dripping folds and across your pulsing clit, the subservient kitty being as thorough in licking your groin as the other is at licking your foot. As she slides her raspy tongue into your cunt, sending shivers of delight through you, you moan softly and run your fingers through her [if T is 1]dark [end if]hair. Her oral attention is very enjoyable, clearly having gotten lots of practice with her fellow servants. Between [if TT is 1]watching one of his ex-rivals licking Leonard's paws[else]the sexy show of Leonard fucking one of his ex-rivals[end if] while the other two fawn upon your feet and cunny, it is not long before you cum with a loud rumble of delight[if TT is 1], a sound that brings a happy smile to your lover's muzzle[else], a sound echoed by your lover as he fills the third maid with his cum until it overflows from her stuffed cunt[end if].";
	else:
		say "     Still licking the remaining traces of Leonard's cum from her muzzle, she slips in beside her fellow maid. They share a brief moment of affection before returning their attention upon you. The maid takes her place between your legs and nuzzles at your groin. She mewls sadly at the disappointing sight of your featureless crotch, but continues to lavish attention upon you, running her raspy tongue across your pubis before drifting upwards. Her paws roam over your leonine body as she licks, nips and kisses at any sensitive spot she can find, doing her best to please her matron. Between [if TT is 1]watching one of his ex-rivals licking Leonard's paws[else]the sexy show of Leonard fucking one of his ex-rivals[end if] while the other two fawn upon your feet and body, it is a wonderfully pleasurable experience that is capped off by [if TT is 1]the happy smile shared with your sexy lover[else]your lover filling the third maid with his cum until it overflows from her stuffed cunt[end if].";
		say "     Their duty done, the trio kiss and caress you both before heading off to snuggle together[if TT is 2]. The pair who'd been serving you take considerable pleasure in licking the lion's cum from the third girl[end if]. Feeling much relaxed and pleased after your enjoyable paw massage, you return to Leonard's side and snuggle up with him in his chair, enjoying his gentle caresses as you kiss one another.";
	infect "Feline";
	increase libido of player by 8;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 4;


to say Leonardmaidsex2:
	let T be a random number between 1 and 3; [black-haired maid's position = oral/Leonard/player]
	say "     In the mood for something a little different, you glance over at the maids and suggest to Leonard that you both partake in fucking the help. This brings a grin to the lion's muzzle and he gives your ass a squeeze. '[one of]Certainly, my dear. They do so enjoy being shown their place[or]That is a wonderful idea, my dear. They've been such obedient servants - they deserve a good fucking[or]They do make such a tempting sight, don't they, my dear? Let's do that then[or]Of course, my dear. They are here for your pleasure as well as mine[at random].' Keeping his paw on your ass, you both head towards the bed, motioning for the maids to follow you as you walk past them. They quickly follow with hushed giggles of anticipation, eager for the rare opportunity to be in their master's bed.";
	say "     You share several kisses with your leonine lover as the maids run their paws over your bodies, sliding off your clothing and gear. It gets folded and set aside with care by the pretty maid girls, who take every opportunity to bend over and raises their tails, lifting the back of their short skirts to show off their cute asses and juicy muffs. It is a sight that makes your lick your lips and gets your cock throbbing - which does not go unnoticed.";
	say "     As the other maids are tucking away the last few items, [if T is 1]the black-haired girl[else]one of them[end if] kneels down and strokes your manhood and Leonard's with her paws. She licks slowly across the lion's cock and then yours, alternating back and forth. At first, it is just her raspy tongue playing across the throbbing manmeat, but soon she's sliding her muzzle down overtop of them, sucking with soft moans of pleasure. You both allow her to lick and suck at your shafts for a time, but stop her before things can go too far, wanting to save it for the main event.";
	say "     The other two girls, already on the bed and waiting on all fours, have the backs of their black, frilly outfits raised and their rears offered up to their masters. You [one of]opt to tease your chosen playmate for a while, fingering her cunny before mounting her. Leonard, meanwhile, jump right into it, driving his throbbing cock into the horny, mewling maid[or]jump right into it, driving your [cock of player] cock into your chosen playmate. Leonard, meanwhile, opts to take his time, fingering her cunny and teasing her before mounting her[or]both opt to tease your chosen playmate for a while, fingering their cunnies before mounting the horny, mewling maids[or]both jump right into it, driving your throbbing cocks into the horny, mewling maids[at random]. You share another long, passionate kiss with the sexy lion before you set yourselves to pounding the cute kitties, eager to stuff them full of your seed[if T is 2]. Leonard's ended up overtop of the dark-haired one and seems to be taking particular enjoyment in fucking her, whispering to her what a good, docile, obedient servant she is[else if T is 3]. Having the dark-haired one beneath you, you take particular enjoyment in fucking her, whispering to her what a good, docile, obedient servant she is[end if].";
	say "     While you both fuck a pair of the maids, the last girl is on her back between the others, making show of groping her half-clothed body. As [if T is 1]the black-haired girl's[else]she's[end if] doing this, her fellow maids are licking her cunt and fingering her pussy[if anallevel is 3] and asshole[end if] in a wanton display, further fueling the arousal of their studs. As you fuck them, you manhandle the lustful females, pulling open their dresses and groping their breasts, loving how they squirm and mewl as you pinch their nipples.";
	say "     Once you and Leonard have cum with roars of climax and the two are left creamy and overflowing with seed, you turn your attention upon the last maid. You pin her down and drive your sticky cock into her juicy cunt with a single thrust, loving her long, loud mewl of delight as you fill her. As you start pounding into her, you wiggle your rear and grin at your mate even as he's moving into position behind you. After nibbling at your neck, he gets his stiffening rod lined up with your [if cunts of player > 0]needy cunt[else]tight anus[end if] and sinks it into you. The sensation of him slowly filling you sends shivers of delight through your body and makes your [cock size desc of player] [cock of player] penis pulse inside the horny maid pinned beneath her two lustful masters.";
	say "     Having already cum once shortly before, you have a little more endurance, but having Leonard fuck you as you take [if T is 1]the black-haired maid[else]one of the maids[end if] makes it hard to hold out long. When you catch sight of the two cream-filled kitties eating each other out, feasting on the cum leaking from the other's dripping snatch, you groan loudly and drive hard into the maid. You pump your [cum load size of player] load into her, soon feeling a pleasant hot fullness of your own as Leonard blasts his sticky semen into your [if cunts of player > 0]womb[else]bowels[end if].[impregchance]";
	say "     After the lion dismounts from you and you pull out of the satiated maid girl, you all snuggle happily on the bed. The maid outfits are quite dishevelled and breasts hang out freely, but the girls are in no rush to straighten up, instead happily licking and sucking on the exposed nipples or licking the sticky cocks which so recently filled them. As they groom your shafts clean, you and Leonard purr softly about what good kitties they've been and, if they continue to be loyal, obedient and submissive servants, their master will be sure to reward them by fucking them often. They mewl and lavish you both with even more attention, promising to be good servants and repeating often how much their love their sexy master and matron as they lick you both to climax, getting you to cum across their bodies and dresses, marking them as belonging to the pride's leaders. Truly spent now, you all snuggle up together for a quick catnap.";
	infect "Feline";
	infect "Feline";
	rest;
	now feline_meow is feline_meow / 2;
	decrease libido of player by libido of player / 4;
	decrease humanity of player by 8;
	follow the turnpass rule;


to say Leonardcarawaysex1:
	say "     The lingering scent of Caraway's cooking in the air momentarily draws your attention as you look over at the cute chef tidying up her kitchen. The sight of her in her cute apron and nothing else gets you turned on and you decide that you and Leonard should have some fun with her. You turn back to your mate and make the suggestion to him. '[one of]Certainly, my dear. I'm sure she'd appreciate some special attention[or]That is a wonderful idea, my dear. She's been such a diligent worker - she deserves a good fucking[or]She makes such a tempting sight in that apron of hers, doesn't she, my dear? Let's do that then[or]Of course, my dear. You brought her to me, so it is only fair that you might enjoy her company as well[or]Mmmm... she's such a sweet little treat, isn't she? Very well, let's go kiss the cook[at random].' Keeping his paw on your ass, you both head towards the kitchen, eyes locked on that sweet tush of hers.";
	if cocks of player > 0 and a random chance of 2 in 5 succeeds:
		say "     Coming up behind her with padded paws, Leonard places his free hand on her exposed bottom, drawing a moan from her. She initially moves to bend over the counter, clearly having done so before for him. Seeing you there as well, she hesitates momentarily, only to be gently guided to lean over anyhow while the lion grinds his cock against her rear. 'We shall simply share in this lovely meal,' he purrs with a grin, slipping his cock into her juicy pussy. She gives a mrowl of pleasure in response and pushes backwards onto his impaling rod. His impressive shaft spreads her wet petals and fills that cute cunny of hers nice and full.";
		say "     Leonard runs his paws over her rear, taking several thrusts while you watch on eagerly, stroking your own shaft. He doesn't go very long, just enough to get his wick wet and get the kitty worked up before he pulls out and moves aside, letting you have your turn. Lining up with the slick portal he's vacated, you sink your [cock of player] cock into her, taking your turn with several thrusts into the moaning girl. You and Leonard alternate, taking turns filling her hot pussy while the other watches on. She releases a needy mewl each time the current cock is removed only to sigh in pleasure as she's filled by the other one. Being shared like this gets her quite turned on, such hard proof that you both want her bringing such pleasure to her.";
		say "     As your mate's arousal grows towards his peak, he remains mounted in her. Pounding her hard and fast, he presses her down onto the counter as he takes the nape of her neck in his jaws. He growls softly and buries his spurting rod deep inside her, filling the mrowling chef with his creamy load while you watch on. After draining his load into her, he pulls out and makes room for you again";
		if anallevel > 1 and a random chance of anallevel in 9 succeeds:
			say ". Deciding you're not in the mood for Leonard's sloppy seconds, you press your glans to the kitty's other entrance. She gives a little mewl, but pushes back, allowing you entrance to her back door. Already quite worked up, it is not long before fucking that tight asshole of hers has you cumming in her bottom while you finger her creamy cunt to another orgasm. She's left in a happy daze when you pull out, leaking cum from both well-used holes and clearly loving it.";
		else:
			say ". Getting lined up once again, you slide your pulsing rod into her cum-slick cunt and take your turn finishing in her. After the long session of taking turns, having her all to yourself lets you ride her to orgasm. You pump a fresh load of hot semen into her already overflowing cunny, mixing your load with your mate's and stuffing her even more full. She's left in a happy daze when you pull out, leaking copious amounts of cum from her thoroughly fucked hole and clearly loving it.";
	else if cocks of player > 0:
		say "     Coming up behind her with padded paws, Leonard places his free hand on her exposed bottom, drawing a moan from her. She initially moves to bend over the counter, clearly having done so before for him, but moves onto all fours when she sees you there as well. Leonard, still at her rear, gets his cock lined up with her wet pussy and, after a little teasing grinding, sinks his manhood into her. Meanwhile, you've taken her mouth, the cute kitty cook taking your [cock of player] rod into her muzzle and sucking it lustfully.";
		say "     With the sexy little feline between you both, you and Leonard smile to one another and pound away at her. Like all practized lovers, you set up a good rhythm with your partner, rocking her back and forth between you so she's pushed onto Leonard's cock as you thrust and her muzzle's stuffed around your cock when he does. You both run your paws over her, caressing the lustful feline while you purr to her about [one of]how happy you are to have her here[or]what a good kitty she is[or]what a fine addition to the den she's become[or]how her place is here[at random]. When you both finally cum, Caraway releases a muffled mewl of delight and gulps down your seed even as Leonard's fills her cunt. By the time you're both drained into her, she's left stuffed full of hot semen and purrs happily as she lays on the floor, rubbing her warm tummy.";
	else:
		say "     Coming up behind her with padded paws, Leonard places his free hand on her exposed bottom, drawing a moan from her. She initially moves to bend over the counter, clearly having done so before for him, but moves onto all fours when she sees you there as well. Leonard, still at her rear, gets his cock lined up with her wet pussy and, after a little teasing grinding, sinks his manhood into her. Meanwhile, you've taken her mouth, the cute kitty cook lapping lustfully at your juicy folds and sensitive clit.";
		say "     With the sexy little feline between you both, Leonard's thrusts presses her muzzle against your cunny as if encouraging her to lick deeper, which she does. When not teasing your outer folds or sucking on your clit, her raspy tongue delves into your wet cunny, lapping up your juices. You both run your paws over her, caressing the lustful feline while you purr to her about [one of]how happy you are to have her here[or]what a good kitty she is[or]what a fine addition to the den she's become[or]how her place is here[at random]. When you both finally cum, Caraway releases a muffled mewl of delight as your feminine cum soaks her muzzle even as Leonard's load fills her cunt. By the time you're done, she's left wet and sticky at both ends as she purrs happily while laying on the floor rubbing her warm tummy.";
	say "     A little later, you notice a small bundle of tasty treats sitting on your pack. Glancing over to the kitchen, Caraway smiles back at you and gives you a wink[one of], turning to show you her bare bottom as she raises her tail teasingly[or] as she sinks a cucumber into her slick pussy[or] and raises the front of her apron, giving you a flash of her creamy pussy[or] as she slips a paw under her apron to play with her creamy pussy[or] as she wipes a glop of cum onto a cracker and eats it with obvious relish[at random].";
	increase carried of chips by 1;
	infect "Feline";


Section 4 - Finding a Violin

[	violinfound			]
[ 0 = started quest		]
[ 1 = failed CH only		]
[ 2 = failed MS only		]
[ 3 = failed MS and CH		]
[ 10 = learner's violin		]
[ 20 = quality violin + music	]
[ 21 = quality violin		]

Part 1 - Music Store		[perhaps add another instrument for a bunker NPC]

Music Store is a situation. The level of Music Store is 2.
The sarea of Music Store is "Outside".
Music Store is resolved.
violinspritefight is a truth state that varies.

Instead of resolving Music Store:
	if violinfound is 0 or violinfound is 1:
		say "     With Leonard's request lingering at the back of your mind as you travel through the city, you stop dead in your tracks when you spot a music store. It seems to have been largely undamaged. You quickly head over to it, failing to notice the signs of activity inside in your eagerness. Pulling the door open, you hear the buzz of little wings from inside the dark store. Suddenly on guard, there's a cry of 'Get 'em, girls!' from a small, high-pitched voice. The volume of the buzzing grows louder and a wave of little, elfin sprites charge out of the doorway, swarming all around you excitedly, forcing you to stumble backwards into the street.";
	else if violinfound is 2 or violinfound is 3:	[returning]
		say "     With Leonard's request lingering at the back of your mind, you find yourself back in front of the Music Store you found earlier. Longing to please the handsome lion with a gift, you ready yourself for another fight with the sprites and pull open the door. The buzz inside picks up inside as they notice the intruder. 'Back for more, eh?' one of them giggles playfully before the swarm surges towards you, forcing you back into the street to fight them.";
	now fightstatus is 3;
	now violinspritefight is true;
	challenge "City Sprite";
	now violinspritefight is false;
	if fightstatus is 3:
		say "     Forced to flee by the horde of provocative and precocious pixies, you make a run for it down the street and through some alleys, eventually losing them. Or so you think. As you stop to catch your breath, you hear some giggling above you. 'Don't come back or you'll get more of the same!' 'Yeah!' 'Or wait, do come back and we'll all have fun giving you more of the same!' 'Teehee!' There's then the buzz of wings as the sprites fly off, presumably back to their home in the music store.";
		if violinfound is 0, now violinfound is 2;
		if violinfound is 1, now violinfound is 3;
	else if fightstatus is 2:
		say "     After the sprites have had their fun, you are left deposited outside their store. 'Oh! You should come back again so we can play some more,' one of them giggles. 'Yeah! I want a turn playing with your [if player is herm][one of]cock[or]pussy[at random][else if cocks of player > 0]cock[else if cunts of player > 0]cunt[else]feet[end if] next time' another pipes in. 'Ooo! Dibs!' another says with a giggle. They playfully squabble as they buzz off, flying back inside and closing the door behind them, leaving you to stumble off.";
		if violinfound is 0, now violinfound is 2;
		if violinfound is 1, now violinfound is 3;
	else:
		say "     Having driven off the sprites from their home, you head inside and start looking around eagerly for a violin. There are examples of a lot of other instruments around and it seems like the sprites have been playing around with a lot of them. Most of the inventory does seem to be guitars, drums and keyboards. The drums seem to have gotten the worst of the play, with lots of stick footprints on the skins from them bouncing on them. A few of them even have cum angels smeared onto them. From the glistening on the ends of the drumsticks you see scattered about, you decide it'd be best not to handle those either, [if libido of player < 50]preferring not to imagine what uses the diminutive females put them to[else]having a good idea how those naughty female sprites have been putting those smooth, polished sticks to use[end if].";
		say "     Not really interested right now in the more modern rock and roll instruments, you move on. Spotting the section behind one counter. You see they have their smaller selection of classical instruments. There are several brass and woodwind instruments of different quality. Some of these have been knocked around or played with by the flighty sprites, requiring you to step carefully and sift through those on the floor behind the counter to make sure a violin is not beneath one of the others. You are about to give up hope by the time you make it to the far corner, but luckily manage to find one. It is intact and still displayed on the wall, probably because of its placement at the end of the display area.";
		say "     Not really a judge of quality and just happy to have one at all, you take the violin and search among the cases beneath it, soon finding the one belonging to it. You pack it away, along with some packets of replacement strings, a couple of bows and a packet of wax, knowing at least that much. You also remember to head over to the racks with books of sheet music and grab all those you can find for violins. There aren't that many and they are mostly trainers and for beginners, but a few of them have more advanced pieces as well. With the last minute addition of a music stand, you believe you have everything your handsome lion will need.";
		say "     With all this tucked away into your pack, you glance over and spot a few of the sprites looking in the window at you. They duck away as you turn at them, but you know they're awaiting your departure to return to their haven. Rather than keep them waiting now that you've got your spoils, you head out. As you leave, you hear the flutter and buzz of their wings as they swoop in from the surrounding roofs to go back to hiding inside the music store. A few of them blow raspberries at you or make crude gestures, but you ignore them, the desire to rush back of Leonard foremost in your mind.";
		increase carried of violin by 1;
		now violinfound is 10;
		now Music Store is resolved;
		now Concert Hall is resolved;
	now fightstatus is 0;


Part 2 - Concert Hall

Concert Hall is a situation. The level of Concert Hall is 4.
The sarea of Concert Hall is "High".
Concert Hall is resolved.

Instead of resolving Concert Hall:
	now fightstatus is 0;
	say "     You come across a large theater and concert hall in this affluent portion of the city. There are crude drawings on the glass covering the posters for the upcoming shows, but you can see that a classical concert was planned during the time period around when the outbreak began. Very hopeful that you'll find a violin in there for Leonard, you try the doors. Locked. Barricaded even. Searching around the perimeter, you eventually find a back door that's been left open and you slip inside without delay or thought of caution, the needs of the handsome lion more important than the potential risk.";
	if "One Pair" is listed in feats of player or "Just One" is listed in feats of player:
		say "     You make your way through the backstage area to the orchestra pit. As you're about to start searching through it, you notice a cute bunny head poke out from behind the curtain. But even as you're trying to decide how to peacefully introduce yourself, there appears another bunny elsewhere, and then another and another still, more and more bunnies around you. They don't move in to approach, but begin to speak.";
		say "     'Disappointing.' 'Restrained.' 'Unsuitable.' 'Indivisible.' 'Go.' 'Leave.' 'Unwanted.' 'Begone.' They speak in unison in an even tone, but you still feel considerable disdain from their words. You find yourself quite ill at ease as they keep it up unrelentingly. You try to tell them you just want a violin for a friend and that you don't mean them any harm, but they hardly seem to take any notice aside from occasionally adding words like 'Thief' and 'Scavenger' to their repertoire.";
		say "     Thankfully they don't seem to advance upon you, but there is an increasing sense of menace from them. Worried they could snap and try to mob you at any time, you make your way as quickly as you can to the string section, almost stumbling over some of the chairs, resulting in them adding 'Oaf' and 'Uncouth' to their insults. Not wanting to waste time, you grab one of the violins that have been set out, its case and the assorted sheet music and supplies around it, hoping it will enough for Leonard. You consider looking further, but you can see many more of the bunnies around, some even approaching across the lighting gantries. Deciding you've overstayed your welcome, you apologize and promise to leave them alone even as you shove an unfolded music stand under your arm. You get out of the pit and heading to the exit as quickly as you can. You are watched by them on your whole way out, their strange mix of derisive admonishments and odd insults following you the whole way. No sooner are you outside then the door is slammed shut loudly and barred from the inside.";
		say "     You are left feeling strangely disconcerted by the whole affair, unsure what that was all about, but thankful to be out of there. Your spirits are quickly buoyed by your realization that you've gotten the violin that your handsome lion so wanted. The desire to rush back to Leonard becomes foremost in your mind.";
		if morale of player > 0, now morale of player is morale of player / 2;
		increase carried of violin by 1;
		now violinfound is 21;
	else:
		say "     You make your way through the backstage area to the orchestra pit. As you're about to start searching through it, you notice a cute bunny head poke out from behind the curtain. But even as you're trying to decide how to peacefully introduce yourself, there appears another bunny elsewhere, and then another and another still, more and more bunnies moving in to surround you despite no alarm having been raised.";
		now fightstatus is 3;
		challenge "Rabbit Pack";
		if fightstatus is 1:
			now fightstatus is 3;
			challenge "Rabbit Pack";
			if fightstatus is 1:
				say "     Having beaten the large group of bizarre bunnies and driven them back, you start searching the orchestra pit for a violin. Thankfully the instruments are actually in the pit and do not appear to have been damaged by the creatures. If anything, it seems like they have been well maintained. Perhaps those teams of bunnies have been playing them? It takes some fumbling around to navigate through the camped space, but you eventually find the string section and locate the violins.";
				say "     Hopeful that one of these will make a fine instrument for your handsome lion, you look them over. Not really a judge of quality, you take the violin from the stand labelled as '1st violin' in the hopes it will be the best of them all. Putting it in its case, you check the other cases and folders, taking sets of spare strings, bows and wax, as well as as much different sheet music as you can find. Spotting one of the bunnies watching you nervously from behind the curtain, you kindly decide to not just take it all. Certainly several replacements will be enough for Leonard for quite some time.";
				say "     After storing the case and supplies away in your case, you fold up one of the music stands and start heading back out. The bunny watches you leave the room but doesn't move. There's another watching you from elsewhere before you leave her line of sight, and another safely watching from the distance as you turn the corner. They quietly watch you depart, clearly wary of the intruder who managed to fight them all off.";
				increase carried of violin by 1;
				now violinfound is 20;
	if fightstatus is 2:
		say "     Unable to hold out against the bunny horde, you find yourself surrounded by the strange group of lustful, longing bunnies. They fuck you repeatedly, with so many of them there to share you that you always have several lovers at a time, drawing you further and further into the lustful needs of your body as it starts to change, gaining bunny ears and a tail. But as the changes continue, ";
		if "Male Preferred" is listed in feats of player:
			say "you gain more cocks, more balls, more arms and legs as well? Even more heads? Things grow hazy as your mind struggles to understand what it happening to you, your body splitting and forming new, independent copies of itself. At first, it is all very confusing, the last shreds of your old mind trying to believe that you are still one united whole with several additional limbs and male genitalia, but eventually clarity sets in as you understand you are simply many, each body singularly male.";
		else if "Female Preferred" is listed in feats of player:
			say "you gain more pussies, more breasts, more arms and legs as well? Even more heads? Things grow hazy as your mind struggles to understand what it happening to you, your body splitting and forming new, independent copies of itself. At first, it is all very confusing, the last shreds of your old mind trying to believe that you are still one united whole with several additional limbs and female genitalia, but eventually clarity sets in as you understand you are simply many, each body singularly female.";
		else:
			say "you gain more cocks, more pussies, more breasts, more arms and legs as well? Even more heads? Things grow hazy as your mind struggles to understand what it happening to you, your body splitting and forming new, independent copies of itself. At first, it is all very confusing, the last shreds of your old mind trying to believe that you are still one united whole with several additional limbs and genitalia, but eventually clarity sets in as you understand you are simply many, each body singularly either male or female.";
		say "     You become like the other rabbits living here, several who are one. In truth, there are only a few individuals living here, but each having several bodies all with one same mind. You are welcomed into the group, joining their orchestra as you and your several bodies learn to play from the others. And outside of practice comes the pleasure of lustful sex shared with so many bodies, so many lovers, all at once.";
		now humanity of player is 0;
		[puts Rabbit Pack as lead monster for infection and impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "rabbit pack":
				now monster is y;
				break;
		now tailname of player is "rabbit pack";
		now facename of player is "rabbit pack";
		now skinname of player is "rabbit pack";
		now bodyname of player is "rabbit pack";
		now cockname of player is "rabbit pack";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		if "Male Preferred" is listed in feats of player:
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now breasts of player is 0;
			now breast size of player is 0;
		else:
			if cunts of player < 5, now cunts of player is 5;
			if cunt length of player < 4, now cunt length of player is 4;
			if cunt width of player < 4, now cunt width of player is 4;
			if breasts of player < 10, now breasts of player is 10;
			if breast size of player < 3, now breast size of player is 3;
		if "Female Preferred" is listed in feats of player:
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		else:
			if cocks of player < 5, now cocks of player is 5;
			if cock length of player < 4, now cock length of player is 4;
			if cock width of player < 4, now cock width of player is 4;
		if libido of player < 10, now libido of player is 10;
		wait for any key;
		end the story saying "Your mind has been subsumed into your new bunny pack, a life of music and lust in your new warren.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	if fightstatus is 3:
		say "     Unwilling or unable to continue to stand up to the bunny horde, you make a break for it, weaving between several of them to head for the exit. They follow you, calling out stuff like 'Stay.' 'Join.' 'Play.' 'Divide.' 'Unity.' 'Remain.' 'Expand.' 'Many.' 'One.' They strangely speak in unison and calmly, but there is a longing to it as well. You manage to get away, running from the concert hall, from which the rabbits choose not to pursue you, instead slamming the back door shut and latching it from the inside. You probably won't be able to get back in there and should try looking elsewhere for a violin for Leonard.";
		if violinfound is 0, now violinfound is 1;
		if violinfound is 2, now violinfound is 3;
	now Music Store is resolved;
	now Concert Hall is resolved;


Part 3 - Violin

Table of Game Objects (continued)
name	desc	weight	object
"violin"	"     It's a violin. You're no judge of quality, but it seems in good shape. Along with its case, you have some spare strings, wax, bows and music to go along with it. Most of the weight comes from the music stand you also snagged."	5	violin

violin is a grab object.
it is part of the player.
It is not temporary.

instead of using violin:
	say "     You don't know how to play. Besides, you don't want to risk damaging your gift for your lion lover.";

the scent of the violin is "     The violin smells of polished wood.".


Section 5 - Hunting Prides

instead of navigating Lion's Den while HP of Leonard >= 10 and HP of Leonard <= 14:				[Lion's Den closed until resolved]
	if HP of Leonard is not 14:
		say "You find yourself thinking of Leonard and want to return to him, but this reminds you that he's asked you to take care of an important task - dealing with those [bold type]hunting prides[roman type][one of]. Feeling a stronger bond to your pride sisters after the recital and orgy, protecting them is foremost in your mind[or]. Not wanting to return to your handsome lion master without completing the job, you decide to stay focused on that first[or]. Reminding yourself how much more pleased (and therefore passionate) he'll be when you come back victorious, you are eager to get the job done[or]. Thinking of those affectionate pride sisters you'd snuggled with during the concert, you want to protect them from being stolen away from Leonard[or]. Not wanting to get distracted by thoughts of sex with your handsome lion, you turn your thoughts back to dealing with those other felines first[in random order].";
	else:
		say "[Leonardrivalfight]";

Hunting Prides is a situation. The level of Hunting Prides is 8.
The sarea of Hunting Prides is "Park".
Hunting Prides is resolved.

Instead of resolving Hunting Prides:
	now fightoutcome is 100;
	if HP of Leonard is 10:
		say "     As you're traveling through the park, you notice signs that a band of felines has passed by recently. Remembering your promise to Leonard to deal with these roving prides, you start tracking this one down. You follow their trail for a while before hearing some commotion ahead. Following it, you manage to catch up with the group of felines and find them in the midst of attacking another of the feline girls. While you can't be certain, she does seem familiar and may be another of your pride sisters. With a growl, you rush to her aid, charging the band of felines from behind.";
		now Feline_type is 3;
		challenge "Feline";
		now Feline_type is 1;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     You pant for breath after having fought the rival pride. With several of the girls injured and a few others knocked out, the dispersed felines should think twice before trying something like this again to oppose Leonard. As you prepare to talk away, you do spot a feline with dark hair watching you cautiously as you leave. Presuming her to be one of the band you just beat, you call out to her, telling her to stop assaulting your pride sisters or Leonard will have you deal with them again. With that warning given, you leave the clearing, recalling that there are a few other of these groups yet to be dealt with.";
			increase HP of Leonard by 1;
			increase level of Hunting Prides by 2;
	else if HP of Leonard is 11:
		say "     While following a wooded path, you turn a corner to find yourself facing another feline pride[if the player is felinefaced or the player is felinebodied]. They smile toothily at having found another feline to capture and start moving in[else if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]. They pause for a moment, looking you over, padding slowly closer. They discuss that, while not a cat girl like them, you are still feline and may still be worth capturing[else]. They growl angrily as they notice the scent of a rival male on you and move in to capture you[end if]. Remembering your promise to Leonard, you prepare to fight this hunting pride to help keep your weaker pride sisters safe. You take up a fighting stance and growl that your pride won't stand for these attacks and you've been sent to deal with them.";
		now Feline_type is 3;
		challenge "Feline";
		now Feline_type is 1;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     Having defeated this second hunting party, you scatter the remaining felines, growling that you'll give them this same treatment if they try this again. Looking around at those lioness girls who were knocked out, you briefly consider some means to bring them back to Leonard so the handsome lion might teach them some proper manners, but you notice the dark-haired feline watching from the trees again. Knowing for certain she wasn't among the group you just fought, you call out to her, beckoning her to come forward. Presuming she might be a lone feline who's been hiding from these hunting packs, you tell her it's safe to come out and that you won't hurt her, but she moves away, slipping further into the trees and leaving. Recalling that Leonard wants you focused on dealing with these hunting bands, you decide to leave the fallen girls and move on.";
			increase HP of Leonard by 1;
			increase level of Hunting Prides by 2;
	else if HP of Leonard is 12:
		now HP of Leonard is 13; [encountered final hunting pride]
		say "     Traveling through the park, you spot the dark-haired feline watching you from the edge of the trees again. You stop and smile, kneeling down and motioning for her to come forward in a friendly manner, trying to coax the nervous kitty. She cautiously steps out from behind the bushes and wrings the edge of her frilly dress nervously. You speak softly to her, trying to calm her and bring the timid girl closer.";
		let bonus be ( perception of player minus 10 ) divided by 2;
		if "Wary Watcher" is listed in feats of player, increase bonus by 3;
		if bonus > 15, now bonus is 14;
		let dice be a random number from 1 to 20;
		say "     (Perception: 1d20([dice])+[bonus]=[special-style-1][dice + bonus][roman type]) ";
		if bonus + dice > 15:
			say "With your focus on the nervous feline, you almost drop your guard, but a few small things suddenly set you on edge. The park's grown too quiet. The brief yet excited glance the cat girl makes behind you. The faint sound of a padded paw stepping closer. Instinctively, you roll to the side as there is a whoosh through the air you once occupied as the feline sneaking up behind you just misses you with a heavy stick. You scramble back a few steps only to find yourself surrounded by another hunting pack of felines. The dark-haired one giggles merrily. 'Oh, aren't you precious? Standing up for your pride sisters, are you? Well, we're not going to let your pride steal away the rest of the girls from our master. We're too clever for that.'";
		else:
			say "Keeping focused on the nervous feline, you gradually draw her closer. Not wanting to startle her, you let her come to you, hoping she might even have some useful information if she's been watching and evading the hunting prides. She stops just out of your reach and gives you a pretty smile that makes you smile all the more just before something large and heavy hits you upside the head. Knocked for a loop by the blow, your head spins as you find yourself surrounded by another hunting pack of felines while the dark-haired feline giggles merrily. 'Oh, aren't you precious? Standing up for your pride sisters, are you? Well, we're not going to let your pride steal away the rest of the girls from our master. We're too clever for that.'";
			if hardmode is true and level of player > 12:
				decrease HP of player by level of player + square root of level of player;
			else:
				decrease HP of player by 15;
		say "     As you get back to your feet and take stock of the situation, you find that this group is larger than the others you've dealt with before. And that's when it strikes you, several of these felines look familiar and are among those you knocked out from the other hunting groups. It seems you were all wrong about the dark-haired girl. She wasn't with the first pride nor was she a loner, but was in actuality from another hunting pride altogether - one which scooped up the felines you'd rendered unconscious to add to their own. It seems you'll have to break up this group as well if you're to prove the might of your pride over all others.";
		now Feline_type is 3;
		challenge "Feline";
		now Feline_type is 1;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     After having knocked out several of the small lionesses and sending several more running, you manage to grab the dark-haired one and toss her to the ground. With the hunting pride collapsing and the felines scattered, you'd think she'd be more upset, but she continues to giggle excitedly. 'Oh, you think you're so strong now, don't you?' she laughs. 'Well, it's too late now. Our clever master will deal with your prissy lion. He has a plan to take care of him.' As she starts giggling again, you growl angrily and punch her hard, knocking her out to silence her. From the sounds of it, you'd best rush back to Leonard as soon as possible.";
			increase HP of Leonard by 1;
			now Hunting Prides is resolved;
	else if HP of Leonard is 13:		[encountered final pride again]
		say "     You hear a small rustle nearby and glance over to see the tip of a golden tail moving behind a nearby bush. Suspecting trouble, you take up a fighting stance and prepare yourself to fight. Having noticed them, the feline girls surrounding you move out from behind their scattered cover, moving in to fight you again. The black-haired lioness girl among them, her hunting pride seeking to deal with you properly this time. 'Clever prey, running away like that. You should stay and join our pride,' she teases. If you come along, I know our master will welcome you,' she purrs with a smile on her cute face. It is a smile full of sharp teeth and sinister intent.";
		now Feline_type is 3;
		challenge "Feline";
		now Feline_type is 1;
		if fightoutcome >= 10 and fightoutcome <= 19:
			say "     After having knocked out several of the small lionesses and sending several more running, you manage to grab the dark-haired one and toss her to the ground. With the hunting pride collapsing and the felines scattered, you'd think she'd be more upset, but she continues to giggle excitedly. 'Oh, you think you're so strong now, don't you?' she laughs. 'Well, it's too late now. Our clever master will deal with your prissy lion. He has a plan to take care of him.' As she starts giggling again, you growl angrily and punch her hard, knocking her out to silence her. From the sounds of it, you'd best rush back to Leonard as soon as possible.";
			increase HP of Leonard by 1;
			now Hunting Prides is resolved;
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "     [if fightoutcome is 22]Having submitted to the band of lionesses[else]Unable to continue resisting the band of lionesses[end if], you are dragged to the ground by them as they purr and giggle happily. You are kissed, licked and petted by the cute felines. As they continue this loving assault upon you, you start to purr and nuzzle them back, welcoming their kisses and caressing them in return[if HP of Leonard is 12 or HP of Leonard is 13]. You find yourself French kissing the black-haired one, who rumbles happily at your increasing submission[end if]. You begin to forget why you were ever fighting with them in the first place, eventually becoming another cute feline girl like them. Eventually, after much playful teasing and fun, you're brought back to the meet their leonine pride leader, who is happy to welcome you properly into the pride by mounting you, much to your feline delight.";
		now humanity of player is 0;
		now feline_pride_defeat is true;
		[puts Feline as lead monster for infection and impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Feline":
				now monster is y;
				break;
		now tailname of player is "Feline";
		now facename of player is "Feline";
		now skinname of player is "Feline";
		now bodyname of player is "Feline";
		now cockname of player is "Feline";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		if "Male Preferred" is listed in feats of player:
			now cocks of player is 1;
			if cock length of player < 9, now cock length of player is 9;
			if cock width of player < 3, now cock width of player is 3;
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now breasts of player is 2;
			now breast size of player is 0;
		else if "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			now cunts of player is 1;
			if cunt length of player < 9, now cunt length of player is 9;
			if cunt width of player < 3, now cunt width of player is 3;
			now breasts of player is 2;
			if breast size of player < 3, now breast size of player is 3;
		else:
			now cunts of player is 1;
			if cunt length of player < 9, now cunt length of player is 9;
			if cunt width of player < 3, now cunt width of player is 3;
			now breasts of player is 2;
			if breast size of player < 3, now breast size of player is 3;
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		if libido of player < 30, now libido of player is 30;
		wait for any key;
		end the story saying "Having been defeated by the hunting pride of feline girls, you are made to join their pride.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	else if fightoutcome >= 30:
		say "     You manage to push your way through the felines and make your escape[if HP of Leonard is 13]. You can hear the raven-haired one growl angrily before beginning to giggle and tease you for running away[end if]. You feel an ache of disappointment at having to flee, knowing you've failed Leonard in your task. You resolve to do better next time, wanting to prove to your leonine master that you can help him protect the pride.";


to say Leonardrivalfight:
	say "     Concerned for Leonard after that dark-haired girl's sinister declaration, make your way back to his den as quickly as you can. While you tried to stay calm at first, your tension mounts as you get closer. As the sounds of angry roaring become apparent, you break into a frantic run, rushing into the small clearing before the rocky hillside, and it is rife with battle. There are clusters of felines, many of whom are beaten and exhausted while others continue fighting. You thankfully spot the trio from your work group still together, defending a cluster of their fallen sisters from intruders from another pride.";
	say "     At the back of this maelstrom stands Leonard, locked into battle with another powerful male. Your handsome master is worn and tired, but is still standing and seems to be beating his opponent. His suit coat is torn in many places as his mane and fur are no longer their well-groomed neatness, but he keeps his fists up in a boxing stance, standing up to his opponent's wilder, more animalistic approach. Fallen near them is another male, already beaten and showing signs of increased femininity from the lion seed soaking into him. While a part of you wants to help Leonard, your feline side tells you that the males must decide this in one-on-one combat.";
	WaitLineBreak;
	say "     It is during this brief moment of indecision that you notice something the others have missed - another male. This male, a darker-maned lion with golden coat, is hiding among the rocks on the hillside as he moves closer to the fight. And suddenly it all comes together in your head. This final rival, knowing he could not beat your wonderful master in a fair fight, tricked or goaded the other two after Leonard. With the three of them all fighting for supremacy, they would go all out. And he waits in the shadows, lurking to take down the exhausted victor, whomever he may be, by surprise to claim all the spoils.";
	say "     Feeling a rush of rage at this underhanded deception, you growl in your throat and weave your way quickly between the clusters of felines. Some of the groups still fighting try to engage with you, but you stay focused on your goal and reach the rocky hillside and start to scale it. Intent on seizing his moment when it opens, this interloper doesn't notice you until you're almost upon him. You charge at him, attacking this powerful creature in the hopes of saving both your handsome master and your loving pride from his evil machinations.";
	now Feline_type is 4;
	now inasituation is true;
	challenge "Feline";
	now inasituation is false;
	now Feline_type is 1;
	if fightoutcome >= 10 and fightoutcome <= 19:
		now HP of Leonard is 15;
		say "     As you look down upon Leonard's fight, you see the exhausted but still handsome lion clock his opponent soundly in the jaw with a powerful right hook, sending him to the ground with a knock-out. As Leonard is about to roar triumphantly, your opponent's battered body tumbles over the edge of the tunnel mouth, landing atop the other fallen lion. He's surprised by this and looks up, spotting you grinning up there. Quickly assessing what was about to occur, your handsome lover smiles up at you and you both roar together, having defeated all those who would attack your pride, calling a halt to the fighting amongst the remaining females. Those from opposing prides who can either flee or give in, their prides broken.";
		say "     As you are scrambling down the hillside to rush into Leonard's arms, you hear a cry of despair from the clearing's edge. The black-haired lioness is there with the ragged remains of her pride, having come in the hopes of seeing victory, but only finding crushing defeat. Quick to react, you call out to your work team, ordering them to seize her. Those few girls still with her, loyalty already wavering after their last defeat by you, flee back into the woods as their pride dissolves. The black-haired one struggles weakly, but the fight has largely gone out of her, and the others soon drag her down and start the work of welcoming her into her new pride.";
		WaitLineBreak;
		say "     Now in Leonard's arms, he runs his strong paws over you, kissing you passionately and you moan in pleasure in response, your bond to this handsome and powerful male growing stronger still. You take his throbbing maleness in your hands and stroke it firmly, pumping at it to blast his hot load across your body before turning it upon his fallen foes, marking them as his. As they're starting to become more female and Leonard moves in to start mounting them properly, the dark-haired feline is pulled over to you. Grinning happily at the prospect of dealing with her properly, you press her muzzle to your chest, pushing her lips to your [if breast size of player > 0]bosom[else]nipple[end if][if the player is not felinebodied] even as it becomes more feline[end if].";
		if "Male Preferred" is listed in feats of the player:
			say "     Your body, no longer able to maintain itself locked as a male, starts to become more feminine and girlish as your[if cocks of player > 1]cocks go[else]cock goes[end if] away to be replaced by a wet and juicy cunt.";
			remove "Male Preferred" from feats of the player;
		say "     As the mewling feline starts to nurse from your nipple, your body continues to change, becoming larger and stronger than the girlish lionesses around you. When your felines from your work group notice this change, they mewl happily and start lavishing attention upon you, helping you grow even more matronly. You caress and snuggle them in turn, giving them turns at your other breast as they show their affection for their new pride mother. You purr and nuzzle the raven-haired feline, rumbling that she's home now and that her new pride loves her very much";
		if "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			say ". And to show her how much you care for her, you shift her over into your lap onto your throbbing clit-like erection, sinking it into her wet pussy, fucking a hot load from her matronly pride mother into her needy womb. As you're cumming inside her, plumping her up with your virile seed, you feel Leonard there behind you, nuzzling and nibbling at your neck as you finish claiming her for the pride, telling you what a beautiful mate you've become.";
		else:
			say ". And to show her how much her pride cares for her, you hold her steady as Leonard moves in behind her, sinking his throbbing cock into her wet pussy, fucking a hot load of his leonine seed into her needy womb. As he's cumming inside her, plumping her up with his virile seed, Leonard nuzzles and nibbles at your neck, telling you what a beautiful mate you've become.";
		WaitLineBreak;
		say "     Passing the well-seeded girl back to the other three felines, you join Leonard in taking the fallen and transforming lions (now well on their way to becoming lioness girls) into the tunnel cave to finish claiming them on the plush bed. As you stretch yourself out on the soft bed, you take the opportunity to look over your altered feline body. While not as tall as your handsome mate, you are of normal height and have a more mature and womanly build than the girly felines. You are a lovely lioness with wide hips, a sexy bottom and luscious rack for the hungry girls of the pride. And your mate certainly seems to appreciate your new form as well, moving to mount you as he kisses you. He rumbles happily, telling you what a lovely woman you've become and what a wonderful mate you are. He's very proud of you - strong, beautiful and willing to help protect and grow the pride like a proper lioness mate should. As you listen to his fine words and feel his delightful paws roam all over your new body, you could not agree more, feeling that your place is with him here as his mate. And when he talks of breeding you full of more girls, that prospect delights you even more.";
		say "     After getting filled by his hot semen, you pull the three girls into your arms, pressing two to nurse milk from your breasts while pressing the muzzle of the last between your legs. As the dark-haired one laps Leonard's cum as it leaks from your pussy, your handsome mate mounts her, working to give her another fresh load in her needy pussy. As you and your mate play with the girls, you both purr to them about what good, submissive girls they are and how they belong in your pride. With a playful grin to Leonard, you add that the handsome lion could make a special place for them as his houseservants to tend to his needs and keep his exquisite home clean, but only if they're obedient enough to want such a special duty. Soon enough, they're all mewling and begging to be maids and servants to their refined master, eager to do have some special way to please him, begging him to fuck them all again to prove it.";
		say "     You and Leonard have a delightful time making increasingly subservient kitties out of the once strong and virile males. This orgy and training session doesn't end until you and they have all been filled until bloated with the handsome lion's semen and he's fully spent in a way he hasn't been since the recital. The nine of you, your trio of girls and their new dark-haired member having joined you at some point later on, curl up to rest together on and beside the large bed in a warm bundle of feline happiness and briefly sated lust.[impregchance][impregchance]";
		decrease humanity of player by 25;
		[puts Feline as lead monster for infection and impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Feline":
				now monster is y;
				break;
		now scale entry is 3;
		now tailname of player is "Feline";
		now facename of player is "Feline";
		now skinname of player is "Feline";
		now bodyname of player is "Feline";
		now cockname of player is "Feline";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		now cunts of player is 1;
		if cunt length of player < 9, now cunt length of player is 9;
		if cunt width of player < 3, now cunt width of player is 3;
		now breasts of player is 2;
		if breast size of player < 5, now breast size of player is 5;
		now breast size entry is 5;
		if "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			now cocks of player is 1;
			if cock length of player < 9, now cock length of player is 9;
			if cock width of player < 6, now cock width of player is 6;
			now sex entry is "Both";
			now cocks entry is 1;
			now cock length entry is 9;
			now cock width entry is 6;
		else:
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		if libido of player < 30, now libido of player is 30;
		WaitLineBreak;
		if humanity of player < 10:
			now HP of Leonard is 15;
			end the story saying "Having become the larger and matronly lioness, you become Leonard's mate and pride mother to the other girls.";
		else:
			now HP of Leonard is 16;
			now feline_attached is 0;
			now PridePark is unresolved;
			now lastdenevent is turns;
			move the player to Lion's Den;
			follow the turnpass rule;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After the male has beaten and fucked you, he grabs you roughly by both strong paws and hefts you over his head. You moan weakly, still bloated with his cum, as he hurls you over the edge moments after Leonard knocks out his opponent, sending you crashing into your lover. Struck down by your defeated, cum-stained body of his pride favorite is a terrible blow to the exhausted lion. This crushes him body and soul, turning what would have been a roar of triumph into a wail of lamentation. When the final alpha lion attacks him, he puts up almost no fight at all, his spirit broken and he is quickly dispatched. You mewl and moan weakly from the ground beside this quick and brutal fight as your master is beaten and made to service the victor.";
		say "     As this lustful display is going on, the dark-haired feline appears beside you, giggling happily as she caresses and teases you. She tells you how she and her clever master have been looking forward to welcoming you to their pride and how much fun she's going to have with you. Other lionesses from her pride move up to join her and you are kissed, licked and petted by the cute felines. As they continue this loving assault upon you, you start to purr and nuzzle them back, welcoming their kisses and caressing them in return. You find yourself French kissing the black-haired one, who rumbles happily at your increasing submission.";
		say "     Looking over, you see the clever lion busily tending to the three increasingly female lioness girls in his company. You feel a small attachment to the particularly pretty one he's currently fucking and are pleased that she'll be joining the pride alongside you, though you can't really remember why you feel this way about her. Soon you forget entirely about ever fighting with them in the first place, eventually becoming another cute feline girl like them. After much playful teasing and fun, you mewl happily as the sexy male comes over to mount your needy body, properly welcoming you into his new and powerful pride.";
	else:
		say "     Unable to deal with this sneaky male, you are forced to flee back down the hillside. It is at this time that Leonard manages to knock out his opponent with a powerful punch, but your elation at this does not last. The alpha lion you were unable to defeat takes this opportunity to leap onto Leonard from behind just as he's about to roar triumphantly. Tackled to the ground by the male slamming into him from above, the exhausted lion is quickly dispatched. With your master fallen, you try to flee into the woods to escape, but find your path blocked by the dark-haired girl and the ragged remains of their pride. With their master's plan having come to fruition, their spirits are buoyed while yours is low and you're tackled to the ground by them, then dragged over to the mouth of the cave, forced to watch as your fallen master is made to service the victor.";
		say "     As this lustful display is going on, the dark-haired feline giggles happily as she caresses and teases you. She tells you how she and her clever master have been looking forward to welcoming you to their pride and how much fun she's going to have with you. Other lionesses from her pride move up to join her and you are kissed, licked and petted by the cute felines. As they continue this loving assault upon you, you start to purr and nuzzle them back, welcoming their kisses and caressing them in return. You find yourself French kissing the black-haired one, who rumbles happily at your increasing submission.";
		say "     Looking over, you see the clever lion busily tending to the three increasingly female lioness girls in his company. You feel a small attachment to the particularly pretty one he's currently fucking and are pleased that she'll be joining the pride alongside you, though you can't really remember why you feel this way about her. Soon you forget entirely about ever fighting with them in the first place, eventually becoming another cute feline girl like them. After much playful teasing and fun, you mewl happily as the sexy male comes over to mount your needy body, properly welcoming you into his new and powerful pride.";
	if fightoutcome >= 20:			[defeated/fled]
		now lastdenevent is turns;
		now humanity of player is 0;
		now HP of Leonard is 100;
		[puts Feline as lead monster for infection and impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Feline":
				now monster is y;
				break;
		now tailname of player is "Feline";
		now facename of player is "Feline";
		now skinname of player is "Feline";
		now bodyname of player is "Feline";
		now cockname of player is "Feline";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		if "Male Preferred" is listed in feats of player:
			now cocks of player is 1;
			if cock length of player < 9, now cock length of player is 9;
			if cock width of player < 3, now cock width of player is 3;
			now cunts of player is 0;
			now cunt length of player is 0;
			now cunt width of player is 0;
			now breasts of player is 2;
			now breast size of player is 0;
		else if "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
			now cunts of player is 1;
			if cunt length of player < 9, now cunt length of player is 9;
			if cunt width of player < 3, now cunt width of player is 3;
			now breasts of player is 2;
			if breast size of player < 3, now breast size of player is 3;
		else:
			now cunts of player is 1;
			if cunt length of player < 9, now cunt length of player is 9;
			if cunt width of player < 3, now cunt width of player is 3;
			now breasts of player is 2;
			if breast size of player < 3, now breast size of player is 3;
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		if libido of player < 30, now libido of player is 30;
		WaitLineBreak;
		end the story saying "Having been defeated and captured by the alpha lion and his dark-haired lioness, you are made to join his pride.";


[  HP of Leonard						]
[ 0 = not met						]
[ 1 = talked once						]
[ 2 = oral sex						]
[ 3 = had sex						]
[ 4 = special sex (w/girl or fully Feline)	]
[ 5 = seeking violin					]
[ 6 = brought violin					]
[ 7 = gathering felines					]
[ 8 = gathered 3 felines				]
[ 9 = recital						]
[ 10 = hunting prides					]
[ 11 = beat first pride					]
[ 12 = beat second pride				]
[ 13 = ran from 3rd pride				]
[ 14 = beat 3rd pride - needed at Lion's Den	]
[ 15 = succumbed as matron				]
[ 16 = matron player					]
[ 17 = had maid scene					]
[ 18 = had work group scene				]
[ 19 = had kitty rescue scene			]
[ 20 = had special gift scene			]
[ 21 = had new recruit scene			]
[ 100 = lost/fled lion fight				]


Section 8 - Definitions

Definition: a person is felinefaced:
	if the facename of the player is "Feline", yes;
	no;

Definition: a person is felineskinned:
	if the skinname of the player is "Feline", yes;
	no;

Definition: a person is felinebodied:
	if the bodyname of the player is "Feline", yes;
	no;

Definition: a person is felinecocked:
	if the cockname of the player is "Feline", yes;
	no;

Definition: a person is felinetailed:
	if the tailname of the player is "Feline", yes;
	no;



Section 9 - Endings

[See Small Feline and Lion file by Damaged for endings.]

Leonard ends here.
