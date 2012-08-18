Version 2 of Leonard by Stripes begins here.
[Version 2 - Violin hunt]
"Adds a Male Feline NPC named Leonard to the Flexible Survival game"

Section 1 - Event and Lion's Den

Feline Friend is a situation.
The sarea of Feline Friend is "Park";
when play begins:
	add Feline Friend to badspots of guy;
	add Feline Friend to badspots of girl;
	add Feline Friend to badspots of furry;

Instead of resolving a Feline Friend:
	say "     Move through the trees after being forced off the path by a pack of wolves you spotted, you try your best to remain quiet while moving quickly.  As you hear the pack howl, you push aside some branches, hoping to find another section of path, but instead find yourself at a small clearing before a rocky hillside.  There is the mouth to a cave in the cliff's face at this edge of the park.  Worried about what may lurk there, you start to step back when you hear a voice call out.";
	say "     'No, you need not go.  Do not worry.  I shall not attack you unless provoked,' says the deep, male voice, rich with refinement.  'Come inside, let us talk.  I would enjoy some company.'";
	say "     Uncertain, you are about to leave when you hear the howl of those wolves, closer than before, you hesitate again.  A leonine figure steps from the cave, motioning quickly for you to come inside.  He does not seem aggressive and still has a suit coat on, though his lower body is unclothed.  'Quick!  They'll not be able to notice your scent over mine and they don't dare come here.'  Deciding to risk it, you enter the cave.";
	now Lion's Den is known;
	move player to Lion's Den;
	Now Feline Friend is resolved;
	now battleground is "void";


Lion's Den is a room. It is fasttravel. It is private.
The description of Lion's Den is "[lionsdendesc]";

instead of sniffing Lion's Den:
	say "There is a faint, damp smell to the lion's den beneath the strong, masculine scent of its occupant.";

to say lionsdendesc:
	say "     The dark cave extends for about thirty or forty meters at a roughly even diameter, making you suspect it is some sort of abandoned tunnel project.  The back half of the cave has been furnished rather lavishly, with such items as plush chairs and ottomans arranged on a large rug like a sitting room.  Beside those are a small bookcase and a coat rack holding several lanterns for light.  Past those, there lies a dining room table and chairs with a small camping stove set up along one wall.  There is another bookcase nearby for cooking supplies.  It form a partial wall with a hand-carved wardrobe at its back.  This last section holds a very large, four-poster bed that abuts the end of the tunnel cave.";
	say "     There are several paintings attached to the walls.  These seem quite old and possibly quite expensive.  They have been tastefully chosen, all going well together despite being from different styles and artists.  While not depicting anything overtly erotic, you can't help but feel the paintings have a primal, sexual quality to them.";


Section 2 - Leonard the Lion

Leonard is a man.  Leonard is in Lion's Den.
The description of Leonard is "[Leonarddesc]";
The conversation of Leonard is { "Tut Tut!" }.
lastfuck of Leonard is normally 555.
feline_status is a number that varies.
violinfound is a number that varies.

instead of sniffing the Leonard:
	say "The feline smells strong and manly.";

to say Leonarddesc:
	say "     Leonard is a lion-man like those you've seen in the park, but well-groomed and well-mannered.  He has a strong, manly chest, which he loosely covers with his suit coat.  While it could probably close, it certainly seems more comfortable open.  He is covered in tawny fur and has a large, russet mane.  His lower body is unclothed, leaving his sheath and plump balls exposed.";

Instead of conversing the Leonard:
	if hp of Leonard is 0:
		say "     'I'm glad you were willing to trust me and come in.  You should be safe enough here.  Those lupine ruffians don't like to get close since I sent them packing the last time.'";
		say "     'But yes, I should properly introduce myself.  My name is Leonard and this is my humble abode now.  It is not much,' he says, 'but I have been rather fortunate.  I have managed to retain my faculties and have been able to secure a suitable, if somewhat unconventional, new home.'  He motions with a sweep of his arm down the passageway, indicating his surprisingly well-furnished cave.  You consider asking about it, as it seems the powerful lion could have taken a house or apartment instead of transporting all of this from the city into the park and to his cave, but he continues on, motioning you to have a seat in his improvised sitting room.";
		if the player is felinecocked and inheat is true and Feline_attached > 0:		[Feline heat]
			say "     'I see you've run into one of the girls running around in the park,' he says, stroking the ears of the small feline nursing at your breast.  'I hope she wasn't any trouble to you,' he rumbles, passing you a drink from a small bar to one side of the [']room['].  You smile and take the drink, relaxing into the plush chair.  'Perhaps you should stay here for a time with me, my dear.  It would give us an opportunity to get to know one another.  Clearly you have an affinity for beauty of the feline form.  I can assure you that you'll find my company quite enjoyable,' the lion says with a smile, taking a seat of his own.  You can see that his sheath has grown fuller and the tip of his feline cock is poking free.  The scent of his strong, feline musk increases, beginning to arouse you.";
			now feline_status is 1;
		otherwise if bodyname of player is "Feline":
			say "     'You must be quite put out by these trying events in the city,' he rumbles, passing you a drink from a small bar to one side of the [']room['].  You smile and take the drink, relaxing into the plush chair.  'Perhaps you should stay here for a time with me, my dear.  It would give us an opportunity to get to know one another.  I can see that you've already encountered those other felines out in the park.  I can assure you that you'll find my company much more enjoyable,' the lion says with a smile, taking a seat of his own.  You can see that his sheath has grown fuller and the tip of his feline cock is poking free.  The scent of his strong, feline musk increases, beginning to arouse you.";
		otherwise if cunts of player > 0:
			say "     'You must be quite put out by these trying events in the city,' he rumbles, passing you a drink from a small bar to one side of the [']room['].  You smile and take the drink, relaxing into the plush chair.  'Perhaps you should stay here for a time with me, my dear.  It would give us an opportunity to get to know one another,' the lion says with a smile, taking a seat of his own.  You can see that his sheath has grown fuller and the tip of his feline cock is poking free.  The scent of his strong, feline musk increases, beginning to arouse you.";
		otherwise:
			say "     'You must find it quite difficult out there,' he says with a soft rumble, passing you a drink from a small bar to one side of the [']room['].  You smile and take the drink, relaxing into the plush chair.  'Perhaps you should stay here for a time, under my protection.  You could take a break and we could get to know each other better,' the lion says with a smile, taking a seat of his own.  You can see that his sheath has grown fuller and the tip of his feline cock is poking free.  The scent of his strong, feline musk increases, beginning to arouse you.";
		increase libido of player by 10;
		decrease thirst of player by 5;
		now hp of Leonard is 1;
	otherwise if hp of Leonard is 1:
		say "     [one of]'I hope you've reconsidered my offer of sharing my company,' he says with a rumble, running a paw along your side.[or]'I do hope you'll say for a while,' he purrs with a smile.[or]'You should relax and stay.  Let a big, strong male take care of you,' he rumbles in your ear.[or]'Wouldn't things be simpler if you had a big, strong lion watching over you?' the powerful feline rumbles.[or][if cunts of player > 0]'I hope you'll consider staying and enjoying my company, my dear,' the sexy lion rumbles.  'A sexy girl like you deserves a handsome male like myself.'[otherwise]'I hope you'll consider staying and enjoying my company,' the sexy lion rumbles.  'I can tell you need a proper, strong male to take care of you.'[end if][at random]";
	otherwise if hp of Leonard is 2:
		say "     The handsome lion [one of]runs his paws along your sides[or]strokes a strong paw over your ass[or]rubs his body against yours[or]slides his tail across your hip[or]scritches down your back[at random][one of].  'I look forward to having you underneath me,' he rumbles in your ear[or].  'You'll make a lovely, sexy kitty for me,' he purrs[or].  'You're looking forward to having the big kitty mount you, aren't you?' he rumbles[or][if cunts of player > 0].  'Your hot, little pussy's wet for your big lion, isn't it?' he purrs in your ear[otherwise].  'You're longing to let a proper male like me to mount you and show you your place, aren't you?' he purrs in your ear[end if][or].  'You know, deep down, you're nothing but my horny girl,' he rumbles[in random order].  Surrounded by the lion's arousing scent, you find yourself nodding, part of you agreeing with the sexy male.";
	otherwise if hp of Leonard is 3:
		say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of].  'I look forward to having you underneath me again soon,' he rumbles in your ear[or].  'You'll fit right in with my other horny, kitty girls,' he purrs, nibbling your ear[or].  'You need the big kitty to mount you again soon, don't you?' he rumbles[or][if cunts of player > 0].  'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[otherwise].  'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or].  'You know you're nothing but my horny girl, my mewling kitty slut,' he rumbles[in random order].  With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
	otherwise if hp of Leonard is 4:
		say "     The handsome lion moves up beside you, holding you close as he runs a paw over your [if cunts of player > 0]breast[otherwise]ass[end if], making you moan softly.  'I have a small favour I'd like to ask of you, my dear[if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist] kitty[end if].  The other girls have been so helpful in trying to help make my meager accommodations somewhat more suitable, but I have found myself needing something to occupy my time.'  He nuzzles at your neck and slides a finger between your legs.  'When I'm not taking care of my lovely kitties and their needs, that is,' he amends, purring in your ear.";
		say "     'I used to be an accomplished violinist in my old life, but had to set my practicing aside to deal with other obligations,' he says with remorse.  'But I have found myself thinking that it would be a fine hobby for a proper gentlelion such as myself.'  Running his paws over your hips, he continues.  'Would you not like to hear me play, my dear?'  You mewl in response to his touch and nod in agreement, longing to hear the handsome lion play something just for you.  'Unfortunately, I have no violin to play.  Perhaps one could be found in the city though,' he rumbles thoughtfully.  Finding yourself eager to please the handsome male, you quickly promise him that you'll find one for him, not even pausing to consider the matter.  He smiles and caresses your cheek.  'Oh, you are such a kind and thoughtful [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[otherwise]lover[end if] to offer doing that for me.'  He runs his other paw across your thigh, giving a light squeeze.  'I would be most grateful if you were to bring me one.'";
		now Music Store is unresolved;
		now Concert Hall is unresolved;
		now hp of Leonard is 5;
	otherwise if hp of Leonard is 5 and "violin" is not listed in invent of player:
		if a random chance of 2 in 3 succeeds:
			say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of].  'I look forward to having you underneath me again soon,' he rumbles in your ear[or].  'You'll fit right in with my other horny, kitty girls,' he purrs, nibbling your ear[or].  'You need the big kitty to mount you again soon, don't you?' he rumbles[or][if cunts of player > 0].  'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[otherwise].  'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or].  'You know you're nothing but my horny girl, my mewling kitty slut,' he rumbles[in random order].  With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
		otherwise:
			say "     The handsome lion holds you close as he [one of]strokes a paw along your hip[or]gives your ass a possessive squeeze[or]caresses a paw across your cheek[or]lets his warm, full sheath rub against you[or]nuzzles at your ear[at random].  '[one of]I hope you haven't forgotten about your promise, my dear[or]I do hope you'll be able to find a nice violin for me[or]You might be able to find a violin for me at a concert hall or perhaps even in a music store[or]Please keep looking for me, my dear[if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist] kitty[end if][at random].  I would so like to play something special for you,' he purrs, [one of]running a finger across your groin[or]caressing your inner thigh[or][if cunts of player > 0]rubbing your breast[otherwise]patting your bottom[end if][at random].  You moan and nod in response, [if violinfound is 1 or violinfound is 2][otherwise]eager to rush out and find one to please your sexy lion[end if].";
	otherwise if hp of Leonard is 5 and "violin" is listed in invent of player:
		delete violin;
		now hp of Leonard is 6;
		now lastfuck of Leonard is turns;
		say "     Pulling the violin you found out of your pack, you bring it over to the handsome lion with a swell of excitement in your heart.  Catching sight of what you've brought him, he smiles wraps an arm around you, hugging you tightly to him and running his paw along your side and down to your rear before taking the case from you with the other paw.  'Oh, I knew you were the one to speak to about this.  You seem like such a resourceful [if bodyname of player is listed in infections of Felinelist or facename of player is listed in infections of Felinelist]kitty[otherwise if cunts of player > 0]girl[otherwise]girly boy[end if].'";
		if violinfound is 10:			[apprentice]
			say "     He opens the case and examines the violin carefully, letting his pawpads slide gingerly over it.  Taking a few moments, he adjusts the tuning pegs and listens.  'You've done a fine job, my dear.  While this is a... rather common violin, I did have one much like it when I first started learning.  It should do well enough for now.'  Eager to improve his opinion of your gift, you dig out all the other supplies and sheet music you were able to find for him, which does indeed improve his dispostion.  'Oh, very resourceful,' he says with a smile as you reveal one item after the next.  'I wish more of my girls were as foreward-thinking as you are.  This should give me plenty of enjoyment out of this fine gift you've given me,' he purrs as he caresses your cheek and leans in to give you a kiss.  You moan softly into it as his paw slides down your side.";
			increase score by 50;
			increase morale by 3;
		otherwise if violinfound is 20:	[good]
			say "     He opens the case and examines the violin carefully, letting his pawpads slide gingerly over it.  Taking a few moments, he adjusts adjusts the tuning pegs and listens.  'You've done an exceptional job, my dear.  This is a very old and finely crafted instrument you've been able to find.  It has such wonderful tone and depth to its music.  Such fine music I will be able to play with it.'  You are filled with warmth at his praise, so very pleased to have made your wonderful lion happy.  Eager for more praise, you show him the other supplies and the sheet music you have for him.  'Nicely done, my dear,' he rumbles, still plucking at the violin to hear its pure notes.  'I shall have several lovely pieces to play with this excellent instrument,' he purrs as he caresses your cheek and leans in to give you a kiss.  You moan softly into it as his paw slides down your side.";
			increase score by 75;
			increase morale by 5;
		otherwise if violinfound is 21:	[excellent]
			say "     He opens the case and examines the violin carefully, letting his pawpads slide gingerly over it.  Taking a few moments, he adjusts adjusts the tuning pegs and listens.  'You've done a very good job, my dear.  This is a refined instrument you've been able to find for me.  It is very well crafted and should be a fine violin for one such as myself,' he purrs, looking your gift over with a smile.  Eager for more praise, you show him the few other supplies and the sheet music you were able to grab for him.  'Hmm... I'm glad you were able to get this.  They should do me for a little while.  He flips through the pages you've brought him.  'You don't have much music, but I guess that's understandable.  They are lovely pieces though and I should be able to play a few others from memory.'  Turning his attention back to the violin, he looks it over again.  'Still, when one is presented with a fine instrument such as this, one should be grateful.  And I am so grateful to you, my dear,' he purrs as he caresses your cheek and leans in to give you a kiss.  You moan softly into it as his paw slides down your side.";
			increase score by 40;
			increase morale by 3;
		say "     After breaking the kiss, the handsome lion smiles down at you.  'And would you care to hear me play, my dear,' he purrs.  'I believe I promised I would play for you if you found me one.'  You nod eagerly, almost begging to hear him play for you.  Smiling, he holds the violin in one paw and runs the other over your body, making you release a soft mewl of need.  'Very well, then.  I shall need a moment to prepare,' he says, working to set up the stand and music, then makes some final adjustments to the tuning.  He takes a seat on what appears to be a vintage Chippendale chair, a new addition that one of the other girls probably found for him.  Seeing such an opulent gift, you get butterflies in your stomach, hoping all the more to have pleased your lover.  After making a few attempts to push his mane aside and properly position the violin with his new facial structure, he begins to play.";
		say "     The song, as is the playing, is hesitant at first, as it tentatively exploring.  The notes are few, but clear, with just enough of a pause between each stroke to convey the increasing confidence.  In time, short but excited measures are played, followed by a silence as if worried of reprisal.  The acoustics of the tunnel only add to the effect, as if the violin's music itself is testing out the space where it will now live.  As the song continues, the playing grows bolder, with fewer and shorter pauses until finally it breaks into a long and joyous ballad, full of tones and shifts, but still carrying that earlier, tentative playing with it, but not united in the fullness of its freedom.  When the last, powerful strokes send triumphant notes through the tunnel room and out into the surrounding park, you begin to clap, moved almost to tears by your handsome and talented master's playing.  He bows to you and gently sets his instrument aside.";
		say "     Spreading his arms wide, he welcomes you into a hug, holding you close as you tell him repeatedly how wonderful his playing was and how moved you were.  He humbly accepts your praise, saying he's out of practice and that he should be able to do something better for you later.  You start another rush of praise for him, but he smiles and puts a finger across your lips.  'Now, my dear, I believe you deserve a special reward for finding such a nice present for me,' he purrs.  His paw slides across your cheek and down your neck to [if cunts of player > 0]cup your breast[otherwise if cocks of player > 0]cup your stiffening cock[otherwise]your rear and squeezing it[end if].  You moan lustfully, feeling incredibly turned on now.  Leading you back to his large bed, he tosses you onto it and growls lustfully[if cunts of player > 0], making you wet between your thighs[otherwise if cocks of player > 0], making you rigidly hard[otherwise], getting you even more excited for what's to come[end if].";
		[***copied from fucking for now... new scene needed here.***]
		if bodyname of player is "Feline":
			say "     'Mmm... your cute, feline body looks lovely.  Just right for a submissive girl like you,' he rumbles as he cradles you in his arms and lowers you onto the bed.  You mewl softly and knead your paws at his chest, your cat girl body longing to let the sexy lion mount you.  His paws move to your breasts, stroking and caressing them, making you mewl all the more.  As he plays with your nipples, he leans in and gives you a kiss, running his raspy tongue across your lips before sliding it into your [facename of player] mouth.";
		otherwise if cunts of player > 0:
			say "     'Mmm... my sexy girl,' he rumbles, nuzzling at your neck and nibbling along it.  'A good, submissive girl looking for her big lion stud to fill her,' he continues, sliding his arms around you.  He cradles you in his arms and lowers you onto the bed.  Caught up in your arousal and desires for the lion, you mewl softly.  You can feel the truth in his words, the longing inside you to let the sexy lion mount you.  His paws move to your breasts, stroking and caressing them, making you moan in pleasure.  As he plays with your nipples, he leans in and gives you a kiss, running his raspy tongue across your lips before sliding it into your [facename of player] mouth.";
		otherwise:
			say "     'Mmm... that's a good boy,' he rumbles, nuzzling at your neck and nibbling along it.  'Deep down, you're nothing but a submissive slut.  A girly-boy looking for his big lion stud to fill him,' he continues, sliding his arms around you.  He cradles you in his arms and lowers you onto the bed.  Caught up in your arousal and desires for the lion, you mewl softly.  You can feel the truth in his words, the growing longing inside you to let the sexy lion mount you.  His paws knead your ass, making you moan in pleasure.  He leans overtop you and runs his raspy tongue up your [bodydesc of player] chest.";
		say "     With his paws at your hips, he tells you to move onto all fours.  You move readily into position, raising your ass and offering yourself to the big, strong male you desire[if cunts of player > 0].  He smiles and kneads your bottom[otherwise].  He smiles and spreads your cheeks[end if] before moving his throbbing, leonine cock into position.  Teasingly, he eases just the tip into you as he leans overtop of you, making you mrowl with need and push your hips back as your lustful body demands more.  'That's a good, eager [if cunts of player > 0]girl[otherwise]girly-boy[end if].  You were made to take lion-cock, weren't you?' he rumbles, nibbling your ear.  'A horny slut like you wants all the lion cock you can get.'";
		say "     As he continues to tell you what an eager, needy, submissive kitty you are, he pounds his throbbing rod into you.  You can feel the pulsing of his maleness with his power, dribbling a steady supply of precum into your [if cunts of player > 0]hot pussy[otherwise]needy hole[end if][if player is felinebodied].  His strong, muscled body keeps you pinned to the bed as he takes the nape of your neck in his teeth.  They hold you firmly, but gently, making your feline body relax and submit to the big male.  Not that you would consider resisting your handsome lover, but it feels so good to have him in control[otherwise].  His strong, muscled body keeps you pinned to the bed, not that you would consider resisting your handsome lover[end if].  Aside from pushing your hips back into each thrust, you hold yourself steady, letting Leonard use you as he pleases and loving it[if inheat is true and player is felinecocked and Feline_attached > 0].  Glancing over as you hear some moaning mewls, you spot the small lioness working a [one of]pink[or]black[or]ridged[or]vibrating[at random] dildo into her cunt as she watches the sexy lion mating you[end if].";
		say "     After a good, long fucking[if cunts of player > 0] that's had you cum several times[end if], the lion drives his stiff cock deep inside you a final time and roars loudly.  You can feel his hot seed blasting into you, splashing against your [if cunts of player > 0]cervix and flowing into your womb[otherwise]prostate and filling your bowels[end if].  You release a feline yowl of pleasure[if cunts of player > 0] and cum hard, soaking your crotch in a fresh flow of your juices and his semen[end if] as he continues breeding you like the horny [if cunts of player > 0]girl[otherwise]girly-boy[end if] you are.  By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that makes you feel fulfilled.[impregchance]";
		say "     Dismounting, he pulls you close and guides your head down to his cock.  You take it into your mouth and lick it clean while he strokes your head and scritches your ears.  'That's right, lick your lion master clean.  Mmm... you'll make a fine kitty girl like the others,' he rumbles.  You blush with pride and clean him attentively[if inheat is true and the player is felinecocked and Feline_attached > 0].  The other kitty purrs softly and snuggles back up to your chest, taking your nipple into her muzzle and resumes nursing from you.  For a moment you think that will be all, but then you feel her slide the slick toy she was using into your well-used hole, ensuring the lion's seed stays stopped up nicely inside you[end if].  Eventually you both drift off with his half-hard cock still in your mouth as you nurse softly at it, taking a quick catnap on the soft bed.";
	otherwise if hp of Leonard is 6:
		say "     The handsome lion [one of]gives your ass a possessive squeeze[or]puts an arm around you from behind and strokes over your groin[or]rubs himself against you, pressing his sheath to your body[or]runs his paws along your sides and nibbles at your neck[or]takes your hands in his paws and presses them to his plump balls[or]grinds his half-hard cock against your bottom[at random][one of].  'I look forward to having you underneath me again soon,' he rumbles in your ear[or].  'You'll fit right in with my other horny, kitty girls,' he purrs, nibbling your ear[or].  'You need the big kitty to mount you again soon, don't you?' he rumbles[or][if cunts of player > 0].  'Your hot little pussy's wet for the big lion, isn't it?' he purrs as he rubs a finger over it[otherwise].  'You're looking for your big lion stud to mount you and show you your place, aren't you, my horny girly-boy?' he purrs in your ear as he grabs your ass firmly[end if][or].  'You know you're nothing but my horny girl, my mewling kitty slut,' he rumbles[in random order].  With the lion's scent filling your senses, your aroused, needy body responds as the part of you longing to be his nods in agreement.";
		[***update conversation later]


Section 3 - Sexy Times

instead of fucking the Leonard:
	follow the cock descr rule;
	[puts Feline as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feline":
			now monster is y;
			break;
	if hp of Leonard is 0:
		say "     That's rather forward of you.  Perhaps you should at least talk to him first.";
	otherwise if lastfuck of Leonard - turns < 8:
		say "     'I really appreciate your eagerness, my dear, but I think it'd be all the sweeter if we wait until we're both recovered from the last time.";
	otherwise if hp of Leonard is 1:
		now lastfuck of Leonard is turns;
		now hp of Leonard is 2;
		if cunts of player > 0 or bodyname of player is "Feline":
			say "     Leonard smiles and takes your hand in his strong paw.  'Splendid, my dear!  I knew you'd accept my invitation.'  He leads you to the large bed at the back of his home.  His strong, virile scent is even stronger here, making you increasingly aroused.  His paws slide over your body, removing your gear and clothes so that he may look over your [bodytype of player] form[if inheat is true and player is felinecocked and Feline_attached > 0].  He gives the feline girl at your chest a scritch behind the ear and she releases your nipple after giving you a final lick.  She hops onto the bed and sits cross-legged in the corner with a paw between her legs while she watches you both[end if].  After removing his suit jacket, the lion hangs it on a nearby coat rack and pulls you into a hug.  One paw caresses your head, pressing your face into his soft mane, filling your senses with his feline scent.";
			say "     'That's a good girl,' he rumbles, stroking his other paw along your back.  'A big, strong lion is just what you need, isn't it?' he purrs in your ear.  With your senses focused on his musk, you nod in agreement.  Who wouldn't want such a sexy male?";
			say "     You moan in pleasure as paw moves down to grab your ass, giving it a firm squeeze.  And speaking of firm, your hands have moved down his sides and have taking hold of his hard, throbbing cock.  You stroke over it, working to get this big kitty fully hard.  His precum flows down his length, soaking your fingers with it.  You caress his full, heavy orbs as well, feeling the warmth of his virile balls, making you long for their contents all the more.";
			say "     Leonard strokes your head and pushes you to sit on the plush bed, bringing his cock to your face.  'Now, my sweet, it's time to put that mouth of yours to work,' he rumbles.  Needing no further encouragement at this point, you wrap your lips around his cock, licking and sucking at it hungrily.  He moans in pleasure and caresses your head as he thrusts into your wanton mouth.  'Mmm... that's a good girl.  You know how to serve a male properly.  You were meant to be a horny kitty for me,' he says between thrusts.  With your senses awash in his scent, his taste, his words, you can't help but agree, nodding as best you can over the thick shaft stuffed into your mouth and he smiles at your assent.  His words sink into your mind, making you long to do whatever this handsome lion wants.";
			say "     His cock pulses and throbs in your mouth as your rub his balls, feeling them twitch and tense.  The lion groans and pulls your head forward, stuffing his feline shaft down your throat moments before release.  As he cums hard, his hot seed blasts down your throat and into your mouth.  Much of it pushes its way down into your belly, filling you with warmth at having pleased the sexy male.  Some of it overflows from your mouth as well, clearly the big kitty having saved up a large load for you.  Before he's finished cumming, he pulls his cock from your mouth and strokes it, spraying the rest of his load across your [bodytype of player] body.  You moan happily at this and rub your hands over yourself as you swallow down the remaining cum in your mouth and lick what you can from your lips.";
			say "     Flopped out on the bed, you writhe in pleasure, savouring the feel of your big lion's cum all over you.  Leonard slides a paw along your side and down to your [if cunts of player > 0]pussy, fingering it until you orgasm loudly[otherwise]ass, giving it another squeeze[end if][if cocks of player > 0].  Your cock is hard with arousal, but you feel no desire to play with it, content to have let the handsome male cum[end if].  'Mmm... you did well, my lovely.  Next time we'll mount you properly and you can get good and stuffed.'  You moan and purr, eager to return and give yourself to the lion again.";
			if inheat is true and the player is felinecocked and Feline_attached > 0:
				say "     As you lie there on the bed, panting to recover after your wonderful orgasm, the small feline snuggles back up to you.  You can feel that her crotch is quite wet from several orgasms while watching.  You moan softly and stroke her ears, guiding her muzzle back to your bosom.  She wraps her lips around your nipple and resumes nursing milk from your breast, making you rumble in satisfaction.";
				increase libido of player by 4;
				decrease humanity of player by 4;
			infect "Feline";
			infect "Feline";
			increase libido of player by 20;
			if libido of player > 80, now libido of player is 80;
			decrease humanity of player by 4;
		otherwise:
			say "     Leonard smiles and takes your hand in his strong paw.  'Splendid, my dear!  I had hoped you'd accept my invitation.'  He leads to the large bed at the back of his home.  His strong, virile scent is even stronger here, making you increasingly aroused.  His paws slide over your body, removing your gear and clothes so that he may look over your [bodytype of player] form.  After removing his suit jacket, he hangs it on a nearby coat rack and pulls you into a hug.  One paw caresses your head, pressing your face into his soft mane, filling your senses with his feline scent.";
			say "     'Take it in.  That's the scent of a real male,' he rumbles, stroking his other paw along your back.  'A big, strong lion is just what you need, isn't it?' he purrs in your ear.  With your senses focused on his musk, you nod in agreement.  Who wouldn't want such a sexy male?";
			say "     You moan in pleasure as paw moves down to grab your ass, giving it a firm squeeze.  And speaking of firm, your hands have moved down his sides and have taking hold of his hard, throbbing cock.  You stroke over it, working to get this big kitty fully hard.  His precum flows down his length, soaking your fingers with it.  You caress his full, heavy orbs as well, feeling the warmth of his virile balls, making you long for their contents all the more.";
			say "     Leonard strokes your head and pushes you to sit on the plush bed, bringing his cock to your face.  'Now, my sweet, it's time to put that mouth of yours to work,' he rumbles.  Needing no further encouragement at this point, you wrap your lips around his cock, licking and sucking at it hungrily.  He moans in pleasure and caresses your head as he thrusts into your wanton mouth.  'Mmm... that's it.  You know how to serve a male properly.  A weak man like you was really meant to be a horny kitty for me,' he says between thrusts.  With your senses awash in his scent, his taste, his words, you can't help but agree, nodding as best you can over the thick shaft stuffed into your mouth and he smiles at your assent.  His words sink into your mind, making you long to do whatever this handsome lion wants.";
			say "     His cock pulses and throbs in your mouth as your rub his balls, feeling them twitch and tense.  The lion groans and pulls your head forward, stuffing his feline shaft down your throat moments before release.  As he cums hard, his hot seed blasts down your throat and into your mouth.  Much of it pushes its way down into your belly, filling you with warmth at having pleased the stronger male.  Some of it overflows from your mouth as well, clearly the big kitty having saved up a large load for you.  Before he's finished cumming, he pulls his cock from your mouth and strokes it, spraying the rest of his load across your [bodytype of player] body.  You moan happily at this and rub your hands over yourself as you swallow down the remaining cum in your mouth and lick what you can from your lips.";
			say "     Flopped out on the bed, you writhe in pleasure, savouring the feel of your big lion's cum all over you.  Leonard slides a paw along your side and down to your ass, giving it another squeeze[if cocks of player > 0].  Your cock is hard with arousal, but you feel no desire to play with it, content to have let the handsome male cum[end if].  'Mmm... you did well, my lovely.  Next time we'll mount you properly and you can get good and stuffed.'  Rubbing his fingers at your taint, he adds, 'And let's hope you come back with a lovely pussy so you can be taken like a proper, horny girl.'  You moan and purr, eager to return and give yourself to the lion again.";
			infect "Feline";
			infect "Feline";
			increase libido of player by 5;
			if libido of player > 100, now libido of player is 100;
			decrease humanity of player by 4;
	otherwise if hp of Leonard >= 3 and inheat is true and player is felinecocked and Feline_attached > 0 and feline_status is 0 and a random chance of 1 in 2 succeeds:
		[not one of Leonard's girls... yet.]
		now lastfuck of Leonard is turns;
		if hp of Leonard < 4, now hp of Leonard is 4;
		say "     'Oh my!  It seems you've brought a special treat, my dear,' he says with a rumble as he runs his paw down your body and over your ass.  'This cute kitty girl you've found isn't one from my pride.  Perhaps you'd like to help me invite her to join us.  What do you say?'";
		if the player consents:
			say "     Smiling and nodding to Leonard as you suddenly feel quite turned on by this idea, you run your hand along the kitty's back, scritching her ears.  She rumbles in pleasure as she roused from the nap she was taking to resume nursing from your bosom.  Heading towards the back of the cave with Leonard right behind you, he strokes your sides and rear as he guides you towards the four-poster bed.  There your feline lover strips you down and has you lie back on the bed, still cradling the other feline to your chest.  She gives a soft mewl of inquiry, unsure what's going on, but you press her muzzle back to your nipple and she settles down to enjoy her feeding.";
			say "     Leonard moves onto the bed slowly with feline grace and stealth, padding slowly overtop of you.  His paw moves in to replace your stroking hand at the feline's back, eventually drifting lower.  When his fingers move to her wet pussy, she mewls again, but you make sure she continues suckling peacefully.  The kitty in your arms starts rumbling and purring excitedly, raising her tail and wiggling her ass.  Leonard smiles at this and bring his cock into position, slowly sinking it into the smaller female's body.  She releases a yowl of pleasure, briefly sinking her claws into you.";
			say "     The larger lion rumbles and nibbles at the kitty's ear, telling her what a sexy kitty she is and how she belongs in his pride.  He goes on like this as he fucks her, weaving words of lust and obedience in her ears that excite you as well, making you long to have the lion's cock in you as well.  As the feline atop you slips further into her lustful mating and shifts from nursing from you to kissing you, you move your hand down between your legs to finger your hot, dripping pussy.";
			say "     The mating continues for some time, Leonard drawing it out as he tells the feline what a good, submissive lioness she is and how she belongs in his pride.  Between his words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates.  You moan at that thought, fingering your clit eagerly at that thought, imagining yourself in her place, being fucked and bred by the lion so you can share this fate.  As the lion roars and takes the feline's nape in his muzzle, he drives hard into her one last time and you know he's pumping her full of his hot seed.  You moan loudly, plunging your tongue into the feline's muzzle and cumming hard as you finger yourself to a powerful climax, longing for it to be the lion's cock instead of your own fingers next time.";
			say "     As you all lie back on the bed, the feline girl snuggles up to the lion on one side and you on the other.  His strong, furry arms wrap around you both.  He nuzzles you, telling you again what a good job you did in finding another lioness for his pride and bringing her here.";
			infect "Feline";
			decrease libido of player by libido of player / 4;
		otherwise:
			say "     You smile and tell him that you'd rather watch and he grins and gives your rear a playful swat.  Quite turned on by the idea of seeing the lion add the cute feline to his pride, you run your hand along her back and scritch her ears.  She rumbles in pleasure as she roused from the nap she was taking to resume nursing from your bosom.  Heading towards the back of the cave with Leonard right behind you, he strokes your sides and rear as he guides you towards the four-poster bed.  There your feline lover eases the feline from your chest and into his arms.  She mewls indignantly as your nipple is pulled away from her muzzle and then growls as she notices the unknown feline moving atop her.  She mrowls and tries to take a swat at him, but he pins her down easily, rubbing his powerful body against hers.";
			say "     As you watch from the side of the bed, the lion keeps her face pressed onto the bed, forcing her to take in his scent even as he rumbles in her ear about what a lovely kitty she is and how she belongs in his pride.  She struggles a little at first, her wild nature resisting the male, but his scent and his words (as well as the thick cock pressed against her rear) eventually have her mewling in need and raising her rear to present her dripping pussy.  As the lion drives his hard shaft into her, she yowls in lustful pleasure and you finger your pussy excitedly, greatly turned on by the display of feline dominance.";
			say "     The mating continues for some time, Leonard drawing it out as he tells the feline what a good, submissive lioness she is and how she belongs in his pride.  Between his words and the hard fucking she's getting, you can tell she's quickly growing to accept her new place as one of his feline lovers and mates.  You moan at that thought, fingering your clit eagerly at that thought, imagining yourself in her place, being fucked and bred by the lion so you can share this fate.  As the lion roars and takes the feline's nape in his muzzle, you watch as he drives hard into her one last time and his ballsac tightens, pumping her full of his hot seed.  You moan loudly, cumming hard as you finger yourself to a powerful climax, longing for it to be the lion's cock instead of your own fingers next time.";
			say "     As you all lie back on the bed, the feline girl snuggles up to the lion on one side and you on the other.  His strong, furry arms wrap around you both.  He nuzzles you, telling you again what a good job you did in finding another lioness for his pride and bringing her here.";
			increase libido of player by 12;
			if libido of player > 100, now libido of player is 100;
		now feline_status is 2;
		decrease humanity of player by 8;
		follow the turnpass rule;
	otherwise if hp of Leonard >= 3 and inheat is true and player is felinecocked and Feline_attached > 0:
		now lastfuck of Leonard is turns - 4;	[longer delay after fucking you both]
		if hp of Leonard < 4, now hp of Leonard is 4;
		say "     Feeling drawn to the masculine lion's body, you moan in pleasure as he runs his paws over you.  Walking close behind you, his paws stroke your sides and rear as he guides you further into his cave home towards the four-poster bed.  Divesting you of your gear and clothes, he presses his manly chest to your [bodytype of player] body.  You moan in pleasure and nuzzle at his mane, taking in his strong scent.";
		say "     'Mmmm... I must say, you look so pretty with one of pride nursing from your bosom,' he says with a rumble as he runs a paw down the kitty's back to scritch her ears and draw a rumble from her.  His paw then drifts over to stroke your other breast.  Walking close behind you, his paws stroke your sides and rear as he guides you further into his cave home towards the four-poster bed.  Divesting you of your gear and clothes, helps the small kitty onto his bed to wait eagerly while he presses his manly chest to your [bodytype of player] body.  You moan in pleasure and nuzzle at his mane, taking in his strong scent.";
		say "     After the lioness kitty helps you onto the bed with her, Leonard pads onto it with a hungry, lustful look in his eyes as he smiles at having you both there to play with.  'Mmm... you're both such lovely treasures.  Such sexy creatures here to get what they need from the sexy lion,' he rumbles as he runs a paw over each of you and you both respond to his touch, growing more eager for the male's attention.  He rumbles and pads over to you, guiding you onto all fours and mounting you quickly.  You release a mewling groan as he takes you quickly, getting right to the action this time, much to your body's pleasure.";
		if cunts of player > 0 and a random chance of 1 in 2 succeeds:
			say "     The other feline moves in behind Leonard, nuzzling at his ballsac and licking at his cock each time it slides back before another thrust.  You can feel her raspy tongue playing at the edge of your pussy before moving on to attend to your clit as the lion starts pounding you hard and fast.  'That's a good, sexy girl,' he rumbles between thrusts.  'Such a good, submissive slut you are.  In need of a hot load of lion cum, aren't you?'  You nod enthusiastically, your body lusting to feel the sexy lion breed you.";
			say "     As he continues to tell you what an eager, needy, submissive kitties you both are, he pounds his pulsing shaft into you.  You grip the sheets and beg him for him to fill you, for the kitty to keep licking, for him to take you.  Soon your wish is granted as the lion drives hard into you and his balls pulse as his hot seed flows deep inside you, flooding your womb with his virile sperm.  The horny kitty between your legs licks eagerly, lapping up the cum that leaks out around her master's shaft.";
			say "     After he withdraws from you and mounts the other kitty, you roll onto your back, lost in the blissful pleasure of having his hot semen filling your tummy.  Watching the show, you soon feel the urge to return the favour and nuzzle under Leonard's balls to lick at his cock and her pussy.  The lustful romp continues like this for some time, with the three of you swapping positions and you both getting several loads from the big male.  Eventually, your threesome runs down and you all end up snuggled together on the bed, purring happily as you drift off for a quick catnap.";
		otherwise:
			say "     The other feline moves in front of you, bringing her dripping pussy to your face.  With the scent of aroused feline all around you, you dive in right away, licking and kissing at those wet folds, enjoying the mewls and purrs she emits.  Watching this lovely show, Leonard starts pounding you hard and fast.  'That's a good, sexy girl,' he rumbles between thrusts.  'Such a good, submissive slut you are.  Lick your pride-mate's pussy.  You want to earn a nice, hot load of lion cum, don't you?'  You nod enthusiastically, your body lusting to feel the sexy lion breed you.";
			say "     As he continues to tell you what an eager, needy, submissive kitties you both are, he pounds his pulsing shaft into you.  You grip the sheets and beg him for him to fill you between licks, crying out for him to take you.  Soon your wish is granted as the lion drives hard into you and his balls pulse as his hot seed flows deep inside you, flooding your [if cunts of player > 0]womb[otherwise]ass[end if] with his virile sperm.  The horny kitty before you grinds her pussy against your face as she cums hard as well.  All of this sends you over the edge as well, climaxing as you lapping up her juices and feel your pride leader's hot load filling you.";
			say "     After he withdraws from you and mounts the other kitty, you roll onto your back, lost in the blissful pleasure of having his hot semen filling your tummy.  Watching the show, you soon feel the urge to get a turn of your own.  You push yourself up and bring your dripping [if cunts of player > 0]pussy[otherwise]asshole[end if] to the lioness's muzzle, moaning in delight as her raspy tongue starts lapping up the leonine cum leaking from your stuffed [if cunts of player > 0]cunt[otherwise]hole[end if].  The lustful romp continues like this for some time, with the three of you swapping positions and you both getting several loads from the big male.  Eventually, your threesome runs down and you all end up snuggled together on the bed, purring happily as you drift off for a quick catnap.";
		now feline_status is 3;
		decrease libido of player by libido of player / 3;
		decrease humanity of player by 8;
		follow the turnpass rule;
	otherwise if hp of Leonard >= 3 and bodyname of player is "Feline" and player is pure and a random chance of 1 in 2 succeeds:
		now lastfuck of Leonard is turns;
		if hp of Leonard < 4, now hp of Leonard is 4;
		say "     Feeling drawn to the masculine lion's body, you moan in pleasure as he runs his paws over you.  Walking close behind you, his paws stroke your sides and rear before taking hold of your leonine tail and raising it.  You shiver in delight and mewl, showing off your ass to the strong lion.  Kneeling down, he nuzzles and nibbles at your ear.  'Mmm... I knew you'd make a fine, submissive kitty girl... they always do,' he purrs, roaming his paws over your body before he picks you up bodily and carries you to the bed.";
		say "     Your feline lover strips you down, leaving your diminutive, cute body all on display for him to enjoy as he sits on the edge of the bed.  You feel a warmth inside as he looks you over, proud that it pleases him so";
		if cunts of player > 0:
			say ".  And that warmth spreads down to your cunt, wet and dripping with need for him.  He strokes his fingers across your snatch, making you mewl with desire.  When he spreads his arms, you pounce into his lap, kissing and nuzzling at your big lion lover before he turns you sit with your back to his strong chest.  Lowering you down, his throbbing erection spreads your needy cunt open, filling you with the lion meat your body craves.";
		otherwise:
			say ".  His strokes his fingers across your [if cocks of player is 0]bare groin[otherwise]your maleness with passing interest.  'Just a horny, slutty girly-boy needing a real cock in him, that's what you are.'  Spreading his arms, he rumbles 'Well, come and get it, my submissive kitty-boy.'  Needing no more incentive, you pounce into his lap, kissing and nuzzling at your big lion lover before he turns you to sit with your back to his strong chest.  Lowering you down, his throbbing erection spreads your ass, filling you with the lion meat your body craves.";
		say "     His strong arms and legs bounce you in his lap, sliding you up and down that hard cock.  Your body quivers and you mewl in delight, loving every moment of the powerful fucking you're getting.  His paws rub your chest[if breast size of player > 0], stroking your breasts and teasing your nipples[end if].  You can feel his warm breath against your ears before he gives them another nibble, rumbling to you what a sexy kitty you are, what a good, submissive lioness, how you belong with his pride.  Your whole body is filled with shivers of delight at the idea of becoming a member of his pride and you mrowl [if cunts of player > 0]in orgasm[otherwise]excitedly[end if].  He chuckles and slows his thrusting, helping you draw out the ecstasy of that wonderful image.";
		say "     As he continues to tell you what an eager, needy, submissive kitty you are, he pounds his throbbing rod into you.  You can feel the pulsing of his maleness with his power, dribbling a steady supply of precum into your [if cunts of player > 0]hot pussy[otherwise]needy hole[end if].  His soft fur rubs against yours as your feline bodies slide against one another as his strong limbs easily support your smaller one, making sure you stay planted atop his feline penis.  Not that you would consider resisting your handsome lover, but it feels so good to have him in control.  Aside from squeezing your [if cunts of player > 0]your cunt[otherwise]your tight hole[end if] around his rod, you hold yourself steady, letting Leonard use you as he pleases and loving it.";
		say "     After a good, long pounding[if cunts of player > 0] that's had you cum several times[end if], the lion drives his stiff cock deep inside you a final time and roars loudly.  You can feel his hot seed blasting into you, splashing against your [if cunts of player > 0]cervix and flowing into your womb[otherwise]prostate and filling your bowels[end if].  You release a feline yowl of pleasure[if cunts of player > 0] and cum hard, soaking your crotch in a fresh flow of your juices and his semen[end if] as he continues breeding you like the horny [if cunts of player > 0]girl[otherwise]girly-boy[end if] you are.  By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that makes you feel fulfilled.[impregchance]";
		say "     Easing you from his lap, he lays his cum-filled kitty on the bed, guiding your head down to his cock.  You take it into your mouth and lick it clean while he strokes your head and scritches your ears.  'That's right, lick your lion master clean.  Yes... you're becoming a wonderful kitty girl.  You'll fit in nicely with the others,' he rumbles.  You blush with pride and clean him attentively.  Eventually you both drift off with his half-hard cock still in your mouth as you nurse softly at it, taking a quick catnap on the soft bed.";
		infect "Feline";
		decrease libido of player by libido of player / 4;
		decrease humanity of player by 8;
		follow the turnpass rule;
	otherwise:
		now lastfuck of Leonard is turns;
		say "     Feeling drawn to the masculine lion's body, you moan in pleasure as he runs his paws over you.  Walking close behind you, his paws stroke your sides and rear as he guides you further into his cave home towards the four-poster bed[if inheat is true and player is felinecocked and Feline_attached > 0].  He runs his paws over the cute lioness at you chest, coaxing her to release your breast and take a place on the bed to watch.  As the lion divests you of your clothes and gear, she fishes under the bed for something[otherwise].  Divesting you of your gear and clothes, he presses his manly chest to your [bodytype of player] body[end if].  You moan in pleasure and nuzzle at his mane, taking in his strong scent.";
		if bodyname of player is "Feline":
			say "     'Mmm... your cute, feline body looks lovely.  Just right for a submissive girl like you,' he rumbles as he cradles you in his arms and lowers you onto the bed.  You mewl softly and knead your paws at his chest, your cat girl body longing to let the sexy lion mount you.  His paws move to your breasts, stroking and caressing them, making you mewl all the more.  As he plays with your nipples, he leans in and gives you a kiss, running his raspy tongue across your lips before sliding it into your [facename of player] mouth.";
		otherwise if cunts of player > 0:
			say "     'Mmm... my sexy girl,' he rumbles, nuzzling at your neck and nibbling along it.  'A good, submissive girl looking for her big lion stud to fill her,' he continues, sliding his arms around you.  He cradles you in his arms and lowers you onto the bed.  Caught up in your arousal and desires for the lion, you mewl softly.  You can feel the truth in his words, the longing inside you to let the sexy lion mount you.  His paws move to your breasts, stroking and caressing them, making you moan in pleasure.  As he plays with your nipples, he leans in and gives you a kiss, running his raspy tongue across your lips before sliding it into your [facename of player] mouth.";
		otherwise:
			say "     'Mmm... that's a good boy,' he rumbles, nuzzling at your neck and nibbling along it.  'Deep down, you're nothing but a submissive slut.  A girly-boy looking for his big lion stud to fill him,' he continues, sliding his arms around you.  He cradles you in his arms and lowers you onto the bed.  Caught up in your arousal and desires for the lion, you mewl softly.  You can feel the truth in his words, the growing longing inside you to let the sexy lion mount you.  His paws knead your ass, making you moan in pleasure.  He leans overtop you and runs his raspy tongue up your [bodydesc of player] chest.";
		say "     With his paws at your hips, he tells you to move onto all fours.  You move readily into position, raising your ass and offering yourself to the big, strong male you desire[if cunts of player > 0].  He smiles and kneads your bottom[otherwise].  He smiles and spreads your cheeks[end if] before moving his throbbing, leonine cock into position.  Teasingly, he eases just the tip into you as he leans overtop of you, making you mrowl with need and push your hips back as your lustful body demands more.  'That's a good, eager [if cunts of player > 0]girl[otherwise]girly-boy[end if].  You were made to take lion-cock, weren't you?' he rumbles, nibbling your ear.  'A horny slut like you wants all the lion cock you can get.'";
		say "     As he continues to tell you what an eager, needy, submissive kitty you are, he pounds his throbbing rod into you.  You can feel the pulsing of his maleness with his power, dribbling a steady supply of precum into your [if cunts of player > 0]hot pussy[otherwise]needy hole[end if][if player is felinebodied].  His strong, muscled body keeps you pinned to the bed as he takes the nape of your neck in his teeth.  They hold you firmly, but gently, making your feline body relax and submit to the big male.  Not that you would consider resisting your handsome lover, but it feels so good to have him in control[otherwise].  His strong, muscled body keeps you pinned to the bed, not that you would consider resisting your handsome lover[end if].  Aside from pushing your hips back into each thrust, you hold yourself steady, letting Leonard use you as he pleases and loving it[if inheat is true and player is felinecocked and Feline_attached > 0].  Glancing over as you hear some moaning mewls, you spot the small lioness working a [one of]pink[or]black[or]ridged[or]vibrating[at random] dildo into her cunt as she watches the sexy lion mating you[end if].";
		say "     After a good, long fucking[if cunts of player > 0] that's had you cum several times[end if], the lion drives his stiff cock deep inside you a final time and roars loudly.  You can feel his hot seed blasting into you, splashing against your [if cunts of player > 0]cervix and flowing into your womb[otherwise]prostate and filling your bowels[end if].  You release a feline yowl of pleasure[if cunts of player > 0] and cum hard, soaking your crotch in a fresh flow of your juices and his semen[end if] as he continues breeding you like the horny [if cunts of player > 0]girl[otherwise]girly-boy[end if] you are.  By the time his large balls are drained, you've got a pleasant, warm, full feeling in your belly that makes you feel fulfilled.[impregchance]";
		say "     Dismounting, he pulls you close and guides your head down to his cock.  You take it into your mouth and lick it clean while he strokes your head and scritches your ears.  'That's right, lick your lion master clean.  Mmm... you'll make a fine kitty girl like the others,' he rumbles.  You blush with pride and clean him attentively[if inheat is true and the player is felinecocked and Feline_attached > 0].  The other kitty purrs softly and snuggles back up to your chest, taking your nipple into her muzzle and resumes nursing from you.  For a moment you think that will be all, but then you feel her slide the slick toy she was using into your well-used hole, ensuring the lion's seed stays stopped up nicely inside you[end if].  Eventually you both drift off with his half-hard cock still in your mouth as you nurse softly at it, taking a quick catnap on the soft bed.";
		if inheat is true and the player is felinecocked and Feline_attached > 0:
			increase libido of player by 4;
			decrease humanity of player by 4;
		infect "Feline";
		decrease libido of player by libido of player / 4;
		decrease humanity of player by 4;
		if hp of Leonard < 3, now hp of Leonard is 3;
		follow the turnpass rule;


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

Music Store is a situation.  The level of Music Store is 2.
The sarea of Music Store is "Outside";
Music Store is resolved.

Instead of resolving Music Store:
	if violinfound is 0 or violinfound is 1:
		say "     With Leonard's request lingering at the back of your mind as you travel through the city, you stop dead in your tracks when you spot a music store.  It seems to have been largely undamaged.  You quickly head over to it, failing to notice the signs of activitiy inside in your eagerness.  Pulling the door open, you hear the buzz of little wings from inside the dark store.  Suddenly on guard, there's a cry of 'Get 'em, girls!' from a small, high-pitched voice.  The volume of the buzzing grows louder and a wave of little, elfin sprites charge out of the doorway, swarming all around you excitedly, forcing you to stumble backwards into the street.";
	otherwise if violinfound is 2 or violinfound is 3:	[returning]
		say "     With Leonard's request lingering at the back of your mind, you find yourself back in front of the Music Store you found earlier.  Longing to please the handsome lion with a gift, you ready yourself for another fight with the sprites and pull open the door.  The buzz inside picks up inside as they notice the intruder.  'Back for more, eh?' one of them giggles playfully before the swarm surges towards you, forcing you back into the street to fight them.";
	now fightstatus is 3;
	challenge "City Sprite";
	if fightstatus is 3:
		say "     Forced to flee by the horde of provocative and precocious pixies, you make a run for it down the street and through some alleys, eventually losing them.  Or so you think.  As you stop to catch your breath, you hear some giggling above you.  'Don't come back or you'll get more of the same!'  'Yeah!'  'Or wait, do come back and we'll all have fun giving you more of the same!'  'Teehee!'  There's then the buzz of wings as the sprites fly off, presumably back to their home in the music store.";
		if violinfound is 0, now violinfound is 2;
		if violinfound is 1, now violinfound is 3;
	otherwise if fightstatus is 2:
		say "     After the sprites have had their fun, you are left deposited outside their store.  'Oh!  You should come back again so we can play some more,' one of them giggles.  'Yeah!  I want a turn playing with your [if cocks of player > 0 and cunts of player > 0][one of]cock[or]pussy[at random][otherwise if cocks of player > 0]cock[otherwise if cunts of player > 0]cunt[otherwise]feet[end if] next time' another pipes in.  'Ooo!  Dibs!' another says with a giggle.  They playfully squabble as they buzz off, flying back inside and closing the door behind them, leaving you to stumble off.";
		if violinfound is 0, now violinfound is 2;
		if violinfound is 1, now violinfound is 3;
	otherwise:
		say "     Having driven off the sprites from their home, you head inside and start looking around eagerly for a violin.  There are examples of a lot of other instruments around and it seems like the sprites have been playing around with a lot of them.  Most of the inventory does seem to be guitars, drums and keyboards.  The drums seem to have gotten the worst of the play, with lots of stick footprints on the skins from them bouncing on them.  A few of them even have cum angels smeared onto them.  From the glistening on the ends of the drumsticks you see scattered about, you decide it'd be best not to handle those either, [if libido of player < 50]preferring not to imagine what uses the diminutive females put them to[otherwise]having a good idea how those naughty female sprites have been putting those smooth, polished sticks to use[end if].";
		say "     Not really interested right now in the more modern rock and roll instruments, you move on.  Spotting the section behind one counter.  You see they have their smaller selection of classical instruments.  There are several brass and woodwind instruments of different quality.  Some of these have been knocked around or played with by the flightly sprites, requiring you to step carefully and sift through those on the floor behind the counter to make sure a violin is not beneath one of the others.  You are about to give up hope by the time you make it to the far corner, but luckily manage to find one.  It is intact and still displayed on the wall, probably because of its placement at the end of the display area.";
		say "     Not really a judge of quality and just happy to have one at all, you take the violin and search among the cases beneath it, soon finding the one belonging to it.  You pack it away, along with some packets of replacement strings, a couple of bows and a packet of wax, knowing at least that much.  You also remember to head over to the racks with books of sheet music and grab all those you can find for violins.  There aren't that many and they are mostly trainers and for beginners, but a few of them have more advanced pieces as well.  With the last minute addition of a music stand, you believe you have everything your handsome lion will need.";
		say "     With all this tucked away into your pack, you glance over and spot a few of the sprites looking in the window at you.  They duck away as you turn at them, but you know they're awaiting your departure to return to their haven.  Rather than keep them waiting now that you've got your spoils, you head out.  As you leave, you hear the flutter and buzz of their wings as they swoop in from the surrounding roofs to go back to hiding inside the music store.  A few of them blow raspberries at you or make crude gestures, but you ignore them, the desire to rush back of Leonard foremost in your mind.";
		add "violin" to invent of player;
		now violinfound is 10;
		now Music Store is resolved;
		now Concert Hall is resolved;
	now fightstatus is 0;


Part 2 - Concert Hall

Concert Hall is a situation.  The level of Concert Hall is 4.
The sarea of Concert Hall is "High";
Concert Hall is resolved.

Instead of resolving Concert Hall:
	now fightstatus is 0;
	say "     You come across a large theater and concert hall in this affluent portion of the city.  There are crude drawings on the glass covering the posters for the upcoming shows, but you can see that a classical concert was planned during the time period around when the outbreak began.  Very hopeful that you'll find a violin in there for Leonard, you try the doors.  Locked.  Barricaded even.  Searching around the perimeter, you eventually find a back door that's been left open and you slip inside without delay or thought of caution, the needs of the handsome lion more important than the potential risk.";
	if "One Pair" is listed in feats of player or "Just One" is listed in feats of player:
		say "     You make your way through the backstage area to the orchestra pit.  As you're about to start searching through it, you notice a cute bunny head poke out from behind the curtain.  But even as you're trying to decide how to peacefully introduce yourself, there appears another bunny elsewhere, and then another and another still, more and more bunnies around you.  They don't move in to approach, but begin to speak.";
		say "     'Disappointing.' 'Restrained.' 'Unsuitable.' 'Indivisible.' 'Go.' 'Leave.' 'Unwanted.' 'Begone.'  They speak in unison in an even tone, but you still feel considerable disdain from their words.  You find yourself quite ill at ease as they keep it up unrelentingly.  You try to tell them you just want a violin for a friend and that you don't mean them any harm, but they hardly seem to take any notice aside from occasionally adding words like 'Thief' and 'Scavenger' to their repertoire.";
		say "     Thankfully they don't seem to advance upon you, but there is an increasing sense of menace from them.  Worried they could snap and try to mob you at any time, you make your way as quickly as you can to the string section, almost stumbling over some of the chairs, resulting in them adding 'Oaf' and 'Uncooth' to their insults.  Not wanting to waste time, you grab one of the violins that have been set out, its case and the assorted sheet music and supplies around it, hoping it will enough for Leonard.  You consider looking further, but you can see many more of the bunnies around, some even approaching across the lighting gantries.  Deciding you've overstayed your welcome, you apologize and promise to leave them alone even as you shove an unfolded music stand under your arm.   You get out of the pit and heading to the exit as quickly as you can.  You are watched by them on your whole way out, their strange mix of dirisive admonishments and odd insults following you the whole way.  No sooner are you outside then the door is slammed shut loudly and barred from the inside.";
		say "     You are left feeling strangely disconcerted by the whole affair, unsure what that was all about, but thankful to be out of there.  Your spirits are quickly bouyed by your realization that you've gotten the violin that your handsome lion so wanted.  The desire to rush back to Leonard becomes foremost in your mind.";
		if morale of player > 0, now morale of player is morale of player / 2;
		add "violin" to invent of player;
		now violinfound is 21;
	otherwise:
		say "     You make your way through the backstage area to the orchestra pit.  As you're about to start searching through it, you notice a cute bunny head poke out from behind the curtain.  But even as you're trying to decide how to peacefully introduce yourself, there appears another bunny elsewhere, and then another and another still, more and more bunnies moving in to surround you despite no alarm having been raised.";
		now fightstatus is 3;
		challenge "rabbit pack";
		if fightstatus is 1:
			now fightstatus is 3;
			challenge "rabbit pack";
			if fightstatus is 1:
				say "     Having beaten the large group of bizarre bunnies and driven them back, you start searching the orchestra pit for a violin.  Thankfully the instruments are actually in the pit and do not appear to have been damaged by the creatures.  If anything, it seems like they have been well maintained.  Perhaps those teams of bunnies have been playing them?  It takes some fumbling around to navigate through the camped space, but you eventually find the string section and locate the violins.";
				say "     Hopeful that one of these will make a fine instrument for your handsome lion, you look them over.  Not really a judge of quality, you take the violin from the stand labeled as '1st violin' in the hopes it will be the best of them all.  Putting it in its case, you check the other cases and folders, taking sets of spare strings, bows and wax, as well as as much different sheet music as you can find.  Spotting one of the bunnies watching you nervously from behind the curtain, you kindly decide to not just take it all.  Certainly several replacements will be enough for Leonard for quite some time.";
				say "     After storing the case and supplies away in your case, you fold up one of the music stands and start heading back out.  The bunny watches you leave the room but doesn't move.  There's another watching you from elsewhere before you leave her line of sight, and another safely watching from the distance as you turn the corner.  They quietly watch you depart, clearly wary of the intruder who managed to fight them all off.";
				add "violin" to invent of player;
				now violinfound is 20;
	if fightstatus is 2:
		say "     Unable to hold out against the bunny horde, you find yourself surrounded by the strange group of lustful, longing bunnies.  They fuck you repeatedly, with so many of them there to share you that you always have several lovers at a time, drawing you further and further into the lustful needs of your body as it starts to change, gaining bunny ears and a tail.  But as the changes continue, ";
		if "Male Preferred" is listed in feats of player:
			say "you gain more cocks, more balls, more arms and legs as well?  Even more heads?  Things grow hazy as your mind struggles to understand what it happening to you, your body splitting and forming new, independent copies of itself.  At first, it is all very confusing, the last shreds of your old mind trying to believe that you are still one united whole with several additional limbs and male genitalia, but eventually clarity sets in as you understand you are simply many, each body singularly male.";
		otherwise if "Female Preferred" is listed in feats of player:
			say "you gain more pussies, more breasts, more arms and legs as well?  Even more heads?  Things grow hazy as your mind struggles to understand what it happening to you, your body splitting and forming new, independent copies of itself.  At first, it is all very confusing, the last shreds of your old mind trying to believe that you are still one united whole with several additional limbs and female genitalia, but eventually clarity sets in as you understand you are simply many, each body singularly female.";
		otherwise:
			say "you gain more cocks, more pussies, more breasts, more arms and legs as well?  Even more heads?  Things grow hazy as your mind struggles to understand what it happening to you, your body splitting and forming new, independent copies of itself.  At first, it is all very confusing, the last shreds of your old mind trying to believe that you are still one united whole with several additional limbs and genitalia, but eventually clarity sets in as you understand you are simply many, each body singularly either male or female.";
		say "     You become like the other rabbits living here, several who are one.  In truth, there are only a few individuals living here, but each having several bodies all with one same mind.  You are welcomed into the group, joining their orchestra as you and your several bodies learn to play from the others.  And outside of practice comes the pleasure of lustful sex shared with so many bodies, so many lovers, all at once.";
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
		otherwise:
			if cunts of player < 5, now cunts of player is 5;
			if cunt length of player < 4, now cunt length of player is 4;
			if cunt width of player < 4, now cunt width of player is 4;
			if breasts of player < 10, now breasts of player is 10;
			if breast size of player < 3, now breast size of player is 3;
		if "Female Preferred" is listed in feats of player:
			now cocks of player is 0;
			now cock length of player is 0;
			now cock width of player is 0;
		otherwise:
			if cocks of player < 5, now cocks of player is 5;
			if cock length of player < 4, now cock length of player is 4;
			if cock width of player < 4, now cock width of player is 4;
		if libido of player < 10, now libido of player is 10;
		end the game saying "Your mind has been subsumed into your new bunny pack, a life of music and lust in your new warren.";
		now battleground is "void";
		wait for any key;
		follow the turnpass rule;
		stop the action;
	if fightstatus is 3:
		say "     Unwilling or unable to continue to stand up to the bunny horde, you make a break for it, weaving between several of them to head for the exit.  They follow you, calling out stuff like 'Stay.' 'Join.' 'Play.' 'Divide.' 'Unity.' 'Remain.' 'Expand.' 'Many.' 'One.'  They strangely speak in unison and calmly, but there is a longing to it as well.  You manage to get away, running from the concert hall, from which the rabbits choose not to pursue you, instead slamming the back door shut and latching it from the inside.  You probably won't be able to get back in there and should try looking elsewhere for a violin for Leonard.";
		if violinfound is 0, now violinfound is 1;
		if violinfound is 2, now violinfound is 3;
	now Music Store is resolved;
	now Concert Hall is resolved;


Part 3 - Violin

Table of Game Objects (continued)
name	desc	weight	object
"violin"	"     It's a violin.  You're no judge of quality, but it seems in good shape.  Along with its case, you have some spare strings, wax, bows and music to go along with it.  Most of the weight comes from the music stand you also snagged."	5	violin

violin is a grab object.
it is part of the player.
It is not temporary.

instead of using violin:
	say "     You don't know how to play.  Besides, you don't want to risk damaging your gift for your lion lover.";

instead of sniffing the violin:
	say "     The violin smells of polished wood.";


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